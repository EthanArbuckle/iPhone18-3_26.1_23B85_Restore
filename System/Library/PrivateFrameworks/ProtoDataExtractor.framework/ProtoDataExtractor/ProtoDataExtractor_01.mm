void sub_260F3A740(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v32[1] = *MEMORY[0x277D85DE8];
  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v8 = sub_260F49638();
  __swift_project_value_buffer(v8, qword_2810D48E0);

  v9 = sub_260F49618();
  v10 = sub_260F498E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_260F29D18(a2, a3, v32);
    _os_log_impl(&dword_260F24000, v9, v10, "Saving bookmark for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2666F6350](v12, -1, -1);
    MEMORY[0x2666F6350](v11, -1, -1);
  }

  v13 = objc_opt_self();
  v32[0] = 0;
  v14 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v32];
  v15 = v32[0];
  if (v14)
  {
    v16 = sub_260F49328();
    v18 = v17;

    v19 = *(v4 + 16);
    v20 = sub_260F49308();
    v21 = sub_260F496E8();
    [v19 setValue:v20 forKey:v21];

    sub_260F281D0(v16, v18);
  }

  else
  {
    v22 = v15;
    v23 = sub_260F492E8();

    swift_willThrow();
    v24 = v23;
    v25 = sub_260F49618();
    v26 = sub_260F498F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_260F24000, v25, v26, "Error encoding bookmark: %@", v27, 0xCu);
      sub_260F2AA58(v28, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v28, -1, -1);
      MEMORY[0x2666F6350](v27, -1, -1);
    }

    else
    {
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

id *BiomeEventIngestProcessor.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 15));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 16));
  v2 = *(v0 + *(*v0 + 17) + 8);

  v3 = *(v0 + *(*v0 + 18));

  return v0;
}

uint64_t BiomeEventIngestProcessor.__deallocating_deinit()
{
  BiomeEventIngestProcessor.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

ProtoDataExtractor::BiomeEventIngestError_optional __swiftcall BiomeEventIngestError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260F499D8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BiomeEventIngestError.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_260F3AC94(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = "collectionPolicyDenied";
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v3 == 1)
  {
    v6 = "collectionPolicyDenied";
  }

  else
  {
    v6 = "feedbackLoggerError";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "";
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000019;
    v4 = "feedbackLoggerError";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_260F499F8();
  }

  return v11 & 1;
}

uint64_t sub_260F3AD6C()
{
  v1 = *v0;
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

uint64_t sub_260F3AE08()
{
  *v0;
  *v0;
  sub_260F49738();
}

uint64_t sub_260F3AE90()
{
  v1 = *v0;
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

void sub_260F3AF34(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = "collectionPolicyDenied";
  if (*v1 != 1)
  {
    v2 = 0xD000000000000019;
    v3 = "feedbackLoggerError";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000016;
    v4 = "";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_260F3AF94()
{
  result = qword_27FE60DA8;
  if (!qword_27FE60DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60DA8);
  }

  return result;
}

uint64_t sub_260F3AFE8(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of BiomeEventIngestProcessor.ingest()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260F30C74;

  return v6();
}

uint64_t getEnumTagSinglePayload for BiomeEventIngestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeEventIngestError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of EventIngestor.commit()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260F306A8;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AsyncEventIngestor.append(data:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = *(a4 + 8);
  v16 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_260F30C74;
  v14.n128_f64[0] = a5;

  return v16(a1, a2, a3, a4, v14);
}

uint64_t dispatch thunk of AsyncEventIngestor.commit()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260F30C74;

  return v9(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_260F3B744(uint64_t a1)
{
  v3 = *(sub_260F493B8() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 48);
  v7 = (v1 + ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_260F39C18(a1, v6, v1 + v4, v8 | (v9 << 32), v10);
}

uint64_t sub_260F3B814()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_2810D4890);
  __swift_project_value_buffer(v0, qword_2810D4890);
  return sub_260F49628();
}

uint64_t BiomeProvisionalSELFIngestor.init(dataPool:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_260F493D8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BiomeProvisionalSELFIngestor();
  (*(*(a3 - 8) + 16))(a4 + *(v9 + 36), a2, a3);
  return DataExtractor.init(ingestConfig:)(a2, a3, a4 + *(v9 + 40));
}

uint64_t BiomeProvisionalSELFIngestor.commit()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F306A8;

  return sub_260F3BB10();
}

uint64_t sub_260F3BA70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F30C74;

  return sub_260F3BB10();
}

uint64_t sub_260F3BB2C()
{
  if (qword_2810D4888 != -1)
  {
    swift_once();
  }

  v1 = sub_260F49638();
  __swift_project_value_buffer(v1, qword_2810D4890);
  v2 = sub_260F49618();
  v3 = sub_260F498E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F24000, v2, v3, "commit()", v4, 2u);
    MEMORY[0x2666F6350](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_260F3BC44(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60E28, &unk_260F4B8E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v53 - v8;
  v10 = *(a3 + 40);
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for DataExtractor();
  v14 = DataExtractor.getEventData(data:)(a1, a2, v13);
  if (v15 >> 60 == 15)
  {
    if (qword_2810D4888 != -1)
    {
      swift_once();
    }

    v16 = sub_260F49638();
    __swift_project_value_buffer(v16, qword_2810D4890);
    v17 = sub_260F49618();
    v18 = sub_260F498F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260F24000, v17, v18, "Skipping event missing data body", v19, 2u);
      MEMORY[0x2666F6350](v19, -1, -1);
    }

LABEL_18:

    return;
  }

  v20 = v14;
  v21 = v15;
  v22 = DataExtractor.getMonotonicTs(data:)(a1, a2, v13);
  if (!v22)
  {
    if (qword_2810D4888 != -1)
    {
      swift_once();
    }

    v32 = sub_260F49638();
    __swift_project_value_buffer(v32, qword_2810D4890);
    v17 = sub_260F49618();
    v33 = sub_260F498F8();
    if (os_log_type_enabled(v17, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_260F24000, v17, v33, "Skipping event missing monotonic timestamp", v34, 2u);
      MEMORY[0x2666F6350](v34, -1, -1);
    }

    sub_260F26F0C(v20, v21);
    goto LABEL_18;
  }

  v23 = v22;
  if (qword_2810D4888 != -1)
  {
    swift_once();
  }

  v24 = sub_260F49638();
  v25 = __swift_project_value_buffer(v24, qword_2810D4890);
  sub_260F28238(v20, v21);
  v26 = sub_260F49618();
  v27 = sub_260F498D8();
  if (!os_log_type_enabled(v26, v27))
  {
    sub_260F26F0C(v20, v21);
    goto LABEL_28;
  }

  v28 = swift_slowAlloc();
  v29 = v28;
  *v28 = 134217984;
  v30 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v30 != 2)
    {
      v31 = 0;
      goto LABEL_27;
    }

    v36 = *(v20 + 16);
    v35 = *(v20 + 24);
    v37 = __OFSUB__(v35, v36);
    v31 = v35 - v36;
    if (!v37)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_24:
    LODWORD(v31) = HIDWORD(v20) - v20;
    if (__OFSUB__(HIDWORD(v20), v20))
    {
      __break(1u);
      goto LABEL_35;
    }

    v31 = v31;
    goto LABEL_27;
  }

  if (v30)
  {
    goto LABEL_24;
  }

  v31 = BYTE6(v21);
LABEL_27:
  *(v28 + 4) = v31;
  sub_260F26F0C(v20, v21);
  _os_log_impl(&dword_260F24000, v26, v27, "Adding event with %ld bytes", v29, 0xCu);
  MEMORY[0x2666F6350](v29, -1, -1);
LABEL_28:
  v53[1] = v25;

  v38 = type metadata accessor for DillProvisional();
  v39 = objc_allocWithZone(v38);
  v40 = &v39[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_dillData];
  *v40 = v20;
  v40[1] = v21;
  v41 = &v39[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId];
  *v41 = 0xD000000000000021;
  *(v41 + 1) = 0x8000000260F4C940;
  *&v39[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_version] = 8;
  sub_260F29910(v20, v21);
  v54.receiver = v39;
  v54.super_class = v38;

  v42 = objc_msgSendSuper2(&v54, sel_init);
  if (!v42)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v43 = v42;

  v44 = v23;
  MonotonicTimestamp.init(biomeTimestamp:)(v44, v9);
  v45 = v55;
  sub_260F493C8();
  if (v45)
  {
    sub_260F2AA58(v9, &qword_27FE60E28, &unk_260F4B8E0);
    v46 = v45;
    v47 = sub_260F49618();
    v48 = sub_260F498F8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v45;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_260F24000, v47, v48, "Error adding event to pool %@", v49, 0xCu);
      sub_260F2AA58(v50, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v50, -1, -1);
      MEMORY[0x2666F6350](v49, -1, -1);
      sub_260F26F0C(v20, v21);
    }

    else
    {
      sub_260F26F0C(v20, v21);
    }
  }

  else
  {
    sub_260F26F0C(v20, v21);

    sub_260F2AA58(v9, &qword_27FE60E28, &unk_260F4B8E0);
  }
}

