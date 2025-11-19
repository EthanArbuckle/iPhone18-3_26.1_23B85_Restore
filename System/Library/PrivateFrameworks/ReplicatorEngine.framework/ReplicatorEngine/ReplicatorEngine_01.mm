uint64_t sub_1DEE27C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE27C60(uint64_t a1)
{
  v2 = *v1;
  v27 = a1;
  v28 = v2;
  v3 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1[29];
  *v11 = v12;
  v13 = v7[13];
  v26 = *MEMORY[0x1E69E8020];
  v25 = v13;
  v13(v11, v9);
  v24 = v12;
  LOBYTE(v12) = sub_1DEF8D7B8();
  v14 = v7[1];
  result = v14(v11, v6);
  if (v12)
  {
    sub_1DEEACA70(v27, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReplicatorMessage.Handshake.Request);
    v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    sub_1DEEAB218(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReplicatorMessage.Handshake.Request);
    *(v17 + ((v5 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v18 = v25;
    *v11 = v24;
    v18(v11, v26, v6);

    LOBYTE(v16) = sub_1DEF8D7B8();
    result = v14(v11, v6);
    if (v16)
    {
      v19 = v1[63];
      v20 = v1[64];
      __swift_project_boxed_opaque_existential_1(v1 + 60, v19);
      v21 = swift_allocObject();
      v21[2] = v1;
      v21[3] = sub_1DEEAA960;
      v21[4] = v17;
      v22 = *(v20 + 8);

      v22(sub_1DEEACE1C, v21, v19, v20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE27FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE28028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE28090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE280F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PinnedIdentityManager.fetchIdentityBlob(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D698();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DEF8D6D8();
  v10 = *(v36 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2[6];
  v15 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v14);
  if ((*(v15 + 16))(v14, v15))
  {
    v16 = v2[8];
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    v43 = sub_1DEEE5A20;
    v44 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DEE3F0C0;
    v42 = &block_descriptor_6;
    v18 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v13, v9, v18);
    _Block_release(v18);
    (*(v37 + 8))(v9, v6);
    (*(v10 + 8))(v13, v36);
  }

  else
  {
    v34 = a1;
    v35 = v10;
    v19 = v13;
    v20 = v9;
    v21 = v6;
    v22 = v36;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v23 = sub_1DEF8D508();
    __swift_project_value_buffer(v23, qword_1ECDF6028);
    v24 = sub_1DEF8D4D8();
    v25 = sub_1DEF8DC98();
    v26 = v20;
    v27 = v19;
    if (os_log_type_enabled(v24, v25))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DEE0F000, v24, v25, "Cannot fetch IDS identity blob before first unlock", v28, 2u);
      MEMORY[0x1E12CCD70](v28, -1, -1);
    }

    v29 = v3[9];
    v30 = swift_allocObject();
    *(v30 + 16) = v34;
    *(v30 + 24) = a2;
    v43 = sub_1DEEE59F0;
    v44 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1DEE3F0C0;
    v42 = &block_descriptor_8;
    v31 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v27, v26, v31);
    _Block_release(v31);
    (*(v37 + 8))(v26, v21);
    (*(v35 + 8))(v27, v22);
  }
}

uint64_t sub_1DEE286E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE28720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = sub_1DEF8E888();
  if (v9)
  {
    v10 = sub_1DEF8E868();
    v11 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    *&v16 = v10;
    *(&v16 + 1) = v12;
  }

  else
  {
    v15 = MEMORY[0x1E69E6530];
    *&v14 = v8;
    sub_1DEE117C0(&v14, &v16);
    v11 = v17;
  }

  __swift_project_boxed_opaque_existential_1(&v16, v11);
  [v5 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(&v16);
}

void sub_1DEE287F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  sub_1DEE28720(v7, a2, a3);
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF907F0;
  v10 = *(a3 + 16);
  *(inited + 56) = v10;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a2, v10);
  v12 = v7;

  sub_1DEE2262C(inited);
  v14 = v4[2];
  v15 = *(v4 + 24);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();

  v13 = v12;
  swift_getWitnessTable();
  sub_1DEF8E2C8();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DEE289C0(void *a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5498, &qword_1DEF98900);
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v35 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54A0, &qword_1DEF98908);
  v42 = *(v44 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v35 - v5;
  v38 = type metadata accessor for ReplicatorMessage.Sync(0);
  v6 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54A8, &qword_1DEF98910);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v35 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v12 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReplicatorMessage(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54B0, &qword_1DEF98918);
  v19 = *(v47 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v22 = &v35 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6D018();
  sub_1DEF8E858();
  sub_1DEF6E6BC(v46, v18, type metadata accessor for ReplicatorMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v18;
      v26 = v39;
      sub_1DEF6E54C(v25, v39, type metadata accessor for ReplicatorMessage.Sync);
      v49 = 1;
      sub_1DEF6D114();
      v27 = v40;
      v28 = v47;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE54C0, type metadata accessor for ReplicatorMessage.Sync);
      v29 = v44;
      sub_1DEF8E298();
      (*(v42 + 8))(v27, v29);
      sub_1DEF6E5B4(v26, type metadata accessor for ReplicatorMessage.Sync);
    }

    else
    {
      v50 = 2;
      sub_1DEF6D06C();
      v33 = v41;
      v28 = v47;
      sub_1DEF8E248();
      sub_1DEE28FF4();
      v34 = v45;
      sub_1DEF8E298();
      (*(v43 + 8))(v33, v34);
    }

    return (*(v19 + 8))(v22, v28);
  }

  else
  {
    sub_1DEF6E54C(v18, v14, type metadata accessor for ReplicatorMessage.Handshake);
    v48 = 0;
    sub_1DEF6D1D0();
    v30 = v47;
    sub_1DEF8E248();
    sub_1DEF6D188(&qword_1ECDE54C8, type metadata accessor for ReplicatorMessage.Handshake);
    v31 = v37;
    sub_1DEF8E298();
    (*(v36 + 8))(v11, v31);
    sub_1DEF6E5B4(v14, type metadata accessor for ReplicatorMessage.Handshake);
    return (*(v19 + 8))(v22, v30);
  }
}

unint64_t sub_1DEE28FF4()
{
  result = qword_1ECDE54B8;
  if (!qword_1ECDE54B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54B8);
  }

  return result;
}

uint64_t sub_1DEE29070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a2;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = *(v11 + 16);
  v14(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v16 = v25[0];
  }

  else
  {
    v23 = a3;
    v24 = v5;
    v17 = *(v5 + 16);
    v18 = *(v5 + 24);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v17;
    *(inited + 24) = v18;
    v25[3] = a4;
    v25[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v14(boxed_opaque_existential_1, a1, a4);
    v16 = sub_1DEE29274(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    if (v6)
    {
      return result;
    }

    a3 = v23;
  }

  sub_1DEE28720(v16, v26, a3);
  return swift_unknownObjectRelease();
}

unint64_t sub_1DEE29204()
{
  result = qword_1ED7863D8;
  if (!qword_1ED7863D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7863D8);
  }

  return result;
}

uint64_t sub_1DEE29274(void *a1)
{
  v4 = sub_1DEF8DF88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE29594(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58B0, &qword_1DEF9A6D0);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    return v26[6];
  }

  v25 = v5;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = type metadata accessor for PropertyListTypeEncoder.RootEncoder();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v10;
  *(v13 + 32) = v11;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26[3] = v12;
  v26[4] = sub_1DEE2961C(&qword_1ED7863D0);
  v26[0] = v13;

  sub_1DEF8D8A8();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v15 = *(v13 + 16);
    if (v15)
    {
      v16 = *(v13 + 16);
      swift_unknownObjectRetain();

      return v15;
    }

    else
    {
      sub_1DEF8DF48();
      v17 = sub_1DEF8DF98();
      swift_allocError();
      v19 = v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58B8, &qword_1DEF9A6D8) + 48);
      v21 = a1[3];
      v22 = __swift_project_boxed_opaque_existential_1(a1, v21);
      v19[3] = v21;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v22, v21);
      v24 = v25;
      (*(v25 + 16))(v19 + v20, v8, v4);
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B30], v17);
      swift_willThrow();

      return (*(v24 + 8))(v8, v4);
    }
  }
}

uint64_t sub_1DEE29594(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DEE2961C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PropertyListTypeEncoder.RootEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE29660(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5540, &qword_1DEF98948);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE29774();
  sub_1DEF8E858();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DEE29774()
{
  result = qword_1ECDE5548;
  if (!qword_1ECDE5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5548);
  }

  return result;
}

uint64_t sub_1DEE297EC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
  v1;
  swift_unknownObjectRelease();
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();
  swift_getWitnessTable();
  return sub_1DEF8E2C8();
}

uint64_t sub_1DEE298C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE29904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v46 - v13 + 24;
  v46[3] = type metadata accessor for ReplicatorMessage(0);
  v46[4] = sub_1DEE2BAF8(&qword_1ECDE3DA8, type metadata accessor for ReplicatorMessage);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_1DEEACA70(a1, boxed_opaque_existential_1, type metadata accessor for ReplicatorMessage);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = 0;
  v17 = sub_1DEE29274(v46);
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v18 = sub_1DEF8D508();
    __swift_project_value_buffer(v18, qword_1ECDF6028);

    v19 = v5;
    v20 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DC98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v46[0] = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1DEE12A5C(v6[66], v6[67], v46);
      *(v22 + 12) = 2082;
      v46[6] = v5;
      v24 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
      v25 = sub_1DEF8D988();
      v27 = sub_1DEE12A5C(v25, v26, v46);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1DEE0F000, v20, v21, "(%{public}s) Failed to encode message: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v23, -1, -1);
      MEMORY[0x1E12CCD70](v22, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v29 = sub_1DEE1187C(v17);
    v31 = v30;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1DEE17214(a3, v14, &unk_1ECDE3E80, &unk_1DEF90970);
    v32 = v6[32];
    if (v32)
    {
      v45 = v6[31];
      v33 = v32;
    }

    else
    {
      v34 = v6[22];
      v35 = v6[23];
      ObjectType = swift_getObjectType();
      v37 = (*(v35 + 16))(ObjectType, v35);
      if (v38)
      {
        v33 = v38;
        v45 = v37;
      }

      else
      {
        v33 = 0x80000001DEF9BCA0;
        v45 = 0xD000000000000016;
      }
    }

    sub_1DEF8D3E8();
    v39 = type metadata accessor for Message();
    v40 = v39[5];
    v41 = sub_1DEF8D3F8();
    (*(*(v41 - 8) + 56))(a4 + v40, 1, 1, v41);
    result = sub_1DEE29D60(v14, a4 + v40, &unk_1ECDE3E80, &unk_1DEF90970);
    v42 = (a4 + v39[6]);
    *v42 = 0x7065526574617453;
    v42[1] = 0xEF726F746163696CLL;
    v43 = (a4 + v39[7]);
    *v43 = v45;
    v43[1] = v33;
    *(a4 + v39[8]) = a2;
    v44 = (a4 + v39[9]);
    *v44 = v29;
    v44[1] = v31;
  }

  return result;
}

