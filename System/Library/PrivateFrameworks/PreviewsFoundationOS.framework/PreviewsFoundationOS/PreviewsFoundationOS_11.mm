uint64_t sub_25F29A198(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_25F2985C0(a1, v1[6]);
}

uint64_t sub_25F29A1BC(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[5] - 8) + 80) + 72) & ~*(*(v1[5] - 8) + 80);
  v6 = (v5 + *(*(v1[5] - 8) + 64) + *(*(v1[6] - 8) + 80)) & ~*(*(v1[6] - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25F1B51E0;

  return sub_25F29786C(a1, v7, v8, v9, v1 + v5, v1 + v6);
}

unint64_t sub_25F29A320()
{
  result = qword_27FD57440[0];
  if (!qword_27FD57440[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57440);
  }

  return result;
}

uint64_t sub_25F29A374(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[8];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1AFDB0;

  return sub_25F29546C(a1, v5, v6, v7, v8, v1 + v4);
}

uint64_t CodableBox.description.getter()
{
  v0 = sub_25F29AD68();

  return v0;
}

uint64_t CodableBox.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25F3043DC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_25F3043CC();
  v9 = sub_25F3043BC();
  v11 = v10;

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_25F30653C();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = v9;
  a3[3] = v11;
  return result;
}

uint64_t CodableBox.value.getter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_25F3043AC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_25F30439C();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_25F30438C();
}

uint64_t sub_25F29A7A4()
{
  v0 = sub_25F3063BC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F29A7F8(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_25F29A830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A8A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F29A910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F29A9F0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_25F29A7A4();
  *a3 = result;
  return result;
}

uint64_t sub_25F29AA2C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  result = sub_25F29A7F8(*v2);
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_25F29AA64(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_25F29A7F8(*v1);
}

uint64_t CodableBox.propertyListValue.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_25F29AAC8(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  result = sub_25F252514(v7, &v9);
  *a2 = v9;
  return result;
}

uint64_t sub_25F29AAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = 0;
  v12[0] = a1;
  v12[1] = a2;
  v11 = 1;
  v9 = a3;
  v10 = a4;

  sub_25F1B70AC(a3, a4);
  sub_25F1B70AC(a3, a4);
  v6 = type metadata accessor for CodableBox.Key();
  v7 = static PropertyListBuilder.buildBlock<A, B, C, D>(_:_:)(&v13, v12, &v11, &v9, v6, MEMORY[0x277D837D0], v6, MEMORY[0x277CC9318], &off_2871669B8, &protocol witness table for String, &off_2871669B8, &protocol witness table for Data);
  sub_25F1D4B9C(v9, v10);

  sub_25F1D4BB0(a3, a4);
  return v7;
}

uint64_t CodableBox.init(propertyListValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CodableBox.Key();
  v14 = v5;
  v15 = &off_2871669B8;
  LOBYTE(v13[0]) = 0;
  v6 = sub_25F1FDE58(v13, v4);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v9 = v7;
    v10 = v6;
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = v5;
    v15 = &off_2871669B8;
    LOBYTE(v13[0]) = 1;
    sub_25F1FDF90(v13, v4, &v12);

    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = v12;
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11;
  }

  return result;
}

uint64_t sub_25F29ACD0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  return CodableBox.init(propertyListValue:)(a1, a3);
}

uint64_t sub_25F29ACF4()
{
  v0 = sub_25F29AD68();

  return v0;
}

uint64_t sub_25F29AD2C(void (*a1)(void))
{
  a1();

  return sub_25F30685C();
}

uint64_t sub_25F29AD68()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t sub_25F29AD88()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F29ADF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_25F30678C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_25F30540C();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_25F30541C();
  }
}

uint64_t sub_25F29B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)();
  }

  return a4();
}

uint64_t sub_25F29B0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2 + a3;
  v7 = *(a2 + a3 - 24);
  v8 = *(v6 - 16);
  v9 = *(v6 - 8);
  v10 = type metadata accessor for IsolatedTask();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v15, a1, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v16;
  result = (*(v11 + 8))(v15, v10);
  *a4 = Strong;
  a4[1] = v13;
  return result;
}

uint64_t IsolatedTask.executor.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 16);
  return result;
}

uint64_t IsolatedTask.executor.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*IsolatedTask.executor.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 16);
  *a1 = Strong;
  a1[1] = v4;
  return sub_25F29B248;
}

uint64_t sub_25F29B248(uint64_t *a1)
{
  v1 = *a1;
  *(a1[2] + 16) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t static IsolatedTask.create(callsite:on:)(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  IsolatedTask.init(callsite:on:)(a2, a4, a1);
  type metadata accessor for IsolatedTask.Promise();
  v7 = type metadata accessor for IsolatedTask();
  (*(*(v7 - 8) + 16))(v9, a1, v7);
  swift_allocObject();
  return sub_25F29E284(v9);
}

uint64_t IsolatedTask.init(callsite:on:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v18[0] = *a1;
  v18[1] = v5;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  a3[2] = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  type metadata accessor for PromiseFulfillment();
  type metadata accessor for FulfillOnceState();
  sub_25F1E5808(v6, &v16);
  v14 = v16;
  v15 = v17;
  v12 = xmmword_25F3077E0;
  v13 = 2;
  sub_25F305FAC();

  strcpy(v11, "IsolatedTask<");
  HIWORD(v11[1]) = -4864;
  v7 = sub_25F30685C();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](8236, 0xE200000000000000);
  v8 = sub_25F30685C();
  MEMORY[0x25F8D7130](v8);

  MEMORY[0x25F8D7130](62, 0xE100000000000000);
  v9 = sub_25F1D1EE4(&v14, v18, 0, 0, &v12, v11[0], v11[1], 0x656C6C69666C7566, 0xE900000000000064);

  *a3 = v9;
  a3[2] = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t IsolatedTask.description.getter(uint64_t a1)
{
  sub_25F305FAC();

  strcpy(v12, "IsolatedTask<");
  HIWORD(v12[1]) = -4864;
  v3 = *(a1 + 16);
  v4 = sub_25F30685C();
  MEMORY[0x25F8D7130](v4);

  MEMORY[0x25F8D7130](8236, 0xE200000000000000);
  v5 = *(a1 + 24);
  v6 = sub_25F30685C();
  MEMORY[0x25F8D7130](v6);

  MEMORY[0x25F8D7130](2112062, 0xE300000000000000);
  v9 = *(*v1 + 16);
  v10 = *(*v1 + 32);
  *v11 = *(*v1 + 48);
  *&v11[9] = *(*v1 + 57);
  v7 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v7);

  return v12[0];
}

void sub_25F29B754(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v9 = a6[2];
  v10 = a6[3];
  v11 = a6[4];
  v12 = type metadata accessor for PromiseFulfillment();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v55 = v52 - v14;
  v54 = type metadata accessor for IsolatedTask.ObserverBox();
  *&v61 = type metadata accessor for ObserverAndTokenStorage();
  v59 = v12;
  v58 = type metadata accessor for FulfillOnceState.FulfillmentOutcome();
  v57 = *(v58 - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = (v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v60 = v52 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = v6[2];
    swift_getObjectType();
    Actor.verifyIsolated(_:file:line:)();
    Strong = swift_unknownObjectRelease();
  }

  v22 = *v6;
  v23 = a1[1];
  v65[0] = *a1;
  v65[1] = v23;
  v66[0] = a1[2];
  *(v66 + 9) = *(a1 + 41);
  v24 = MEMORY[0x28223BE20](Strong);
  v52[-6] = v9;
  v52[-5] = v10;
  v26 = v62;
  v25 = v63;
  v52[-4] = v11;
  v52[-3] = v26;
  v52[-2] = v25;
  MEMORY[0x28223BE20](v24);
  v52[-6] = v9;
  v52[-5] = v10;
  v27 = v64;
  v52[-4] = v11;
  v52[-3] = v27;
  v52[-2] = a5;
  v28 = v60;
  v29 = v73;
  FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(v65, sub_25F1B46F4, v30, sub_25F2A0250, &v52[-8]);
  if (!v29)
  {
    v73 = 0;
    v31 = v57;
    v32 = v58;
    (*(v57 + 16))(v18, v28, v58);
    v33 = v59;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v35 = (*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2);
    v53 = v35 != 1;
    if (v35 == 1)
    {
      v51 = *(v31 + 8);
      v51(v28, v32);
      v51(v18, v32);
    }

    else
    {
      v36 = *v18;
      v37 = v18[1];
      v63 = v18[2];
      v38 = v18 + *(TupleTypeMetadata2 + 48);
      v39 = v55;
      v40 = (*(v56 + 32))(v55, v38, v33);
      *&v65[0] = v36;
      *(&v65[0] + 1) = v37;
      MEMORY[0x28223BE20](v40);
      v52[-4] = v9;
      v52[-3] = v10;
      v52[-2] = v11;
      v52[-1] = v39;
      sub_25F1E6B9C();
      type metadata accessor for OrderedDictionary();
      v54 = v36;

      v52[1] = v37;

      swift_getWitnessTable();
      v41 = v73;
      sub_25F3051BC();
      v73 = v41;

      v42 = v63;
      v62 = *(v63 + 16);
      if (v62)
      {
        v43 = 0;
        v44 = (v63 + 64);
        v61 = xmmword_25F312820;
        while (v43 < *&v42[4]._os_unfair_lock_opaque)
        {
          v45 = *(v44 - 4);
          v46 = *(v44 - 3);
          v47 = *(v44 - 1);
          v64 = *(v44 - 2);
          v48 = *v44;
          v67[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
          v67[1] = 124;
          v68 = 2;
          v69 = v61;
          v70 = "fulfill(callsite:makeFulfillment:ifAlreadyCompleted:)";
          v71 = 53;
          v72 = 2;
          v49 = *(v48 + 152);
          MEMORY[0x28223BE20](v42);
          v52[-6] = nullsub_2;
          v52[-5] = 0;
          v52[-4] = v67;
          v52[-3] = v48;
          v52[-2] = sub_25F1D3340;
          v52[-1] = 0;
          swift_unknownObjectRetain();

          os_unfair_lock_lock(v49 + 19);
          v50 = v73;
          sub_25F1D3DD4(&v49[4], v65);
          v73 = v50;
          v42 = v49 + 19;
          if (v50)
          {
            goto LABEL_18;
          }

          os_unfair_lock_unlock(v42);
          if ((v65[0] & 1) == 0)
          {
            if (v45)
            {
              swift_getObjectType();
              Actor.verifyIsolated(_:file:line:)();
            }

            v64();
          }

          ++v43;

          swift_unknownObjectRelease();
          v44 += 5;
          v42 = v63;
          if (v62 == v43)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_18:
        os_unfair_lock_unlock(v42);
        __break(1u);
      }

      else
      {
LABEL_15:

        (*(v57 + 8))(v60, v58);
        (*(v56 + 8))(v55, v59);
      }
    }
  }
}

uint64_t sub_25F29BE78(uint64_t a1, __int128 *a2, uint64_t (*a3)(_OWORD *))
{
  v6 = type metadata accessor for PromiseFulfillment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = a2[5];
  v21 = a2[4];
  v22 = v11;
  v23 = *(a2 + 12);
  v12 = a2[1];
  v17 = *a2;
  v18 = v12;
  v13 = a2[3];
  v19 = a2[2];
  v20 = v13;
  (*(v7 + 16))(v15 - v9, a1, v6);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  result = (*(v7 + 8))(v10, v6);
  if (a2 <= 1)
  {
    v15[4] = v21;
    v15[5] = v22;
    v16 = v23;
    v15[0] = v17;
    v15[1] = v18;
    v15[3] = v20;
    v15[2] = v19;
    return a3(v15);
  }

  return result;
}

uint64_t sub_25F29C00C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v42 = a3;
  v43 = a1;
  v49 = a4;
  v8 = a3[2];
  v7 = a3[3];
  v9 = a3[4];
  v10 = type metadata accessor for PromiseFulfillment();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v12;
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  v41 = v10;
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v14 = *(updated - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](updated);
  v18 = (&v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  Strong = swift_unknownObjectWeakLoadStrong();
  v22 = v5[2];
  v40 = v5;
  v23 = *v5;
  v24 = v43;
  v44 = v8;
  v45 = Strong;
  v51 = v8;
  v52 = v7;
  v53 = v9;
  v54 = Strong;
  v37 = v22;
  v55 = v22;
  v56 = v43;
  v57 = a2;
  v48 = a2;

  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A0338, v50, &type metadata for Identifier);
  v46 = v14;
  (*(v14 + 16))(v18, v20, updated);
  v47 = updated;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v39;
    v26 = v38;
    v27 = v41;
    (*(v39 + 32))(v38, v18, v41);
    sub_25F29B034(v26, v45, v37, v24);

    swift_unknownObjectRelease();
    (*(v25 + 8))(v26, v27);
    result = (*(v46 + 8))(v20, v47);
    v29 = 0;
    v30 = 0;
    v31 = v49;
    *v49 = 0;
    v31[1] = 0;
    v31[2] = 0;
  }

  else
  {
    v32 = *v18;
    v33 = v42;
    v34 = *(v42 - 1);
    (*(v34 + 16))(v58, v40, v42);
    v29 = swift_allocObject();
    v29[2] = v44;
    v29[3] = v7;
    v29[4] = v9;
    (*(v34 + 32))(v29 + 5, v58, v33);
    v29[8] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54EE8, &unk_25F30D6E0);
    v30 = swift_allocObject();
    v59 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54EF0, &qword_25F310F30);
    v35 = swift_allocObject();
    *(v35 + 76) = 0;
    *(v35 + 73) = v59;
    *(v30 + 152) = v35;
    *(v30 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
    *(v30 + 24) = 124;
    *(v30 + 32) = 2;
    *(v30 + 40) = xmmword_25F312830;
    *(v30 + 56) = "observeFulfillment(observer:)";
    *(v30 + 64) = 29;
    *(v30 + 72) = 2;
    *(v30 + 80) = 0;
    *(v30 + 88) = 0;
    *(v30 + 96) = xmmword_25F3077E0;
    *(v30 + 112) = 2;
    *(v30 + 120) = 0xD000000000000011;
    *(v30 + 128) = 0x800000025F319920;
    *(v30 + 136) = 0x64656C65636E6163;
    *(v30 + 144) = 0xE800000000000000;

    swift_unknownObjectRelease();
    result = (*(v46 + 8))(v20, v47);
    v31 = v49;
    *v49 = 0;
    v31[1] = 0;
    v31[2] = sub_25F2A034C;
  }

  v31[3] = v29;
  v31[4] = v30;
  return result;
}

uint64_t sub_25F29C508@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  type metadata accessor for IsolatedTask.ObserverBox();
  v6 = type metadata accessor for ObserverAndTokenStorage();
  return sub_25F1E55A8(v8, v6, a5);
}

uint64_t sub_25F29C57C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  type metadata accessor for PromiseFulfillment();
  v10 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v12 = *(updated - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](updated);
  v15 = &v18[-v14];
  v16 = *a1;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a2;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A0360, v18, v10 + 8);
  return (*(v12 + 8))(v15, updated);
}

uint64_t sub_25F29C6EC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  type metadata accessor for IsolatedTask.ObserverBox();
  v2 = type metadata accessor for ObserverAndTokenStorage();
  return sub_25F1E5724(&v4, v2);
}

uint64_t IsolatedTask.observe<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  return sub_25F29C9E4(a1, a2, a3, sub_25F29FBF0, a4);
}

{
  return sub_25F29C9E4(a1, a2, a3, sub_25F29FBFC, a4);
}

uint64_t sub_25F29C774(uint64_t a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v3 = sub_25F30678C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = type metadata accessor for PromiseFulfillment();
  sub_25F227FB8(v8, v7);
  a2(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F29C8CC(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PromiseFulfillment();
  sub_25F226D14(v10, v9);
  a2(v9);
  return (*(v6 + 8))(v9, a4);
}

uint64_t sub_25F29C9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3[2];
  v10[3] = a1;
  v10[4] = a2;

  sub_25F29C00C(a4, v10, a3, a5);
}

uint64_t sub_25F29CA7C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = type metadata accessor for PromiseFulfillment();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  (*(v12 + 16))(&v17 - v14, a1, v11);
  if (swift_getEnumCaseMultiPayload())
  {
    return (*(v12 + 8))(v15, v11);
  }

  (*(v7 + 32))(v10, v15, a4);
  a2(v10);
  return (*(v7 + 8))(v10, a4);
}

uint64_t CancelationToken<>.cancel<A, B>(onFulfillmentOf:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v2;
  v6 = v1;
  v3 = type metadata accessor for IsolatedTask();
  return sub_25F29D0A0(v5, v3);
}