uint64_t sub_260F3C234(uint64_t a1)
{
  result = sub_260F493D8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = type metadata accessor for DataExtractor();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_260F3C2DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_260F493D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_260F3C528(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_260F493D8() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_260F3C800(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = type metadata accessor for DataExtractor();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for DillSession(319);
      if (v7 <= 0x3F)
      {
        result = sub_260F49448();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_260F3C8C0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_260F49498();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v11 + v12;
  v17 = v13 | 7;
  if (v15 >= a2)
  {
    goto LABEL_30;
  }

  v18 = ((*(*(v8 - 8) + 64) + ((v13 + 24) & ~v13) + ((v17 + v11 + (v16 & ~v12)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = v18 & 0xFFFFFFF8;
  if ((v18 & 0xFFFFFFF8) != 0)
  {
    v20 = 2;
  }

  else
  {
    v20 = a2 - v15 + 1;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a1 + v18);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v25 = v23 - 1;
    if (v19)
    {
      v25 = 0;
      v26 = *a1;
    }

    else
    {
      v26 = 0;
    }

    return v15 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v18);
    if (v23)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v7 >= v14)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v27 = ((((((a1 + v16) & ~v12) + v11 + v17) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v30 = *(v9 + 48);

      return v30((v27 + v13 + 8) & ~v13);
    }

    else
    {
      v28 = *v27;
      if (v28 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      return (v28 + 1);
    }
  }
}

void sub_260F3CB54(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = sub_260F49498();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = *(v8 + 80);
  v15 = *(v11 + 80);
  if (v12 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= v9)
  {
    v17 = v9;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((v15 + 24) & ~v15) + *(*(v10 - 8) + 64);
  v19 = ((v18 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 >= a3)
  {
    v22 = 0;
    v23 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((v18 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a3 - v17 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_20:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v9 >= v16)
        {
          v30 = *(v34 + 56);

          v30(a1, a2, v9, v7);
        }

        else
        {
          v26 = ((((a1 + v13 + v14) & ~v14) + v13 + (v15 | 7)) & ~(v15 | 7));
          if (v16 >= a2)
          {
            v31 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((v12 & 0x80000000) != 0)
            {
              v33 = *(v11 + 56);

              v33((v31 + v15 + 8) & ~v15, a2);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v32 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v32 = (a2 - 1);
              }

              *v31 = v32;
            }
          }

          else
          {
            if (v18 <= 3)
            {
              v27 = ~(-1 << (8 * v18));
            }

            else
            {
              v27 = -1;
            }

            if (v18)
            {
              v28 = v27 & (~v16 + a2);
              if (v18 <= 3)
              {
                v29 = v18;
              }

              else
              {
                v29 = 4;
              }

              bzero(v26, v18);
              if (v29 > 2)
              {
                if (v29 == 3)
                {
                  *v26 = v28;
                  v26[2] = BYTE2(v28);
                }

                else
                {
                  *v26 = v28;
                }
              }

              else if (v29 == 1)
              {
                *v26 = v28;
              }

              else
              {
                *v26 = v28;
              }
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((v18 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7)) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v24 = v23;
  }

  else
  {
    v24 = 1;
  }

  if (((v18 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7)) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v25 = ~v17 + a2;
    bzero(a1, ((v18 + (((v15 | 7) + v13 + ((v13 + v14) & ~v14)) & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(a1 + v19) = v24;
    }

    else
    {
      *(a1 + v19) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + v19) = v24;
  }
}

uint64_t sub_260F3CED0()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_27FE60E30);
  __swift_project_value_buffer(v0, qword_27FE60E30);
  return sub_260F49628();
}

void sub_260F3CF48(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DillSessionEvent(0);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = *(a3 + 36);
  v17 = *(a3 + 16);
  v18 = *(a3 + 24);
  v19 = type metadata accessor for DataExtractor();
  v20 = DataExtractor.getEventData(data:)(a1, a2, v19);
  if (v21 >> 60 == 15)
  {
    if (qword_27FE60690 != -1)
    {
      swift_once();
    }

    v22 = sub_260F49638();
    __swift_project_value_buffer(v22, qword_27FE60E30);
    v23 = sub_260F49618();
    v24 = sub_260F498D8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_260F24000, v23, v24, "Skipping event missing data body", v25, 2u);
      MEMORY[0x2666F6350](v25, -1, -1);
    }
  }

  else
  {
    v26 = v20;
    v27 = v21;
    v28 = (*(v18 + 64))(v17, v18);
    if (v28)
    {
      v29 = v28;
      *(v15 + 8) = xmmword_260F4ACB0;
      v30 = &v15[*(v10 + 24)];
      sub_260F49488();
      *v15 = a4;
      v29(v45, v26, v27);
      sub_260F26F30(v29);
      v31 = v45[0];
      v32 = v45[1];
      sub_260F26F0C(*(v15 + 1), *(v15 + 2));
      *(v15 + 1) = v31;
      *(v15 + 2) = v32;
      sub_260F2D138(v15, v44);
      v33 = v5 + *(a3 + 40);
      v34 = *(v33 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_260F3DCC0(0, v34[2] + 1, 1, v34);
      }

      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        v34 = sub_260F3DCC0(v35 > 1, v36 + 1, 1, v34);
      }

      sub_260F26F0C(v26, v27);
      v34[2] = v36 + 1;
      sub_260F3DEFC(v44, v34 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v36);
      *(v33 + 16) = v34;
      sub_260F2D19C(v15);
    }

    else
    {
      if (qword_27FE60690 != -1)
      {
        swift_once();
      }

      v37 = sub_260F49638();
      __swift_project_value_buffer(v37, qword_27FE60E30);
      v38 = sub_260F49618();
      v39 = sub_260F498F8();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_260F24000, v38, v39, "Missing innerTypeBuilder in config", v40, 2u);
        MEMORY[0x2666F6350](v40, -1, -1);
      }

      sub_260F3DB38();
      swift_allocError();
      *v41 = 2;
      swift_willThrow();
      sub_260F26F0C(v26, v27);
    }
  }
}

uint64_t sub_260F3D368(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for DillSession(0);
  v2[6] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_260F3D428, 0, 0);
}

id sub_260F3D428()
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  *(v0 + 104) = *(*(v0 + 32) + 40);
  sub_260F3DAE0();
  v3 = sub_260F49538();
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  v5 = v3;
  v6 = v4;
  v7 = type metadata accessor for DillProvisional();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_dillData];
  *v9 = v5;
  v9[1] = v6;
  v10 = &v8[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId];
  *v10 = 0xD00000000000001CLL;
  *(v10 + 1) = 0x8000000260F4C7B0;
  *&v8[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_version] = 12;

  sub_260F28238(v5, v6);
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  result = objc_msgSendSuper2((v0 + 16), sel_init);
  *(v0 + 80) = result;
  if (result)
  {
    v12 = result;
    v14 = *(v0 + 32);
    v13 = *(v0 + 40);

    v15 = *(v13 + *(v14 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60ED0, &qword_260F4B970);
    v16 = swift_allocObject();
    *(v0 + 88) = v16;
    *(v16 + 16) = xmmword_260F4B8F0;
    *(v16 + 32) = v12;
    v17 = MEMORY[0x277D552B0];
    v18 = *(MEMORY[0x277D552B0] + 4);
    v19 = *MEMORY[0x277D552B0];
    v20 = v12;
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_260F3D6D0;
    v22 = *MEMORY[0x277D85DE8];

    return ((v19 + v17))(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260F3D6D0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_260F3D814, 0, 0);
}

uint64_t sub_260F3D814()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 80);
  v26 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v24 = *(v0 + 72);
  v25 = *(v0 + 40);
  v5 = sub_260F493B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_260F493A8();
  *(v0 + 108) = sub_260F49398();
  *(v0 + 116) = v9;
  *(v0 + 117) = v10;
  *(v0 + 118) = v11;
  *(v0 + 119) = v12;
  *(v0 + 120) = v13;
  *(v0 + 121) = v14;
  *(v0 + 122) = v15;
  *(v0 + 123) = v16;
  v17 = sub_260F43E80((v0 + 108), 16);
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v2 + *(v4 + 24);
  sub_260F49488();

  sub_260F281D0(v3, v24);
  *v2 = v17;
  v2[1] = v19;
  v2[2] = MEMORY[0x277D84F90];

  sub_260F3DE98(v2, v25 + v26);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_260F3DA4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260F306A8;

  return sub_260F3D368(a1);
}

unint64_t sub_260F3DAE0()
{
  result = qword_27FE60F60;
  if (!qword_27FE60F60)
  {
    type metadata accessor for DillSession(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60F60);
  }

  return result;
}

unint64_t sub_260F3DB38()
{
  result = qword_27FE60EC8;
  if (!qword_27FE60EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60EC8);
  }

  return result;
}

void *sub_260F3DB8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60EE0, &unk_260F4B980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60EE8, qword_260F4BFC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_260F3DCC0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60ED8, &qword_260F4B978);
  v10 = *(type metadata accessor for DillSessionEvent(0) - 8);
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
  v15 = *(type metadata accessor for DillSessionEvent(0) - 8);
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

uint64_t sub_260F3DE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DillSession(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F3DEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DillSessionEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F3DF60()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_2810D48B0);
  __swift_project_value_buffer(v0, qword_2810D48B0);
  return sub_260F49628();
}

uint64_t BiomeSELFEventIngestor.init(dataPool:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_260F493D8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BiomeSELFEventIngestor();
  (*(*(a3 - 8) + 16))(a4 + *(v9 + 44), a2, a3);
  return DataExtractor.init(ingestConfig:)(a2, a3, a4 + *(v9 + 48));
}

uint64_t BiomeSELFEventIngestor.commit()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F306A8;

  return sub_260F3E240();
}

uint64_t sub_260F3E1A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_260F30C74;

  return sub_260F3E240();
}

uint64_t sub_260F3E25C()
{
  if (qword_2810D48A8 != -1)
  {
    swift_once();
  }

  v1 = sub_260F49638();
  __swift_project_value_buffer(v1, qword_2810D48B0);
  v2 = sub_260F49618();
  v3 = sub_260F498E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F24000, v2, v3, "commit()", v4, 2u);
    MEMORY[0x2666F6350](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_260F3E374(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60E28, &unk_260F4B8E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v68 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v66 - v12;
  v14 = *(a3 + 44);
  v71 = (*(*(a3 + 24) + 64))(*(a3 + 16), *(a3 + 24));
  v72 = v15;
  if (!v71)
  {
    goto LABEL_45;
  }

  v16 = *(a3 + 48);
  v17 = type metadata accessor for DataExtractor();
  v70 = DataExtractor.getMonotonicTs(data:)(a1, a2, v17);
  if (v70)
  {
    v18 = *(a3 + 32);
    v66[0] = a1;
    v66[1] = v16;
    v67 = a2;
    v19 = DataExtractor<>.generateRequestLink(data:)(a1, a2, v17, v18);
    v21 = v4;
    v69 = v3;
    if (v19)
    {
      v22 = v19;
      v23 = v20;
      v24 = v70;
      MonotonicTimestamp.init(biomeTimestamp:)(v24, v13);
      sub_260F493C8();
      if (v4)
      {
        sub_260F2AA58(v13, &qword_27FE60E28, &unk_260F4B8E0);
        if (qword_2810D48A8 != -1)
        {
          swift_once();
        }

        v25 = sub_260F49638();
        __swift_project_value_buffer(v25, qword_2810D48B0);
        v26 = v4;
        v27 = sub_260F49618();
        v28 = sub_260F498F8();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          v31 = v4;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v29 + 4) = v32;
          *v30 = v32;
          _os_log_impl(&dword_260F24000, v27, v28, "Error adding event to pool %@", v29, 0xCu);
          sub_260F2AA58(v30, &qword_27FE60F30, &unk_260F4B830);
          MEMORY[0x2666F6350](v30, -1, -1);
          MEMORY[0x2666F6350](v29, -1, -1);

          v21 = 0;
          if ((v23 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_16:

          sub_260F26F30(v71);
          return;
        }

        v21 = 0;
        if (v23)
        {
          goto LABEL_16;
        }
      }

      else
      {

        sub_260F2AA58(v13, &qword_27FE60E28, &unk_260F4B8E0);
        if (v23)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_18:
    v37 = DataExtractor.getEventData(data:)(v66[0], v67, v17);
    if (v38 >> 60 == 15)
    {
      if (qword_2810D48A8 != -1)
      {
        swift_once();
      }

      v39 = sub_260F49638();
      __swift_project_value_buffer(v39, qword_2810D48B0);
      v40 = sub_260F49618();
      v41 = sub_260F498F8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_260F24000, v40, v41, "Skipping event missing data body", v42, 2u);
        MEMORY[0x2666F6350](v42, -1, -1);
      }

      sub_260F26F30(v71);
      return;
    }

    v43 = v37;
    v44 = v38;
    v71(&v73);
    v45 = qword_2810D48A8;
    v46 = v73;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = sub_260F49638();
    __swift_project_value_buffer(v47, qword_2810D48B0);
    sub_260F28238(v43, v44);
    v48 = sub_260F49618();
    v49 = sub_260F498D8();
    if (!os_log_type_enabled(v48, v49))
    {
      sub_260F26F0C(v43, v44);
      goto LABEL_39;
    }

    v50 = swift_slowAlloc();
    v51 = v50;
    *v50 = 134217984;
    v52 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      if (v52 != 2)
      {
        v53 = 0;
        goto LABEL_38;
      }

      v55 = *(v43 + 16);
      v54 = *(v43 + 24);
      v56 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (!v56)
      {
        goto LABEL_38;
      }

      __break(1u);
    }

    else if (!v52)
    {
      v53 = BYTE6(v44);
LABEL_38:
      *(v50 + 4) = v53;
      sub_260F26F0C(v43, v44);
      _os_log_impl(&dword_260F24000, v48, v49, "Adding event with %ld bytes", v51, 0xCu);
      MEMORY[0x2666F6350](v51, -1, -1);
LABEL_39:
      sub_260F26F0C(v43, v44);

      v57 = v70;
      v58 = v68;
      MonotonicTimestamp.init(biomeTimestamp:)(v57, v68);
      sub_260F493C8();
      if (v21)
      {

        sub_260F2AA58(v58, &qword_27FE60E28, &unk_260F4B8E0);
        v59 = v21;
        v60 = sub_260F49618();
        v61 = sub_260F498F8();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412290;
          v64 = v21;
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 4) = v65;
          *v63 = v65;
          _os_log_impl(&dword_260F24000, v60, v61, "Error adding event to pool %@", v62, 0xCu);
          sub_260F2AA58(v63, &qword_27FE60F30, &unk_260F4B830);
          MEMORY[0x2666F6350](v63, -1, -1);
          MEMORY[0x2666F6350](v62, -1, -1);

          sub_260F26F30(v71);
        }

        else
        {

          sub_260F26F30(v71);
        }
      }

      else
      {
        sub_260F2AA58(v58, &qword_27FE60E28, &unk_260F4B8E0);

        sub_260F26F30(v71);
      }

      return;
    }

    LODWORD(v53) = HIDWORD(v43) - v43;
    if (!__OFSUB__(HIDWORD(v43), v43))
    {
      v53 = v53;
      goto LABEL_38;
    }

    __break(1u);
