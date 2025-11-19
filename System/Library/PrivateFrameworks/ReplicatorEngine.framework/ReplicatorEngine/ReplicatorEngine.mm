id static OPACKCoder.decodeNSSecureCoding<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v16[4] = *MEMORY[0x1E69E9840];
  sub_1DEE115C8(v16);
  if (!v4)
  {
    v6 = [objc_allocWithZone(STRPPropertyListTypeDecoder) init];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v15[0] = 0;
    v8 = [v6 decodeRootObjectOfClass:ObjCClassFromMetadata fromEncoded:sub_1DEF8E4D8() error:v15];

    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = v15[0];
      sub_1DEF8DDE8();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        a4 = v14;
        __swift_destroy_boxed_opaque_existential_1(v16);
        goto LABEL_8;
      }

      a4 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:1 userInfo:0];
    }

    else
    {
      v10 = v15[0];
      v11 = sub_1DEF8D148();

      a4 = v11;
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t sub_1DEE115C8@<X0>(uint64_t *a1@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D558();
  v2 = sub_1DEF8D268();
  v3 = OPACKDecodeNSData(v2);

  if (v3)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  sub_1DEE11750(v9, &v7);
  if (!*(&v8 + 1))
  {
    sub_1DEE117D0(&v7);
    goto LABEL_8;
  }

  sub_1DEE117C0(&v7, a1);
  if (v6 != sub_1DEF8D558())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_8:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
    swift_willThrow();
  }

  result = sub_1DEE117D0(v9);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OPACKDecodeNSData(void *a1)
{
  v1 = a1;
  v2 = OPACKDecodeData();

  return v2;
}

uint64_t sub_1DEE11750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB8, qword_1DEF9AD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1DEE117C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DEE117D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB8, qword_1DEF9AD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DEE1187C(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  NSData = OPACKEncoderCreateNSData(a1);
  if (NSData)
  {
    v2 = NSData;
    v3 = sub_1DEF8D278();
    v5 = v4;

    if (!sub_1DEF8D558())
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v5 = 0xF000000000000000;
  }

  [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"STRPCodingErrorDomain" code:2 userInfo:0];
  swift_willThrow();
  sub_1DEE2416C(v3, v5);
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t static OPACKCoder.encodeNSSecureCoding(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(STRPPropertyListTypeEncoder) init];
  v3 = [v2 encodeRootObject_];

  v4 = sub_1DEE1187C(v3);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E12CC0F0]();

  return v2;
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

uint64_t sub_1DEE11B94(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEE11BF4(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8D3F8();
  v104 = *(v5 - 8);
  v105 = v5;
  v6 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v100 - v11);
  v13 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v100 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v100 - v23);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v101 = v24;
    v110 = v13;
    v108 = v12;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    v28 = __swift_project_value_buffer(v27, qword_1ECDF6010);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = os_log_type_enabled(v29, v30);
    v109 = v14;
    v106 = v19;
    v103 = v28;
    if (v31)
    {
      v19 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v111 = v32;
      aBlock = a3;
      *v19 = 136446722;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
      v33 = sub_1DEF8D988();
      v35 = sub_1DEE12A5C(v33, v34, &v111);

      *(v19 + 4) = v35;
      *(v19 + 6) = 2082;
      aBlock = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v36 = sub_1DEF8D988();
      v38 = sub_1DEE12A5C(v36, v37, &v111);

      *(v19 + 14) = v38;
      *(v19 + 11) = 2082;
      swift_getObjectType();
      aBlock = sub_1DEE12B28();
      v113 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v40 = sub_1DEF8D988();
      v42 = sub_1DEE12A5C(v40, v41, &v111);

      *(v19 + 3) = v42;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "%{public}s; Received new connection: %{public}s; DeviceID: %{public}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v19, -1, -1);
    }

    swift_getObjectType();
    v43 = sub_1DEE12B28();
    if (v44)
    {
      v45 = v43;
      v46 = v44;
    }

    else
    {
      if (*(v26 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) != 1)
      {
        sub_1DEF8D3E8();
        v74 = sub_1DEF8D398();
        v45 = v75;
        (*(v104 + 8))(v8, v105);
        swift_unknownObjectRetain();

        v76 = sub_1DEF8D4D8();
        v77 = sub_1DEF8DCB8();

        swift_unknownObjectRelease();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v111 = a1;
          aBlock = v79;
          *v78 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v80 = sub_1DEF8D988();
          v19 = sub_1DEE12A5C(v80, v81, &aBlock);

          *(v78 + 4) = v19;
          *(v78 + 12) = 2082;
          *(v78 + 14) = sub_1DEE12A5C(v74, v45, &aBlock);
          _os_log_impl(&dword_1DEE0F000, v76, v77, "Unable to get DeviceID from connection: %{public}s; Using uuidString %{public}s instead", v78, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v79, -1, -1);
          MEMORY[0x1E12CCD70](v78, -1, -1);
        }

        v83 = v109;
        v82 = v110;
        v84 = *(v110 + 20);

        v85 = v108;
        sub_1DEF8D348();
        *v85 = a1;
        *(v85 + *(v82 + 24)) = 0;
        v83[7](v85, 0, 1, v82);
        swift_beginAccess();
        swift_unknownObjectRetain();
        sub_1DEE136B8(v85, v74, v45);
        swift_endAccess();
        v65 = *(v26 + 112);

        id = nw_connection_get_id();
        isa = v65[2].isa;
        v88 = swift_allocObject();
        v88[2] = v74;
        v88[3] = v45;
        v88[4] = id;
        v88[5] = v65;
        v89 = swift_allocObject();
        *(v89 + 16) = sub_1DEF30810;
        *(v89 + 24) = v88;
        v116 = sub_1DEE46D40;
        v117 = v89;
        aBlock = MEMORY[0x1E69E9820];
        v113 = 1107296256;
        v114 = sub_1DEE134F4;
        v115 = &block_descriptor_369;
        v58 = _Block_copy(&aBlock);
        v46 = v117;

        dispatch_sync(isa, v58);
        _Block_release(v58);
        LOBYTE(isa) = swift_isEscapingClosureAtFileLocation();

        if ((isa & 1) == 0)
        {
LABEL_30:
          sub_1DEE16294(a1);
        }

        __break(1u);
        goto LABEL_27;
      }

      v47 = *(v26 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
      os_unfair_lock_lock((v47 + 32));
      v45 = *(v47 + 16);
      v46 = *(v47 + 24);

      os_unfair_lock_unlock((v47 + 32));
    }

    swift_unknownObjectRetain();

    v48 = sub_1DEF8D4D8();
    v49 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136446722;
      if (*(v26 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
      {
        v52 = 0xD000000000000016;
      }

      else
      {
        v52 = 0x6920656369766544;
      }

      if (*(v26 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
      {
        v53 = 0x80000001DEF9D830;
      }

      else
      {
        v53 = 0xE900000000000064;
      }

      v54 = sub_1DEE12A5C(v52, v53, &aBlock);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      *(v50 + 14) = sub_1DEE12A5C(v45, v46, &aBlock);
      *(v50 + 22) = 2082;
      v111 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v55 = sub_1DEF8D988();
      v57 = sub_1DEE12A5C(v55, v56, &aBlock);

      *(v50 + 24) = v57;
      _os_log_impl(&dword_1DEE0F000, v48, v49, "%{public}s %{public}s will be used for connection: %{public}s", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v51, -1, -1);
      MEMORY[0x1E12CCD70](v50, -1, -1);
    }

    v58 = v109;
    v19 = v106;
    swift_beginAccess();
    v59 = *(v26 + 56);
    if (!*(v59 + 16) || (v60 = sub_1DEE13224(v45, v46), (v61 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_29;
    }

    v62 = v107;
    sub_1DEE15068(*(v59 + 56) + *(v58 + 9) * v60, v107, type metadata accessor for NetworkMessenger.ExpiringConnection);
    v63 = v62;
    v64 = v101;
    sub_1DEE1C4F0(v63, v101, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_endAccess();
    sub_1DEE15068(v64, v19, type metadata accessor for NetworkMessenger.ExpiringConnection);

    v65 = sub_1DEF8D4D8();
    v66 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock = v68;
      *v67 = 136446466;
      sub_1DEE15068(v19, v102, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v69 = sub_1DEF8D988();
      v70 = v19;
      v72 = v71;
      sub_1DEE15388(v70, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v73 = sub_1DEE12A5C(v69, v72, &aBlock);

      *(v67 + 4) = v73;
      v58 = v109;
      *(v67 + 12) = 2082;
      *(v67 + 14) = sub_1DEE12A5C(v45, v46, &aBlock);
      _os_log_impl(&dword_1DEE0F000, v65, v66, "Canceling existing connection %{public}s for DeviceID %{public}s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v68, -1, -1);
      MEMORY[0x1E12CCD70](v67, -1, -1);

LABEL_28:
      v90 = v101;
      nw_connection_cancel(*v101);
      sub_1DEE15388(v90, type metadata accessor for NetworkMessenger.ExpiringConnection);
LABEL_29:
      v91 = v110;
      v92 = *(v110 + 20);

      v93 = v108;
      sub_1DEF8D348();
      *v93 = a1;
      *(v93 + *(v91 + 24)) = 0;
      (*(v58 + 7))(v93, 0, 1, v91);
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1DEE136B8(v93, v45, v46);
      swift_endAccess();
      v94 = *(v26 + 112);

      v95 = nw_connection_get_id();
      v96 = *(v94 + 16);
      v97 = swift_allocObject();
      v97[2] = v45;
      v97[3] = v46;
      v97[4] = v95;
      v97[5] = v94;
      v98 = swift_allocObject();
      *(v98 + 16) = sub_1DEF30810;
      *(v98 + 24) = v97;
      v116 = sub_1DEE46D40;
      v117 = v98;
      aBlock = MEMORY[0x1E69E9820];
      v113 = 1107296256;
      v114 = sub_1DEE134F4;
      v115 = &block_descriptor_380;
      v99 = _Block_copy(&aBlock);

      dispatch_sync(v96, v99);
      _Block_release(v99);
      LOBYTE(v99) = swift_isEscapingClosureAtFileLocation();

      if (v99)
      {
        __break(1u);
        return result;
      }

      goto LABEL_30;
    }

LABEL_27:

    sub_1DEE15388(v19, type metadata accessor for NetworkMessenger.ExpiringConnection);
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1DEE129EC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DEE12A5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DEE12D80(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DEE12F7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1DEE12B28()
{
  nw_connection_copy_endpoint(v0);
  if (nw_endpoint_get_device_id())
  {
    v1 = sub_1DEF8D9E8();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

uint64_t sub_1DEE12B90(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DEE12D0C(v5, 0);
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

  result = sub_1DEF8DFA8();
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
        v10 = sub_1DEF8D9F8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DEE12D0C(v10, 0);
        result = sub_1DEF8DF18();
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

uint64_t sub_1DEE12CC0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DEE12B90(a1, a2);
  sub_1DEE12E90(&unk_1F5A18E30);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1DEE12D0C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58C8, &qword_1DEF9AE80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1DEE12D80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DEE12CC0(a5, a6);
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
    result = sub_1DEF8DFA8();
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

uint64_t sub_1DEE12E90(uint64_t result)
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

  result = sub_1DEE202D8(result, v12, 1, v3);
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

uint64_t sub_1DEE12F7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DEE12FEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DEF8D378();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE13090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1DEE13224(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      return sub_1DEE1B4DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for NetworkMessenger.ExpiringConnection);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1DEEB9F20();
    goto LABEL_7;
  }

  sub_1DEEB5BE4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1DEE13224(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1DEF40754(v12, a2, a3, a1, v18, type metadata accessor for NetworkMessenger.ExpiringConnection, type metadata accessor for NetworkMessenger.ExpiringConnection);
}

unint64_t sub_1DEE13224(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v6 = sub_1DEF8E7F8();

  return sub_1DEE1329C(a1, a2, v6);
}

unint64_t sub_1DEE1329C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DEF8E4E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DEE1351C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 24);

  sub_1DEF8D348();
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  sub_1DEE13B74(v14, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();
  sub_1DEE13C90(v9, a3);
  swift_endAccess();
  sub_1DEE1425C();
  return sub_1DEE152E4(v14);
}

uint64_t sub_1DEE136B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    sub_1DEF759B0(a2, a3, v10);

    return sub_1DEE171B4(v10, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  else
  {
    sub_1DEE139C0(a1, v15, type metadata accessor for NetworkMessenger.ExpiringConnection);
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1DEE13090(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1DEE138A0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DEF8D378();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE13958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE139C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE13A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE13A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE13AF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor()
{
  result = qword_1ECDE4798;
  if (!qword_1ECDE4798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEE13B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE13BEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEE13C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47A8, &qword_1DEF93660);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1DEE171B4(a1, &qword_1ECDE47A8, &qword_1DEF93660);
    v16 = *v3;
    v17 = sub_1DEE140F8(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v3;
      v27 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEB96B0();
        v22 = v27;
      }

      sub_1DEE139C0(*(v22 + 56) + *(v11 + 72) * v19, v9, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      sub_1DEF77538(v19, v22);
      *v3 = v22;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1DEE171B4(v9, &qword_1ECDE47A8, &qword_1DEF93660);
  }

  else
  {
    sub_1DEE139C0(a1, v15, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    v23 = *v3;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    result = sub_1DEE13FA4(v15, a2, v24);
    *v3 = v27;
  }

  return result;
}

uint64_t sub_1DEE13EF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DEE13FA4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1DEE140F8(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
      return sub_1DEE1B4DC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1DEEB96B0();
    goto LABEL_7;
  }

  sub_1DEEB4EA0(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_1DEE140F8(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1DEE14148(v10, a2, a1, v16);
}

unint64_t sub_1DEE140F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DEF8E798();

  return sub_1DEE141F0(a1, v4);
}

uint64_t sub_1DEE14148(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  result = sub_1DEE139C0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1DEE141F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1DEE1425C()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[2];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  v10 = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v7, v2);
  if (v10)
  {
    v12 = v1[4];
    if (v12)
    {
      v13 = *(v12 + 24);
      MEMORY[0x1EEE9AC00](result);
      v25[-2] = sub_1DEE15450;
      v25[-1] = v12;

      os_unfair_lock_lock(v13 + 4);
      sub_1DEE15434(v14);
      os_unfair_lock_unlock(v13 + 4);

      v15 = v1[4];
    }

    v1[4] = 0;

    sub_1DEE14768();
    result = swift_beginAccess();
    if (*(v1[3] + 16))
    {
      type metadata accessor for BasicTimer();
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v16 + 24) = v17;
      v18 = v1[4];
      v1[4] = v16;

      v19 = swift_allocObject();
      v20 = swift_weakInit();
      v21 = *(v16 + 24);
      MEMORY[0x1EEE9AC00](v20);
      v25[-6] = v16;
      v25[-5] = 0x4082C00000000000;
      v25[-4] = v9;
      v25[-3] = sub_1DEEE4BC8;
      v25[-2] = v19;
      MEMORY[0x1EEE9AC00](v22);
      v25[-2] = sub_1DEE1B740;
      v25[-1] = v23;

      os_unfair_lock_lock(v21 + 4);
      sub_1DEE3DEF0(v24);
      os_unfair_lock_unlock(v21 + 4);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE14580()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE1460C()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 16))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DC88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling timer", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    if (*(v1 + 16))
    {
      v8 = *(v1 + 16);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DEF8DD88();
      swift_unknownObjectRelease();
      v9 = *(v1 + 16);
    }

    *(v1 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEE14768()
{
  v1 = v0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  v2 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v73 = (&v61 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v61 - v7;
  v8 = sub_1DEF8D378();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  sub_1DEF8D348();
  v66 = v15;
  sub_1DEF8D2E8();
  swift_beginAccess();
  v16 = *(v1 + 24);
  v78 = v12;

  v17 = sub_1DEE14DDC(sub_1DEE15494, v77, v16);
  v65 = 0;

  v18 = *(v17 + 16);
  if (v18)
  {
    v61 = v9;
    v62 = v12;
    v63 = v8;
    v64 = v1;
    v82 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v18, 0);
    v19 = v82;
    v20 = v17 + 64;
    v21 = -1 << *(v17 + 32);
    result = sub_1DEF8DE18();
    v23 = result;
    v24 = 0;
    v69 = *(v17 + 36);
    v25 = *(v17 + 32);
    v67 = v17 + 72;
    v68 = v18;
    v70 = v17 + 64;
    v71 = v17;
    do
    {
      if (v23 < 0 || v23 >= 1 << v25)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v28 = v23 >> 6;
      if ((*(v20 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_24;
      }

      v29 = v75;
      v30 = *(v75 + 48);
      v31 = *(v17 + 56);
      v32 = *(*(v17 + 48) + 8 * v23);
      v33 = v31 + *(*(type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor() - 8) + 72) * v23;
      v34 = v72;
      sub_1DEE13B74(v33, &v72[v30]);
      v76 = v19;
      v35 = v73;
      *v73 = v32;
      sub_1DEEE4B44(&v34[v30], v35 + *(v29 + 48));
      v36 = v74;
      sub_1DEE154B4(v35, v74);
      v37 = (v36 + *(v29 + 48));
      v38 = v37[1];
      v80 = *v37;
      v81 = v38;

      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      v79 = v37[2];
      v39 = sub_1DEF8E2E8();
      MEMORY[0x1E12CB180](v39);

      v40 = v80;
      v41 = v81;
      v42 = v35;
      v19 = v76;
      sub_1DEE15524(v42);
      result = sub_1DEE152E4(v37);
      v82 = v19;
      v44 = *(v19 + 16);
      v43 = *(v19 + 24);
      if (v44 >= v43 >> 1)
      {
        result = sub_1DEEC7E08((v43 > 1), v44 + 1, 1);
        v19 = v82;
      }

      *(v19 + 16) = v44 + 1;
      v45 = v19 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      v17 = v71;
      v25 = *(v71 + 32);
      v26 = 1 << v25;
      if (v23 >= 1 << v25)
      {
        goto LABEL_25;
      }

      v20 = v70;
      v46 = *(v70 + 8 * v28);
      if ((v46 & (1 << v23)) == 0)
      {
        goto LABEL_26;
      }

      if (v69 != *(v71 + 36))
      {
        goto LABEL_27;
      }

      v47 = v46 & (-2 << (v23 & 0x3F));
      if (v47)
      {
        v26 = __clz(__rbit64(v47)) | v23 & 0x7FFFFFFFFFFFFFC0;
        v27 = v68;
      }

      else
      {
        v48 = v28 << 6;
        v49 = v28 + 1;
        v27 = v68;
        v50 = (v67 + 8 * v28);
        while (v49 < (v26 + 63) >> 6)
        {
          v52 = *v50++;
          v51 = v52;
          v48 += 64;
          ++v49;
          if (v52)
          {
            v26 = __clz(__rbit64(v51)) + v48;
            break;
          }
        }
      }

      ++v24;
      v23 = v26;
    }

    while (v24 != v27);

    v1 = v64;
    v8 = v63;
    v12 = v62;
    v9 = v61;
    if (!*(v19 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_21:
      v59 = *(v9 + 8);
      v59(v66, v8);
      goto LABEL_22;
    }
  }

  v80 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  sub_1DEE1B548(&unk_1ECDE2C40, &qword_1ECDE3C90, &unk_1DEF91590);
  v53 = sub_1DEF8D8D8();
  v55 = v54;

  sub_1DEF66074(0xD000000000000012, 0x80000001DEF9C6C0, 0xD000000000000012, 0x80000001DEF9C6E0, 0xD000000000000012, 0x80000001DEF9C6E0, v53, v55);

  v57 = *(v1 + 24);
  MEMORY[0x1EEE9AC00](v56);
  *(&v61 - 2) = v12;

  v58 = sub_1DEE14DDC(sub_1DEEE4BA8, (&v61 - 4), v57);

  v59 = *(v9 + 8);
  v59(v66, v8);
  v60 = *(v1 + 24);
  *(v1 + 24) = v58;
LABEL_22:

  return (v59)(v12, v8);
}

uint64_t sub_1DEE14DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1DEF2BCB0(a1, a2, a3, sub_1DEE14E50, sub_1DEE14E50);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEE14E50(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *, char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v10 = 0;
  v30 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v30[7];
    v31 = *(v30[6] + 8 * v21);
    sub_1DEE15068(v22 + *(v28 + 72) * v21, v9, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    v23 = v29(&v31, v9);
    sub_1DEE15388(v9, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    if (v4)
    {
      return;
    }

    if (v23)
    {
      *(v26 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1DEE1558C(v26, v25, v27, v30);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEE15068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1DEE150D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  *(&v21 - v15) = *a1;
  sub_1DEE13B74(a2, &v21 + *(v10 + 56) - v15);
  sub_1DEE154B4(v16, v13);
  v17 = &v13[*(v10 + 56)];
  v18 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(v5 + 16))(v8, v17 + *(v18 + 24), v4);
  sub_1DEE152E4(v17);
  sub_1DEE15340(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
  v19 = sub_1DEF8D8E8();
  (*(v5 + 8))(v8, v4);
  sub_1DEE15524(v16);
  return (v19 & 1) == 0;
}

uint64_t sub_1DEE152E4(uint64_t a1)
{
  v2 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE15340(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE15388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE154B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE15524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE47B0, &qword_1DEF93668);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE1558C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  result = sub_1DEF8E148();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v36 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v37;
    v25 = *(v38 + 72);
    sub_1DEECF44C(v22 + v25 * v21, v37, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    sub_1DEECF4B4(v24, v39, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    v26 = *(v14 + 40);
    result = sub_1DEF8E798();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v14 + 48) + 8 * v30) = v23;
    result = sub_1DEECF4B4(v39, *(v14 + 56) + v30 * v25, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
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

void sub_1DEE158C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v59 = a3;
  v55 = a2;
  v53 = a1;
  v7 = sub_1DEF8D698();
  v62 = *(v7 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1DEF8D6D8();
  v58 = *(v61 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1DEF8D688();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v51);
  v52 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v49 - v16);
  v63 = sub_1DEF8D778();
  v56 = *(v63 - 8);
  v18 = *(v56 + 64);
  v19 = MEMORY[0x1EEE9AC00](v63);
  v50 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v49 - v21;
  v22 = sub_1DEF8DD48();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v4 + 24);

  os_unfair_lock_assert_owner(v27 + 4);

  if (*(v5 + 16))
  {
    v28 = *(v5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1DEF8DD88();
    swift_unknownObjectRelease();
    v29 = *(v5 + 16);
  }

  *(v5 + 16) = 0;
  swift_unknownObjectRelease();
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v30 = sub_1DEF8D508();
  __swift_project_value_buffer(v30, qword_1ECDF6028);
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DC88();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = a4;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "Timer will fire in %{public}fs", v33, 0xCu);
    MEMORY[0x1E12CCD70](v33, -1, -1);
  }

  v34 = a4 * 1000.0;
  if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v49 = v7;
  if (v34 >= 0x7FFFFFFF)
  {
    v35 = 0x7FFFFFFFLL;
  }

  else
  {
    v35 = v34;
  }

  sub_1DEE1B7BC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE1B808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4790, &qword_1DEF93538);
  sub_1DEE1B640();
  sub_1DEF8DE08();
  v36 = sub_1DEF8DD58();
  (*(v23 + 8))(v26, v22);
  v37 = v50;
  sub_1DEF8D768();
  *v17 = v35;
  v38 = v51;
  (*(v12 + 104))(v17, *MEMORY[0x1E69E7F38], v51);
  v39 = v54;
  MEMORY[0x1E12CAF50](v37, v17);
  v40 = *(v12 + 8);
  v40(v17, v38);
  v56 = *(v56 + 8);
  (v56)(v37, v63);
  ObjectType = swift_getObjectType();
  sub_1DEE16074(v17);
  v42 = v52;
  sub_1DEE1B860(v52);
  MEMORY[0x1E12CB550](v39, v17, v42, ObjectType);
  v40(v42, v38);
  v40(v17, v38);
  v43 = swift_allocObject();
  v44 = v55;
  v43[2] = v5;
  v43[3] = v44;
  v43[4] = v59;
  aBlock[4] = sub_1DEEE2F78;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_6;
  v45 = _Block_copy(aBlock);

  v46 = v57;
  sub_1DEE160E8();
  v47 = v60;
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v45);
  (*(v62 + 8))(v47, v49);
  (*(v58 + 8))(v46, v61);

  v48 = *(v5 + 16);
  *(v5 + 16) = v36;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1DEF8DD98();
  swift_unknownObjectRelease_n();
  (v56)(v39, v63);
}

uint64_t sub_1DEE16034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEE16074@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1DEF8D688();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DEE160EC()
{
  sub_1DEF8D698();
  sub_1DEE1B5E4(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  return sub_1DEF8DE08();
}

void sub_1DEE16294(NSObject *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 24);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  v12 = sub_1DEF8D7B8();
  (*(v5 + 8))(v9, v4);
  if (v12)
  {
    if (qword_1ECDE2E50 == -1)
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
  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v14 = sub_1DEF8D4D8();
  v15 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24[1] = a1;
    aBlock[0] = v17;
    *v16 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v18 = sub_1DEF8D988();
    v20 = sub_1DEE12A5C(v18, v19, aBlock);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_1DEE0F000, v14, v15, "Starting connection: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12CCD70](v17, -1, -1);
    MEMORY[0x1E12CCD70](v16, -1, -1);
  }

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = sub_1DEE1733C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE172BC;
  aBlock[3] = &block_descriptor_293;
  v23 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  nw_connection_set_state_changed_handler(a1, v23);
  _Block_release(v23);
  nw_connection_set_queue(a1, v11);
  nw_connection_start(a1);
  sub_1DEE165E0();
}

void sub_1DEE165E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v57 - v4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v60 = v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v57 - v14;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 24);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v61 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  v23 = (*(v17 + 8))(v21, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v59 = v10;
  v24 = *(v1 + 80);
  v25 = *(v24 + 24);
  MEMORY[0x1EEE9AC00](v23);
  v57[-2] = sub_1DEE15450;
  v57[-1] = v24;

  os_unfair_lock_lock(v25 + 4);
  sub_1DEE15434(v26);
  os_unfair_lock_unlock(v25 + 4);

  sub_1DEE16C98(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DEE171B4(v5, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v27 = sub_1DEF8D508();
      __swift_project_value_buffer(v27, qword_1ECDF6010);
      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DEE0F000, v28, v29, "Not starting connection expiration timer", v30, 2u);
        MEMORY[0x1E12CCD70](v30, -1, -1);
      }

      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v7 + 32))(v15, v5, v6);
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v57[0] = v1;
  v57[1] = 0;
  v31 = sub_1DEF8D508();
  __swift_project_value_buffer(v31, qword_1ECDF6010);
  v32 = *(v7 + 16);
  v33 = v60;
  v58 = v15;
  v32(v60, v15, v6);
  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v62 = v37;
    *v36 = 136446210;
    sub_1DEE1B9F8(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
    v38 = sub_1DEF8E2E8();
    v39 = v33;
    v41 = v40;
    v42 = v6;
    v43 = *(v7 + 8);
    v43(v39, v42);
    v44 = sub_1DEE12A5C(v38, v41, &v62);

    *(v36 + 4) = v44;
    _os_log_impl(&dword_1DEE0F000, v34, v35, "Connection expiration timer will fire at %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E12CCD70](v37, -1, -1);
    MEMORY[0x1E12CCD70](v36, -1, -1);

    v45 = v43;
  }

  else
  {

    v45 = *(v7 + 8);
    v45(v33, v6);
    v42 = v6;
  }

  v46 = v57[0];
  v47 = *(v57[0] + 80);

  v48 = v59;
  sub_1DEF8D348();
  v49 = v58;
  sub_1DEF8D2D8();
  v51 = v50;
  v52 = (v45)(v48, v42);
  v53 = *(v47 + 24);
  MEMORY[0x1EEE9AC00](v52);
  v57[-6] = v47;
  v57[-5] = v51;
  v57[-4] = v61;
  v57[-3] = sub_1DEF2F7F8;
  v57[-2] = v46;
  MEMORY[0x1EEE9AC00](v54);
  v57[-2] = sub_1DEE1B740;
  v57[-1] = v55;

  os_unfair_lock_lock(v53 + 4);
  sub_1DEE3DEF0(v56);
  os_unfair_lock_unlock(v53 + 4);

  v45(v49, v42);
}

uint64_t sub_1DEE16C98@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v59 = *v1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v6 = &v51 - v5;
  v7 = sub_1DEF8D378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v51 - v15;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v2[3];
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  (*(v17 + 8))(v21, v16);
  if (v22)
  {
    v51 = v8;
    v52 = v7;
    v53 = a1;
    v24 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
    v25 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v24);
    v56 = (*(v25 + 8))(v24, v25);
    swift_beginAccess();
    v26 = v2[7];

    sub_1DEF8D2C8();
    v27 = v26 + 64;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v26 + 64);
    v31 = (v28 + 63) >> 6;
    v60 = v26;

    v32 = 0;
    v2 = 0;
    v57 = v13;
    if (v30)
    {
      while (1)
      {
        v33 = v6;
        v34 = v32;
LABEL_10:
        v35 = __clz(__rbit64(v30)) | (v34 << 6);
        v36 = *(v60 + 56);
        v37 = (*(v60 + 48) + 16 * v35);
        v38 = *v37;
        v39 = v37[1];
        v40 = v36 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v35;
        v6 = v33;
        sub_1DEE15068(v40, &v33[*(v58 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
        *v33 = v38;
        *(v33 + 1) = v39;

        v13 = v57;
        sub_1DEF29EEC(v57, v33, v56 & 1, v59);
        v30 &= v30 - 1;
        sub_1DEE171B4(v33, &qword_1ECDE4DA8, &qword_1DEF95AA8);
        v32 = v34;
        if (!v30)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v34 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v34);
      ++v32;
      if (v30)
      {
        v33 = v6;
        goto LABEL_10;
      }
    }

    v42 = v51;
    v41 = v52;
    v43 = *(v51 + 32);
    v44 = v55;
    v43(v55, v13, v52);

    v45 = v54;
    sub_1DEF8D2C8();
    v46 = sub_1DEF8D338();
    v47 = *(v42 + 8);
    v47(v45, v41);
    if (v46)
    {
      v47(v44, v41);
      v48 = 1;
      v49 = v53;
    }

    else
    {
      v49 = v53;
      v43(v53, v44, v41);
      v48 = 0;
    }

    return (*(v42 + 56))(v49, v48, 1, v41);
  }

  else
  {
LABEL_17:
    __break(1u);

    sub_1DEE171B4(v6, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    result = (*(v51 + 8))(v13, v52);
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEE171B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DEE17214(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t BasicTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEE172C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEE17344(int a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        if (a2)
        {
          v43 = qword_1ECDE2E50;
          swift_unknownObjectRetain();
          if (v43 != -1)
          {
            swift_once();
          }

          v44 = sub_1DEF8D508();
          __swift_project_value_buffer(v44, qword_1ECDF6010);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v29 = sub_1DEF8D4D8();
          v45 = sub_1DEF8DC98();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!os_log_type_enabled(v29, v45))
          {
            goto LABEL_31;
          }

          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v90 = v47;
          *v46 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v48 = sub_1DEF8D988();
          v50 = sub_1DEE12A5C(v48, v49, &v90);

          *(v46 + 4) = v50;
          *(v46 + 12) = 2082;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
          v51 = sub_1DEF8D988();
          v53 = sub_1DEE12A5C(v51, v52, &v90);

          *(v46 + 14) = v53;
          _os_log_impl(&dword_1DEE0F000, v29, v45, "Connection failed and entered waiting state: %{public}s: %{public}s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v47, -1, -1);
          v42 = v46;
          goto LABEL_30;
        }

        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v77 = sub_1DEF8D508();
        __swift_project_value_buffer(v77, qword_1ECDF6010);
        swift_unknownObjectRetain();
        v66 = sub_1DEF8D4D8();
        v78 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v66, v78))
        {
          v68 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v90 = v79;
          *v68 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v80 = sub_1DEF8D988();
          v82 = sub_1DEE12A5C(v80, v81, &v90);

          *(v68 + 4) = v82;
          *(v68 + 12) = 2082;
          type metadata accessor for nw_connection_state_t(0);
          v83 = sub_1DEF8D988();
          v85 = sub_1DEE12A5C(v83, v84, &v90);

          *(v68 + 14) = v85;
          _os_log_impl(&dword_1DEE0F000, v66, v78, "Connection state changed: %{public}s; state: %{public}s", v68, 0x16u);
          swift_arrayDestroy();
          v76 = v79;
          goto LABEL_45;
        }

LABEL_46:
      }

      if (a1 == 3)
      {
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v8 = sub_1DEF8D508();
        __swift_project_value_buffer(v8, qword_1ECDF6010);
        swift_unknownObjectRetain();
        v9 = sub_1DEF8D4D8();
        v10 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v90 = v12;
          *v11 = 136446210;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v13 = sub_1DEF8D988();
          v15 = sub_1DEE12A5C(v13, v14, &v90);

          *(v11 + 4) = v15;
          _os_log_impl(&dword_1DEE0F000, v9, v10, "Connection ready: %{public}s", v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v12);
          MEMORY[0x1E12CCD70](v12, -1, -1);
          MEMORY[0x1E12CCD70](v11, -1, -1);
        }

        v16 = nw_protocol_copy_quic_definition();
        v17 = nw_connection_copy_protocol_metadata(a4, v16);
        swift_unknownObjectRelease();
        if (v17)
        {
          if (MEMORY[0x1E12CC5F0](v17))
          {
            nw_quic_set_keepalive();
          }

          swift_unknownObjectRelease();
        }

        sub_1DEF296FC(a4);
        sub_1DEE18040(a4);
      }

LABEL_20:
      if (a2)
      {
        v27 = qword_1ECDE2E50;
        swift_unknownObjectRetain();
        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_1DEF8D508();
        __swift_project_value_buffer(v28, qword_1ECDF6010);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v29 = sub_1DEF8D4D8();
        v30 = sub_1DEF8DC98();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!os_log_type_enabled(v29, v30))
        {
          goto LABEL_31;
        }

        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v90 = v32;
        *v31 = 136446722;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v33 = sub_1DEF8D988();
        v35 = sub_1DEE12A5C(v33, v34, &v90);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2082;
        type metadata accessor for nw_connection_state_t(0);
        v36 = sub_1DEF8D988();
        v38 = sub_1DEE12A5C(v36, v37, &v90);

        *(v31 + 14) = v38;
        *(v31 + 22) = 2082;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
        v39 = sub_1DEF8D988();
        v41 = sub_1DEE12A5C(v39, v40, &v90);

        *(v31 + 24) = v41;
        _os_log_impl(&dword_1DEE0F000, v29, v30, "Connection state changed: %{public}s; state: %{public}s; error: %{public}s", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v32, -1, -1);
        v42 = v31;
LABEL_30:
        MEMORY[0x1E12CCD70](v42, -1, -1);
LABEL_31:

        sub_1DEF16BA0(a4);
        swift_unknownObjectRelease();
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v65 = sub_1DEF8D508();
      __swift_project_value_buffer(v65, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v66 = sub_1DEF8D4D8();
      v67 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v90 = v69;
        *v68 = 136446466;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v70 = sub_1DEF8D988();
        v72 = sub_1DEE12A5C(v70, v71, &v90);

        *(v68 + 4) = v72;
        *(v68 + 12) = 2082;
        type metadata accessor for nw_connection_state_t(0);
        v73 = sub_1DEF8D988();
        v75 = sub_1DEE12A5C(v73, v74, &v90);

        *(v68 + 14) = v75;
        _os_log_impl(&dword_1DEE0F000, v66, v67, "Connection state changed: %{public}s; state: %{public}s", v68, 0x16u);
        swift_arrayDestroy();
        v76 = v69;
LABEL_45:
        MEMORY[0x1E12CCD70](v76, -1, -1);
        MEMORY[0x1E12CCD70](v68, -1, -1);
        goto LABEL_46;
      }

      goto LABEL_46;
    }

    if (a1 == 4)
    {
      if (a2)
      {
        v54 = qword_1ECDE2E50;
        swift_unknownObjectRetain();
        if (v54 != -1)
        {
          swift_once();
        }

        v55 = sub_1DEF8D508();
        __swift_project_value_buffer(v55, qword_1ECDF6010);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = sub_1DEF8D4D8();
        v56 = sub_1DEF8DC98();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v19, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v90 = v58;
          *v57 = 136446466;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
          v59 = sub_1DEF8D988();
          v61 = sub_1DEE12A5C(v59, v60, &v90);

          *(v57 + 4) = v61;
          *(v57 + 12) = 2082;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
          v62 = sub_1DEF8D988();
          v64 = sub_1DEE12A5C(v62, v63, &v90);

          *(v57 + 14) = v64;
          _os_log_impl(&dword_1DEE0F000, v19, v56, "Connection failed: %{public}s: %{public}s", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v58, -1, -1);
          MEMORY[0x1E12CCD70](v57, -1, -1);

          swift_unknownObjectRelease();
LABEL_54:
          sub_1DEF16BA0(a4);
        }

        swift_unknownObjectRelease();
LABEL_53:

        goto LABEL_54;
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v86 = sub_1DEF8D508();
      __swift_project_value_buffer(v86, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_53;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v90 = v22;
      *v21 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v87 = sub_1DEF8D988();
      v89 = sub_1DEE12A5C(v87, v88, &v90);

      *(v21 + 4) = v89;
      v26 = "Connection failed: %{public}s";
    }

    else
    {
      if (a1 != 5)
      {
        goto LABEL_20;
      }

      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v18 = sub_1DEF8D508();
      __swift_project_value_buffer(v18, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v19 = sub_1DEF8D4D8();
      v20 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v19, v20))
      {
        goto LABEL_53;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v90 = v22;
      *v21 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v23 = sub_1DEF8D988();
      v25 = sub_1DEE12A5C(v23, v24, &v90);

      *(v21 + 4) = v25;
      v26 = "Connection cancelled: %{public}s";
    }

    _os_log_impl(&dword_1DEE0F000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E12CCD70](v22, -1, -1);
    MEMORY[0x1E12CCD70](v21, -1, -1);
    goto LABEL_53;
  }

  return result;
}

void sub_1DEE18040(NSObject *a1)
{
  v3 = sub_1DEF8D788();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 24);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1DEF8D7B8();
  (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    aBlock[4] = sub_1DEF30130;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE1BDCC;
    aBlock[3] = &block_descriptor_300;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(a1, 0x14u, 0x14u, v13);
    _Block_release(v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE18220()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DEE18264@<X0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a1;
  v104 = *MEMORY[0x1E69E9840];
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v90 - v15;
  v18 = a3 >> 62;
  v99 = a2;
  v100 = v10;
  v98 = &v90 - v15;
  if ((a3 >> 62) > 1)
  {
    if (v18 != 2)
    {
      memset(v103, 0, 14);
      a2 = *(v10 + 16);
      (a2)(&v90 - v15, v103, v9, v16);
      memset(v103, 0, 14);
      (a2)(v13, &v104, v9);
      v19 = a2;
      goto LABEL_51;
    }

    v102 = v13;
    v20 = *(a2 + 16);
    v21 = sub_1DEF8D018();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1DEF8D048();
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_61;
      }

      v24 = v20 - v23 + v22;
      sub_1DEF8D038();
      if (v24)
      {
        v97 = *(v10 + 16);
        v97(v17, v24, v9);
        v25 = *(a2 + 16);
        v26 = sub_1DEF8D018();
        if (!v26)
        {
LABEL_79:
          sub_1DEF8D038();
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v27 = v26;
        v28 = sub_1DEF8D048();
        if (!__OFSUB__(v25, v28))
        {
          v29 = v25 - v28 + v27;
          sub_1DEF8D038();
          if (v29)
          {
            v97(v102, v29 + 16, v9);
            v30 = *(a2 + 16);
            v31 = sub_1DEF8D018();
            if (!v31)
            {
LABEL_83:
              sub_1DEF8D038();
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v32 = v31;
            v33 = sub_1DEF8D048();
            if (!__OFSUB__(v30, v33))
            {
              v34 = v30 - v33 + v32;
              sub_1DEF8D038();
              if (v34)
              {
                v35 = *(v34 + 32);
                v36 = *(a2 + 16);
                v37 = sub_1DEF8D018();
                if (!v37)
                {
LABEL_87:
                  sub_1DEF8D038();
LABEL_88:
                  __break(1u);
                  goto LABEL_89;
                }

                v38 = v37;
                v39 = sub_1DEF8D048();
                if (!__OFSUB__(v36, v39))
                {
                  LODWORD(v96) = v35;
                  v40 = v36 - v39 + v38;
                  sub_1DEF8D038();
                  if (v40)
                  {
                    LODWORD(v17) = *(v40 + 36);
                    v41 = *(a2 + 16);
                    v42 = sub_1DEF8D018();
                    if (!v42)
                    {
LABEL_91:
                      sub_1DEF8D038();
LABEL_92:
                      __break(1u);
                      goto LABEL_93;
                    }

                    v43 = v42;
                    v44 = sub_1DEF8D048();
                    if (!__OFSUB__(v41, v44))
                    {
                      v45 = v41 - v44 + v43;
                      sub_1DEF8D038();
                      if (v45)
                      {
                        LODWORD(v5) = *(v45 + 40);
                        v46 = *(a2 + 16);
                        v47 = sub_1DEF8D018();
                        if (!v47)
                        {
LABEL_95:
                          sub_1DEF8D038();
LABEL_96:
                          __break(1u);
                          goto LABEL_97;
                        }

                        v48 = v47;
                        v49 = sub_1DEF8D048();
                        if (!__OFSUB__(v46, v49))
                        {
                          v4 = v46 - v49 + v48;
                          sub_1DEF8D038();
                          if (v4)
                          {
                            LODWORD(v4) = *(v4 + 44);
                            v50 = *(a2 + 16);
                            v51 = sub_1DEF8D018();
                            if (!v51)
                            {
LABEL_99:
                              sub_1DEF8D038();
LABEL_100:
                              __break(1u);
                              goto LABEL_101;
                            }

                            v52 = v51;
                            v53 = sub_1DEF8D048();
                            if (!__OFSUB__(v50, v53))
                            {
                              a2 = v50 - v53 + v52;
                              sub_1DEF8D038();
                              if (a2)
                              {
LABEL_49:
                                LODWORD(a2) = *(a2 + 48);
                                v13 = v102;
                                v19 = v97;
                                goto LABEL_51;
                              }

                              goto LABEL_100;
                            }

LABEL_73:
                            __break(1u);
                            goto LABEL_74;
                          }

                          goto LABEL_96;
                        }

LABEL_71:
                        __break(1u);
LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

                      goto LABEL_92;
                    }

LABEL_69:
                    __break(1u);
LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

                  goto LABEL_88;
                }

LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
                goto LABEL_69;
              }

              goto LABEL_84;
            }

LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          goto LABEL_80;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    else
    {
      sub_1DEF8D038();
    }

    __break(1u);
    goto LABEL_77;
  }

  v102 = v13;
  if (v18)
  {
    v54 = a2;
    a2 = a2;
    if (a2 <= v54 >> 32)
    {
      v55 = sub_1DEF8D018();
      if (v55)
      {
        v56 = v55;
        v57 = sub_1DEF8D048();
        if (!__OFSUB__(a2, v57))
        {
          v58 = a2 - v57 + v56;
          sub_1DEF8D038();
          if (v58)
          {
            v97 = *(v10 + 16);
            v97(v17, v58, v9);
            v59 = sub_1DEF8D018();
            if (v59)
            {
              v60 = v59;
              v61 = sub_1DEF8D048();
              if (!__OFSUB__(a2, v61))
              {
                v62 = a2 - v61 + v60;
                sub_1DEF8D038();
                if (v62)
                {
                  v97(v102, v62 + 16, v9);
                  v63 = sub_1DEF8D018();
                  if (v63)
                  {
                    v64 = v63;
                    v65 = sub_1DEF8D048();
                    if (!__OFSUB__(a2, v65))
                    {
                      v66 = a2 - v65 + v64;
                      sub_1DEF8D038();
                      if (v66)
                      {
                        v67 = *(v66 + 32);
                        v68 = sub_1DEF8D018();
                        if (v68)
                        {
                          v69 = v68;
                          v70 = sub_1DEF8D048();
                          if (!__OFSUB__(a2, v70))
                          {
                            LODWORD(v96) = v67;
                            v71 = a2 - v70 + v69;
                            sub_1DEF8D038();
                            if (v71)
                            {
                              LODWORD(v17) = *(v71 + 36);
                              v72 = sub_1DEF8D018();
                              if (v72)
                              {
                                v73 = v72;
                                v74 = sub_1DEF8D048();
                                if (!__OFSUB__(a2, v74))
                                {
                                  v75 = a2 - v74 + v73;
                                  sub_1DEF8D038();
                                  if (v75)
                                  {
                                    LODWORD(v5) = *(v75 + 40);
                                    v76 = sub_1DEF8D018();
                                    if (v76)
                                    {
                                      v77 = v76;
                                      v78 = sub_1DEF8D048();
                                      if (!__OFSUB__(a2, v78))
                                      {
                                        v4 = a2 - v78 + v77;
                                        sub_1DEF8D038();
                                        if (v4)
                                        {
                                          LODWORD(v4) = *(v4 + 44);
                                          v79 = sub_1DEF8D018();
                                          if (v79)
                                          {
                                            v80 = v79;
                                            v81 = sub_1DEF8D048();
                                            if (!__OFSUB__(a2, v81))
                                            {
                                              a2 = a2 - v81 + v80;
                                              result = sub_1DEF8D038();
                                              if (a2)
                                              {
                                                goto LABEL_49;
                                              }

LABEL_102:
                                              __break(1u);
                                              return result;
                                            }

LABEL_74:
                                            __break(1u);
                                          }

LABEL_101:
                                          result = sub_1DEF8D038();
                                          __break(1u);
                                          goto LABEL_102;
                                        }

                                        goto LABEL_98;
                                      }

                                      goto LABEL_72;
                                    }

LABEL_97:
                                    sub_1DEF8D038();
LABEL_98:
                                    __break(1u);
                                    goto LABEL_99;
                                  }

                                  goto LABEL_94;
                                }

                                goto LABEL_70;
                              }

LABEL_93:
                              sub_1DEF8D038();
LABEL_94:
                              __break(1u);
                              goto LABEL_95;
                            }

                            goto LABEL_90;
                          }

                          goto LABEL_68;
                        }

LABEL_89:
                        sub_1DEF8D038();
LABEL_90:
                        __break(1u);
                        goto LABEL_91;
                      }

                      goto LABEL_86;
                    }

                    goto LABEL_66;
                  }

LABEL_85:
                  sub_1DEF8D038();
LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

                goto LABEL_82;
              }

              goto LABEL_64;
            }

LABEL_81:
            sub_1DEF8D038();
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

          goto LABEL_78;
        }

        goto LABEL_62;
      }

LABEL_77:
      sub_1DEF8D038();
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v103[0] = a2;
  v96 = a2 >> 8;
  v97 = v9;
  v95 = a2 >> 16;
  v94 = a2 >> 24;
  v93 = HIDWORD(a2);
  v92 = a2 >> 40;
  v91 = HIWORD(a2);
  v5 = HIBYTE(a2);
  v90 = a3 >> 8;
  LOWORD(v103[1]) = a3;
  v4 = a3 >> 24;
  BYTE2(v103[1]) = BYTE2(a3);
  v17 = HIDWORD(a3);
  BYTE3(v103[1]) = BYTE3(a3);
  BYTE4(v103[1]) = BYTE4(a3);
  BYTE5(v103[1]) = BYTE5(a3);
  v19 = *(v10 + 16);
  (v19)(&v90 - v15, v103, v9, v16);
  LOBYTE(v103[0]) = a2;
  BYTE1(v103[0]) = v96;
  BYTE2(v103[0]) = v95;
  BYTE3(v103[0]) = v94;
  BYTE4(v103[0]) = v93;
  BYTE5(v103[0]) = v92;
  BYTE6(v103[0]) = v91;
  HIBYTE(v103[0]) = HIBYTE(a2);
  LOBYTE(v103[1]) = a3;
  BYTE1(v103[1]) = v90;
  BYTE2(v103[1]) = BYTE2(a3);
  BYTE3(v103[1]) = BYTE3(a3);
  BYTE4(v103[1]) = BYTE4(a3);
  BYTE5(v103[1]) = BYTE5(a3);
  v9 = v97;
  v19(v102, &v104);
  v13 = v102;
LABEL_51:
  if (qword_1ECDE37F8 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v9, qword_1ECDF60C0);
  v84 = v100;
  (v19)(a4, v83, v9);
  sub_1DEE1BFA0(v99, a3);
  v85 = type metadata accessor for NetworkSyncHeader(0);
  *(a4 + v85[5]) = v101;
  v86 = *(v84 + 32);
  v86(a4 + v85[6], v98, v9);
  result = (v86)(a4 + v85[7], v13, v9);
  *(a4 + v85[8]) = v96;
  *(a4 + v85[10]) = v5;
  *(a4 + v85[11]) = v4;
  if (v17 >= 5)
  {
    v87 = 0;
  }

  else
  {
    v87 = v17;
  }

  *(a4 + v85[9]) = v87;
  if (a2 >= 3)
  {
    v88 = 2;
  }

  else
  {
    v88 = a2;
  }

  *(a4 + v85[12]) = v88;
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEE18A98(void *a1, NSObject *a2, int a3, NSObject *a4, uint64_t a5, NSObject *a6, int a7)
{
  v124 = a3;
  v132 = a2;
  v11 = type metadata accessor for NetworkSyncHeader(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v115 - v19);
  v21 = sub_1DEF8D728();
  v126 = *(v21 - 8);
  v127 = v21;
  v22 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v125 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1DEF8D508();
  v123 = *(v130 - 8);
  v24 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v128 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  v121 = v11;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v130, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v131 = v28;
  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v31 = os_log_type_enabled(v29, v30);
  v129 = a1;
  v120 = v17;
  v117 = v14;
  v119 = a7;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v133 = v33;
    *v32 = 136446210;
    v135 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v34 = sub_1DEF8D988();
    v36 = sub_1DEE12A5C(v34, v35, &v133);

    *(v32 + 4) = v36;
    a1 = v129;
    _os_log_impl(&dword_1DEE0F000, v29, v30, "Received header from: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E12CCD70](v33, -1, -1);
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = a1;
  v38 = v132;
  swift_unknownObjectRetain();
  v39 = sub_1DEF8D4D8();
  v40 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v41 = os_log_type_enabled(v39, v40);
  v118 = v37;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = a4;
    v44 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v133 = v116;
    *v42 = 136447234;
    v135 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v45 = sub_1DEF8D988();
    v47 = sub_1DEE12A5C(v45, v46, &v133);
    v122 = v27;
    v48 = v47;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v37;
    *v44 = v129;
    *(v42 + 22) = 2080;
    v135 = v132;
    v49 = v37;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v50 = sub_1DEF8D988();
    v52 = sub_1DEE12A5C(v50, v51, &v133);

    *(v42 + 24) = v52;
    *(v42 + 32) = 1024;
    *(v42 + 34) = v124 & 1;
    *(v42 + 38) = 2080;
    v135 = v43;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v53 = sub_1DEF8D988();
    v55 = sub_1DEE12A5C(v53, v54, &v133);
    a1 = v129;

    *(v42 + 40) = v55;
    v27 = v122;
    _os_log_impl(&dword_1DEE0F000, v39, v40, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v42, 0x30u);
    sub_1DEE171B4(v44, &unk_1ECDE4880, &qword_1DEF93420);
    v56 = v44;
    a4 = v43;
    MEMORY[0x1E12CCD70](v56, -1, -1);
    v57 = v116;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v57, -1, -1);
    v58 = v42;
    v38 = v132;
    MEMORY[0x1E12CCD70](v58, -1, -1);
  }

  if (!a4)
  {
LABEL_11:
    v70 = v128;
    if (!v38)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v59 = sub_1DEF8D4D8();
  v60 = sub_1DEF8DC98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v133 = v62;
    *v61 = 136446466;
    v135 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v63 = sub_1DEF8D988();
    v65 = sub_1DEE12A5C(v63, v64, &v133);

    *(v61 + 4) = v65;
    *(v61 + 12) = 2082;
    v135 = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v66 = sub_1DEF8D988();
    v68 = sub_1DEE12A5C(v66, v67, &v133);

    *(v61 + 14) = v68;
    a1 = v129;
    _os_log_impl(&dword_1DEE0F000, v59, v60, "%{public}s; Received error: %{public}s", v61, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v62, -1, -1);
    v69 = v61;
    v38 = v132;
    MEMORY[0x1E12CCD70](v69, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v70 = v128;
  if (!v38)
  {
    goto LABEL_16;
  }

LABEL_14:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v71 = sub_1DEF8D4D8();
  v72 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v71, v72))
  {
    swift_unknownObjectRelease();

    if (a1)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v73 = v38;
  v74 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v133 = v75;
  *v74 = 136446466;
  v135 = a6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  v76 = sub_1DEF8D988();
  v78 = sub_1DEE12A5C(v76, v77, &v133);

  *(v74 + 4) = v78;
  *(v74 + 12) = 2082;
  v135 = v73;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
  v79 = sub_1DEF8D988();
  v81 = sub_1DEE12A5C(v79, v80, &v133);

  *(v74 + 14) = v81;
  a1 = v129;
  _os_log_impl(&dword_1DEE0F000, v71, v72, "%{public}s; Received context: %{public}s", v74, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12CCD70](v75, -1, -1);
  MEMORY[0x1E12CCD70](v74, -1, -1);

  v70 = v128;
  swift_unknownObjectRelease();
LABEL_16:
  if (a1)
  {
LABEL_17:
    v82 = v125;
    sub_1DEF8D6F8();
    v83 = v118;
    v84 = sub_1DEF8D718();
    v133 = sub_1DEE1C048(v84);
    v134 = v85;
    MEMORY[0x1EEE9AC00](v133);
    *(&v115 - 2) = v82;
    sub_1DEE1A238(sub_1DEF30734);
    v86 = v133;
    v87 = v134;
    (*(v126 + 8))(v82, v127);
    sub_1DEE1BFF4(v86, v87);
    sub_1DEE18264(v119, v86, v87, v20);
    v88 = v120;
    sub_1DEE15068(v20, v120, type metadata accessor for NetworkSyncHeader);
    swift_unknownObjectRetain();
    v89 = sub_1DEF8D4D8();
    v90 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v131 = v86;
      v92 = v91;
      v93 = swift_slowAlloc();
      v122 = v27;
      v94 = v93;
      v133 = v93;
      *v92 = 136446466;
      v135 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v95 = sub_1DEF8D988();
      v132 = v20;
      v97 = sub_1DEE12A5C(v95, v96, &v133);
      v130 = v87;
      v98 = v83;
      v99 = v97;

      *(v92 + 4) = v99;
      *(v92 + 12) = 2082;
      sub_1DEE15068(v88, v117, type metadata accessor for NetworkSyncHeader);
      v100 = v121;
      v101 = sub_1DEF8D988();
      v103 = v102;
      sub_1DEE15388(v88, type metadata accessor for NetworkSyncHeader);
      v104 = sub_1DEE12A5C(v101, v103, &v133);
      v83 = v98;
      v87 = v130;

      *(v92 + 14) = v104;
      v20 = v132;
      _os_log_impl(&dword_1DEE0F000, v89, v90, "%{public}s; Header: %{public}s", v92, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v94, -1, -1);
      v105 = v92;
      v86 = v131;
      MEMORY[0x1E12CCD70](v105, -1, -1);
    }

    else
    {

      sub_1DEE15388(v88, type metadata accessor for NetworkSyncHeader);
      v100 = v121;
    }

    sub_1DEE19808(a6);
    if (((1 << *(&v20->isa + *(v100 + 36))) & 0xD) != 0)
    {
      sub_1DEE1C0F8(a6, v20);
    }

    else
    {
      sub_1DEF239AC(a6, v20);
    }

    sub_1DEE1BFA0(v86, v87);

    return sub_1DEE15388(v20, type metadata accessor for NetworkSyncHeader);
  }

LABEL_20:
  v106 = v123;
  (*(v123 + 16))(v70, v131, v130);
  if (sub_1DEF24560(a6))
  {
    v107 = sub_1DEF8DC98();
  }

  else
  {
    v107 = sub_1DEF8DC78();
  }

  v108 = v107;
  v109 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v109, v108))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v133 = v111;
    *v110 = 136446210;
    v135 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v112 = sub_1DEF8D988();
    v114 = sub_1DEE12A5C(v112, v113, &v133);

    *(v110 + 4) = v114;
    _os_log_impl(&dword_1DEE0F000, v109, v108, "Received nil instead of header; destroying connection %{public}s", v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x1E12CCD70](v111, -1, -1);
    MEMORY[0x1E12CCD70](v110, -1, -1);
  }

  (*(v106 + 8))(v70, v130);
  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE19808(uint64_t a1)
{
  v86 = a1;
  v2 = sub_1DEF8D378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA8, &qword_1DEF95AA8);
  v79 = *(v11 - 8);
  v12 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DB0, &unk_1DEF95AB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = (&v73 - v20);
  v21 = sub_1DEF8D788();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v1 + 24);
  *v26 = v27;
  (*(v22 + 104))(v26, *MEMORY[0x1E69E8020], v21, v24);
  v28 = v27;
  LOBYTE(v27) = sub_1DEF8D7B8();
  (*(v22 + 8))(v26, v21);
  if ((v27 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_24;
  }

  v73 = v3;
  v74 = v2;
  swift_beginAccess();
  v77 = v1;
  v29 = *(v1 + 56);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  v82 = v29;
  v83 = v11;
  v81 = v29 + 64;
  v36 = v11;
  if (!v33)
  {
LABEL_6:
    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v38 >= v34)
      {

        v52 = v78;
        v51 = v79;
        (*(v79 + 56))(v78, 1, 1, v11);
        goto LABEL_14;
      }

      v33 = *(v30 + 8 * v38);
      ++v35;
      if (v33)
      {
        v37 = v87;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  while (1)
  {
    v37 = v87;
    v38 = v35;
LABEL_10:
    v39 = __clz(__rbit64(v33)) | (v38 << 6);
    v40 = *(v29 + 56);
    v41 = (*(v29 + 48) + 16 * v39);
    v43 = *v41;
    v42 = v41[1];
    v44 = v40 + *(*(type metadata accessor for NetworkMessenger.ExpiringConnection(0) - 8) + 72) * v39;
    v45 = v84;
    sub_1DEE15068(v44, &v84[*(v36 + 48)], type metadata accessor for NetworkMessenger.ExpiringConnection);
    *v45 = v43;
    v45[1] = v42;
    sub_1DEE1BA88(v45, v37, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v46 = v37;
    v47 = v85;
    sub_1DEE17214(v46, v85, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v48 = *(v47 + 8);

    v49 = *(v36 + 48);
    v50 = *(v47 + v49);
    swift_unknownObjectRetain();
    sub_1DEE15388(v47 + v49, type metadata accessor for NetworkMessenger.ExpiringConnection);
    swift_unknownObjectRelease();
    if (v50 == v86)
    {
      break;
    }

    v33 &= v33 - 1;
    sub_1DEE171B4(v87, &qword_1ECDE4DA8, &qword_1DEF95AA8);
    v35 = v38;
    v11 = v36;
    v30 = v81;
    v29 = v82;
    if (!v33)
    {
      goto LABEL_6;
    }
  }

  v52 = v78;
  sub_1DEE1BA88(v87, v78, &qword_1ECDE4DA8, &qword_1DEF95AA8);
  v51 = v79;
  v11 = v36;
  (*(v79 + 56))(v52, 0, 1, v36);
LABEL_14:

  v53 = (*(v51 + 48))(v52, 1, v11);
  v54 = v80;
  if (v53 == 1)
  {
    sub_1DEE171B4(v52, &qword_1ECDE4DB0, &unk_1DEF95AB0);
  }

  else
  {
    v55 = *v52;
    v56 = v52[1];
    sub_1DEE15388(v52 + *(v11 + 48), type metadata accessor for NetworkMessenger.ExpiringConnection);
    v57 = v77;
    swift_beginAccess();
    v58 = *(v57 + 56);
    if (*(v58 + 16) && (v59 = sub_1DEE13224(v55, v56), (v60 & 1) != 0))
    {
      v61 = v59;
      v62 = *(v58 + 56);
      v63 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      v64 = *(v63 - 8);
      v65 = v62 + *(v64 + 72) * v61;
      v54 = v80;
      sub_1DEE15068(v65, v80, type metadata accessor for NetworkMessenger.ExpiringConnection);
      (*(v64 + 56))(v54, 0, 1, v63);
    }

    else
    {
      v63 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
      (*(*(v63 - 8) + 56))(v54, 1, 1, v63);
    }

    swift_endAccess();
    type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    if (!(*(*(v63 - 8) + 48))(v54, 1, v63))
    {
      v66 = v75;
      sub_1DEF8D348();
      (*(v73 + 40))(v54 + *(v63 + 20), v66, v74);
    }

    v67 = v76;
    sub_1DEE17214(v54, v76, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    swift_beginAccess();
    sub_1DEE136B8(v67, v55, v56);
    swift_endAccess();
    sub_1DEE171B4(v54, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_30;
  }

LABEL_24:
  v68 = sub_1DEF8D508();
  __swift_project_value_buffer(v68, qword_1ECDF6010);
  v69 = sub_1DEF8D4D8();
  v70 = sub_1DEF8DC88();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_1DEE0F000, v69, v70, "Setting last activity date", v71, 2u);
    MEMORY[0x1E12CCD70](v71, -1, -1);
  }

  sub_1DEE165E0();
  return sub_1DEE1BAF0();
}

uint64_t sub_1DEE1A0B0()
{
  v1 = *(v0 + 16);
  sub_1DEF8D728();
  sub_1DEE1B9F8(&qword_1ECDE4E78, MEMORY[0x1E69E7FD0]);
  return sub_1DEF8CFB8();
}

uint64_t sub_1DEE1A15C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_1DEF8D228();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;
  v6 = *(v1 + 1);

  result = sub_1DEF8D018();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1DEF8D048();
  v8 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v5 - v4;
  v10 = sub_1DEF8D038();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v7 + v8, v7 + v8 + v11);
}

uint64_t sub_1DEE1A238(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1DEE1BFA0(v5, v4);
      *&v22 = v5;
      *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1DEF95880;
      sub_1DEE1BFA0(0, 0xC000000000000000);
      result = sub_1DEE1A15C(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1DEE1BFA0(v5, v4);
      *&v22 = v5;
      WORD4(v22) = v4;
      BYTE10(v22) = BYTE2(v4);
      BYTE11(v22) = BYTE3(v4);
      BYTE12(v22) = BYTE4(v4);
      BYTE13(v22) = BYTE5(v4);
      BYTE14(v22) = BYTE6(v4);
      result = (a1)(&v22, &v22 + BYTE6(v4));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v2 = v8;
    v2[1] = v9;
    goto LABEL_15;
  }

  if (v6 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    result = (a1)(&v22, &v22);
LABEL_15:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1DEE1BFA0(v5, v4);
  *&v22 = v5;
  *(&v22 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_1DEF95880;
  sub_1DEE1BFA0(0, 0xC000000000000000);
  sub_1DEF8D1F8();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  result = sub_1DEF8D018();
  if (result)
  {
    v13 = result;
    v14 = sub_1DEF8D048();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1DEF8D038();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = (a1)(v13 + v15, v13 + v15 + v19);
        *v2 = v22;
        v2[1] = v10 | 0x8000000000000000;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DEE1A508(void *a1, NSObject *a2, int a3, NSObject *a4, uint64_t a5, NSObject *a6)
{
  v120 = a1;
  v121 = a2;
  v9 = type metadata accessor for NetworkSyncHeaderPreamble(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v114 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v106 - v13;
  v15 = sub_1DEF8D728();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1DEF8D508();
  v115 = *(v119 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v110 = a3;
  v109 = v14;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v119, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v24 = os_log_type_enabled(v22, v23);
  v117 = v21;
  v108 = v9;
  v112 = v15;
  v111 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446210;
    v128 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v27 = sub_1DEF8D988();
    v29 = sub_1DEE12A5C(v27, v28, &aBlock);
    v21 = v117;

    *(v25 + 4) = v29;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "Received header preamble from: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1E12CCD70](v26, -1, -1);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = v120;
  v31 = v120;
  v32 = v121;
  swift_unknownObjectRetain();
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    aBlock = v107;
    *v35 = 136447234;
    v128 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v37 = sub_1DEF8D988();
    v39 = a4;
    v40 = v31;
    v41 = sub_1DEE12A5C(v37, v38, &aBlock);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v40;
    *v36 = v30;
    *(v35 + 22) = 2080;
    v128 = v121;
    v42 = v40;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v43 = sub_1DEF8D988();
    v45 = sub_1DEE12A5C(v43, v44, &aBlock);

    *(v35 + 24) = v45;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v110 & 1;
    *(v35 + 38) = 2080;
    v128 = v39;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v46 = sub_1DEF8D988();
    v48 = sub_1DEE12A5C(v46, v47, &aBlock);
    v32 = v121;

    *(v35 + 40) = v48;
    v31 = v40;
    a4 = v39;
    _os_log_impl(&dword_1DEE0F000, v33, v34, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v35, 0x30u);
    sub_1DEE171B4(v36, &unk_1ECDE4880, &qword_1DEF93420);
    v21 = v117;
    MEMORY[0x1E12CCD70](v36, -1, -1);
    v49 = v107;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v49, -1, -1);
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }

  if (a4)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = sub_1DEF8D4D8();
    v51 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v50, v51))
    {
      swift_unknownObjectRelease();

      v60 = v116;
      if (!v32)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock = v53;
    *v52 = 136446466;
    v128 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v54 = sub_1DEF8D988();
    v56 = sub_1DEE12A5C(v54, v55, &aBlock);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2082;
    v128 = a4;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v57 = sub_1DEF8D988();
    v59 = sub_1DEE12A5C(v57, v58, &aBlock);
    v32 = v121;

    *(v52 + 14) = v59;
    v21 = v117;
    _os_log_impl(&dword_1DEE0F000, v50, v51, "%{public}s; Received error: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v53, -1, -1);
    MEMORY[0x1E12CCD70](v52, -1, -1);

    swift_unknownObjectRelease();
  }

  v60 = v116;
  if (!v32)
  {
LABEL_16:
    if (v120)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_14:
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v61 = sub_1DEF8D4D8();
  v62 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136446466;
    v128 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v65 = sub_1DEF8D988();
    v121 = v31;
    v67 = sub_1DEE12A5C(v65, v66, &aBlock);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2082;
    v128 = v32;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
    v68 = sub_1DEF8D988();
    v70 = sub_1DEE12A5C(v68, v69, &aBlock);

    *(v63 + 14) = v70;
    v21 = v117;
    _os_log_impl(&dword_1DEE0F000, v61, v62, "%{public}s; Received context: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v64, -1, -1);
    MEMORY[0x1E12CCD70](v63, -1, -1);

    v31 = v121;
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  swift_unknownObjectRelease();

  if (v120)
  {
LABEL_17:
    v71 = v113;
    sub_1DEF8D6F8();
    v72 = v31;
    v73 = sub_1DEF8D718();
    aBlock = sub_1DEE1C048(v73);
    v123 = v74;
    MEMORY[0x1EEE9AC00](aBlock);
    *(&v106 - 2) = v71;
    sub_1DEE1A238(sub_1DEE1A144);
    v76 = aBlock;
    v75 = v123;
    (*(v111 + 8))(v71, v112);
    sub_1DEE1BFF4(v76, v75);
    v77 = v114;
    sub_1DEEFC0D8(v76, v75, v114);
    v79 = v77;
    v80 = v109;
    sub_1DEE1C4F0(v79, v109, type metadata accessor for NetworkSyncHeaderPreamble);
    v81 = *(v80 + *(v108 + 20));
    swift_unknownObjectRetain();
    v82 = sub_1DEF8D4D8();
    v83 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v82, v83))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v121 = v72;
      aBlock = v86;
      v87 = v76;
      v88 = v86;
      *v85 = 136446466;
      LODWORD(v128) = v81;
      v89 = sub_1DEF8E2E8();
      v91 = sub_1DEE12A5C(v89, v90, &aBlock);

      *(v85 + 4) = v91;
      *(v85 + 12) = 2082;
      v128 = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v92 = sub_1DEF8D988();
      v94 = sub_1DEE12A5C(v92, v93, &aBlock);

      *(v85 + 14) = v94;
      _os_log_impl(&dword_1DEE0F000, v82, v83, "Expecting header with length %{public}s from %{public}s", v85, 0x16u);
      swift_arrayDestroy();
      v95 = v88;
      v76 = v87;
      v72 = v121;
      MEMORY[0x1E12CCD70](v95, -1, -1);
      MEMORY[0x1E12CCD70](v85, -1, -1);
    }

    if (v81 < 0x14)
    {
      __break(1u);
    }

    else
    {
      sub_1DEE19808(a6);
      v96 = swift_allocObject();
      swift_weakInit();
      v97 = swift_allocObject();
      *(v97 + 16) = v96;
      *(v97 + 24) = a6;
      *(v97 + 32) = v81;
      v126 = sub_1DEE1B468;
      v127 = v97;
      aBlock = MEMORY[0x1E69E9820];
      v123 = 1107296256;
      v124 = sub_1DEE1BDCC;
      v125 = &block_descriptor_307;
      v98 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      nw_connection_receive(a6, v81 - 20, v81 - 20, v98);
      _Block_release(v98);

      sub_1DEE1BFA0(v76, v75);

      sub_1DEE15388(v109, type metadata accessor for NetworkSyncHeaderPreamble);
    }

    return;
  }

LABEL_19:
  (*(v115 + 16))(v60, v21, v119);
  if (sub_1DEF24560(a6))
  {
    v78 = sub_1DEF8DC98();
  }

  else
  {
    v78 = sub_1DEF8DC78();
  }

  v99 = v78;
  v100 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v100, v99))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    aBlock = v102;
    *v101 = 136446210;
    v128 = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v103 = sub_1DEF8D988();
    v105 = sub_1DEE12A5C(v103, v104, &aBlock);

    *(v101 + 4) = v105;
    _os_log_impl(&dword_1DEE0F000, v100, v99, "Received nil instead of header length; destroying connection %{public}s", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v102);
    MEMORY[0x1E12CCD70](v102, -1, -1);
    MEMORY[0x1E12CCD70](v101, -1, -1);
  }

  (*(v115 + 8))(v60, v119);
  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE1B474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE1B4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEE1B548(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DEE1B590(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DEE1B5E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEE1B640()
{
  result = qword_1ECDE2C28;
  if (!qword_1ECDE2C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4790, &qword_1DEF93538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C28);
  }

  return result;
}

void sub_1DEE1B6A4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(type metadata accessor for NetworkSyncHeader(0) - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_1DEE1C558(a1, a2, a3, a4, v10, v11, v12);
}

void sub_1DEE1B780()
{
  v1 = v0[3];
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 2);
  sub_1DEE158C8(v2, v3, v4, v1);
}

unint64_t sub_1DEE1B7BC()
{
  result = qword_1ECDE2BB0;
  if (!qword_1ECDE2BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2BB0);
  }

  return result;
}

unint64_t sub_1DEE1B808()
{
  result = qword_1ECDE2BB8;
  if (!qword_1ECDE2BB8)
  {
    sub_1DEF8DD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2BB8);
  }

  return result;
}

uint64_t sub_1DEE1B860@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1DEF8D688();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DEE1B8D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1B920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1B968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1B9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1B9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1BA40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1BA88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DEE1BAF0()
{
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[3];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  v10 = sub_1DEF8D7B8();
  result = (*(v3 + 8))(v7, v2);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  if (v0[12])
  {
    return result;
  }

  result = swift_beginAccess();
  if (!*(v0[7] + 16))
  {
    return result;
  }

  result = sub_1DEE1BE7C();
  if ((result & 1) == 0)
  {
    return result;
  }

  v10 = v0;
  v12 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 24);
  v13 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber), v12);
  (*(v13 + 8))(v12, v13);
  v1 = sub_1DEF2F2C0();
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v14 = sub_1DEF8D508();
  __swift_project_value_buffer(v14, qword_1ECDF6010);
  v15 = sub_1DEF8D4D8();
  v16 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    *(v17 + 4) = v1;
    _os_log_impl(&dword_1DEE0F000, v15, v16, "Creating prevent-sleep assertion with duration %{public}f", v17, 0xCu);
    MEMORY[0x1E12CCD70](v17, -1, -1);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69D54A0]);
  v19 = sub_1DEF8D918();
  v20 = [v18 initWithIdentifier_];

  v21 = *(v10 + 96);
  *(v10 + 96) = v20;

  result = *(v10 + 96);
  if (result)
  {
    result = [result acquireWithTimeout:0 handler:0.0];
  }

  if (*(v10 + 104))
  {
    v22 = *(v10 + 104);

    sub_1DEF00820();
  }

  return result;
}

void sub_1DEE1BDCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v11 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10(a2, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1DEE1BE7C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1DEF8D918();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1DEE171B4(v7, &qword_1ECDE4DB8, qword_1DEF9AD50);
  }

  return 0;
}

uint64_t sub_1DEE1BFA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DEE1BFF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DEE1C048(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1DEEFC68C(result);
    }

    else
    {
      v2 = sub_1DEF8D068();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1DEF8D028();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1DEF8D238();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void sub_1DEE1C0F8(NSObject *a1, uint64_t a2)
{
  v5 = type metadata accessor for NetworkSyncHeader(0);
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 24);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v15 = *(a2 + *(v5 + 32));
    v16 = swift_allocObject();
    swift_weakInit();
    sub_1DEE15068(a2, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkSyncHeader);
    v17 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = a1;
    sub_1DEE1C4F0(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NetworkSyncHeader);
    aBlock[4] = sub_1DEE1B6A4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE1BDCC;
    aBlock[3] = &block_descriptor_315;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    nw_connection_receive(a1, v15, v15, v19);
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DEE1C3C0()
{
  v1 = (type metadata accessor for NetworkSyncHeader(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v3, v7);
  v8(v0 + v3 + v1[8], v7);
  v8(v0 + v3 + v1[9], v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DEE1C4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DEE1C558(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, NSObject *a6, uint64_t a7)
{
  v156 = a7;
  v146 = a3;
  v155 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E20, &unk_1DEF95B10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v135[-v12];
  v14 = type metadata accessor for Message();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v135[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for NetworkSyncHeader(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v147 = &v135[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v153 = &v135[-v22];
  v23 = sub_1DEF8D728();
  v149 = *(v23 - 8);
  v24 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v135[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_1DEF8D508();
  v145 = *(v154 - 1);
  v26 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v144 = &v135[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v29 = Strong;
  v140 = v13;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v154, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v152 = v30;
  v31 = sub_1DEF8D4D8();
  v32 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v33 = os_log_type_enabled(v31, v32);
  v151 = v29;
  v143 = v18;
  v139 = v14;
  v138 = v15;
  v141 = v23;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v160 = v35;
    *v34 = 136446210;
    v157[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v36 = sub_1DEF8D988();
    v38 = sub_1DEE12A5C(v36, v37, &v160);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1DEE0F000, v31, v32, "Received message data from: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v34, -1, -1);
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v39 = a4;
  v40 = v155;
  v41 = v155;
  v42 = a2;
  swift_unknownObjectRetain();
  v43 = v152;
  v44 = sub_1DEF8D4D8();
  v45 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v46 = os_log_type_enabled(v44, v45);
  v150 = a6;
  v47 = v156;
  if (v46)
  {
    v48 = swift_slowAlloc();
    v136 = v45;
    v49 = v48;
    v50 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v160 = v137;
    *v49 = 136447234;
    v157[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v51 = sub_1DEF8D988();
    v53 = sub_1DEE12A5C(v51, v52, &v160);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v41;
    *v50 = v40;
    v54 = v50;
    *(v49 + 22) = 2080;
    v157[0] = v42;
    v55 = v41;
    v56 = v41;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E10, &qword_1DEF95B00);
    v57 = sub_1DEF8D988();
    v59 = sub_1DEE12A5C(v57, v58, &v160);

    *(v49 + 24) = v59;
    *(v49 + 32) = 1024;
    *(v49 + 34) = v146 & 1;
    *(v49 + 38) = 2080;
    a6 = v150;
    v157[0] = v39;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E18, &qword_1DEF95B08);
    v60 = sub_1DEF8D988();
    v62 = sub_1DEE12A5C(v60, v61, &v160);
    v47 = v156;

    *(v49 + 40) = v62;
    v43 = v152;
    _os_log_impl(&dword_1DEE0F000, v44, v136, "%{public}s; Parameters: content: %@, context: %s, isComplete: %{BOOL}d, error: %s", v49, 0x30u);
    sub_1DEE171B4(v54, &unk_1ECDE4880, &qword_1DEF93420);
    MEMORY[0x1E12CCD70](v54, -1, -1);
    v63 = v137;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v63, -1, -1);
    MEMORY[0x1E12CCD70](v49, -1, -1);
  }

  else
  {
    v55 = v41;
  }

  v64 = v153;
  v65 = v39;
  if (!v39)
  {
LABEL_12:
    if (!v42)
    {
      goto LABEL_18;
    }

LABEL_15:
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v77 = sub_1DEF8D4D8();
    v78 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v160 = v80;
      *v79 = 136446466;
      v157[0] = a6;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v81 = sub_1DEF8D988();
      v83 = sub_1DEE12A5C(v81, v82, &v160);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2082;
      v157[0] = v42;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E08, &qword_1DEF95AF8);
      v84 = sub_1DEF8D988();
      v86 = sub_1DEE12A5C(v84, v85, &v160);
      v47 = v156;

      *(v79 + 14) = v86;
      v64 = v153;
      _os_log_impl(&dword_1DEE0F000, v77, v78, "%{public}s; Received context: %{public}s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v80, -1, -1);
      MEMORY[0x1E12CCD70](v79, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v66 = sub_1DEF8D4D8();
  v67 = sub_1DEF8DC98();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v160 = v69;
    *v68 = 136446466;
    v157[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v70 = sub_1DEF8D988();
    v72 = sub_1DEE12A5C(v70, v71, &v160);

    *(v68 + 4) = v72;
    *(v68 + 12) = 2082;
    v157[0] = v65;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D98, &qword_1DEF95A98);
    v73 = sub_1DEF8D988();
    v75 = sub_1DEE12A5C(v73, v74, &v160);
    v47 = v156;

    *(v68 + 14) = v75;
    v43 = v152;
    _os_log_impl(&dword_1DEE0F000, v66, v67, "%{public}s; Received error: %{public}s", v68, 0x16u);
    swift_arrayDestroy();
    v76 = v69;
    v64 = v153;
    MEMORY[0x1E12CCD70](v76, -1, -1);
    MEMORY[0x1E12CCD70](v68, -1, -1);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  swift_unknownObjectRelease();

  if (v42)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (v155)
  {
    v87 = v148;
    sub_1DEF8D6F8();
    v155 = v55;
    v88 = sub_1DEF8D718();
    v160 = sub_1DEE1C048(v88);
    v161 = v89;
    MEMORY[0x1EEE9AC00](v160);
    sub_1DEE1A238(sub_1DEF30734);
    v90 = v150;
    v92 = v160;
    v91 = v161;
    (*(v149 + 8))(v87, v141);
    sub_1DEE15068(v47, v64, type metadata accessor for NetworkSyncHeader);
    sub_1DEE1BFF4(v92, v91);
    swift_unknownObjectRetain();
    sub_1DEE1BFF4(v92, v91);
    v93 = sub_1DEF8D4D8();
    v94 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v93, v94))
    {
      sub_1DEE1BFA0(v92, v91);
      sub_1DEE15388(v64, type metadata accessor for NetworkSyncHeader);
      sub_1DEE1BFA0(v92, v91);

      v100 = v143;
      goto LABEL_39;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v160 = v96;
    *v95 = 136446722;
    v157[0] = v90;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v97 = sub_1DEF8D988();
    v99 = sub_1DEE12A5C(v97, v98, &v160);

    *(v95 + 4) = v99;
    *(v95 + 12) = 1026;
    v100 = v143;
    LODWORD(v99) = *(v64 + *(v143 + 32));
    sub_1DEE15388(v64, type metadata accessor for NetworkSyncHeader);
    *(v95 + 14) = v99;
    *(v95 + 18) = 2050;
    v101 = v91 >> 62;
    if ((v91 >> 62) > 1)
    {
      if (v101 != 2)
      {
        sub_1DEE1BFA0(v92, v91);
        v102 = 0;
        goto LABEL_37;
      }

      v115 = *(v92 + 16);
      v114 = *(v92 + 24);
      sub_1DEE1BFA0(v92, v91);
      v102 = v114 - v115;
      if (!__OFSUB__(v114, v115))
      {
        v90 = v150;
        v100 = v143;
LABEL_38:
        *(v95 + 20) = v102;
        sub_1DEE1BFA0(v92, v91);
        _os_log_impl(&dword_1DEE0F000, v93, v94, "%{public}s; Expected %{public}u; got %{public}ld", v95, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x1E12CCD70](v96, -1, -1);
        MEMORY[0x1E12CCD70](v95, -1, -1);

        v47 = v156;
LABEL_39:
        v116 = *(v47 + *(v100 + 36));
        v117 = v147;
        if (v116 <= 1)
        {
          if (!*(v47 + *(v100 + 36)))
          {
            type metadata accessor for OPACKCoder();
            sub_1DEE115C8(&v165);
            sub_1DEE12F7C(&v165, v162);
            v128 = MEMORY[0x1E69E7CC0];
            v129 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
            v160 = v128;
            v161 = v129;
            v163 = 0;
            v164 = 1;
            v158 = &type metadata for PropertyListTypeDecoder.RootDecoder;
            v159 = sub_1DEE1DC98();
            v157[0] = swift_allocObject();
            sub_1DEE1DCEC(&v160, v157[0] + 16);
            v130 = v140;
            Message.init(from:)(v157, v140);
            sub_1DEE1EBB4(&v160);
            __swift_destroy_boxed_opaque_existential_1(&v165);
            (*(v138 + 56))(v130, 0, 1, v139);
            v134 = v142;
            sub_1DEE1C4F0(v130, v142, type metadata accessor for Message);
            sub_1DEE19808(v90);
            sub_1DEE1ED34(v134, v90, v47);
            sub_1DEE15388(v134, type metadata accessor for Message);
            goto LABEL_49;
          }
        }

        else
        {
          if (v116 == 2)
          {
            type metadata accessor for OPACKCoder();
            sub_1DEE115C8(&v165);
            sub_1DEE12F7C(&v165, v162);
            v131 = MEMORY[0x1E69E7CC0];
            v132 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
            v160 = v131;
            v161 = v132;
            v163 = 0;
            v164 = 1;
            v158 = &type metadata for PropertyListTypeDecoder.RootDecoder;
            v159 = sub_1DEE1DC98();
            v157[0] = swift_allocObject();
            sub_1DEE1DCEC(&v160, v157[0] + 16);
            v133 = sub_1DEF2E474(v157);
            sub_1DEE1EBB4(&v160);
            __swift_destroy_boxed_opaque_existential_1(&v165);
            sub_1DEE19808(v90);
            sub_1DEF2473C(v133, v90, v47);

LABEL_49:
            sub_1DEE19808(v90);
            sub_1DEE18040(v90);

            sub_1DEE1BFA0(v92, v91);

            return;
          }

          if (v116 == 3)
          {
            sub_1DEE15068(v47, v147, type metadata accessor for NetworkSyncHeader);
            v118 = sub_1DEF8D4D8();
            v119 = sub_1DEF8DC98();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = v117;
              v121 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v160 = v154;
              *v121 = 136446210;
              v122 = *(v100 + 24);
              sub_1DEF8D3F8();
              sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
              v90 = v150;
              v123 = sub_1DEF8E2E8();
              v125 = v124;
              sub_1DEE15388(v120, type metadata accessor for NetworkSyncHeader);
              v126 = sub_1DEE12A5C(v123, v125, &v160);
              v100 = v143;

              *(v121 + 4) = v126;
              _os_log_impl(&dword_1DEE0F000, v118, v119, "Incoming message failed: %{public}s", v121, 0xCu);
              v127 = v154;
              __swift_destroy_boxed_opaque_existential_1(v154);
              MEMORY[0x1E12CCD70](v127, -1, -1);
              MEMORY[0x1E12CCD70](v121, -1, -1);
            }

            else
            {

              sub_1DEE15388(v117, type metadata accessor for NetworkSyncHeader);
            }

            sub_1DEF25394(v156 + *(v100 + 24), 1);
            goto LABEL_49;
          }
        }

LABEL_53:
        sub_1DEF8E0F8();
        __break(1u);
        return;
      }

      __break(1u);
    }

    else
    {
      if (!v101)
      {
        sub_1DEE1BFA0(v92, v91);
        v102 = BYTE6(v91);
LABEL_37:
        v90 = v150;
        goto LABEL_38;
      }

      sub_1DEE1BFA0(v92, v91);
      LODWORD(v102) = HIDWORD(v92) - v92;
      if (!__OFSUB__(HIDWORD(v92), v92))
      {
        v102 = v102;
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v103 = v145;
  v104 = v144;
  (*(v145 + 16))(v144, v43, v154);
  if (sub_1DEF24560(a6))
  {
    v105 = sub_1DEF8DC98();
  }

  else
  {
    v105 = sub_1DEF8DC78();
  }

  v106 = v105;
  v107 = sub_1DEF8D4D8();
  if (os_log_type_enabled(v107, v106))
  {
    v108 = v104;
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v160 = v110;
    *v109 = 136446210;
    v157[0] = a6;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v111 = sub_1DEF8D988();
    v113 = sub_1DEE12A5C(v111, v112, &v160);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_1DEE0F000, v107, v106, "Received nil instead of data; destroying connection %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1E12CCD70](v110, -1, -1);
    MEMORY[0x1E12CCD70](v109, -1, -1);

    (*(v103 + 8))(v108, v154);
  }

  else
  {

    (*(v103 + 8))(v104, v154);
  }

  sub_1DEF16BA0(a6);
}

uint64_t sub_1DEE1D9F4()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t type metadata accessor for Message()
{
  result = qword_1ECDE2E70;
  if (!qword_1ECDE2E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEE1DAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CA8, &qword_1DEF915A0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CB0, &qword_1DEF915A8);
    v8 = sub_1DEF8E148();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1DEE17214(v10, v6, &qword_1ECDE3CA8, &qword_1DEF915A0);
      result = sub_1DEEAF284(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1DEF8E018();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1DEE117C0(&v6[v9], (v8[7] + 32 * v14));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1DEE1DC98()
{
  result = qword_1ED7861F0[0];
  if (!qword_1ED7861F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7861F0);
  }

  return result;
}

uint64_t Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - v5;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5780, &qword_1DEF99708);
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = type metadata accessor for Message();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 + 20);
  v39 = v7;
  (*(v7 + 56))(&v18[v20], 1, 1, v6, v16);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE1E328();
  v44 = v13;
  v22 = v45;
  sub_1DEF8E848();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEF32324(&v18[v20]);
  }

  else
  {
    v23 = v40;
    v45 = v20;
    LOBYTE(v46) = 0;
    sub_1DEE1E37C(&qword_1ECDE3630);
    sub_1DEF8E1F8();
    (*(v39 + 32))(v18, v43, v6);
    LOBYTE(v46) = 1;
    sub_1DEF8E1B8();
    sub_1DEE1E70C(v23, &v18[v45]);
    LOBYTE(v46) = 2;
    v25 = sub_1DEF8E1D8();
    v26 = a1;
    v27 = &v18[v14[6]];
    *v27 = v25;
    v27[1] = v28;
    LOBYTE(v46) = 3;
    v29 = sub_1DEF8E1D8();
    v30 = v18;
    v31 = &v18[v14[7]];
    *v31 = v29;
    v31[1] = v32;
    v47 = 5;
    sub_1DEE1E77C();
    sub_1DEF8E1F8();
    v33 = v41;
    *(v30 + v14[9]) = v46;
    LOBYTE(v46) = 4;
    v34 = sub_1DEF8E1C8();
    v36 = v35;
    (*(v33 + 8))(v44, v42);
    v37 = 7;
    if ((v36 & 1) == 0)
    {
      v37 = v34;
    }

    *(v30 + v14[8]) = v37;
    sub_1DEE1EAF4(v30, v38);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_1DEE1EB58(v30);
  }
}

unint64_t sub_1DEE1E328()
{
  result = qword_1ECDE5788;
  if (!qword_1ECDE5788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5788);
  }

  return result;
}

uint64_t sub_1DEE1E37C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DEF8D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DEE1E3C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEE1E408()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x65447265646E6573;
  v4 = 0x6C6F636F746F7270;
  if (v1 != 4)
  {
    v4 = 0x426465646F636E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65736E6F70736572;
  if (v1 != 1)
  {
    v5 = 0x546567617373656DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEE1E4E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  a2[4] = sub_1DEE1E588();
  v4 = swift_allocObject();
  *a2 = v4;
  return sub_1DEE1DCEC(v2, v4 + 16);
}

uint64_t sub_1DEE1E540()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

unint64_t sub_1DEE1E588()
{
  result = qword_1ED7860A8;
  if (!qword_1ED7860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860A8);
  }

  return result;
}

uint64_t sub_1DEE1E5DC()
{
  sub_1DEE12F7C((v0 + 2), v9);
  v1 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    return v8;
  }

  v3 = sub_1DEF8DF68();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v5 = v1;
  v7 = *v0;

  sub_1DEF8DF48();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

uint64_t sub_1DEE1E70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEE1E77C()
{
  result = qword_1ECDE3660;
  if (!qword_1ECDE3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3660);
  }

  return result;
}

uint64_t sub_1DEE1E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1DEE22CCC(a2, MEMORY[0x1E69E7CA0] + 8, a3, a6, a7, MEMORY[0x1E69E7CA0] + 8, v27, a9);
  if (!v9)
  {
    v17 = a4;
    if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v27, &v24), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
    {

      sub_1DEE117C0(v27, &v24);
      return swift_dynamicCast();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF907F0;
      *(inited + 56) = a7;
      *(inited + 64) = a9;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
      (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
      *&v24 = a3;

      sub_1DEE2262C(inited);
      v20 = v24;
      sub_1DEE12F7C(v27, v25);
      v21 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      *&v24 = v20;
      *(&v24 + 1) = v21;
      v25[4] = v17;
      v26 = a5 & 1;
      sub_1DEE1DC98();
      v23 = swift_allocObject();
      sub_1DEE1DCEC(&v24, v23 + 16);
      sub_1DEF8DBC8();
      sub_1DEE1EBB4(&v24);
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  return result;
}

uint64_t sub_1DEE1EA18(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1DEE1EA60()
{
  result = sub_1DEF8E5B8();
  if (v0)
  {
    return v2;
  }

  return result;
}

BOOL sub_1DEE1EA84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1DEE212E8(a1, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1DEE1EAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE1EB58(uint64_t a1)
{
  v2 = type metadata accessor for Message();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEE1EC1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
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

uint64_t sub_1DEE1ED34(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46 - v13;
  v49 = type metadata accessor for Message();
  v14 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D788();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v4 + 24);
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  LOBYTE(v23) = sub_1DEF8D7B8();
  (*(v18 + 8))(v22, v17);
  if (v23)
  {
    if (qword_1ECDE2E50 == -1)
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
  v25 = sub_1DEF8D508();
  __swift_project_value_buffer(v25, qword_1ECDF6010);
  sub_1DEE15068(a1, v16, type metadata accessor for Message);
  swift_unknownObjectRetain();
  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v28 = os_log_type_enabled(v26, v27);
  v48 = a2;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v52 = a2;
    v53 = v30;
    *v29 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v31 = sub_1DEF8D988();
    v47 = v8;
    v33 = a1;
    v34 = sub_1DEE12A5C(v31, v32, &v53);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = &v16[*(v49 + 28)];
    v36 = *v35;
    v37 = v35[1];

    sub_1DEE15388(v16, type metadata accessor for Message);
    v38 = sub_1DEE12A5C(v36, v37, &v53);
    a1 = v33;

    *(v29 + 14) = v38;
    v8 = v47;
    _os_log_impl(&dword_1DEE0F000, v26, v27, "%{public}s; Received message from %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v30, -1, -1);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  else
  {

    sub_1DEE15388(v16, type metadata accessor for Message);
  }

  v39 = type metadata accessor for NetworkSyncHeader(0);
  if (*(a3 + *(v39 + 40)) == 1)
  {
    v40 = sub_1DEF8D1E8();
    v41 = v50;
    (*(*(v40 - 8) + 56))(v50, 1, 1, v40);
    sub_1DEE1F270(a1, v41, v48);
    return sub_1DEE171B4(v41, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v43 = v39;
    v44 = v51;
    sub_1DEE15068(a1, v51, type metadata accessor for Message);
    v45 = *(a3 + *(v43 + 48));
    *(v44 + *(v8 + 20)) = 0;
    *(v44 + *(v8 + 24)) = v45;
    sub_1DEF2934C(v44);
    return sub_1DEE15388(v44, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
  }
}

uint64_t sub_1DEE1F270(void (*a1)(void, void, void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v124 = a1;
  v125 = a3;
  v122 = a2;
  v123 = type metadata accessor for Message();
  v5 = *(*(v123 - 1) + 64);
  MEMORY[0x1EEE9AC00](v123);
  *&v119 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D698();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v114 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1DEF8D6D8();
  v113 = *(v115 - 8);
  v10 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v107 - v14;
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v108 = *(v24 - 8);
  v25 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v107 - v28;
  v30 = sub_1DEF8D788();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = (&v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v4 + 24);
  *v35 = v36;
  (*(v31 + 104))(v35, *MEMORY[0x1E69E8020], v30, v33);
  v37 = v36;
  LOBYTE(v36) = sub_1DEF8D7B8();
  (*(v31 + 8))(v35, v30);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v38 = v125;
  v121 = v4;
  sub_1DEE19808(v125);
  v39 = v124;
  sub_1DEE15068(v124, v29, type metadata accessor for Message);
  sub_1DEE17214(v122, &v29[*(v24 + 28)], &qword_1ECDE4890, &qword_1DEF90990);
  *&v29[*(v24 + 32)] = v38;
  sub_1DEE17214(v39 + *(v123 + 5), v15, &unk_1ECDE3E80, &unk_1DEF90970);
  v40 = (*(v17 + 48))(v15, 1, v16);
  v123 = v29;
  if (v40 == 1)
  {
    v17 = v39;
    swift_unknownObjectRetain();
    sub_1DEE171B4(v15, &unk_1ECDE3E80, &unk_1DEF90970);
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v41 = sub_1DEF8D508();
      __swift_project_value_buffer(v41, qword_1ECDF6010);
      v42 = sub_1DEF8D4D8();
      v43 = sub_1DEF8DCB8();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v121;
      v46 = v119;
      if (v44)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1DEE0F000, v42, v43, "Message is not a response", v47, 2u);
        MEMORY[0x1E12CCD70](v47, -1, -1);
      }

      sub_1DEE15068(v17, v46, type metadata accessor for Message);

      v48 = sub_1DEF8D4D8();
      v49 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        aBlock[0] = v51;
        *v50 = 136446466;
        if (*(v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
        {
          v52 = 0x73756E696D726574;
        }

        else
        {
          v52 = 0;
        }

        if (*(v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType))
        {
          v53 = 0xE900000000000020;
        }

        else
        {
          v53 = 0xE000000000000000;
        }

        v54 = sub_1DEE12A5C(v52, v53, aBlock);

        *(v50 + 4) = v54;
        *(v50 + 12) = 2082;
        v55 = Message.description.getter();
        v57 = v56;
        sub_1DEE15388(v46, type metadata accessor for Message);
        v58 = sub_1DEE12A5C(v55, v57, aBlock);

        *(v50 + 14) = v58;
        _os_log_impl(&dword_1DEE0F000, v48, v49, "Publishing incoming %{public}smessage: %{public}s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v51, -1, -1);
        MEMORY[0x1E12CCD70](v50, -1, -1);
      }

      else
      {

        sub_1DEE15388(v46, type metadata accessor for Message);
      }

      v79 = *(v45 + 16);
      v80 = v123;
      sub_1DEF8D588();
      v81 = v80;
      return sub_1DEE171B4(v81, &qword_1ECDE4E30, &qword_1DEF96220);
    }

LABEL_31:
    swift_once();
    goto LABEL_4;
  }

  v59 = v16;
  v60 = v17;
  v61 = v120;
  (*(v17 + 32))(v120, v15, v59);
  v62 = qword_1ECDE2E50;
  swift_unknownObjectRetain();
  if (v62 != -1)
  {
    swift_once();
  }

  v63 = sub_1DEF8D508();
  v64 = __swift_project_value_buffer(v63, qword_1ECDF6010);
  v65 = v118;
  v124 = *(v17 + 16);
  v124(v118, v61, v59);
  v125 = v64;
  v66 = sub_1DEF8D4D8();
  v67 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    *v68 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v70 = sub_1DEF8E2E8();
    v71 = v65;
    v72 = v60;
    v73 = v59;
    v75 = v74;
    v76 = *(v72 + 8);
    v76(v71, v73);
    v77 = sub_1DEE12A5C(v70, v75, aBlock);
    v59 = v73;
    v60 = v72;

    *(v68 + 4) = v77;
    _os_log_impl(&dword_1DEE0F000, v66, v67, "Message is a response to outgoing message: %{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    v78 = v69;
    v61 = v120;
    MEMORY[0x1E12CCD70](v78, -1, -1);
    MEMORY[0x1E12CCD70](v68, -1, -1);
  }

  else
  {

    v76 = *(v60 + 8);
    v76(v65, v59);
  }

  v82 = v121;
  swift_beginAccess();
  v83 = *(v82 + 64);
  if (!*(v83 + 16) || (v84 = sub_1DEEAF350(v61), (v85 & 1) == 0))
  {
    swift_endAccess();
    v104 = sub_1DEF8D4D8();
    v105 = sub_1DEF8DC98();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1DEE0F000, v104, v105, "No response handler found", v106, 2u);
      MEMORY[0x1E12CCD70](v106, -1, -1);
    }

    v76(v61, v59);
    v81 = v123;
    return sub_1DEE171B4(v81, &qword_1ECDE4E30, &qword_1DEF96220);
  }

  v86 = v84;
  v120 = v76;
  v122 = v60;
  v87 = *(v83 + 56);
  v88 = swift_allocObject();
  v119 = *(v87 + 16 * v86);
  *(v88 + 16) = v119;
  swift_endAccess();

  v89 = sub_1DEF8D4D8();
  v90 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = v59;
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_1DEE0F000, v89, v90, "Found response handler", v92, 2u);
    v93 = v92;
    v59 = v91;
    MEMORY[0x1E12CCD70](v93, -1, -1);
  }

  v107 = v59;

  v94 = v111;
  v124(v111, v61, v59);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v94);
  swift_endAccess();
  v125 = *(v82 + 32);
  v95 = v123;
  v96 = v110;
  sub_1DEE17214(v123, v110, &qword_1ECDE4E30, &qword_1DEF96220);
  v97 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1DEF30814;
  *(v98 + 24) = v88;
  sub_1DEE1BA88(v96, v98 + v97, &qword_1ECDE4E30, &qword_1DEF96220);
  aBlock[4] = sub_1DEF30138;
  aBlock[5] = v98;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_330;
  v99 = _Block_copy(aBlock);

  v100 = v112;
  sub_1DEF8D6B8();
  v126 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v101 = v114;
  v102 = v117;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v100, v101, v99);
  _Block_release(v99);

  (*(v116 + 8))(v101, v102);
  (*(v113 + 8))(v100, v115);
  (v120)(v61, v107);
  sub_1DEE171B4(v95, &qword_1ECDE4E30, &qword_1DEF96220);
}

uint64_t sub_1DEE20078()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DEE200B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  v2 = *(*(v1 - 8) + 80);
  v17 = *(*(v1 - 8) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + ((v2 + 32) & ~v2);
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v4, v5);
  v8 = type metadata accessor for Message();
  v9 = v8[5];
  if (!(*(v6 + 48))(v4 + v9, 1, v5))
  {
    v7(v4 + v9, v5);
  }

  v10 = *(v4 + v8[6] + 8);

  v11 = *(v4 + v8[7] + 8);

  sub_1DEE1BFA0(*(v4 + v8[9]), *(v4 + v8[9] + 8));
  v12 = *(v1 + 28);
  v13 = sub_1DEF8D1E8();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v15 = *(v4 + *(v1 + 32));
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v17, v2 | 7);
}

char *sub_1DEE202D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58C8, &qword_1DEF9AE80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t Message.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - v4;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&unk_1ECDE3620);
  v6 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v6);

  MEMORY[0x1E12CB180](0xD000000000000010, 0x80000001DEF9E320);
  v7 = type metadata accessor for Message();
  sub_1DEE205E0(v0 + v7[5], v5);
  v8 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v8);

  MEMORY[0x1E12CB180](0x67617373656D203BLL, 0xEF203A6570795465);
  MEMORY[0x1E12CB180](*(v1 + v7[6]), *(v1 + v7[6] + 8));
  MEMORY[0x1E12CB180](0xD000000000000012, 0x80000001DEF9E340);
  MEMORY[0x1E12CB180](*(v1 + v7[7]), *(v1 + v7[7] + 8));
  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  v11[1] = *(v0 + v7[8]);
  v9 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v9);

  return v12;
}

uint64_t sub_1DEE205E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeviceDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v6 = &v68.i8[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3E90, &qword_1DEF91888);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = &v68.i8[-v10];
  v12 = *(*(type metadata accessor for DeviceDescriptor() - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00]();
  v15 = &v68.i8[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v15 + 72) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 44) = 256;
  *(v15 + 7) = xmmword_1DEF90FE0;
  v16 = *(v13 + 68);
  v17 = sub_1DEF8D3F8();
  v18 = *(*(v17 - 8) + 56);
  v74 = v16;
  v75 = v15;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1DEE23F54();
  sub_1DEF8E848();
  if (v2)
  {
    v23 = v75;
    __swift_destroy_boxed_opaque_existential_1(v73);
    sub_1DEE2416C(*(v23 + 14), *(v23 + 15));

    return sub_1DEE171B4(&v23[v74], &unk_1ECDE3E80, &unk_1DEF90970);
  }

  v71 = v6;
  v21 = v8;
  v80 = 2;
  sub_1DEE23F00();
  v22 = v11;
  sub_1DEF8E1F8();
  v25 = v75;
  *(v75 + 2) = v76;
  LOBYTE(v76) = 0;
  *v25 = sub_1DEF8E1D8();
  *(v25 + 1) = v26;
  LOBYTE(v76) = 1;
  *(v25 + 2) = sub_1DEF8E1D8();
  *(v25 + 3) = v27;
  v80 = 3;
  sub_1DEE23EAC();
  sub_1DEF8E1B8();
  v28 = v76;
  if (v76 == 6)
  {
    LOBYTE(v76) = 12;
    v29 = sub_1DEF8E1A8();
    if (v29)
    {
      v30 = 2;
    }

    else
    {
      v30 = 1;
    }

    if (v29 == 2)
    {
      v28 = 0;
    }

    else
    {
      v28 = v30;
    }
  }

  v25[48] = v28;
  v80 = 4;
  sub_1DEE24030();
  sub_1DEF8E1B8();
  v31 = v78;
  v32 = v79;
  v33 = v77;
  *(v25 + 56) = v76;
  *(v25 + 72) = v33;
  v25[88] = v31;
  v25[89] = v32;
  v80 = 7;
  sub_1DEE1E77C();
  sub_1DEF8E1B8();
  v70 = v7;
  v35 = *(&v76 + 1);
  v34 = v76;
  sub_1DEE2416C(*(v25 + 14), *(v25 + 15));
  *(v25 + 14) = v34;
  *(v25 + 15) = v35;
  LOBYTE(v76) = 8;
  *(v25 + 16) = sub_1DEF8E198();
  *(v25 + 17) = v36;
  LOBYTE(v76) = 9;
  *(v25 + 18) = sub_1DEF8E198();
  *(v25 + 19) = v37;
  LOBYTE(v76) = 10;
  *(v25 + 20) = sub_1DEF8E198();
  *(v25 + 21) = v38;
  LOBYTE(v76) = 11;
  sub_1DEEBC680(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
  v69 = v22;
  sub_1DEF8E1B8();
  sub_1DEE1E70C(v71, &v75[v74]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
  v80 = 5;
  sub_1DEE23BE4();
  sub_1DEF8E1B8();
  v39 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
  v80 = 6;
  sub_1DEE24AE4(&qword_1ECDE2CD0, sub_1DEE2505C, sub_1DEEBB854);
  sub_1DEF8E1B8();
  v40 = v76;
  v74 = 0x80000001DEF9C1B0;
  if (!v39)
  {
    v39 = sub_1DEEBB8A8(&unk_1F5A18E58, 0xD000000000000011, v74, 1, 1);
    swift_arrayDestroy();
  }

  *(v75 + 12) = v39;
  if (v40)
  {
LABEL_29:
    (*(v21 + 8))(v69, v70);
    v67 = v75;
    *(v75 + 13) = v40;
    sub_1DEEBC728(v67, v72, type metadata accessor for DeviceDescriptor);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return sub_1DEEBC6C8(v67, type metadata accessor for DeviceDescriptor);
  }

  v40 = MEMORY[0x1E69E7CC8];
  v41 = &unk_1F5A18F10;
  v71 = 4;
  v68 = vdupq_n_s64(1uLL);
  while (1)
  {
    v46 = *(v41 - 1);
    v47 = *v41;
    swift_bridgeObjectRetain_n();
    v48 = v74;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v76 = v40;
    v50 = v46;
    v51 = v46;
    v52 = v47;
    v54 = sub_1DEEAF16C(v51, v47, 0xD000000000000011, v48);
    v55 = v40[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      break;
    }

    v58 = v53;
    if (v40[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v53)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_1DEEB7550();
        if (v58)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_1DEEB0D14(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1DEEAF16C(v50, v52, 0xD000000000000011, v74);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_32;
      }

      v54 = v59;
      if (v58)
      {
LABEL_15:
        v42 = v74;

        v40 = v76;
        v43 = *(v76 + 56) + 48 * v54;
        v44 = *(v43 + 8);
        v45 = *(v43 + 24);
        *v43 = v50;
        *(v43 + 8) = v52;
        *(v43 + 16) = 0xD000000000000011;
        *(v43 + 24) = v42;
        *(v43 + 32) = v68;

        goto LABEL_16;
      }
    }

    v40 = v76;
    *(v76 + 8 * (v54 >> 6) + 64) |= 1 << v54;
    v61 = (v40[6] + 32 * v54);
    *v61 = v50;
    v61[1] = v52;
    v62 = v74;
    v61[2] = 0xD000000000000011;
    v61[3] = v62;
    v63 = (v40[7] + 48 * v54);
    v63->i64[0] = v50;
    v63->i64[1] = v52;
    v63[1].i64[0] = 0xD000000000000011;
    v63[1].i64[1] = v62;
    v63[2] = vdupq_n_s64(1uLL);

    v64 = v40[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_31;
    }

    v40[2] = v66;
LABEL_16:
    v41 += 2;
    if (!--v71)
    {
      swift_arrayDestroy();
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t ScreenDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C10, &qword_1DEF95628);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23D60();
  sub_1DEF8E848();
  if (!v2)
  {
    type metadata accessor for CGSize(0);
    v18 = 0;
    sub_1DEE23CD0(&qword_1ECDE2B98);
    sub_1DEF8E1F8();
    v11 = v19;
    v12 = v20;
    v18 = 1;
    sub_1DEE23FDC();
    sub_1DEF8E1F8();
    v14 = v19;
    v18 = 2;
    sub_1DEF8E1B8();
    (*(v6 + 8))(v9, v5);
    v15 = v19;
    v16 = v20;
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_1DEE212E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v9[0] = sub_1DEF8E868();
  *(&v9[0] + 1) = v6;
  v7 = [a5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_1DEE117D0(v9);
  return v7 != 0;
}

uint64_t sub_1DEE21398()
{
  sub_1DEE12F7C((v0 + 2), v8);
  v1 = MEMORY[0x1E69E63B0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v5 = v1;
    v7 = *v0;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DEE214FC(uint64_t a1)
{
  sub_1DEE12F7C((v1 + 2), v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v6 = a1;
  v8 = *v1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEE216A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for DeviceDescriptor();
  v3 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D3F8();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5588, &unk_1DEF98970);
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E874();
  v32 = v12;
  v18 = v33;
  sub_1DEF8E848();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v5;
  v19 = v16;
  v20 = v28;
  LOBYTE(v34) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
  v21 = v29;
  sub_1DEF8E1F8();
  (*(v20 + 32))(v16, v21, v6);
  v35 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  v22 = v13;
  *(v19 + *(v13 + 20)) = v34;
  LOBYTE(v34) = 2;
  sub_1DEF6D188(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor);
  v23 = v33;
  v29 = 0;
  sub_1DEF8E1F8();
  v24 = v30;
  sub_1DEF6E54C(v23, v19 + *(v22 + 24), type metadata accessor for DeviceDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
  v35 = 3;
  sub_1DEE2524C();
  sub_1DEF8E1F8();
  (*(v24 + 8))(v32, v31);
  *(v19 + *(v22 + 28)) = v34;
  sub_1DEF6E6BC(v19, v26, type metadata accessor for ReplicatorMessage.Handshake.Request);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v19, type metadata accessor for ReplicatorMessage.Handshake.Request);
}

uint64_t PairingRelationship.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A18, &qword_1DEF93FB0);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v49 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A20, &qword_1DEF93FB8);
  v58 = *(v54 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v59 = &v49 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A28, &qword_1DEF93FC0);
  v55 = *(v51 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v61 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A30, &qword_1DEF93FC8);
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A38, &qword_1DEF93FD0);
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4A40, &qword_1DEF93FD8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1DEEFA0AC();
  v25 = v64;
  sub_1DEF8E848();
  if (!v25)
  {
    v26 = v17;
    v64 = v14;
    v27 = v61;
    v28 = v62;
    v29 = sub_1DEF8E228();
    v30 = (2 * *(v29 + 16)) | 1;
    v65 = v29;
    v66 = v29 + 32;
    v67 = 0;
    v68 = v30;
    v31 = sub_1DEE4F064();
    if (v31 != 5 && v67 == v68 >> 1)
    {
      if (v31 <= 1u)
      {
        if (v31)
        {
          v69 = 1;
          sub_1DEEFA1FC();
          sub_1DEF8E178();
          (*(v52 + 8))(v13, v53);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v48 = 0;
          v47 = 1;
        }

        else
        {
          v69 = 0;
          sub_1DEEFA250();
          sub_1DEF8E178();
          (*(v50 + 8))(v26, v64);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v48 = 0;
          v47 = 0;
        }
      }

      else
      {
        if (v31 == 2)
        {
          v42 = v60;
          v69 = 2;
          sub_1DEEFA1A8();
          sub_1DEF8E178();
          (*(v55 + 8))(v27, v51);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v48 = 0;
          v47 = 2;
          v40 = v63;
LABEL_17:
          *v42 = v48;
          v42[1] = v47;
          return __swift_destroy_boxed_opaque_existential_1(v40);
        }

        if (v31 == 3)
        {
          v69 = 3;
          sub_1DEEFA154();
          v32 = v59;
          sub_1DEF8E178();
          v33 = v54;
          v34 = sub_1DEF8E1D8();
          v43 = v32;
          v44 = v34;
          v46 = v45;
          (*(v58 + 8))(v43, v33);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v47 = v46;
          v48 = v44;
        }

        else
        {
          v69 = 4;
          sub_1DEEFA100();
          sub_1DEF8E178();
          (*(v56 + 8))(v28, v57);
          (*(v19 + 8))(v22, v18);
          swift_unknownObjectRelease();
          v48 = 0;
          v47 = 3;
        }
      }

      v40 = v63;
      v42 = v60;
      goto LABEL_17;
    }

    v35 = sub_1DEF8DF68();
    swift_allocError();
    v37 = v36;
    v38 = v22;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v37 = &type metadata for PairingRelationship.State;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v19 + 8))(v38, v18);
    swift_unknownObjectRelease();
  }

  v40 = v63;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

BOOL sub_1DEE223CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1DEF8DF68();
  v24 = *(v13 - 8);
  v14 = *(v24 + 64);
  MEMORY[0x1EEE9AC00]();
  v25 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEE1EA18(0, &qword_1ED7860B0, 0x1E695DFB0);
  sub_1DEE22CCC(a1, v16, a2, a5, a6, v16, &v26, a7);
  if (!v7)
  {
    goto LABEL_7;
  }

  v26 = v7;
  v17 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v18 = v25;
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v19 = v24;
  if ((*(v24 + 88))(v18, v13) != *MEMORY[0x1E69E6AF8])
  {
    (*(v19 + 8))(v18, v13);
LABEL_7:

    return v7 == 0;
  }

  (*(v19 + 96))(v18, v13);
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  v21 = sub_1DEF8DF58();
  (*(*(v21 - 8) + 8))(&v18[v20], v21);

  return v7 == 0;
}

void *sub_1DEE2262C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DEE22B84(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC8, &unk_1DEF95E90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Zone.ID.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE51F8, &qword_1DEF963C8);
  v18 = *(v6 - 8);
  v7 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24084();
  sub_1DEF8E848();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v18;
    v20 = 0;
    v1[2] = sub_1DEF8E1D8();
    v1[3] = v12;
    v19 = 1;
    v14 = sub_1DEF8E1D8();
    v16 = v15;
    (*(v11 + 8))(v9, v6);
    v3[4] = v14;
    v3[5] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1DEE22944(uint64_t a1)
{
  v3 = v1;
  result = sub_1DEE24590();
  if (!v2)
  {
    v23 = 0;
    if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v22, &v19), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
    {

      sub_1DEE117C0(v22, &v19);
      return swift_dynamicCast();
    }

    else
    {
      v6 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF907F0;
      *&v19 = v1[1];
      v8 = v19;

      v9 = sub_1DEF8E2E8();
      v11 = v10;
      *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(inited + 64) = sub_1DEE2453C();
      v12 = swift_allocObject();
      *(inited + 32) = v12;
      *(v12 + 16) = v9;
      *(v12 + 24) = v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = 0;
      *&v19 = v6;
      sub_1DEE2262C(inited);
      v13 = v19;
      sub_1DEE12F7C(v22, v20);
      v14 = v3[3];
      v15 = *(v3 + 32);
      v16 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
      *&v19 = v13;
      *(&v19 + 1) = v16;
      v20[4] = v14;
      v21 = v15;
      sub_1DEE1DC98();
      v18 = swift_allocObject();
      sub_1DEE1DCEC(&v19, v18 + 16);
      sub_1DEF8DBC8();
      sub_1DEE1EBB4(&v19);
      return __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  return result;
}

void *sub_1DEE22B84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC8, &unk_1DEF95E90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DEE22CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v37 = a2;
  v43 = a3;
  v36 = a7;
  v12 = sub_1DEF8DDC8();
  v35 = *(v12 - 8);
  v13 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v15 = &v35 - v14;
  v16 = sub_1DEF8E888();
  if (v17)
  {
    v18 = sub_1DEF8E868();
    v19 = MEMORY[0x1E69E6158];
    v41 = MEMORY[0x1E69E6158];
    *&v40 = v18;
    *(&v40 + 1) = v20;
  }

  else
  {
    v39 = MEMORY[0x1E69E6530];
    *&v38 = v16;
    sub_1DEE117C0(&v38, &v40);
    v19 = v41;
  }

  __swift_project_boxed_opaque_existential_1(&v40, v19);
  v21 = [a4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE117C0(&v38, v42);
    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_1DEE12F7C(v42, &v40);
    v22 = swift_dynamicCast();
    v23 = *(*(a6 - 8) + 56);
    if (v22)
    {
      v24 = *(a6 - 8);
      v23(v15, 0, 1, a6);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return (*(v24 + 32))(v36, v15, a6);
    }

    else
    {
      v23(v15, 1, 1, a6);
      (*(v35 + 8))(v15, v12);
      v31 = sub_1DEF8DF68();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v33 = v37;

      sub_1DEF8DF48();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v42);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v26 = sub_1DEF8DF68();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5260, &qword_1DEF975C0) + 48);
    v28[3] = a5;
    v28[4] = a8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);

    sub_1DEF8DF48();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF0], v26);
    return swift_willThrow();
  }
}

uint64_t sub_1DEE23100@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t *Zone.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5208, &qword_1DEF963D8);
  v5 = *(v14 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24180();
  sub_1DEF8E848();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for Zone.ID();
    v16 = 0;
    sub_1DEE244C8(&qword_1ECDE2E98, type metadata accessor for Zone.ID);
    v11 = v14;
    sub_1DEF8E1F8();
    v1[2] = v15;
    v16 = 1;
    sub_1DEE23F00();
    sub_1DEF8E1F8();
    (*(v10 + 8))(v8, v11);
    *(v1 + 3) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t ProtocolVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A40, &qword_1DEF90588);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24474();
  sub_1DEF8E848();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1DEF8E218();
    v15 = 1;
    v12 = sub_1DEF8E218();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DEE235E0()
{
  result = sub_1DEE23A88(&qword_1ED7860B8, 0x1E695DF20);
  if (!v1)
  {
    v3 = *v0;
    v4 = v0[6];
    v5 = *(v0 + 56);
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    swift_getWitnessTable();
    return sub_1DEF8E238();
  }

  return result;
}

uint64_t sub_1DEE236E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1DEE1EA18(0, &qword_1ED786078, 0x1E695DEC8);
  sub_1DEE12F7C((v1 + 2), v15);
  if (swift_dynamicCast())
  {
    v4 = *v1;
    v5 = v1[6];
    v6 = *(v1 + 56);
    a1[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a1[4] = sub_1DEE247F0();
    v7 = swift_allocObject();
    *a1 = v7;
    *(v7 + 16) = v4;
    *(v7 + 24) = 0;
    *(v7 + 32) = v14;
    *(v7 + 40) = v5;
    *(v7 + 48) = v6;
  }

  else
  {
    v9 = sub_1DEF8DF68();
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v11 = v3;
    v13 = *v1;

    sub_1DEF8DF48();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6AF8], v9);
    return swift_willThrow();
  }
}

uint64_t sub_1DEE2386C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DEE2393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEE239C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  result = sub_1DEE22CCC(a1, MEMORY[0x1E69E6158], a2, a5, a6, MEMORY[0x1E69E6158], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DEE23A88(unint64_t *a1, uint64_t *a2)
{
  v3 = sub_1DEE1EA18(0, a1, a2);
  sub_1DEE12F7C((v2 + 2), v11);
  if (swift_dynamicCast())
  {
    return v10;
  }

  v5 = sub_1DEF8DF68();
  swift_allocError();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  *v7 = v3;
  v9 = *v2;

  sub_1DEF8DF48();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6AF8], v5);
  return swift_willThrow();
}

unint64_t sub_1DEE23BE4()
{
  result = qword_1ECDE2CA0;
  if (!qword_1ECDE2CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBC680(&qword_1ECDE2E98, type metadata accessor for Zone.ID);
    sub_1DEEBC680(&unk_1ECDE2E80, type metadata accessor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CA0);
  }

  return result;
}

uint64_t sub_1DEE23CD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DEE23D14(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1DEE23D60()
{
  result = qword_1ECDE33E0;
  if (!qword_1ECDE33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

ReplicatorEngine::DeviceType_optional __swiftcall DeviceType.init(rawValue:)(Swift::Int64 rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1DEE23E58()
{
  result = qword_1ECDE35C0;
  if (!qword_1ECDE35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35C0);
  }

  return result;
}

unint64_t sub_1DEE23EAC()
{
  result = qword_1ECDE35B8;
  if (!qword_1ECDE35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35B8);
  }

  return result;
}

unint64_t sub_1DEE23F00()
{
  result = qword_1ECDE3460;
  if (!qword_1ECDE3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3460);
  }

  return result;
}

unint64_t sub_1DEE23F54()
{
  result = qword_1ECDE3E98;
  if (!qword_1ECDE3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E98);
  }

  return result;
}

unint64_t sub_1DEE23FDC()
{
  result = qword_1ECDE35F8;
  if (!qword_1ECDE35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35F8);
  }

  return result;
}

unint64_t sub_1DEE24030()
{
  result = qword_1ECDE33C0;
  if (!qword_1ECDE33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33C0);
  }

  return result;
}

unint64_t sub_1DEE24084()
{
  result = qword_1ECDE2EC0;
  if (!qword_1ECDE2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EC0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DEE2416C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DEE1BFA0(a1, a2);
  }

  return a1;
}

unint64_t sub_1DEE24180()
{
  result = qword_1ECDE2ED8;
  if (!qword_1ECDE2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2ED8);
  }

  return result;
}

unint64_t sub_1DEE241D4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6C6F636F746F7270;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x73656E6F7ALL;
      break;
    case 6:
      result = 0x546567617373656DLL;
      break;
    case 7:
      result = 0x746E656449736469;
      break;
    case 8:
      result = 0x6E6974656B72616DLL;
      break;
    case 9:
      result = 0x54746375646F7270;
      break;
    case 10:
      result = 0x49616E6F73726570;
      break;
    case 11:
      result = 0x754E6C6169726573;
      break;
    case 12:
      result = 0x656372756F537369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEE24444(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

unint64_t sub_1DEE24474()
{
  result = qword_1ECDE3488;
  if (!qword_1ECDE3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3488);
  }

  return result;
}

uint64_t sub_1DEE244C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEE2453C()
{
  result = qword_1ED786090;
  if (!qword_1ED786090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786090);
  }

  return result;
}

uint64_t sub_1DEE24590()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v5 = sub_1DEF8DF68();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v7 = MEMORY[0x1E69E7CA0] + 8;
    v9 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v11 = sub_1DEF8E2E8();
    v13 = v12;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v1;
    *(v14 + 40) = 0;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6B08], v5);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    result = swift_unknownObjectRelease();
    v0[1] = v1 + 1;
  }

  return result;
}