uint64_t sub_1DEE29D60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1DEE29DC8(uint64_t a1, uint64_t a2)
{
  v197 = a2;
  v225 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v188 = &v186 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v196 = &v186 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v220 = &v186 - v11;
  v219 = type metadata accessor for PairingRelationship();
  v218 = *(v219 - 8);
  v12 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v191 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v216 = &v186 - v15;
  v16 = type metadata accessor for Message();
  v195 = *(v16 - 8);
  v17 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v186 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v190 = &v186 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v199 = &v186 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v201 = &v186 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v213 = &v186 - v29;
  v214 = sub_1DEF8D3F8();
  v215 = *(v214 - 8);
  v30 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v198 = &v186 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v209 = &v186 - v33;
  v34 = type metadata accessor for ReplicatorMessage.Sync(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v212 = &v186 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v194 = &v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v40 = *(*(v193 - 8) + 64);
  MEMORY[0x1EEE9AC00](v193);
  v203 = &v186 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v42 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v202 = &v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ReplicatorMessage.Handshake(0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v211 = &v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v217 = &v186 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D00, &unk_1DEF91610);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v186 - v51;
  v224 = type metadata accessor for ReplicatorMessage(0);
  v53 = *(v224 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v200 = &v186 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v208 = &v186 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v221 = &v186 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v186 - v61;
  v63 = sub_1DEF8D788();
  v64 = *(v63 - 8);
  v65 = v64[8];
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = (&v186 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v223 = v2;
  v69 = *(v2 + 232);
  *v68 = v69;
  v70 = v64[13];
  v205 = *MEMORY[0x1E69E8020];
  v206 = v70;
  v70(v68, v66);
  v204 = v69;
  LOBYTE(v69) = sub_1DEF8D7B8();
  v207 = v64[1];
  v207(v68, v63);
  if (v69)
  {
    v210 = v44;
    v222 = v62;
    v71 = *(v16 + 32);
    v72 = (v225 + *(v16 + 36));
    v73 = v16;
    v74 = *v72;
    v75 = v72[1];
    v76 = *(v225 + v71);
    type metadata accessor for OPACKCoder();
    sub_1DEE115C8(&v234);
    v186 = v73;
    sub_1DEE12F7C(&v234, v229);
    v77 = MEMORY[0x1E69E7CC0];
    v78 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v228[0] = v77;
    v228[1] = v78;
    v232 = v76;
    v233 = 0;
    v227[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
    v227[4] = sub_1DEE1DC98();
    v227[0] = swift_allocObject();
    sub_1DEE1DCEC(v228, v227[0] + 16);
    sub_1DEF6A778(v227, v52);
    v84 = v76;
    sub_1DEE1EBB4(v228);
    __swift_destroy_boxed_opaque_existential_1(&v234);
    (*(v53 + 56))(v52, 0, 1, v224);
    v85 = v222;
    sub_1DEEAB218(v52, v222, type metadata accessor for ReplicatorMessage);
    v86 = v221;
    sub_1DEEACA70(v85, v221, type metadata accessor for ReplicatorMessage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v88 = v225;
      if (EnumCaseMultiPayload == 1)
      {
        v89 = v212;
        sub_1DEEAB218(v86, v212, type metadata accessor for ReplicatorMessage.Sync);
        v90 = v223;
        v91 = v220;
        v92 = v219;
        if (*(v223 + 624) == 1)
        {
          sub_1DEE72AD8(v89, v197);
        }

        v93 = type metadata accessor for ReplicatorMessage.Sync;
        v94 = v89;
        goto LABEL_40;
      }

      v106 = v213;
      sub_1DEE17214(v225 + *(v186 + 20), v213, &unk_1ECDE3E80, &unk_1DEF90970);
      v107 = v215;
      v108 = v214;
      if ((*(v215 + 48))(v106, 1, v214) == 1)
      {
        sub_1DEE171B4(v106, &unk_1ECDE3E80, &unk_1DEF90970);
        v90 = v223;
LABEL_24:
        v91 = v220;
        v92 = v219;
        goto LABEL_41;
      }

      v109 = v209;
      (*(v107 + 32))(v209, v106, v108);
      v90 = v223;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v110 = sub_1DEF8D508();
      __swift_project_value_buffer(v110, qword_1ECDF6028);
      v111 = v199;
      sub_1DEEACA70(v88, v199, type metadata accessor for Message);
      v112 = v198;
      (*(v107 + 16))(v198, v109, v108);

      v113 = sub_1DEF8D4D8();
      v114 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v228[0] = v221;
        *v115 = 136381187;
        *(v115 + 4) = sub_1DEE12A5C(*(v90 + 528), *(v90 + 536), v228);
        *(v115 + 12) = 2080;
        sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        LODWORD(v217) = v114;
        v116 = sub_1DEF8E2E8();
        v118 = v117;
        sub_1DEE273A0(v111, type metadata accessor for Message);
        v119 = sub_1DEE12A5C(v116, v118, v228);

        *(v115 + 14) = v119;
        *(v115 + 22) = 2082;
        v120 = sub_1DEF8E2E8();
        v122 = v121;
        v123 = *(v215 + 8);
        v123(v112, v108);
        v124 = sub_1DEE12A5C(v120, v122, v228);
        v88 = v225;

        *(v115 + 24) = v124;
        _os_log_impl(&dword_1DEE0F000, v113, v217, "(%{private}s) Received ack with ID %s for %{public}s)", v115, 0x20u);
        v125 = v221;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v125, -1, -1);
        MEMORY[0x1E12CCD70](v115, -1, -1);

        v123(v209, v108);
        v85 = v222;
        goto LABEL_24;
      }

      v133 = *(v107 + 8);
      v133(v112, v108);
      sub_1DEE273A0(v111, type metadata accessor for Message);
      v133(v109, v108);
      v91 = v220;
      v92 = v219;
      v85 = v222;
LABEL_34:
      v88 = v225;
      goto LABEL_41;
    }

    v95 = v86;
    v96 = v217;
    sub_1DEEAB218(v95, v217, type metadata accessor for ReplicatorMessage.Handshake);
    v97 = v96;
    v98 = v211;
    sub_1DEEACA70(v97, v211, type metadata accessor for ReplicatorMessage.Handshake);
    v99 = swift_getEnumCaseMultiPayload();
    if (v99)
    {
      v90 = v223;
      if (v99 != 1)
      {
        v132 = v194;
        sub_1DEEAB218(v98, v194, type metadata accessor for ReplicatorMessage.Handshake.Complete);
        if (*(v90 + 624) == 1)
        {
          sub_1DEE711C0(v132);
        }

        sub_1DEE273A0(v132, type metadata accessor for ReplicatorMessage.Handshake.Complete);
        sub_1DEE273A0(v217, type metadata accessor for ReplicatorMessage.Handshake);
        v91 = v220;
        v92 = v219;
        goto LABEL_34;
      }

      sub_1DEEAB218(v98, v203, type metadata accessor for ReplicatorMessage.Handshake.Response);
      v221 = *(v193 + 24);
      v100 = v204;
      *v68 = v204;
      v206(v68, v205, v63);
      v101 = v100;
      v102 = sub_1DEF8D7B8();
      v207(v68, v63);
      if (v102)
      {
        v91 = v220;
        v92 = v219;
        v103 = v203;
        if (*(v90 + 624) == 1 && (*(v203 + v221 + 32) > 7uLL || (swift_beginAccess(), v104 = *(v90 + 672), , v105 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v104), , (v105 & 1) == 0)))
        {
          sub_1DEE70E4C(v103);
        }

        else
        {
          sub_1DEE70B44(v103, v84);
        }

        v88 = v225;
        v134 = type metadata accessor for ReplicatorMessage.Handshake.Response;
LABEL_39:
        sub_1DEE273A0(v103, v134);
        v93 = type metadata accessor for ReplicatorMessage.Handshake;
        v94 = v217;
LABEL_40:
        sub_1DEE273A0(v94, v93);
LABEL_41:
        swift_beginAccess();
        sub_1DEE29594(v90 + 192, v228);
        v135 = v230;
        v136 = v231;
        __swift_project_boxed_opaque_existential_1(v228, v230);
        MetadataStoring.pairingRelationship(remoteDeviceID:)(*(v88 + *(v186 + 28)), *(v88 + *(v186 + 28) + 8), v135, *(v136 + 8), v91);
        if ((*(v218 + 48))(v91, 1, v92) == 1)
        {
          sub_1DEE273A0(v85, type metadata accessor for ReplicatorMessage);
          sub_1DEE171B4(v91, &qword_1ECDE3C18, &unk_1DEF94D20);
          __swift_destroy_boxed_opaque_existential_1(v228);
          return;
        }

        v63 = v216;
        sub_1DEEAB218(v91, v216, type metadata accessor for PairingRelationship);
        __swift_destroy_boxed_opaque_existential_1(v228);
        v137 = v63 + *(v92 + 20);
        if (*(v137 + 32) < 7uLL || (v138 = v208, sub_1DEEACA70(v85, v208, type metadata accessor for ReplicatorMessage), swift_getEnumCaseMultiPayload() >= 2))
        {
          v155 = v63;
        }

        else
        {
          sub_1DEE273A0(v138, type metadata accessor for ReplicatorMessage);
          v139 = v200;
          swift_storeEnumTagMultiPayload();
          v140 = v215;
          v141 = v201;
          v142 = v214;
          (*(v215 + 16))(v201, v88, v214);
          (*(v140 + 56))(v141, 0, 1, v142);
          v143 = sub_1DEE5D178(v63);
          if (v144)
          {
            if (qword_1ECDE2E58 == -1)
            {
LABEL_47:
              v145 = sub_1DEF8D508();
              __swift_project_value_buffer(v145, qword_1ECDF6028);
              v146 = v191;
              sub_1DEEACA70(v63, v191, type metadata accessor for PairingRelationship);

              v147 = sub_1DEF8D4D8();
              v148 = sub_1DEF8DC98();

              if (os_log_type_enabled(v147, v148))
              {
                v149 = swift_slowAlloc();
                v150 = swift_slowAlloc();
                v228[0] = v150;
                *v149 = 136446466;
                *(v149 + 4) = sub_1DEE12A5C(*(v90 + 528), *(v90 + 536), v228);
                *(v149 + 12) = 2082;
                sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
                v151 = sub_1DEF8E2E8();
                v153 = v152;
                sub_1DEE273A0(v146, type metadata accessor for PairingRelationship);
                v154 = sub_1DEE12A5C(v151, v153, v228);

                *(v149 + 14) = v154;
                _os_log_impl(&dword_1DEE0F000, v147, v148, "(%{public}s) Can't resolve protocol version when trying to construct message for: %{public}s", v149, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12CCD70](v150, -1, -1);
                MEMORY[0x1E12CCD70](v149, -1, -1);
              }

              else
              {

                sub_1DEE273A0(v146, type metadata accessor for PairingRelationship);
              }

              v157 = v216;
              v158 = v186;
              v159 = v196;
              v160 = v195;
              v161 = v200;
              sub_1DEE171B4(v201, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE273A0(v161, type metadata accessor for ReplicatorMessage);
              sub_1DEE273A0(v157, type metadata accessor for PairingRelationship);
              sub_1DEE273A0(v85, type metadata accessor for ReplicatorMessage);
              (*(v160 + 56))(v159, 1, 1, v158);
              sub_1DEE171B4(v159, &unk_1ECDE4E20, &unk_1DEF95B10);
              return;
            }

LABEL_63:
            swift_once();
            goto LABEL_47;
          }

          v156 = v196;
          sub_1DEE29904(v139, v143, v141, v196);
          sub_1DEE171B4(v141, &unk_1ECDE3E80, &unk_1DEF90970);
          sub_1DEE273A0(v139, type metadata accessor for ReplicatorMessage);
          (*(v195 + 56))(v156, 0, 1, v186);
          sub_1DEEAB218(v156, v190, type metadata accessor for Message);
          if (qword_1ECDE2E58 != -1)
          {
            swift_once();
          }

          v162 = sub_1DEF8D508();
          __swift_project_value_buffer(v162, qword_1ECDF6028);
          v163 = v187;
          sub_1DEEACA70(v88, v187, type metadata accessor for Message);
          v164 = v189;
          sub_1DEEACA70(v88, v189, type metadata accessor for Message);

          v165 = sub_1DEF8D4D8();
          v166 = sub_1DEF8DCB8();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v225 = swift_slowAlloc();
            v228[0] = v225;
            *v167 = 136381187;
            *(v167 + 4) = sub_1DEE12A5C(*(v90 + 528), *(v90 + 536), v228);
            *(v167 + 12) = 2080;
            sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
            v168 = sub_1DEF8E2E8();
            v170 = v169;
            sub_1DEE273A0(v163, type metadata accessor for Message);
            v171 = sub_1DEE12A5C(v168, v170, v228);

            *(v167 + 14) = v171;
            *(v167 + 22) = 2082;
            v172 = v189;
            v173 = (v189 + *(v186 + 28));
            v174 = *v173;
            v175 = v173[1];

            sub_1DEE273A0(v172, type metadata accessor for Message);
            v176 = sub_1DEE12A5C(v174, v175, v228);

            *(v167 + 24) = v176;
            _os_log_impl(&dword_1DEE0F000, v165, v166, "(%{private}s) Sending ack for ID %s to %{public}s)", v167, 0x20u);
            v177 = v225;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v177, -1, -1);
            MEMORY[0x1E12CCD70](v167, -1, -1);
          }

          else
          {

            sub_1DEE273A0(v164, type metadata accessor for Message);
            sub_1DEE273A0(v163, type metadata accessor for Message);
          }

          v178 = *(v90 + 176);
          v179 = *(v90 + 184);
          ObjectType = swift_getObjectType();
          v181 = sub_1DEF8D1E8();
          v182 = v188;
          (*(*(v181 - 8) + 56))(v188, 1, 1, v181);
          LOBYTE(v228[0]) = 0;
          v226 = 0;
          v183 = *(v179 + 40);
          v185 = v179;
          v184 = v190;
          v183(v190, v182, v228, v137, &v226, 0, 0, ObjectType, v185);
          sub_1DEE171B4(v182, &qword_1ECDE4890, &qword_1DEF90990);
          sub_1DEE273A0(v184, type metadata accessor for Message);
          v155 = v216;
        }

        sub_1DEE273A0(v155, type metadata accessor for PairingRelationship);
        sub_1DEE273A0(v85, type metadata accessor for ReplicatorMessage);
        return;
      }

      __break(1u);
    }

    else
    {
      sub_1DEEAB218(v98, v202, type metadata accessor for ReplicatorMessage.Handshake.Request);
      v126 = *(v192 + 24);
      v127 = v204;
      *v68 = v204;
      v206(v68, v205, v63);
      v128 = v127;
      v129 = sub_1DEF8D7B8();
      v207(v68, v63);
      v90 = v223;
      if (v129)
      {
        v91 = v220;
        v92 = v219;
        v103 = v202;
        if (*(v223 + 624) == 1 && (*(v202 + v126 + 32) > 7uLL || (swift_beginAccess(), v130 = *(v90 + 672), , v131 = sub_1DEF01E3C(0xD000000000000011, 0x80000001DEF9C1B0, v130), , (v131 & 1) == 0)))
        {
          sub_1DEE26C70(v103);
        }

        else
        {
          sub_1DEE7083C(v103, v84);
        }

        v88 = v225;
        v134 = type metadata accessor for ReplicatorMessage.Handshake.Request;
        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_63;
  }

  __break(1u);
  swift_once();
  v79 = sub_1DEF8D508();
  __swift_project_value_buffer(v79, qword_1ECDF6028);

  v80 = sub_1DEF8D4D8();
  v81 = sub_1DEF8DC98();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v228[0] = v83;
    *v82 = 136380675;
    *(v82 + 4) = sub_1DEE12A5C(v68[66], v68[67], v228);
    _os_log_impl(&dword_1DEE0F000, v80, v81, "(%{private}s) Sync message could not be decoded", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1E12CCD70](v83, -1, -1);
    MEMORY[0x1E12CCD70](v82, -1, -1);
  }
}

uint64_t sub_1DEE2BA48()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE2BAB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BAF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BB40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BB88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BBD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE2BC64(uint64_t a1, uint64_t (*a2)(), unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v44 = a4;
  v42 = a2;
  v40 = a1;
  v46 = *v7;
  v47 = v46;
  v11 = type metadata accessor for DeviceDescriptor();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - v15;
  v37 = &v34 - v15;
  v17 = type metadata accessor for Message();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a3;
  v41 = *a5;
  v45 = v8[2];
  v35 = type metadata accessor for Message;
  sub_1DEE280F8(v40, v20, type metadata accessor for Message);
  sub_1DEE17214(v42, v16, &qword_1ECDE4890, &qword_1DEF90990);
  v42 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v44, &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceDescriptor);
  v21 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v38 + 80) + v22 + 8) & ~*(v38 + 80);
  v24 = v23 + v14;
  v25 = (*(v43 + 80) + v24 + 1) & ~*(v43 + 80);
  v26 = v25 + v12;
  v27 = (v25 + v12) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = *(v46 + 80);
  *(v28 + 24) = *(v47 + 88);
  *(v28 + 40) = *(v29 + 104);
  sub_1DEE13A28(v20, v28 + v21, v35);
  *(v28 + v22) = v8;
  sub_1DEE1BA88(v37, v28 + v23, &qword_1ECDE4890, &qword_1DEF90990);
  *(v28 + v24) = v39;
  sub_1DEE13A28(v36, v28 + v25, v42);
  *(v28 + v26) = v41;
  v30 = v28 + v27;
  v32 = v48;
  v31 = v49;
  *(v30 + 8) = v48;
  *(v30 + 16) = v31;

  sub_1DEE2CB00(v32);
  sub_1DEE2C448(0x20676E69646E6553, 0xEF6567617373656DLL, v45, sub_1DEF5CE08, v28, 0.0);
}

uint64_t sub_1DEE2C038()
{
  v1 = type metadata accessor for Message();
  v38 = *(*(v1 - 1) + 80);
  v2 = (v38 + 48) & ~v38;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v34 = v3;
  v37 = *(v4 + 80);
  v5 = (v3 + v37 + 8) & ~v37;
  v6 = *(v4 + 64);
  v36 = type metadata accessor for DeviceDescriptor();
  v7 = *(*(v36 - 8) + 80);
  v8 = v6 + v7 + v5 + 1;
  v33 = *(*(v36 - 8) + 64);
  v9 = v0 + v2;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v32 = *(v11 + 8);
  v32(v9, v10);
  v12 = v1[5];
  v35 = *(v11 + 48);
  if (!v35(v9 + v12, 1, v10))
  {
    v32(v9 + v12, v10);
  }

  v13 = v8 & ~v7;
  v14 = *(v9 + v1[6] + 8);

  v15 = *(v9 + v1[7] + 8);

  sub_1DEE1BFA0(*(v9 + v1[9]), *(v9 + v1[9] + 8));
  v16 = *(v0 + v34);

  v17 = sub_1DEF8D1E8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v5, 1, v17))
  {
    (*(v18 + 8))(v0 + v5, v17);
  }

  v19 = (v0 + v13);
  v20 = *(v0 + v13 + 8);

  v21 = *(v0 + v13 + 24);

  v22 = *(v0 + v13 + 96);

  v23 = *(v0 + v13 + 104);

  v24 = *(v0 + v13 + 120);
  if (v24 >> 60 != 15)
  {
    sub_1DEE1BFA0(v19[14], v24);
  }

  v25 = (v13 + v33) & 0xFFFFFFFFFFFFFFF8;
  v26 = v19[17];

  v27 = v19[19];

  v28 = v19[21];

  v29 = *(v36 + 60);
  if (!v35(v19 + v29, 1, v10))
  {
    v32(v19 + v29, v10);
  }

  if (*(v0 + v25 + 8))
  {
    v30 = *(v0 + v25 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, v25 + 24, v38 | v37 | v7 | 7);
}

uint64_t sub_1DEE2C3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE2C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v43 = a4;
  v44 = a5;
  v45 = a3;
  v49 = a1;
  v8 = sub_1DEF8D698();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D688();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1DEF8D758();
  v41 = *(v21 - 8);
  v42 = v21;
  v22 = *(v41 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  type metadata accessor for KeepAliveTransaction();
  v28 = swift_allocObject();

  result = sub_1DEE2CB34(v49, a2);
  if (a6 <= 0.0)
  {
    v37 = swift_allocObject();
    v38 = v44;
    v37[2] = v43;
    v37[3] = v38;
    v37[4] = v28;
    v55 = sub_1DEEDB450;
    v56 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1DEE3F0C0;
    v54 = &block_descriptor_20;
    v39 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v50 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v15, v11, v39);
    _Block_release(v39);

    (*(v48 + 8))(v11, v8);
    (*(v46 + 8))(v15, v47);
  }

  v49 = v11;
  v30 = a6 * 1000.0;
  if (COERCE_UNSIGNED_INT64(a6 * 1000.0) >> 52 > 0x7FE)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v30 < 9.22337204e18)
  {
    v31 = v30;
    sub_1DEF8D738();
    *v20 = v31;
    (*(v17 + 104))(v20, *MEMORY[0x1E69E7F38], v16);
    v40 = v27;
    sub_1DEF8D748();
    (*(v17 + 8))(v20, v16);
    v41 = *(v41 + 8);
    (v41)(v25, v42);
    v32 = swift_allocObject();
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
    v32[4] = v28;
    v55 = sub_1DEEDB4A8;
    v56 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1DEE3F0C0;
    v54 = &block_descriptor_26_0;
    v34 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v50 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BB40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v35 = v49;
    sub_1DEF8DE08();
    v36 = v40;
    MEMORY[0x1E12CB490](v40, v15, v35, v34);
    _Block_release(v34);

    (*(v48 + 8))(v35, v8);
    (*(v46 + 8))(v15, v47);
    (v41)(v36, v42);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DEE2CB00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DEE2CB34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v30 = sub_1DEF8D698();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DEF8D6D8();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[2] = 0;
  v2[4] = a1;
  v2[5] = a2;
  sub_1DEE1EA18(0, &qword_1ECDE2BB0, 0x1E69E9630);
  v15 = qword_1ECDE30E0;

  if (v15 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECDE30F0;
  v2[3] = sub_1DEF8DD68();
  swift_getObjectType();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = v6;
  v36 = sub_1DEEDB444;
  v37 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v28 = v6;
  v34 = sub_1DEE3F0C0;
  v35 = &block_descriptor_4;
  v17 = _Block_copy(&aBlock);
  v27 = a1;
  v18 = v17;

  sub_1DEE160E8();
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v18);
  (*(v7 + 8))(v10, v30);
  (*(v11 + 8))(v14, v29);

  v19 = v2[3];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DEF8DD98();
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = v3;
  v20[3] = v22;
  v20[4] = a2;
  v20[5] = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1DEE2CF8C;
  *(v23 + 24) = v20;
  v36 = sub_1DEE13B20;
  v37 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1DEE134F4;
  v35 = &block_descriptor_14;
  v24 = _Block_copy(&aBlock);

  dispatch_sync(v31, v24);
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEE2CF8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  return sub_1DEE2CF98(v0[2]);
}