LABEL_45:
    sub_260F499A8();
    __break(1u);
    return;
  }

  if (qword_2810D48A8 != -1)
  {
    swift_once();
  }

  v33 = sub_260F49638();
  __swift_project_value_buffer(v33, qword_2810D48B0);
  v34 = sub_260F49618();
  v35 = sub_260F498F8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_260F24000, v34, v35, "Skipping event missing monotonic timestamp", v36, 2u);
    MEMORY[0x2666F6350](v36, -1, -1);
  }

  sub_260F26F30(v71);
}

uint64_t sub_260F3EBA8(uint64_t a1)
{
  result = sub_260F493D8();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = type metadata accessor for DataExtractor();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_260F3EC50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006769666E6FLL;
  v3 = 0xD000000000000013;
  v4 = 0x4364696C61766E69;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x4364696C61766E69;
    }

    else
    {
      v6 = 0xD000000000000019;
    }

    if (v5 == 2)
    {
      v7 = 0xED00006769666E6FLL;
    }

    else
    {
      v7 = 0x8000000260F4C0F0;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (v5)
    {
      v7 = 0x8000000260F4C0D0;
    }

    else
    {
      v7 = 0x8000000260F4C0B0;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000019;
    v2 = 0x8000000260F4C0F0;
  }

  v8 = 0x8000000260F4C0D0;
  if (!a2)
  {
    v3 = 0xD000000000000016;
    v8 = 0x8000000260F4C0B0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_260F499F8();
  }

  return v11 & 1;
}

uint64_t sub_260F3ED84(uint64_t a1, char *a2)
{
  v5 = sub_260F49658();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EventPath();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F18, &unk_260F4BA28);
  sub_260F443FC(v2 + *(v14 + 36), v13, type metadata accessor for EventPath);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_260F44464(v13, type metadata accessor for EventPath);
      return 0;
    }

    sub_260F28238(a1, a2);
  }

  else
  {
    v33[0] = v14;
    (*(v6 + 32))(v9, v13, v5);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
    v33[1] = v33;
    v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v16 - 8);
    v19 = v33 - v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE60F80, &qword_260F4B200);
    v20 = *(v6 + 72);
    v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_260F4AB10;
    (*(v6 + 16))(v22 + v21, v9, v5);
    sub_260F2F1F8(v22);
    swift_setDeallocating();
    v23 = v22 + v21;
    v24 = *(v6 + 8);
    v24(v23, v5);
    swift_deallocClassInstance();
    sub_260F3F35C(a2, v19);

    v24(v9, v5);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
    if ((*(*(v25 - 8) + 48))(v19, 1, v25) == 1)
    {
      sub_260F2AA58(v19, &qword_27FE60888, &unk_260F4ABA0);
      return 0;
    }

    v26 = &v19[*(v25 + 48)];
    a1 = *v26;
    a2 = v26[1];
    v24(v19, v5);
    v14 = v33[0];
  }

  v27 = v2 + *(v14 + 44);
  v28 = *(v27 + 8);
  if (v28 != 255)
  {
    v29 = *v27;

    v31 = sub_260F3F174(v30, v28, a1, a2);
    sub_260F28224(v29, v28);
    sub_260F281D0(a1, a2);
    return v31;
  }

  return a1;
}

uint64_t sub_260F3F174(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  if (a2)
  {
    if (a2 != 1)
    {
      sub_260F28238(a3, a4);
      return v4;
    }

    v5 = sub_260F49858();
  }

  else
  {
    v5 = sub_260F49868();
  }

  v6 = v5;

  return v6;
}

uint64_t sub_260F3F35C@<X0>(char *a1@<X2>, uint64_t a2@<X8>)
{
  v51 = a1;
  v53 = a2;
  v52 = sub_260F49658();
  v50 = *(v52 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = sub_260F49688();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  sub_260F444C4();
  sub_260F498B8();
  v47 = v18;
  v51 = v4;
  sub_260F2A9F0(v11, v13, &qword_27FE60F20, &qword_260F4B0A0);
  v24 = v48;
  v25 = *(v48 + 32);
  v25(v23, v21, v14);
  v26 = v49;
  sub_260F2A9F0(v13, v49, &qword_27FE60F20, &qword_260F4B0A0);
  v27 = v50;
  v28 = v52;
  v29 = v24;
  if ((*(v50 + 48))(v26, 1, v52) == 1)
  {
    (*(v24 + 8))(v23, v14);
    sub_260F2AA58(v26, &qword_27FE60F20, &qword_260F4B0A0);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
    return (*(*(v30 - 8) + 56))(v53, 1, 1, v30);
  }

  else
  {
    v32 = v14;
    v33 = v26;
    v34 = *(v27 + 32);
    v34(v51, v33, v28);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
    v49 = &v46;
    v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v35 - 8);
    v38 = &v46 - v37;
    v39 = v47;
    v25(v47, v23, v32);
    v40 = (*(v29 + 88))(v39, v32);
    if (v40 == *MEMORY[0x277D04660] || v40 == *MEMORY[0x277D04668])
    {
      (*(v29 + 96))(v39, v32);
      v43 = *v39;
      v42 = v39[1];
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      v45 = &v38[*(v44 + 48)];
      v34(v38, v51, v28);
      *v45 = v43;
      *(v45 + 1) = v42;
      (*(*(v44 - 8) + 56))(v38, 0, 1, v44);
    }

    else
    {
      (*(v50 + 8))(v51, v28);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
      (*(*(v41 - 8) + 56))(v38, 1, 1, v41);
      (*(v29 + 8))(v39, v32);
    }

    return sub_260F2A9F0(v38, v53, &qword_27FE60888, &unk_260F4ABA0);
  }
}

uint64_t sub_260F3FA5C()
{
  v41 = v0;
  v1 = v0[5];
  v2 = *(*v1 + 128);
  v0[6] = v2;
  v3 = v1 + v2;
  v40 = *(v1 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F18, &unk_260F4BA28) + 40));

  v4 = CollectionPolicy.canCollect()();

  if (v4)
  {
    v5 = sub_260F32384();
    v0[7] = v5;
    v16 = v0[5];
    v17 = v5;
    v18 = sub_260F493B8();
    v0[8] = v18;
    v19 = *(v18 - 8);
    v0[9] = v19;
    v20 = *(v19 + 64) + 15;
    v21 = swift_task_alloc();
    v0[10] = v21;
    v22 = [v17 configuration];
    v23 = [v22 streamUUID];

    sub_260F49388();
    v24 = (v16 + *(*v16 + 136));
    v25 = *v24;
    v26 = v24[1];
    v27 = sub_260F496E8();
    v28 = [v17 publisherWithUseCase_];

    v0[11] = sub_260F4024C(v28, v21);
    v29 = *(*v16 + 120);
    swift_beginAccess();
    v30 = swift_task_alloc();
    v0[12] = v30;
    *v30 = v0;
    v30[1] = sub_260F3FEAC;

    return sub_260F41A34();
  }

  else
  {
    if (qword_2810D48D0 != -1)
    {
      swift_once();
    }

    v6 = v0[5];
    v7 = sub_260F49638();
    __swift_project_value_buffer(v7, qword_2810D48E0);

    v8 = sub_260F49618();
    v9 = sub_260F498D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315138;
      v12 = *v3;
      v13 = *(v3 + 8);
      if (*(v3 + 16))
      {
        if (*(v3 + 16) == 1)
        {
          v14 = sub_260F49718();
          v13 = v15;
        }

        else
        {
          v33 = *v3;
          v34 = [v12 identifier];
          v35 = sub_260F49718();
          v37 = v36;

          sub_260F34CD4(v33, v13, 2);
          v14 = v35;
          v13 = v37;
        }
      }

      else
      {
        v32 = *v3;

        v14 = v32;
      }

      v38 = sub_260F29D18(v14, v13, &v40);

      *(v10 + 4) = v38;
      _os_log_impl(&dword_260F24000, v8, v9, "Skipping %s: collection demands were not met", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x2666F6350](v11, -1, -1);
      MEMORY[0x2666F6350](v10, -1, -1);
    }

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_260F3FEAC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_260F400C8;
  }

  else
  {
    swift_endAccess();
    v3 = sub_260F3FFC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260F3FFC8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  if (v2)
  {
    v6 = v0[5] + v0[6];
    v7 = sub_260F40174();
    sub_260F412A4(v2, v7, v8);

    swift_unknownObjectRelease();
    (*(v4 + 8))(v1, v3);
  }

  else
  {
    (*(v4 + 8))(v0[10], v0[8]);
  }

  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_260F400C8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v3);

  v6 = v0[13];
  v7 = v0[1];

  return v7();
}

uint64_t sub_260F40174()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v3 = sub_260F49718();
      v2 = v4;
    }

    else
    {
      v6 = *v0;
      v7 = [v1 identifier];
      v8 = sub_260F49718();
      v10 = v9;

      sub_260F34CD4(v6, v2, 2);
      v3 = v8;
      v2 = v10;
    }
  }

  else
  {
    v5 = *v0;

    v3 = v5;
  }

  MEMORY[0x2666F59D0](v3, v2);

  return 6253922;
}

uint64_t sub_260F4024C(void *a1, uint64_t a2)
{
  v44 = a1;
  v4 = v2 + *(*v2 + 128);
  v5 = sub_260F40174();
  v41 = sub_260F40DE0(v5, v6);

  v7 = *(v4 + 20);
  v42 = *(v4 + 24);
  v43 = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v45 = (v8 + 16);
  v9 = swift_allocObject();
  v39 = v9;
  *(v9 + 16) = 0;
  v38[1] = v9 + 16;
  v51 = sub_260F3B724;
  v52 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_260F40758;
  v50 = &block_descriptor_1;
  v40 = _Block_copy(&aBlock);

  v10 = sub_260F493B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v14 + v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  v18 = v17 + v14;
  v19 = v41;
  (*(v11 + 32))(v18, v13, v10);
  v20 = v17 + v15;
  v21 = v39;
  v22 = v42;
  *v20 = v43;
  *(v20 + 4) = v22;
  *(v17 + v16) = v21;
  v51 = sub_260F442CC;
  v52 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_260F40D84;
  v50 = &block_descriptor_20;
  v23 = _Block_copy(&aBlock);

  v24 = v40;
  v25 = [v44 drivableSinkWithBookmark:v19 completion:v40 shouldContinue:v23];
  _Block_release(v23);
  _Block_release(v24);

  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v26 = sub_260F49638();
  __swift_project_value_buffer(v26, qword_2810D48E0);

  v27 = sub_260F49618();
  v28 = sub_260F498E8();

  v29 = v8;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 134218242;
    swift_beginAccess();
    *(v30 + 4) = *(v21 + 16);

    *(v30 + 12) = 2080;
    v32 = v45;
    swift_beginAccess();
    v46 = *v32;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE60F70, &qword_260F4B848);
    v33 = sub_260F49728();
    v35 = sub_260F29D18(v33, v34, &aBlock);

    *(v30 + 14) = v35;
    _os_log_impl(&dword_260F24000, v27, v28, "Processed %ld events. End Bookmark: %s", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x2666F6350](v31, -1, -1);
    MEMORY[0x2666F6350](v30, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v36 = *(v29 + 16);
  swift_unknownObjectRetain();

  return v36;
}

