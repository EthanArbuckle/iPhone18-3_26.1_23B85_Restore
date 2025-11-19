unint64_t sub_25ECCE98C()
{
  result = qword_27FD3A6E0;
  if (!qword_27FD3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A6E0);
  }

  return result;
}

uint64_t sub_25ECCEB24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECCEB5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_25ECCEB94(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void *sub_25ECCEBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6E8, &unk_25ECD3FE0);
  v3 = sub_25ECD29D0();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_25ECCDC78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_25ECCDC78(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t TriggerEdgeRegistry.__allocating_init()()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 16) = sub_25ECCEBC0(MEMORY[0x277D84F90]);
  type metadata accessor for PolarisMutex();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  swift_beginAccess();
  pthread_mutex_init((v1 + 16), &v4);
  swift_endAccess();
  pthread_mutexattr_destroy(&v4);
  *(v0 + 24) = v1;
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t TriggerEdgeRegistry.init()()
{
  v5 = *MEMORY[0x277D85DE8];
  *(v0 + 16) = sub_25ECCEBC0(MEMORY[0x277D84F90]);
  type metadata accessor for PolarisMutex();
  v1 = swift_allocObject();
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  swift_beginAccess();
  pthread_mutex_init((v1 + 16), &v4);
  swift_endAccess();
  pthread_mutexattr_destroy(&v4);
  *(v0 + 24) = v1;
  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

Swift::Bool __swiftcall TriggerEdgeRegistry.connect(senderId:)(Swift::UInt32 senderId)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  pthread_mutex_lock((v3 + 16));
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_25ECCDC78(senderId), (v4 & 1) != 0))
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25ECD2FD0;
    sub_25ECD2910();

    v6 = sub_25ECD29F0();
    MEMORY[0x25F8CC7D0](v6);

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 32) = 0xD000000000000030;
    *(v5 + 40) = 0x800000025ECD6170;
    sub_25ECD2A80();

    swift_beginAccess();
    pthread_mutex_unlock((v3 + 16));
    swift_endAccess();
    return 0;
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    v8 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_25ECCE558(MEMORY[0x277D84F90], senderId, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v10;
    swift_endAccess();
    swift_beginAccess();
    pthread_mutex_unlock((v3 + 16));
    swift_endAccess();
    return 1;
  }
}