uint64_t sub_1DEE2CF98(uint64_t a1)
{
  if (byte_1ECDE45F8)
  {
    v2 = 0;
  }

  else
  {
    sub_1DEF8D998();
    v2 = os_transaction_create();
  }

  v3 = *(a1 + 16);
  *(a1 + 16) = v2;

  return swift_unknownObjectRelease();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_71Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroyTm_2(uint64_t a1)
{
  v3 = v1[2];

  if (v1[3])
  {

    sub_1DEE1BFA0(v1[4], v1[5]);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t type metadata accessor for PairingRelationship()
{
  result = qword_1ECDE30F8;
  if (!qword_1ECDE30F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE2D1D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  v7 = sub_1DEF8D1E8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1DEE29DC8(a2, v6);
  return sub_1DEE171B4(v6, &qword_1ECDE4890, &qword_1DEF90990);
}

void sub_1DEE2D2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = sub_1DEF8D1E8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v25 = v8;
    v26 = (v10 + 48);
    v22 = (v10 + 8);
    v23 = (v10 + 32);
    v13 = (a1 + 40);
    v14 = v27;
    do
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 24);
      swift_unknownObjectRetain();
      v28 = ObjectType;
      if (v18(v29, &off_1F5A21098, v14, ObjectType, v16))
      {
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
        sub_1DEE17214(v14 + *(v19 + 28), v7, &qword_1ECDE4890, &qword_1DEF90990);
        v20 = v25;
        if ((*v26)(v7, 1, v25) == 1)
        {
          sub_1DEE171B4(v7, &qword_1ECDE4890, &qword_1DEF90990);
          (*(v16 + 8))(v29, &off_1F5A21098, v14, v28, v16);
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = v24;
          (*v23)(v24, v7, v20);
          (*(v16 + 16))(v29, &off_1F5A21098, v14, v21, v28, v16);
          swift_unknownObjectRelease();
          (*v22)(v21, v20);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v13 += 2;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1DEE2D58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(a1, a2, a3, ObjectType, v8);
    swift_unknownObjectRelease();
    return v10 & 1;
  }

  return result;
}

uint64_t Message.messageType.getter()
{
  v1 = (v0 + *(type metadata accessor for Message() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Message.senderDeviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for Message() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1DEE2D694()
{
  v1 = *(*v0 + 232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  return sub_1DEF8DD18();
}

uint64_t sub_1DEE2D738(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for DeviceDescriptor();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1DEF8D378();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 + 3);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DEE2D8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  sub_1DEE29594(a1 + 192, v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a2, a3, v8, *(v9 + 8), a4);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t MetadataStoring.pairingRelationship(remoteDeviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a2;
  v65 = a1;
  v58 = a5;
  v7 = type metadata accessor for DeviceDescriptor();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v59 = &v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v56 - v19;
  v20 = (*(*(a4 + 8) + 32))(a3);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;
  v62 = v20;

  v27 = 0;
  v61 = v10;
  if (v24)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      v29 = __clz(__rbit64(v24)) | (v28 << 6);
      v30 = v62;
      v31 = *(v62 + 48);
      v32 = sub_1DEF8D3F8();
      v33 = *(v32 - 8);
      v34 = v33;
      v35 = v31 + *(v33 + 72) * v29;
      v36 = *(v33 + 16);
      v37 = v59;
      v64 = v32;
      v36(v59, v35);
      v38 = *(v30 + 56);
      v39 = (type metadata accessor for PairingRelationship() - 8);
      v40 = v61;
      sub_1DEE28090(v38 + *(*v39 + 72) * v29, &v37[*(v61 + 48)], type metadata accessor for PairingRelationship);
      v41 = v37;
      v42 = v66;
      sub_1DEE1BA88(v41, v66, &unk_1ECDE4350, &qword_1DEF93400);
      v43 = v42;
      v44 = v67;
      v10 = v40;
      sub_1DEE17214(v43, v67, &unk_1ECDE4350, &qword_1DEF93400);
      v45 = v44 + *(v40 + 48);
      v46 = v60;
      sub_1DEE28090(v45 + v39[7], v60, type metadata accessor for DeviceDescriptor);
      sub_1DEE27460(v45, type metadata accessor for PairingRelationship);
      v48 = *v46;
      v47 = v46[1];

      sub_1DEE27460(v46, type metadata accessor for DeviceDescriptor);
      if (v48 == v65 && v47 == v63)
      {
        break;
      }

      v49 = sub_1DEF8E4E8();

      (*(v34 + 8))(v67, v64);
      if (v49)
      {
        goto LABEL_15;
      }

      v24 &= v24 - 1;
      result = sub_1DEE171B4(v66, &unk_1ECDE4350, &qword_1DEF93400);
      v27 = v28;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    (*(v34 + 8))(v67, v64);
LABEL_15:

    v51 = v57;
    sub_1DEE1BA88(v66, v57, &unk_1ECDE4350, &qword_1DEF93400);
    v50 = v56;
    (*(v56 + 56))(v51, 0, 1, v10);
LABEL_16:

    if ((*(v50 + 48))(v51, 1, v10) == 1)
    {
      sub_1DEE171B4(v51, &qword_1ECDE3C98, &unk_1DEF95610);
      v52 = type metadata accessor for PairingRelationship();
      return (*(*(v52 - 8) + 56))(v58, 1, 1, v52);
    }

    else
    {
      v53 = v58;
      sub_1DEE139C0(v51 + *(v10 + 48), v58, type metadata accessor for PairingRelationship);
      v54 = type metadata accessor for PairingRelationship();
      (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
      v55 = sub_1DEF8D3F8();
      return (*(*(v55 - 8) + 8))(v51, v55);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v25)
      {

        v50 = v56;
        v51 = v57;
        (*(v56 + 56))(v57, 1, 1, v10);
        goto LABEL_16;
      }

      v24 = *(v21 + 8 * v28);
      ++v27;
      if (v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE2DF78()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_1DEE2DFE4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1DEE2E070@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 104);
}

uint64_t sub_1DEE2E0D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DeviceDescriptor();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1DEF8D378();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 4;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t PairingRelationship.remoteDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PairingRelationship() + 20);

  return sub_1DEE251CC(v3, a1);
}

uint64_t sub_1DEE2E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a3 + *(type metadata accessor for Message() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3 == 0xD000000000000015 && 0x80000001DEF9CBB0 == v5;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {
    return 1;
  }

  if (v4 == 0xD000000000000014 && 0x80000001DEF9CBD0 == v5)
  {
    return 1;
  }

  return sub_1DEF8E4E8();
}

_DWORD *sub_1DEE2E394@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1DEE2E3AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DEF8D948();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1DEE2E3F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2E42C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2E464()
{
  v1 = type metadata accessor for ZoneVersionAdvertisement(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 96);

  v10 = *(v0 + v3 + 104);

  v11 = *(v0 + v3 + 120);
  if (v11 >> 60 != 15)
  {
    sub_1DEE1BFA0(v6[14], v11);
  }

  v12 = v6[17];

  v13 = v6[19];

  v14 = v6[21];

  v15 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEE2E608@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 72);
  result = sub_1DEF8DD18();
  *a2 = v5;
  return result;
}

uint64_t sub_1DEE2E698@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEE3F574();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE2E6C4(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
}

uint64_t sub_1DEE2E708()
{
  v1 = type metadata accessor for ZoneVersionAdvertisement(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = (v0 + v3);
  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 96);

  v11 = *(v0 + v3 + 104);

  v12 = *(v0 + v3 + 120);
  if (v12 >> 60 != 15)
  {
    sub_1DEE1BFA0(v7[14], v12);
  }

  v13 = v7[17];

  v14 = v7[19];

  v15 = v7[21];

  v16 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v17 = sub_1DEF8D3F8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v7 + v16, 1, v17))
  {
    (*(v18 + 8))(v7 + v16, v17);
  }

  v19 = *(v7 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_1DEE2E8AC()
{
  v1 = type metadata accessor for ZoneVersionAdvertisement(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 96);

  v10 = *(v0 + v3 + 104);

  v11 = *(v0 + v3 + 120);
  if (v11 >> 60 != 15)
  {
    sub_1DEE1BFA0(v6[14], v11);
  }

  v12 = v6[17];

  v13 = v6[19];

  v14 = v6[21];

  v15 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DEE2EA54()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE2EAAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2EAE4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2EB1C()
{
  v1 = type metadata accessor for ZoneVersionAdvertisement(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);

  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 96);

  v10 = *(v0 + v3 + 104);

  v11 = *(v0 + v3 + 120);
  if (v11 >> 60 != 15)
  {
    sub_1DEE1BFA0(v6[14], v11);
  }

  v12 = v6[17];

  v13 = v6[19];

  v14 = v6[21];

  v15 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + *(v1 + 20));

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEE2ECC0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser_queue);
  result = sub_1DEF8DD18();
  *a2 = v5;
  return result;
}

uint64_t sub_1DEE2ED58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEE4772C();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE2ED84(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher);
  *(*a2 + OBJC_IVAR____TtC16ReplicatorEngine23StatusKitZoneAdvertiser____lazy_storage___zoneVersionPublisher) = *a1;
}

uint64_t sub_1DEE2EDD0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE2EE18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AF0, &qword_1DEF90AE8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DEE2EEE8()
{
  v27 = type metadata accessor for ZoneVersionAdvertisement(0);
  v1 = *(*(v27 - 8) + 80);
  v2 = (v1 + 40) & ~v1;
  v26 = *(*(v27 - 8) + 64);
  v3 = sub_1DEF8D488();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = (v0 + v2);
  v9 = *(v0 + v2 + 8);

  v10 = *(v0 + v2 + 24);

  v11 = *(v0 + v2 + 96);

  v12 = *(v0 + v2 + 104);

  v13 = *(v0 + v2 + 120);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(v8[14], v13);
  }

  v14 = v8[17];

  v15 = v8[19];

  v16 = v8[21];

  v17 = *(type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0) + 60);
  v18 = sub_1DEF8D3F8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v8 + v17, 1, v18))
  {
    (*(v19 + 8))(v8 + v17, v18);
  }

  v20 = (v26 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + v5 + 8) & ~v5;
  v22 = *(v8 + *(v27 + 20));

  v23 = *(v0 + v20);

  (*(v4 + 8))(v0 + v21, v3);

  return MEMORY[0x1EEE6BDD0](v0, v25 + v21 + 1, v1 | v5 | 7);
}

uint64_t sub_1DEE2F150()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE2F1AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1DEE2F1C4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE2F22C()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DEE2F2F0()
{
  v1 = type metadata accessor for DeviceDescriptor();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 96);

  v9 = *(v0 + v3 + 104);

  v10 = *(v0 + v3 + 120);
  if (v10 >> 60 != 15)
  {
    sub_1DEE1BFA0(v5[14], v10);
  }

  v11 = v5[17];

  v12 = v5[19];

  v13 = v5[21];

  v14 = *(v1 + 60);
  v15 = sub_1DEF8D3F8();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v5 + v14, 1, v15))
  {
    (*(v16 + 8))(v5 + v14, v15);
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v17);

  v20 = *(v0 + v18 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v18 + 16, v2 | 7);
}

uint64_t sub_1DEE2F4D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DEE2F568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEE50774();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE2F594(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
}

uint64_t sub_1DEE2F5D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEE508A0();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE2F604(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 168);
  *(*a2 + 168) = *a1;
}

uint64_t sub_1DEE2F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
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

uint64_t sub_1DEE2F748(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
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

uint64_t sub_1DEE2F804(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1DEE2F86C()
{
  v1 = *(v0 + 16);

  sub_1DEEA8A18(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE2F8B0()
{
  v1 = type metadata accessor for Message();
  v2 = *(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v17 = sub_1DEF8D1E8();
  v3 = *(v17 - 8);
  v4 = *(v3 + 80);
  v16 = *(v3 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + ((v2 + 24) & ~v2);
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = v1[5];
  if (!(*(v8 + 48))(v6 + v10, 1, v7))
  {
    v9(v6 + v10, v7);
  }

  v11 = (((v2 + 24) & ~v2) + v15 + v4) & ~v4;
  v12 = *(v6 + v1[6] + 8);

  v13 = *(v6 + v1[7] + 8);

  sub_1DEE1BFA0(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  (*(v3 + 8))(v0 + v11, v17);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v16, v2 | v4 | 7);
}

uint64_t sub_1DEE2FAC4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[13] >= 4uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1DEE2FB24()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v35 = type metadata accessor for SessionManager.Session();
  v3 = *(*(v35 - 8) + 80);
  v32 = *(*(v35 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + ((v2 + 24) & ~v2);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v36 = *(v7 + 8);
  v36(v5, v6);
  if (*(v5 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v7 + 48))(&v8[v17], 1, v6))
  {
    v36(&v8[v17], v6);
  }

  v18 = (v33 + ((v2 + 24) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v3 + 8) & ~v3;
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v20 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v5 + v1[7]);

  v22 = *(v0 + v18);

  v36(v0 + v19, v6);
  v23 = v0 + v19 + *(v35 + 20);
  v24 = *(v23 + 8);

  v25 = *(v23 + 24);

  v26 = *(v35 + 28);
  v27 = sub_1DEF8D378();
  (*(*(v27 - 8) + 8))(v0 + v19 + v26, v27);
  v28 = v0 + v20;
  v29 = *(v28 + 8);

  v30 = *(v28 + 24);

  return MEMORY[0x1EEE6BDD0](v0, v34 + 9, v2 | v3 | 7);
}

uint64_t sub_1DEE2FE2C()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v35 = *(*(v1 - 1) + 80);
  v2 = (v35 + 40) & ~v35;
  v33 = *(*(v1 - 1) + 64);
  v36 = type metadata accessor for SessionManager.Session();
  v3 = *(*(v36 - 8) + 80);
  v32 = *(*(v36 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v37 = *(v7 + 8);
  v37(v0 + v2, v6);
  if (*(v0 + v2 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v7 + 48))(&v8[v17], 1, v6))
  {
    v37(&v8[v17], v6);
  }

  v18 = (v33 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v3 + 8) & ~v3;
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v20 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v5 + v1[7]);

  v22 = *(v0 + v18);

  v37(v0 + v19, v6);
  v23 = v0 + v19 + *(v36 + 20);
  v24 = *(v23 + 8);

  v25 = *(v23 + 24);

  v26 = *(v36 + 28);
  v27 = sub_1DEF8D378();
  (*(*(v27 - 8) + 8))(v0 + v19 + v26, v27);
  v28 = v0 + v20;
  v29 = *(v28 + 8);

  v30 = *(v28 + 24);

  return MEMORY[0x1EEE6BDD0](v0, v34 + 9, v35 | v3 | 7);
}

uint64_t sub_1DEE30148()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v44 = *(*(v1 - 1) + 80);
  v2 = (v44 + 24) & ~v44;
  v3 = *(*(v1 - 1) + 64);
  v49 = type metadata accessor for PairingRelationship();
  v46 = *(*(v49 - 1) + 80);
  v42 = *(*(v49 - 1) + 64);
  v45 = type metadata accessor for SessionManager.Session();
  v41 = *(*(v45 - 8) + 80);
  v43 = *(*(v45 - 8) + 64);
  v4 = *(v0 + 16);

  v47 = v0;
  v5 = v0 + v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v48 = *(v7 + 8);
  v48(v0 + v2, v6);
  if (*(v0 + v2 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = (v2 + v3 + v46) & ~v46;
  v15 = *(v8 + 17);

  v16 = *(v8 + 19);

  v17 = *(v8 + 21);

  v18 = type metadata accessor for DeviceDescriptor();
  v19 = *(v18 + 60);
  v20 = *(v7 + 48);
  if (!v20(&v8[v19], 1, v6))
  {
    v48(&v8[v19], v6);
  }

  v21 = *(v5 + v1[7]);

  v22 = v47 + v14;
  v48(v47 + v14, v6);
  v23 = (v47 + v14 + v49[5]);
  v24 = *(v23 + 1);

  v25 = *(v23 + 3);

  v26 = *(v23 + 12);

  v27 = *(v23 + 13);

  v28 = *(v23 + 15);
  if (v28 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v23 + 14), v28);
  }

  v29 = *(v23 + 17);

  v30 = *(v23 + 19);

  v31 = *(v23 + 21);

  v32 = *(v18 + 60);
  if (!v20(&v23[v32], 1, v6))
  {
    v48(&v23[v32], v6);
  }

  v33 = v49[6];
  v34 = sub_1DEF8D378();
  v35 = *(*(v34 - 8) + 8);
  v35(v22 + v33, v34);
  v35(v22 + v49[7], v34);
  if (*(v22 + v49[8] + 8) >= 4uLL)
  {
  }

  v36 = (v14 + v42 + v41) & ~v41;
  v35(v22 + v49[9], v34);
  v48(v47 + v36, v6);
  v37 = v47 + v36 + *(v45 + 20);
  v38 = *(v37 + 8);

  v39 = *(v37 + 24);

  v35(v47 + v36 + *(v45 + 28), v34);

  return MEMORY[0x1EEE6BDD0](v47, v36 + v43, v44 | v46 | v41 | 7);
}

uint64_t sub_1DEE305AC()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v48 = *(*(v1 - 1) + 80);
  v2 = (v48 + 40) & ~v48;
  v3 = *(*(v1 - 1) + 64);
  v52 = type metadata accessor for PairingRelationship();
  v4 = *(*(v52 - 1) + 80);
  v5 = v3 + v4;
  v45 = *(*(v52 - 1) + 64);
  v49 = type metadata accessor for SessionManager.Session();
  v44 = *(*(v49 - 8) + 80);
  v47 = *(*(v49 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v6 = *(v0 + 32);

  v50 = v0;
  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v51 = *(v9 + 8);
  v51(v0 + v2, v8);
  if (*(v0 + v2 + v1[5] + 8) >= 4uLL)
  {
  }

  v10 = v2 + v5;
  v11 = (v7 + v1[6]);
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  v14 = *(v11 + 12);

  v15 = *(v11 + 13);

  v16 = *(v11 + 15);
  if (v16 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v11 + 14), v16);
  }

  v46 = v4;
  v17 = v10 & ~v4;
  v18 = *(v11 + 17);

  v19 = *(v11 + 19);

  v20 = *(v11 + 21);

  v21 = type metadata accessor for DeviceDescriptor();
  v22 = *(v21 + 60);
  v23 = *(v9 + 48);
  if (!v23(&v11[v22], 1, v8))
  {
    v51(&v11[v22], v8);
  }

  v24 = *(v7 + v1[7]);

  v25 = v50 + v17;
  v51(v50 + v17, v8);
  v26 = (v50 + v17 + v52[5]);
  v27 = *(v26 + 1);

  v28 = *(v26 + 3);

  v29 = *(v26 + 12);

  v30 = *(v26 + 13);

  v31 = *(v26 + 15);
  if (v31 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v26 + 14), v31);
  }

  v32 = *(v26 + 17);

  v33 = *(v26 + 19);

  v34 = *(v26 + 21);

  v35 = *(v21 + 60);
  if (!v23(&v26[v35], 1, v8))
  {
    v51(&v26[v35], v8);
  }

  v36 = v52[6];
  v37 = sub_1DEF8D378();
  v38 = *(*(v37 - 8) + 8);
  v38(v25 + v36, v37);
  v38(v25 + v52[7], v37);
  if (*(v25 + v52[8] + 8) >= 4uLL)
  {
  }

  v39 = (v17 + v45 + v44) & ~v44;
  v38(v25 + v52[9], v37);
  v51(v50 + v39, v8);
  v40 = v50 + v39 + *(v49 + 20);
  v41 = *(v40 + 8);

  v42 = *(v40 + 24);

  v38(v50 + v39 + *(v49 + 28), v37);

  return MEMORY[0x1EEE6BDD0](v50, v39 + v47, v48 | v46 | v44 | 7);
}

uint64_t sub_1DEE30A1C()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v20 = *(v7 + 8);
  v20(v0 + v3, v6);
  if (*(v0 + v3 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v7 + 48))(&v8[v17], 1, v6))
  {
    v20(&v8[v17], v6);
  }

  v18 = *(v5 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v21, v2 | 7);
}

