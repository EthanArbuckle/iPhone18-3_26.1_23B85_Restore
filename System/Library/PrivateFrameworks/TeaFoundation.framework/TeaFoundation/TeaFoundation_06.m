uint64_t UniqueParentChildCollection.removeChildren(in:)(uint64_t a1, void *a2)
{
  v51 = a1;
  v4 = a2[2];
  v48 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v45 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v9;
  v10 = a2[3];
  OUTLINED_FUNCTION_2_3();
  v43 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v15 = *(*(OUTLINED_FUNCTION_4_40() - 8) + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v49 = a2;
  v27 = *(a2[4] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v44 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v43 - v33;
  (*(v20 + 16))(v26, v51, v4);
  v50 = v34;
  sub_1BF17A32C();
  v47 = v4;
  v51 = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v35 = (v43 + 32);
  v36 = (v45 + 8);
  for (i = (v43 + 8); ; (*i)(v2, v10))
  {
    sub_1BF17AF0C();
    if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
    {
      break;
    }

    (*v35)(v2, v18, v10);
    v38 = OUTLINED_FUNCTION_3_46(v49);
    v52 = v39(v38);
    v53 = v40;
    sub_1BF179E9C();
    v41 = v46;
    sub_1BF179D7C();

    (*v36)(v41, v48);
  }

  return (*(v44 + 8))(v50, v51);
}

void SingleValueStore.add(value:)()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v47 = v2;
  v49 = *v0;
  v53 = sub_1BF179B5C();
  v4 = OUTLINED_FUNCTION_1(v53);
  v55 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v51 = v9 - v8;
  OUTLINED_FUNCTION_12_9();
  v54 = sub_1BF179BBC();
  v10 = OUTLINED_FUNCTION_1(v54);
  v52 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v50 = v15 - v14;
  v16 = *(v49 + 80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v47 - v20;
  OUTLINED_FUNCTION_12_9();
  v21 = sub_1BF17AE6C();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v47 - v27;
  v29 = *(v0 + qword_1ED8EE200);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_4_0();
  *(v1 + *(v30 + 160)) = 1;
  v31 = *(v17 + 16);
  v31(v28, v3, v16);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v16);
  OUTLINED_FUNCTION_4_0();
  v33 = *(v32 + 152);
  swift_beginAccess();
  (*(v24 + 40))(v1 + v33, v28, v21);
  swift_endAccess();
  v34 = *(v1 + qword_1ED8EE1E8);
  v35 = v48;
  v31(v48, v47, v16);
  v36 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v37 = swift_allocObject();
  v38 = v49;
  *(v37 + 2) = v16;
  *(v37 + 3) = *(v38 + 88);
  *(v37 + 4) = *(v38 + 96);
  *(v37 + 5) = v1;
  (*(v17 + 32))(&v37[v36], v35, v16);
  v57[4] = sub_1BF05DE10;
  v57[5] = v37;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 1107296256;
  v57[2] = sub_1BF0058CC;
  v57[3] = &block_descriptor_2;
  v39 = _Block_copy(v57);

  v40 = v50;
  sub_1BF179B8C();
  v56 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_10();
  sub_1BF00AEAC(v41, v42);
  sub_1BF027D54(0);
  OUTLINED_FUNCTION_6_13();
  sub_1BF00AEAC(v43, v44);
  v45 = v51;
  v46 = v53;
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v40, v45, v39);
  _Block_release(v39);
  (*(v55 + 8))(v45, v46);
  (*(v52 + 8))(v40, v54);

  sub_1BF05D9F8(v1);
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF05DA0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF05DAC8(uint64_t *a1)
{
  v1 = *a1;
  sub_1BF028120(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BF17923C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF03BE14(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1BF00B048(v5, sub_1BF028120);
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = sub_1BF178D3C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  _s13TeaFoundation16ReferenceEncoderCACycfc_0();
  v15 = *(v1 + 80);
  v16 = *(v1 + 96);
  v17 = sub_1BF178D0C();
  v19 = v18;
  sub_1BF17938C();
  (*(v7 + 8))(v10, v6);
  sub_1BF014E18(v17, v19);
}

uint64_t sub_1BF05DE4C(uint64_t a1, uint64_t a2)
{
  sub_1BF028120(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThreadsafeSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - v9;
  v11 = v2[2];
  UnfairLock.lock()();
  (*(v7 + 16))(v10, a2, v6);
  swift_beginAccess();
  v12 = *(v5 + 88);
  sub_1BF17A9AC();
  LOBYTE(v11) = sub_1BF17A94C();
  swift_endAccess();
  sub_1BEFF99D8(v3);
  return v11 & 1;
}

uint64_t objectdestroy_25Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void UnsafeLazy.value.getter()
{
  OUTLINED_FUNCTION_32();
  v2 = v0;
  v61 = v3;
  v4 = *v0;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v60 - v15;
  v62 = v17;
  v18 = type metadata accessor for UnsafeLazy.Loader();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_1();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v60 - v28;
  v30 = *(v4 + 88);
  OUTLINED_FUNCTION_3_5();
  (*(v21 + 16))(v29, &v2[v30], v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v48 = *(v29 + 1);
    (*v29)();
    v49 = v62;
    (*(v63 + 16))(v26, v12, v62);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_7_2();
    v50 = OUTLINED_FUNCTION_30_10();
    v51(v50);
    swift_endAccess();
    v52 = *(*v2 + 96);
    OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_3_5();
    v53 = *&v2[v52];
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_3_44();
    swift_getFunctionTypeMetadata1();
    sub_1BEFF4CFC();
    sub_1BF17A65C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17A63C();
    swift_endAccess();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v54 = sub_1BF17A4EC();

    v64 = v54;
    if (v54 != sub_1BF17A5AC())
    {
      do
      {
        v55 = sub_1BF17A58C();
        sub_1BF17A51C();
        if ((v55 & 1) == 0)
        {
          goto LABEL_14;
        }

        v56 = v53 + 32 + 16 * v54;
        v58 = *v56;
        v57 = *(v56 + 8);

        sub_1BF17A62C();
        v58(v12);

        v59 = sub_1BF17A5AC();
        v54 = v64;
      }

      while (v64 != v59);
    }

    (*(v63 + 32))(v61, v12, v49);
LABEL_12:
    OUTLINED_FUNCTION_26_2();
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v63 + 32))(v61, v29, v62);
    goto LABEL_12;
  }

  v32 = *v29;
  v33 = *(v29 + 1);
  v35 = *(v29 + 2);
  v34 = *(v29 + 3);
  v60[0] = v33;
  (v32)(EnumCaseMultiPayload);
  v60[1] = v34;
  v35(v1);
  v37 = v62;
  v36 = v63;
  (*(v63 + 8))(v1, v62);
  (*(v36 + 16))(v26, v16, v37);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_7_2();
  v38 = OUTLINED_FUNCTION_30_10();
  v39(v38);
  swift_endAccess();
  v40 = *(*v2 + 96);
  OUTLINED_FUNCTION_21_14();
  OUTLINED_FUNCTION_3_5();
  v41 = *&v2[v40];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A63C();
  swift_endAccess();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v42 = sub_1BF17A4EC();

  v64 = v42;
  OUTLINED_FUNCTION_22_14();
  if (v42 == sub_1BF17A5AC())
  {
LABEL_6:

    (*(v63 + 32))(v61, v16, v37);
    goto LABEL_12;
  }

  while (1)
  {
    OUTLINED_FUNCTION_22_14();
    v43 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = v41 + 32 + 16 * v42;
    v46 = *v44;
    v45 = *(v44 + 8);

    sub_1BF17A62C();
    v46(v16);

    OUTLINED_FUNCTION_22_14();
    v47 = sub_1BF17A5AC();
    v42 = v64;
    if (v64 == v47)
    {
      goto LABEL_6;
    }
  }

  sub_1BF17B23C();
  __break(1u);
LABEL_14:
  sub_1BF17B23C();
  __break(1u);
}

uint64_t static CodingUserInfoKey.encodingPool.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_0_20();
  sub_1BF05E6C0(v2, v3, v4);
  v6 = OUTLINED_FUNCTION_68(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  OUTLINED_FUNCTION_1_19();
  sub_1BF17B41C();
  v11 = sub_1BF17B42C();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result != 1)
  {
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  __break(1u);
  return result;
}

void sub_1BF05E6C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Version.encode(to:)(void *a1)
{
  v6 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  Version.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1BF17B91C();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

BOOL static Version.== infix(_:_:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = OUTLINED_FUNCTION_1_58(a1, a2, a3, a4, a5, a6, a7, a8, *a2, v47, v48, *a1);
  v16 = static VersionNumber.== infix(_:_:)(v14, v15);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  if (v10)
  {
    if (v13)
    {
      v17 = OUTLINED_FUNCTION_0_75();
      sub_1BF026144(v17, v18);
      v19 = OUTLINED_FUNCTION_2_58();
      sub_1BF026144(v19, v20);
      v21 = OUTLINED_FUNCTION_0_75();
      v23 = sub_1BF026144(v21, v22);
      v31 = OUTLINED_FUNCTION_1_58(v23, v24, v25, v26, v27, v28, v29, v30, v11, v13, v12, v8);
      v33 = static VersionQualifier.== infix(_:_:)(v31, v32);

      v34 = OUTLINED_FUNCTION_0_75();
      sub_1BF05E98C(v34, v35);
      return v33;
    }

    v38 = OUTLINED_FUNCTION_0_75();
    sub_1BF026144(v38, v39);
    sub_1BF026144(v11, 0);
    v40 = OUTLINED_FUNCTION_0_75();
    sub_1BF026144(v40, v41);

LABEL_9:
    v42 = OUTLINED_FUNCTION_0_75();
    sub_1BF05E98C(v42, v43);
    v44 = OUTLINED_FUNCTION_2_58();
    sub_1BF05E98C(v44, v45);
    return 0;
  }

  sub_1BF026144(v8, 0);
  if (v13)
  {
    v36 = OUTLINED_FUNCTION_2_58();
    sub_1BF026144(v36, v37);
    goto LABEL_9;
  }

  sub_1BF026144(v11, 0);
  sub_1BF05E98C(v8, 0);
  return 1;
}

uint64_t sub_1BF05E98C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF05E9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v9[3] = a8;
  return static Version.< infix(_:_:)(v9, v10, a3, a4, a5, a6, a7, a8) & 1;
}

uint64_t Sequence<>.mapToDict(allowMerging:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v60 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v54 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  v58 = sub_1BF17AE6C();
  v13 = OUTLINED_FUNCTION_1(v58);
  v56 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v57 = &v54 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54 - v21;
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  OUTLINED_FUNCTION_39_0();
  v31 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(v31);
  v55 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v54 - v36;
  v67 = sub_1BF179CEC();
  (*(v24 + 16))(v30, v4, a2);
  v62 = v37;
  sub_1BF17A32C();
  v63 = v31;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = (v54 + 32);
  v39 = (v64 + 8);
  ++v56;
  v40 = (v54 + 8);
  v41 = (v54 + 16);
  while (1)
  {
    sub_1BF17AF0C();
    OUTLINED_FUNCTION_51_2(v22, 1, AssociatedTypeWitness);
    if (v42)
    {
      break;
    }

    (*v38)(v12, v22, AssociatedTypeWitness);
    v43 = *v39;
    if ((v60 & 1) != 0 || (v65 = v43(AssociatedTypeWitness, v64), v66 = v44, v45 = v57, sub_1BF179EAC(), , EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, AssociatedTypeWitness), (*v56)(v45, v58), EnumTagSinglePayload == 1))
    {
      v47 = v43(AssociatedTypeWitness, v64);
      v49 = v48;
      (*v41)(v59, v12, AssociatedTypeWitness);
      OUTLINED_FUNCTION_127();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, AssociatedTypeWitness);
      v65 = v47;
      v66 = v49;
      sub_1BF179E9C();
      sub_1BF179EBC();
    }

    (*v40)(v12, AssociatedTypeWitness);
  }

  (*(v55 + 8))(v62, v63);
  return v67;
}

uint64_t static BinaryDecoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v7 = *(a5 + 8);
  sub_1BF014DC0(a2, a3);
  v7(&v9, a4, a5);
  return sub_1BF014E18(v9, v10);
}

void static Date.read(from:)(uint64_t *a1)
{
  sub_1BF05EFB0(a1);
  if (!v1)
  {
    sub_1BF17943C();
  }
}

double sub_1BF05EFB0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  v4 = sub_1BF05F028(v2, v3);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_49();
  sub_1BF014DC0(v7, v8);
  OUTLINED_FUNCTION_16_11();
  sub_1BF05F1AC(v9, v10, v11, v12);
  sub_1BF014E18(*v1, *(v1 + 8));
  *v1 = v14;
  *(v1 + 8) = v15;
  return v4;
}

double sub_1BF05F028(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1BF05F104);
      }

      a1 = a1;
      goto LABEL_7;
    case 2uLL:
      a1 = *(a1 + 16);
      v6 = *(v4 + 24);
LABEL_7:
      sub_1BF05F114(a1);
      if (!v2)
      {
        v3 = v7;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      MEMORY[0x1BFB547B0]();
      v3 = 0.0;
      break;
    default:
      v5 = swift_slowAlloc();
      *v5 = v4;
      v3 = *v5;
      MEMORY[0x1BFB547B0]();
      break;
  }

  return v3;
}

void *sub_1BF05F114(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    *result = *v5;
    return MEMORY[0x1BFB547B0]();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1BF05F1AC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    JUMPOUT(0x1BF05F328);
  }

  v5 = a3 >> 62;
  v9 = BYTE6(a3);
  switch(a3 >> 62)
  {
    case 2uLL:
      v11 = *(a2 + 16);
      v10 = *(a2 + 24);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_11_8();
  v16 = sub_1BF05F358(v12, v13, v14, v15);
  if (a1 && v16 < a1)
  {
    switch(v5)
    {
      case 2:
        goto LABEL_13;
      default:
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_8();
    v21 = sub_1BF05F448(v17, v18, v19, v20);
    v22 = 0;
    switch(v5)
    {
      case 1:
        v22 = a2 >> 32;
        break;
      case 2:
        v22 = *(a2 + 24);
        break;
      case 3:
        break;
      default:
        v22 = v9;
        break;
    }

    if (v22 < v21)
    {
      __break(1u);
LABEL_13:
      v23 = *(a2 + 24);
    }
  }

  OUTLINED_FUNCTION_11_8();
  v24 = sub_1BF17930C();
  v26 = v25;
  result = sub_1BF014E18(a2, a3);
  *a4 = v24;
  a4[1] = v26;
  return result;
}

uint64_t sub_1BF05F358(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = 0;
  v5 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v4 = a3 >> 32;
      v5 = a3;
      break;
    case 2uLL:
      v5 = *(a3 + 16);
      v4 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v5 = 0;
      v4 = BYTE6(a4);
      break;
  }

  if (v4 < a1 || v5 > a1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = 0;
  v8 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      v8 = a3;
      break;
    case 2uLL:
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v8 = 0;
      v7 = BYTE6(a4);
      break;
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_21;
  }

  v10 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v10)
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x1BF05F428);
  }

  return result;
}