uint64_t sub_1DEE24788()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t sub_1DEE247F0()
{
  result = qword_1ED786088;
  if (!qword_1ED786088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786088);
  }

  return result;
}

uint64_t sub_1DEE24850(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = *(*a2 + 24);
  v6 = v4 == v2[2] && v5 == v2[3];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (*(v3 + 32) == v2[4] && *(v3 + 40) == v2[5])
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEE248D4()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  v2 = v1[2];
  v3 = v1[3];
  sub_1DEF8D9B8();
  v4 = v1[4];
  v5 = v1[5];
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEE24964()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x656369766564;
  if (*v0 != 2)
  {
    v2 = 0x73726556656E6F7ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DEE249EC()
{
  if (*v0)
  {
    return 0x6D756D696E696DLL;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_1DEE24A20()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x615272656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_1DEE24A78()
{
  if (*v0)
  {
    result = 0x4449746E65696C63;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DEE24AA8()
{
  if (*v0)
  {
    result = 0x6C6F636F746F7270;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1DEE24AE4(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MessageType.ID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57D0, &qword_1DEF99A78);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24D8C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1DEF8E1D8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DEF8E1D8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DEE24D8C()
{
  result = qword_1ECDE3588;
  if (!qword_1ECDE3588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3588);
  }

  return result;
}

uint64_t MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57E0, &qword_1DEF99A88);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25008();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1DEE2505C();
  sub_1DEF8E1F8();
  v11 = *(&v18 + 1);
  v12 = v20;
  v16 = v19;
  v17 = v18;
  v21 = 1;
  sub_1DEE23F00();
  sub_1DEF8E1F8();
  (*(v6 + 8))(v9, v5);
  v13 = v18;
  v14 = v16;
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DEE25008()
{
  result = qword_1ECDE35A0;
  if (!qword_1ECDE35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35A0);
  }

  return result;
}

unint64_t sub_1DEE2505C()
{
  result = qword_1ECDE3548;
  if (!qword_1ECDE3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3548);
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

uint64_t sub_1DEE250C4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE25128(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEE251CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1DEE2524C()
{
  result = qword_1ECDE2C88;
  if (!qword_1ECDE2C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0768(&qword_1ECDE34D8, type metadata accessor for ZoneVersion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C88);
  }

  return result;
}

uint64_t sub_1DEE25308(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1DEE25328(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_1DEE25328(int a1, int a2, int a3, id a4)
{
  v4 = [a4 allKeys];
  sub_1DEF8DAD8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5268, &qword_1DEF975C8);
  sub_1DEE25424();
  v5 = sub_1DEF8DA28();

  return v5;
}

unint64_t sub_1DEE25424()
{
  result = qword_1ED7860C0;
  if (!qword_1ED7860C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE5268, &qword_1DEF975C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860C0);
  }

  return result;
}

uint64_t sub_1DEE25488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_1DEE12F7C(a1, v6);
  if (swift_dynamicCast())
  {
    sub_1DEF8E878();
  }

  else if (swift_dynamicCast())
  {
    sub_1DEF8E898();
  }

  else
  {
    (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1DEE25580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  return sub_1DEE25488(a1, *(v2 + 16), a2);
}

uint64_t ZoneVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BA0, &qword_1DEF94E88);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BA8, &qword_1DEF94E90);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BB0, &unk_1DEF94E98);
  v57 = *(v12 - 8);
  v13 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x1EEE9AC00])();
  v15 = &v48 - v14;
  v16 = type metadata accessor for ZoneVersion();
  v17 = *(*(v16 - 8) + 64);
  v18 = (MEMORY[0x1EEE9AC00])();
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1DEE25C44();
  v25 = v58;
  sub_1DEF8E848();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v16;
  v49 = v20;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1DEF8E228();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1DEE25E0C();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1DEF8DF68();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v37 = v58;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1DEF048FC();
    v33 = v27;
    sub_1DEF8E178();
    v34 = v57;
    v42 = v26;
    v43 = sub_1DEF8D3F8();
    sub_1DEE1E37C(&qword_1ECDE3630);
    v44 = v49;
    v45 = v53;
    sub_1DEF8E1F8();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1DEE260C4(v44, v50);
  }

  else
  {
    v64 = 0;
    sub_1DEE25E48();
    sub_1DEF8E178();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = sub_1DEF8D3F8();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1DEE260C4(v46, v42);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t type metadata accessor for ZoneVersion()
{
  result = qword_1ECDE34C8;
  if (!qword_1ECDE34C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEE25C44()
{
  result = qword_1ECDE3528;
  if (!qword_1ECDE3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3528);
  }

  return result;
}

uint64_t sub_1DEE25C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974706D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1752392040 && a2 == 0xE400000000000000)
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

uint64_t getEnumTagSinglePayload for ProtocolVersion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DEE25E14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DEE25E48()
{
  result = qword_1ECDE34F8;
  if (!qword_1ECDE34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34F8);
  }

  return result;
}

void sub_1DEE25EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1DEE1EA18(0, &qword_1ED7860B8, 0x1E695DF20);
  v17 = a5 & 1;
  sub_1DEE22CCC(a2, v16, a3, a6, a7, v16, v23, a9);
  if (!v9)
  {
    v18 = v23[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    *(inited + 56) = a7;
    *(inited + 64) = a9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a2, a7);
    v23[0] = a3;
    v21 = v18;

    sub_1DEE2262C(inited);
    v23[1] = a4;
    v24 = v17;
    v25 = v21;
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    v22 = v21;
    swift_getWitnessTable();
    sub_1DEF8E238();
  }
}

uint64_t sub_1DEE26094()
{
  if (*v0)
  {
    result = 1752392040;
  }

  else
  {
    result = 0x7974706D65;
  }

  *v0;
  return result;
}

uint64_t sub_1DEE260C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine19PairingRelationshipV5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t PairingRelationship.State.description.getter()
{
  v1 = v0[1];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6576697463616E69;
      }

      goto LABEL_8;
    }

    return 0x646572696170;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x676E6972696170;
      }