uint64_t sub_1DEE30C00()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 32);

  v4 = v0 + ((v2 + 40) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  if (*(v4 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v4 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v6 + 48))(&v8[v17], 1, v5))
  {
    v7(&v8[v17], v5);
  }

  v18 = *(v4 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 40) & ~v2) + v20, v2 | 7);
}

uint64_t sub_1DEE30DF0()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v45 = *(*(v1 - 1) + 80);
  v2 = (v45 + 24) & ~v45;
  v3 = *(*(v1 - 1) + 64);
  v50 = type metadata accessor for PairingRelationship();
  v47 = *(*(v50 - 1) + 80);
  v43 = *(*(v50 - 1) + 64);
  v46 = type metadata accessor for SessionManager.Session();
  v42 = *(*(v46 - 8) + 80);
  v44 = *(*(v46 - 8) + 64);
  v4 = *(v0 + 16);

  v48 = v0;
  v5 = v0 + v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v49 = *(v7 + 8);
  v49(v0 + v2, v6);
  if (*(v0 + v2 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = (v2 + v3 + v47) & ~v47;
  v15 = *(v8 + 17);

  v16 = *(v8 + 19);

  v17 = *(v8 + 21);

  v18 = type metadata accessor for DeviceDescriptor();
  v19 = *(v18 + 60);
  v20 = *(v7 + 48);
  if (!v20(&v8[v19], 1, v6))
  {
    v49(&v8[v19], v6);
  }

  v21 = *(v5 + v1[7]);

  v22 = *(v5 + v1[8]);

  v23 = v48 + v14;
  v49(v48 + v14, v6);
  v24 = (v48 + v14 + v50[5]);
  v25 = *(v24 + 1);

  v26 = *(v24 + 3);

  v27 = *(v24 + 12);

  v28 = *(v24 + 13);

  v29 = *(v24 + 15);
  if (v29 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v24 + 14), v29);
  }

  v30 = *(v24 + 17);

  v31 = *(v24 + 19);

  v32 = *(v24 + 21);

  v33 = *(v18 + 60);
  if (!v20(&v24[v33], 1, v6))
  {
    v49(&v24[v33], v6);
  }

  v34 = v50[6];
  v35 = sub_1DEF8D378();
  v36 = *(*(v35 - 8) + 8);
  v36(v23 + v34, v35);
  v36(v23 + v50[7], v35);
  if (*(v23 + v50[8] + 8) >= 4uLL)
  {
  }

  v37 = (v14 + v43 + v42) & ~v42;
  v36(v23 + v50[9], v35);
  v49(v48 + v37, v6);
  v38 = v48 + v37 + *(v46 + 20);
  v39 = *(v38 + 8);

  v40 = *(v38 + 24);

  v36(v48 + v37 + *(v46 + 28), v35);

  return MEMORY[0x1EEE6BDD0](v48, v37 + v44, v45 | v47 | v42 | 7);
}

uint64_t sub_1DEE31280()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DEE312B8()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v49 = *(*(v1 - 1) + 80);
  v2 = (v49 + 40) & ~v49;
  v3 = *(*(v1 - 1) + 64);
  v53 = type metadata accessor for PairingRelationship();
  v4 = *(*(v53 - 1) + 80);
  v5 = v3 + v4;
  v46 = *(*(v53 - 1) + 64);
  v50 = type metadata accessor for SessionManager.Session();
  v45 = *(*(v50 - 8) + 80);
  v48 = *(*(v50 - 8) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v6 = *(v0 + 32);

  v51 = v0;
  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v52 = *(v9 + 8);
  v52(v0 + v2, v8);
  if (*(v0 + v2 + v1[5] + 8) >= 4uLL)
  {
  }

  v10 = v2 + v5;
  v11 = (v7 + v1[6]);
  v12 = *(v11 + 1);

  v13 = *(v11 + 3);

  v14 = *(v11 + 12);

  v15 = *(v11 + 13);

  v16 = *(v11 + 15);
  if (v16 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v11 + 14), v16);
  }

  v47 = v4;
  v17 = v10 & ~v4;
  v18 = *(v11 + 17);

  v19 = *(v11 + 19);

  v20 = *(v11 + 21);

  v21 = type metadata accessor for DeviceDescriptor();
  v22 = *(v21 + 60);
  v23 = *(v9 + 48);
  if (!v23(&v11[v22], 1, v8))
  {
    v52(&v11[v22], v8);
  }

  v24 = *(v7 + v1[7]);

  v25 = *(v7 + v1[8]);

  v26 = v51 + v17;
  v52(v51 + v17, v8);
  v27 = (v51 + v17 + v53[5]);
  v28 = *(v27 + 1);

  v29 = *(v27 + 3);

  v30 = *(v27 + 12);

  v31 = *(v27 + 13);

  v32 = *(v27 + 15);
  if (v32 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v27 + 14), v32);
  }

  v33 = *(v27 + 17);

  v34 = *(v27 + 19);

  v35 = *(v27 + 21);

  v36 = *(v21 + 60);
  if (!v23(&v27[v36], 1, v8))
  {
    v52(&v27[v36], v8);
  }

  v37 = v53[6];
  v38 = sub_1DEF8D378();
  v39 = *(*(v38 - 8) + 8);
  v39(v26 + v37, v38);
  v39(v26 + v53[7], v38);
  if (*(v26 + v53[8] + 8) >= 4uLL)
  {
  }

  v40 = (v17 + v46 + v45) & ~v45;
  v39(v26 + v53[9], v38);
  v52(v51 + v40, v8);
  v41 = v51 + v40 + *(v50 + 20);
  v42 = *(v41 + 8);

  v43 = *(v41 + 24);

  v39(v51 + v40 + *(v50 + 28), v38);

  return MEMORY[0x1EEE6BDD0](v51, v40 + v48, v49 | v47 | v45 | 7);
}

uint64_t sub_1DEE31734()
{
  v1 = (type metadata accessor for SessionManager.Session() - 8);
  v33 = *(*v1 + 80);
  v2 = (v33 + 24) & ~v33;
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for PairingRelationship();
  v32 = *(*(v4 - 1) + 80);
  v5 = (v2 + v3 + v32) & ~v32;
  v31 = *(*(v4 - 1) + 64);
  v6 = *(v0 + 16);

  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = v7 + v1[7];
  v12 = *(v11 + 8);

  v13 = *(v11 + 24);

  v14 = v1[9];
  v15 = sub_1DEF8D378();
  v30 = *(*(v15 - 8) + 8);
  v30(v7 + v14, v15);
  v34 = v0;
  v16 = v0 + v5;
  v10(v0 + v5, v8);
  v17 = (v0 + v5 + v4[5]);
  v18 = *(v17 + 1);

  v19 = *(v17 + 3);

  v20 = *(v17 + 12);

  v21 = *(v17 + 13);

  v22 = *(v17 + 15);
  if (v22 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v17 + 14), v22);
  }

  v23 = *(v17 + 17);

  v24 = *(v17 + 19);

  v25 = *(v17 + 21);

  v26 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v9 + 48))(&v17[v26], 1, v8))
  {
    v10(&v17[v26], v8);
  }

  v30(v16 + v4[6], v15);
  v30(v16 + v4[7], v15);
  if (*(v16 + v4[8] + 8) >= 4uLL)
  {
  }

  v27 = (v31 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30(v16 + v4[9], v15);
  v28 = *(v34 + v27 + 8);

  return MEMORY[0x1EEE6BDD0](v34, v27 + 16, v33 | v32 | 7);
}

uint64_t sub_1DEE31A54()
{
  v1 = (type metadata accessor for SessionManager.Session() - 8);
  v34 = *(*v1 + 80);
  v2 = (v34 + 40) & ~v34;
  v3 = *(*v1 + 64);
  v30 = type metadata accessor for PairingRelationship();
  v32 = *(*(v30 - 1) + 64);
  v33 = *(*(v30 - 1) + 80);
  v4 = (v2 + v3 + v33) & ~v33;
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = v6 + v1[7];
  v11 = *(v10 + 8);

  v12 = *(v10 + 24);

  v13 = v1[9];
  v14 = sub_1DEF8D378();
  v15 = (*(v14 - 8) + 8);
  v31 = *v15;
  (*v15)(v6 + v13, v14);
  v35 = v0;
  v16 = v0 + v4;
  v9(v0 + v4, v7);
  v17 = (v0 + v4 + v30[5]);
  v18 = *(v17 + 1);

  v19 = *(v17 + 3);

  v20 = *(v17 + 12);

  v21 = *(v17 + 13);

  v22 = *(v17 + 15);
  if (v22 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v17 + 14), v22);
  }

  v23 = *(v17 + 17);

  v24 = *(v17 + 19);

  v25 = *(v17 + 21);

  v26 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v8 + 48))(&v17[v26], 1, v7))
  {
    v9(&v17[v26], v7);
  }

  v31(v16 + v30[6], v14);
  v31(v16 + v30[7], v14);
  if (*(v16 + v30[8] + 8) >= 4uLL)
  {
  }

  v27 = (v32 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31(v16 + v30[9], v14);
  v28 = *(v35 + v27 + 8);

  return MEMORY[0x1EEE6BDD0](v35, v27 + 16, v34 | v33 | 7);
}

uint64_t sub_1DEE31D88()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  if (*(v4 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v4 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v6 + 48))(&v8[v17], 1, v5))
  {
    v7(&v8[v17], v5);
  }

  v18 = *(v4 + v1[7]);

  v19 = *(v4 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v21, v2 | 7);
}

uint64_t sub_1DEE31F74()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 1) + 80);
  v21 = *(*(v1 - 1) + 64);
  sub_1DEE39214(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 32);

  v4 = v0 + ((v2 + 40) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  if (*(v4 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v4 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v6 + 48))(&v8[v17], 1, v5))
  {
    v7(&v8[v17], v5);
  }

  v18 = *(v4 + v1[7]);

  v19 = *(v4 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 40) & ~v2) + v21, v2 | 7);
}

uint64_t sub_1DEE32170()
{
  v1 = type metadata accessor for Message();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3, v6);
  v9 = v1[5];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v5 + v9, v6);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  sub_1DEE1BFA0(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_1DEE32310()
{
  v1 = type metadata accessor for PairingRelationship();
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = (v4 + v1[5]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v6 + 48))(&v8[v17], 1, v5))
  {
    v7(&v8[v17], v5);
  }

  v18 = v1[6];
  v19 = sub_1DEF8D378();
  v20 = *(*(v19 - 8) + 8);
  v20(v4 + v18, v19);
  v20(v4 + v1[7], v19);
  if (*(v4 + v1[8] + 8) >= 4uLL)
  {
  }

  v20(v4 + v1[9], v19);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v22, v2 | 7);
}