uint64_t sub_1BF05F448(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = 0;
  v6 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3;
      v5 = a3 >> 32;
      break;
    case 2uLL:
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
      break;
    case 3uLL:
      break;
    default:
      v6 = 0;
      v5 = BYTE6(a4);
      break;
  }

  if (v5 >= result)
  {
    v8 = __OFSUB__(result, v6);
    v7 = result - v6 < 0;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  if (v7 != v8)
  {
LABEL_12:
    __break(1u);
    JUMPOUT(0x1BF05F4B0);
  }

  return result;
}

uint64_t static Optional<A>.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  result = sub_1BF05F5E4(v17);
  if (!v4)
  {
    if (result)
    {
      (*(a3 + 8))(a1, a2, a3);
      (*(v10 + 32))(a4, v16, a2);
      v19 = a4;
      v20 = 0;
    }

    else
    {
      v19 = a4;
      v20 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v19, v20, 1, a2);
  }

  return result;
}

uint64_t sub_1BF05F5E4(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF05F644(v5, v6);
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_14_15();
  *v1 = v3;
  v1[1] = v4;
  return v2 & 1;
}

uint64_t sub_1BF05F644(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1BF05F714);
      }

      a1 = a1;
      goto LABEL_7;
    case 2uLL:
      a1 = *(a1 + 16);
      v4 = *(v3 + 24);
LABEL_7:
      v5 = sub_1BF05F724(a1);
      if (!v2)
      {
        LOBYTE(v3) = v5;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      MEMORY[0x1BFB547B0]();
      LOBYTE(v3) = 0;
      break;
    default:
      *swift_slowAlloc() = a1;
      MEMORY[0x1BFB547B0]();
      break;
  }

  return v3 & 1;
}

_BYTE *sub_1BF05F724(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    v6 = *v5;
    *result = *v5;
    MEMORY[0x1BFB547B0]();
    return (v6 & 1);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BF05F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  *(v7 + 80);
  v8 = *(v7 + 72);
  v9 = swift_slowAlloc();
  if (a3)
  {
    v10 = *(v7 + 64);
    if ((v10 & 0x8000000000000000) == 0)
    {
      memmove(v9, (a3 + a1), v10);
      sub_1BF17AF1C();

LABEL_8:
      JUMPOUT(0x1BFB547B0);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_8;
}

uint64_t sub_1BF05F8EC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(*(a2 - 8) + 64);
  sub_1BF014DC0(*a1, v4);
  sub_1BF05F1AC(v5, v3, v4, &v9);
  v6 = *a1;
  v7 = a1[1];
  *a1 = v9;

  return sub_1BF014E18(v6, v7);
}

uint64_t static FixedSizeTypeBinaryCodable.read(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1BF17932C();
  return sub_1BF05F8EC(a1, a2);
}

uint64_t sub_1BF05F9E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.read(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t static String.read(from:)(uint64_t *a1)
{
  v3 = sub_1BF17A12C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_1BF05FB18(a1);
  if (!v1)
  {
    sub_1BF17A10C();
    sub_1BF060240();
    sub_1BF060290();
    v7 = sub_1BF17A0DC();
    v9 = v8;

    if (!v9)
    {
      sub_1BF0E5CAC();
      OUTLINED_FUNCTION_26_10();
      *v11 = 0;
      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_1BF05FB18(uint64_t *a1)
{
  v4 = sub_1BF05FFE8(a1);
  if (!v1)
  {
    v5 = v4;
    if (v4 < 0)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if (MEMORY[0x1BFB51150](*a1, a1[1]) < v4)
    {
      v6 = 2;
LABEL_6:
      sub_1BF0E5CAC();
      OUTLINED_FUNCTION_26_10();
      *v7 = v6;
      swift_willThrow();
      return v2;
    }

    if (v5)
    {
      v38 = a1;
      v9 = *a1;
      v10 = a1[1];
      v2 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v11 = v10;
        v12 = v10 >> 62;
        v13 = v9;
        v9 = v9;
        v14 = v13 >> 32;
        v15 = BYTE6(v11);
        switch(v12)
        {
          case 1uLL:
            if (v14 < v13)
            {
              goto LABEL_63;
            }

            v18 = sub_1BF178F3C();
            if (!v18)
            {
              goto LABEL_22;
            }

            v24 = sub_1BF178F5C();
            if (__OFSUB__(v9, v24))
            {
              goto LABEL_65;
            }

            v18 += v9 - v24;
LABEL_22:
            sub_1BF178F4C();
            if (!v18)
            {
              goto LABEL_67;
            }

            v25 = OUTLINED_FUNCTION_6_39();
            OUTLINED_FUNCTION_9_28(v25);
            v19 = v13 >> 32;
            v9 = v9;
            v16 = v9;
LABEL_24:
            if (v19 < v16)
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
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
              *v38 = v13;
              v38[1] = v11;
              OUTLINED_FUNCTION_6_39();
              __break(1u);
LABEL_67:
              *v38 = v13;
              v38[1] = v11;
              OUTLINED_FUNCTION_6_39();
              __break(1u);
              JUMPOUT(0x1BF05FF34);
            }

            if (v12 == 2)
            {
              v17 = *(v13 + 16);
              v20 = *(v13 + 24);
            }

            else
            {
              v20 = v14;
              v17 = v9;
            }

LABEL_28:
            if (v20 < v19 || v19 < v17)
            {
              goto LABEL_58;
            }

            if (__OFSUB__(v19, v16))
            {
              goto LABEL_59;
            }

            if (v19 == v16)
            {
              switch(v12)
              {
                case 2:
                  v30 = *(v13 + 24);
                  break;
                default:
                  break;
              }
            }

            else
            {
              v27 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                goto LABEL_61;
              }

              v28 = 0;
              v29 = 0;
              switch(v12)
              {
                case 1:
                  v28 = v14;
                  v29 = v9;
                  break;
                case 2:
                  v29 = *(v13 + 16);
                  v28 = *(v13 + 24);
                  break;
                case 3:
                  break;
                default:
                  v29 = 0;
                  v28 = v15;
                  break;
              }

              if (v28 < v27 || v27 < v29)
              {
                goto LABEL_62;
              }

              v32 = 0;
              switch(v12)
              {
                case 1:
                  v32 = v14;
                  break;
                case 2:
                  v32 = *(v13 + 24);
                  break;
                case 3:
                  break;
                default:
                  v32 = v15;
                  break;
              }

              if (v32 < v27)
              {
                goto LABEL_60;
              }
            }

            v9 = sub_1BF17930C();
            v10 = v33;
            sub_1BF014E18(v13, v11);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = *(v2 + 16);
              sub_1BF06022C();
              v2 = v36;
            }

            v34 = *(v2 + 16);
            if (v34 >= *(v2 + 24) >> 1)
            {
              sub_1BF06022C();
              v2 = v37;
            }

            *(v2 + 16) = v34 + 1;
            *(v2 + v34 + 32) = v18;
            if (--v5)
            {
              continue;
            }

            *v38 = v9;
            v38[1] = v10;
            break;
          case 2uLL:
            v21 = *(v13 + 16);
            v18 = sub_1BF178F3C();
            if (!v18)
            {
              goto LABEL_15;
            }

            v22 = sub_1BF178F5C();
            if (__OFSUB__(v21, v22))
            {
              goto LABEL_64;
            }

            v18 += v21 - v22;
LABEL_15:
            sub_1BF178F4C();
            if (!v18)
            {
              goto LABEL_66;
            }

            v15 = BYTE6(v11);
            v23 = OUTLINED_FUNCTION_6_39();
            OUTLINED_FUNCTION_9_28(v23);
            v16 = *(v13 + 16);
            v19 = *(v13 + 24);
            v14 = v13 >> 32;
            v9 = v9;
            goto LABEL_24;
          case 3uLL:
            *OUTLINED_FUNCTION_6_39() = 0;
            MEMORY[0x1BFB547B0]();
            LOBYTE(v18) = 0;
            v19 = 0;
            v16 = 0;
            v20 = 0;
            v17 = 0;
            goto LABEL_28;
          default:
            *OUTLINED_FUNCTION_6_39() = v13;
            MEMORY[0x1BFB547B0]();
            v16 = 0;
            v17 = 0;
            LOBYTE(v18) = v13;
            v19 = BYTE6(v11);
            v20 = BYTE6(v11);
            goto LABEL_28;
        }

        break;
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

void *sub_1BF05FF74(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  v4 = sub_1BF060018(v2, v3);
  v5 = *v1;
  v6 = v1[1];
  sub_1BF014DC0(*v1, v6);
  OUTLINED_FUNCTION_9_21();
  sub_1BF05F1AC(v7, v8, v9, v10);
  OUTLINED_FUNCTION_14_15();
  *v1 = v5;
  v1[1] = v6;
  return v4;
}

void *sub_1BF060018(void *a1, unint64_t a2)
{
  v3 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v6 != v7)
      {
        __break(1u);
        JUMPOUT(0x1BF0600CCLL);
      }

      goto LABEL_6;
    case 2uLL:
      v4 = a1[2];
      v5 = v3[3];
LABEL_6:
      OUTLINED_FUNCTION_4_23();
      v8 = sub_1BF0600DC();
      if (!v2)
      {
        v3 = v8;
      }

      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      v3 = 0;
      break;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
      break;
  }

  return v3;
}

void *sub_1BF0600DC()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    v5 = *v4;
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1BF060154()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    v9 = OUTLINED_FUNCTION_65_1();
    sub_1BEFEC638(v9, v10, v11, v12);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v2;
    v13[3] = 2 * v14 - 64;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v13 != v0 || &v16[v2] <= v15)
    {
      memmove(v15, v16, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v15, v16, v2);
  }
}

void sub_1BF060240()
{
  if (!qword_1ED8EDD80)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EDD80);
    }
  }
}

unint64_t sub_1BF060290()
{
  result = qword_1ED8EDD78;
  if (!qword_1ED8EDD78)
  {
    sub_1BEFF5158(255, &qword_1ED8EDD80, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EDD78);
  }

  return result;
}

uint64_t sub_1BF06030C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF05F5E4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void *sub_1BF06033C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BF05FFE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void static Array<A>.read(from:)()
{
  OUTLINED_FUNCTION_25_11();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_1();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v24 - v17;
  v19 = sub_1BF05FFE8(v16);
  if (v0)
  {
    goto LABEL_7;
  }

  v20 = v19;
  if (v19 < 0)
  {
    sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10();
    v22 = 1;
    goto LABEL_6;
  }

  if (MEMORY[0x1BFB51150](*v6, v6[1]) < v19)
  {
    sub_1BF0E5CAC();
    OUTLINED_FUNCTION_26_10();
    v22 = 2;
LABEL_6:
    *v21 = v22;
    swift_willThrow();
    goto LABEL_7;
  }

  v25 = v6;
  v26 = v20;
  v23 = 0;
  sub_1BF179CFC();
  v24[1] = v2 + 8;
  while (v26 != v23)
  {
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return;
    }

    (*(v2 + 8))(v25, v4, v2);
    (*(v8 + 16))(v14, v18, v4);
    sub_1BF17A65C();
    sub_1BF17A5DC();
    (*(v8 + 8))(v18, v4);
    ++v23;
  }

LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

void Date.addDays(_:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF17964C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v8, v9, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *MEMORY[0x1E6969A48];
  v17 = OUTLINED_FUNCTION_7_17();
  v18(v17);
  sub_1BF17962C();
  v19 = OUTLINED_FUNCTION_10_8();
  v20(v19);
  v21 = sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v15);
  if (!v22)
  {
    OUTLINED_FUNCTION_6_19();
    (*(v26 + 32))(a2, v15, v21);
    return;
  }

  if ((a1 * 60) >> 64 != (60 * a1) >> 63)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_5();
  if (!v22)
  {
    goto LABEL_11;
  }

  if ((v23 * 24) >> 64 != (24 * v23) >> 63)
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_4_16(v15);
  if (!v22)
  {
    OUTLINED_FUNCTION_0_40();
    sub_1BF05AC80(v15, v24, v25);
  }
}

void sub_1BF060764(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_1BF05EFB0(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1BF060790()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF0607C4(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  sub_1BF17A7EC();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12_1();
  return sub_1BF1797AC();
}

uint64_t sub_1BF060868()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF0608A0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF060940()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF060980()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 56) & ~v5;
  OUTLINED_FUNCTION_12_3();
  v8 = v6 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  v18 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v6], v1);
  (*(v11 + 8))(&v0[v15], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v16, v17 | 7);
}

uint64_t sub_1BF060ACC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  OUTLINED_FUNCTION_12_3();
  v8 = v6 + *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  (*(v4 + 8))(v0 + v6, v2);
  (*(v11 + 8))(v0 + v15, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v16, v17 | 7);
}

uint64_t sub_1BF060C0C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  (*(v4 + 8))(v0 + v6);
  (*(v7 + 8))(v0 + v9, v2);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1BF060D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF060DD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13NSURLResponseCSgSo23NSURLSessionTaskMetricsCSgs5Error_pSgIegggg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF060F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF084358(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF060F40@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = *(a2 + 16);
  return String.FormatArgument.init(stringLiteral:)(a1);
}