LABEL_8:
      MEMORY[0x1E12CB180](*v0);
      MEMORY[0x1E12CB180](41, 0xE100000000000000);
      return 0x6E6974617267696DLL;
    }

    return 0x6375646F72746E69;
  }
}

uint64_t type metadata accessor for DeviceDescriptor()
{
  result = qword_1ECDE3440;
  if (!qword_1ECDE3440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProtocolVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8DF28();

  v3 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v3);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
  v4 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v4);

  return 0x3A746E6572727563;
}

uint64_t sub_1DEE263B0()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6578544;
  v4 = 0x6863746177;
  if (v1 != 4)
  {
    v4 = 30324;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6513005;
  if (v1 != 1)
  {
    v5 = 0x656E6F6870;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DEE26458(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
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

uint64_t ScreenDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v10 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](120, 0xE100000000000000);
  v6 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](v6);

  MEMORY[0x1E12CB180](64, 0xE100000000000000);
  v7 = sub_1DEF8DBA8();
  MEMORY[0x1E12CB180](v7);

  result = v10;
  if ((v5 & 1) == 0)
  {
    v9 = sub_1DEF8DBA8();
    MEMORY[0x1E12CB180](v9);

    MEMORY[0x1E12CB180](114, 0xE100000000000000);

    return v10;
  }

  return result;
}