void sub_260F40758(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t sub_260F407E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*a2 + 144);
  if (*(a2 + v8))
  {
    v9 = *(a2 + v8);

    sub_260F49428();
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 eventBodyData];
    if (!v12)
    {
      if (qword_2810D48D0 != -1)
      {
        swift_once();
      }

      v25 = sub_260F49638();
      __swift_project_value_buffer(v25, qword_2810D48E0);
      v26 = sub_260F49618();
      v27 = sub_260F49908();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_260F24000, v26, v27, "Event missing body data", v28, 2u);
        MEMORY[0x2666F6350](v28, -1, -1);
      }

      goto LABEL_28;
    }

    v13 = v12;
    v14 = sub_260F49328();
    v16 = v15;

    if ((a4 & 0x100000000) != 0 || [v11 eventBodyDataVersion] == a4)
    {
      v17 = MEMORY[0x2666F5D90]();
      [v11 timestamp];
      v19 = v18;
      v20 = *(*a2 + 120);
      swift_beginAccess();
      sub_260F415DC(v14, v16, v19);
      swift_endAccess();
      objc_autoreleasePoolPop(v17);
      swift_beginAccess();
      v29 = *(a5 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (!v30)
      {
        *(a5 + 16) = v31;
        if (*(a2 + v8))
        {
          v32 = *(a2 + v8);

          sub_260F49418();
          sub_260F281D0(v14, v16);
        }

        else
        {
          sub_260F281D0(v14, v16);
        }

LABEL_28:
        swift_unknownObjectRelease();
        return 1;
      }

      __break(1u);
    }

    else if (qword_2810D48D0 == -1)
    {
LABEL_24:
      v33 = sub_260F49638();
      __swift_project_value_buffer(v33, qword_2810D48E0);
      v34 = sub_260F49618();
      v35 = sub_260F498F8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_260F24000, v34, v35, "Ignore incompatible data version", v36, 2u);
        MEMORY[0x2666F6350](v36, -1, -1);
      }

      sub_260F281D0(v14, v16);

      goto LABEL_28;
    }

    swift_once();
    goto LABEL_24;
  }

  swift_unknownObjectRelease();
  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v21 = sub_260F49638();
  __swift_project_value_buffer(v21, qword_2810D48E0);
  v22 = sub_260F49618();
  v23 = sub_260F49908();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_260F24000, v22, v23, "Can't get BMStoreEvent out of the stream", v24, 2u);
    MEMORY[0x2666F6350](v24, -1, -1);
  }

  return 1;
}

uint64_t sub_260F40D84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_260F40DE0(uint64_t a1, unint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v6 = sub_260F496E8();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_260F49938();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  if (!*(&v35 + 1))
  {
    sub_260F2AA58(v36, &unk_27FE60DB0, &qword_260F4B828);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v8 = objc_opt_self();
  v9 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  sub_260F49828();

  v10 = sub_260F49818();

  v11 = sub_260F49308();
  *&v36[0] = 0;
  v12 = [v8 unarchivedObjectOfClasses:v10 fromData:v11 error:v36];

  if (!v12)
  {
    v22 = *&v36[0];
    v23 = sub_260F492E8();

    swift_willThrow();
    if (qword_2810D48D0 != -1)
    {
      swift_once();
    }

    v24 = sub_260F49638();
    __swift_project_value_buffer(v24, qword_2810D48E0);
    v25 = v23;
    v26 = sub_260F49618();
    v27 = sub_260F498F8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_260F24000, v26, v27, "Error decoding bookmark: %@", v28, 0xCu);
      sub_260F2AA58(v29, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v29, -1, -1);
      MEMORY[0x2666F6350](v28, -1, -1);
      sub_260F281D0(v32, v33);
    }

    else
    {
      sub_260F281D0(v32, v33);
    }

    goto LABEL_16;
  }

  v13 = *&v36[0];
  sub_260F49938();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60E20, &qword_260F4B840);
  if (swift_dynamicCast())
  {
    v14 = v34;
  }

  else
  {
    v14 = 0;
  }

  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v15 = sub_260F49638();
  __swift_project_value_buffer(v15, qword_2810D48E0);

  v16 = sub_260F49618();
  v17 = sub_260F498E8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v36[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_260F29D18(a1, a2, v36);
    _os_log_impl(&dword_260F24000, v16, v17, "Bookmark for %s found", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2666F6350](v19, -1, -1);
    MEMORY[0x2666F6350](v18, -1, -1);
  }

  sub_260F281D0(v32, v33);

  result = v14;
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_260F412A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v32[1] = *MEMORY[0x277D85DE8];
  if (qword_2810D48D0 != -1)
  {
    swift_once();
  }

  v8 = sub_260F49638();
  __swift_project_value_buffer(v8, qword_2810D48E0);

  v9 = sub_260F49618();
  v10 = sub_260F498E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_260F29D18(a2, a3, v32);
    _os_log_impl(&dword_260F24000, v9, v10, "Saving bookmark for %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2666F6350](v12, -1, -1);
    MEMORY[0x2666F6350](v11, -1, -1);
  }

  v13 = objc_opt_self();
  v32[0] = 0;
  v14 = [v13 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v32];
  v15 = v32[0];
  if (v14)
  {
    v16 = sub_260F49328();
    v18 = v17;

    v19 = *(v4 + 16);
    v20 = sub_260F49308();
    v21 = sub_260F496E8();
    [v19 setValue:v20 forKey:v21];

    sub_260F281D0(v16, v18);
  }

  else
  {
    v22 = v15;
    v23 = sub_260F492E8();

    swift_willThrow();
    v24 = v23;
    v25 = sub_260F49618();
    v26 = sub_260F498F8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v23;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_260F24000, v25, v26, "Error encoding bookmark: %@", v27, 0xCu);
      sub_260F2AA58(v28, &qword_27FE60F30, &unk_260F4B830);
      MEMORY[0x2666F6350](v28, -1, -1);
      MEMORY[0x2666F6350](v27, -1, -1);
    }

    else
    {
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_260F415DC(uint64_t a1, char *a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for DillSessionEvent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F10, &qword_260F4BA20);
  v17 = v3 + *(v16 + 36);
  v18 = sub_260F3ED84(a1, a2);
  if (v19 >> 60 == 15)
  {
    if (qword_27FE60690 != -1)
    {
      swift_once();
    }

    v20 = sub_260F49638();
    __swift_project_value_buffer(v20, qword_27FE60E30);
    v21 = sub_260F49618();
    v22 = sub_260F498D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_260F24000, v21, v22, "Skipping event missing data body", v23, 2u);
      MEMORY[0x2666F6350](v23, -1, -1);
    }
  }

  else
  {
    v24 = v18;
    v25 = v19;
    v26 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F18, &unk_260F4BA28) + 48);
    v27 = *v26;
    if (*v26)
    {
      v44 = v9;
      v28 = *(v26 + 8);
      *(v15 + 8) = xmmword_260F4ACB0;
      v29 = &v15[*(v8 + 24)];
      sub_260F49488();
      *v15 = a3;
      v45 = v24;
      v27(v46, v24, v25);
      v30 = v46[0];
      v31 = v46[1];
      sub_260F26F0C(*(v15 + 1), *(v15 + 2));
      *(v15 + 1) = v30;
      *(v15 + 2) = v31;
      sub_260F443FC(v15, v13, type metadata accessor for DillSessionEvent);
      v32 = v4 + *(v16 + 40);
      v33 = *(v32 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_260F3DCC0(0, v33[2] + 1, 1, v33);
      }

      v35 = v33[2];
      v34 = v33[3];
      v36 = v44;
      if (v35 >= v34 >> 1)
      {
        v33 = sub_260F3DCC0(v34 > 1, v35 + 1, 1, v33);
      }

      sub_260F26F0C(v45, v25);
      v33[2] = v35 + 1;
      sub_260F44394(v13, v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35, type metadata accessor for DillSessionEvent);
      *(v32 + 16) = v33;
      sub_260F44464(v15, type metadata accessor for DillSessionEvent);
    }

    else
    {
      v37 = v24;
      if (qword_27FE60690 != -1)
      {
        swift_once();
      }

      v38 = sub_260F49638();
      __swift_project_value_buffer(v38, qword_27FE60E30);
      v39 = sub_260F49618();
      v40 = sub_260F498F8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_260F24000, v39, v40, "Missing innerTypeBuilder in config", v41, 2u);
        MEMORY[0x2666F6350](v41, -1, -1);
      }

      sub_260F3DB38();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
      sub_260F26F0C(v37, v25);
    }
  }
}

uint64_t sub_260F41A34()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[4] = v0;
  v2 = type metadata accessor for DillSession(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_260F41AF4, 0, 0);
}

id sub_260F41AF4()
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F10, &qword_260F4BA20);
  *(v0 + 96) = *(v3 + 40);
  sub_260F44510(&qword_27FE60F60, type metadata accessor for DillSession);
  v4 = sub_260F49538();
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  v6 = v4;
  v7 = v5;
  v8 = type metadata accessor for DillProvisional();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_dillData];
  *v10 = v6;
  v10[1] = v7;
  v11 = &v9[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId];
  *v11 = 0xD00000000000001CLL;
  *(v11 + 1) = 0x8000000260F4C7B0;
  *&v9[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_version] = 12;
  sub_260F28238(v6, v7);
  *(v0 + 16) = v9;
  *(v0 + 24) = v8;
  result = objc_msgSendSuper2((v0 + 16), sel_init);
  *(v0 + 72) = result;
  if (result)
  {
    v13 = result;
    v14 = *(*(v0 + 32) + *(v3 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60ED0, &qword_260F4B970);
    v15 = swift_allocObject();
    *(v0 + 80) = v15;
    *(v15 + 16) = xmmword_260F4B8F0;
    *(v15 + 32) = v13;
    v16 = MEMORY[0x277D552B0];
    v17 = *(MEMORY[0x277D552B0] + 4);
    v18 = *MEMORY[0x277D552B0];
    v19 = v13;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    *v20 = v0;
    v20[1] = sub_260F41DD0;
    v21 = *MEMORY[0x277D85DE8];

    return ((v18 + v16))(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260F41DD0()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_260F41F14, 0, 0);
}

uint64_t sub_260F41F14()
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v26 = *(v0 + 96);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v24 = *(v0 + 64);
  v25 = *(v0 + 32);
  v5 = sub_260F493B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  sub_260F493A8();
  *(v0 + 100) = sub_260F49398();
  *(v0 + 108) = v9;
  *(v0 + 109) = v10;
  *(v0 + 110) = v11;
  *(v0 + 111) = v12;
  *(v0 + 112) = v13;
  *(v0 + 113) = v14;
  *(v0 + 114) = v15;
  *(v0 + 115) = v16;
  v17 = sub_260F43E80((v0 + 100), 16);
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  v20 = v2 + *(v4 + 24);
  sub_260F49488();

  sub_260F281D0(v3, v24);
  *v2 = v17;
  v2[1] = v19;
  v2[2] = MEMORY[0x277D84F90];

  sub_260F3DE98(v2, v25 + v26);

  v21 = *(v0 + 8);
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

uint64_t sub_260F42134()
{
  v0 = sub_260F49638();
  __swift_allocate_value_buffer(v0, qword_27FE60EF0);
  __swift_project_value_buffer(v0, qword_27FE60EF0);
  return sub_260F49628();
}

void BiomeUploadProcessor.init(biomeUseCase:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_260F496E8();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v9 = sub_260F49448();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_260F49438();
    v13 = [objc_allocWithZone(MEMORY[0x277D084C0]) init];
    v14 = [objc_allocWithZone(MEMORY[0x277D084B8]) initWithContext_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F08, &qword_260F4BA10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_260F4AC90;
    v16 = type metadata accessor for RequireDiagnosticsAndUsageOptIn();
    v17 = swift_allocObject();
    *(v15 + 56) = v16;
    *(v15 + 64) = &protocol witness table for RequireDiagnosticsAndUsageOptIn;
    *(v15 + 32) = v17;
    v18 = type metadata accessor for RequireInternalBuild();
    v19 = swift_allocObject();
    *(v15 + 96) = v18;
    *(v15 + 104) = &protocol witness table for RequireInternalBuild;
    *(v15 + 72) = v19;
    *a3 = v8;
    a3[1] = v12;
    a3[2] = v14;
    a3[3] = a1;
    a3[4] = a2;
    a3[5] = v15;
  }

  else
  {
    __break(1u);
  }
}

uint64_t BiomeUploadProcessor.doWork(context:)()
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F10, &qword_260F4BA20);
  *(v1 + 24) = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F18, &unk_260F4BA28);
  *(v1 + 40) = v4;
  v5 = *(v4 - 8);
  *(v1 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v7 = type metadata accessor for EventPath();
  *(v1 + 80) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *v0;
  *(v1 + 96) = v10;
  *(v1 + 104) = v11;
  *(v1 + 112) = v0[3];
  *(v1 + 120) = *(v0 + 2);
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_260F424F0, 0, 0);
}