uint64_t sub_1BF060FE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF061098()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0610C8()
{
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF06114C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  sub_1BF014E18(v0[9], v0[10]);
  v2 = v0[12];

  v3 = v0[14];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1BF06120C()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_21_4();
  sub_1BF09704C(0, v1, v2);
  OUTLINED_FUNCTION_103(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  v10 = (v0 + v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v12 = sub_1BF1794AC();
    OUTLINED_FUNCTION_12(v12);
    (*(v13 + 8))(v0 + v5);
    v14 = type metadata accessor for AuthToken();
    v15 = *(v14 + 20);
    v16 = sub_1BF17923C();
    OUTLINED_FUNCTION_12(v16);
    (*(v17 + 8))(v10 + v15);
    v18 = *(v10 + *(v14 + 24) + 8);
  }

  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_55();

  return MEMORY[0x1EEE6BDD0](v19, v20, v21);
}

uint64_t sub_1BF06138C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v1 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF0613D0()
{
  v1 = v0[3];

  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  v4 = v0[8];

  v5 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1BF061424()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF061470()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  v3 = v0[5];

  v4 = v0[7];

  v5 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1BF0614C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF0614FC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_3();
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 32);

  v7 = OUTLINED_FUNCTION_92();
  v8(v7);
  v9 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1BF0615A0()
{
  OUTLINED_FUNCTION_20(*(v0 + 24));
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF06161C()
{
  v1 = *(v0 + 56);

  v2 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06164C()
{
  v1 = *(v0 + 48);

  v2 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06167C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF061980(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  return sub_1BF061888();
}

uint64_t sub_1BF061994()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1BF061C5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF061CBC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF061CF4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF061D40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF061D78()
{
  v1 = sub_1BF17923C();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

void sub_1BF061E38(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_1BF061E7C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1BF061F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0554D0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_1BF062004(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BF0554D0();
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1BF0620BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  v7 = OUTLINED_FUNCTION_6_16(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_1BF17923C();
  v12 = OUTLINED_FUNCTION_6_16(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1BF0621AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BF1794AC();
  v9 = OUTLINED_FUNCTION_6_16(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1BF17923C();
    result = OUTLINED_FUNCTION_6_16(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1BF0623C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF062400()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF062440()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF062478()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0624B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF0624F4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF062658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17907C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1BF0626A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF17907C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1BF062714()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06274C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062834()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0628C0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t sub_1BF0629D0()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF062A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0B5EA4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

void sub_1BF062AE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1BF0B5EA4();
  if (*(*(v8 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_1BF062C18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF062D10()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062D48()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF062D80()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062DE0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF062E14()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF062EC8()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[12];

  v6 = v0[15];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BF062F6C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF062FB4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF062FF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF0630B4()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF0E3D30();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF063100()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF0E3BB8();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF06314C()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF0E3C28();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF063198()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF0E3CAC();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0632A4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0632DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF063314()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06334C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF063394()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF0633D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF06340C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF063478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF063524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF063620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Dictionary<>.disableSafeishSafety.getter(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1BF0636E4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF06371C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF0637F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF17923C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF0638A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF17923C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF06397C()
{
  v1 = *(v0 + 3);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v11 = *(v0 + 7);

  (*(v3 + 8))(&v0[v5], v1);
  v12 = *&v0[v7];

  v13 = *&v0[v8];

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v4 | 7);
}

uint64_t sub_1BF063A6C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF063AB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF063AF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1BF063BA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BF063BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF063C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF063D4C()
{
  v1 = sub_1BF17923C();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  sub_1BF014E18(*(v0 + v5), *(v0 + v5 + 8));
  v7 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_1BF063DF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF063E34()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF063E68()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1BF063E9C()
{
  v1 = sub_1BF178C6C();
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1BF063F6C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF063FB4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF063FE8()
{
  v1 = sub_1BF178C6C();
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

__n128 sub_1BF0640C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF06412C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06415C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF06419C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0641E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF064224()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BF06426C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF0642B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF0642F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1BF104FC0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF06433C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06437C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF0643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF0644A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BF064550()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 56);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1BF064648()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06477C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

__n128 sub_1BF0647C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF06480C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06490C()
{
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

__n128 sub_1BF0649A8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF0649B4()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF0649E8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF064A28()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF064A60()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF064AB0()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF064AF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_97();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF064B38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1BF104FC0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1BF064C18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF064D14()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF064D5C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF064DAC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BF064E0C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF064E74()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1BF064EE4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1BF064F5C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1BF064FDC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[11];

  v10 = v0[12];

  v11 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1BF065064()
{
  OUTLINED_FUNCTION_2_56();
  v2 = *(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[14];

  v6 = v0[15];

  v7 = v0[16];

  v8 = v0[17];

  v9 = v0[18];

  v10 = v0[19];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = v0[23];

  v15 = OUTLINED_FUNCTION_86_2();
  v16(v15);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 192) & ~v2) + v4, v2 | 7);
}

uint64_t sub_1BF065150()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 184) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_49_5();
  v11 = *(v10 + 64);
  v12 = v0[14];

  v13 = v0[15];

  v14 = v0[16];

  v15 = v0[17];

  v16 = v0[18];

  v17 = v0[19];

  v18 = v0[20];

  v19 = v0[21];

  v20 = v0[22];

  v21 = OUTLINED_FUNCTION_148();
  v22(v21);
  v23 = *(v8 + 8);
  v24 = OUTLINED_FUNCTION_141_0();
  v25(v24);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v26, v27, v28);
}

uint64_t sub_1BF065288()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_55_5();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17_14();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_50_4();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_79_2();
  v16 = v0[14];

  v17 = v0[15];

  v18 = v0[16];

  v19 = v0[17];

  v20 = v0[18];

  v21 = v0[19];

  v22 = v0[20];

  v23 = v0[21];

  v24 = OUTLINED_FUNCTION_81_2();
  v25(v24);
  v26 = OUTLINED_FUNCTION_130_0();
  v27(v26);
  v28 = OUTLINED_FUNCTION_127_0();
  v29(v28);
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1BF065404()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_7_30();
  v2 = (*(v1 + 80) + 168) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_20_15();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_22();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_35_6();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17_14();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_42_4();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39_4();
  v17 = v0[14];

  v18 = v0[15];

  v19 = v0[16];

  v20 = v0[17];

  v21 = v0[18];

  v22 = v0[19];

  v23 = v0[20];

  v24 = OUTLINED_FUNCTION_94_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_93_1();
  v27(v26);
  v28 = OUTLINED_FUNCTION_92_0();
  v29(v28);
  v30 = OUTLINED_FUNCTION_91_0();
  v31(v30);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v32, v33, v34);
}

uint64_t sub_1BF066478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_175();
  v125 = OUTLINED_FUNCTION_104_0();
  v124 = *(v33 + 6);
  v123 = *(v33 + 7);
  v122 = *(v33 + 8);
  v121 = *(v33 + 9);
  v34 = *(v33 + 10);
  v120 = v34;
  v118 = *(v33 + 11);
  OUTLINED_FUNCTION_18_10();
  v36 = *(v35 + 80);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_14_23();
  v40 = *(v39 + 80);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_34_5();
  v44 = *(v43 + 80);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_6_3(v47);
  v49 = *(v48 + 80);
  OUTLINED_FUNCTION_8_30(*(v50 + 64), v51, v52);
  OUTLINED_FUNCTION_69_2(v55, *(v53 + 80), *(v54 + 64), v56, v57);
  OUTLINED_FUNCTION_89_1(v60, v61, v62, *(v58 + 80), *(v59 + 64), v63, v64);
  v66 = *(v65 + 80);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_150();
  v119 = v69;
  v70 = *(v69 + 80);
  v72 = *(v71 + 64);
  v73 = *(v34 - 8);
  v74 = *(v73 + 80);
  v75 = *(v73 + 64);
  OUTLINED_FUNCTION_138_0();
  v77 = v76;
  v117 = *(v78 + 64);
  v114 = (((((((((((((((v79 + 120) & ~v79) + v38 + v80) & ~v80) + v42 + v81) & ~v81) + v46 + v82) & ~v82) + v83 + v84) & ~v84) + v85 + v86) & ~v86) + v87 + v88) & ~v88) + v89 + v90) & ~v90;
  v115 = (v114 + v92 + v91) & ~v91;
  v116 = (v115 + v93 + *(v76 + 80)) & ~*(v76 + 80);
  v94 = *(v33 + 14);

  v95 = OUTLINED_FUNCTION_103_0();
  v96(v95, a33);
  v97 = OUTLINED_FUNCTION_125_1();
  v98(v97, a32);
  v99 = OUTLINED_FUNCTION_122_1();
  v100(v99, a30);
  v101 = OUTLINED_FUNCTION_123_1();
  v102(v101, v125);
  v103 = OUTLINED_FUNCTION_120_1();
  v104(v103, v124);
  v105 = OUTLINED_FUNCTION_121_1();
  v106(v105, v123);
  v107 = OUTLINED_FUNCTION_134_1();
  v108(v107, v122);
  (*(v119 + 8))(&v33[v114], v121);
  (*(v73 + 8))(&v33[v115], v120);
  (*(v77 + 8))(&v33[v116], v118);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_173();

  return MEMORY[0x1EEE6BDD0](v109, v110, v111);
}

uint64_t sub_1BF066900()
{
  v91 = *(v0 + 2);
  v88 = *(v0 + 4);
  v89 = *(v0 + 3);
  v87 = *(v0 + 5);
  v86 = *(v0 + 6);
  v85 = *(v0 + 7);
  v84 = *(v0 + 8);
  v83 = *(v0 + 9);
  v82 = *(v0 + 10);
  v80 = *(v0 + 11);
  v79 = *(v0 + 12);
  v90 = *(*(v91 - 8) + 8);
  v1 = *(*(v91 - 8) + 80);
  v2 = *(*(v91 - 8) + 64);
  OUTLINED_FUNCTION_2_3();
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_3();
  v8 = *(v7 + 80);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_3();
  v12 = *(v11 + 80);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_3();
  v16 = *(v15 + 80);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_3();
  v20 = *(v19 + 80);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_3();
  v24 = *(v23 + 80);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_19_13();
  v81 = v27;
  v28 = *(v27 + 80);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_34_5();
  v32 = *(v31 + 80);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_34_5();
  v36 = *(v35 + 80);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_17_14();
  v40 = v39;
  v78 = *(v41 + 64);
  v43 = (v42 + 112) & ~v42;
  v76 = (((((((((((((v43 + v2 + v44) & ~v44) + v6 + v45) & ~v45) + v10 + v46) & ~v46) + v14 + v47) & ~v47) + v18 + v48) & ~v48) + v49 + v50) & ~v50) + v51 + v28) & ~v28;
  v77 = (((((v76 + v52 + v32) & ~v32) + v54 + v53) & ~v53) + v55 + *(v39 + 80)) & ~*(v39 + 80);
  v90(&v0[v43], v91);
  v56 = OUTLINED_FUNCTION_103_0();
  v57(v56, v89);
  v58 = OUTLINED_FUNCTION_124_1();
  v59(v58, v88);
  v60 = OUTLINED_FUNCTION_122_1();
  v61(v60, v87);
  v62 = OUTLINED_FUNCTION_123_1();
  v63(v62, v86);
  v64 = OUTLINED_FUNCTION_120_1();
  v65(v64, v85);
  v66 = OUTLINED_FUNCTION_125_1();
  v67(v66, v84);
  (*(v81 + 8))(&v0[v76], v83);
  v68 = OUTLINED_FUNCTION_126_1();
  v69(v68, v82);
  v70 = OUTLINED_FUNCTION_134_1();
  v71(v70, v80);
  (*(v40 + 8))(&v0[v77], v79);
  v72 = OUTLINED_FUNCTION_28_10();

  return MEMORY[0x1EEE6BDD0](v72, v73, v74);
}

uint64_t sub_1BF066E20()
{
  OUTLINED_FUNCTION_2_56();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 176) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 13);

  v9 = *(v1 + 14);

  v10 = *(v1 + 15);

  v11 = *(v1 + 16);

  v12 = *(v1 + 17);

  v13 = *(v1 + 18);

  v14 = *(v1 + 19);

  v15 = *(v1 + 20);

  v16 = *(v1 + 21);

  (*(v3 + 8))(&v1[v5], v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1BF066F0C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 168) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_49_5();
  v11 = *(v10 + 64);
  v12 = v0[13];

  v13 = v0[14];

  v14 = v0[15];

  v15 = v0[16];

  v16 = v0[17];

  v17 = v0[18];

  v18 = v0[19];

  v19 = v0[20];

  v20 = OUTLINED_FUNCTION_148();
  v21(v20);
  v22 = *(v8 + 8);
  v23 = OUTLINED_FUNCTION_141_0();
  v24(v23);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

uint64_t sub_1BF06703C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_55_5();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17_14();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_50_4();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_79_2();
  v16 = v0[13];

  v17 = v0[14];

  v18 = v0[15];

  v19 = v0[16];

  v20 = v0[17];

  v21 = v0[18];

  v22 = v0[19];

  v23 = OUTLINED_FUNCTION_81_2();
  v24(v23);
  v25 = OUTLINED_FUNCTION_130_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_127_0();
  v28(v27);
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v29, v30, v31);
}

uint64_t sub_1BF0671B0()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_7_30();
  v2 = (*(v1 + 80) + 152) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_20_15();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_22();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_35_6();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17_14();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_42_4();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39_4();
  v17 = v0[13];

  v18 = v0[14];

  v19 = v0[15];

  v20 = v0[16];

  v21 = v0[17];

  v22 = v0[18];

  v23 = OUTLINED_FUNCTION_94_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_93_1();
  v26(v25);
  v27 = OUTLINED_FUNCTION_92_0();
  v28(v27);
  v29 = OUTLINED_FUNCTION_91_0();
  v30(v29);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v31, v32, v33);
}

uint64_t sub_1BF068640()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[12];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[17];

  v11 = v0[18];

  v12 = v0[19];

  v13 = OUTLINED_FUNCTION_92();
  v14(v13);
  v15 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t sub_1BF068714()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 152) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_49_5();
  v11 = *(v10 + 64);
  v12 = v0[12];

  v13 = v0[13];

  v14 = v0[14];

  v15 = v0[15];

  v16 = v0[16];

  v17 = v0[17];

  v18 = v0[18];

  v19 = OUTLINED_FUNCTION_148();
  v20(v19);
  v21 = *(v8 + 8);
  v22 = OUTLINED_FUNCTION_141_0();
  v23(v22);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v24, v25, v26);
}

uint64_t sub_1BF06883C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_55_5();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17_14();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_50_4();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_79_2();
  v16 = v0[12];

  v17 = v0[13];

  v18 = v0[14];

  v19 = v0[15];

  v20 = v0[16];

  v21 = v0[17];

  v22 = OUTLINED_FUNCTION_81_2();
  v23(v22);
  v24 = OUTLINED_FUNCTION_130_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_127_0();
  v27(v26);
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v28, v29, v30);
}