uint64_t sub_1DEE32554()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE32710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE327CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE3287C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DEF8D378();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE32928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D378();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE329CC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE32A04()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DEE32A5C()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE32AAC()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE32AFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DEF8D3F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DEE32C2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1DEF8D3F8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DEE32D60(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Record.Value(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE32E0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Record.Value(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE32EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE32F1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DEE32FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
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

uint64_t sub_1DEE33094(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
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

uint64_t sub_1DEE3314C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE33208(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE332B8()
{
  sub_1DEE1BFA0(*(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE332F8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33348()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33398()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE333D8()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE33420()
{
  MEMORY[0x1E12CCE60](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEEEA02C();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE33484(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_1DEE334D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33508()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33540()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE33580()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE335B8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DEE33604()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_1DEE3364C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE336B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE33730()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1DEE33808@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEEF0904();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE33834(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_1DEE33878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1DEF8D378();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1DEE339A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1DEF8D378();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1DEE33AC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33B08()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33B40()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE33B78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE33BC8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE33C18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE33C58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33CA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE33CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE33D48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE33DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DEE33E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1DEE33F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEEFE184();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE33F54(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
}

uint64_t sub_1DEE33FC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3400C()
{
  v1 = sub_1DEF8D378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DEE340E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DEE34134(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEE341A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DEF8D3F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1DEE34220(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DEF8D3F8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE342CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D3F8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE34388()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3444C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return MetadataStore.allowList.setter(v4);
}

uint64_t sub_1DEE3447C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MetadataStore.localDeviceID.setter(v2, v3);
}

uint64_t sub_1DEE34500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Message();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1DEE345C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Message();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_1DEE34680()
{
  v1 = type metadata accessor for Message();
  v22 = *(*(v1 - 1) + 80);
  v2 = (v22 + 40) & ~v22;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5) & ~v5;
  v21 = *(v4 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 32);

  v9 = v0 + v2;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v9, v10);
  v13 = v1[5];
  if (!(*(v11 + 48))(v9 + v13, 1, v10))
  {
    v12(v9 + v13, v10);
  }

  v14 = *(v9 + v1[6] + 8);

  v15 = *(v9 + v1[7] + 8);

  sub_1DEE1BFA0(*(v9 + v1[9]), *(v9 + v1[9] + 8));
  v16 = sub_1DEF8D1E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v6, 1, v16))
  {
    (*(v17 + 8))(v0 + v6, v16);
  }

  v18 = (v6 + v21) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v0 + v18 + 8);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v18 + 40, v22 | v5 | 7);
}

uint64_t sub_1DEE34908()
{
  v1 = type metadata accessor for Message();
  v22 = *(*(v1 - 1) + 80);
  v2 = (v22 + 32) & ~v22;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v21 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = v1[5];
  if (!(*(v9 + 48))(v7 + v11, 1, v8))
  {
    v10(v7 + v11, v8);
  }

  v12 = *(v7 + v1[6] + 8);

  v13 = *(v7 + v1[7] + 8);

  sub_1DEE1BFA0(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v14 = *(v0 + v3);

  v15 = sub_1DEF8D1E8();
  v16 = *(v15 - 8);
  v20 = (v3 + v5 + 8) & ~v5;
  if (!(*(v16 + 48))(v0 + v20, 1, v15))
  {
    (*(v16 + 8))(v0 + v20, v15);
  }

  v17 = (v20 + v21) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17 + 8);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v17 + 40, v22 | v5 | 7);
}

uint64_t sub_1DEE34BBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DEF8D1E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);

  v10 = *(v0 + v8 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v2 | 7);
}

uint64_t sub_1DEE34CFC()
{
  v22 = sub_1DEF8D1E8();
  v1 = *(v22 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v23 = v2 | v7;
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = (((((v10 + v9) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v2 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v2;
  v21 = v4 + v20;
  v12 = *(v0 + 16);

  v13 = *(v0 + 24);

  v14 = *(v1 + 8);
  v14(v0 + v3, v22);
  v15 = *(v6 + 8);
  v15(v0 + v8, v5);
  v15(v0 + v10, v5);
  v16 = *(v0 + v11);
  swift_unknownObjectRelease();
  v17 = *(v0 + v19 + 8);

  v14(v0 + v20, v22);

  return MEMORY[0x1EEE6BDD0](v0, v21 + 1, v23 | 7);
}

uint64_t sub_1DEE34F00()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE34F48()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  sub_1DEE39214(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE34F94()
{
  v1 = *(v0 + 24);

  sub_1DEE39214(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE34FDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE3501C()
{
  v1 = type metadata accessor for Message();
  v23 = *(*(v1 - 1) + 80);
  v2 = (v23 + 40) & ~v23;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = v3 + v5;
  v22 = *(v4 + 64);
  v7 = *(v0 + 2);

  if (*(v0 + 3))
  {
    v8 = *(v0 + 4);
  }

  v9 = v6 & ~v5;
  v10 = &v0[v2];
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v13(v10, v11);
  v14 = v1[5];
  if (!(*(v12 + 48))(&v10[v14], 1, v11))
  {
    v13(&v10[v14], v11);
  }

  v15 = *&v10[v1[6] + 8];

  v16 = *&v10[v1[7] + 8];

  sub_1DEE1BFA0(*&v10[v1[9]], *&v10[v1[9] + 8]);
  v17 = sub_1DEF8D1E8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v0[v9], 1, v17))
  {
    (*(v18 + 8))(&v0[v9], v17);
  }

  v19 = (v9 + v22) & 0xFFFFFFFFFFFFFFF8;
  v20 = *&v0[v19 + 8];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v19 + 17, v23 | v5 | 7);
}

uint64_t sub_1DEE352C0()
{
  v1 = type metadata accessor for Message();
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 56) & ~v24;
  v3 = v2 + *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v5 = *(v4 + 80);
  v6 = v3 + v5;
  v23 = *(v4 + 64);
  if (*(v0 + 2))
  {
    v7 = *(v0 + 3);
  }

  v8 = v6 & ~v5;
  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  v11 = &v0[v2];
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v11, v12);
  v15 = v1[5];
  if (!(*(v13 + 48))(&v11[v15], 1, v12))
  {
    v14(&v11[v15], v12);
  }

  v16 = *&v11[v1[6] + 8];

  v17 = *&v11[v1[7] + 8];

  sub_1DEE1BFA0(*&v11[v1[9]], *&v11[v1[9] + 8]);
  v18 = sub_1DEF8D1E8();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(&v0[v8], 1, v18))
  {
    (*(v19 + 8))(&v0[v8], v18);
  }

  v20 = (v8 + v23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *&v0[v20 + 8];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v20 + 17, v24 | v5 | 7);
}

uint64_t sub_1DEE35558()
{
  v1 = (type metadata accessor for NetworkSyncHeader(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  v7 = v0 + v3;
  v8 = sub_1DEF8D3F8();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v9(v7 + v1[8], v8);
  v9(v7 + v1[9], v8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 4, v2 | 7);
}

uint64_t sub_1DEE35694()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE356E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE357C4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for PairingRelationship();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1DEE358F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for PairingRelationship();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE35998()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE359D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35A10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35A58()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE35AA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE35AEC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE35B68(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DEF8D1E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1DEE35C14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D1E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE35CC4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE35D14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE35D4C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE35DBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v2 = *(*(v1 - 8) + 80);
  v18 = *(*(v1 - 8) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + ((v2 + 32) & ~v2);
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = type metadata accessor for Message();
  v10 = v9[5];
  if (!(*(v7 + 48))(v5 + v10, 1, v6))
  {
    v8(v5 + v10, v6);
  }

  v11 = *(v5 + v9[6] + 8);

  v12 = *(v5 + v9[7] + 8);

  sub_1DEE1BFA0(*(v5 + v9[9]), *(v5 + v9[9] + 8));
  v13 = *(v1 + 28);
  v14 = sub_1DEF8D1E8();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = *(v5 + *(v1 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v18, v2 | 7);
}

uint64_t sub_1DEE35FEC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3602C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE3608C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE360DC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE36114()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEE3614C()
{
  v1 = type metadata accessor for Message();
  v37 = *(*(v1 - 1) + 80);
  v2 = (v37 + 48) & ~v37;
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v36 = *(v4 + 80);
  v5 = (v3 + v36 + 8) & ~v36;
  v6 = *(v4 + 64);
  v34 = type metadata accessor for DeviceDescriptor();
  v7 = *(*(v34 - 8) + 80);
  v8 = v6 + v7 + v5 + 1;
  v35 = *(*(v34 - 8) + 64);
  v9 = v0 + v2;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v32 = *(v11 + 8);
  v32(v9, v10);
  v12 = v1[5];
  v33 = *(v11 + 48);
  if (!v33(v9 + v12, 1, v10))
  {
    v32(v9 + v12, v10);
  }

  v13 = v8 & ~v7;
  v14 = *(v9 + v1[6] + 8);

  v15 = *(v9 + v1[7] + 8);

  sub_1DEE1BFA0(*(v9 + v1[9]), *(v9 + v1[9] + 8));
  v16 = *(v0 + v3);

  v17 = sub_1DEF8D1E8();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v5, 1, v17))
  {
    (*(v18 + 8))(v0 + v5, v17);
  }

  v19 = (v0 + v13);
  v20 = *(v0 + v13 + 8);

  v21 = *(v0 + v13 + 24);

  v22 = *(v0 + v13 + 96);

  v23 = *(v0 + v13 + 104);

  v24 = *(v0 + v13 + 120);
  if (v24 >> 60 != 15)
  {
    sub_1DEE1BFA0(v19[14], v24);
  }

  v25 = v19[17];

  v26 = v19[19];

  v27 = v19[21];

  v28 = *(v34 + 60);
  if (!v33(v19 + v28, 1, v10))
  {
    v32(v19 + v28, v10);
  }

  v29 = (((v13 + v35) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v0 + v29 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v29 + 16, v37 | v36 | v7 | 7);
}

uint64_t sub_1DEE364F4()
{
  v1 = type metadata accessor for Message();
  v32 = *(*(v1 - 1) + 80);
  v2 = (v32 + 56) & ~v32;
  v3 = *(*(v1 - 1) + 64);
  v30 = type metadata accessor for DeviceDescriptor();
  v4 = *(*(v30 - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v31 = *(*(v30 - 8) + 64);
  v6 = *(v0 + 48);

  v7 = v0 + v2;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v29 = *(v9 + 8);
  v29(v0 + v2, v8);
  v10 = v1[5];
  v11 = *(v9 + 48);
  if (!v11(v7 + v10, 1, v8))
  {
    v29(v7 + v10, v8);
  }

  v12 = *(v7 + v1[6] + 8);

  v13 = *(v7 + v1[7] + 8);

  sub_1DEE1BFA0(*(v7 + v1[9]), *(v7 + v1[9] + 8));
  v14 = (v0 + v5);
  v15 = *(v0 + v5 + 8);

  v16 = *(v0 + v5 + 24);

  v17 = *(v0 + v5 + 96);

  v18 = *(v0 + v5 + 104);

  v19 = *(v0 + v5 + 120);
  if (v19 >> 60 != 15)
  {
    sub_1DEE1BFA0(v14[14], v19);
  }

  v20 = v14[17];

  v21 = v14[19];

  v22 = v14[21];

  v23 = *(v30 + 60);
  if (!v11(v14 + v23, 1, v8))
  {
    v29(v14 + v23, v8);
  }

  v24 = (v31 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v0 + v24 + 8);

  v27 = *(v0 + v25 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v25 + 16, v32 | v4 | 7);
}

uint64_t sub_1DEE367AC()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v43 = *(v2 + 80);
  v3 = (v43 + 72) & ~v43;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Message();
  v42 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v42) & ~v42;
  v7 = (*(*(v5 - 1) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v37 = v7;
  v41 = *(v8 + 80);
  v9 = (v7 + v41 + 16) & ~v41;
  v10 = *(v8 + 64);
  v39 = type metadata accessor for DeviceDescriptor();
  v11 = *(*(v39 - 8) + 80);
  v12 = v10 + v11 + v9 + 1;
  v40 = *(*(v39 - 8) + 64);
  v13 = *(v0 + 6);

  v14 = *(v0 + 8);

  (*(v2 + 8))(&v0[v3], v1);
  v15 = &v0[v6];
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  v36 = *(v17 + 8);
  v36(&v0[v6], v16);
  v18 = v5[5];
  v38 = *(v17 + 48);
  if (!v38(&v15[v18], 1, v16))
  {
    v36(&v15[v18], v16);
  }

  v19 = v12 & ~v11;
  v20 = *&v15[v5[6] + 8];

  v21 = *&v15[v5[7] + 8];

  sub_1DEE1BFA0(*&v15[v5[9]], *&v15[v5[9] + 8]);
  v22 = *&v0[v37 + 8];

  v23 = sub_1DEF8D1E8();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(&v0[v9], 1, v23))
  {
    (*(v24 + 8))(&v0[v9], v23);
  }

  v25 = &v0[v19];
  v26 = *&v0[v19 + 8];

  v27 = *&v0[v19 + 24];

  v28 = *&v0[v19 + 96];

  v29 = *&v0[v19 + 104];

  v30 = *&v0[v19 + 120];
  if (v30 >> 60 != 15)
  {
    sub_1DEE1BFA0(v25[14], v30);
  }

  v31 = v25[17];

  v32 = v25[19];

  v33 = v25[21];

  v34 = *(v39 + 60);
  if (!v38(v25 + v34, 1, v16))
  {
    v36(v25 + v34, v16);
  }

  return MEMORY[0x1EEE6BDD0](v0, v40 + v19 + 1, v43 | v42 | v41 | v11 | 7);
}

uint64_t sub_1DEE36BC4()
{
  v1 = *(v0 + 24);
  v26 = v1;
  v27 = sub_1DEF8D378();
  v2 = *(v27 - 8);
  v33 = *(v2 + 80);
  v25 = (v33 + 48) & ~v33;
  v3 = (((*(v2 + 64) + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v1 - 8);
  v32 = *(v4 + 80);
  v5 = (v32 + v3 + 16) & ~v32;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for Message();
  v31 = *(*(v8 - 1) + 80);
  v9 = (v31 + v7 + 8) & ~v31;
  v10 = *(*(v8 - 1) + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v30 = *(v11 + 80);
  v28 = (v9 + v10 + v30) & ~v30;
  v29 = *(v11 + 64);
  (*(v2 + 8))(v0 + v25, v27);
  v12 = *(v0 + v3 + 8);

  (*(v4 + 8))(v0 + v5, v26);
  v13 = *(v0 + v6 + 8);

  v14 = *(v0 + v7);

  v15 = v0 + v9;
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 8);
  v18(v15, v16);
  v19 = v8[5];
  if (!(*(v17 + 48))(v15 + v19, 1, v16))
  {
    v18(v15 + v19, v16);
  }

  v20 = *(v15 + v8[6] + 8);

  v21 = *(v15 + v8[7] + 8);

  sub_1DEE1BFA0(*(v15 + v8[9]), *(v15 + v8[9] + 8));
  v22 = sub_1DEF8D1E8();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v0 + v28, 1, v22))
  {
    (*(v23 + 8))(v0 + v28, v22);
  }

  return MEMORY[0x1EEE6BDD0](v0, v29 + v28 + 2, v33 | v32 | v31 | v30 | 7);
}

uint64_t sub_1DEE36F88()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for Message();
  v4 = *(*(v3 - 1) + 80);
  v21 = *(*(v3 - 1) + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = AssociatedTypeWitness;
  v6 = *(v23 + 80);
  v22 = *(v23 + 64);
  v7 = v0 + ((v4 + 48) & ~v4);
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);
  v11 = v3[5];
  if (!(*(v9 + 48))(v7 + v11, 1, v8))
  {
    v10(v7 + v11, v8);
  }

  v12 = v4 | v6;
  v13 = (v21 + ((v4 + 48) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v6 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6;
  v16 = *(v7 + v3[6] + 8);

  v17 = *(v7 + v3[7] + 8);

  sub_1DEE1BFA0(*(v7 + v3[9]), *(v7 + v3[9] + 8));
  v18 = *(v0 + v13 + 8);

  v19 = *(v0 + v14 + 8);

  (*(v23 + 8))(v0 + v15, v24);

  return MEMORY[0x1EEE6BDD0](v0, v15 + v22, v12 | 7);
}

uint64_t sub_1DEE371E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v57 = v4;
  v5 = *(sub_1DEF8E808() - 8);
  v71 = *(v5 + 80);
  v6 = (v71 + 48) & ~v71;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1DEF8DDC8() - 8);
  v70 = *(v8 + 80);
  v9 = (v7 + v70 + 16) & ~v70;
  v62 = v1;
  v10 = *(v1 - 8);
  v69 = *(v10 + 80);
  v59 = (v9 + *(v8 + 64) + v69) & ~v69;
  v11 = (*(v10 + 64) + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for Message();
  v68 = *(*(v12 - 1) + 80);
  v58 = (v11 + v68 + 16) & ~v68;
  v60 = (*(*(v12 - 1) + 64) + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = *(v13 + 80);
  v14 = (v61 + v67 + 8) & ~v67;
  v15 = *(v13 + 64);
  v64 = type metadata accessor for DeviceDescriptor();
  v66 = *(*(v64 - 8) + 80);
  v16 = v15 + v66;
  v65 = *(*(v64 - 8) + 64);
  v17 = (v0 + v6);
  v72 = v14;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v54 = v16;
    v55 = v7;
    v56 = (v7 + v70 + 16) & ~v70;
    v18 = sub_1DEF8D3F8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 8);
    v20(v17, v18);
    v21 = v12[5];
    if (!(*(v19 + 48))(v17 + v21, 1, v18))
    {
      v20((v17 + v21), v18);
    }

    v22 = *(v17 + v12[6] + 8);

    v23 = *(v17 + v12[7] + 8);

    sub_1DEE1BFA0(*(v17 + v12[9]), *(v17 + v12[9] + 8));
    v24 = *(v57 + 28);
    v25 = sub_1DEF8D1E8();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v17 + v24, 1, v25))
    {
      (*(v26 + 8))(v17 + v24, v25);
    }

    (*(*(AssociatedTypeWitness - 8) + 8))(v17 + *(v57 + 32), AssociatedTypeWitness);
    v14 = (v61 + v67 + 8) & ~v67;
    v7 = v55;
    v9 = v56;
    v16 = v54;
  }

  v27 = v16 + v14;
  v28 = *(v0 + v7 + 8);

  v29 = *(AssociatedTypeWitness - 8);
  if (!(*(v29 + 48))(v0 + v9, 1, AssociatedTypeWitness))
  {
    (*(v29 + 8))(v0 + v9, AssociatedTypeWitness);
  }

  v30 = v27 + 1;
  (*(v10 + 8))(v0 + v59, v62);
  v31 = v0 + v58;
  v32 = sub_1DEF8D3F8();
  v33 = *(v32 - 8);
  v63 = *(v33 + 8);
  v63(v0 + v58, v32);
  v34 = v12[5];
  v35 = *(v33 + 48);
  if (!v35(v0 + v58 + v34, 1, v32))
  {
    v63(v31 + v34, v32);
  }

  v36 = v30 & ~v66;
  v37 = *(v31 + v12[6] + 8);

  v38 = *(v31 + v12[7] + 8);

  sub_1DEE1BFA0(*(v31 + v12[9]), *(v31 + v12[9] + 8));
  v39 = *(v0 + v60 + 8);

  v40 = *(v0 + v61);

  v41 = sub_1DEF8D1E8();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v0 + v72, 1, v41))
  {
    (*(v42 + 8))(v0 + v72, v41);
  }

  v43 = (v0 + v36);
  v44 = *(v0 + v36 + 8);

  v45 = *(v0 + v36 + 24);

  v46 = *(v0 + v36 + 96);

  v47 = *(v0 + v36 + 104);

  v48 = *(v0 + v36 + 120);
  if (v48 >> 60 != 15)
  {
    sub_1DEE1BFA0(v43[14], v48);
  }

  v49 = v43[17];

  v50 = v43[19];

  v51 = v43[21];

  v52 = *(v64 + 60);
  if (!v35(v43 + v52, 1, v32))
  {
    v63(v43 + v52, v32);
  }

  return MEMORY[0x1EEE6BDD0](v0, v65 + v36 + 1, v71 | v70 | v69 | v68 | v67 | v66 | 7);
}

uint64_t sub_1DEE3799C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE379E4()
{
  v1 = type metadata accessor for Message();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*(v1 - 1) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v10 = v1[5];
  if (!(*(v8 + 48))(v6 + v10, 1, v7))
  {
    v9(v6 + v10, v7);
  }

  v11 = *(v6 + v1[6] + 8);

  v12 = *(v6 + v1[7] + 8);

  sub_1DEE1BFA0(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  if (*(v0 + v4))
  {
    v13 = *(v0 + v4 + 8);
  }

  v14 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + v14 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + 16, v2 | 7);
}

uint64_t sub_1DEE37B90()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 6);

  if (*(v0 + 7))
  {
    v6 = *(v0 + 8);
  }

  v7 = (v3 + 72) & ~v3;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(&v0[v7], v1);
  v9 = *&v0[v8 + 8];

  return MEMORY[0x1EEE6BDD0](v0, v8 + 16, v3 | 7);
}

uint64_t sub_1DEE37C74()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v28 = *(v2 + 80);
  v3 = (v28 + 64) & ~v28;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Message();
  v27 = *(*(v5 - 1) + 80);
  v6 = (v4 + v27 + 16) & ~v27;
  v7 = *(*(v5 - 1) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v7 + v9;
  v26 = *(v8 + 64);
  v11 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
    v12 = *(v0 + v4 + 8);
  }

  v13 = v10 & ~v9;
  v14 = v0 + v6;
  v15 = sub_1DEF8D3F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v14, v15);
  v18 = v5[5];
  if (!(*(v16 + 48))(v14 + v18, 1, v15))
  {
    v17(v14 + v18, v15);
  }

  v19 = *(v14 + v5[6] + 8);

  v20 = *(v14 + v5[7] + 8);

  sub_1DEE1BFA0(*(v14 + v5[9]), *(v14 + v5[9] + 8));
  v21 = sub_1DEF8D1E8();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v13, 1, v21))
  {
    (*(v22 + 8))(v0 + v13, v21);
  }

  v23 = (v26 + v13 + 9) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v0 + v23 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v23 + 16, v28 | v27 | v9 | 7);
}

uint64_t sub_1DEE37FA8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  sub_1DEE39214(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 64))
  {
    v10 = *(v0 + 72);
  }

  v11 = (v4 + 80) & ~v4;
  v12 = (v11 + v5 + v8) & ~v8;
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v11, v1);
  (*(v7 + 8))(v0 + v12, AssociatedTypeWitness);
  v14 = *(v0 + v13 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v4 | v8 | 7);
}

uint64_t sub_1DEE38144()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE3819C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE381DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Record.Value(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DEE38294(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Record.Value(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1DEE3834C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE383CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DEE38488(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DEE38540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
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

uint64_t sub_1DEE385FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DEF8D3F8();
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

uint64_t sub_1DEE386CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DEE387EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DEE3883C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1DEE3888C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1DEE388DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1DEE38924(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1DEE38968@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_1DEE389B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 49) = v2;
  return result;
}

uint64_t sub_1DEE389F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1DEE38A44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v3 + v4, a2);
}

uint64_t sub_1DEE38AA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE38AE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D818();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DEE38B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D818();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DEE38BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Message();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DEE38CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Message();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DEE38DF8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DEE38E40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEE38E88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1DEE38ED0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1DEE38F14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEF86AA0();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE38F40(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
}

uint64_t sub_1DEE38F8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE38FC8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE39000()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DEE39040()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DEE39088@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DEF899E4();
  *a2 = result;
  return result;
}

uint64_t sub_1DEE390B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DEEF09C8(v4);
}

__n128 sub_1DEE390EC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1DEE39100()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