uint64_t sub_260F424F0()
{
  v71 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = sub_260F496E8();
  v3 = [v1 BOOLForKey_];

  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = *(v0 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F38, &qword_260F4BA50);
    v11 = *(v10 + 72);
    v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_260F4AB10;
    v13 = v5 + v12;
    v14 = sub_260F496E8();
    v15 = sub_260F49658();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    sub_260F49668();
    swift_storeEnumTagMultiPayload();

    v16 = sub_260F49878();
    v17 = *(v0 + 128);
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    v20 = *(v0 + 40);
    *v13 = v14;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    *(v13 + 20) = 0;
    *(v13 + 24) = 1;
    sub_260F2A9F0(v18, v13 + v20[8], &qword_27FE60F20, &qword_260F4B0A0);
    sub_260F44394(v19, v13 + v20[9], type metadata accessor for EventPath);
    *(v13 + v20[10]) = v17;
    v21 = v13 + v20[11];
    *v21 = v16;
    *(v21 + 8) = 1;
    v22 = (v13 + v20[12]);
    *v22 = sub_260F43880;
    v22[1] = 0;
    *(v13 + v20[13]) = v4;
  }

  *(v0 + 136) = v5;
  v23 = *(v5 + 16);
  *(v0 + 144) = v23;
  if (v23)
  {
    v24 = *(v0 + 48);
    v25 = *(v24 + 80);
    *(v0 + 192) = v25;
    *(v0 + 152) = *(v24 + 72);
    *(v0 + 160) = 0;
    v69 = *(v0 + 112);
    v70 = *(v0 + 120);
    v68 = *(v0 + 104);
    v26 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 24);
    v28 = *(v0 + 32);
    sub_260F43F30(v5 + ((v25 + 32) & ~v25), v27);
    sub_260F43F30(v27, v26);
    v30 = v29[11];
    v31 = sub_260F49448();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    *(v28 + v30) = sub_260F49438();
    sub_260F43F30(v26, v28);
    sub_260F43F30(v26, v28 + v29[9]);
    v34 = sub_260F493B8();
    v35 = *(v34 - 8);
    v36 = *(v35 + 64) + 15;
    v37 = swift_task_alloc();
    sub_260F493A8();
    *(v0 + 196) = sub_260F49398();
    *(v0 + 204) = v38;
    *(v0 + 205) = v39;
    *(v0 + 206) = v40;
    *(v0 + 207) = v41;
    *(v0 + 208) = v42;
    *(v0 + 209) = v43;
    *(v0 + 210) = v44;
    *(v0 + 211) = v45;
    v46 = sub_260F43E80((v0 + 196), 16);
    v48 = v47;
    (*(v35 + 8))(v37, v34);
    v49 = (v28 + v29[10]);
    v50 = v49 + *(type metadata accessor for DillSession(0) + 24);
    sub_260F49488();
    sub_260F2AA58(v26, &qword_27FE60F18, &unk_260F4BA28);
    *v49 = v46;
    v49[1] = v48;
    v49[2] = MEMORY[0x277D84F90];

    sub_260F43F30(v27, v26);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F28, &unk_260F4BA40);
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    v54 = swift_allocObject();
    *(v0 + 168) = v54;
    *(v54 + *(*v54 + 144)) = 0;
    sub_260F2A9F0(v28, v54 + *(*v54 + 120), &qword_27FE60F10, &qword_260F4BA20);
    sub_260F2A9F0(v26, v54 + *(*v54 + 128), &qword_27FE60F18, &unk_260F4BA28);
    v54[2] = v68;
    v55 = (v54 + *(*v54 + 136));
    *v55 = v69;
    v55[1] = v70;
    *(v54 + *(*v54 + 144)) = 0;
    v56 = v68;

    v57 = swift_task_alloc();
    *(v0 + 176) = v57;
    *v57 = v0;
    v57[1] = sub_260F42B70;
    v58 = *MEMORY[0x277D85DE8];

    return sub_260F3FA3C();
  }

  else
  {

    v61 = *(v0 + 88);
    v60 = *(v0 + 96);
    v63 = *(v0 + 64);
    v62 = *(v0 + 72);
    v64 = *(v0 + 56);
    v65 = *(v0 + 32);

    v66 = *(v0 + 8);
    v67 = *MEMORY[0x277D85DE8];

    return v66();
  }
}

uint64_t sub_260F42B70()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_260F43154;
  }

  else
  {
    v3 = sub_260F42CB0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260F42CB0()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);

  sub_260F2AA58(v2, &qword_27FE60F18, &unk_260F4BA28);
  v3 = *(v0 + 160) + 1;
  if (v3 == *(v0 + 144))
  {
    v4 = *(v0 + 136);

    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);

    v11 = *(v0 + 8);
    v12 = *MEMORY[0x277D85DE8];

    return v11();
  }

  else
  {
    *(v0 + 160) = v3;
    v48 = *(v0 + 112);
    v49 = *(v0 + 120);
    v47 = *(v0 + 104);
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 24);
    v16 = *(v0 + 32);
    sub_260F43F30(*(v0 + 136) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 152) * v3, v15);
    sub_260F43F30(v15, v14);
    v18 = v17[11];
    v19 = sub_260F49448();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    *(v16 + v18) = sub_260F49438();
    sub_260F43F30(v14, v16);
    sub_260F43F30(v14, v16 + v17[9]);
    v22 = sub_260F493B8();
    v23 = *(v22 - 8);
    v24 = *(v23 + 64) + 15;
    v25 = swift_task_alloc();
    sub_260F493A8();
    *(v0 + 196) = sub_260F49398();
    *(v0 + 204) = v26;
    *(v0 + 205) = v27;
    *(v0 + 206) = v28;
    *(v0 + 207) = v29;
    *(v0 + 208) = v30;
    *(v0 + 209) = v31;
    *(v0 + 210) = v32;
    *(v0 + 211) = v33;
    v34 = sub_260F43E80((v0 + 196), 16);
    v36 = v35;
    (*(v23 + 8))(v25, v22);
    v37 = (v16 + v17[10]);
    v38 = v37 + *(type metadata accessor for DillSession(0) + 24);
    sub_260F49488();
    sub_260F2AA58(v14, &qword_27FE60F18, &unk_260F4BA28);
    *v37 = v34;
    v37[1] = v36;
    v37[2] = MEMORY[0x277D84F90];

    sub_260F43F30(v15, v14);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F28, &unk_260F4BA40);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v42 = swift_allocObject();
    *(v0 + 168) = v42;
    *(v42 + *(*v42 + 144)) = 0;
    sub_260F2A9F0(v16, v42 + *(*v42 + 120), &qword_27FE60F10, &qword_260F4BA20);
    sub_260F2A9F0(v14, v42 + *(*v42 + 128), &qword_27FE60F18, &unk_260F4BA28);
    v42[2] = v47;
    v43 = (v42 + *(*v42 + 136));
    *v43 = v48;
    v43[1] = v49;
    *(v42 + *(*v42 + 144)) = 0;
    v44 = v47;

    v45 = swift_task_alloc();
    *(v0 + 176) = v45;
    *v45 = v0;
    v45[1] = sub_260F42B70;
    v46 = *MEMORY[0x277D85DE8];

    return sub_260F3FA3C();
  }
}

uint64_t sub_260F43154()
{
  v79 = *MEMORY[0x277D85DE8];
  if (qword_27FE606A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_260F49638();
  __swift_project_value_buffer(v4, qword_27FE60EF0);
  sub_260F43F30(v2, v3);
  v5 = v1;
  v6 = sub_260F49618();
  v7 = sub_260F498F8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v0 + 16) = v11;
    *v9 = 136315394;
    v12 = *v8;
    v13 = *(v8 + 8);
    if (*(v8 + 16))
    {
      if (*(v8 + 16) == 1)
      {
        v14 = *v8;
        v12 = sub_260F49718();
        v13 = v15;
      }

      else
      {
        v22 = [v12 identifier];
        v23 = sub_260F49718();
        v76 = v24;
        sub_260F34CD4(v12, v13, 2);

        v12 = v23;
        v13 = v76;
      }
    }

    else
    {
      v21 = *(v8 + 8);
    }

    v25 = *(v0 + 184);
    v26 = *(v0 + 168);
    v77 = *(v0 + 72);
    sub_260F2AA58(*(v0 + 56), &qword_27FE60F18, &unk_260F4BA28);
    v27 = sub_260F29D18(v12, v13, (v0 + 16));

    *(v9 + 4) = v27;
    *(v9 + 12) = 2112;
    v28 = v25;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v29;
    *v10 = v29;
    _os_log_impl(&dword_260F24000, v6, v7, "Error uploading %s: %@", v9, 0x16u);
    sub_260F2AA58(v10, &qword_27FE60F30, &unk_260F4B830);
    MEMORY[0x2666F6350](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2666F6350](v11, -1, -1);
    MEMORY[0x2666F6350](v9, -1, -1);

    v20 = v77;
  }

  else
  {
    v16 = *(v0 + 184);
    v17 = *(v0 + 168);
    v18 = *(v0 + 72);
    v19 = *(v0 + 56);

    sub_260F2AA58(v19, &qword_27FE60F18, &unk_260F4BA28);
    v20 = v18;
  }

  sub_260F2AA58(v20, &qword_27FE60F18, &unk_260F4BA28);
  v30 = *(v0 + 160) + 1;
  if (v30 == *(v0 + 144))
  {
    v31 = *(v0 + 136);

    v33 = *(v0 + 88);
    v32 = *(v0 + 96);
    v35 = *(v0 + 64);
    v34 = *(v0 + 72);
    v36 = *(v0 + 56);
    v37 = *(v0 + 32);

    v38 = *(v0 + 8);
    v39 = *MEMORY[0x277D85DE8];

    return v38();
  }

  else
  {
    *(v0 + 160) = v30;
    v75 = *(v0 + 112);
    v78 = *(v0 + 120);
    v74 = *(v0 + 104);
    v41 = *(v0 + 64);
    v42 = *(v0 + 72);
    v44 = *(v0 + 24);
    v43 = *(v0 + 32);
    sub_260F43F30(*(v0 + 136) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 152) * v30, v42);
    sub_260F43F30(v42, v41);
    v45 = v44[11];
    v46 = sub_260F49448();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    *(v43 + v45) = sub_260F49438();
    sub_260F43F30(v41, v43);
    sub_260F43F30(v41, v43 + v44[9]);
    v49 = sub_260F493B8();
    v50 = *(v49 - 8);
    v51 = *(v50 + 64) + 15;
    v52 = swift_task_alloc();
    sub_260F493A8();
    *(v0 + 196) = sub_260F49398();
    *(v0 + 204) = v53;
    *(v0 + 205) = v54;
    *(v0 + 206) = v55;
    *(v0 + 207) = v56;
    *(v0 + 208) = v57;
    *(v0 + 209) = v58;
    *(v0 + 210) = v59;
    *(v0 + 211) = v60;
    v61 = sub_260F43E80((v0 + 196), 16);
    v63 = v62;
    (*(v50 + 8))(v52, v49);
    v64 = (v43 + v44[10]);
    v65 = v64 + *(type metadata accessor for DillSession(0) + 24);
    sub_260F49488();
    sub_260F2AA58(v41, &qword_27FE60F18, &unk_260F4BA28);
    *v64 = v61;
    v64[1] = v63;
    v64[2] = MEMORY[0x277D84F90];

    sub_260F43F30(v42, v41);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F28, &unk_260F4BA40);
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    v69 = swift_allocObject();
    *(v0 + 168) = v69;
    *(v69 + *(*v69 + 144)) = 0;
    sub_260F2A9F0(v43, v69 + *(*v69 + 120), &qword_27FE60F10, &qword_260F4BA20);
    sub_260F2A9F0(v41, v69 + *(*v69 + 128), &qword_27FE60F18, &unk_260F4BA28);
    v69[2] = v74;
    v70 = (v69 + *(*v69 + 136));
    *v70 = v75;
    v70[1] = v78;
    *(v69 + *(*v69 + 144)) = 0;
    v71 = v74;

    v72 = swift_task_alloc();
    *(v0 + 176) = v72;
    *v72 = v0;
    v72[1] = sub_260F42B70;
    v73 = *MEMORY[0x277D85DE8];

    return sub_260F3FA3C();
  }
}