uint64_t IsolatedTask.onFulfillment<>(observer:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = IsolatedTask.observe<>(_:)(a1, a2, a3, &v7);
  if (v8)
  {
    v5 = a3[2];
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v6 = type metadata accessor for IsolatedTask();
    sub_25F29D0A0(&v11, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_25F29CDA0(uint64_t a1, uint64_t a2, uint64_t a3, void *(*a4)(__int128 *__return_ptr))
{
  result = a4(&v9);
  if (v10)
  {
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v8 = type metadata accessor for IsolatedTask();
    sub_25F29D0A0(&v13, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29CE58(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = a3[2];
  v6[3] = a1;
  v6[4] = a2;

  sub_25F29C00C(sub_25F2A02B0, v6, a3, &v10);

  if (v11)
  {
    v8 = a3[3];
    v9 = type metadata accessor for IsolatedTask();
    sub_25F29D0A0(&v10, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29CF70(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = type metadata accessor for PromiseFulfillment();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v4);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  result = (*(v5 + 8))(v8, v4);
  if (a1 == 2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_25F29D0A0(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  type metadata accessor for PromiseFulfillment();
  v7 = MEMORY[0x277D84F78];
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](updated);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  v16 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v16;
  v33 = *(a1 + 32);
  v17 = *v2;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v32;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F2A02BC, v20, v7 + 8);
  (*(v9 + 16))(v13, v15, updated);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v9 + 8))(v15, updated);
  }

  v25 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  v26 = 124;
  v27 = 2;
  v28 = xmmword_25F312840;
  v29 = "manage(token:)";
  v30 = 14;
  v31 = 2;
  sub_25F29FB04();
  v18 = *(v9 + 8);
  v18(v15, updated);
  return (v18)(v13, updated);
}

uint64_t sub_25F29D2E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_25F2F05C4(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = sub_25F2F05C4((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[5 * v6];
  v8 = *a2;
  v9 = *(a2 + 16);
  v7[8] = *(a2 + 32);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  *(a1 + 16) = v4;
  return sub_25F2A02C8(a2, v11);
}

BOOL IsolatedTask.isFulfilled.getter(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  type metadata accessor for PromiseFulfillment();
  v5 = type metadata accessor for FulfillOnceState.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *v1;
  FulfillOnceState.snapshot.getter();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v12 = swift_checkMetadataState();
    (*(*(v12 - 8) + 8))(v9, v12);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t IsolatedTask.result.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v22 = a2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = type metadata accessor for PromiseFulfillment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  v11 = type metadata accessor for FulfillOnceState.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = *v2;
  FulfillOnceState.snapshot.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v10, v15, v6);
    v17 = v22;
    sub_25F227FB8(v6, v22);
    (*(v7 + 8))(v10, v6);
    v18 = 0;
  }

  else
  {
    (*(v12 + 8))(v15, v11);
    v18 = 1;
    v17 = v22;
  }

  v19 = sub_25F30678C();
  return (*(*(v19 - 8) + 56))(v17, v18, 1, v19);
}

uint64_t IsolatedTask<>.value(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getObjectType();
  v7 = sub_25F3053EC();

  return MEMORY[0x2822009F8](sub_25F29D82C, v7, v6);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  swift_getObjectType();
  v7 = sub_25F3053EC();
  v5[7] = v7;
  v5[8] = v6;

  return MEMORY[0x2822009F8](sub_25F29DF84, v7, v6);
}

uint64_t sub_25F29D82C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = *(v1 + 16);
  v5[2] = v6;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_25F29D934;
  v9 = v0[2];

  return MEMORY[0x2822007B8](v9, v3, v4, 0x6E6F2865756C6176, 0xEA0000000000293ALL, sub_25F29FC14, v5, v6);
}

uint64_t sub_25F29D934()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25F29DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)();
  v5 = sub_25F30542C();
  return CheckedContinuation.track(task:)(a4, v5);
}

uint64_t CheckedContinuation.track(task:)(uint64_t a1, void *a2)
{
  v3 = *(a2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a2);
  v7 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = a2[3];
  *(v8 + 2) = a2[2];
  *(v8 + 3) = v9;
  *(v8 + 4) = a2[4];
  (*(v3 + 32))(&v8[v7], v5, a2);
  v10 = type metadata accessor for IsolatedTask();
  sub_25F29C00C(sub_25F29FC20, v8, v10, &v13);

  if (v14)
  {
    v12 = v13;
    sub_25F29D0A0(&v13, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t IsolatedTask<>.currentValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for PromiseFulfillment();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  type metadata accessor for IsolatedTask.ObserverBox();
  type metadata accessor for ObserverAndTokenStorage();
  v10 = type metadata accessor for FulfillOnceState.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *v2;
  FulfillOnceState.snapshot.getter();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v14, v5);
    sub_25F226D14(v5, a2);
    (*(v6 + 8))(v9, v5);
    v16 = 0;
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    v16 = 1;
  }

  return (*(*(v4 - 8) + 56))(a2, v16, 1, v4);
}

uint64_t sub_25F29DF84()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = *(v1 + 16);
  v5[2] = v6;
  v5[3] = v3;
  v5[4] = v4;
  v5[5] = v2;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_25F29E08C;
  v9 = v0[2];

  return MEMORY[0x2822008A0](v9, v3, v4, 0x6E6F2865756C6176, 0xEA0000000000293ALL, sub_25F29FCC0, v5, v6);
}

uint64_t sub_25F29E08C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];
    v5 = v3[8];

    return MEMORY[0x2822009F8](sub_25F26B610, v4, v5);
  }

  else
  {
    v6 = v3[9];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_25F29E1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v5 = sub_25F30542C();
  return CheckedContinuation.track(task:)(a4, v5);
}

uint64_t sub_25F29E284(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for IsolatedTask();
  (*(*(v6 - 8) + 32))(v1 + 16, a1, v6);
  return v1;
}

uint64_t IsolatedTask.Promise.cancel<A>(file:line:column:function:onInvalidationOf:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a10;
  *(v18 + 24) = a11;
  *(v18 + 32) = v11;
  *(v18 + 40) = a1;
  *(v18 + 48) = a2;
  *(v18 + 56) = a3;
  *(v18 + 64) = a4;
  *(v18 + 72) = a5;
  *(v18 + 80) = a6;
  *(v18 + 88) = a7;
  *(v18 + 96) = a8;

  IsolatedInvalidatable.onInvalidation(_:)(sub_25F29FCCC, v18, a10, a11);
}

void sub_25F29E424(uint64_t a1, void *a2, _OWORD *a3)
{
  v3 = *a2;
  v13 = a2;
  v4 = a3[1];
  v11[0] = *a3;
  v11[1] = v4;
  v12[0] = a3[2];
  *(v12 + 9) = *(a3 + 41);
  sub_25F30543C();
  sub_25F1B4F70();
  v5 = swift_allocError();
  sub_25F304A2C();
  v10 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = type metadata accessor for IsolatedTask.Promise();
  WitnessTable = swift_getWitnessTable();
  sub_25F226F8C(v11, &v10, v8, WitnessTable);
}

uint64_t IsolatedTask.Promise.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for IsolatedTask();
  (*(*(v4 - 8) + 8))(v0 + 16, v4);
  return v0;
}

uint64_t IsolatedTask.Promise.__deallocating_deinit()
{
  IsolatedTask.Promise.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F29E5F0(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = *v5;
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v12 = v10[10];
  v13 = v10[11];
  v14 = v10[12];
  v15 = type metadata accessor for IsolatedTask();
  sub_25F29B754(v18, a2, a3, a4, a5, v15);
  return v16 & 1;
}

uint64_t IsolatedTask.init<>(file:line:column:function:on:work:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a8;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  IsolatedTask.init(callsite:on:)(&v22, a11, a9);
  type metadata accessor for IsolatedTask.Promise();
  v15 = type metadata accessor for IsolatedTask();
  (*(*(v15 - 1) + 16))(&v22, a9, v15);
  swift_allocObject();
  v16 = sub_25F29E284(&v22);
  ObjectType = swift_getObjectType();
  v18 = swift_allocObject();
  v18[2] = a10;
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a13;
  v18[6] = v16;
  v19 = swift_allocObject();
  v19[2] = a14;
  v19[3] = ObjectType;
  v19[4] = a11;
  v19[5] = &unk_25F3128B0;
  v19[6] = v18;
  swift_unknownObjectRetain();

  v20 = Actor.makeIsolatedTask(_:)(&unk_25F3128C0, v19, ObjectType, a11);

  sub_25F29CE58(sub_25F29FE88, v20, v15);

  swift_unknownObjectRelease();
}

{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  swift_unknownObjectRetain();
  IsolatedTask.init(callsite:on:)(&v21, a11, a9);
  type metadata accessor for IsolatedTask.Promise();
  v15 = type metadata accessor for IsolatedTask();
  (*(*(v15 - 8) + 16))(&v21, a9, v15);
  swift_allocObject();
  v16 = sub_25F29E284(&v21);
  ObjectType = swift_getObjectType();
  v18 = swift_allocObject();
  v18[2] = a10;
  v18[3] = a11;
  v18[4] = a12;
  v18[5] = a13;
  v18[6] = v16;
  v19 = swift_allocObject();
  v19[2] = a14;
  v19[3] = ObjectType;
  v19[4] = a11;
  v19[5] = &unk_25F3128D0;
  v19[6] = v18;
  swift_unknownObjectRetain();

  Actor.makeIsolatedTask(_:)(&unk_25F3128E0, v19, ObjectType, a11);

  swift_unknownObjectRelease();
}

uint64_t sub_25F29E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[4] = a3;
  v7[9] = *a7;
  v8 = *(*a7 + 80);
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  swift_getObjectType();
  v12 = sub_25F3053EC();
  v7[13] = v12;
  v7[14] = v11;

  return MEMORY[0x2822009F8](sub_25F29EA44, v12, v11);
}

uint64_t sub_25F29EA44()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)();
  v9 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_25F29EB88;
  v6 = v0[12];
  v7 = v0[7];

  return v9(v6);
}

uint64_t sub_25F29EB88()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_25F29EDC8;
  }

  else
  {
    v7 = sub_25F29ECC4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F29ECC4()
{
  v15 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v0[3] = v0[8];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v9 + 1) = 124;
  v10 = 2;
  v11 = xmmword_25F312850;
  v12 = "init(file:line:column:function:on:work:)";
  v13 = 40;
  v14 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill(callsite:returning:)(&v9, v1, v4, WitnessTable);
  (*(v2 + 8))(v1, v3);
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F29EDC8()
{
  v13 = v0;
  v1 = v0[16];
  v2 = v0[9];
  v0[2] = v0[8];
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v7 + 1) = 124;
  v8 = 2;
  v9 = xmmword_25F312860;
  v10 = "init(file:line:column:function:on:work:)";
  v11 = 40;
  v12 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill<>(callsite:throwing:)(&v7, v1, v2, WitnessTable);

  v4 = v0[12];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F29EEB0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_25F1AFDB0;

  return v12(a1, a6);
}

uint64_t sub_25F29F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a3;
  v7[8] = *a7;
  v8 = *(*a7 + 80);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  swift_getObjectType();
  v12 = sub_25F3053EC();
  v7[12] = v12;
  v7[13] = v11;

  return MEMORY[0x2822009F8](sub_25F29F2C0, v12, v11);
}

uint64_t sub_25F29F2C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  swift_getObjectType();
  Actor.verifyIsolated(_:file:line:)();
  v9 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_25F29F404;
  v6 = v0[11];
  v7 = v0[6];

  return v9(v6);
}

uint64_t sub_25F29F404()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_25F29F524, v4, v3);
}

uint64_t sub_25F29F524()
{
  v14 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v0[2] = v0[7];
  *&v8 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v8 + 1) = 124;
  v9 = 2;
  v10 = xmmword_25F312870;
  v11 = "init(file:line:column:function:on:work:)";
  v12 = 40;
  v13 = 2;
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.fulfill(callsite:returning:)(&v8, v1, v4, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F29F628(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_25F1B51E0;

  return v12(a1, a6);
}

uint64_t sub_25F29F72C()
{
  v0 = sub_25F30678C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  v5 = type metadata accessor for PromiseFulfillment();
  sub_25F227FB8(v5, v4);
  v6 = sub_25F30542C();
  sub_25F29ADF8(v4, v6);
  return (*(v1 + 8))(v4, v0);
}

uint64_t Continuation.track(task:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = swift_allocObject();
  v8 = a2[3];
  v7[2] = a2[2];
  v7[3] = v8;
  v7[4] = a2[4];
  v7[5] = v5;
  v7[6] = v4;
  v7[7] = v6;
  v9 = type metadata accessor for IsolatedTask();

  sub_25F29C00C(sub_25F2A00A0, v7, v9, &v11);

  if (v12)
  {
    sub_25F29D0A0(&v11, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_25F29F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F30678C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v12 = type metadata accessor for PromiseFulfillment();
  sub_25F227FB8(v12, v11);
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/IsolatedTask.swift";
  *(&v14 + 1) = 124;
  v15 = 2;
  *v16 = *v24;
  *&v16[3] = *&v24[3];
  v17 = xmmword_25F312880;
  v18 = "track(task:)";
  v19 = 12;
  v20 = 2;
  type metadata accessor for Continuation();
  Continuation.resume(with:callsite:)(v11, &v14);
  return (*(v8 + 8))(v11, v7);
}

void sub_25F29FB04()
{
  v1 = *(v0[4] + 152);
  os_unfair_lock_lock(v1 + 19);
  sub_25F1D3F70(&v1[4], &v6);
  os_unfair_lock_unlock(v1 + 19);
  if ((v6 & 1) == 0)
  {
    v4 = v0[2];
    v3 = v0[3];
    if (*v0)
    {
      v5 = v0[1];
      swift_getObjectType();
      v2 = Actor.verifyIsolated(_:file:line:)();
    }

    v4(v2);
  }
}

uint64_t sub_25F29FBF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_25F29C774(a1, *(v1 + 24));
}

uint64_t sub_25F29FC20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(*(sub_25F30542C() - 8) + 80);

  return sub_25F29F72C();
}

void sub_25F29FCCC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_25F29E424(a1, *(v1 + 32), (v1 + 40));
}

uint64_t sub_25F29FCDC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F1AFDB0;

  return sub_25F29E928(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25F29FDB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F29EEB0(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_25F29FEF4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F1B51E0;

  return sub_25F29F1A4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_25F29FFC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F1B51E0;

  return sub_25F29F628(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_25F2A00A0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F29F974(a1, v1[5], v1[6], v1[7]);
}

uint64_t sub_25F2A00B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F2A00F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A018C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A01C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25F2A0210(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_25F2A0250(uint64_t a1, __int128 *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_25F29BE78(a1, a2, *(v2 + 40));
}

uint64_t sub_25F2A0274(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 32);
  return sub_25F29B034(v1[5], *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t sub_25F2A02B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_25F29CF70(a1, *(v1 + 24));
}

uint64_t sub_25F2A02BC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F29D2E8(a1, v1[5]);
}

uint64_t sub_25F2A02C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD576C8, &qword_25F312A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2A0338@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F29C508(v1[5], v1[6], v1[7], v1[8], a1);
}

uint64_t sub_25F2A0360(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25F29C6EC(a1, v1[5]);
}

uint64_t sub_25F2A03C0()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](qword_25F312BA8[v1]);
  return sub_25F30676C();
}

uint64_t sub_25F2A0448()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](qword_25F312BA8[v1]);
  return sub_25F30676C();
}

uint64_t sub_25F2A0494@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20PreviewsFoundationOS28CommandLinePrintingAttributeO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t AnyCommandLinePrinter.printInColumns<A, B, C>(headers:rows:attributes:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v131 = a6;
  v114 = a5;
  v128 = a3;
  v129 = a4;
  v118 = a2;
  v123 = a13;
  v139 = a10;
  v120 = *(a9 - 8);
  v16 = v120[8];
  v133 = a11;
  MEMORY[0x28223BE20](a1);
  v119 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25F305C1C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v127 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v126 = &v102 - v23;
  v121 = *(a8 - 8);
  v24 = *(v121 + 64);
  MEMORY[0x28223BE20](v22);
  v117 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *(a12 + 8);
  v130 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  v26 = *(v122 + 64);
  v27 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v113 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v132 = (&v102 - v29);
  v30 = sub_25F305C1C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v108 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v102 - v36;
  v38 = *(a7 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v102 = &v102 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v102 - v42;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_25F1B6DBC(MEMORY[0x277D84F90]);
  v109 = v31;
  v45 = *(v31 + 16);
  v112 = a1;
  v106 = v31 + 16;
  v105 = v45;
  v45(v37, a1, v30);
  v46 = *(v38 + 48);
  v104 = v38 + 48;
  v103 = v46;
  v47 = v46(v37, 1, a7);
  v48 = v123;
  v138 = a12;
  v49 = v133;
  v134 = v44;
  v111 = v38;
  v110 = v30;
  if (v47 == 1)
  {
    v50 = a7;
    (*(v109 + 8))(v37, v30);
    v51 = v130;
  }

  else
  {
    (*(v38 + 32))(v43, v37, a7);
    v101 = v48;
    v51 = v130;
    sub_25F2A0FDC(v43, v44, v131, a7, v130, a9, a7, v139, v49, a12, v101, v49);
    v50 = a7;
    (*(v38 + 8))(v43, a7);
  }

  v135 = v50;
  v52 = *(v121 + 16);
  v121 += 16;
  v107 = v52;
  v52(v117, v118, v51);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v126;
  v137 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v55 = v54;
  v56 = v120 + 6;
  v136 = v120[6];
  v57 = v136(v54, 1, a9);
  v58 = v123;
  v59 = v133;
  v60 = v134;
  v61 = v119;
  if (v57 != 1)
  {
    v124 = v120[4];
    v62 = (v120 + 1);
    do
    {
      v124(v61, v55, a9);
      sub_25F2A0FDC(v61, v60, v131, v135, v51, a9, a9, v139, v59, v138, v58, v58);
      (*v62)(v61, a9);
      sub_25F305CDC();
      v55 = v126;
    }

    while (v136(v126, 1, a9) != 1);
  }

  v63 = *(v122 + 8);
  v122 += 8;
  v125 = v56;
  v126 = v63;
  (v63)(v132, AssociatedTypeWitness);
  v64 = v108;
  v65 = v110;
  v105(v108, v112, v110);
  v66 = v135;
  v67 = v103(v64, 1, v135);
  v68 = v138;
  if (v67 == 1)
  {
    (*(v109 + 8))(v64, v65);
    v69 = v51;
    v70 = v131;
  }

  else
  {
    v71 = v102;
    v72 = v64;
    v73 = v66;
    (*(v111 + 32))(v102, v72, v66);
    v74 = v133;
    *(&v98 + 1) = v68;
    *&v98 = v133;
    *(&v94 + 1) = v51;
    *&v94 = v73;
    v75 = v115;
    v76 = v114;
    v77 = v131;
    sub_25F2A1300(v71, 0, v128, v134, v115, v129, v114, v131, v94, a9, v73, v139, v98, v123, v133);
    v141 = sub_25F1C1AC4(sub_25F2A1774, 0, v73, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v74, MEMORY[0x277D84AC0], v78);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    v80 = sub_25F2A2264(&qword_27FD576D8);
    *(&v99 + 1) = v68;
    *&v99 = v74;
    v97 = v79;
    v69 = v130;
    *(&v95 + 1) = v130;
    *&v95 = v73;
    v81 = v75;
    v70 = v77;
    sub_25F2A1300(&v141, 0, v128, v134, v81, v129, v76, v77, v95, a9, v97, v139, v99, v123, v80);

    (*(v111 + 8))(v71, v73);
  }

  v82 = v113;
  v83 = v136;
  v107(v117, v118, v69);
  sub_25F3050DC();
  v84 = v127;
  sub_25F305CDC();
  v85 = v84;
  v86 = v83(v84, 1, a9);
  v87 = v123;
  v88 = v120;
  v89 = v82;
  v90 = v119;
  v91 = v115;
  v92 = v114;
  if (v86 != 1)
  {
    v132 = v120[4];
    do
    {
      v132(v90, v85, a9);
      *(&v100 + 1) = v138;
      *&v100 = v133;
      *(&v96 + 1) = v130;
      *&v96 = v135;
      sub_25F2A1300(v90, 1, v128, v134, v91, v129, v92, v70, v96, a9, a9, v139, v100, v87, v87);
      (v88[1])(v90, a9);
      sub_25F305CDC();
      v85 = v127;
    }

    while (v136(v127, 1, a9) != 1);
  }

  (v126)(v89, AssociatedTypeWitness);
}

uint64_t sub_25F2A0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 8);
  v15 = sub_25F3062EC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_25F3062DC();
  v44 = *(v17 - 8);
  v18 = *(v44 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  MEMORY[0x25F8D72E0](a7, v14);
  sub_25F3062BC();
  sub_25F3062CC();
  if (!v47)
  {
    return (*(v44 + 8))(v20, v17);
  }

  v21 = v46;
  while (1)
  {
    swift_beginAccess();
    v22 = *(a2 + 16);
    if (*(v22 + 16) && (v23 = sub_25F2192AC(v21), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }

    swift_endAccess();
    v26 = sub_25F304F2C();

    if (v26 > v25)
    {
      v25 = v26;
    }

    swift_beginAccess();
    v27 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(a2 + 16);
    v29 = v45;
    *(a2 + 16) = 0x8000000000000000;
    v30 = sub_25F2192AC(v21);
    v32 = v29[2];
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      break;
    }

    v36 = v31;
    if (v29[3] < v35)
    {
      sub_25F21CEBC(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_25F2192AC(v21);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_24;
      }

LABEL_16:
      v38 = v45;
      if (v36)
      {
        goto LABEL_3;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v41 = v30;
    sub_25F21F2C4();
    v30 = v41;
    v38 = v45;
    if (v36)
    {
LABEL_3:
      *(v38[7] + 8 * v30) = v25;
      goto LABEL_4;
    }

LABEL_17:
    v38[(v30 >> 6) + 8] |= 1 << v30;
    *(v38[6] + 8 * v30) = v21;
    *(v38[7] + 8 * v30) = v25;
    v39 = v38[2];
    v34 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v34)
    {
      goto LABEL_23;
    }

    v38[2] = v40;
LABEL_4:
    *(a2 + 16) = v38;
    swift_endAccess();
    sub_25F3062CC();
    v21 = v46;
    if (!v47)
    {
      return (*(v44 + 8))(v20, v17);
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2A1300(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15)
{
  v40 = a7;
  v39 = a6;
  v38 = a5;
  v36 = a3;
  v37 = a2;
  v32 = a1;
  v35 = a13;
  v34 = a12;
  v31 = a9;
  v33 = a14;
  v17 = *(a15 + 8);
  v18 = sub_25F3062EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v31 - v21;
  MEMORY[0x25F8D72E0](a11, v17);
  v45 = a8;
  v46 = v31;
  v47 = a10;
  v48 = a11;
  v23 = v34;
  v49 = v34;
  v50 = v35;
  v51 = v33;
  v52 = a15;
  v53 = v36;
  v54 = a4 + 16;
  v55 = v38;
  v56 = v37;
  v42 = sub_25F2A22B4;
  v43 = &v44;
  WitnessTable = swift_getWitnessTable();
  v26 = sub_25F1C1AC4(sub_25F2A2300, v41, v18, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);
  (*(v19 + 8))(v22, v18);
  v57 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F2A2264(qword_27FD52F88);
  v27 = sub_25F304CAC();
  v29 = v28;

  (*(v23 + 8))(v27, v29, MEMORY[0x277D84F90], a8, v23);
}

uint64_t sub_25F2A15E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = result;
  if (*(a4 + 16) <= result)
  {
    v19 = MEMORY[0x277D84F90];
  }

  else
  {
    if (result < 0)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v19 = *(a4 + 8 * result + 32);
  }

  swift_beginAccess();
  v20 = *a5;
  if (*(*a5 + 16) && (v21 = sub_25F2192AC(v18), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
  }

  else
  {
    v23 = 0;
  }

  swift_endAccess();
  result = sub_25F304F2C();
  if (__OFSUB__(v23, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((a7 & 1) == 0)
  {

    v19 = MEMORY[0x277D84F90];
  }

  v24 = (*(a13 + 32))(a2, a3, v19, a8, a13);

  v25 = sub_25F30507C();
  v27 = v26;

  MEMORY[0x25F8D7130](v25, v27);

  return v24;
}

uint64_t sub_25F2A1774@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25F304F2C();
  result = sub_25F30507C();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_25F2A17BC()
{
  v0 = sub_25F3047DC();
  v1 = fileno(v0);
  result = isatty(v1);
  if (result != 1)
  {
    goto LABEL_8;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
  v4 = [v3 environment];

  v5 = sub_25F304A6C();
  if (!*(v5 + 16) || (v6 = sub_25F219234(0x53524F4C4F43534CLL, 0xE800000000000000), (v7 & 1) == 0))
  {

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v9 = *v8;
  v10 = v8[1];

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 != 0;
LABEL_9:
  byte_27FD576D0 = v12;
  return result;
}

uint64_t static CommandLinePrinter.allowsColor.getter()
{
  if (qword_27FD52948 != -1)
  {
    swift_once();
  }

  return byte_27FD576D0;
}

uint64_t sub_25F2A190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FD52948 != -1)
  {
    v10 = a3;
    swift_once();
    a3 = v10;
  }

  if (byte_27FD576D0 == 1)
  {
    v5 = sub_25F2A1DC4(a3);
    MEMORY[0x25F8D7130](v5);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v6 = 993024795;
    v7 = 0x6D3B305B1BLL;
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v11 = v6;

  MEMORY[0x25F8D7130](a1, a2);

  MEMORY[0x25F8D7130](v7, v8);

  return v11;
}

Swift::String __swiftcall CommandLinePrinter.format(_:_:)(Swift::String a1, Swift::OpaquePointer a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_27FD52948 != -1)
  {
    rawValue = a2._rawValue;
    swift_once();
    a2._rawValue = rawValue;
  }

  if (byte_27FD576D0 == 1)
  {
    v4 = sub_25F2A1DC4(a2._rawValue);
    MEMORY[0x25F8D7130](v4);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v5 = 993024795;
    v6 = 0xE400000000000000;
    v7 = 0x6D3B305B1BLL;
    v8 = 0xE500000000000000;
  }

  else
  {
    v7 = 0;
    v5 = 0;
    v8 = 0xE000000000000000;
    v6 = 0xE000000000000000;
  }

  v13 = v5;

  MEMORY[0x25F8D7130](countAndFlagsBits, object);

  MEMORY[0x25F8D7130](v7, v8);

  v9 = v13;
  v10 = v6;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t static CommandLinePrinter.printError(_:)()
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C440);
}

Swift::Void __swiftcall CommandLinePrinter.printError(_:)(Swift::String a1)
{
  MEMORY[0x25F8D7130](a1._countAndFlagsBits, a1._object);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C468);
}

void static CommandLinePrinter.printError(_:exitCode:)(uint64_t a1, uint64_t a2, int a3)
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C490);

  exit(a3);
}

Swift::Void __swiftcall CommandLinePrinter.printError(_:exitCode:)(Swift::String _, Swift::Int32 exitCode)
{
  MEMORY[0x25F8D7130](_._countAndFlagsBits, _._object);
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C4B8);

  exit(exitCode);
}

uint64_t sub_25F2A1D0C()
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C4E0);
}