id sub_1DEE39150(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DEE391C8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void sub_1DEE39214(id a1, char a2)
{
  if (a2)
  {
  }
}

id STRPLogCoding()
{
  if (STRPLogCoding_onceToken[0] != -1)
  {
    STRPLogCoding_cold_1();
  }

  v1 = STRPLogCoding___logObj;

  return v1;
}

uint64_t __STRPLogCoding_block_invoke()
{
  STRPLogCoding___logObj = os_log_create("com.apple.replicatorengine", "Coding");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t getEnumTagSinglePayload for ProtocolVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProtocolVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DEE3BB88(uint64_t a1, int a2)
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

uint64_t sub_1DEE3BBA8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DEE3BBE4()
{
  v0 = sub_1DEF8DD08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8DCD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D6D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1DEE3C630();
  sub_1DEF8D6C8();
  v10[1] = MEMORY[0x1E69E7CC0];
  sub_1DEE3C0A4(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  result = sub_1DEF8DD38();
  qword_1ECDE33F8 = result;
  return result;
}

uint64_t sub_1DEE3BE1C(uint64_t a1, id *a2)
{
  result = sub_1DEF8D928();
  *a2 = 0;
  return result;
}

uint64_t sub_1DEE3BE94(uint64_t a1, id *a2)
{
  v3 = sub_1DEF8D938();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DEE3BF14@<X0>(uint64_t *a1@<X8>)
{
  sub_1DEF8D948();
  v2 = sub_1DEF8D918();

  *a1 = v2;
  return result;
}

uint64_t sub_1DEE3BF58(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE2BF0, type metadata accessor for FileAttributeKey);
  v3 = sub_1DEE3C0A4(&qword_1ECDE3950, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C0A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE3C0EC(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE3938, type metadata accessor for FileProtectionType);
  v3 = sub_1DEE3C0A4(&unk_1ECDE3940, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C238@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DEF8D918();

  *a2 = v5;
  return result;
}

uint64_t sub_1DEE3C280(uint64_t a1)
{
  v2 = sub_1DEE3C0A4(&qword_1ECDE3928, type metadata accessor for Name);
  v3 = sub_1DEE3C0A4(&qword_1ECDE3930, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DEE3C33C()
{
  v1 = *v0;
  v2 = sub_1DEF8D948();
  v3 = MEMORY[0x1E12CB1B0](v2);

  return v3;
}

uint64_t sub_1DEE3C378()
{
  v1 = *v0;
  sub_1DEF8D948();
  sub_1DEF8D9B8();
}

uint64_t sub_1DEE3C3CC()
{
  v1 = *v0;
  sub_1DEF8D948();
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v2 = sub_1DEF8E7F8();

  return v2;
}

uint64_t sub_1DEE3C518(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DEF8D948();
  v6 = v5;
  if (v4 == sub_1DEF8D948() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();
  }

  return v9 & 1;
}

unint64_t sub_1DEE3C630()
{
  result = qword_1ECDE2C00;
  if (!qword_1ECDE2C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2C00);
  }

  return result;
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

unint64_t sub_1DEE3C6C4()
{
  result = qword_1ECDE2C30;
  if (!qword_1ECDE2C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C30);
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

uint64_t TimedHandshakeTask.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 56);
}

void TimedHandshakeTask.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t TimedHandshakeTask.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TimedHandshakeTask.__allocating_init(handshakeDescriptor:schedule:handler:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(a1, a2, a3, a4);
  return v11;
}

uint64_t TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v39 = a4;
  v29 = sub_1DEF8DD08();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8DCD8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1DEF8D6D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v37 = *a1;
  v16 = *(a1 + 2);
  v35 = *(a1 + 3);
  v36 = v16;
  v34 = *(a1 + 32);
  v17 = *(a1 + 5);
  v32 = *(a1 + 6);
  v33 = v17;
  v31 = *a2;
  v30 = *(a2 + 8);
  sub_1DEF8D348();
  v28 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue;
  sub_1DEE3C630();
  sub_1DEF8D6C8();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BAB0(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8098], v29);
  *(v4 + v28) = sub_1DEF8DD38();
  v18 = (v4 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  *v18 = 0;
  v18[1] = 0;
  v19 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer;
  type metadata accessor for BasicTimer();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v20 + 24) = v21;
  *(v5 + v19) = v20;
  *(v5 + 16) = v37;
  v22 = v35;
  *(v5 + 32) = v36;
  *(v5 + 40) = v22;
  *(v5 + 48) = v34;
  v23 = v32;
  *(v5 + 56) = v33;
  *(v5 + 64) = v23;
  *(v5 + 72) = v31;
  *(v5 + 80) = v30;
  v24 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  v25 = v39;
  *v24 = v38;
  v24[1] = v25;
  return v5;
}

Swift::Void __swiftcall TimedHandshakeTask.start()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEE3DBC0;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE13AF8;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE3CDC8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_1DEF8D378();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = (MEMORY[0x1EEE9AC00])(v3);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (MEMORY[0x1EEE9AC00])(v6);
  v11 = v53 - v10;
  v12 = (MEMORY[0x1EEE9AC00])(v9);
  v14 = v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v53 - v15;
  sub_1DEF8D348();
  v17 = a1[9];
  v18 = *(a1 + 80);
  v53[1] = v2;
  if (!v18)
  {
    v57 = v17;
    v58 = 0;
    goto LABEL_5;
  }

  if (v18 == 1)
  {
    v57 = v17;
    v58 = 1;
LABEL_5:
    sub_1DEE3DDBC(v17);
    goto LABEL_7;
  }

  sub_1DEE3DD28(0x20000000000001uLL);
LABEL_7:
  sub_1DEF8D2E8();
  v55 = v4[1];
  v55(v14, v3);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6028);
  v20 = v4[2];
  v20(v11, v16, v3);
  v54 = v16;
  v20(v8, v16, v3);

  v21 = sub_1DEF8D4D8();
  v22 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v3;
    v24 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    v56 = a1;
    v57 = v53[0];
    *v24 = 136315650;

    v25 = sub_1DEF8D988();
    v27 = sub_1DEE12A5C(v25, v26, &v57);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    sub_1DEE2BAB0(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
    v28 = sub_1DEF8E2E8();
    v30 = v29;
    v31 = v11;
    v32 = v55;
    v55(v31, v23);
    v33 = sub_1DEE12A5C(v28, v30, &v57);

    *(v24 + 14) = v33;
    *(v24 + 22) = 2050;
    sub_1DEF8D318();
    v35 = v34;
    v32(v8, v23);
    *(v24 + 24) = v35;
    _os_log_impl(&dword_1DEE0F000, v21, v22, "%s scheduling timed handshake task at: %{public}s in %{public}fs", v24, 0x20u);
    v36 = v53[0];
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v36, -1, -1);
    v37 = v24;
    v3 = v23;
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {

    v38 = v55;
    v55(v8, v3);
    v38(v11, v3);
  }

  type metadata accessor for BasicTimer();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v39 + 24) = v40;
  v41 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer);
  *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer) = v39;

  v42 = a1[9];
  v43 = v54;
  if (*(a1 + 80))
  {
    if (*(a1 + 80) != 1)
    {
      v44 = sub_1DEE3DD28(0x20000000000001uLL);
      goto LABEL_18;
    }

    v57 = a1[9];
    v58 = 1;
  }

  else
  {
    v57 = a1[9];
    v58 = 0;
  }

  sub_1DEE3DDBC(v42);
LABEL_18:
  v45 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v46 = *(v39 + 24);
  v47 = MEMORY[0x1EEE9AC00](v44);
  v53[-6] = v39;
  *&v53[-5] = v47;
  v53[-4] = v48;
  v53[-3] = sub_1DEE3DDB4;
  v53[-2] = a1;
  MEMORY[0x1EEE9AC00](v49);
  v53[-2] = sub_1DEE1B740;
  v53[-1] = v50;

  os_unfair_lock_lock(v46 + 4);
  sub_1DEE3DEF0(v51);
  os_unfair_lock_unlock(v46 + 4);

  v55(v43, v3);
}

uint64_t sub_1DEE3D3FC(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  if (v1)
  {
    v2 = *(result + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler + 8);

    v1(v3);

    return sub_1DEE3DBD0(v1);
  }

  return result;
}

Swift::Void __swiftcall TimedHandshakeTask.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DEE3DBC8;
  *(v2 + 24) = v0;
  v4[4] = sub_1DEE3DEE0;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1DEE134F4;
  v4[3] = &block_descriptor_7;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1DEE3D5A0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  v3 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler);
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_1DEE3DBD0(v3);
  v5 = *(*(a1 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer) + 24);

  os_unfair_lock_lock(v5 + 4);
  sub_1DEE15434(v6);
  os_unfair_lock_unlock(v5 + 4);
}

uint64_t TimedHandshakeTask.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler + 8);
  sub_1DEE3DBD0(*(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler));
  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer);

  return v0;
}

uint64_t TimedHandshakeTask.__deallocating_deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);

  v5 = *&v0[OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler + 8];
  sub_1DEE3DBD0(*&v0[OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_handler]);
  v6 = *&v0[OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue_timer];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE3D7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v4 = *(*v1 + 40);
  v6 = *(*v1 + 48);
  *a1 = *(*v1 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v2 + 56);
}

void sub_1DEE3D82C(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 80);
  *a1 = *(*v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t sub_1DEE3D844@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_creationDate;
  v5 = sub_1DEF8D378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DEE3D8C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 + 8);
  v15 = *a2;
  v16 = v10;
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  result = TimedHandshakeTask.init(handshakeDescriptor:schedule:handler:)(a1, &v15, a3, a4);
  *a5 = v13;
  return result;
}

uint64_t sub_1DEE3D940()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEE3DEDC;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE3DEE0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_25;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE3DA80()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine18TimedHandshakeTask_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEE3DED8;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE3DEE0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_17;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE3DBD0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for TimedHandshakeTask()
{
  result = qword_1ECDE3118;
  if (!qword_1ECDE3118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE3DC34()
{
  result = sub_1DEF8D378();
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

unint64_t sub_1DEE3DD28(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E12CCD90](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E12CCD90](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE3DDBC(uint64_t a1)
{
  if (a1 && (a1 - 9) >= 0xFFFFFFFFFFFFFFF8)
  {
    v1 = a1 - 1;
    sub_1DEE3DD28(0x20000000000001uLL);
    exp2(v1);
  }

  else
  {
    sub_1DEE3DD28(0x20000000000001uLL);
  }
}

uint64_t sub_1DEE3DF08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a2) != 16)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_1DEE3E0EC();
      sub_1DEF8CFB8();
      sub_1DEF8D3C8();
      sub_1DEE1BFA0(a1, a2);
      v11 = sub_1DEF8D3F8();
      result = (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEE1BFA0(a1, a2);
  v14 = sub_1DEF8D3F8();
  v15 = *(*(v14 - 8) + 56);
  v16 = *MEMORY[0x1E69E9840];

  return v15(a3, 1, 1, v14);
}

unint64_t sub_1DEE3E0EC()
{
  result = qword_1ED786058;
  if (!qword_1ED786058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786058);
  }

  return result;
}

uint64_t ProtocolVersion.init(current:minimum:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t ProtocolVersion.highestCompatibleProtocolVersion(with:)(unint64_t *a1)
{
  v2 = *a1;
  v4 = *v1 < a1[1] || v2 < v1[1];
  if (*v1 < v2)
  {
    v2 = *v1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

Swift::UInt64_optional __swiftcall ProtocolVersion.highestCompatibleProtocolVersion(with:)(Swift::UInt64 with)
{
  v3 = v1[1] > with || *v1 < with;
  if (v3)
  {
    with = 0;
  }

  result.value = with;
  result.is_nil = v3;
  return result;
}

uint64_t _s16ReplicatorEngine29NetworkMessagingCriticalErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D756D696E696DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DEE3E38C(uint64_t a1)
{
  v2 = sub_1DEE24474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEE3E3C8(uint64_t a1)
{
  v2 = sub_1DEE24474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProtocolVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A38, &qword_1DEF90580);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24474();
  sub_1DEF8E858();
  v14 = 0;
  sub_1DEF8E2B8();
  if (!v2)
  {
    v13 = 1;
    sub_1DEF8E2B8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ProtocolVersion.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E12CBF90](*v0);
  return MEMORY[0x1E12CBF90](v1);
}

uint64_t ProtocolVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E640()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE3E69C()
{
  v1 = v0[1];
  MEMORY[0x1E12CBF90](*v0);
  return MEMORY[0x1E12CBF90](v1);
}

uint64_t sub_1DEE3E6D8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE3E734()
{
  result = qword_1ECDE3A48;
  if (!qword_1ECDE3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A48);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ProtocolVersion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEE3E878()
{
  result = qword_1ECDE3A50;
  if (!qword_1ECDE3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3A50);
  }

  return result;
}

unint64_t sub_1DEE3E8D0()
{
  result = qword_1ECDE3478;
  if (!qword_1ECDE3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3478);
  }

  return result;
}

unint64_t sub_1DEE3E928()
{
  result = qword_1ECDE3480;
  if (!qword_1ECDE3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3480);
  }

  return result;
}

uint64_t sub_1DEE3E97C()
{
  v1 = *(v0 + 72);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE3E9F0(char a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_1DEE3ECC4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1DEE3ECC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 1)
  {
    return sub_1DEE3ECFC();
  }

  else
  {
    return sub_1DEE3EEE0();
  }
}

uint64_t sub_1DEE3ECFC()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 72);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  result = v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF5FE0);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Enabling IDS zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v1 + v9) = 1;
  sub_1DEE3FE28();
  return sub_1DEE4254C();
}

uint64_t sub_1DEE3EEE0()
{
  v1 = sub_1DEF8D788();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 72);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DEF8D7B8();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  result = v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled;
  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) != 1)
  {
    return result;
  }

  v9 = v0;
  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = sub_1DEF8D508();
  __swift_project_value_buffer(v12, qword_1ECDF5FE0);
  v13 = sub_1DEF8D4D8();
  v14 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, v13, v14, "Disabling IDS zone advertiser", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }

  *(v9 + v8) = 0;
  return sub_1DEE42DAC();
}

uint64_t sub_1DEE3F0C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t (*sub_1DEE3F104(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 72);
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE3F18C;
}

uint64_t sub_1DEE3F1B4()
{
  v1 = *(v0 + 72);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE3F220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v5 = type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ZoneVersionAdvertisement(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(a1 + v18, v17, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v10 + 48))(v17, 1, v9))
  {
    result = sub_1DEE171B4(v17, &qword_1ECDE3A78, &qword_1DEF90820);
    v20 = 0;
  }

  else
  {
    sub_1DEE46C34(v17, v13, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE171B4(v17, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C34(v13, v8, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    sub_1DEE46C9C(v13, type metadata accessor for ZoneVersionAdvertisement);
    v22 = *v8;
    v21 = v8[1];

    sub_1DEE46C9C(v8, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    if (v22 == v24 && v21 == v25)
    {

      v20 = 1;
    }

    else
    {
      v20 = sub_1DEF8E4E8();
    }
  }

  *v26 = v20 & 1;
  return result;
}

uint64_t sub_1DEE3F4E4()
{
  v0 = sub_1DEF8D688();
  __swift_allocate_value_buffer(v0, qword_1ECDE3318);
  *__swift_project_value_buffer(v0, qword_1ECDE3318) = 500;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1DEE3F574()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v5 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEE1B548(&qword_1ECDE2D28, &qword_1ECDE3A58, &qword_1DEF937F0);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1DEE3F638(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t (*sub_1DEE3F648(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEE3F574();
  return sub_1DEE3F690;
}

uint64_t sub_1DEE3F690(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
}

uint64_t IDSZoneAdvertiser.__allocating_init(idsServiceName:firstLockStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  IDSZoneAdvertiser.init(idsServiceName:firstLockStateProvider:)(a1, a2, a3);
  return v9;
}

char *IDSZoneAdvertiser.init(idsServiceName:firstLockStateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a3;
  v44 = a1;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v9 = *(v8 - 8);
  v48 = v8;
  v49 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v40 - v11;
  v12 = sub_1DEF8DD08();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8DCD8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1DEF8D6D8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  *(v3 + 7) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v3 + 8) = sub_1DEF8D598();
  sub_1DEE3C630();
  v40 = "eue_timer";
  sub_1DEF8D6C8();
  v50 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v41 + 104))(v15, *MEMORY[0x1E69E8098], v42);
  *(v3 + 9) = sub_1DEF8DD38();
  v23 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  v24 = type metadata accessor for ZoneVersionAdvertisement(0);
  v25 = *(*(v24 - 8) + 56);
  v25(&v4[v23], 1, 1, v24);
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask] = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask] = 0;
  v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled] = 0;
  v25(&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement], 1, 1, v24);
  v26 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper] = 0;
  v27 = MEMORY[0x1E69E7CD0];
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_subscriptions] = MEMORY[0x1E69E7CD0];
  *&v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapperSubscriptions] = v27;
  v28 = v43;
  sub_1DEE29594(v43, (v4 + 16));
  v29 = &v4[OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName];
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  v31 = v28[3];
  v32 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v31);
  v50 = (*(v32 + 8))(v31, v32);
  v51 = *(v4 + 9);
  v33 = v51;
  v34 = sub_1DEF8DCF8();
  v35 = v46;
  (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
  v36 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B8D8(&qword_1ECDE2C08, sub_1DEE3C630);
  v37 = v47;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v35, &qword_1ECDE3A60, &unk_1DEF90810);

  swift_allocObject();
  swift_weakInit();
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100);
  v38 = v48;
  sub_1DEF8D5E8();

  (*(v49 + 8))(v37, v38);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v4;
}

uint64_t sub_1DEE3FDB8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1DEE3FE28();
    }
  }

  return result;
}

void sub_1DEE3FE28()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[9];
  *v6 = v7;
  v8 = *MEMORY[0x1E69E8020];
  v9 = v3[13];
  v9(v6, v8, v2);
  v22 = v7;
  LOBYTE(v7) = sub_1DEF8D7B8();
  v10 = v3[1];
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_5;
  }

  v21 = v9;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) != 1)
  {
    return;
  }

  v11 = v1[5];
  v12 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  if (((*(v12 + 16))(v11, v12) & 1) == 0)
  {
    return;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_14;
  }