uint64_t sub_260F43880@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_260F28238(a1, a2);
}

ProtoDataExtractor::BiomeUploadProcessorError_optional __swiftcall BiomeUploadProcessorError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_260F499D8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BiomeUploadProcessorError.rawValue.getter()
{
  v1 = 0x4364696C61766E69;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_260F43984()
{
  v1 = *v0;
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

uint64_t sub_260F43A60()
{
  *v0;
  *v0;
  *v0;
  sub_260F49738();
}

uint64_t sub_260F43B28()
{
  v1 = *v0;
  sub_260F49A78();
  sub_260F49738();

  return sub_260F49A98();
}

void sub_260F43C0C(unint64_t *a1@<X8>)
{
  v2 = 0xED00006769666E6FLL;
  v3 = 0x4364696C61766E69;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000019;
    v2 = 0x8000000260F4C0F0;
  }

  v4 = 0x8000000260F4C0B0;
  v5 = 0xD000000000000016;
  if (*v1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000260F4C0D0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_260F43CA4(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_260F43D04(void *__src, uint64_t a2, void *__dst)
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

void sub_260F43D24(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_260F43D98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_260F43DC8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_260F43E80(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_260F43DC8(a1, &a1[a2]);
  }

  v3 = sub_260F492D8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_260F49298();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_260F492F8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_260F43F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F18, &unk_260F4BA28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_260F43FA4()
{
  result = qword_27FE60F40;
  if (!qword_27FE60F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60F40);
  }

  return result;
}

unint64_t sub_260F44000()
{
  result = qword_27FE60F50;
  if (!qword_27FE60F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60F50);
  }

  return result;
}

unint64_t sub_260F44058()
{
  result = qword_27FE60F58;
  if (!qword_27FE60F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE60F58);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_260F440C0(uint64_t *a1, int a2)
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

uint64_t sub_260F44108(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for BiomeUploadProcessorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BiomeUploadProcessorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_260F442CC(uint64_t a1)
{
  v3 = *(sub_260F493B8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + 16);
  v7 = (v1 + ((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v8 = *v7;
  v9 = *(v7 + 4);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_260F407E0(a1, v6, v1 + v4, v8 | (v9 << 32), v10);
}

uint64_t sub_260F44394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_260F443FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_260F44464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_260F444C4()
{
  result = qword_2810D4790;
  if (!qword_2810D4790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810D4790);
  }

  return result;
}

uint64_t sub_260F44510(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_260F446BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataBiomeEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id DillSiriInstrumentationWrapper.__allocating_init(dillData:anyEventType:)(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = &v8[OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_dillData];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_anyEventType] = a3;
  sub_260F28238(a1, a2);
  v12.receiver = v8;
  v12.super_class = v4;
  result = objc_msgSendSuper2(&v12, sel_init);
  if (result)
  {
    v11 = result;
    sub_260F281D0(a1, a2);
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DillSiriInstrumentationWrapper.init(dillData:anyEventType:)(uint64_t a1, unint64_t a2, int a3)
{
  v6 = &v3[OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_dillData];
  *v6 = a1;
  v6[1] = a2;
  *&v3[OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_anyEventType] = a3;
  sub_260F28238(a1, a2);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DillSiriInstrumentationWrapper();
  result = objc_msgSendSuper2(&v9, sel_init);
  if (result)
  {
    v8 = result;
    sub_260F281D0(a1, a2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id DillSiriInstrumentationWrapper.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DillSiriInstrumentationWrapper.__allocating_init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_260F49308();
    sub_260F26F0C(a1, a2);
  }

  v6 = [objc_allocWithZone(v2) initWithData_];

  return v6;
}

void DillSiriInstrumentationWrapper.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_260F26F0C(a1, a2);
  sub_260F499A8();
  __break(1u);
}

uint64_t sub_260F44B50()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_dillData);
  sub_260F28238(v1, *(v0 + OBJC_IVAR____TtC18ProtoDataExtractor30DillSiriInstrumentationWrapper_dillData + 8));
  return v1;
}

id sub_260F44D34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    type metadata accessor for DillProvisional();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v4 = &v2[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_dillData];
    *v4 = a1;
    v4[1] = a2;
    v5 = &v2[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId];
    *v5 = 0;
    *(v5 + 1) = 0xE000000000000000;
    *&v2[OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_version] = -1;
    sub_260F28238(a1, a2);
    v9.receiver = v2;
    v9.super_class = type metadata accessor for DillProvisional();
    v3 = objc_msgSendSuper2(&v9, sel_init);
    sub_260F26F0C(a1, a2);
    if (v3)
    {
    }
  }

  return v3;
}

id sub_260F44E74(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_260F28238(*v3, v5);
  v6 = sub_260F49308();
  sub_260F281D0(v4, v5);

  return v6;
}

id sub_260F44EE8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId);
  v2 = *(a1 + OBJC_IVAR____TtC18ProtoDataExtractor15DillProvisional_eventId + 8);

  v3 = sub_260F496E8();

  return v3;
}

id sub_260F44FBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id IngestConfig.streamIdString.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v8);
  result = v8[0];
  v3 = v8[1];
  if (v9)
  {
    v4 = v8[0];
    if (v9 == 1)
    {
      v5 = sub_260F49718();
      sub_260F34CD4(v4, v3, 1);
      return v5;
    }

    else
    {
      v6 = [v8[0] identifier];
      v7 = sub_260F49718();

      sub_260F34CD4(v4, v3, 2);
      return v7;
    }
  }

  return result;
}

void *sub_260F45148(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  (*(a2 + 16))(v10);
  v2 = v10[0];
  v3 = v10[1];
  if (!v11)
  {
    v4 = sub_260F495C8();
    sub_260F34CD4(v2, v3, 0);
    if (!v4)
    {
      sub_260F35758();
      swift_allocError();
      swift_willThrow();
      goto LABEL_9;
    }

LABEL_6:
    v2 = v4;
    goto LABEL_9;
  }

  if (v11 == 1)
  {
    v9 = 0;
    v4 = [BiomeLibrary() streamWithIdentifier:v10[0] error:&v9];
    swift_unknownObjectRelease();
    if (!v4)
    {
      v6 = v9;
      sub_260F492E8();

      swift_willThrow();
      sub_260F34CD4(v2, v3, 1);
      goto LABEL_9;
    }

    v5 = v9;
    sub_260F34CD4(v2, v3, 1);
    goto LABEL_6;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_260F452C4(uint64_t a1, uint64_t a2)
{
  v2 = IngestConfig.streamIdString.getter(a1, a2);
  MEMORY[0x2666F59D0](v2);

  return 6253922;
}

uint64_t static EventPath.path(_:)()
{

  sub_260F49668();
  type metadata accessor for EventPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for EventPath()
{
  result = qword_2810D4850;
  if (!qword_2810D4850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static EventPath.tree(_:)@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_260F2F1F8(v2);

  *a1 = v3;
  type metadata accessor for EventPath();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_260F45420()
{
  sub_260F49A78();
  MEMORY[0x2666F5D10](0);
  return sub_260F49A98();
}

uint64_t sub_260F4548C()
{
  sub_260F49A78();
  MEMORY[0x2666F5D10](0);
  return sub_260F49A98();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_260F454EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260F45534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_260F455E0()
{
  sub_260F49658();
  if (v0 <= 0x3F)
  {
    sub_260F45654();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_260F45654()
{
  if (!qword_2810D4798)
  {
    sub_260F49658();
    sub_260F2A998();
    v0 = sub_260F49888();
    if (!v1)
    {
      atomic_store(v0, &qword_2810D4798);
    }
  }
}

uint64_t getEnumTagSinglePayload for IngestError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IngestError(_WORD *result, int a2, int a3)
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

unint64_t sub_260F458CC()
{
  result = qword_27FE61038;
  if (!qword_27FE61038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE61038);
  }

  return result;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260F493E8();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_260F49408();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 bootSessionUUID];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60878, &qword_260F4AB88);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - v16;
  if (v13)
  {
    v42 = v7;
    v43 = v4;
    v44 = v12;
    v46 = a2;
    v18 = sub_260F493B8();
    v19 = *(v18 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_260F49388();

    (*(v19 + 32))(v17, v22, v18);
    v23 = *(v19 + 56);
    v23(v17, 0, 1, v18);
    sub_260F45E48(v17);
    v24 = [a1 value];
    if (v24)
    {
      v25 = v24;
      if (([v24 hasContinuousNanosecondsSinceBoot] & 1) != 0 || objc_msgSend(v25, sel_hasSuspendingNanosecondsSinceBoot))
      {
        if ([v25 hasSuspendingNanosecondsSinceBoot])
        {
          v26 = [a1 bootSessionUUID];
          v41 = &v41;
          v27 = MEMORY[0x28223BE20](v26);
          v28 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (v27)
          {
            v29 = v27;
            sub_260F49388();

            v30 = 0;
          }

          else
          {
            v30 = 1;
          }

          v23(v28, v30, 1, v18);
          [v25 suspendingNanosecondsSinceBoot];
          v38 = MEMORY[0x277D55298];
LABEL_18:
          (*(v45 + 104))(v42, *v38, v43);
          v39 = v44;
          sub_260F493F8();

          a2 = v46;
          (*(v9 + 32))(v46, v39, v8);
          v32 = 0;
          return (*(v9 + 56))(a2, v32, 1, v8);
        }

        if ([v25 hasContinuousNanosecondsSinceBoot])
        {
          v33 = [a1 bootSessionUUID];
          v41 = &v41;
          v34 = MEMORY[0x28223BE20](v33);
          v35 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (v34)
          {
            v36 = v34;
            sub_260F49388();

            v37 = 0;
          }

          else
          {
            v37 = 1;
          }

          v23(v35, v37, 1, v18);
          [v25 continuousNanosecondsSinceBoot];
          v38 = MEMORY[0x277D55290];
          goto LABEL_18;
        }
      }
    }

    v32 = 1;
    a2 = v46;
  }

  else
  {

    v31 = sub_260F493B8();
    v32 = 1;
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    sub_260F45E48(v17);
  }

  return (*(v9 + 56))(a2, v32, 1, v8);
}

uint64_t sub_260F45E48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60878, &qword_260F4AB88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MonotonicTimestamp.init(biomeTimestamp:)(uint64_t a1)
{
  v2 = sub_260F493E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260F49608();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260F495E8();
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277D20610])
  {
    (*(v8 + 96))(v11, v7);
    v13 = *(*v11 + 16);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60878, &qword_260F4AB88);
    v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v14 - 8);
    v17 = &v28 - v16;
    sub_260F495D8();
    v18 = sub_260F493B8();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = MEMORY[0x277D55298];
LABEL_5:
    (*(v3 + 104))(v6, *v19, v2);
    sub_260F493F8();
    v26 = sub_260F495F8();
    (*(*(v26 - 8) + 8))(a1, v26);
  }

  if (v12 == *MEMORY[0x277D205F8])
  {
    (*(v8 + 96))(v11, v7);
    v20 = *(*v11 + 16);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60878, &qword_260F4AB88);
    v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v21 - 8);
    v24 = &v28 - v23;
    sub_260F495D8();
    v25 = sub_260F493B8();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    v19 = MEMORY[0x277D55290];
    goto LABEL_5;
  }

  result = sub_260F499A8();
  __break(1u);
  return result;
}

uint64_t sub_260F46280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_260F49658();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for PFAEventMapping();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260F2DB10(v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = *v15;
      if (*(*v15 + 16) && (v25 = sub_260F46980(a1), (v26 & 1) != 0))
      {
        v27 = (*(v24 + 56) + 16 * v25);
        v18 = *v27;
        v28 = v27[1];
      }

      else
      {

        return 0;
      }

      return v18;
    }

    v17 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60928, &qword_260F4B0A8) + 48)];
    v18 = *v17;
    v19 = v17[1];
    (*(v5 + 16))(v11, v15, v4);
    sub_260F2F380(&qword_27FE60940);
    v20 = sub_260F496D8();
    v21 = *(v5 + 8);
    v21(v11, v4);
    if (v20)
    {
      v21(v15, v4);
      return v18;
    }
  }

  else
  {
    v18 = *v15;
    v22 = *(v15 + 1);
    sub_260F49668();
    v23 = sub_260F49648();
    (*(v5 + 8))(v9, v4);
    if (v23)
    {
      return v18;
    }
  }

  result = sub_260F499A8();
  __break(1u);
  return result;
}