void sub_25F2A1D70(uint64_t a1, uint64_t a2, int a3)
{
  MEMORY[0x25F8D7130]();
  _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(539634218, 0xE400000000000000, &unk_28715C418);

  exit(a3);
}

uint64_t sub_25F2A1DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v1, 0);
    v3 = v16;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v15 = qword_25F312BA8[v5];
      v6 = sub_25F3064DC();
      v17 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_25F1BD008((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v3 = v17;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F2A2264(qword_27FD52F88);
  v13 = sub_25F304CAC();

  return v13;
}

uint64_t _s20PreviewsFoundationOS28CommandLinePrintingAttributeO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if (a1 <= 32)
  {
    if (a1 <= 30)
    {
      if (a1 == 1)
      {
        return 0;
      }

      if (a1 == 30)
      {
        return 1;
      }

      return 9;
    }

    if (a1 == 31)
    {
      return 5;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    if (a1 > 34)
    {
      switch(a1)
      {
        case '#':
          return 6;
        case '$':
          return 4;
        case '%':
          return 8;
      }

      return 9;
    }

    if (a1 == 33)
    {
      return 7;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t _s20PreviewsFoundationOS18CommandLinePrinterV5printyySS_AA0dE17PrintingAttributeOdtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54690, &qword_25F30B7B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25F3077D0;
  if (qword_27FD52948 != -1)
  {
    swift_once();
  }

  if (byte_27FD576D0 == 1)
  {
    v7 = sub_25F2A1DC4(a3);
    MEMORY[0x25F8D7130](v7);

    MEMORY[0x25F8D7130](109, 0xE100000000000000);
    v8 = 993024795;
    v9 = 0xE400000000000000;
    v10 = 0x6D3B305B1BLL;
    v11 = 0xE500000000000000;
  }

  else
  {
    v10 = 0;
    v8 = 0;
    v11 = 0xE000000000000000;
    v9 = 0xE000000000000000;
  }

  v13 = v8;

  MEMORY[0x25F8D7130](a1, a2);

  MEMORY[0x25F8D7130](v10, v11);

  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = v13;
  *(v6 + 40) = v9;
  sub_25F3066EC();
}

unint64_t sub_25F2A21A0()
{
  result = qword_27FD576E0;
  if (!qword_27FD576E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD576E0);
  }

  return result;
}

uint64_t sub_25F2A2264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F2A22B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 88);
  v5 = *(v3 + 72);
  return sub_25F2A15E8(a1, a2, a3, *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
}

uint64_t sub_25F2A2300@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_25F2A2350(char a1)
{
  result = 1667329385;
  switch(a1)
  {
    case 1:
      result = 0x656E6F687069;
      break;
    case 2:
      result = 1684107369;
      break;
    case 3:
      result = 0x64756F6C6369;
      break;
    case 4:
      result = 1685024873;
      break;
    case 5:
      result = 0x6567617373656D69;
      break;
    case 6:
      result = 7565161;
      break;
    case 7:
      result = 0x73656E757469;
      break;
    case 8:
      result = 6578537;
      break;
    case 9:
      result = 0x6F746F687069;
      break;
    case 10:
      result = 0x6566696C69;
      break;
    case 11:
      result = 0x6569766F6D69;
      break;
    case 12:
      result = 0x736B6F6F6269;
      break;
    case 13:
      result = 0x6B726F7769;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_25F2A2478()
{
  result = sub_25F2A2498();
  off_27FD576E8 = result;
  return result;
}

uint64_t sub_25F2A2498()
{
  v12 = MEMORY[0x277D84F90];
  sub_25F1BD008(0, 14, 0);
  v0 = 0;
  while (2)
  {
    v1 = byte_28715C508[v0 + 32];
    switch(byte_28715C508[v0 + 32])
    {
      case 6u:

        goto LABEL_5;
      default:
        v2 = sub_25F30659C();

        if (v2)
        {
LABEL_5:
          v3 = 0xE200000000000000;
          v4 = 21327;
        }

        else
        {
          v5 = 0xE300000000000000;
          switch(v1)
          {
            case 0:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 1:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 2:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 3:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 4:
              v5 = 0xE400000000000000;
              goto LABEL_19;
            case 5:
              v5 = 0xE800000000000000;
              goto LABEL_19;
            case 6:
            case 8:
              goto LABEL_19;
            case 7:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 9:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 10:
              v5 = 0xE500000000000000;
              goto LABEL_19;
            case 11:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 12:
              v5 = 0xE600000000000000;
              goto LABEL_19;
            case 13:
              v5 = 0xE500000000000000;
LABEL_19:
              v6 = sub_25F304F3C();

              if (((v5 >> 40) & 0xF0000) >> 14 < v6 >> 14)
              {
                __break(1u);
LABEL_26:
                JUMPOUT(0);
              }

              sub_25F3050CC();

              sub_25F2A3D58();
              v4 = sub_25F305CFC();
              v3 = v7;

              break;
            default:
              goto LABEL_26;
          }
        }

        v9 = *(v12 + 16);
        v8 = *(v12 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_25F1BD008((v8 > 1), v9 + 1, 1);
        }

        ++v0;
        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v4;
        *(v10 + 40) = v3;
        if (v0 != 14)
        {
          continue;
        }

        return v12;
    }
  }
}

uint64_t sub_25F2A286C()
{
  result = sub_25F2A2890();
  qword_27FD576F0 = result;
  *algn_27FD576F8 = v1;
  return result;
}

uint64_t sub_25F2A2890()
{
  if (qword_27FD52950 != -1)
  {
    swift_once();
  }

  v0 = off_27FD576E8;
  v1 = *(off_27FD576E8 + 2);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v1, 0);
    v2 = objc_opt_self();
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = sub_25F304DDC();
      v7 = [v2 escapedPatternForString_];

      v8 = sub_25F304E0C();
      v10 = v9;

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25F1BD008((v11 > 1), v12 + 1, 1);
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v14 = sub_25F304CAC();

  return v14;
}

uint64_t sub_25F2A2A48()
{
  result = sub_25F2A2A6C();
  qword_27FD57700 = result;
  *algn_27FD57708 = v1;
  return result;
}

uint64_t sub_25F2A2A6C()
{
  v20 = MEMORY[0x277D84F90];
  sub_25F1BD008(0, 2, 0);
  v0 = v20;
  v1 = objc_opt_self();
  v2 = sub_25F304DDC();
  v3 = [v1 escapedPatternForString_];

  v4 = sub_25F304E0C();
  v6 = v5;

  v8 = *(v20 + 16);
  v7 = *(v20 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_25F1BD008((v7 > 1), v8 + 1, 1);
    v0 = v20;
  }

  *(v0 + 16) = v8 + 1;
  v9 = v0 + 16 * v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  v10 = sub_25F304DDC();
  v11 = [v1 escapedPatternForString_];

  v12 = sub_25F304E0C();
  v14 = v13;

  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_25F1BD008((v15 > 1), v16 + 1, 1);
    v0 = v20;
  }

  *(v0 + 16) = v16 + 1;
  v17 = v0 + 16 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v18 = sub_25F304CAC();

  return v18;
}

id sub_25F2A2C38()
{
  if (qword_27FD52958 != -1)
  {
    swift_once();
  }

  v0 = qword_27FD576F0;
  v1 = *algn_27FD576F8;
  MEMORY[0x25F8D7130](qword_27FD576F0, *algn_27FD576F8);
  MEMORY[0x25F8D7130](41, 0xE100000000000000);
  MEMORY[0x25F8D7130](v0, v1);
  MEMORY[0x25F8D7130](41, 0xE100000000000000);
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F31AA80);
  MEMORY[0x25F8D7130](975257384, 0xE400000000000000);

  MEMORY[0x25F8D7130](0x213F283A3F282B29, 0xE800000000000000);
  if (qword_27FD52960 != -1)
  {
    swift_once();
  }

  v2 = qword_27FD57700;
  v3 = *algn_27FD57708;
  MEMORY[0x25F8D7130](qword_27FD57700, *algn_27FD57708);
  MEMORY[0x25F8D7130](0x3A3F28497CLL, 0xE500000000000000);
  MEMORY[0x25F8D7130](v0, v1);
  MEMORY[0x25F8D7130](0xD000000000000013, 0x800000025F31AAB0);
  MEMORY[0x25F8D7130](v2, v3);
  MEMORY[0x25F8D7130](0x693A3F283A3F287CLL, 0xEC0000002829497CLL);
  MEMORY[0x25F8D7130](3817256, 0xE300000000000000);

  MEMORY[0x25F8D7130](0x5D7A2D615B7C2929, 0xE800000000000000);
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0, 0xE000000000000000, 0);
  qword_27FD57710 = result;
  return result;
}

id sub_25F2A2EE0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0x292B2E282A5FLL, 0xE600000000000000, 0);
  qword_27FD57718 = result;
  return result;
}