uint64_t sub_1DEE265AC()
{
  v1 = *v0;
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 40);

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](*(v1 + 16), *(v1 + 24));
  return v3;
}

uint64_t Zone.description.getter()
{
  v1 = v0[2];
  v5 = v1[4];
  v6 = v1[5];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](v5, v6);

  MEMORY[0x1E12CB180](8250, 0xE200000000000000);
  v2 = v0[3];
  v3 = v0[4];
  sub_1DEE266C0();
  return 0;
}

uint64_t sub_1DEE266C0()
{
  sub_1DEF8DF28();

  v0 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v0);

  MEMORY[0x1E12CB180](0x756D696E696D203BLL, 0xEB00000000203A6DLL);
  v1 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v1);

  MEMORY[0x1E12CB180](0x3A746E6572727563, 0xE900000000000020);
}

uint64_t sub_1DEE267F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DEE2683C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  return 540697705;
}

uint64_t sub_1DEE268EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  sub_1DEE266C0();
  return 0;
}

uint64_t sub_1DEE26A24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DEE26A64(uint64_t a1)
{
  v3 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE26C0C(v3, v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return 0x7974706D65;
  }

  (*(v5 + 32))(v9, v12, v4);
  sub_1DEE1E37C(&unk_1ECDE3620);
  v14 = sub_1DEF8E2E8();
  (*(v5 + 8))(v9, v4);
  return v14;
}