id PFAIngestConfig.streamId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_260F2D984(v2, v3, v4);
}

uint64_t type metadata accessor for PFAEventMapping()
{
  result = qword_27FE61040;
  if (!qword_27FE61040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PFAIngestConfig.filteringPolicy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_260F2DC08(v4, v5);
}

uint64_t PFAIngestConfig.innerTypeBuilder.getter(uint64_t a1)
{
  v1 = sub_260F46BB0(a1);
  sub_260F26F20(v1);
  return v1;
}

uint64_t PFAIngestConfig.eventPath.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for PFAEventMapping();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_260F2DB10(v2 + *(a1 + 36), v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60928, &qword_260F4B0A8) + 48) + 8);

      v11 = sub_260F49658();
      (*(*(v11 - 8) + 32))(a2, v8, v11);
    }

    else
    {
      *a2 = sub_260F2D724(*v8);
    }

    type metadata accessor for EventPath();
  }

  else
  {
    sub_260F2DE28(v8);
    type metadata accessor for EventPath();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t PFAIngestConfig.init(streamId:eventMapping:collectionPolicy:filteringPolicy:innerTypeBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  v12 = *a3;
  v13 = *a4;
  v14 = *(a4 + 8);
  *(a7 + 20) = 0;
  *(a7 + 24) = 1;
  v15 = type metadata accessor for PFAIngestConfig();
  v16 = v15[8];
  v17 = sub_260F49658();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  *a7 = v9;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  result = sub_260F2DFD8(a2, a7 + v15[9]);
  *(a7 + v15[10]) = v12;
  v19 = a7 + v15[11];
  *v19 = v13;
  *(v19 + 8) = v14;
  v20 = (a7 + v15[12]);
  *v20 = a5;
  v20[1] = a6;
  return result;
}

uint64_t sub_260F4694C(uint64_t a1)
{
  v1 = sub_260F46BB0(a1);
  sub_260F26F20(v1);
  return v1;
}

unint64_t sub_260F46980(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_260F49658();
  sub_260F2F380(qword_2810D47B0);
  v5 = sub_260F496B8();

  return sub_260F46A04(a1, v5);
}

unint64_t sub_260F46A04(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_260F49658();
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
      sub_260F2F380(&qword_27FE60940);
      v16 = sub_260F496D8();
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

uint64_t sub_260F46BB0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_260F46BD8()
{
  sub_260F46C60();
  if (v0 <= 0x3F)
  {
    sub_260F46C90();
    if (v1 <= 0x3F)
    {
      sub_260F46CFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_260F46C60()
{
  result = qword_27FE61050;
  if (!qword_27FE61050)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27FE61050);
  }

  return result;
}

void sub_260F46C90()
{
  if (!qword_27FE61058)
  {
    sub_260F49658();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FE61058);
    }
  }
}

void sub_260F46CFC()
{
  if (!qword_27FE61060)
  {
    sub_260F46D44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE61060);
    }
  }
}

void sub_260F46D44()
{
  if (!qword_27FE61068[0])
  {
    sub_260F49658();
    sub_260F2F380(qword_2810D47B0);
    v0 = sub_260F496A8();
    if (!v1)
    {
      atomic_store(v0, qword_27FE61068);
    }
  }
}

void sub_260F46DCC()
{
  sub_260F2E3C0(319, &unk_2810D4D00);
  if (v0 <= 0x3F)
  {
    sub_260F2E2BC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PFAEventMapping();
      if (v2 <= 0x3F)
      {
        sub_260F2E3C0(319, qword_2810D4A00);
        if (v3 <= 0x3F)
        {
          sub_260F2E314();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t PFAUploader.init(config:bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for PFAUploader();
  v9 = v8[8];
  *&a4[v9] = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  *&a4[v8[9]] = MEMORY[0x277D84F90];
  v10 = v8[7];
  v11 = type metadata accessor for PFAIngestConfig();
  (*(*(v11 - 8) + 16))(&a4[v10], a1, v11);
  *a4 = a2;
  *(a4 + 1) = a3;
  v12 = v8[10];
  swift_getWitnessTable();
  result = DataExtractor.init(ingestConfig:)(a1, v11, &a4[v12]);
  v14 = &a4[v8[11]];
  *v14 = 0;
  *(v14 + 1) = 0;
  return result;
}

uint64_t PFAUploader.init(config:bundleId:innerTransformer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for PFAUploader();
  v13 = v12[8];
  *&a6[v13] = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  *&a6[v12[9]] = MEMORY[0x277D84F90];
  v14 = v12[7];
  v15 = type metadata accessor for PFAIngestConfig();
  (*(*(v15 - 8) + 16))(&a6[v14], a1, v15);
  *a6 = a2;
  *(a6 + 1) = a3;
  v16 = v12[10];
  swift_getWitnessTable();
  result = DataExtractor.init(ingestConfig:)(a1, v15, &a6[v16]);
  v18 = &a6[v12[11]];
  *v18 = a4;
  *(v18 + 1) = a5;
  return result;
}

uint64_t PFAUploader.commit()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_260F49638();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260F47238, 0, 0);
}

uint64_t sub_260F47238()
{
  v1 = v0[22];
  sub_260F49628();
  v2 = sub_260F49618();
  v3 = sub_260F498E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F24000, v2, v3, "commit()", v4, 2u);
    MEMORY[0x2666F6350](v4, -1, -1);
  }

  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[18];

  v10 = (*(v6 + 8))(v5, v7);
  v11 = *(v8 + *(v9 + 36));
  v0[23] = v11;
  v12 = v11[2];
  v0[24] = v12;
  if (v12)
  {
    v13 = v0[18];
    v14 = v0[19];
    v0[25] = 0;
    if (v11[2])
    {
      v15 = v11[4];
      v0[26] = v15;
      v16 = v11[5];
      v0[27] = v16;
      v17 = v11[6];
      v18 = v11[7];
      v19 = *(v14 + *(v13 + 32));
      sub_260F28238(v15, v16);

      v20 = sub_260F49308();
      v0[28] = v20;
      v21 = *v14;
      v22 = v14[1];
      v23 = sub_260F496E8();
      v0[29] = v23;
      v24 = sub_260F496E8();
      v0[30] = v24;

      v0[2] = v0;
      v0[3] = sub_260F47518;
      v25 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60950, &qword_260F4B168);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_260F3055C;
      v0[13] = &block_descriptor_2;
      v0[14] = v25;
      [v19 reportDataPlatformBatchedEvent:v20 forBundleID:v23 ofSchema:v24 completion:v0 + 10];
      v10 = (v0 + 2);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v10);
  }

  else
  {
    v26 = v0[22];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_260F47518()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_260F47870;
  }

  else
  {
    v3 = sub_260F47628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260F47628()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[25] + 1;
  sub_260F281D0(v0[26], v0[27]);

  if (v5 == v4)
  {
    v7 = v0[22];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[25] + 1;
    v0[25] = v10;
    v11 = v0[23];
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = v0[18];
      v13 = v0[19];
      v14 = (v11 + 32 * v10);
      v15 = v14[4];
      v0[26] = v15;
      v16 = v14[5];
      v0[27] = v16;
      v17 = v14[6];
      v18 = v14[7];
      v19 = *(v13 + *(v12 + 32));
      sub_260F28238(v15, v16);

      v20 = sub_260F49308();
      v0[28] = v20;
      v21 = *v13;
      v22 = v13[1];
      v23 = sub_260F496E8();
      v0[29] = v23;
      v24 = sub_260F496E8();
      v0[30] = v24;

      v0[2] = v0;
      v0[3] = sub_260F47518;
      v25 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60950, &qword_260F4B168);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_260F3055C;
      v0[13] = &block_descriptor_2;
      v0[14] = v25;
      [v19 reportDataPlatformBatchedEvent:v20 forBundleID:v23 ofSchema:v24 completion:v0 + 10];
      v6 = v0 + 2;
    }

    return MEMORY[0x282200938](v6);
  }
}

uint64_t sub_260F47870()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[22];
  swift_willThrow();
  sub_260F281D0(v5, v6);

  v8 = v0[1];
  v9 = v0[31];

  return v8();
}

uint64_t sub_260F47930(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260F306A8;

  return PFAUploader.commit()(a1);
}