Swift::String __swiftcall String.englishName(strippingClassPrefix:)(Swift::Bool strippingClassPrefix)
{
  v3 = v2;
  v4 = v1;
  v96 = strippingClassPrefix;
  v5 = sub_25F30427C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v4;
  v103 = v4;
  v104 = v3;
  sub_25F30422C();
  sub_25F1BF118();
  v10 = sub_25F305D1C();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    v58 = v94;
    goto LABEL_83;
  }

  if (qword_27FD52968 != -1)
  {
LABEL_49:
    swift_once();
  }

  v14 = qword_27FD57710;
  v15 = sub_25F304DDC();

  v16 = MEMORY[0x25F8D71F0](v10, v12);

  v17 = [v14 matchesInString:v15 options:0 range:{0, v16}];

  sub_25F2A3CC0();
  v18 = sub_25F30525C();

  v102 = sub_25F304DDC();

  if (!(v18 >> 62))
  {
    v101 = v18 & 0xFFFFFFFFFFFFFF8;
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = v3;
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_51:
    v95 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v101 = v18 & 0xFFFFFFFFFFFFFF8;
  v19 = sub_25F30631C();
  v93 = v3;
  if (!v19)
  {
    goto LABEL_51;
  }

LABEL_7:
  v3 = 0;
  v100 = v18 & 0xC000000000000001;
  v95 = MEMORY[0x277D84F90];
  v98 = v19;
  v99 = v18;
  while (2)
  {
    v20 = v3;
    while (1)
    {
      if (v100)
      {
        v21 = MEMORY[0x25F8D81E0](v20, v18);
      }

      else
      {
        if (v20 >= *(v101 + 16))
        {
          goto LABEL_48;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v3 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v20)
      {
        v23 = 0;
        v12 = 0;
      }

      else
      {
        v24 = [v21 range];
        v23 = 0;
        v12 = 0;
        if (v24 && !v96)
        {
          v25 = [v102 substringToIndex_];
          v23 = sub_25F304E0C();
          v12 = v26;
        }
      }

      v97 = v23;
      v27 = [v22 range];
      v29 = [v102 substringWithRange_];
      v10 = v29;
      v30 = v29;
      if (!v29)
      {
        sub_25F304E0C();
        v30 = sub_25F304DDC();

        sub_25F304E0C();
        v10 = sub_25F304DDC();
      }

      sub_25F304E0C();
      v32 = v31;
      v33 = qword_27FD52970;
      v34 = v29;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = qword_27FD57718;
      v36 = (v32 & 0x1000000000000000) != 0 ? sub_25F30501C() : sub_25F30502C();
      v37 = v36;
      v38 = v35;

      v39 = [v38 firstMatchInString:v30 options:0 range:{0, v37}];

      if (v39)
      {
        break;
      }

      ++v20;
      v18 = v99;
      if (v3 == v98)
      {
        goto LABEL_52;
      }
    }

    v40 = [v39 rangeAtIndex_];
    v42 = v41;
    v43 = [v10 substringWithRange_];

    v44 = sub_25F304E0C();
    v46 = v45;

    if (!v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_25F2EFB20(0, *(v95 + 2) + 1, 1, v95);
      }

      v18 = v99;
LABEL_37:
      v49 = v98;
      v51 = *(v95 + 2);
      v50 = *(v95 + 3);
      v12 = v51 + 1;
      if (v51 < v50 >> 1)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }

    if (v40 == [v39 range] && v42 == v47)
    {
      v103 = v97;
      v104 = v12;
      MEMORY[0x25F8D7130](v44, v46);

      v44 = v103;
      v46 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v99;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v95 = sub_25F2EFB20(0, *(v95 + 2) + 1, 1, v95);
      }

      goto LABEL_37;
    }

    v54 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v99;
    if ((v54 & 1) == 0)
    {
      v95 = sub_25F2EFB20(0, *(v95 + 2) + 1, 1, v95);
    }

    v49 = v98;
    v10 = *(v95 + 2);
    v50 = *(v95 + 3);
    v55 = v50 >> 1;
    v51 = v10 + 1;
    if (v50 >> 1 <= v10)
    {
      v95 = sub_25F2EFB20((v50 > 1), v10 + 1, 1, v95);
      v50 = *(v95 + 3);
      v55 = v50 >> 1;
    }

    v56 = v95;
    *(v95 + 2) = v51;
    v57 = &v56[16 * v10];
    *(v57 + 4) = v97;
    *(v57 + 5) = v12;
    v12 = v10 + 2;
    if (v55 < (v10 + 2))
    {
LABEL_45:
      v95 = sub_25F2EFB20((v50 > 1), v12, 1, v95);
    }

LABEL_38:

    v52 = v95;
    *(v95 + 2) = v12;
    v53 = &v52[16 * v51];
    *(v53 + 4) = v44;
    *(v53 + 5) = v46;
    if (v3 != v49)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v59 = v95;
  if (!*(v95 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_25F3077D0;
    *(v68 + 32) = v94;
    *(v68 + 40) = v93;

    v59 = v68;
    while (1)
    {
      v69 = *(v59 + 2);
      v70 = MEMORY[0x277D84F90];
      if (!v69)
      {
        break;
      }

      v107 = MEMORY[0x277D84F90];
      sub_25F1BD008(0, v69, 0);
      v70 = v107;
      v95 = v59;
      v71 = (v59 + 40);
      v59 = 0xE100000000000000;
      while (2)
      {
        v73 = *(v71 - 1);
        v72 = *v71;
        sub_25F304BFC();

        v74 = sub_25F2A3D0C();
        switch(v74)
        {
          case 6:

            goto LABEL_62;
          case 14:
            goto LABEL_79;
          default:
            v75 = sub_25F30659C();

            if (v75)
            {
LABEL_62:
              v76 = 0xE200000000000000;
              v77 = 21327;
              goto LABEL_78;
            }

            object = 0xE300000000000000;
            switch(v74)
            {
              case 1:
                object = 0xE600000000000000;
                break;
              case 2:
                object = 0xE400000000000000;
                break;
              case 3:
                object = 0xE600000000000000;
                break;
              case 4:
                object = 0xE400000000000000;
                break;
              case 5:
                object = 0xE800000000000000;
                break;
              case 6:
              case 8:
                break;
              case 7:
                object = 0xE600000000000000;
                break;
              case 9:
                object = 0xE600000000000000;
                break;
              case 10:
                object = 0xE500000000000000;
                break;
              case 11:
                object = 0xE600000000000000;
                break;
              case 12:
                object = 0xE600000000000000;
                break;
              case 13:
                object = 0xE500000000000000;
                break;
              default:
                object = 0xE400000000000000;
                break;
            }

            countAndFlagsBits = sub_25F304F3C();

            if (((object >> 40) & 0xF0000) >> 14 >= countAndFlagsBits >> 14)
            {
              v78 = sub_25F3050CC();
              v80 = v79;
              v82 = v81;
              v84 = v83;

              v103 = v78;
              v104 = v80;
              v105 = v82;
              v106 = v84;
              sub_25F2A3D58();
              v85 = sub_25F305CFC();
              v76 = v86;

              v77 = v85;
LABEL_78:
              v103 = 105;
              v104 = 0xE100000000000000;
              MEMORY[0x25F8D7130](v77, v76);

              v73 = v103;
              v72 = v104;
LABEL_79:
              v107 = v70;
              v88 = *(v70 + 16);
              v87 = *(v70 + 24);
              if (v88 >= v87 >> 1)
              {
                sub_25F1BD008((v87 > 1), v88 + 1, 1);
                v70 = v107;
              }

              *(v70 + 16) = v88 + 1;
              v89 = v70 + 16 * v88;
              *(v89 + 32) = v73;
              *(v89 + 40) = v72;
              v71 += 2;
              if (!--v69)
              {
                goto LABEL_82;
              }

              continue;
            }

            __break(1u);
LABEL_85:
            v65 = sub_25F1E1114(v59);
            v59 = v65;
            if (!*(v65 + 16))
            {
              goto LABEL_86;
            }

LABEL_55:
            v67 = *(v59 + 5);
            *(v59 + 4) = countAndFlagsBits;
            *(v59 + 5) = object;

            break;
        }

        break;
      }
    }

LABEL_82:
    v103 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
    sub_25F1C3498();
    v58 = sub_25F304CAC();
    v3 = v90;

LABEL_83:
    v65 = v58;
    v66 = v3;
    goto LABEL_87;
  }

  v60 = *(v95 + 4);
  v61 = *(v95 + 5);

  v62 = String.uppercasingFirstLetter()();
  countAndFlagsBits = v62._countAndFlagsBits;
  object = v62._object;

  v65 = swift_isUniquelyReferenced_nonNull_native();
  if ((v65 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (*(v59 + 2))
  {
    goto LABEL_55;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  result._object = v66;
  result._countAndFlagsBits = v65;
  return result;
}

uint64_t String.firstEnglishNameLetter.getter()
{
  v0 = sub_25F30427C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String.englishName(strippingClassPrefix:)(1);
  sub_25F30424C();
  sub_25F1BF118();
  sub_25F305D0C();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (v6)
  {

    return 0;
  }

  else
  {
    sub_25F3050CC();

    sub_25F305C6C();

    v8 = sub_25F30509C();

    return v8;
  }
}

uint64_t sub_25F2A3CB8(Swift::Bool strippingClassPrefix)
{
  v2 = *v1;
  v3 = v1[1];
  return String.englishName(strippingClassPrefix:)(strippingClassPrefix)._countAndFlagsBits;
}

unint64_t sub_25F2A3CC0()
{
  result = qword_27FD57720;
  if (!qword_27FD57720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD57720);
  }

  return result;
}

uint64_t sub_25F2A3D0C()
{
  v0 = sub_25F3063BC();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F2A3D58()
{
  result = qword_27FD57728[0];
  if (!qword_27FD57728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57728);
  }

  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[6] = AssociatedTypeWitness;
  v6 = sub_25F305C1C();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(AssociatedTypeWitness - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v11 = *(a1 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2A3FE0, 0, 0);
}

uint64_t sub_25F2A3FE0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v0[2] = sub_25F3052DC();
  (*(v3 + 16))(v2, v5, v7);
  sub_25F3055EC();
  v8 = v0[15];
  v10 = v0[3];
  v9 = v0[4];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_25F2A4100;
  v14 = v0[17];
  v15 = v0[15];
  v16 = v0[9];

  return MEMORY[0x282200308](v16, v15, AssociatedConformanceWitness);
}

uint64_t sub_25F2A4100()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_25F2A444C;
  }

  else
  {
    v5 = sub_25F2A421C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F2A421C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[14];
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[7];
    v8 = v0[8];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v8 + 8))(v1, v7);
    v9 = v0[2];

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    (*(v2 + 32))(v12, v1, v3);
    (*(v2 + 16))(v13, v12, v3);
    sub_25F30539C();
    sub_25F30533C();
    (*(v2 + 8))(v12, v3);
    v14 = v0[15];
    v16 = v0[3];
    v15 = v0[4];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = *(MEMORY[0x277D856D0] + 4);
    v19 = swift_task_alloc();
    v0[18] = v19;
    *v19 = v0;
    v19[1] = sub_25F2A4100;
    v20 = v0[17];
    v21 = v0[15];
    v22 = v0[9];

    return MEMORY[0x282200308](v22, v21, AssociatedConformanceWitness);
  }
}

uint64_t sub_25F2A444C()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t OrderedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F3052DC();
  v10 = sub_25F304A3C();
  v20 = v9;
  v21 = v10;
  if (sub_25F30531C())
  {
    v17 = v7;
    v18 = a3;
    v11 = 0;
    while (1)
    {
      v12 = sub_25F3052FC();
      sub_25F30528C();
      if (v12)
      {
        (*(v6 + 16))(v8, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, a2);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v17 != 8)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        (*(v6 + 16))(v8, &v19, a2);
        swift_unknownObjectRelease();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v9 = v20;
          v10 = v21;
          a3 = v18;
          goto LABEL_13;
        }
      }

      v14 = type metadata accessor for OrderedSet();
      OrderedSet.append(_:)(v8, v14);
      (*(v6 + 8))(v8, a2);
      ++v11;
      if (v13 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a3 = v9;
  a3[1] = v10;
  return result;
}

uint64_t OrderedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v29 = a1;
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F305C1C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25 - v12;
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v19 = *(v26 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v25 - v20;
  (*(v14 + 16))(v17, v29, a3);
  sub_25F3050DC();
  swift_getAssociatedConformanceWitness();
  v28 = v21;
  v29 = AssociatedTypeWitness;
  sub_25F305CDC();
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    v23 = *(v5 + 32);
    do
    {
      v23(v8, v13, v4);
      OrderedSet.append(_:)(v8, v27);
      (*(v5 + 8))(v8, v4);
      sub_25F305CDC();
    }

    while (v22(v13, 1, v4) != 1);
  }

  return (*(v26 + 8))(v28, v29);
}

BOOL OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *(v2 + 8);
  v14 = *(v13 + 24);
  v15 = sub_25F3056BC();
  if ((v15 & 1) == 0)
  {
    v16 = a1;
    v20 = a1;
    v17 = *(v5 + 16);
    v17(v9, v16, v4);
    sub_25F3056FC();
    sub_25F30568C();
    (*(v5 + 8))(v11, v4);
    v17(v11, v20, v4);
    sub_25F30539C();
    sub_25F30533C();
  }

  return (v15 & 1) == 0;
}

uint64_t OrderedSet.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_25F3053DC();
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_25F3052DC();
  result = sub_25F304A3C();
  a1[1] = result;
  return result;
}

Swift::Void __swiftcall OrderedSet.reserveCapacity(_:)(Swift::Int a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  sub_25F30539C();
  sub_25F30529C();
  v4 = *(v2 + 24);
  sub_25F3056FC();
  sub_25F30564C();
}

double OrderedSet.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v39 = a4;
  v35 = a5;
  v36 = a1;
  v31 = *(a2 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F305C1C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v30 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v20 = *(v32 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v30 - v21;
  v23 = sub_25F3052DC();
  v24 = sub_25F304A3C();
  *&v40 = v23;
  *(&v40 + 1) = v24;
  v33 = v15;
  (*(v15 + 16))(v18, v36, a3);
  sub_25F3050DC();
  v34 = a3;
  swift_getAssociatedConformanceWitness();
  v37 = v22;
  v38 = AssociatedTypeWitness;
  sub_25F305CDC();
  v25 = v31;
  v26 = *(v31 + 48);
  if (v26(v14, 1, a2) != 1)
  {
    v27 = *(v25 + 32);
    do
    {
      v27(v9, v14, a2);
      v28 = type metadata accessor for OrderedSet();
      OrderedSet.append(_:)(v9, v28);
      (*(v25 + 8))(v9, a2);
      sub_25F305CDC();
    }

    while (v26(v14, 1, a2) != 1);
  }

  (*(v33 + 8))(v36, v34);
  (*(v32 + 8))(v37, v38);
  result = *&v40;
  *v35 = v40;
  return result;
}

uint64_t OrderedSet.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_25F30531C();
}

uint64_t OrderedSet.isEmpty.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_25F30539C();
  swift_getWitnessTable();
  return sub_25F30588C() & 1;
}

uint64_t OrderedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  return sub_25F3056BC();
}

uint64_t OrderedSet.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  if (sub_25F30531C() < 1)
  {
    v6 = 1;
  }

  else
  {
    sub_25F3053DC();
    v6 = 0;
  }

  v7 = *(*(v5 - 8) + 56);

  return v7(a2, v6, 1, v5);
}

uint64_t OrderedSet.last.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  if (sub_25F30531C() < 1)
  {
    v9 = 1;
  }

  else
  {
    v6 = sub_25F30531C();
    v7 = __OFSUB__(v6, 1);
    result = v6 - 1;
    if (v7)
    {
      __break(1u);
      return result;
    }

    sub_25F3053DC();
    v9 = 0;
  }

  v10 = *(*(v5 - 8) + 56);

  return v10(a2, v9, 1, v5);
}

uint64_t OrderedSet.indexOf(_:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v4 = *(a2 + 16);
  sub_25F30539C();
  swift_getWitnessTable();
  v5 = *(*(a2 + 24) + 8);
  sub_25F3058CC();
  return v8;
}

BOOL OrderedSet.appending(_:)@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = v3[1];
  *a3 = v6;
  a3[1] = v7;

  return OrderedSet.append(_:)(a1, a2);
}

uint64_t static OrderedSet.+ infix(_:_:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v8[0] = *a2;
  v8[1] = v4;
  v5 = type metadata accessor for OrderedSet();
  WitnessTable = swift_getWitnessTable();
  return OrderedSet.appending<A>(contentsOf:)(v8, v5, v5, WitnessTable, a3);
}

uint64_t OrderedSet.removeLast()(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30597C();
  v8 = *(a1 + 24);
  sub_25F3056FC();
  sub_25F30569C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t OrderedSet.insert(_:atIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - v12;
  v14 = v3[1];
  v16 = *(v15 + 24);
  if ((sub_25F3056BC() & 1) == 0)
  {
    v20[0] = a2;
    v19 = *(v7 + 16);
    v19(v11, a1, v6);
    sub_25F3056FC();
    sub_25F30568C();
    (*(v7 + 8))(v13, v6);
    v19(v13, a1, v6);
    sub_25F30539C();
    return sub_25F30534C();
  }

  v20[1] = *v3;
  sub_25F30539C();
  swift_getWitnessTable();
  v17 = *(v16 + 8);
  result = sub_25F3058CC();
  if (v21)
  {
    __break(1u);
    return result;
  }

  if (v20[2] != a2)
  {
    sub_25F30535C();
    (*(v7 + 8))(v13, v6);
    (*(v7 + 16))(v13, a1, v6);
    return sub_25F30534C();
  }

  return result;
}

uint64_t OrderedSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_25F305C1C();
  v22 = *(v9 - 8);
  v23 = v9;
  v10 = *(v22 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = *(*(v8 - 8) + 56);
  v24 = a3;
  v13(a3, 1, 1, v8);
  v14 = v4[1];
  v25 = *v4;
  v26 = v14;

  v15 = OrderedSet.indexOf(_:)(a1, a2);
  LOBYTE(a1) = v16;

  if ((a1 & 1) == 0)
  {
    OrderedSet.remove(at:)(v15, a2);
    v19 = v22;
    v18 = v23;
    v20 = v24;
    (*(v22 + 8))(v24, v23);
    v13(v12, 0, 1, v8);
    return (*(v19 + 32))(v20, v12, v18);
  }

  return result;
}

uint64_t OrderedSet.remove(at:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_25F305C1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_25F30539C();
  sub_25F30535C();
  v9 = *(a2 + 24);
  sub_25F3056FC();
  sub_25F30569C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t OrderedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = sub_25F305C1C();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v35 - v17;
  v43 = *(a3 - 8);
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v16);
  v42 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v22 = *(v36 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = &v35 - v23;
  v41 = a2;
  v25 = *(a2 + 24);
  sub_25F3056FC();
  sub_25F3056CC();
  (*(v43 + 16))(v42, a1, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v24;
  v43 = AssociatedTypeWitness;
  v40 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v27 = v44;
  v39 = *(v44 + 48);
  if (v39(v18, 1, v8) != 1)
  {
    v38 = *(v27 + 32);
    v44 = v27 + 32;
    v29 = (v27 + 8);
    v38(v13, v18, v8);
    while (1)
    {
      v32 = v4[1];
      v45 = *v4;
      v46 = v32;

      OrderedSet.indexOf(_:)(v13, v41);
      v34 = v33;

      if (v34)
      {
        (*v29)(v13, v8);
      }

      else
      {
        sub_25F30539C();
        v30 = v37;
        sub_25F30535C();
        v31 = *v29;
        (*v29)(v30, v8);
        v31(v13, v8);
      }

      sub_25F305CDC();
      if (v39(v18, 1, v8) == 1)
      {
        break;
      }

      v38(v13, v18, v8);
    }
  }

  return (*(v36 + 8))(v42, v43);
}

uint64_t OrderedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  sub_25F3056FC();
  sub_25F30565C();
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F30599C();
}

uint64_t sub_25F2A5FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v12 = *v6;
  v13 = v6[1];
  *a6 = v12;
  a6[1] = v13;

  return a5(a1, a2, a3, a4);
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v2 = v1;
  v3 = *(v1 + 16);
  sub_25F30539C();
  sub_25F30538C();
  v4 = *(v2 + 24);
  sub_25F3056FC();
  sub_25F3056EC();
}

uint64_t OrderedSet.endIndex.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_25F30531C();
}

uint64_t OrderedSet.makeIterator()(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_25F30539C();

  swift_getWitnessTable();
  sub_25F3061EC();
  swift_getWitnessTable();
  return sub_25F305EEC();
}

uint64_t sub_25F2A6168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OrderedSet.makeIterator()(a1);
  v6 = *v2;
  v5 = v2[1];

  *a2 = v4;
  return result;
}

uint64_t sub_25F2A61AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F2A6200()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F2A626C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2A62F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedSet.endIndex.getter(a1);
  *a2 = result;
  return result;
}

void (*sub_25F2A631C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F2A63A4(v6, *a2, a3);
  return sub_25F1CC82C;
}

void (*sub_25F2A63A4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  v8 = *v3;
  sub_25F3053DC();
  return sub_25F1DC510;
}

uint64_t sub_25F2A6478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_25F2A64EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_25F2A6574(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

BOOL sub_25F2A6604()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v0[6] + 8);

  LOBYTE(v1) = sub_25F3056BC();

  return (v1 & 1) == 0;
}

uint64_t sub_25F2A67AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A67F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v49 = MEMORY[0x277D84F90];
  sub_25F1BD1E8(0, v2, 0);
  v3 = a1;
  v42 = a1;
  v43 = a1 + 64;
  v4 = -1;
  v5 = -1 << *(a1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a1 + 64);
  v7 = (63 - v5) >> 6;
  v44 = v2;
  if (!v2)
  {

    v10 = 0;
    goto LABEL_29;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    if (v6)
    {
      goto LABEL_10;
    }

    do
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      if (v11 >= v7)
      {
        goto LABEL_54;
      }

      v6 = *(v43 + 8 * v11);
      ++v10;
    }

    while (!v6);
    v10 = v11;
LABEL_10:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = v13[1];
    v46 = *v13;
    v15 = *(v3 + 56) + 24 * v12;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);

    result = sub_25F1B708C(v16, v17, v18);
    if (!v14)
    {
      goto LABEL_54;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
        v20 = sub_25F305B4C();
        v3 = v42;
      }

      else if (v18 == 4)
      {
        v20 = sub_25F30452C();
      }

      else
      {
        v20 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      }

      goto LABEL_23;
    }

    if (!v18)
    {
      v20 = sub_25F304DDC();
LABEL_23:
      v45 = v20;
      goto LABEL_24;
    }

    sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
    if (v18 == 1)
    {
      v19 = sub_25F305B5C();
    }

    else
    {
      v19 = sub_25F305B6C();
    }

    v45 = v19;
    v3 = v42;
LABEL_24:
    result = sub_25F1D4C04(v16, v17, v18);
    v22 = *(v49 + 16);
    v21 = *(v49 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_25F1BD1E8((v21 > 1), v22 + 1, 1);
      v3 = v42;
    }

    ++v9;
    v6 &= v6 - 1;
    *(v49 + 16) = v22 + 1;
    v23 = (v49 + 24 * v22);
    v23[4] = v46;
    v23[5] = v14;
    v23[6] = v45;
  }

  while (v9 != v44);
