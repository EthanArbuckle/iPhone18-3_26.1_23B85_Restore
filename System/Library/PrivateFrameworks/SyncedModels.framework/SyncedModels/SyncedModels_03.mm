uint64_t sub_26C422E20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26C46BB54();
  __swift_allocate_value_buffer(v4, qword_2804985D8);
  v5 = __swift_project_value_buffer(v4, qword_2804985D8);
  sub_26C46BAF4();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

SyncedModels::OwnershipRequestResult_optional __swiftcall OwnershipRequestResult.init(rawValue:)(SyncedModels::OwnershipRequestResult_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SyncedModels_OwnershipRequestResult_unknownDefault)
  {
    value = SyncedModels_OwnershipRequestResult_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_26C422F70()
{
  v1 = *v0;
  sub_26C46C814();
  sub_26C46C834();
  return sub_26C46C844();
}

uint64_t sub_26C422FE4()
{
  v1 = *v0;
  sub_26C46C814();
  sub_26C46C834();
  return sub_26C46C844();
}

SyncedModels::SyncedModelStatus_optional __swiftcall SyncedModelStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26C42305C()
{
  result = qword_280497B00;
  if (!qword_280497B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497B00);
  }

  return result;
}

unint64_t sub_26C4230B4()
{
  result = qword_280497B08;
  if (!qword_280497B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497B08);
  }

  return result;
}

void sub_26C423144()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v7 = sub_26C46BFA4();
  __swift_project_value_buffer(v7, qword_280498530);

  v21 = sub_26C46BF84();
  v8 = sub_26C46C404();

  if (os_log_type_enabled(v21, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315394;
    v11 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
    swift_beginAccess();
    (*(v3 + 16))(v6, v1 + v11, v2);
    sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
    v12 = sub_26C46C704();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_26C3E80A8(v12, v14, &v22);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    if (*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler))
    {
      v16 = 7562617;
    }

    else
    {
      v16 = 28526;
    }

    if (*(v1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler))
    {
      v17 = 0xE300000000000000;
    }

    else
    {
      v17 = 0xE200000000000000;
    }

    v18 = sub_26C3E80A8(v16, v17, &v22);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_26C3D6000, v21, v8, "SyncedModel[%s] ownershipChangedHandler was set:%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A18D0](v10, -1, -1);
    MEMORY[0x26D6A18D0](v9, -1, -1);
  }

  else
  {
    v19 = v21;
  }
}

uint64_t sub_26C423454(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - v4;
  v6 = type metadata accessor for PendingOwnershipRequest(0);
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v60 - v11);
  v13 = sub_26C46BB54();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v65 = v18;
    v66 = v5;
    v64 = v17;
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v21 = sub_26C46BFA4();
    v22 = __swift_project_value_buffer(v21, qword_280498530);

    v63 = v22;
    v23 = sub_26C46BF84();
    v24 = sub_26C46C404();

    v25 = os_log_type_enabled(v23, v24);
    v62 = v14;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v12;
      v69 = v60;
      *v26 = 136315394;
      v27 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
      swift_beginAccess();
      v28 = v20 + v27;
      v29 = v64;
      (*(v14 + 16))(v64, v28, v13);
      sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
      v30 = sub_26C46C704();
      v31 = v14;
      v32 = v6;
      v33 = v10;
      v35 = v34;
      (*(v31 + 8))(v29, v13);
      v36 = sub_26C3E80A8(v30, v35, &v69);
      v10 = v33;
      v6 = v32;

      *(v26 + 4) = v36;
      *(v26 + 12) = 2048;
      v37 = v65;
      *(v26 + 14) = v65;
      _os_log_impl(&dword_26C3D6000, v23, v24, "SyncedModel[%s]: status changed to %ld", v26, 0x16u);
      v38 = v60;
      __swift_destroy_boxed_opaque_existential_1(v60);
      v12 = v61;
      MEMORY[0x26D6A18D0](v38, -1, -1);
      MEMORY[0x26D6A18D0](v26, -1, -1);
    }

    else
    {

      v37 = v65;
    }

    v39 = v37 == 2;
    v40 = v66;
    if (v39)
    {
      v41 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
      swift_beginAccess();
      sub_26C3DDD48(v20 + v41, v40, &qword_280497B80, &unk_26C46E518);
      if ((*(v67 + 48))(v40, 1, v6) == 1)
      {

        return sub_26C3DE270(v40, &qword_280497B80, &unk_26C46E518);
      }

      else
      {
        sub_26C42B9BC(v40, v12, type metadata accessor for PendingOwnershipRequest);
        sub_26C42C130(v12, v10, type metadata accessor for PendingOwnershipRequest);

        v42 = sub_26C46BF84();
        v43 = sub_26C46C404();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v65 = v10;
          v45 = v44;
          v67 = swift_slowAlloc();
          v68 = v67;
          *v45 = 136315394;
          LODWORD(v66) = v43;
          v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
          swift_beginAccess();
          v47 = v62;
          v48 = v64;
          (*(v62 + 16))(v64, v20 + v46, v13);
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
          v49 = sub_26C46C704();
          v51 = v50;
          (*(v47 + 8))(v48, v13);
          v52 = sub_26C3E80A8(v49, v51, &v68);

          *(v45 + 4) = v52;
          *(v45 + 12) = 2080;
          v53 = *(v6 + 20);
          sub_26C46BAE4();
          sub_26C431280(&qword_280497C28, MEMORY[0x277CC9578]);
          v54 = v65;
          v55 = sub_26C46C704();
          v57 = v56;
          sub_26C42BA24(v54, type metadata accessor for PendingOwnershipRequest);
          v58 = sub_26C3E80A8(v55, v57, &v68);

          *(v45 + 14) = v58;
          _os_log_impl(&dword_26C3D6000, v42, v66, "SyncedModel[%s]: Applying pending request ownership from time:%s", v45, 0x16u);
          v59 = v67;
          swift_arrayDestroy();
          MEMORY[0x26D6A18D0](v59, -1, -1);
          MEMORY[0x26D6A18D0](v45, -1, -1);
        }

        else
        {

          sub_26C42BA24(v10, type metadata accessor for PendingOwnershipRequest);
        }

        (*(*v20 + 760))(*v12, v12[1]);

        return sub_26C42BA24(v12, type metadata accessor for PendingOwnershipRequest);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26C423BB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v2);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for PendingOwnershipRequest(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
    swift_beginAccess();
    sub_26C3DDD48(v13 + v14, v6, &qword_280497B80, &unk_26C46E518);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return sub_26C3DE270(v6, &qword_280497B80, &unk_26C46E518);
    }

    else
    {
      sub_26C42B9BC(v6, v11, type metadata accessor for PendingOwnershipRequest);
      v15 = *v11;
      v16 = *(v11 + 1);
      v18[0] = 1;
      v15(v18);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      sub_26C3DDCE0(v4, v13 + v14, &qword_280497B80, &unk_26C46E518);
      swift_endAccess();

      return sub_26C42BA24(v11, type metadata accessor for PendingOwnershipRequest);
    }
  }

  return result;
}