uint64_t sub_1DEE26C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEE26C70(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PairingRelationship();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v7 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v63 - v11;
  v13 = sub_1DEF8D788();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v2[29];
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1DEF8D7B8();
  (*(v14 + 8))(v18, v13);
  if (v19)
  {
    v64 = v4;
    if (qword_1ECDE2E58 == -1)
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
  v21 = sub_1DEF8D508();
  __swift_project_value_buffer(v21, qword_1ECDF6028);
  sub_1DEEACA70(a1, v12, type metadata accessor for ReplicatorMessage.Handshake.Request);

  v22 = sub_1DEF8D4D8();
  v23 = sub_1DEF8DCB8();

  v24 = os_log_type_enabled(v22, v23);
  v67 = a1;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v72 = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v72);
    *(v25 + 12) = 2080;
    sub_1DEEACA70(v12, v9, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v27 = v66;
    v28 = sub_1DEF8D988();
    v30 = v29;
    sub_1DEE273A0(v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v31 = sub_1DEE12A5C(v28, v30, &v72);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1DEE0F000, v22, v23, "(%{public}s) Received handshake request: %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v26, -1, -1);
    v32 = v25;
    a1 = v67;
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v27 = v66;
  }

  v33 = a1 + *(v27 + 24);
  v35 = *v33;
  v34 = *(v33 + 8);
  if (v2[32])
  {
    v36 = v2[32];
    if (v35 != v2[31])
    {
      goto LABEL_18;
    }
  }

  else
  {
    v37 = v2[22];
    v38 = v2[23];
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 16))(ObjectType, v38);
    if (v41)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xD000000000000016;
    }

    if (v41)
    {
      v36 = v41;
    }

    else
    {
      v36 = 0x80000001DEF9BCA0;
    }

    if (v35 != v42)
    {
      goto LABEL_18;
    }
  }

  if (v36 == v34)
  {

    goto LABEL_22;
  }