LABEL_29:
  v48 = v49;
  v24 = v43;
  if (v6)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v25 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_53;
    }

    if (v25 < v7)
    {
      v6 = *(v24 + 8 * v25);
      ++v10;
      if (!v6)
      {
        continue;
      }

      v10 = v25;
LABEL_34:
      v26 = __clz(__rbit64(v6)) | (v10 << 6);
      v27 = (*(v3 + 48) + 16 * v26);
      v28 = v27[1];
      v29 = *(v3 + 56) + 24 * v26;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      v47 = *v27;
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
          v33 = v28;

          v35 = sub_25F305B4C();
          v3 = v42;
        }

        else if (v32 == 4)
        {
          v33 = v27[1];

          sub_25F1B708C(v30, v31, 4);
          v35 = sub_25F30452C();
        }

        else
        {
          v37 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          v33 = v28;

          v35 = [v37 init];
        }
      }

      else
      {
        if (*(v29 + 16))
        {
          sub_25F2A7CB0(0, qword_27FD577F8, 0x277CCABB0);
          v33 = v28;

          if (v32 == 1)
          {
            v34 = sub_25F305B5C();
          }

          else
          {
            v34 = sub_25F305B6C();
          }

          v36 = v34;
          v3 = v42;
LABEL_47:
          result = sub_25F1D4C04(v30, v31, v32);
          v38 = v48;
          v40 = *(v48 + 16);
          v39 = *(v48 + 24);
          if (v40 >= v39 >> 1)
          {
            result = sub_25F1BD1E8((v39 > 1), v40 + 1, 1);
            v3 = v42;
            v38 = v48;
          }

          v6 &= v6 - 1;
          *(v38 + 16) = v40 + 1;
          v48 = v38;
          v41 = (v38 + 24 * v40);
          v41[4] = v47;
          v41[5] = v33;
          v41[6] = v36;
          v24 = v43;
          if (!v6)
          {
            continue;
          }

          goto LABEL_34;
        }

        v33 = v27[1];

        sub_25F1B708C(v30, v31, 0);
        v35 = sub_25F304DDC();
      }

      v36 = v35;
      goto LABEL_47;
    }

    break;
  }

  return v48;
}

uint64_t CoreAnalyticsLogger.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54E60, &unk_25F30D660);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

Swift::Void __swiftcall CoreAnalyticsLogger.logEvent(identifierSuffix:fields:)(Swift::String identifierSuffix, Swift::OpaquePointer fields)
{
  v3 = v2;
  object = identifierSuffix._object;
  countAndFlagsBits = identifierSuffix._countAndFlagsBits;
  if (qword_27FD52980 != -1)
  {
    swift_once();
  }

  if (byte_27FD577D9 == 2)
  {
    v8 = qword_27FD577C0;
    v7 = *algn_27FD577C8;
    v9 = qword_27FD577D0;
    v10 = qword_27FD577E0;
    swift_bridgeObjectRetain_n();
    v11 = v9;

    v12 = v11;
    v13 = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(v8, v7, v12);
    if (v13 == 2)
    {
      v10(&rawValue);

      if ((rawValue & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        return;
      }
    }
  }

  else if ((byte_27FD577D9 & 1) == 0)
  {
    return;
  }

  v15 = swift_allocObject();
  v15[2]._rawValue = fields._rawValue;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC38]);

  v17 = [v16 init];
  v18 = [v17 processName];

  v19 = sub_25F304E0C();
  v21 = v20;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  rawValue = fields._rawValue;
  v15[2]._rawValue = 0x8000000000000000;
  sub_25F2105D0(v19, v21, 0, 0xD000000000000012, 0x800000025F31AAD0, isUniquelyReferenced_nonNull_native);
  v23 = rawValue;
  v15[2]._rawValue = rawValue;
  if (qword_27FD52978 != -1)
  {
    swift_once();
  }

  v25 = qword_27FD577B0;
  v24 = *algn_27FD577B8;

  v26 = swift_isUniquelyReferenced_nonNull_native();
  if (v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  rawValue = v23;
  if (v24)
  {
    v28 = 0;
  }

  else
  {
    v28 = 5;
  }

  sub_25F2105D0(v27, v24, v28, 0x72655665646F6378, 0xEC0000006E6F6973, v26);
  v29 = rawValue;
  v15[2]._rawValue = rawValue;
  v30 = *(v3 + 16);
  os_unfair_lock_lock((v30 + 20));
  v31 = *(v30 + 16);
  os_unfair_lock_unlock((v30 + 20));
  if (v31 != 2)
  {
    if (*(v29 + 16) && (v32 = sub_25F219234(0xD000000000000015, 0x800000025F31AB30), (v33 & 1) != 0) && (v34 = *(v29 + 56) + 24 * v32, *(v34 + 16) == 1) && (*v34 & 1) != 0)
    {
      v35 = 1;
    }

    else
    {
      v35 = v31 & 1;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v29;
    v15[2]._rawValue = 0x8000000000000000;
    sub_25F2105D0(v35, 0, 1, 0xD000000000000015, 0x800000025F31AB30, v36);
    v15[2]._rawValue = rawValue;
  }

  rawValue = 0;
  v40 = 0xE000000000000000;
  sub_25F305FAC();

  rawValue = 0xD000000000000011;
  v40 = 0x800000025F31AAF0;
  MEMORY[0x25F8D7130](countAndFlagsBits, object);
  v37 = sub_25F304DDC();

  v43 = sub_25F2A7AA0;
  v44 = v15;
  rawValue = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_25F2A7880;
  v42 = &block_descriptor_10;
  v38 = _Block_copy(&rawValue);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

void CoreAnalyticsLogger.hints.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 20));
}

void CoreAnalyticsLogger.hints.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

void (*CoreAnalyticsLogger.hints.modify(uint64_t a1))(os_unfair_lock_s **a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  os_unfair_lock_lock((v3 + 20));
  *(a1 + 8) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  return sub_25F2A72C0;
}

void sub_25F2A72C0(os_unfair_lock_s **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  os_unfair_lock_lock(*a1 + 5);
  LOBYTE(v1[4]._os_unfair_lock_opaque) = v2;

  os_unfair_lock_unlock(v1 + 5);
}

uint64_t CoreAnalyticsLogger.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD54E60, &unk_25F30D660);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 2;
  *(v0 + 16) = v1;
  return v0;
}

Swift::Int sub_25F2A734C()
{
  result = sub_25F2A7370();
  qword_27FD577B0 = result;
  *algn_27FD577B8 = v1;
  return result;
}

Swift::Int sub_25F2A7370()
{
  v0 = sub_25F3044DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v29[-v6];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v10 = [v9 bundleURL];
  sub_25F30449C();

  sub_25F30447C();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v12 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v13 = sub_25F30446C();
  v14 = [v12 initWithContentsOfURL_];

  if (v14)
  {
    *&v32 = 0xD000000000000013;
    *(&v32 + 1) = 0x800000025F31ABB0;
    v15 = [v14 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v15)
    {
      sub_25F305DDC();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0;
    }

    *&v30.majorRelease = v32;
    v30.rawMinorRelease = v33;
    if (v33._object)
    {
      if (swift_dynamicCast())
      {
        BuildNumber.init(_:)(&v30, v31);
        if (!v16)
        {
          *&v32 = v30.majorRelease;
          v30.majorRelease = sub_25F3064DC();
          v30.majorBuild = v26;
          v27 = sub_25F304C0C();
          MEMORY[0x25F8D7130](v27);

          majorRelease = v30.majorRelease;
          v11(v7, v0);

          return majorRelease;
        }
      }
    }

    else
    {

      sub_25F1E1E04(&v30);
    }
  }

  v17 = [v8 mainBundle];
  v18 = [v17 infoDictionary];

  if (!v18)
  {
    v11(v7, v0);

    return 0;
  }

  v19 = sub_25F304A6C();

  result = *MEMORY[0x277CBED58];
  if (!*MEMORY[0x277CBED58])
  {
    __break(1u);
    return result;
  }

  v21 = sub_25F304E0C();
  if (!*(v19 + 16))
  {

    goto LABEL_21;
  }

  v23 = sub_25F219234(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_21:

    v11(v7, v0);
    return 0;
  }

  sub_25F1B7118(*(v19 + 56) + 32 * v23, &v30);

  v11(v7, v0);

  if (swift_dynamicCast())
  {
    return v32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F2A7804(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);

  v4 = sub_25F2A67F4(v3);

  v5 = sub_25F2A7B10(v4);

  return v5;
}

id sub_25F2A7880(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_25F2A7CB0(0, &qword_27FD55BF0, 0x277D82BB8);
    v5 = sub_25F304A5C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t CoreAnalyticsLogger.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CoreAnalyticsLogger.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_25F2A7998(_BYTE *a1@<X8>)
{
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 20));
}

void sub_25F2A79E4(char *a1)
{
  v2 = *a1;
  v3 = *(*v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

void (*sub_25F2A7A2C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = CoreAnalyticsLogger.hints.modify(v3);
  return sub_25F1DC004;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F2A7B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v2 = (a1 + 48);
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v8 = *(v2 - 2);
    v7 = *(v2 - 1);
    v9 = *v2;

    v10 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_25F219234(v8, v7);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_25F21D120(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_25F219234(v8, v7);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_25F21F410();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v4 = v12;

      v5 = v3[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v10;

      goto LABEL_4;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v7;
    *(v3[7] + 8 * v12) = v10;
    v21 = v3[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v3[2] = v22;
LABEL_4:
    v2 += 3;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_25F30665C();
  __break(1u);
  return result;
}

uint64_t sub_25F2A7CB0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_25F2A7CF8()
{
  sub_25F3054DC();
  swift_getTupleTypeMetadata2();
  v0 = sub_25F3052DC();
  sub_25F3052DC();
  return v0;
}

uint64_t AsyncStream.Sink.init(_:replaysHistory:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v9[0] = sub_25F2A7CF8();
  v9[1] = v4;
  v10 = v5 & 1;
  v6 = _s4SinkV5StateVMa();
  v7 = sub_25F203E0C(v9, v6);

  *a2 = v7;
  *(a2 + 8) = a1;
  return result;
}

uint64_t sub_25F2A7DFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = *(a2 + 16);
  v6 = sub_25F3054DC();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v24 = sub_25F30552C();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = &v22 - v12;
  v14 = *v3;
  v23 = *(v3 + 8);
  nullsub_2(v5);
  sub_25F30547C();
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v15 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v16 = *(v15 + 2);
  *(v15 + 2) = v16 + 1;
  os_unfair_lock_unlock(v15 + 6);
  v22 = &v22;
  v33 = v14;
  *&v27 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v27 + 1) = 128;
  v30 = "asyncStream(bufferingPolicy:emitInitialValue:)";
  v31 = 46;
  v28 = 2;
  v29 = xmmword_25F312F90;
  v32 = 2;
  MEMORY[0x28223BE20](v17);
  *(&v22 - 4) = v5;
  *(&v22 - 3) = a1;
  *(&v22 - 2) = v9;
  *(&v22 - 1) = v16;
  _s4SinkV5StateVMa();
  v18 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v27, sub_25F2AA1C8, (&v22 - 6), v18, MEMORY[0x277D839B0], WitnessTable);

  if (v34 == 1)
  {
    sub_25F3054CC();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = v14;
  *(v20 + 32) = v23;
  *(v20 + 40) = v16;

  sub_25F30549C();
  (*(v10 + 32))(v26, v13, v24);
  return (*(v25 + 8))(v9, v6);
}

uint64_t sub_25F2A815C@<X0>(uint64_t a1@<X0>, void (**a2)(char *, uint64_t *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v44 = a6;
  v43 = a4;
  v50 = a3;
  v46 = a1;
  v47 = a2;
  v49 = sub_25F3054DC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v40 - v8;
  v48 = sub_25F30548C();
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v11 = &v40 - v10;
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  v40 = v26;
  MEMORY[0x28223BE20](v23);
  v28 = &v40 - v27;
  (*(v13 + 16))(v17, v47, v12);
  if ((*(v18 + 48))(v17, 1, a5) != 1)
  {
LABEL_12:
    (*(v18 + 32))(v28, v17, a5);
    (*(v18 + 16))(v22, v28, a5);
    v34 = v49;
    v33 = v50;
    sub_25F3054BC();
    (*(v45 + 8))(v11, v48);
    result = (*(v18 + 8))(v28, a5);
    v35 = v33;
    v36 = *(v46 + 16);
    if (v36)
    {
LABEL_14:
      *v44 = v36;
      return result;
    }

LABEL_13:
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v41;
    *v41 = v43;
    (*(*(v34 - 8) + 16))(&v38[v37], v35, v34);
    sub_25F30539C();
    result = sub_25F30533C();
    goto LABEL_14;
  }

  v29 = v45;
  (*(v13 + 8))(v17, v12);
  v30 = v46;
  v17 = *(v46 + 8);

  if (!sub_25F30531C())
  {

LABEL_16:
    v34 = v49;
    v35 = v50;
    v36 = *(v30 + 16);
    if (v36)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v22 = 0;
  v47 = (v18 + 16);
  v31 = (v29 + 8);
  while (1)
  {
    v32 = sub_25F3052FC();
    sub_25F30528C();
    if (v32)
    {
      (*(v18 + 16))(v25, &v17[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v22], a5);
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    result = sub_25F30601C();
    if (v40 != 8)
    {
      break;
    }

    v51 = result;
    (*v47)(v25, &v51, a5);
    swift_unknownObjectRelease();
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_6:
    sub_25F3054BC();
    (*v31)(v11, v48);
    ++v22;
    if (v28 == sub_25F30531C())
    {

      v30 = v46;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2A8680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v9 + 1) = 128;
  v10 = 2;
  v11 = xmmword_25F312FA0;
  v12 = "asyncStream(bufferingPolicy:emitInitialValue:)";
  v13 = 46;
  v14 = 2;
  v8[2] = a5;
  v8[3] = a4;
  _s4SinkV5StateVMa();
  v5 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v9, sub_25F2AA1F8, v8, v5, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_25F2A8774()
{
  sub_25F3054DC();
  swift_getTupleTypeMetadata2();
  sub_25F30539C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_25F30599C();
}

uint64_t AsyncStream.Sink.asyncStream(bufferingPolicy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(v2 + 8);
  v13 = *v2;
  v14 = v11;
  (*(*(v5 - 8) + 56))(&v13 - v9, 1, 1, v5);
  sub_25F2A7DFC(v10, a1, a2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t AsyncStream.Sink.yield(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v16 = *v2;
  *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v10 + 1) = 128;
  v11 = 2;
  v12 = xmmword_25F312FB0;
  v13 = "yield(_:)";
  v14 = 9;
  v15 = 2;
  v7[2] = *(a2 + 16);
  v7[3] = v16;
  v8 = v3;
  v9 = a1;
  _s4SinkV5StateVMa();
  v4 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v10, sub_25F2A9C5C, v7, v4, MEMORY[0x277D839B0], WitnessTable);

  return v17;
}

uint64_t sub_25F2A8A90(_BYTE *a1, uint64_t a2, char a3)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57980, &qword_25F313110);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v24[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24[-v12];
  v25 = a1[16];
  if ((v25 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 1);
    v15 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_25F2F1400((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      *(a1 + 1) = v14;
      v5 = v15;
LABEL_7:
      v15 = *a1;
      v19 = *(*a1 + 16);
      if (!v19)
      {
        break;
      }

      v20 = v5;
      v21 = 0;
      v14 = (v20 + 8);
      while (v21 < *(v15 + 16))
      {
        sub_25F2AA0D4(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21++, v13);
        v22 = *(v9 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD57990, qword_25F313120);
        a1 = &v13[v22];
        sub_25F3054BC();
        (*v14)(v8, v26);
        sub_25F2AA144(v13);
        if (v19 == v21)
        {
          return v25 ^ 1u;
        }
      }

      __break(1u);
LABEL_13:
      v14 = sub_25F2F1400(0, *(v14 + 2) + 1, 1, v14);
    }
  }

  return v25 ^ 1u;
}

uint64_t sub_25F2A8D08@<X0>(void *a1@<X0>, uint64_t a2@<X4>, char *a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  result = MEMORY[0x28223BE20](a1);
  if (*(result + 16))
  {
    v12 = 0;
  }

  else
  {
    if (v8)
    {
      (*(v11 + 16))(v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a2);
      sub_25F30539C();
      result = sub_25F30533C();
    }

    v14[1] = *a1;
    MEMORY[0x28223BE20](result);
    v14[-2] = a2;
    v14[-1] = v13;
    sub_25F3054DC();

    swift_getTupleTypeMetadata2();
    sub_25F30539C();
    swift_getWitnessTable();
    sub_25F3051BC();

    v12 = 1;
  }

  *a3 = v12;
  return result;
}

uint64_t sub_25F2A8EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30548C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  sub_25F3054DC();
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v5 + 16))(v8, a2, a3);
  sub_25F3054BC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t AsyncStream.Sink.yield<A>()()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  os_unfair_lock_lock(*v0 + 9);
  sub_25F2A9C80(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 9);
  return v4;
}

Swift::Void __swiftcall AsyncStream.Sink.finish()()
{
  v13 = *v1;
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v7 + 1) = 128;
  v8 = 2;
  v9 = xmmword_25F312FC0;
  v10 = "finish()";
  v11 = 8;
  v12 = 2;
  v6 = *(v0 + 16);
  _s4SinkV5StateVMa();
  v2 = sub_25F30476C();
  sub_25F3054DC();
  v3 = sub_25F30539C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v7, sub_25F2A9CB8, v5, v2, v3, WitnessTable);

  *&v7 = v14;
  swift_getWitnessTable();
  sub_25F3051BC();
}

uint64_t sub_25F2A927C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *(a1 + 16) = 1;
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = sub_25F3054DC();

  swift_getTupleTypeMetadata2();
  v6 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25F1C1AC4(sub_25F2AA0B4, KeyPath, v6, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  *a2 = v9;
  return result;
}

uint64_t sub_25F2A93AC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = MEMORY[0x277D84DE8];
  v4 = *(*a2 + *MEMORY[0x277D84DE8]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  (*(v5 + 16))(v14 - v10);
  v12 = *(v4 + 48);
  *v9 = *v11;
  (*(*(*(v2 + *v3 + 8) - 8) + 32))(&v9[v12], &v11[v12]);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v9, v4);
}

uint64_t AsyncStreamObservable.wrappedValue.getter(uint64_t a1)
{
  v12 = *(v1 + 16);
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AsyncStream+Sink.swift";
  *(&v6 + 1) = 128;
  v7 = 2;
  v8 = xmmword_25F312FD0;
  v9 = "wrappedValue";
  v10 = 12;
  v11 = 2;
  v2 = *(a1 + 16);
  v3 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v6, v3, WitnessTable);
}

uint64_t AsyncStreamObservable.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_25F2A9D18(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*AsyncStreamObservable.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  AsyncStreamObservable.wrappedValue.getter(a2);
  return sub_25F2A977C;
}

void sub_25F2A977C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_25F2A9D18(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_25F2A9D18((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AsyncStreamObservable.init(wrappedValue:emitsInitialValue:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  default argument 0 of AsyncStream.Sink.init(_:replaysHistory:)(a4);
  AsyncStream.Sink.init(_:replaysHistory:)(0, a5);
  *(a5 + 24) = a2;
  v10 = sub_25F203E0C(a1, a4);
  (*(*(a4 - 8) + 8))(a1, a4);
  *(a5 + 16) = v10;
  v11 = *(type metadata accessor for AsyncStreamObservable() + 36);
  v12 = sub_25F3054AC();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a3, v12);
}

uint64_t AsyncStreamObservable.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = *(a1 + 16);
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = sub_25F3054AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  LOBYTE(v13) = *(v2 + 8);
  v19 = *v2;
  v20 = v13;
  (*(v11 + 16))(v14, v2 + *(a1 + 36), v10);
  if (*(v2 + 24) == 1)
  {

    AsyncStreamObservable.wrappedValue.getter(a1);
    (*(*(v4 - 8) + 56))(v9, 0, 1, v4);
  }

  else
  {
    (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  }

  v15 = type metadata accessor for AsyncStream.Sink();
  sub_25F2A7DFC(v9, v15, v18);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

Swift::Void __swiftcall AsyncStreamObservable.finish()()
{
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v0 + 16);
  type metadata accessor for AsyncStream.Sink();

  AsyncStream.Sink.finish()();
}

uint64_t sub_25F2A9C5C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_25F2A8D08(a1, *(v2 + 16), a2);
}

uint64_t sub_25F2A9C80@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2A8A90(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_25F2A9CD4()
{
  v1 = *(v0 + 16);
  sub_25F3054DC();
  return sub_25F3054CC();
}

uint64_t sub_25F2A9D18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2[2];
  v15 = v4;
  KeyPath = swift_getKeyPath();
  v10 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, a1, v10, WitnessTable);

  (*(v5 + 8))(v8, v4);
  v12 = *(v2 + 8);
  v16 = *v2;
  v17 = v12;
  v13 = type metadata accessor for AsyncStream.Sink();

  AsyncStream.Sink.yield(_:)(a1, v13);
}

uint64_t sub_25F2A9ED8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2A9F14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25F2A9F5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2A9F9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for AsyncStream.Sink();
  if (v3 <= 0x3F)
  {
    result = sub_25F30476C();
    if (v4 <= 0x3F)
    {
      result = sub_25F3054AC();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F2AA078()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2AA0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2AA144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57988, &qword_25F313118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F2AA1F8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_25F2A8774();
}

uint64_t sub_25F2AA2A8(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  v2 = sub_25F2E95EC(v4);
  swift_retain_n();
  Future.observeFinish(_:)(sub_25F2AA410, v2);

  return v2;
}

uint64_t sub_25F2AA33C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = *(*v8 + 80);
  type metadata accessor for UncancelableFuture();
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  swift_allocObject();

  return sub_25F2AA2A8(&v19);
}

uint64_t static CommandLineCommand.shortUsage.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&v5);
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for CommandLineOptions();
  v3 = CommandLineOptions.shortUsage.getter(v2);

  return v3;
}

