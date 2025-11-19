uint64_t sub_1B89C0770(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1B89DCDC4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1B8A23884();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B89C089C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92060, &qword_1B8A26528);
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

void sub_1B89C0990(void *a1)
{
  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91268);
  v3 = a1;
  v4 = sub_1B8A23BA4();
  v5 = sub_1B8A24234();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B89A7000, v4, v5, "Process was asked to exit. %@", v6, 0xCu);
    sub_1B89A8A78(v7, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v7, -1, -1);
    MEMORY[0x1B8CC5170](v6, -1, -1);
  }

  v10 = sub_1B8A23664();
  v11 = [v10 code];

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    exit(v11);
  }

  __break(1u);
}

BOOL sub_1B89C0B10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A18, &unk_1B8A26450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_1B8A23884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1B8A23EF4();
  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    v15 = swift_dynamicCast();
    (*(v5 + 56))(v3, v15 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v11, v3, v4);
      sub_1B8A23874();
      sub_1B8A23824();
      v17 = v16;
      v18 = *(v5 + 8);
      v18(v9, v4);
      v18(v11, v4);
      return v17 < 259200.0;
    }
  }

  else
  {
    sub_1B89A8A78(v22, &unk_1EBA91F50, &unk_1B8A26500);
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_1B89A8A78(v3, &qword_1EBA91A18, &unk_1B8A26450);
  return 0;
}

void sub_1B89C0E14()
{
  v0 = sub_1B8A23884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_1B8A23EF4();
  v8 = [v6 BOOLForKey_];

  if (v8)
  {
    return;
  }

  if (sub_1B89C0B10())
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8A23BC4();
    __swift_project_value_buffer(v9, qword_1EBA91268);
    v28 = sub_1B8A23BA4();
    v10 = sub_1B8A24244();
    if (os_log_type_enabled(v28, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B89A7000, v28, v10, "Sticker container was recently verified. Skipping this check.", v11, 2u);
      MEMORY[0x1B8CC5170](v11, -1, -1);
    }

LABEL_21:
    v26 = v28;

    return;
  }

  v12 = sub_1B89DEF00();
  if (v12)
  {
    v13 = v12;
    if ((sub_1B89DEB30(0xD000000000000016, 0x80000001B8A29FC0, v12) & 1) == 0 || (sub_1B89DEB30(0xD00000000000001DLL, 0x80000001B8A29FE0, v13) & 1) == 0 || (sub_1B89DEB30(0xD000000000000024, 0x80000001B8A2A000, v13) & 1) == 0)
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v21 = sub_1B8A23BC4();
      __swift_project_value_buffer(v21, qword_1EBA91268);
      v22 = sub_1B8A23BA4();
      v23 = sub_1B8A24244();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1B89A7000, v22, v23, "Sticker container failed launch verification. Will repair.", v24, 2u);
        MEMORY[0x1B8CC5170](v24, -1, -1);
      }

      v25 = [v5 standardUserDefaults];
      v28 = sub_1B8A23EF4();
      [v25 setBool:1 forKey:v28];

      goto LABEL_21;
    }
  }

  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v14 = sub_1B8A23BC4();
  __swift_project_value_buffer(v14, qword_1EBA91268);
  v15 = sub_1B8A23BA4();
  v16 = sub_1B8A24244();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1B89A7000, v15, v16, "Sticker container passed launch verification.", v17, 2u);
    MEMORY[0x1B8CC5170](v17, -1, -1);
  }

  v18 = [v5 standardUserDefaults];
  sub_1B8A23874();
  v19 = sub_1B8A23834();
  (*(v1 + 8))(v4, v0);
  v20 = sub_1B8A23EF4();
  [v18 setObject:v19 forKey:v20];
}

void sub_1B89C12D8()
{
  v0 = sub_1B8A23884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  v7 = sub_1B8A23EF4();
  [v6 setBool:0 forKey:v7];

  v8 = [v5 standardUserDefaults];
  sub_1B8A23874();
  v9 = sub_1B8A23834();
  (*(v1 + 8))(v4, v0);
  v10 = sub_1B8A23EF4();
  [v8 setObject:v9 forKey:v10];
}

NSObject *sub_1B89C1478()
{
  v0 = sub_1B8A23784();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoreDataDataMapper(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_1B8A23EF4();
  v8 = sub_1B8A23EF4();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1B8A23724();

    v10 = objc_allocWithZone(MEMORY[0x1E695D638]);
    v11 = sub_1B8A236E4();
    v12 = [v10 initWithContentsOfURL_];

    if (v12)
    {
      (*(v1 + 8))(v4, v0);
    }

    else
    {
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v17 = sub_1B8A23BC4();
      __swift_project_value_buffer(v17, qword_1EBA91268);
      v12 = sub_1B8A23BA4();
      v18 = sub_1B8A24234();
      if (os_log_type_enabled(v12, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B89A7000, v12, v18, "Could not load the database model", v19, 2u);
        MEMORY[0x1B8CC5170](v19, -1, -1);
      }

      sub_1B89C353C();
      swift_allocError();
      *v20 = 9;
      swift_willThrow();

      (*(v1 + 8))(v4, v0);
    }
  }

  else
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8A23BC4();
    __swift_project_value_buffer(v13, qword_1EBA91268);
    v12 = sub_1B8A23BA4();
    v14 = sub_1B8A24234();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B89A7000, v12, v14, "Could not locate the database model", v15, 2u);
      MEMORY[0x1B8CC5170](v15, -1, -1);
    }

    sub_1B89C353C();
    swift_allocError();
    *v16 = 8;
    swift_willThrow();
  }

  return v12;
}

id sub_1B89C1824(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v93) = a3;
  v96 = a2;
  v4 = sub_1B8A23694();
  v88 = *(v4 - 8);
  v89 = v4;
  v5 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v83[-v9];
  v10 = sub_1B8A23784();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v85 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = &v83[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v83[-v17];
  v18 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v83[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v83[-v24];
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v83[-v26];
  v28 = v11[7];
  v28(&v83[-v26], 1, 2, v10);
  v29 = sub_1B89F437C(a1, v27);
  sub_1B89C3B20(v27, type metadata accessor for CoreDataDataMapper.StoreType);
  v30 = 0x1E695D668;
  v84 = v29 & v93;
  if ((v29 & v93 & 1) == 0)
  {
    v30 = 0x1E695D688;
  }

  v31 = objc_allocWithZone(*v30);
  v32 = sub_1B8A23EF4();
  v93 = [v31 initWithName:v32 managedObjectModel:v96];

  v91 = a1;
  sub_1B89ABEA8(a1, v25, type metadata accessor for CoreDataDataMapper.StoreType);
  v92 = v11;
  v33 = v11[6];
  v96 = v10;
  v34 = v33(v25, 2, v10);
  if (!v34)
  {
    v39 = v92;
    v36 = v95;
    v40 = v25;
    v37 = v96;
    (v92[4])(v95, v40, v96);
    goto LABEL_11;
  }

  if (v34 != 1)
  {
    v37 = v96;
    v28(v86, 1, 1, v96);
    (*(v88 + 104))(v87, *MEMORY[0x1E6968F70], v89);
    v36 = v95;
    sub_1B8A23774();
LABEL_10:
    v39 = v92;
LABEL_11:
    v41 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v42 = sub_1B8A236E4();
    v43 = [v41 initWithURL_];

    sub_1B89ABEA8(v91, v22, type metadata accessor for CoreDataDataMapper.StoreType);
    v44 = v33(v22, 2, v37);
    if (v44)
    {
      if (v44 != 1)
      {
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v74 = sub_1B8A23BC4();
        __swift_project_value_buffer(v74, qword_1EBA91268);
        v75 = sub_1B8A23BA4();
        v76 = sub_1B8A24244();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1B89A7000, v75, v76, "Using in-memory database", v77, 2u);
          MEMORY[0x1B8CC5170](v77, -1, -1);
        }

        goto LABEL_32;
      }

      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v45 = sub_1B8A23BC4();
      __swift_project_value_buffer(v45, qword_1EBA91268);
      v46 = sub_1B8A23BA4();
      v47 = sub_1B8A24244();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1B89A7000, v46, v47, "Using shared database", v48, 2u);
        MEMORY[0x1B8CC5170](v48, -1, -1);
      }

      if (v84)
      {
        v49 = sub_1B8A23BA4();
        v50 = sub_1B8A24244();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1B89A7000, v49, v50, "Configuring CloudKit", v51, 2u);
          MEMORY[0x1B8CC5170](v51, -1, -1);
        }

        sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
        v52 = sub_1B8A243D4();
        [v43 setOption:v52 forKey:*MEMORY[0x1E695D3C0]];

        v53 = sub_1B8A23EF4();
        [v43 setConfiguration_];

        v54 = objc_allocWithZone(MEMORY[0x1E695D680]);
        v55 = sub_1B8A23EF4();
        v56 = [v54 initWithContainerIdentifier_];

        v57 = sub_1B8A23EF4();
        [v56 setApsConnectionMachServiceName_];

        [v56 setUseDeviceToDeviceEncryption_];
        v58 = sub_1B8A243E4();
        [v56 setCkAssetThresholdBytes_];

        [v43 setCloudKitContainerOptions_];
      }
    }

    else
    {
      v59 = v90;
      (v39[4])(v90, v22, v37);
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v60 = sub_1B8A23BC4();
      __swift_project_value_buffer(v60, qword_1EBA91268);
      v61 = v85;
      (v39[2])(v85, v59, v37);
      v62 = sub_1B8A23BA4();
      v63 = sub_1B8A24244();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v91 = v43;
        v65 = v61;
        v66 = v64;
        v67 = swift_slowAlloc();
        v97 = v67;
        *v66 = 136315138;
        sub_1B89ADC34(&qword_1EBA91468, MEMORY[0x1E6968FB0]);
        v68 = sub_1B8A24934();
        v70 = v69;
        v71 = v39[1];
        v72 = v65;
        v43 = v91;
        v71(v72, v96);
        v73 = sub_1B89A907C(v68, v70, &v97);

        *(v66 + 4) = v73;
        _os_log_impl(&dword_1B89A7000, v62, v63, "Using custom database (%s)", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v67);
        MEMORY[0x1B8CC5170](v67, -1, -1);
        MEMORY[0x1B8CC5170](v66, -1, -1);

        v71(v90, v96);
        v39 = v92;
        v37 = v96;
      }

      else
      {

        v78 = v39[1];
        v78(v61, v37);
        v78(v59, v37);
      }

      v36 = v95;
    }

    sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
    v75 = sub_1B8A243D4();
    [v43 setOption:v75 forKey:*MEMORY[0x1E695D3C0]];
LABEL_32:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1B8A26280;
    *(v79 + 32) = v43;
    sub_1B89AB538(0, &unk_1EBA91118, 0x1E695D6C8);
    v80 = v43;
    v81 = sub_1B8A240E4();

    v38 = v93;
    [v93 setPersistentStoreDescriptions_];

    (v39[1])(v36, v37);
    return v38;
  }

  v35 = v94;
  v36 = v95;
  sub_1B89B8558(v95);
  v37 = v96;
  if (!v35)
  {
    v94 = 0;
    goto LABEL_10;
  }

  v38 = v93;

  return v38;
}

void sub_1B89C2334(void *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_content() && ((sub_1B89DF2F8() & 1) != 0 || (sub_1B89DF3B0() & 1) != 0))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v22[0] = 0;
      v4 = a1;
      if ([v3 initializeCloudKitSchemaWithOptions:0 error:v22])
      {
        v5 = qword_1EBA91260;
        v6 = v22[0];
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_1B8A23BC4();
        __swift_project_value_buffer(v7, qword_1EBA91268);
        v8 = sub_1B8A23BA4();
        v9 = sub_1B8A24214();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_1B89A7000, v8, v9, "[Internal] CloudKit schema initialized", v10, 2u);
          MEMORY[0x1B8CC5170](v10, -1, -1);
        }
      }

      else
      {
        v11 = v22[0];
        v12 = sub_1B8A23674();

        swift_willThrow();
        if (qword_1EBA91260 != -1)
        {
          swift_once();
        }

        v13 = sub_1B8A23BC4();
        __swift_project_value_buffer(v13, qword_1EBA91268);
        v14 = v12;
        v15 = sub_1B8A23BA4();
        v16 = sub_1B8A24234();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          v19 = v12;
          v20 = _swift_stdlib_bridgeErrorToNSError();
          *(v17 + 4) = v20;
          *v18 = v20;
          _os_log_impl(&dword_1B89A7000, v15, v16, "[Internal] Could not initialize CloudKit schema: %@", v17, 0xCu);
          sub_1B89A8A78(v18, &qword_1EBA919E0, &qword_1B8A262D0);
          MEMORY[0x1B8CC5170](v18, -1, -1);
          MEMORY[0x1B8CC5170](v17, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1B89C2620(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8A24554())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B8CC44E0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1B89BDC58(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1B89C2720(unint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - v8;
  v9 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B8A23784();
  (*(*(v13 - 8) + 56))(v12, 1, 2, v13);
  LOBYTE(a2) = sub_1B89F437C(a2, v12);
  sub_1B89C3B20(v12, type metadata accessor for CoreDataDataMapper.StoreType);
  if (a2)
  {
    if (qword_1EBA913D0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v54 = [qword_1EBA95EF0 nextUnsignedInteger];
      if (qword_1EBA91260 != -1)
      {
        swift_once();
      }

      v14 = sub_1B8A23BC4();
      v15 = __swift_project_value_buffer(v14, qword_1EBA91268);

      v52 = v15;
      v16 = sub_1B8A23BA4();
      v17 = sub_1B8A24224();
      v18 = a1 >> 62;
      if (os_log_type_enabled(v16, v17))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = v54;
        *(v19 + 12) = 2048;
        if (v18)
        {
          v20 = sub_1B8A24554();
        }

        else
        {
          v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v19 + 14) = v20;

        _os_log_impl(&dword_1B89A7000, v16, v17, "Will reindex #%llu with %ld delegate(s)", v19, 0x16u);
        MEMORY[0x1B8CC5170](v19, -1, -1);
      }

      else
      {
      }

      if (v18)
      {
        v26 = sub_1B8A24554();
        if (!v26)
        {
          return;
        }
      }

      else
      {
        v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          return;
        }
      }

      v27 = 0;
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      v51 = a1 & 0xC000000000000001;
      *&v21 = 134218242;
      v49 = v21;
      while (v51)
      {
        v28 = MEMORY[0x1B8CC44E0](v27, a1);
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_34;
        }

LABEL_22:
        v30 = v28;
        v31 = sub_1B8A23BA4();
        v32 = sub_1B8A24214();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = v49;
          *(v33 + 4) = v54;
          *(v33 + 12) = 2112;
          *(v33 + 14) = v30;
          *v34 = v30;
          v35 = v30;
          _os_log_impl(&dword_1B89A7000, v31, v32, "Will initiate reindexing #%llu for %@", v33, 0x16u);
          sub_1B89A8A78(v34, &qword_1EBA919E0, &qword_1B8A262D0);
          MEMORY[0x1B8CC5170](v34, -1, -1);
          MEMORY[0x1B8CC5170](v33, -1, -1);
        }

        v36 = sub_1B8A24184();
        v37 = *(v36 - 8);
        v38 = v55;
        (*(v37 + 56))(v55, 1, 1, v36);
        v39 = swift_allocObject();
        v39[2] = 0;
        v39[3] = 0;
        v41 = v53;
        v40 = v54;
        v39[4] = v30;
        v39[5] = v40;
        sub_1B89C3D6C(v38, v41);
        LODWORD(v38) = (*(v37 + 48))(v41, 1, v36);
        v42 = v30;

        if (v38 == 1)
        {
          sub_1B89A8A78(v41, &qword_1EBA92200, &qword_1B8A28000);
        }

        else
        {
          sub_1B8A24174();
          (*(v37 + 8))(v41, v36);
        }

        v43 = v39[2];
        v44 = v39[3];
        swift_unknownObjectRetain();

        if (v43)
        {
          swift_getObjectType();
          v45 = sub_1B8A24154();
          v47 = v46;
          swift_unknownObjectRelease();
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        sub_1B89A8A78(v55, &qword_1EBA92200, &qword_1B8A28000);
        v48 = swift_allocObject();
        *(v48 + 16) = &unk_1B8A26540;
        *(v48 + 24) = v39;
        if (v47 | v45)
        {
          v56 = 0;
          v57 = 0;
          v58 = v45;
          v59 = v47;
        }

        swift_task_create();

        ++v27;
        if (v29 == v26)
        {
          return;
        }
      }

      if (v27 >= *(v50 + 16))
      {
        goto LABEL_35;
      }

      v28 = *(a1 + 8 * v27 + 32);
      v29 = v27 + 1;
      if (!__OFADD__(v27, 1))
      {
        goto LABEL_22;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  if (qword_1EBA91260 != -1)
  {
    swift_once();
  }

  v22 = sub_1B8A23BC4();
  __swift_project_value_buffer(v22, qword_1EBA91268);
  v23 = sub_1B8A23BA4();
  v24 = sub_1B8A24244();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1B89A7000, v23, v24, "Request to index ignored: this store is not indexable", v25, 2u);
    MEMORY[0x1B8CC5170](v25, -1, -1);
  }
}

id sub_1B89C2E24()
{
  v1 = type metadata accessor for StickerContainer(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(v3 + 20));
  [v6 lock];
  v7 = v0 + *(v1 + 28);
  if (*(v7 + 16))
  {
    if (qword_1EBA91260 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8A23BC4();
    __swift_project_value_buffer(v8, qword_1EBA91268);
    sub_1B89ABEA8(v0, v5, type metadata accessor for StickerContainer);
    v9 = sub_1B8A23BA4();
    v10 = sub_1B8A24234();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136315138;
      v13 = &v5[*(v1 + 28)];
      v14 = *(v13 + 1);
      v15 = v13[16];
      v24[0] = *v13;
      v24[1] = v14;
      v25 = v15;
      sub_1B89C3C6C(v24[0], v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A48, &qword_1B8A26530);
      v16 = sub_1B8A23F44();
      v18 = v17;
      sub_1B89C3B20(v5, type metadata accessor for StickerContainer);
      v19 = sub_1B89A907C(v16, v18, &v26);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_1B89A7000, v9, v10, "Reindexing container not available: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CC5170](v12, -1, -1);
      MEMORY[0x1B8CC5170](v11, -1, -1);
    }

    else
    {

      sub_1B89C3B20(v5, type metadata accessor for StickerContainer);
    }
  }

  else
  {
    v20 = *(v7 + 8);
    v21 = *v7;

    sub_1B89C2720(v22, v0);
  }

  return [v6 unlock];
}

uint64_t sub_1B89C3248()
{
  result = type metadata accessor for StickerContainer(319);
  if (v1 <= 0x3F)
  {
    result = sub_1B89AB538(319, &qword_1EBA91180, 0x1E6996878);
    if (v2 <= 0x3F)
    {
      result = sub_1B8A23BC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B89C3350()
{
  result = sub_1B8A23784();
  if (v1 <= 0x3F)
  {
    result = sub_1B89AB538(319, &qword_1EBA91160, 0x1E695D630);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B89C33FC()
{
  type metadata accessor for CoreDataDataMapper.StoreType(319);
  if (v0 <= 0x3F)
  {
    sub_1B89AB538(319, &qword_1EBA91180, 0x1E6996878);
    if (v1 <= 0x3F)
    {
      sub_1B89C34D8();
      if (v2 <= 0x3F)
      {
        sub_1B89AB538(319, &qword_1EBA91140, 0x1E69E9610);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B89C34D8()
{
  if (!qword_1EBA91100)
  {
    sub_1B89C353C();
    v0 = sub_1B8A24A44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA91100);
    }
  }
}

unint64_t sub_1B89C353C()
{
  result = qword_1EBA91350;
  if (!qword_1EBA91350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91350);
  }

  return result;
}

uint64_t sub_1B89C3590(uint64_t *a1, int a2)
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

uint64_t sub_1B89C35D8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B89C36A0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B89C3E20;

  return sub_1B89BBF0C();
}

uint64_t sub_1B89C374C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B89C3E20;

  return sub_1B89BBD78();
}

uint64_t sub_1B89C3814()
{
  v1 = sub_1B89DEF00();
  if (v1)
  {
    v2 = v1;
    if (sub_1B89DEB30(0xD000000000000016, 0x80000001B8A29FC0, v1) & 1) != 0 && (sub_1B89DEB30(0xD00000000000001DLL, 0x80000001B8A29FE0, v2))
    {
      v3 = sub_1B89DEB30(0xD000000000000024, 0x80000001B8A2A000, v2) ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = sub_1B8A23EF4();
  v7 = [v5 BOOLForKey_];

  if ((v3 & 1) != v7)
  {
    if (v3)
    {
      v8 = [v4 standardUserDefaults];
      v9 = sub_1B8A23EF4();
      [v8 setBool:1 forKey:v9];

      sub_1B89C353C();
      v10 = swift_allocError();
      *v11 = 17;
      sub_1B89C0990(v10);
    }

    sub_1B89C12D8();
  }

  v12 = *(v0 + 8);

  return v12();
}

void *sub_1B89C3A08@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

void *sub_1B89C3A6C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

uint64_t sub_1B89C3B20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B89C3B80()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B89BBE18;

  return sub_1B89BDE54();
}

uint64_t sub_1B89C3C44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B89B4A18(a1, a2);
  }

  return a1;
}

uint64_t sub_1B89C3C58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B89B4A04(a1, a2);
  }

  return a1;
}

void *sub_1B89C3C6C(void *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = result;
  }

  return result;
}

uint64_t sub_1B89C3CAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B89C3E20;

  return sub_1B89BE524(a1, v4, v5, v7, v6);
}