uint64_t sub_25ECCF0BC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 24);
  swift_beginAccess();
  pthread_mutex_lock((v11 + 16));
  swift_endAccess();
  if (!(a2 | a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25ECD2FD0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = 0xD00000000000002ELL;
    *(v12 + 40) = 0x800000025ECD62E0;
    sub_25ECD2A80();
LABEL_16:

    swift_beginAccess();
    pthread_mutex_unlock((v11 + 16));
    swift_endAccess();
    return 0;
  }

  swift_beginAccess();
  if (!*(*(v5 + 16) + 16) || (sub_25ECCDC78(a1), (v13 & 1) == 0))
  {
    swift_endAccess();
    if (!a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_25ECD2FD0;
      sub_25ECD2910();

      v29 = 0xD00000000000002CLL;
      v30 = 0x800000025ECD6310;
LABEL_15:
      LODWORD(v31) = a1;
      v19 = sub_25ECD29F0();
      MEMORY[0x25F8CC7D0](v19);

      v20 = v29;
      v21 = v30;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 32) = v20;
      *(v18 + 40) = v21;
      sub_25ECD2A80();
      goto LABEL_16;
    }

    swift_beginAccess();
    v14 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_25ECCE558(MEMORY[0x277D84F90], a1, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v31;
  }

  swift_endAccess();
  if (a3 && !TriggerReceiver.connectEdge(senderId:)(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25ECD2FD0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_25ECD2910();
    MEMORY[0x25F8CC7D0](0xD00000000000003FLL, 0x800000025ECD6340);
    goto LABEL_15;
  }

  type metadata accessor for TriggerEdge();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  if (a2)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();

    MEMORY[0x25F8CC800](v17);
    if (*((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((*(a2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25ECD27C0();
    }

    sub_25ECD2800();
    swift_endAccess();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  swift_beginAccess();
  v24 = sub_25ECCF5A8(&v29, a1);
  if (*v23)
  {
    v25 = v23;

    MEMORY[0x25F8CC800](v26);
    if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_25ECD27C0();
    }

    sub_25ECD2800();
    (v24)(&v29, 0);
  }

  else
  {
    (v24)(&v29, 0);
  }

  swift_endAccess();

  swift_beginAccess();
  pthread_mutex_unlock((v11 + 16));
  swift_endAccess();
  return 1;
}

void (*sub_25ECCF5A8(uint64_t **a1, unsigned int a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25ECD1640(v4, a2);
  return sub_25ECC7EA4;
}

Swift::Bool __swiftcall TriggerEdgeRegistry.senderConnected(senderId:)(Swift::UInt32 senderId)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  pthread_mutex_lock((v3 + 16));
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v1 + 16) + 16))
  {
    sub_25ECCDC78(senderId);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  swift_endAccess();
  swift_beginAccess();
  pthread_mutex_unlock((v3 + 16));
  swift_endAccess();
  return v5 & 1;
}

Swift::Bool __swiftcall TriggerEdgeRegistry.disconnectReceiver(receiverId:)(Swift::UInt32 receiverId)
{
  v2 = v1;
  v3 = *(v1 + 24);
  swift_beginAccess();
  v49 = v3;
  pthread_mutex_lock((v3 + 16));
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v54 = v4;

  v10 = 0;
  v11 = 0;
  v51 = v5;
  v52 = v2;
  for (i = v9; v8; v10 = (v46 < v56) | v55)
  {
LABEL_8:
    v13 = *(*(v54 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v8)))));
    swift_beginAccess();
    v14 = *(v2 + 16);
    if (!*(v14 + 16))
    {
      goto LABEL_67;
    }

    v15 = sub_25ECCDC78(v13);
    if ((v16 & 1) == 0)
    {
      goto LABEL_67;
    }

    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    if (v17 >> 62)
    {
      v56 = sub_25ECD29A0();
    }

    else
    {
      v56 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_beginAccess();
    v18 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v2 + 16);
    v20 = v59;
    *(v2 + 16) = 0x8000000000000000;
    v57 = v13;
    v22 = sub_25ECCDC78(v13);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_59;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        sub_25ECD1180();
        if ((v26 & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      sub_25ECD0B80(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_25ECCDC78(v57);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_68;
      }

      v22 = v27;
      if ((v26 & 1) == 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:

        swift_beginAccess();
        pthread_mutex_unlock((v49 + 16));
        swift_endAccess();
        return v10 & 1;
      }
    }

    v55 = v10;
    v29 = v59;
    v58 = *(*(v59 + 56) + 8 * v22);
    v30 = sub_25ECD12DC(&v58, receiverId);
    v31 = v30;
    v32 = v58;
    v33 = v58 >> 62;
    if (v58 >> 62)
    {
      v34 = sub_25ECD29A0();
      v35 = v34 - v31;
      if (v34 < v31)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v34 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v34 - v30;
      if (v34 < v30)
      {
        goto LABEL_60;
      }
    }

    if (v31 < 0)
    {
      goto LABEL_61;
    }

    if (v33)
    {
      v36 = sub_25ECD29A0();
    }

    else
    {
      v36 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 < v34)
    {
      goto LABEL_62;
    }

    v37 = __OFSUB__(0, v35);
    v38 = -v35;
    if (v37)
    {
      goto LABEL_63;
    }

    if (v33)
    {
      v39 = sub_25ECD29A0();
    }

    else
    {
      v39 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = __OFADD__(v39, v38);
    v40 = v39 + v38;
    if (v37)
    {
      goto LABEL_64;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v33)
      {
        goto LABEL_38;
      }

      v41 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v40 <= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (v33)
      {
LABEL_38:
        sub_25ECD29A0();
        goto LABEL_39;
      }

      v41 = v32 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = *(v41 + 16);
LABEL_39:
    v32 = sub_25ECD2940();
    v58 = v32;
LABEL_40:
    sub_25ECD196C(v31, v34, 0);
    v2 = v52;
    if (v32)
    {
      *(*(v29 + 56) + 8 * v22) = v32;
    }

    else
    {
      sub_25ECD0E7C(v22, v29);
    }

    v5 = v51;
    *(v52 + 16) = v29;
    swift_endAccess();
    if (!*(v29 + 16))
    {
      goto LABEL_65;
    }

    v43 = sub_25ECCDC78(v57);
    if ((v44 & 1) == 0)
    {
      goto LABEL_66;
    }

    v45 = *(*(v29 + 56) + 8 * v43);
    if (v45 >> 62)
    {
      if (v45 < 0)
      {
        v47 = *(*(v29 + 56) + 8 * v43);
      }

      v46 = sub_25ECD29A0();
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = i;
    v8 &= v8 - 1;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_57;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

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
  __break(1u);
LABEL_67:
  swift_endAccess();
  __break(1u);
  swift_endAccess();
  __break(1u);
LABEL_68:
  result = sub_25ECD2A30();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall TriggerEdgeRegistry.disconnectSender(senderId:)(Swift::UInt32 senderId)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  pthread_mutex_lock((v3 + 16));
  swift_endAccess();
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_25ECCDC78(senderId), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
    if (v7 >> 62)
    {
      goto LABEL_22;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v8)
    {
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x25F8CC9B0](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_22:
            v8 = sub_25ECD29A0();
            goto LABEL_5;
          }

          v10 = *(v7 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v10 + 16))
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_25ECD2FD0;
          sub_25ECD2910();

          v16 = sub_25ECD29F0();
          MEMORY[0x25F8CC7D0](v16);

          *(v15 + 56) = MEMORY[0x277D837D0];
          *(v15 + 32) = 0xD000000000000021;
          *(v15 + 40) = 0x800000025ECD61E0;
          sub_25ECD2A80();

          goto LABEL_17;
        }

        ++v9;
      }

      while (v11 != v8);
    }

    swift_beginAccess();
    sub_25ECD0DF4(senderId);
    swift_endAccess();

    swift_beginAccess();
    pthread_mutex_unlock((v3 + 16));
    swift_endAccess();
    return 1;
  }

  else
  {
LABEL_16:
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6D8, &qword_25ECD3E30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25ECD2FD0;
    sub_25ECD2910();

    v13 = sub_25ECD29F0();
    MEMORY[0x25F8CC7D0](v13);

    MEMORY[0x25F8CC7D0](0xD000000000000021, 0x800000025ECD61B0);
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 32) = 0x64497265646E6553;
    *(v12 + 40) = 0xE900000000000020;
    sub_25ECD2A80();