uint64_t sub_1BF0689A8()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_7_30();
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_20_15();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_22();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_35_6();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17_14();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_42_4();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39_4();
  v17 = v0[12];

  v18 = v0[13];

  v19 = v0[14];

  v20 = v0[15];

  v21 = v0[16];

  v22 = OUTLINED_FUNCTION_94_1();
  v23(v22);
  v24 = OUTLINED_FUNCTION_93_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_92_0();
  v27(v26);
  v28 = OUTLINED_FUNCTION_91_0();
  v29(v28);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1BF069998()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 144) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[16];

  v11 = v0[17];

  v12 = OUTLINED_FUNCTION_92();
  v13(v12);
  v14 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1BF069A64()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 136) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v11 = *(v10 + 64);
  v12 = v0[11];

  v13 = v0[12];

  v14 = v0[13];

  v15 = v0[14];

  v16 = v0[15];

  v17 = v0[16];

  v18 = OUTLINED_FUNCTION_149();
  v19(v18);
  v20 = *(v8 + 8);
  v21 = OUTLINED_FUNCTION_141_0();
  v22(v21);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1BF069B80()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 128) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_55_5();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_17_14();
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_50_4();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_79_2();
  v16 = v0[11];

  v17 = v0[12];

  v18 = v0[13];

  v19 = v0[14];

  v20 = v0[15];

  v21 = OUTLINED_FUNCTION_81_2();
  v22(v21);
  v23 = OUTLINED_FUNCTION_130_0();
  v24(v23);
  v25 = OUTLINED_FUNCTION_127_0();
  v26(v25);
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v27, v28, v29);
}

uint64_t sub_1BF069CE4()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_7_30();
  v2 = (*(v1 + 80) + 120) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_20_15();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_22();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_35_6();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17_14();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_42_4();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39_4();
  v17 = v0[11];

  v18 = v0[12];

  v19 = v0[13];

  v20 = v0[14];

  v21 = OUTLINED_FUNCTION_94_1();
  v22(v21);
  v23 = OUTLINED_FUNCTION_93_1();
  v24(v23);
  v25 = OUTLINED_FUNCTION_92_0();
  v26(v25);
  v27 = OUTLINED_FUNCTION_91_0();
  v28(v27);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v29, v30, v31);
}

uint64_t sub_1BF06A540(uint64_t a1)
{
  v88 = v1[3];
  v87 = v1[4];
  v86 = v1[5];
  v85 = v1[6];
  v84 = v1[7];
  v82 = v1[9];
  v83 = v1[8];
  OUTLINED_FUNCTION_77_2(a1, v1[2]);
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  OUTLINED_FUNCTION_34_5();
  v7 = *(v6 + 80);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_13_21();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_47_3(*(v12 + 64), v13, v14, v14);
  OUTLINED_FUNCTION_46_4(v17, v18, *(v15 + 80), *(v16 + 64), v19, v19);
  OUTLINED_FUNCTION_43_4(v22, v23, v24, v25, *(v20 + 80), *(v21 + 64), v26, v26);
  v28 = v27;
  v29 = *(v27 + 80);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_138_0();
  v33 = v32;
  v34 = *(v32 + 80);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_161();
  v38 = v37;
  v81 = *(v39 + 64);
  v41 = (v40 + 88) & ~v40;
  v51 = (((((((((v41 + v5 + v42) & ~v42) + v43 + v44) & ~v44) + v45 + v46) & ~v46) + v47 + v48) & ~v48) + v49 + v50) & ~v50;
  v54 = (v51 + v52 + v53) & ~v53;
  v80 = (v54 + v55 + *(v37 + 80)) & ~*(v37 + 80);
  v3(v1 + v41);
  v56 = OUTLINED_FUNCTION_122_1();
  v57(v56, v88);
  v58 = OUTLINED_FUNCTION_103_0();
  v59(v58, v87);
  v60 = OUTLINED_FUNCTION_124_1();
  v61(v60, v86);
  v62 = OUTLINED_FUNCTION_126_1();
  v63(v62, v85);
  (*(v28 + 8))(v1 + v51, v84);
  v64 = (*(v33 + 8))(v1 + v54, v83);
  v65 = *(v38 + 8);
  v73 = OUTLINED_FUNCTION_118_1(v64, v66, v67, v68, v69, v70, v71, v72, v79, v80);
  v74(v73);
  v75 = OUTLINED_FUNCTION_28_10();

  return MEMORY[0x1EEE6BDD0](v75, v76, v77);
}

uint64_t sub_1BF06A8D8()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 128) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[10];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[14];

  v10 = v0[15];

  v11 = OUTLINED_FUNCTION_92();
  v12(v11);
  v13 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v13, v14, v15);
}

uint64_t sub_1BF06A99C()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 120) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v11 = *(v10 + 64);
  v12 = v0[10];

  v13 = v0[11];

  v14 = v0[12];

  v15 = v0[13];

  v16 = v0[14];

  v17 = OUTLINED_FUNCTION_149();
  v18(v17);
  v19 = *(v8 + 8);
  v20 = OUTLINED_FUNCTION_141_0();
  v21(v20);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v22, v23, v24);
}

uint64_t sub_1BF06AAB0()
{
  OUTLINED_FUNCTION_80();
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v31 = *(v0 + 4);
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v10 = (v5 + v9 + *(v8 + 80)) & ~*(v8 + 80);
  OUTLINED_FUNCTION_73_2();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_22();
  v14 = v13;
  v15 = *(v13 + 80);
  OUTLINED_FUNCTION_51_4();
  v30 = *(v16 + 64);
  v17 = *(v0 + 10);

  v18 = *(v0 + 11);

  v19 = *(v0 + 12);

  v20 = *(v0 + 13);

  v21 = OUTLINED_FUNCTION_81_2();
  v22(v21);
  v23 = OUTLINED_FUNCTION_129_0();
  v24(v23, v2);
  (*(v14 + 8))(&v0[v1], v31);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

uint64_t sub_1BF06AC24()
{
  OUTLINED_FUNCTION_97_0();
  OUTLINED_FUNCTION_7_30();
  v2 = (*(v1 + 80) + 104) & ~*(v1 + 80);
  OUTLINED_FUNCTION_12_3();
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_5_34();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_20_15();
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_22();
  v10 = *(v9 + 80);
  OUTLINED_FUNCTION_35_6();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17_14();
  v14 = *(v13 + 80);
  OUTLINED_FUNCTION_42_4();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39_4();
  v17 = v0[10];

  v18 = v0[11];

  v19 = v0[12];

  v20 = OUTLINED_FUNCTION_94_1();
  v21(v20);
  v22 = OUTLINED_FUNCTION_93_1();
  v23(v22);
  v24 = OUTLINED_FUNCTION_92_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_91_0();
  v27(v26);
  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v28, v29, v30);
}

uint64_t sub_1BF06B47C()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 112) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[13];

  v10 = OUTLINED_FUNCTION_92();
  v11(v10);
  v12 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1BF06B538()
{
  OUTLINED_FUNCTION_32();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17_14();
  v8 = v7;
  v9 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v11 = *(v10 + 64);
  v12 = v0[9];

  v13 = v0[10];

  v14 = v0[11];

  v15 = v0[12];

  v16 = OUTLINED_FUNCTION_149();
  v17(v16);
  v18 = *(v8 + 8);
  v19 = OUTLINED_FUNCTION_141_0();
  v20(v19);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v21, v22, v23);
}

uint64_t sub_1BF06B644()
{
  OUTLINED_FUNCTION_80();
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v31 = *(v0 + 4);
  OUTLINED_FUNCTION_2_3();
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  OUTLINED_FUNCTION_12_3();
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_16_18();
  v9 = v8;
  v10 = *(v8 + 80);
  OUTLINED_FUNCTION_142_0();
  v13 = v11 & ~v12;
  OUTLINED_FUNCTION_73_2();
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_22();
  v17 = v16;
  v18 = *(v16 + 80);
  OUTLINED_FUNCTION_51_4();
  v30 = *(v19 + 64);
  v20 = *(v0 + 9);

  v21 = *(v0 + 10);

  v22 = *(v0 + 11);

  v23 = OUTLINED_FUNCTION_106_0();
  v24(v23);
  (*(v9 + 8))(&v0[v13], v2);
  (*(v17 + 8))(&v0[v1], v31);
  OUTLINED_FUNCTION_171();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

uint64_t sub_1BF06B7B0()
{
  OUTLINED_FUNCTION_97_0();
  v35 = *(v0 + 3);
  v36 = *(v0 + 2);
  v33 = *(v0 + 5);
  v34 = *(v0 + 4);
  OUTLINED_FUNCTION_2_3();
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  OUTLINED_FUNCTION_12_3();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_34();
  v7 = v6;
  v8 = *(v6 + 80);
  OUTLINED_FUNCTION_20_15();
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_22();
  v12 = v11;
  v14 = (v1 + v13 + *(v11 + 80)) & ~*(v11 + 80);
  OUTLINED_FUNCTION_73_2();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_17_14();
  v19 = (v14 + v18 + *(v17 + 80)) & ~*(v17 + 80);
  OUTLINED_FUNCTION_73_2();
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_165();
  v22 = *(v0 + 9);

  v23 = *(v0 + 10);

  v24 = OUTLINED_FUNCTION_129_0();
  v25(v24, v36);
  (*(v7 + 8))(&v0[v1], v35);
  (*(v12 + 8))(&v0[v14], v34);
  v26 = OUTLINED_FUNCTION_151();
  v27(v26);
  OUTLINED_FUNCTION_108_1();
  OUTLINED_FUNCTION_96();

  return MEMORY[0x1EEE6BDD0](v28, v29, v30);
}

uint64_t sub_1BF06BDD0()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = v0[7];

  v6 = v0[8];

  v7 = v0[9];

  v8 = OUTLINED_FUNCTION_92();
  v9(v8);
  v10 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1BF06BE7C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_0_62();
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_18();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v10 = *(v9 + 64);
  v11 = v0[7];

  v12 = v0[8];

  v13 = OUTLINED_FUNCTION_86_2();
  v14(v13);
  v15 = OUTLINED_FUNCTION_128_1();
  v16(v15);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1BF06BF6C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[2];
  v26 = v0[4];
  v27 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  OUTLINED_FUNCTION_12_3();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_34();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_73_2();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_22();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_51_4();
  v13 = *(v12 + 64);
  v14 = v0[7];

  v15 = OUTLINED_FUNCTION_106_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_153();
  v18(v17);
  v19 = OUTLINED_FUNCTION_152();
  v20(v19);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v21, v22, v23);
}

uint64_t sub_1BF06C0B4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  v35 = v0[5];
  OUTLINED_FUNCTION_77_2(v0[4], v0[2]);
  v3 = *(v2 + 8);
  v2 += 8;
  v4 = *(v2 + 72);
  v5 = *(v2 + 56);
  OUTLINED_FUNCTION_34_5();
  v9 = (v8 + v7 + *(v6 + 80)) & ~*(v6 + 80);
  OUTLINED_FUNCTION_80_2();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_34_5();
  v14 = (v9 + v13 + *(v12 + 80)) & ~*(v12 + 80);
  OUTLINED_FUNCTION_80_2();
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_34_5();
  v19 = (v14 + v18 + *(v17 + 80)) & ~*(v17 + 80);
  OUTLINED_FUNCTION_80_2();
  v21 = *(v20 + 64);
  v23(v0 + v22);
  v24 = OUTLINED_FUNCTION_106_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_153();
  v27(v26);
  v28 = OUTLINED_FUNCTION_152();
  v29(v28);
  OUTLINED_FUNCTION_145_0();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6BDD0](v30, v31, v32);
}

uint64_t sub_1BF06C248()
{
  OUTLINED_FUNCTION_2_56();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = OUTLINED_FUNCTION_92();
  v8(v7);
  v9 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1BF06C2EC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[2];
  v2 = v0[3];
  OUTLINED_FUNCTION_0_62();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  OUTLINED_FUNCTION_12_3();
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_16_18();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_21_12();
  v10 = *(v9 + 64);
  v11 = v0[6];

  v12 = OUTLINED_FUNCTION_86_2();
  v13(v12);
  v14 = OUTLINED_FUNCTION_128_1();
  v15(v14);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1BF06C3D4()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 3);
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  v4 = *(*(v2 - 8) + 8);
  v5 = *(*(v2 - 8) + 80);
  v6 = *(*(v2 - 8) + 64);
  OUTLINED_FUNCTION_34_5();
  v10 = (v9 + v8 + *(v7 + 80)) & ~*(v7 + 80);
  OUTLINED_FUNCTION_80_2();
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_34_5();
  v15 = (v10 + v14 + *(v13 + 80)) & ~*(v13 + 80);
  OUTLINED_FUNCTION_80_2();
  v17 = *(v16 + 64);
  v19(&v0[v18]);
  v20 = OUTLINED_FUNCTION_86_2();
  v21(v20);
  v22 = OUTLINED_FUNCTION_128_1();
  v23(v22);
  OUTLINED_FUNCTION_48_4();
  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v24, v25, v26);
}

uint64_t sub_1BF06C510()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06C58C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = sub_1BF17B63C();
    v13 = &a1[*(a3 + 36)];

    return __swift_getEnumTagSinglePayload(v13, a2, v12);
  }
}

_BYTE *sub_1BF06C618(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = *(a4 + 16);
    v8 = *(a4 + 24);
    v9 = sub_1BF17B63C();
    v10 = &v5[*(a4 + 36)];

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1BF06C6EC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BF06C768()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF06C7A8()
{
  OUTLINED_FUNCTION_20(*(v0 + 16));
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BF06C824(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  type metadata accessor for Result();
  sub_1BF17AE6C();
  return sub_1BF1797AC();
}

uint64_t sub_1BF06C8D4()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1BF06C908()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BF06C9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF17923C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF06CA70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF17923C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_1BF06CB84(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BF06CB98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BF06CC4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BF1794FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1BF06CCD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BF1794FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BF06CFA8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF06CFDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1BF15884C();
  *a2 = result;
  return result;
}

uint64_t sub_1BF06D12C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF06D19C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BF06D1D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_39();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF06D25C()
{
  v1 = sub_1BF1794AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BF06D2FC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BF06D348(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_2_66(a1);
}

uint64_t sub_1BF06D3C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06D3F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BF06D430()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BF06D4E8()
{
  v1 = *(v0 + 2);
  sub_1BEFF79E8();
  v2 = sub_1BF17A6DC();
  OUTLINED_FUNCTION_8_36(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v7 = *(v6 + 64);
  if (*(v0 + 3))
  {
    v8 = *(v0 + 4);
  }

  v9 = (v5 + 40) & ~v5;
  (*(v4 + 8))(&v0[v9], v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v7, v5 | 7);
}

__n128 sub_1BF06D604(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BF06D610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF1794AC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1BF06D6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BF1794AC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

BOOL sub_1BF06D764()
{
  v0 = sub_1BF17B57C();

  return v0 != 0;
}

__n128 sub_1BF06D830(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BF06D844()
{
  sub_1BF178A0C();
  v2 = v1;
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v0 + 40);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

char *sub_1BF06D900(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

void interprocessNotificationHandler(uint64_t a1, void *a2)
{
  v2 = [a2 callback];
  v2[2]();
}

TFCallbackScope *TFCallbackScopeNames(void *a1)
{
  v1 = a1;
  v2 = [[TFCallbackScope alloc] initWithScope:2 names:v1];

  return v2;
}

void TFArchiverCopyFileFinishedHandler(uint64_t a1, const char *a2)
{
  v5 = BOMCopierUserData();
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 stringWithFileSystemRepresentation:a2 length:strlen(a2)];

  [v5 addObject:v4];
}

uint64_t isInternalBuild()
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  return isInternalBuild_internalBuild;
}

uint64_t __isInternalBuild_block_invoke()
{
  result = os_variant_has_internal_content();
  isInternalBuild_internalBuild = result;
  return result;
}

void tf_os_signpost_today_prewarm_interval_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Today Prewarm", "", v5, 2u);
  }
}

void tf_os_signpost_today_prewarm_interval_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Today Prewarm", "", v5, 2u);
  }
}

void tf_os_signpost_today_prewarm_data_manager_interval_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Today Data Manager Prewarm", "", v5, 2u);
  }
}