uint64_t static CommandLineCommand.optionDescriptions.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&v11);
  v4 = v11;

  v10[5] = v4;
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  type metadata accessor for CommandLineOption();
  v5 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25F1C1AC4(sub_25F2AA628, v10, v5, &type metadata for CommandLineOptionDescription, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  return v8;
}

uint64_t sub_25F2AA5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
}

uint64_t sub_25F2AA628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F2AA5C4(a1, a2);
}

uint64_t static CommandLineCommand.run(with:printer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v10 = *(v26 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(a4 + 32);
  v25 = v4;
  v16(&v28, a3, a4);
  v27 = v28;
  v29 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = type metadata accessor for CommandLineOptions();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  v20 = sub_25F2AA8B0();
  CommandLineOptions.parse<A>(_:into:)(&v29, v18, v19, v20, v15);
  if (v5)
  {
    (*(v26 + 8))(v13, AssociatedTypeWitness);
  }

  else
  {
    v22 = *(v26 + 8);
    v22(v13, AssociatedTypeWitness);

    (*(a4 + 40))(v15, v24, a3, a4);
    return (v22)(v15, AssociatedTypeWitness);
  }
}

unint64_t sub_25F2AA8B0()
{
  result = qword_27FD57A18[0];
  if (!qword_27FD57A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD57A18);
  }

  return result;
}

void *static TaskRef.running(_:)(uint64_t a1)
{
  v8 = a1;
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = sub_25F30557C();
  WitnessTable = swift_getWitnessTable();
  return sub_25F2AE710(&v8, v5, WitnessTable);
}

void *static TaskRef.succeeded(_:)(uint64_t a1)
{
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[12];
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  (*(*(v4 - 8) + 16))(&v13 - v9, a1, v4);
  swift_storeEnumTagMultiPayload();
  v11 = _s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(v10);
  (*(v7 + 8))(v10, v6);
  return v11;
}

void *static TaskRef.failed(_:)(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  (*(*(v4 - 8) + 16))(&v13 - v9, a1, v4);
  swift_storeEnumTagMultiPayload();
  v11 = _s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(v10);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t TaskRef.result.getter(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[13] = v4;
  v5 = *(v4 - 8);
  v2[14] = v5;
  v6 = *(v5 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = *(v3 + 88);
  v2[17] = *(v3 + 96);
  v7 = sub_25F30678C();
  v2[18] = v7;
  v2[19] = swift_getFunctionTypeMetadata1();
  v2[20] = sub_25F30539C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v2[21] = TupleTypeMetadata2;
  v9 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v10 = *(v7 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v12 = type metadata accessor for TaskRef.State();
  v2[27] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2AAEBC, 0, 0);
}

uint64_t sub_25F2AAEBC()
{
  v32 = v0;
  v1 = *(v0[12] + 16);
  v0[9] = v1;
  v3 = v0[27];
  v2 = v0[28];
  v0[29] = v1;
  *&v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v26 + 1) = 119;
  v27 = 2;
  v28 = xmmword_25F313200;
  v29 = "result";
  v30 = 6;
  v31 = 2;
  v4 = sub_25F30476C();
  v0[30] = v4;
  WitnessTable = swift_getWitnessTable();
  v0[31] = WitnessTable;
  SynchronousAccessProviding<>.peek(callsite:)(&v26, v4, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v0[23] + 32))(v0[11], v0[28], v0[18]);
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = v0[24];
    v10 = v0[22];
    v11 = v0[15];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[28];
    v15 = v0[20];
    v16 = v0[16];
    v0[7] = v0[13];
    v0[8] = v16;
    swift_getExtendedExistentialTypeMetadata_unique();
    v0[32] = sub_25F305C1C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v0[33] = TupleTypeMetadata3;
    v18 = *(v14 + *(TupleTypeMetadata3 + 64));

    sub_25F1A42F8(v14, (v0 + 2));
    v19 = v0[5];
    v20 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
    v21 = *(v20 + 40);
    v25 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_25F2AB1B8;
    v24 = v0[26];

    return v25(v24, v19, v20);
  }
}

uint64_t sub_25F2AB1B8()
{
  v1 = *(*v0 + 272);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2AB2B4, 0, 0);
}

uint64_t sub_25F2AB2B4()
{
  v50 = v0;
  *(v0 + 80) = *(v0 + 232);
  v39 = *(v0 + 240);
  v40 = *(v0 + 248);
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v42 = *(v0 + 200);
  v43 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 144);
  v6 = *(v0 + 104);
  *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v44 + 1) = 119;
  v45 = 2;
  v46 = xmmword_25F313210;
  v47 = "result";
  v48 = 6;
  v49 = 2;
  v7 = swift_task_alloc();
  v8 = *(v0 + 128);
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 40) = v1;

  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v44, sub_25F2AEAAC, v7, v39, v3, v40);

  v9 = *(v4 + *(v3 + 48));
  v41 = *(v2 + 32);
  v41(v42, v4, v5);
  (*(v2 + 16))(v43, v42, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v0 + 192);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v0 + 184);
    v13 = *(v0 + 144);

    (*(v12 + 8))(v11, v13);
LABEL_9:
    v25 = *(v0 + 256);
    v26 = *(v0 + 224);
    v27 = *(v0 + 208);
    v28 = *(v0 + 184);
    v29 = *(v0 + 144);
    v30 = *(*(v0 + 264) + 48);
    v41(*(v0 + 88), *(v0 + 200), v29);
    (*(v28 + 8))(v27, v29);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(*(v25 - 8) + 8))(v26 + v30, v25);
    v31 = *(v0 + 224);
    v32 = *(v0 + 200);
    v33 = *(v0 + 208);
    v34 = *(v0 + 192);
    v35 = *(v0 + 176);
    v36 = *(v0 + 120);

    v37 = *(v0 + 8);

    return v37();
  }

  v14 = *(v0 + 152);
  (*(*(v0 + 112) + 32))(*(v0 + 120), v11, *(v0 + 104));
  if (!sub_25F30531C())
  {
LABEL_8:

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_9;
  }

  v15 = 0;
  v16 = (v9 + 40);
  while (1)
  {
    v17 = *(v0 + 152);
    v18 = sub_25F3052FC();
    result = sub_25F30528C();
    if ((v18 & 1) == 0)
    {
      break;
    }

    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_13;
    }

    v21 = *(v0 + 152);
    v22 = *(v0 + 120);
    v24 = *(v16 - 1);
    v23 = *v16;

    v24(v22);

    ++v15;
    v16 += 2;
    if (v20 == sub_25F30531C())
    {
      goto LABEL_8;
    }
  }

  v38 = *(v0 + 152);
  result = sub_25F30601C();
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25F2AB634@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v81 = a6;
  v77 = a2;
  v79 = *(a4 - 8);
  v10 = *(v79 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v62 - v13;
  v14 = sub_25F30678C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v73 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v76 = &v62 - v22;
  v23 = sub_25F305C1C();
  v78 = *(v23 - 8);
  v24 = *(v78 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v75 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v62 - v27;
  v80 = a3;
  v84 = a4;
  v70 = a5;
  v29 = type metadata accessor for TaskRef.State();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v62 - v32;
  (*(v30 + 16))(&v62 - v32, a1, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v15 + 32))(v19, v33, v14);
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    v35 = v81;
    (*(v15 + 16))(v81, v19, v14);
    v36 = sub_25F3052DC();
    result = (*(v15 + 8))(v19, v14);
    *(v35 + v34) = v36;
    return result;
  }

  v71 = v14;
  v72 = v15;
  v38 = *(v30 + 8);
  v68 = a1;
  v38(a1, v29);
  v39 = v84;
  v82 = v80;
  v83 = v84;
  swift_getExtendedExistentialTypeMetadata_unique();
  swift_getFunctionTypeMetadata1();
  v67 = sub_25F30539C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v41 = *(TupleTypeMetadata3 + 48);
  v66 = *&v33[*(TupleTypeMetadata3 + 64)];
  v42 = v78;
  v43 = *(v78 + 32);
  v80 = v33;
  v43(v28, &v33[v41], v23);
  v44 = v75;
  (*(v42 + 16))(v75, v28, v23);
  v45 = v79;
  if ((*(v79 + 48))(v44, 1, v39) == 1)
  {
    v46 = *(v42 + 8);
    v46(v28, v23);
    v46(v44, v23);
    v47 = v71;
    v48 = v72;
    v49 = *(v72 + 16);
    v50 = v81;
    v51 = v77;
LABEL_10:
    v59 = v76;
    v49(v76, v51, v47);
    v60 = v80;
    v49(v68, v59, v47);
    goto LABEL_11;
  }

  v64 = v23;
  v65 = v29;
  v52 = v74;
  v75 = *(v45 + 32);
  (v75)(v74, v44, v84);
  v48 = v72;
  v53 = v73;
  v49 = *(v72 + 16);
  v51 = v77;
  v47 = v71;
  v49(v73, v77, v71);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v79 + 8))(v52, v84);
    (*(v78 + 8))(v28, v64);
    (*(v48 + 8))(v53, v47);
    v50 = v81;
    goto LABEL_10;
  }

  v63 = v49;
  v54 = v69;
  v55 = v84;
  (v75)(v69, v53, v84);
  v56 = Error.isCancelationError.getter(v55);
  v57 = *(v79 + 8);
  v57(v54, v55);
  (*(v78 + 8))(v28, v64);
  if ((v56 & 1) == 0)
  {
    v57(v74, v84);
    v50 = v81;
    v47 = v71;
    v48 = v72;
    v49 = v63;
    goto LABEL_10;
  }

  v58 = v76;
  (v75)(v76, v74, v84);
  v59 = v58;
  v47 = v71;
  swift_storeEnumTagMultiPayload();
  v60 = v80;
  v50 = v81;
  v48 = v72;
  v63(v68, v58, v47);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  v61 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v48 + 32))(v50, v59, v47);
  *(v50 + v61) = v66;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t TaskRef.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v3 = *v1;
  v4 = *(*v1 + 88);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v7 = *(v3 + 80);
  v2[7] = *(v3 + 96);
  v8 = sub_25F30678C();
  v2[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v2[9] = v10;
  v11 = swift_task_alloc();
  v2[10] = v11;
  *v11 = v2;
  v11[1] = sub_25F2ABF48;

  return TaskRef.result.getter(v10);
}

uint64_t sub_25F2ABF48()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2AC044, 0, 0);
}

uint64_t sub_25F2AC044()
{
  v1 = *(v0 + 72);
  sub_25F218B1C(*(v0 + 64), *(v0 + 48), *(v0 + 16));
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t TaskRef.cancel(withError:andCleanUpSuccessfulValue:)(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  v26 = a1;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x28223BE20](a1);
  v25[0] = v25 - v9;
  v10 = sub_25F305C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  v41 = v3[2];
  *&v35 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v35 + 1) = 119;
  v36 = 2;
  v37 = xmmword_25F313220;
  v38 = "cancel(withError:andCleanUpSuccessfulValue:)";
  v39 = 44;
  v40 = 2;
  v29 = v7;
  v30 = *(v6 + 88);
  v31 = *(v6 + 96);
  v32 = v26;
  v26 = a2;
  v33 = a2;
  v34 = a3;
  v25[1] = a3;
  type metadata accessor for TaskRef.State();
  v18 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  v20 = v18;
  v21 = v27;
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v35, sub_25F2AEACC, v28, v20, v10, WitnessTable);

  (*(v11 + 16))(v15, v17, v10);
  if ((*(v21 + 48))(v15, 1, v7) == 1)
  {
    v22 = *(v11 + 8);
    v22(v17, v10);
    return (v22)(v15, v10);
  }

  else
  {
    v24 = v25[0];
    (*(v21 + 32))(v25[0], v15, v7);
    v26(v24);
    (*(v21 + 8))(v24, v7);
    return (*(v11 + 8))(v17, v10);
  }
}

uint64_t sub_25F2AC508@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v82 = a8;
  v76 = a4;
  v74 = a3;
  v71 = a2;
  v79 = *(a6 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](a1);
  v73 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30678C();
  v72 = *(v14 - 1);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v68 - v19;
  v78 = sub_25F305C1C();
  v81 = *(v78 - 8);
  v21 = *(v81 + 64);
  v22 = MEMORY[0x28223BE20](v78);
  v87 = v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v80 = v68 - v24;
  v75 = a7;
  v25 = type metadata accessor for TaskRef.State();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v77 = v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = (v68 - v30);
  (*(v26 + 16))(v68 - v30, a1, v25);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = a5;
    v33 = a6;
    v34 = v79;
    v35 = v72;
    (*(v72 + 32))(v20, v31, v14);
    (*(v35 + 16))(v18, v20, v14);
    v36 = v82;
    v37 = v83;
    v38 = v73;
    sub_25F218B1C(v14, v73, v82);
    if (v37)
    {
      (*(v34 + 8))(v38, v33);
      (*(v35 + 8))(v20, v14);
      return (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
    }

    else
    {
      (*(v35 + 8))(v20, v14);
      return (*(*(v32 - 8) + 56))(v36, 0, 1, v32);
    }
  }

  else
  {
    v69 = v26;
    v70 = v25;
    v40 = *(v26 + 8);
    v72 = a1;
    v40(a1, v25);
    v84[0] = a5;
    v84[1] = a6;
    swift_getExtendedExistentialTypeMetadata_unique();
    v73 = a5;
    v68[2] = swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    v41 = v78;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v43 = *(TupleTypeMetadata3 + 48);
    v68[1] = *(v31 + *(TupleTypeMetadata3 + 64));
    sub_25F1A42F8(v31, v84);
    v44 = v81;
    v45 = v31 + v43;
    v46 = v80;
    (*(v81 + 32))(v80, v45, v41);
    v68[0] = TupleTypeMetadata3;
    v47 = *(TupleTypeMetadata3 + 48);
    sub_25F1BF03C(v84, v77);
    v48 = *(v44 + 16);
    v49 = v87;
    v48(v87, v46, v41);
    v50 = v79;
    v51 = *(v79 + 48);
    v52 = v51(v49, 1, a6);
    v53 = a6;
    if (v52 == 1)
    {
      v54 = v77;
      v48((v77 + v47), v71, v41);
      v55 = v51(v87, 1, a6);
      v56 = v81;
      if (v55 != 1)
      {
        (*(v81 + 8))(v87, v41);
      }
    }

    else
    {
      v57 = v77;
      (*(v50 + 32))(v77 + v47, v87, a6);
      (*(v50 + 56))(v57 + v47, 0, 1, a6);
      v56 = v81;
      v54 = v57;
    }

    v58 = *(v68[0] + 64);
    sub_25F3064EC();
    swift_allocObject();
    sub_25F30527C();
    v60 = v59;
    v61 = swift_allocObject();
    v62 = v73;
    *(v61 + 2) = v73;
    *(v61 + 3) = v53;
    v63 = v74;
    *(v61 + 4) = v75;
    *(v61 + 5) = v63;
    *(v61 + 6) = v76;
    *v60 = sub_25F2AF10C;
    v60[1] = v61;
    sub_25F1F7314();

    v64 = sub_25F3052BC();

    *(v54 + v58) = v64;
    v65 = v70;
    swift_storeEnumTagMultiPayload();
    (*(v69 + 32))(v72, v54, v65);
    v66 = v85;
    v67 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    (*(v67 + 32))(v66, v67);
    (*(v56 + 8))(v80, v78);
    (*(*(v62 - 8) + 56))(v82, 1, 1, v62);
    return __swift_destroy_boxed_opaque_existential_1(v84);
  }
}

uint64_t TaskRef.cancel(withError:)(void (*a1)(void))
{
  v3 = *v1;
  v4 = *v1;
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 80);
  *(v5 + 32) = *(v3 + 96);
  TaskRef.cancel(withError:andCleanUpSuccessfulValue:)(a1, nullsub_2, v5);
}

Swift::Void __swiftcall TaskRef.cancel()()
{
  v1 = *(*v0 + 88);
  v2 = sub_25F305C1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v7 - v5);
  (*(*(v1 - 8) + 56))(&v7 - v5, 1, 1, v1);
  TaskRef.cancel(withError:)(v6);
  (*(v3 + 8))(v6, v2);
}