LABEL_17:
    swift_beginAccess();
    pthread_mutex_unlock((v3 + 16));
    swift_endAccess();
    return 0;
  }
}

uint64_t TriggerEdgeRegistry.description.getter()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  v20 = v1;
  pthread_mutex_lock((v1 + 16));
  swift_endAccess();
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v23 = v2;

  v9 = 0;
  v21 = v7;
  for (i = v3; ; v3 = i)
  {
    if (!v6)
    {
      do
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        if (v10 >= v7)
        {

          MEMORY[0x25F8CC7D0](0xD000000000000026, 0x800000025ECD6280);
          swift_beginAccess();
          pthread_mutex_unlock((v20 + 16));
          swift_endAccess();
          return 0xD000000000000027;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
      }

      while (!v6);
      v9 = v10;
    }

    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(v23 + 56) + 8 * v11);
    v24 = *(*(v23 + 48) + 4 * v11);

    v13 = sub_25ECD29F0();
    MEMORY[0x25F8CC7D0](v13);

    MEMORY[0x25F8CC7D0](10, 0xE100000000000000);
    MEMORY[0x25F8CC7D0](0x49207265646E6553, 0xEB00000000203A44);

    if (v12 >> 62)
    {
      break;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_12;
    }

LABEL_4:
    v6 &= v6 - 1;

    v7 = v21;
  }

  result = sub_25ECD29A0();
  v14 = result;
  if (!result)
  {
    goto LABEL_4;
  }

LABEL_12:
  v15 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x25F8CC9B0](v15, v12);
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_24;
    }