uint64_t PBCodable.pfaSerializedData.getter()
{
  v1 = [v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_260F49328();

  return v3;
}

uint64_t sub_260F47A2C()
{
  v1 = [*v0 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_260F49328();

  return v3;
}

void *PFAUploader<A>.init(wrappingConfig:bundleId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  return sub_260F47C0C(a1, a2, a3, a4, a5, sub_260F48CFC, &unk_2873734C8, sub_260F48AE4, a6);
}

{
  return sub_260F47C0C(a1, a2, a3, a4, a5, sub_260F48CFC, &unk_2873734F0, sub_260F48AF0, a6);
}

uint64_t sub_260F47AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = sub_260F49538();
  (*(v6 + 8))(v10, a5);
  return v12;
}

void *sub_260F47C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v32 = a5;
  v33 = a8;
  v31[1] = a7;
  v34 = a3;
  v35 = a6;
  v13 = type metadata accessor for PFAIngestConfig();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = type metadata accessor for PFAUploader();
  v19 = v18[8];
  *&a9[v19] = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  *&a9[v18[9]] = MEMORY[0x277D84F90];
  v20 = *(v14 + 16);
  v20(&a9[v18[7]], a1, v13);
  v21 = v34;
  *a9 = a2;
  *(a9 + 1) = v21;
  v20(v17, a1, v13);
  v22 = v18[10];
  swift_getWitnessTable();
  DataExtractor.init(ingestConfig:)(v17, v13, &a9[v22]);
  v23 = (a1 + *(v13 + 48));
  v24 = *v23;
  v25 = v23[1];
  v35(*v23, v25);
  result = (*(v14 + 8))(a1, v13);
  if (v24)
  {
    result = swift_allocObject();
    v27 = v32;
    v28 = v33;
    result[2] = a4;
    result[3] = v27;
    result[4] = v24;
    result[5] = v25;
    v29 = &a9[v18[11]];
    *v29 = v28;
    *(v29 + 1) = result;
  }

  else
  {
    v30 = &a9[v18[11]];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  return result;
}

uint64_t sub_260F47E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20]();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13(v10);
  v14 = (*(a6 + 8))(a5, a6);
  (*(v8 + 8))(v12, a5);
  return v14;
}

uint64_t sub_260F47F18(unint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v113 = a1;
  v114 = a2;
  v6 = *(a3 + 16);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](a1);
  v106 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260F49638();
  v10 = *(v9 - 8);
  v111 = v9;
  v112 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v110 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v101 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v105 = &v101 - v17;
  MEMORY[0x28223BE20](v16);
  v107 = &v101 - v18;
  v19 = sub_260F49658();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60888, &unk_260F4ABA0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v101 - v26;
  v28 = *(a3 + 40);
  v108 = v6;
  v29 = type metadata accessor for PFAIngestConfig();
  swift_getWitnessTable();
  v30 = type metadata accessor for DataExtractor();
  v31 = v4;
  DataExtractor.getMultiEventData(data:)(v113, v114, v30, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60870, qword_260F4AB40);
  if ((*(*(v32 - 8) + 48))(v27, 1, v32) == 1)
  {
    sub_260F304F4(v27);
    v33 = v110;
    sub_260F49628();
    v34 = sub_260F49618();
    v35 = sub_260F498D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_260F24000, v34, v35, "Skipping invalid event", v36, 2u);
      MEMORY[0x2666F6350](v36, -1, -1);
    }

    return (*(v112 + 8))(v33, v111);
  }

  v38 = &v27[*(v32 + 48)];
  v39 = *v38;
  v113 = *(v38 + 1);
  v114 = v39;
  (*(v20 + 32))(v23, v27, v19);
  v40 = &v31[*(a3 + 28)];
  v41 = &v40[v29[9]];
  v42 = sub_260F46280(v23);
  if (!v43)
  {
    v51 = v109;
    sub_260F49628();
    v52 = sub_260F49618();
    v53 = sub_260F498F8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v20;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_260F24000, v52, v53, "Can't find schema name for event", v55, 2u);
      MEMORY[0x2666F6350](v55, -1, -1);

      sub_260F281D0(v114, v113);
      (*(v112 + 8))(v51, v111);
      return (*(v54 + 8))(v23, v19);
    }

    sub_260F281D0(v114, v113);
    (*(v112 + 8))(v51, v111);
    return (*(v20 + 8))(v23, v19);
  }

  v110 = v31;
  v44 = &v40[v29[11]];
  v45 = v44[8];
  v46 = v117;
  v103 = v42;
  v104 = v43;
  if (v45 > 1)
  {
    v48 = v113;
    v56 = v114;
    v101 = v19;
    sub_260F28238(v114, v113);
    v57 = v56;
    v58 = v48;
  }

  else
  {
    v47 = *v44;
    if (v45)
    {
      v48 = v113;
      v49 = sub_260F49858();
      if (v46)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v48 = v113;
      v49 = sub_260F49868();
      if (v46)
      {
LABEL_9:
        sub_260F281D0(v114, v48);

        return (*(v20 + 8))(v23, v19);
      }
    }

    v58 = v50;
    v101 = v19;
    v59 = v49;

    v57 = v59;
  }

  v60 = &v110[*(a3 + 44)];
  v61 = *v60;
  v102 = v20;
  v117 = v57;
  if (v61)
  {
    v62 = *(v60 + 1);

    v109 = v58;
    v63 = v61(v57, v58);
    if (v64 >> 60 == 15)
    {

      v65 = v107;
      sub_260F49628();
      v66 = sub_260F49618();
      v67 = sub_260F498F8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v108 = v23;
        v69 = v68;
        *v68 = 0;
        _os_log_impl(&dword_260F24000, v66, v67, "Inner type serialized data is nil", v68, 2u);
        MEMORY[0x2666F6350](v69, -1, -1);
        sub_260F26F30(v61);
        sub_260F281D0(v117, v109);

        sub_260F281D0(v114, v48);
        (*(v112 + 8))(v65, v111);
        return (*(v102 + 8))(v108, v101);
      }

      else
      {
        sub_260F26F30(v61);
        sub_260F281D0(v117, v109);

        sub_260F281D0(v114, v48);
        (*(v112 + 8))(v65, v111);
        return (*(v102 + 8))(v23, v101);
      }
    }

    else
    {
      v76 = v64;
      v112 = v63;
      v108 = v23;
      v77 = *(a3 + 36);
      v78 = *&v110[v77];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_260F3DB8C(0, v78[2] + 1, 1, v78);
      }

      v80 = v78[2];
      v79 = v78[3];
      if (v80 >= v79 >> 1)
      {
        v78 = sub_260F3DB8C((v79 > 1), v80 + 1, 1, v78);
      }

      sub_260F26F30(v61);
      sub_260F281D0(v117, v109);
      sub_260F281D0(v114, v113);
      result = (*(v102 + 8))(v108, v101);
      v78[2] = v80 + 1;
      v81 = &v78[4 * v80];
      v81[4] = v112;
      v81[5] = v76;
      v82 = v104;
      v81[6] = v103;
      v81[7] = v82;
      *&v110[v77] = v78;
    }
  }

  else if (v108 == MEMORY[0x277CC9310] && (v83 = &v40[v29[12]], (v84 = *v83) != 0))
  {
    v85 = *(v83 + 1);

    v109 = v58;
    v84(v57, v58);
    if (swift_dynamicCast())
    {
      v108 = v23;
      v86 = v102;
      v111 = v116;
      v112 = v115;
      v87 = *(a3 + 36);
      v88 = *&v110[v87];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v89 = v113;
      }

      else
      {
        v89 = v113;
        v88 = sub_260F3DB8C(0, v88[2] + 1, 1, v88);
      }

      v90 = v117;
      v92 = v88[2];
      v91 = v88[3];
      if (v92 >= v91 >> 1)
      {
        v88 = sub_260F3DB8C((v91 > 1), v92 + 1, 1, v88);
        v90 = v117;
      }

      sub_260F281D0(v90, v109);
      sub_260F26F30(v84);
      sub_260F281D0(v114, v89);
      result = (*(v86 + 8))(v108, v101);
      v88[2] = v92 + 1;
      v93 = &v88[4 * v92];
      v94 = v111;
      v93[4] = v112;
      v93[5] = v94;
      v95 = v104;
      v93[6] = v103;
      v93[7] = v95;
      *&v110[v87] = v88;
    }

    else
    {

      v96 = v105;
      sub_260F49628();
      v97 = sub_260F49618();
      v98 = sub_260F498F8();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = v23;
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_260F24000, v97, v98, "Config inner type serialized data is nil", v100, 2u);
        MEMORY[0x2666F6350](v100, -1, -1);
        sub_260F281D0(v117, v109);
        sub_260F26F30(v84);

        sub_260F281D0(v114, v48);
        (*(v112 + 8))(v96, v111);
        return (*(v102 + 8))(v99, v101);
      }

      else
      {
        sub_260F281D0(v117, v109);
        sub_260F26F30(v84);

        sub_260F281D0(v114, v48);
        (*(v112 + 8))(v96, v111);
        return (*(v102 + 8))(v23, v101);
      }
    }
  }

  else
  {
    v70 = *(a3 + 36);
    v71 = *&v110[v70];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v71 = sub_260F3DB8C(0, v71[2] + 1, 1, v71);
    }

    v73 = v71[2];
    v72 = v71[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_260F3DB8C((v72 > 1), v73 + 1, 1, v71);
    }

    sub_260F281D0(v114, v48);
    result = (*(v102 + 8))(v23, v101);
    v71[2] = v73 + 1;
    v74 = &v71[4 * v73];
    v74[4] = v117;
    v74[5] = v58;
    v75 = v104;
    v74[6] = v103;
    v74[7] = v75;
    *&v110[v70] = v71;
  }

  return result;
}

void sub_260F48AFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for PFAIngestConfig();
  if (v2 <= 0x3F)
  {
    sub_260F30BC8();
    if (v3 <= 0x3F)
    {
      sub_260F48C84(319, &unk_27FE61170, &qword_27FE60EE8, qword_260F4BFC0, MEMORY[0x277D83940]);
      if (v4 <= 0x3F)
      {
        swift_getWitnessTable();
        type metadata accessor for DataExtractor();
        if (v5 <= 0x3F)
        {
          sub_260F48C84(319, &qword_2810D4770, &qword_27FE60930, qword_260F4BF30, MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_260F48C84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t SELFIngestConfig.init(streamId:dataVersion:monotonicTimestampPath:eventPath:collectionPolicy:filteringPolicy:innerTypeBuilder:requestLinkConfigs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *(a1 + 16);
  v16 = *a5;
  v17 = *a6;
  v18 = *(a6 + 8);
  *a9 = *a1;
  *(a9 + 16) = v15;
  *(a9 + 20) = a2;
  *(a9 + 24) = BYTE4(a2) & 1;
  v19 = type metadata accessor for SELFIngestConfig();
  sub_260F48DF4(a3, a9 + v19[8]);
  result = sub_260F48E64(a4, a9 + v19[9]);
  *(a9 + v19[10]) = v16;
  v21 = a9 + v19[11];
  *v21 = v17;
  *(v21 + 8) = v18;
  v22 = (a9 + v19[12]);
  *v22 = a7;
  v22[1] = a8;
  *(a9 + v19[13]) = a10;
  return result;
}

uint64_t sub_260F48DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE60F20, &qword_260F4B0A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260F48E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventPath();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id SELFIngestConfig.streamId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_260F2D984(v2, v3, v4);
}

uint64_t sub_260F48F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventPath();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SELFIngestConfig.filteringPolicy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_260F2DC08(v4, v5);
}

uint64_t SELFIngestConfig.innerTypeBuilder.getter(uint64_t a1)
{
  v1 = sub_260F46BB0(a1);
  sub_260F26F20(v1);
  return v1;
}

uint64_t SELFIngestConfig.requestLinks.getter(uint64_t a1)
{
  sub_260F49070(a1);
}

uint64_t sub_260F49048(uint64_t a1)
{
  sub_260F49070(a1);
}

void sub_260F49090()
{
  sub_260F2E3C0(319, &unk_2810D4D00);
  if (v0 <= 0x3F)
  {
    sub_260F49234(319, &qword_2810D47A8, MEMORY[0x277D04648], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EventPath();
      if (v2 <= 0x3F)
      {
        sub_260F2E3C0(319, qword_2810D4A00);
        if (v3 <= 0x3F)
        {
          sub_260F2E314();
          if (v4 <= 0x3F)
          {
            sub_260F49234(319, &qword_2810D47A0, type metadata accessor for RequestLinkConfig, MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_260F49234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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