LABEL_5:
  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF5FE0);
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Activating IDS zone advertiser", v16, 2u);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  sub_1DEE400F4(*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName), *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName + 8));
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) == 1)
  {
    sub_1DEE43210();
  }

  v17 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) == 1)
  {
    v18 = v21;
    v19 = v22;
    *v6 = v22;
    v18(v6, v8, v2);
    v20 = v19;
    LOBYTE(v19) = sub_1DEF8D7B8();
    v10(v6, v2);
    if (v19)
    {
      *(v1 + v17) = 1;
      sub_1DEE4254C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DEE400F4(char *a1, unint64_t a2)
{
  v3 = v2;
  v70 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A80, &qword_1DEF90900);
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A88, &qword_1DEF90908);
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A90, &qword_1DEF90910);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - v17;
  v19 = sub_1DEF8D788();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v3 + 72);
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8020], v19);
  v25 = v24;
  v26 = sub_1DEF8D7B8();
  v27 = (*(v20 + 8))(v23, v19);
  if (v26)
  {
    v64 = v15;
    if (qword_1ECDE3358 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = swift_once();
LABEL_3:
  v28 = qword_1ECDE3360;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v70;
  *(&v58 - 2) = a1;
  *(&v58 - 1) = v29;

  os_unfair_lock_lock((v28 + 24));
  sub_1DEE46484((v28 + 16), &v71);
  os_unfair_lock_unlock((v28 + 24));
  v30 = v71;

  v31 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper;
  v32 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper) = v30;
  v33 = v30;

  v34 = sub_1DEEE5AF0();
  v71 = v34;
  v72 = v25;
  v69 = sub_1DEF8DCF8();
  v35 = *(v69 - 8);
  v36 = *(v35 + 56);
  v67 = v35 + 56;
  v68 = v36;
  v36(v14, 1, 1, v69);
  v37 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A98, &qword_1DEF90918);
  v38 = sub_1DEE3C630();
  sub_1DEE1B548(&qword_1ECDE2D90, &qword_1ECDE3A98, &qword_1DEF90918);
  v39 = sub_1DEE1B8D8(&qword_1ECDE2C08, sub_1DEE3C630);
  v70 = v38;
  v66 = v39;
  sub_1DEF8D5D8();
  sub_1DEE171B4(v14, &qword_1ECDE3A60, &unk_1DEF90810);

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1DEE464A0;
  *(v41 + 24) = v40;
  sub_1DEE1B548(&qword_1ECDE2DF0, &qword_1ECDE3A90, &qword_1DEF90910);
  v42 = v64;
  sub_1DEF8D5E8();

  (*(v65 + 8))(v18, v42);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  v44 = *(v3 + v31);
  if (v44)
  {
    v45 = v31;
    v46 = v14;
    v47 = v44;
    v48 = sub_1DEEE5BCC();

    v71 = v48;
    v72 = v37;
    v68(v14, 1, 1, v69);
    v49 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AA0, &qword_1DEF90920);
    sub_1DEE1B548(&unk_1ECDE2D70, &qword_1ECDE3AA0, &qword_1DEF90920);
    v50 = v61;
    sub_1DEF8D5D8();
    sub_1DEE171B4(v46, &qword_1ECDE3A60, &unk_1DEF90810);

    swift_allocObject();
    swift_weakInit();
    sub_1DEE1B548(&qword_1ECDE2DE0, &qword_1ECDE3A88, &qword_1DEF90908);
    v51 = v63;
    sub_1DEF8D5E8();

    (*(v62 + 8))(v50, v51);
    swift_beginAccess();
    sub_1DEF8D568();
    swift_endAccess();

    v52 = *(v3 + v45);
    if (v52)
    {
      v53 = v52;
      v54 = sub_1DEEE5CA8();

      v71 = v54;
      v72 = v49;
      v68(v46, 1, 1, v69);
      v55 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AA8, &qword_1DEF90928);
      sub_1DEE1B548(&unk_1ECDE2DC0, &qword_1ECDE3AA8, &qword_1DEF90928);
      v56 = v58;
      sub_1DEF8D5D8();
      sub_1DEE171B4(v46, &qword_1ECDE3A60, &unk_1DEF90810);

      swift_allocObject();
      swift_weakInit();
      sub_1DEE1B548(&qword_1ECDE2E20, &qword_1ECDE3A80, &qword_1DEF90900);
      v57 = v60;
      sub_1DEF8D5E8();

      (*(v59 + 8))(v56, v57);
      swift_beginAccess();
      sub_1DEF8D568();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1DEE40A60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE40AD4(a1, a2);
  }

  return result;
}

void sub_1DEE40AD4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v7 = *(*(v67 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v67);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for Message();
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v68 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v63 - v19;
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v2;
  v26 = *(v2 + 72);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = sub_1DEF8D7B8();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = (a1 + v12[6]);
  if (*v28 == 0xD000000000000014 && 0x80000001DEF9BB30 == v28[1] || (sub_1DEF8E4E8() & 1) != 0)
  {
    if (qword_1ECDE2E40 == -1)
    {
LABEL_6:
      v29 = sub_1DEF8D508();
      v30 = __swift_project_value_buffer(v29, qword_1ECDF5FE0);
      sub_1DEE46C34(a1, v20, type metadata accessor for Message);
      sub_1DEE17214(v69, v11, &qword_1ECDE4890, &qword_1DEF90990);
      v31 = sub_1DEF8D4D8();
      v32 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v63 = v30;
        v34 = v33;
        v35 = swift_slowAlloc();
        v69 = a1;
        v36 = v35;
        v71[0] = v35;
        *v34 = 136446466;
        v37 = Message.description.getter();
        v39 = v38;
        sub_1DEE46C9C(v20, type metadata accessor for Message);
        v40 = sub_1DEE12A5C(v37, v39, v71);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2082;
        sub_1DEE17214(v11, v66, &qword_1ECDE4890, &qword_1DEF90990);
        v41 = sub_1DEF8D988();
        v43 = v42;
        sub_1DEE171B4(v11, &qword_1ECDE4890, &qword_1DEF90990);
        v44 = sub_1DEE12A5C(v41, v43, v71);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_1DEE0F000, v31, v32, "IDS zone advertiser got message %{public}s and url %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        a1 = v69;
        MEMORY[0x1E12CCD70](v36, -1, -1);
        MEMORY[0x1E12CCD70](v34, -1, -1);
      }

      else
      {

        sub_1DEE171B4(v11, &qword_1ECDE4890, &qword_1DEF90990);
        sub_1DEE46C9C(v20, type metadata accessor for Message);
      }

      v45 = (a1 + v12[9]);
      v46 = *v45;
      v47 = v45[1];
      v48 = *(a1 + v12[8]);
      type metadata accessor for OPACKCoder();
      sub_1DEE115C8(v74);
      sub_1DEE12F7C(v74, v72);
      v49 = MEMORY[0x1E69E7CC0];
      v50 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      v71[0] = v49;
      v71[1] = v50;
      v72[4] = v48;
      v73 = 0;
      v70[3] = &type metadata for PropertyListTypeDecoder.RootDecoder;
      v70[4] = sub_1DEE1DC98();
      v70[0] = swift_allocObject();
      sub_1DEE1DCEC(v71, v70[0] + 16);
      v51 = v65;
      ZoneVersionAdvertisement.init(from:)(v70, v65);
      sub_1DEE1EBB4(v71);
      __swift_destroy_boxed_opaque_existential_1(v74);
      sub_1DEE4608C(v51);
      v61 = type metadata accessor for ZoneVersionAdvertisement;
      v62 = v51;
      goto LABEL_15;
    }

LABEL_17:
    swift_once();
    goto LABEL_6;
  }

  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v52 = sub_1DEF8D508();
  __swift_project_value_buffer(v52, qword_1ECDF5FE0);
  sub_1DEE46C34(a1, v16, type metadata accessor for Message);
  v53 = sub_1DEF8D4D8();
  v54 = sub_1DEF8DC98();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v71[0] = v56;
    *v55 = 136446210;
    v57 = &v16[v12[6]];
    v58 = *v57;
    v59 = v57[1];

    sub_1DEE46C9C(v16, type metadata accessor for Message);
    v60 = sub_1DEE12A5C(v58, v59, v71);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_1DEE0F000, v53, v54, "IDS zone advertiser ignoring unexpected message of type %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1E12CCD70](v56, -1, -1);
    MEMORY[0x1E12CCD70](v55, -1, -1);

    return;
  }

  v61 = type metadata accessor for Message;
  v62 = v16;
LABEL_15:
  sub_1DEE46C9C(v62, v61);
}

uint64_t sub_1DEE41484()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DEE46984();
  }

  return result;
}

uint64_t sub_1DEE414DC(__int128 *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v1 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5[0] = v3;
    v5[1] = v4;
    v6 = v1;
    sub_1DEE41558(v5);
  }

  return result;
}

void sub_1DEE41558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(v2 + 72);
  *v8 = v14;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if (v14)
  {
    if (qword_1ECDE2E40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_1DEF8D508();
  __swift_project_value_buffer(v16, qword_1ECDF5FE0);
  sub_1DEE4650C(v9, v10);
  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();
  sub_1DEE46550(v9, v10);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136446210;
    v24[0] = v9;
    v24[1] = v10;
    v24[2] = v11;
    v24[3] = v12;
    v25 = v13;
    sub_1DEE4650C(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB0, &unk_1DEF90930);
    v21 = sub_1DEF8D988();
    v23 = sub_1DEE12A5C(v21, v22, &v26);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DEE0F000, v17, v18, "IDS zone advertiser didUpdatePairedDevice to %{public}s; sending latest advertisment", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
  sub_1DEE43210();
}

void sub_1DEE41818()
{
  v2 = v0;
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 72);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    v11 = swift_once();
    goto LABEL_5;
  }

  v1 = (v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID);
  v8 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID);
  v11 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID + 8);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID + 8);
LABEL_11:

    return;
  }

  if (qword_1ECDE33F0 != -1)
  {
    goto LABEL_13;
  }

LABEL_5:
  MEMORY[0x1EEE9AC00](v11);
  v23[-4] = v8;
  v23[-3] = 0;
  v23[-2] = sub_1DEE4467C;
  v23[-1] = v2;
  sub_1DEF8DD18();
  if (qword_1ECDE2E40 != -1)
  {
    swift_once();
  }

  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF5FE0);

  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136446210;
    v18 = sub_1DEE41818(v17);
    v20 = sub_1DEE12A5C(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Found local device ID: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12CCD70](v17, -1, -1);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  if (v1[1])
  {
    v21 = *v1;
    v22 = v1[1];

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1DEE41B30(uint64_t a1)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DEF8D948();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID);
  v8 = *(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID + 8);
  *v7 = v4;
  v7[1] = v6;
}

uint64_t IDSZoneAdvertiser.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);
  v3 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask);

  v4 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement, &qword_1ECDE3A78, &qword_1DEF90820);
  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser___queue_localDeviceID + 8);

  v6 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceName + 8);

  v7 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_subscriptions);

  v8 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapperSubscriptions);

  return v0;
}

uint64_t IDSZoneAdvertiser.__deallocating_deinit()
{
  IDSZoneAdvertiser.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE41D20()
{
  v1 = *(*v0 + 72);
  sub_1DEF8DD18();
  return v3;
}

uint64_t (*sub_1DEE41DA4(uint64_t a1))(uint64_t *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 72);
  sub_1DEF8DD18();
  *(a1 + 8) = *(a1 + 9);
  return sub_1DEE3F18C;
}

uint64_t IDSZoneAdvertiser.advertise(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1DEF8D698();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D6D8();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ZoneVersionAdvertisement(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v19 = v1[9];
  sub_1DEE46C34(a1, &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ZoneVersionAdvertisement);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_1DEE442B0(&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  aBlock[4] = sub_1DEE44314;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_10;
  v17 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v7, v17);
  _Block_release(v17);
  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

Swift::Void __swiftcall IDSZoneAdvertiser.subscribe()()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D6D8();
  v6 = *(v12 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 72);
  aBlock[4] = sub_1DEE443A4;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

uint64_t sub_1DEE424E0()
{
  v1 = *(*v0 + 72);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEE4254C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - v6;
  v8 = type metadata accessor for ZoneVersionAdvertisement(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v18 = sub_1DEF8D788();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v1 + 72);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v24 = v23;
  v25 = sub_1DEF8D7B8();
  v27 = *(v19 + 8);
  v26 = v19 + 8;
  v27(v22, v18);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  v28 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_receivedAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(v1 + v28, v7, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1DEE171B4(v7, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  v22 = v8;
  v26 = v17;
  sub_1DEE442B0(v7, v17);
  v25 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) == 1 && *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) == 1)
  {
    v30 = v8;
    v61 = v9;
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v31 = sub_1DEF8D508();
    __swift_project_value_buffer(v31, qword_1ECDF5FE0);
    v32 = v62;
    sub_1DEE46C34(v26, v62, type metadata accessor for ZoneVersionAdvertisement);
    v33 = sub_1DEF8D4D8();
    v34 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v35 = 136446210;
      v64[0] = 0;
      v64[1] = 0xE000000000000000;
      sub_1DEF8DF28();

      strcpy(v64, "remoteDevice: ");
      HIBYTE(v64[1]) = -18;
      v36 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v36);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      v37 = *(v32 + *(v30 + 20));
      type metadata accessor for ZoneVersion();
      v38 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v38);

      v39 = v64[0];
      v40 = v64[1];
      sub_1DEE46C9C(v32, type metadata accessor for ZoneVersionAdvertisement);
      v41 = sub_1DEE12A5C(v39, v40, &v65);

      *(v35 + 4) = v41;
      v42 = v35;
      _os_log_impl(&dword_1DEE0F000, v33, v34, "subscribed, enabled, and got advertisement:%{public}s", v35, 0xCu);
      v43 = v60;
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1E12CCD70](v43, -1, -1);
      MEMORY[0x1E12CCD70](v42, -1, -1);
    }

    else
    {

      sub_1DEE46C9C(v32, type metadata accessor for ZoneVersionAdvertisement);
    }

    v57 = v63;
    (*(v61 + 56))(v63, 1, 1, v30);
    swift_beginAccess();
    sub_1DEE29D60(v57, v1 + v28, &qword_1ECDE3A78, &qword_1DEF90820);
    swift_endAccess();
    v58 = *(v1 + 64);
    sub_1DEF8D588();
    v56 = v26;
    return sub_1DEE46C9C(v56, type metadata accessor for ZoneVersionAdvertisement);
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v44 = sub_1DEF8D508();
  __swift_project_value_buffer(v44, qword_1ECDF5FE0);
  sub_1DEE46C34(v26, v13, type metadata accessor for ZoneVersionAdvertisement);
  swift_retain_n();
  v45 = sub_1DEF8D4D8();
  v46 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = v22;
    v49 = swift_slowAlloc();
    v65 = v49;
    *v47 = 67240706;
    *(v47 + 4) = *(v1 + v25);

    *(v47 + 8) = 1026;
    *(v47 + 10) = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled);

    *(v47 + 14) = 2082;
    v64[0] = 0;
    v64[1] = 0xE000000000000000;
    sub_1DEF8DF28();

    strcpy(v64, "remoteDevice: ");
    HIBYTE(v64[1]) = -18;
    v50 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
    MEMORY[0x1E12CB180](v50);

    MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
    v51 = *&v13[*(v48 + 5)];
    type metadata accessor for ZoneVersion();
    v52 = sub_1DEF8D858();
    MEMORY[0x1E12CB180](v52);

    v53 = v64[0];
    v54 = v64[1];
    sub_1DEE46C9C(v13, type metadata accessor for ZoneVersionAdvertisement);
    v55 = sub_1DEE12A5C(v53, v54, &v65);

    *(v47 + 16) = v55;
    _os_log_impl(&dword_1DEE0F000, v45, v46, "received advertisement, but _queue_subscribed:%{BOOL,public}d _queue_enabled:%{BOOL,public}d so ignoring:%{public}s", v47, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1E12CCD70](v49, -1, -1);
    MEMORY[0x1E12CCD70](v47, -1, -1);
  }

  else
  {

    sub_1DEE46C9C(v13, type metadata accessor for ZoneVersionAdvertisement);
  }

  v56 = v26;
  return sub_1DEE46C9C(v56, type metadata accessor for ZoneVersionAdvertisement);
}

uint64_t sub_1DEE42DAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33[-v4];
  v6 = type metadata accessor for ZoneVersionAdvertisement(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33[-v12];
  v14 = sub_1DEF8D788();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v33[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v1 + 72);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled))
  {
    return result;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_14;
  }

LABEL_4:
  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF5FE0);
  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DEE0F000, v23, v24, "Deactivating IDS zone advertiser", v25, 2u);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  v26 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper) = 0;

  v27 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapperSubscriptions;
  swift_beginAccess();
  v28 = *(v1 + v27);
  *(v1 + v27) = MEMORY[0x1E69E7CD0];

  v29 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  sub_1DEE17214(v1 + v29, v5, &qword_1ECDE3A78, &qword_1DEF90820);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DEE171B4(v5, &qword_1ECDE3A78, &qword_1DEF90820);
  }

  else
  {
    sub_1DEE442B0(v5, v13);
    sub_1DEE46C34(v13, v11, type metadata accessor for ZoneVersionAdvertisement.DeviceDescriptor);
    *&v11[*(v6 + 20)] = sub_1DEEA29E4(MEMORY[0x1E69E7CC0]);
    sub_1DEE43580(v11, 1);
    sub_1DEE46C9C(v11, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE46C9C(v13, type metadata accessor for ZoneVersionAdvertisement);
    *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
  }

  v30 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask;
  if (*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask))
  {
    v31 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscriptionTask);

    sub_1DEF8DB88();

    v32 = *(v1 + v30);
  }

  *(v1 + v30) = 0;
}

void sub_1DEE43210()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for ZoneVersionAdvertisement(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 72);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_enabled) == 1)
  {
    v17 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending;
    if (*(v0 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) == 1)
    {
      v18 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
      swift_beginAccess();
      sub_1DEE17214(v0 + v18, v4, &qword_1ECDE3A78, &qword_1DEF90820);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1DEE171B4(v4, &qword_1ECDE3A78, &qword_1DEF90820);
      }

      else
      {
        sub_1DEE442B0(v4, v9);
        *(v0 + v17) = 0;
        sub_1DEE43580(v9, 0);
        sub_1DEE46C9C(v9, type metadata accessor for ZoneVersionAdvertisement);
      }
    }

    return;
  }

  if (qword_1ECDE2E40 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF5FE0);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "advertiser will advertise when enabled", v22, 2u);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }
}