LABEL_16:
    v18 = sub_25ECD29F0();
    MEMORY[0x25F8CC7D0](v18);

    MEMORY[0x25F8CC7D0](2112093, 0xE300000000000000);
    v19 = TriggerEdge.description.getter();
    MEMORY[0x25F8CC7D0](v19);

    MEMORY[0x25F8CC7D0](10, 0xE100000000000000);
    MEMORY[0x25F8CC7D0](0x5B656764452020, 0xE700000000000000);

    ++v15;
    if (v17 == v14)
    {
      goto LABEL_4;
    }
  }

  if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

  v16 = *(v12 + 8 * v15 + 32);

  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_16;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t TriggerEdgeRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t TriggerEdgeRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25ECD0684(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_25ECD29C0();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 4 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_25ECD2AA0();
      MEMORY[0x25F8CCB30](0);
      sub_25ECD2AC0();
      result = sub_25ECD2AE0();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25ECD0918(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6F8, &unk_25ECD40B0);
  result = sub_25ECD29C0();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
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
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x25F8CCB10](*(v8 + 40), v21, 4);
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v31)
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25ECD0B80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6E8, &unk_25ECD3FE0);
  result = sub_25ECD29C0();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x25F8CCB10](*(v8 + 40), v22, 4);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25ECD0DF4(unsigned int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_25ECCDC78(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_25ECD1180();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_25ECD0E7C(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_25ECD0E7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25ECD28E0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8CCB10](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

unint64_t sub_25ECD0FF0(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 4 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *sub_25ECD1034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6F8, &unk_25ECD40B0);
  v2 = *v0;
  v3 = sub_25ECD29B0();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25ECD1180()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD3A6E8, &unk_25ECD3FE0);
  v2 = *v0;
  v3 = sub_25ECD29B0();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_25ECD12DC(unint64_t *a1, int a2)
{
  v7 = *a1;
  v8 = sub_25ECD1538(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_25ECD29A0();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_25ECD29A0())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v16 = *(MEMORY[0x25F8CC9B0](v11, v7) + 16);
      if (v16)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

    v15 = *(v7 + 8 * v11 + 32);
    v16 = *( + 16);
    if (v16)
    {
LABEL_17:
      v17 = *(v16 + 80);
      v18 = *(v16 + 84);

      if ((v18 & 1) == 0 && v17 == a2)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

LABEL_23:

LABEL_24:
    if (v10 != v11)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x25F8CC9B0](v10, v7);
        v19 = MEMORY[0x25F8CC9B0](v11, v7);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10 >= v20)
        {
          goto LABEL_50;
        }

        if (v11 >= v20)
        {
          goto LABEL_51;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v19 = *(v7 + 32 + 8 * v11);
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_25ECC882C(v7);
        v21 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v4 = v7 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v19;

      if ((v7 & 0x8000000000000000) != 0 || v21)
      {
        v7 = sub_25ECC882C(v7);
        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v11 & 0x8000000000000000) != 0)
        {
LABEL_42:
          __break(1u);
          return v10;
        }
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      if (v11 >= *(v4 + 16))
      {
        goto LABEL_48;
      }

LABEL_8:
      v12 = v4 + 8 * v11;
      v13 = *(v12 + 32);
      *(v12 + 32) = v3;

      *a1 = v7;
    }

    v14 = __OFADD__(v10++, 1);
    if (v14)
    {
      goto LABEL_47;
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return sub_25ECD29A0();
}

unint64_t sub_25ECD1538(unint64_t a1, int a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v5 = sub_25ECD29A0();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = *(MEMORY[0x25F8CC9B0](v6, a1) + 16);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v9 = *( + 16);
      if (v9)
      {
LABEL_10:
        v10 = *(v9 + 80);
        v11 = *(v9 + 84);

        if ((v11 & 1) == 0 && v10 == a2)
        {
          return v6;
        }

        goto LABEL_5;
      }
    }

LABEL_5:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_17;
    }
  }

  return 0;
}