uint64_t sub_1B89C3D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89C3E3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v35 - v8;
  v10 = *(v7 + 48);
  v38 = v1;
  v35[3] = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper5Touch_signposter;
  v36 = v7;
  v11 = sub_1B89A99D4(v35 - v8, "touch spotlight item", 20, 2);
  v37 = v9;
  *&v9[v10] = v11;
  aBlock = 0xD000000000000015;
  v41 = 0x80000001B8A2A1E0;
  sub_1B8A23904();
  sub_1B89C4ECC();
  v12 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v12);

  v13 = v41;
  v35[2] = aBlock;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v14 = sub_1B8A23BC4();
  __swift_project_value_buffer(v14, qword_1ED8303C0);
  v15 = a1;
  v16 = sub_1B8A23BA4();
  v17 = sub_1B8A24224();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[1] = v13;
    v20 = v19;
    aBlock = v19;
    *v18 = 136315138;
    v21 = sub_1B8A24934();
    v23 = sub_1B89A907C(v21, v22, &aBlock);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1B89A7000, v16, v17, "Will touch spotlight items for sticker: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1B8CC5170](v20, -1, -1);
    MEMORY[0x1B8CC5170](v18, -1, -1);
  }

  v24 = objc_allocWithZone(MEMORY[0x1E6964E68]);
  v25 = sub_1B8A23EF4();

  v26 = sub_1B8A240E4();
  v27 = [v24 initWithQueryString:v25 attributes:v26];

  v28 = swift_allocObject();
  *(v28 + 16) = v15;
  v44 = sub_1B89C4F24;
  v45 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1B89C4C50;
  v43 = &block_descriptor_0;
  v29 = _Block_copy(&aBlock);
  v30 = v15;

  [v27 setFoundItemsHandler_];
  _Block_release(v29);
  [v27 start];

  v31 = v37;
  v32 = v39;
  sub_1B89C4F2C(v37, v39);
  sub_1B89AF7B8("touch spotlight item", 20, 2, v32, *(v32 + *(v36 + 48)));

  sub_1B89A8A78(v31, &qword_1EBA91A58, &qword_1B8A29640);
  v33 = sub_1B8A23B14();
  return (*(*(v33 - 8) + 8))(v32, v33);
}

void sub_1B89C4280(unint64_t a1, void *a2)
{
  v47 = sub_1B8A23884();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8A23BC4();
  v9 = __swift_project_value_buffer(v8, qword_1ED8303C0);

  v10 = a2;
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24224();
  v48 = v10;

  v13 = a1 >> 62;
  if (!os_log_type_enabled(v11, v12))
  {

    goto LABEL_8;
  }

  v2 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  aBlock[0] = v14;
  *v2 = 134218242;
  if (v13)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    *(v2 + 4) = i;

    *(v2 + 12) = 2080;
    sub_1B8A23904();
    sub_1B89C4ECC();
    v16 = sub_1B8A24934();
    v18 = sub_1B89A907C(v16, v17, aBlock);

    *(v2 + 14) = v18;
    _os_log_impl(&dword_1B89A7000, v11, v12, "Total %ld spotlight items found for sticker %s", v2, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CC5170](v14, -1, -1);
    MEMORY[0x1B8CC5170](v2, -1, -1);

LABEL_8:
    v11 = v13 ? sub_1B8A24554() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = MEMORY[0x1E69E7CC0];
    v46 = v9;
    if (!v11)
    {
      break;
    }

    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A246D4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v19 = OBJC_IVAR___STKSticker_lastUsedDate;
      v20 = a1;
      v21 = a1 & 0xC000000000000001;
      swift_beginAccess();
      v22 = 0;
      v23 = (v45 + 8);
      do
      {
        if (v21)
        {
          v24 = MEMORY[0x1B8CC44E0](v22, v20);
        }

        else
        {
          v24 = *(v20 + 8 * v22 + 32);
        }

        v25 = v24;
        ++v22;
        v26 = [v24 attributeSet];
        v27 = *&v48[v19];
        sub_1B8A237E4();
        v28 = sub_1B8A23834();
        (*v23)(v7, v47);
        [v26 setLastUsedDate_];

        [v25 setIsUpdate_];
        sub_1B8A246B4();
        v29 = *(aBlock[0] + 16);
        sub_1B8A246E4();
        sub_1B8A246F4();
        sub_1B8A246C4();
      }

      while (v11 != v22);
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v30 = [objc_opt_self() defaultSearchableIndex];
  sub_1B89C4F9C();
  v31 = sub_1B8A240E4();

  v32 = swift_allocObject();
  v33 = v48;
  *(v32 + 16) = v48;
  aBlock[4] = sub_1B89C4FE8;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B89C4BE4;
  aBlock[3] = &block_descriptor_7;
  v34 = _Block_copy(aBlock);
  v35 = v33;

  [v30 indexSearchableItems:v31 completionHandler:v34];
  _Block_release(v34);

  v36 = v35;
  v37 = sub_1B8A23BA4();
  v38 = sub_1B8A24224();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    sub_1B8A23904();
    sub_1B89C4ECC();
    v41 = sub_1B8A24934();
    v43 = sub_1B89A907C(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1B89A7000, v37, v38, "Done touching spotlight items for sticker: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x1B8CC5170](v40, -1, -1);
    MEMORY[0x1B8CC5170](v39, -1, -1);
  }
}