uint64_t TaskRef.peek()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for TaskRef.State();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  v27 = v1[2];
  *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/TaskRef.swift";
  *(&v21 + 1) = 119;
  v22 = 2;
  v23 = xmmword_25F313230;
  v24 = "peek()";
  v25 = 6;
  v26 = 2;
  v10 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v21, v10, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_25F30678C();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v9, v12);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }

  else
  {
    *&v21 = v3;
    *(&v21 + 1) = v4;
    swift_getExtendedExistentialTypeMetadata_unique();
    v15 = sub_25F305C1C();
    swift_getFunctionTypeMetadata1();
    sub_25F30539C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v17 = *(TupleTypeMetadata3 + 48);
    v18 = *(v9 + *(TupleTypeMetadata3 + 64));

    v19 = sub_25F30678C();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    (*(*(v15 - 8) + 8))(v9 + v17, v15);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }
}

uint64_t TaskRef.peekValue()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_25F30678C();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  TaskRef.peek()(&v16 - v10);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v6 = v7;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v13 = *(v3 - 8);
      (*(v13 + 32))(a1, v11, v3);
      v14 = 0;
      return (*(v13 + 56))(a1, v14, 1, v3);
    }

    v8 = v12;
  }

  (*(v8 + 8))(v11, v6);
  v13 = *(v3 - 8);
  v14 = 1;
  return (*(v13 + 56))(a1, v14, 1, v3);
}

uint64_t TaskRef.peekError()@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_25F30678C();
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  TaskRef.peek()(&v16 - v10);
  v12 = *(v6 - 8);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v6 = v7;
LABEL_6:
    (*(v8 + 8))(v11, v6);
    v13 = *(v4 - 8);
    v14 = 1;
    return (*(v13 + 56))(a1, v14, 1, v4);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v8 = v12;
    goto LABEL_6;
  }

  v13 = *(v4 - 8);
  (*(v13 + 32))(a1, v11, v4);
  v14 = 0;
  return (*(v13 + 56))(a1, v14, 1, v4);
}

void *TaskRef.map<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 96);
  type metadata accessor for TaskRef();
  v10 = swift_allocObject();
  v10[2] = *(v7 + 80);
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = v9;
  v10[6] = a1;
  v10[7] = a2;
  v15[0] = v3;
  v15[1] = sub_25F2AEB08;
  v15[2] = v10;

  v11 = type metadata accessor for MapTaskRef();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_25F2AE710(v15, v11, WitnessTable);

  return v13;
}

{
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  type metadata accessor for TaskRef();
  v8 = swift_allocObject();
  v8[2] = v7[10];
  v8[3] = v7[11];
  v8[4] = a3;
  v8[5] = v7[12];
  v8[6] = a1;
  v8[7] = a2;
  v13[0] = v3;
  v13[1] = sub_25F2AEB38;
  v13[2] = v8;

  v9 = type metadata accessor for MapTaskRef();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_25F2AE710(v13, v9, WitnessTable);

  return v11;
}

uint64_t sub_25F2AD774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v20[0] = a2;
  v20[1] = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30678C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v20 - v16;
  (*(v18 + 16))(v20 - v16, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a4 - 8) + 32))(a6, v17, a4);
  }

  else
  {
    (*(v10 + 32))(v13, v17, a3);
    (v20[0])(v13);
    (*(v10 + 8))(v13, a3);
  }

  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2ADB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a7;
  v44 = a6;
  v41 = a2;
  v42 = a3;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v40 - v16;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v15);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v23;
  v24 = sub_25F30678C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v40 - v26;
  (*(v28 + 16))(&v40 - v26, a1, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v43;
    v30 = *(v10 + 32);
    v30(v17, v27, a5);
    (*(v10 + 16))(v14, v17, a5);
    v31 = sub_25F30650C();
    if (v31)
    {
      v32 = v31;
      v33 = *(v10 + 8);
      v33(v14, a5);
    }

    else
    {
      v32 = swift_allocError();
      v30(v39, v14, a5);
      v33 = *(v10 + 8);
    }

    v33(v17, a5);
    *v29 = v32;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F30678C();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v34 = (*(v19 + 32))(v22, v27, a4);
    MEMORY[0x28223BE20](v34);
    *(&v40 - 8) = a4;
    *(&v40 - 7) = a5;
    v35 = v45;
    *(&v40 - 6) = v44;
    *(&v40 - 5) = v35;
    v36 = v42;
    *(&v40 - 4) = v41;
    *(&v40 - 3) = v36;
    *(&v40 - 2) = v22;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    sub_25F1BFDA0(sub_25F2AF0CC, v37, v43);
    return (*(v19 + 8))(v22, a4);
  }
}

uint64_t TaskRef.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TaskRef.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t TaskRef<>.value.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = *(*v1 + 80);
  v3 = sub_25F30678C();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_25F2AE03C;

  return TaskRef.result.getter(v5);
}

uint64_t sub_25F2AE03C()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2AE138, 0, 0);
}

uint64_t sub_25F2AE138()
{
  v1 = v0[4];
  v2 = v0[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return sub_25F30658C();
  }

  else
  {
    (*(*(v0[3] - 8) + 32))(v0[2], v2);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_25F2AE208(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_25F30555C();
}

uint64_t sub_25F2AE21C(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277D857D0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  *v8 = v3;
  v8[1] = sub_25F1B51E0;

  return MEMORY[0x282200440](a1, v6, v9, v10, v11);
}

uint64_t sub_25F2AE2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = sub_25F30678C();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_25F2AE40C;

  return TaskRef.result.getter(v8);
}

uint64_t sub_25F2AE40C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F2AE508, 0, 0);
}

uint64_t sub_25F2AE508()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_25F2AE5C4(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  *v9 = v3;
  v9[1] = sub_25F1AFDB0;

  return sub_25F2AE2F8(a1, v6, v7, v8);
}

void *sub_25F2AE694(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = type metadata accessor for TaskRef.State();
  v1[2] = sub_25F203E0C(a1, v6);
  return v1;
}

void *sub_25F2AE710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v7 = v3[10];
  v6 = v3[11];
  v8 = v3[12];
  v9 = type metadata accessor for TaskRef.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - v12);
  v22 = v7;
  v23 = v6;
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25F305C1C();
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 + 48);
  v16 = *(TupleTypeMetadata3 + 64);
  v13[3] = a2;
  v13[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v21, a2);
  (*(*(v6 - 8) + 56))(v13 + v15, 1, 1, v6);
  *(v13 + v16) = sub_25F3052DC();
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v18 = sub_25F2AE694(v13);
  (*(v10 + 8))(v13, v9);
  return v18;
}

void *_s20PreviewsFoundationOS7TaskRefC9completedyACyxq_Gs6ResultOyxq_GFZ_0(uint64_t a1)
{
  v3 = v1[10];
  v4 = v1[11];
  v5 = v1[12];
  v6 = type metadata accessor for TaskRef.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = sub_25F30678C();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v12 = sub_25F2AE694(v10);
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_25F2AEBC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2AEC04(void *a1)
{
  v6 = a1[2];
  v7 = a1[3];
  swift_getExtendedExistentialTypeMetadata_unique();
  sub_25F305C1C();
  swift_getFunctionTypeMetadata1();
  sub_25F30539C();
  result = swift_getTupleTypeMetadata3();
  if (v3 <= 0x3F)
  {
    v4 = a1[4];
    result = sub_25F30678C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2AED0C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 84);
  v6 = *(*(*(a3 + 24) - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v6 > v7)
  {
    v7 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!v5)
  {
    ++v6;
  }

  v8 = ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 + 1 > v8)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_30;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 254) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v14 < 2)
    {
LABEL_30:
      v16 = *(a1 + v9);
      if (v16 >= 2)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_30;
  }

LABEL_19:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 255;
}

void sub_25F2AEE98(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 84);
  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (v8 > v9)
  {
    v9 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (!v7)
  {
    ++v8;
  }

  v10 = ((v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 + 1 > v10)
  {
    v10 = v9 + 1;
  }

  v11 = v10 + 1;
  if (a3 < 0xFF)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 254) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFE)
  {
    v13 = a2 - 255;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_43:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v10] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_28;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_25F2AF0CC(void *a1)
{
  v4 = *(v1 + 56);
  result = (*(v1 + 48))(*(v1 + 64));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_25F2AF10C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  a7[1] = sub_25F304A3C();
  v14 = sub_25F23C8D4(a6, a6);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = *(a6 - 8);
  v18 = *(v17 + 72);
  v19 = *(v17 + 80);
  swift_allocObject();
  v20 = sub_25F30527C();
  (*(v17 + 32))(v21, a1, a6);
  result = v20;
  sub_25F1F7314();
  *a7 = v20;
  a7[2] = a2;
  a7[3] = a3;
  a7[4] = a4;
  a7[5] = a5;
  return result;
}

double DepthFirstDAGIterator.init<>(root:childrenKeyPath:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  v10 = a1;
  v6 = swift_allocObject();
  v7 = *(v5 + *MEMORY[0x277D84DE8]);
  *(v6 + 16) = v7;
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(&v10, sub_25F1A39BC, v6, sub_25F2B085C, a2, v7, v11);
  v8 = v11[1];
  *a3 = v11[0];
  a3[1] = v8;
  result = *&v12;
  a3[2] = v12;
  return result;
}

uint64_t sub_25F2AF330(uint64_t *a1)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v2;
}

double DepthFirstDAGIterator.init<>(root:childrenKeyPath:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = *(*a2 + *MEMORY[0x277D84DE8]);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v19 - v13;
  (*(v11 + 16))(v19 - v13, a1, v10);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = a3;
  v15[4] = a4;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a2;
  swift_getAssociatedConformanceWitness();
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(v14, sub_25F2B0864, v15, sub_25F2B0894, v16, v10, v19);
  (*(v11 + 8))(a1, v10);
  v17 = v19[1];
  *a5 = v19[0];
  a5[1] = v17;
  result = *&v20;
  a5[2] = v20;
  return result;
}

double DepthFirstDAGIterator.init<>(root:childrenAccessor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  DepthFirstDAGIterator.init(root:identifierAccessor:childrenAccessor:)(v15, sub_25F2B08C0, v17, a2, a3, a4, v20);
  (*(v12 + 8))(a1, a4);
  v18 = v20[1];
  *a6 = v20[0];
  a6[1] = v18;
  result = *&v21;
  a6[2] = v21;
  return result;
}

uint64_t DepthFirstDAGIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v52 = *(a1 + 24);
  v3 = *(v52 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v40[1] = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v50 = v40 - v8;
  v48 = v7;
  v9 = *(v7 + 16);
  v10 = sub_25F305C1C();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v40 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F30539C();
  v53 = (v15 + 48);
  v54 = v19;
  v51 = (v15 + 32);
  v49 = (v3 + 8);
  v43 = v15;
  v46 = (v15 + 8);
  v47 = v9;
  v20 = v52;
  while (1)
  {
    v21 = v54;
    WitnessTable = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v21, WitnessTable, v23);
    if ((*v53)(v14, 1, v9) == 1)
    {
      (*(v41 + 8))(v14, v42);
      v33 = 1;
      v34 = v44;
      return (*(v43 + 56))(v34, v33, 1, v9);
    }

    v24 = v14;
    v45 = *v51;
    v45(v18, v14, v9);
    v26 = v2[1];
    v25 = v2[2];
    v27 = v2;
    v28 = v2[3];
    v29 = v50;
    v25(v18);
    v30 = *(v48 + 32);
    LOBYTE(v26) = sub_25F3056BC();
    v31 = *v49;
    (*v49)(v29, v20);
    if ((v26 & 1) == 0)
    {
      break;
    }

    v32 = v47;
    (*v46)(v18, v47);
    v2 = v27;
    v9 = v32;
    v14 = v24;
  }

  v25(v18);
  v35 = v52;
  sub_25F3056FC();
  v36 = v50;
  sub_25F30568C();
  v31(v36, v35);
  v37 = v27[5];
  v55 = (v27[4])(v18);
  MEMORY[0x28223BE20](v55);
  v38 = v47;
  v40[-4] = v47;
  v40[-3] = v35;
  v40[-2] = v30;
  v40[-1] = v27;
  swift_getWitnessTable();
  v55 = sub_25F30609C();
  swift_getWitnessTable();
  sub_25F30532C();
  v34 = v44;
  v45(v44, v18, v38);
  v33 = 0;
  v9 = v38;
  return (*(v43 + 56))(v34, v33, 1, v9);
}

BOOL sub_25F2AFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];

  v12(a1);

  LOBYTE(v13) = sub_25F3056BC();

  (*(v6 + 8))(v9, a4);
  return (v13 & 1) == 0;
}