LABEL_18:
  v43 = sub_1DEF8E4E8();

  if (v43)
  {

    v44 = sub_1DEF8D4D8();
    v45 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v72 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v72);
      _os_log_impl(&dword_1DEE0F000, v44, v45, "(%{public}s) Sending new handshake request to lower-ordered device", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      v27 = v66;
      MEMORY[0x1E12CCD70](v47, -1, -1);
      MEMORY[0x1E12CCD70](v46, -1, -1);
    }

    v48 = v64;
    v49 = (v67 + *(v27 + 20));
    v50 = v49[1];
    *&v72 = *v49;
    *(&v72 + 1) = v50;
    sub_1DEE4F8C0(v72, v50);
    v51 = v65;
    sub_1DEE5F828(v33, &v72, 0, 1, v65);
    sub_1DEE4F8D4(v72, *(&v72 + 1));
    v53 = *(v33 + 160);
    v52 = *(v33 + 168);
    v54 = *(v33 + 48);
    *&v72 = v35;
    *(&v72 + 1) = v34;
    v73 = v53;
    v74 = v52;
    v75 = v54;
    v76 = *(v33 + 32);
    v55 = (v51 + *(v48 + 32));
    v57 = v55[1];
    v70 = *v55;
    v56 = v70;
    v71 = v57;
    v68 = 0;
    v69 = 0;

    sub_1DEE4F8C0(v56, v57);
    sub_1DEE76BD8(&v72, &v70, &v68);
    sub_1DEE4F8D4(v70, v71);

    return sub_1DEE273A0(v51, type metadata accessor for PairingRelationship);
  }