void sub_1B89C482C(NSObject *a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8A23BC4();
    __swift_project_value_buffer(v5, qword_1ED8303C0);
    v6 = a2;
    v7 = a1;
    v8 = sub_1B8A23BA4();
    v9 = sub_1B8A24234();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v28 = v12;
      *v10 = 136315394;
      sub_1B8A23904();
      sub_1B89C4ECC();
      v13 = sub_1B8A24934();
      v15 = sub_1B89A907C(v13, v14, &v28);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2112;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v17;
      *v11 = v17;
      _os_log_impl(&dword_1B89A7000, v8, v9, "Error while touching spotlight item with sticker identifier %s: %@", v10, 0x16u);
      sub_1B89A8A78(v11, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CC5170](v12, -1, -1);
      MEMORY[0x1B8CC5170](v10, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    v18 = sub_1B8A23BC4();
    __swift_project_value_buffer(v18, qword_1ED8303C0);
    v19 = a2;
    oslog = sub_1B8A23BA4();
    v20 = sub_1B8A24214();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136315138;
      sub_1B8A23904();
      sub_1B89C4ECC();
      v23 = sub_1B8A24934();
      v25 = sub_1B89A907C(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B89A7000, oslog, v20, "Done touching sticker spotlight item with sticker identifier %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B8CC5170](v22, -1, -1);
      MEMORY[0x1B8CC5170](v21, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void sub_1B89C4BE4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1B89C4C50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1B89C4F9C();
  v3 = sub_1B8A240F4();

  v2(v3);
}

uint64_t sub_1B89C4CD4()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B89C4E70(v0 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper5Touch_signposter);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F373DB19C5TouchCMa()
{
  result = qword_1EBA91408;
  if (!qword_1EBA91408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B89C4DE0()
{
  result = sub_1B8A23B44();
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

uint64_t sub_1B89C4E70(uint64_t a1)
{
  v2 = type metadata accessor for StickerSignposter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B89C4ECC()
{
  result = qword_1ED82DE78;
  if (!qword_1ED82DE78)
  {
    sub_1B8A23904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DE78);
  }

  return result;
}

uint64_t sub_1B89C4F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B89C4F9C()
{
  result = qword_1EBA91178;
  if (!qword_1EBA91178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91178);
  }

  return result;
}

id _STKTextInputObjCStoreFacade.init()()
{
  v1 = v0;
  v2 = type metadata accessor for StickerStore.PersistenceType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A23BB4();
  v6 = sub_1B8A23784();
  (*(*(v6 - 8) + 56))(v5, 1, 3, v6);
  v7 = type metadata accessor for StickerStore();
  swift_allocObject();
  v8 = StickerStore.init(persistence:)(v5);
  v9 = &v1[OBJC_IVAR____STKTextInputObjCStoreFacade_store];
  v9[3] = v7;
  v9[4] = &protocol witness table for StickerStore;
  *v9 = v8;
  v10 = type metadata accessor for _STKTextInputObjCStoreFacade(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

id _STKTextInputObjCStoreFacade.__allocating_init(store:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1B8A23BB4();
  sub_1B89AA114(a1, v3 + OBJC_IVAR____STKTextInputObjCStoreFacade_store);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

id _STKTextInputObjCStoreFacade.init(store:)(uint64_t *a1)
{
  sub_1B8A23BB4();
  sub_1B89AA114(a1, v1 + OBJC_IVAR____STKTextInputObjCStoreFacade_store);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _STKTextInputObjCStoreFacade(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_1B89C540C(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v65 = a1;
  v97 = sub_1B8A23904();
  v67 = *(v97 - 8);
  v2 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v68 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B8A26260;
  v11 = swift_getKeyPath();
  v63 = v10;
  MEMORY[0x1B8CC3470](v11, 1);
  swift_setDeallocating();
  v12 = v8 + v7;
  v13 = v72;
  (*(v5 + 8))(v12, v4);
  swift_deallocClassInstance();
  LOBYTE(v89[0]) = 1;
  LOBYTE(v90) = 0;
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v14 = swift_allocObject();
  v71 = xmmword_1B8A26570;
  *(v14 + 16) = xmmword_1B8A26570;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1B89AEE6C();
  *(v14 + 64) = v16;
  *(v14 + 32) = 0x696669746E656469;
  *(v14 + 40) = 0xEA00000000007265;
  *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  v17 = v65;
  *(v14 + 104) = sub_1B89CCD90(&qword_1EBA91AC0, &qword_1EBA91AB8, &unk_1B8A265F0);
  *(v14 + 72) = v17;

  v64 = sub_1B8A24204();
  if (v13)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v71;
    *(v18 + 56) = v15;
    *(v18 + 64) = v16;
    *(v18 + 32) = 1701605234;
    *(v18 + 40) = 0xE400000000000000;
    *(v18 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
    *(v18 + 104) = sub_1B89CCD90(&qword_1EBA91AC8, &unk_1EBA91F40, &unk_1B8A27050);
    *(v18 + 72) = v13;

    v19 = sub_1B8A24204();
  }

  else
  {
    v19 = 0;
  }

  sub_1B89AADD4(0);
  v20 = OBJC_IVAR____STKTextInputObjCStoreFacade_logger;

  v72 = v20;
  v21 = sub_1B8A23BA4();
  v22 = sub_1B8A24224();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v67;
  v61 = v19;
  if (v23)
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = *(v17 + 16);

    _os_log_impl(&dword_1B89A7000, v21, v22, "Representations requested for %ld identifiers", v25, 0xCu);
    MEMORY[0x1B8CC5170](v25, -1, -1);
  }

  else
  {
  }

  v27 = v97;
  v28 = v68;
  v60 = *(v17 + 16);
  if (v60)
  {
    v30 = *(v24 + 16);
    v29 = v24 + 16;
    v70 = (v29 - 8);
    *&v71 = v30;
    v31 = v65 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v69 = *(v29 + 56);
    *&v26 = 136315138;
    v66 = v26;
    v32 = v60;
    v67 = v29;
    v30(v68, v31, v97);
    while (1)
    {
      v40 = sub_1B8A23BA4();
      v41 = sub_1B8A24224();
      if (os_log_type_enabled(v40, v41))
      {
        v33 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v89[0] = v68;
        *v33 = v66;
        sub_1B89CCD48(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
        v34 = sub_1B8A24934();
        v36 = v35;
        (*v70)(v28, v97);
        v37 = sub_1B89A907C(v34, v36, v89);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_1B89A7000, v40, v41, " - %s", v33, 0xCu);
        v38 = v68;
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x1B8CC5170](v38, -1, -1);
        v39 = v33;
        v27 = v97;
        MEMORY[0x1B8CC5170](v39, -1, -1);
      }

      else
      {

        (*v70)(v28, v27);
      }

      v31 += v69;
      if (!--v32)
      {
        break;
      }

      (v71)(v28, v31, v27);
    }
  }

  v42 = *&v73[OBJC_IVAR____STKTextInputObjCStoreFacade_store + 24];
  v43 = *&v73[OBJC_IVAR____STKTextInputObjCStoreFacade_store + 32];
  __swift_project_boxed_opaque_existential_0(&v73[OBJC_IVAR____STKTextInputObjCStoreFacade_store], v42);
  LOBYTE(v90) = 1;
  *(&v90 + 1) = v96[0];
  DWORD1(v90) = *(v96 + 3);
  v44 = v63;
  v45 = v61;
  *(&v90 + 1) = v64;
  *&v91 = v61;
  v92 = 0uLL;
  *(&v91 + 1) = v63;
  LOBYTE(v93) = 1;
  *(&v93 + 1) = *v95;
  DWORD1(v93) = *&v95[3];
  *(&v93 + 1) = 8;
  v94 = 0;
  v86 = 0uLL;
  v87 = v93;
  v88 = 0;
  v84 = v90;
  v85 = v91;
  v46 = v43 + 16;
  v47 = *(v43 + 16);
  sub_1B89A8FB4(&v90, &v79);
  v48 = v62;
  v47(v89, &v84, v42, v43);
  if (v48)
  {
    v76 = v86;
    v77 = v87;
    v78 = v88;
    v74 = v84;
    v75 = v85;
    sub_1B89A9028(&v74);
    LOBYTE(v79) = 1;
    *(&v79 + 1) = v96[0];
    DWORD1(v79) = *(v96 + 3);
    *(&v79 + 1) = v64;
    *&v80 = v45;
    v81 = 0uLL;
    *(&v80 + 1) = v44;
    LOBYTE(v82) = 1;
    *(&v82 + 1) = *v95;
    DWORD1(v82) = *&v95[3];
    *(&v82 + 1) = 8;
    v83 = 0;
    sub_1B89A9028(&v79);
  }

  else
  {
    v49 = v45;
    v81 = v86;
    v82 = v87;
    v83 = v88;
    v79 = v84;
    v80 = v85;
    sub_1B89A9028(&v79);
    v50 = v73;
    sub_1B89CA8A4(v89);

    v51 = v65;

    *&v74 = sub_1B89C9F68(v52, sub_1B8A10828, sub_1B89CA038);
    sub_1B89CC7CC(&v74, v51, sub_1B89F6814, type metadata accessor for _STKSticker, sub_1B89CB0AC, sub_1B89CB7FC);

    v46 = v74;

    v53 = sub_1B8A23BA4();
    v54 = sub_1B8A24224();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = v60;

      *(v55 + 12) = 2048;
      if (v46 < 0 || (v46 & 0x4000000000000000) != 0)
      {
        v56 = sub_1B8A24554();
      }

      else
      {
        v56 = *(v46 + 16);
      }

      v57 = v64;
      *(v55 + 14) = v56;

      _os_log_impl(&dword_1B89A7000, v53, v54, "Identifiers given: %ld, Stickers found: %ld", v55, 0x16u);
      MEMORY[0x1B8CC5170](v55, -1, -1);

      v58 = v63;
    }

    else
    {

      v58 = v63;
      v57 = v64;
    }

    sub_1B89B0BC8(v89);
    LOBYTE(v74) = 1;
    *(&v74 + 1) = v96[0];
    DWORD1(v74) = *(v96 + 3);
    *(&v74 + 1) = v57;
    *&v75 = v49;
    v76 = 0uLL;
    *(&v75 + 1) = v58;
    LOBYTE(v77) = 1;
    *(&v77 + 1) = *v95;
    DWORD1(v77) = *&v95[3];
    *(&v77 + 1) = 8;
    v78 = 0;
    sub_1B89A9028(&v74);
  }

  return v46;
}

uint64_t sub_1B89C5E10@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = sub_1B8A23904();
  v4 = *(v3 - 8);
  v71 = v3;
  v72 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v69 = sub_1B89C6BA8(*a1);
  v8 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
    v11 = (v9 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];
    v15 = *(v9 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v14 = *(v9 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);
    v16 = type metadata accessor for _STKStickerAttributionInfo();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____STKStickerAttributionInfo_adamID] = v10;
    v18 = &v17[OBJC_IVAR____STKStickerAttributionInfo_bundleIdentifier];
    *v18 = v13;
    *(v18 + 1) = v12;
    v19 = &v17[OBJC_IVAR____STKStickerAttributionInfo_name];
    *v19 = v15;
    *(v19 + 1) = v14;
    v73.receiver = v17;
    v73.super_class = v16;
    v20 = v10;

    v68 = objc_msgSendSuper2(&v73, sel_init);
  }

  else
  {
    v68 = 0;
  }

  v21 = v71;
  v67 = *(v72 + 16);
  v67(v75, &v7[OBJC_IVAR___STKSticker_identifier], v71);
  v22 = &v7[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v23 = *v22;
  v65 = *(v22 + 1);
  v66 = v23;
  v24 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v64 = *&v7[v24];
  v25 = &v7[OBJC_IVAR___STKSticker_externalURI];
  swift_beginAccess();
  v26 = *v25;
  v62 = *(v25 + 1);
  v63 = v26;
  v27 = &v7[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v28 = *v27;
  v60 = *(v27 + 1);
  v61 = v28;
  v29 = &v7[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  v32 = &v7[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v33 = *v32;
  v58 = *(v32 + 1);
  v59 = v33;
  v34 = &v7[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v35 = *v34;
  v56 = *(v34 + 1);
  v57 = v35;
  v36 = &v7[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v37 = *(v36 + 1);
  v55 = *v36;
  v38 = type metadata accessor for _STKSticker(0);
  v39 = objc_allocWithZone(v38);
  v67(&v39[OBJC_IVAR____STKSticker_identifier], v75, v21);
  *&v39[OBJC_IVAR____STKSticker_representations] = v69;
  v40 = &v39[OBJC_IVAR____STKSticker_name];
  v41 = v65;
  *v40 = v66;
  *(v40 + 1) = v41;
  v42 = v63;
  *&v39[OBJC_IVAR____STKSticker_effectType] = v64;
  v43 = &v39[OBJC_IVAR____STKSticker_externalURI];
  v44 = v62;
  *v43 = v42;
  *(v43 + 1) = v44;
  v45 = &v39[OBJC_IVAR____STKSticker_accessibilityName];
  v46 = v60;
  *v45 = v61;
  *(v45 + 1) = v46;
  v47 = &v39[OBJC_IVAR____STKSticker_metadata];
  *v47 = v30;
  v47[1] = v31;
  *&v39[OBJC_IVAR____STKSticker_attributionInfo] = v68;
  v48 = &v39[OBJC_IVAR____STKSticker_searchText];
  v49 = v58;
  *v48 = v59;
  *(v48 + 1) = v49;
  v50 = &v39[OBJC_IVAR____STKSticker_sanitizedPrompt];
  v51 = v56;
  *v50 = v57;
  *(v50 + 1) = v51;
  v52 = &v39[OBJC_IVAR____STKSticker_rewrittenPrompt];
  *v52 = v55;
  *(v52 + 1) = v37;

  sub_1B89C3C44(v30, v31);
  v74.receiver = v39;
  v74.super_class = v38;

  v53 = objc_msgSendSuper2(&v74, sel_init);
  result = (*(v72 + 8))(v75, v71);
  *v70 = v53;
  return result;
}

uint64_t sub_1B89C62CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_1B8A23904() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_1B89CCD48(&qword_1EBA91640, MEMORY[0x1E69695A8]);
  v7 = 0;
  while ((sub_1B8A23ED4() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1B89C6510(uint64_t a1, uint64_t a2)
{
  result = sub_1B89C540C(a1, a2);
  if (!v2)
  {
    sub_1B89C6640(result);

    v6 = sub_1B89C9F68(v5, sub_1B8A10828, sub_1B89CA380);
    sub_1B89CC7CC(&v6, a1, sub_1B89F6814, type metadata accessor for _STKStickerRepresentation, sub_1B89CBDE4, sub_1B89CC538);

    return v6;
  }

  return result;
}

unint64_t sub_1B89C6640(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B8CC44E0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR____STKSticker_representations);

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_1B8A24554();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B8A24554();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v10)
        {
          goto LABEL_21;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v10)
        {
LABEL_21:
          sub_1B8A24554();
          goto LABEL_22;
        }

        v12 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v13 = *(v12 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B8A24674();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v14 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B8A24554();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v15 >> 1) - v14) < v9)
          {
            goto LABEL_44;
          }

          v31 = v3;
          v17 = v12 + 8 * v14 + 32;
          if (v8)
          {
            if (v16 < 1)
            {
              goto LABEL_46;
            }

            sub_1B89CCD90(&qword_1EBA91B20, &qword_1EBA91B18, &qword_1B8A267C8);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B18, &qword_1B8A267C8);
              v19 = sub_1B8A03D9C(v32, i, v7);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for _STKStickerRepresentation(0);
            swift_arrayInitWithCopy();
          }

          v3 = v31;
          v1 = v27;
          if (v9 >= 1)
          {
            v22 = *(v12 + 16);
            v5 = __OFADD__(v22, v9);
            v23 = v22 + v9;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_27;
        }
      }

      if (v9 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v33;
      if (v33 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1B8A24554();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B89C6BA8(void *a1)
{
  v62 = sub_1B8A23AD4();
  v2 = *(v62 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1B8A23904();
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v64 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v48 - v9;
  v10 = a1;
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24224();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1B89A7000, v11, v12, "Building rep for %@", v13, 0xCu);
    sub_1B89CCCE0(v14);
    MEMORY[0x1B8CC5170](v14, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  v16 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v17 = sub_1B89CA6C8(*&v10[v16]);
  v18 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v19 = *&v10[v18];
  swift_bridgeObjectRetain_n();
  v57 = v17;
  v66[0] = sub_1B89C9F68(v19, sub_1B8A10828, sub_1B89CA1DC);
  sub_1B89C933C(v66);

  v20 = v66[0];
  if ((v66[0] & 0x8000000000000000) == 0 && (v66[0] & 0x4000000000000000) == 0)
  {
    v21 = *(v66[0] + 16);
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1B8A24554();
  if (!v21)
  {
    goto LABEL_14;
  }

LABEL_6:
  v67 = MEMORY[0x1E69E7CC0];
  sub_1B8A246D4();
  if (v21 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v22 = 0;
    v53 = &v10[OBJC_IVAR___STKSticker_identifier];
    v52 = v20 & 0xC000000000000001;
    v51 = (v5 + 16);
    v50 = (v2 + 16);
    v49 = (v2 + 8);
    v48 = (v5 + 8);
    v55 = v20;
    v54 = v21;
    v23 = v56;
    do
    {
      if (v52)
      {
        v24 = MEMORY[0x1B8CC44E0](v22, v20);
      }

      else
      {
        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v60 = v22 + 1;
      v26 = *v51;
      (*v51)(v63, &v24[OBJC_IVAR___STKStickerRepresentation_identifier], v23);
      v26(v64, v53, v23);
      v27 = &v25[OBJC_IVAR___STKStickerRepresentation_data];
      swift_beginAccess();
      v29 = *v27;
      v28 = v27[1];
      v30 = *v50;
      (*v50)(v61, &v25[OBJC_IVAR___STKStickerRepresentation_uti], v62);
      v31 = &v25[OBJC_IVAR___STKStickerRepresentation_role];
      swift_beginAccess();
      v32 = *v31;
      v33 = *(v31 + 1);
      v58 = v32;
      v34 = *&v25[OBJC_IVAR___STKStickerRepresentation_size];
      v35 = *&v25[OBJC_IVAR___STKStickerRepresentation_size + 8];
      v59 = type metadata accessor for _STKStickerRepresentation(0);
      v36 = objc_allocWithZone(v59);
      v26(&v36[OBJC_IVAR____STKStickerRepresentation_identifier], v63, v23);
      v26(&v36[OBJC_IVAR____STKStickerRepresentation_stickerIdentifier], v64, v23);
      v37 = &v36[OBJC_IVAR____STKStickerRepresentation_data];
      *v37 = v29;
      v37[1] = v28;
      v38 = v61;
      v39 = v62;
      v30(&v36[OBJC_IVAR____STKStickerRepresentation_uti], v61, v62);
      v40 = &v36[OBJC_IVAR____STKStickerRepresentation_role];
      *v40 = v58;
      *(v40 + 1) = v33;
      v41 = &v36[OBJC_IVAR____STKStickerRepresentation_size];
      *v41 = v34;
      *(v41 + 1) = v35;
      v42 = v57;
      *&v36[OBJC_IVAR____STKStickerRepresentation_effect] = v57;
      v43 = v42;
      sub_1B89B4A18(v29, v28);
      v44 = v43;
      sub_1B89B4A18(v29, v28);
      v65.receiver = v36;
      v65.super_class = v59;

      objc_msgSendSuper2(&v65, sel_init);

      sub_1B89AFC38(v29, v28);
      (*v49)(v38, v39);
      v45 = *v48;
      (*v48)(v64, v23);
      v45(v63, v23);
      sub_1B8A246B4();
      v46 = *(v67 + 16);
      sub_1B8A246E4();
      v22 = v60;
      sub_1B8A246F4();
      sub_1B8A246C4();
      v20 = v55;
    }

    while (v54 != v22);

    return v67;
  }

  return result;
}

uint64_t sub_1B89C7288(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____STKTextInputObjCStoreFacade_store + 24);
  v4 = *(v1 + OBJC_IVAR____STKTextInputObjCStoreFacade_store + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____STKTextInputObjCStoreFacade_store), v3);
  return (*(v4 + 72))(a1, v3, v4);
}

uint64_t _STKStickerRepresentationRole.keyboardPreview.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_keyboardPreview);
  v2 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_keyboardPreview + 8);

  return v1;
}

uint64_t _STKStickerRepresentationRole.stillVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_stillVariant);
  v2 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_stillVariant + 8);

  return v1;
}

uint64_t _STKStickerRepresentationRole.animatedVariant.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_animatedVariant);
  v2 = *(v0 + OBJC_IVAR____STKStickerRepresentationRole_animatedVariant + 8);

  return v1;
}

id _STKStickerRepresentationRole.init()()
{
  v1 = &v0[OBJC_IVAR____STKStickerRepresentationRole_keyboardPreview];
  *v1 = 0xD000000000000020;
  *(v1 + 1) = 0x80000001B8A2A240;
  v2 = &v0[OBJC_IVAR____STKStickerRepresentationRole_stillVariant];
  *v2 = 0xD00000000000001DLL;
  *(v2 + 1) = 0x80000001B8A2A270;
  v3 = &v0[OBJC_IVAR____STKStickerRepresentationRole_animatedVariant];
  *v3 = 0xD000000000000020;
  *(v3 + 1) = 0x80000001B8A2A290;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for _STKStickerRepresentationRole();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1B89C7768(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _STKSticker.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_name);
  v2 = *(v0 + OBJC_IVAR____STKSticker_name + 8);

  return v1;
}

uint64_t _STKSticker.externalURI.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_externalURI);
  v2 = *(v0 + OBJC_IVAR____STKSticker_externalURI + 8);

  return v1;
}

uint64_t _STKSticker.accessibilityName.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_accessibilityName);
  v2 = *(v0 + OBJC_IVAR____STKSticker_accessibilityName + 8);

  return v1;
}

uint64_t _STKSticker.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_metadata);
  sub_1B89C3C44(v1, *(v0 + OBJC_IVAR____STKSticker_metadata + 8));
  return v1;
}

void *_STKSticker.attributionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_attributionInfo);
  v2 = v1;
  return v1;
}

uint64_t _STKSticker.searchText.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_searchText);
  v2 = *(v0 + OBJC_IVAR____STKSticker_searchText + 8);

  return v1;
}

uint64_t _STKSticker.sanitizedPrompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_sanitizedPrompt);
  v2 = *(v0 + OBJC_IVAR____STKSticker_sanitizedPrompt + 8);

  return v1;
}

id sub_1B89C7B6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1B8A23EF4();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t _STKSticker.rewrittenPrompt.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKSticker_rewrittenPrompt);
  v2 = *(v0 + OBJC_IVAR____STKSticker_rewrittenPrompt + 8);

  return v1;
}