void tf_os_signpost_today_prewarm_data_manager_interval_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Today Data Manager Prewarm", "", v5, 2u);
  }
}

void tf_os_signpost_today_prewarm_blueprint_modify_interval_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Today Prewarm Blueprint Modify", "", v5, 2u);
  }
}

void tf_os_signpost_today_prewarm_blueprint_modify_interval_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Today Prewarm Blueprint Modify", "", v5, 2u);
  }
}

void tf_os_signpost_news_feed_group_fetch_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Group Fetch", "", v5, 2u);
  }
}

void tf_os_signpost_news_feed_group_fetch_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Group Fetch", "", v5, 2u);
  }
}

void tf_os_signpost_news_extended_launch_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Extended Launch", "", v5, 2u);
  }
}

void tf_os_signpost_news_extended_launch_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Extended Launch", "", v5, 2u);
  }
}

void tf_os_signpost_clustering_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Clustering", "", v5, 2u);
  }
}

void tf_os_signpost_clustering_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Clustering", "", v5, 2u);
  }
}

void tf_os_signpost_aggregate_store_generation_begin(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_BEGIN, a2, "Aggregate Store Generation", "", v5, 2u);
  }
}

void tf_os_signpost_aggregate_store_generation_end(void *a1, os_signpost_id_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BEFE0000, v4, OS_SIGNPOST_INTERVAL_END, a2, "Aggregate Store Generation", "", v5, 2u);
  }
}

uint64_t TFSignalHandler(int a1)
{
  TFCrashDetector();
  v6[0] = 0;
  v6[1] = 0;
  v2 = a1 - 4;
  if (a1 - 4) <= 7 && ((0xD1u >> v2))
  {
    v3 = off_1E80B1EC0[v2];
  }

  else
  {
    v3 = v6;
  }

  sigaction(a1, v3, 0);
  v4 = pthread_self();
  return pthread_kill(v4, a1);
}

uint64_t TFCrashDetector()
{
  v0 = &wipeStateOnLaunchFile;
  if (launchState != 1)
  {
    v0 = 0;
  }

  if (launchState)
  {
    v1 = v0;
  }

  else
  {
    v1 = &detectedCrashOnLaunchFile;
  }

  result = open(v1, 1537, 420);
  if (result != -1)
  {

    return close(result);
  }

  return result;
}

void XPCInterface.init(_:_:)(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = a1;
  v6 = a2();

  a3[1] = v6;
}