LABEL_22:

  v59 = sub_1DEF8D4D8();
  v60 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v72 = v62;
    *v61 = 136446210;
    *(v61 + 4) = sub_1DEE12A5C(v2[66], v2[67], &v72);
    _os_log_impl(&dword_1DEE0F000, v59, v60, "(%{public}s) Sending handshake response to higher-ordered device", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x1E12CCD70](v62, -1, -1);
    MEMORY[0x1E12CCD70](v61, -1, -1);
  }

  return sub_1DEE27C60(v67);
}

uint64_t sub_1DEE273A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27400(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE274C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEE27524()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 88);
  v4 = sub_1DEF8DDC8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15[-1] - v6;
  v8 = *(v0 + *(v1 + 152));
  LOBYTE(v15[0]) = 0;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v9 = *(v3 - 8);
  result = (*(v9 + 48))(v7, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v2 + 104) + 72))(v15, v3);
    (*(v9 + 8))(v7, v3);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v13 = (*(v12 + 24))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v13;
  }

  return result;
}

unint64_t sub_1DEE276F8()
{
  result = qword_1ECDE2EE8;
  if (!qword_1ECDE2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EE8);
  }

  return result;
}

uint64_t sub_1DEE2775C()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEE277D4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE27884(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

double sub_1DEE2789C@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEE278FC@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D6D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID + 8];
  if (v15)
  {
    *a2 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_localDeviceID];
    a2[1] = v15;
  }

  else
  {
    if ((a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_lock_fetchingLocalDeviceID] = 1;
      v22 = *&a1[OBJC_IVAR____TtC16ReplicatorEngine21ConcreteIDSDependency_identityFetchQueue];
      v23 = v12;
      v24 = 0;
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      aBlock[4] = sub_1DEF3238C;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DEE3F0C0;
      aBlock[3] = &block_descriptor_21_0;
      v21 = _Block_copy(aBlock);
      v17 = a1;
      sub_1DEF8D6B8();
      aBlock[7] = MEMORY[0x1E69E7CC0];
      v20[1] = sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      v18 = v21;
      MEMORY[0x1E12CB4D0](0, v14, v8, v21);
      _Block_release(v18);
      (*(v5 + 8))(v8, v4);
      (*(v10 + 8))(v14, v23);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}