uint64_t sub_1B89C7C2C()
{
  v1 = v0;
  v2 = 7104878;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8A26580;
  strcpy(v29, "identifier=");
  HIDWORD(v29[1]) = -352321536;
  sub_1B8A23904();
  sub_1B89CCD48(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
  v4 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v4);

  *(v3 + 32) = v29[0];
  *(v3 + 40) = v29[1];
  v29[0] = 0x3D656D616ELL;
  v29[1] = 0xE500000000000000;
  if (*(v0 + OBJC_IVAR____STKSticker_name + 8))
  {
    v5 = *(v0 + OBJC_IVAR____STKSticker_name);
    v6 = *(v0 + OBJC_IVAR____STKSticker_name + 8);
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1B8CC3E20](v5, v6);

  *(v3 + 48) = v29[0];
  *(v3 + 56) = v29[1];
  strcpy(v29, "effectType=");
  HIDWORD(v29[1]) = -352321536;
  v28 = *(v0 + OBJC_IVAR____STKSticker_effectType);
  v7 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v7);

  v8 = v29[1];
  *(v3 + 64) = v29[0];
  *(v3 + 72) = v8;
  strcpy(v29, "externalURI=");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  if (*(v0 + OBJC_IVAR____STKSticker_externalURI + 8))
  {
    v9 = *(v0 + OBJC_IVAR____STKSticker_externalURI);
    v10 = *(v0 + OBJC_IVAR____STKSticker_externalURI + 8);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x1B8CC3E20](v9, v10);

  MEMORY[0x1B8CC3E20](41, 0xE100000000000000);
  v11 = v29[1];
  *(v3 + 80) = v29[0];
  *(v3 + 88) = v11;
  sub_1B8A24634();

  v29[0] = 0xD000000000000012;
  v29[1] = 0x80000001B8A2A2C0;
  if (*(v0 + OBJC_IVAR____STKSticker_accessibilityName + 8))
  {
    v12 = *(v0 + OBJC_IVAR____STKSticker_accessibilityName);
    v13 = *(v0 + OBJC_IVAR____STKSticker_accessibilityName + 8);
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 7104878;
  }

  MEMORY[0x1B8CC3E20](v12, v13);

  MEMORY[0x1B8CC3E20](41, 0xE100000000000000);
  v14 = v29[1];
  *(v3 + 96) = v29[0];
  *(v3 + 104) = v14;
  sub_1B8A24634();

  v29[0] = 0xD000000000000010;
  v29[1] = 0x80000001B8A2A2E0;
  v15 = *(v0 + OBJC_IVAR____STKSticker_attributionInfo);
  if (v15)
  {
    v16 = [v15 description];
    v2 = sub_1B8A23F24();
    v18 = v17;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  MEMORY[0x1B8CC3E20](v2, v18);

  v19 = v29[1];
  *(v3 + 112) = v29[0];
  *(v3 + 120) = v19;
  sub_1B8A24634();

  v29[0] = 0xD000000000000010;
  v29[1] = 0x80000001B8A2A300;
  v20 = *(v1 + OBJC_IVAR____STKSticker_representations);
  v21 = type metadata accessor for _STKStickerRepresentation(0);
  v22 = MEMORY[0x1B8CC3F80](v20, v21);
  MEMORY[0x1B8CC3E20](v22);

  *(v3 + 128) = 0xD000000000000010;
  *(v3 + 136) = 0x80000001B8A2A300;
  swift_getObjectType();
  v23 = sub_1B8A24A94();
  MEMORY[0x1B8CC3E20](v23);

  MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  sub_1B89CCD90(&qword_1EBA911A0, &unk_1EBA91F40, &unk_1B8A27050);
  v24 = sub_1B8A23EB4();
  v26 = v25;

  MEMORY[0x1B8CC3E20](v24, v26);

  MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
  return 60;
}

id _STKSticker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t _STKStickerRepresentation.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerRepresentation_data);
  sub_1B89B4A18(v1, *(v0 + OBJC_IVAR____STKStickerRepresentation_data + 8));
  return v1;
}

id sub_1B89C8448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t sub_1B89C857C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id sub_1B89C8600(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1B8A23EF4();

  return v6;
}

uint64_t _STKStickerRepresentation.role.getter()
{
  v1 = *(v0 + OBJC_IVAR____STKStickerRepresentation_role);
  v2 = *(v0 + OBJC_IVAR____STKStickerRepresentation_role + 8);

  return v1;
}

double _STKStickerRepresentation.size.getter()
{
  result = *(v0 + OBJC_IVAR____STKStickerRepresentation_size);
  v2 = *(v0 + OBJC_IVAR____STKStickerRepresentation_size + 8);
  return result;
}