NSXPCInterface __swiftcall XPCInterface.asNSXPCInterface()()
{
  v3 = *v0;
  v4 = v0[1];
  result.super.isa = [objc_opt_self() interfaceWithProtocol_];
  isa = result.super.isa;
  if (!*(v4 + 16))
  {
    return isa;
  }

  v6 = v4;
  v7 = 0;
  v8 = v4 + 32;
  v9 = MEMORY[0x1E69E69B8];
  v10 = MEMORY[0x1E69E69C0];
  v95 = *(v4 + 16);
  v98 = v4;
  v92 = v4 + 32;
  while (v7 < *(v6 + 16))
  {
    v11 = (v8 + 40 * v7);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v15 = v11[4];
    v107 = v7 + 1;
    v117 = *(v12 + 16);
    v121 = *v11;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v101 = v14;
    v104 = v13;
    v110 = v15;
    sub_1BF070B0C(v13, v14, v15);
    v113 = v12 + 32;
    result.super.isa = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v23 = 0;
    v124 = v12;
    while (v23 != v117)
    {
      if (v23 >= *(v12 + 16))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_5_0(result.super.isa, v16, v17, v18, v19, v20, v21, v22, v89, v92, v95, v98, v101, v104, v107, v110, v113);
      if (v1)
      {
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        OUTLINED_FUNCTION_22();
        sub_1BF070B50(v13);
        OUTLINED_FUNCTION_4_4();
        if ((v9 & 0x8000000000000000) == 0)
        {
          while (v9 < 1 << *(v31 + 32))
          {
            OUTLINED_FUNCTION_9_4(result.super.isa, v24, v25, v26, v27, v28, v29, v30, v89, v92, v95, v98, v101, v104, v107, v110, v113, v117, v121, v124, isa, v130, v133, v136, v139, v142);
            if (v34)
            {
              goto LABEL_66;
            }

            if (*(v33 + 36) != v32)
            {
              goto LABEL_67;
            }

            v35 = OUTLINED_FUNCTION_24_2();
            OUTLINED_FUNCTION_13_1(v35);
            if (v36)
            {
              OUTLINED_FUNCTION_14_2();
            }

            result.super.isa = OUTLINED_FUNCTION_25();
            if (v12)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_12_2(result.super.isa, v37, v38, v39, v40, v41, v42, v43, v90, v93, v96, v99, v102, v105, v108, v111, v114, v118, v122, v125, v128, v131, v134, v137, v140);
            if (v45 == v46)
            {
              goto LABEL_68;
            }

            if ((*(v142 + 8 * v2) & v1) == 0)
            {
              goto LABEL_69;
            }

            if (*(v44 + 36) != v13)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_20_0();
            if (v34)
            {
              OUTLINED_FUNCTION_11();
              do
              {
                if (v50 >= v49)
                {
                  break;
                }

                v52 = *v51++;
                v1 = v52;
                LODWORD(v13) = v13 + 64;
                ++v50;
              }

              while (!v52);
              OUTLINED_FUNCTION_10_5(v47, v48);
            }

            else
            {
              OUTLINED_FUNCTION_19_1();
            }

            if (++v10 == v23)
            {
              v9 = MEMORY[0x1E69E69B8];
              v10 = MEMORY[0x1E69E69C0];
              goto LABEL_30;
            }

            OUTLINED_FUNCTION_17();
            if (v9 < 0)
            {
              break;
            }
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
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
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_30:
      sub_1BF070B90();
      OUTLINED_FUNCTION_15_0();
      v53 = sub_1BF070160();
      result.super.isa = OUTLINED_FUNCTION_26(v53);
      v13 = v143;
      if (!v143)
      {
        goto LABEL_82;
      }

      v1 = v133;
      v23 = v133 + 1;

      v54 = sub_1BF17A8CC();

      [(objc_class *)isa setClasses:v54 forSelector:v121 argumentIndex:v133 ofReply:0];

      v12 = v124;
    }

    if (v110)
    {
      v115 = v110 + 32;
      v119 = *(v110 + 16);
      result.super.isa = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v62 = 0;
      while (1)
      {
        if (v62 == v119)
        {

          sub_1BF070BE0(v104, v101, v110);

          goto LABEL_63;
        }

        if (v62 >= *(v110 + 16))
        {
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_5_0(result.super.isa, v55, v56, v57, v58, v59, v60, v61, v89, v92, v95, v98, v101, v104, v107, v110, v115);
        if (v1)
        {
          break;
        }

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_59:
        sub_1BF070B90();
        OUTLINED_FUNCTION_15_0();
        v88 = sub_1BF070160();
        result.super.isa = OUTLINED_FUNCTION_26(v88);
        if (!v143)
        {
          goto LABEL_83;
        }

        v1 = v133;
        v62 = v133 + 1;

        v13 = sub_1BF17A8CC();

        [(objc_class *)isa setClasses:v13 forSelector:v121 argumentIndex:v133 ofReply:1];

        LOBYTE(v12) = v124;
      }

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      OUTLINED_FUNCTION_22();
      sub_1BF070B50(v13);
      OUTLINED_FUNCTION_4_4();
      if ((v9 & 0x8000000000000000) == 0)
      {
        while (v9 < 1 << *(v70 + 32))
        {
          OUTLINED_FUNCTION_9_4(result.super.isa, v63, v64, v65, v66, v67, v68, v69, v89, v92, v95, v98, v101, v104, v107, v110, v115, v119, v121, v124, isa, v130, v133, v136, v139, v142);
          if (v34)
          {
            goto LABEL_72;
          }

          if (*(v72 + 36) != v71)
          {
            goto LABEL_73;
          }

          v73 = OUTLINED_FUNCTION_24_2();
          OUTLINED_FUNCTION_13_1(v73);
          if (v36)
          {
            OUTLINED_FUNCTION_14_2();
          }

          result.super.isa = OUTLINED_FUNCTION_25();
          if (v12)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_12_2(result.super.isa, v74, v75, v76, v77, v78, v79, v80, v91, v94, v97, v100, v103, v106, v109, v112, v116, v120, v123, v126, v129, v132, v135, v138, v141);
          if (v45 == v46)
          {
            goto LABEL_74;
          }

          if ((*(v142 + 8 * v2) & v1) == 0)
          {
            goto LABEL_75;
          }

          if (*(v81 + 36) != v13)
          {
            goto LABEL_76;
          }

          OUTLINED_FUNCTION_20_0();
          if (v34)
          {
            OUTLINED_FUNCTION_11();
            do
            {
              if (v85 >= v84)
              {
                break;
              }

              v87 = *v86++;
              v1 = v87;
              LODWORD(v13) = v13 + 64;
              ++v85;
            }

            while (!v87);
            OUTLINED_FUNCTION_10_5(v82, v83);
          }

          else
          {
            OUTLINED_FUNCTION_19_1();
          }

          if (++v10 == v62)
          {
            v9 = MEMORY[0x1E69E69B8];
            v10 = MEMORY[0x1E69E69C0];
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_17();
          if (v9 < 0)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_71;
    }

    result.super.isa = sub_1BF070BE0(v104, v101, 0);
LABEL_63:
    v6 = v98;
    v7 = v107;
    v8 = v92;
    if (v107 == v95)
    {
      return isa;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

id sub_1BF070160()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BF17A4CC();

  v2 = [v0 initWithArray_];

  return v2;
}

uint64_t sub_1BF0701E8(uint64_t a1, id *a2)
{
  result = sub_1BF17A08C();
  *a2 = 0;
  return result;
}

uint64_t sub_1BF070264(uint64_t a1, id *a2)
{
  v3 = sub_1BF17A09C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BF0702E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF070EDC();
  *a1 = result;
  return result;
}

uint64_t sub_1BF070314()
{
  v0 = sub_1BF17A0AC();
  v1 = MEMORY[0x1BFB520A0](v0);

  return v1;
}

uint64_t sub_1BF070354()
{
  sub_1BF17A0AC();
  sub_1BF179F3C();
}

uint64_t sub_1BF0703B0()
{
  sub_1BF17A0AC();
  sub_1BF17BB6C();
  sub_1BF179F3C();
  v0 = sub_1BF17BB9C();

  return v0;
}

uint64_t sub_1BF07043C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BF0D3D50();
}

void sub_1BF070454(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BF070488();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_1BF070490()
{
  v1 = OUTLINED_FUNCTION_16_0();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1BF0704B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1BF17A07C();

  *a2 = v5;
  return result;
}

uint64_t sub_1BF070500()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1BF070528();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1BF07052C(uint64_t a1)
{
  v2 = sub_1BF070E50(&qword_1EBDCA938, type metadata accessor for URLResourceKey);
  v3 = sub_1BF070E50(&qword_1EBDCB2E0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1BF0705E8()
{
  v1 = *v0;
  sub_1BF011664();
  *v0 = v2;
}

void sub_1BF07062C()
{
  v1 = *v0;
  sub_1BF01A5C4();
  *v0 = v2;
}

void sub_1BF0706C0()
{
  v1 = *v0;
  sub_1BF011664();
  *v0 = v2;
}

void sub_1BF070858(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_1BF070F14(0, &qword_1EBDCB2F0, sub_1BF070F64);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_21_1(v12);
      if (a1)
      {
LABEL_12:
        sub_1BF0A6F50((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_1BF070F64();
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_1_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF070954(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  sub_1BF070F14(0, a5, a6);
  v17 = *(a7(0) - 8);
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
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1BF070B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF070B50(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1BF17B0CC();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_1BF070B90()
{
  result = qword_1ED8EE9B8;
  if (!qword_1ED8EE9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EE9B8);
  }

  return result;
}

uint64_t sub_1BF070BD4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1BF070BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
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

uint64_t sub_1BF070C48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF070C68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1BF070D50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF070D70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BF070E50(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_15_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF070EDC()
{
  sub_1BF17A0AC();
  v0 = sub_1BF17A07C();

  return v0;
}

void sub_1BF070F14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_15_0();
    v4 = sub_1BF17B70C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF070F64()
{
  if (!qword_1EBDCB2F8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCB2F8);
    }
  }
}

void sub_1BF070FC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1BEFE6EA8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t DebugCacheRegistry.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t DebugCacheRegistry.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  return result;
}

uint64_t DebugCacheRegistry.registerFile(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1BEFF0EC4(sub_1BF0A6444);
  v4 = *(*(v1 + 16) + 16);
  sub_1BEFF12B8(v4, sub_1BF0A6444);
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = sub_1BF17923C();
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(v2 + 16) = v5;
  return result;
}

void DebugCacheRegistry.registerContentsOfDirectory(_:)()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1BF17923C();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = [objc_opt_self() defaultManager];
  v10 = sub_1BF17916C();
  v24[0] = 0;
  v11 = [v9 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:v24];

  v12 = v24[0];
  if (v11)
  {
    v13 = sub_1BF17A4DC();
    v14 = v12;

    v15 = *(v13 + 16);
    if (v15)
    {
      v18 = *(v3 + 16);
      v16 = v3 + 16;
      v17 = v18;
      v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
      v20 = *(v16 + 56);
      do
      {
        v17(v8, v19, v0);
        DebugCacheRegistry.registerFile(_:)(v8);
        (*(v16 - 8))(v8, v0);
        v19 += v20;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v21 = v24[0];
    v22 = sub_1BF17911C();

    swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1BF07143C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1BF17923C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_1BF17915C();
  a3(v12);
  return (*(v7 + 8))(v12, v4);
}

Swift::Void __swiftcall DebugCacheRegistry.registerUserDefaultsKey(_:in:)(Swift::String _, NSUserDefaults in)
{
  v3 = v2;
  isa = in.super.isa;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  swift_beginAccess();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v7 = isa;
  sub_1BEFF0EC4(sub_1BF0A6484);
  v8 = *(*(v3 + 24) + 16);
  sub_1BEFF12B8(v8, sub_1BF0A6484);
  v9 = *(v3 + 24);
  *(v9 + 16) = v8 + 1;
  v10 = (v9 + 24 * v8);
  v10[4] = countAndFlagsBits;
  v10[5] = object;
  v10[6] = v7;
  *(v3 + 24) = v9;
  swift_endAccess();
}

Swift::Void __swiftcall DebugCacheRegistry.clearCache()()
{
  v1 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v49 = sub_1BF17923C();
  v2 = OUTLINED_FUNCTION_1(v49);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  sub_1BF071C2C();
  v10 = sub_1BF17AE3C();
  sub_1BF17ACDC();
  sub_1BF1797CC();

  v11 = *(v1 + 16);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E6158];
  if (v12)
  {
    v14 = objc_opt_self();
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v47 = v16;
    v48 = v14;
    v17 = v11 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v45 = (v15 - 8);
    v46 = *(v15 + 56);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    do
    {
      v47(v9, v17, v49);
      sub_1BF071C70();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BF17DEF0;
      v19 = sub_1BF1791DC();
      v21 = v20;
      *(v18 + 56) = v13;
      v22 = sub_1BF071CD8();
      *(v18 + 64) = v22;
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      v23 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      sub_1BF1797CC();

      v24 = [v48 defaultManager];
      v25 = sub_1BF17916C();
      (*v45)(v9, v49);
      v50 = 0;
      LODWORD(v21) = [v24 removeItemAtURL:v25 error:&v50];

      if (v21)
      {
        v26 = v50;
      }

      else
      {
        v27 = v50;
        v28 = sub_1BF17911C();

        swift_willThrow();
        sub_1BF17ACBC();
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1BF17DEF0;
        v50 = 0;
        v51 = 0xE000000000000000;
        sub_1BEFE6EA8(0, &qword_1ED8EFD30);
        sub_1BF17B40C();
        v30 = v50;
        v31 = v51;
        *(v29 + 56) = MEMORY[0x1E69E6158];
        *(v29 + 64) = v22;
        *(v29 + 32) = v30;
        *(v29 + 40) = v31;
        v32 = sub_1BF17AE3C();
        sub_1BF1797CC();
      }

      v17 += v46;
      --v12;
      v13 = MEMORY[0x1E69E6158];
    }

    while (v12);
  }

  v33 = sub_1BF17AE3C();
  sub_1BF17ACDC();
  sub_1BF1797CC();

  swift_beginAccess();
  v34 = *(*(v1 + 24) + 16);
  if (v34)
  {
    sub_1BF071C70();
    v35 = (_s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0() + 48);
    v36 = v13;
    do
    {
      v38 = *(v35 - 2);
      v37 = *(v35 - 1);
      v39 = *v35;
      v35 += 3;
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1BF17DEF0;
      *(v40 + 56) = v36;
      *(v40 + 64) = sub_1BF071CD8();
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      swift_bridgeObjectRetain_n();
      v41 = v39;
      v42 = sub_1BF17AE3C();
      sub_1BF17ACDC();
      sub_1BF1797CC();

      v43 = sub_1BF17A07C();
      [v41 removeObjectForKey_];

      --v34;
    }

    while (v34);
  }

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t DebugCacheRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DebugCacheRegistry.__deallocating_deinit()
{
  DebugCacheRegistry.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BF071C2C()
{
  result = qword_1ED8EE9B0;
  if (!qword_1ED8EE9B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EE9B0);
  }

  return result;
}

void sub_1BF071C70()
{
  if (!qword_1ED8EE998)
  {
    sub_1BEFE6EA8(255, &qword_1ED8EE990);
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EE998);
    }
  }
}

unint64_t sub_1BF071CD8()
{
  result = qword_1ED8EE9E8;
  if (!qword_1ED8EE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EE9E8);
  }

  return result;
}

uint64_t sub_1BF071D58(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF071EB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v11 = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  sub_1BF17A7EC();
  v9 = sub_1BF17AE6C();
  (*(*(v9 - 8) + 32))(v2 + 24, &v11, v9);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return v2;
}

void *DispatchOnce.deinit()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  sub_1BF17A7EC();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12_1();
  v4 = sub_1BF1797BC();
  sub_1BF073074(v4);
  v5 = v0[5];

  return v0;
}

uint64_t DispatchOnce.__deallocating_deinit()
{
  DispatchOnce.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DispatchOnce<>.init(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = swift_allocObject();
  v5[2] = *(v2 + 80);
  v5[3] = a1;
  v5[4] = a2;

  return _s13TeaFoundation12DispatchOnceCAAs5Error_pRs_rlE5blockACyxsAD_pGxyYaYbKc_tcfC_0(&unk_1BF17DF80, v5);
}

uint64_t sub_1BF0720BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF073354;

  return v7(a1);
}

uint64_t DispatchOnce<>.callAsFunction()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_8(sub_1BF0721F4);
}

{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_8(sub_1BF072948);
}

uint64_t sub_1BF0721F4()
{
  OUTLINED_FUNCTION_13_2();
  v10 = v0;
  v1 = v0[3];
  os_unfair_lock_lock((v1 + 16));
  sub_1BF072C88((v1 + 24), v1, &unk_1BF17E000, sub_1BF0726BC, &v9);
  v2 = *(v0[4] + 80);
  sub_1BF17A7EC();
  OUTLINED_FUNCTION_12_1();
  sub_1BF17AE6C();
  os_unfair_lock_unlock((v1 + 16));
  v3 = v9;
  v0[5] = v9;
  v4 = *(MEMORY[0x1E69E86C0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[6] = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return MEMORY[0x1EEE6DA40](v7, v3, v2);
}

uint64_t sub_1BF07236C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BF072458, 0, 0);
}

uint64_t sub_1BF072458()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF0724B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF0724D0, 0, 0);
}

uint64_t sub_1BF0724D0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  v8 = v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 32) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t sub_1BF072580()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BF0726A0, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return v7();
  }
}

uint64_t sub_1BF0726BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1BF00974C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = a4;
  v29[1] = a5;
  sub_1BF047B30(a3, v14);
  v15 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v14);
  }

  else
  {
    sub_1BF17A76C();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_1BF17A6AC();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_1BF17A16C();
      v23 = *(v22 + 16);
      sub_1BF072F88(v22 + 32, v29, a6, v28);

      v24 = v28[0];
      sub_1BF00CAB0(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF00CAB0(a3);
  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = a4;
  v25[4] = a5;
  if (v21 | v19)
  {
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = v19;
    v28[4] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1BF072948()
{
  OUTLINED_FUNCTION_13_2();
  v13 = v0;
  v1 = v0[3];
  os_unfair_lock_lock((v1 + 16));
  sub_1BF072C88((v1 + 24), v1, &unk_1BF17DFF0, sub_1BF1687E8, &v12);
  v2 = v0[4];
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = MEMORY[0x1E69E7288];
  sub_1BF17A7EC();
  OUTLINED_FUNCTION_12_1();
  sub_1BF17AE6C();
  os_unfair_lock_unlock((v1 + 16));
  v6 = v12;
  v0[5] = v12;
  v7 = *(MEMORY[0x1E69E86A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  v0[6] = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_6_1(v8);

  return MEMORY[0x1EEE6DA10](v10, v6, v3, v4, v5);
}

uint64_t sub_1BF072ACC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 48);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1BF072C2C;
  }

  else
  {
    v7 = sub_1BF072BD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF072BD0()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_9();

  return v2();
}

uint64_t sub_1BF072C2C()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_9();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1BF072C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t (*a4)(void, void, char *, uint64_t, void *, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v10 = *a2;
  sub_1BF00974C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v15 = *a1;
  }

  else
  {
    v16 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
    OUTLINED_FUNCTION_14_0();
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = a2;
    v18 = *(v10 + 80);

    v15 = a4(0, 0, v14, a3, v17, v18);
    *a1 = v15;
  }

  *a5 = v15;
}

uint64_t sub_1BF072DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF072DF8, 0, 0);
}

uint64_t sub_1BF072DF8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  v8 = v1;
  v3 = *(v2 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_7_1();
  *(v0 + 32) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t sub_1BF072EA8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_9();

  return v5();
}

uint64_t sub_1BF072F88@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF073084()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_3_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_5(v1);

  return v4(v3);
}

uint64_t sub_1BF07319C()
{
  OUTLINED_FUNCTION_3_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return sub_1BF072DD8(v3, v4, v5, v6);
}

uint64_t sub_1BF07322C()
{
  OUTLINED_FUNCTION_3_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_0(v1);

  return sub_1BF0724B0(v3, v4, v5, v6);
}

uint64_t sub_1BF0732BC()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_3_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_5(v1);

  return v4(v3);
}

void sub_1BF073358(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v4 = v40;
    v7 = sub_1BF075098(v3);
    v8 = 0;
    v9 = v3 + 64;
    v32 = v5;
    v33 = v2;
    v31 = v3 + 72;
    v34 = v3 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_23;
      }

      v37 = v8;
      v38 = v5;
      v36 = v6;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = v3;
      v15 = *(*(v3 + 56) + 8 * v7);
      swift_bridgeObjectRetain_n();
      sub_1BF01716C(v15);
      sub_1BF01716C(v15);

      sub_1BF017214(v15);
      v39 = v15;
      v16 = a2(v12, v13, &v39);
      v18 = v17;
      v19 = v39;

      sub_1BF017214(v19);
      v40 = v4;
      v20 = *(v4 + 16);
      v21 = v4;
      if (v20 >= *(v4 + 24) >> 1)
      {
        sub_1BF00DD60();
        v21 = v40;
      }

      *(v21 + 16) = v20 + 1;
      v22 = v21 + 16 * v20;
      *(v22 + 32) = v16;
      *(v22 + 40) = v18;
      v23 = 1 << *(v14 + 32);
      if (v7 >= v23)
      {
        goto LABEL_24;
      }

      v3 = v14;
      v9 = v34;
      v24 = *(v34 + 8 * v10);
      if ((v24 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      v4 = v21;
      if (*(v3 + 36) != v38)
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v7 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v10 << 6;
        v27 = v10 + 1;
        v28 = (v31 + 8 * v10);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1BF070BD4(v7, v38, v36 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        sub_1BF070BD4(v7, v38, v36 & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v37 + 1;
      v7 = v23;
      v5 = v32;
      if (v37 + 1 == v33)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t JSON.description.getter()
{
  result = 0x7463656A626FLL;
  switch(*v0 >> 61)
  {
    case 1:
      result = OUTLINED_FUNCTION_32_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_38_0();
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_45();
      v5 = 0x65736C6166;
      if (!v6)
      {
        v5 = 1819047278;
      }

      if (v2 == v4)
      {
        result = v3;
      }

      else
      {
        result = v5;
      }

      break;
    default:
      return result;
  }

  return result;
}

void sub_1BF0736D4(uint64_t a1)
{
  v33 = a1;
  v2 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v14 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = v14[2];
      if (!v15)
      {
        goto LABEL_13;
      }

      v34 = MEMORY[0x1E69E7CC0];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF00DD60();
      v32 = v33 + 2;
      if (!__OFADD__(v33, 2))
      {
        v16 = v34;
        v17 = 4;
        do
        {
          v18 = v14;
          v19 = v14[v17];
          sub_1BF01716C(v19);
          v20 = sub_1BF17A2DC();
          v22 = v21;
          v23 = sub_1BF0736D4(v32);
          v25 = v24;
          v35 = v20;
          v36 = v22;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          MEMORY[0x1BFB52000](v23, v25);

          sub_1BF017214(v19);
          v26 = v20;
          v27 = v22;
          v34 = v16;
          v28 = *(v16 + 16);
          if (v28 >= *(v16 + 24) >> 1)
          {
            sub_1BF00DD60();
            v16 = v34;
          }

          *(v16 + 16) = v28 + 1;
          v29 = v16 + 16 * v28;
          *(v29 + 32) = v26;
          *(v29 + 40) = v27;
          ++v17;
          --v15;
          v14 = v18;
        }

        while (v15);

LABEL_13:
        sub_1BF018790(0, &qword_1ED8EE9D0);
        sub_1BF01B738();
        v30 = OUTLINED_FUNCTION_39_2();

        v35 = 2651;
        v36 = v14;
        v31 = OUTLINED_FUNCTION_49();
        MEMORY[0x1BFB52000](v31);

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        MEMORY[0x1BFB52000](10, 0xE100000000000000);

        sub_1BF17A2DC();
        OUTLINED_FUNCTION_60_1();
        MEMORY[0x1BFB52000](v14, v30);

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v7 = 93;
        goto LABEL_14;
      }

      __break(1u);
      return;
    case 2uLL:
      v8 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v35 = 34;
      v36 = 0xE100000000000000;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB52000](v9, v10);

      MEMORY[0x1BFB52000](34, 0xE100000000000000);
      return;
    case 3uLL:
      v11 = v2 & 0x1FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return;
    case 4uLL:
      OUTLINED_FUNCTION_45();
      return;
    default:
      v3 = *(v2 + 16);
      MEMORY[0x1EEE9AC00](a1);
      v4 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF073358(v4, sub_1BF07784C);

      sub_1BF018790(0, &qword_1ED8EE9D0);
      sub_1BF01B738();
      v5 = OUTLINED_FUNCTION_39_2();

      v35 = 2683;
      v36 = &v32;
      v6 = OUTLINED_FUNCTION_49();
      MEMORY[0x1BFB52000](v6);

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB52000](10, 0xE100000000000000);

      sub_1BF17A2DC();
      OUTLINED_FUNCTION_60_1();
      MEMORY[0x1BFB52000](&v32, v5);

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v7 = 125;
LABEL_14:
      MEMORY[0x1BFB52000](v7, 0xE100000000000000);

      return;
  }
}

void JSON.jsonType.getter(char *a1@<X8>)
{
  if (*v1 == 0x8000000000000010)
  {
    v2 = 5;
  }

  else
  {
    v2 = 4;
  }

  if (*v1 >= 0)
  {
    v3 = *v1 >> 61;
  }

  else
  {
    v3 = v2;
  }

  *a1 = v3;
}

uint64_t sub_1BF073B2C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (__OFADD__(a5, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    v8 = *a3;
    v9 = sub_1BF17A2DC();
    MEMORY[0x1BFB52000](v7, a2);
    MEMORY[0x1BFB52000](2112034, 0xE300000000000000);
    result = a5 + 2;
    if (!__OFADD__(a5, 2))
    {
      v10 = sub_1BF0736D4(result);
      MEMORY[0x1BFB52000](v10);

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      MEMORY[0x1BFB52000](34, 0xE100000000000000);

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static JSON.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 61)
  {
    case 1uLL:
      if (v3 >> 61 != 1)
      {
        goto LABEL_24;
      }

      v9 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_42_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v6 = sub_1BF074144(v9, v10);
      goto LABEL_18;
    case 2uLL:
      if (v3 >> 61 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_11;
    case 3uLL:
      if (v3 >> 61 != 3)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (*((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
      {
        OUTLINED_FUNCTION_42_0();
        v7 = 1;
      }

      else
      {
        v7 = sub_1BF17B86C();
        OUTLINED_FUNCTION_42_0();
      }

      goto LABEL_25;
    case 4uLL:
      if (v2 == 0x8000000000000000)
      {
        if (v3 == 0x8000000000000000)
        {
          v7 = 1;
          v2 = 0x8000000000000000;
          v3 = 0x8000000000000000;
          goto LABEL_25;
        }
      }

      else if (v2 == 0x8000000000000008)
      {
        if (v3 == 0x8000000000000008)
        {
          v7 = 1;
          v2 = 0x8000000000000008;
          v3 = 0x8000000000000008;
          goto LABEL_25;
        }
      }

      else if (v3 == 0x8000000000000010)
      {
        v7 = 1;
        v2 = 0x8000000000000010;
        v3 = 0x8000000000000010;
        goto LABEL_25;
      }

LABEL_24:
      OUTLINED_FUNCTION_42_0();
      v7 = 0;
LABEL_25:
      sub_1BF017214(v2);
      sub_1BF017214(v3);
      return v7 & 1;
    default:
      if (v3 >> 61)
      {
        goto LABEL_24;
      }

      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      OUTLINED_FUNCTION_42_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v6 = sub_1BF073EF8(v4, v5);
LABEL_18:
      v7 = v6;

      goto LABEL_25;
  }
}

uint64_t sub_1BF073DD0(uint64_t result, uint64_t a2)
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
    v14 = (*(v3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_1BF00088C(v13);
    if (v18)
    {
      v19 = (*(a2 + 56) + 16 * v17);
      result = *v19;
      if (*v19 == v15 && v19[1] == v16)
      {
        continue;
      }

      result = sub_1BF17B86C();
      if (result)
      {
        continue;
      }
    }

    return 0;
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

unint64_t sub_1BF073EF8(unint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF01716C(v16);
    if (!v14)
    {
      return 1;
    }

    v23 = v16;
    v17 = sub_1BF014CA8();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1BF017214(v16);
      return 0;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    v22 = v20;
    sub_1BF01716C(v20);
    v21 = static JSON.== infix(_:_:)(&v22, &v23);
    sub_1BF017214(v20);
    result = sub_1BF017214(v16);
    if ((v21 & 1) == 0)
    {
      return 0;
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

uint64_t sub_1BF074078(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1BF17B86C() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1BF074144(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v11 = v6;
        v7 = *v4++;
        v10 = v7;
        sub_1BF01716C(v5);
        sub_1BF01716C(v7);
        v8 = static JSON.== infix(_:_:)(&v11, &v10);
        sub_1BF017214(v7);
        sub_1BF017214(v5);
        --v2;
      }

      while ((v8 & 1) != 0 && v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1BF074204(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSON.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50();
  sub_1BF17BBBC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    OUTLINED_FUNCTION_50();
    if (sub_1BF17B8EC())
    {
      v6 = 0x8000000000000010;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v8, v9);
      OUTLINED_FUNCTION_50();
      if (sub_1BF17B8AC())
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0x8000000000000008;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF074654()
{
  result = qword_1ED8ECDD8;
  if (!qword_1ED8ECDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ECDD8);
  }

  return result;
}

void sub_1BF0746A8()
{
  if (!qword_1ED8ECC18)
  {
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ECC18);
    }
  }
}

unint64_t sub_1BF074708()
{
  result = qword_1EBDCB390;
  if (!qword_1EBDCB390)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCB390);
  }

  return result;
}

unsigned __int8 *JSON.encode(to:)(void *a1)
{
  v3 = sub_1BF17B2BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_50();
  result = sub_1BF17BBFC();
  switch(v8 >> 61)
  {
    case 1uLL:
      v56[0] = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      OUTLINED_FUNCTION_22_0();
      sub_1BF018790(0, &qword_1ED8ECBF8);
      OUTLINED_FUNCTION_21_2();
      sub_1BF074ECC(v27, v28);
      goto LABEL_28;
    case 2uLL:
      v13 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      __swift_mutable_project_boxed_opaque_existential_1(v58, v58[3]);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF17B91C();

      return __swift_destroy_boxed_opaque_existential_1(v58);
    case 3uLL:
      v16 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v18 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v18 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        v52 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        goto LABEL_82;
      }

      if ((v15 & 0x1000000000000000) != 0)
      {
        v53 = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        swift_bridgeObjectRetain_n();
        OUTLINED_FUNCTION_59_0();
        sub_1BF0750D8();
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          goto LABEL_87;
        }

LABEL_82:
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v42 = OUTLINED_FUNCTION_59_0();
        sub_1BF052280(v42, v43);
        if (v44)
        {
          v45 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1BF17BBEC();
          v56[0] = 0;
          v56[1] = 0xE000000000000000;
          sub_1BF17B1EC();

          strcpy(v56, "Number value ");
          HIWORD(v56[1]) = -4864;
          v46 = OUTLINED_FUNCTION_59_0();
          MEMORY[0x1BFB52000](v46);
          MEMORY[0x1BFB52000](0xD000000000000020, 0x80000001BF18C6A0);
          sub_1BF17B27C();
          v47 = sub_1BF17B2CC();
          swift_allocError();
          v49 = v48;
          sub_1BF075560();
          v51 = *(v50 + 48);
          *(v49 + 3) = MEMORY[0x1E69E6158];
          *v49 = v16;
          *(v49 + 1) = v15;
          (*(v4 + 16))(&v49[v51], v7, v3);
          (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6B30], v47);
          swift_willThrow();
          (*(v4 + 8))(v7, v3);
        }

        else
        {

          OUTLINED_FUNCTION_22_0();
          OUTLINED_FUNCTION_49();
          sub_1BF17B93C();
        }

        return __swift_destroy_boxed_opaque_existential_1(v58);
      }

      if ((v15 & 0x2000000000000000) == 0)
      {
        if ((v16 & 0x1000000000000000) != 0)
        {
          v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_59_0();
          v19 = sub_1BF17B2FC();
        }

        result = OUTLINED_FUNCTION_23_0(v19);
        if (v22)
        {
          if (v20 >= 1)
          {
            if (v20 != 1)
            {
              if (result)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v22 & v23)
                  {
                    goto LABEL_80;
                  }

                  OUTLINED_FUNCTION_8_1();
                  if (!v22 || __OFADD__(v32, v31))
                  {
                    goto LABEL_80;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v22)
                  {
                    goto LABEL_81;
                  }
                }
              }

              goto LABEL_71;
            }

            goto LABEL_80;
          }

          goto LABEL_92;
        }

        if (v21 != 45)
        {
          if (v20)
          {
            v35 = 0;
            if (result)
            {
              v36 = 10;
              while (1)
              {
                v37 = *result - 48;
                if (v37 > 9)
                {
                  goto LABEL_80;
                }

                v38 = 10 * v35;
                if ((v35 * v36) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_80;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  goto LABEL_80;
                }

                result = OUTLINED_FUNCTION_27_0(result);
                if (v22)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_71;
          }

LABEL_80:
          v26 = 1;
LABEL_81:
          v57 = v26;
          v41 = v26;
          _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
          if (v41)
          {
            goto LABEL_82;
          }

LABEL_87:

          OUTLINED_FUNCTION_22_0();
          sub_1BF17B94C();
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        if (v20 >= 1)
        {
          if (v20 != 1)
          {
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_15();
                if (!v22 & v23)
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_8_1();
                if (!v22 || __OFSUB__(v25, v24))
                {
                  goto LABEL_80;
                }

                OUTLINED_FUNCTION_44();
                if (v22)
                {
                  goto LABEL_81;
                }
              }
            }

LABEL_71:
            v26 = 0;
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v56[0] = *((v8 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v56[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v16 != 43)
      {
        if (v16 != 45)
        {
          if (v17)
          {
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v22 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_8_1();
              if (!v22 || __OFADD__(v40, v39))
              {
                break;
              }

              OUTLINED_FUNCTION_44();
              if (v22)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_80;
        }

        if (v17)
        {
          if (v17 != 1)
          {
            OUTLINED_FUNCTION_46_0();
            while (1)
            {
              OUTLINED_FUNCTION_15();
              if (!v22 & v23)
              {
                break;
              }

              OUTLINED_FUNCTION_8_1();
              if (!v22 || __OFSUB__(v30, v29))
              {
                break;
              }

              OUTLINED_FUNCTION_44();
              if (v22)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_80;
        }

        goto LABEL_91;
      }

      if (v17)
      {
        if (v17 != 1)
        {
          OUTLINED_FUNCTION_46_0();
          while (1)
          {
            OUTLINED_FUNCTION_15();
            if (!v22 & v23)
            {
              break;
            }

            OUTLINED_FUNCTION_8_1();
            if (!v22 || __OFADD__(v34, v33))
            {
              break;
            }

            OUTLINED_FUNCTION_44();
            if (v22)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_93:
      __break(1u);
      return result;
    case 4uLL:
      if (v8 == 0x8000000000000000 || v8 == 0x8000000000000008)
      {
        OUTLINED_FUNCTION_22_0();
        sub_1BF17B92C();
      }

      else
      {
        OUTLINED_FUNCTION_22_0();
        OUTLINED_FUNCTION_49();
        sub_1BF17B96C();
      }

      return __swift_destroy_boxed_opaque_existential_1(v58);
    default:
      v56[0] = *(v8 + 16);
      OUTLINED_FUNCTION_22_0();
      sub_1BF0746A8();
      OUTLINED_FUNCTION_21_2();
      sub_1BF074E00(v11, v12);
LABEL_28:
      sub_1BF17B95C();
      return __swift_destroy_boxed_opaque_existential_1(v58);
  }
}

uint64_t sub_1BF074E00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BF0746A8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF074E78()
{
  result = qword_1ED8ECDE0[0];
  if (!qword_1ED8ECDE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8ECDE0);
  }

  return result;
}

uint64_t sub_1BF074ECC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1BF018790(255, &qword_1ED8ECBF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

TeaFoundation::JSONType_optional __swiftcall JSONType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF17B57C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JSONType.rawValue.getter()
{
  result = 0x7463656A626FLL;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_32_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_38_0();
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 1819242338;
      break;
    case 5:
      result = 1819047278;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF075070@<X0>(uint64_t *a1@<X8>)
{
  result = JSONType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF075098(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1BF17B0CC();
  v4 = *(a1 + 36);
  return result;
}

void sub_1BF0750D8()
{
  OUTLINED_FUNCTION_31_2();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v17)
          {
            OUTLINED_FUNCTION_26_0();
            while (1)
            {
              OUTLINED_FUNCTION_25_0();
              if (v14 && v21 < v19)
              {
                v22 = -48;
              }

              else if (v21 < 0x41 || v21 >= v18)
              {
                OUTLINED_FUNCTION_16_1();
                if (!v14 || v21 >= v23)
                {
                  goto LABEL_123;
                }

                v22 = -87;
              }

              else
              {
                v22 = -55;
              }

              if ((v20 * v1) >> 64 == (v20 * v1) >> 63 && !__OFADD__(v20 * v1, (v21 + v22)))
              {
                OUTLINED_FUNCTION_14_3();
                if (!v8)
                {
                  continue;
                }
              }

              goto LABEL_123;
            }
          }
        }

        goto LABEL_123;
      }

      goto LABEL_127;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v24)
        {
          while (1)
          {
            v25 = OUTLINED_FUNCTION_37(v24);
            if (v14 && v30 < v28)
            {
              v31 = -48;
            }

            else if (v30 < 0x41 || v30 >= v27)
            {
              if (v30 < 0x61 || v30 >= v26)
              {
                goto LABEL_123;
              }

              v31 = -87;
            }

            else
            {
              v31 = -55;
            }

            if ((v29 * v1) >> 64 == (v29 * v1) >> 63 && !__OFADD__(v29 * v1, (v30 + v31)))
            {
              v24 = OUTLINED_FUNCTION_27_0(v25);
              if (!v8)
              {
                continue;
              }
            }

            goto LABEL_123;
          }
        }
      }

      goto LABEL_123;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          OUTLINED_FUNCTION_26_0();
          while (1)
          {
            OUTLINED_FUNCTION_25_0();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            if ((v12 * v1) >> 64 == (v12 * v1) >> 63 && !__OFSUB__(v12 * v1, (v13 + v15)))
            {
              OUTLINED_FUNCTION_14_3();
              if (!v8)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_123:

      return;
    }

    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  OUTLINED_FUNCTION_4_5();
  if (!v8)
  {
    if (v33 != 45)
    {
      if (v32)
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_41();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v49 < v48)
          {
            v50 = -48;
          }

          else if (v49 < 0x41 || v49 >= v47)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v14 || v49 >= v51)
            {
              goto LABEL_123;
            }

            v50 = -87;
          }

          else
          {
            v50 = -55;
          }

          if ((v46 * v1) >> 64 == (v46 * v1) >> 63 && !__OFADD__(v46 * v1, (v49 + v50)))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_123;
        }
      }

      goto LABEL_123;
    }

    if (v32)
    {
      if (v32 != 1)
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_5_1();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v37 < v36)
          {
            v38 = -48;
          }

          else if (v37 < 0x41 || v37 >= v35)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v14 || v37 >= v39)
            {
              goto LABEL_123;
            }

            v38 = -87;
          }

          else
          {
            v38 = -55;
          }

          if ((v34 * v1) >> 64 == (v34 * v1) >> 63 && !__OFSUB__(v34 * v1, (v37 + v38)))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v8)
            {
              continue;
            }
          }

          goto LABEL_123;
        }
      }

      goto LABEL_123;
    }

    goto LABEL_126;
  }

  if (v32)
  {
    if (v32 != 1)
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_5_1();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if (v14 && v43 < v42)
        {
          v44 = -48;
        }

        else if (v43 < 0x41 || v43 >= v41)
        {
          OUTLINED_FUNCTION_16_1();
          if (!v14 || v43 >= v45)
          {
            goto LABEL_123;
          }

          v44 = -87;
        }

        else
        {
          v44 = -55;
        }

        if ((v40 * v1) >> 64 == (v40 * v1) >> 63 && !__OFADD__(v40 * v1, (v43 + v44)))
        {
          OUTLINED_FUNCTION_9_5();
          if (!v8)
          {
            continue;
          }
        }

        goto LABEL_123;
      }
    }

    goto LABEL_123;
  }

LABEL_128:
  __break(1u);
}