uint64_t sub_26C423E3C()
{
  sub_26C413B98();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_26C423EBC()
{
  v0 = sub_26C46BB54();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_26C42A780(319, &qword_280497B40, type metadata accessor for SyncTransactionMessage);
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
      sub_26C42A780(319, &qword_280497AD0, MEMORY[0x277CCB248]);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_26C42A780(319, qword_280497510, MEMORY[0x277CC95F0]);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_26C42A780(319, &qword_280497B48, type metadata accessor for PendingOwnershipRequest);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_26C424114(uint64_t a1)
{
  v42 = type metadata accessor for PBUUID(0);
  v43 = *(v42 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v34[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_26C46BB54();
  v36 = *(v4 - 8);
  v5 = v36;
  v6 = *(v36 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v39 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34[-v10];
  MEMORY[0x28223BE20](v9);
  v12 = &v34[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v34[-v15];
  v17 = *(a1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
  v35 = *(a1 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
  v19 = a1;
  v40 = a1;
  swift_beginAccess();
  v20 = *(v5 + 16);
  v20(v12, v19 + v18, v4);
  v21 = MEMORY[0x277D84F90];
  *(v16 + 2) = MEMORY[0x277D84F90];
  *(v16 + 3) = v21;
  *(v16 + 4) = v21;
  v22 = type metadata accessor for SyncTransactionMessage(0);
  v23 = &v16[*(v22 + 32)];
  sub_26C46BD14();
  v24 = *(v22 + 36);
  v25 = *(v43 + 56);
  v43 += 56;
  v37 = v25;
  v25(&v16[v24], 1, 1, v42);
  *v16 = v17;
  v16[8] = v35;
  v26 = v38;
  v20(v38, v12, v4);
  v27 = v39;
  v20(v39, v26, v4);
  v28 = v41;
  sub_26C40F280(v27, v41);
  v29 = *(v36 + 8);
  v29(v26, v4);
  v29(v12, v4);
  sub_26C3DE270(&v16[v24], &qword_280497458, &unk_26C46D3F0);
  sub_26C42B9BC(v28, &v16[v24], type metadata accessor for PBUUID);
  v37(&v16[v24], 0, 1, v42);
  v30 = MEMORY[0x277D84F90];
  *(v16 + 3) = MEMORY[0x277D84F90];
  *(v16 + 4) = v30;
  *(v16 + 2) = v30;
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
  v31 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  v32 = v40;
  swift_beginAccess();
  sub_26C3DDCE0(v16, v32 + v31, &qword_280497B90, &qword_26C46E548);
  return swift_endAccess();
}

uint64_t sub_26C42450C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for SyncTransactionMessage(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  swift_beginAccess();
  sub_26C3DDCE0(v5, a1 + v7, &qword_280497B90, &qword_26C46E548);
  return swift_endAccess();
}

uint64_t sub_26C424618@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for PropertyChangedMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_26C414038();
  v12 = v11;
  v13 = type metadata accessor for SyncTransactionMessage(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (v14)
  {
    result = (v10)(v20, 0);
  }

  else
  {
    sub_26C42C130(a1, v9, type metadata accessor for PropertyChangedMessage);
    v16 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 16) = v16;
    v21 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_26C42BE38(0, v16[2] + 1, 1, v16, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      *(v12 + 16) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_26C42BE38(v18 > 1, v19 + 1, 1, v16, &qword_280497BC8, &qword_26C46E5B0, type metadata accessor for PropertyChangedMessage);
      *(v12 + 16) = v16;
    }

    v16[2] = v19 + 1;
    sub_26C42B9BC(v9, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, type metadata accessor for PropertyChangedMessage);
    result = (v10)(v20, 0);
  }

  *a2 = v14 != 0;
  return result;
}

uint64_t sub_26C424888@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for DictionaryChangedMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_26C414038();
  v12 = v11;
  v13 = type metadata accessor for SyncTransactionMessage(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (v14)
  {
    result = (v10)(v20, 0);
  }

  else
  {
    sub_26C42C130(a1, v9, type metadata accessor for DictionaryChangedMessage);
    v16 = *(v12 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 32) = v16;
    v21 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_26C42BE38(0, v16[2] + 1, 1, v16, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      *(v12 + 32) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_26C42BE38(v18 > 1, v19 + 1, 1, v16, &qword_280497BD0, &qword_26C46E5B8, type metadata accessor for DictionaryChangedMessage);
      *(v12 + 32) = v16;
    }

    v16[2] = v19 + 1;
    sub_26C42B9BC(v9, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, type metadata accessor for DictionaryChangedMessage);
    result = (v10)(v20, 0);
  }

  *a2 = v14 != 0;
  return result;
}

uint64_t sub_26C424AF8@<X0>(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = type metadata accessor for SetChangedMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_26C414038();
  v12 = v11;
  v13 = type metadata accessor for SyncTransactionMessage(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  if (v14)
  {
    result = (v10)(v20, 0);
  }

  else
  {
    sub_26C42C130(a1, v9, type metadata accessor for SetChangedMessage);
    v16 = *(v12 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 24) = v16;
    v21 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_26C42BE38(0, v16[2] + 1, 1, v16, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      *(v12 + 24) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_26C42BE38(v18 > 1, v19 + 1, 1, v16, &qword_280497BD8, &qword_26C46E5C0, type metadata accessor for SetChangedMessage);
      *(v12 + 24) = v16;
    }

    v16[2] = v19 + 1;
    sub_26C42B9BC(v9, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, type metadata accessor for SetChangedMessage);
    result = (v10)(v20, 0);
  }

  *a2 = v14 != 0;
  return result;
}

uint64_t sub_26C424D68()
{
  v1 = sub_26C46BB54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v5 = *(*(v39 - 1) + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  v36 = v0;
  sub_26C3DDD48(v0 + v19, v18, &qword_280497430, &unk_26C46D3D0);
  v37 = v2;
  v20 = *(v2 + 48);
  v21 = 1;
  v40 = v1;
  v38 = v20;
  LODWORD(v1) = v20(v18, 1, v1);
  sub_26C3DE270(v18, &qword_280497430, &unk_26C46D3D0);
  if (v1 != 1)
  {
    v22 = v36;
    sub_26C3DDD48(v36 + v19, v16, &qword_280497430, &unk_26C46D3D0);
    v23 = v37;
    v24 = v40;
    (*(v37 + 16))(v13, v22 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v40);
    (*(v23 + 56))(v13, 0, 1, v24);
    v25 = *(v39 + 12);
    v26 = v35;
    sub_26C3DDD48(v16, v35, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v13, v26 + v25, &qword_280497430, &unk_26C46D3D0);
    v27 = v38;
    if (v38(v26, 1, v24) == 1)
    {
      sub_26C3DE270(v13, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
      if (v27(v26 + v25, 1, v24) == 1)
      {
        sub_26C3DE270(v26, &qword_280497430, &unk_26C46D3D0);
        v21 = 1;
        return v21 & 1;
      }
    }

    else
    {
      v39 = v13;
      v28 = v34;
      sub_26C3DDD48(v26, v34, &qword_280497430, &unk_26C46D3D0);
      if (v27(v26 + v25, 1, v24) != 1)
      {
        v29 = v33;
        (*(v23 + 32))(v33, v26 + v25, v24);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
        v21 = sub_26C46C1C4();
        v30 = *(v23 + 8);
        v30(v29, v24);
        sub_26C3DE270(v39, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
        v30(v28, v24);
        sub_26C3DE270(v26, &qword_280497430, &unk_26C46D3D0);
        return v21 & 1;
      }

      sub_26C3DE270(v39, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v16, &qword_280497430, &unk_26C46D3D0);
      (*(v23 + 8))(v28, v24);
    }

    sub_26C3DE270(v26, &qword_280497B78, "n6");
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_26C42528C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26C46BB54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23[-v10];
  v12 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  swift_beginAccess();
  sub_26C3DDD48(v1 + v12, v11, &qword_280497430, &unk_26C46D3D0);
  if ((*(v4 + 48))(v11, 1, v3) != 1)
  {
    (*(v4 + 32))(v7, v11, v3);
    v13 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_26C42C210(v7);
      if (v16)
      {
        v17 = v15;
        v18 = *(v14 + 56);
        v19 = sub_26C46BCD4();
        v20 = *(v19 - 8);
        (*(v20 + 16))(a1, v18 + *(v20 + 72) * v17, v19);
        (*(v4 + 8))(v7, v3);

        return (*(v20 + 56))(a1, 0, 1, v19);
      }
    }

    (*(v4 + 8))(v7, v3);
  }

  v22 = sub_26C46BCD4();
  return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
}

uint64_t sub_26C425580(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t))
{
  v410 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v408 = &v335 - v6;
  v376 = sub_26C46C0F4();
  v359 = *(v376 - 8);
  v7 = *(v359 + 64);
  v8 = MEMORY[0x28223BE20](v376);
  v357 = &v335 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v358 = &v335 - v10;
  v347 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v351 = *(v347 - 8);
  v11 = *(v351 + 64);
  MEMORY[0x28223BE20](v347);
  v374 = (&v335 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v352 = sub_26C46BCF4();
  v375 = *(v352 - 8);
  v13 = *(v375 + 64);
  MEMORY[0x28223BE20](v352);
  v373 = (&v335 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v382 = type metadata accessor for SyncMessage(0);
  v15 = *(*(v382 - 8) + 64);
  MEMORY[0x28223BE20](v382);
  v384 = &v335 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v379 = &v335 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v356 = &v335 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v350 = &v335 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v372 = &v335 - v27;
  MEMORY[0x28223BE20](v26);
  v366 = &v335 - v28;
  v369 = sub_26C46BAE4();
  v368 = *(v369 - 8);
  v29 = *(v368 + 64);
  MEMORY[0x28223BE20](v369);
  v367 = &v335 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for CachedOwnershipRequest(0);
  v377 = *(v378 - 8);
  v31 = *(v377 + 64);
  v32 = MEMORY[0x28223BE20](v378);
  v34 = &v335 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v371 = &v335 - v35;
  v399 = type metadata accessor for PBUUID(0);
  v397 = *(v399 - 8);
  v36 = *(v397 + 64);
  v37 = MEMORY[0x28223BE20](v399);
  v353 = (&v335 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = MEMORY[0x28223BE20](v37);
  v349 = (&v335 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v370 = (&v335 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v364 = (&v335 - v44);
  MEMORY[0x28223BE20](v43);
  v403 = (&v335 - v45);
  v385 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v354 = *(v385 - 8);
  v46 = *(v354 + 64);
  v47 = MEMORY[0x28223BE20](v385);
  v383 = &v335 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v400 = &v335 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v381 = &v335 - v52;
  v355 = v53;
  MEMORY[0x28223BE20](v51);
  v388 = &v335 - v54;
  v396 = sub_26C46C0A4();
  v395 = *(v396 - 1);
  v55 = *(v395 + 64);
  MEMORY[0x28223BE20](v396);
  v392 = &v335 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_26C46C0D4();
  v393 = *(v394 - 1);
  v57 = *(v393 + 64);
  MEMORY[0x28223BE20](v394);
  v391 = &v335 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = sub_26C46BB54();
  v407 = *(v404 - 1);
  v59 = *(v407 + 64);
  v60 = MEMORY[0x28223BE20](v404);
  v348 = &v335 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v365 = &v335 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v363 = &v335 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v386 = &v335 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v387 = &v335 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v398 = &v335 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v405 = &v335 - v73;
  MEMORY[0x28223BE20](v72);
  v406 = &v335 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = (&v335 - v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v362 = &v335 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v81);
  v361 = &v335 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v360 = &v335 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v390 = (&v335 - v88);
  v89 = MEMORY[0x28223BE20](v87);
  v389 = (&v335 - v90);
  v91 = MEMORY[0x28223BE20](v89);
  v93 = &v335 - v92;
  MEMORY[0x28223BE20](v91);
  v95 = &v335 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497268, &qword_26C46CFE0);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96 - 8);
  v99 = &v335 - v98;
  v100 = sub_26C46BCD4();
  v101 = *(v100 - 8);
  v102 = *(v101 + 8);
  v103 = MEMORY[0x28223BE20](v100);
  v380 = &v335 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x28223BE20](v103);
  v401 = &v335 - v106;
  MEMORY[0x28223BE20](v105);
  v409 = &v335 - v107;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v402 = a2;
    v412 = v2;
    v108 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
    swift_beginAccess();
    v109 = v412 + v108;
    v110 = v412;
    sub_26C3DDD48(v109, v99, &qword_280497268, &qword_26C46CFE0);
    if ((*(v101 + 6))(v99, 1, v100) == 1)
    {
      sub_26C3DE270(v99, &qword_280497268, &qword_26C46CFE0);
LABEL_11:
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v119 = sub_26C46BFA4();
      __swift_project_value_buffer(v119, qword_280498530);
      v120 = sub_26C46BF84();
      v121 = sub_26C46C3E4();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_26C3D6000, v120, v121, "SyncedModel: tried to request ownership while catching up, enqueuing request", v122, 2u);
        MEMORY[0x26D6A18D0](v122, -1, -1);
      }

      v123 = type metadata accessor for PendingOwnershipRequest(0);
      v124 = v408;
      v125 = &v408[*(v123 + 20)];
      sub_26C46BAD4();

      v126 = v402;
      *v124 = v410;
      v124[1] = v126;
      (*(*(v123 - 8) + 56))(v124, 0, 1, v123);
      v127 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
      swift_beginAccess();

      sub_26C3DDCE0(v124, v110 + v127, &qword_280497B80, &unk_26C46E518);
      return swift_endAccess();
    }

    v344 = v34;
    v116 = v110;
    v117 = v409;
    (*(v101 + 4))(v409, v99, v100);
    v118 = sub_26C3EA940();
    v346 = v100;
    if (v118)
    {
      (*(v101 + 1))(v117, v346);
      v110 = v116;
      goto LABEL_11;
    }

    v408 = v101;
    v128 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    v129 = v116;
    swift_beginAccess();
    v342 = v128;
    sub_26C3DDD48(v116 + v128, v95, &qword_280497430, &unk_26C46D3D0);
    v130 = v407;
    v131 = *(v407 + 16);
    v341 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v132 = v404;
    v345 = v407 + 16;
    v343 = v131;
    v131(v93, v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID, v404);
    v133 = *(v130 + 56);
    v339 = v130 + 56;
    v338 = v133;
    v133(v93, 0, 1, v132);
    v134 = *(v75 + 48);
    sub_26C3DDD48(v95, v78, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v93, v78 + v134, &qword_280497430, &unk_26C46D3D0);
    v135 = *(v130 + 48);
    v136 = v135(v78, 1, v132);
    v340 = v135;
    if (v136 == 1)
    {
      sub_26C3DE270(v93, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v95, &qword_280497430, &unk_26C46D3D0);
      if (v135((v78 + v134), 1, v132) == 1)
      {
        sub_26C3DE270(v78, &qword_280497430, &unk_26C46D3D0);
LABEL_42:
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v227 = sub_26C46BFA4();
        __swift_project_value_buffer(v227, qword_280498530);
        v228 = sub_26C46BF84();
        v229 = sub_26C46C404();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          _os_log_impl(&dword_26C3D6000, v228, v229, "SyncedModel: Requesting ownership when local participant already owns model. Succeeding.", v230, 2u);
          MEMORY[0x26D6A18D0](v230, -1, -1);
        }

        sub_26C418080();
        v231 = *(Strong + 40);
        v232 = swift_allocObject();
        v233 = v402;
        *(v232 + 16) = v410;
        *(v232 + 24) = v233;
        v417 = sub_26C4312D8;
        v418 = v232;
        aBlock = MEMORY[0x277D85DD0];
        v414 = 1107296256;
        v415 = sub_26C3DF384;
        v416 = &block_descriptor_100;
        v234 = _Block_copy(&aBlock);

        v235 = v231;
        v236 = v391;
        sub_26C46C0C4();
        v420 = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290);
        v237 = v392;
        v238 = v396;
        sub_26C46C484();
        MEMORY[0x26D6A0E60](0, v236, v237, v234);
        _Block_release(v234);

        (*(v395 + 8))(v237, v238);
        (*(v393 + 8))(v236, v394);
        (*(v408 + 1))(v409, v346);
      }
    }

    else
    {
      v137 = v389;
      sub_26C3DDD48(v78, v389, &qword_280497430, &unk_26C46D3D0);
      if (v135((v78 + v134), 1, v132) != 1)
      {
        v224 = v407;
        v225 = v406;
        (*(v407 + 32))(v406, v78 + v134, v132);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
        LODWORD(v337) = sub_26C46C1C4();
        v226 = *(v224 + 8);
        v226(v225, v132);
        sub_26C3DE270(v93, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v95, &qword_280497430, &unk_26C46D3D0);
        v226(v137, v132);
        v129 = v412;
        sub_26C3DE270(v78, &qword_280497430, &unk_26C46D3D0);
        v138 = v408;
        if (v337)
        {
          goto LABEL_42;
        }

LABEL_22:
        v139 = *(v138 + 2);
        v140 = v346;
        v337 = v138 + 16;
        v336 = v139;
        (v139)(v401, Strong + OBJC_IVAR____TtC12SyncedModels18SyncedModelManager_localParticipant);
        v141 = v406;
        sub_26C46BCC4();
        v142 = v405;
        sub_26C46BCC4();
        v143 = sub_26C46BB14();
        v145 = v407 + 8;
        v144 = *(v407 + 8);
        (v144)(v142, v132);
        v389 = v144;
        (v144)(v141, v132);
        v146 = v390;
        sub_26C3DDD48(v129 + v342, v390, &qword_280497430, &unk_26C46D3D0);
        LODWORD(v141) = v340(v146, 1, v132);
        sub_26C3DE270(v146, &qword_280497430, &unk_26C46D3D0);
        if (v141 == 1)
        {
          if (v143)
          {
            v147 = v140;
            if (qword_280497148 != -1)
            {
              swift_once();
            }

            v148 = sub_26C46BFA4();
            __swift_project_value_buffer(v148, qword_280498530);
            v149 = sub_26C46BF84();
            v150 = sub_26C46C404();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = swift_slowAlloc();
              *v151 = 0;
              _os_log_impl(&dword_26C3D6000, v149, v150, "SyncedModel: Requesting ownership. Model is unowned and participant is authority. Succeeding. Calling callback on async queue.", v151, 2u);
              MEMORY[0x26D6A18D0](v151, -1, -1);
            }

            v145 = v360;
            v343(v360, v129 + v341, v132);
            v338(v145, 0, 1, v132);
            v152 = v342;
            v153 = v361;
            sub_26C3DDD48(v129 + v342, v361, &qword_280497430, &unk_26C46D3D0);
            swift_beginAccess();
            sub_26C3E9EB8(v145, v129 + v152);
            swift_endAccess();
            v154 = v362;
            sub_26C3DDD48(v129 + v152, v362, &qword_280497430, &unk_26C46D3D0);
            sub_26C418F90(v153, v154);
            sub_26C3DE270(v154, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v153, &qword_280497430, &unk_26C46D3D0);
            sub_26C3DE270(v145, &qword_280497430, &unk_26C46D3D0);
            v155 = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
            v156 = __CFADD__(v155, 1);
            v157 = v155 + 1;
            if (!v156)
            {
              *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v157;
              sub_26C418080();
              v158 = *(Strong + 40);
              v159 = swift_allocObject();
              v160 = v402;
              *(v159 + 16) = v410;
              *(v159 + 24) = v160;
              v417 = sub_26C430EFC;
              v418 = v159;
              aBlock = MEMORY[0x277D85DD0];
              v414 = 1107296256;
              v415 = sub_26C3DF384;
              v416 = &block_descriptor_94;
              v161 = _Block_copy(&aBlock);
              v162 = v158;

              v163 = v391;
              sub_26C46C0C4();
              v420 = MEMORY[0x277D84F90];
              sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
              sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290);
              v164 = v392;
              v165 = v396;
              sub_26C46C484();
              MEMORY[0x26D6A0E60](0, v163, v164, v161);
              _Block_release(v161);

              (*(v395 + 8))(v164, v165);
              (*(v393 + 8))(v163, v394);
              v166 = *(v408 + 1);
              v166(v401, v147);
              v166(v409, v147);
            }

            __break(1u);
            goto LABEL_69;
          }
        }

        else if (v143)
        {
          if (qword_280497148 == -1)
          {
LABEL_32:
            v335 = v145;
            v167 = sub_26C46BFA4();
            __swift_project_value_buffer(v167, qword_280498530);
            v168 = sub_26C46BF84();
            v169 = sub_26C46C404();
            if (os_log_type_enabled(v168, v169))
            {
              v170 = swift_slowAlloc();
              *v170 = 0;
              _os_log_impl(&dword_26C3D6000, v168, v169, "SyncedModel: Requesting ownership. Model is owned and participant is authority. Sending ownership request to current owner.", v170, 2u);
              MEMORY[0x26D6A18D0](v170, -1, -1);
            }

            v396 = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
            LODWORD(v391) = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
            v171 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
            swift_beginAccess();
            v172 = v406;
            v173 = v343;
            v343(v406, v129 + v171, v132);
            v173(v405, v129 + v341, v132);
            v174 = v173;
            LODWORD(v393) = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
            sub_26C46BB44();
            v175 = v388;
            *(v388 + 16) = 0;
            *(v175 + 24) = 1;
            *(v175 + 28) = 0;
            v176 = v385;
            v177 = (v175 + *(v385 + 28));
            sub_26C46BD14();
            v178 = v172;
            v179 = v176[8];
            v180 = *(v397 + 56);
            v395 = v397 + 56;
            v394 = v180;
            v181 = v399;
            (v180)(v175 + v179, 1, 1, v399);
            v392 = v176[9];
            (v180)(&v392[v175], 1, 1, v181);
            v400 = v176[10];
            (v180)(v175 + v400, 1, 1, v181);
            *v175 = v396;
            *(v175 + 8) = v391;
            v182 = v387;
            v174(v387, v178, v132);
            v183 = v386;
            v174(v386, v182, v132);
            v184 = v403;
            sub_26C40F280(v183, v403);
            v185 = v389;
            (v389)(v182, v132);
            sub_26C3DE270(v175 + v179, &qword_280497458, &unk_26C46D3F0);
            v396 = type metadata accessor for PBUUID;
            sub_26C42B9BC(v184, v175 + v179, type metadata accessor for PBUUID);
            v186 = v181;
            v187 = v394;
            (v394)(v175 + v179, 0, 1, v186);
            v174(v182, v405, v132);
            v174(v183, v182, v132);
            v188 = v403;
            sub_26C40F280(v183, v403);
            v185(v182, v132);
            v189 = v392;
            sub_26C3DE270(&v392[v175], &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v188, &v189[v175], v396);
            v190 = v399;
            v187(&v189[v175], 0, 1, v399);
            *(v175 + 16) = 0;
            *(v175 + 24) = 1;
            *(v175 + 28) = v393;
            v191 = v398;
            v192 = v343;
            v343(v182, v398, v132);
            v192(v183, v182, v132);
            v193 = v400;
            v194 = v403;
            sub_26C40F280(v183, v403);
            v185(v182, v132);
            v185(v191, v132);
            v195 = v190;
            v185(v405, v132);
            v185(v406, v132);
            sub_26C3DE270(v175 + v193, &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v194, v175 + v193, v396);
            (v394)(v175 + v193, 0, 1, v190);
            sub_26C42C130(v175, v381, type metadata accessor for OwnershipChangeRequestMessage);
            v196 = v367;
            sub_26C46BAD4();
            v197 = v175 + v193;
            v198 = v366;
            v199 = v397;
            sub_26C3DDD48(v197, v366, &qword_280497458, &unk_26C46D3F0);
            v200 = *(v199 + 48);
            if (v200(v198, 1, v195) == 1)
            {
              v201 = v364;
              *v364 = 0;
              v201[1] = 0;
              v202 = v201 + *(v195 + 24);
              sub_26C46BD14();
              v203 = v200(v198, 1, v195);
              v204 = v402;
              v205 = v378;
              v206 = v371;
              if (v203 != 1)
              {
                sub_26C3DE270(v198, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v201 = v364;
              sub_26C42B9BC(v198, v364, type metadata accessor for PBUUID);
              v204 = v402;
              v205 = v378;
              v206 = v371;
            }

            v302 = v363;
            sub_26C40F3CC();
            sub_26C42BA24(v201, type metadata accessor for PBUUID);
            sub_26C42B9BC(v381, v206, type metadata accessor for OwnershipChangeRequestMessage);
            v303 = (v206 + v205[5]);
            *v303 = v410;
            v303[1] = v204;
            (*(v368 + 32))(v206 + v205[6], v196, v369);
            (*(v407 + 32))(v206 + v205[7], v302, v404);
            v304 = v372;
            sub_26C3DDD48(v388 + v400, v372, &qword_280497458, &unk_26C46D3F0);
            if (v200(v304, 1, v195) == 1)
            {
              v305 = v370;
              *v370 = 0;
              v305[1] = 0;
              v306 = *(v195 + 24);

              v307 = v372;
              sub_26C46BD14();
              if (v200(v307, 1, v195) != 1)
              {
                sub_26C3DE270(v307, &qword_280497458, &unk_26C46D3F0);
              }
            }

            else
            {
              v305 = v370;
              sub_26C42B9BC(v304, v370, type metadata accessor for PBUUID);
            }

            v308 = v365;
            sub_26C40F3CC();
            sub_26C42BA24(v305, type metadata accessor for PBUUID);
            v309 = v379;
            sub_26C42C130(v206, v379, type metadata accessor for CachedOwnershipRequest);
            (*(v377 + 56))(v309, 0, 1, v205);
            swift_beginAccess();
            sub_26C3D91B4(v309, v308);
            swift_endAccess();
            v310 = v388;
            v311 = v401;
            sub_26C41C740(v388, v401);

            sub_26C42BA24(v206, type metadata accessor for CachedOwnershipRequest);
            v312 = *(v408 + 1);
            v313 = v346;
            v312(v311, v346);
            v312(v409, v313);
            return sub_26C42BA24(v310, type metadata accessor for OwnershipChangeRequestMessage);
          }

LABEL_69:
          swift_once();
          goto LABEL_32;
        }

        v207 = v140;
        if (qword_280497148 != -1)
        {
          swift_once();
        }

        v208 = v145;
        v209 = sub_26C46BFA4();
        v210 = __swift_project_value_buffer(v209, qword_280498530);
        v211 = v380;
        v336(v380, v409, v140);
        v371 = v210;
        v212 = sub_26C46BF84();
        v213 = sub_26C46C404();
        v214 = os_log_type_enabled(v212, v213);
        v215 = v406;
        v335 = v208;
        if (v214)
        {
          v216 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          aBlock = v217;
          *v216 = 136315138;
          sub_26C46BCC4();
          sub_26C431280(&qword_280497640, MEMORY[0x277CC95F0]);
          v218 = sub_26C46C704();
          v219 = v211;
          v221 = v220;
          (v389)(v406, v404);
          (*(v408 + 1))(v219, v207);
          v222 = sub_26C3E80A8(v218, v221, &aBlock);
          v215 = v406;

          *(v216 + 4) = v222;
          _os_log_impl(&dword_26C3D6000, v212, v213, "SyncedModel: Requesting ownership. Sending ownership change request to authority: %s", v216, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v217);
          v223 = v217;
          v132 = v404;
          MEMORY[0x26D6A18D0](v223, -1, -1);
          MEMORY[0x26D6A18D0](v216, -1, -1);
        }

        else
        {

          (*(v408 + 1))(v211, v207);
        }

        v390 = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
        LODWORD(v372) = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
        v239 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
        swift_beginAccess();
        v240 = v343;
        v343(v215, v129 + v239, v132);
        v240(v405, v129 + v341, v132);
        v241 = v240;
        LODWORD(v381) = *(v129 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
        sub_26C46BB44();
        v242 = v132;
        v243 = v400;
        *(v400 + 16) = 0;
        *(v243 + 24) = 1;
        *(v243 + 28) = 0;
        v244 = v385;
        v245 = v243 + *(v385 + 28);
        sub_26C46BD14();
        v246 = v244[8];
        v247 = *(v397 + 56);
        v407 = v397 + 56;
        v404 = v247;
        v248 = v399;
        (v247)(v243 + v246, 1, 1, v399);
        v249 = v215;
        v380 = v244[9];
        (v247)(&v380[v243], 1, 1, v248);
        v388 = v244[10];
        (v247)(v243 + v388, 1, 1, v248);
        *v243 = v390;
        *(v243 + 8) = v372;
        v250 = v387;
        v241(v387, v249, v242);
        v251 = v386;
        v241(v386, v250, v242);
        v252 = v403;
        sub_26C40F280(v251, v403);
        v253 = v389;
        (v389)(v250, v242);
        sub_26C3DE270(v243 + v246, &qword_280497458, &unk_26C46D3F0);
        v390 = type metadata accessor for PBUUID;
        sub_26C42B9BC(v252, v243 + v246, type metadata accessor for PBUUID);
        v254 = v243 + v246;
        v255 = v404;
        (v404)(v254, 0, 1, v248);
        v241(v250, v405, v242);
        v241(v251, v250, v242);
        v256 = v403;
        sub_26C40F280(v251, v403);
        v253(v250, v242);
        v257 = v380;
        sub_26C3DE270(&v380[v243], &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v256, &v257[v243], v390);
        v258 = v399;
        v255(&v257[v243], 0, 1, v399);
        *(v243 + 16) = 0;
        *(v243 + 24) = 1;
        *(v243 + 28) = v381;
        v259 = v398;
        v260 = v343;
        v343(v250, v398, v242);
        v260(v251, v250, v242);
        v261 = v388;
        v262 = v403;
        sub_26C40F280(v251, v403);
        v253(v250, v242);
        v263 = v259;
        v264 = v258;
        v253(v263, v242);
        v253(v405, v242);
        v253(v406, v242);
        sub_26C3DE270(v261 + v243, &qword_280497458, &unk_26C46D3F0);
        sub_26C42B9BC(v262, v261 + v243, v390);
        (v404)(v261 + v243, 0, 1, v258);
        v265 = type metadata accessor for SyncMessage.OneOf_Contents(0);
        v266 = *(*(v265 - 8) + 56);
        v267 = v384;
        v266(v384, 1, 1, v265);
        v268 = v267 + *(v382 + 20);
        sub_26C46BD14();
        v269 = v383;
        sub_26C42C130(v243, v383, type metadata accessor for OwnershipChangeRequestMessage);
        sub_26C3DE270(v267, &qword_280497650, &unk_26C46D930);
        sub_26C42B9BC(v269, v267, type metadata accessor for OwnershipChangeRequestMessage);
        swift_storeEnumTagMultiPayload();
        v266(v267, 0, 1, v265);
        sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
        v270 = sub_26C46BE64();
        v272 = v271;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497668, &unk_26C46E530);
        v273 = v408;
        v274 = *(v408 + 9);
        v275 = (v408[80] + 32) & ~v408[80];
        v276 = swift_allocObject();
        *(v276 + 16) = xmmword_26C46D760;
        v277 = v346;
        v336((v276 + v275), v409, v346);
        v278 = sub_26C3FD100(v276);
        swift_setDeallocating();
        v279 = *(v273 + 1);
        v408 = v273 + 8;
        v405 = v279;
        (v279)(v276 + v275, v277);
        swift_deallocClassInstance();
        v280 = v373;
        *v373 = v278;
        v281 = v375;
        v282 = v352;
        (*(v375 + 104))(v280, *MEMORY[0x277CCB268], v352);
        v283 = *(v281 + 16);
        v284 = v374;
        v283(v374 + *(v347 + 20), v280, v282);
        *v284 = v270;
        v284[1] = v272;
        v285 = Strong;
        swift_beginAccess();
        v286 = *(v285 + 16);
        v407 = v270;
        v406 = v272;
        sub_26C3DDDB0(v270, v272);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v285 + 16) = v286;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v286 = sub_26C42BE38(0, v286[2] + 1, 1, v286, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(Strong + 16) = v286;
        }

        v288 = v378;
        v289 = v397;
        v290 = v356;
        v291 = v388;
        v293 = v286[2];
        v292 = v286[3];
        if (v293 >= v292 >> 1)
        {
          v286 = sub_26C42BE38(v292 > 1, v293 + 1, 1, v286, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
        }

        v286[2] = v293 + 1;
        sub_26C42B9BC(v374, v286 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v293, type metadata accessor for SyncedModelManager.MessageWrapper);
        *(Strong + 16) = v286;
        swift_endAccess();
        (*(v375 + 8))(v373, v282);
        v294 = v400;
        v295 = v344;
        sub_26C42C130(v400, v344, type metadata accessor for OwnershipChangeRequestMessage);
        v296 = v295 + v288[6];
        sub_26C46BAD4();
        v297 = v291 + v294;
        v298 = v350;
        sub_26C3DDD48(v297, v350, &qword_280497458, &unk_26C46D3F0);
        v299 = *(v289 + 48);
        if (v299(v298, 1, v264) == 1)
        {
          v300 = v349;
          *v349 = 0;
          v300[1] = 0;
          v301 = v300 + *(v264 + 24);
          sub_26C46BD14();
          if (v299(v298, 1, v264) != 1)
          {
            sub_26C3DE270(v298, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v300 = v349;
          sub_26C42B9BC(v298, v349, type metadata accessor for PBUUID);
        }

        v314 = v344;
        v315 = &v344[v288[7]];
        sub_26C40F3CC();
        sub_26C42BA24(v300, type metadata accessor for PBUUID);
        v316 = (v314 + v288[5]);
        v317 = v402;
        *v316 = v410;
        v316[1] = v317;
        sub_26C3DDD48(v291 + v400, v290, &qword_280497458, &unk_26C46D3F0);
        if (v299(v290, 1, v264) == 1)
        {
          v318 = v353;
          *v353 = 0;
          v318[1] = 0;
          v319 = *(v264 + 24);

          sub_26C46BD14();
          if (v299(v290, 1, v264) != 1)
          {
            sub_26C3DE270(v290, &qword_280497458, &unk_26C46D3F0);
          }
        }

        else
        {
          v318 = v353;
          sub_26C42B9BC(v290, v353, type metadata accessor for PBUUID);
        }

        v320 = v348;
        sub_26C40F3CC();
        sub_26C42BA24(v318, type metadata accessor for PBUUID);
        v321 = v379;
        sub_26C42C130(v344, v379, type metadata accessor for CachedOwnershipRequest);
        (*(v377 + 56))(v321, 0, 1, v288);
        v322 = v412;
        swift_beginAccess();
        sub_26C3D91B4(v321, v320);
        swift_endAccess();
        v323 = *(Strong + 40);
        v324 = v357;
        sub_26C46C0E4();
        v325 = v358;
        sub_26C46C104();
        v410 = *(v359 + 8);
        v410(v324, v376);
        v326 = v383;
        sub_26C42C130(v400, v383, type metadata accessor for OwnershipChangeRequestMessage);
        v327 = (*(v354 + 80) + 24) & ~*(v354 + 80);
        v328 = swift_allocObject();
        *(v328 + 16) = v322;
        sub_26C42B9BC(v326, v328 + v327, type metadata accessor for OwnershipChangeRequestMessage);
        v417 = sub_26C430E80;
        v418 = v328;
        aBlock = MEMORY[0x277D85DD0];
        v414 = 1107296256;
        v415 = sub_26C3DF384;
        v416 = &block_descriptor_1;
        v329 = _Block_copy(&aBlock);

        v330 = v391;
        sub_26C46C0C4();
        v419 = MEMORY[0x277D84F90];
        sub_26C431280(&qword_2804973F8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497400, &qword_26C46D290);
        sub_26C3FBC1C(&qword_280497408, &qword_280497400, &qword_26C46D290);
        v331 = v392;
        v332 = v396;
        sub_26C46C484();
        MEMORY[0x26D6A0E30](v325, v330, v331, v329);
        _Block_release(v329);

        sub_26C3DDEA8(v407, v406);
        (*(v395 + 8))(v331, v332);
        (*(v393 + 8))(v330, v394);
        v410(v325, v376);
        sub_26C42BA24(v344, type metadata accessor for CachedOwnershipRequest);
        v333 = v346;
        v334 = v405;
        (v405)(v401, v346);
        v334(v409, v333);
        sub_26C42BA24(v384, type metadata accessor for SyncMessage);
        sub_26C42BA24(v400, type metadata accessor for OwnershipChangeRequestMessage);
      }

      sub_26C3DE270(v93, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v95, &qword_280497430, &unk_26C46D3D0);
      (*(v407 + 8))(v137, v132);
    }

    sub_26C3DE270(v78, &qword_280497B78, "n6");
    v138 = v408;
    goto LABEL_22;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v111 = sub_26C46BFA4();
  __swift_project_value_buffer(v111, qword_280498530);
  v112 = sub_26C46BF84();
  v113 = sub_26C46C3E4();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&dword_26C3D6000, v112, v113, "SyncedModel: tried to request ownership before the model is registered. This does nothing.", v114, 2u);
    MEMORY[0x26D6A18D0](v114, -1, -1);
  }

  LOBYTE(aBlock) = 1;
  return (v410)(&aBlock);
}

uint64_t sub_26C428C8C(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497308, &unk_26C46D100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v51 - v18);
  v59 = sub_26C46BB54();
  v20 = *(v59 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v59);
  v54 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v55 = type metadata accessor for CachedOwnershipRequest(0);
  v52 = *(v55 - 8);
  v26 = *(v52 + 64);
  v27 = MEMORY[0x28223BE20](v55);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v53 = &v51 - v30;
  v31 = *(type metadata accessor for OwnershipChangeRequestMessage(0) + 40);
  v56 = a2;
  sub_26C3DDD48(a2 + v31, v11, &qword_280497458, &unk_26C46D3F0);
  v32 = *(v13 + 48);
  if (v32(v11, 1, v12) == 1)
  {
    *v19 = 0;
    v19[1] = 0;
    v33 = v19 + *(v12 + 24);
    sub_26C46BD14();
    if (v32(v11, 1, v12) != 1)
    {
      sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v11, v19, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v19, type metadata accessor for PBUUID);
  v34 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  v35 = v60;
  swift_beginAccess();
  v36 = *(v35 + v34);
  if (!*(v36 + 16))
  {
    return (*(v20 + 8))(v25, v59);
  }

  v37 = sub_26C42C210(v25);
  if ((v38 & 1) == 0)
  {

    return (*(v20 + 8))(v25, v59);
  }

  sub_26C42C130(*(v36 + 56) + *(v52 + 72) * v37, v29, type metadata accessor for CachedOwnershipRequest);
  v39 = v25;
  v40 = v59;
  v52 = *(v20 + 8);
  (v52)(v39, v59);

  v41 = v29;
  v42 = v53;
  sub_26C42B9BC(v41, v53, type metadata accessor for CachedOwnershipRequest);
  v43 = v57;
  sub_26C3DDD48(v56 + v31, v57, &qword_280497458, &unk_26C46D3F0);
  if (v32(v43, 1, v12) == 1)
  {
    *v17 = 0;
    v17[1] = 0;
    v44 = v17 + *(v12 + 24);
    sub_26C46BD14();
    if (v32(v43, 1, v12) != 1)
    {
      sub_26C3DE270(v43, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v43, v17, type metadata accessor for PBUUID);
  }

  v46 = v54;
  sub_26C40F3CC();
  sub_26C42BA24(v17, type metadata accessor for PBUUID);
  swift_beginAccess();
  v47 = v58;
  sub_26C42C948(v46, v58);
  (v52)(v46, v40);
  sub_26C3DE270(v47, &qword_280497308, &unk_26C46D100);
  swift_endAccess();
  v48 = v42 + *(v55 + 20);
  v49 = *v48;
  v50 = *(v48 + 8);
  v61[0] = 2;
  v49(v61);
  return sub_26C42BA24(v42, type metadata accessor for CachedOwnershipRequest);
}

void sub_26C4292A4()
{
  v135 = type metadata accessor for SyncedModelManager.MessageWrapper(0);
  v136 = *(v135 - 8);
  v1 = *(v136 + 64);
  MEMORY[0x28223BE20](v135);
  v139 = (&v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_26C46BCF4();
  v137 = *(v3 - 8);
  v4 = *(v137 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v138 = &v123 - v8;
  v146 = type metadata accessor for SyncMessage(0);
  v9 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v150 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for PBUUID(0);
  isa = v156[-1].isa;
  v11 = *(isa + 8);
  MEMORY[0x28223BE20](v156);
  v143 = (&v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v140 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v13 = *(*(v140 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v140);
  v145 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v123 - v16;
  v17 = sub_26C46BB54();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v142 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v141 = &v123 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v155 = &v123 - v25;
  MEMORY[0x28223BE20](v24);
  v154 = &v123 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B78, "n6");
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v123 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497430, &unk_26C46D3D0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v147 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v153 = &v123 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v152 = (&v123 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v148 = &v123 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v123 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v123 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B80, &unk_26C46E518);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v123 - v48;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v127 = v7;
    v128 = v3;
    v151 = Strong;
    v51 = type metadata accessor for PendingOwnershipRequest(0);
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    v52 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
    swift_beginAccess();
    sub_26C3DDCE0(v49, v0 + v52, &qword_280497B80, &unk_26C46E518);
    swift_endAccess();
    v53 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
    swift_beginAccess();
    v131 = v53;
    sub_26C3DDD48(v0 + v53, v45, &qword_280497430, &unk_26C46D3D0);
    v134 = v0;
    v54 = v0 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipUUID;
    v56 = v18 + 16;
    v55 = *(v18 + 16);
    v129 = v54;
    v130 = v55;
    v55(v43);
    v57 = *(v18 + 56);
    v133 = (v18 + 56);
    v132 = v57;
    (v57)(v43, 0, 1, v17);
    v58 = *(v27 + 48);
    sub_26C3DDD48(v45, v30, &qword_280497430, &unk_26C46D3D0);
    sub_26C3DDD48(v43, &v30[v58], &qword_280497430, &unk_26C46D3D0);
    v60 = (v18 + 48);
    v59 = *(v18 + 48);
    v61 = v18;
    if (v59(v30, 1, v17) == 1)
    {
      v125 = v18 + 16;
      v126 = v18;
      sub_26C3DE270(v43, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v45, &qword_280497430, &unk_26C46D3D0);
      if (v59(&v30[v58], 1, v17) == 1)
      {
        sub_26C3DE270(v30, &qword_280497430, &unk_26C46D3D0);
        goto LABEL_21;
      }
    }

    else
    {
      v66 = v148;
      sub_26C3DDD48(v30, v148, &qword_280497430, &unk_26C46D3D0);
      if (v59(&v30[v58], 1, v17) != 1)
      {
        v125 = v56;
        v71 = v154;
        (*(v61 + 32))(v154, &v30[v58], v17);
        sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
        v72 = sub_26C46C1C4();
        v126 = v61;
        v73 = *(v61 + 8);
        v73(v71, v17);
        v60 = &unk_26C46D3D0;
        sub_26C3DE270(v43, &qword_280497430, &unk_26C46D3D0);
        sub_26C3DE270(v45, &qword_280497430, &unk_26C46D3D0);
        v73(v66, v17);
        sub_26C3DE270(v30, &qword_280497430, &unk_26C46D3D0);
        if (v72)
        {
LABEL_21:
          if (qword_280497148 != -1)
          {
            swift_once();
          }

          v74 = sub_26C46BFA4();
          v123 = __swift_project_value_buffer(v74, qword_280498530);
          v75 = sub_26C46BF84();
          v76 = sub_26C46C404();
          v77 = os_log_type_enabled(v75, v76);
          v78 = v134;
          v79 = v153;
          v80 = v132;
          if (v77)
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            _os_log_impl(&dword_26C3D6000, v75, v76, "SyncedModel: Releasing ownership. Broadcasting to all participants.", v81, 2u);
            MEMORY[0x26D6A18D0](v81, -1, -1);
          }

          v82 = v152;
          (v80)(v152, 1, 1, v17);
          v83 = &qword_280497430;
          v84 = &unk_26C46D3D0;
          v85 = v131;
          sub_26C3DDD48(v78 + v131, v79, &qword_280497430, &unk_26C46D3D0);
          swift_beginAccess();
          sub_26C3E9EB8(v82, v78 + v85);
          swift_endAccess();
          v86 = v78 + v85;
          v87 = v147;
          sub_26C3DDD48(v86, v147, &qword_280497430, &unk_26C46D3D0);
          sub_26C418F90(v79, v87);
          sub_26C3DE270(v87, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v79, &qword_280497430, &unk_26C46D3D0);
          sub_26C3DE270(v82, &qword_280497430, &unk_26C46D3D0);
          v88 = *(v78 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter);
          v89 = __CFADD__(v88, 1);
          v90 = v88 + 1;
          if (v89)
          {
            __break(1u);
          }

          else
          {
            *(v78 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = v90;
            v131 = *(v78 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type);
            v124 = *(v78 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type + 8);
            v91 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__uuid;
            LODWORD(v148) = v90;
            swift_beginAccess();
            v92 = v154;
            v93 = v130;
            v130(v154, v78 + v91, v17);
            v93(v155, v129, v17);
            (v80)(v82, 1, 1, v17);
            v94 = v149;
            *(v149 + 12) = 0;
            *(v94 + 16) = 0;
            v95 = v140;
            v96 = v94 + *(v140 + 28);
            sub_26C46BD14();
            v134 = v95[8];
            v97 = *(isa + 7);
            isa = v97;
            v98 = v156;
            (v97)(v94 + v134, 1, 1, v156);
            v147 = v95[9];
            (v97)(v94 + v147, 1, 1, v98);
            (v97)(v94 + v95[10], 1, 1, v98);
            *v94 = v131;
            *(v94 + 8) = v124;
            v99 = v141;
            v93(v141, v92, v17);
            v100 = v142;
            v93(v142, v99, v17);
            v101 = v143;
            sub_26C40F280(v100, v143);
            v140 = *(v126 + 8);
            (v140)(v99, v17);
            v102 = v134;
            sub_26C3DE270(v94 + v134, &qword_280497458, &unk_26C46D3F0);
            v133 = type metadata accessor for PBUUID;
            sub_26C42B9BC(v101, v94 + v102, type metadata accessor for PBUUID);
            v103 = v94 + v102;
            v104 = isa;
            (isa)(v103, 0, 1, v156);
            v93(v99, v155, v17);
            v93(v100, v99, v17);
            sub_26C40F280(v100, v101);
            v105 = v140;
            (v140)(v99, v17);
            v106 = v147;
            sub_26C3DE270(v94 + v147, &qword_280497458, &unk_26C46D3F0);
            sub_26C42B9BC(v101, v94 + v106, v133);
            v104(v94 + v106, 0, 1, v156);
            v108 = v152;
            v107 = v153;
            sub_26C3DDD48(v152, v153, &qword_280497430, &unk_26C46D3D0);
            sub_26C40E104(v107);
            sub_26C3DE270(v108, &qword_280497430, &unk_26C46D3D0);
            v105(v155, v17);
            v105(v154, v17);
            *(v94 + 12) = v148;
            *(v94 + 16) = 1;
            v109 = type metadata accessor for SyncMessage.OneOf_Contents(0);
            v110 = *(*(v109 - 8) + 56);
            v111 = v150;
            v110(v150, 1, 1, v109);
            v112 = v111 + *(v146 + 20);
            sub_26C46BD14();
            v113 = v145;
            sub_26C42C130(v94, v145, type metadata accessor for OwnershipChangeBroadcastMessage);
            sub_26C3DE270(v111, &qword_280497650, &unk_26C46D930);
            sub_26C42B9BC(v113, v111, type metadata accessor for OwnershipChangeBroadcastMessage);
            swift_storeEnumTagMultiPayload();
            v110(v111, 0, 1, v109);
            sub_26C431280(&qword_280497660, type metadata accessor for SyncMessage);
            v83 = sub_26C46BE64();
            v84 = v114;
            v78 = *MEMORY[0x277CCB260];
            v80 = v137;
            v17 = *(v137 + 104);
            v115 = v138;
            v60 = v128;
            v17(v138, v78, v128);
            v116 = v139;
            v80[2](v139 + *(v135 + 20), v115, v60);
            *v116 = v83;
            v116[1] = v84;
            v117 = v151;
            swift_beginAccess();
            v82 = *(v117 + 16);
            sub_26C3DDDB0(v83, v84);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v117 + 16) = v82;
            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_27:
              v120 = v82[2];
              v119 = v82[3];
              if (v120 >= v119 >> 1)
              {
                v82 = sub_26C42BE38(v119 > 1, v120 + 1, 1, v82, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
              }

              v82[2] = v120 + 1;
              sub_26C42B9BC(v139, v82 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v120, type metadata accessor for SyncedModelManager.MessageWrapper);
              *(v151 + 16) = v82;
              swift_endAccess();
              v121 = v80[1];
              (v121)(v138, v60);
              v122 = v127;
              v17(v127, v78, v60);
              sub_26C3ECC34(v122);

              sub_26C3DDEA8(v83, v84);
              (v121)(v122, v60);
              sub_26C42BA24(v150, type metadata accessor for SyncMessage);
              sub_26C42BA24(v149, type metadata accessor for OwnershipChangeBroadcastMessage);
              return;
            }
          }

          v82 = sub_26C42BE38(0, v82[2] + 1, 1, v82, &qword_280497B88, &qword_26C46E528, type metadata accessor for SyncedModelManager.MessageWrapper);
          *(v151 + 16) = v82;
          goto LABEL_27;
        }

        goto LABEL_15;
      }

      sub_26C3DE270(v43, &qword_280497430, &unk_26C46D3D0);
      sub_26C3DE270(v45, &qword_280497430, &unk_26C46D3D0);
      (*(v61 + 8))(v66, v17);
    }

    sub_26C3DE270(v30, &qword_280497B78, "n6");
LABEL_15:
    if (qword_280497148 != -1)
    {
      swift_once();
    }

    v67 = sub_26C46BFA4();
    __swift_project_value_buffer(v67, qword_280498530);
    v68 = sub_26C46BF84();
    v69 = sub_26C46C404();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26C3D6000, v68, v69, "SyncedModel: Attempting to release ownership of model you don't currently own.", v70, 2u);
      MEMORY[0x26D6A18D0](v70, -1, -1);
    }

    return;
  }

  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v62 = sub_26C46BFA4();
  __swift_project_value_buffer(v62, qword_280498530);
  v156 = sub_26C46BF84();
  v63 = sub_26C46C404();
  if (os_log_type_enabled(v156, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_26C3D6000, v156, v63, "SyncedModel: Attempting to release ownership before model is attached to group session.", v64, 2u);
    MEMORY[0x26D6A18D0](v64, -1, -1);
  }

  v65 = v156;
}

void sub_26C42A780(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26C46C474();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26C42A808(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_26C46BAE4();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = sub_26C46BB54();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_26C42A990(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for OwnershipChangeRequestMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_26C46BAE4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = sub_26C46BB54();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

unint64_t sub_26C42AB24()
{
  result = type metadata accessor for OwnershipChangeRequestMessage(319);
  if (v1 <= 0x3F)
  {
    result = sub_26C42ABD8();
    if (v2 <= 0x3F)
    {
      result = sub_26C46BAE4();
      if (v3 <= 0x3F)
      {
        result = sub_26C46BB54();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_26C42ABD8()
{
  result = qword_280497B60;
  if (!qword_280497B60)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280497B60);
  }

  return result;
}

uint64_t sub_26C42AC28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C42AC74(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_26C42ACD8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BAE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26C42AD98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26C46BAE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_26C42AE3C()
{
  result = sub_26C42ABD8();
  if (v1 <= 0x3F)
  {
    result = sub_26C46BAE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26C42AEC0(char *a1, uint64_t a2)
{
  v99 = a1;
  v3 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v98 = (&v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497328, &qword_26C46E550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v87 = &v84 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v84 = *(v85 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v90 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v86 = &v84 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v20 = type metadata accessor for PBUUID(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v89 = (&v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v84 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = (&v84 - v28);
  v97 = sub_26C46BB54();
  v100 = *(v97 - 8);
  v30 = *(v100 + 64);
  v31 = MEMORY[0x28223BE20](v97);
  v88 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v84 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v38 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v94 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_26C46BCD4();
  v93 = *(v95 - 8);
  v41 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = v3;
  v92 = (&v84 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v3 + 36);
  v96 = a2;
  sub_26C3DDD48(a2 + v43, v19, &qword_280497458, &unk_26C46D3F0);
  v44 = *(v21 + 48);
  if (v44(v19, 1, v20) == 1)
  {
    *v29 = 0;
    v29[1] = 0;
    v45 = v29 + *(v20 + 24);
    sub_26C46BD14();
    if (v44(v19, 1, v20) != 1)
    {
      sub_26C3DE270(v19, &qword_280497458, &unk_26C46D3F0);
    }
  }

  else
  {
    sub_26C42B9BC(v19, v29, type metadata accessor for PBUUID);
  }

  sub_26C40F3CC();
  sub_26C42BA24(v29, type metadata accessor for PBUUID);
  v46 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  v47 = v99;
  swift_beginAccess();
  v48 = *&v47[v46];
  if (*(v48 + 16))
  {

    v49 = sub_26C42C210(v37);
    if (v50)
    {
      sub_26C3DDD48(*(v48 + 56) + *(v84 + 72) * v49, v11, &qword_280497330, &unk_26C46D120);
      v51 = *(v100 + 8);
      v52 = v37;
      v53 = v97;
      v100 += 8;
      v98 = v51;
      (v51)(v52, v97);

      v54 = *(v85 + 48);
      (*(v93 + 32))(v92, v11, v95);
      sub_26C42B9BC(&v11[v54], v94, type metadata accessor for OwnershipChangeRequestMessage);
      v55 = v86;
      sub_26C3DDD48(v96 + v43, v86, &qword_280497458, &unk_26C46D3F0);
      if (v44(v55, 1, v20) == 1)
      {
        *v27 = 0;
        v27[1] = 0;
        v56 = v27 + *(v20 + 24);
        sub_26C46BD14();
        if (v44(v55, 1, v20) != 1)
        {
          sub_26C3DE270(v55, &qword_280497458, &unk_26C46D3F0);
        }
      }

      else
      {
        sub_26C42B9BC(v55, v27, type metadata accessor for PBUUID);
      }

      sub_26C40F3CC();
      sub_26C42BA24(v27, type metadata accessor for PBUUID);
      swift_beginAccess();
      v77 = v87;
      sub_26C42CAFC(v35, v87);
      (v98)(v35, v53);
      sub_26C3DE270(v77, &qword_280497328, &qword_26C46E550);
      swift_endAccess();
      if (qword_280497148 != -1)
      {
        swift_once();
      }

      v78 = sub_26C46BFA4();
      __swift_project_value_buffer(v78, qword_280498530);
      v79 = sub_26C46BF84();
      v80 = sub_26C46C404();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_26C3D6000, v79, v80, "SyncedModel: Ownership handoff request timed out", v81, 2u);
        MEMORY[0x26D6A18D0](v81, -1, -1);
      }

      v82 = v94;
      v83 = v92;
      sub_26C41AC88(v94, v92, 5, 1);
      sub_26C42BA24(v82, type metadata accessor for OwnershipChangeRequestMessage);
      (*(v93 + 8))(v83, v95);
      return;
    }
  }

  v58 = v100 + 8;
  v57 = *(v100 + 8);
  v59 = v37;
  v60 = v97;
  v57(v59, v97);
  if (qword_280497148 != -1)
  {
    swift_once();
  }

  v61 = sub_26C46BFA4();
  __swift_project_value_buffer(v61, qword_280498530);
  v62 = v98;
  sub_26C42C130(v96, v98, type metadata accessor for OwnershipHandoffRequestMessage);
  v63 = sub_26C46BF84();
  v64 = sub_26C46C404();
  if (os_log_type_enabled(v63, v64))
  {
    v99 = v57;
    v100 = v58;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67 = v62;
    v68 = v66;
    v101[0] = v66;
    *v65 = 136315138;
    v69 = v90;
    sub_26C3DDD48(v67 + *(v91 + 36), v90, &qword_280497458, &unk_26C46D3F0);
    if (v44(v69, 1, v20) == 1)
    {
      v70 = v89;
      *v89 = 0;
      v70[1] = 0;
      v71 = v70 + *(v20 + 24);
      sub_26C46BD14();
      if (v44(v69, 1, v20) != 1)
      {
        sub_26C3DE270(v69, &qword_280497458, &unk_26C46D3F0);
      }
    }

    else
    {
      v70 = v89;
      sub_26C42B9BC(v69, v89, type metadata accessor for PBUUID);
    }

    v72 = v88;
    sub_26C40F3CC();
    sub_26C42BA24(v70, type metadata accessor for PBUUID);
    v73 = sub_26C46BB04();
    v75 = v74;
    (v99)(v72, v60);
    sub_26C42BA24(v98, type metadata accessor for OwnershipHandoffRequestMessage);
    v76 = sub_26C3E80A8(v73, v75, v101);

    *(v65 + 4) = v76;
    _os_log_impl(&dword_26C3D6000, v63, v64, "SyncedModel: Ownership request has been handled or failed to find ownership request for handoff timeout: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x26D6A18D0](v68, -1, -1);
    MEMORY[0x26D6A18D0](v65, -1, -1);
  }

  else
  {

    sub_26C42BA24(v62, type metadata accessor for OwnershipHandoffRequestMessage);
  }
}

uint64_t sub_26C42B9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C42BA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26C42BA84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BE0, &unk_26C46E5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C42BB90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C08, &qword_26C46E608);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26C42BCE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BF8, &qword_26C46E5E8);
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

size_t sub_26C42BE38(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_26C42C014(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26C42C110(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_26C42C130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C42C198@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26C42C1C8(unsigned int a1)
{
  v3 = MEMORY[0x26D6A1200](*(v1 + 40), a1, 4);

  return sub_26C42C364(a1, v3);
}

unint64_t sub_26C42C210(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26C46BB54();
  sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
  v5 = sub_26C46C1A4();

  return sub_26C42C3D0(a1, v5);
}

unint64_t sub_26C42C2A8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26C46C814();
  sub_26C46C1E4();
  v6 = sub_26C46C844();

  return sub_26C42C590(a1, a2, v6);
}

unint64_t sub_26C42C320(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26C46C804();

  return sub_26C42C648(a1, v4);
}

unint64_t sub_26C42C364(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26C42C3D0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26C431280(&qword_2804975A8, MEMORY[0x277CC95F0]);
      v16 = sub_26C46C1C4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_26C42C590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26C46C764())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26C42C648(uint64_t a1, uint64_t a2)
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

double sub_26C42C6B4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26C42C210(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42E470();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_26C46BB54();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    *a2 = *(*(v11 + 56) + 16 * v8);
    sub_26C42CFE0(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_26C46E260;
  }

  return result;
}

uint64_t sub_26C42C790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26C42C210(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42E878();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26C46BB54();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_26C46BCD4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_26C42D7B0(v8, v11, MEMORY[0x277CCB248]);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_26C46BCD4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26C42C948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26C42C210(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42F240();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26C46BB54();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for CachedOwnershipRequest(0);
    v22 = *(v15 - 8);
    sub_26C42B9BC(v14 + *(v22 + 72) * v8, a2, type metadata accessor for CachedOwnershipRequest);
    sub_26C42D7B0(v8, v11, type metadata accessor for CachedOwnershipRequest);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for CachedOwnershipRequest(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26C42CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26C42C210(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C42F56C();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26C46BB54();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
    v22 = *(v15 - 8);
    sub_26C3DDC70(v14 + *(v22 + 72) * v8, a2);
    sub_26C42DB00(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26C42CC9C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x26D6A1200](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26C42CE30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C46C814();

      sub_26C46C1E4();
      v13 = sub_26C46C844();

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
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
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

unint64_t sub_26C42CFE0(int64_t a1, uint64_t a2)
{
  v43 = sub_26C46BB54();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_26C46C4A4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
      v26 = sub_26C46C1A4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_26C42D300(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C46C4A4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_26C46C804();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8 || v3 < v13)
        {
          goto LABEL_5;
        }
      }

      else if (v13 < v8 && v3 < v13)
      {
        goto LABEL_5;
      }

      v16 = (v10 + 8 * v3);
      if (v3 != v6 || v16 >= v11 + 1)
      {
        *v16 = *v11;
      }

      v17 = *(a2 + 56);
      result = v17 + 8 * v3;
      if (v3 < v6 || result >= v17 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42D490(int64_t a1, uint64_t a2)
{
  v43 = sub_26C46BB54();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_26C46C4A4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
      v26 = sub_26C46C1A4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_26C42D7B0(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_26C46BB54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_26C46C4A4();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
      v25 = sub_26C46C1A4();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42DB00(int64_t a1, uint64_t a2)
{
  v4 = sub_26C46BB54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_26C46C4A4();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
      v24 = sub_26C46C1A4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C42DE50(int64_t a1, uint64_t a2)
{
  v44 = sub_26C46BB54();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = sub_26C46C4A4();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26C431280(&qword_280497318, MEMORY[0x277CC95F0]);
      v26 = sub_26C46C1A4();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

void *sub_26C42E174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497380, &unk_26C46D170);
  v2 = *v0;
  v3 = sub_26C46C604();
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
        v18 = *(*(v2 + 48) + 4 * v17);
        sub_26C3DE190(*(v2 + 56) + 16 * v17, v19);
        *(*(v4 + 48) + 4 * v17) = v18;
        result = sub_26C3DE0D8(v19, *(v4 + 56) + 16 * v17);
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

void *sub_26C42E2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497388, &qword_26C46D740);
  v2 = *v0;
  v3 = sub_26C46C604();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

char *sub_26C42E470()
{
  v1 = v0;
  v2 = sub_26C46BB54();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497360, &unk_26C46D150);
  v6 = *v0;
  v7 = sub_26C46C604();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_26C3DDDB0(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_26C42E6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497370, &unk_26C46D160);
  v2 = *v0;
  v3 = sub_26C46C604();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_26C3DDFB4(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_26C3DDEFC(v19, *(v4 + 56) + v17);
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

char *sub_26C42E878()
{
  v1 = v0;
  v43 = sub_26C46BCD4();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_26C46BB54();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497320, &unk_26C46D110);
  v6 = *v0;
  v7 = sub_26C46C604();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

char *sub_26C42EBCC()
{
  v1 = v0;
  v34 = sub_26C46BB54();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497350, &unk_26C46D140);
  v4 = *v0;
  v5 = sub_26C46C604();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_26C42EE4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497348, &qword_26C46D138);
  v2 = *v0;
  v3 = sub_26C46C604();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_26C3DDDB0(v18, *(&v18 + 1));
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

char *sub_26C42EFB4()
{
  v1 = v0;
  v36 = sub_26C46BB54();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497340, &qword_26C46D130);
  v4 = *v0;
  v5 = sub_26C46C604();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_26C42F240()
{
  v1 = v0;
  v2 = type metadata accessor for CachedOwnershipRequest(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26C46BB54();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497310, &qword_26C46E540);
  v7 = *v0;
  v8 = sub_26C46C604();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_26C42C130(*(v7 + 56) + v28, v37, type metadata accessor for CachedOwnershipRequest);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_26C42B9BC(v27, *(v29 + 56) + v28, type metadata accessor for CachedOwnershipRequest);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_26C42F56C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497330, &unk_26C46D120);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - v4;
  v36 = sub_26C46BB54();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497338, &unk_26C46D700);
  v7 = *v0;
  v8 = sub_26C46C604();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_26C3DDD48(*(v7 + 56) + v28, v37, &qword_280497330, &unk_26C46D120);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_26C3DDC70(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_26C42F888()
{
  v1 = v0;
  v40 = sub_26C46BB54();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497358, &unk_26C46E5F0);
  v4 = *v0;
  v5 = sub_26C46C604();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v15;
    v38 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v42;
        v21 = *(v42 + 72) * v19;
        v23 = v39;
        v22 = v40;
        (*(v42 + 16))(v39, *(v4 + 48) + v21, v40);
        v24 = 24 * v19;
        v25 = (*(v4 + 56) + 24 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v29 = v41;
        (*(v20 + 32))(*(v41 + 48) + v21, v23, v22);
        v30 = *(v29 + 56);
        v4 = v38;
        v31 = (v30 + v24);
        *v31 = v26;
        v31[1] = v27;
        v31[2] = v28;

        v15 = v37;
        v14 = v43;
      }

      while (v43);
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

        v1 = v33;
        v6 = v41;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

size_t sub_26C42FB34(size_t a1, int64_t a2, char a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BA8, &unk_26C46E580, type metadata accessor for ModelData.PropertyDataMap);
  *v3 = result;
  return result;
}

size_t sub_26C42FB78(size_t a1, int64_t a2, char a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BC0, &unk_26C46E5A0, type metadata accessor for ModelData.OwnershipUUIDToAccountIdentifier);
  *v3 = result;
  return result;
}

void *sub_26C42FBBC(void *a1, int64_t a2, char a3)
{
  result = sub_26C42FCA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26C42FBDC(size_t a1, int64_t a2, char a3)
{
  result = sub_26C42FDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26C42FBFC(size_t a1, int64_t a2, char a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497BE8, &qword_26C46E5D8, type metadata accessor for LamportTimestamp);
  *v3 = result;
  return result;
}

char *sub_26C42FC40(char *a1, int64_t a2, char a3)
{
  result = sub_26C42FFDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26C42FC60(size_t a1, int64_t a2, char a3)
{
  result = sub_26C430110(a1, a2, a3, *v3, &qword_280497668, &unk_26C46E530, MEMORY[0x277CCB248]);
  *v3 = result;
  return result;
}

void *sub_26C42FCA4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BB0, &qword_26C46E590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BB8, &qword_26C46E598);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26C42FDEC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BA0, &unk_26C46E570);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497598, &unk_26C46E010) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26C42FFDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497BE0, &unk_26C46E5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26C430110(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26C4302EC(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v17 = sub_26C46C874();
  v16 = *(v17 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v17);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = swift_getObjectType();
  *&v25 = a1;
  swift_unknownObjectRetain();
  sub_26C46C854();
  v15 = v5;
  sub_26C46C864();
  sub_26C46C5A4();

  v18 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  sub_26C46C644();
  if (!v27)
  {
LABEL_8:

    *&v25 = *(v19 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status);
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C10, &qword_26C46E610);
    sub_26C3FBC1C(&qword_280497C18, &qword_280497C10, &qword_26C46E610);
    sub_26C46C094();

    swift_beginAccess();
    sub_26C46BFC4();
    swift_endAccess();

    return (*(v16 + 8))(v15, v17);
  }

  v6 = 1;
  while (1)
  {
    v23 = v25;
    sub_26C413118(&v26, &v24);
    sub_26C3DDD48(&v23, v22, &qword_280497C20, &qword_26C46E618);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497AE0, "|8");
    if (swift_dynamicCast())
    {
      break;
    }

    sub_26C3DE270(&v23, &qword_280497C20, &qword_26C46E618);
LABEL_4:
    sub_26C46C644();
    if (!v27)
    {
      goto LABEL_8;
    }
  }

  v7 = v20;
  v8 = v21;
  v9 = *v20;
  v10 = *(*v20 + 152);

  v10(v11);

  (*(*v7 + 200))(v6);
  v21 = v8;
  swift_weakInit();
  swift_beginAccess();
  sub_26C3D888C(&v20, v6);
  swift_endAccess();
  (*(v8 + 32))(v9, v8);

  result = sub_26C3DE270(&v23, &qword_280497C20, &qword_26C46E618);
  v13 = __CFADD__(v6, 1);
  v6 = (v6 + 1);
  if (!v13)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C43076C(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  sub_26C46BB44();
  v3 = a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__type;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__properties;
  v5 = MEMORY[0x277D84F90];
  *(a2 + v4) = sub_26C3E8650(MEMORY[0x277D84F90]);
  v6 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__transaction;
  v7 = type metadata accessor for SyncTransactionMessage(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController_transactionLock;
  v9 = sub_26C46BBB4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(a2 + v8) = sub_26C46BBA4();
  sub_26C46BB44();
  v12 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUIDsToParticipants;
  *(a2 + v12) = sub_26C3E876C(v5);
  v13 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__authorityParticipant;
  v14 = sub_26C46BCD4();
  (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownerUUID;
  v16 = sub_26C46BB54();
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  v17 = (a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestHandler);
  *v17 = 0;
  v17[1] = 0;
  *(a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipCounter) = 0;
  if (v5 >> 62 && sub_26C46C5F4())
  {
    v18 = sub_26C3FCD9C(MEMORY[0x277D84F90]);
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  *(a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_cancellables) = v18;
  v19 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__pendingOwnershipRequest;
  v20 = type metadata accessor for PendingOwnershipRequest(0);
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingReply;
  v22 = MEMORY[0x277D84F90];
  *(a2 + v21) = sub_26C3E898C(MEMORY[0x277D84F90]);
  v23 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController__ownershipRequestsAwaitingHandoffReply;
  *(a2 + v23) = sub_26C3E8BA8(v22);
  v24 = (a2 + OBJC_IVAR____TtC12SyncedModels21SyncedModelController_ownershipChangedHandler);
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC12SyncedModels21SyncedModelController_status;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497C10, &qword_26C46E610);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(a2 + v25) = sub_26C46C044();
  v29 = swift_unknownObjectRetain();
  sub_26C4302EC(v29, a2);
  swift_unknownObjectRelease();
  return a2;
}

unint64_t sub_26C430A54(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v9 + v11;
  if (__OFADD__(v9, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v17 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v12 > v8[3] >> 1)
  {
    if (v9 <= v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = v9;
    }

    v8 = sub_26C42BE38(isUniquelyReferenced_nonNull_native, v19, 1, v8, a3, a4, a5);
    *v6 = v8;
  }

  result = sub_26C430B44(v10, a2, 0, a6);
  *v6 = v8;
  return result;
}

unint64_t sub_26C430B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26C430C90()
{
  v1 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v15 = v0;
  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = v1[7];
  v6 = sub_26C46BD24();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v8 = v4 + v1[8];
  v9 = type metadata accessor for PBUUID(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {
    v7(v8 + *(v9 + 24), v6);
  }

  v11 = v4 + v1[9];
  if (!v10(v11, 1, v9))
  {
    v7(v11 + *(v9 + 24), v6);
  }

  v12 = v4 + v1[10];
  if (!v10(v12, 1, v9))
  {
    v7(v12 + *(v9 + 24), v6);
  }

  return MEMORY[0x2821FE8E8](v15, ((v2 + 24) & ~v2) + v14, v2 | 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C430EC4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C430EFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 0;
  return v1(&v4);
}

uint64_t sub_26C430F34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C430F74()
{
  v1 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v14 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v15 = v0;
  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = v1[6];
  v6 = sub_26C46BD24();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v8 = v4 + v1[7];
  v9 = type metadata accessor for PBUUID(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v8, 1, v9))
  {
    v7(v8 + *(v9 + 24), v6);
  }

  v11 = v4 + v1[8];
  if (!v10(v11, 1, v9))
  {
    v7(v11 + *(v9 + 24), v6);
  }

  v12 = v4 + v1[9];
  if (!v10(v12, 1, v9))
  {
    v7(v12 + *(v9 + 24), v6);
  }

  return MEMORY[0x2821FE8E8](v15, ((v2 + 24) & ~v2) + v14, v2 | 7);
}

uint64_t sub_26C431190(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_26C431280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s12SyncedModels15SyncedModelTypeOwet_0(uint64_t a1, int a2)
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

uint64_t _s12SyncedModels15SyncedModelTypeOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_26C4313F4(uint64_t a1)
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

uint64_t sub_26C431410(uint64_t result, int a2)
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

uint64_t sub_26C431454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C431598(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C4316E8()
{
  sub_26C431884(319, &qword_280497C70, type metadata accessor for PropertyChangedMessage, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C78, type metadata accessor for SetChangedMessage, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497C80, type metadata accessor for DictionaryChangedMessage, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26C46BD24();
        if (v3 <= 0x3F)
        {
          sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C431884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26C43195C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26C431AA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C431BD0()
{
  sub_26C431D48(319, &qword_280497C98);
  if (v0 <= 0x3F)
  {
    sub_26C431D48(319, &qword_280497CA0);
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_26C46BD24();
        if (v3 <= 0x3F)
        {
          sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26C431D48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26C46C2E4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26C431E04()
{
  sub_26C431884(319, &qword_2804979E8, type metadata accessor for ValueData, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26C46BD24();
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C431F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26C46BD24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C432054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26C46BD24();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26C43217C()
{
  sub_26C431884(319, &qword_280497CD0, type metadata accessor for SyncMessage.OneOf_Contents, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26C46BD24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C4322A0()
{
  result = type metadata accessor for SyncTransactionMessage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CatchupRequestMessage(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CatchupResponseMessage(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for OwnershipChangeRequestMessage(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for OwnershipChangeReplyMessage(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for OwnershipChangeBroadcastMessage(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for OwnershipHandoffRequestMessage(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for OwnershipHandoffReplyMessage(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C432460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
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
    v10 = sub_26C46BD24();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 24);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 28);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C4325A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v8 = sub_26C46BD24();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_26C4326F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C432804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

void sub_26C43291C()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C4329FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
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
    v10 = sub_26C46BD24();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 28);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 32);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_26C432B40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v8 = sub_26C46BD24();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26C432C80()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

void sub_26C432F88()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C433088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v10 = sub_26C46BD24();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26C433148(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v7 = sub_26C46BD24();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26C4331E8()
{
  result = sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C43328C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BD24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26C43330C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C46BD24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26C43337C()
{
  result = sub_26C46BD24();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26C433438()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497C58, type metadata accessor for PBUUID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C433510(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26C46BD24();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[7];

  return v14(v15, a2, v13);
}

uint64_t sub_26C433678(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_26C46BD24();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497468, &unk_26C46D400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497470, &unk_26C46E870);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_26C4337D8()
{
  sub_26C46BD24();
  if (v0 <= 0x3F)
  {
    sub_26C431884(319, &qword_280497CB8, type metadata accessor for LamportTimestamp, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26C431884(319, &qword_280497D68, type metadata accessor for ValueData, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26C4338F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_26C46BD24();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_26C433984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_26C46BD24();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_26C433A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26C46BD24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C433B38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26C46BD24();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

unint64_t sub_26C433C88@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_26C433CA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26C433CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4554DC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_26C433D3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26C433D54()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26C433D70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26C433D8C(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_26C433DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C455530();

  return MEMORY[0x28217E238](a1, a2, v4);
}

BOOL sub_26C433DF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

void sub_26C433E44(uint64_t a1@<X8>)
{
  sub_26C4555D8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_26C433E78(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_26C4555D8();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_26C433EB0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

uint64_t sub_26C433F1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C455584();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26C433F68()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_26C46C814();
  sub_26C46C1B4();
  return sub_26C46C844();
}

unint64_t sub_26C433FF0()
{
  result = qword_280497D90;
  if (!qword_280497D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497D90);
  }

  return result;
}

unint64_t sub_26C434048()
{
  result = qword_280497D98;
  if (!qword_280497D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497D98);
  }

  return result;
}

unint64_t sub_26C4340A0()
{
  result = qword_280497DA0;
  if (!qword_280497DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DA0);
  }

  return result;
}

unint64_t sub_26C43410C()
{
  result = qword_280497DA8;
  if (!qword_280497DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DA8);
  }

  return result;
}

unint64_t sub_26C434164()
{
  result = qword_280497DB0;
  if (!qword_280497DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DB0);
  }

  return result;
}

unint64_t sub_26C4341BC()
{
  result = qword_280497DB8;
  if (!qword_280497DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DB8);
  }

  return result;
}

unint64_t sub_26C434214()
{
  result = qword_280497DC0;
  if (!qword_280497DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DC0);
  }

  return result;
}

unint64_t sub_26C43426C()
{
  result = qword_280497DC8;
  if (!qword_280497DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DC8);
  }

  return result;
}

unint64_t sub_26C4342C4()
{
  result = qword_280497DD0;
  if (!qword_280497DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280497DD0);
  }

  return result;
}

uint64_t sub_26C434318()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498658);
  __swift_project_value_buffer(v0, qword_280498658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E620;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unregistered";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Static";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Dynamic";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43454C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498670);
  __swift_project_value_buffer(v0, qword_280498670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Release";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C434738()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498688);
  __swift_project_value_buffer(v0, qword_280498688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_26C46E640;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Invalid";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26C46BF44();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "RequestSuccessfulWasUnowned";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "RequestSuccessfulOwnerHandedOff";
  *(v11 + 1) = 31;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "RequestFailedOwnerRefusedHandoff";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RequestFailedUnknownOwner";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "RequestFailedHandoffTimedOut";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ReleaseSuccessful";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ReleaseFailedNotOwner";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "NotAuthority";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_26C46BF54();
}

uint64_t sub_26C434ADC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986A0);
  __swift_project_value_buffer(v0, qword_2804986A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "high";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "low";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C434CA4()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_26C46BE24();
    }
  }

  return result;
}

uint64_t sub_26C434D24()
{
  if (!*v0 || (result = sub_26C46BF24(), !v1))
  {
    if (!v0[1] || (result = sub_26C46BF24(), !v1))
    {
      v3 = v0 + *(type metadata accessor for PBUUID(0) + 24);
      return sub_26C46BD04();
    }
  }

  return result;
}

uint64_t sub_26C434DC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return sub_26C46BD14();
}

uint64_t (*sub_26C434E00(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_26C434E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980A8, type metadata accessor for PBUUID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C434EF4(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C434F60()
{
  sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);

  return sub_26C46BE84();
}

uint64_t sub_26C434FDC(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C43508C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986B8);
  __swift_project_value_buffer(v0, qword_2804986B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E630;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sourcePB";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "counter";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C435254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26C445DEC(a1, v5, a2, a3, type metadata accessor for LamportTimestamp);
    }

    else if (result == 2)
    {
      sub_26C46BE04();
    }
  }

  return result;
}

uint64_t sub_26C4352F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PBUUID(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LamportTimestamp(0);
  v14 = *(v13 + 24);
  v20 = v3;
  sub_26C3DDD48(v3 + v14, v7, &qword_280497458, &unk_26C46D3F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26C3DE270(v7, &qword_280497458, &unk_26C46D3F0);
    v15 = v23;
  }

  else
  {
    sub_26C453E5C(v7, v12, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v15 = v23;
    sub_26C46BF34();
    result = sub_26C453DFC(v12, type metadata accessor for PBUUID);
    if (v15)
    {
      return result;
    }
  }

  v17 = v20;
  if (!*v20 || (result = sub_26C46BF04(), !v15))
  {
    v18 = v17 + *(v13 + 20);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C435568@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_26C46BD14();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for PBUUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t (*sub_26C43560C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_26C435664(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980B8, type metadata accessor for LamportTimestamp);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C435708(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C435778()
{
  sub_26C4468DC(&qword_280497A90, type metadata accessor for LamportTimestamp);

  return sub_26C46BE84();
}

uint64_t sub_26C4357FC()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986D0);
  __swift_project_value_buffer(v0, qword_2804986D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "syncTransaction";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "catchupRequest";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "catchupResponse";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ownershipChangeRequest";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ownershipChangeReply";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ownershipChangeBroadcast";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "ownershipHandoffRequest";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ownershipHandoffReply";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C435B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_26C46BD84();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_26C437D24(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_26C438288(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_26C43725C(v5, a1, a2, a3);
      }

      else
      {
        sub_26C4377C0(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_26C436794(v5, a1, a2, a3);
      }

      else
      {
        sub_26C436CF8(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_26C435CD0(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_26C436230(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_26C435CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for SyncTransactionMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497B90, &qword_26C46E548);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_280497B90, &qword_26C46E548);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }

    else
    {
      sub_26C3DE270(v28, &qword_280497B90, &qword_26C46E548);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for SyncTransactionMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for SyncTransactionMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }
  }

  sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_280497B90, &qword_26C46E548);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for SyncTransactionMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for SyncTransactionMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_280497B90, &qword_26C46E548);
}

uint64_t sub_26C436230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for CatchupRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980D0, &qword_26C470BE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980D0, &qword_26C470BE0);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26C3DE270(v28, &qword_2804980D0, &qword_26C470BE0);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for CatchupRequestMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for CatchupRequestMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980D0, &qword_26C470BE0);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for CatchupRequestMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for CatchupRequestMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980D0, &qword_26C470BE0);
}

uint64_t sub_26C436794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for CatchupResponseMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980D8, &qword_26C470BE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980D8, &qword_26C470BE8);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26C3DE270(v28, &qword_2804980D8, &qword_26C470BE8);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for CatchupResponseMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for CatchupResponseMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980D8, &qword_26C470BE8);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for CatchupResponseMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for CatchupResponseMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980D8, &qword_26C470BE8);
}

uint64_t sub_26C436CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980E0, &qword_26C470BF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980E0, &qword_26C470BF0);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_26C3DE270(v28, &qword_2804980E0, &qword_26C470BF0);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for OwnershipChangeRequestMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for OwnershipChangeRequestMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980E0, &qword_26C470BF0);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for OwnershipChangeRequestMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for OwnershipChangeRequestMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980E0, &qword_26C470BF0);
}

uint64_t sub_26C43725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980E8, &qword_26C470BF8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980E8, &qword_26C470BF8);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_26C3DE270(v28, &qword_2804980E8, &qword_26C470BF8);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for OwnershipChangeReplyMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for OwnershipChangeReplyMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980E8, &qword_26C470BF8);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for OwnershipChangeReplyMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for OwnershipChangeReplyMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980E8, &qword_26C470BF8);
}

uint64_t sub_26C4377C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980F0, &qword_26C470C00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980F0, &qword_26C470C00);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_26C3DE270(v28, &qword_2804980F0, &qword_26C470C00);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for OwnershipChangeBroadcastMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for OwnershipChangeBroadcastMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980F0, &qword_26C470C00);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for OwnershipChangeBroadcastMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for OwnershipChangeBroadcastMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980F0, &qword_26C470C00);
}

uint64_t sub_26C437D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980F8, &qword_26C470C08);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_2804980F8, &qword_26C470C08);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_26C3DE270(v28, &qword_2804980F8, &qword_26C470C08);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for OwnershipHandoffRequestMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for OwnershipHandoffRequestMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_2804980F8, &qword_26C470C08);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for OwnershipHandoffRequestMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for OwnershipHandoffRequestMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_2804980F8, &qword_26C470C08);
}

uint64_t sub_26C438288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v49 = a2;
  v5 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498100, &qword_26C470C10);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v45 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v40 - v27;
  v46 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v40 = v29;
  v29(&v40 - v27, 1, 1, v5);
  v44 = a1;
  sub_26C3DDD48(a1, v14, &qword_280497650, &unk_26C46D930);
  v42 = v16;
  v30 = *(v16 + 48);
  v47 = v15;
  if (v30(v14, 1, v15) == 1)
  {
    sub_26C3DE270(v14, &qword_280497650, &unk_26C46D930);
    v31 = v48;
    v32 = v50;
  }

  else
  {
    sub_26C453E5C(v14, v22, type metadata accessor for SyncMessage.OneOf_Contents);
    v38 = v50;
    sub_26C46BD94();
    v32 = v38;
    if (v38)
    {
      sub_26C453DFC(v22, type metadata accessor for SyncMessage.OneOf_Contents);
      return sub_26C3DE270(v28, &qword_280498100, &qword_26C470C10);
    }

    sub_26C453E5C(v22, v20, type metadata accessor for SyncMessage.OneOf_Contents);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_26C3DE270(v28, &qword_280498100, &qword_26C470C10);
      v39 = v41;
      sub_26C453E5C(v20, v41, type metadata accessor for OwnershipHandoffReplyMessage);
      sub_26C453E5C(v39, v28, type metadata accessor for OwnershipHandoffReplyMessage);
      v31 = v48;
      v40(v28, 0, 1, v48);
    }

    else
    {
      sub_26C453DFC(v20, type metadata accessor for SyncMessage.OneOf_Contents);
      v31 = v48;
    }
  }

  sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage);
  sub_26C46BE34();
  if (!v32)
  {
    v33 = v28;
    v28 = v45;
    sub_26C3E9F28(v33, v45, &qword_280498100, &qword_26C470C10);
    if ((*(v46 + 48))(v28, 1, v31) != 1)
    {
      v34 = v43;
      sub_26C453E5C(v28, v43, type metadata accessor for OwnershipHandoffReplyMessage);
      v35 = v44;
      sub_26C3DE270(v44, &qword_280497650, &unk_26C46D930);
      sub_26C453E5C(v34, v35, type metadata accessor for OwnershipHandoffReplyMessage);
      v36 = v47;
      swift_storeEnumTagMultiPayload();
      return (*(v42 + 56))(v35, 0, 1, v36);
    }
  }

  return sub_26C3DE270(v28, &qword_280498100, &qword_26C470C10);
}

uint64_t sub_26C4387EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_26C3DDD48(v3, &v16 - v10, &qword_280497650, &unk_26C46D930);
  v12 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_26C43979C(v3, a1, a2, a3);
      }

      else
      {
        sub_26C4399D4(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_26C43932C(v3, a1, a2, a3);
    }

    else
    {
      sub_26C439564(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C438EBC(v3, a1, a2, a3);
    }

    else
    {
      sub_26C4390F4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_26C438C84(v3, a1, a2, a3);
  }

  else
  {
    sub_26C438A50(v3, a1, a2, a3);
  }

  result = sub_26C453DFC(v11, type metadata accessor for SyncMessage.OneOf_Contents);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for SyncMessage(0) + 20);
    return sub_26C46BD04();
  }

  return result;
}

uint64_t sub_26C438A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for SyncTransactionMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_26C453E5C(v8, v12, type metadata accessor for SyncTransactionMessage);
    sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for SyncTransactionMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C438C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CatchupRequestMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for CatchupRequestMessage);
    sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for CatchupRequestMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C438EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for CatchupResponseMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for CatchupResponseMessage);
    sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for CatchupResponseMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C4390F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for OwnershipChangeRequestMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for OwnershipChangeRequestMessage);
    sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for OwnershipChangeRequestMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C43932C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for OwnershipChangeReplyMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for OwnershipChangeReplyMessage);
    sub_26C4468DC(&qword_280497F88, type metadata accessor for OwnershipChangeReplyMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for OwnershipChangeReplyMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C439564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for OwnershipChangeBroadcastMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for OwnershipChangeBroadcastMessage);
    sub_26C4468DC(&qword_280497F68, type metadata accessor for OwnershipChangeBroadcastMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for OwnershipChangeBroadcastMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C43979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for OwnershipHandoffRequestMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for OwnershipHandoffRequestMessage);
    sub_26C4468DC(&qword_280497F48, type metadata accessor for OwnershipHandoffRequestMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for OwnershipHandoffRequestMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C4399D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497650, &unk_26C46D930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for OwnershipHandoffReplyMessage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C3DDD48(a1, v8, &qword_280497650, &unk_26C46D930);
  v13 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_26C3DE270(v8, &qword_280497650, &unk_26C46D930);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_26C453E5C(v8, v12, type metadata accessor for OwnershipHandoffReplyMessage);
    sub_26C4468DC(&qword_280497F28, type metadata accessor for OwnershipHandoffReplyMessage);
    sub_26C46BF34();
    return sub_26C453DFC(v12, type metadata accessor for OwnershipHandoffReplyMessage);
  }

  result = sub_26C453DFC(v8, type metadata accessor for SyncMessage.OneOf_Contents);
  __break(1u);
  return result;
}

uint64_t sub_26C439C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SyncMessage.OneOf_Contents(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_26C46BD14();
}

uint64_t sub_26C439CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_2804980C8, type metadata accessor for SyncMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C439D74(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497660, type metadata accessor for SyncMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C439DE0()
{
  sub_26C4468DC(&qword_280497660, type metadata accessor for SyncMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C439E60()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_2804986E8);
  __swift_project_value_buffer(v0, qword_2804986E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "propertyMessages";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "setMessages";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "dictionaryMessages";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43A0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 2)
        {
          sub_26C4554DC();
          sub_26C46BDB4();
        }

        else if (result == 3)
        {
          sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for SyncTransactionMessage);
        }
      }

      else
      {
        if (result == 4)
        {
          type metadata accessor for PropertyChangedMessage(0);
          sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage);
        }

        else
        {
          if (result == 5)
          {
            v11 = v4;
            type metadata accessor for SetChangedMessage(0);
            sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage);
          }

          else
          {
            if (result != 6)
            {
              goto LABEL_5;
            }

            v11 = v4;
            type metadata accessor for DictionaryChangedMessage(0);
            sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage);
          }

          v4 = v11;
        }

        sub_26C46BE14();
      }

LABEL_5:
      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43A310()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PBUUID(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*v0 || (v11 = *(v0 + 8), v14 = *v0, v15 = v11, sub_26C4554DC(), result = sub_26C46BEC4(), !v1))
  {
    v16 = type metadata accessor for SyncTransactionMessage(0);
    sub_26C3DDD48(v0 + *(v16 + 36), v5, &qword_280497458, &unk_26C46D3F0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_26C3DE270(v5, &qword_280497458, &unk_26C46D3F0);
    }

    else
    {
      sub_26C453E5C(v5, v10, type metadata accessor for PBUUID);
      sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
      sub_26C46BF34();
      result = sub_26C453DFC(v10, type metadata accessor for PBUUID);
      if (v1)
      {
        return result;
      }
    }

    if (!*(v0[2] + 16) || (type metadata accessor for PropertyChangedMessage(0), sub_26C4468DC(&qword_280497F08, type metadata accessor for PropertyChangedMessage), result = sub_26C46BF14(), !v1))
    {
      if (!*(v0[3] + 16) || (type metadata accessor for SetChangedMessage(0), sub_26C4468DC(&qword_280497EE8, type metadata accessor for SetChangedMessage), result = sub_26C46BF14(), !v1))
      {
        if (!*(v0[4] + 16) || (type metadata accessor for DictionaryChangedMessage(0), sub_26C4468DC(&qword_280497EC8, type metadata accessor for DictionaryChangedMessage), result = sub_26C46BF14(), !v1))
        {
          v13 = v0 + *(v16 + 32);
          return sub_26C46BD04();
        }
      }
    }
  }

  return result;
}

uint64_t sub_26C43A710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  *(a2 + 32) = v4;
  v5 = a2 + *(a1 + 32);
  sub_26C46BD14();
  v6 = *(a1 + 36);
  v7 = type metadata accessor for PBUUID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t (*sub_26C43A7C8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_26C43A81C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498128, type metadata accessor for SyncTransactionMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43A8BC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43A928()
{
  sub_26C4468DC(&qword_280498008, type metadata accessor for SyncTransactionMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43A9A8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498700);
  __swift_project_value_buffer(v0, qword_280498700);
  return sub_26C46BF64();
}

uint64_t sub_26C43A9F4()
{
  do
  {
    result = sub_26C46BD84();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_26C43AAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498138, type metadata accessor for CatchupRequestMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43AB60(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43ABCC()
{
  sub_26C4468DC(&qword_280497FE8, type metadata accessor for CatchupRequestMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43AC48()
{
  sub_26C46BD24();
  sub_26C4468DC(&qword_2804980B0, MEMORY[0x277D216C8]);
  return sub_26C46C1C4() & 1;
}

uint64_t sub_26C43ACD0()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498718);
  __swift_project_value_buffer(v0, qword_280498718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "chunkData";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkIndex";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "chunkTotal";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "senderIsAuthority";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43AF20()
{
  while (1)
  {
    result = sub_26C46BD84();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_12;
      }

      if (result == 4)
      {
        sub_26C46BDA4();
      }
    }

    else if (result == 1)
    {
      sub_26C46BDD4();
    }

    else if (result == 2)
    {
LABEL_12:
      sub_26C46BE04();
    }
  }
}

uint64_t sub_26C43AFE4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_26C46BEE4();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0 + 16) || (result = sub_26C46BF04(), !v1))
  {
    if (!*(v0 + 20) || (result = sub_26C46BF04(), !v1))
    {
      if (*(v0 + 24) != 1 || (result = sub_26C46BEB4(), !v1))
      {
        v8 = v0 + *(type metadata accessor for CatchupResponseMessage(0) + 32);
        return sub_26C46BD04();
      }
    }
  }

  return result;
}

uint64_t sub_26C43B108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_26C46D3C0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v2 = a2 + *(a1 + 32);
  return sub_26C46BD14();
}

uint64_t sub_26C43B190(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498140, type metadata accessor for CatchupResponseMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43B230(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43B29C()
{
  sub_26C4468DC(&qword_280497FC8, type metadata accessor for CatchupResponseMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43B31C()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498730);
  __swift_project_value_buffer(v0, qword_280498730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "prospectiveOwnerUUIDPB";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "changeType";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownershipCounter";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "requestUUIDPB";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43B5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            v11 = v4;
            sub_26C455530();
            goto LABEL_18;
          case 6:
            sub_26C46BE04();
            break;
          case 7:
            sub_26C43D024(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 2:
            v11 = v4;
            sub_26C4554DC();
LABEL_18:
            v4 = v11;
            sub_26C46BDB4();
            break;
          case 3:
            sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeRequestMessage);
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}

uint64_t sub_26C43B784(uint64_t a1)
{
  v3 = v1;
  v53 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280497458, &unk_26C46D3F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v49 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for PBUUID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v48 = &v43 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  if (*v3)
  {
    v21 = *(v3 + 8);
    v51 = *v3;
    v52 = v21;
    sub_26C4554DC();
    result = sub_26C46BEC4();
    if (v2)
    {
      return result;
    }

    v50 = 0;
  }

  else
  {
    v50 = v2;
  }

  v23 = type metadata accessor for OwnershipChangeRequestMessage(0);
  sub_26C3DDD48(v3 + *(v23 + 32), v11, &qword_280497458, &unk_26C46D3F0);
  v26 = *(v13 + 48);
  v25 = v13 + 48;
  v24 = v26;
  if (v26(v11, 1, v12) == 1)
  {
    sub_26C3DE270(v11, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v44 = v3;
    v45 = v24;
    v43 = v25;
    sub_26C453E5C(v11, v20, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v27 = v50;
    sub_26C46BF34();
    result = sub_26C453DFC(v20, type metadata accessor for PBUUID);
    if (v27)
    {
      return result;
    }

    v50 = 0;
    v3 = v44;
    v24 = v45;
  }

  v44 = v23;
  v28 = v3 + *(v23 + 36);
  v29 = v49;
  sub_26C3DDD48(v28, v49, &qword_280497458, &unk_26C46D3F0);
  if (v24(v29, 1, v12) == 1)
  {
    sub_26C3DE270(v29, &qword_280497458, &unk_26C46D3F0);
    v30 = *(v3 + 16);
    if (!v30)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v45 = v24;
    v31 = v3;
    v32 = v48;
    sub_26C453E5C(v29, v48, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v33 = v50;
    sub_26C46BF34();
    result = sub_26C453DFC(v32, type metadata accessor for PBUUID);
    if (v33)
    {
      return result;
    }

    v50 = 0;
    v3 = v31;
    v24 = v45;
    v30 = *(v31 + 16);
    if (!v30)
    {
      goto LABEL_16;
    }
  }

  v34 = *(v3 + 24);
  v51 = v30;
  v52 = v34;
  sub_26C455530();
  v35 = v50;
  result = sub_26C46BEC4();
  if (v35)
  {
    return result;
  }

  v50 = 0;
LABEL_16:
  v36 = v12;
  if (*(v3 + 28))
  {
    v37 = v50;
    result = sub_26C46BF04();
    if (v37)
    {
      return result;
    }

    v50 = 0;
  }

  v38 = v47;
  sub_26C3DDD48(v3 + *(v44 + 40), v47, &qword_280497458, &unk_26C46D3F0);
  if (v24(v38, 1, v36) == 1)
  {
    sub_26C3DE270(v38, &qword_280497458, &unk_26C46D3F0);
  }

  else
  {
    v39 = v3;
    v40 = v46;
    sub_26C453E5C(v38, v46, type metadata accessor for PBUUID);
    sub_26C4468DC(&qword_280498050, type metadata accessor for PBUUID);
    v41 = v50;
    sub_26C46BF34();
    result = sub_26C453DFC(v40, type metadata accessor for PBUUID);
    if (v41)
    {
      return result;
    }

    v50 = 0;
    v3 = v39;
  }

  v42 = v3 + *(v44 + 28);
  return sub_26C46BD04();
}

uint64_t sub_26C43BDD0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 28) = 0;
  v4 = a2 + a1[7];
  sub_26C46BD14();
  v5 = a1[8];
  v6 = type metadata accessor for PBUUID(0);
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[9], 1, 1, v6);
  v7 = a2 + a1[10];

  return (v9)(v7, 1, 1, v6);
}

uint64_t (*sub_26C43BEE8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_26C43BF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C4468DC(&qword_280498148, type metadata accessor for OwnershipChangeRequestMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26C43BFDC(uint64_t a1)
{
  v2 = sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26C43C048()
{
  sub_26C4468DC(&qword_280497FA8, type metadata accessor for OwnershipChangeRequestMessage);

  return sub_26C46BE84();
}

uint64_t sub_26C43C0C8()
{
  v0 = sub_26C46BF74();
  __swift_allocate_value_buffer(v0, qword_280498748);
  __swift_project_value_buffer(v0, qword_280498748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280498098, &qword_26C470BC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804980A0, &qword_26C470BC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C46E660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "modelType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26C46BF44();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "modelUUIDPB";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "requestUUIDPB";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "result";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "ownershipCounter";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_26C46BF54();
}

uint64_t sub_26C43C358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_26C46BD84();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 2)
        {
          v11 = v4;
          sub_26C4554DC();
          goto LABEL_17;
        }

        if (result == 3)
        {
          sub_26C444304(a1, v5, a2, a3, type metadata accessor for OwnershipChangeReplyMessage);
        }
      }

      else
      {
        switch(result)
        {
          case 4:
            sub_26C4443BC(a1, v5, a2, a3, type metadata accessor for OwnershipChangeReplyMessage);
            break;
          case 5:
            v11 = v4;
            sub_26C455584();
LABEL_17:
            v4 = v11;
            sub_26C46BDB4();
            break;
          case 6:
            sub_26C46BE04();
            break;
        }
      }

      result = sub_26C46BD84();
    }
  }

  return result;
}