uint64_t sub_1B89C8798()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8A26590;
  MEMORY[0x1B8CC3E20](*(v0 + OBJC_IVAR____STKStickerRepresentation_role), *(v0 + OBJC_IVAR____STKStickerRepresentation_role + 8));
  *(v2 + 32) = 0x3D656C6F72;
  *(v2 + 40) = 0xE500000000000000;
  sub_1B8A23AD4();
  sub_1B89CCD48(&qword_1EBA91610, MEMORY[0x1E69E8450]);
  v3 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v3);

  *(v2 + 48) = 1030321269;
  *(v2 + 56) = 0xE400000000000000;
  sub_1B8A23904();
  sub_1B89CCD48(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
  v4 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v4);

  *(v2 + 64) = 0x3D72656B63697473;
  *(v2 + 72) = 0xE800000000000000;
  v5 = [*(v0 + OBJC_IVAR____STKStickerRepresentation_effect) description];
  v6 = sub_1B8A23F24();
  v8 = v7;

  MEMORY[0x1B8CC3E20](v6, v8);

  *(v2 + 80) = 0x3D746365666665;
  *(v2 + 88) = 0xE700000000000000;
  v10 = *(v1 + OBJC_IVAR____STKStickerRepresentation_data);
  v11 = *(v1 + OBJC_IVAR____STKStickerRepresentation_data + 8);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v13 = 0;
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    v15 = v10 + 16;
    v10 = *(v10 + 16);
    v14 = *(v15 + 8);
    v13 = v14 - v10;
    if (!__OFSUB__(v14, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v12)
  {
    v13 = BYTE6(v11);
LABEL_10:
    v18 = [objc_opt_self() stringFromByteCount:v13 countStyle:0];
    v19 = sub_1B8A23F24();
    v21 = v20;

    MEMORY[0x1B8CC3E20](v19, v21);

    *(v2 + 96) = 0x3D61746164;
    *(v2 + 104) = 0xE500000000000000;
    swift_getObjectType();
    v22 = sub_1B8A24A94();
    MEMORY[0x1B8CC3E20](v22);

    MEMORY[0x1B8CC3E20](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
    sub_1B89CCD90(&qword_1EBA911A0, &unk_1EBA91F40, &unk_1B8A27050);
    v23 = sub_1B8A23EB4();
    v25 = v24;

    MEMORY[0x1B8CC3E20](v23, v25);

    MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
    return 60;
  }

  v16 = __OFSUB__(HIDWORD(v10), v10);
  v17 = HIDWORD(v10) - v10;
  if (!v16)
  {
    v13 = v17;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1B89C8E60(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = [objc_allocWithZone(a2()) init];
  *a3 = result;
  return result;
}

id sub_1B89C8EC0(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id sub_1B89C8F38(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B8A23EF4();

  return v5;
}

uint64_t sub_1B89C8FA8()
{
  sub_1B89AB538(0, &qword_1EBA91AE8, 0x1E69E58C0);
  if (qword_1EBA91680 != -1)
  {
    swift_once();
  }

  if (sub_1B8A24404())
  {
    return 0x656E6F6E2ELL;
  }

  if (qword_1EBA91688 != -1)
  {
    swift_once();
  }

  if (sub_1B8A24404())
  {
    return 0x656B6F7274732ELL;
  }

  if (qword_1EBA91690 != -1)
  {
    swift_once();
  }

  if (sub_1B8A24404())
  {
    return 0x63696D6F632ELL;
  }

  if (qword_1EBA91698 != -1)
  {
    swift_once();
  }

  if (sub_1B8A24404())
  {
    return 0x79666675702ELL;
  }

  if (qword_1EBA916A0 != -1)
  {
    swift_once();
  }

  if (sub_1B8A24404())
  {
    return 0x637365646972692ELL;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for _STKStickerEffect();
  v2 = objc_msgSendSuper2(&v4, sel_description);
  v3 = sub_1B8A23F24();

  return v3;
}

id _STKStickerEffect.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _STKStickerEffect();
  return objc_msgSendSuper2(&v2, sel_init);
}

double sub_1B89C9288@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_1B89C92E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKSticker_libraryIndex;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1B89C933C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B89F6814(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v18 = v2 + 32;
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_1B8A24924();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = (v2 + 40);
      v10 = -1;
      for (i = 1; i != v4; ++i)
      {
        v12 = *(v18 + 8 * i);
        v13 = v9;
        v14 = v10;
        do
        {
          v15 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          if (*(v12 + v15) != 1)
          {
            break;
          }

          v12 = *v13;
          *v13 = *(v13 - 1);
          *--v13 = v12;
        }

        while (!__CFADD__(v14++, 1));
        --v10;
        ++v9;
      }
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for Sticker.Representation();
      v8 = sub_1B8A24124();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v19[1] = v7;
    sub_1B89C94FC(v19, v21, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1B8A246C4();
}

unint64_t sub_1B89C94FC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = result;
  v114 = MEMORY[0x1E69E7CC0];
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = a4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v9 >= v4)
      {
        v4 = v9;
      }

      else
      {
        v10 = v7;
        v11 = *a3;
        v12 = *(*a3 + 8 * v9);
        v13 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        result = swift_beginAccess();
        v14 = *(v12 + v13);
        v15 = v8 + 2;
        while (v4 != v15)
        {
          v16 = *(v11 + 8 * v15);
          v17 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          result = swift_beginAccess();
          ++v15;
          if (v14 != *(v16 + v17))
          {
            v4 = v15 - 1;
            break;
          }
        }

        v7 = v10;
        if (v14)
        {
          if (v4 < v8)
          {
            goto LABEL_145;
          }

          if (v8 < v4)
          {
            v18 = 8 * v4 - 8;
            v19 = 8 * v8;
            v20 = v4;
            v21 = v8;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_150;
                }

                v23 = *(v22 + v19);
                *(v22 + v19) = *(v22 + v18);
                *(v22 + v18) = v23;
              }

              ++v21;
              v18 -= 8;
              v19 += 8;
            }

            while (v21 < v20);
          }
        }
      }

      v24 = a3[1];
      if (v4 >= v24)
      {
        v27 = v4;
        if (v4 < v8)
        {
          goto LABEL_143;
        }
      }

      else
      {
        if (__OFSUB__(v4, v8))
        {
          goto LABEL_144;
        }

        v25 = v4;
        if (v4 - v8 >= v5)
        {
          goto LABEL_27;
        }

        if (__OFADD__(v8, v5))
        {
          goto LABEL_146;
        }

        if (v8 + v5 >= v24)
        {
          v26 = a3[1];
        }

        else
        {
          v26 = v8 + v5;
        }

        if (v26 < v8)
        {
          goto LABEL_147;
        }

        if (v25 == v26)
        {
LABEL_27:
          v27 = v25;
          if (v25 < v8)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v111 = v7;
          __dsta = v8;
          v93 = *a3;
          v94 = v8 - v25;
          v95 = *a3 + 8 * v25;
          do
          {
            v96 = v25;
            v97 = *(v93 + 8 * v25);
            v98 = v95;
            v99 = v94;
            do
            {
              v100 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
              result = swift_beginAccess();
              if (*(v97 + v100) != 1)
              {
                break;
              }

              if (!v93)
              {
                goto LABEL_148;
              }

              v97 = *v98;
              *v98 = *(v98 - 1);
              *--v98 = v97;
            }

            while (!__CFADD__(v99++, 1));
            v25 = v96 + 1;
            --v94;
            v95 += 8;
          }

          while (v96 + 1 != v26);
          v27 = v26;
          v7 = v111;
          v8 = __dsta;
          if (v26 < __dsta)
          {
            goto LABEL_143;
          }
        }
      }

      v104 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B89DCDEC(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        result = sub_1B89DCDEC((v28 > 1), v29 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v30;
      v31 = v7 + 16 * v29;
      *(v31 + 32) = v8;
      *(v31 + 40) = v104;
      v114 = v7;
      if (!*v103)
      {
        goto LABEL_151;
      }

      if (v29)
      {
        break;
      }

LABEL_3:
      v6 = v104;
      v4 = a3[1];
      v5 = a4;
      if (v104 >= v4)
      {
        goto LABEL_127;
      }
    }

    __dst = *v103;
    while (1)
    {
      v32 = v30 - 1;
      if (v30 >= 4)
      {
        break;
      }

      if (v30 == 3)
      {
        v33 = *(v7 + 32);
        v34 = *(v7 + 40);
        v43 = __OFSUB__(v34, v33);
        v35 = v34 - v33;
        v36 = v43;
LABEL_50:
        if (v36)
        {
          goto LABEL_134;
        }

        v49 = (v7 + 16 * v30);
        v51 = *v49;
        v50 = v49[1];
        v52 = __OFSUB__(v50, v51);
        v53 = v50 - v51;
        v54 = v52;
        if (v52)
        {
          goto LABEL_137;
        }

        v55 = (v7 + 32 + 16 * v32);
        v57 = *v55;
        v56 = v55[1];
        v43 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v43)
        {
          goto LABEL_140;
        }

        if (__OFADD__(v53, v58))
        {
          goto LABEL_141;
        }

        if (v53 + v58 >= v35)
        {
          if (v35 < v58)
          {
            v32 = v30 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_64;
      }

      v59 = (v7 + 16 * v30);
      v61 = *v59;
      v60 = v59[1];
      v43 = __OFSUB__(v60, v61);
      v53 = v60 - v61;
      v54 = v43;
LABEL_64:
      if (v54)
      {
        goto LABEL_136;
      }

      v62 = v7 + 16 * v32;
      v64 = *(v62 + 32);
      v63 = *(v62 + 40);
      v43 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v43)
      {
        goto LABEL_139;
      }

      if (v65 < v53)
      {
        goto LABEL_3;
      }

LABEL_71:
      if (v32 - 1 >= v30)
      {
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        return result;
      }

      v70 = *a3;
      if (!*a3)
      {
        goto LABEL_149;
      }

      v110 = v7;
      v106 = v32 - 1;
      v107 = v32;
      v71 = *(v7 + 32 + 16 * (v32 - 1));
      v72 = *(v7 + 32 + 16 * v32 + 8);
      v73 = 8 * v71;
      v74 = (v70 + 8 * v71);
      v75 = 8 * *(v7 + 32 + 16 * v32);
      v76 = (v70 + v75);
      v77 = 8 * v72;
      v78 = (v70 + 8 * v72);
      v79 = v75 - 8 * v71;
      v80 = 8 * v72 - v75;
      v108 = v72;
      v109 = v71;
      if (v79 >= v80)
      {
        v82 = __dst;
        if (v76 != __dst || v78 <= __dst)
        {
          memmove(__dst, (v70 + v75), 8 * v72 - v75);
        }

        v81 = (__dst + v80);
        if (v80 < 1 || v75 <= v73)
        {
LABEL_107:
          result = v76;
        }

        else
        {
          do
          {
            --v78;
            v87 = v81;
            v82 = __dst;
            while (1)
            {
              v88 = v78 + 1;
              v89 = *--v87;
              v90 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
              swift_beginAccess();
              if (*(v89 + v90) == 1)
              {
                break;
              }

              if (v88 != v81)
              {
                *v78 = *v87;
              }

              --v78;
              v81 = v87;
              if (v87 <= __dst)
              {
                v81 = v87;
                goto LABEL_107;
              }
            }

            result = (v76 - 1);
            if (v88 != v76)
            {
              *v78 = *result;
            }

            if (v81 <= __dst)
            {
              break;
            }

            --v76;
          }

          while (v74 < result);
        }
      }

      else
      {
        if (v74 != __dst || v76 <= __dst)
        {
          memmove(__dst, (v70 + 8 * v71), v75 - 8 * v71);
        }

        v81 = (__dst + v79);
        if (v79 >= 1 && v77 > v75)
        {
          v82 = __dst;
          while (1)
          {
            v83 = *v76;
            v84 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            if (*(v83 + v84) != 1)
            {
              break;
            }

            v85 = v76;
            v86 = v74 == v76++;
            if (!v86)
            {
              goto LABEL_85;
            }

LABEL_86:
            ++v74;
            if (v82 >= v81 || v76 >= v78)
            {
              goto LABEL_105;
            }
          }

          v85 = v82;
          v86 = v74 == v82++;
          if (v86)
          {
            goto LABEL_86;
          }

LABEL_85:
          *v74 = *v85;
          goto LABEL_86;
        }

        v82 = __dst;
LABEL_105:
        result = v74;
      }

      if (result != v82 || result >= v82 + ((v81 - v82 + (v81 - v82 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
      {
        result = memmove(result, v82, 8 * (v81 - v82));
      }

      v91 = v110;
      if (v108 < v109)
      {
        goto LABEL_130;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_1B89F3898(v110);
      }

      result = v107;
      if (v107 > v91[2])
      {
        goto LABEL_131;
      }

      v92 = &v91[2 * v106];
      v92[4] = v109;
      v92[5] = v108;
      v114 = v91;
      result = sub_1B89F380C(v107);
      v7 = v91;
      v30 = v91[2];
      if (v30 <= 1)
      {
        goto LABEL_3;
      }
    }

    v37 = v7 + 32 + 16 * v30;
    v38 = *(v37 - 64);
    v39 = *(v37 - 56);
    v43 = __OFSUB__(v39, v38);
    v40 = v39 - v38;
    if (v43)
    {
      goto LABEL_132;
    }

    v42 = *(v37 - 48);
    v41 = *(v37 - 40);
    v43 = __OFSUB__(v41, v42);
    v35 = v41 - v42;
    v36 = v43;
    if (v43)
    {
      goto LABEL_133;
    }

    v44 = (v7 + 16 * v30);
    v46 = *v44;
    v45 = v44[1];
    v43 = __OFSUB__(v45, v46);
    v47 = v45 - v46;
    if (v43)
    {
      goto LABEL_135;
    }

    v43 = __OFADD__(v35, v47);
    v48 = v35 + v47;
    if (v43)
    {
      goto LABEL_138;
    }

    if (v48 >= v40)
    {
      v66 = (v7 + 32 + 16 * v32);
      v68 = *v66;
      v67 = v66[1];
      v43 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v43)
      {
        goto LABEL_142;
      }

      if (v35 < v69)
      {
        v32 = v30 - 2;
      }

      goto LABEL_71;
    }

    goto LABEL_50;
  }

LABEL_127:
  if (!*v103)
  {
    goto LABEL_152;
  }

  sub_1B89C9C40(&v114, *v103, a3);
}

uint64_t sub_1B89C9C40(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_58;
  }

LABEL_2:
  *a1 = v4;
  v6 = v4[2];
  if (v6 < 2)
  {
    return 1;
  }

  __dst = a2;
  while (1)
  {
    v7 = *a3;
    if (!*a3)
    {
      break;
    }

    v8 = v6 - 1;
    v40 = v6;
    v41 = v4;
    v9 = v4[2 * v6];
    v12 = &v4[2 * v6 + 2];
    v10 = *v12;
    v11 = v12[1];
    v43 = v9;
    v13 = 8 * v9;
    v14 = (v7 + 8 * v9);
    v15 = 8 * *v12;
    v16 = (v7 + v15);
    v42 = v11;
    v17 = 8 * v11;
    v4 = (v7 + 8 * v11);
    v18 = v15 - 8 * v9;
    a2 = 8 * v11 - v15;
    v39 = v8;
    if (v18 >= a2)
    {
      v21 = __dst;
      if (v16 != __dst || v4 <= __dst)
      {
        memmove(__dst, (v7 + 8 * v10), 8 * v11 - 8 * v10);
      }

      v20 = __dst + a2;
      if (a2 < 1 || v15 <= v13)
      {
        goto LABEL_46;
      }

      do
      {
        --v4;
        a2 = v20;
        while (1)
        {
          v25 = v4 + 1;
          v26 = *(a2 - 8);
          a2 -= 8;
          v27 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          if (*(v26 + v27) == 1)
          {
            break;
          }

          if (v25 != v20)
          {
            *v4 = *a2;
          }

          --v4;
          v20 = a2;
          if (a2 <= __dst)
          {
            v20 = a2;
            goto LABEL_46;
          }
        }

        v28 = v16 - 1;
        if (v25 != v16)
        {
          *v4 = *v28;
        }

        if (v20 <= __dst)
        {
          break;
        }

        --v16;
      }

      while (v14 < v28);
      v16 = v28;
LABEL_46:
      v29 = v43;
      v30 = v42;
      goto LABEL_47;
    }

    a2 = __dst;
    v19 = v14 == __dst && v16 > __dst;
    if (!v19)
    {
      memmove(__dst, (v7 + 8 * v9), 8 * v10 - 8 * v9);
    }

    v20 = __dst + v18;
    v19 = v18 < 1;
    v21 = __dst;
    if (v19 || v17 <= v15)
    {
      v16 = v14;
      goto LABEL_46;
    }

    v29 = v43;
    v30 = v42;
    do
    {
      a2 = *v16;
      v31 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
      swift_beginAccess();
      if (*(a2 + v31) == 1)
      {
        v32 = v16;
        v33 = v14 == v16++;
        if (v33)
        {
          goto LABEL_42;
        }

LABEL_41:
        *v14 = *v32;
        goto LABEL_42;
      }

      v32 = v21;
      v33 = v14 == v21++;
      if (!v33)
      {
        goto LABEL_41;
      }

LABEL_42:
      ++v14;
    }

    while (v21 < v20 && v16 < v4);
    v16 = v14;
LABEL_47:
    if (v16 != v21 || v16 >= (v21 + ((v20 - v21 + (v20 - v21 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v16, v21, 8 * ((v20 - v21) / 8));
    }

    if (v30 < v29)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      result = sub_1B89F3898(v4);
      v4 = result;
      goto LABEL_2;
    }

    v34 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1B89F3898(v41);
    }

    if ((v40 - 2) >= *(v34 + 2))
    {
      goto LABEL_57;
    }

    v35 = &v34[16 * v40];
    *v35 = v29;
    *(v35 + 1) = v30;
    *a1 = v34;
    result = sub_1B89F380C(v39);
    v4 = *a1;
    v6 = (*a1)[2];
    if (v6 <= 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89C9F68(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1B8A24554();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B89CA038(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8A24554();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8A24554();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B89CCD90(&qword_1EBA91B30, &qword_1EBA91B28, &qword_1B8A267D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B28, &qword_1B8A267D0);
            v9 = sub_1B8A03E1C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _STKSticker(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89CA1DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8A24554();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8A24554();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B89CCD90(&qword_1EBA91B10, &qword_1EBA91B08, &qword_1B8A267C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B08, &qword_1B8A267C0);
            v9 = sub_1B8A03D9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Sticker.Representation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89CA380(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8A24554();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8A24554();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B89CCD90(&qword_1EBA91B20, &qword_1EBA91B18, &qword_1B8A267C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B18, &qword_1B8A267C8);
            v9 = sub_1B8A03D9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for _STKStickerRepresentation(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89CA524(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1B8A24554();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1B8A24554();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B89CCD90(&qword_1EBA91AF8, &qword_1EBA91AF0, &qword_1B8A267A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AF0, &qword_1B8A267A8);
            v9 = sub_1B8A03D9C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ManagedRepresentation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89CA6C8(uint64_t a1)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        if (qword_1EBA91690 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A80;
        return *v1;
      case 3:
        if (qword_1EBA91698 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A88;
        return *v1;
      case 4:
        if (qword_1EBA916A0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A90;
        return *v1;
    }
  }

  else
  {
    switch(a1)
    {
      case -1:
        if (qword_1EBA91678 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A68;
        return *v1;
      case 0:
        if (qword_1EBA91680 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A70;
        return *v1;
      case 1:
        if (qword_1EBA91688 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EBA91A78;
        return *v1;
    }
  }

  result = sub_1B8A24974();
  __break(1u);
  return result;
}

uint64_t sub_1B89CA8A4(uint64_t a1)
{
  v2 = v1;
  v46 = MEMORY[0x1E69E7CC0];
  sub_1B8A246D4();
  sub_1B89B090C(a1, v35);
  v4 = v42;
  v5 = v43;
  v6 = __swift_project_boxed_opaque_existential_0(v41, v42);
  v7 = sub_1B89AA114(v35, v34);
  v47[2] = v38;
  v47[3] = v39;
  v48 = v40;
  v47[0] = v36;
  v47[1] = v37;
  v32[2] = v38;
  v32[3] = v39;
  v33 = v40;
  v32[0] = v36;
  v32[1] = v37;
  v8 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v6, v4);
  sub_1B89A8FB4(v47, &v31);
  sub_1B89B09B0(v34, v32, v10, v4, v44);
  sub_1B89B0BC8(v35);
  while (1)
  {
    v12 = v45;
    v13 = v45 >> 62;
    if (v45 >> 62)
    {
      break;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_28:
    sub_1B89B0C1C();
    v21 = v45;
    v22 = v45 >> 62;
    if (v45 >> 62)
    {
      if (!sub_1B8A24554())
      {
LABEL_58:
        sub_1B89B44F4(0);
LABEL_59:
        sub_1B89B4780(v44);
        return v46;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_71;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_72;
      }
    }

    else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1B8CC44E0](0, v21);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v23 = *(v21 + 32);
    }

    v5 = v23;
    if (v22)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_66;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_67;
      }

      v24 = sub_1B8A24554();
    }

    else
    {
      v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_66;
      }
    }

    v25 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_63;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v45 = v21;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v22)
      {
        goto LABEL_47;
      }

      v27 = v21 & 0xFFFFFFFFFFFFFF8;
      if (v25 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v22)
      {
LABEL_47:
        sub_1B8A24554();
        goto LABEL_48;
      }

      v27 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = *(v27 + 16);
LABEL_48:
    v21 = sub_1B8A24674();
    v45 = v21;
LABEL_49:
    sub_1B89DD6CC(0, 1, 0);
    v45 = v21;
    sub_1B89B44F4(v5);
    if (!v5)
    {
      goto LABEL_59;
    }

LABEL_50:
    v35[0] = v5;
    sub_1B89C5E10(v35, v32);
    if (v2)
    {
      goto LABEL_68;
    }

    v2 = 0;

    v5 = *&v32[0];
    sub_1B8A246B4();
    v29 = *(v46 + 16);
    sub_1B8A246E4();
    sub_1B8A246F4();
    sub_1B8A246C4();
  }

  if (!sub_1B8A24554())
  {
    goto LABEL_28;
  }

  result = sub_1B8A24554();
  if (!result)
  {
    goto LABEL_69;
  }

  result = sub_1B8A24554();
  if (!result)
  {
    goto LABEL_70;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8CC44E0](0, v12);
LABEL_7:
    v5 = v14;
    if (v13)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_64;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_65;
      }

      v15 = sub_1B8A24554();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_64;
      }
    }

    v16 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_61;
    }

    v17 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v45 = v12;
    if (v17)
    {
      if (!v13)
      {
        v18 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_23:
          sub_1B89DD6CC(0, 1, 0);
          v45 = v12;
          goto LABEL_50;
        }

        goto LABEL_20;
      }
    }

    else if (!v13)
    {
      v18 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v19 = *(v18 + 16);
LABEL_22:
      v12 = sub_1B8A24674();
      v45 = v12;
      goto LABEL_23;
    }

    sub_1B8A24554();
    goto LABEL_22;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
    goto LABEL_7;
  }

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
  __break(1u);
LABEL_68:

  sub_1B89B4780(v44);

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B89CAD80(void **__src, void **a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v29 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v29;
    }

    v30 = a2;
    v50 = &v5[v13];
    if (v11 >= 8 && a2 > v7)
    {
      v45 = v5;
LABEL_30:
      v31 = v30 - 1;
      --v6;
      v32 = v50;
      v46 = v30 - 1;
      __dsta = v30;
      do
      {
        v33 = *--v32;
        v34 = *v31;
        v35 = OBJC_IVAR____STKSticker_identifier;
        v36 = v33;
        v37 = v34;
        v38 = sub_1B89C62CC(v33 + v35, a5);
        if (v39)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        v41 = sub_1B89C62CC(v37 + OBJC_IVAR____STKSticker_identifier, a5);
        v43 = v42;

        if (v43)
        {
          if (v40 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_41;
          }
        }

        else if (v40 < v41)
        {
LABEL_41:
          v5 = v45;
          if (v6 + 1 != __dsta)
          {
            *v6 = *v46;
          }

          if (v50 <= v45 || (v30 = v46, v46 <= v7))
          {
            v30 = v46;
            goto LABEL_48;
          }

          goto LABEL_30;
        }

        v5 = v45;
        if (v6 + 1 != v50)
        {
          *v6 = *v32;
        }

        --v6;
        v50 = v32;
        v31 = v46;
      }

      while (v32 > v45);
      v50 = v32;
      v30 = __dsta;
    }
  }

  else
  {
    v14 = a2;
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v50 = &v5[v10];
    if (v8 >= 8)
    {
      v15 = v14;
      do
      {
        if (v15 >= v6)
        {
          break;
        }

        __dst = v15;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = OBJC_IVAR____STKSticker_identifier;
        v21 = *v15;
        v22 = v19;
        v23 = sub_1B89C62CC(v17 + v20, a5);
        if (v24)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        v26 = sub_1B89C62CC(v22 + OBJC_IVAR____STKSticker_identifier, a5);
        v28 = v27;

        if (v28)
        {
          if (v25 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_22;
          }
        }

        else if (v25 >= v26)
        {
LABEL_22:
          v16 = v18;
          v5 = v18 + 1;
          v15 = __dst;
          if (v7 == v18)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v7 = *v16;
          goto LABEL_13;
        }

        v16 = __dst;
        v15 = __dst + 1;
        v5 = v18;
        if (v7 != __dst)
        {
          goto LABEL_12;
        }

LABEL_13:
        ++v7;
      }

      while (v5 < v50);
    }

    v30 = v7;
  }

LABEL_48:
  if (v30 != v5 || v30 >= (v5 + ((v50 - v5 + (v50 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v5, 8 * (v50 - v5));
  }

  return 1;
}

uint64_t sub_1B89CB0AC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v138 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRetain_n();
  if (v7 >= 1)
  {
    v120 = a4;
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v137 = a5;
    while (1)
    {
      v10 = a5;
      v11 = v8;
      v12 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v121 = v9;
        v13 = *a3;
        v14 = *(*a3 + 8 * v12);
        v124 = v8;
        v15 = *(*a3 + 8 * v8);
        v16 = OBJC_IVAR____STKSticker_identifier;
        v17 = v14;
        v18 = v15;
        v19 = v10;
        v20 = v18;
        v21 = sub_1B89C62CC(v14 + v16, v10);
        v23 = v22;
        v24 = sub_1B89C62CC(v20 + OBJC_IVAR____STKSticker_identifier, v19);
        LOBYTE(v19) = v25;

        v26 = (v19 & 1) == 0;
        v11 = v124;
        if (v26)
        {
          v27 = v24;
        }

        else
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v134 = (v21 < v27) & ~v23;
        v12 = v124 + 2;
        if (v124 + 2 < v7)
        {
          v28 = (v13 + 8 * v124 + 16);
          do
          {
            v30 = *(v28 - 1);
            v29 = *v28;
            v31 = OBJC_IVAR____STKSticker_identifier;
            v32 = *v28;
            v33 = v30;
            v34 = sub_1B89C62CC(v29 + v31, v137);
            if (v35)
            {
              v36 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v34;
            }

            v37 = sub_1B89C62CC(v33 + OBJC_IVAR____STKSticker_identifier, v137);
            v39 = v38;

            if (v39)
            {
              if (((v134 ^ (v36 == 0x7FFFFFFFFFFFFFFFLL)) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            else if (v134 == v36 >= v37)
            {
              goto LABEL_20;
            }

            ++v28;
            ++v12;
          }

          while (v7 != v12);
          v12 = v7;
LABEL_20:
          v11 = v124;
        }

        v9 = v121;
        if (v134)
        {
          if (v12 < v11)
          {
            goto LABEL_130;
          }

          v40 = v12;
          if (v11 < v12)
          {
            v41 = 8 * v12 - 8;
            v42 = 8 * v11;
            v43 = v11;
            do
            {
              if (v43 != --v40)
              {
                v45 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v44 = *(v45 + v42);
                *(v45 + v42) = *(v45 + v41);
                *(v45 + v41) = v44;
              }

              ++v43;
              v41 -= 8;
              v42 += 8;
            }

            while (v43 < v40);
          }
        }
      }

      v46 = a3[1];
      if (v12 < v46)
      {
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_129;
        }

        if (v12 - v11 < v120)
        {
          v47 = v11 + v120;
          if (__OFADD__(v11, v120))
          {
            goto LABEL_131;
          }

          if (v47 >= v46)
          {
            v47 = a3[1];
          }

          if (v47 < v11)
          {
LABEL_132:
            __break(1u);
LABEL_133:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_134:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_135:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_136:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_137:
            result = swift_bridgeObjectRelease_n();
            __break(1u);
            return result;
          }

          if (v12 != v47)
          {
            v122 = v9;
            v135 = *a3;
            v48 = *a3 + 8 * v12 - 8;
            v125 = v11;
            v126 = v47;
            v49 = v11 - v12;
            do
            {
              v128 = v48;
              v130 = v12;
              v50 = *(v135 + 8 * v12);
              v127 = v49;
              do
              {
                v51 = *v48;
                v52 = OBJC_IVAR____STKSticker_identifier;
                v53 = v50;
                v54 = v51;
                v55 = sub_1B89C62CC(v50 + v52, v137);
                if (v56)
                {
                  v57 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v57 = v55;
                }

                v58 = sub_1B89C62CC(v54 + OBJC_IVAR____STKSticker_identifier, v137);
                v60 = v59;

                if (v60)
                {
                  if (v57 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }
                }

                else if (v57 >= v58)
                {
                  break;
                }

                if (!v135)
                {
                  goto LABEL_133;
                }

                v61 = *v48;
                v50 = *(v48 + 8);
                *v48 = v50;
                *(v48 + 8) = v61;
                v48 -= 8;
              }

              while (!__CFADD__(v49++, 1));
              ++v12;
              v48 = v128 + 8;
              v49 = v127 - 1;
            }

            while (v130 + 1 != v126);
            v12 = v126;
            v9 = v122;
            v11 = v125;
          }
        }
      }

      if (v12 < v11)
      {
        goto LABEL_128;
      }

      v131 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1B89DCDEC(0, *(v9 + 2) + 1, 1, v9);
      }

      v64 = *(v9 + 2);
      v63 = *(v9 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v9 = sub_1B89DCDEC((v63 > 1), v64 + 1, 1, v9);
      }

      *(v9 + 2) = v65;
      v66 = v9 + 32;
      v67 = &v9[16 * v64 + 32];
      *v67 = v11;
      *(v67 + 1) = v12;
      v136 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v64)
      {
        v129 = v9 + 32;
        while (1)
        {
          v68 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v69 = *(v9 + 4);
            v70 = *(v9 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_74:
            if (v72)
            {
              goto LABEL_118;
            }

            v85 = &v9[16 * v65];
            v87 = *v85;
            v86 = *(v85 + 1);
            v88 = __OFSUB__(v86, v87);
            v89 = v86 - v87;
            v90 = v88;
            if (v88)
            {
              goto LABEL_120;
            }

            v91 = &v66[16 * v68];
            v93 = *v91;
            v92 = *(v91 + 1);
            v79 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v79)
            {
              goto LABEL_123;
            }

            if (__OFADD__(v89, v94))
            {
              goto LABEL_125;
            }

            if (v89 + v94 >= v71)
            {
              if (v71 < v94)
              {
                v68 = v65 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          if (v65 < 2)
          {
            goto LABEL_126;
          }

          v95 = &v9[16 * v65];
          v97 = *v95;
          v96 = *(v95 + 1);
          v79 = __OFSUB__(v96, v97);
          v89 = v96 - v97;
          v90 = v79;
LABEL_89:
          if (v90)
          {
            goto LABEL_122;
          }

          v98 = &v66[16 * v68];
          v100 = *v98;
          v99 = *(v98 + 1);
          v79 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v79)
          {
            goto LABEL_124;
          }

          if (v101 < v89)
          {
            goto LABEL_3;
          }

LABEL_96:
          if (v68 - 1 >= v65)
          {
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v106 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v107 = v9;
          v108 = &v66[16 * v68 - 16];
          v109 = *v108;
          v110 = v68;
          v111 = &v66[16 * v68];
          v112 = *(v111 + 1);
          v113 = (v106 + 8 * *v108);
          v114 = (v106 + 8 * *v111);
          v115 = (v106 + 8 * v112);

          sub_1B89CAD80(v113, v114, v115, v136, v137);
          if (v133)
          {

            goto LABEL_109;
          }

          if (v112 < v109)
          {
            goto LABEL_113;
          }

          v9 = v107;
          v116 = *(v107 + 2);
          if (v110 > v116)
          {
            goto LABEL_114;
          }

          *v108 = v109;
          *(v108 + 1) = v112;
          if (v110 >= v116)
          {
            goto LABEL_115;
          }

          v117 = v110;
          v65 = v116 - 1;
          memmove(v111, v111 + 16, 16 * (v116 - 1 - v117));
          *(v107 + 2) = v116 - 1;
          v66 = v129;
          if (v116 <= 2)
          {
            goto LABEL_3;
          }
        }

        v73 = &v66[16 * v65];
        v74 = *(v73 - 8);
        v75 = *(v73 - 7);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_116;
        }

        v78 = *(v73 - 6);
        v77 = *(v73 - 5);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_117;
        }

        v80 = &v9[16 * v65];
        v82 = *v80;
        v81 = *(v80 + 1);
        v79 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v79)
        {
          goto LABEL_119;
        }

        v79 = __OFADD__(v71, v83);
        v84 = v71 + v83;
        if (v79)
        {
          goto LABEL_121;
        }

        if (v84 >= v76)
        {
          v102 = &v66[16 * v68];
          v104 = *v102;
          v103 = *(v102 + 1);
          v79 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v79)
          {
            goto LABEL_127;
          }

          if (v71 < v105)
          {
            v68 = v65 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_74;
      }

LABEL_3:
      v8 = v131;
      v7 = a3[1];
      a5 = v137;
      if (v131 >= v7)
      {
        v138 = v9;
        break;
      }
    }
  }

  v118 = *a1;
  if (!*a1)
  {
    goto LABEL_137;
  }

  sub_1B89CBC38(&v138, v118, a3, a5, sub_1B89CAD80);
  if (v133)
  {

LABEL_109:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_1B89CB7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v22 = v5;
    v23 = a3;
    v7 = *(v25 + 8 * a3);
    v21 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = OBJC_IVAR____STKSticker_identifier;
      v10 = v7;
      v11 = v8;
      v12 = sub_1B89C62CC(v7 + v9, a5);
      v14 = (v13 & 1) != 0 ? 0x7FFFFFFFFFFFFFFFLL : v12;
      v15 = sub_1B89C62CC(v11 + OBJC_IVAR____STKSticker_identifier, a5);
      v17 = v16;

      if (v17)
      {
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v15)
      {
        goto LABEL_4;
      }

      if (!v25)
      {
        break;
      }

      v18 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v18;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v22 + 8;
        v6 = v21 - 1;
        if (v23 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B89CB924(void **__src, void **a2, id *a3, void **a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v29 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v29;
    }

    v30 = a2;
    v50 = &v5[v13];
    if (v11 >= 8 && a2 > v7)
    {
      v45 = v5;
LABEL_30:
      v31 = v30 - 1;
      --v6;
      v32 = v50;
      v46 = v30 - 1;
      __dsta = v30;
      do
      {
        v33 = *--v32;
        v34 = *v31;
        v35 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
        v36 = v33;
        v37 = v34;
        v38 = sub_1B89C62CC(v33 + v35, a5);
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v40 = v38;
        }

        v41 = sub_1B89C62CC(v37 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, a5);
        v43 = v42;

        if (v43)
        {
          if (v40 < 0)
          {
            goto LABEL_41;
          }
        }

        else if (v40 < v41)
        {
LABEL_41:
          v5 = v45;
          if (v6 + 1 != __dsta)
          {
            *v6 = *v46;
          }

          if (v50 <= v45 || (v30 = v46, v46 <= v7))
          {
            v30 = v46;
            goto LABEL_48;
          }

          goto LABEL_30;
        }

        v5 = v45;
        if (v6 + 1 != v50)
        {
          *v6 = *v32;
        }

        --v6;
        v50 = v32;
        v31 = v46;
      }

      while (v32 > v45);
      v50 = v32;
      v30 = __dsta;
    }
  }

  else
  {
    v14 = a2;
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v50 = &v5[v10];
    if (v8 >= 8)
    {
      v15 = v14;
      do
      {
        if (v15 >= v6)
        {
          break;
        }

        __dst = v15;
        v17 = *v15;
        v18 = v5;
        v19 = *v5;
        v20 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
        v21 = *v15;
        v22 = v19;
        v23 = sub_1B89C62CC(v17 + v20, a5);
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v23;
        }

        v26 = sub_1B89C62CC(v22 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, a5);
        v28 = v27;

        if (v28)
        {
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }
        }

        else if (v25 >= v26)
        {
LABEL_22:
          v16 = v18;
          v5 = v18 + 1;
          v15 = __dst;
          if (v7 == v18)
          {
            goto LABEL_13;
          }

LABEL_12:
          *v7 = *v16;
          goto LABEL_13;
        }

        v16 = __dst;
        v15 = __dst + 1;
        v5 = v18;
        if (v7 != __dst)
        {
          goto LABEL_12;
        }

LABEL_13:
        ++v7;
      }

      while (v5 < v50);
    }

    v30 = v7;
  }

LABEL_48:
  if (v30 != v5 || v30 >= (v5 + ((v50 - v5 + (v50 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v5, 8 * (v50 - v5));
  }

  return 1;
}

uint64_t sub_1B89CBC38(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, char **, uint64_t, uint64_t))
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v27 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v27 = sub_1B89F3898(v27);
  }

  v22 = v7;
  *v7 = v27;
  v9 = v27 + 16;
  v10 = *(v27 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v27;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v27[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      v28 = v11 + 8 * *v13;
      v18 = v11 + 8 * *v16;
      v7 = (v11 + 8 * v17);

      a5(v28, v18, v7, a2, a4);
      v6 = v12;

      if (v12)
      {
        *v22 = v27;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_1B89CBDE4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3[1];
  v140 = MEMORY[0x1E69E7CC0];
  swift_bridgeObjectRetain_n();
  if (v9 >= 1)
  {
    v121 = a4;
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v139 = a5;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v136 = v11;
        v122 = v6;
        v123 = v10;
        v14 = *a3;
        v15 = *(*a3 + 8 * v13);
        v16 = *(*a3 + 8 * v10);
        v17 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
        v18 = v15;
        v19 = v16;
        v20 = v15 + v17;
        v12 = v123;
        v21 = sub_1B89C62CC(v20, a5);
        if (v22)
        {
          v23 = 0;
        }

        else
        {
          v23 = v21;
        }

        v132 = v23;
        v24 = sub_1B89C62CC(v19 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, a5);
        v26 = v25;

        if (v26)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24;
        }

        v129 = v27;
        v28 = v123 + 2;
        if (v123 + 2 < v9)
        {
          v29 = (v14 + 8 * v123 + 16);
          do
          {
            v31 = *(v29 - 1);
            v30 = *v29;
            v32 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
            v33 = *v29;
            v34 = v31;
            v35 = sub_1B89C62CC(v30 + v32, v139);
            if (v36)
            {
              v37 = 0;
            }

            else
            {
              v37 = v35;
            }

            v38 = sub_1B89C62CC(v34 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, v139);
            v40 = v39;

            if (v40)
            {
              if (v132 < v129 == v37 >= 0)
              {
                goto LABEL_22;
              }
            }

            else if (v132 < v129 == v37 >= v38)
            {
              goto LABEL_22;
            }

            ++v29;
            ++v28;
          }

          while (v9 != v28);
          v28 = v9;
LABEL_22:
          v12 = v123;
        }

        v6 = v122;
        v11 = v136;
        if (v132 < v129)
        {
          if (v28 < v12)
          {
            goto LABEL_136;
          }

          if (v12 < v28)
          {
            v41 = 8 * v28 - 8;
            v42 = 8 * v12;
            v13 = v28;
            v43 = v12;
            while (1)
            {
              if (v43 != --v28)
              {
                v45 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                v44 = *(v45 + v42);
                *(v45 + v42) = *(v45 + v41);
                *(v45 + v41) = v44;
              }

              ++v43;
              v41 -= 8;
              v42 += 8;
              if (v43 >= v28)
              {
                goto LABEL_33;
              }
            }
          }
        }

        v13 = v28;
      }

LABEL_33:
      v46 = a3[1];
      if (v13 >= v46)
      {
        v48 = v13;
        if (v13 < v12)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (__OFSUB__(v13, v12))
        {
          goto LABEL_135;
        }

        if (v13 - v12 >= v121)
        {
          goto LABEL_41;
        }

        v47 = v12 + v121;
        if (__OFADD__(v12, v121))
        {
          goto LABEL_137;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v12)
        {
LABEL_138:
          __break(1u);
LABEL_139:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_140:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_141:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_142:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_143:
          result = swift_bridgeObjectRelease_n();
          __break(1u);
          return result;
        }

        if (v13 == v47)
        {
LABEL_41:
          v48 = v13;
          if (v13 < v12)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v138 = v11;
          v124 = v12;
          v103 = *a3;
          v104 = *a3 + 8 * v13 - 8;
          v105 = v12 - v13;
          v126 = v47;
          do
          {
            v131 = v104;
            v134 = v13;
            v106 = *(v103 + 8 * v13);
            v128 = v105;
            do
            {
              v107 = *v104;
              v108 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
              v109 = v106;
              v110 = v107;
              v111 = sub_1B89C62CC(v106 + v108, v139);
              if (v112)
              {
                v113 = 0;
              }

              else
              {
                v113 = v111;
              }

              v114 = sub_1B89C62CC(v110 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, v139);
              v116 = v115;

              if (v116)
              {
                if ((v113 & 0x8000000000000000) == 0)
                {
                  break;
                }
              }

              else if (v113 >= v114)
              {
                break;
              }

              if (!v103)
              {
                goto LABEL_139;
              }

              v117 = *v104;
              v106 = *(v104 + 8);
              *v104 = v106;
              *(v104 + 8) = v117;
              v104 -= 8;
            }

            while (!__CFADD__(v105++, 1));
            v13 = v134 + 1;
            v104 = v131 + 8;
            v105 = v128 - 1;
          }

          while (v134 + 1 != v126);
          v48 = v126;
          v12 = v124;
          v11 = v138;
          if (v126 < v124)
          {
            goto LABEL_134;
          }
        }
      }

      v133 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1B89DCDEC(0, *(v11 + 2) + 1, 1, v11);
      }

      v50 = *(v11 + 2);
      v49 = *(v11 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v11 = sub_1B89DCDEC((v49 > 1), v50 + 1, 1, v11);
      }

      *(v11 + 2) = v51;
      v52 = v11 + 32;
      v53 = &v11[16 * v50 + 32];
      *v53 = v12;
      *(v53 + 1) = v133;
      v130 = *a1;
      if (!*a1)
      {
        goto LABEL_142;
      }

      if (v50)
      {
        v127 = v11 + 32;
        v137 = v11;
        while (1)
        {
          v54 = v51 - 1;
          if (v51 >= 4)
          {
            break;
          }

          if (v51 == 3)
          {
            v55 = *(v11 + 4);
            v56 = *(v11 + 5);
            v65 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            v58 = v65;
LABEL_64:
            if (v58)
            {
              goto LABEL_124;
            }

            v71 = &v11[16 * v51];
            v73 = *v71;
            v72 = *(v71 + 1);
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_126;
            }

            v77 = &v52[16 * v54];
            v79 = *v77;
            v78 = *(v77 + 1);
            v65 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v65)
            {
              goto LABEL_129;
            }

            if (__OFADD__(v75, v80))
            {
              goto LABEL_131;
            }

            if (v75 + v80 >= v57)
            {
              if (v57 < v80)
              {
                v54 = v51 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          if (v51 < 2)
          {
            goto LABEL_132;
          }

          v81 = &v11[16 * v51];
          v83 = *v81;
          v82 = *(v81 + 1);
          v65 = __OFSUB__(v82, v83);
          v75 = v82 - v83;
          v76 = v65;
LABEL_79:
          if (v76)
          {
            goto LABEL_128;
          }

          v84 = &v52[16 * v54];
          v86 = *v84;
          v85 = *(v84 + 1);
          v65 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v65)
          {
            goto LABEL_130;
          }

          if (v87 < v75)
          {
            goto LABEL_3;
          }

LABEL_86:
          if (v54 - 1 >= v51)
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          v92 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v93 = v6;
          v94 = &v52[16 * v54 - 16];
          v95 = *v94;
          v96 = v54;
          v97 = &v52[16 * v54];
          v98 = *(v97 + 1);
          v99 = (v92 + 8 * *v94);
          v100 = (v92 + 8 * *v97);
          v101 = (v92 + 8 * v98);

          sub_1B89CB924(v99, v100, v101, v130, v139);
          if (v93)
          {

            goto LABEL_115;
          }

          if (v98 < v95)
          {
            goto LABEL_119;
          }

          v102 = *(v137 + 2);
          if (v96 > v102)
          {
            goto LABEL_120;
          }

          *v94 = v95;
          *(v94 + 1) = v98;
          if (v96 >= v102)
          {
            goto LABEL_121;
          }

          v51 = v102 - 1;
          memmove(v97, v97 + 16, 16 * (v102 - 1 - v96));
          v11 = v137;
          *(v137 + 2) = v102 - 1;
          v6 = 0;
          v52 = v127;
          if (v102 <= 2)
          {
            goto LABEL_3;
          }
        }

        v59 = &v52[16 * v51];
        v60 = *(v59 - 8);
        v61 = *(v59 - 7);
        v65 = __OFSUB__(v61, v60);
        v62 = v61 - v60;
        if (v65)
        {
          goto LABEL_122;
        }

        v64 = *(v59 - 6);
        v63 = *(v59 - 5);
        v65 = __OFSUB__(v63, v64);
        v57 = v63 - v64;
        v58 = v65;
        if (v65)
        {
          goto LABEL_123;
        }

        v66 = &v11[16 * v51];
        v68 = *v66;
        v67 = *(v66 + 1);
        v65 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v65)
        {
          goto LABEL_125;
        }

        v65 = __OFADD__(v57, v69);
        v70 = v57 + v69;
        if (v65)
        {
          goto LABEL_127;
        }

        if (v70 >= v62)
        {
          v88 = &v52[16 * v54];
          v90 = *v88;
          v89 = *(v88 + 1);
          v65 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v65)
          {
            goto LABEL_133;
          }

          if (v57 < v91)
          {
            v54 = v51 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_64;
      }

LABEL_3:
      v10 = v133;
      v9 = a3[1];
      a5 = v139;
      if (v133 >= v9)
      {
        v140 = v11;
        break;
      }
    }
  }

  v119 = *a1;
  if (!*a1)
  {
    goto LABEL_143;
  }

  sub_1B89CBC38(&v140, v119, a3, a5, sub_1B89CB924);
  if (v6)
  {

LABEL_115:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

void sub_1B89CC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v23 = v6;
    v24 = a3;
    v8 = *(v25 + 8 * a3);
    v22 = v7;
    while (1)
    {
      v9 = *v6;
      v10 = OBJC_IVAR____STKStickerRepresentation_stickerIdentifier;
      v11 = v8;
      v12 = v9;
      v13 = sub_1B89C62CC(v8 + v10, a5);
      v15 = (v14 & 1) != 0 ? 0 : v13;
      v16 = sub_1B89C62CC(v12 + OBJC_IVAR____STKStickerRepresentation_stickerIdentifier, a5);
      v18 = v17;

      if (v18)
      {
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v16)
      {
        goto LABEL_4;
      }

      if (!v25)
      {
        break;
      }

      v19 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v19;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v6 = v23 + 8;
        v7 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B89CC658(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void *, _BYTE *, uint64_t, uint64_t, uint64_t), void (*a5)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  swift_bridgeObjectRetain_n();
  result = sub_1B8A24924();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        a3(0);
        v14 = sub_1B8A24124();
        *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
      }

      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v13;

      a4(v16, v17, a1, v12, a2);

      *(v15 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {

    a5(0, v10, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B89CC7CC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), void (*a5)(void *, _BYTE *, uint64_t, uint64_t, uint64_t), void (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = a3(v12);
    *a1 = v12;
  }

  v14 = *(v12 + 16);
  v16[0] = v12 + 32;
  v16[1] = v14;

  sub_1B89CC658(v16, a2, a4, a5, a6);

  sub_1B8A246C4();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1B89CC938()
{
  result = sub_1B8A23BC4();
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

uint64_t sub_1B89CCAE0()
{
  result = sub_1B8A23904();
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

uint64_t sub_1B89CCBD4()
{
  result = sub_1B8A23904();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8A23AD4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1B89CCCE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA919E0, &qword_1B8A262D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B89CCD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B89CCD90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1B89CCDE8()
{
  v2 = v0;
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = sub_1B8A23EF4();
  v5 = [v3 initWithEntityName_];

  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B8A26570;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1B89AEE6C();
  *(v6 + 32) = 0x696669746E656469;
  *(v6 + 40) = 0xEA00000000007265;
  v7 = sub_1B8A238B4();
  *(v6 + 96) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  *(v6 + 104) = sub_1B89CD424();
  *(v6 + 72) = v7;
  v8 = sub_1B8A24204();
  [v5 setPredicate_];

  v9 = *(v2 + 16);
  sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
  v10 = sub_1B8A24384();
  if (v1)
  {

    v11 = v1;
    v12 = sub_1B8A23BA4();
    v13 = sub_1B8A24234();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1B89A7000, v12, v13, "Could not fetch stickers to delete: %@", v14, 0xCu);
      sub_1B89CCCE0(v15);
      MEMORY[0x1B8CC5170](v15, -1, -1);
      MEMORY[0x1B8CC5170](v14, -1, -1);
    }
  }

  else
  {
    v18 = v10;

    if (!v18)
    {
      return;
    }

    v19 = sub_1B8A23BA4();
    v20 = sub_1B8A24234();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B89A7000, v19, v20, "Could not add new sticker: duplicate identifier", v21, 2u);
      MEMORY[0x1B8CC5170](v21, -1, -1);
    }

    sub_1B89C353C();
    swift_allocError();
    *v22 = 4;
  }

  swift_willThrow();
}

void sub_1B89CD138()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v14[0] = 0;
  if ([v1 save_])
  {
    v2 = v14[0];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = v14[0];
    v5 = sub_1B8A23674();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1B8A23BA4();
    v8 = sub_1B8A24234();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B89A7000, v7, v8, "Could not save new sticker: %@", v9, 0xCu);
      sub_1B89CCCE0(v10);
      MEMORY[0x1B8CC5170](v10, -1, -1);
      MEMORY[0x1B8CC5170](v9, -1, -1);
    }

    else
    {
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B89CD2F0()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F373DB19C3AddCMa()
{
  result = qword_1EBA915E8;
  if (!qword_1EBA915E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B89CD424()
{
  result = qword_1EBA91108;
  if (!qword_1EBA91108)
  {
    sub_1B89AB538(255, &qword_1ED82DF70, 0x1E696AFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91108);
  }

  return result;
}

uint64_t Sticker.FetchRequest.init(type:predicate:representations:sortDescriptors:offset:limit:batchSize:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v20 = *a1;
  v21 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  if (!a4)
  {
    a4 = swift_allocObject();
    *(a4 + 16) = xmmword_1B8A26260;
    v18 = swift_getKeyPath();
    MEMORY[0x1B8CC3470](v18, 1);
  }

  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v12);
  result = swift_deallocClassInstance();
  *a9 = v20;
  *(a9 + 8) = a2;
  *(a9 + 16) = v21;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  return result;
}

void *Sticker.FetchRequest.predicate.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id Sticker.FetchRequest.representations.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1B89A9148(v2);
}

void Sticker.FetchRequest.representations.setter(uint64_t *a1)
{
  v2 = *a1;
  sub_1B89AADD4(*(v1 + 16));
  *(v1 + 16) = v2;
}

uint64_t Sticker.FetchRequest.sortDescriptors.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Sticker.FetchRequest.limit.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t Sticker.FetchRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t Sticker.FetchRequest.batchSize.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t Sticker.FetchRequest.batchSize.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t _s8Stickers17StickerStoreErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t sub_1B89CD8A4()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t sub_1B89CD8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B89CDBFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B89CD928(uint64_t a1)
{
  v2 = sub_1B89AA534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89CD964(uint64_t a1)
{
  v2 = sub_1B89AA534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Sticker.FetchRequest.RepresentationSpecifier.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0xD000000000000010;
  }

  if (v1 == 1)
  {
    return 0x67616D69206C6C61;
  }

  if (v1 == 2)
  {
    return 0x6567616D69206F6ELL;
  }

  v3 = [v1 description];
  v4 = sub_1B8A23F24();
  v6 = v5;

  MEMORY[0x1B8CC3E20](v4, v6);

  return 0x206572656877;
}

uint64_t sub_1B89CDA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B8A24954() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572506572656877 && a2 == 0xEE00657461636964)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8A24954();

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

uint64_t sub_1B89CDB80(uint64_t a1)
{
  v2 = sub_1B89AAD38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89CDBBC(uint64_t a1)
{
  v2 = sub_1B89AAD38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89CDBFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xEF74616D726F4665 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6373654474726F73 && a2 == 0xEF73726F74706972 || (sub_1B8A24954() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

id sub_1B89CDE5C()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B8A237A4();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1B8A23674();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t sub_1B89CDF1C()
{
  result = qword_1EBA91188;
  if (!qword_1EBA91188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91188);
  }

  return result;
}

unint64_t sub_1B89CDF68()
{
  result = qword_1ED82DBC0;
  if (!qword_1ED82DBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91B58, &qword_1B8A26838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DBC0);
  }

  return result;
}

unint64_t sub_1B89CDFE4()
{
  result = qword_1EBA91660;
  if (!qword_1EBA91660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91660);
  }

  return result;
}

unint64_t sub_1B89CE038()
{
  result = qword_1EBA91B68;
  if (!qword_1EBA91B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B68);
  }

  return result;
}

uint64_t sub_1B89CE098(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1B89CE0F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1B89CE144(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1B89CE188()
{
  result = qword_1EBA91B78;
  if (!qword_1EBA91B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B78);
  }

  return result;
}

unint64_t sub_1B89CE1E0()
{
  result = qword_1EBA91B80;
  if (!qword_1EBA91B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B80);
  }

  return result;
}

unint64_t sub_1B89CE238()
{
  result = qword_1EBA91B88;
  if (!qword_1EBA91B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B88);
  }

  return result;
}