uint64_t DepthFirstDAGIterator.postOrderReverseTopologicallySorted()(void *a1)
{
  v3 = a1[2];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = sub_25F305C1C();
  v115 = *(v91 - 8);
  v5 = *(v115 + 8);
  MEMORY[0x28223BE20](v91);
  v7 = &v83 - v6;
  v102 = swift_getTupleTypeMetadata2();
  v8 = *(*(v102 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v102);
  v101 = &v83 - v10;
  v118 = *(TupleTypeMetadata2 - 8);
  v11 = *(v118 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v108 = &v83 - v13;
  v14 = a1[3];
  v117 = *(v14 - 8);
  v15 = *(v117 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v120 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v98 = &v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v83 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v83 - v23;
  MEMORY[0x28223BE20](v22);
  v94 = &v83 - v24;
  v25 = sub_25F305C1C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v83 - v29;
  v31 = *(*(v3 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v28);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v121 = &v83 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v100 = &v83 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v105 = &v83 - v40;
  v86 = v41;
  MEMORY[0x28223BE20](v39);
  v93 = &v83 - v42;
  v43 = a1[4];
  v106 = v14;
  v45 = v44;
  v112 = v43;
  v125 = sub_25F304A3C();
  v107 = TupleTypeMetadata2;
  v124 = sub_25F3052DC();
  v123 = sub_25F3052DC();
  v92 = a1;
  v99 = v1;
  DepthFirstDAGIterator.next()(a1, v30);
  v46 = *(v45 + 48);
  v90 = v45 + 48;
  v89 = v46;
  if (v46(v30, 1, v3) == 1)
  {
    goto LABEL_29;
  }

  v84 = v26;
  v85 = v25;
  v110 = v45;
  v48 = *(v45 + 32);
  v47 = v45 + 32;
  v116 = v48;
  v119 = (v47 - 16);
  v103 = (v118 + 48);
  v49 = v117;
  v96 = (v117 + 16);
  v117 = v47;
  v118 = v49 + 8;
  v113 = (v47 - 24);
  v87 = (v115 + 8);
  v50 = v99;
  v51 = v106;
  v52 = v107;
  v53 = v93;
  v95 = v7;
  v88 = v30;
  v48(v93, v30, v3);
LABEL_5:
  v54 = *(v50 + 16);
  v114 = *(v50 + 24);
  v115 = v54;
  v54(v53);
  if ((sub_25F3056BC() & 1) == 0)
  {
    v55 = *(v52 + 48);
    v56 = v108;
    *v108 = 0;
    (*v119)(&v56[v55], v53, v3);
    sub_25F30539C();
    sub_25F30533C();
  }

  v109 = sub_25F30539C();
  while (1)
  {
    v58 = v109;
    WitnessTable = swift_getWitnessTable();
    v60 = swift_getWitnessTable();
    MEMORY[0x25F8D7B40](v58, WitnessTable, v60);
    if ((*v103)(v7, 1, v52) == 1)
    {
      (*v118)(v94, v51);
      v53 = v93;
      (*v113)(v93, v3);
      (*v87)(v7, v91);
      v30 = v88;
      v50 = v99;
      DepthFirstDAGIterator.next()(v92, v88);
      if (v89(v30, 1, v3) == 1)
      {
LABEL_28:
        v25 = v85;
        v26 = v84;
LABEL_29:

        (*(v26 + 8))(v30, v25);
        return v123;
      }

      v116(v53, v30, v3);
      goto LABEL_5;
    }

    v61 = *(v52 + 48);
    v62 = v102;
    v63 = *(v102 + 48);
    v64 = v101;
    *v101 = *v7;
    v65 = v116;
    v116(&v64[v63], &v7[v61], v3);
    v66 = *v64;
    v67 = &v64[*(v62 + 48)];
    v68 = v105;
    v65(v105, v67, v3);
    v69 = v104;
    v115(v68);
    if (v66 == 1)
    {
      (*v119)(v100, v68, v3);
      sub_25F30539C();
      sub_25F30533C();
      (*v118)(v69, v51);
      v57 = v68;
      goto LABEL_9;
    }

    if ((sub_25F3056BC() & 1) == 0)
    {
      break;
    }

    (*v118)(v69, v51);
LABEL_26:
    v57 = v105;
LABEL_9:
    (*v113)(v57, v3);
  }

  (*v96)(v98, v69, v51);
  sub_25F3056FC();
  v70 = v97;
  sub_25F30568C();
  v111 = *v118;
  v111(v70, v51);
  v71 = *(v52 + 48);
  v72 = v108;
  *v108 = 1;
  v73 = *v119;
  v74 = v105;
  (*v119)(&v72[v71], v105, v3);
  sub_25F30533C();
  v75 = *(v99 + 40);
  v76 = (*(v99 + 32))(v74);
  if (!sub_25F30531C())
  {
LABEL_25:

    v111(v104, v51);
    v52 = v107;
    v7 = v95;
    goto LABEL_26;
  }

  v77 = 0;
  v30 = v125;
  while (2)
  {
    v78 = sub_25F3052FC();
    sub_25F30528C();
    if (v78)
    {
      v73(v121, (v76 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v77), v3);
      v79 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_27;
      }

LABEL_19:
      v116(v34, v121, v3);
      v115(v34);
      if ((sub_25F3056BC() & 1) == 0)
      {
        v80 = v108;
        v81 = *(v107 + 48);
        *v108 = 0;
        v73(&v80[v81], v34, v3);
        v51 = v106;
        sub_25F30533C();
      }

      v111(v120, v51);
      (*v113)(v34, v3);
      ++v77;
      if (v79 == sub_25F30531C())
      {
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  result = sub_25F30601C();
  if (v86 == 8)
  {
    v122 = result;
    v73(v121, &v122, v3);
    swift_unknownObjectRelease();
    v79 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F2B0864()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  return sub_25F305FDC();
}

uint64_t sub_25F2B0894()
{
  v1 = *(v0 + 32);
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_25F2B0918()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2B0954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F2B099C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2B0A04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DiagnosticsCollector.__allocating_init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

uint64_t DiagnosticsCollector.summaryText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock(v1 + 8);
  sub_25F2B23E4(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 8);
  return v3;
}

uint64_t static DiagnosticsCollector.numberOfDiagnosticsToKeep.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27FD57C20 = a1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.all.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C28;
  return result;
}

uint64_t static DiagnosticsCollector.Options.all.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C28 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.crashLogs.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C30;
  return result;
}

uint64_t static DiagnosticsCollector.Options.crashLogs.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C30 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.osLog.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C38;
  return result;
}

uint64_t static DiagnosticsCollector.Options.osLog.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C38 = v1;
  return result;
}

uint64_t static DiagnosticsCollector.Options.simulator.getter@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C40;
  return result;
}

uint64_t static DiagnosticsCollector.Options.simulator.setter(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C40 = v1;
  return result;
}

uint64_t DiagnosticsCollector.archive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v4 = sub_25F3044DC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DiagnosticsCollector.init(options:simulatorDiagnosticsDeviceSet:outputDirectory:prefix:suffix:)(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8)
{
  v90 = a7;
  v85 = a4;
  v82 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57C50, &qword_25F313490);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v91 = &v82 - v16;
  v17 = sub_25F3046AC();
  v88 = *(v17 - 8);
  v89 = v17;
  v18 = *(v88 + 64);
  MEMORY[0x28223BE20](v17);
  v87 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_25F3044DC();
  v20 = *(v86 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v86);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v82 - v25;
  v26 = sub_25F30462C();
  v92 = *(v26 - 8);
  v93 = v26;
  v27 = *(v92 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = *a1;
  LOBYTE(a1) = *a2;
  v30 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F30461C();
  *(v8 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_options) = v29;
  v94 = v8;
  *(v8 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_simulatorDiagnosticsDeviceSet) = a1;
  if (!a6)
  {
    v31 = 0;
    v32 = 0xE000000000000000;
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v34 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_6;
  }

  v95 = a5;
  v96 = a6;

  MEMORY[0x25F8D7130](45, 0xE100000000000000);

  v31 = v95;
  v32 = v96;
  if (!a8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v95 = 45;
  v96 = 0xE100000000000000;

  MEMORY[0x25F8D7130](v90, a8);
  swift_bridgeObjectRelease_n();
  v34 = v95;
  v33 = v96;
LABEL_6:
  v35 = objc_allocWithZone(MEMORY[0x277CCA968]);
  v36 = [v35 init];
  v37 = sub_25F304DDC();
  [v36 setDateFormat_];

  v95 = v31;
  v96 = v32;
  MEMORY[0x25F8D7130](0xD000000000000014, 0x800000025F31ADE0);
  MEMORY[0x25F8D7130](45, 0xE100000000000000);
  v38 = sub_25F3045BC();
  v90 = v36;
  v39 = [v36 stringFromDate_];

  v40 = sub_25F304E0C();
  v42 = v41;

  MEMORY[0x25F8D7130](v40, v42);

  MEMORY[0x25F8D7130](v34, v33);

  v43 = [objc_opt_self() processInfo];
  v44 = [v43 environment];

  v45 = sub_25F304A6C();
  if (*(v45 + 16) && (v46 = sub_25F219234(0xD00000000000001ELL, 0x800000025F31AE30), (v47 & 1) != 0))
  {
    v48 = v46;

    v49 = (*(v45 + 56) + 16 * v48);
    v50 = *v49;
    v51 = v49[1];

    v52 = v84;
    sub_25F30444C();

    v53 = 0x277CCA000;
    v54 = v86;
  }

  else
  {

    if (v85)
    {
      v53 = 0x277CCA000;
    }

    else
    {
      v55 = NSTemporaryDirectory();
      sub_25F304E0C();

      v53 = 0x277CCA000uLL;
    }

    v52 = v84;
    sub_25F30443C();

    sub_25F30447C();

    v54 = v86;
    (*(v20 + 8))(v24, v86);
  }

  v56 = v94;
  (*(v20 + 32))(v94 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive, v52, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD57C58, &qword_25F313498);
  v57 = swift_allocObject();
  *(v57 + 32) = 0;
  v58 = MEMORY[0x277D84F90];
  *(v57 + 16) = MEMORY[0x277D84F90];
  *(v57 + 24) = v58;
  *(v56 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state) = v57;
  v59 = [objc_allocWithZone(*(v53 + 2408)) init];
  v60 = v87;
  sub_25F30468C();
  v61 = sub_25F30469C();
  (*(v88 + 8))(v60, v89);
  [v59 setLocale_];

  v62 = sub_25F304DDC();
  [v59 setDateFormat_];

  v63 = v91;
  sub_25F3046BC();
  v64 = sub_25F3046EC();
  v65 = *(v64 - 8);
  v66 = 0;
  if ((*(v65 + 48))(v63, 1, v64) != 1)
  {
    v66 = sub_25F3046CC();
    (*(v65 + 8))(v63, v64);
  }

  [v59 setTimeZone_];

  v83 = v30;
  v67 = sub_25F3045BC();
  v68 = [v59 stringFromDate_];

  v69 = sub_25F304E0C();
  v71 = v70;

  v72 = [objc_allocWithZone(*(v53 + 2408)) init];
  [v72 setTimeStyle_];
  [v72 setDateStyle_];
  v73 = sub_25F3045BC();
  v74 = [v72 stringFromDate_];

  v75 = sub_25F304E0C();
  v77 = v76;

  v78 = v94;
  v79 = *(v94 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  MEMORY[0x28223BE20](v80);
  *(&v82 - 4) = v75;
  *(&v82 - 3) = v77;
  *(&v82 - 2) = v69;
  *(&v82 - 1) = v71;

  os_unfair_lock_lock(v79 + 8);
  sub_25F2B26E4(&v79[4]);
  os_unfair_lock_unlock(v79 + 8);

  (*(v92 + 8))(v83, v93);

  return v78;
}

uint64_t sub_25F2B1B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x25F8D7130](2570, 0xE200000000000000);

  MEMORY[0x25F8D7130](a4, a5);

  v8 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2F14F4(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_25F2F14F4((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = (v8 + 32 * v11);
  v12[4] = 1702125892;
  v12[5] = 0xE400000000000000;
  v12[6] = a2;
  v12[7] = a3;
  *(a1 + 8) = v8;
  return result;
}

Swift::Void __swiftcall DiagnosticsCollector.appendFileEntry(named:folderName:contents:)(Swift::String named, Swift::String_optional folderName, Swift::String contents)
{
  v4 = *(v3 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v4 + 32));
  sub_25F2B2704((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
}

uint64_t sub_25F2B1CEC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_25F2F1600(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_25F2F1600((v14 > 1), v15 + 1, 1, v13);
  }

  v20 = &type metadata for DiagnosticsCollector.WriteFileAction;
  v21 = &off_287167858;
  v16 = swift_allocObject();
  *&v19 = v16;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v13[2] = v15 + 1;
  result = sub_25F1A42F8(&v19, &v13[5 * v15 + 4]);
  *a1 = v13;
  return result;
}

void DiagnosticsCollector.copyNonUniqueDirectories(named:descendingFrom:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B2728((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B1E7C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3044DC();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  v13 = &v11[*(v8 + 20)];
  *v13 = a3;
  *(v13 + 1) = a4;
  v14 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_25F2F1600(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_25F2F1600((v15 > 1), v16 + 1, 1, v14);
  }

  v21 = v8;
  v22 = &off_287167868;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  sub_25F2B2B24(v11, boxed_opaque_existential_1, type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction);
  v14[2] = v16 + 1;
  sub_25F1A42F8(&v20, &v14[5 * v16 + 4]);
  result = sub_25F2B2B8C(v11, type metadata accessor for DiagnosticsCollector.CopyNonUniqueDirectoriesAction);
  *a1 = v14;
  return result;
}

void DiagnosticsCollector.copyFiles(descendingFrom:intoFolderName:matching:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B2748((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B2090(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DiagnosticsCollector.CopyFilesAction(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25F3044DC();
  (*(*(v16 - 8) + 16))(v15, a2, v16);
  v17 = &v15[*(v12 + 20)];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v15[*(v12 + 24)];
  *v18 = a5;
  *(v18 + 1) = a6;
  v19 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_25F2F1600(0, v19[2] + 1, 1, v19);
  }

  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_25F2F1600((v20 > 1), v21 + 1, 1, v19);
  }

  v26 = v12;
  v27 = &off_287167878;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_25F2B2B24(v15, boxed_opaque_existential_1, type metadata accessor for DiagnosticsCollector.CopyFilesAction);
  v19[2] = v21 + 1;
  sub_25F1A42F8(&v25, &v19[5 * v21 + 4]);
  result = sub_25F2B2B8C(v15, type metadata accessor for DiagnosticsCollector.CopyFilesAction);
  *a1 = v19;
  return result;
}

void DiagnosticsCollector.writeFile(intoFolderName:using:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);
  os_unfair_lock_lock((v1 + 32));
  sub_25F2B276C((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
}

uint64_t sub_25F2B22C4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_25F2F1600(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_25F2F1600((v11 > 1), v12 + 1, 1, v10);
  }

  v16 = &type metadata for DiagnosticsCollector.DelayedFileWriteAction;
  v17 = &off_287167888;
  v13 = swift_allocObject();
  *&v15 = v13;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v10[2] = v12 + 1;
  result = sub_25F1A42F8(&v15, &v10[5 * v12 + 4]);
  *a1 = v10;
  return result;
}

uint64_t sub_25F2B23E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v4, 0);
    v5 = (v3 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v8 = *v5;
      v10 = sub_25F304C0C();
      v12 = v11;

      MEMORY[0x25F8D7130](v10, v12);

      MEMORY[0x25F8D7130](657978, 0xE300000000000000);
      v13._countAndFlagsBits = 538976288;
      v13._object = 0xE400000000000000;
      countAndFlagsBits = String.prefixingEachLine(with:startingOnLine:)(v13, 0)._countAndFlagsBits;
      MEMORY[0x25F8D7130](countAndFlagsBits);

      MEMORY[0x25F8D7130](657930, 0xE300000000000000);

      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25F1BD008((v15 > 1), v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      v17 = v23 + 16 * v16;
      *(v17 + 32) = 2112829;
      *(v17 + 40) = 0xE300000000000000;
      v5 += 4;
      --v4;
    }

    while (v4);
    v2 = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v18 = sub_25F304CAC();
  v20 = v19;

  *v2 = v18;
  v2[1] = v20;
  return result;
}

uint64_t DiagnosticsCollector.deinit()
{
  v1 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v2 = sub_25F3044DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);

  return v0;
}

uint64_t DiagnosticsCollector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_archive;
  v2 = sub_25F3044DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC20PreviewsFoundationOS20DiagnosticsCollector_state);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_25F2B2790()
{
  result = qword_27FD57C60;
  if (!qword_27FD57C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C60);
  }

  return result;
}

unint64_t sub_25F2B27E8()
{
  result = qword_27FD57C68;
  if (!qword_27FD57C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C68);
  }

  return result;
}

unint64_t sub_25F2B2840()
{
  result = qword_27FD57C70;
  if (!qword_27FD57C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C70);
  }

  return result;
}

unint64_t sub_25F2B2898()
{
  result = qword_27FD57C78;
  if (!qword_27FD57C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C78);
  }

  return result;
}

unint64_t sub_25F2B28F0()
{
  result = qword_27FD57C80;
  if (!qword_27FD57C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C80);
  }

  return result;
}

unint64_t sub_25F2B2948()
{
  result = qword_27FD57C88;
  if (!qword_27FD57C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57C88);
  }

  return result;
}

uint64_t sub_25F2B29D4()
{
  result = sub_25F3044DC();
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

uint64_t sub_25F2B2B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2B2B8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F2B2C24()
{
  result = sub_25F3044DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3044DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F3044DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_25F2B2E3C()
{
  result = sub_25F3044DC();
  if (v1 <= 0x3F)
  {
    result = sub_25F1D67AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static Timestamp.now()@<X0>(uint64_t *a1@<X8>)
{
  result = mach_absolute_time();
  *a1 = result;
  return result;
}

uint64_t *Timestamp.period(until:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = *v2;
  a2[1] = v3;
  return result;
}

double Timestamp.seconds(until:)(void *a1, double a2, double a3, double a4)
{
  v5 = *a1 - *v4;
  if (*a1 < *v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a4) = HIDWORD(qword_27FD55810);
  LODWORD(a3) = qword_27FD55810;
  return v5 * *&a3 / *&a4 / 1000000000.0;
}

double Timestamp.milliseconds(until:)(void *a1, double a2, double a3, double a4)
{
  v5 = *a1 - *v4;
  if (*a1 < *v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a4) = HIDWORD(qword_27FD55810);
  LODWORD(a3) = qword_27FD55810;
  return v5 * *&a3 / *&a4 / 1000000.0;
}

unint64_t sub_25F2B3090()
{
  result = qword_27FD57CC0;
  if (!qword_27FD57CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD57CC0);
  }

  return result;
}

uint64_t CrashReportError.UncaughtExceptionError.exception.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CrashReportError.UncaughtExceptionError.reason.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CrashReportError.UncaughtExceptionError.crashReport.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CrashReportError.UncaughtExceptionError() + 32);

  return sub_25F1DF920(v3, a1);
}

uint64_t type metadata accessor for CrashReportError.UncaughtExceptionError()
{
  result = qword_27FD57CD0;
  if (!qword_27FD57CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CrashReportError.UncaughtExceptionError.highValueTitle.getter()
{
  sub_25F305FAC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F31AED0);
  return v2;
}

uint64_t CrashReportError.UncaughtExceptionError.additionalInfo.getter()
{
  v1 = v0;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1[2], v1[3]);
  MEMORY[0x25F8D7130](0xD000000000000027, 0x800000025F31AF00);
  MEMORY[0x25F8D7130](v1[4], v1[5]);
  MEMORY[0x25F8D7130](0x6F73616552202E60, 0xEB00000000203A6ELL);
  MEMORY[0x25F8D7130](v1[6], v1[7]);
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  return 0;
}

id sub_25F2B3338()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = sub_25F2B3AE4(0xD000000000000045, 0x800000025F31AFD0, 0);
  qword_27FD57CC8 = result;
  return result;
}

uint64_t static CrashReportError.UncaughtExceptionError.asiRegularExpression.getter()
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FD57CC8;
  v1 = qword_27FD57CC8;
  return v0;
}

void static CrashReportError.UncaughtExceptionError.asiRegularExpression.setter(uint64_t a1)
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD57CC8;
  qword_27FD57CC8 = a1;
}

uint64_t (*static CrashReportError.UncaughtExceptionError.asiRegularExpression.modify())()
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_25F2B3574@<X0>(void *a1@<X8>)
{
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FD57CC8;
  *a1 = qword_27FD57CC8;

  return v2;
}

void sub_25F2B3600(id *a1)
{
  v1 = *a1;
  v2 = qword_27FD52988;
  v3 = *a1;
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27FD57CC8;
  qword_27FD57CC8 = v1;
}

uint64_t CrashReportError.UncaughtExceptionError.init(report:asi:match:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v36 = a1;
  v38 = a3;
  v37 = type metadata accessor for CrashReportError.UncaughtExceptionError();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  v8[8] = 1;
  v9 = sub_25F304DDC();

  v10 = (a1 + *(type metadata accessor for CrashReport(0) + 20));
  v11 = v10[1];
  *(v8 + 2) = *v10;
  *(v8 + 3) = v11;

  v12 = sub_25F304DDC();
  v13 = [a2 rangeWithName_];
  v15 = v14;

  v16 = [v9 substringWithRange_];
  v17 = sub_25F304E0C();
  v19 = v18;

  v39 = v17;
  v40 = v19;
  *(v8 + 4) = sub_25F3050BC();
  *(v8 + 5) = v20;
  v21 = sub_25F304DDC();
  v22 = [a2 rangeWithName_];
  v24 = v23;

  v25 = [v9 substringWithRange_];
  v26 = sub_25F304E0C();
  v28 = v27;

  v39 = v26;
  v40 = v28;
  v29 = sub_25F3050BC();
  v31 = v30;

  *(v8 + 6) = v29;
  *(v8 + 7) = v31;
  v32 = v37;
  sub_25F2B393C(v36, &v8[*(v37 + 32)], type metadata accessor for CrashReport);
  v33 = v38;
  sub_25F2B393C(v8, v38, type metadata accessor for CrashReportError.UncaughtExceptionError);
  return (*(v5 + 56))(v33, 0, 1, v32);
}

uint64_t sub_25F2B393C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2B39B4()
{
  sub_25F305FAC();

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F31AED0);
  return v2;
}

void sub_25F2B3A54()
{
  sub_25F1E1DA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CrashReport(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_25F2B3AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25F304DDC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_25F3043FC();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t FutureState.map<A>(_:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v12 = *(a3 + 16);
  v13 = type metadata accessor for FutureTermination();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, a3);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v18, v21, v13);
    FutureTermination.map<A>(_:)(a1, a2, v13, a4, a5);
    (*(v14 + 8))(v18, v13);
    v23 = 0;
  }

  v24 = type metadata accessor for FutureTermination();
  return (*(*(v24 - 8) + 56))(a5, v23, 1, v24);
}

uint64_t FutureState.mapSuccess<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6[2] = *(a3 + 16);
  v6[3] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return FutureState.map<A>(_:)(sub_25F2B3EB0, v6, a3, a4, a5);
}

uint64_t sub_25F2B3E24@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  return sub_25F2B722C(a1, v4, a2);
}

uint64_t sub_25F2B3EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_25F2B3E24(*(v1 + 32), a1);
}

uint64_t FutureState.succeededValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for FutureTermination();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a1);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }

  (*(v8 + 32))(v12, v15, v7);
  FutureTermination.succeededValue.getter(v7, a2);
  return (*(v8 + 8))(v12, v7);
}

uint64_t FutureState.failedError.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1);
  v15 = (*(v6 + 48))(v13, 1, v5);
  result = 0;
  if (v15 != 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    v17 = FutureTermination.failedError.getter(v5);
    (*(v6 + 8))(v10, v5);
    return v17;
  }

  return result;
}

uint64_t FutureState.completedResult.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for FutureTermination();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  v13 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, a1);
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v17 = sub_25F30678C();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  else
  {
    (*(v8 + 32))(v12, v15, v7);
    FutureTermination.completedResult.getter(v7, a2);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t FutureState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return 0x676E696E6E7572;
  }

  (*(v6 + 32))(v10, v13, v5);
  v16 = FutureTermination.description.getter(v5);
  (*(v6 + 8))(v10, v5);
  return v16;
}

BOOL FutureState.isRunning.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = *(a1 + 16);
  v7 = type metadata accessor for FutureTermination();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (v8 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v8 == 1;
}

BOOL FutureState.isCanceled.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for FutureTermination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v17 - v9;
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v2, a1);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return 0;
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    v15 = FutureTermination.isCanceled.getter(v5);
    (*(v6 + 8))(v10, v5);
  }

  return v15;
}

uint64_t sub_25F2B4920(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for FutureTermination();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_25F2B497C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 57;
  if (*(v3 + 64) > 0x39uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) > 3)
  {
    goto LABEL_6;
  }

  v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
  if (HIWORD(v9))
  {
    v7 = *(a1 + v5);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_25:
    v11 = *(a1 + v4);
    if (v11 >= 3)
    {
      v12 = (v11 ^ 0xFF) + 1;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v9 > 0xFF)
  {
    v7 = *(a1 + v5);
    if (*(a1 + v5))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v9 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_25F2B4AA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x39)
  {
    v5 = 57;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = ~a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}