void (*sub_25ECD1640(uint64_t *a1, unsigned int a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25ECD1938(v6);
  v6[9] = sub_25ECD1744((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_25ECD16E4;
}

void sub_25ECD16E4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_25ECD1744(uint64_t a1, unsigned int a2, char a3))(uint64_t result, char a2)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_25ECCDC78(a2);
  *(a1 + 28) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25ECD1180();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25ECD0B80(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_25ECCDC78(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_25ECD2A30();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_25ECD1860;
}

uint64_t sub_25ECD1860(uint64_t result, char a2)
{
  v2 = *result;
  LOBYTE(v3) = *(result + 28);
  if (a2)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v4 = *(result + 16);
    v5 = **(result + 8);
    if (*(result + 28))
    {
LABEL_9:
      *(v5[7] + 8 * v4) = v2;
      return result;
    }

    v6 = *(result + 24);
    v5[(v4 >> 6) + 8] |= 1 << v4;
    *(v5[6] + 4 * v4) = v6;
    v3 = v5[7];
    *(v3 + 8 * v4) = v2;
    v7 = v5[2];
    v8 = __OFADD__(v7, 1);
    v2 = v7 + 1;
    if (!v8)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v2)
  {
LABEL_10:
    if (v3)
    {
      return sub_25ECD0E7C(*(result + 16), **(result + 8));
    }

    return result;
  }

  v4 = *(result + 16);
  v5 = **(result + 8);
  if (v3)
  {
    goto LABEL_9;
  }

  v9 = *(result + 24);
  v5[(v4 >> 6) + 8] |= 1 << v4;
  *(v5[6] + 4 * v4) = v9;
  *(v5[7] + 8 * v4) = v2;
  v10 = v5[2];
  v8 = __OFADD__(v10, 1);
  v2 = v10 + 1;
  if (!v8)
  {
LABEL_14:
    v5[2] = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_25ECD1938(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25ECD1960;
}

uint64_t sub_25ECD196C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TriggerEdge();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25ECD29A0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25ECD29A0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t WriterError.hashValue.getter()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](v1);
  return sub_25ECD2AE0();
}

uint64_t sub_25ECD1B74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 32);

  *(a2 + 24) = sub_25ECD2070;
  *(a2 + 32) = v5;
  return result;
}

uint64_t Writer.onSubmit.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Writer.onSubmit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Writer.onTeardown.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

__n128 Writer.init(key:output:onSubmit:onTeardown:)@<Q0>(_DWORD *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  result = *a2;
  *(a7 + 8) = *a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t Writer.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x25F8CCB30](0);
  return sub_25ECD2AC0();
}

uint64_t Writer.hashValue.getter()
{
  v1 = *v0;
  sub_25ECD2AA0();
  MEMORY[0x25F8CCB30](0);
  sub_25ECD2AC0();
  return sub_25ECD2AE0();
}

unint64_t sub_25ECD1D64()
{
  result = qword_27FD3A710;
  if (!qword_27FD3A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A710);
  }

  return result;
}

unint64_t sub_25ECD1DBC()
{
  result = qword_27FD3A718;
  if (!qword_27FD3A718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD3A718);
  }

  return result;
}

uint64_t sub_25ECD1E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_25ECD20A8;
  a2[1] = v5;
}

uint64_t getEnumTagSinglePayload for WriterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WriterError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25ECD2038()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25ECD2070(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_25ECD20A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t PolarisMutex.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisMutex.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  swift_beginAccess();
  pthread_mutex_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_mutexattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

BOOL sub_25ECD2268()
{
  swift_beginAccess();
  v1 = pthread_mutex_trylock((v0 + 16));
  swift_endAccess();
  return v1 == 0;
}

uint64_t PolarisCondition.__allocating_init()()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = swift_allocObject();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.init()()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_condattr_init(&v3);
  swift_beginAccess();
  pthread_cond_init((v0 + 16), &v3);
  swift_endAccess();
  pthread_condattr_destroy(&v3);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t PolarisCondition.wait(mutex:)(uint64_t a1)
{
  swift_beginAccess();
  swift_beginAccess();
  pthread_cond_wait((v1 + 16), (a1 + 16));
  swift_endAccess();
  return swift_endAccess();
}

uint64_t sub_25ECD24E0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  return swift_endAccess();
}

uint64_t sub_25ECD2548(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return v1;
}

uint64_t sub_25ECD25B8(void (*a1)(uint64_t))
{
  swift_beginAccess();
  a1(v1 + 16);
  swift_endAccess();
  return swift_deallocClassInstance();
}