unint64_t StickerStoreError.errorDescription.getter()
{
  result = 0x6420737365636341;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x2068637573206F4ELL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000026;
      break;
    case 9:
      result = 0xD000000000000027;
      break;
    case 0xA:
      result = 0xD000000000000024;
      break;
    case 0xB:
      result = 0xD00000000000002DLL;
      break;
    case 0xC:
      result = 0xD00000000000002ELL;
      break;
    case 0xD:
      result = 0xD000000000000038;
      break;
    case 0xF:
      result = 0xD000000000000035;
      break;
    case 0x10:
      result = 0xD000000000000045;
      break;
    case 0x11:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B89CE53C()
{
  result = qword_1EBA91B90;
  if (!qword_1EBA91B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B90);
  }

  return result;
}

unint64_t sub_1B89CE598()
{
  result = qword_1EBA91B98;
  if (!qword_1EBA91B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91B98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerStoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerStoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedStickerDecodingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedStickerDecodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B89CEC9C(uint64_t a1)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v56 = *(a1 + 24);
  v54 = *(a1 + 40);
  v55 = *(a1 + 48);
  swift_beginAccess();
  v8 = v1[2];
  v66 = v8;
  v57 = v6;
  if (v5)
  {
    v65 = MEMORY[0x1E69E7CC0];
    if (v8 >> 62)
    {
      v4 = sub_1B8A24554();
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v5;

    v60 = v9;
    if (v4)
    {
      v53 = v7;
      v7 = 0;
      v58 = v8 & 0xFFFFFFFFFFFFFF8;
      v59 = v8 & 0xC000000000000001;
      while (1)
      {
        if (v59)
        {
          v11 = MEMORY[0x1B8CC44E0](v7, v8);
        }

        else
        {
          v10 = *(v58 + 16);
          if (v7 >= v10)
          {
            goto LABEL_54;
          }

          v11 = *(v8 + 8 * v7 + 32);
        }

        v3 = v11;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v64[3] = type metadata accessor for Sticker(0);
        v64[0] = v3;
        sub_1B89AF268(v64, v62, &unk_1EBA91F50, &unk_1B8A26500);
        v13 = v63;
        if (v63)
        {
          v14 = __swift_project_boxed_opaque_existential_0(v62, v63);
          v61 = &v52;
          v15 = *(v13 - 8);
          v16 = *(v15 + 64);
          MEMORY[0x1EEE9AC00](v14);
          v18 = v8;
          v19 = v4;
          v20 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v15 + 16))(v20);
          v21 = v3;
          v2 = sub_1B8A24944();
          v22 = v20;
          v4 = v19;
          v8 = v18;
          (*(v15 + 8))(v22, v13);
          v6 = v57;
          __swift_destroy_boxed_opaque_existential_0(v62);
        }

        else
        {
          v23 = v3;
          v2 = 0;
        }

        v24 = [v60 evaluateWithObject_];
        swift_unknownObjectRelease();
        sub_1B89A8A78(v64, &unk_1EBA91F50, &unk_1B8A26500);
        if (v24)
        {
          sub_1B8A246B4();
          v2 = *(v65 + 16);
          sub_1B8A246E4();
          sub_1B8A246F4();
          sub_1B8A246C4();
        }

        else
        {
        }

        ++v7;
        if (v12 == v4)
        {
          v25 = v65;
          v7 = v53;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v1 = v60;

    v66 = v25;
    v8 = v25;
  }

  else
  {
  }

  if (*(v56 + 16))
  {
    v64[0] = v56;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A28, &unk_1B8A267B0);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B40, &qword_1B8A26820);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
    sub_1B89CCD90(&qword_1EBA91BA0, &qword_1EBA91A28, &unk_1B8A267B0);
    sub_1B89CCD90(&qword_1EBA91BA8, &qword_1EBA91A28, &unk_1B8A267B0);
    v4 = sub_1B89CCD90(&qword_1EBA91BB0, &qword_1EBA91B40, &qword_1B8A26820);
    v6 = v57;
    sub_1B89CCD90(&qword_1EBA91BB8, &qword_1EBA91AA8, qword_1B8A281D0);
    v1 = &v66;
    sub_1B8A23EC4();
    v8 = v66;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  v2 = v8 >> 62;
  if (!(v8 >> 62))
  {
    v26 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v26;
    if (v7 >= v26)
    {
LABEL_62:

      v3 = MEMORY[0x1E69E7CC0];
LABEL_63:
      v27 = v55;
      if ((v55 & 1) == 0)
      {
        goto LABEL_64;
      }

      while (1)
      {
LABEL_91:
        if (v3 >> 62)
        {
          goto LABEL_107;
        }

        v47 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_93:
        if (!v47)
        {

          return MEMORY[0x1E69E7CC0];
        }

        v64[0] = MEMORY[0x1E69E7CC0];
        sub_1B89A9148(v6);
        sub_1B8A246D4();
        if ((v47 & 0x8000000000000000) == 0)
        {
          v8 = 0;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v48 = MEMORY[0x1B8CC44E0](v8, v3);
            }

            else
            {
              if ((v8 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_106:
                __break(1u);
LABEL_107:
                v47 = sub_1B8A24554();
                goto LABEL_93;
              }

              if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_106;
              }

              v48 = *(v3 + 8 * v8 + 32);
            }

            v49 = v48;
            ++v8;
            v2 = sub_1B89D0F60(v48, v6);

            sub_1B8A246B4();
            v50 = *(v64[0] + 16);
            sub_1B8A246E4();
            sub_1B8A246F4();
            sub_1B8A246C4();
            if (v47 == v8)
            {

              sub_1B89AADD4(v6);
              return v64[0];
            }
          }
        }

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
        if ((v3 & 0x8000000000000000) != 0)
        {
          v27 = v3;
        }

        else
        {
          v27 = v10;
        }

        v1 = sub_1B8A24554();
        result = sub_1B8A24554();
        if (result < 0)
        {
          goto LABEL_134;
        }

        if (v1 >= v54)
        {
          v51 = v54;
        }

        else
        {
          v51 = v1;
        }

        if (v1 < 0)
        {
          v51 = v54;
        }

        v4 = v54 ? v51 : 0;
        if (sub_1B8A24554() < v4)
        {
          break;
        }

LABEL_73:
        if ((v3 & 0xC000000000000001) != 0 && v4)
        {
          type metadata accessor for Sticker(0);

          v40 = 0;
          do
          {
            v41 = v40 + 1;
            sub_1B8A24654();
            v40 = v41;
          }

          while (v4 != v41);
        }

        else
        {
        }

        if (v2)
        {
          v27 = sub_1B8A24734();
          v8 = v42;
          v1 = v43;
          v4 = v44;

          if ((v4 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v1 = 0;
          v27 = v3 & 0xFFFFFFFFFFFFFF8;
          v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
          v4 = (2 * v4) | 1;
          if ((v4 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        sub_1B8A24964();
        swift_unknownObjectRetain_n();
        v46 = swift_dynamicCastClass();
        if (!v46)
        {
          swift_unknownObjectRelease();
          v46 = MEMORY[0x1E69E7CC0];
        }

        v2 = *(v46 + 16);

        if (__OFSUB__(v4 >> 1, v1))
        {
          goto LABEL_129;
        }

        if (v2 != (v4 >> 1) - v1)
        {
          goto LABEL_131;
        }

        v3 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (!v3)
        {
          v3 = MEMORY[0x1E69E7CC0];
LABEL_90:
          swift_unknownObjectRelease();
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      swift_unknownObjectRelease_n();
LABEL_83:
      sub_1B8A0DC20(v27, v8, v1, v4);
      v3 = v45;
      goto LABEL_90;
    }

    if (v26 < v7)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_27:
    if (v7 < 0)
    {
      goto LABEL_110;
    }

    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v2)
    {
      v28 = sub_1B8A24554();
    }

    else
    {
      v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v28 < v27)
    {
      goto LABEL_111;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      goto LABEL_113;
    }

    if ((v8 & 0xC000000000000001) == 0 || v7 == v27)
    {
    }

    else
    {
      if (v7 >= v27)
      {
        goto LABEL_128;
      }

      type metadata accessor for Sticker(0);

      v29 = v7;
      do
      {
        v30 = v29 + 1;
        sub_1B8A24654();
        v29 = v30;
      }

      while (v27 != v30);
    }

    if (v2)
    {
      v1 = sub_1B8A24734();
      v31 = v32;
      v7 = v33;
      v27 = v34;

      if (v27)
      {
LABEL_45:
        v8 = sub_1B8A24964();
        swift_unknownObjectRetain_n();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {
          swift_unknownObjectRelease();
          v36 = MEMORY[0x1E69E7CC0];
        }

        v2 = *(v36 + 16);

        if (__OFSUB__(v27 >> 1, v7))
        {
          goto LABEL_130;
        }

        if (v2 == (v27 >> 1) - v7)
        {
          v3 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          v27 = v55;
          if (!v3)
          {
            swift_unknownObjectRelease();
            v3 = MEMORY[0x1E69E7CC0];
          }

          if (v27)
          {
            goto LABEL_91;
          }

LABEL_64:
          if (v54 < 0)
          {
            goto LABEL_112;
          }

          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          v2 = v3 >> 62;
          if (v3 >> 62)
          {
            goto LABEL_114;
          }

          v38 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38 >= v54)
          {
            v39 = v54;
          }

          else
          {
            v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v54)
          {
            v4 = v39;
          }

          else
          {
            v4 = 0;
          }

          if (v38 >= v4)
          {
            goto LABEL_73;
          }

          goto LABEL_127;
        }

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      v1 = (v8 & 0xFFFFFFFFFFFFFF8);
      v31 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v27 = (2 * v27) | 1;
      if (v27)
      {
        goto LABEL_45;
      }
    }

    sub_1B8A0DC20(v1, v31, v7, v27);
    v3 = v35;
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

LABEL_55:
  if ((v8 & 0x8000000000000000) != 0)
  {
    v1 = v8;
  }

  else
  {
    v1 = v10;
  }

  if (v7 >= sub_1B8A24554())
  {
    goto LABEL_62;
  }

  result = sub_1B8A24554();
  if (result >= v7)
  {
    v27 = result;
    if (sub_1B8A24554() < v7)
    {
      goto LABEL_61;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1B89CF624(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v15 = v1;
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CC44E0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = a1;
      v10 = sub_1B8A238C4();

      if (v10)
      {

        sub_1B89C353C();
        swift_allocError();
        *v12 = 4;
        swift_willThrow();
        return v9;
      }

      ++v5;
      a1 = v9;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_13:

  swift_beginAccess();
  v11 = *(v15 + 16);
  if (!(v11 >> 62))
  {
    goto LABEL_14;
  }

  if (v11 < 0)
  {
    v14 = *(v15 + 16);
  }

  result = sub_1B8A24554();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_14:
    sub_1B89D1AA0(0, 0, a1);
    swift_endAccess();
    return a1;
  }

  return result;
}

uint64_t sub_1B89CF80C(void *a1)
{
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_1B8A24554();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 4;
  while (1)
  {
    if (v4 - v3 == 4)
    {

      sub_1B89C353C();
      swift_allocError();
      *v9 = 2;
      return swift_willThrow();
    }

    v5 = v4 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B8CC44E0](v4 - 4, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v6 = *(v2 + 8 * v4);
    }

    v7 = v6;
    v8 = sub_1B8A238C4();

    if (v8)
    {
      break;
    }

    ++v4;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_22;
    }
  }

  swift_beginAccess();
  v11 = *(v1 + 16);
  v12 = a1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v1 + 16) = v11;
  if (!result || (v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
  {
    result = sub_1B89D0994(v11);
    v11 = result;
    *(v1 + 16) = result;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v5 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 8 * v4);
    *(v13 + 8 * v4) = v12;

    *(v1 + 16) = v11;
    sub_1B89CFA04((v1 + 16));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B89CFA04(unint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1B89D0994(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = ((v2 & 0xFFFFFFFFFFFFFF8) + 32);
  v25[0] = v22;
  v25[1] = v3;
  result = sub_1B8A24924();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v19 = v2;
      v20 = v1;
      v7 = -1;
      v8 = 1;
      v9 = v22;
      v21 = v3;
      do
      {
        v10 = *&v22[8 * v8];
        v11 = v7;
        v12 = v9;
        do
        {
          v13 = *v12;
          v14 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          v15 = *(v10 + v14);
          v16 = OBJC_IVAR___STKSticker_libraryIndex;
          result = swift_beginAccess();
          if (*(v13 + v16) >= v15)
          {
            break;
          }

          v17 = *v12;
          v10 = *(v12 + 1);
          *v12 = v10;
          *(v12 + 1) = v17;
          v12 -= 8;
        }

        while (!__CFADD__(v11++, 1));
        ++v8;
        v9 += 8;
        --v7;
      }

      while (v8 != v21);
      v1 = v20;
      v2 = v19;
    }
  }

  else
  {
    v5 = result;
    if (v3 >= 2)
    {
      type metadata accessor for Sticker(0);
      v6 = sub_1B8A24124();
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v3 >> 1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v24[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v3 >> 1;
    sub_1B89CFDD4(v24, v23, v25, v5);
    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1B89CFBD0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B89CFC2C(uint64_t a1)
{
  v4 = *v2;
  v5 = sub_1B89CEC9C(a1);
  if (!v3)
  {
    if (v5 >> 62)
    {
      v1 = sub_1B8A24554();
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_1B89CFCE8(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();

  v4 = sub_1B89D1D3C((v3 + 16), a1);

  v6 = *(v3 + 16);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v8 = *(v3 + 16);
    }

    result = sub_1B8A24554();
    v7 = result;
    if (result >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v4)
    {
LABEL_3:
      sub_1B89D09F8(v4, v7);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89CFDD4(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v118 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v4 = *v118;
    if (*v118)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_127;
    }

    goto LABEL_163;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v127 = v7;
      v10 = *&(*a3)[8 * v9];
      v4 = (8 * v6);
      v11 = &(*a3)[8 * v6];
      v13 = *v11;
      v12 = (v11 + 16);
      v14 = OBJC_IVAR___STKSticker_libraryIndex;
      swift_beginAccess();
      v15 = *(v10 + v14);
      v16 = OBJC_IVAR___STKSticker_libraryIndex;
      result = swift_beginAccess();
      v17 = *(v13 + v16);
      v18 = v8 + 2;
      while (v5 != v18)
      {
        v20 = *(v12 - 1);
        v19 = *v12;
        v21 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        v22 = *(v19 + v21);
        v23 = OBJC_IVAR___STKSticker_libraryIndex;
        result = swift_beginAccess();
        ++v18;
        ++v12;
        if (v17 < v15 == *(v20 + v23) >= v22)
        {
          v5 = v18 - 1;
          break;
        }
      }

      v7 = v127;
      if (v17 < v15)
      {
        if (v5 < v8)
        {
          goto LABEL_154;
        }

        if (v8 < v5)
        {
          v24 = 8 * v5 - 8;
          v25 = v5;
          v26 = v8;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_160;
              }

              v28 = *&v4[v27];
              *&v4[v27] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v4 += 8;
          }

          while (v26 < v25);
        }
      }

      v9 = v5;
    }

    v29 = a3[1];
    if (v9 < v29)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_153;
      }

      if (v9 - v8 < a4)
      {
        v30 = (v8 + a4);
        if (__OFADD__(v8, a4))
        {
          goto LABEL_155;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v8)
        {
          goto LABEL_156;
        }

        if (v9 != v30)
        {
          v128 = v7;
          v130 = v8;
          v4 = *a3;
          v31 = &(*a3)[8 * v9 - 8];
          v7 = (v8 - v9);
          v132 = v30;
          do
          {
            v121 = v9;
            v32 = *&v4[8 * v9];
            v33 = v7;
            v34 = v31;
            do
            {
              v35 = *v34;
              v36 = OBJC_IVAR___STKSticker_libraryIndex;
              swift_beginAccess();
              v37 = *(v32 + v36);
              v38 = OBJC_IVAR___STKSticker_libraryIndex;
              swift_beginAccess();
              if (*(v35 + v38) >= v37)
              {
                break;
              }

              if (!v4)
              {
                goto LABEL_157;
              }

              v39 = *v34;
              v32 = v34[1];
              *v34 = v32;
              v34[1] = v39;
              --v34;
            }

            while (!__CFADD__(v33++, 1));
            v9 = v121 + 1;
            v31 += 8;
            --v7;
          }

          while (v121 + 1 != v132);
          v9 = v132;
          v7 = v128;
          v8 = v130;
        }
      }
    }

    if (v9 < v8)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v122 = v9;
    if ((result & 1) == 0)
    {
      result = sub_1B89DCDEC(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1B89DCDEC((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v43;
    v44 = &v7[16 * v42];
    *(v44 + 4) = v8;
    *(v44 + 5) = v9;
    v45 = *v118;
    if (!*v118)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    if (v42)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = v122;
    if (v122 >= v5)
    {
      goto LABEL_125;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v7[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_139;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_140;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_142;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_145;
      }

      if (v62 >= v54)
      {
        v80 = &v7[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_149;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v43 == 3)
    {
      v47 = *(v7 + 4);
      v48 = *(v7 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_55:
      if (v50)
      {
        goto LABEL_141;
      }

      v63 = &v7[16 * v43];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_144;
      }

      v69 = &v7[16 * v46 + 32];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_147;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_148;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v73 = &v7[16 * v43];
    v75 = *v73;
    v74 = *(v73 + 1);
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_69:
    if (v68)
    {
      goto LABEL_143;
    }

    v76 = &v7[16 * v46];
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_146;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v46 - 1 >= v43)
    {
      break;
    }

    v84 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    v129 = v7;
    v131 = v46;
    v124 = v46 - 1;
    v85 = *&v7[16 * v46 + 16];
    v86 = *&v7[16 * v46 + 32];
    v125 = *&v7[16 * v46 + 40];
    v126 = v85;
    v87 = 8 * v85;
    v88 = &v84[8 * v85];
    v89 = 8 * v86;
    v90 = &v84[8 * v86];
    v91 = &v84[8 * v125];
    v92 = 8 * v86 - 8 * v85;
    v93 = 8 * v125 - 8 * v86;
    if (v92 >= v93)
    {
      if (v90 != v45 || v91 <= v45)
      {
        memmove(v45, &v84[8 * v86], 8 * v125 - 8 * v86);
      }

      v133 = &v45[v93];
      v4 = v131;
      if (v93 < 1 || v89 <= v87)
      {
        v7 = v45;
        v110 = v90;
      }

      else
      {
        v120 = v88;
        do
        {
          v101 = v90 - 8;
          v91 -= 8;
          v102 = v133;
          while (1)
          {
            v103 = v91 + 8;
            v104 = *(v102 - 1);
            v102 -= 8;
            v105 = v101;
            v106 = *v101;
            v107 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            v108 = *(v104 + v107);
            v109 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            if (*(v106 + v109) < v108)
            {
              break;
            }

            if (v103 != v133)
            {
              *v91 = *v102;
            }

            v91 -= 8;
            v133 = v102;
            v101 = v105;
            if (v102 <= v45)
            {
              v133 = v102;
              v7 = v45;
              v110 = v90;
              goto LABEL_114;
            }
          }

          v110 = v105;
          if (v103 != v90)
          {
            *v91 = *v105;
          }

          v4 = v131;
          v7 = v45;
          if (v133 <= v45)
          {
            break;
          }

          v90 = v105;
        }

        while (v120 < v105);
      }
    }

    else
    {
      if (v88 != v45 || v90 <= v45)
      {
        memmove(v45, &v84[8 * v85], 8 * v86 - 8 * v85);
      }

      v133 = &v45[v92];
      if (v92 >= 1 && 8 * v125 > v89)
      {
        v7 = v45;
        while (1)
        {
          v94 = *v90;
          v95 = *v7;
          v96 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          v97 = *(v94 + v96);
          v98 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          if (*(v95 + v98) >= v97)
          {
            break;
          }

          v99 = v90;
          v100 = v88 == v90;
          v90 += 8;
          if (!v100)
          {
            goto LABEL_90;
          }

LABEL_91:
          v88 += 8;
          if (v7 >= v133 || v90 >= v91)
          {
            goto LABEL_111;
          }
        }

        v99 = v7;
        v100 = v88 == v7;
        v7 += 8;
        if (v100)
        {
          goto LABEL_91;
        }

LABEL_90:
        *v88 = *v99;
        goto LABEL_91;
      }

      v7 = v45;
LABEL_111:
      v110 = v88;
LABEL_114:
      v4 = v131;
    }

    if (v110 != v7 || v110 >= &v7[(v133 - v7 + (v133 - v7 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v110, v7, 8 * ((v133 - v7) / 8));
    }

    if (v125 < v126)
    {
      goto LABEL_137;
    }

    v111 = v129;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = sub_1B89F3898(v129);
    }

    if (v4 > *(v111 + 2))
    {
      goto LABEL_138;
    }

    v112 = &v111[16 * v124];
    *(v112 + 4) = v126;
    *(v112 + 5) = v125;
    result = sub_1B89F380C(v4);
    v7 = v111;
    v43 = *(v111 + 2);
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  result = sub_1B89F3898(v7);
  v7 = result;
LABEL_127:
  v113 = *(v7 + 2);
  if (v113 < 2)
  {
  }

  while (*a3)
  {
    v114 = *&v7[16 * v113];
    v115 = *&v7[16 * v113 + 24];
    sub_1B89D06B4(&(*a3)[8 * v114], &(*a3)[8 * *&v7[16 * v113 + 16]], &(*a3)[8 * v115], v4);
    if (v119)
    {
    }

    if (v115 < v114)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1B89F3898(v7);
    }

    if (v113 - 2 >= *(v7 + 2))
    {
      goto LABEL_152;
    }

    v116 = &v7[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    result = sub_1B89F380C(v113 - 1);
    v113 = *(v7 + 2);
    if (v113 <= 1)
    {
    }
  }

LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t sub_1B89D06B4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_24:
      v36 = v6;
      v24 = v6 - 8;
      v25 = v5 - 8;
      v26 = v14;
      do
      {
        v27 = v25;
        v28 = v25 + 8;
        v29 = *(v26 - 1);
        v26 -= 8;
        v30 = v24;
        v31 = *v24;
        v32 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        v33 = *(v29 + v32);
        v34 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        if (*(v31 + v34) < v33)
        {
          v5 = v27;
          if (v28 != v36)
          {
            *v27 = *v30;
          }

          if (v14 <= v4 || (v6 = v30, v30 <= v7))
          {
            v6 = v30;
            goto LABEL_35;
          }

          goto LABEL_24;
        }

        if (v28 != v14)
        {
          *v27 = *v26;
        }

        v25 = v27 - 8;
        v14 = v26;
        v24 = v30;
      }

      while (v26 > v4);
      v14 = v26;
      v6 = v36;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = v5;
        v16 = *v6;
        v17 = *v4;
        v18 = v6;
        v19 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        v20 = *(v16 + v19);
        v21 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        if (*(v17 + v21) >= v20)
        {
          break;
        }

        v22 = v18;
        v6 = v18 + 8;
        if (v7 != v18)
        {
          goto LABEL_15;
        }

LABEL_16:
        v7 += 8;
        if (v4 < v14)
        {
          v5 = v15;
          if (v6 < v15)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 8;
      v6 = v18;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      *v7 = *v22;
      goto LABEL_16;
    }

LABEL_18:
    v6 = v7;
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1B89D0994(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B8A24554();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1B8A24674();
}

uint64_t sub_1B89D09F8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B8A24554();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1B8A24554();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1B89B3DCC(result);

  return sub_1B89DD6CC(v4, v2, 0);
}

uint64_t sub_1B89D0AD0(unint64_t a1, void **a2)
{
  v3 = a1;
  v4 = *a2;
  if (!*a2)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = a1 >> 62;
    if (a1 >> 62)
    {
      goto LABEL_47;
    }

    v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v27;
LABEL_23:
    v29 = v27 != 0;
    if (v28 < v29)
    {
      __break(1u);
      goto LABEL_54;
    }

    if ((v3 & 0xC000000000000001) != 0 && v27)
    {
      type metadata accessor for Sticker.Representation();

      v30 = 0;
      do
      {
        v31 = v30 + 1;
        sub_1B8A24654();
        v30 = v31;
      }

      while (v29 != v31);
      if (!v2)
      {
        goto LABEL_29;
      }
    }

    else
    {

      if (!v2)
      {
LABEL_29:
        v29 = 0;
        v3 &= 0xFFFFFFFFFFFFFF8uLL;
        v32 = v3 + 32;
        if (v27)
        {
          v27 = 3;
        }

        else
        {
          v27 = 1;
        }

        goto LABEL_36;
      }
    }

    v3 = sub_1B8A24734();
    v29 = v34;
    v27 = v35;
    if ((v35 & 1) == 0)
    {
LABEL_35:
      sub_1B8A0DD04(v3, v32, v29, v27);
      v37 = v36;
      swift_unknownObjectRelease();
      return v37;
    }

LABEL_36:
    v2 = v32;
    sub_1B8A24964();
    swift_unknownObjectRetain_n();
    v38 = swift_dynamicCastClass();
    if (!v38)
    {
      swift_unknownObjectRelease();
      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = *(v38 + 16);

    if (!__OFSUB__(v27 >> 1, v29))
    {
      if (v39 == (v27 >> 1) - v29)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        result = v40;
        if (!v40)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return result;
      }

      goto LABEL_55;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    swift_unknownObjectRelease();
    v32 = v2;
    goto LABEL_35;
  }

  if (v4 == 1)
  {
  }

  result = MEMORY[0x1E69E7CC0];
  if (v4 != 2)
  {
    v51 = MEMORY[0x1E69E7CC0];
    if (v3 >> 62)
    {
      goto LABEL_52;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {
      v46 = v4;
      if (!i)
      {
        break;
      }

      v42 = v4;
      v43 = i;
      v7 = 0;
      v44 = v3 & 0xFFFFFFFFFFFFFF8;
      v45 = v3 & 0xC000000000000001;
      v8 = &unk_1EBA91F50;
      v9 = &unk_1B8A26500;
      while (1)
      {
        if (v45)
        {
          v11 = MEMORY[0x1B8CC44E0](v7, v3);
        }

        else
        {
          v10 = *(v44 + 16);
          if (v7 >= v10)
          {
            goto LABEL_46;
          }

          v11 = *(v3 + 8 * v7 + 32);
        }

        v12 = v11;
        v2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v50[3] = type metadata accessor for Sticker.Representation();
        v50[0] = v12;
        sub_1B89AF268(v50, v48, v8, v9);
        v13 = v49;
        if (v49)
        {
          v14 = __swift_project_boxed_opaque_existential_0(v48, v49);
          v47 = &v41;
          v15 = v9;
          v16 = v3;
          v17 = v8;
          v18 = *(v13 - 8);
          v19 = *(v18 + 64);
          MEMORY[0x1EEE9AC00](v14);
          v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v18 + 16))(v21);
          v22 = v12;
          v23 = sub_1B8A24944();
          (*(v18 + 8))(v21, v13);
          v8 = v17;
          v3 = v16;
          v9 = v15;
          i = v43;
          __swift_destroy_boxed_opaque_existential_0(v48);
        }

        else
        {
          v24 = v12;
          v23 = 0;
        }

        v25 = [v46 evaluateWithObject_];
        swift_unknownObjectRelease();
        sub_1B89A8A78(v50, v8, v9);
        if (v25)
        {
          sub_1B8A246B4();
          v26 = *(v51 + 16);
          sub_1B8A246E4();
          sub_1B8A246F4();
          sub_1B8A246C4();
        }

        else
        {
        }

        ++v7;
        if (v2 == i)
        {
          v33 = v51;
          v4 = v42;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (v3 < 0)
      {
        v4 = v3;
      }

      else
      {
        v4 = v10;
      }

      v27 = sub_1B8A24554();
      if ((sub_1B8A24554() & 0x8000000000000000) == 0)
      {
        v28 = sub_1B8A24554();
        goto LABEL_23;
      }

      __break(1u);
LABEL_52:
      ;
    }

    v33 = MEMORY[0x1E69E7CC0];
LABEL_43:
    sub_1B89AADD4(v4);
    return v33;
  }

  return result;
}