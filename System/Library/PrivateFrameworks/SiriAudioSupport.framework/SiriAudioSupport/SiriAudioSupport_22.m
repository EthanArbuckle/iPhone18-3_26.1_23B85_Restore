uint64_t PodcastShowEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastShowEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastShowEntity()
{
  result = qword_2800740A0;
  if (!qword_2800740A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2664B8164(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2664B81F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2664B8280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastShowEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2664B82C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

Swift::UInt64_optional __swiftcall MPMediaLibrary.persistentID(fromSiriSyncID:)(Swift::String fromSiriSyncID)
{
  v2 = v1;
  object = fromSiriSyncID._object;
  countAndFlagsBits = fromSiriSyncID._countAndFlagsBits;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E02A8();
  v11 = [v2 entityWithSiriSyncIdentifier_];

  if (v11)
  {
    v12 = [v11 persistentID];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v13, v5);

    v14 = sub_2664DFE18();
    v15 = sub_2664E06D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_2662A320C(countAndFlagsBits, object, &v20);
      _os_log_impl(&dword_26629C000, v14, v15, "MPMediaLibrary#persistantID Failed to get mediaEntity by querying with siriSyncID: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v12 = 0;
  }

  v18 = v11 == 0;
  v19 = v12;
  result.value = v19;
  result.is_nil = v18;
  return result;
}

uint64_t sub_2664B85EC(uint64_t a1, void *a2)
{
  v4 = sub_2664DF398();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = v43 - v10;
  v50 = a1;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v52 = (v9 + 32);
  v47 = v9;
  v43[2] = v9 + 40;

  v16 = 0;
  v44 = v15;
  v45 = a1 + 56;
  v46 = a2;
  v48 = v4;
  while (v14)
  {
LABEL_11:
    v20 = (*(v50 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
    v21 = *v20;
    v22 = v20[1];

    v23 = v49;
    sub_2664DF388();
    v24 = v8;
    v51 = *v52;
    v51(v8, v23, v4);
    v25 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *a2;
    v53 = v27;
    v29 = sub_2662A3E98(v21, v22);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_266454B64();
      }
    }

    else
    {
      sub_2664521A4(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2662A3E98(v21, v22);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
    }

    v8 = v24;
    v36 = v53;
    if (v33)
    {
      v17 = v53[7] + *(v47 + 72) * v29;
      v4 = v48;
      (*(v47 + 40))(v17, v24, v48);
    }

    else
    {
      v53[(v29 >> 6) + 8] |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v21;
      v37[1] = v22;
      v38 = v36[7] + *(v47 + 72) * v29;
      v4 = v48;
      v51(v38, v24, v48);
      v39 = v36[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_23;
      }

      v36[2] = v41;
    }

    v14 &= v14 - 1;
    v18 = v46;
    *v46 = v36;
    a2 = v18;

    v15 = v44;
    v11 = v45;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664B8938()
{
  result = sub_2662C46F0(&unk_2877E54F0);
  qword_280F90D70 = result;
  return result;
}

uint64_t sub_2664B8960()
{
  v0 = sub_2662C3A68(&unk_2877E1320);
  result = swift_arrayDestroy();
  off_280F90D88 = v0;
  return result;
}

uint64_t sub_2664B89AC()
{
  result = sub_26639EED8(&unk_2877E2D88);
  qword_280F90DB0 = result;
  return result;
}

uint64_t sub_2664B89D4()
{
  result = sub_26639EED8(&unk_2877E2DF8);
  qword_280F90D98 = result;
  return result;
}

uint64_t sub_2664B89FC()
{
  result = sub_26639EED8(&unk_2877E2E40);
  qword_280F90DD0 = result;
  return result;
}

uint64_t sub_2664B8A24()
{
  v0 = sub_26639EB98(&unk_2877E1360);
  result = swift_arrayDestroy();
  qword_280F91D00 = v0;
  return result;
}

unint64_t sub_2664B8A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB480;
  *(inited + 32) = 0xD000000000000019;
  *(inited + 40) = 0x80000002664F0EF0;
  v7 = *v2;
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {
    v10 = sub_2662A3E98(a1, a2);
    v9 = 0;
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000002664F0F10;
  v13 = v3[1];
  if (*(v13 + 16))
  {
    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v8 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0x4674726F70707573;
  *(inited + 136) = 0xEB0000000067616CLL;
  v16 = 0;
  if (sub_2663CD060(a1, a2, v3[2]))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(inited + 144) = v17;
  *(inited + 168) = v12;
  *(inited + 176) = 0x466E726F63696E75;
  *(inited + 184) = 0xEB0000000067616CLL;
  if (sub_2663CD060(a1, a2, v3[3]))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  *(inited + 192) = v18;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x80000002664F0F30;
  if (sub_2663CD060(a1, a2, v3[4]))
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  *(inited + 240) = v19;
  *(inited + 264) = v12;
  *(inited + 272) = 825389430;
  *(inited + 280) = 0xE400000000000000;
  v20 = v3[5];
  if (*(v20 + 16))
  {
    v21 = sub_2662A3E98(a1, a2);
    if (v22)
    {
      v16 = *(*(v20 + 56) + 8 * v21);
    }
  }

  *(inited + 312) = v12;
  *(inited + 288) = v16;
  v23 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v23;
}

unint64_t sub_2664B8CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[1];
  v9 = 0;
  v10 = 0;
  if (*(v8 + 16))
  {
    v11 = sub_2662A3E98(a1, a2);
    v10 = 0;
    if (v12)
    {
      v10 = *(*(v8 + 56) + 8 * v11);
    }
  }

  *(a3 + 96) = v10;
  v13 = *v4;
  if (*(*v4 + 16))
  {
    v14 = sub_2662A3E98(a1, a2);
    if (v15)
    {
      v9 = *(*(v13 + 56) + 8 * v14);
    }
  }

  *(a3 + 120) = v9;
  v16 = 0;
  if (sub_2663CD060(a1, a2, v4[2]))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  *(a3 + 104) = v17;
  if (sub_2663CD060(a1, a2, v4[3]))
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  *(a3 + 176) = v18;
  result = sub_2663CD060(a1, a2, v4[4]);
  if (result)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  *(a3 + 16) = v20;
  v21 = v4[5];
  if (*(v21 + 16))
  {
    result = sub_2662A3E98(a1, a2);
    if (v22)
    {
      v16 = *(*(v21 + 56) + 8 * result);
    }
  }

  *(a3 + 32) = v16;
  return result;
}

uint64_t sub_2664B8DEC(uint64_t *a1, uint64_t a2, char a3, uint64_t a4)
{
  if (*(a4 + 16) && (v7 = sub_2662A3E98(*a1, a1[1]), (v8 & 1) != 0))
  {
    v9 = *(*(a4 + 56) + 8 * v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_266484DB4(a2, a3 & 1, v9);

  return v10 & 1;
}

uint64_t sub_2664B8E74(uint64_t result, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v6 = *result;
  v7 = *(result + 8);
  v51 = v7;
  v52 = v6;
  v49 = a3;
  v50 = a4;
  if (a2 && *(a2 + 16) && (result = sub_2662A3E98(v6, v7), (v9 & 1) != 0))
  {
    v10 = *(*(a2 + 56) + 8 * result);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v11 = 0.05;
  v12 = &qword_2664EF818[253];
  v13 = 0.05;
  v53 = *(v10 + 16);
  if (v53)
  {
    v48 = a5;
    v14 = 0;
    v56 = v10 + 32;
    while (v14 < *(v10 + 16))
    {
      v15 = v12;
      v16 = (v56 + 16 * v14);
      v17 = *v16;
      v18 = v16[1];
      v19 = qword_280F90D80;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = off_280F90D88;
      if (*(off_280F90D88 + 2))
      {
        v21 = *(off_280F90D88 + 5);
        sub_2664E0E68();
        sub_2664E0368();
        v22 = sub_2664E0EB8();
        v23 = -1 << v20[32];
        v24 = v22 & ~v23;
        if ((*&v20[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = (*(v20 + 6) + 16 * v24);
            v27 = *v26 == v17 && v26[1] == v18;
            if (v27 || (sub_2664E0D88() & 1) != 0)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*&v20[((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v24) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v12 = v15;
          v13 = v15[150];
          goto LABEL_23;
        }
      }

LABEL_8:
      ++v14;

      v12 = v15;
      if (v14 == v53)
      {
        v13 = 0.05;
LABEL_23:
        a5 = v48;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v54 = 0xD000000000000017;
    v55 = 0x80000002664F0E70;
    MEMORY[0x28223BE20](result);
    v47 = &v54;
    v28 = sub_2662AA720(sub_2662AA7CC, v46, v10);
    v29 = v12[150];
    if (v28)
    {
      v30 = v12[150];
    }

    else
    {
      v30 = 0.05;
    }

    v54 = 0xD000000000000019;
    v55 = 0x80000002664F0E90;
    MEMORY[0x28223BE20](v28);
    v47 = &v54;
    v31 = sub_2662AA720(sub_2663A6860, v46, v10);
    if (v31)
    {
      v11 = v29;
    }

    v54 = 0xD000000000000014;
    v55 = 0x80000002664F0ED0;
    MEMORY[0x28223BE20](v31);
    v47 = &v54;
    v32 = sub_2662AA720(sub_2663A6860, v46, v10);

    if (v32)
    {
      v11 = v11 * 0.5;
      v30 = v30 * 0.5;
      v13 = v13 * 0.5;
    }

    v33 = v49;
    v34 = *v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v33;
    *v33 = 0x8000000000000000;
    v37 = v51;
    v36 = v52;
    sub_26634F084(v52, v51, isUniquelyReferenced_nonNull_native, v13);
    v38 = *v33;
    *v33 = v54;

    v39 = v50;
    v40 = *v50;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v39;
    *v39 = 0x8000000000000000;
    sub_26634F084(v36, v37, v41, v30);
    v42 = *v39;
    *v39 = v54;

    v43 = *a5;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *a5;
    *a5 = 0x8000000000000000;
    sub_26634F084(v36, v37, v44, v11);
    v45 = *a5;
    *a5 = v54;
  }

  return result;
}

uint64_t sub_2664B92BC()
{
  if (qword_280F90DC0 != -1)
  {
    swift_once();
  }
}

void *sub_2664B9320(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2664B9718(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_2664B93B0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2664B9EA0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2664B9440(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2664BA24C(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_2664B94DC(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_2664B9DB4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2664B9554(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_2664B9718(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_2664B9320(v12, v6, a2, a1);

    MEMORY[0x266784AD0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_2664B9718(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_2664E0E68();

      sub_2664E0368();
      v27 = sub_2664E0EB8();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_2664E0D88() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_2664CF388(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_2664E0E68();

      sub_2664E0368();
      v41 = sub_2664E0EB8();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_2664E0D88() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664B9AF4(uint64_t a1)
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
    result = sub_2664B9DB4(v6, v4, v2);
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
  v10 = sub_2664B94DC(v9, v4, v2);
  result = MEMORY[0x266784AD0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2664B9C54(uint64_t a1)
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
    result = sub_266484CC8(v6, v4, v2);
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
  v10 = sub_266484AF0(v9, v4, v2);
  result = MEMORY[0x266784AD0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2664B9DB4(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(a3 + 56) + 8 * v11) == 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664D0018(result, a2, v4, a3);
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
      return sub_2664D0018(result, a2, v4, a3);
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

uint64_t sub_2664B9EA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_2664CF388(v21, a2, v22, v19);
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

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BA014@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_2664BA02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_2664DF398();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v24 - v18;
  v20 = *a4;
  if (*(*a4 + 16))
  {
    result = sub_2662A3E98(a1, a2);
    if (v21)
    {
      v22 = *(v20 + 56) + *(v12 + 72) * result;
      v25 = a1;
      v23 = *(v12 + 16);
      v23(v16, v22, v11);
      (*(v12 + 32))(v19, v16, v11);
      HistoryStats.addInstance(date:)();
      v23(v10, v19, v11);
      (*(v12 + 56))(v10, 0, 1, v11);

      sub_266449250(v10, v25, a2);
      return (*(v12 + 8))(v19, v11);
    }
  }

  return result;
}

uint64_t sub_2664BA24C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43[0] = a2;
  v44 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v8 = (v43 - v7);
  v58 = sub_2664DF398();
  v9 = *(*(v58 - 8) + 64);
  result = MEMORY[0x28223BE20](v58);
  v57 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v55 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46 = 0;
  v47 = v11 + 16;
  v48 = a4;
  v49 = v11;
  v51 = (v11 + 8);
  v52 = v20;
  v53 = v8;
  v45 = a4 + 56;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v56 = (v19 - 1) & v19;
LABEL_14:
    v24 = v21 | (v13 << 6);
    v25 = v55[7];
    v26 = (v55[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v49 + 72);
    v54 = v24;
    v30 = *(v49 + 16);
    v31 = v57;
    v32 = v58;
    v30(v57, v25 + v29 * v24, v58);
    *v8 = v27;
    v8[1] = v28;
    v30(v8 + *(v50 + 48), v31, v32);
    v33 = v48;
    if (!*(v48 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    v34 = *(v48 + 40);
    sub_2664E0E68();
    swift_bridgeObjectRetain_n();
    sub_2664E0368();
    v35 = sub_2664E0EB8();
    v36 = -1 << *(v33 + 32);
    v37 = v35 & ~v36;
    v38 = v45;
    if ((*(v45 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
    {
      v39 = ~v36;
      while (1)
      {
        v40 = (*(v33 + 48) + 16 * v37);
        v41 = *v40 == v27 && v40[1] == v28;
        if (v41 || (sub_2664E0D88() & 1) != 0)
        {
          break;
        }

        v37 = (v37 + 1) & v39;
        if (((*(v38 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v8 = v53;
      sub_2662A9238(v53, &qword_2800729E0, &qword_2664E5308);
      (*v51)(v57, v58);

      *(v44 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      v42 = __OFADD__(v46++, 1);
      v20 = v52;
      v19 = v56;
      if (v42)
      {
        __break(1u);
        return sub_2664CFC98(v44, v43[0], v46, v55);
      }
    }

    else
    {
LABEL_6:
      v8 = v53;
      sub_2662A9238(v53, &qword_2800729E0, &qword_2664E5308);
      (*v51)(v57, v58);

      v20 = v52;
      v19 = v56;
    }
  }

  v22 = v13;
  while (1)
  {
    v13 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_2664CFC98(v44, v43[0], v46, v55);
    }

    v23 = v15[v13];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v56 = (v23 - 1) & v23;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BA650(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2664B9440(v13, v7, a1, a2);
      MEMORY[0x266784AD0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2664BA24C((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2664BA810(uint64_t a1, uint64_t a2)
{
  v327 = sub_2664DF398();
  v329 = *(v327 - 8);
  v4 = *(v329 + 64);
  MEMORY[0x28223BE20](v327);
  v326 = v281 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_2664DE438();
  v303 = *(v304 - 8);
  v6 = *(v303 + 64);
  v7 = MEMORY[0x28223BE20](v304);
  v291 = v281 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v302 = v281 - v9;
  v328 = sub_2664DFE38();
  v330 = *(v328 - 8);
  v10 = *(v330 + 64);
  v11 = MEMORY[0x28223BE20](v328);
  v297 = v281 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v295 = v281 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v305 = v281 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v301 = v281 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v290 = v281 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v298 = v281 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v314 = v281 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = v281 - v25;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  v27 = *(*(v307 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v307);
  v296 = v281 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v294 = v281 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v300 = v281 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v316 = (v281 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v320 = v281 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v293 = v281 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v292 = (v281 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v299 = (v281 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = v281 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v306 = v281 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v51 = v281 - v50;
  MEMORY[0x28223BE20](v49);
  v321 = v281 - v52;
  v336 = MEMORY[0x277D84F98];
  v315 = a1;
  sub_2664B85EC(a1, &v336);
  v324 = 0;
  v322 = a2;
  v53 = *(a2 + 16);
  if (!v53)
  {
    goto LABEL_11;
  }

  v54 = v322 + 32;
  v55 = *(a2 + 16);
  while (1)
  {
    sub_2662A5550(v54, &v332);
    sub_2662A5550(&v332, v331);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v332);
    v54 += 40;
    if (!--v55)
    {
      goto LABEL_11;
    }
  }

  sub_2662A8618(&v332, &v334);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v312 = 0;
    v313 = 0;
    goto LABEL_12;
  }

  v313 = *(&v332 + 1);
  v56 = v332;
  v312 = v333;
  if (!v332)
  {
LABEL_12:
    v69 = sub_2664DEC48();
    v70 = *(*(v69 - 8) + 56);
    LODWORD(v319) = 1;
    v70(v321, 1, 1, v69);
    v56 = 0;
LABEL_13:
    v62 = v328;
    goto LABEL_14;
  }

  v57 = sub_2664DEFF8();
  if (!*(v56 + 16))
  {

    v184 = sub_2664DEC48();
    (*(*(v184 - 8) + 56))(v321, 1, 1, v184);
    LODWORD(v319) = 0;
    goto LABEL_13;
  }

  v59 = sub_2662A3E98(v57, v58);
  v61 = v60;

  v62 = v328;
  if (v61)
  {
    v63 = *(v56 + 56);
    v64 = sub_2664DEC48();
    v65 = *(v64 - 8);
    v66 = v65;
    v67 = v63 + *(v65 + 72) * v59;
    v68 = v321;
    (*(v65 + 16))(v321, v67, v64);

    (*(v66 + 56))(v68, 0, 1, v64);
  }

  else
  {

    v185 = sub_2664DEC48();
    (*(*(v185 - 8) + 56))(v321, 1, 1, v185);
  }

  LODWORD(v319) = 0;
LABEL_14:
  v71 = v330;
  v325 = v56;
  if (qword_280F914E8 == -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    swift_once();
LABEL_15:
    v72 = __swift_project_value_buffer(v62, qword_280F914F0);
    swift_beginAccess();
    v73 = *(v71 + 16);
    v311 = v72;
    v310 = v71 + 16;
    v309 = v73;
    v73(v26, v72, v62);
    sub_2664C0484(v321, v51);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v334 = v77;
      *v76 = 136315138;
      sub_2664C0484(v51, v306);
      v78 = sub_2664E0318();
      v80 = v79;
      sub_2662A9238(v51, &qword_2800729C8, &unk_2664E52E0);
      v81 = sub_2662A320C(v78, v80, &v334);
      v71 = v330;

      *(v76 + 4) = v81;
      _os_log_impl(&dword_26629C000, v74, v75, "CompoundSignal#activeScores current foregroundBundleMap is %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v77);
      v82 = v77;
      v62 = v328;
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    else
    {

      sub_2662A9238(v51, &qword_2800729C8, &unk_2664E52E0);
    }

    v308 = *(v71 + 8);
    v308(v26, v62);
    sub_2664C0484(v321, v46);
    v83 = sub_2664DEC48();
    v84 = *(v83 - 8);
    v85 = *(v84 + 48);
    v318 = v84 + 48;
    v317 = v85;
    v86 = v85(v46, 1, v83);
    v87 = MEMORY[0x277D60188];
    v88 = v325;
    v323 = v83;
    if (v86 == 1)
    {
      goto LABEL_19;
    }

    v287 = *(v84 + 88);
    v89 = v287(v46, v83);
    if (v89 != *v87)
    {
      (*(v84 + 8))(v46, v83);
      goto LABEL_31;
    }

    v282 = v89;
    v283 = v84 + 88;
    v90 = *(v84 + 96);
    v281[1] = v84 + 96;
    v281[0] = v90;
    v90(v46, v83);
    v91 = *v46;

    v93 = v324;
    v94 = sub_2664B9C54(v92);

    v95 = sub_2664877AC(v94);
    v97 = v96;

    v98 = sub_2664B9AF4(v91);
    v324 = v93;

    v286 = sub_2664877AC(v98);
    v99 = v84;
    v101 = v100;

    v102 = v314;
    v309(v314, v311, v62);

    v103 = sub_2664DFE18();
    LODWORD(v93) = sub_2664E06C8();

    v284 = v93;
    v104 = os_log_type_enabled(v103, v93);
    v289 = v101;
    v285 = v95;
    if (v104)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v288 = v99;
      v107 = v106;
      *&v332 = v106;
      *v105 = 136315394;
      v334 = v95;
      v335 = v97;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v108 = sub_2664E0318();
      v110 = sub_2662A320C(v108, v109, &v332);

      *(v105 + 4) = v110;
      v111 = v328;
      *(v105 + 12) = 2080;
      v334 = v286;
      v335 = v101;

      v112 = sub_2664E0318();
      v114 = sub_2662A320C(v112, v113, &v332);

      *(v105 + 14) = v114;
      _os_log_impl(&dword_26629C000, v103, v284, "CompoundSignal#activeScores current foregroundBundleId is %s and last foregroundBundleId is %s", v105, 0x16u);
      swift_arrayDestroy();
      v84 = v288;
      MEMORY[0x266784AD0](v107, -1, -1);
      v115 = v105;
      v88 = v325;
      MEMORY[0x266784AD0](v115, -1, -1);

      v308(v102, v111);
      v116 = v111;
      if (!v97)
      {
        goto LABEL_29;
      }
    }

    else
    {

      v308(v102, v62);
      v84 = v99;
      v116 = v62;
      if (!v97)
      {
LABEL_29:
        v83 = v323;
        if (!v289)
        {
          goto LABEL_30;
        }

        goto LABEL_80;
      }
    }

    v117 = v302;
    sub_2664DE428();
    v118 = v285;
    sub_2664BA02C(v285, v97, v117, &v336);
    v119 = *(v303 + 8);
    v120 = v304;
    v119(v117, v304);
    sub_2664DE428();
    sub_2664BA02C(v118, v97, v117, &v336);

    v119(v117, v120);
    v83 = v323;
    if (!v289)
    {
      goto LABEL_30;
    }

    if (v118 == v286 && v97 == v289)
    {

LABEL_30:

      v62 = v116;
      goto LABEL_31;
    }

    v168 = sub_2664E0D88();

    if (v168)
    {
      goto LABEL_30;
    }

LABEL_80:
    if (v319)
    {
      v169 = 1;
      v46 = v299;
      v170 = v298;
      v171 = v292;
      v62 = v116;
    }

    else
    {

      v174 = sub_2664DF018();
      v46 = v299;
      v171 = v292;
      v62 = v116;
      if (*(v88 + 16))
      {
        v176 = sub_2662A3E98(v174, v175);
        v178 = v177;

        if (v178)
        {
          v83 = v323;
          (*(v84 + 16))(v46, *(v88 + 56) + *(v84 + 72) * v176, v323);

          v169 = 0;
        }

        else
        {

          v169 = 1;
          v83 = v323;
        }
      }

      else
      {

        v169 = 1;
      }

      v170 = v298;
    }

    (*(v84 + 56))(v46, v169, 1, v83);
    v309(v170, v311, v62);
    sub_2664C0484(v46, v171);
    v187 = sub_2664DFE18();
    v188 = sub_2664E06C8();
    if (os_log_type_enabled(v187, v188))
    {
      v189 = swift_slowAlloc();
      v190 = v171;
      v191 = swift_slowAlloc();
      v334 = v191;
      *v189 = 136315138;
      sub_2664C0484(v171, v306);
      v192 = sub_2664E0318();
      v194 = v193;
      sub_2662A9238(v190, &qword_2800729C8, &unk_2664E52E0);
      v195 = sub_2662A320C(v192, v194, &v334);

      *(v189 + 4) = v195;
      _os_log_impl(&dword_26629C000, v187, v188, "CompoundSignal#activeScores foreground recency map is %s", v189, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v191);
      v46 = v299;
      MEMORY[0x266784AD0](v191, -1, -1);
      v196 = v189;
      v83 = v323;
      MEMORY[0x266784AD0](v196, -1, -1);

      v197 = v298;
    }

    else
    {

      sub_2662A9238(v171, &qword_2800729C8, &unk_2664E52E0);
      v197 = v170;
    }

    v308(v197, v62);
    v198 = v293;
    sub_2664C0484(v46, v293);
    v199 = v317(v198, 1, v83);
    v88 = v325;
    if (v199 == 1)
    {
      sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);

      sub_2662A9238(v198, &qword_2800729C8, &unk_2664E52E0);
      goto LABEL_31;
    }

    v200 = v287(v198, v83);
    if (v200 != v282)
    {
      sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);

      (*(v84 + 8))(v198, v83);
      goto LABEL_31;
    }

    (v281[0])(v198, v83);
    v201 = *v198;
    if (!*(*v198 + 16))
    {
      v270 = *v198;

LABEL_19:
      sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);
      goto LABEL_31;
    }

    v202 = sub_2662A3E98(v286, v289);
    if ((v203 & 1) == 0)
    {

      goto LABEL_19;
    }

    v288 = v84;
    v204 = v62;
    v205 = *(*(v201 + 56) + 8 * v202);

    v206 = v290;
    v309(v290, v311, v204);
    v207 = sub_2664DFE18();
    v208 = sub_2664E06C8();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v334 = v210;
      *v209 = 136315138;
      *&v332 = v205;
      v211 = sub_2664E0D48();
      v213 = sub_2662A320C(v211, v212, &v334);

      *(v209 + 4) = v213;
      _os_log_impl(&dword_26629C000, v207, v208, "CompoundSignal#activeScores last foreground elaspsed time is for common.foregroundAppRecency  %s", v209, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v210);
      MEMORY[0x266784AD0](v210, -1, -1);
      v214 = v299;
      MEMORY[0x266784AD0](v209, -1, -1);

      v308(v290, v204);
      v215 = v291;
      v88 = v325;
    }

    else
    {

      v308(v206, v204);
      v215 = v291;
      v88 = v325;
      v214 = v46;
    }

    sub_2664DE428();
    v271 = v302;
    sub_2664DE398();
    v272 = *(v303 + 8);
    v273 = v215;
    v274 = v304;
    v272(v273, v304);
    sub_2664BA02C(v286, v289, v271, &v336);

    v272(v271, v274);
    sub_2662A9238(v214, &qword_2800729C8, &unk_2664E52E0);
    v62 = v328;
    v83 = v323;
    v84 = v288;
LABEL_31:
    if (!v53)
    {
      v125 = 0;
LABEL_50:
      v322 = 0;
      v129 = 0;
      goto LABEL_51;
    }

    v121 = v322 + 32;
    v122 = v322 + 32;
    v123 = v53;
    while (1)
    {
      sub_2662A5550(v122, &v332);
      sub_2662A5550(&v332, v331);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      type metadata accessor for NowPlayingAppSignal();
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v332);
      v122 += 40;
      if (!--v123)
      {
        v124 = 0;
        goto LABEL_40;
      }
    }

    sub_2662A8618(&v332, &v334);
    if (swift_dynamicCast())
    {
      v124 = v332;
    }

    else
    {
      v124 = 0;
    }

LABEL_40:
    v62 = v328;
    while (1)
    {
      sub_2662A5550(v121, &v332);
      sub_2662A5550(&v332, v331);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v332);
      v121 += 40;
      if (!--v53)
      {
        v126 = 0;
        v127 = 1;
        goto LABEL_47;
      }
    }

    sub_2662A8618(&v332, &v334);
    v128 = swift_dynamicCast();
    v127 = v128 ^ 1;
    if (v128)
    {
      v126 = v332;
    }

    else
    {
      v126 = 0;
    }

LABEL_47:
    v88 = v325;
    v83 = v323;
    v125 = v124;
    if (!v124)
    {
      goto LABEL_50;
    }

    v129 = *(v124 + 3);
    if (v129)
    {
      if (v127)
      {
        goto LABEL_50;
      }

      v322 = *(v124 + 2);
      v160 = qword_280F90D68;

      if (v160 != -1)
      {
        swift_once();
      }

      v161 = sub_2663CD158(v126, qword_280F90D70);
      v162 = v301;
      if (v161)
      {
        v309(v301, v311, v62);

        v163 = sub_2664DFE18();
        v164 = sub_2664E06C8();

        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v166 = swift_slowAlloc();
          v334 = v166;
          *v165 = 136315138;
          v167 = v322;
          *(v165 + 4) = sub_2662A320C(v322, v129, &v334);
          _os_log_impl(&dword_26629C000, v163, v164, "CompoundSignal#activeScores currently playing: %s", v165, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v166);
          MEMORY[0x266784AD0](v166, -1, -1);
          MEMORY[0x266784AD0](v165, -1, -1);

          v308(v301, v62);
          v83 = v323;
        }

        else
        {

          v308(v162, v62);
          v83 = v323;
          v167 = v322;
        }

        v186 = v302;
        sub_2664DE428();
        sub_2664BA02C(v167, v129, v186, &v336);

        (*(v303 + 8))(v186, v304);
      }

      else
      {

        v322 = 0;
        v129 = 0;
      }

      v125 = v124;
    }

    else
    {
      v322 = 0;
    }

LABEL_51:
    v314 = v125;
    if (v319)
    {
      v130 = 1;
    }

    else
    {

      sub_2664DEEF8();
      v131 = sub_2664DEEE8();
      if (*(v88 + 16))
      {
        v133 = sub_2662A3E98(v131, v132);
        v135 = v134;

        if (v135)
        {
          v83 = v323;
          (*(v84 + 16))(v320, *(v88 + 56) + *(v84 + 72) * v133, v323);

          v130 = 0;
        }

        else
        {

          v130 = 1;
          v83 = v323;
        }
      }

      else
      {

        v130 = 1;
      }
    }

    v136 = *(v84 + 56);
    v137 = v320;
    v136(v320, v130, 1, v83);
    v138 = v137;
    v139 = v316;
    sub_2664C0484(v138, v316);
    if (v317(v139, 1, v83) == 1)
    {

      sub_2664C04F4(v88);
      v140 = v139;
      goto LABEL_60;
    }

    v141 = *(v84 + 88);
    v301 = (v84 + 88);
    v299 = v141;
    v142 = v141(v139, v83);
    if (v142 != *MEMORY[0x277D60188])
    {

      sub_2664C04F4(v88);
      (*(v84 + 8))(v139, v83);
      goto LABEL_125;
    }

    LODWORD(v298) = v142;
    v288 = v84;
    v143 = *(v84 + 96);
    v293 = v84 + 96;
    v292 = v143;
    v143(v139, v83);
    v144 = *v139;
    v145 = v305;
    v309(v305, v311, v62);

    v146 = sub_2664DFE18();
    v147 = sub_2664E06C8();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v334 = v149;
      *v148 = 136315138;
      v150 = sub_2664E01D8();
      v152 = sub_2662A320C(v150, v151, &v334);

      *(v148 + 4) = v152;
      v62 = v328;
      _os_log_impl(&dword_26629C000, v146, v147, "CompoundSignal#activeScores last now playing map is %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
      MEMORY[0x266784AD0](v149, -1, -1);
      MEMORY[0x266784AD0](v148, -1, -1);

      v153 = v305;
    }

    else
    {

      v153 = v145;
    }

    v308(v153, v62);
    v154 = v324;
    v155 = sub_2664B9C54(v144);
    v324 = v154;

    v156 = sub_2664877AC(v155);
    v158 = v157;

    if (!v158)
    {

      sub_2664C04F4(v325);
      goto LABEL_125;
    }

    v159 = v325;
    if (v129)
    {
      if (v156 == v322 && v158 == v129)
      {

LABEL_83:
        sub_2664C04F4(v159);

        goto LABEL_125;
      }

      v172 = sub_2664E0D88();

      if (v172)
      {
        goto LABEL_83;
      }
    }

    v328 = v156;
    if (v319)
    {
      v173 = 1;
      v46 = v300;
    }

    else
    {

      sub_2664DF078();
      v179 = sub_2664DF068();
      v46 = v300;
      if (*(v159 + 16))
      {
        v181 = sub_2662A3E98(v179, v180);
        v183 = v182;

        if (v183)
        {
          (*(v288 + 16))(v46, *(v159 + 56) + *(v288 + 72) * v181, v323);

          v173 = 0;
        }

        else
        {

          v173 = 1;
        }
      }

      else
      {

        v173 = 1;
      }
    }

    v216 = v295;
    v136(v46, v173, 1, v323);
    v309(v216, v311, v62);
    v217 = v294;
    sub_2664C0484(v46, v294);
    v218 = sub_2664DFE18();
    v219 = v62;
    v220 = sub_2664E06C8();
    if (os_log_type_enabled(v218, v220))
    {
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      v334 = v222;
      *v221 = 136315138;
      sub_2664C0484(v217, v306);
      v223 = sub_2664E0318();
      v225 = v224;
      sub_2662A9238(v217, &qword_2800729C8, &unk_2664E52E0);
      v226 = sub_2662A320C(v223, v225, &v334);

      *(v221 + 4) = v226;
      _os_log_impl(&dword_26629C000, v218, v220, "CompoundSignal#activeScores last playing recency map is %s", v221, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v222);
      MEMORY[0x266784AD0](v222, -1, -1);
      v227 = v221;
      v46 = v300;
      MEMORY[0x266784AD0](v227, -1, -1);
    }

    else
    {

      sub_2662A9238(v217, &qword_2800729C8, &unk_2664E52E0);
    }

    v308(v216, v219);
    v228 = v297;
    v229 = v296;
    sub_2664C0484(v46, v296);
    v230 = v323;
    if (v317(v229, 1, v323) == 1)
    {
      sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);

      v140 = v229;
      goto LABEL_60;
    }

    v231 = v299(v229, v230);
    if (v231 == v298)
    {
      break;
    }

    sub_2662A9238(v46, &qword_2800729C8, &unk_2664E52E0);

    (*(v288 + 8))(v229, v230);
    while (1)
    {
LABEL_125:
      v244 = v336;
      v245 = v315;

      v319 = v244;
      v246 = sub_2664BA650(v244, v245);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v247 = sub_2664E0C78();
      v248 = v247;
      v71 = 0;
      v53 = v246 + 64;
      v249 = *(v246 + 64);
      v328 = v246;
      v250 = 1 << *(v246 + 32);
      v251 = -1;
      if (v250 < 64)
      {
        v251 = ~(-1 << v250);
      }

      v46 = v251 & v249;
      v62 = (v250 + 63) >> 6;
      v324 = v329 + 16;
      v323 = v329 + 8;
      v322 = v247 + 64;
      v325 = v247;
      if ((v251 & v249) != 0)
      {
        break;
      }

LABEL_129:
      v253 = v71;
      while (1)
      {
        v71 = v253 + 1;
        if (__OFADD__(v253, 1))
        {
          break;
        }

        if (v71 >= v62)
        {

          v267 = sub_26639F100(v266);
          v268 = sub_2663D8A24(v248, v267);

          sub_2662A9238(v320, &qword_2800729C8, &unk_2664E52E0);
          sub_2662A9238(v321, &qword_2800729C8, &unk_2664E52E0);

          return v268;
        }

        v254 = *(v53 + 8 * v71);
        ++v253;
        if (v254)
        {
          v252 = __clz(__rbit64(v254));
          v46 = (v254 - 1) & v254;
          goto LABEL_134;
        }
      }

      __break(1u);
LABEL_139:

LABEL_147:
      v140 = v46;
LABEL_60:
      sub_2662A9238(v140, &qword_2800729C8, &unk_2664E52E0);
    }

    while (1)
    {
      v252 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
LABEL_134:
      v51 = v252 | (v71 << 6);
      v26 = (16 * v51);
      v255 = *(v328 + 56);
      v256 = (*(v328 + 48) + 16 * v51);
      v257 = v256[1];
      v330 = *v256;
      v258 = v329;
      v259 = v326;
      v260 = v327;
      (*(v329 + 16))(v326, v255 + *(v329 + 72) * v51, v327);

      v261 = sub_2663D80F4(604800.0);
      (*(v258 + 8))(v259, v260);
      *(v322 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v248 = v325;
      v262 = (*(v325 + 48) + 16 * v51);
      *v262 = v330;
      v262[1] = v257;
      *(*(v248 + 56) + 8 * v51) = v261;
      v263 = *(v248 + 16);
      v264 = __OFADD__(v263, 1);
      v265 = v263 + 1;
      if (v264)
      {
        break;
      }

      *(v248 + 16) = v265;
      if (!v46)
      {
        goto LABEL_129;
      }
    }

    __break(1u);
  }

  v292(v229, v230);
  v232 = *v229;
  if (!*(*v229 + 16))
  {
    goto LABEL_139;
  }

  v233 = sub_2662A3E98(v328, v158);
  if ((v234 & 1) == 0)
  {
    goto LABEL_139;
  }

  v235 = *(*(v232 + 56) + 8 * v233);

  v309(v228, v311, v219);
  v236 = sub_2664DFE18();
  v237 = sub_2664E06C8();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v334 = v239;
    *v238 = 136315138;
    *&v332 = v235;
    v240 = sub_2664E0D48();
    v242 = sub_2662A320C(v240, v241, &v334);

    *(v238 + 4) = v242;
    _os_log_impl(&dword_26629C000, v236, v237, "CompoundSignal#activeScores last playing elaspsed time is for raw.LastNowPlayingRecency  %s", v238, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v239);
    MEMORY[0x266784AD0](v239, -1, -1);
    MEMORY[0x266784AD0](v238, -1, -1);

    v243 = v297;
  }

  else
  {

    v243 = v228;
  }

  v308(v243, v219);
  v275 = v291;
  result = sub_2664DE428();
  v46 = v300;
  if (!__OFSUB__(0, v235))
  {
    v276 = v302;
    v277 = v275;
    sub_2664DE398();
    v278 = *(v303 + 8);
    v279 = v277;
    v280 = v304;
    v278(v279, v304);
    sub_2664BA02C(v328, v158, v276, &v336);

    v278(v276, v280);
    goto LABEL_147;
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BCF74(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v39 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v42 = a4;
    v13 = v11;
LABEL_14:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a1 + 56) + 8 * v15);
    v46[0] = *v16;
    v46[1] = v17;
    v46[2] = v18;

    a2(&v43, v46);

    v19 = v43;
    v20 = v44;
    v21 = v45;
    v22 = *v47;
    v24 = sub_2662A3E98(v43, v44);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v42 & 1) == 0)
      {
        sub_266453E30();
      }
    }

    else
    {
      v29 = v47;
      sub_2664508BC(v27, v42 & 1);
      v30 = *v29;
      v31 = sub_2662A3E98(v19, v20);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v28)
    {
      v12 = *(v33[7] + 8 * v24);

      *(v33[7] + 8 * v24) = v21 + v12;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      v34 = (v33[6] + 16 * v24);
      *v34 = v19;
      v34[1] = v20;
      *(v33[7] + 8 * v24) = v21;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v13;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      sub_2662B793C();
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664BD1F4(void *a1, uint64_t a2, uint64_t a3)
{
  v167 = a1;
  v5 = 0;
  v175 = sub_2664DFE38();
  v170 = *(v175 - 8);
  v6 = v170[8];
  v7 = MEMORY[0x28223BE20](v175);
  v168 = (&v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v169 = &v162 - v9;
  v180 = MEMORY[0x277D84F98];
  v181 = MEMORY[0x277D84F98];
  v179 = MEMORY[0x277D84F98];
  v10 = *(a3 + 16);
  v173 = a3;
  if (v10)
  {
    v11 = a3 + 32;
    v12 = v10;
    while (1)
    {
      sub_2662A5550(v11, &v177);
      sub_2662A5550(&v177, v178);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
      v11 += 40;
      if (!--v12)
      {
        goto LABEL_10;
      }
    }

    sub_2662A8618(&v177, v178);
    if (swift_dynamicCast())
    {
      v12 = v177;
    }

    else
    {
      v12 = 0;
    }

LABEL_10:
    v5 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_19:
      v19 = (*(a2 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v15)))));
      v20 = v19[1];
      v15 &= v15 - 1;
      v178[0] = *v19;
      v178[1] = v20;

      sub_2664B8E74(v178, v12, &v181, &v180, &v179);

      if (!v15)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
LABEL_15:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *(a2 + 56 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_19;
    }
  }

  v171 = a2 + 56;
  v166 = v12;

  v172 = a2;

  v22 = sub_266430D18(v21, 0, 0);
  swift_bridgeObjectRelease_n();
  v174 = v22;
  v181 = v22;

  v24 = sub_266430D18(v23, 0, 0);
  swift_bridgeObjectRelease_n();
  v180 = v24;

  v26 = sub_266430D18(v25, 0, 0);
  swift_bridgeObjectRelease_n();
  v179 = v26;
  if (v10)
  {
    v27 = v173 + 32;
    while (1)
    {
      sub_2662A5550(v27, &v177);
      sub_2662A5550(&v177, &v176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
      type metadata accessor for NowPlayingUsageSignal();
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v177);
      v27 += 40;
      if (!--v10)
      {
        goto LABEL_25;
      }
    }

    sub_2662A8618(&v177, v178);
    v150 = swift_dynamicCast();
    v10 = v175;
    if (v150)
    {
      v151 = v177;
      v152 = *(v177 + 16);

      v153 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v178[0] = v153;
      sub_2664BCF74(v152, sub_2664BA014, 0, isUniquelyReferenced_nonNull_native, v178);

      v155 = *(v151 + 24);

      v156 = v180;
      v157 = swift_isUniquelyReferenced_nonNull_native();
      v178[0] = v156;
      sub_2664BCF74(v155, sub_2664BA014, 0, v157, v178);

      v158 = *(v151 + 32);

      v159 = v179;
      v160 = swift_isUniquelyReferenced_nonNull_native();
      v178[0] = v159;
      sub_2664BCF74(v158, sub_2664BA014, 0, v160, v178);

      a2 = v170;
      goto LABEL_27;
    }
  }

  else
  {
LABEL_25:
    v10 = v175;
  }

  a2 = v170;
LABEL_27:

  v29 = sub_266430D18(v28, 0, 0);
  swift_bridgeObjectRelease_n();
  v175 = v29;
  v181 = v29;

  v31 = sub_266430D18(v30, 0, 0);
  swift_bridgeObjectRelease_n();
  v174 = v31;
  v180 = v31;

  v33 = sub_266430D18(v32, 0, 0);
  swift_bridgeObjectRelease_n();
  v173 = v33;
  v179 = v33;
  if (qword_280F914E8 == -1)
  {
    goto LABEL_28;
  }

LABEL_115:
  swift_once();
LABEL_28:
  v34 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v35 = *(a2 + 16);
  v36 = v169;
  v35(v169, v34, v10);
  v37 = sub_2664DFE18();
  v38 = sub_2664E06C8();
  v39 = os_log_type_enabled(v37, v38);
  v162 = v5;
  v163 = v35;
  v164 = a2 + 16;
  v165 = v34;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v177 = v41;
    *v40 = 136315650;

    v42 = sub_2664E01D8();
    v44 = v43;

    v45 = sub_2662A320C(v42, v44, &v177);

    *(v40 + 4) = v45;
    *(v40 + 12) = 2080;

    v46 = sub_2664E01D8();
    v48 = v47;

    v49 = sub_2662A320C(v46, v48, &v177);
    v50 = v170;

    *(v40 + 14) = v49;
    *(v40 + 22) = 2080;

    v51 = sub_2664E01D8();
    v53 = v52;

    v54 = sub_2662A320C(v51, v53, &v177);

    *(v40 + 24) = v54;
    _os_log_impl(&dword_26629C000, v37, v38, "CompoundSignal#mediaTypeAffinityScores app-affinity for music:%s podcasts:%s books:%s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v40, -1, -1);

    v55 = v50[1];
    v56 = v169;
  }

  else
  {

    v55 = *(a2 + 8);
    v56 = v36;
  }

  v169 = v55;
  (v55)(v56, v10);
  v57 = v167;
  v58 = &_swift_FORCE_LOAD___swiftAVFoundation___SiriAudioSupport;
  v59 = [v167 mediaSearch];
  v60 = &qword_2664EBFD0[6];
  v61 = &qword_2664EF818[253];
  if (!v59)
  {
    v64 = 0.7;
    v67 = 0.2;
    v70 = 0.1;
    goto LABEL_47;
  }

  v62 = v59;
  v63 = [v59 mediaType];

  if (qword_280F90DA8 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    if (sub_2663CD224(v63, qword_280F90DB0))
    {
      v64 = 2.7;
    }

    else
    {
      v64 = 0.7;
    }

    if (qword_280F90D90 != -1)
    {
      swift_once();
    }

    v65 = sub_2663CD224(v63, qword_280F90D98);
    v66 = v60[213];
    if (v65)
    {
      v67 = 2.2;
    }

    else
    {
      v67 = *(v60 + 213);
    }

    if (qword_280F90DC8 != -1)
    {
      swift_once();
    }

    v68 = sub_2663CD224(v63, qword_280F90DD0);
    v69 = *(v61 + 151);
    if (v68)
    {
      v70 = 2.1;
    }

    else
    {
      v70 = v61[151];
    }

LABEL_47:
    v71 = [v57 v58[498]];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 albumName];

      if (v73)
      {
        v74 = sub_2664E02C8();
        v76 = v75;

        v77 = HIBYTE(v76) & 0xF;
        if ((v76 & 0x2000000000000000) == 0)
        {
          v77 = v74 & 0xFFFFFFFFFFFFLL;
        }

        if (v77)
        {
          v64 = v64 + 1.0;
        }
      }
    }

    v78 = [v57 v58[498]];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 genreNames];

      if (v80)
      {
        v81 = sub_2664E04A8();

        v82 = *(v81 + 16);

        if (v82)
        {
          v64 = v64 + 1.0;
        }
      }
    }

    v83 = [v57 v58[498]];
    if (v83)
    {
      v84 = v83;
      v85 = [v83 moodNames];

      if (v85)
      {
        v86 = sub_2664E04A8();

        v87 = *(v86 + 16);

        if (v87)
        {
          v64 = v64 + 1.0;
        }
      }
    }

    v88 = [v57 v58[498]];
    v89 = [v88 releaseDate];

    if (v89)
    {

      v64 = v64 + 1.0;
    }

    v90 = [v57 v58[498]];
    if (v90)
    {
      v91 = v90;
      v92 = [v90 artistName];

      if (v92)
      {
        v93 = sub_2664E02C8();
        v95 = v94;

        v96 = HIBYTE(v95) & 0xF;
        if ((v95 & 0x2000000000000000) == 0)
        {
          v96 = v93 & 0xFFFFFFFFFFFFLL;
        }

        if (v96)
        {
          v64 = v64 + 0.4;
          v67 = v67 + *(v60 + 213);
          v70 = v70 + v61[151];
        }
      }
    }

    v63 = 0x636973756DLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B0, &unk_2664F0500);
    inited = swift_initStackObject();
    *(inited + 32) = 0x636973756DLL;
    v61 = (inited + 32);
    *(inited + 16) = xmmword_2664E36E0;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v64;
    *(inited + 56) = 0x74736163646F70;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = v67;
    *(inited + 80) = 1802465122;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v70;
    v58 = sub_266386140(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
    swift_arrayDestroy();

    v57 = sub_266430D18(v98, 0, 0);
    swift_bridgeObjectRelease_n();
    v60 = v168;
    if (!v57[2])
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v63 = v57;
    v99 = sub_2662A3E98(0x636973756DLL, 0xE500000000000000);
    if ((v100 & 1) == 0)
    {
      goto LABEL_117;
    }

    if (!v57[2])
    {
      goto LABEL_118;
    }

    v101 = *(v57[7] + 8 * v99);
    v63 = v57;
    v102 = sub_2662A3E98(0x74736163646F70, 0xE700000000000000);
    if ((v103 & 1) == 0)
    {
      goto LABEL_119;
    }

    if (!v57[2])
    {
      goto LABEL_120;
    }

    v104 = *(v57[7] + 8 * v102);
    v63 = sub_2662A3E98(1802465122, 0xE400000000000000);
    v106 = v105;

    if (v106)
    {
      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    swift_once();
  }

  v107 = *(v57[7] + 8 * v63);
  v163(v60, v165, v10);
  v108 = sub_2664DFE18();
  v109 = sub_2664E06C8();
  v110 = os_log_type_enabled(v108, v109);
  v170 = v57;
  if (v110)
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    *&v177 = v112;
    *v111 = 136315138;

    v113 = sub_2664E01D8();
    v115 = v114;

    v116 = sub_2662A320C(v113, v115, &v177);

    *(v111 + 4) = v116;
    _os_log_impl(&dword_26629C000, v108, v109, "CompoundSignal#mediaTypeAffinityScores input-affinity: %s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x266784AD0](v112, -1, -1);
    MEMORY[0x266784AD0](v111, -1, -1);
  }

  (v169)(v60, v10);
  v5 = v171;
  a2 = v172;
  v117 = 1 << *(v172 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & *(v172 + 56);
  v10 = (v117 + 63) >> 6;

  v120 = 0;
  v121 = MEMORY[0x277D84F98];
  while (1)
  {
    if (!v119)
    {
      while (1)
      {
        v122 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_106;
        }

        if (v122 >= v10)
        {

          v149 = sub_266430D18(v121, 0, 0);

          return v149;
        }

        v119 = *(v5 + 8 * v122);
        ++v120;
        if (v119)
        {
          goto LABEL_87;
        }
      }
    }

    v122 = v120;
LABEL_87:
    v123 = v175;
    if (!*(v175 + 16))
    {
      goto LABEL_107;
    }

    v124 = (*(a2 + 48) + ((v122 << 10) | (16 * __clz(__rbit64(v119)))));
    v125 = *v124;
    v126 = v124[1];

    v127 = sub_2662A3E98(v125, v126);
    if ((v128 & 1) == 0)
    {
      goto LABEL_108;
    }

    v5 = v174;
    if (!*(v174 + 16))
    {
      goto LABEL_109;
    }

    v129 = *(*(v123 + 56) + 8 * v127);
    v130 = sub_2662A3E98(v125, v126);
    if ((v131 & 1) == 0)
    {
      goto LABEL_110;
    }

    v132 = v173;
    if (!*(v173 + 16))
    {
      goto LABEL_111;
    }

    v133 = *(*(v5 + 56) + 8 * v130);
    v134 = sub_2662A3E98(v125, v126);
    if ((v135 & 1) == 0)
    {
      goto LABEL_112;
    }

    v136 = *(*(v132 + 56) + 8 * v134);
    a2 = swift_isUniquelyReferenced_nonNull_native();
    *&v177 = v121;
    v137 = sub_2662A3E98(v125, v126);
    v139 = v121[2];
    v140 = (v138 & 1) == 0;
    v141 = __OFADD__(v139, v140);
    v142 = v139 + v140;
    if (v141)
    {
      goto LABEL_113;
    }

    v5 = v138;
    if (v121[3] < v142)
    {
      break;
    }

    if ((a2 & 1) == 0)
    {
      v148 = v137;
      sub_266453E30();
      v137 = v148;
    }

LABEL_99:
    a2 = v172;
    v119 &= v119 - 1;
    v144 = v101 * v129 + v104 * v133 + v107 * v136;
    v121 = v177;
    if (v5)
    {
      *(*(v177 + 56) + 8 * v137) = v144;
    }

    else
    {
      *(v177 + 8 * (v137 >> 6) + 64) |= 1 << v137;
      v145 = (v121[6] + 16 * v137);
      *v145 = v125;
      v145[1] = v126;
      *(v121[7] + 8 * v137) = v144;
      v146 = v121[2];
      v141 = __OFADD__(v146, 1);
      v147 = v146 + 1;
      if (v141)
      {
        goto LABEL_114;
      }

      v121[2] = v147;
    }

    v120 = v122;
    v5 = v171;
  }

  sub_2664508BC(v142, a2);
  v137 = sub_2662A3E98(v125, v126);
  if ((v5 & 1) == (v143 & 1))
  {
    goto LABEL_99;
  }

  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664BE2FC(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v69 = *MEMORY[0x277D85DE8];
  v59[1] = 0;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = a3 + 32;
  while (1)
  {
    sub_2662A5550(v11, &v67);
    sub_2662A5550(&v67, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v67, v68);
  if (swift_dynamicCast())
  {
    v12 = v67;
  }

  else
  {
LABEL_8:
    v12 = sub_266385A94(MEMORY[0x277D84F90]);
  }

  v13 = v9;
  v14 = [a1 mediaSearch];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 mediaType];
  }

  else
  {
    v16 = 0;
  }

  v17 = v65;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_39;
  }

LABEL_13:
  v18 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v13, v18, v5);

  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();

  if (os_log_type_enabled(v19, v20))
  {
    v64 = v13;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63 = v5;
    v23 = v22;
    v66[0] = v22;
    *v21 = 136315394;
    *&v67 = v16;
    BYTE8(v67) = v15 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733C0, &unk_2664F04F0);
    v24 = sub_2664E0318();
    v25 = v16;
    v27 = sub_2662A320C(v24, v26, v66);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v28 = sub_2664E01D8();
    v30 = sub_2662A320C(v28, v29, v66);

    *(v21 + 14) = v30;
    v16 = v25;
    _os_log_impl(&dword_26629C000, v19, v20, "CompoundSignal#supportFlag computing for mediaType:%s and categories:%s...", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v23, -1, -1);
    v31 = v21;
    v17 = v65;
    MEMORY[0x266784AD0](v31, -1, -1);

    v32 = *(v6 + 8);
    v6 += 8;
    v33 = v32(v64, v63);
  }

  else
  {

    v34 = *(v6 + 8);
    v6 += 8;
    v33 = v34(v13, v5);
  }

  MEMORY[0x28223BE20](v33);
  v59[-4] = v16;
  LOBYTE(v59[-3]) = v35;
  v59[-2] = v12;
  v36 = *(v17 + 32);
  v37 = v36 & 0x3F;
  v60 = ((1 << v36) + 63) >> 6;
  v38 = 8 * v60;

  if (v37 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v59[3] = v59;
    v40 = v12;
    v64 = v16;
    v59[2] = v59;
    LODWORD(v63) = v15 == 0;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v61 = v59 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v61, v38);
    v62 = 0;
    v16 = 0;
    v13 = v17 + 56;
    v41 = 1 << *(v17 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v17 = v42 & *(v17 + 56);
    v15 = ((v41 + 63) >> 6);
    while (1)
    {
      if (!v17)
      {
        v46 = v16;
        v5 = v40;
        while (1)
        {
          v16 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v16 >= v15)
          {
            goto LABEL_36;
          }

          v47 = *(v13 + 8 * v16);
          ++v46;
          if (v47)
          {
            v17 = (v47 - 1) & v47;
            v45 = __clz(__rbit64(v47)) | (v16 << 6);
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_39:
        swift_once();
        goto LABEL_13;
      }

      v44 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v44 | (v16 << 6);
      v5 = v40;
LABEL_30:
      v48 = (*(v65 + 48) + 16 * v45);
      v49 = v48[1];
      if (!*(v5 + 16))
      {
        break;
      }

      v50 = *v48;
      v51 = v48[1];

      v52 = sub_2662A3E98(v50, v49);
      v12 = MEMORY[0x277D84F90];
      if (v53)
      {
        v12 = *(*(v5 + 56) + 8 * v52);
        goto LABEL_21;
      }

LABEL_22:
      v6 = sub_266484DB4(v64, v63, v12);

      if (v6)
      {
        *&v61[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
LABEL_36:
          v55 = sub_2664CF388(v61, v60, v62, v65);
          goto LABEL_37;
        }
      }
    }

    v43 = v48[1];
    v12 = MEMORY[0x277D84F90];
LABEL_21:

    goto LABEL_22;
  }

  v58 = swift_slowAlloc();
  v55 = sub_2664B93B0(v58, v60, v17, sub_2664C045C);
  MEMORY[0x266784AD0](v58, -1, -1);
LABEL_37:

  v56 = *MEMORY[0x277D85DE8];
  return v55;
}

uint64_t sub_2664BEA64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = a1 + 32;
  while (1)
  {
    sub_2662A5550(v2, &v8);
    sub_2662A5550(&v8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    v2 += 40;
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v8, v9);
  if (swift_dynamicCast())
  {
    v3 = v8;

    v4 = v3;
  }

  else
  {
LABEL_8:
    v4 = sub_266385A94(MEMORY[0x277D84F90]);
  }

  v5 = sub_2664855EC(v4);

  return v5;
}

uint64_t sub_2664BEBA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a7;
  v89 = a6;
  v87 = a5;
  v88 = a4;
  v90 = a3;
  v86 = a1;
  v85 = sub_2664DFE38();
  v84 = *(v85 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = a2 + 32;
  v12 = *(a2 + 16);
  while (1)
  {
    sub_2662A5550(v11, &v95);
    sub_2662A5550(&v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v11 += 40;
    if (!--v12)
    {
      goto LABEL_8;
    }
  }

  sub_2662A8618(&v95, v97);
  if (swift_dynamicCast())
  {
    v13 = v96;

    v14 = v13;
  }

  else
  {
LABEL_8:
    v14 = sub_266385A94(MEMORY[0x277D84F90]);
  }

  v79 = sub_26639F100(v14);
  if (!v10)
  {
    goto LABEL_16;
  }

  v15 = a2 + 32;
  v16 = v10;
  while (1)
  {
    sub_2662A5550(v15, &v95);
    sub_2662A5550(&v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for EntitySearchSignalLocal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v15 += 40;
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

  sub_2662A8618(&v95, v97);
  if (swift_dynamicCast())
  {
    v93 = *(v95 + 16);
  }

  else
  {
LABEL_16:
    v93 = sub_266386140(MEMORY[0x277D84F90]);
    if (!v10)
    {
LABEL_23:
      v19 = sub_266386140(MEMORY[0x277D84F90]);
      goto LABEL_24;
    }
  }

  v17 = a2 + 32;
  v18 = v10;
  while (1)
  {
    sub_2662A5550(v17, &v95);
    sub_2662A5550(&v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for LastNowPlayingSignal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v17 += 40;
    if (!--v18)
    {
      goto LABEL_23;
    }
  }

  sub_2662A8618(&v95, v97);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v19 = *(v95 + 48);

  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_24:
  v20 = a2 + 32;
  while (1)
  {
    sub_2662A5550(v20, &v95);
    sub_2662A5550(&v95, v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072550, &qword_2664EA240);
    type metadata accessor for ForegroundAppSignal();
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v95);
    v20 += 40;
    if (!--v10)
    {
      goto LABEL_31;
    }
  }

  sub_2662A8618(&v95, v97);
  if (swift_dynamicCast())
  {
    v21 = *(v95 + 24);
    v22 = *(v95 + 32);
  }

  else
  {
LABEL_31:
    v21 = 0;
    v22 = 0;
  }

  v23 = [v86 mediaSearch];
  v24 = v85;
  v25 = v84;
  v26 = v83;
  if (v23)
  {
    v27 = v23;
    v86 = [v23 mediaType];
  }

  else
  {
    v86 = 0;
  }

  v80 = 0;
  v82 = v21;
  v92 = v19;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v28 = __swift_project_value_buffer(v24, qword_280F914F0);
    swift_beginAccess();
    (*(v25 + 16))(v26, v28, v24);

    v29 = v79;

    v30 = v93;

    v26 = v30;
    v31 = v29;
    v32 = sub_2664DFE18();
    v33 = sub_2664E06C8();
    v81 = v22;

    v78 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v95 = v77;
      *v34 = 136317186;
      v76 = v32;
      v35 = sub_2664E0618();
      v37 = sub_2662A320C(v35, v36, &v95);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = sub_2664E0618();
      v40 = sub_2662A320C(v38, v39, &v95);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2080;
      v41 = sub_2664E0618();
      v43 = sub_2662A320C(v41, v42, &v95);

      *(v34 + 24) = v43;
      *(v34 + 32) = 2080;
      v44 = MEMORY[0x277D839F8];
      v45 = sub_2664E01D8();
      v47 = sub_2662A320C(v45, v46, &v95);

      *(v34 + 34) = v47;
      *(v34 + 42) = 2080;
      v48 = sub_2664E01D8();
      v50 = sub_2662A320C(v48, v49, &v95);

      *(v34 + 44) = v50;
      *(v34 + 52) = 2080;
      v51 = sub_2664E01D8();
      v53 = sub_2662A320C(v51, v52, &v95);

      *(v34 + 54) = v53;
      *(v34 + 62) = 2080;
      v54 = sub_2664E01D8();
      v56 = sub_2662A320C(v54, v55, &v95);

      *(v34 + 64) = v56;
      *(v34 + 72) = 2080;
      v22 = v81;
      v57 = v82;
      v58 = v81 ? v82 : 7104878;
      v59 = v81 ? v81 : 0xE300000000000000;

      v60 = sub_2662A320C(v58, v59, &v95);

      *(v34 + 74) = v60;
      *(v34 + 82) = 2080;
      v61 = MEMORY[0x2667834D0](&unk_2877E5658, v44);
      v63 = sub_2662A320C(v61, v62, &v95);

      *(v34 + 84) = v63;
      v26 = v93;
      v64 = v76;
      _os_log_impl(&dword_26629C000, v76, v78, "VisionQuest21#vq21 candidateBundleIdentifiers:%s, supportFlag:%s, unicornFlag:%s, compoundMediaTypeBundleScore:%s, entitySearchBundleScore:%s, compoundActiveBundleScore:%s, nowPlayingBundleScore:%s, foregroundBundle:%s, weights:%s", v34, 0x5Cu);
      v65 = v77;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      (*(v84 + 8))(v83, v85);
    }

    else
    {

      (*(v84 + 8))(v83, v85);
      v57 = v82;
      v22 = v81;
    }

    v94[0] = MEMORY[0x277D84F98];
    v66 = 1 << *(v31 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v25 = v67 & *(v31 + 56);
    v24 = (v66 + 63) >> 6;

    v68 = 0;
    v69 = v80;
    if (v25)
    {
      break;
    }

LABEL_49:
    while (1)
    {
      v70 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v70 >= v24)
      {

        v73 = sub_266430D18(v94[0], v31, 1);

        return v73;
      }

      v25 = *(v31 + 56 + 8 * v70);
      ++v68;
      if (v25)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
  }

  while (1)
  {
    v70 = v68;
LABEL_52:
    v71 = (*(v31 + 48) + ((v70 << 10) | (16 * __clz(__rbit64(v25)))));
    v72 = v71[1];
    *&v95 = *v71;
    *(&v95 + 1) = v72;

    sub_266485FDC(v94, &v95, v90, v88, &unk_2877E5658, v87, v86, v89, v93, v91, v92, v57, v22);
    if (v69)
    {
      break;
    }

    v25 &= v25 - 1;

    v68 = v70;
    v26 = v93;
    if (!v25)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664BF708@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v156 = a1;
  v151 = a4;
  v157 = sub_2664DFE38();
  v155 = *(v157 - 8);
  v6 = *(v155 + 64);
  v7 = MEMORY[0x28223BE20](v157);
  v152 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v143 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v145 = &v143 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v143 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v143 - v16;
  MEMORY[0x28223BE20](v15);
  v162 = &v143 - v17;
  v18 = sub_2664DE438();
  v149 = *(v18 - 8);
  v150 = v18;
  v19 = *(v149 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v148 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v147 = &v143 - v22;
  sub_2664DE428();
  v153 = a2;
  v158 = a3;
  v23 = sub_2664BA810(a2, a3);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v24 = sub_2664E0C78();
  v163 = v24;
  v25 = 0;
  v26 = 1 << *(v23 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;
  v30 = v24 + 64;
  if (v28)
  {
    goto LABEL_4;
  }

LABEL_5:
  v32 = v25;
  while (1)
  {
    v25 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v25 >= v29)
    {
      break;
    }

    v33 = *(v23 + 64 + 8 * v25);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v28 = (v33 - 1) & v33;
      while (2)
      {
        v34 = v31 | (v25 << 6);
        v35 = (*(v23 + 48) + 16 * v34);
        v37 = *v35;
        v36 = v35[1];
        v38 = *(*(v23 + 56) + 8 * v34);

        v39 = Double.rounded(to:)(3);
        *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v40 = v163;
        v41 = (*(v163 + 48) + 16 * v34);
        *v41 = v37;
        v41[1] = v36;
        *(*(v40 + 56) + 8 * v34) = v39;
        v42 = *(v40 + 16);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (!v43)
        {
          *(v40 + 16) = v44;
          if (!v28)
          {
            goto LABEL_5;
          }

LABEL_4:
          v31 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          continue;
        }

        break;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  if (qword_280F914E8 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v45 = v157;
    v46 = __swift_project_value_buffer(v157, qword_280F914F0);
    swift_beginAccess();
    v47 = v155;
    v48 = *(v155 + 16);
    v49 = v162;
    v154 = v46;
    v160 = v48;
    v161 = v155 + 16;
    v48(v162, v46, v45);

    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v164 = v53;
      *v52 = 136315138;
      v54 = sub_2664E01D8();
      v56 = sub_2662A320C(v54, v55, &v164);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_26629C000, v50, v51, "CompoundSignal#signal compoundActiveScores: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266784AD0](v53, -1, -1);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v162 = *(v47 + 8);
    (v162)(v49, v45);
    v57 = sub_2664BD1F4(v156, v153, v158);
    v58 = sub_2664E0C78();
    v59 = v58;
    v60 = 0;
    v61 = 1 << *(v57 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v57 + 64);
    v64 = (v61 + 63) >> 6;
    v65 = v58 + 64;
    v159 = v58;
    if (!v63)
    {
      break;
    }

    while (1)
    {
      v66 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
LABEL_25:
      v69 = v66 | (v60 << 6);
      v70 = (*(v57 + 48) + 16 * v69);
      v72 = *v70;
      v71 = v70[1];
      v73 = *(*(v57 + 56) + 8 * v69);

      v74 = Double.rounded(to:)(3);
      *(v65 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v75 = v159;
      v76 = (*(v159 + 48) + 16 * v69);
      *v76 = v72;
      v76[1] = v71;
      *(*(v75 + 56) + 8 * v69) = v74;
      v77 = *(v75 + 16);
      v43 = __OFADD__(v77, 1);
      v78 = v77 + 1;
      if (v43)
      {
        break;
      }

      v59 = v75;
      *(v75 + 16) = v78;
      if (!v63)
      {
        goto LABEL_20;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

LABEL_20:
  v67 = v60;
  while (1)
  {
    v60 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_41;
    }

    if (v60 >= v64)
    {
      break;
    }

    v68 = *(v57 + 64 + 8 * v60);
    ++v67;
    if (v68)
    {
      v66 = __clz(__rbit64(v68));
      v63 = (v68 - 1) & v68;
      goto LABEL_25;
    }
  }

  v79 = v143;
  v80 = v154;
  v81 = v157;
  v160(v143, v154, v157);

  v82 = sub_2664DFE18();
  v83 = sub_2664E06C8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v164 = v85;
    *v84 = 136315138;
    v86 = sub_2664E01D8();
    v88 = sub_2662A320C(v86, v87, &v164);

    *(v84 + 4) = v88;
    _os_log_impl(&dword_26629C000, v82, v83, "CompoundSignal#signal compoundAffinityScores: %s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    MEMORY[0x266784AD0](v85, -1, -1);
    MEMORY[0x266784AD0](v84, -1, -1);
  }

  (v162)(v79, v81);
  v89 = v144;
  v90 = sub_2664BE2FC(v156, v153, v158);
  v160(v89, v80, v81);

  v91 = sub_2664DFE18();
  v92 = sub_2664E06C8();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v164 = v94;
    *v93 = 136315138;
    v95 = sub_2664E0618();
    v97 = sub_2662A320C(v95, v96, &v164);

    *(v93 + 4) = v97;
    v80 = v154;
    _os_log_impl(&dword_26629C000, v91, v92, "CompoundSignal#signal supportFlag: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    MEMORY[0x266784AD0](v94, -1, -1);
    MEMORY[0x266784AD0](v93, -1, -1);
  }

  (v162)(v89, v81);
  v98 = v145;
  v153 = v90;
  v99 = sub_2664BEA64(v158);
  v160(v98, v80, v81);

  v100 = sub_2664DFE18();
  v101 = sub_2664E06C8();

  v102 = os_log_type_enabled(v100, v101);
  v155 = v99;
  if (v102)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v164 = v104;
    *v103 = 136315138;
    v105 = sub_2664E0618();
    v107 = sub_2662A320C(v105, v106, &v164);
    v99 = v155;

    *(v103 + 4) = v107;
    v81 = v157;
    _os_log_impl(&dword_26629C000, v100, v101, "CompoundSignal#signal unicornFlag: %s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    v108 = v104;
    v80 = v154;
    MEMORY[0x266784AD0](v108, -1, -1);
    MEMORY[0x266784AD0](v103, -1, -1);
  }

  (v162)(v98, v81);
  v109 = v146;
  v110 = v153;

  v111 = sub_2664B9554(v99, v110);
  v160(v109, v80, v81);

  v112 = sub_2664DFE18();
  v113 = sub_2664E06C8();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v164 = v115;
    *v114 = 136315138;
    v116 = sub_2664E0618();
    v118 = sub_2662A320C(v116, v117, &v164);
    v80 = v154;

    *(v114 + 4) = v118;
    _os_log_impl(&dword_26629C000, v112, v113, "CompoundSignal#signal supportUnicornMatch: %s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v115);
    v119 = v115;
    v81 = v157;
    MEMORY[0x266784AD0](v119, -1, -1);
    MEMORY[0x266784AD0](v114, -1, -1);
  }

  (v162)(v109, v81);
  v120 = v152;
  v121 = v153;
  v122 = sub_2664BEBA4(v156, v158, v153, v155, v111, v59, v163);
  v160(v120, v80, v81);

  v123 = sub_2664DFE18();
  v124 = sub_2664E06C8();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = v81;
    v127 = swift_slowAlloc();
    v164 = v127;
    *v125 = 136315138;
    v128 = sub_2664E01D8();
    v130 = sub_2662A320C(v128, v129, &v164);

    *(v125 + 4) = v130;
    _os_log_impl(&dword_26629C000, v123, v124, "CompoundSignal#signal vq21: %s", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    MEMORY[0x266784AD0](v127, -1, -1);
    MEMORY[0x266784AD0](v125, -1, -1);

    v59 = v159;
    v131 = v126;
    v132 = v152;
    v121 = v153;
  }

  else
  {

    v132 = v120;
    v131 = v81;
  }

  (v162)(v132, v131);
  v133 = v148;
  sub_2664DE428();
  v134 = v147;
  sub_2664DE388();
  v136 = v135;
  v137 = *(v149 + 8);
  v138 = v133;
  v139 = v150;
  v137(v138, v150);
  result = (v137)(v134, v139);
  v141 = v151;
  *v151 = v163;
  v141[1] = v59;
  v142 = v155;
  v141[2] = v121;
  v141[3] = v142;
  v141[4] = v111;
  v141[5] = v122;
  v141[6] = v136;
  return result;
}

uint64_t sub_2664C0484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729C8, &unk_2664E52E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664C04F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v20 = a1;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a6;
    v25 = a7;
    v7 = 0;
    v26 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    v8 = *(a5 + 16);
    v9 = a5 + 40;
    v19 = a5 + 40;
LABEL_3:
    v10 = (v9 + 16 * v7);
    while (1)
    {
      if (v8 == v7)
      {
        a6 = v24;
        a7 = v25;
        a3 = v22;
        a4 = v23;
        a1 = v20;
        a2 = v21;
        v18 = v26;
        goto LABEL_13;
      }

      if (v7 >= v8)
      {
        break;
      }

      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }

      v12 = *(v10 - 1);
      v13 = *v10;
      v14 = objc_allocWithZone(MEMORY[0x277CD3DD0]);

      v15 = sub_2664E02A8();
      v16 = [v14 initWithIdentifier:v15 assetInfo:0];

      ++v7;
      v10 += 2;
      if (v16)
      {
        MEMORY[0x266783490]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        sub_2664E0518();
        v26 = v27;
        v7 = v11;
        v9 = v19;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    v18 = 0;
LABEL_13:
    privateMediaItemDataFromBacking(recommendationId:assetInfo:mediaSubItems:sharedUserIdFromPlayableMusicAccount:)(a1, a2, a3, a4, v18, a6, a7);
  }
}

uint64_t privateMediaItemDataFromBacking(recommendationId:assetInfo:mediaSubItems:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7)
{
  v94 = a2;
  v95 = a7;
  v92 = a6;
  v93 = a4;
  v90 = a3;
  v91 = a1;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v83 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v89 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v83 - v22;
  v24 = [objc_allocWithZone(MEMORY[0x277CD4388]) init];
  if (!v24)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v36, v8);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBPrivateMediaItemValueData", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return 0;
  }

  v25 = v24;
  v26 = &selRef_setIsRawMediaCategoryMusicSignal_;
  if (a5)
  {
    v83 = v16;
    v88 = v23;
    v96 = MEMORY[0x277D84F90];
    if (a5 >> 62)
    {
LABEL_62:
      v27 = sub_2664E0A68();
    }

    else
    {
      v27 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = v21;
    v85 = v25;
    v86 = v8;
    v87 = v9;
    if (v27)
    {
      v8 = 0;
      v9 = a5 & 0xC000000000000001;
      v25 = 0x277CD4000;
      do
      {
        v21 = v8;
        while (1)
        {
          if (v9)
          {
            v28 = MEMORY[0x266783B70](v21, a5);
          }

          else
          {
            if (v21 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            v28 = *(a5 + 8 * v21 + 32);
          }

          v29 = v28;
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v30 = [objc_allocWithZone(MEMORY[0x277CD4368]) init];
          if (v30)
          {
            break;
          }

          ++v21;
          if (v8 == v27)
          {
            goto LABEL_26;
          }
        }

        v31 = v30;
        v32 = [v29 identifier];
        [v31 setIdentifier_];

        v33 = v31;
        v34 = [v29 assetInfo];
        [v33 setAssetInfo_];

        MEMORY[0x266783490]();
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
        }

        sub_2664E0518();
      }

      while (v8 != v27);
    }

LABEL_26:
    sub_2662C1744(0, &qword_2800740B0, 0x277CD4368);
    v40 = sub_2664E0488();

    v8 = v86;
    v9 = v87;
    v21 = v84;
    v25 = v85;
    v23 = v88;
    v16 = v83;
    v26 = &selRef_setIsRawMediaCategoryMusicSignal_;
  }

  else
  {
    v40 = 0;
  }

  [v25 setMediaSubItems_];

  if (v93)
  {
    v41 = sub_2664E02A8();
  }

  else
  {
    v41 = 0;
  }

  [v25 v26[248]];

  if (v94)
  {
    v42 = sub_2664E02A8();
  }

  else
  {
    v42 = 0;
  }

  [v25 setRecommendationId_];

  if (v95)
  {
    v43 = sub_2664E02A8();
  }

  else
  {
    v43 = 0;
  }

  [v25 setSharedUserIdFromPlayableMusicAccount_];

  v44 = [objc_allocWithZone(MEMORY[0x277CD4360]) init];
  if (!v44)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v16, v70, v8);
    v71 = sub_2664DFE18();
    v72 = sub_2664E06D8();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_26629C000, v71, v72, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBMediaItemValue", v73, 2u);
      MEMORY[0x266784AD0](v73, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v16, v8);
    return 0;
  }

  v45 = v44;
  [v44 setPrivateMediaItemValueData_];
  v46 = [objc_allocWithZone(MEMORY[0x277CD4370]) init];
  if (!v46)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v74 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v21 = v89;
    (*(v9 + 16))(v89, v74, v8);
    v75 = sub_2664DFE18();
    v76 = sub_2664E06D8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_26629C000, v75, v76, "Workarounds#privateMediaItemDataFromBacking Unexpected nil initializer result for _INPBPlayMediaIntent", v77, 2u);
      MEMORY[0x266784AD0](v77, -1, -1);

LABEL_71:
      (*(v9 + 8))(v21, v8);
      return 0;
    }

LABEL_70:
    goto LABEL_71;
  }

  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2664E34F0;
  *(v48 + 32) = v45;
  sub_2662C1744(0, &qword_280072520, 0x277CD4360);
  v45 = v45;
  v49 = sub_2664E0488();

  [v47 setMediaItems_];

  v50 = [objc_allocWithZone(MEMORY[0x277CD3EC0]) initWithIdentifier:0 backingStore:v47];
  v51 = [v50 mediaItems];
  if (!v51)
  {
LABEL_65:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v78 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v21, v78, v8);
    v79 = sub_2664DFE18();
    v80 = sub_2664E06D8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = v45;
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_26629C000, v79, v80, "Workarounds#privateMediaItemDataFromBacking Unexpected nil media item after building INPlayMediaIntent from backing store", v82, 2u);
      MEMORY[0x266784AD0](v82, -1, -1);

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  v52 = v51;
  sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
  v53 = sub_2664E04A8();

  if (!(v53 >> 62))
  {
    result = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_64:

    goto LABEL_65;
  }

LABEL_41:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x266783B70](0, v53);
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v55 = *(v53 + 32);
  }

  v56 = v55;
  v95 = v45;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v23, v57, v8);
  v58 = v56;
  v59 = sub_2664DFE18();
  v60 = sub_2664E06B8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v88 = v23;
    v62 = v61;
    v63 = v25;
    v64 = v8;
    v65 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v58;
    *v65 = v58;
    v66 = v58;
    _os_log_impl(&dword_26629C000, v59, v60, "Workarounds#privateMediaItemDataFromBacking Resolved hydrated media item from backing store: %@", v62, 0xCu);
    sub_2662E4324(v65);
    v67 = v65;
    v8 = v64;
    v25 = v63;
    MEMORY[0x266784AD0](v67, -1, -1);
    v68 = v62;
    v23 = v88;
    MEMORY[0x266784AD0](v68, -1, -1);
  }

  (*(v9 + 8))(v23, v8);
  v69 = [v58 privateMediaItemValueData];

  return v69;
}

uint64_t sub_2664C1240(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v209 = a4;
  v210 = a3;
  v211 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v229 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v226 = (&v207 - v9);
  v214 = sub_2664DFE38();
  v238 = *(v214 - 8);
  v10 = *(v238 + 64);
  v11 = MEMORY[0x28223BE20](v214);
  v208 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v247 = &v207 - v13;
  v240 = sub_2664DE438();
  v246 = *(v240 - 8);
  v14 = *(v246 + 64);
  v15 = MEMORY[0x28223BE20](v240);
  v251 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v227 = &v207 - v18;
  MEMORY[0x28223BE20](v17);
  v228 = &v207 - v19;
  v259 = sub_2664DF3C8();
  v254 = *(v259 - 8);
  v20 = *(v254 + 64);
  v21 = MEMORY[0x28223BE20](v259);
  v237 = &v207 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v258 = &v207 - v23;
  v256 = sub_2664DF398();
  v243 = *(v256 - 8);
  v24 = *(v243 + 64);
  v25 = MEMORY[0x28223BE20](v256);
  v221 = &v207 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v248 = &v207 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v255 = &v207 - v30;
  MEMORY[0x28223BE20](v29);
  v241 = &v207 - v31;
  v32 = sub_2664E0038();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v207 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2664E00B8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v207 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v257 = qword_280F90D38;
    v42 = swift_allocObject();
    *(v42 + 16) = a1;
    v263 = sub_2664C5F6C;
    v264 = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    v262 = &block_descriptor_49;
    v43 = _Block_copy(aBlock);

    sub_2664E0068();
    v260 = MEMORY[0x277D84F90];
    sub_2662A3E50(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v41, v36, v43);
    _Block_release(v43);
    v44 = *(v33 + 8);
    v33 += 8;
    v44(v36, v32);
    (*(v38 + 8))(v41, v37);

    v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
    v45 = sub_2664E0C78();
    v217 = v45;
    v46 = 0;
    v242 = a1;
    v47 = *(a1 + 64);
    v239 = a1 + 64;
    v48 = 1 << *(a1 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    a1 = v49 & v47;
    v36 = (v48 + 63) >> 6;
    v244 = v243 + 16;
    v245 = (v243 + 8);
    v37 = v45 + 64;
    v38 = v241;
    if ((v49 & v47) == 0)
    {
      break;
    }

    while (1)
    {
      v50 = __clz(__rbit64(a1));
      a1 &= a1 - 1;
LABEL_11:
      v41 = v50 | (v46 << 6);
      v33 = 16 * v41;
      v53 = *(v242 + 56);
      v54 = *(v242 + 48) + 16 * v41;
      v55 = *(v54 + 8);
      v257 = *v54;
      v32 = v243;
      v56 = v256;
      (*(v243 + 16))(v38, v53 + *(v243 + 72) * v41, v256);

      v57 = sub_2663D80F4(604800.0);
      v45 = (*(v32 + 8))(v38, v56);
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v58 = v217;
      v59 = (*(v217 + 48) + 16 * v41);
      *v59 = v257;
      v59[1] = v55;
      *(*(v58 + 56) + 8 * v41) = v57;
      v60 = *(v58 + 16);
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        break;
      }

      *(v58 + 16) = v62;
      if (!a1)
      {
        goto LABEL_6;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    swift_once();
  }

LABEL_6:
  v51 = v46;
  while (1)
  {
    v46 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v46 >= v36)
    {
      break;
    }

    v52 = *(v239 + 8 * v46);
    ++v51;
    if (v52)
    {
      v50 = __clz(__rbit64(v52));
      a1 = (v52 - 1) & v52;
      goto LABEL_11;
    }
  }

  MEMORY[0x28223BE20](v45);
  *(&v207 - 2) = v211;
  v36 = v242;
  v207 = sub_266421620(sub_2664C5F74, (&v207 - 4), v242);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v63 = sub_2664E0C78();
  v216 = v63;
  v38 = 0;
  v64 = 1 << *(v36 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v37 = v65 & *(v36 + 64);
  v249 = ((v64 + 63) >> 6);
  v236 = *MEMORY[0x277D5FF88];
  v33 = v254 + 104;
  v41 = v254 + 8;
  v235 = *MEMORY[0x277D5FF60];
  v234 = *MEMORY[0x277D5FF80];
  v233 = *MEMORY[0x277D5FF50];
  v232 = *MEMORY[0x277D5FF70];
  v231 = *MEMORY[0x277D5FF58];
  v230 = *MEMORY[0x277D5FF68];
  v250 = v63 + 64;
  while (1)
  {
    v32 = v251;
    if (!v37)
    {
      break;
    }

    v66 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
LABEL_24:
    v69 = v66 | (v38 << 6);
    v70 = *(v36 + 56);
    v71 = (*(v36 + 48) + 16 * v69);
    v72 = v71[1];
    v252 = *v71;
    v73 = *(v243 + 72);
    v254 = v69;
    v74 = v241;
    (*(v243 + 16))(v241, v70 + v73 * v69, v256);
    v32 = *v33;
    v75 = v258;
    a1 = v259;
    (*v33)(v258, v236, v259);
    v253 = v72;

    v257 = sub_2664DF3A8();
    v76 = *v41;
    (*v41)(v75, a1);
    v36 = v237;
    (v32)(v237, v235, a1);
    v77 = sub_2664DF3A8();
    v76(v36, a1);
    v61 = __OFADD__(v257, v77);
    v78 = &v257[v77];
    if (v61)
    {
      goto LABEL_107;
    }

    v257 = v37;
    v37 = v258;
    a1 = v259;
    (v32)(v258, v234, v259);
    v36 = sub_2664DF3A8();
    v76(v37, a1);
    v61 = __OFADD__(v78, v36);
    v79 = &v78[v36];
    if (v61)
    {
      goto LABEL_108;
    }

    v37 = v258;
    a1 = v259;
    (v32)(v258, v233, v259);
    v36 = sub_2664DF3A8();
    v76(v37, a1);
    v61 = __OFADD__(v79, v36);
    v80 = &v79[v36];
    if (v61)
    {
      goto LABEL_109;
    }

    v37 = v258;
    a1 = v259;
    (v32)(v258, v232, v259);
    v36 = sub_2664DF3A8();
    v76(v37, a1);
    v61 = __OFADD__(v80, v36);
    v81 = &v80[v36];
    if (v61)
    {
      goto LABEL_110;
    }

    v37 = v258;
    a1 = v259;
    (v32)(v258, v231, v259);
    v36 = sub_2664DF3A8();
    v76(v37, a1);
    v61 = __OFADD__(v81, v36);
    v82 = &v81[v36];
    if (v61)
    {
      goto LABEL_111;
    }

    v37 = v258;
    v36 = v259;
    (v32)(v258, v230, v259);
    v32 = sub_2664DF3A8();
    v76(v37, v36);
    (*v245)(v74, v256);
    if (__OFADD__(v82, v32))
    {
      goto LABEL_112;
    }

    v83 = v254;
    *(v250 + ((v254 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v254;
    v84 = v216;
    v85 = (*(v216 + 48) + 16 * v83);
    *v85 = v252;
    v85[1] = v253;
    *(*(v84 + 56) + 8 * v83) = &v82[v32];
    v86 = *(v84 + 16);
    v61 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v61)
    {
      goto LABEL_113;
    }

    *(v84 + 16) = v87;
    v36 = v242;
    v37 = v257;
  }

  v67 = v38;
  while (1)
  {
    v38 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      goto LABEL_96;
    }

    if (v38 >= v249)
    {
      break;
    }

    v68 = *(v239 + 8 * v38);
    ++v67;
    if (v68)
    {
      v66 = __clz(__rbit64(v68));
      v37 = (v68 - 1) & v68;
      goto LABEL_24;
    }
  }

  v223 = v33;
  v222 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
  v88 = sub_2664E0C78();
  v37 = v88;
  v41 = 0;
  v89 = 1 << *(v36 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v36 + 64);
  v33 = (v89 + 63) >> 6;
  v212 = (v238 + 16);
  v213 = (v238 + 8);
  v238 = v246 + 8;
  v257 = (v88 + 64);
  v38 = v243;
  v249 = (v243 + 32);
  while (1)
  {
    v92 = v248;
    if (!v91)
    {
      break;
    }

    v93 = __clz(__rbit64(v91));
    v250 = (v91 - 1) & v91;
LABEL_42:
    v96 = v93 | (v41 << 6);
    v97 = *(v36 + 56);
    v98 = *(v36 + 48) + 16 * v96;
    a1 = *(v98 + 8);
    v253 = *v98;
    v99 = *(v38 + 16);
    v254 = *(v38 + 72) * v96;
    v99(v255, v97 + v254, v256);
    v252 = a1;

    sub_2664DF388();
    sub_2664DF378();
    sub_2664DE3C8();
    if (v100 <= 0.0)
    {
      sub_2664DF368();
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v101 = v214;
      v102 = __swift_project_value_buffer(v214, qword_280F914F0);
      swift_beginAccess();
      v103 = v247;
      (*v212)(v247, v102, v101);
      v104 = sub_2664DFE18();
      v105 = sub_2664E06D8();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&dword_26629C000, v104, v105, "HistoryStats cannot add instance from the future", v106, 2u);
        MEMORY[0x266784AD0](v106, -1, -1);

        (*v213)(v247, v101);
      }

      else
      {

        (*v213)(v103, v101);
      }

      v36 = v242;
      v32 = v251;
      v92 = v248;
    }

    (*v238)(v32, v240);
    v107 = v256;
    (*v245)(v255, v256);
    *&v257[(v96 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v96;
    v108 = (*(v37 + 48) + 16 * v96);
    v109 = v252;
    *v108 = v253;
    v108[1] = v109;
    (*v249)(*(v37 + 56) + v254, v92, v107);
    v110 = *(v37 + 16);
    v61 = __OFADD__(v110, 1);
    v111 = v110 + 1;
    if (v61)
    {
      goto LABEL_114;
    }

    *(v37 + 16) = v111;
    v91 = v250;
  }

  v94 = v41;
  while (1)
  {
    v41 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      goto LABEL_97;
    }

    if (v41 >= v33)
    {
      break;
    }

    v95 = *(v239 + 8 * v41);
    ++v94;
    if (v95)
    {
      v93 = __clz(__rbit64(v95));
      v250 = (v95 - 1) & v95;
      goto LABEL_42;
    }
  }

  v112 = sub_2664E0C78();
  v215 = v112;
  v32 = 0;
  v113 = 1 << *(v37 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  a1 = v114 & *(v37 + 64);
  v36 = (v113 + 63) >> 6;
  v254 = v112 + 64;
  for (i = v257; a1; i = v257)
  {
    v116 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
LABEL_61:
    v33 = v116 | (v32 << 6);
    v119 = *(v37 + 56);
    v120 = (*(v37 + 48) + 16 * v33);
    v121 = v120[1];
    v255 = *v120;
    v122 = v119 + *(v38 + 72) * v33;
    v123 = *(v38 + 16);
    v41 = v241;
    v124 = v38;
    v38 = v256;
    v123(v241, v122, v256);

    v125 = sub_2663D80F4(14400.0);
    (*(v124 + 8))(v41, v38);
    *(v254 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v126 = v215;
    v127 = (*(v215 + 48) + 16 * v33);
    *v127 = v255;
    v127[1] = v121;
    *(*(v126 + 56) + 8 * v33) = v125;
    v128 = *(v126 + 16);
    v61 = __OFADD__(v128, 1);
    v129 = v128 + 1;
    if (v61)
    {
      goto LABEL_115;
    }

    *(v126 + 16) = v129;
    v38 = v243;
  }

  v117 = v32;
  v33 = v240;
  v41 = v229;
  while (1)
  {
    v32 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_98;
    }

    if (v32 >= v36)
    {
      break;
    }

    v118 = *&i[8 * v32];
    ++v117;
    if (v118)
    {
      v116 = __clz(__rbit64(v118));
      a1 = (v118 - 1) & v118;
      goto LABEL_61;
    }
  }

  v130 = v227;
  sub_2664DE428();
  sub_2664DE398();
  v131 = v246;
  v225 = *(v246 + 8);
  v225(v130, v33);
  v132 = 1 << *(v242 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v38 = v133 & *(v242 + 64);
  v218 = (v132 + 63) >> 6;
  v219 = (v131 + 32);

  v220 = 0;
  v224 = 0;
  v134 = 0;
  v135 = MEMORY[0x277D84F98];
  v251 = MEMORY[0x277D84F98];
  v252 = MEMORY[0x277D84F98];
  v36 = v221;
  while (1)
  {
    v250 = v135;
    if (!v38)
    {
      if (v218 <= (v134 + 1))
      {
        v137 = (v134 + 1);
      }

      else
      {
        v137 = v218;
      }

      v32 = v137 - 1;
      while (1)
      {
        v136 = (v134 + 1);
        if (__OFADD__(v134, 1))
        {
          break;
        }

        if (v136 >= v218)
        {
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
          (*(*(v185 - 8) + 56))(v41, 1, 1, v185);
          v38 = 0;
          goto LABEL_77;
        }

        v38 = *(v239 + 8 * v136);
        ++v134;
        if (v38)
        {
          goto LABEL_76;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v136 = v134;
LABEL_76:
    v138 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v139 = v138 | (v136 << 6);
    v140 = (*(v242 + 48) + 16 * v139);
    v142 = *v140;
    v141 = v140[1];
    v143 = v243;
    v144 = v241;
    v145 = v256;
    (*(v243 + 16))(v241, *(v242 + 56) + *(v243 + 72) * v139, v256);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v147 = *(v146 + 48);
    *v41 = v142;
    *(v41 + 8) = v141;
    (*(v143 + 32))(v41 + v147, v144, v145);
    (*(*(v146 - 8) + 56))(v41, 0, 1, v146);

    v32 = v136;
    v36 = v221;
LABEL_77:
    v148 = v226;
    sub_2664C5F90(v41, v226);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    if ((*(*(v149 - 8) + 48))(v148, 1, v149) == 1)
    {
      break;
    }

    v248 = v32;
    v150 = *v148;
    v151 = v148[1];
    (*v249)(v36, v148 + *(v149 + 48), v256);
    v152 = v227;
    sub_2664DF378();
    v153 = v228;
    v154 = sub_2664DE3B8();
    v155 = v240;
    v156 = v225;
    v225(v152, v240);
    v254 = v150;
    v255 = v151;
    if (v154)
    {

      sub_2664DF378();
      v156(v153, v155);
      (*v219)(v153, v152, v155);
      v220 = v150;
      v224 = v151;
    }

    v157 = v222;
    v41 = v223;
    v158 = *v223;
    v37 = v258;
    v159 = v259;
    (*v223)(v258, v236, v259);
    v160 = v36;
    v253 = sub_2664DF3A8();
    v32 = *v157;
    (*v157)(v37, v159);
    v36 = v159;
    a1 = v237;
    v257 = v158;
    (v158)(v237, v235, v159);
    v161 = sub_2664DF3A8();
    (v32)(a1, v36);
    v33 = v253 + v161;
    if (__OFADD__(v253, v161))
    {
      goto LABEL_99;
    }

    v162 = v259;
    (v257)(v37, v234, v259);
    v36 = sub_2664DF3A8();
    (v32)(v37, v162);
    v61 = __OFADD__(v33, v36);
    v33 += v36;
    if (v61)
    {
      goto LABEL_100;
    }

    v36 = v160;
    v37 = v258;
    v163 = v259;
    (v257)(v258, v233, v259);
    v164 = sub_2664DF3A8();
    (v32)(v37, v163);
    v61 = __OFADD__(v33, v164);
    v33 += v164;
    if (v61)
    {
      goto LABEL_101;
    }

    v37 = v157;
    v165 = v258;
    v166 = v259;
    (v257)(v258, v232, v259);
    v167 = sub_2664DF3A8();
    (v32)(v165, v166);
    if (__OFADD__(v33, v167))
    {
      goto LABEL_102;
    }

    v246 = v38;
    v168 = (v33 + v167);
    v169 = v252;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v169;
    v33 = v254;
    a1 = v255;
    sub_26634F084(v254, v255, isUniquelyReferenced_nonNull_native, v168);
    v252 = aBlock[0];
    v247 = HistoryStats.total1Day.getter();
    v38 = v37;
    v37 = v258;
    v171 = v259;
    v172 = v231;
    (v257)(v258, v231, v259);
    v173 = sub_2664DF3A8();
    v253 = v32;
    (v32)(v37, v171);
    if (__OFADD__(v247, v173))
    {
      goto LABEL_103;
    }

    v174 = &v247[v173];
    v175 = v251;
    v176 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v175;
    sub_26634F084(v33, a1, v176, v174);
    v251 = aBlock[0];
    v177 = HistoryStats.total1Day.getter();
    v37 = v258;
    v178 = v259;
    (v257)(v258, v172, v259);
    v179 = sub_2664DF3A8();
    v253(v37, v178);
    v61 = __OFADD__(v177, v179);
    v33 = v177 + v179;
    if (v61)
    {
      goto LABEL_104;
    }

    v180 = v258;
    v181 = v259;
    (v257)(v258, v230, v259);
    v182 = sub_2664DF3A8();
    v253(v180, v181);
    if (__OFADD__(v33, v182))
    {
      goto LABEL_105;
    }

    v183 = v250;
    v184 = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v183;
    sub_26634F084(v254, v255, v184, (v33 + v182));

    (*v245)(v36, v256);
    v135 = aBlock[0];
    v134 = v248;
    v41 = v229;
    v38 = v246;
  }

  v186 = v225;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v187 = v214;
  v188 = __swift_project_value_buffer(v214, qword_280F914F0);
  swift_beginAccess();
  v189 = v208;
  (*v212)(v208, v188, v187);
  v190 = sub_2664DFE18();
  v191 = sub_2664E06E8();
  v192 = os_log_type_enabled(v190, v191);
  v193 = v228;
  v194 = v227;
  if (v192)
  {
    v195 = swift_slowAlloc();
    *v195 = 0;
    _os_log_impl(&dword_26629C000, v190, v191, "LastNowPlayingSignal#signal returning LastNowPlayingSignal", v195, 2u);
    MEMORY[0x266784AD0](v195, -1, -1);
  }

  (*v213)(v189, v187);
  sub_2664DE428();
  sub_2664DE388();
  v197 = v196;
  v198 = v240;
  v186(v194, v240);
  sub_2664DE388();
  v199 = Double.rounded(to:)(5);
  NowPlayingSignal = type metadata accessor for LastNowPlayingSignal();
  v201 = swift_allocObject();
  v202 = v224;
  *(v201 + 2) = v220;
  *(v201 + 3) = v202;
  v201[4] = v199;
  v203 = v217;
  *(v201 + 5) = v207;
  *(v201 + 6) = v203;
  v204 = v216;
  *(v201 + 7) = v215;
  *(v201 + 8) = v204;
  *(v201 + 9) = v197;
  v205 = v251;
  *(v201 + 10) = v252;
  *(v201 + 11) = v205;
  *(v201 + 12) = v250;
  v262 = NowPlayingSignal;
  v263 = &off_2877F4AE8;
  aBlock[0] = v201;
  v210(aBlock);
  v186(v193, v198);
  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_2664C2F3C(uint64_t a1)
{
  v84 = sub_2664DE438();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_2664DFE38();
  v5 = *(v101 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v101);
  v100 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664DF398();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v95 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v94 = &v77 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  MEMORY[0x28223BE20](v15);
  v85 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v96 = (&v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v93 = (&v77 - v23);
  v24 = *(a1 + 64);
  v79 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v78 = (v25 + 63) >> 6;
  v97 = (v9 + 32);
  v98 = (v9 + 16);
  v86 = v9;
  v91 = (v9 + 8);
  v92 = (v5 + 16);
  v90 = (v5 + 8);
  v82 = (v2 + 8);
  v87 = a1;

  v29 = 0;
  *&v30 = 136315650;
  v81 = v30;
  v80 = v17;
  while (v27)
  {
    v32 = v29;
LABEL_14:
    v35 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v36 = v35 | (v32 << 6);
    v37 = v86;
    v38 = (*(v87 + 48) + 16 * v36);
    v40 = *v38;
    v39 = v38[1];
    v41 = v85;
    (*(v86 + 16))(v85, *(v87 + 56) + *(v86 + 72) * v36, v8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v43 = *(v42 + 48);
    v44 = v96;
    *v96 = v40;
    v44[1] = v39;
    v34 = v44;
    (*(v37 + 32))(v44 + v43, v41, v8);
    (*(*(v42 - 8) + 56))(v34, 0, 1, v42);

    v99 = v32;
LABEL_15:
    v45 = v34;
    v46 = v93;
    sub_2664C5F90(v45, v93);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    v50 = v94;
    v49 = v95;
    if (v48 == 1)
    {
    }

    v51 = v46;
    v52 = *v46;
    v53 = v46[1];
    (*v97)(v17, v51 + *(v47 + 48), v8);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v54 = v101;
    v55 = __swift_project_value_buffer(v101, qword_280F914F0);
    swift_beginAccess();
    (*v92)(v100, v55, v54);
    v56 = *v98;
    (*v98)(v50, v17, v8);
    v56(v49, v17, v8);

    v57 = sub_2664DFE18();
    v58 = sub_2664E06C8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v102 = v89;
      *v59 = v81;
      v60 = sub_2662A320C(v52, v53, &v102);
      v88 = v58;
      v61 = v60;

      *(v59 + 4) = v61;
      *(v59 + 12) = 2080;
      v62 = v83;
      sub_2664DF378();
      sub_2662A3E50(&qword_280F914D8, MEMORY[0x277CC9578]);
      v63 = v84;
      v64 = sub_2664E0D48();
      v66 = v65;
      (*v82)(v62, v63);
      v67 = *v91;
      (*v91)(v50, v8);
      v68 = v67;
      v69 = sub_2662A320C(v64, v66, &v102);

      *(v59 + 14) = v69;
      *(v59 + 22) = 2080;
      sub_2664DF358();
      v70 = MEMORY[0x2667834D0]();
      v72 = v71;

      v68(v49, v8);
      v73 = sub_2662A320C(v70, v72, &v102);

      *(v59 + 24) = v73;
      _os_log_impl(&dword_26629C000, v57, v88, "LastNowPlayingSignal#signal For bundle %s - recency: %s frequencies: %s", v59, 0x20u);
      v74 = v89;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);

      (*v90)(v100, v101);
      v75 = v80;
      result = (v68)(v80, v8);
      v29 = v99;
      v17 = v75;
    }

    else
    {

      v31 = *v91;
      (*v91)(v49, v8);
      v31(v50, v8);
      (*v90)(v100, v101);
      result = (v31)(v17, v8);
      v29 = v99;
    }
  }

  if (v78 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v78;
  }

  v34 = v96;
  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v78)
    {
      v99 = v33 - 1;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
      (*(*(v76 - 8) + 56))(v34, 1, 1, v76);
      v27 = 0;
      goto LABEL_15;
    }

    v27 = *(v79 + 8 * v32);
    ++v29;
    if (v27)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_2664C3834(Swift::Double *a1@<X8>)
{
  v2 = sub_2664DE438();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF378();
  sub_2664DE388();
  (*(v3 + 8))(v6, v2);
  *a1 = Double.rounded(to:)(5);
}

uint64_t sub_2664C3940(uint64_t a1)
{
  v167 = sub_2664E0038();
  v3 = *(v167 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v167);
  v164 = &v161 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2664E00B8();
  v6 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v162 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v8;
  v9 = v1[2];
  v10 = v1[3];
  v166 = v3;
  if (v10)
  {

    v9 = sub_2664475B4(a1, v9, v10);
    v12 = v11;

    v13 = v1[3];
  }

  else
  {
    v12 = 0;
  }

  v1[2] = v9;
  v1[3] = v12;

  v14 = v1[5];

  v15 = sub_2664495A0(a1, v14);

  v16 = v1[5];
  v1[5] = v15;

  v17 = v1[6];

  v18 = sub_266449428(a1, v17);

  v19 = v1[6];
  v1[6] = v18;

  v20 = v1[7];

  v21 = sub_266449428(a1, v20);

  v22 = v1[7];
  v1[7] = v21;

  v23 = v1[8];

  v24 = sub_26644F128(a1, v23);

  v25 = v1[8];
  v1[8] = v24;

  v26 = v1[10];

  v27 = sub_266449428(a1, v26);

  v28 = v1[10];
  v1[10] = v27;

  v29 = v1[11];

  v30 = sub_266449428(a1, v29);

  v31 = v1[11];
  v1[11] = v30;

  v32 = v1[12];

  v33 = sub_266449428(a1, v32);

  v34 = v1[12];
  v1[12] = v33;

  v36 = sub_26639F100(v35);
  v171 = v1;
  v37 = v1[10];

  v170 = v36;
  v38 = sub_266430D18(v37, v36, 0);

  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v39 = sub_2664E0C78();
  v40 = v39;
  v41 = 0;
  v42 = 1 << *(v38 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v38 + 64);
  v45 = (v42 + 63) >> 6;
  for (i = v39 + 64; v44; v40[2] = v58)
  {
    v46 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
LABEL_13:
    v49 = v46 | (v41 << 6);
    v50 = (*(v38 + 48) + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    v53 = *(*(v38 + 56) + 8 * v49);

    v54 = Double.rounded(to:)(3);
    *(i + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v55 = (v40[6] + 16 * v49);
    *v55 = v51;
    v55[1] = v52;
    *(v40[7] + 8 * v49) = v54;
    v56 = v40[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v47 = v41;
  while (1)
  {
    v41 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v41 >= v45)
    {
      break;
    }

    v48 = *(v38 + 64 + 8 * v41);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v44 = (v48 - 1) & v48;
      goto LABEL_13;
    }
  }

  v59 = v171;
  v60 = v171[10];
  v171[10] = v40;

  v61 = v59[11];

  v63 = sub_266430D18(v62, v170, 0);

  v64 = sub_2664E0C78();
  v65 = v64;
  v41 = 0;
  v66 = 1 << *(v63 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & *(v63 + 64);
  v69 = (v66 + 63) >> 6;
  i = v64 + 64;
  if (!v68)
  {
LABEL_20:
    v71 = v41;
    while (1)
    {
      v41 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_70;
      }

      if (v41 >= v69)
      {

        v82 = v171;
        v83 = v171[11];
        v171[11] = v65;

        v84 = v82[12];

        v86 = sub_266430D18(v85, v170, 0);

        v87 = sub_2664E0C78();
        v88 = v87;
        v41 = 0;
        v89 = 1 << *(v86 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & *(v86 + 64);
        v92 = (v89 + 63) >> 6;
        i = v87 + 64;
        if (!v91)
        {
LABEL_32:
          v94 = v41;
          while (1)
          {
            v41 = v94 + 1;
            if (__OFADD__(v94, 1))
            {
              goto LABEL_71;
            }

            if (v41 >= v92)
            {

              v105 = v171;
              v106 = v171[12];
              v171[12] = v88;

              v107 = v105[6];

              v109 = sub_2663D8A24(v108, v170);

              v110 = sub_2664E0C78();
              v111 = v110;
              v41 = 0;
              v112 = 1 << *(v109 + 32);
              v113 = -1;
              if (v112 < 64)
              {
                v113 = ~(-1 << v112);
              }

              v114 = v113 & *(v109 + 64);
              v115 = (v112 + 63) >> 6;
              i = v110 + 64;
              if (!v114)
              {
LABEL_44:
                v117 = v41;
                while (1)
                {
                  v41 = v117 + 1;
                  if (__OFADD__(v117, 1))
                  {
                    goto LABEL_72;
                  }

                  if (v41 >= v115)
                  {

                    v128 = v171;
                    v129 = v171[6];
                    v171[6] = v111;

                    v130 = v128[7];

                    v132 = sub_2663D8A24(v131, v170);

                    v133 = sub_2664E0C78();
                    v134 = v133;
                    v41 = 0;
                    v135 = 1 << *(v132 + 32);
                    v136 = -1;
                    if (v135 < 64)
                    {
                      v136 = ~(-1 << v135);
                    }

                    v137 = v136 & *(v132 + 64);
                    v138 = (v135 + 63) >> 6;
                    i = v133 + 64;
                    if (!v137)
                    {
LABEL_56:
                      v140 = v41;
                      while (1)
                      {
                        v41 = v140 + 1;
                        if (__OFADD__(v140, 1))
                        {
                          goto LABEL_73;
                        }

                        if (v41 >= v138)
                        {

                          v41 = v171;
                          v151 = v171[7];
                          v171[7] = v134;

                          v152 = sub_2664C5518(v170, v41);

                          if (*(v152 + 16))
                          {
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
                            v153 = sub_2664E0C98();
                          }

                          else
                          {
                            v153 = MEMORY[0x277D84F98];
                          }

                          aBlock[0] = v153;

                          sub_2664C519C(v154, 1, aBlock);

                          v155 = *(v41 + 64);
                          *(v41 + 64) = aBlock[0];

                          if (qword_280F90D30 != -1)
                          {
                            goto LABEL_79;
                          }

                          goto LABEL_68;
                        }

                        v141 = *(v132 + 64 + 8 * v41);
                        ++v140;
                        if (v141)
                        {
                          v139 = __clz(__rbit64(v141));
                          v137 = (v141 - 1) & v141;
                          goto LABEL_61;
                        }
                      }
                    }

                    while (1)
                    {
                      v139 = __clz(__rbit64(v137));
                      v137 &= v137 - 1;
LABEL_61:
                      v142 = v139 | (v41 << 6);
                      v143 = (*(v132 + 48) + 16 * v142);
                      v144 = *v143;
                      v145 = v143[1];
                      v146 = *(*(v132 + 56) + 8 * v142);

                      v147 = Double.rounded(to:)(3);
                      *(i + ((v142 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v142;
                      v148 = (v134[6] + 16 * v142);
                      *v148 = v144;
                      v148[1] = v145;
                      *(v134[7] + 8 * v142) = v147;
                      v149 = v134[2];
                      v57 = __OFADD__(v149, 1);
                      v150 = v149 + 1;
                      if (v57)
                      {
                        goto LABEL_78;
                      }

                      v134[2] = v150;
                      if (!v137)
                      {
                        goto LABEL_56;
                      }
                    }
                  }

                  v118 = *(v109 + 64 + 8 * v41);
                  ++v117;
                  if (v118)
                  {
                    v116 = __clz(__rbit64(v118));
                    v114 = (v118 - 1) & v118;
                    goto LABEL_49;
                  }
                }
              }

              while (1)
              {
                v116 = __clz(__rbit64(v114));
                v114 &= v114 - 1;
LABEL_49:
                v119 = v116 | (v41 << 6);
                v120 = (*(v109 + 48) + 16 * v119);
                v121 = *v120;
                v122 = v120[1];
                v123 = *(*(v109 + 56) + 8 * v119);

                v124 = Double.rounded(to:)(3);
                *(i + ((v119 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v119;
                v125 = (v111[6] + 16 * v119);
                *v125 = v121;
                v125[1] = v122;
                *(v111[7] + 8 * v119) = v124;
                v126 = v111[2];
                v57 = __OFADD__(v126, 1);
                v127 = v126 + 1;
                if (v57)
                {
                  goto LABEL_77;
                }

                v111[2] = v127;
                if (!v114)
                {
                  goto LABEL_44;
                }
              }
            }

            v95 = *(v86 + 64 + 8 * v41);
            ++v94;
            if (v95)
            {
              v93 = __clz(__rbit64(v95));
              v91 = (v95 - 1) & v95;
              goto LABEL_37;
            }
          }
        }

        while (1)
        {
          v93 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
LABEL_37:
          v96 = v93 | (v41 << 6);
          v97 = (*(v86 + 48) + 16 * v96);
          v98 = *v97;
          v99 = v97[1];
          v100 = *(*(v86 + 56) + 8 * v96);

          v101 = Double.rounded(to:)(3);
          *(i + ((v96 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v96;
          v102 = (v88[6] + 16 * v96);
          *v102 = v98;
          v102[1] = v99;
          *(v88[7] + 8 * v96) = v101;
          v103 = v88[2];
          v57 = __OFADD__(v103, 1);
          v104 = v103 + 1;
          if (v57)
          {
            goto LABEL_76;
          }

          v88[2] = v104;
          if (!v91)
          {
            goto LABEL_32;
          }
        }
      }

      v72 = *(v63 + 64 + 8 * v41);
      ++v71;
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v68 = (v72 - 1) & v72;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v70 = __clz(__rbit64(v68));
    v68 &= v68 - 1;
LABEL_25:
    v73 = v70 | (v41 << 6);
    v74 = (*(v63 + 48) + 16 * v73);
    v75 = *v74;
    v76 = v74[1];
    v77 = *(*(v63 + 56) + 8 * v73);

    v78 = Double.rounded(to:)(3);
    *(i + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
    v79 = (v65[6] + 16 * v73);
    *v79 = v75;
    v79[1] = v76;
    *(v65[7] + 8 * v73) = v78;
    v80 = v65[2];
    v57 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v57)
    {
      break;
    }

    v65[2] = v81;
    if (!v68)
    {
      goto LABEL_20;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  swift_once();
LABEL_68:
  aBlock[4] = sub_2664C6000;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_43_1;
  v156 = _Block_copy(aBlock);

  v157 = v162;
  sub_2664E0068();
  v172 = MEMORY[0x277D84F90];
  sub_2662A3E50(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v158 = v164;
  v159 = v167;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v157, v158, v156);
  _Block_release(v156);
  (*(v166 + 8))(v158, v159);
  (*(v163 + 8))(v157, v165);
}

uint64_t sub_2664C4548(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v40 = v9;
    v11 = v10;
    v41 = swift_slowAlloc();
    v44 = v41;
    *v11 = 136316162;
    v12 = a1[3];
    v42 = a1[2];
    v43 = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v13 = sub_2664E0318();
    v15 = sub_2662A320C(v13, v14, &v44);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v16 = a1[5];

    v39 = v8;
    v17 = sub_2664E01D8();
    v19 = v18;

    v20 = sub_2662A320C(v17, v19, &v44);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    v21 = a1[6];

    v22 = sub_2664E01D8();
    v24 = v23;

    v25 = sub_2662A320C(v22, v24, &v44);

    *(v11 + 24) = v25;
    *(v11 + 32) = 2080;
    v26 = a1[7];

    v27 = sub_2664E01D8();
    v29 = v28;

    v30 = sub_2662A320C(v27, v29, &v44);

    *(v11 + 34) = v30;
    *(v11 + 42) = 2080;
    v31 = a1[8];

    v32 = sub_2664E01D8();
    v34 = v33;

    v35 = sub_2662A320C(v32, v34, &v44);

    *(v11 + 44) = v35;
    v8 = v39;
    _os_log_impl(&dword_26629C000, v39, v40, "LastNowPlayingSignal#applyCandidates mostRecentBundleIdentifier: %s, nowPlayingBundleRecency: %s, nowPlayingBundleScore: %s, nowPlayingBundleRecencyScore: %s, nowPlayingBundleCount: %s", v11, 0x34u);
    v36 = v41;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2664C4920()
{
  v0 = sub_2662C3A68(&unk_2877E1690);
  result = swift_arrayDestroy();
  qword_280F91C80 = v0;
  return result;
}

uint64_t sub_2664C496C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E9030;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000002664F11F0;
  v7 = v2[10];
  v8 = 0;
  v9 = 0;
  if (*(v7 + 16))
  {

    v10 = sub_2662A3E98(a1, a2);
    if (v11)
    {
      v9 = *(*(v7 + 56) + 8 * v10);
    }
  }

  v12 = MEMORY[0x277D839F8];
  *(inited + 48) = v9;
  *(inited + 72) = v12;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000002664F1210;
  v13 = v3[11];
  if (*(v13 + 16))
  {
    v14 = v3[11];

    v15 = sub_2662A3E98(a1, a2);
    if (v16)
    {
      v8 = *(*(v13 + 56) + 8 * v15);
    }
  }

  *(inited + 96) = v8;
  *(inited + 120) = v12;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000002664F1230;
  v17 = v3[12];
  if (*(v17 + 16))
  {
    v18 = v3[12];

    v19 = sub_2662A3E98(a1, a2);
    v20 = 0;
    if (v21)
    {
      v20 = *(*(v17 + 56) + 8 * v19);
    }
  }

  else
  {
    v20 = 0;
  }

  *(inited + 144) = v20;
  *(inited + 168) = v12;
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x80000002664F11B0;
  v22 = v3[3];
  if (v22)
  {
    if (v3[2] == a1 && v22 == a2)
    {
      result = 1;
    }

    else
    {
      result = sub_2664E0D88();
    }
  }

  else
  {
    result = 0;
  }

  v24 = MEMORY[0x277D839B0];
  *(inited + 192) = result & 1;
  *(inited + 216) = v24;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x80000002664F11D0;
  *(inited + 240) = v3[4];
  *(inited + 264) = v12;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x80000002664F1270;
  v25 = v3[5];
  if (*(v25 + 16))
  {
    v26 = v3[5];

    v27 = sub_2662A3E98(a1, a2);
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v27);
    }

    else
    {
      v29 = 0x4142750000000000;
    }
  }

  else
  {
    v29 = 0x4142750000000000;
  }

  *(inited + 288) = v29;
  *(inited + 312) = v12;
  *(inited + 320) = 0xD000000000000015;
  *(inited + 328) = 0x80000002664F1250;
  v30 = v3[6];
  v31 = 0;
  v32 = 0;
  if (*(v30 + 16))
  {
    v33 = v3[6];

    v34 = sub_2662A3E98(a1, a2);
    if (v35)
    {
      v32 = *(*(v30 + 56) + 8 * v34);
    }
  }

  *(inited + 336) = v32;
  *(inited + 360) = v12;
  *(inited + 368) = 0xD00000000000001CLL;
  *(inited + 376) = 0x80000002664F12D0;
  v36 = v3[7];
  if (*(v36 + 16))
  {
    v37 = v3[7];

    v38 = sub_2662A3E98(a1, a2);
    if (v39)
    {
      v31 = *(*(v36 + 56) + 8 * v38);
    }
  }

  *(inited + 384) = v31;
  *(inited + 408) = v12;
  *(inited + 416) = 0xD000000000000015;
  *(inited + 424) = 0x80000002664F1290;
  v40 = v3[8];
  if (*(v40 + 16))
  {
    v41 = v3[8];

    v42 = sub_2662A3E98(a1, a2);
    if (v43)
    {
      v44 = *(*(v40 + 56) + 8 * v42);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
  }

  v45 = 0;
  v46 = 0;
  v47 = MEMORY[0x277D83B88];
  *(inited + 432) = v44;
  *(inited + 456) = v47;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x80000002664F12B0;
  v48 = v3[8];
  *(inited + 504) = v47;
  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v48 + 64);
  v52 = (v49 + 63) >> 6;
  while (v51)
  {
    v53 = v45;
LABEL_49:
    v54 = __clz(__rbit64(v51));
    v51 &= v51 - 1;
    v55 = *(*(v48 + 56) + ((v53 << 9) | (8 * v54)));
    v56 = __OFADD__(v46, v55);
    v46 += v55;
    if (v56)
    {
      __break(1u);
LABEL_52:
      *(inited + 480) = v46;
      v57 = sub_2663854AC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
      swift_arrayDestroy();
      return v57;
    }
  }

  while (1)
  {
    v53 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v53 >= v52)
    {
      goto LABEL_52;
    }

    v51 = *(v48 + 64 + 8 * v53);
    ++v45;
    if (v51)
    {
      v45 = v53;
      goto LABEL_49;
    }
  }

  __break(1u);
  return result;
}

void sub_2664C4E1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2664C496C(a1, a2);
  if (!*(v4 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = sub_2662A3E98(0xD00000000000001BLL, 0x80000002664F11D0);
  if ((v7 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * v6, v19);
  sub_266318804(v19, v20);
  sub_266319BF4();
  swift_dynamicCast();
  [v18 doubleValue];
  v9 = v8;

  a3[6] = v9;
  if (!*(v5 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = sub_2662A3E98(0xD000000000000013, 0x80000002664F11F0);
  if ((v11 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_2662A01E8(*(v5 + 56) + 32 * v10, v19);
  sub_266318804(v19, v20);
  swift_dynamicCast();
  [v18 doubleValue];
  v13 = v12;

  a3[33] = v13;
  if (!*(v5 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_2662A3E98(0xD000000000000015, 0x80000002664F1250);
  if (v15)
  {
    sub_2662A01E8(*(v5 + 56) + 32 * v14, v19);

    sub_266318804(v19, v20);
    swift_dynamicCast();
    [v18 doubleValue];
    v17 = v16;

    a3[34] = v17;
    return;
  }

LABEL_13:
  __break(1u);
}

void *sub_2664C500C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[12];

  return v0;
}

uint64_t sub_2664C5064()
{
  sub_2664C500C();

  return swift_deallocClassInstance();
}

uint64_t sub_2664C50D4()
{
  if (qword_280F90268 != -1)
  {
    swift_once();
  }
}

void sub_2664C519C(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_2662A3E98(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_266450E14(v15, v5 & 1);
    v17 = *a3;
    v10 = sub_2662A3E98(v7, v6);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2664E0DD8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_26645410C();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2664E0B28();
    MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
    sub_2664E0C28();
    MEMORY[0x2667833B0](39, 0xE100000000000000);
    sub_2664E0C48();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v28 = sub_2662A3E98(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_266450E14(v32, 1);
        v33 = *a3;
        v28 = sub_2662A3E98(v7, v6);
        if ((v16 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v28) = v26;
      v37 = v35[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_2664C5518(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v40 = MEMORY[0x277D84F90];
    sub_2662FD1D0(0, v3, 0);
    v38 = v40;
    v5 = v2 + 56;
    v6 = -1 << *(v2 + 32);
    result = sub_2664E0A18();
    v7 = result;
    v8 = 0;
    v32 = v2 + 64;
    v33 = v3;
    v34 = v2 + 56;
    v35 = v2;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v37 = *(v2 + 36);
      v11 = (*(v2 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(a2 + 64);
      v15 = *(v14 + 16);

      if (v15)
      {

        v16 = sub_2662A3E98(v12, v13);
        if (v17)
        {
          v18 = *(*(v14 + 56) + 8 * v16);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v37;
      v21 = v38;
      v41 = v38;
      v23 = *(v38 + 16);
      v22 = *(v38 + 24);
      if (v23 >= v22 >> 1)
      {
        v39 = v19;
        result = sub_2662FD1D0((v22 > 1), v23 + 1, 1);
        v20 = v37;
        v19 = v39;
        v21 = v41;
      }

      *(v21 + 16) = v23 + 1;
      v24 = (v21 + 24 * v23);
      v24[4] = v12;
      v24[5] = v13;
      v24[6] = v19;
      v2 = v35;
      v9 = 1 << *(v35 + 32);
      if (v7 >= v9)
      {
        goto LABEL_29;
      }

      v5 = v34;
      v25 = *(v34 + 8 * v10);
      if ((v25 & (1 << v7)) == 0)
      {
        goto LABEL_30;
      }

      v38 = v21;
      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v26 = v25 & (-2 << (v7 & 0x3F));
      if (v26)
      {
        v9 = __clz(__rbit64(v26)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v10 << 6;
        v28 = v10 + 1;
        v29 = (v32 + 8 * v10);
        while (v28 < (v9 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_26634AE1C(v7, v20, 0);
            v9 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_26634AE1C(v7, v20, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v33)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_2664C57AC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v34 = sub_2664DE438();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v32 = sub_26632958C(1014);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v3;
    v17 = v7;
    v18 = a2;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "LastNowPlayingSignal#signal", v16, 2u);
    v20 = v19;
    a2 = v18;
    v7 = v17;
    v3 = v30;
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if (qword_280F90080 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 2) = v32;
  *(v21 + 3) = v22;
  *(v21 + 4) = a2;

  sub_2664DE428();
  v24 = v33;
  v23 = v34;
  (*(v3 + 16))(v33, v7, v34);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = (v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v25, v24, v23);
  v28 = (v27 + v26);
  *v28 = sub_266352BC8;
  v28[1] = v21;

  sub_2662DF794(sub_2664C5ECC, v27);

  return (*(v3 + 8))(v7, v23);
}

uint64_t sub_2664C5BAC(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740B8, &qword_2664F0638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C0, &unk_2664F0640);
  v10 = sub_2664E0318();
  v21 = v11;
  v22 = v10;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v12 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v13 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = "appSelectionSignalsSignal";
  *(v15 + 24) = 25;
  *(v15 + 32) = 2;
  (*(v4 + 32))(v15 + v13, v7, v3);
  v16 = (v15 + v14);
  *v16 = v23;
  v16[1] = a2;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2664E36F0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_2662C4094();
  v18 = v21;
  *(v17 + 32) = v22;
  *(v17 + 40) = v18;
  sub_2664DFDC8();

  v19 = swift_allocObject();
  *(v19 + 16) = sub_266352A18;
  *(v19 + 24) = v15;

  sub_2664C57AC(sub_266352AC0, v19);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2664C5ECC(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2664C1240(a1, v1 + v4, v6, v7);
}

uint64_t sub_2664C5F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2664C604C(void *a1, void *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v152 = a6;
  v151 = a5;
  v150 = a4;
  v149 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v137 - v10;
  v12 = sub_2664DE268();
  v153 = *(v12 - 8);
  v13 = *(v153 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v142 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v140 = &v137 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v138 = &v137 - v19;
  MEMORY[0x28223BE20](v18);
  v145 = &v137 - v20;
  v21 = sub_2664DFE38();
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v144 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v143 = &v137 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v141 = &v137 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v139 = &v137 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v137 - v32;
  v34 = a3[1];
  v158 = *a3;
  v35 = a3[2];
  v159 = v34;
  *v160 = v35;
  *&v160[15] = *(a3 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v21, qword_280F914F0);
  swift_beginAccess();
  v37 = v22[2];
  v155 = v21;
  v146 = v37;
  (v37)(v33, v36);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06C8();
  v40 = os_log_type_enabled(v38, v39);
  v154 = a2;
  if (v40)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_26629C000, v38, v39, "PlaybackHelpers#resolver...", v41, 2u);
    v42 = v41;
    a2 = v154;
    MEMORY[0x266784AD0](v42, -1, -1);
  }

  v44 = v22 + 1;
  v43 = v22[1];
  v45 = v155;
  v148 = v44;
  v147 = v43;
  v43(v33, v155);
  v46 = sub_2664C813C(a2);
  v47 = a2[4];
  v48 = a2[5];
  sub_2664DE258();
  v49 = v153;
  if ((*(v153 + 48))(v11, 1, v12) == 1)
  {

    sub_2663E3554(v11);
    v50 = v144;
    v146(v144, v36, v45);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06D8();

    v53 = v45;
    if (os_log_type_enabled(v51, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v156[0] = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_2662A320C(v47, v48, v156);
      _os_log_impl(&dword_26629C000, v51, v52, "PlaybackHelpers#resolver url conversion failed for : %{public}s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    v147(v50, v53);
    goto LABEL_9;
  }

  v67 = v145;
  (*(v49 + 32))(v145, v11, v12);
  v68 = *(v46 + 2);
  v69 = 0x277D27000uLL;
  v70 = v46;
  v71 = objc_opt_self();
  v72 = sub_2664DE208();
  if (v68)
  {
    v73 = sub_2664E0488();
    v74 = [v71 supportsContainerURL:v72 itemURLs:v73];

    if (v74)
    {
      v75 = v141;
      v146(v141, v36, v155);
      v76 = v153;
      v77 = v140;
      (*(v153 + 16))(v140, v67, v12);

      v78 = sub_2664DFE18();
      v79 = sub_2664E06C8();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v156[0] = v146;
        *v80 = 136446466;
        sub_2663C12D0();
        v81 = sub_2664E0D48();
        v82 = v77;
        v84 = v83;
        v85 = *(v76 + 8);
        v85(v82, v12);
        v86 = sub_2662A320C(v81, v84, v156);

        *(v80 + 4) = v86;
        *(v80 + 12) = 2082;
        v87 = MEMORY[0x2667834D0](v70, v12);
        v89 = sub_2662A320C(v87, v88, v156);

        *(v80 + 14) = v89;
        v90 = v79;
        v91 = v85;
        _os_log_impl(&dword_26629C000, v78, v90, "PlaybackHelpers#resolver using x scheme, url: %{public}s, container url: %{public}s", v80, 0x16u);
        v92 = v146;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v92, -1, -1);
        MEMORY[0x266784AD0](v80, -1, -1);

        v93 = v141;
      }

      else
      {

        v91 = *(v76 + 8);
        v91(v77, v12);
        v93 = v75;
      }

      v147(v93, v155);
      v128 = objc_allocWithZone(MEMORY[0x277D27890]);
      v129 = v145;
      v130 = sub_2664DE208();
      v131 = sub_2664E0488();

      v56 = [v128 initWithContextID:0 containerURL:v130 itemURLs:v131];

      v91(v129, v12);
      v132 = v56;
      goto LABEL_10;
    }

LABEL_19:
    v113 = v143;
    v114 = v155;
    v146(v143, v36, v155);
    v115 = v153;
    v116 = v142;
    (*(v153 + 16))(v142, v67, v12);
    v117 = sub_2664DFE18();
    v118 = sub_2664E06E8();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v115;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v156[0] = v121;
      *v120 = 136446210;
      sub_2663C12D0();
      v122 = sub_2664E0D48();
      v124 = v123;
      v125 = *(v119 + 8);
      v125(v116, v12);
      v126 = sub_2662A320C(v122, v124, v156);

      *(v120 + 4) = v126;
      _os_log_impl(&dword_26629C000, v117, v118, "PlaybackHelpers#resolver url scheme not supported: %{public}s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      MEMORY[0x266784AD0](v121, -1, -1);
      MEMORY[0x266784AD0](v120, -1, -1);

      v147(v143, v155);
      v125(v67, v12);
    }

    else
    {

      v127 = *(v115 + 8);
      v127(v116, v12);
      v147(v113, v114);
      v127(v67, v12);
    }

LABEL_9:
    v56 = 0;
    goto LABEL_10;
  }

  v94 = [v71 supportsURL_];

  if (!v94)
  {
    goto LABEL_19;
  }

  v95 = v139;
  v96 = v67;
  v97 = v155;
  v146(v139, v36, v155);
  v98 = v153;
  v99 = v138;
  (*(v153 + 16))(v138, v96, v12);
  v100 = sub_2664DFE18();
  v101 = sub_2664E06C8();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = v98;
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v156[0] = v104;
    *v103 = 136446210;
    sub_2663C12D0();
    v105 = sub_2664E0D48();
    v106 = v99;
    v108 = v107;
    v109 = *(v102 + 8);
    v109(v106, v12);
    v69 = 0x277D27000;
    v110 = sub_2662A320C(v105, v108, v156);

    *(v103 + 4) = v110;
    _os_log_impl(&dword_26629C000, v100, v101, "PlaybackHelpers#resolver using x scheme, url: %{public}s", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    MEMORY[0x266784AD0](v104, -1, -1);
    MEMORY[0x266784AD0](v103, -1, -1);

    v111 = v139;
    v112 = v155;
  }

  else
  {

    v109 = *(v98 + 8);
    v109(v99, v12);
    v111 = v95;
    v112 = v97;
  }

  v147(v111, v112);
  v133 = objc_allocWithZone(*(v69 + 2192));
  v134 = v145;
  v135 = sub_2664DE208();
  v56 = [v133 initWithContextID:0 url:v135];

  v109(v134, v12);
  v136 = v56;
LABEL_10:
  v57 = v149;
  v58 = v149[3];
  v59 = v149[4];
  v155 = __swift_project_boxed_opaque_existential_1(v149, v58);
  v60 = *(&v158 + 1);
  v61 = v159;
  sub_2662A5550(v57, v157);
  v62 = swift_allocObject();
  *(v62 + 16) = v56;
  *(v62 + 24) = v158;
  v63 = *v160;
  *(v62 + 40) = v159;
  *(v62 + 56) = v63;
  *(v62 + 71) = *&v160[15];
  *(v62 + 80) = v154;
  sub_2662A8618(v157, v62 + 88);
  *(v62 + 128) = v150;
  v64 = v152;
  *(v62 + 136) = v151;
  *(v62 + 144) = v64;
  v65 = v56;
  v66 = *(v59 + 24);

  sub_2662D2A64(&v158, v156);

  v66(v60, v61, sub_2664C848C, v62, v58, v59);
}

uint64_t sub_2664C6E58(int a1, void *a2, id a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8, uint64_t a9)
{
  v10 = a7;
  if (a3)
  {
    v17 = *(a4 + 49);
    if (v17 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17 == 1;
    }

    [a3 setRepeatType_];
    [a3 setShuffleType_];
    [a3 setShouldOverrideManuallyCuratedQueue_];
    if (a5[11])
    {
      v19 = a5[10];
      v20 = sub_2664E02A8();
    }

    else
    {
      v20 = 0;
    }

    [a3 setSiriRecommendationID_];

    swift_beginAccess();
    if (a5[3])
    {
      v21 = a5[2];
      v22 = a5[3];

      v23 = sub_2664E02A8();
    }

    else
    {
      v23 = 0;
    }

    [a3 setSiriAssetInfo_];

    v24 = sub_2664E01A8();
    [a3 setSiriWHAMetricsInfo_];

    v25 = sub_2664E02A8();
    [a3 setFeatureName_];

    if (a2)
    {
      a2 = sub_2664E02A8();
    }

    v10 = a7;
    [a3 setHomeKitUserIdentifier_];

    [a3 setShouldImmediatelyStartPlayback_];
  }

  v27 = a6[3];
  v26 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v27);
  v28 = *(a4 + 8);
  v37 = *(a4 + 16);
  v29 = a5[12];
  v30 = a5[13];
  v36 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  *(v31 + 24) = v10;
  v32 = *(a4 + 16);
  *(v31 + 32) = *a4;
  *(v31 + 48) = v32;
  *(v31 + 64) = *(a4 + 32);
  *(v31 + 79) = *(a4 + 47);
  *(v31 + 88) = a8;
  *(v31 + 96) = a9;
  v33 = *(v26 + 8);
  sub_2662D2A64(a4, v38);

  v34 = a3;
  v33(v28, v37, v36, v30, sub_2664C84C8, v31, v27, v26);
}

void sub_2664C7124(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a4;
  v65 = a6;
  v62 = a5;
  v9 = sub_2664DFE08();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v63 = *(a1 + 8);
  if (a2)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    [a2 setUserIdentity_];
  }

  v66 = a2;
  v59 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (a3 == 2)
  {
    if (qword_280F8F800 != -1)
    {
      swift_once();
    }

    v16 = qword_280F8F808;
    v68 = type metadata accessor for MultiUserConnectionProvider();
    v69 = &protocol witness table for MultiUserConnectionProvider;
    *&v67 = v16;
    v17 = type metadata accessor for AccountProvider();
    v18 = swift_allocObject();

    v58 = sub_266360778(v15, &v67, v18);

    v19 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
    v20 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2662A5550(qword_280F90B28, &v67);
    if (qword_280F905C0 != -1)
    {
      swift_once();
    }

    *&v70 = qword_280F905C8;
    *(&v70 + 5) = *(&qword_280F905C8 + 5);
    v72 = &type metadata for FeatureFlagProvider;
    v73 = &protocol witness table for FeatureFlagProvider;
    v21 = type metadata accessor for SharedContextProvider();
    inited = swift_initStaticObject();
    v87 = &protocol witness table for SharedContextProvider;
    v86 = v21;
    v84 = &protocol witness table for SubscriptionProvider;
    *&v85 = inited;
    v83 = &type metadata for SubscriptionProvider;
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v23 = qword_280F91470;
    v80 = type metadata accessor for SiriKitTaskLoggingProvider();
    v81 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v79 = v23;
    v77 = &type metadata for WatchOSSupportProvider;
    v78 = &off_2877EC0A0;
    type metadata accessor for MediaPlaybackProvider();
    v24 = swift_initStackObject();
    __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v24[28] = &type metadata for WatchOSSupportProvider;
    v24[29] = &off_2877EC0A0;
    v24[5] = v17;
    v24[6] = &protocol witness table for AccountProvider;
    v25 = v59;
    v24[2] = v58;
    v24[17] = v25;
    v24[18] = v19;
    v24[19] = v20;
    sub_2662A8618(&v67, (v24 + 20));
    sub_2662A8618(&v70, (v24 + 30));
    sub_2662A8618(&v85, (v24 + 35));
    sub_2662A8618(&v82, (v24 + 7));
    sub_2662A8618(&v79, (v24 + 12));

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v26 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    sub_26648D3D0(0, v24, v75);
    sub_2664E0838();
    sub_2664DFDD8();
    swift_setDeallocating();
    sub_2664A5B64();
    swift_deallocClassInstance();
    (*(v60 + 8))(v12, v61);
    LODWORD(v61) = v75[0] == 4;
    v27 = [objc_opt_self() systemMediaApplicationDestination];
    v28 = v64;
    v29 = *(v64 + 24);
    v30 = sub_2664E0488();
    v31 = swift_allocObject();
    v32 = *(v28 + 16);
    *(v31 + 16) = *v28;
    *(v31 + 32) = v32;
    *(v31 + 48) = *(v28 + 32);
    *(v31 + 63) = *(v28 + 47);
    v33 = v63;
    v35 = v65;
    v34 = v66;
    *(v31 + 72) = v62;
    *(v31 + 80) = v35;
    *(v31 + 88) = v13;
    *(v31 + 96) = v33;
    *(v31 + 104) = v34;
    v73 = sub_2664C84DC;
    v74 = v31;
    *&v70 = MEMORY[0x277D85DD0];
    *(&v70 + 1) = 1107296256;
    v71 = sub_2663A0C48;
    v72 = &block_descriptor_50;
    v36 = _Block_copy(&v70);
    sub_2662D2A64(v28, &v67);

    sub_266465164(v13, v33);
    v37 = v34;

    [v27 resolveWithQueue:0 hashedRouteIdentifiers:v30 localPlaybackPermitted:v61 audioRoutingInfo:0 completion:v36];
  }

  else
  {
    if (qword_280F8F800 != -1)
    {
      swift_once();
    }

    v38 = qword_280F8F808;
    v68 = type metadata accessor for MultiUserConnectionProvider();
    v69 = &protocol witness table for MultiUserConnectionProvider;
    *&v67 = v38;
    v39 = type metadata accessor for AccountProvider();
    v40 = swift_allocObject();

    v58 = sub_266360778(v15, &v67, v40);

    v57 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
    v41 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_2662A5550(qword_280F90B28, &v67);
    if (qword_280F905C0 != -1)
    {
      swift_once();
    }

    *&v70 = qword_280F905C8;
    *(&v70 + 5) = *(&qword_280F905C8 + 5);
    v72 = &type metadata for FeatureFlagProvider;
    v73 = &protocol witness table for FeatureFlagProvider;
    v42 = type metadata accessor for SharedContextProvider();
    v43 = swift_initStaticObject();
    v87 = &protocol witness table for SharedContextProvider;
    v86 = v42;
    v84 = &protocol witness table for SubscriptionProvider;
    *&v85 = v43;
    v83 = &type metadata for SubscriptionProvider;
    if (qword_280F91468 != -1)
    {
      swift_once();
    }

    v44 = qword_280F91470;
    v80 = type metadata accessor for SiriKitTaskLoggingProvider();
    v81 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v79 = v44;
    v77 = &type metadata for WatchOSSupportProvider;
    v78 = &off_2877EC0A0;
    type metadata accessor for MediaPlaybackProvider();
    v45 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v76, &type metadata for WatchOSSupportProvider);
    v45[28] = &type metadata for WatchOSSupportProvider;
    v45[29] = &off_2877EC0A0;
    v45[5] = v39;
    v45[6] = &protocol witness table for AccountProvider;
    v46 = v59;
    v45[2] = v58;
    v47 = v57;
    v45[17] = v46;
    v45[18] = v47;
    v45[19] = v41;
    sub_2662A8618(&v67, (v45 + 20));
    sub_2662A8618(&v70, (v45 + 30));
    sub_2662A8618(&v85, (v45 + 35));
    sub_2662A8618(&v82, (v45 + 7));
    sub_2662A8618(&v79, (v45 + 12));

    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v48 = qword_280F91D48;
    sub_2664DFDE8();
    sub_2664E0848();
    sub_2664DFDC8();
    v59 = (a3 & 0x1010101);
    sub_26648D3D0(v59, v45, v75);
    sub_2664E0838();
    sub_2664DFDD8();
    swift_setDeallocating();
    sub_2664A5B64();
    swift_deallocClassInstance();
    (*(v60 + 8))(v12, v61);
    LODWORD(v61) = v75[0] == 4;
    v27 = [objc_opt_self() systemMediaApplicationDestination];
    v49 = v64;
    v50 = *(v64 + 24);
    v30 = sub_2664E0488();
    v51 = swift_allocObject();
    v52 = *(v49 + 16);
    *(v51 + 16) = *v49;
    *(v51 + 32) = v52;
    *(v51 + 48) = *(v49 + 32);
    *(v51 + 63) = *(v49 + 47);
    v53 = v63;
    v54 = v65;
    v55 = v66;
    *(v51 + 72) = v62;
    *(v51 + 80) = v54;
    *(v51 + 88) = v13;
    *(v51 + 96) = v53;
    *(v51 + 104) = v55;
    v73 = sub_2664C894C;
    v74 = v51;
    *&v70 = MEMORY[0x277D85DD0];
    *(&v70 + 1) = 1107296256;
    v71 = sub_2663A0C48;
    v72 = &block_descriptor_13;
    v36 = _Block_copy(&v70);
    sub_2662D2A64(v49, &v67);

    sub_266465164(v13, v53);
    v56 = v55;

    [v27 resolveWithQueue:0 hashedRouteIdentifiers:v30 localPlaybackPermitted:v61 audioRoutingInfo:v59 completion:v36];
  }

  _Block_release(v36);
}

void sub_2664C7C6C(void *a1, uint64_t a2, void (*a3)(void **), uint64_t a4, void *a5, void *a6, void *a7)
{
  LOBYTE(v17) = *(a2 + 48);
  v12 = a7;
  v13 = sub_2664C7D24(&v17);
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a1;
  v21 = v13;
  v22 = 0;
  sub_266465164(a5, a6);
  v14 = a1;
  a3(&v17);
  v15 = v19;
  v16 = v20;
  sub_26633C3AC(v17, v18);
}

uint64_t sub_2664C7D24(unsigned __int8 *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v34 = &v33 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v35 = *a1;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v16 = v3[2];
  v16(v14, v15, v2);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v7;
    v20 = v2;
    v21 = v12;
    v22 = v3;
    v23 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PlaybackHelpers#playbackQueueInsertionPosition...", v19, 2u);
    v24 = v23;
    v3 = v22;
    v12 = v21;
    v2 = v20;
    v7 = v33;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = v3[1];
  v25(v14, v2);
  if (v35 == 2)
  {
    v7 = v34;
    v16(v34, v15, v2);
    v26 = sub_2664DFE18();
    v30 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v30))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v30, "PlaybackHelpers#playbackQueueInsertionPosition Tail", v28, 2u);
      v29 = 1;
LABEL_13:
      v12 = v7;
      goto LABEL_14;
    }

    v29 = 1;
LABEL_18:
    v12 = v7;
    goto LABEL_19;
  }

  if (v35 != 1)
  {
    v16(v7, v15, v2);
    v26 = sub_2664DFE18();
    v31 = sub_2664E06C8();
    if (os_log_type_enabled(v26, v31))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v31, "PlaybackHelpers#playbackQueueInsertionPosition defaulting to Head", v28, 2u);
      v29 = 0;
      goto LABEL_13;
    }

    v29 = 0;
    goto LABEL_18;
  }

  v16(v12, v15, v2);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();
  if (!os_log_type_enabled(v26, v27))
  {
    v29 = 0;
    goto LABEL_19;
  }

  v28 = swift_slowAlloc();
  *v28 = 0;
  _os_log_impl(&dword_26629C000, v26, v27, "PlaybackHelpers#playbackQueueInsertionPosition Head", v28, 2u);
  v29 = 0;
LABEL_14:
  MEMORY[0x266784AD0](v28, -1, -1);
LABEL_19:

  v25(v12, v2);
  return v29;
}

char *sub_2664C813C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_2664DE268();
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[9];
  if (v9 >> 62)
  {
    goto LABEL_25;
  }

  v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v30)
  {
    while (1)
    {
      v10 = 0;
      v28 = v9 & 0xFFFFFFFFFFFFFF8;
      v29 = v9 & 0xC000000000000001;
      v24 = (v23 + 32);
      v25 = (v23 + 48);
      v11 = (v23 + 56);
      v27 = MEMORY[0x277D84F90];
      while (v29)
      {
        v12 = MEMORY[0x266783B70](v10, v9);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_23;
        }

LABEL_10:
        v14 = *(v12 + 32) == a1[4] && *(v12 + 40) == a1[5];
        if (v14 || (v15 = *(v12 + 32), v16 = *(v12 + 40), (sub_2664E0D88() & 1) != 0))
        {

          (*v11)(v5, 1, 1, v6);
        }

        else
        {
          sub_2664DE258();

          if ((*v25)(v5, 1, v6) != 1)
          {
            v17 = *v24;
            (*v24)(v26, v5, v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_266384A4C(0, *(v27 + 2) + 1, 1, v27);
            }

            v19 = *(v27 + 2);
            v18 = *(v27 + 3);
            if (v19 >= v18 >> 1)
            {
              v27 = sub_266384A4C(v18 > 1, v19 + 1, 1, v27);
            }

            v20 = v26;
            v21 = v27;
            *(v27 + 2) = v19 + 1;
            v17(&v21[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19], v20, v6);
            goto LABEL_6;
          }
        }

        sub_2663E3554(v5);
LABEL_6:
        ++v10;
        if (v13 == v30)
        {
          return v27;
        }
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v12 = *(v9 + 8 * v10 + 32);

      v13 = v10 + 1;
      if (!__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (sub_2664E0A68())
      {
        v30 = sub_2664E0A68();
        if (v30)
        {
          continue;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);
  if (v5 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2664C8564(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_2664DE268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = v5;
    v20 = a1;
    v21 = v6;
    v22 = v7;
    v23 = v10;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PlaybackHelpers#isXSchemeSupported...", v19, 2u);
    v25 = v24;
    v10 = v23;
    v7 = v22;
    v6 = v21;
    a1 = v20;
    v5 = v36;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v12 + 8))(v15, v11);
  v26 = sub_2664C813C(a1);
  v27 = a1[4];
  v28 = a1[5];
  sub_2664DE258();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v29 = *(v26 + 2);
    v30 = objc_opt_self();
    v31 = sub_2664DE208();
    if (v29)
    {
      v32 = sub_2664E0488();

      v33 = [v30 supportsContainerURL:v31 itemURLs:v32];

      (*(v7 + 8))(v10, v6);
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v35 = [v30 supportsURL_];

      (*(v7 + 8))(v10, v6);

      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  sub_2663E3554(v5);
  return 0;
}

uint64_t sub_2664C8950()
{
  v1 = v0;
  sub_2664E0B28();
  v2 = sub_2663430A0();
  MEMORY[0x2667833B0](v2);

  MEMORY[0x2667833B0](0x6D65744962757320, 0xEA00000000003A73);
  v3 = v0[9];
  v4 = type metadata accessor for PlaybackItem();
  v5 = MEMORY[0x2667834D0](v3, v4);
  MEMORY[0x2667833B0](v5);

  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664FBFA0);
  v9 = v1[10];
  v11 = v1[11];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  v6 = sub_2664E0318();
  MEMORY[0x2667833B0](v6);

  MEMORY[0x2667833B0](0xD000000000000026, 0x80000002664FBFC0);
  v10 = v1[12];
  v12 = v1[13];

  v7 = sub_2664E0318();
  MEMORY[0x2667833B0](v7);

  return 0;
}

uint64_t PlaybackItemContainer.__allocating_init(_:assetInfo:subItems:recommendationID:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v17[9] = a5;
  v17[10] = a6;
  v17[11] = a7;
  v17[12] = a8;
  v17[13] = a9;
  return PlaybackItem.init(_:assetInfo:)(a1, a2, a3, a4);
}

uint64_t PlaybackItemContainer.init(_:assetInfo:subItems:recommendationID:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[9] = a5;
  v9[10] = a6;
  v9[11] = a7;
  v9[12] = a8;
  v9[13] = a9;
  return PlaybackItem.init(_:assetInfo:)(a1, a2, a3, a4);
}

uint64_t PlaybackItemContainer.recommendationID.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t PlaybackItemContainer.sharedUserIdFromPlayableMusicAccount.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t sub_2664C8C04()
{
  v1 = v0[9];

  v2 = v0[11];

  v3 = v0[13];
}

void *PlaybackItemContainer.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return v0;
}

uint64_t PlaybackItemContainer.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t sub_2664C8D6C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 24 * (v10 | (v9 << 6)));
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 2);
    swift_bridgeObjectRetain_n();
    sub_2664D0B88(&v15, v12, v13, v14);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2664C8E9C()
{
  type metadata accessor for NowPlayingUsageProvider();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v0[2] = 0;
  v0[3] = v1;
  v0[4] = MEMORY[0x277D84F98];
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v3 = sub_2664E02A8();
  [v2 setName_];

  v0[5] = v2;
  qword_280F91C50 = v0;
}

uint64_t sub_2664C8F4C(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v86 = a2;
  v77 = *v2;
  v78 = sub_2664DE438();
  v76 = *(v78 - 8);
  v3 = *(v76 + 64);
  v4 = MEMORY[0x28223BE20](v78);
  v74 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = v63 - v6;
  v70 = sub_2664E0018();
  v69 = *(v70 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v9 = (v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2664E00E8();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = v63 - v14;
  v15 = sub_2664E0038();
  v82 = *(v15 - 8);
  v83 = v15;
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v15);
  v79 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664E00B8();
  v80 = *(v18 - 8);
  v81 = v18;
  v19 = *(v80 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v71 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v63 - v27;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  v30 = v23[2];
  v68 = v29;
  v66 = v30;
  v30(v28, v29, v22);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v23;
    v34 = v21;
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "NowPlayingUsageProvider#affinity...", v35, 2u);
    v36 = v35;
    v21 = v34;
    v23 = v33;
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v39 = v23[1];
  v37 = v23 + 1;
  v38 = v39;
  v39(v28, v22);
  v40 = v84;
  if (*(v84 + 16) <= 0.0)
  {
    v64 = v38;
    v65 = v37;
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v63[1] = qword_280F90D38;
    v45 = v67;
    sub_2664E00C8();
    *v9 = 5;
    v46 = v69;
    v47 = v70;
    (*(v69 + 104))(v9, *MEMORY[0x277D85188], v70);
    v48 = v72;
    MEMORY[0x266783140](v45, v9);
    (*(v46 + 8))(v9, v47);
    v73 = *(v73 + 8);
    v63[0] = v10;
    (v73)(v45, v10);
    v92 = sub_2664D44D0;
    v93 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_2662A3F90;
    v91 = &block_descriptor_51;
    v49 = _Block_copy(&aBlock);

    sub_2664E0068();
    v87 = MEMORY[0x277D84F90];
    sub_2664D44D8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v50 = v21;
    v51 = v79;
    v52 = v83;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v48, v50, v51, v49);
    _Block_release(v49);
    (*(v82 + 8))(v51, v52);
    (*(v80 + 8))(v50, v81);
    (v73)(v48, v63[0]);

    v53 = v71;
    v66(v71, v68, v22);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06C8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "NowPlayingUsageProvider#affinity no data, loading last 150...", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v64(v53, v22);
    v57 = v74;
    sub_2664DE428();
    v58 = v75;
    sub_2664DE398();
    v59 = *(v76 + 8);
    v60 = v78;
    v59(v57, v78);
    v61 = swift_allocObject();
    v61[2] = v85;
    v62 = v77;
    v61[3] = v86;
    v61[4] = v62;

    sub_2664CA9EC(v58, 150, sub_2664D4520, v61);

    return (v59)(v58, v60);
  }

  else
  {
    if (qword_280F90D30 != -1)
    {
      swift_once();
    }

    v92 = sub_2664CADF4;
    v93 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v89 = 1107296256;
    v90 = sub_2662A3F90;
    v91 = &block_descriptor_19_0;
    v41 = _Block_copy(&aBlock);
    sub_2664E0068();
    v87 = MEMORY[0x277D84F90];
    sub_2664D44D8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v42 = v79;
    v43 = v83;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v21, v42, v41);
    _Block_release(v41);
    (*(v82 + 8))(v42, v43);
    (*(v80 + 8))(v21, v81);
    return sub_2664CAF9C(v85, v86);
  }
}

uint64_t sub_2664C99CC()
{
  v0 = sub_2664DFE08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "NowPlayingUsageProvider#affinity (lazy load) no data, loading async...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D83B88];
  *(v14 + 16) = xmmword_2664E36F0;
  v16 = MEMORY[0x277D83C10];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = 0;
  sub_2664DFDF8();
  sub_2664DFDC8();

  (*(v1 + 8))(v4, v0);
  return sub_2664CAF9C(sub_2664C9D18, 0);
}

uint64_t sub_2664C9D18(uint64_t a1)
{
  v85 = a1;
  v82 = sub_2664DE438();
  v102 = *(v82 - 8);
  v1 = *(v102 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2664DF398();
  v84 = *(v104 - 8);
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v104);
  v103 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v77 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v77 - v10;
  MEMORY[0x28223BE20](v9);
  v83 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740C8, &unk_2664F0650);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v101 = (&v77 - v18);
  v19 = sub_2664DFE38();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v24 = (&v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = (&v77 - v25);
  if (qword_280F914E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v92 = v24;
    v27 = __swift_project_value_buffer(v19, qword_280F914F0);
    swift_beginAccess();
    v28 = v20[2];
    v90 = v20 + 2;
    v91 = v27;
    v89 = v28;
    v28(v26, v27, v19);
    v24 = sub_2664DFE18();
    v29 = sub_2664E06E8();
    v30 = os_log_type_enabled(v24, v29);
    v97 = v8;
    if (v30)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v24, v29, "NowPlayingUsageProvider#affinity load complete.", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = v20[1];
    v93 = ++v20;
    v88 = v32;
    v32(v26, v19);
    v33 = *(v85 + 64);
    v78 = v85 + 64;
    v34 = 1 << *(v85 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & v33;
    v77 = (v34 + 63) >> 6;
    v98 = (v84 + 32);
    v99 = (v84 + 16);
    v87 = (v84 + 8);
    v80 = (v102 + 8);

    v37 = 0;
    *&v38 = 136315650;
    v79 = v38;
    v100 = v11;
    v96 = v19;
    v19 = v103;
    v94 = v17;
    v26 = v101;
    if (v36)
    {
      break;
    }

LABEL_10:
    if (v77 <= v37 + 1)
    {
      v40 = v37 + 1;
    }

    else
    {
      v40 = v77;
    }

    v41 = v40 - 1;
    while (1)
    {
      v8 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v8 >= v77)
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
        (*(*(v75 - 8) + 56))(v17, 1, 1, v75);
        v36 = 0;
        goto LABEL_18;
      }

      v36 = *(v78 + 8 * v8);
      ++v37;
      if (v36)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v8 = v37;
LABEL_17:
    v42 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v43 = v42 | (v8 << 6);
    v44 = (*(v85 + 48) + 16 * v43);
    v46 = *v44;
    v45 = v44[1];
    v47 = v84;
    v48 = v83;
    v49 = v104;
    (*(v84 + 16))(v83, *(v85 + 56) + *(v84 + 72) * v43, v104);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v51 = *(v50 + 48);
    *v17 = v46;
    v17[1] = v45;
    (*(v47 + 32))(v17 + v51, v48, v49);
    (*(*(v50 - 8) + 56))(v17, 0, 1, v50);

    v41 = v8;
    v19 = v103;
    v11 = v100;
    v26 = v101;
LABEL_18:
    sub_2664C5F90(v17, v26);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729E0, &qword_2664E5308);
    v53 = (*(*(v52 - 8) + 48))(v26, 1, v52);
    v54 = v97;
    if (v53 == 1)
    {
    }

    v102 = v41;
    v55 = v19;
    v56 = v26[1];
    v95 = *v26;
    v57 = v104;
    (*v98)(v11, v26 + *(v52 + 48), v104);
    v58 = v92;
    v20 = v96;
    v89(v92, v91, v96);
    v59 = *v99;
    (*v99)(v54, v11, v57);
    v59(v55, v11, v57);

    v24 = sub_2664DFE18();
    v60 = sub_2664E06C8();

    if (os_log_type_enabled(v24, v60))
    {
      v61 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v105 = v86;
      *v61 = v79;
      v62 = sub_2662A320C(v95, v56, &v105);

      *(v61 + 4) = v62;
      *(v61 + 12) = 2080;
      v63 = v81;
      sub_2664DF378();
      sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578]);
      v64 = v82;
      v65 = sub_2664E0D48();
      v67 = v66;
      (*v80)(v63, v64);
      v20 = v87;
      v68 = *v87;
      (*v87)(v97, v104);
      v69 = sub_2662A320C(v65, v67, &v105);

      *(v61 + 14) = v69;
      *(v61 + 22) = 2080;
      sub_2664DF358();
      v70 = MEMORY[0x2667834D0]();
      v72 = v71;

      v68(v103, v104);
      v73 = sub_2662A320C(v70, v72, &v105);

      *(v61 + 24) = v73;
      _os_log_impl(&dword_26629C000, v24, v60, "NowPlayingUsageProvider#affinity (lazy load) For bundle %s - recency: %s frequencies: %s", v61, 0x20u);
      v74 = v86;
      swift_arrayDestroy();
      v19 = v103;
      MEMORY[0x266784AD0](v74, -1, -1);
      MEMORY[0x266784AD0](v61, -1, -1);

      v88(v58, v96);
      v11 = v100;
      v68(v100, v104);
      v37 = v102;
      v17 = v94;
      v26 = v101;
      if (!v36)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v24 = *v87;
      v39 = v104;
      (*v87)(v55, v104);
      (v24)(v54, v39);
      v88(v58, v20);
      v11 = v100;
      (v24)(v100, v39);
      v37 = v102;
      v17 = v94;
      v19 = v55;
      v26 = v101;
      if (!v36)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2664CA720(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_2664DE428();
    v9 = sub_2664CA8AC(MEMORY[0x277D84FA0], MEMORY[0x277D84F98], a1);
    v11 = v10;
    (*(v5 + 8))(v8, v4);
    v12 = sub_2664D39A8(v9, v11);

    (a2)(v12);
  }

  else
  {
    sub_266385ABC(MEMORY[0x277D84F90]);
    a2();
  }
}

uint64_t sub_2664CA8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2664DE3E8();
  v8 = floor(v7 / 86400.0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v12[2] = a3;

  sub_2664C8D6C(a1);
  v12[0] = a2;

  v11 = sub_2664D2ADC(v10, v9, v12);

  if (!__OFSUB__(v9, 28))
  {
    sub_2664CF800(v12[0], v9 - 28);

    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2664CA9EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v42 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingUsageProvider#events...", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  sub_2664DE428();
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  v36 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v21 = *(v5 + 16);
  v21(v42, v37, v4);
  v21(v43, v11, v4);
  v22 = *(v5 + 80);
  v23 = (v22 + 16) & ~v22;
  v24 = v6 + 7;
  v25 = (v6 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v22 + 16 + v26) & ~v22;
  v28 = (v24 + v27) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v37 = v11;
  v30 = *(v5 + 32);
  v30(v29 + v23, v42, v4);
  v31 = v39;
  *(v29 + v25) = v38;
  v32 = (v29 + v26);
  v33 = v41;
  *v32 = v31;
  v32[1] = v33;
  v30(v29 + v27, v43, v4);
  *(v29 + v28) = v40;

  sub_2662BFF60(v36, 0, 0, 1, sub_2664D440C, v29);

  return (*(v5 + 8))(v37, v4);
}

uint64_t sub_2664CADF4()
{
  v0 = sub_2664DFE08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2664E36F0;
  v6 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v6;
  *(v5 + 32) = 1;
  sub_2664DFDF8();
  sub_2664DFDC8();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_2664CAF9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v44 = *v2;
  v45 = sub_2664DE438();
  v40 = *(v45 - 8);
  v4 = *(v40 + 64);
  v5 = MEMORY[0x28223BE20](v45);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v37 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v41 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3;
  [v3[5] lock];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v19, v13);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "NowPlayingUsageProvider#update [lock aquired]", v22, 2u);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v23 = v12;
  sub_2664DE428();
  v24 = v18[2];
  v37 = v12;
  sub_2664DE398();
  sub_2664DE3E8();
  v25 = v40;
  v38 = *(v40 + 8);
  v26 = v45;
  v38(v8, v45);
  v27 = v41;
  sub_2664DE3D8();
  v28 = v39;
  (*(v25 + 16))(v39, v23, v26);
  v29 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v30 = (v4 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v18;
  (*(v25 + 32))(v32 + v29, v28, v26);
  v33 = (v32 + v30);
  v34 = v43;
  *v33 = v42;
  v33[1] = v34;
  *(v32 + v31) = v44;

  sub_2664CA9EC(v27, 0x7FFFFFFFFFFFFFFFLL, sub_2664D435C, v32);

  v35 = v38;
  v38(v27, v26);
  return v35(v37, v26);
}

uint64_t sub_2664CB3EC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v8 = sub_2664DFE38();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v13 = a2[4];
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v15 = a2[3];

  v42 = a3;
  v16 = sub_2664CA8AC(v12, v13, v14);
  v18 = v17;
  v19 = v16;
  v21 = v20;

  if (a1)
  {
    v22 = a2[3];
    v23 = a2[4];
    a2[2] = v18;
    a2[3] = v19;
    a2[4] = v21;

    v24 = sub_2664D39A8(v19, v21);

    v43(v24);

    v25 = v42;

    return sub_2664CB728(a2, v25);
  }

  else
  {
    v27 = v11;
    v28 = v41;
    v40 = v8;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = v40;
    v30 = __swift_project_value_buffer(v40, qword_280F914F0);
    swift_beginAccess();
    v31 = v30;
    v32 = v29;
    (*(v28 + 16))(v11, v31, v29);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v43;
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "NowPlayingUsageProvider#update skipping persistence as events invalid", v37, 2u);
      v38 = v37;
      v32 = v40;
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v28 + 8))(v27, v32);
    v39 = sub_2664D39A8(v19, v21);

    v36(v39);

    return sub_2664CB728(a2, v42);
  }
}

uint64_t sub_2664CB728(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(a1 + 40) unlock];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  (*(v5 + 16))(v11, a2, v4);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = v9;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    sub_2664DE428();
    sub_2664DE388();
    v23 = v22;
    v26 = v16;
    v24 = *(v5 + 8);
    v24(v20, v4);
    v24(v11, v4);
    v16 = v26;
    *(v21 + 4) = v23;
    _os_log_impl(&dword_26629C000, v18, v19, "NowPlayingUsageProvider#update complete in %fs", v21, 0xCu);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2664CBA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v53 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v20 = sub_2664DF398();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = a1;
  v24 = *(a5 + 16);
  v25 = *(v24 + 16);
  v58 = v23;
  v54 = a5;
  v55 = v10;
  if (v25 && (v26 = sub_2662A3E98(v23, a2), (v27 & 1) != 0))
  {
    v28 = a2;
    v29 = v56;
    v30 = v57;
    (*(v56 + 16))(v19, *(v24 + 56) + *(v56 + 72) * v26, v57);
    v31 = 0;
  }

  else
  {
    v28 = a2;
    v31 = 1;
    v29 = v56;
    v30 = v57;
  }

  v51 = *(v29 + 56);
  v52 = v29 + 56;
  v51(v19, v31, 1, v30);
  swift_endAccess();
  v32 = *(v29 + 48);
  if (v32(v19, 1, v30) == 1)
  {
    sub_2664DF388();
    result = v32(v19, 1, v30);
    if (result != 1)
    {
      result = sub_2662A9238(v19, &unk_280073A50, &unk_2664ED5F0);
    }
  }

  else
  {
    result = (*(v29 + 32))(v59, v19, v30);
  }

  if (a4 >= 1)
  {
    v50 = v28;
    v34 = (v55 + 16);
    v35 = (v55 + 8);
    v36 = 1;
    v37 = v58;
    while (1)
    {
      sub_2664DE3C8();
      if (v38 <= 0.0)
      {
        result = sub_2664DF368();
        if (a4 == v36)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v39 = __swift_project_value_buffer(v9, qword_280F914F0);
        swift_beginAccess();
        (*v34)(v13, v39, v9);
        v40 = sub_2664DFE18();
        v41 = sub_2664E06D8();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&dword_26629C000, v40, v41, "HistoryStats cannot add instance from the future", v42, 2u);
          v43 = v42;
          v37 = v58;
          MEMORY[0x266784AD0](v43, -1, -1);
        }

        result = (*v35)(v13, v9);
        if (a4 == v36)
        {
LABEL_22:
          v46 = v56;
          v45 = v57;
          v47 = v53;
          v48 = v59;
          (*(v56 + 16))(v53, v59, v57);
          v51(v47, 0, 1, v45);
          swift_beginAccess();
          v49 = v50;

          sub_266449250(v47, v37, v49);
          swift_endAccess();
          return (*(v46 + 8))(v48, v45);
        }
      }

      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_2664CBF34(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void))
{
  v209 = a6;
  v222 = a5;
  v223 = a4;
  v226 = a3;
  v229 = a2;
  v241[7] = *MEMORY[0x277D85DE8];
  v8 = sub_2664DFE08();
  v211 = *(v8 - 8);
  v212 = v8;
  v9 = *(v211 + 64);
  MEMORY[0x28223BE20](v8);
  v210 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_2664DE438();
  v225 = *(v228 - 8);
  v11 = *(v225 + 64);
  v12 = MEMORY[0x28223BE20](v228);
  v206 = &v206 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  inited = &v206 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v215 = &v206 - v18;
  MEMORY[0x28223BE20](v17);
  v219 = &v206 - v19;
  v227 = sub_2664DFE38();
  v230 = *(v227 - 8);
  v20 = *(v230 + 64);
  v21 = MEMORY[0x28223BE20](v227);
  v214 = &v206 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v217 = &v206 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v213 = &v206 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v216 = &v206 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v218 = &v206 - v30;
  MEMORY[0x28223BE20](v29);
  v224 = &v206 - v31;
  v234 = sub_2664DE098();
  v231 = *(v234 - 1);
  v32 = v231[8];
  MEMORY[0x28223BE20](v234);
  v233 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  *&v235 = inited;
  if (v34)
  {
    v35 = (a1 + 88);
    v36 = MEMORY[0x277D84F90];
    v232 = xmmword_2664E36F0;
    while (1)
    {
      v37 = *v35;
      v38 = *(v35 - 7);
      v39 = *(v35 - 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      inited = swift_initStackObject();
      *(inited + 1) = v232;
      v40 = (inited + 16);
      *(inited + 4) = v38;
      *(inited + 5) = v39;
      v41 = *(v37 + 16);

      if (v41)
      {
        v49 = sub_2663846F4(1, v41 + 1, 1, inited);
        if (!*(v37 + 16))
        {

          __break(1u);
          return;
        }

        inited = v49;
        v40 = (v49 + 16);
        if ((*(v49 + 3) >> 1) - *(v49 + 2) < v41)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
        }

        swift_arrayInitWithCopy();

        v50 = *(inited + 2);
        v6 = v50 + v41;
        if (__OFADD__(v50, v41))
        {
          goto LABEL_111;
        }

        *v40 = v6;
      }

      else
      {

        v6 = *v40;
      }

      v42 = *(v36 + 2);
      v43 = v42 + v6;
      if (__OFADD__(v42, v6))
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        swift_once();
LABEL_52:
        v81 = v227;
        v82 = __swift_project_value_buffer(v227, qword_280F914F0);
        swift_beginAccess();
        v83 = v230;
        v233 = *(v230 + 16);
        (v233)(v224, v82, v81);
        v84 = *(v6 + 16);
        v85 = v219;
        v86 = v6;
        v87 = v228;
        v207 = v84;
        v84(v219, v229, v228);
        v88 = v231;

        v89 = sub_2664DFE18();
        v90 = sub_2664E06C8();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v238[0] = v92;
          *v91 = 136315650;
          v93 = MEMORY[0x2667834D0](v88, MEMORY[0x277D837D0]);
          v94 = v90;
          v96 = sub_2662A320C(v93, v95, v238);

          *(v91 + 4) = v96;
          *(v91 + 12) = 2080;
          sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578]);
          v97 = sub_2664E0D48();
          v99 = v98;
          v219 = *(v86 + 8);
          (v219)(v85, v228);
          v100 = sub_2662A320C(v97, v99, v238);

          *(v91 + 14) = v100;
          *(v91 + 22) = 2048;
          *(v91 + 24) = v226;
          _os_log_impl(&dword_26629C000, v89, v94, "NowPlayingUsageProvider#events querying bundles %s since %s limiting to %ld", v91, 0x20u);
          swift_arrayDestroy();
          v101 = v92;
          inited = v235;
          MEMORY[0x266784AD0](v101, -1, -1);
          v102 = v91;
          v83 = v230;
          MEMORY[0x266784AD0](v102, -1, -1);
        }

        else
        {

          v219 = *(v86 + 8);
          (v219)(v85, v87);
        }

        v229 = *(v83 + 8);
        v229(v224, v81);
        v106 = v81;
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v43 <= *(v36 + 3) >> 1)
      {
        if (!*v40)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v6;
        }

        else
        {
          v45 = v42;
        }

        v36 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v45, 1, v36);
        if (!*v40)
        {
LABEL_3:

          inited = v235;
          if (v6)
          {
            goto LABEL_104;
          }

          goto LABEL_4;
        }
      }

      if ((*(v36 + 3) >> 1) - *(v36 + 2) < v6)
      {
        goto LABEL_105;
      }

      swift_arrayInitWithCopy();

      inited = v235;
      if (v6)
      {
        v46 = *(v36 + 2);
        v47 = __OFADD__(v46, v6);
        v48 = v46 + v6;
        if (v47)
        {
          goto LABEL_106;
        }

        *(v36 + 2) = v48;
      }

LABEL_4:
      v35 += 8;
      if (!--v34)
      {
        goto LABEL_25;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_25:
  v51 = *(v36 + 2);
  v52 = MEMORY[0x277D84F90];
  if (v51)
  {
    v53 = 0;
    *&v232 = v231 + 1;
    v54 = v36 + 40;
    v220 = v51 - 1;
    v221 = v36 + 40;
    v55 = v233;
    do
    {
      v231 = v52;
      v56 = &v54[16 * v53];
      v57 = v53;
      while (1)
      {
        if (v57 >= *(v36 + 2))
        {
          __break(1u);
          goto LABEL_103;
        }

        v58 = *(v56 - 1);
        v59 = *v56;
        v239 = v58;
        v240 = v59;

        sub_2664DE068();
        sub_2662D2EBC();
        v6 = sub_2664E0988();
        v61 = v60;
        (*v232)(v55, v234);
        v62 = !v6 && v61 == 0xE000000000000000;
        if (!v62)
        {
          break;
        }

LABEL_29:

        ++v57;
        v56 += 16;
        inited = v235;
        if (v51 == v57)
        {
          v52 = v231;
          goto LABEL_44;
        }
      }

      v6 = sub_2664E0D88();

      if (v6)
      {
        goto LABEL_29;
      }

      v63 = v231;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v238[0] = v63;
      if ((v64 & 1) == 0)
      {
        sub_2662FCF24(0, v63[2] + 1, 1);
        v63 = v238[0];
      }

      v66 = v63[2];
      v65 = v63[3];
      v6 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        sub_2662FCF24((v65 > 1), v66 + 1, 1);
        v63 = v238[0];
      }

      v53 = v57 + 1;
      v63[2] = v6;
      v67 = &v63[2 * v66];
      v67[4] = v58;
      v67[5] = v59;
      v54 = v221;
      v62 = v220 == v57;
      inited = v235;
      v52 = v63;
    }

    while (!v62);
  }

LABEL_44:

  v68 = sub_2664E02A8();
  v221 = [objc_opt_self() eventStreamWithName_];

  v69 = objc_opt_self();
  v70 = sub_2664DE3A8();
  v234 = [v69 predicateForEventsWithStartDateAfter_];

  v208 = v52[2];
  v231 = v52;
  v220 = v69;
  if (v208)
  {
    v71 = sub_2664E0488();
    v72 = [v69 predicateForEventsWithStringValueInValues_];

    v236[10] = v234;
    v236[11] = v72;
    v239 = MEMORY[0x277D84F90];
    v73 = v234;
    v218 = v72;
    v74 = 0;
    v215 = 0;
    v6 = v225;
    while (v74 != 2)
    {
      v75 = v236[v74++ + 10];
      if (v75)
      {
        v76 = v75;
        MEMORY[0x266783490]();
        if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2664E04C8();
          inited = v235;
          v6 = v225;
        }

        sub_2664E0518();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074138, &qword_2664F0838);
    swift_arrayDestroy();
    sub_2662C1744(0, &qword_280F8F648, 0x277CCAC30);
    v78 = sub_2664E0488();

    v79 = [objc_opt_self() andPredicateWithSubpredicates_];

    v80 = qword_280F914E8;
    *&v232 = v79;
    if (v80 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_52;
  }

  v103 = v234;
  v241[0] = v234;
  v239 = MEMORY[0x277D84F90];
  v104 = v234;
  if (v103)
  {
    v105 = v104;
    MEMORY[0x266783490]();
    v106 = v227;
    if (*((v239 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v239 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v205 = *((v239 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2664E04C8();
    }

    sub_2664E0518();
  }

  else
  {
    v106 = v227;
  }

  sub_2662A9238(v241, &qword_280074138, &qword_2664F0838);
  sub_2662C1744(0, &qword_280F8F648, 0x277CCAC30);
  v107 = sub_2664E0488();

  v108 = [objc_opt_self() andPredicateWithSubpredicates_];

  v109 = qword_280F914E8;
  *&v232 = v108;
  if (v109 != -1)
  {
    swift_once();
  }

  v110 = __swift_project_value_buffer(v106, qword_280F914F0);
  swift_beginAccess();
  v111 = v230;
  v112 = v218;
  v233 = *(v230 + 16);
  (v233)(v218, v110, v106);
  v113 = v225;
  v114 = v215;
  v115 = v228;
  v207 = *(v225 + 16);
  v207(v215, v229, v228);
  v116 = sub_2664DFE18();
  v117 = sub_2664E06C8();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = v114;
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v238[0] = v120;
    *v119 = 136315394;
    sub_2664D44D8(&qword_280F914D8, MEMORY[0x277CC9578]);
    v121 = sub_2664E0D48();
    v123 = v122;
    v219 = *(v113 + 8);
    (v219)(v118, v115);
    v124 = sub_2662A320C(v121, v123, v238);
    v106 = v227;

    *(v119 + 4) = v124;
    *(v119 + 12) = 2048;
    *(v119 + 14) = v226;
    _os_log_impl(&dword_26629C000, v116, v117, "NowPlayingUsageProvider#events querying all bundles since %s limiting to %ld", v119, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v120);
    v125 = v120;
    v126 = v230;
    MEMORY[0x266784AD0](v125, -1, -1);
    MEMORY[0x266784AD0](v119, -1, -1);

    v127 = *(v126 + 8);
    v128 = v218;
  }

  else
  {

    v219 = *(v113 + 8);
    (v219)(v114, v115);
    v127 = *(v111 + 8);
    v128 = v112;
  }

  v229 = v127;
  v127(v128, v106);
  v215 = 0;
  inited = v235;
LABEL_67:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v129 = swift_allocObject();
  v235 = xmmword_2664E34F0;
  *(v129 + 16) = xmmword_2664E34F0;
  v130 = v221;
  *(v129 + 32) = v221;
  v131 = swift_allocObject();
  *(v131 + 16) = v235;
  v132 = v130;
  v133 = [v220 startDateSortDescriptorAscending_];
  if (!v133)
  {
    goto LABEL_112;
  }

  v134 = v133;

  *(v131 + 32) = v134;
  sub_2662C1744(0, &qword_280F8F638, 0x277CFE1E8);
  v135 = sub_2664E0488();

  sub_2662C1744(0, &qword_280F8F5E8, 0x277CCAC98);
  v136 = sub_2664E0488();

  v137 = objc_opt_self();
  v138 = v232;
  v139 = [v137 eventQueryWithPredicate:v232 eventStreams:v135 offset:0 limit:v226 sortDescriptors:v136];

  [v139 setReadMetadata_];
  v140 = [objc_allocWithZone(MEMORY[0x277CFE208]) init];
  v238[0] = 0;
  v141 = [v140 executeQuery:v139 error:v238];

  v142 = v238[0];
  if (!v141)
  {
    v160 = v238[0];
    v161 = sub_2664DE1A8();

    swift_willThrow();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v162 = __swift_project_value_buffer(v106, qword_280F914F0);
    swift_beginAccess();
    v163 = v214;
    (v233)(v214, v162, v106);
    v164 = v161;
    v165 = sub_2664DFE18();
    v166 = sub_2664E06D8();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *&v235 = v132;
      v168 = v167;
      v169 = swift_slowAlloc();
      v237[0] = v169;
      *v168 = 136315138;
      swift_getErrorValue();
      v170 = sub_2664E0DE8();
      v172 = sub_2662A320C(v170, v171, v237);
      v233 = v139;
      v173 = v106;
      v174 = v172;

      *(v168 + 4) = v174;
      _os_log_impl(&dword_26629C000, v165, v166, "NowPlayingUsageProvider#signal CoreDuet error - %s", v168, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v169);
      v175 = v169;
      v138 = v232;
      MEMORY[0x266784AD0](v175, -1, -1);
      v176 = v168;
      v132 = v235;
      MEMORY[0x266784AD0](v176, -1, -1);

      v177 = v163;
      v178 = v173;
      v139 = v233;
    }

    else
    {

      v177 = v163;
      v178 = v106;
    }

    v229(v177, v178);
    v223(0);

    goto LABEL_101;
  }

  *&v235 = v132;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v179 = v142;
    v146 = v233;
    goto LABEL_82;
  }

  v238[0] = 0;
  sub_2662C1744(0, &qword_280F8F540, 0x277CFE1D8);
  v143 = v142;
  v144 = v141;
  sub_2664E0498();

  v145 = v238[0];
  v146 = v233;
  if (!v238[0])
  {
LABEL_82:
    v233 = v139;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v180 = __swift_project_value_buffer(v106, qword_280F914F0);
    swift_beginAccess();
    v181 = v216;
    v146(v216, v180, v106);
    v182 = sub_2664DFE18();
    v183 = sub_2664E06D8();
    v184 = os_log_type_enabled(v182, v183);
    v185 = v229;
    if (v184)
    {
      v186 = swift_slowAlloc();
      *v186 = 0;
      _os_log_impl(&dword_26629C000, v182, v183, "NowPlayingUsageProvider#events not [DKEvent] response", v186, 2u);
      MEMORY[0x266784AD0](v186, -1, -1);
    }

    v185(v181, v106);
    v223(0);

    goto LABEL_101;
  }

  v231 = v144;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v147 = __swift_project_value_buffer(v106, qword_280F914F0);
  swift_beginAccess();
  v148 = v213;
  v226 = v147;
  v221 = (v230 + 16);
  v233 = v146;
  v146(v213, v147, v106);
  v149 = v228;
  v207(inited, v209, v228);

  v150 = sub_2664DFE18();
  LODWORD(v220) = sub_2664E06C8();
  v151 = os_log_type_enabled(v150, v220);
  v224 = (v145 >> 62);
  if (v151)
  {
    v152 = swift_slowAlloc();
    *v152 = 134218496;
    if (v145 >> 62)
    {
      v153 = sub_2664E0A68();
    }

    else
    {
      v153 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v152 + 4) = v153;

    *(v152 + 12) = 2048;
    v154 = v206;
    sub_2664DE428();
    sub_2664DE388();
    v156 = v155;
    v157 = v154;
    v158 = v228;
    v159 = v219;
    (v219)(v157, v228);
    v159(inited, v158);
    *(v152 + 14) = v156;
    *(v152 + 22) = 2048;
    *(v152 + 24) = 0x4066800000000000;
    _os_log_impl(&dword_26629C000, v150, v220, "NowPlayingUsageProvider#events %ld results in %fs, rate limiting to 1/app/%fs", v152, 0x20u);
    MEMORY[0x266784AD0](v152, -1, -1);

    v106 = v227;
    v148 = v213;
  }

  else
  {

    (v219)(inited, v149);
  }

  v187 = v233;
  v188 = v229;
  v189 = (v230 + 8);
  v229(v148, v106);
  v190 = v224;
  v233 = v189;
  if (v224)
  {
    v191 = sub_2664E0A68();
  }

  else
  {
    v191 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_2664E34E0;
  v193 = MEMORY[0x277D83B88];
  v194 = MEMORY[0x277D83C10];
  *(v192 + 56) = MEMORY[0x277D83B88];
  *(v192 + 64) = v194;
  *(v192 + 32) = v208;
  *(v192 + 96) = v193;
  *(v192 + 104) = v194;
  *(v192 + 72) = v191;
  v195 = v210;
  sub_2664DFDF8();
  sub_2664DFDC8();

  (*(v211 + 8))(v195, v212);
  v236[0] = MEMORY[0x277D84FA0];
  memset(v237, 0, sizeof(v237));
  sub_2664D3074(v145, v237, v236);
  v196 = v227;
  v187(v217, v226, v227);

  v197 = sub_2664DFE18();
  v198 = sub_2664E06C8();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    *v199 = 134218240;
    if (v190)
    {
      v200 = v139;
      v201 = sub_2664E0A68();
    }

    else
    {
      v200 = v139;
      v201 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v199 + 4) = v201;

    *(v199 + 12) = 2048;
    swift_beginAccess();
    *(v199 + 14) = *(v236[0] + 16);
    _os_log_impl(&dword_26629C000, v197, v198, "NowPlayingUsageProvider#events filtered %ld to %ld results", v199, 0x16u);
    MEMORY[0x266784AD0](v199, -1, -1);
  }

  else
  {
    v200 = v139;

    swift_bridgeObjectRelease_n();
  }

  v202 = v232;
  v188(v217, v196);
  swift_beginAccess();

  v223(v203);

LABEL_101:
  v204 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2664CD8CC()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x794273746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t sub_2664CD930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2664D3C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2664CD964(uint64_t a1)
{
  v2 = sub_2664D4018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2664CD9A0(uint64_t a1)
{
  v2 = sub_2664D4018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2664CD9DC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074110, &unk_2664F0828);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4018();
  sub_2664E0F08();
  LOBYTE(v15) = 0;
  sub_2664E0D08();
  if (!v3)
  {
    v15 = a2;
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740E0, &qword_2664F0810);
    sub_2664D4170(&qword_280074118, sub_2664D41E8);
    sub_2664E0D18();
    v15 = a3;
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D423C();
    sub_2664E0D18();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2664CDC00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074188, &qword_2664F0A78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4888();
  sub_2664E0F08();
  v10[15] = 0;
  sub_2664E0CF8();
  if (!v1)
  {
    v10[14] = 1;
    sub_2664E0D08();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2664CDD9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2664D3DA4(a1);
  if (!v2)
  {
    *a2 = v6;
    a2[1] = result;
    a2[2] = v5;
  }

  return result;
}

unint64_t sub_2664CDDEC()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_2664CDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000002664F5CA0 == a2 || (sub_2664E0D88() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2664E0D88();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2664CDF20(uint64_t a1)
{
  v2 = sub_2664D4888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2664CDF5C(uint64_t a1)
{
  v2 = sub_2664D4888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2664CDF98()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_2664E0E68();
  sub_2664E0368();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x266783EC0](*&v4);
  return sub_2664E0EB8();
}

uint64_t sub_2664CE010()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_2664E0368();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  return MEMORY[0x266783EC0](*&v4);
}

uint64_t sub_2664CE05C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  sub_2664E0E68();
  sub_2664E0368();
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x266783EC0](*&v4);
  return sub_2664E0EB8();
}

void sub_2664CE0D0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_2664D46AC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_2664CE100(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_2664CDC00(a1);
}

BOOL sub_2664CE120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_2664E0D88();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_2664CE180()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2664CE204(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_2664E0AE8();
    v24 = v10;
    sub_2664E0A58();
    if (sub_2664E0A88())
    {
      sub_2662C1744(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_2664CE8C4(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_2664E0908();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_2664E0A88());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2664CE404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2664CE664(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_2664E0A98();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2664CE8C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2664E0AD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2664E0908();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2664CEAE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2664E0E68();
      MEMORY[0x266783E90](v18);
      result = sub_2664E0EB8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2664CED34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2664E0E58();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2664CEF58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      if (v22 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v22;
      }

      MEMORY[0x266783EC0](*&v24);
      result = sub_2664E0EB8();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero((v3 + 56), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2664CF1EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2664E0908();
  v5 = -1 << *(a2 + 32);
  result = sub_2664E0A48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_2664CF270(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2664CF96C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_2664CF2F8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2664D3364(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_2664CF388(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AF8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664CF5AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AF8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v20 = *(v9 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    if (v19 == 0.0)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v19;
    }

    MEMORY[0x266783EC0](*&v21);
    result = sub_2664E0EB8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v9 + 48) + 24 * v25;
    *v30 = v17;
    *(v30 + 8) = v18;
    *(v30 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_2664CF800(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2664CF96C(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_2664CF270(v11, v6, v4, a2);
  result = MEMORY[0x266784AD0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2664CF96C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 8 * v12) > a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_2664D0254(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_2664D0254(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664CFA5C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074148, &unk_2664F0848);
  result = sub_2664E0C98();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664CFC98(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a1;
  v7 = sub_2664DF398();
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v46 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v51 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F48, qword_2664F0660);
  result = sub_2664E0C98();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v50;
  }

  v16 = 0;
  v48 = result;
  v49 = v56 + 16;
  v17 = v56 + 32;
  v18 = result + 64;
  v19 = v51;
  v47 = a4;
  while (v15)
  {
    v20 = v19;
    v21 = v17;
    v22 = __clz(__rbit64(v15));
    v53 = (v15 - 1) & v15;
LABEL_16:
    v25 = v22 | (v16 << 6);
    v26 = a4[7];
    v27 = (a4[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = v56;
    v55 = *(v56 + 72);
    v31 = v52;
    (*(v56 + 16))(v52, v26 + v55 * v25, v20);
    v32 = *(v30 + 32);
    v33 = v31;
    v17 = v21;
    v32(v57, v33, v20);
    v14 = v48;
    v34 = *(v48 + 40);
    sub_2664E0E68();

    v54 = v28;
    sub_2664E0368();
    result = sub_2664E0EB8();
    v35 = -1 << *(v14 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      v19 = v51;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v18 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v19 = v51;
LABEL_26:
    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v14 + 48) + 16 * v38);
    v44 = v55;
    *v43 = v54;
    v43[1] = v29;
    result = (v32)(*(v14 + 56) + v38 * v44, v57, v19);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47;
    v15 = v53;
    if (!a3)
    {
      return v14;
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v24 = v50[v16];
    ++v23;
    if (v24)
    {
      v20 = v19;
      v21 = v17;
      v22 = __clz(__rbit64(v24));
      v53 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664D0018(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  result = sub_2664E0C98();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + 8 * v16);
    v21 = *(v9 + 40);
    sub_2664E0E68();

    sub_2664E0368();
    result = sub_2664E0EB8();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664D0254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
  result = sub_2664E0C98();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_2664E0E58();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2664D0458(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v9 = sub_2664E0EB8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2664D2214(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2664D05A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_2664E0A98();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_266350228(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x266783AC0](v18, a2);
      sub_266350284(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_266350284(a2);
    sub_266350228(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_266350228(a2, v18);
    v17 = *v3;
    sub_2664D2394(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_2664D073C(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2664E0A78();

    if (v17)
    {

      sub_2662C1744(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_2664E0A68();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2664CE204(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2664CE8C4(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_2664CF1EC(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_2662C1744(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_2664E0908();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_2664E0918();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_2664D250C(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2664D09B0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2664E0E68();
  MEMORY[0x266783E90](a2);
  v7 = sub_2664E0EB8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2664D269C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2664D0AA8(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2664E0E58();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2664D27F8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2664D0B88(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v11 = 0.0;
  if (a4 != 0.0)
  {
    v11 = a4;
  }

  MEMORY[0x266783EC0](*&v11);
  v12 = sub_2664E0EB8();
  v13 = -1 << *(v9 + 32);
  v14 = v12 & ~v13;
  if ((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v9 + 48);
    while (1)
    {
      v17 = v16 + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17 == a2 && *(v17 + 8) == a3;
      if (v19 || (sub_2664E0D88()) && v18 == a4)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v9 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v23 = (*(v9 + 48) + 24 * v14);
    v24 = v23[1];
    v25 = v23[2];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;

    return 0;
  }

  else
  {
LABEL_13:
    v20 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;

    sub_2664D2918(a2, a3, v14, isUniquelyReferenced_nonNull_native, a4);
    *v4 = v26;
    *a1 = a2;
    a1[1] = a3;
    *(a1 + 2) = a4;
    return 1;
  }
}

void *sub_2664D0D30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_2664D0E8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_266350228(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_2664D1004(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2664E0AC8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_2664D1144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2664D1284()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2664D13C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  v2 = *v0;
  v3 = sub_2664E0AC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2664D152C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2664E0E68();

      sub_2664E0368();
      result = sub_2664E0EB8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2664D1764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BE0, &qword_2664EDCB8);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_266350228(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_2664E0A98();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2664D1990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2664E0AD8();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2664E0908();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_2664D1B9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074158, &qword_2664F0868);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2664E0E68();
      MEMORY[0x266783E90](v17);
      result = sub_2664E0EB8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2664D1DBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074150, &qword_2664F0858);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_2664E0E58();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2664D1FAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074140, &qword_2664F0840);
  result = sub_2664E0AD8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 24 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v6 + 40);
      sub_2664E0E68();

      sub_2664E0368();
      if (v21 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v21;
      }

      MEMORY[0x266783EC0](*&v23);
      result = sub_2664E0EB8();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v31;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2664D2214(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2664CE404(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2664D0D30();
      goto LABEL_16;
    }

    sub_2664D152C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  result = sub_2664E0EB8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2664E0D88();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

uint64_t sub_2664D2394(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2664CE664(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2664D0E8C();
      goto LABEL_12;
    }

    sub_2664D1764(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_2664E0A98();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_266350228(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x266783AC0](v20, v6);
      result = sub_266350284(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

void sub_2664D250C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2664CE8C4(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2664D1004(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2664D1990(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_2664E0908();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_2662C1744(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_2664E0918();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2664E0DC8();
  __break(1u);
}

void sub_2664D269C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2664CEAE4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2664D1144();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2664D1B9C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2664E0E68();
  MEMORY[0x266783E90](a1);
  v10 = sub_2664E0EB8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for INMediaItemType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2664E0DC8();
  __break(1u);
}

uint64_t sub_2664D27F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2664CED34(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2664D1284();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2664D1DBC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_2664E0E58();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

uint64_t sub_2664D2918(uint64_t result, uint64_t a2, unint64_t a3, char a4, double a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a4 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a4)
  {
    sub_2664CEF58(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_2664D13C4();
      goto LABEL_20;
    }

    sub_2664D1FAC(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v15 = 0.0;
  if (a5 != 0.0)
  {
    v15 = a5;
  }

  MEMORY[0x266783EC0](*&v15);
  result = sub_2664E0EB8();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a3 = result & ~v17;
  if ((*(v13 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    do
    {
      v20 = v19 + 24 * a3;
      result = *v20;
      v21 = *(v20 + 16);
      v22 = *v20 == v10 && *(v20 + 8) == a2;
      if (v22 || (result = sub_2664E0D88(), (result & 1) != 0))
      {
        if (v21 == a5)
        {
          goto LABEL_23;
        }
      }

      a3 = (a3 + 1) & v18;
    }

    while (((*(v16 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_20:
  v23 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = *(v23 + 48) + 24 * a3;
  *v24 = v10;
  *(v24 + 8) = a2;
  *(v24 + 16) = a5;
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_23:
  result = sub_2664E0DC8();
  __break(1u);
  return result;
}

uint64_t sub_2664D2ADC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v71 = a2;
  v5 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
LABEL_62:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v61 = swift_slowAlloc();
      v62 = sub_2664CF2F8(v61, v7, v5, v71, a3);

      MEMORY[0x266784AD0](v61, -1, -1);
      result = v62;
LABEL_52:
      v60 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v64 = v7;
  v65 = v3;
  v63[1] = v63;
  MEMORY[0x28223BE20](a1);
  v66 = v63 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v66, v8);
  v7 = 0;
  v9 = v5 + 56;
  v10 = 1 << *(v5 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v69 = v5;
  v70 = v13;
  v67 = 0;
  v68 = v5 + 56;
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v7 >= v13)
          {
            result = sub_2664CF5AC(v66, v64, v67, v5);
            goto LABEL_52;
          }

          v18 = *(v9 + 8 * v7);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v19 = v16 | (v7 << 6);
      v20 = *(v5 + 48) + 24 * v19;
      v21 = floor(*(v20 + 16) / 86400.0);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_54;
      }

      if (v21 <= -9.22337204e18)
      {
        goto LABEL_55;
      }

      if (v21 >= 9.22337204e18)
      {
        goto LABEL_56;
      }

      v22 = v21;
      if (v21 != v71)
      {
        break;
      }

      *&v66[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
      v42 = __OFADD__(v67++, 1);
      if (v42)
      {
        __break(1u);
      }
    }

    v23 = *v20;
    v24 = *(v20 + 8);
    v72 = v12;
    v73 = v23;
    v25 = *a3;
    if (*(*a3 + 16) && (v26 = sub_266350334(v21), (v27 & 1) != 0))
    {
      v28 = *(*(v25 + 56) + 8 * v26);
    }

    else
    {
      v28 = MEMORY[0x277D84F98];
    }

    v3 = v28[2];

    if (v3 && (v29 = sub_2662A3E98(v73, v24), (v30 & 1) != 0))
    {
      v31 = *(v28[7] + 8 * v29);
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_57;
    }

    v33 = a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v28;
    a3 = sub_2662A3E98(v73, v24);
    v36 = v28[2];
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_58;
    }

    v5 = v35;
    if (v28[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v74;
        if (v35)
        {
          goto LABEL_34;
        }
      }

      else
      {
        sub_26645410C();
        v41 = v74;
        if (v5)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      sub_266450E14(v38, isUniquelyReferenced_nonNull_native);
      v39 = sub_2662A3E98(v73, v24);
      if ((v5 & 1) != (v40 & 1))
      {
        goto LABEL_65;
      }

      a3 = v39;
      v41 = v74;
      if (v5)
      {
LABEL_34:
        *(v41[7] + 8 * a3) = v32;
        goto LABEL_41;
      }
    }

    v41[(a3 >> 6) + 8] |= 1 << a3;
    v43 = (v41[6] + 16 * a3);
    *v43 = v73;
    v43[1] = v24;
    *(v41[7] + 8 * a3) = v32;
    v44 = v41[2];
    v42 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v42)
    {
      goto LABEL_60;
    }

    v41[2] = v45;

LABEL_41:

    a3 = v33;
    v46 = *v33;
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v74 = *v33;
    v48 = v74;
    *v33 = 0x8000000000000000;
    v49 = sub_266350334(v22);
    v51 = v48[2];
    v52 = (v50 & 1) == 0;
    v42 = __OFADD__(v51, v52);
    v53 = v51 + v52;
    if (v42)
    {
      goto LABEL_59;
    }

    v5 = v50;
    if (v48[3] < v53)
    {
      break;
    }

    v13 = v70;
    if (v47)
    {
      goto LABEL_46;
    }

    v58 = v49;
    sub_266454F94();
    v49 = v58;
    v55 = v74;
    if (v5)
    {
LABEL_5:
      v14 = v55[7];
      v15 = *(v14 + 8 * v49);
      *(v14 + 8 * v49) = v41;

      goto LABEL_6;
    }

LABEL_47:
    v55[(v49 >> 6) + 8] |= 1 << v49;
    *(v55[6] + 8 * v49) = v22;
    *(v55[7] + 8 * v49) = v41;
    v56 = v55[2];
    v42 = __OFADD__(v56, 1);
    v57 = v56 + 1;
    if (v42)
    {
      goto LABEL_61;
    }

    v55[2] = v57;
LABEL_6:
    *a3 = v55;

    v9 = v68;
    v5 = v69;
    v12 = v72;
  }

  sub_26645284C(v53, v47);
  v49 = sub_266350334(v22);
  v13 = v70;
  if ((v5 & 1) == (v54 & 1))
  {
LABEL_46:
    v55 = v74;
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_47;
  }

  sub_2664E0DD8();
  __break(1u);
LABEL_65:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_2664D3074(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a3;
  v33 = sub_2664DE438();
  v5 = *(v33 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v33);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v8 = sub_2664E0A68();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v37 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      v31 = v5 + 1;
      v34 = a1;
      v35 = v8;
      do
      {
        if (v37)
        {
          v11 = MEMORY[0x266783B70](v9, a1);
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_25;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v5 = v11;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v13 = [v11 stringValue];
        if (v13)
        {
          v14 = v13;
          v15 = sub_2664E02C8();
          v17 = v16;

          v18 = HIBYTE(v17) & 0xF;
          v39 = v15;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v15 & 0xFFFFFFFFFFFFLL;
          }

          if (!v18)
          {
            goto LABEL_20;
          }

          v36 = v17;
          v19 = a2;
          v20 = [v5 startDate];
          if (!v20)
          {
            __break(1u);
            return;
          }

          v21 = v20;
          v22 = v32;
          sub_2664DE3F8();

          sub_2664DE3E8();
          v24 = v23;
          (*v31)(v22, v33);
          a2 = v19;
          v25 = *(v19 + 8);
          v12 = v9 + 1;
          v26 = v36;
          if (!v25)
          {
            goto LABEL_21;
          }

          v27 = *(v19 + 16);
          if (v39 != *v19 || v25 != v36)
          {
            v28 = *(v19 + 8);
            if ((sub_2664E0D88() & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          if (v27 - v24 < 180.0)
          {
LABEL_20:
          }

          else
          {
LABEL_21:
            v29 = v39;
            *a2 = v39;
            *(a2 + 8) = v26;
            *(a2 + 16) = v24;

            sub_2664D0B88(&v38, v29, v26, v24);
          }

          a1 = v34;
          v8 = v35;
        }

        else
        {
        }

        ++v9;
      }

      while (v12 != v8);
    }
  }
}

uint64_t sub_2664D3364(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v63 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v64 = v11;
  v65 = a3 + 56;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_13:
    v17 = v14 | (v6 << 6);
    v18 = *(a3 + 48) + 24 * v17;
    v19 = floor(*(v18 + 16) / 86400.0);
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    if (v19 <= -9.22337204e18)
    {
      goto LABEL_53;
    }

    if (v19 >= 9.22337204e18)
    {
      goto LABEL_54;
    }

    v20 = v19;
    if (v19 == a4)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v42 = __OFADD__(v63++, 1);
      if (v42)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v21 = *(v18 + 8);
      v69 = *v18;
      v22 = *a5;
      if (*(*a5 + 16) && (v23 = sub_266350334(v19), (v24 & 1) != 0))
      {
        v25 = *(*(v22 + 56) + 8 * v23);
      }

      else
      {
        v25 = MEMORY[0x277D84F98];
      }

      v26 = v25[2];

      if (v26 && (v27 = sub_2662A3E98(v69, v21), (v28 & 1) != 0))
      {
        v29 = *(v25[7] + 8 * v27);
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_55;
      }

      v68 = v10;
      v31 = a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_2662A3E98(v69, v21);
      v35 = v25[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_56;
      }

      v38 = v33;
      if (v25[3] >= v37)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v41 = v25;
          if (v33)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_26645410C();
          v41 = v25;
          if (v38)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_266450E14(v37, isUniquelyReferenced_nonNull_native);
        v39 = sub_2662A3E98(v69, v21);
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_62;
        }

        v34 = v39;
        v41 = v25;
        if (v38)
        {
LABEL_33:
          *(v41[7] + 8 * v34) = v30;
          goto LABEL_40;
        }
      }

      v41[(v34 >> 6) + 8] |= 1 << v34;
      v43 = (v41[6] + 16 * v34);
      *v43 = v69;
      v43[1] = v21;
      *(v41[7] + 8 * v34) = v30;
      v44 = v41[2];
      v42 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v42)
      {
        goto LABEL_58;
      }

      v41[2] = v45;

LABEL_40:

      a5 = v31;
      v46 = *v31;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v31;
      v70 = *v31;
      *v31 = 0x8000000000000000;
      v49 = sub_266350334(v20);
      v51 = *(v48 + 16);
      v52 = (v50 & 1) == 0;
      v42 = __OFADD__(v51, v52);
      v53 = v51 + v52;
      if (v42)
      {
        goto LABEL_57;
      }

      v54 = v50;
      if (*(v48 + 24) < v53)
      {
        sub_26645284C(v53, v47);
        v49 = sub_266350334(v20);
        v10 = v68;
        if ((v54 & 1) != (v55 & 1))
        {
          goto LABEL_61;
        }

LABEL_45:
        v56 = v70;
        if (v54)
        {
          goto LABEL_4;
        }

        goto LABEL_46;
      }

      v10 = v68;
      if (v47)
      {
        goto LABEL_45;
      }

      v59 = v49;
      sub_266454F94();
      v49 = v59;
      v56 = v70;
      if (v54)
      {
LABEL_4:
        v12 = v56[7];
        v13 = *(v12 + 8 * v49);
        *(v12 + 8 * v49) = v41;

        goto LABEL_5;
      }

LABEL_46:
      v56[(v49 >> 6) + 8] |= 1 << v49;
      *(v56[6] + 8 * v49) = v20;
      *(v56[7] + 8 * v49) = v41;
      v57 = v56[2];
      v42 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v42)
      {
        goto LABEL_59;
      }

      v56[2] = v58;
LABEL_5:
      *a5 = v56;

      v11 = v64;
      v7 = v65;
    }
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      return sub_2664CF5AC(a1, a2, v63, a3);
    }

    v16 = *(v7 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  sub_2664E0DD8();
  __break(1u);
LABEL_62:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

uint64_t sub_2664D37E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2664DE438();
  v22 = *(v5 - 8);
  v23 = v5;
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DE3D8();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a2 + 56) + 8 * v17);

    sub_2664CBA40(v19, v20, v8, v21, a3);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return (*(v22 + 8))(v8, v23);
    }

    v11 = *(a2 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664D39A8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = sub_2664DE438();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F98];
  v34 = v7 + 16;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = (v3 + 8);

  v14 = 0;
  if (v10)
  {
    while (1)
    {
      v15 = v14;
LABEL_9:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = (*(a1 + 48) + 24 * (v16 | (v15 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];

      sub_2664DE3D8();
      sub_2664CBA40(v18, v19, v6, 1, v7);

      result = (*v12)(v6, v36);
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(a1 + 56 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v21 = v35;
  v22 = v35 + 64;
  v23 = 1 << *(v35 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v35 + 64);
  v26 = (v23 + 63) >> 6;

  for (i = 0; v25; result = )
  {
    v28 = i;
LABEL_19:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = (v28 << 9) | (8 * v29);
    v31 = *(*(v21 + 48) + v30);
    v32 = *(*(v21 + 56) + v30);

    sub_2664D37E8(v31, v32, v7);
  }

  while (1)
  {
    v28 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      swift_beginAccess();
      v33 = *(v7 + 16);

      return v33;
    }

    v25 = *(v22 + 8 * v28);
    ++i;
    if (v25)
    {
      i = v28;
      goto LABEL_19;
    }
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2664D3C84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_2664E0D88() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65636572 && a2 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x794273746E657665 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_2664E0D88();

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

uint64_t sub_2664D3DA4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740D0, &qword_2664F0808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4018();
  sub_2664E0EF8();
  LOBYTE(v12) = 0;
  sub_2664E0CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740E0, &qword_2664F0810);
  v11 = 1;
  sub_2664D4170(&qword_2800740E8, sub_2664D406C);
  sub_2664E0CE8();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800740F8, &unk_2664F0818);
  v11 = 2;
  sub_2664D40C0();
  sub_2664E0CE8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_2664D4018()
{
  result = qword_2800740D8;
  if (!qword_2800740D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800740D8);
  }

  return result;
}

unint64_t sub_2664D406C()
{
  result = qword_2800740F0;
  if (!qword_2800740F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800740F0);
  }

  return result;
}

unint64_t sub_2664D40C0()
{
  result = qword_280074100;
  if (!qword_280074100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D42EC(&qword_280074108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074100);
  }

  return result;
}

uint64_t sub_2664D4170(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740E0, &qword_2664F0810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2664D41E8()
{
  result = qword_280074120;
  if (!qword_280074120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074120);
  }

  return result;
}

unint64_t sub_2664D423C()
{
  result = qword_280074128;
  if (!qword_280074128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800740F8, &unk_2664F0818);
    sub_2664D42EC(&qword_280074130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074128);
  }

  return result;
}

uint64_t sub_2664D42EC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800731A0, &qword_2664E9780);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2664D435C(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_2664CB3EC(a1, v7, v1 + v4, v9, v10);
}

void sub_2664D440C(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + 16 + v8) & ~v4;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + ((v6 + v9) & 0xFFFFFFFFFFFFFFF8));

  sub_2664CBF34(a1, (v1 + v5), v10, v11, v12, (v1 + v9));
}

uint64_t sub_2664D44D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2664D4520(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_2664CA720(a1, *(v1 + 16));
}

unint64_t sub_2664D4550()
{
  result = qword_280F8FA28[0];
  if (!qword_280F8FA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F8FA28);
  }

  return result;
}

unint64_t sub_2664D45A8()
{
  result = qword_280074160;
  if (!qword_280074160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074160);
  }

  return result;
}

unint64_t sub_2664D4600()
{
  result = qword_280074168;
  if (!qword_280074168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074168);
  }

  return result;
}

unint64_t sub_2664D4658()
{
  result = qword_280074170;
  if (!qword_280074170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074170);
  }

  return result;
}

double sub_2664D46AC(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074178, &qword_2664F0A70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2664D4888();
  sub_2664E0EF8();
  if (!v1)
  {
    v14 = 0;
    sub_2664E0CC8();
    v13 = 1;
    sub_2664E0CD8();
    v2 = v11;
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

unint64_t sub_2664D4888()
{
  result = qword_280074180;
  if (!qword_280074180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074180);
  }

  return result;
}

unint64_t sub_2664D48F0()
{
  result = qword_280074190;
  if (!qword_280074190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074190);
  }

  return result;
}

unint64_t sub_2664D4948()
{
  result = qword_280074198;
  if (!qword_280074198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280074198);
  }

  return result;
}

unint64_t sub_2664D49A0()
{
  result = qword_2800741A0;
  if (!qword_2800741A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800741A0);
  }

  return result;
}

uint64_t sub_2664D4A60()
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
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664FC200, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800741A8 = v10;
  return result;
}

uint64_t static SiriAudioState.warmupWithRequestId(requestID:)(uint64_t a1, uint64_t a2)
{
  _s16SiriAudioSupport0aB5StateV8isWarmupSbvsZ_0(1);
  qword_2800741C0 = a1;
  qword_2800741C8 = a2;
}

uint64_t _s16SiriAudioSupport0aB5StateV16currentRequestIdSSSgyFZ_0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2662A3324(&byte_2800741B8, "SiriAudio#isWarmup#get %{BOOL}d"))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v5 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v5, v0);
    v6 = sub_2664DFE18();
    v7 = sub_2664E06D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      if (qword_2800741C8)
      {
        v10 = qword_2800741C0;
      }

      else
      {
        v10 = 0x3E6C696E3CLL;
      }

      if (qword_2800741C8)
      {
        v11 = qword_2800741C8;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = sub_2662A320C(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_26629C000, v6, v7, "SiriAudioState#currentRequestId warmup, returning warmup requestID: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266784AD0](v9, -1, -1);
      MEMORY[0x266784AD0](v8, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v13 = qword_2800741C0;
  }

  else
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = qword_280F90B40;
    v15 = unk_280F90B48;
    v16 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v17 = *(v14 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v13 = (*(v15 + 16))(v14, v15);
    (*(v17 + 8))(v20, v14);
  }

  return v13;
}

uint64_t _s16SiriAudioSupport0aB5StateV8isWarmupSbvsZ_0(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriAudio#isWarmup#set %{BOOL}d", v10, 8u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  byte_2800741B8 = a1 & 1;
  return result;
}

uint64_t sub_2664D5270()
{
  v22 = sub_2664E0018();
  v0 = *(v22 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v22);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_2664E00E8();
  v4 = *(v21 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v21);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = sub_2664E0038();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  if (qword_2800741B0)
  {

    sub_2664E0108();
  }

  aBlock[4] = sub_2662A3FD4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_52;
  _Block_copy(aBlock);
  v23 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  v13 = sub_2664E0118();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  qword_2800741B0 = sub_2664E00F8();

  if (qword_280071CF8 != -1)
  {
    swift_once();
  }

  sub_2664E00C8();
  *v3 = 1000;
  v16 = v22;
  (*(v0 + 104))(v3, *MEMORY[0x277D85178], v22);
  MEMORY[0x266783140](v8, v3);
  (*(v0 + 8))(v3, v16);
  v17 = *(v4 + 8);
  v18 = v21;
  v17(v8, v21);
  sub_2664E07A8();

  return (v17)(v10, v18);
}

uint64_t sub_2664D5614(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t static ErrorFilingProvider.getTrialPolicy()()
{
  v8 = xmmword_2664F0BB0;
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v1 = qword_2800741D0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2664D8638;
  *(v3 + 24) = v2;
  v7[4] = sub_2662AA56C;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2662ABACC;
  v7[3] = &block_descriptor_53;
  v4 = _Block_copy(v7);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;
    sub_26648736C(v8, *(&v8 + 1));
    sub_2662B79A8(v6, *(&v6 + 1));

    return v6;
  }

  return result;
}

uint64_t sub_2664D58B4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0088();
  v12[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230]);
  sub_2664E0F48();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001ELL, 0x80000002664FC5B0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_2800741D0 = v10;
  return result;
}

unint64_t sub_2664D5A94()
{
  result = sub_2663854AC(MEMORY[0x277D84F90]);
  qword_2800741E8 = result;
  return result;
}

dispatch_semaphore_t sub_2664D5ABC()
{
  result = dispatch_semaphore_create(0);
  qword_2800741F0 = result;
  return result;
}

uint64_t sub_2664D5AE8(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v51 - v4;
  v5 = sub_2664E0018();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v57 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2664E00E8();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v51 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  *&v61 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v22 = v15[2];
  v53 = v21;
  v52 = v22;
  v22(v20, v21, v14);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = v15;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "SRTBreachManager#checkForSRTBreach we have a breach, creating tailspin file and then TTR", v26, 2u);
    v27 = v26;
    v15 = v25;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v51 = v15[1];
  v51(v20, v14);
  v54 = "leUniversalStoreIdentifiers>8";
  sub_2664DF5D8();
  if (qword_280071D10 != -1)
  {
    swift_once();
  }

  v28 = v55;
  sub_2664E00C8();
  v29 = v57;
  *v57 = 20;
  (*(v6 + 104))(v29, *MEMORY[0x277D85188], v5);
  v30 = v56;
  MEMORY[0x266783140](v28, v29);
  (*(v6 + 8))(v29, v5);
  v31 = v59;
  v32 = *(v58 + 8);
  v32(v28, v59);
  sub_2664E0868();
  v32(v30, v31);
  v33 = sub_2664E0028();
  v52(v61, v53, v14);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06E8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67109120;
    *(v36 + 4) = v33 & 1;
    _os_log_impl(&dword_26629C000, v34, v35, "ErrorFilingProvider#checkForSRTBreach notification received: %{BOOL}d", v36, 8u);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  v51(v61, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073FE8, &qword_2664EF6F8);
  inited = swift_initStackObject();
  v61 = xmmword_2664E36F0;
  *(inited + 16) = xmmword_2664E36F0;
  v62 = sub_2664DF5E8();
  v63 = v38;

  MEMORY[0x2667833B0](0xD000000000000014, v54 | 0x8000000000000000);

  v39 = v63;
  *(inited + 32) = v62;
  *(inited + 40) = v39;
  *(inited + 48) = 0x6E6970736C696174;
  *(inited + 56) = 0xE800000000000000;
  v40 = sub_2663869D0(inited);
  swift_setDeallocating();
  sub_2662A9238(inited + 32, &unk_280074240, &unk_2664EF700);
  v41 = _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v42 = swift_allocObject();
  v43 = MEMORY[0x277D839F8];
  *(v42 + 16) = v61;
  v44 = MEMORY[0x277D83A80];
  *(v42 + 56) = v43;
  *(v42 + 64) = v44;
  *(v42 + 32) = a1;
  v62 = sub_2664E02E8();
  v63 = v45;

  MEMORY[0x2667833B0](0x73646E6F63657320, 0xE800000000000000);

  v46 = v62;
  v47 = v63;
  v48 = sub_2664DFB08();
  v49 = v60;
  (*(*(v48 - 8) + 56))(v60, 1, 1, v48);
  _s16SiriAudioSupport19ErrorFilingProviderC19fileTTRForSRTBreach13errorToReport11description14attachmentURLs9deviceIDs16ttrComponentInfoySS_SSSay10Foundation3URLVGSgSaySSGSg0A15FlowEnvironment012TTRComponentT0VSgtFZ_0(0x6361657242545253, 0xE900000000000068, v46, v47, v41, 0, v49);

  return sub_2662A9238(v49, &unk_280074230, &qword_2664EF6F0);
}

uint64_t sub_2664D626C(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  if ((a1 & 1) != 0 && a3)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v14, v6);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06E8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_2662A320C(a2, a3, &v24);
      _os_log_impl(&dword_26629C000, v15, v16, "SRTBreachManager#checkForSRTBreach createTailSpinFile generated: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "SRTBreachManager#checkForSRTBreach failed to create tailspin file", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }

  if (qword_280071D10 != -1)
  {
    swift_once();
  }

  return sub_2664E0888();
}

void *sub_2664D65DC()
{
  type metadata accessor for ErrorFilingProvider.TrialClientManager();
  swift_allocObject();
  result = sub_2664D665C();
  qword_2800741F8 = result;
  return result;
}

id sub_2664D661C()
{
  result = [objc_opt_self() clientWithIdentifier_];
  qword_280074200 = result;
  return result;
}

void *sub_2664D665C()
{
  v1 = v0;
  v34 = *v0;
  v2 = sub_2664E0038();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E00B8();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "ErrorFilingProvider#TrialClientManager#init", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v19 = qword_2800741D0;
  v40 = sub_2664DCE48;
  v41 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2662A3F90;
  v39 = &block_descriptor_57;
  v20 = _Block_copy(&aBlock);

  sub_2664E0068();
  v35 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v9, v5, v20);
  _Block_release(v20);
  (*(v33 + 8))(v5, v2);
  (*(v31 + 8))(v9, v32);

  sub_2664D7E80();
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  v21 = qword_280074200;
  v22 = sub_2664E02A8();
  v23 = swift_allocObject();
  v24 = v34;
  *(v23 + 16) = v1;
  *(v23 + 24) = v24;
  v40 = sub_2664DCE4C;
  v41 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2664D5614;
  v39 = &block_descriptor_63;
  v25 = _Block_copy(&aBlock);

  v26 = [v21 addUpdateHandlerForNamespaceName:v22 queue:v19 usingBlock:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();

  v27 = sub_2664E0488();
  v28 = sub_2664E02A8();
  v40 = sub_2664D6F20;
  v41 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2664D741C;
  v39 = &block_descriptor_66_1;
  v29 = _Block_copy(&aBlock);
  [v21 downloadLevelsForFactors:v27 withNamespace:v28 queue:v19 options:0 progress:0 completion:v29];
  _Block_release(v29);

  return v1;
}

uint64_t sub_2664D6C98(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  swift_unknownObjectRetain();
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[1] = a1;
    v17 = v11;
    *v10 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073330, &unk_2664EA450);
    v12 = sub_2664E0318();
    v14 = sub_2662A320C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_26629C000, v8, v9, "ErrorFilingProvider#TrialClientManager update handler called with %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266784AD0](v11, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  [qword_280074200 refresh];
  return sub_2664DC4A4();
}

uint64_t sub_2664D6F20(uint64_t a1, void *a2)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v42 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v14 = v4[2];
  v14(v12, v13, v3);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41 = v3;
    v18 = v4;
    v19 = v10;
    v20 = a2;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "ErrorFilingProvider#TrialClientManager downloadLevels", v17, 2u);
    v22 = v21;
    a2 = v20;
    v10 = v19;
    v4 = v18;
    v3 = v41;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v4[1];
  v23(v12, v3);
  if (a2)
  {
    v14(v10, v13, v3);
    v24 = a2;
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v23;
      v29 = v28;
      v43 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_2662A320C(0xD000000000000019, 0x80000002664F33D0, &v43);
      v30 = a2;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2662A320C(0xD000000000000023, 0x80000002664FC420, &v43);
      *(v27 + 22) = 2080;
      swift_getErrorValue();
      v31 = sub_2664E0DE8();
      v33 = sub_2662A320C(v31, v32, &v43);

      *(v27 + 24) = v33;
      _os_log_impl(&dword_26629C000, v25, v26, "Error downloading levels for factor: %s in namespace: %s. Error: %s", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);

      return v42(v10, v3);
    }

    v40 = v10;
  }

  else
  {
    v35 = v42;
    v14(v42, v13, v3);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06B8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_2662A320C(0xD000000000000019, 0x80000002664F33D0, &v43);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2662A320C(0xD000000000000023, 0x80000002664FC420, &v43);
      _os_log_impl(&dword_26629C000, v36, v37, "Successfully downloaded levels for factor: %s in namespace: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v40 = v35;
  }

  return (v23)(v40, v3);
}

void sub_2664D741C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2664D7494()
{
  v1 = v0;
  v2 = sub_2664E0038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06B8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v6;
    v19 = v7;
    v20 = v2;
    v21 = v3;
    v22 = v1;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "ErrorFilingProvider#deinit", v18, 2u);
    v24 = v23;
    v1 = v22;
    v3 = v21;
    v2 = v20;
    v7 = v19;
    v6 = v29;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  sub_2664259E0();
  v25 = sub_2664E07C8();
  aBlock[4] = sub_2664DCE40;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_54_0;
  v26 = _Block_copy(aBlock);

  v27 = v30;
  sub_2664E0068();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v27, v6, v26);
  _Block_release(v26);

  (*(v3 + 8))(v6, v2);
  (*(v31 + 8))(v27, v7);
  return v1;
}

void sub_2664D78DC(const void *a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v3 = DistributedCenter;
    v4 = sub_2664E02A8();
    CFNotificationCenterRemoveObserver(v3, a1, v4, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2664D796C()
{
  sub_2664D7494();

  return swift_deallocClassInstance();
}

uint64_t static ErrorFilingProvider.setTrialPolicy(dataPolicy:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664E0038();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  sub_26648736C(a1, a2);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (!os_log_type_enabled(v18, v19))
  {
    sub_2662B79A8(a1, a2);
    goto LABEL_8;
  }

  result = swift_slowAlloc();
  v21 = result;
  *result = 134217984;
  if (a2 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v26 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v26)
    {
      v22 = BYTE6(a2);
      goto LABEL_6;
    }

LABEL_18:
    LODWORD(v22) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v22 = v22;
    goto LABEL_6;
  }

  if (v26 == 2)
  {
    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v29 = __OFSUB__(v27, v28);
    v22 = v27 - v28;
    if (!v29)
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  v22 = 0;
LABEL_6:
  *(result + 4) = v22;
  sub_2662B79A8(a1, a2);
  _os_log_impl(&dword_26629C000, v18, v19, "ErrorFilingProvider#setTrialPolicy... policy is %ld bytes", v21, 0xCu);
  MEMORY[0x266784AD0](v21, -1, -1);
LABEL_8:

  (*(v13 + 8))(v16, v12);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = v30[1];
  aBlock[4] = sub_2664DC178;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_9_3;
  v24 = _Block_copy(aBlock);
  sub_26648736C(a1, a2);
  sub_2664E0068();
  v35 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v25 = v34;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v11, v7, v24);
  _Block_release(v24);
  (*(v33 + 8))(v7, v25);
  (*(v31 + 8))(v11, v32);
}

void sub_2664D7E80()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "ErrorFilingProvider#registerForSRTNotifications...", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    v12 = DistributedCenter;
    v13 = sub_2664E02A8();
    CFNotificationCenterAddObserver(v12, v1, sub_2664D8094, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

void sub_2664D8094(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_2664DCA74(a2, a5);
}

uint64_t static ErrorFilingProvider.setupTrialClient()()
{
  v0 = sub_2664E0038();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E0058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AFIsInternalInstall();
  if (result)
  {
    sub_2664E0078();
    sub_2664259E0();
    v19[0] = v1;
    sub_2664E00A8();
    v16 = sub_2664E0808();
    (*(v6 + 8))(v9, v5);
    v17 = *(v11 + 8);
    v17(v14, v10);
    aBlock[4] = sub_2664D8464;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A3F90;
    aBlock[3] = &block_descriptor_12_4;
    v18 = _Block_copy(aBlock);
    sub_2664E0068();
    v19[1] = MEMORY[0x277D84F90];
    sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    sub_2664E0A08();
    MEMORY[0x266783800](0, v14, v4, v18);
    _Block_release(v18);

    (*(v19[0] + 8))(v4, v0);
    return (v17)(v14, v10);
  }

  return result;
}

uint64_t sub_2664D8464()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ErrorFilingProvider#setupTrialClient...", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  result = (*(v1 + 8))(v4, v0);
  if (qword_280071D18 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_2664D8638()
{
  v1 = *(v0 + 16);
  v2 = qword_2800741D8;
  v3 = unk_2800741E0;
  v4 = *v1;
  v5 = v1[1];
  *v1 = qword_2800741D8;
  v1[1] = v3;
  sub_26648736C(v2, v3);

  return sub_2662B79A8(v4, v5);
}

uint64_t static ErrorFilingProvider.setErrorFilingInfo(errorCode:errorTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2664E0038();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2664E00B8();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v21[1] = qword_2800741D0;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = v4;
  aBlock[4] = sub_2664DC1C4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_18_0;
  v19 = _Block_copy(aBlock);

  sub_2664E0068();
  v23 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_2664D897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280071D08 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v7 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D837D0];
  *&v10 = a1;
  *(&v10 + 1) = a2;
  swift_beginAccess();

  sub_2664AABB0(&v10, 0xD000000000000010, 0x80000002664FC220, v12);
  swift_endAccess();
  result = sub_2662A9238(v12, &unk_280074250, &unk_2664E3680);
  if (a4)
  {
    v11 = v7;
    *&v10 = a3;
    *(&v10 + 1) = a4;
    swift_beginAccess();

    sub_2664AABB0(&v10, 0xD000000000000011, 0x80000002664FC240, v12);
    swift_endAccess();
    return sub_2662A9238(v12, &unk_280074250, &unk_2664E3680);
  }

  return result;
}

uint64_t static ErrorFilingProvider.getErrorFilingInfo()()
{
  v8 = sub_2663854AC(MEMORY[0x277D84F90]);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  v1 = qword_2800741D0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2664DC1D4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2663CD054;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_28_1;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v8;

    return v6;
  }

  return result;
}

uint64_t sub_2664D8C8C(uint64_t *a1)
{
  if (qword_280071D08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *a1;
  *a1 = qword_2800741E8;
}

uint64_t static ErrorFilingProvider.clearErrorFilingInfo()()
{
  v0 = sub_2664E0038();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071D00 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_2664D95D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_31_0;
  v10 = _Block_copy(aBlock);
  sub_2664E0068();
  v12[1] = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v9, v4, v10);
  _Block_release(v10);
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
}

uint64_t static ErrorFilingProvider.generateABCSnapshot(errorToReport:errorDomain:errorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a4;
  v33 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v15 = sub_2664E02A8();
  v16 = [v14 initWithSuiteName_];

  if (v16 && (v17 = sub_2664E02A8(), v18 = [v16 BOOLForKey_], v16, v17, (v18 & 1) != 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v19, v6);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "ErrorFilingProvider#generateABCSnapshot no-op because disabled!", v22, 2u);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v24, v6);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06E8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "ErrorFilingProvider#generateABCSnapshot called to capture some error condition", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v28 = sub_2664DF638();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_2664DF628();
    sub_2664DF618();
  }
}

uint64_t sub_2664D93DC(char a1, const char *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v10, v11, a2, v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2664D95D4()
{
  if (qword_280071D08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_2800741E8 = MEMORY[0x277D84F98];
}

uint64_t _s16SiriAudioSupport19ErrorFilingProviderC20collectAnyExtraFiles22filePathsAndExtensionsSay10Foundation3URLVGSDyS2SG_tFZ_0(uint64_t a1)
{
  v122[9] = *MEMORY[0x277D85DE8];
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v96 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v92 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v92 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v92 - v13;
  v15 = sub_2664DE268();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v119 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v105 = &v92 - v22;
  v23 = *(a1 + 64);
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  v120 = MEMORY[0x277D84F90];
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v108 = (v24 + 63) >> 6;
  v106 = (v21 + 48);
  v117 = (v21 + 32);
  v111 = v21 + 16;
  v112 = v21;
  v109 = (v21 + 8);
  v102 = (v3 + 16);
  v27 = (v3 + 8);
  v28 = a1 + 64;
  v101 = v27;

  v29 = 0;
  v93 = 0;
  *&v30 = 136315138;
  v94 = v30;
  *&v30 = 136315650;
  v92 = v30;
  v104 = v2;
  v110 = v15;
  v100 = a1;
  v97 = v10;
  v99 = v14;
  v98 = a1 + 64;
LABEL_5:
  if (v26)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v31 >= v108)
    {
      break;
    }

    v26 = *(v28 + 8 * v31);
    ++v29;
    if (v26)
    {
      v29 = v31;
LABEL_10:
      v32 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v33 = (v29 << 10) | (16 * v32);
      v34 = (*(a1 + 48) + v33);
      v35 = *v34;
      v36 = v34[1];
      v37 = (*(a1 + 56) + v33);
      v38 = v37[1];
      v118 = *v37;

      v107 = v35;
      sub_2664DE258();
      if ((*v106)(v14, 1, v15) == 1)
      {

        sub_2662A9238(v14, &qword_280072BC0, &qword_2664E6030);
      }

      else
      {
        v114 = v38;
        v103 = v36;
        v116 = *v117;
        v116(v105, v14, v15);
        v39 = [objc_opt_self() defaultManager];
        v40 = sub_2664DE208();
        v122[0] = 0;
        v41 = [v39 contentsOfDirectoryAtURL:v40 includingPropertiesForKeys:0 options:0 error:v122];

        v42 = v122[0];
        if (v41)
        {
          v43 = sub_2664E04A8();
          v44 = v42;

          v45 = v114;
          v113 = *(v43 + 16);
          if (v113)
          {
            v46 = 0;
            v47 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v46 >= *(v43 + 16))
              {
                goto LABEL_45;
              }

              v48 = (*(v112 + 80) + 32) & ~*(v112 + 80);
              v49 = *(v112 + 72);
              (*(v112 + 16))(v119, v43 + v48 + v49 * v46, v15);
              if (sub_2664DE1D8() == v118 && v50 == v45)
              {
                break;
              }

              v51 = sub_2664E0D88();

              if (v51)
              {
                goto LABEL_21;
              }

              (*v109)(v119, v15);
LABEL_15:
              ++v46;
              v45 = v114;
              if (v113 == v46)
              {
                goto LABEL_31;
              }
            }

LABEL_21:
            v116(v115, v119, v15);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v122[0] = v47;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2662FD240(0, v47[2] + 1, 1);
              v47 = v122[0];
            }

            v54 = v47[2];
            v53 = v47[3];
            if (v54 >= v53 >> 1)
            {
              sub_2662FD240(v53 > 1, v54 + 1, 1);
              v47 = v122[0];
            }

            v47[2] = v54 + 1;
            v55 = v47 + v48 + v54 * v49;
            v15 = v110;
            v116(v55, v115, v110);
            goto LABEL_15;
          }

          v47 = MEMORY[0x277D84F90];
LABEL_31:

          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v67 = v104;
          v68 = __swift_project_value_buffer(v104, qword_280F914F0);
          swift_beginAccess();
          v69 = v97;
          (*v102)(v97, v68, v67);
          swift_retain_n();
          v70 = v103;

          v71 = sub_2664DFE18();
          v72 = sub_2664E06C8();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            LODWORD(v114) = v72;
            v74 = v73;
            v116 = swift_slowAlloc();
            v122[0] = v116;
            *v74 = v92;
            v75 = sub_2662A320C(v107, v70, v122);

            *(v74 + 4) = v75;
            *(v74 + 12) = 2080;
            v76 = sub_2662A320C(v118, v45, v122);

            *(v74 + 14) = v76;
            *(v74 + 22) = 2048;
            v77 = v47[2];

            *(v74 + 24) = v77;

            _os_log_impl(&dword_26629C000, v71, v114, "ErrorFilingProvider#collectAnyExtraFiles looking in %s, for %s extensions, found %ld", v74, 0x20u);
            v78 = v116;
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v78, -1, -1);
            MEMORY[0x266784AD0](v74, -1, -1);

            (*v101)(v69, v104);
          }

          else
          {

            (*v101)(v69, v67);
          }

          sub_2662FA11C(v47);
          (*v109)(v105, v15);
        }

        else
        {
          v56 = v122[0];

          v57 = sub_2664DE1A8();

          swift_willThrow();
          v58 = v96;
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v59 = v104;
          v60 = __swift_project_value_buffer(v104, qword_280F914F0);
          swift_beginAccess();
          (*v102)(v58, v60, v59);
          v61 = v103;

          v62 = sub_2664DFE18();
          v63 = sub_2664E06D8();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v122[0] = v65;
            *v64 = v94;
            v66 = sub_2662A320C(v107, v61, v122);

            *(v64 + 4) = v66;
            _os_log_impl(&dword_26629C000, v62, v63, "ErrorFilingProvider#collectAnyExtraFiles error fetching attachment(s) for directory: %s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v65);
            MEMORY[0x266784AD0](v65, -1, -1);
            MEMORY[0x266784AD0](v64, -1, -1);

            (*v101)(v96, v104);
          }

          else
          {

            (*v101)(v58, v59);
          }

          (*v109)(v105, v15);
          v93 = 0;
        }

        a1 = v100;
        v14 = v99;
        v28 = v98;
      }

      goto LABEL_5;
    }
  }

  if (qword_280F914E8 == -1)
  {
    goto LABEL_41;
  }

LABEL_46:
  swift_once();
LABEL_41:
  v79 = v104;
  v80 = __swift_project_value_buffer(v104, qword_280F914F0);
  swift_beginAccess();
  v81 = v95;
  (*v102)(v95, v80, v79);
  v82 = v120;

  v83 = sub_2664DFE18();
  v84 = sub_2664E06B8();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v121 = v86;
    *v85 = v94;
    v87 = MEMORY[0x2667834D0](v82, v15);
    v89 = sub_2662A320C(v87, v88, &v121);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_26629C000, v83, v84, "ErrorFilingProvider#collectAnyExtraFiles: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v86);
    MEMORY[0x266784AD0](v86, -1, -1);
    MEMORY[0x266784AD0](v85, -1, -1);
  }

  (*v101)(v81, v79);
  v90 = *MEMORY[0x277D85DE8];
  return v82;
}

uint64_t sub_2664DA31C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v94 = a8;
  v95 = a7;
  v91 = a6;
  v88 = a5;
  v89 = a2;
  v86 = a3;
  v87 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074260, qword_2664F0C68);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v80 - v16;
  v100 = sub_2664DFB28();
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v80 - v21;
  v101 = sub_2664DFB08();
  v96 = *(v101 - 8);
  v23 = *(v96 + 64);
  v24 = MEMORY[0x28223BE20](v101);
  v90 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v93 = &v80 - v26;
  v27 = sub_2664DFE38();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v80 - v33;
  v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v92 = "leUniversalStoreIdentifiers>8";
  v36 = sub_2664E02A8();
  v37 = [v35 initWithSuiteName_];

  if (v37 && (v38 = sub_2664E02A8(), v39 = [v37 BOOLForKey_], v37, v38, (v39 & 1) != 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v27, qword_280F914F0);
    swift_beginAccess();
    (*(v28 + 16))(v32, v40, v27);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "ErrorFilingProvider#fileTTR no-op because disabled!", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    return (*(v28 + 8))(v32, v27);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v27, qword_280F914F0);
    swift_beginAccess();
    (*(v28 + 16))(v34, v45, v27);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26629C000, v46, v47, "ErrorFilingProvider#fileTTR called to capture some error condition", v48, 2u);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v82 = a9;
    v49 = a11;

    (*(v28 + 8))(v34, v27);
    v50 = static ErrorFilingProvider.getTrialPolicy()();
    if (v51 >> 60 == 15)
    {
      v52 = 0;
    }

    else
    {
      v52 = v50;
    }

    if (v51 >> 60 == 15)
    {
      v53 = 0xC000000000000000;
    }

    else
    {
      v53 = v51;
    }

    v54 = v86;
    if (!a4)
    {
      v54 = 0;
    }

    v81 = v54;
    v55 = 0xE000000000000000;
    if (a4)
    {
      v56 = a4;
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    v57 = sub_2664DFBA8();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    sub_2663C50C4(v52, v53);

    v86 = v52;
    v85 = v53;
    v83 = sub_2664DFB88();
    if (a13)
    {
      v102 = a12;
      v103 = a13;

      MEMORY[0x2667833B0](8236, 0xE200000000000000);
      v60 = v102;
      v55 = v103;
    }

    else
    {
      v60 = 0;
    }

    v84 = a12;
    if (a11)
    {

      v62 = v89;
      v63 = v87;
    }

    else
    {
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_2664E0B28();
      MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664FC560);
      MEMORY[0x2667833B0](v81, v56);

      MEMORY[0x2667833B0](v60, v55);

      v63 = v87;
      v62 = v89;
      MEMORY[0x2667833B0](v87, v89);
      a10 = v102;
      v49 = v103;
    }

    v89 = a13;
    v80 = v49;
    v87 = a10;
    if (a13)
    {
      v64 = v63;
    }

    else
    {
      v64 = a10;
    }

    v81 = v64;

    if (v91)
    {
      v65 = v88;
    }

    else
    {
      v65 = 0;
    }

    if (v91)
    {
      v66 = v91;
    }

    else
    {
      v66 = 0xE000000000000000;
    }

    v102 = v63;
    v103 = v62;

    MEMORY[0x2667833B0](v65, v66);

    sub_2664DCE54(v82, v22);
    v67 = v96;
    v68 = *(v96 + 48);
    v69 = v101;
    if (v68(v22, 1, v101) == 1)
    {
      v70 = v90;
      MEMORY[0x266782B10](0xD000000000000011, 0x80000002664FC520, 0x6F69647541, 0xE500000000000000, 1050192);
      v71 = v70;
      if (v68(v22, 1, v69) != 1)
      {
        sub_2662A9238(v22, &unk_280074230, &qword_2664EF6F0);
      }
    }

    else
    {
      v71 = v90;
      (*(v67 + 32))(v90, v22, v69);
    }

    v72 = v93;
    (*(v67 + 32))(v93, v71, v69);
    v73 = v95;

    v75 = v67;
    v76 = v97;
    MEMORY[0x266782B30](v74, &unk_2877E5828, v73, 0xD00000000000001ALL, 0x80000002664FC590);
    v78 = v98;
    v77 = v99;
    v79 = v100;
    (*(v98 + 16))(v99, v76, v100);
    (*(v78 + 56))(v77, 0, 1, v79);
    sub_2664DFB78();

    sub_266348774(v86, v85);
    sub_2662A9238(v77, &qword_280074260, qword_2664F0C68);
    (*(v78 + 8))(v76, v79);
    return (*(v75 + 8))(v72, v101);
  }
}

uint64_t sub_2664DACD0(uint64_t a1)
{
  v88 = sub_2664E0038();
  v87 = *(v88 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2664E0058();
  v82 = *(v83 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2664E00B8();
  v85 = *(v89 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v89);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074220, &qword_2664F0C60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v79 - v10;
  v12 = sub_2664DFBD8();
  v93 = *(v12 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v96 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = &v79 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v79 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v94 = &v79 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v79 - v30;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v33 = v17[2];
  v99 = v17 + 2;
  v100 = v32;
  v98 = v33;
  v33(v31, v32, v16);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();

  v36 = os_log_type_enabled(v34, v35);
  v92 = v15;
  v91 = v29;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v90 = v12;
    v80 = v17;
    v39 = v38;
    aBlock[0] = v38;
    *v37 = 136315138;
    v102 = *&a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
    v40 = sub_2664E0318();
    v42 = v11;
    v43 = v16;
    v44 = sub_2662A320C(v40, v41, aBlock);

    *(v37 + 4) = v44;
    v16 = v43;
    v11 = v42;
    _os_log_impl(&dword_26629C000, v34, v35, "SRTBreachManager#checkForSRTBreach called with payload: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v45 = v39;
    v17 = v80;
    v12 = v90;
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  v46 = v17[1];
  v46(v31, v16);
  if (!a1)
  {
    v49 = v96;
    v98(v96, v100, v16);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "SRTBreachManager#checkForSRTBreach no-op with payload nil";
LABEL_25:
      _os_log_impl(&dword_26629C000, v50, v51, v53, v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

LABEL_26:

    v46(v49, v16);
    return 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

  v47 = sub_2662A3E98(0xD000000000000012, 0x80000002664FC3B0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * v47, aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (v102 != -2.31584178e77 || 0x80000002664FC3D0 != v103)
  {
    v54 = sub_2664E0D88();

    if (v54)
    {
      goto LABEL_15;
    }

LABEL_23:
    v49 = v97;
    v98(v97, v100, v16);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "SRTBreachManager#checkForSRTBreach plugin not matching, ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

LABEL_15:
  if (!*(a1 + 16) || (v55 = sub_2662A3E98(0x656D6954545253, 0xE700000000000000), (v56 & 1) == 0) || (sub_2662A01E8(*(a1 + 56) + 32 * v55, aBlock), (swift_dynamicCast() & 1) == 0))
  {
    v49 = v95;
    v98(v95, v100, v16);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_26;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "SRTBreachManager#checkForSRTBreach srtTime not applicable, ignoring";
    goto LABEL_25;
  }

  v57 = v102;
  type metadata accessor for ErrorFilingProvider();
  v58 = static ErrorFilingProvider.getTrialPolicy()();
  if (v59 >> 60 == 15)
  {
LABEL_21:
    v49 = v94;
    v98(v94, v100, v16);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06C8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = "SRTBreachManager#checkForSRTBreach no relevant filing policy found, ignoring";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v60 = v58;
  v61 = v59;
  sub_2664DFBA8();
  sub_2664DFB98();
  v62 = v93;
  if ((*(v93 + 48))(v11, 1, v12) == 1)
  {
    sub_2662B79A8(v60, v61);
    sub_2662A9238(v11, &unk_280074220, &qword_2664F0C60);
    goto LABEL_21;
  }

  v97 = v60;
  v64 = v92;
  (*(v62 + 32))(v92, v11, v12);
  sub_2664DFBC8();
  if (v65 <= 0.0 || (sub_2664DFBC8(), v57 >= 60.1) || v66 >= v57)
  {
    v75 = v91;
    v98(v91, v100, v16);
    v76 = sub_2664DFE18();
    v77 = sub_2664E06C8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26629C000, v76, v77, "SRTBreachManager#checkForSRTBreach SRT timing not breaching policy value", v78, 2u);
      MEMORY[0x266784AD0](v78, -1, -1);
      sub_2662B79A8(v97, v61);

      v46(v75, v16);
      (*(v62 + 8))(v92, v12);
    }

    else
    {
      sub_2662B79A8(v97, v61);

      v46(v75, v16);
      (*(v62 + 8))(v64, v12);
    }

    return 0;
  }

  v67 = v84;
  sub_2664E0078();
  sub_2664259E0();
  v68 = v81;
  sub_2664E00A8();
  v100 = sub_2664E0808();
  (*(v82 + 8))(v68, v83);
  v90 = v12;
  v69 = *(v85 + 8);
  v69(v67, v89);
  v70 = swift_allocObject();
  *(v70 + 16) = v57;
  aBlock[4] = sub_2664DCE38;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_51;
  v71 = _Block_copy(aBlock);
  sub_2664E0068();
  v102 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v72 = v86;
  v73 = v88;
  sub_2664E0A08();
  v74 = v100;
  MEMORY[0x266783800](0, v67, v72, v71);
  sub_2662B79A8(v97, v61);
  _Block_release(v71);

  (*(v87 + 8))(v72, v73);
  v69(v67, v89);
  (*(v62 + 8))(v92, v90);

  return 1;
}

uint64_t _s16SiriAudioSupport19ErrorFilingProviderC19fileTTRForSRTBreach13errorToReport11description14attachmentURLs9deviceIDs16ttrComponentInfoySS_SSSay10Foundation3URLVGSgSaySSGSg0A15FlowEnvironment012TTRComponentT0VSgtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a4;
  v61 = a7;
  v65 = a6;
  v63 = a5;
  v58 = a3;
  v68 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074260, qword_2664F0C68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = v57 - v10;
  v71 = sub_2664DFB28();
  v69 = *(v71 - 8);
  v11 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v66 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v59 = v57 - v15;
  v64 = sub_2664DFB08();
  v72 = *(v64 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = v57 - v24;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v67 = a1;
  v26 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v27 = v19[2];
  v27(v25, v26, v18);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "ErrorFilingProvider#fileTTRForSRTBreach...", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  v31 = v19[1];
  v31(v25, v18);
  v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v57[4] = "leUniversalStoreIdentifiers>8";
  v33 = sub_2664E02A8();
  v34 = [v32 initWithSuiteName_];

  if (v34 && (v35 = sub_2664E02A8(), v36 = [v34 BOOLForKey_], v34, v35, (v36 & 1) != 0))
  {
    v27(v23, v26, v18);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "ErrorFilingProvider#fileTTRForSRTBreach no-op because disabled!", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    return (v31)(v23, v18);
  }

  else
  {
    v41 = sub_2664DFB58();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v57[3] = sub_2664DFB48();
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_2664E0B28();
    MEMORY[0x2667833B0](0xD000000000000032, 0x80000002664FC4E0);
    v44 = v58;
    v45 = v60;
    MEMORY[0x2667833B0](v58, v60);
    v57[1] = v73;
    v57[2] = v74;
    v73 = v67;
    v74 = v68;

    MEMORY[0x2667833B0](32, 0xE100000000000000);

    MEMORY[0x2667833B0](v44, v45);

    v60 = v73;
    v46 = v59;
    sub_2664DCE54(v61, v59);
    v47 = v72;
    v48 = *(v72 + 48);
    v49 = v64;
    if (v48(v46, 1, v64) == 1)
    {
      v50 = v62;
      MEMORY[0x266782B10](0xD000000000000011, 0x80000002664FC520, 0x6F69647541, 0xE500000000000000, 1050192);
      if (v48(v46, 1, v49) != 1)
      {
        sub_2662A9238(v46, &unk_280074230, &qword_2664EF6F0);
      }
    }

    else
    {
      v50 = v62;
      (*(v47 + 32))(v62, v46, v49);
    }

    v51 = v65;

    v53 = v66;
    MEMORY[0x266782B30](v52, &unk_2877E5858, v51, 0xD000000000000013, 0x80000002664FC540);
    v55 = v69;
    v54 = v70;
    v56 = v71;
    (*(v69 + 16))(v70, v53, v71);
    (*(v55 + 56))(v54, 0, 1, v56);
    sub_2664DFB38();

    sub_2662A9238(v54, &qword_280074260, qword_2664F0C68);
    (*(v55 + 8))(v53, v56);
    return (*(v72 + 8))(v50, v49);
  }
}

uint64_t sub_2664DC178()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = qword_2800741D8;
  v4 = unk_2800741E0;
  qword_2800741D8 = v1;
  unk_2800741E0 = v2;
  sub_26648736C(v1, v2);

  return sub_2662B79A8(v3, v4);
}

id sub_2664DC260(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    result = [v5 fileValue];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result path];

    if (v10)
    {
      v11 = sub_2664E02C8();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        return v11;
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v7, v15, v2);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "ErrorFilingProvider#TrialClientManager#getPathForFactor using default local file system path", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return 0xD000000000000065;
}

uint64_t sub_2664DC4A4()
{
  v0 = sub_2664DE268();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = *(v44 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v41[2] = v9;
  v14 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v47 = v5[2];
  v47(v13, v14, v4);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "ErrorFilingProvider#TrialClientManager#loadLatest...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v43 = v3;

  v18 = v5[1];
  v18(v13, v4);
  if (qword_280071D20 != -1)
  {
    swift_once();
  }

  v19 = qword_280074200;
  v20 = sub_2664E02A8();
  v21 = sub_2664E02A8();
  v22 = [v19 levelForFactor:v20 withNamespaceName:v21];

  v42 = v22;
  v23 = sub_2664DC260(v22);
  v25 = v24;
  v26 = v46;
  v47(v46, v14, v4);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();

  v29 = os_log_type_enabled(v27, v28);
  v41[1] = v14;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41[0] = v18;
    v32 = v31;
    v48 = v31;
    *v30 = 136446210;

    v33 = sub_2662A320C(v23, v25, &v48);

    *(v30 + 4) = v33;
    _os_log_impl(&dword_26629C000, v27, v28, "ErrorFilingProvider#TrialClientManager#loadLatest level path: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v34 = v32;
    v35 = v41[0];
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    v35(v46, v4);
  }

  else
  {

    v18(v26, v4);
  }

  v36 = v43;
  sub_2664DE1F8();

  v37 = sub_2664DE288();
  v39 = v38;
  type metadata accessor for ErrorFilingProvider();
  sub_2663C50C4(v37, v39);
  static ErrorFilingProvider.setTrialPolicy(dataPolicy:)(v37, v39);
  sub_266348774(v37, v39);

  sub_266348774(v37, v39);
  return (*(v44 + 8))(v36, v45);
}

uint64_t sub_2664DCA74(uint64_t a1, void *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  if (a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v12, v4);
    v13 = a2;
    v14 = sub_2664DFE18();
    v15 = sub_2664E06C8();

    v16 = os_log_type_enabled(v14, v15);
    v29[0] = v13;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29[1] = a2;
      v30 = v18;
      *v17 = 136315138;
      v19 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074218, &qword_2664F0C58);
      v20 = sub_2664E0318();
      v22 = sub_2662A320C(v20, v21, &v30);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_26629C000, v14, v15, "ErrorFilingProvider#registerForSRTNotifications userInfo: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    if (!a2 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (v30 = 0, sub_2664E01B8(), (v23 = v30) == 0))
    {
      v23 = 0;
    }

    sub_2664DACD0(v23);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v25, v4);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "ErrorFilingProvider#registerForSRTNotifications observer nil!", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }
}

uint64_t sub_2664DCE4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2664D6C98(a1);
}

uint64_t sub_2664DCE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074230, &qword_2664EF6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2664DCF3C(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v22[3] = type metadata accessor for MediaPlaybackProvider();
  v22[4] = &off_2877F3740;
  v22[0] = v11;
  sub_2662A5550(v22, v20);
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2664DD13C(a1, *v16, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

uint64_t sub_2664DD13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = type metadata accessor for MediaPlaybackProvider();
  v22[4] = &off_2877F3740;
  v22[0] = a2;
  *(a3 + 16) = a1;
  sub_2662A5550(v22, a3 + 32);
  v11 = qword_280F914E8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "PodcastPlaybackHandler#ControllerReferece Retrieving controller reference...", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074268, &qword_2664F0CB8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_2662EDC64(0xD00000000000001CLL, 0x80000002664FC610, sub_2664DD398, a1);

  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  *(a3 + 24) = v19;
  return a3;
}

uint64_t FollowShowAppIntent.init(show:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2664DFA28();
  *a1 = result;
  return result;
}

void sub_2664DD460(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 companionDeviceInfo];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 assistantID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_2664E02C8();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v20 = [v10 productPrefix];
    if (v20)
    {
      v21 = v20;
      v22 = sub_2664E02C8();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [v10 peerToPeerHandoffCapability];

    *a2 = v13;
    *(a2 + 8) = v15;
    *(a2 + 16) = v22;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v16, v4);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26629C000, v17, v18, "CompanionDeviceInfo#from AFSharedUserInfo.companionDeviceInfo is nil. Bailing", v19, 2u);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    *a2 = xmmword_2664F0D60;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }
}

uint64_t CompanionDeviceInfo.assistantID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CompanionDeviceInfo.assistantID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CompanionDeviceInfo.productPrefix.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CompanionDeviceInfo.productPrefix.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CompanionDeviceInfo.init(assistantID:productPrefix:peerToPeerHandoffCapability:)(SiriAudioSupport::CompanionDeviceInfo *__return_ptr retstr, Swift::String_optional assistantID, Swift::String_optional productPrefix, Swift::Bool_optional peerToPeerHandoffCapability)
{
  retstr->assistantID = assistantID;
  retstr->productPrefix = productPrefix;
  retstr->peerToPeerHandoffCapability = peerToPeerHandoffCapability;
}

uint64_t CompanionDeviceInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000023, 0x80000002664FC630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD000000000000011, 0x80000002664FC660);
  sub_2664E0C28();
  MEMORY[0x2667833B0](0xD00000000000001FLL, 0x80000002664FC680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
  sub_2664E0C28();
  MEMORY[0x2667833B0](8317, 0xE200000000000000);
  return 0;
}

Swift::Bool __swiftcall CompanionDeviceInfo.supportsSiriForAirPlay()()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  v4 = 0;
  return CompanionDeviceInfo.supports(version:)(&v4) & v1 & 1;
}

Swift::Bool __swiftcall CompanionDeviceInfo.supportsHomePodAppSelection()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v9 = *v0;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v8 = 1;
  if (CompanionDeviceInfo.supports(version:)(&v8))
  {
    v9 = v1;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v8 = 0;
    v6 = CompanionDeviceInfo.supports(version:)(&v8) & v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2664DDE60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2664DDEBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_2664E04A8();

        v14[0] = v4;
        v14[1] = v5;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_2662AA720(sub_2662AA7CC, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}