void sub_1BF075560()
{
  if (!qword_1EBDCB398)
  {
    sub_1BF17B2BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBDCB398);
    }
  }
}

unint64_t sub_1BF0755D0()
{
  result = qword_1EBDCB3A0;
  if (!qword_1EBDCB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB3A0);
  }

  return result;
}

unint64_t *sub_1BF075634(unint64_t *result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for JSONType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSONType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BF0757C0()
{
  OUTLINED_FUNCTION_34();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v29)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v19)
          {
            OUTLINED_FUNCTION_19_2();
            OUTLINED_FUNCTION_40_0();
            while (1)
            {
              OUTLINED_FUNCTION_36_0();
              if (v14 && v24 < v21)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v20)
              {
                OUTLINED_FUNCTION_24_3();
                if (!v14 || v24 >= v26)
                {
                  goto LABEL_131;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              v27 = v22 * v23;
              v28 = (v22 * v23);
              if (v28 == v27 && (v28 + v24 + v25) == v28 + (v24 + v25))
              {
                OUTLINED_FUNCTION_14_3();
                if (!v29)
                {
                  continue;
                }
              }

              goto LABEL_131;
            }
          }
        }

        goto LABEL_131;
      }

      goto LABEL_135;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v30 ^ v31 | v29)
        {
          v33 = v36;
        }

        if (v30 ^ v31 | v29)
        {
          v34 = 65;
        }

        if (!(v30 ^ v31 | v29))
        {
          v35 = 58;
        }

        if (v32)
        {
          v37 = 0;
          v38 = v1;
          while (1)
          {
            v39 = *v32;
            if (v39 < 0x30 || v39 >= v35)
            {
              if (v39 < 0x41 || v39 >= v34)
              {
                if (v39 < 0x61 || v39 >= v33)
                {
                  goto LABEL_131;
                }

                v40 = -87;
              }

              else
              {
                v40 = -55;
              }
            }

            else
            {
              v40 = -48;
            }

            v41 = v37 * v38;
            v42 = (v37 * v38);
            if (v42 == v41 && (v42 + v39 + v40) == v42 + (v39 + v40))
            {
              v32 = OUTLINED_FUNCTION_27_0(v32);
              if (!v29)
              {
                continue;
              }
            }

            goto LABEL_131;
          }
        }
      }

      goto LABEL_131;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v8)
        {
          OUTLINED_FUNCTION_19_2();
          OUTLINED_FUNCTION_40_0();
          while (1)
          {
            OUTLINED_FUNCTION_36_0();
            if (v14 && v13 < v10)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v9)
            {
              OUTLINED_FUNCTION_24_3();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            v17 = v11 * v12;
            v18 = (v11 * v12);
            if (v18 == v17 && (v18 - (v13 + v15)) == v18 - (v13 + v15))
            {
              OUTLINED_FUNCTION_14_3();
              if (!v29)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_131:

      return;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_7_4();
  if (!v29)
  {
    if (v44 != 45)
    {
      if (v43)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_40_0();
        while (1)
        {
          OUTLINED_FUNCTION_33_0();
          if (v14 && v67 < v65)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_24_3();
            if (!v14 || v67 >= v69)
            {
              goto LABEL_131;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          v70 = v63 * v66;
          v71 = (v63 * v66);
          if (v71 == v70 && (v71 + v67 + v68) == v71 + (v67 + v68))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_131;
        }
      }

      goto LABEL_131;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_40_0();
        while (1)
        {
          OUTLINED_FUNCTION_33_0();
          if (v14 && v49 < v47)
          {
            v50 = -48;
          }

          else if (v49 < 0x41 || v49 >= v46)
          {
            OUTLINED_FUNCTION_24_3();
            if (!v14 || v49 >= v51)
            {
              goto LABEL_131;
            }

            v50 = -87;
          }

          else
          {
            v50 = -55;
          }

          v52 = v45 * v48;
          v53 = (v45 * v48);
          if (v53 == v52 && (v53 - (v49 + v50)) == v53 - (v49 + v50))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_131;
        }
      }

      goto LABEL_131;
    }

    goto LABEL_134;
  }

  if (v43)
  {
    if (v43 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_40_0();
      while (1)
      {
        OUTLINED_FUNCTION_33_0();
        if (v14 && v58 < v56)
        {
          v59 = -48;
        }

        else if (v58 < 0x41 || v58 >= v55)
        {
          OUTLINED_FUNCTION_24_3();
          if (!v14 || v58 >= v60)
          {
            goto LABEL_131;
          }

          v59 = -87;
        }

        else
        {
          v59 = -55;
        }

        v61 = v54 * v57;
        v62 = (v54 * v57);
        if (v62 == v61 && (v62 + v58 + v59) == v62 + (v58 + v59))
        {
          OUTLINED_FUNCTION_9_5();
          if (!v29)
          {
            continue;
          }
        }

        goto LABEL_131;
      }
    }

    goto LABEL_131;
  }

LABEL_136:
  __break(1u);
}

void sub_1BF075C98()
{
  OUTLINED_FUNCTION_34();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v29)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v19)
          {
            OUTLINED_FUNCTION_19_2();
            OUTLINED_FUNCTION_43();
            while (1)
            {
              OUTLINED_FUNCTION_36_0();
              if (v14 && v24 < v21)
              {
                v25 = -48;
              }

              else if (v24 < 0x41 || v24 >= v20)
              {
                OUTLINED_FUNCTION_24_3();
                if (!v14 || v24 >= v26)
                {
                  goto LABEL_131;
                }

                v25 = -87;
              }

              else
              {
                v25 = -55;
              }

              v27 = v22 * v23;
              v28 = (v22 * v23);
              if (v28 == v27 && (v28 + (v24 + v25)) == v28 + (v24 + v25))
              {
                OUTLINED_FUNCTION_14_3();
                if (!v29)
                {
                  continue;
                }
              }

              goto LABEL_131;
            }
          }
        }

        goto LABEL_131;
      }

      goto LABEL_135;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v30 ^ v31 | v29)
        {
          v33 = v36;
        }

        if (v30 ^ v31 | v29)
        {
          v34 = 65;
        }

        if (!(v30 ^ v31 | v29))
        {
          v35 = 58;
        }

        if (v32)
        {
          v37 = 0;
          v38 = v1;
          while (1)
          {
            v39 = *v32;
            if (v39 < 0x30 || v39 >= v35)
            {
              if (v39 < 0x41 || v39 >= v34)
              {
                if (v39 < 0x61 || v39 >= v33)
                {
                  goto LABEL_131;
                }

                v40 = -87;
              }

              else
              {
                v40 = -55;
              }
            }

            else
            {
              v40 = -48;
            }

            v41 = v37 * v38;
            v42 = (v37 * v38);
            if (v42 == v41 && (v42 + (v39 + v40)) == v42 + (v39 + v40))
            {
              v32 = OUTLINED_FUNCTION_27_0(v32);
              if (!v29)
              {
                continue;
              }
            }

            goto LABEL_131;
          }
        }
      }

      goto LABEL_131;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v8)
        {
          OUTLINED_FUNCTION_19_2();
          OUTLINED_FUNCTION_43();
          while (1)
          {
            OUTLINED_FUNCTION_36_0();
            if (v14 && v13 < v10)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v9)
            {
              OUTLINED_FUNCTION_24_3();
              if (!v14 || v13 >= v16)
              {
                break;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            v17 = v11 * v12;
            v18 = (v11 * v12);
            if (v18 == v17 && (v18 - (v13 + v15)) == v18 - (v13 + v15))
            {
              OUTLINED_FUNCTION_14_3();
              if (!v29)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_131:

      return;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  OUTLINED_FUNCTION_7_4();
  if (!v29)
  {
    if (v44 != 45)
    {
      if (v43)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_43();
        while (1)
        {
          OUTLINED_FUNCTION_33_0();
          if (v14 && v67 < v65)
          {
            v68 = -48;
          }

          else if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_24_3();
            if (!v14 || v67 >= v69)
            {
              goto LABEL_131;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }

          v70 = v63 * v66;
          v71 = (v63 * v66);
          if (v71 == v70 && (v71 + (v67 + v68)) == v71 + (v67 + v68))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_131;
        }
      }

      goto LABEL_131;
    }

    if (v43)
    {
      if (v43 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_43();
        while (1)
        {
          OUTLINED_FUNCTION_33_0();
          if (v14 && v49 < v47)
          {
            v50 = -48;
          }

          else if (v49 < 0x41 || v49 >= v46)
          {
            OUTLINED_FUNCTION_24_3();
            if (!v14 || v49 >= v51)
            {
              goto LABEL_131;
            }

            v50 = -87;
          }

          else
          {
            v50 = -55;
          }

          v52 = v45 * v48;
          v53 = (v45 * v48);
          if (v53 == v52 && (v53 - (v49 + v50)) == v53 - (v49 + v50))
          {
            OUTLINED_FUNCTION_9_5();
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_131;
        }
      }

      goto LABEL_131;
    }

    goto LABEL_134;
  }

  if (v43)
  {
    if (v43 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_43();
      while (1)
      {
        OUTLINED_FUNCTION_33_0();
        if (v14 && v58 < v56)
        {
          v59 = -48;
        }

        else if (v58 < 0x41 || v58 >= v55)
        {
          OUTLINED_FUNCTION_24_3();
          if (!v14 || v58 >= v60)
          {
            goto LABEL_131;
          }

          v59 = -87;
        }

        else
        {
          v59 = -55;
        }

        v61 = v54 * v57;
        v62 = (v54 * v57);
        if (v62 == v61 && (v62 + (v58 + v59)) == v62 + (v58 + v59))
        {
          OUTLINED_FUNCTION_9_5();
          if (!v29)
          {
            continue;
          }
        }

        goto LABEL_131;
      }
    }

    goto LABEL_131;
  }

LABEL_136:
  __break(1u);
}

void sub_1BF076170()
{
  OUTLINED_FUNCTION_31_2();
  sub_1BF17A30C();
  OUTLINED_FUNCTION_29_0();
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_13_0();
    sub_1BF0EB9D4();
    OUTLINED_FUNCTION_18();
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v0 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = OUTLINED_FUNCTION_6_2();
    }

    else
    {
      OUTLINED_FUNCTION_13_0();
      v5 = sub_1BF17B2FC();
    }

    OUTLINED_FUNCTION_23_0(v5);
    if (v8)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v18)
          {
            OUTLINED_FUNCTION_10_6();
            do
            {
              OUTLINED_FUNCTION_25_0();
              if (v14 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_12_0();
                if (!v14 || v22 >= v24)
                {
                  goto LABEL_119;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              v25 = v21 * v1;
              if (v25 != v25 || __OFADD__(v25, (v22 + v23)))
              {
                goto LABEL_118;
              }

              OUTLINED_FUNCTION_14_3();
            }

            while (!v8);
LABEL_46:
            OUTLINED_FUNCTION_51();
            goto LABEL_119;
          }

          goto LABEL_64;
        }

LABEL_118:
        OUTLINED_FUNCTION_48();
        goto LABEL_119;
      }

      goto LABEL_123;
    }

    if (v7 != 45)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_3_1();
        if (v26)
        {
          do
          {
            v27 = OUTLINED_FUNCTION_37(v26);
            if (v14 && v32 < v30)
            {
              v33 = -48;
            }

            else if (v32 < 0x41 || v32 >= v29)
            {
              if (v32 < 0x61 || v32 >= v28)
              {
                goto LABEL_119;
              }

              v33 = -87;
            }

            else
            {
              v33 = -55;
            }

            v34 = v31 * v1;
            if (v34 != v34 || __OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_118;
            }

            v26 = OUTLINED_FUNCTION_27_0(v27);
          }

          while (!v8);
          OUTLINED_FUNCTION_52();
          goto LABEL_119;
        }

        goto LABEL_64;
      }

      goto LABEL_118;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          OUTLINED_FUNCTION_10_6();
          while (1)
          {
            OUTLINED_FUNCTION_25_0();
            if (v14 && v13 < v11)
            {
              v15 = -48;
            }

            else if (v13 < 0x41 || v13 >= v10)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v14 || v13 >= v16)
              {
                goto LABEL_119;
              }

              v15 = -87;
            }

            else
            {
              v15 = -55;
            }

            v17 = v12 * v1;
            if (v17 != v17 || __OFSUB__(v17, (v13 + v15)))
            {
              goto LABEL_118;
            }

            OUTLINED_FUNCTION_14_3();
            if (v8)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        OUTLINED_FUNCTION_47();