uint64_t sub_1DEE43580(uint64_t a1, int a2)
{
  v28 = a2;
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27[-v9];
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v2 + 72);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = sub_1DEF8D7B8();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v19 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask;
    if (*(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask))
    {
      v20 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementTask);

      sub_1DEF8DB88();
    }

    v21 = sub_1DEF8DB78();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    v22 = swift_allocObject();
    swift_weakInit();
    sub_1DEE46C34(a1, &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ZoneVersionAdvertisement);
    v23 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;
    sub_1DEE442B0(&v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v23);
    *(v24 + v23 + v6) = v28 & 1;
    v25 = sub_1DEE45D8C(0, 0, v10, &unk_1DEF90948, v24);
    v26 = *(v2 + v19);
    *(v2 + v19) = v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEE438A4(uint64_t a1)
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed;
  if ((*(a1 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_subscribed) & 1) == 0)
  {
    v9 = *(a1 + 72);
    *v7 = v9;
    (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
    v10 = v9;
    LOBYTE(v9) = sub_1DEF8D7B8();
    (*(v3 + 8))(v7, v2);
    if (v9)
    {
      *(a1 + v8) = 1;
      sub_1DEE4254C();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1DEE439CC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_1DEF8D698();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1DEF8D6D8();
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1DEF8D758();
  v57 = *(v58 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v54 - v12;
  v13 = type metadata accessor for ZoneVersionAdvertisement(0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AD8, &qword_1DEF90998);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A78, &qword_1DEF90820);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v68 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_latestAdvertisement;
  swift_beginAccess();
  v69 = a2;
  sub_1DEE46C34(a2, v29, type metadata accessor for ZoneVersionAdvertisement);
  v66 = v14[7];
  v66(v29, 0, 1, v13);
  v31 = *(v18 + 56);
  v70 = a1;
  v67 = v30;
  v32 = a1 + v30;
  v33 = v13;
  sub_1DEE17214(v32, v21, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE17214(v29, &v21[v31], &qword_1ECDE3A78, &qword_1DEF90820);
  v34 = v14[6];
  if (v34(v21, 1, v13) == 1)
  {
    sub_1DEE171B4(v29, &qword_1ECDE3A78, &qword_1DEF90820);
    if (v34(&v21[v31], 1, v13) == 1)
    {
      return sub_1DEE171B4(v21, &qword_1ECDE3A78, &qword_1DEF90820);
    }

    goto LABEL_6;
  }

  v36 = v65;
  sub_1DEE17214(v21, v65, &qword_1ECDE3A78, &qword_1DEF90820);
  if (v34(&v21[v31], 1, v13) == 1)
  {
    sub_1DEE171B4(v29, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C9C(v36, type metadata accessor for ZoneVersionAdvertisement);
LABEL_6:
    v37 = &qword_1ECDE3AD8;
    v38 = &qword_1DEF90998;
    v39 = v21;
    goto LABEL_7;
  }

  v52 = v54;
  sub_1DEE442B0(&v21[v31], v54);
  if (_s16ReplicatorEngine24ZoneVersionAdvertisementV16DeviceDescriptorV2eeoiySbAE_AEtFZ_0(v36, v52))
  {
    v53 = sub_1DEEDB5A8(*(v36 + *(v13 + 20)), *(v52 + *(v13 + 20)));
    sub_1DEE171B4(v29, &qword_1ECDE3A78, &qword_1DEF90820);
    sub_1DEE46C9C(v52, type metadata accessor for ZoneVersionAdvertisement);
    sub_1DEE46C9C(v36, type metadata accessor for ZoneVersionAdvertisement);
    result = sub_1DEE171B4(v21, &qword_1ECDE3A78, &qword_1DEF90820);
    v40 = v70;
    if (v53)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_1DEE171B4(v29, &qword_1ECDE3A78, &qword_1DEF90820);
  sub_1DEE46C9C(v52, type metadata accessor for ZoneVersionAdvertisement);
  sub_1DEE46C9C(v36, type metadata accessor for ZoneVersionAdvertisement);
  v39 = v21;
  v37 = &qword_1ECDE3A78;
  v38 = &qword_1DEF90820;
LABEL_7:
  sub_1DEE171B4(v39, v37, v38);
  v40 = v70;
LABEL_8:
  v41 = v68;
  sub_1DEE46C34(v69, v68, type metadata accessor for ZoneVersionAdvertisement);
  v66(v41, 0, 1, v33);
  v42 = v67;
  swift_beginAccess();
  sub_1DEE29D60(v41, v40 + v42, &qword_1ECDE3A78, &qword_1DEF90820);
  result = swift_endAccess();
  if ((*(v40 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) & 1) == 0)
  {
    *(v40 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser__queue_advertisementPending) = 1;
    v70 = *(v40 + 72);
    v43 = v55;
    sub_1DEF8D738();
    if (qword_1ECDE3310 != -1)
    {
      swift_once();
    }

    v44 = sub_1DEF8D688();
    v45 = __swift_project_value_buffer(v44, qword_1ECDE3318);
    v46 = v56;
    MEMORY[0x1E12CAF40](v43, v45);
    v69 = *(v57 + 8);
    v47 = v58;
    v69(v43, v58);
    aBlock[4] = sub_1DEE46BCC;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_97;
    v48 = _Block_copy(aBlock);

    v49 = v59;
    sub_1DEF8D6B8();
    v71 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B8D8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v50 = v61;
    v51 = v64;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v46, v49, v50, v48);
    _Block_release(v48);
    (*(v63 + 8))(v50, v51);
    (*(v60 + 8))(v49, v62);
    v69(v46, v47);
  }

  return result;
}

uint64_t sub_1DEE442B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersionAdvertisement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE44314()
{
  v1 = *(type metadata accessor for ZoneVersionAdvertisement(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DEE439CC(v3, (v0 + v2));
}

uint64_t type metadata accessor for IDSZoneAdvertiser()
{
  result = qword_1ECDE32C0;
  if (!qword_1ECDE32C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEE44400()
{
  sub_1DEE44624();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DEE44624()
{
  if (!qword_1ECDE2EF8)
  {
    type metadata accessor for ZoneVersionAdvertisement(255);
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2EF8);
    }
  }
}

uint64_t sub_1DEE446A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 136) = a4;
  *(v6 + 144) = a5;
  v7 = type metadata accessor for ZoneVersionAdvertisement(0);
  *(v6 + 152) = v7;
  v8 = *(v7 - 8);
  *(v6 + 160) = v8;
  *(v6 + 168) = *(v8 + 64);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DEE4477C, 0, 0);
}

uint64_t sub_1DEE4477C()
{
  v38 = v0;
  v1 = *(v0 + 136);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (v0 + 16);
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 144);
    v7 = sub_1DEF8D508();
    __swift_project_value_buffer(v7, qword_1ECDF5FE0);
    sub_1DEE46C34(v6, v5, type metadata accessor for ZoneVersionAdvertisement);
    v8 = sub_1DEF8D4D8();
    v9 = sub_1DEF8DCB8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 184);
    if (v10)
    {
      v12 = *(v0 + 152);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v36 = v14;
      *v13 = 136446210;
      sub_1DEF8DF28();

      strcpy(v37, "remoteDevice: ");
      HIBYTE(v37[1]) = -18;
      v15 = ZoneVersionAdvertisement.DeviceDescriptor.description.getter();
      MEMORY[0x1E12CB180](v15);

      MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9BB10);
      v16 = *(v11 + *(v12 + 20));
      type metadata accessor for ZoneVersion();
      v17 = sub_1DEF8D858();
      MEMORY[0x1E12CB180](v17);

      sub_1DEE46C9C(v11, type metadata accessor for ZoneVersionAdvertisement);
      v18 = sub_1DEE12A5C(v37[0], v37[1], &v36);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1DEE0F000, v8, v9, "IDS advertiser advertising %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12CCD70](v14, -1, -1);
      v19 = v13;
      v4 = (v0 + 16);
      MEMORY[0x1E12CCD70](v19, -1, -1);
    }

    else
    {

      sub_1DEE46C9C(v11, type metadata accessor for ZoneVersionAdvertisement);
    }

    v20 = *(v0 + 176);
    v21 = *(v0 + 160);
    v22 = *(v3 + 72);
    sub_1DEE46C34(*(v0 + 144), v20, type metadata accessor for ZoneVersionAdvertisement);
    v23 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v3;
    sub_1DEE442B0(v20, v24 + v23);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1DEE46918;
    *(v25 + 24) = v24;
    *(v0 + 48) = sub_1DEE13B20;
    *(v0 + 56) = v25;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DEE134F4;
    *(v0 + 40) = &block_descriptor_80;
    v26 = _Block_copy(v4);
    v27 = *(v0 + 56);

    dispatch_sync(v22, v26);
    _Block_release(v26);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
      return result;
    }

    if (*(v0 + 192) != 1)
    {
      goto LABEL_11;
    }

    v29 = *(v3 + 72);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1DEE4697C;
    *(v30 + 24) = v3;
    *(v0 + 96) = sub_1DEE46D40;
    *(v0 + 104) = v30;
    *(v0 + 64) = MEMORY[0x1E69E9820];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1DEE134F4;
    *(v0 + 88) = &block_descriptor_87;
    v31 = _Block_copy((v0 + 64));
    v32 = *(v0 + 104);

    dispatch_sync(v29, v31);

    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
LABEL_11:
    }
  }

  v34 = *(v0 + 176);
  v33 = *(v0 + 184);

  v35 = *(v0 + 8);

  return v35();
}

void sub_1DEE44EB8(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v124 - v7;
  v9 = type metadata accessor for Message();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D788();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + 72);
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1DEF8D7B8();
  v21 = *(v13 + 8);
  v20 = (v13 + 8);
  v21(v17, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_33:
    swift_once();
    goto LABEL_4;
  }

  v22 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine17IDSZoneAdvertiser_idsServiceWrapper);
  if (!v22)
  {
    if (qword_1ECDE2E40 != -1)
    {
      swift_once();
    }

    v31 = sub_1DEF8D508();
    __swift_project_value_buffer(v31, qword_1ECDF5FE0);

    v32 = sub_1DEF8D4D8();
    v33 = sub_1DEF8DC98();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v138 = v35;
      *v34 = 136446210;
      sub_1DEE41818();
      v38 = sub_1DEE12A5C(v36, v37, &v138);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1DEE0F000, v32, v33, "(%{public}s) Cannot send advertisement as we have no IDS service wrapper", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1E12CCD70](v35, -1, -1);
      MEMORY[0x1E12CCD70](v34, -1, -1);
    }

    return;
  }

  v141 = type metadata accessor for ZoneVersionAdvertisement(0);
  v142 = sub_1DEE1B8D8(&qword_1ECDE2F20, type metadata accessor for ZoneVersionAdvertisement);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v138);
  sub_1DEE46C34(a1, boxed_opaque_existential_1, type metadata accessor for ZoneVersionAdvertisement);
  v24 = qword_1ED786060;
  v20 = v22;
  if (v24 != -1)
  {
    goto LABEL_33;
  }

LABEL_4:
  v25 = xmmword_1ED786068;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v25;
  *(inited + 24) = 0;
  v27 = sub_1DEE29274(&v138);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(&v138);
    return;
  }

  v28 = sub_1DEE1187C(v27);
  v30 = v29;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v138);
  v39 = sub_1DEF8D3F8();
  v133 = v30;
  v134 = v28;
  v40 = v39;
  v41 = *(v39 - 8);
  v136 = v20;
  v42 = *(v41 + 56);
  v42(v8, 1, 1, v39);
  v132 = 0x80000001DEF9BB30;
  sub_1DEE41818();
  v131 = v43;
  v130 = v44;
  v135 = 0;
  v45 = v137;
  sub_1DEF8D3E8();
  v46 = v9[5];
  v42((v45 + v46), 1, 1, v40);
  v47 = v136;
  v48 = sub_1DEE29D60(v8, v45 + v46, &unk_1ECDE3E80, &unk_1DEF90970);
  v49 = (v45 + v9[6]);
  *v49 = 0xD000000000000014;
  v49[1] = v132;
  v50 = (v45 + v9[7]);
  v51 = v130;
  *v50 = v131;
  v50[1] = v51;
  *(v45 + v9[8]) = v25;
  v52 = (v45 + v9[9]);
  v53 = v133;
  *v52 = v134;
  v52[1] = v53;
  v54 = *&v47[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_pairedDeviceLock];
  MEMORY[0x1EEE9AC00](v48);
  *(&v124 - 2) = v47;
  MEMORY[0x1EEE9AC00](v55);
  *(&v124 - 2) = sub_1DEE46B38;
  *(&v124 - 1) = v56;

  os_unfair_lock_lock(v54 + 4);
  v57 = v135;
  sub_1DEE15434(v58);
  if (!v57)
  {
    os_unfair_lock_unlock(v54 + 4);

    v59 = v139;
    if (v139)
    {
      v60 = v138;
      v61 = v141;
      v134 = v140;
      LODWORD(v135) = v142;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
      v62 = swift_initStackObject();
      *(v62 + 16) = xmmword_1DEF907F0;
      *(v62 + 32) = v60;
      *(v62 + 40) = v59;

      v63 = sub_1DEEA3AD8(v62);
      swift_setDeallocating();
      v64 = sub_1DEE46B54(v62 + 32);
      v65 = *&v47[OBJC_IVAR____TtC16ReplicatorEngine17IDSServiceWrapper_queue];
      MEMORY[0x1EEE9AC00](v64);
      v66 = v137;
      *(&v124 - 4) = v67;
      *(&v124 - 3) = v66;
      *(&v124 - 2) = v63;
      *(&v124 - 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC8, &qword_1DEF90980);
      sub_1DEF8DD18();

      v133 = v138;
      LODWORD(v128) = v139;
      if (qword_1ECDE2E40 != -1)
      {
        swift_once();
      }

      v68 = sub_1DEF8D508();
      v69 = __swift_project_value_buffer(v68, qword_1ECDF5FE0);

      v70 = v134;
      v71 = v135;
      sub_1DEE4650C(v60, v59);
      v129 = v69;
      v72 = sub_1DEF8D4D8();
      v73 = sub_1DEF8DCB8();

      sub_1DEE46550(v60, v59);
      v127 = v73;
      v74 = os_log_type_enabled(v72, v73);
      v132 = v61;
      v131 = v60;
      v130 = v59;
      if (v74)
      {
        v75 = v60;
        v76 = swift_slowAlloc();
        v124 = v76;
        v126 = swift_slowAlloc();
        v143 = v126;
        *v76 = 136446466;
        v125 = v72;
        sub_1DEE41818();
        v79 = sub_1DEE12A5C(v77, v78, &v143);

        v80 = v124;
        *(v124 + 1) = v79;
        *(v80 + 6) = 2080;
        v81 = v80;
        v138 = v75;
        v139 = v59;
        v140 = v70;
        v141 = v61;
        LOBYTE(v142) = v71;

        v82 = PairedDevice.description.getter();
        v84 = v83;

        v85 = sub_1DEE12A5C(v82, v84, &v143);

        *(v81 + 14) = v85;
        v72 = v125;
        _os_log_impl(&dword_1DEE0F000, v125, v127, "(%{public}s) Sending advertisement to %s", v81, 0x16u);
        v86 = v126;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v86, -1, -1);
        MEMORY[0x1E12CCD70](v81, -1, -1);
      }

      v47 = v136;
      if (v128)
      {

        v87 = v131;
        v88 = v130;
        v89 = v134;
        v90 = v132;
        v91 = v135;
        sub_1DEE4650C(v131, v130);
        sub_1DEE39150(v133, 1);
        v92 = sub_1DEF8D4D8();
        v93 = sub_1DEF8DC98();

        sub_1DEE46550(v87, v88);
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v128 = v92;
          v95 = v94;
          v129 = swift_slowAlloc();
          v143 = v129;
          *v95 = 136446722;
          v127 = v93;
          sub_1DEE41818();
          v98 = v89;
          v99 = sub_1DEE12A5C(v96, v97, &v143);

          *(v95 + 4) = v99;
          *(v95 + 12) = 2080;
          v138 = v87;
          v139 = v88;
          v140 = v98;
          v141 = v90;
          LOBYTE(v142) = v91;
          v100 = PairedDevice.description.getter();
          v102 = v101;

          v103 = sub_1DEE12A5C(v100, v102, &v143);

          *(v95 + 14) = v103;
          *(v95 + 22) = 2082;
          v104 = v133;
          v138 = v133;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
          v105 = sub_1DEF8D988();
          v107 = sub_1DEE12A5C(v105, v106, &v143);

          *(v95 + 24) = v107;
          v108 = v128;
          _os_log_impl(&dword_1DEE0F000, v128, v127, "(%{public}s) Error sending advertisement to %s: %{public}s", v95, 0x20u);
          v109 = v129;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v109, -1, -1);
          MEMORY[0x1E12CCD70](v95, -1, -1);

          v110 = v104;
        }

        else
        {
          sub_1DEE46550(v87, v88);
          v123 = v133;
          sub_1DEE39214(v133, 1);

          v110 = v123;
        }

        sub_1DEE39214(v110, 1);
        goto LABEL_31;
      }

      sub_1DEE46550(v131, v130);

      v112 = sub_1DEF8D4D8();
      v113 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v112, v113))
      {
LABEL_28:

LABEL_31:
        sub_1DEE46C9C(v137, type metadata accessor for Message);
        return;
      }

      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v138 = v115;
      *v114 = 136446210;
      sub_1DEE41818();
      v122 = sub_1DEE12A5C(v120, v121, &v138);

      *(v114 + 4) = v122;
      v119 = "(%{public}s) Sucessfully sent advertisement";
    }

    else
    {
      if (qword_1ECDE2E40 != -1)
      {
        swift_once();
      }

      v111 = sub_1DEF8D508();
      __swift_project_value_buffer(v111, qword_1ECDF5FE0);

      v112 = sub_1DEF8D4D8();
      v113 = sub_1DEF8DCB8();

      if (!os_log_type_enabled(v112, v113))
      {
        goto LABEL_28;
      }

      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v138 = v115;
      *v114 = 136446210;
      sub_1DEE41818();
      v118 = sub_1DEE12A5C(v116, v117, &v138);

      *(v114 + 4) = v118;
      v119 = "(%{public}s) No current paired device, so couldn't send advertisement";
    }

    _os_log_impl(&dword_1DEE0F000, v112, v113, v119, v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x1E12CCD70](v115, -1, -1);
    MEMORY[0x1E12CCD70](v114, -1, -1);
    goto LABEL_28;
  }

  os_unfair_lock_unlock(v54 + 4);
  __break(1u);
}