LABEL_119:

        OUTLINED_FUNCTION_54_0();
        return;
      }

      goto LABEL_118;
    }

    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  OUTLINED_FUNCTION_4_5();
  if (!v8)
  {
    if (v36 != 45)
    {
      if (v35)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_41();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if ((!v14 || v54 >= v53) && (v54 < 0x41 || v54 >= v52))
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v56 >= v55)
            {
              goto LABEL_119;
            }
          }

          if (v51 * v1 != v51 * v1)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_56();
          if (v50)
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_5_1();
        while (1)
        {
          OUTLINED_FUNCTION_11_1();
          if (v14 && v40 < v39)
          {
            v41 = -48;
          }

          else if (v40 < 0x41 || v40 >= v38)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v14 || v40 >= v42)
            {
              goto LABEL_119;
            }

            v41 = -87;
          }

          else
          {
            v41 = -55;
          }

          v43 = v37 * v1;
          if (v43 != v43 || __OFSUB__(v43, (v40 + v41)))
          {
            goto LABEL_118;
          }

          OUTLINED_FUNCTION_9_5();
          if (v8)
          {
            goto LABEL_117;
          }
        }
      }

      goto LABEL_118;
    }

    goto LABEL_122;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      OUTLINED_FUNCTION_5_1();
      while (1)
      {
        OUTLINED_FUNCTION_11_1();
        if ((!v14 || v47 >= v46) && (v47 < 0x41 || v47 >= v45))
        {
          OUTLINED_FUNCTION_12_0();
          if (!v14 || v49 >= v48)
          {
            goto LABEL_119;
          }
        }

        if (v44 * v1 != v44 * v1)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_56();
        if (v50)
        {
          goto LABEL_118;
        }

        OUTLINED_FUNCTION_9_5();
        if (v8)
        {
LABEL_117:
          OUTLINED_FUNCTION_53_0();
          goto LABEL_119;
        }
      }
    }

    goto LABEL_118;
  }

LABEL_124:
  __break(1u);
}