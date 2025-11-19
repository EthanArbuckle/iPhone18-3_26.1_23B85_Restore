void sub_1B1AC763C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v89 = v2;
  v90 = v3;
  v92 = v4;
  v5 = sub_1B1C2D128();
  v6 = OUTLINED_FUNCTION_7(v5);
  v87 = v7;
  v88 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v86 = v11 - v10;
  v12 = sub_1B1C2D118();
  v13 = OUTLINED_FUNCTION_45(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  v85 = v17 - v16;
  v18 = sub_1B1C2C9D8();
  v19 = OUTLINED_FUNCTION_23(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v83 - v26;
  v28 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762460, &unk_1B1C37E30);
  swift_allocObject();
  v29 = sub_1B1B2A370();
  v91 = v28;
  *(v0 + v28) = v29;
  v30 = (v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
  v31 = sub_1B1C2C1C8();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v31);
  *v30 = 0;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940) + 28);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762790, &unk_1B1C38A70);
  OUTLINED_FUNCTION_23(v33);
  bzero(v30 + v32, *(v34 + 64));
  v83 = v32;
  v84 = v30;
  sub_1B1B480BC(v27, v30 + v32);
  v35 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty;
  *v35 = 0;
  v35[4] = 1;
  v36 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading;
  *v36 = 0;
  v36[4] = 0;
  v37 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter;
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_progressQueue;
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  v94 = MEMORY[0x1E69E7CC0];
  sub_1B1AADE74(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AA624C(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v87 + 104))(v86, *MEMORY[0x1E69E8090], v88);
  v39 = v89;
  v40 = sub_1B1C2D158();
  v88 = v38;
  *(v0 + v38) = v40;
  v41 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDownloadSize;
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = (v41 + 8);
  v43 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize;
  *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize) = 0;
  *(v0 + v43 + 8) = 0;
  v44 = v0 + v43 + 8;
  v45 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages;
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = (v45 + 8);
  v47 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId;
  *v47 = 0;
  *(v47 + 2) = 0;
  *(v47 + 1) = 0;
  v48 = (v47 + 8);

  v49 = sub_1B1AC7E40(v92, v39);
  if (!v50)
  {
LABEL_13:

    v80 = *(v1 + v91);

    sub_1B1A90C20(v84 + v83, &unk_1EB761F00, &qword_1B1C36480);

    OUTLINED_FUNCTION_58_3(v42);
    OUTLINED_FUNCTION_58_3(v44);
    sub_1B1A90C20(v46, &qword_1EB762788, &qword_1B1C38A68);
    sub_1B1A90C20(v48, &qword_1EB761D78, &qword_1B1C38F90);
    type metadata accessor for TTSAssetUAFAsset(0);
    v81 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v82 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_14;
  }

  v52 = (v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
  *v52 = v49;
  v52[1] = v50;
  v52[2] = v51;
  v53 = v90;
  v54 = sub_1B1B42D78(0x7A69537465737361, 0xE900000000000065, v90);
  if (v55)
  {

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v56 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v56, qword_1ED9A9120);

    v57 = sub_1B1C2C888();
    v58 = sub_1B1C2D0D8();

    v90 = v57;
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      LODWORD(v87) = v58;
      v61 = v60;
      v94 = v60;
      *v59 = 136315138;
      v62 = sub_1B1A930E4(v92, v39, &v94);

      *(v59 + 4) = v62;
      v63 = v90;
      _os_log_impl(&dword_1B1A8A000, v90, v87, "Unavailable UAF asset for this device: %s.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    v78 = v52[1];
    v79 = v52[2];
    goto LABEL_13;
  }

  v64 = v54;

  v65 = v91;
  v66 = *(v1 + v91);
  v94 = v64;

  v67 = sub_1B1C2D778();
  v68 = MEMORY[0x1E69E6158];
  v96 = MEMORY[0x1E69E6158];
  v94 = v67;
  v95 = v69;
  sub_1B1AC965C(&v94);

  v70 = sub_1B1B42D78(0x657A69536B736964, 0xE800000000000000, v53);
  if ((v71 & 1) == 0)
  {
    v72 = *(v1 + v65);
    v94 = v70;

    v73 = sub_1B1C2D778();
    v96 = v68;
    v94 = v73;
    v95 = v74;
    sub_1B1AC965C(&v94);
  }

  v75 = *(v1 + v65);

  sub_1B1A93AEC(0x65676175676E614CLL, 0xE900000000000073, v53);
  sub_1B1AC965C(&v94);

  v76 = *(v1 + v65);

  sub_1B1A93AEC(0x7265646E6567, 0xE600000000000000, v53);

  sub_1B1AC965C(&v94);

  v77 = type metadata accessor for TTSAssetUAFAsset(0);
  v93.receiver = v1;
  v93.super_class = v77;
  objc_msgSendSuper2(&v93, sel_init);
LABEL_14:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1AC7E40(uint64_t a1, uint64_t a2)
{
  sub_1B1A8EDAC();
  v3 = sub_1B1C2D368();
  v4 = v3[2];
  if (v4 < 6)
  {

    v21 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v22 = qword_1ED9AA670;
    if (!os_log_type_enabled(qword_1ED9AA670, v21))
    {
      goto LABEL_30;
    }

    v23 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6_18(4.8149e-34, v14, v24, 46, 0xE100000000000000, v14, a2);
    OUTLINED_FUNCTION_13_17();
    *(v23 + 4) = a1;
    v16 = "Factor %s does not have expected prefix.";
    goto LABEL_17;
  }

  v5 = v3[12];
  v6 = v3[13];
  v7 = v5 == 0x6563696F76 && v6 == 0xE500000000000000;
  if (v7 || (v8 = v3[12], v9 = v3[13], (sub_1B1C2D7A8() & 1) != 0))
  {
    if (v4 != 9)
    {
      v10 = 9;
      goto LABEL_9;
    }

    return a1;
  }

  v25 = v5 == 0x656372756F736572 && v6 == 0xE800000000000000;
  if (!v25 && (sub_1B1C2D7A8() & 1) == 0)
  {

    v21 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v22 = qword_1ED9AA670;
    if (!os_log_type_enabled(qword_1ED9AA670, v21))
    {
      goto LABEL_30;
    }

    v23 = swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_6_18(4.8149e-34, v14, v26, 46, 0xE100000000000000, v14, a2);
    OUTLINED_FUNCTION_13_17();
    *(v23 + 4) = a1;
    v16 = "Encountered entirely unexpected factor %s.";
LABEL_17:
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = 12;
    goto LABEL_18;
  }

  if (v4 != 6)
  {
    v10 = 6;
LABEL_9:

    v11 = sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    v12 = qword_1ED9AA670;
    if (os_log_type_enabled(qword_1ED9AA670, v11))
    {
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_6_18(4.8151e-34, v14, v15, 46, 0xE100000000000000, v14, a2);
      OUTLINED_FUNCTION_13_17();
      *(v13 + 4) = a1;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v10;
      v16 = "Factor %s does not have %ld components as expected.";
      v17 = v11;
      v18 = v12;
      v19 = v13;
      v20 = 22;
LABEL_18:
      _os_log_impl(&dword_1B1A8A000, v18, v17, v16, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
      return 0;
    }

LABEL_30:

    return 0;
  }

  return a1;
}

void sub_1B1AC8160()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
  if (v1[2] < 9uLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  v5 = v1[20];
  v6 = v1[21];
  v7 = MEMORY[0x1E69E6158];
  v72 = MEMORY[0x1E69E6158];
  *&v71 = v5;
  *(&v71 + 1) = v6;

  sub_1B1AC965C(&v71);

  if (v1[2] < 8uLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(v2 + v3);
  v9 = v1[18];
  v10 = v1[19];
  v72 = v7;
  *&v71 = v9;
  *(&v71 + 1) = v10;

  sub_1B1AC965C(&v71);

  if (v1[2] < 7uLL)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = *(v2 + v3);
  v12 = v1[17];
  *&v71 = v1[16];
  *(&v71 + 1) = v12;
  *&v67 = 95;
  *(&v67 + 1) = 0xE100000000000000;
  v69 = 45;
  v70 = 0xE100000000000000;
  v13 = sub_1B1A8EDAC();

  v51 = v13;
  v52 = v13;
  v49 = v7;
  v50 = v13;
  OUTLINED_FUNCTION_4();
  v14 = sub_1B1C2D398();
  v72 = v7;
  *&v71 = v14;
  *(&v71 + 1) = v15;
  sub_1B1AC965C(&v71);

  v58 = v2;
  v59 = v3;
  v16 = *(v2 + v3);

  sub_1B1AB9288();

  v17 = v72;
  sub_1B1A90C20(&v71, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v17)
  {
    v18 = *(v58 + v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1B1C361C0;
    if (v1[2] < 6uLL)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20 = v19;
    v21 = v1[15];
    *(v19 + 32) = v1[14];
    *(v19 + 40) = v21;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    *&v71 = v20;

    sub_1B1AC965C(&v71);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 1634886004;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1851878753;
  *(inited + 56) = 0xE400000000000000;
  v23 = v1[16];
  v24 = v1[17];
  v60 = v1;
  *&v71 = v23;
  *(&v71 + 1) = v24;
  *&v67 = 95;
  *(&v67 + 1) = 0xE100000000000000;
  v69 = 45;
  v70 = 0xE100000000000000;
  v52 = v13;
  v49 = v7;
  v50 = v13;
  OUTLINED_FUNCTION_4();
  sub_1B1C2D398();
  v25 = sub_1B1C2CBE8();
  v27 = v26;

  *&v71 = v25;
  *(&v71 + 1) = v27;
  MEMORY[0x1EEE9AC00](v28);
  v51 = &v71;
  v29 = sub_1B1ABAA5C(sub_1B1ABAB38, &v49, inited);
  v57 = 0;
  swift_setDeallocating();
  sub_1B1AC9708();

  if (!v29)
  {
LABEL_21:
    OUTLINED_FUNCTION_26_1();
    return;
  }

  v30 = *(v58 + v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1B1C361C0;
  v55 = v31;
  *(v31 + 32) = 0x65676175676E614CLL;
  *(v31 + 40) = 0xE900000000000073;

  v56 = v30;
  sub_1B1AB9288();
  if (v68)
  {
    sub_1B1A9EEE0(&v67, &v71);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    swift_dynamicCast();
    v32 = 0;
    v33 = v66;
    v59 = *(v66 + 16);
    v34 = v66 + 40;
    v58 = MEMORY[0x1E69E7CC0];
    v53 = v66 + 40;
LABEL_10:
    for (i = (v34 + 16 * v32); ; i += 2)
    {
      if (v59 == v32)
      {

        v45 = v55;
        *(v55 + 72) = v54;
        *(v45 + 48) = v58;
        sub_1B1C2CAB8();
        v46 = v56;
        os_unfair_lock_lock(v56 + 4);

        OUTLINED_FUNCTION_5_8();
        sub_1B1B479F4(v47, v48, 0, &v46[6]);
        os_unfair_lock_unlock(v46 + 4);

        goto LABEL_21;
      }

      if (v32 >= *(v33 + 16))
      {
        break;
      }

      v36 = *(i - 1);
      v37 = *i;
      v38 = v60[17];
      v69 = v60[16];
      v70 = v38;
      v63 = 95;
      v64 = 0xE100000000000000;
      v61 = 45;
      v62 = 0xE100000000000000;

      v51 = v13;
      v52 = v13;
      v50 = v13;
      v49 = MEMORY[0x1E69E6158];
      OUTLINED_FUNCTION_4();
      sub_1B1C2D398();
      sub_1B1C2CBE8();

      v39 = sub_1B1AC974C();

      if (v39)
      {
        v40 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = *(v40 + 16);
          sub_1B1AC9FA8();
          v40 = v65;
        }

        v43 = *(v40 + 16);
        if (v43 >= *(v40 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v40 = v65;
        }

        ++v32;
        *(v40 + 16) = v43 + 1;
        v58 = v40;
        v44 = v40 + 16 * v43;
        *(v44 + 32) = v36;
        *(v44 + 40) = v37;
        v34 = v53;
        goto LABEL_10;
      }

      ++v32;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1B1AC87D4(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for TTSFeatureFlags.FFKey;
  v7[4] = sub_1B1AC8844();
  LOBYTE(v7[0]) = a2;
  v5 = sub_1B1C2C4E8();
  result = __swift_destroy_boxed_opaque_existential_0(v7);
  *a3 = v5 & 1;
  return result;
}

unint64_t sub_1B1AC8844()
{
  result = qword_1ED9A9730;
  if (!qword_1ED9A9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9730);
  }

  return result;
}

uint64_t sub_1B1AC891C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
  v36 = a2;
  result = sub_1B1C2D698();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
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
      sub_1B1ADFF70(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1B1A9EEE0(v23, v37);
    }

    else
    {
      sub_1B1A93378(v23, v37);
    }

    v24 = *(v8 + 40);
    sub_1B1C2D888();
    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1B1A9EEE0(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B1AC8BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))();
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v7 = qword_1ED9A9980;
  v8 = sub_1B1C2D248();

  if (v8)
  {
    a3 = a1;
  }

  else
  {
    if (qword_1ED9A8DC8 != -1)
    {
      swift_once();
    }

    v9 = off_1ED9A8DD0;
    if (*(off_1ED9A8DD0 + 2))
    {
      v10 = sub_1B1A8EB10();
      if (v11)
      {
        v12 = (v9[7] + 16 * v10);
        a3 = *v12;
        v13 = v12[1];
      }
    }
  }

  return a3;
}

id sub_1B1AC8D50()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A9980 = result;
  return result;
}

uint64_t static TTSAsset.brand(forLanguage:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (qword_1ED9A8F68 != -1)
  {
    swift_once();
  }

  if (sub_1B1A93A00(a1, a2, qword_1ED9AA5C0))
  {
    return 0;
  }

  sub_1B1A8EDAC();
  if (sub_1B1C2D3D8())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B1AC8E94()
{
  result = sub_1B1ACB6B8(&unk_1F28B8FE8);
  qword_1ED9AA5C0 = result;
  return result;
}

id sub_1B1AC8EBC()
{
  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_75();
  result = sub_1B1AAFB2C();
  qword_1ED9A97E0 = result;
  return result;
}

void *sub_1B1AC8F14()
{
  result = sub_1B1C2CAB8();
  off_1ED9A8DD0 = result;
  return result;
}

uint64_t sub_1B1AC8F78()
{
  v13 = sub_1B1C2D128();
  v0 = OUTLINED_FUNCTION_7(v13);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1B1C2D118();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v10 = sub_1B1C2C9D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_16();
  sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
  sub_1B1C2C9A8();
  sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1C2D418();
  (*(v2 + 104))(v7, *MEMORY[0x1E69E8090], v13);
  result = sub_1B1C2D158();
  qword_1EB772D00 = result;
  return result;
}

uint64_t static Languages.availableLanguages.getter()
{
  if (qword_1ED9A8F40 != -1)
  {
    OUTLINED_FUNCTION_0_38();
  }
}

unint64_t sub_1B1AC9204()
{
  result = qword_1ED9A9860;
  if (!qword_1ED9A9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9860);
  }

  return result;
}

uint64_t sub_1B1AC9258()
{
  if (qword_1ED9A9590 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED9A9643 == 1)
  {
    if (qword_1EB761468 != -1)
    {
      result = swift_once();
    }

    v0 = byte_1EB7612F0 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  byte_1EB76148D = v0 & 1;
  return result;
}

id sub_1B1AC9310(uint64_t a1, SEL *a2, _BYTE *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

id sub_1B1AC934C()
{
  if (qword_1EB761460 != -1)
  {
    swift_once();
  }

  if (byte_1EB76121C)
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_self() isNaturalPlatform];
  }

  byte_1EB761479 = result;
  return result;
}

uint64_t sub_1B1AC93E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762798, &qword_1B1C38A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C38930;
  *(inited + 32) = 256;
  *(inited + 34) = 1;
  if (qword_1ED9A9590 != -1)
  {
    swift_once();
  }

  *(inited + 35) = byte_1ED9A9643;
  *(inited + 36) = 196610;
  *(inited + 40) = 4;
  if (qword_1EB761480 != -1)
  {
    swift_once();
  }

  *(inited + 41) = byte_1EB76148D;
  *(inited + 42) = 5;
  if (qword_1EB761470 != -1)
  {
    swift_once();
  }

  *(inited + 43) = byte_1EB761479;
  sub_1B1AC9534();
  return sub_1B1C2CAB8();
}

unint64_t sub_1B1AC9534()
{
  result = qword_1EB7613A0;
  if (!qword_1EB7613A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7613A0);
  }

  return result;
}

unint64_t sub_1B1AC958C()
{
  result = qword_1EB761398;
  if (!qword_1EB761398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761398);
  }

  return result;
}

void *sub_1B1AC960C()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  sub_1B1AC763C();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    sub_1B1AC8160();
  }

  return v3;
}

uint64_t sub_1B1AC965C(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  sub_1B1AA101C(a1, v7, &qword_1EB761DE0, &qword_1B1C352C0);

  sub_1B1A9EE20(v7);
  os_unfair_lock_unlock(v1 + 4);

  v3 = OUTLINED_FUNCTION_30_5();
  return sub_1B1A90C20(v3, v4, v5);
}

uint64_t sub_1B1AC9708()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B1AC974C()
{
  v26 = 45;
  v27 = 0xE100000000000000;
  v24 = 95;
  v25 = 0xE100000000000000;
  sub_1B1A8EDAC();
  OUTLINED_FUNCTION_4();
  v0 = sub_1B1C2D398();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 1634886004;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1851878753;
  *(inited + 56) = 0xE400000000000000;
  v28[0] = sub_1B1C2CBE8();
  v28[1] = v4;
  v23 = v28;
  v5 = sub_1B1ABAA5C(sub_1B1ABAB38, v22, inited);
  swift_setDeallocating();
  sub_1B1AC9708();

  if (!v5)
  {

    return 1;
  }

  v6 = v0 == 0x4E495F6E62 && v2 == 0xE500000000000000;
  if (v6 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
  {

    if (qword_1EB761430 != -1)
    {
      swift_once();
    }

    return byte_1EB772CF0;
  }

  else
  {
    v8 = v0 == 0x4E495F7567 && v2 == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
    {

      if (qword_1ED9A8FA8 != -1)
      {
        swift_once();
      }

      return byte_1ED9AA5BA;
    }

    else
    {
      v9 = v0 == 0x4E495F6968 && v2 == 0xE500000000000000;
      if (v9 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
      {

        if (qword_1ED9A8FA0 != -1)
        {
          swift_once();
        }

        return byte_1ED9AA5B9;
      }

      else
      {
        v10 = v0 == 0x4E495F6E6BLL && v2 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
        {

          if (qword_1EB761428 != -1)
          {
            swift_once();
          }

          return byte_1EB772CA8;
        }

        else
        {
          v11 = v0 == 0x4E495F6C6DLL && v2 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
          {

            if (qword_1EB761420 != -1)
            {
              swift_once();
            }

            return byte_1EB772E28;
          }

          else
          {
            v12 = v0 == 0x4E495F726DLL && v2 == 0xE500000000000000;
            if (v12 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
            {

              if (qword_1ED9A8F98 != -1)
              {
                swift_once();
              }

              return byte_1ED9AA5B8;
            }

            else
            {
              v13 = v0 == 0x4E495F6170 && v2 == 0xE500000000000000;
              if (v13 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
              {

                if (qword_1EB761410 != -1)
                {
                  swift_once();
                }

                return byte_1EB772D28;
              }

              else
              {
                v14 = v0 == 0x4E495F726FLL && v2 == 0xE500000000000000;
                if (v14 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
                {

                  if (qword_1EB761418 != -1)
                  {
                    swift_once();
                  }

                  return byte_1EB772E29;
                }

                else
                {
                  v15 = v0 == 0x4E495F6174 && v2 == 0xE500000000000000;
                  if (v15 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
                  {

                    if (qword_1EB761400 != -1)
                    {
                      swift_once();
                    }

                    return byte_1EB772E2A;
                  }

                  else
                  {
                    v16 = v0 == 0x4E495F6574 && v2 == 0xE500000000000000;
                    if (v16 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
                    {

                      if (qword_1EB7613F8 != -1)
                      {
                        swift_once();
                      }

                      return byte_1EB772E2B;
                    }

                    else
                    {
                      v17 = v0 == 0x4E495F7275 && v2 == 0xE500000000000000;
                      if (v17 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
                      {

                        if (qword_1EB7613F0 != -1)
                        {
                          swift_once();
                        }

                        return byte_1EB772E2C;
                      }

                      else
                      {
                        v18 = v0 == 0x4E495F7361 && v2 == 0xE500000000000000;
                        if (v18 || (OUTLINED_FUNCTION_5_3() & 1) != 0)
                        {

                          if (qword_1EB761438 != -1)
                          {
                            swift_once();
                          }

                          return byte_1EB772E2D;
                        }

                        else
                        {
                          v19 = v0 == 0x4E495F696E6DLL && v2 == 0xE600000000000000;
                          if (v19 || (sub_1B1C2D7A8() & 1) != 0)
                          {

                            if (qword_1EB7613E0 != -1)
                            {
                              swift_once();
                            }

                            return byte_1EB772E2E;
                          }

                          else
                          {
                            if (v0 == 0x4E495F6E65 && v2 == 0xE500000000000000)
                            {
                            }

                            else
                            {
                              v21 = OUTLINED_FUNCTION_5_3();

                              result = 0;
                              if ((v21 & 1) == 0)
                              {
                                return result;
                              }
                            }

                            if (qword_1ED9A8FB8 != -1)
                            {
                              swift_once();
                            }

                            return byte_1ED9AA5BB;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

char *sub_1B1AC9DF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_2(a3, result);
  }

  return result;
}

uint64_t sub_1B1AC9E40(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1B1C2D888();
  a3(a2);
  OUTLINED_FUNCTION_54();

  return sub_1B1C2D8E8();
}

uint64_t sub_1B1AC9E94(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1B1C2D888();
  a2(a1);
  sub_1B1C2CC48();

  v7 = sub_1B1C2D8E8();

  return a3(a1, v7);
}

uint64_t sub_1B1AC9F5C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = sub_1B1AC9F30(a1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

void sub_1B1AC9FA8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_34_2();
  sub_1B1AA63F4(v2, v3, v4, v5, v6, v7, v8);
  *v0 = v9;
}

uint64_t sub_1B1AC9FE4(int64_t a1, void *a2)
{
  LOBYTE(v5) = sub_1B1C2D098();
  if (qword_1ED9A99B8 != -1)
  {
LABEL_137:
    OUTLINED_FUNCTION_0_12();
  }

  v6 = qword_1ED9AA668;
  *&v211 = a2;
  if (os_log_type_enabled(qword_1ED9AA668, v5))
  {
    v7 = OUTLINED_FUNCTION_21_0();
    v8 = swift_slowAlloc();
    *&aBlock = v8;
    *v7 = 136446210;
    v9 = sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v10 = MEMORY[0x1B2738350](a1, v9);
    v12 = sub_1B1A930E4(v10, v11, &aBlock);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, v6, v5, "Listing asset types %{public}s through XPC service...", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  sub_1B1AEF968();
  v13 = *(v2 + 32);
  if (v13)
  {
    v14 = sub_1B1A9547C(a1);
    if (v14)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];
      swift_unknownObjectRetain();
      sub_1B1C2D5B8();
      if ((v14 & 0x8000000000000000) != 0)
      {
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
        goto LABEL_149;
      }

      v15 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1B2738A20](v15, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        ++v15;
        v18 = [v16 string];
        sub_1B1C2CB58();

        v19 = sub_1B1C2CBF8();

        xpc_string_create((v19 + 32));

        sub_1B1C2D588();
        v5 = *(aBlock + 16);
        sub_1B1C2D5C8();
        OUTLINED_FUNCTION_92();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }

      while (v14 != v15);
      v20 = aBlock;
      a2 = v211;
    }

    else
    {
      swift_unknownObjectRetain();
      v20 = MEMORY[0x1E69E7CC0];
    }

    v205 = v6;
    connection = v13;
    if (!(v20 >> 62))
    {
      v22 = v20 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
      v23 = v22 + 32;
      goto LABEL_18;
    }

    if (!OUTLINED_FUNCTION_10_11())
    {
      v23 = -8;
LABEL_18:
      v210 = xpc_array_create(v23, v14);
      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
      v223 = MEMORY[0x1E69E7CC0];
      v2 = (a2 + 8);
      v24 = a2[8];
      v25 = *(a2 + 32);
      OUTLINED_FUNCTION_19_4();
      v28 = v27 & v26;
      v30 = (v29 + 63) >> 6;

      v31 = 0;
      v207 = MEMORY[0x1E69E7CC8];
      v32 = MEMORY[0x1E69E6158];
      v212 = (a2 + 8);
      if (!v28)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v33 = v31;
LABEL_24:
        v34 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v35 = v34 | (v33 << 6);
        v36 = *(a2[6] + 8 * v35);
        sub_1B1A93378(a2[7] + 32 * v35, v219);
        *&v220 = v36;
        sub_1B1A9EEE0(v219, (&v220 + 8));
LABEL_25:
        aBlock = v220;
        v216 = v221;
        v217 = v222;
        if (!v222)
        {

          sub_1B1A9547C(v14);
          if (v14 >> 62)
          {
            v202 = sub_1B1C2D468();

            if (v202)
            {
              sub_1B1B37204(v14);
            }
          }

          else
          {
          }

          v171 = OUTLINED_FUNCTION_43_0();
          v173 = xpc_array_create(v171, v172);
          swift_unknownObjectRelease();
          type metadata accessor for TTSAsset();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762508, &qword_1B1C380B8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1B1C36280;
          *(inited + 32) = 1;
          *(inited + 40) = v210;
          *(inited + 48) = 2;
          *(inited + 56) = v173;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762510, &unk_1B1C380C0);
          sub_1B1AE6CC8();
          sub_1B1C2CAB8();
          sub_1B1AEFB90();
          v176 = v175;

          sub_1B1C2D0A8();
          if (qword_1ED9A9500 != -1)
          {
            OUTLINED_FUNCTION_12_6();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
          v177 = OUTLINED_FUNCTION_54_0();
          v211 = xmmword_1B1C361C0;
          *(v177 + 16) = xmmword_1B1C361C0;
          if ([v176 respondsToSelector_])
          {
            v178 = [v176 debugDescription];
            v179 = sub_1B1C2CB58();
            v181 = v180;
          }

          else
          {
            v179 = 0;
            v181 = 0;
          }

          *(v177 + 56) = v32;
          v182 = sub_1B1AC9204();
          *(v177 + 64) = v182;
          if (v181)
          {
            v183 = v179;
          }

          else
          {
            v183 = 0;
          }

          v184 = 0xE000000000000000;
          if (v181)
          {
            v184 = v181;
          }

          *(v177 + 32) = v183;
          *(v177 + 40) = v184;

          sub_1B1C2C7C8();

          v185 = xpc_connection_send_message_with_reply_sync(connection, v176);
          v186 = MEMORY[0x1B273A270]();
          v208 = v176;
          if (v186 == sub_1B1C2C8D8())
          {
            HIDWORD(v204) = sub_1B1C2D0A8();
            v187 = OUTLINED_FUNCTION_54_0();
            *(v187 + 16) = xmmword_1B1C361C0;
            v188 = [v185 description];
            v189 = sub_1B1C2CB58();
            v190 = v173;
            v192 = v191;

            *(v187 + 56) = v32;
            *(v187 + 64) = v182;
            *(v187 + 32) = v189;
            *(v187 + 40) = v192;
            v173 = v190;
            sub_1B1C2C7C8();
          }

          swift_getObjectType();
          v193 = sub_1B1AE03A8(3);
          if (v193)
          {
            v14 = v193;
            a2 = v173;
            sub_1B1C2D0A8();
            v194 = OUTLINED_FUNCTION_54_0();
            *(v194 + 16) = xmmword_1B1C361C0;
            count = xpc_array_get_count(v14);
            v196 = MEMORY[0x1E69E65A8];
            *(v194 + 56) = MEMORY[0x1E69E6530];
            *(v194 + 64) = v196;
            *(v194 + 32) = count;
            sub_1B1C2C7C8();

            *&v220 = MEMORY[0x1E69E7CC0];
            v197 = swift_allocObject();
            *(v197 + 16) = &v220;
            a1 = swift_allocObject();
            *(a1 + 16) = sub_1B1AE5EF8;
            *(a1 + 24) = v197;
            v217 = sub_1B1AE5960;
            v218 = a1;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            *&v216 = sub_1B1AE5908;
            *(&v216 + 1) = &block_descriptor_8;
            v5 = _Block_copy(&aBlock);

            v198 = OUTLINED_FUNCTION_30_4();
            xpc_array_apply(v198, v199);
            _Block_release(v5);
            LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

            if (v5)
            {
              goto LABEL_143;
            }

            if (v207[2])
            {
              v200 = v220;

              v21 = sub_1B1AB3170(v207, v200);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v21 = v220;
            }
          }

          else
          {

            sub_1B1C2D0B8();
            v21 = MEMORY[0x1E69E7CC0];
            sub_1B1C2C7C8();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          return v21;
        }

        a1 = aBlock;
        sub_1B1A9EEE0((&aBlock + 8), &v220);
        xpc_int64_create(a1);
        MEMORY[0x1B2738320]();
        OUTLINED_FUNCTION_43_4();
        if (v38)
        {
          OUTLINED_FUNCTION_19_1(v37);
          sub_1B1C2CE98();
        }

        OUTLINED_FUNCTION_92();
        sub_1B1C2CEC8();
        v14 = v223;
        sub_1B1A93378(&v220, v219);
        LOBYTE(v5) = MEMORY[0x1E69E7CA0];
        v39 = swift_dynamicCast();
        if (v39)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_4_10(v39, v40, v41, v42, v43, v44, v45, v46, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
        if (swift_dynamicCast())
        {
          LOBYTE(v5) = value[1];
          v48 = sub_1B1C2CBF8();

          xpc_string_create((v48 + 32));

          goto LABEL_32;
        }

        v50 = sub_1B1A8E474(0, &unk_1ED9A9950, &off_1E7AF1AA0);
        OUTLINED_FUNCTION_4_10(v50, v51, v52, v50, v53, v54, v55, v56, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
        v57 = swift_dynamicCast();
        if (v57)
        {
          v65 = value[0];
          v66 = [value[0] string];
          sub_1B1C2CB58();

          v5 = sub_1B1C2CBF8();

          a1 = xpc_string_create((v5 + 32));

          MEMORY[0x1B2738320](v67);
          v68 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v223 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v68 >> 1)
          {
            OUTLINED_FUNCTION_19_1(v68);
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();

          goto LABEL_35;
        }

        OUTLINED_FUNCTION_4_10(v57, v58, v59, v60, v61, v62, v63, v64, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
        if (swift_dynamicCast() || (type metadata accessor for TTSAssetVoiceGender(0), OUTLINED_FUNCTION_4_10(v69, v70, v71, v69, v72, v73, v74, v75, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]), v76 = swift_dynamicCast(), v76))
        {
LABEL_29:
          v47 = xpc_int64_create(value[0]);
        }

        else
        {
          OUTLINED_FUNCTION_4_10(v76, v77, v78, v79, v80, v81, v82, v83, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
          if (!swift_dynamicCast())
          {
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
            OUTLINED_FUNCTION_4_10(v84, v85, v86, v84, v87, v88, v89, v90, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
            if (swift_dynamicCast())
            {
              v91 = value[0];
              a1 = *(value[0] + 16);
              if (a1)
              {
                OUTLINED_FUNCTION_33_1();
                v92 = (v91 + 40);
                v93 = a1;
                do
                {
                  v94 = *(v92 - 1);
                  v95 = *v92;
                  v96 = sub_1B1C2CBF8();

                  xpc_string_create((v96 + 32));

                  sub_1B1C2D588();
                  v5 = *(v213 + 16);
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5C8();
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v92 += 2;
                  --v93;
                }

                while (v93);

                v97 = v213;
                a2 = v211;
                v32 = MEMORY[0x1E69E6158];
              }

              else
              {

                v97 = MEMORY[0x1E69E7CC0];
              }

              if (v97 >> 62)
              {
                if (!OUTLINED_FUNCTION_10_11())
                {
                  v130 = -8;
                  goto LABEL_85;
                }

                v150 = sub_1B1B37204(v166);
                OUTLINED_FUNCTION_21_4();
                swift_bridgeObjectRelease_n();
LABEL_84:
                v130 = v150 + 32;
LABEL_85:
                v149 = a1;
LABEL_86:
                xpc_array_create(v130, v149);
                v47 = swift_unknownObjectRelease();
                goto LABEL_32;
              }

LABEL_83:
              v150 = v97 & 0xFFFFFFFFFFFFFF8;
              goto LABEL_84;
            }

            v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762518, &unk_1B1C380D0);
            OUTLINED_FUNCTION_4_10(v98, v99, v100, v98, v101, v102, v103, v104, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
            if (swift_dynamicCast())
            {
              v14 = value[0];
              if (value[0] >> 62)
              {
                v5 = sub_1B1C2D468();
              }

              else
              {
                v5 = *((value[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v105 = MEMORY[0x1E69E7CC0];
              v208 = v5;
              if (v5)
              {
                v213 = MEMORY[0x1E69E7CC0];
                OUTLINED_FUNCTION_27_4();
                sub_1B1C2D5B8();
                if (v5 < 0)
                {
                  goto LABEL_144;
                }

                v106 = 0;
                a1 = v14 & 0xC000000000000001;
                do
                {
                  if (a1)
                  {
                    v107 = MEMORY[0x1B2738A20](v106, v14);
                  }

                  else
                  {
                    v107 = *(v14 + 8 * v106 + 32);
                  }

                  v108 = v107;
                  ++v106;
                  v109 = [v107 string];
                  sub_1B1C2CB58();

                  v110 = sub_1B1C2CBF8();

                  xpc_string_create((v110 + 32));

                  sub_1B1C2D588();
                  v111 = *(v213 + 16);
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5C8();
                  OUTLINED_FUNCTION_27_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v5 = v208;
                  a2 = v211;
                  v32 = MEMORY[0x1E69E6158];
                }

                while (v208 != v106);

                v105 = v213;
              }

              else
              {
              }

              if (v105 >> 62)
              {
                if (OUTLINED_FUNCTION_10_11())
                {

                  v168 = sub_1B1B37204(v167);
                  OUTLINED_FUNCTION_21_4();
                  swift_bridgeObjectRelease_n();
                  v130 = (v168 + 4);
                }

                else
                {
                  v130 = -8;
                }

                a2 = v211;
                v32 = MEMORY[0x1E69E6158];
                v5 = v208;
              }

              else
              {
                v130 = (v105 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v149 = v5;
              goto LABEL_86;
            }

            v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
            OUTLINED_FUNCTION_4_10(v112, v113, v114, v112, v115, v116, v117, v118, v204, v205, connection, v207, v209, v210, v211, *(&v211 + 1), v212, v213, value[0]);
            if (swift_dynamicCast())
            {
              v119 = value[0];
              a1 = *(value[0] + 16);
              if (a1)
              {
                OUTLINED_FUNCTION_33_1();
                v120 = 32;
                v121 = a1;
                do
                {
                  LOBYTE(v5) = xpc_int64_create(*(v119 + v120));
                  v122 = sub_1B1C2D588();
                  OUTLINED_FUNCTION_49_2(v122, v123, v124, v125, v126, v127, v128, v129, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213);
                  OUTLINED_FUNCTION_30_4();
                  sub_1B1C2D5D8();
                  sub_1B1C2D598();
                  v120 += 8;
                  --v121;
                }

                while (v121);
                goto LABEL_76;
              }

LABEL_81:

              v97 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762528, &unk_1B1C380E0);
              OUTLINED_FUNCTION_4_10(v131, v132, v133, v131, v134, v135, v136, v137, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213, value[0]);
              if (!swift_dynamicCast())
              {
                sub_1B1A93378(&v220, value);
                HIDWORD(v204) = swift_isUniquelyReferenced_nonNull_native();
                v213 = v207;
                v151 = sub_1B1AB2878(a1);
                v152 = v207[2];
                LODWORD(v208) = v153;
                v154 = (v153 & 1) == 0;
                LOBYTE(v5) = v152 + v154;
                if (__OFADD__(v152, v154))
                {
                  goto LABEL_145;
                }

                v155 = v151;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
                if (sub_1B1C2D628())
                {
                  v156 = sub_1B1AB2878(a1);
                  v158 = v208;
                  if ((v208 & 1) != (v157 & 1))
                  {
                    type metadata accessor for TTSAssetProperty(0);
                    result = sub_1B1C2D818();
                    __break(1u);
                    return result;
                  }

                  v155 = v156;
                }

                else
                {
                  v158 = v208;
                }

                LOBYTE(v5) = v207;
                if (v158)
                {
                  v159 = (v207[7] + 32 * v155);
                  __swift_destroy_boxed_opaque_existential_0(v159);
                  sub_1B1A9EEE0(value, v159);
                }

                else
                {
                  v207[(v155 >> 6) + 8] |= 1 << v155;
                  *(v207[6] + 8 * v155) = a1;
                  sub_1B1A9EEE0(value, (v207[7] + 32 * v155));
                  OUTLINED_FUNCTION_38_2();
                  if (v161)
                  {
                    goto LABEL_148;
                  }

                  v207[2] = v160;
                }

                v2 = v212;
                v5 = v14 >> 62;
                if (v14 >> 62)
                {
                  if (!sub_1B1C2D468())
                  {
                    goto LABEL_146;
                  }
                }

                else if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_146;
                }

                isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                if (v5 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
                {
                  v14 = sub_1B1C00F10(v14);
                }

                v163 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v163)
                {
                  goto LABEL_147;
                }

                v164 = v163 - 1;
                v165 = *((v14 & 0xFFFFFFFFFFFFFF8) + 8 * v164 + 0x20);
                *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) = v164;
                swift_unknownObjectRelease();
                v223 = v14;
                __swift_destroy_boxed_opaque_existential_0(&v220);
                goto LABEL_36;
              }

              v138 = value[0];
              a1 = *(value[0] + 16);
              if (!a1)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_33_1();
              v139 = 32;
              v140 = a1;
              do
              {
                LOBYTE(v5) = xpc_int64_create(*(v138 + v139));
                v141 = sub_1B1C2D588();
                OUTLINED_FUNCTION_49_2(v141, v142, v143, v144, v145, v146, v147, v148, v204, v205, connection, v207, v208, v210, v211, *(&v211 + 1), v212, v213);
                OUTLINED_FUNCTION_30_4();
                sub_1B1C2D5D8();
                sub_1B1C2D598();
                v139 += 8;
                --v140;
              }

              while (v140);
LABEL_76:

              v97 = v213;
              a2 = v211;
              v32 = MEMORY[0x1E69E6158];
            }

            if (v97 >> 62)
            {
              if (OUTLINED_FUNCTION_10_11())
              {

                v170 = sub_1B1B37204(v169);
                OUTLINED_FUNCTION_21_4();
                swift_bridgeObjectRelease_n();
                v130 = (v170 + 4);
              }

              else
              {
                v130 = -8;
              }

              a2 = v211;
              v32 = MEMORY[0x1E69E6158];
              goto LABEL_85;
            }

            goto LABEL_83;
          }

          v47 = xpc_BOOL_create(value[0]);
        }

LABEL_32:
        MEMORY[0x1B2738320](v47);
        OUTLINED_FUNCTION_43_4();
        if (v38)
        {
          OUTLINED_FUNCTION_19_1(v49);
          sub_1B1C2CE98();
        }

        OUTLINED_FUNCTION_92();
        sub_1B1C2CEC8();
LABEL_35:
        __swift_destroy_boxed_opaque_existential_0(&v220);
        v14 = v223;
        v2 = v212;
LABEL_36:
        __swift_destroy_boxed_opaque_existential_0(v219);
        if (!v28)
        {
LABEL_20:
          while (1)
          {
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v33 >= v30)
            {
              v28 = 0;
              v222 = 0;
              v220 = 0u;
              v221 = 0u;
              goto LABEL_25;
            }

            v28 = *(v2 + 8 * v33);
            ++v31;
            if (v28)
            {
              v31 = v33;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_137;
        }
      }
    }

LABEL_149:

    v22 = sub_1B1B37204(v203);
    OUTLINED_FUNCTION_21_4();
    swift_bridgeObjectRelease_n();
    goto LABEL_17;
  }

  sub_1B1C2D0B8();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B1C2C7C8();
  return v21;
}

uint64_t sub_1B1ACB1D0(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0x656E6F685069;
      break;
    case 2:
      result = 1685016681;
      break;
    case 3:
      result = 3158381;
      break;
    case 4:
      result = OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000;
      break;
    case 5:
      result = 0x6267385F333168;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B1ACB28C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x636972656E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE600000000000000;
          v8 = 0x656E6F685069;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 1685016681;
          break;
        case 3:
          v7 = 0xE300000000000000;
          v8 = 3158381;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x58416C617275656ELL;
          break;
        case 5:
          v8 = 0x6267385F333168;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x636972656E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          break;
        case 2:
          v9 = 0xE400000000000000;
          v10 = 1685016681;
          break;
        case 3:
          v9 = 0xE300000000000000;
          v10 = 3158381;
          break;
        case 4:
          v9 = 0xE800000000000000;
          v10 = 0x58416C617275656ELL;
          break;
        case 5:
          v10 = 0x6267385F333168;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1B1C2D7A8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id TTSAsset.init()()
{
  *&v0[OBJC_IVAR___TTSAsset_age] = 0;
  *&v0[OBJC_IVAR___TTSAsset_downloadSize] = 0;
  *&v0[OBJC_IVAR___TTSAsset_diskSize] = 0;
  *&v0[OBJC_IVAR___TTSAsset_bundle] = 0;
  v1 = &v0[OBJC_IVAR___TTSAsset____lazy_storage___brand];
  *v1 = 0;
  v1[8] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for TTSAsset();
  return objc_msgSendSuper2(&v3, sel_init);
}

const char *sub_1B1ACB580(char a1)
{
  result = "use_F25Voices_bnIN";
  switch(a1)
  {
    case 1:
      result = "use_F25Voices_guIN";
      break;
    case 2:
      result = "use_F25Voices_hiIN";
      break;
    case 3:
      result = "use_F25Voices_knIN";
      break;
    case 4:
      result = "use_F25Voices_mlIN";
      break;
    case 5:
      result = "use_F25Voices_mrIN";
      break;
    case 6:
      result = "use_F25Voices_paIN";
      break;
    case 7:
      result = "use_F25Voices_orIN";
      break;
    case 8:
      result = "use_F25Voices_taIN";
      break;
    case 9:
      result = "use_F25Voices_teIN";
      break;
    case 10:
      result = "use_F25Voices_urIN";
      break;
    case 11:
      result = "use_F25Voices_asIN";
      break;
    case 12:
      result = "use_F25Voices_mniIN";
      break;
    case 13:
      result = "use_F25Voices_enIN";
      break;
    case 14:
      result = "use_W25Voices_ptPT";
      break;
    case 15:
      result = "next_gen_voice";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1ACB6B8(uint64_t a1)
{
  result = MEMORY[0x1B2738440](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1B1ACB778(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

BOOL sub_1B1ACB778(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B1C2D888();
  sub_1B1C2CC48();
  sub_1B1C2D8E8();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_1_6();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_1B1C2D7A8() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  sub_1B1ACB8C0(a2, a3, v13, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

uint64_t sub_1B1ACB8C0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1B1E44C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B1B1F664(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1B1C2D888();
      sub_1B1C2CC48();
      result = sub_1B1C2D8E8();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1B1C2D7A8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B1B1F12C();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1B1ACBA28()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_33_0(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = OUTLINED_FUNCTION_39_1();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_35_2();
    v11[2] = v3;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = OUTLINED_FUNCTION_68_0();
  if (v1)
  {
    if (v11 != v0 || &v14[8 * v3] <= v13)
    {
      memmove(v13, v14, 8 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v3);
  }
}

uint64_t Asynchronous<>.wait()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3();
  OUTLINED_FUNCTION_6_13(v4);
  v6 = v5;
  OUTLINED_FUNCTION_19_5();

  [v2 lock];

  while (1)
  {
    v7 = OUTLINED_FUNCTION_2_20();
    v8 = *((v3)(v7) + 16);

    if (v8 != 1)
    {
      break;
    }

    v9 = OUTLINED_FUNCTION_2_20();
    v10 = (v3)(v9);
    OUTLINED_FUNCTION_6_13(v10);
    v12 = v11;
    OUTLINED_FUNCTION_19_5();

    [v2 wait];
  }

  v13 = OUTLINED_FUNCTION_2_20();
  v14 = (v3)(v13);
  OUTLINED_FUNCTION_6_13(v14);
  v16 = v15;
  OUTLINED_FUNCTION_19_5();

  [v2 unlock];

  v17 = OUTLINED_FUNCTION_2_20();
  v18 = *((v3)(v17) + 24);
  v19 = v18;

  if (v18)
  {

    v21 = OUTLINED_FUNCTION_2_20();
    v22 = *((v3)(v21) + 24);
    v23 = v22;

    if (v22)
    {
      return swift_willThrow();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B1ACBCE4()
{
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + *(v1 + 104));
  return sub_1B1C2D138();
}

uint64_t static AudioData.supportsSecureCoding.getter()
{
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  return byte_1EB7614B0;
}

uint64_t AudioFile.init(outputURL:format:)(uint64_t a1, uint64_t a2)
{
  outAudioFile[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C1C8();
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  if (sub_1B1C2C0C8() == 6709603 && v14 == 0xE300000000000000)
  {
  }

  else
  {
    v16 = sub_1B1C2D7A8();

    if ((v16 & 1) == 0)
    {
      sub_1B1C2C138();
      goto LABEL_9;
    }
  }

  (*(v8 + 16))(v13, a1, v5);
LABEL_9:
  v17 = sub_1B1C2C118();
  v18 = *(v8 + 8);
  v18(v13, v5);
  v19 = *(a2 + 16);
  *&inFormat.mSampleRate = *a2;
  *&inFormat.mBytesPerPacket = v19;
  *&inFormat.mBitsPerChannel = *(a2 + 32);
  outAudioFile[0] = 0;
  v20 = AudioFileCreateWithURL(v17, 0x63616666u, &inFormat, 1u, outAudioFile);
  if (v20 == sub_1B1C2C958())
  {
    v18(a1, v5);

    *(v2 + 16) = outAudioFile[0];
  }

  else
  {
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD00000000000002FLL, 0x80000001B1C4F120);
    OUTLINED_FUNCTION_12_8();
    sub_1B1AADE74(v21, v22);
    v23 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v23);

    MEMORY[0x1B27381B0](0x203A65646F63202CLL, 0xE800000000000000);
    v24 = sub_1B1B269CC(v20);
    MEMORY[0x1B27381B0](v24);

    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34();
    *v25 = 1;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();

    v18(a1, v5);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B1ACC0CC(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = v1 + OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v3 + 1);
  v32[0] = *v3;
  v32[1] = v4;
  v33 = *(v3 + 4);
  v5 = MEMORY[0x1B27377A0](v32, 40);
  v7 = v6;
  v8 = sub_1B1C2C298();
  v9 = sub_1B1C2CB28();
  [a1 encodeObject:v8 forKey:v9];

  v10 = (v1 + OBJC_IVAR___SiriTTSAudioData_audioData);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = OUTLINED_FUNCTION_40();
  sub_1B1AA64DC(v13, v14);
  OUTLINED_FUNCTION_40();
  v15 = sub_1B1C2C298();
  v16 = OUTLINED_FUNCTION_40();
  sub_1B1A94524(v16, v17);
  v18 = sub_1B1C2CB28();
  [a1 encodeObject:v15 forKey:v18];

  v19 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = OUTLINED_FUNCTION_41();
  [a1 encodeInteger:v20 forKey:v21];

  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudioData_packetDescriptions);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v23 = *v1;
  v22 = v1[1];
  v24 = OUTLINED_FUNCTION_64_0();
  sub_1B1AA64DC(v24, v25);
  OUTLINED_FUNCTION_64_0();
  v26 = sub_1B1C2C298();
  v27 = OUTLINED_FUNCTION_64_0();
  sub_1B1A94524(v27, v28);
  OUTLINED_FUNCTION_75();
  v29 = sub_1B1C2CB28();
  [a1 encodeObject:v26 forKey:v29];

  result = sub_1B1A94524(v5, v7);
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B1ACC308(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  }

  else
  {
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[0] = v1;
  v3[3] = a1;
  return sub_1B1AA5E5C(v3);
}

void sub_1B1ACC380(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = OUTLINED_FUNCTION_3_19();
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_65();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = a2;

      if (Strong)
      {
        [Strong didGenerateAudioWithRequestId:(*((*MEMORY[0x1E69E7D40] & *v5) + 0x90))(v8) audio:v3];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1B1ACC500()
{
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime;
  if (!*(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime))
  {
    *(v1 + v2) = mach_absolute_time();
  }
}

void sub_1B1ACC53C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v2 = OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime;
  if (!*(v1 + OBJC_IVAR___SiriTTSInstrumentationMetrics_synthesisFirstAudioTime))
  {
    *(v1 + v2) = mach_absolute_time();
  }
}

void sub_1B1ACC580()
{
  OUTLINED_FUNCTION_12_17();
  v48 = v2;
  v49 = v1;
  v3 = v0;
  v46 = v4;
  v47 = v5;
  v52 = v6;
  v8 = v7;
  v9 = sub_1B1C2C0A8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = sub_1B1C2C1C8();
  v19 = OUTLINED_FUNCTION_7(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_132();
  v45[1] = v24;
  OUTLINED_FUNCTION_16_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v45 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = v45 - v30;
  v32 = v3 + OBJC_IVAR____TtC14SiriTTSService12CacheStorage_storageURL;
  v33 = v29;
  v45[0] = *(v21 + 16);
  (v45[0])(v28, v32, v29);
  v50 = v8;
  v51 = v52;
  (*(v12 + 104))(v17, *MEMORY[0x1E6968F68], v9);
  sub_1B1A8EDAC();
  sub_1B1C2C1B8();
  (*(v12 + 8))(v17, v9);
  v34 = *(v21 + 8);
  v34(v28, v33);
  v35 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v36 = sub_1B1C2CB28();

  LODWORD(v28) = [v35 createFileAtPath:v36 contents:0 attributes:0];

  if (v28)
  {
    v37 = OUTLINED_FUNCTION_15();
    v38(v37);
    v39 = v46;
    v40 = v47;
    SynthesisCacheFile.init(writeFileURL:voice:resource:)();
  }

  else
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000032, 0x80000001B1C52AE0);
    v41 = sub_1B1C2C098();
    MEMORY[0x1B27381B0](v41);

    v42 = v50;
    v43 = v51;
    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_34();
    *v44 = 1;
    *(v44 + 8) = v42;
    *(v44 + 16) = v43;
    swift_willThrow();
  }

  v34(v31, v33);
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1ACC8C8()
{
  v0 = sub_1B1C2CA38();
  v1 = OUTLINED_FUNCTION_7(v0);
  v41 = v2;
  v42 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v43 = sub_1B1C2CBC8();
  v8 = OUTLINED_FUNCTION_7(v43);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v40 = sub_1B1C2CA68();
  v16 = OUTLINED_FUNCTION_7(v40);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v23 = v22 - v21;
  sub_1B1C2CA58();
  sub_1B1C2D538();
  sub_1B1ACCBE4();
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  sub_1B1ACCD58();
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.text.getter();
  OUTLINED_FUNCTION_10_10();

  OUTLINED_FUNCTION_6_9();
  v24 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.pitch.getter(v24);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v25 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.rate.getter(v25);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v26 = OUTLINED_FUNCTION_5_11();
  SynthesizingRequestProtocol.volume.getter(v26);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_6_9();
  v27 = OUTLINED_FUNCTION_5_11();
  v28 = SynthesizingRequestProtocol.style.getter(v27);
  SynthesisContext.PromptStyle.description.getter(v28);
  OUTLINED_FUNCTION_10_10();

  sub_1B1C2CBB8();
  sub_1B1C2CB68();
  v30 = v29;
  result = (*(v10 + 8))(v15, v43);
  if (v30 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v32 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA64DC(v32, v33);
    v34 = OUTLINED_FUNCTION_43_0();
    sub_1B1ACCEA4(v34, v35);
    v36 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA9670(v36, v37);
    v38 = OUTLINED_FUNCTION_43_0();
    sub_1B1AA9670(v38, v39);
    sub_1B1C2CA48();
    sub_1B1ACD0C0();
    (*(v41 + 8))(v7, v42);
    (*(v18 + 8))(v23, v40);
    return OUTLINED_FUNCTION_43_0();
  }

  return result;
}

uint64_t sub_1B1ACCBE4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_26_2();
  v14 = *v2;
  v15 = v2[1];

  OUTLINED_FUNCTION_8_8();
  v3 = (v1 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1819047278;
  }

  MEMORY[0x1B27381B0](v4, v5);

  OUTLINED_FUNCTION_8_8();
  v6 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65();
  v7 = SynthesisVoice.VoiceType.description.getter(*(v1 + v6));
  MEMORY[0x1B27381B0](v7);

  OUTLINED_FUNCTION_8_8();
  v8 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_65();
  v9 = SynthesisVoice.Footprint.description.getter(*(v1 + v8));
  MEMORY[0x1B27381B0](v9);

  OUTLINED_FUNCTION_8_8();
  v10 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_65();
  v13 = *(v10 + v1);
  v11 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v11);

  return v14;
}

uint64_t sub_1B1ACCD58()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___SiriTTSSynthesisResource_language);
  OUTLINED_FUNCTION_26_2();
  v7 = *v2;
  v8 = v2[1];

  OUTLINED_FUNCTION_8_8();
  v3 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_65();
  v6 = *(v1 + v3);
  v4 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v4);

  return v7;
}

float sub_1B1ACCE44(uint64_t a1, SEL *a2, void *a3)
{
  v5 = [v3 *a2];
  v6 = &v5[*a3];
  OUTLINED_FUNCTION_9_2();
  v7 = *v6;

  return v7;
}

uint64_t sub_1B1ACCEA4(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_9;
      }

      a1 = a1;
      v4 = v6;
LABEL_7:
      result = sub_1B1ACCF50(a1, v4);
      if (v2)
      {
LABEL_8:

        __break(1u);
LABEL_9:
        __break(1u);
        JUMPOUT(0x1B1ACCF40);
      }

      return result;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
      goto LABEL_7;
    default:
      result = sub_1B1B75630();
      if (!v2)
      {
        return result;
      }

      goto LABEL_8;
  }
}

uint64_t sub_1B1ACCF50(uint64_t a1, uint64_t a2)
{
  result = sub_1B1C2BF08();
  if (!result || (result = sub_1B1C2BF38(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B1C2BF28();
      sub_1B1C2CA68();
      sub_1B1ACD078(&qword_1ED9A4F48, MEMORY[0x1E6966620]);
      return sub_1B1C2CA28();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1ACD030(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1ACD078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1ACD0C0()
{
  v1 = sub_1B1C2CA38();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  (*(v7 + 16))(v6 - v5, v0, v1);
  sub_1B1ACD26C();
  result = sub_1B1C2CE18();
  v9 = *(v17 + 16);
  if (v18 == v9)
  {
LABEL_6:

    return 0;
  }

  else
  {
    v10 = MEMORY[0x1E69E7508];
    v11 = MEMORY[0x1E69E7558];
    v12 = v18;
    while ((v18 & 0x8000000000000000) == 0)
    {
      if (v12 >= *(v17 + 16))
      {
        goto LABEL_8;
      }

      v13 = v12 + 1;
      v14 = *(v17 + 32 + v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1B1C361C0;
      *(v15 + 56) = v10;
      *(v15 + 64) = v11;
      *(v15 + 32) = v14;
      v16 = sub_1B1C2CB98();
      MEMORY[0x1B27381B0](v16);

      v12 = v13;
      if (v9 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1ACD26C()
{
  result = qword_1ED9A4F50;
  if (!qword_1ED9A4F50)
  {
    sub_1B1C2CA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A4F50);
  }

  return result;
}

id sub_1B1ACD2C4(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1C2C118();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForUpdatingURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1B1C2C1C8();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1B1C2C058();

    swift_willThrow();
    v9 = sub_1B1C2C1C8();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B1ACD41C(uint64_t a1)
{
  v2 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B1ACD478(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v90 = *MEMORY[0x1E69E9840];
  if (qword_1ED9A5118 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED9A5120;
  [qword_1ED9A5120 lock];
  v10 = *(v3 + 80);
  [v10 lock];
  outBuffer = 0;
  v11 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  v14 = OUTLINED_FUNCTION_43_0();
  sub_1B1AA64DC(v14, v15);
  v16 = OUTLINED_FUNCTION_43_0();
  v17 = MEMORY[0x1B27377C0](v16);
  v18 = OUTLINED_FUNCTION_43_0();
  sub_1B1A94524(v18, v19);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (HIDWORD(v17))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_13:
    v23 = v5 - v4;
    v24 = sub_1B1C2C8A8();
    v25 = OUTLINED_FUNCTION_56(v24, qword_1ED9A9120);
    v26 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_23_6();
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v23;
      _os_log_impl(&dword_1B1A8A000, v25, v26, "Detected stalled audio generation, will enqueue %f silence frame to compensate.", v27, 0xCu);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        v28 = *(v6 + 72);
        SiriTTSService_AudioQueueEnqueueSilence();
        *(v6 + 176) = v23 + *(v6 + 176);
        goto LABEL_19;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  sub_1B1AD25A4(v6, v88);
  v20 = v89;
  if (*(v6 + 168))
  {
    if (v89)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
    }

    else
    {
      v81 = v88[0];
      v82 = v88[1];
      v83 = v88[2];
      v84 = v88[3];
    }

    LOBYTE(__src) = 0;
    *(v6 + 104) = v81;
    *(v6 + 120) = v82;
    *(v6 + 136) = v83;
    *(v6 + 152) = v84;
    *(v6 + 168) = 0;
  }

  if ((v20 & 1) == 0)
  {
    v21 = *v88;
    v4 = *(v6 + 104);
    v22 = *(v6 + 176);
    if (v4 + v22 < *v88)
    {
      OUTLINED_FUNCTION_15_0();
      swift_beginAccess();
      *(v6 + 16) = 1;
      v5 = v21 - v22;
      if (qword_1ED9A9288 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_40;
    }
  }

LABEL_19:
  v29 = AudioQueueAllocateBuffer(*(v6 + 72), v17, &outBuffer);
  if (v29 == sub_1B1C2C958() && (v30 = outBuffer) != 0)
  {
    v79 = v10;
    v31 = *v11;
    v32 = v11[1];
    switch(v32 >> 62)
    {
      case 1uLL:
        v75 = 0;
        v76 = v9;
        if (v31 >> 32 < v31)
        {
          goto LABEL_44;
        }

        v42 = a1;
        v43 = OUTLINED_FUNCTION_48_2();
        sub_1B1AA64DC(v43, v44);
        v45 = OUTLINED_FUNCTION_72();
        sub_1B1AD2650(v45, v46, v47, v30, v42);
        v48 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v48, v49);

        v9 = v76;
        break;
      case 2uLL:
        v75 = 0;
        v77 = *(v31 + 16);
        v50 = *(v31 + 24);
        v51 = a1;
        v52 = OUTLINED_FUNCTION_48_2();
        sub_1B1AA64DC(v52, v53);
        sub_1B1AD2650(v77, v50, v32 & 0x3FFFFFFFFFFFFFFFLL, v30, v51);
        v54 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v54, v55);

        break;
      case 3uLL:
        goto LABEL_23;
      default:
        __src = v31;
        LOWORD(v86) = v32;
        BYTE2(v86) = BYTE2(v32);
        BYTE3(v86) = BYTE3(v32);
        BYTE4(v86) = BYTE4(v32);
        BYTE5(v86) = BYTE5(v32);
        memcpy(outBuffer->mAudioData, &__src, BYTE6(v32));
LABEL_23:
        v33 = OUTLINED_FUNCTION_48_2();
        sub_1B1A94524(v33, v34);
        break;
    }

    v30->mAudioDataByteSize = v17;
    type metadata accessor for AudioQueueInterface.AudioQueueBufferUserData();
    OUTLINED_FUNCTION_66();
    v56 = swift_allocObject();
    v56[2] = 0;
    v56[3] = a2;
    v56[4] = a3;
    v30->mUserData = v56;
    v57 = &a1[OBJC_IVAR___SiriTTSAudioData_asbd];
    OUTLINED_FUNCTION_4_0();
    swift_beginAccess();
    v10 = v79;
    if (*(v57 + 2) == 1819304813)
    {

      v58 = OUTLINED_FUNCTION_64_0();
      v60 = AudioQueueEnqueueBuffer(v58, v59, 0, 0);
    }

    else
    {
      v61 = &a1[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
      OUTLINED_FUNCTION_4_0();
      swift_beginAccess();
      v78 = v9;
      v63 = *v61;
      v62 = v61[1];
      v64 = a1;

      sub_1B1AA64DC(v63, v62);
      v60 = sub_1B1AD279C(v63, v62, v6, v30, v64);
      v65 = v63;
      v9 = v78;
      sub_1B1A94524(v65, v62);
    }

    if (v60 == sub_1B1C2C958())
    {
      if (!*(v6 + 88))
      {
        *(v6 + 88) = mach_absolute_time();
      }

      AudioData.duration.getter();
      *(v6 + 96) = v66 + *(v6 + 96);
      *(v6 + 176) = *(v6 + 176) + AudioData.sampleCount.getter();
    }

    else
    {
      sub_1B1C2D538();

      OUTLINED_FUNCTION_47();
      v67 = sub_1B1B269CC(v60);
      v69 = v68;
      MEMORY[0x1B27381B0](v67);

      sub_1B1A9EC9C();
      OUTLINED_FUNCTION_27();
      v70 = swift_allocError();
      OUTLINED_FUNCTION_50(v70, v71);
      v72();
    }
  }

  else
  {
    sub_1B1C2D538();

    OUTLINED_FUNCTION_47();
    __src = 0xD00000000000002CLL;
    v86 = v35;
    v36 = sub_1B1B269CC(v29);
    v38 = v37;
    MEMORY[0x1B27381B0](v36);

    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_50(v39, v40);
    v41();
  }

  [v10 unlock];
  result = [v9 unlock];
  v74 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AudioData.sampleCount.getter()
{
  v1 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 < 1 || (v3 = v0 + OBJC_IVAR___SiriTTSAudioData_packetDescriptions, OUTLINED_FUNCTION_4_0(), swift_beginAccess(), sub_1B1AA5F48(*v3, *(v3 + 8))))
  {
    v4 = (v0 + OBJC_IVAR___SiriTTSAudioData_audioData);
    OUTLINED_FUNCTION_4_0();
    swift_beginAccess();
    v2 = *v4;
    v5 = v4[1];
    v6 = OUTLINED_FUNCTION_51();
    sub_1B1AA64DC(v6, v7);
    v8 = OUTLINED_FUNCTION_51();
    v9 = MEMORY[0x1B27377C0](v8);
    v10 = OUTLINED_FUNCTION_51();
    sub_1B1A94524(v10, v11);
    v0 += OBJC_IVAR___SiriTTSAudioData_asbd;
    OUTLINED_FUNCTION_11_0();
    result = swift_beginAccess();
    v13 = *(v0 + 24);
    if (!v13)
    {
      __break(1u);
      goto LABEL_10;
    }

    result = v9 / v13;
    if (((v9 / v13) & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v14 = v0 + OBJC_IVAR___SiriTTSAudioData_asbd;
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  result = v2 * *(v14 + 20);
  if ((v2 * *(v14 + 20)) >> 64 != result >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result < 0)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_1B1ACDC78(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v7 = *a1;
  v8 = *(*a1 + 96);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a2;
  v9[4] = a1;
  v10 = *(v7 + 88);
  v11 = *(v10 + 40);
  v12 = *(v7 + 80);
  v13 = a2;

  v11(v13, sub_1B1AD39B0, v9, v12, v10);

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = v13;
  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218752;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2048;
    v19 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    swift_beginAccess();
    *(v18 + 14) = *&v15[v19];
    *(v18 + 22) = 2048;
    v20 = &v15[OBJC_IVAR___SiriTTSAudioData_audioData];
    swift_beginAccess();
    v21 = *v20;
    v22 = *(v20 + 1);
    v23 = 0;
    switch(v22 >> 62)
    {
      case 1uLL:
        LODWORD(v23) = HIDWORD(v21) - v21;
        if (__OFSUB__(HIDWORD(v21), v21))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x1B1ACDF74);
        }

        v23 = v23;
LABEL_10:
        *(v18 + 24) = v23;
        *(v18 + 32) = 1024;
        v28 = &v15[OBJC_IVAR___SiriTTSAudioData_asbd];
        swift_beginAccess();
        *(v18 + 34) = *(v28 + 2) == 1869641075;

        _os_log_impl(&dword_1B1A8A000, v16, v17, "Enqueued audio buffer #%ld, packet count: %ld, bytes: %ld, isOpus: %{BOOL}d", v18, 0x26u);
        MEMORY[0x1B2739FD0](v18, -1, -1);

        break;
      case 2uLL:
        v26 = v21 + 16;
        v25 = *(v21 + 16);
        v24 = *(v26 + 8);
        v27 = __OFSUB__(v24, v25);
        v23 = v24 - v25;
        if (!v27)
        {
          goto LABEL_10;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_10;
      default:
        v23 = BYTE6(v22);
        goto LABEL_10;
    }
  }

  else
  {
  }

  if (a4)
  {

    a4(0);
    sub_1B1A949B4(a4);
  }
}

uint64_t sub_1B1ACDF84()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1B1ACDFC8(uint64_t a1)
{
  OUTLINED_FUNCTION_65();
  if (*(a1 + 16) == 1)
  {
    OUTLINED_FUNCTION_65();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + 40);

      v4 = swift_dynamicCastObjCProtocolConditional();
      if (v4)
      {
        v5 = v4;
        swift_beginAccess();
        *(a1 + 16) = 0;
        OUTLINED_FUNCTION_65();
        if (swift_weakLoadStrong())
        {
          v6 = swift_unknownObjectWeakLoadStrong();

          if (v6)
          {
            [v6 didStartSpeakingWithRequestId_];
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

uint64_t sub_1B1ACE144()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  result = OUTLINED_FUNCTION_66_0();
  if (!*(v2 + v3))
  {
    *(v2 + v3) = mach_absolute_time();
    v5 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
    result = OUTLINED_FUNCTION_65();
    if (*(v2 + v5))
    {
      if ((InstrumentationMetrics.customerPerceivedLatency.getter(), v6 >= 2.0) && (v7 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, OUTLINED_FUNCTION_65(), *(v2 + v7) != 1) || (result = InstrumentationMetrics.customerPerceivedLatency.getter(), v8 > 0.5) && (v9 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart, result = OUTLINED_FUNCTION_65(), *(v2 + v9) == 1))
      {
        v10 = *(v1 + 16);
        if (qword_1ED9A4E28 != -1)
        {
          OUTLINED_FUNCTION_5_22();
        }

        sub_1B1AC638C();
      }
    }
  }

  return result;
}

void sub_1B1ACE278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 96);
    v6 = v5;

    if (v5)
    {
      if (qword_1ED9A4D58 != -1)
      {
        swift_once();
      }

      [v6 postNotificationName:qword_1ED9A4D60 object:a3];
    }
  }
}

uint64_t sub_1B1ACE338(char *a1)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues;
  OUTLINED_FUNCTION_67();

  sub_1B1AC69E8();
  v6 = *(*(v1 + v5) + 16);
  sub_1B1ACF958(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 24 * v6;
  *(v8 + 32) = v2;
  *(v8 + 40) = v4;
  *(v8 + 48) = v3;
  *(v1 + v5) = v7;
  return swift_endAccess();
}

void sub_1B1ACE3E0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, double a7, uint64_t a8, uint64_t a9, double *a10, uint64_t *a11)
{
  swift_beginAccess();
  *(a3 + 16) = 1;
  v79 = type metadata accessor for AudioData();
  v18 = [objc_allocWithZone(v79) init];
  v19 = &v18[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = a1;
  v19[1] = a2;
  sub_1B1A94524(v20, v21);
  sub_1B1AA64DC(a1, a2);
  [a4 asbd];
  v22 = &v18[OBJC_IVAR___SiriTTSAudioData_asbd];
  swift_beginAccess();
  *v22 = v85;
  *(v22 + 1) = v86;
  v22[4] = v87;
  v23 = MEMORY[0x1B27377C0](a1, a2);
  v24 = *(v22 + 4);
  if (!v24)
  {
    goto LABEL_53;
  }

  v25 = OBJC_IVAR___SiriTTSAudioData_packetCount;
  v26 = v23 / v24;
  swift_beginAccess();
  v80 = v25;
  *&v18[v25] = v26;
  a2 = *(a5 + 48);
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_1ED9A4EA8 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    [a2 postNotificationName:qword_1ED9A4EB0 object:v18];
    v26 = *&v18[v80];
LABEL_5:
    v27 = ceilf(v26 / 4800.0);
    if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_54;
    }

    if (v27 <= -9.2234e18)
    {
      goto LABEL_55;
    }

    if (v27 >= 9.2234e18)
    {
      goto LABEL_56;
    }

    v28 = v27;
    if ((v27 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  if (v28)
  {
    v76 = v19;
    a2 = a10;
    v19 = a11;
    v77 = *(v22 + 4);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v29 = 0;
    v30 = MEMORY[0x1E69E7CC0];
    v72 = v28;
    v73 = v18;
    v75 = a5;
    v74 = a9;
    while (v29 != 0x6D3A06D3A06D4)
    {
      v31 = 4800 * v29;
      v32 = *&v18[v80];
      v33 = __OFSUB__(v32, 4800 * v29);
      v34 = v32 - 4800 * v29;
      if (v33)
      {
        goto LABEL_44;
      }

      a9 = v30;
      if (v34 >= 4800)
      {
        v35 = 4800;
      }

      else
      {
        v35 = v34;
      }

      v36 = v31 * *(v22 + 4);
      if ((v31 * *(v22 + 4)) >> 64 != v36 >> 63)
      {
        goto LABEL_45;
      }

      v37 = v35 * v77;
      if ((v35 * v77) >> 64 != (v35 * v77) >> 63)
      {
        goto LABEL_46;
      }

      a5 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_47;
      }

      v81 = v29;
      v38 = v22;
      v22 = v76;
      a2 = *v76;
      v39 = v76[1];
      sub_1B1AA64DC(*v76, v39);
      v18 = MEMORY[0x1B27377C0](a2, v39);
      sub_1B1A94524(a2, v39);
      if (v18 >= a5)
      {
        v40 = a5;
      }

      else
      {
        v40 = v18;
      }

      v41 = [objc_allocWithZone(v79) init];
      if (v40 < v36)
      {
        goto LABEL_48;
      }

      v42 = v41;
      v43 = *v76;
      v44 = v76[1];
      sub_1B1AA64DC(*v76, v44);
      v45 = sub_1B1C2C328();
      v47 = v46;
      sub_1B1A94524(v43, v44);
      v48 = &v42[OBJC_IVAR___SiriTTSAudioData_audioData];
      swift_beginAccess();
      v49 = *v48;
      v50 = v48[1];
      *v48 = v45;
      v48[1] = v47;
      sub_1B1A94524(v49, v50);
      v22 = v38;
      v82 = *v38;
      v83 = *(v38 + 1);
      v84 = v38[4];
      v51 = &v42[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      *v51 = v82;
      *(v51 + 1) = v83;
      *(v51 + 4) = v84;
      v52 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      *&v42[v52] = v35;
      type metadata accessor for DataContainer();
      v53 = swift_allocObject();
      v30 = a9;
      *(v53 + 16) = sub_1B1C2CAB8();
      v54 = v42;
      sub_1B1ACC2E4(v42);
      v55 = a6;
      sub_1B1ACFA84(a6);
      v58 = sub_1B1AA95A0(v56, v57);
      sub_1B1AA795C(v58);
      v59 = sub_1B1AA9644();
      sub_1B1AA9764(v59);
      a9 = v74;
      if (sub_1B1A9547C(*(v74 + 16)))
      {
        v60 = *(v74 + 16);
      }

      else
      {
        v61 = v30;
      }

      a5 = v75;
      sub_1B1ACC308(v61);
      v62 = *(v74 + 16);
      *(v74 + 16) = v30;

      sub_1B1AA81A8();
      AudioData.duration.getter();
      a10[2] = v63 + a10[2];
      v64 = mach_absolute_time();
      v18 = v64;
      if (!a11[2])
      {
        a11[2] = v64;
      }

      a2 = v54;
      AudioData.duration.getter();
      v66 = v65;
      if (qword_1ED9A5270 != -1)
      {
        swift_once();
      }

      v67 = v66 / *&qword_1ED9AA500;
      if (COERCE__INT64(fabs(v66 / *&qword_1ED9AA500)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_49;
      }

      if (v67 <= -1.0)
      {
        goto LABEL_50;
      }

      if (v67 >= 1.84467441e19)
      {
        goto LABEL_51;
      }

      v68 = a11[2];
      if (__CFADD__(v68, v67))
      {
        goto LABEL_52;
      }

      a11[2] = v68 + v67;
      swift_beginAccess();
      swift_beginAccess();
      if (a7 > 0.0)
      {
        while (v18 < a11[2])
        {
          a2 = v75;
          if (sub_1B1ACFB08())
          {
            break;
          }

          v69 = a11[2];
          v70 = v69 >= v18;
          v71 = v69 - v18;
          if (!v70)
          {
            __break(1u);
            goto LABEL_43;
          }

          if (*&qword_1ED9AA500 * v71 <= a7)
          {
            break;
          }

          [objc_opt_self() sleepForTimeInterval_];
          v18 = mach_absolute_time();
        }
      }

      v29 = v81 + 1;
      v18 = v73;
      if (v81 + 1 == v72)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
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
    goto LABEL_57;
  }

LABEL_42:
}

uint64_t sub_1B1ACEB4C()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_1B1ACEB88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = sub_1B1C2C2B8();
  v8 = v7;

  v4(v6, v8);
  sub_1B1A94524(v6, v8);
}

id AudioData.init()()
{
  v1 = &v0[OBJC_IVAR___SiriTTSAudioData_asbd];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR___SiriTTSAudioData_audioData] = xmmword_1B1C35270;
  *&v0[OBJC_IVAR___SiriTTSAudioData_packetCount] = 0;
  *&v0[OBJC_IVAR___SiriTTSAudioData_packetDescriptions] = xmmword_1B1C35270;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudioData();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1B1ACECE0(unsigned __int8 *a1)
{
  v2 = sub_1B1C2C0A8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v131 = v4;
  v132 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v130 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_1();
  v127 = v11 - v12;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v125 - v14;
  v135 = sub_1B1C2C428();
  v16 = OUTLINED_FUNCTION_7(v135);
  v129 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_6_1();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v125 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v125 - v30;
  v32 = sub_1B1C2C1C8();
  v33 = OUTLINED_FUNCTION_7(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_6_1();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v125 - v42;
  v133 = *a1;
  type metadata accessor for AudioDumpAction();
  static AudioDumpAction.DiagnosticsDir.getter(v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_1B1A90C78(v31, &unk_1EB761F00, &qword_1B1C36480);
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v44 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v44, qword_1ED9A9120);
    v45 = sub_1B1C2C888();
    v46 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v46))
    {
      v47 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_15_2(v47);
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_9_1();
    }

    return;
  }

  v126 = v35;
  v53 = *(v35 + 32);
  v128 = v32;
  v53(v43, v31, v32);
  if (qword_1EB761158 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v9, qword_1EB772C70);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1AD04D4(v54, v15);
  v55 = v135;
  if (__swift_getEnumTagSinglePayload(v15, 1, v135) == 1)
  {
    v125 = v54;
    sub_1B1A90C78(v15, &qword_1EB761D88, &qword_1B1C36488);
    goto LABEL_17;
  }

  v56 = v129;
  (*(v129 + 4))(v25, v15, v55);
  sub_1B1C2C3E8();
  sub_1B1C2C368();
  v58 = v57;
  v59 = *(v56 + 1);
  v59(v22, v55);
  if (v58 >= 120.0)
  {
    v125 = v54;
    v59(v25, v55);
LABEL_17:
    v142 = *(v134 + 32);
    aBlock = sub_1B1C2D778();
    v137 = v71;
    MEMORY[0x1B27381B0](95, 0xE100000000000000);
    LOBYTE(v142) = v133;
    v72 = sub_1B1C2CBD8();
    MEMORY[0x1B27381B0](v72);

    MEMORY[0x1B27381B0](0x6970736C6961742ELL, 0xE90000000000006ELL);
    v74 = v130;
    v73 = v131;
    v75 = v132;
    (*(v131 + 104))(v130, *MEMORY[0x1E6968F68], v132);
    sub_1B1A8EDAC();
    v129 = v43;
    sub_1B1C2C1B8();
    (*(v73 + 8))(v74, v75);

    v76 = sub_1B1C2C098();
    v78 = v77;
    v79 = *(v126 + 8);
    v80 = v40;
    v81 = v128;
    v79(v80, v128);
    v82 = [objc_opt_self() defaultManager];
    OUTLINED_FUNCTION_13_2();
    v83 = sub_1B1C2CB28();
    LODWORD(v75) = [v82 createFileAtPath:v83 contents:0 attributes:0];

    if (v75)
    {
      sub_1B1AE5FC0();

      OUTLINED_FUNCTION_13_2();
      v84 = sub_1B1AE6004();
      if (v84)
      {
        v85 = v84;
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v86 = sub_1B1C2C8A8();
        OUTLINED_FUNCTION_12_1(v86, qword_1ED9A9120);
        v87 = v134;

        v88 = sub_1B1C2C888();
        v89 = sub_1B1C2D0D8();
        v90 = OUTLINED_FUNCTION_10_2(v89);
        v132 = v79;
        if (v90)
        {
          v91 = OUTLINED_FUNCTION_21_0();
          *v91 = 134217984;
          *(v91 + 4) = *(v87 + 32);

          OUTLINED_FUNCTION_5_1();
          _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
          OUTLINED_FUNCTION_9_1();
        }

        else
        {
        }

        v112 = objc_opt_self();
        v113 = *(v87 + 32);
        v114 = swift_allocObject();
        v114[2] = v85;
        v114[3] = v76;
        v114[4] = v78;
        v140 = sub_1B1AD95E4;
        v141 = v114;
        aBlock = MEMORY[0x1E69E9820];
        v137 = 1107296256;
        v138 = sub_1B1A955E0;
        v139 = &block_descriptor_1;
        v115 = v87;
        v116 = _Block_copy(&aBlock);

        v117 = v85;

        [v112 collectTailspinToFile:v117 minTimestamp:v113 completion:v116];
        _Block_release(v116);
        if (v133 == 7 && *(v115 + 48) != 1)
        {
          v118 = *(v115 + 40);
          v119 = objc_opt_self();
          OUTLINED_FUNCTION_13_2();
          v120 = sub_1B1C2CB28();

          v121 = sub_1B1C2CB28();
          [v119 reportAnalytics:v118 tailspin:v120 reason:v121];
        }

        else
        {
        }

        v123 = v127;
        v122 = v128;
        sub_1B1C2C3E8();
        __swift_storeEnumTagSinglePayload(v123, 0, 1, v135);
        v124 = v125;
        swift_beginAccess();
        sub_1B1AE6068(v123, v124);
        swift_endAccess();

        v132(v129, v122);
        return;
      }

      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v107 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v107, qword_1ED9A9120);

      v98 = sub_1B1C2C888();
      v99 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = OUTLINED_FUNCTION_21_0();
        v101 = OUTLINED_FUNCTION_19_0();
        aBlock = v101;
        *v100 = 136446210;
        v108 = OUTLINED_FUNCTION_13_2();
        v111 = sub_1B1A930E4(v108, v109, v110);

        *(v100 + 4) = v111;
        v106 = "Unable to get tailspin file handle at %{public}s";
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_0_0();
        swift_once();
      }

      v97 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v97, qword_1ED9A9120);

      v98 = sub_1B1C2C888();
      v99 = sub_1B1C2D0B8();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = OUTLINED_FUNCTION_21_0();
        v101 = OUTLINED_FUNCTION_19_0();
        aBlock = v101;
        *v100 = 136446210;
        v102 = OUTLINED_FUNCTION_13_2();
        v105 = sub_1B1A930E4(v102, v103, v104);

        *(v100 + 4) = v105;
        v106 = "Unable to create tailspin file at %{public}s";
LABEL_31:
        _os_log_impl(&dword_1B1A8A000, v98, v99, v106, v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_9_1();

LABEL_33:
        v79(v129, v81);
        return;
      }
    }

    goto LABEL_33;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v60 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v60, qword_1ED9A9120);
  v61 = sub_1B1C2C888();
  v62 = sub_1B1C2D098();
  v63 = OUTLINED_FUNCTION_10_2(v62);
  v64 = v128;
  if (v63)
  {
    v65 = OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_15_2(v65);
    OUTLINED_FUNCTION_5_1();
    _os_log_impl(v66, v67, v68, v69, v70, 2u);
    OUTLINED_FUNCTION_9_1();
  }

  v59(v25, v55);
  (*(v126 + 8))(v43, v64);
}

void sub_1B1ACF86C()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BA0, &qword_1B1C35D38);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_13_3(v9);
    *(v3 + 16) = v2;
    *(v3 + 24) = 2 * (v10 / 24);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v3 != v0 || &v12[24 * v2] <= v11)
    {
      memmove(v11, v12, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1B1ACF978(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LOBYTE(v12[0]) = v1;
    sub_1B1ACF9F4(v12, v5, v6, v7, v8, v9, v10, v11, v12[0], v2, v3, v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11]);
  }

  return result;
}

void sub_1B1ACF9F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *a1;
  if (*(v20 + 32))
  {
    v22 = v21 > 0xD;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    if (((1 << v21) & 0x3400) != 0)
    {

      sub_1B1B09A10(0xD000000000000014, 0x80000001B1C495E0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    else if (((1 << v21) & 0x280) != 0)
    {
      v23 = *a1;
      sub_1B1ACECE0(&v23);
    }
  }
}

void sub_1B1ACFA84(uint64_t ObjectType)
{
  v1 = ObjectType;
  if (ObjectType)
  {
    ObjectType = swift_getObjectType();
    v2 = v1;
  }

  else
  {
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  v4[0] = v2;
  v4[3] = ObjectType;
  v3 = v1;
  sub_1B1AA5E5C(v4);
}

uint64_t sub_1B1ACFB08()
{
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  [v2 lock];
  [v2 unlock];

  return v1;
}

void sub_1B1ACFBC4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1B1AA78A0(a1, a2);
  if (!v5)
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0xD00000000000002FLL;
    *(v10 + 16) = 0x80000001B1C4A840;
    swift_willThrow();
    return;
  }

  v6 = v5;
  swift_beginAccess();

  MEMORY[0x1B2738320](v7);
  sub_1B1B3E0D4(*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1B1C2CEC8();
  swift_endAccess();
  v8 = &v6[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  if (!sub_1B1AA5F48(*v8, *(v8 + 1)) || (v9 = &v6[OBJC_IVAR___SiriTTSAudioData_asbd], swift_beginAccess(), !*(v9 + 2)))
  {
    if (sub_1B1AA5F48(*v8, *(v8 + 1)))
    {
      sub_1B1AD0004();
      if (*(v4 + 65) == 1 && *(v4 + 72))
      {
        if (qword_1ED9A4E28 != -1)
        {
          swift_once();
        }

        sub_1B1AC638C();
      }

      goto LABEL_27;
    }

    v11 = mach_absolute_time();
    AudioData.duration.getter();
    v13 = *(v4 + 48);
    v14 = v11 >= v13;
    v15 = v11 - v13;
    if (v14)
    {
      v3 = v12;
      v16 = v15;
      if (qword_1ED9A5270 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    OUTLINED_FUNCTION_0_6();
    v30 = v29;
    swift_once();
    v16 = v30;
LABEL_14:
    v17 = *&qword_1ED9AA500 * v16;
    *(v4 + 48) = v11;
    if (qword_1ED9A9288 != -1)
    {
      v31 = v17;
      swift_once();
      v17 = v31;
    }

    v18 = v3 / v17;
    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v18;
      _os_log_impl(&dword_1B1A8A000, v20, v21, "Current end-to-end RTF: %f", v22, 0xCu);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    if ((*(v4 + 64) & 1) == 0)
    {
      v23 = *(v4 + 56);
      v24 = v11 - v23;
      if (v11 > v23)
      {
        v25 = sub_1B1C2C888();
        v26 = sub_1B1C2D0B8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = *&qword_1ED9AA500 * v24;
          _os_log_impl(&dword_1B1A8A000, v25, v26, "!! Low synthesis RTF detected, will likely results in stuttering. Missing: %f", v27, 0xCu);
          MEMORY[0x1B2739FD0](v27, -1, -1);
        }

        *(v4 + 65) = 1;
      }
    }

    if (([*(v4 + 40) isLowPowerModeEnabled] & 1) != 0 && *(v4 + 66) != 1)
    {
      sub_1B1AD01A0();
      if ((1.0 - v18) * 2.05 >= v28)
      {
        goto LABEL_27;
      }
    }
  }

  sub_1B1AD0004();
LABEL_27:
}

uint64_t sub_1B1AD0004()
{
  sub_1B1AD01A0();
  v2 = v1;
  swift_beginAccess();
  v3 = *(v0 + 32);
  result = sub_1B1A9547C(v3);
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = result;
  if (result >= 1)
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B2738A20](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      sub_1B1AA81A8();
    }

LABEL_9:
    if (v2 <= 0.0)
    {
      if (*(v0 + 64))
      {
LABEL_20:
        v10 = *(v0 + 32);
        *(v0 + 32) = MEMORY[0x1E69E7CC0];
      }
    }

    else if (*(v0 + 64))
    {
      result = mach_absolute_time();
      *(v0 + 56) = result;
      *(v0 + 64) = 0;
      *(v0 + 66) = 1;
    }

    v8 = *(v0 + 56);
    if (qword_1ED9A5270 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      result = swift_once();
    }

    v9 = v2 / *&qword_1ED9AA500;
    if (COERCE__INT64(fabs(v2 / *&qword_1ED9AA500)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -1.0)
    {
      if (v9 < 1.84467441e19)
      {
        if (!__CFADD__(v8, v9))
        {
          *(v0 + 56) = v8 + v9;
          *(v0 + 64) = 0;
          goto LABEL_20;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1B1AD01A0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = sub_1B1A9547C(v1);

  v3 = 0;
  v4 = 0.0;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2738A20](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v8 = sub_1B1AA78A0(v6, v7);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;

    AudioData.duration.getter();
    v11 = v10;

    v4 = v4 + v11;
    ++v3;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1B1AD02AC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    sub_1B1AD0338();
    if (a1 != 2 && (a1 & 1) != 0)
    {
      return 0;
    }
  }

  result = sub_1B1AA95A0(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
    swift_beginAccess();
    v6 = *&v4[v5];

    return v6 == 6;
  }

  return result;
}

void sub_1B1AD0338()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1144);
  v4 = *(v0 + 1152);
  v5 = *(v0 + 1160);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1AD03C8()
{
  result = qword_1ED9A5248;
  if (!qword_1ED9A5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5248);
  }

  return result;
}

double Asynchronous<>.waitTimeout.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21_5(a1, a2);
  v3 = *(v2() + 32);

  return v3;
}

void sub_1B1AD0464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = OUTLINED_FUNCTION_11_10(a1, a2);
  v6 = *(v5(v4) + 40);

  [v6 unlock];
}

uint64_t sub_1B1AD04D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D88, &qword_1B1C36488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AD0558(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_23_5();
  result = sub_1B1C2C1C8();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void SynthesisCacheFile.init(writeFileURL:voice:resource:)()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v63 = *MEMORY[0x1E69E9840];
  v9 = sub_1B1C2C1C8();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v57 = v6;
  v58 = v12;
  v18 = *(v12 + 16);
  v18(v8, v6, v9);
  v19 = type metadata accessor for SynthesisCacheFile(0);
  v20 = v4;
  *(v8 + v19[6]) = v4;
  *(v8 + v19[7]) = v2;
  v21 = v2;
  v22 = sub_1B1A8E474(0, &qword_1ED9A4F20, 0x1E696AC00);
  v18(v17, v8, v9);
  v23 = v20;
  v24 = v21;
  v25 = v22;
  v26 = sub_1B1ACD2C4(v17);
  v27 = v0;
  v59 = v24;
  if (v0)
  {

    v28 = OUTLINED_FUNCTION_27_13();
    v22(v28, v9);
    v29 = v9;
    v30 = v8;
  }

  else
  {
    *(v8 + v19[5]) = v26;
    v31 = qword_1ED9A5138;
    v25 = v26;
    if (v31 != -1)
    {
      OUTLINED_FUNCTION_2_35();
    }

    v32 = MEMORY[0x1B27377C0](qword_1ED9A5140, *algn_1ED9A5148);
    v61 = MEMORY[0x1B27377B0](v32);
    v62 = v33;
    sub_1B1AD03C8();
    sub_1B1C2D078();
    v29 = v9;

    sub_1B1A94524(v61, v62);
    v37 = objc_opt_self();
    v61 = 0;
    v38 = [v37 archivedDataWithRootObject:v23 requiringSecureCoding:0 error:&v61];

    v39 = v61;
    if (v38)
    {
      v56 = v37;
      v40 = sub_1B1C2C2B8();
      v42 = v41;

      v60 = MEMORY[0x1B27377C0](v40, v42);
      v61 = MEMORY[0x1B27377A0](&v60, 8);
      v62 = v43;
      OUTLINED_FUNCTION_30_10();
      v27 = 0;
      sub_1B1A94524(v61, v62);
      v61 = v40;
      v62 = v42;
      sub_1B1C2D078();
      v55 = v42;
      v54 = v40;
      v61 = 0;
      v46 = [v56 archivedDataWithRootObject:v59 requiringSecureCoding:0 error:&v61];

      v47 = v61;
      if (v46)
      {
        v48 = sub_1B1C2C2B8();
        v50 = v49;

        v60 = MEMORY[0x1B27377C0](v48, v50);
        v61 = MEMORY[0x1B27377A0](&v60, 8);
        v62 = v51;
        OUTLINED_FUNCTION_30_10();
        sub_1B1A94524(v61, v62);
        v61 = v48;
        v62 = v50;
        sub_1B1C2D078();
        (*(v58 + 8))(v57, v29);
        sub_1B1A94524(v54, v55);
        sub_1B1A94524(v48, v50);
        goto LABEL_10;
      }

      v52 = v47;
      sub_1B1C2C058();

      swift_willThrow();
      sub_1B1A94524(v40, v55);
      v53 = OUTLINED_FUNCTION_27_13();
      (v25)(v53, v29);
      v30 = v8;
    }

    else
    {
      v44 = v39;

      sub_1B1C2C058();
      swift_willThrow();
      v45 = OUTLINED_FUNCTION_1_39();
      (v25)(v45);
      v30 = v8;
      v27 = 0;
    }
  }

  (v25)(v30, v29);
  if (v27)
  {
    v35 = v23;
    v34 = v59;
  }

  else
  {
    v35 = *(v30 + v19[5]);

    v34 = v23;
  }

LABEL_10:
  v36 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AD0BC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void SynthesisCache.encode(to:)()
{
  OUTLINED_FUNCTION_12_17();
  v3 = v2;
  v40 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764008, &qword_1B1C40AE0);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v34 - v10;
  v12 = v0[1];
  v36 = *v0;
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1B1AA9CD0();
  v14 = v4;
  sub_1B1C2D928();
  LOBYTE(v38) = 0;
  sub_1B1C2D6F8();
  if (v1)
  {
    (*(v7 + 8))(v11, v4);
  }

  else
  {
    v34[1] = v12;
    v35 = v7;
    v15 = objc_opt_self();
    v38 = 0;
    v16 = [v15 archivedDataWithRootObject:v36 requiringSecureCoding:0 error:&v38];
    v17 = v38;
    if (v16)
    {
      v18 = sub_1B1C2C2B8();
      v20 = v19;

      v38 = v18;
      v39 = v20;
      v37 = 1;
      sub_1B1AD11C8();
      OUTLINED_FUNCTION_17_18();
      v36 = v20;
      type metadata accessor for WordTimingInfo();
      v22 = sub_1B1C2CE68();
      v38 = 0;
      v23 = [v15 archivedDataWithRootObject:v22 requiringSecureCoding:0 error:&v38];

      v24 = v38;
      if (v23)
      {
        v25 = sub_1B1C2C2B8();
        v27 = v26;

        v38 = v25;
        v39 = v27;
        v37 = 2;
        OUTLINED_FUNCTION_17_18();
        v28 = OUTLINED_FUNCTION_16_19();
        v29(v28);
        sub_1B1A94524(v18, v36);
        sub_1B1A94524(v25, v27);
      }

      else
      {
        v31 = v24;
        sub_1B1C2C058();

        swift_willThrow();
        sub_1B1A94524(v18, v36);
        v32 = OUTLINED_FUNCTION_16_19();
        v33(v32);
      }
    }

    else
    {
      v21 = v17;
      sub_1B1C2C058();

      swift_willThrow();
      (*(v35 + 8))(v11, v14);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_23();
}

uint64_t sub_1B1AD0F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SynthesisCacheFile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SynthesisCacheFile.append(chunk:)(__int128 *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = sub_1B1C2C038();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B1C2C028();
  v21 = *a1;
  sub_1B1AD1174();
  v7 = sub_1B1C2C018();
  v9 = v8;

  if (!v2)
  {
    v11 = OUTLINED_FUNCTION_15();
    v12 = MEMORY[0x1B27377C0](v11);
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v12 <= 0x7FFFFFFF)
    {
      v20 = v12;
      v13 = MEMORY[0x1B27377A0](&v20, 4);
      v15 = v14;
      v16 = *(v1 + *(type metadata accessor for SynthesisCacheFile(0) + 20));
      *&v21 = v13;
      *(&v21 + 1) = v15;
      sub_1B1AD03C8();
      sub_1B1C2D078();
      *&v21 = v7;
      *(&v21 + 1) = v9;
      sub_1B1C2D078();
      sub_1B1A94524(v13, v15);
      v17 = OUTLINED_FUNCTION_15();
      result = sub_1B1A94524(v17, v18);
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B1AD1174()
{
  result = qword_1ED9A5190;
  if (!qword_1ED9A5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5190);
  }

  return result;
}

unint64_t sub_1B1AD11C8()
{
  result = qword_1ED9A5258;
  if (!qword_1ED9A5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5258);
  }

  return result;
}

id sub_1B1AD121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

void *sub_1B1AD1294(unsigned int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a3)
  {
    v12 = a4 + OBJC_IVAR___SiriTTSAudioData_asbd;
    swift_beginAccess();
    if (!*(v12 + 8))
    {
      v28 = 0;
      *a2 = 2;
      return v28;
    }
  }

  v47 = a2;
  swift_beginAccess();
  v13 = *(a5 + 16);
  v14 = *(a6 + 16);
  v15 = [v14 streamDescription];
  v16 = v13 * v15[6];
  if ((v13 * v15[6]) >> 64 != v16 >> 63)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = (a4 + OBJC_IVAR___SiriTTSAudioData_audioData);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  sub_1B1AA64DC(*v17, v19);
  v20 = MEMORY[0x1B27377C0](v18, v19);
  sub_1B1A94524(v18, v19);
  if (v16 >= v20)
  {
    v28 = 0;
    *v47 = 1;
    return v28;
  }

  v21 = *([*(a6 + 24) streamDescription] + 5) * a1;
  if ((v21 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v22 = *(a5 + 16);
  v23 = __OFSUB__(a3, v22);
  v24 = a3 - v22;
  if (v23)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v25 = v21;
  if (v24 < v21)
  {
    v25 = v24;
  }

  if (v24 <= 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  if (v26 < 0)
  {
    goto LABEL_36;
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v14 frameCapacity:v26];
  if (!v27)
  {
    if (qword_1ED9A9288 == -1)
    {
LABEL_28:
      v43 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v43, qword_1ED9A9120);
      v44 = sub_1B1C2C888();
      v45 = sub_1B1C2D0C8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1B1A8A000, v44, v45, "OpusEncoder: Unable to create input buffer", v46, 2u);
        MEMORY[0x1B2739FD0](v46, -1, -1);
      }

      v28 = 0;
      *v47 = 1;
      return v28;
    }

LABEL_44:
    swift_once();
    goto LABEL_28;
  }

  v28 = v27;
  [v27 setFrameLength_];
  v29 = [v14 streamDescription];
  v30 = v26 * v29[6];
  if ((v26 * v29[6]) >> 64 != v30 >> 63)
  {
    goto LABEL_37;
  }

  v31 = *v17;
  v32 = v17[1];
  sub_1B1AA64DC(*v17, v32);
  v33 = MEMORY[0x1B27377C0](v31, v32);
  sub_1B1A94524(v31, v32);
  if (__OFSUB__(v33, v16))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (((v33 - v16) & ~((v33 - v16) >> 63)) >= v30)
  {
    v34 = v30;
  }

  else
  {
    v34 = (v33 - v16) & ~((v33 - v16) >> 63);
  }

  if (__OFADD__(v16, v34))
  {
    goto LABEL_39;
  }

  if (v16 + v34 < v16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v35 = *v17;
  v36 = v17[1];
  sub_1B1AA64DC(*v17, v36);
  v48 = sub_1B1C2C288();
  v49 = v37;
  v38 = v28;
  result = [v38 mutableAudioBufferList];
  if (result[2])
  {
    sub_1B1A94524(v35, v36);
    sub_1B1AD03C8();
    sub_1B1C2BEB8();
    sub_1B1A94524(v48, v49);
    v40 = [v38 mutableAudioBufferList];
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v34 <= 0xFFFFFFFFLL)
      {
        v40[3] = v34;
        *v47 = 0;

        swift_beginAccess();
        v41 = *(a5 + 16);
        v23 = __OFADD__(v41, v26);
        v42 = v41 + v26;
        if (!v23)
        {
          *(a5 + 16) = v42;
          return v28;
        }

        goto LABEL_43;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void sub_1B1AD16A4(char *a1)
{
  v3 = v1;
  v99 = *MEMORY[0x1E69E9840];
  v5 = sub_1B1C2C228();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);
  if (v11)
  {
    v12 = *(v3 + 40);
    if (v12)
    {
      v86 = v10;
      v87 = v8;
      v13 = &a1[OBJC_IVAR___SiriTTSAudioData_audioData];
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];
      v88 = v11;
      v93 = v12;
      sub_1B1AA64DC(v14, v15);
      v16 = MEMORY[0x1B27377C0](v14, v15);
      sub_1B1A94524(v14, v15);
      v17 = *([*(v3 + 16) streamDescription] + 6);
      if (!v17)
      {
        goto LABEL_32;
      }

      v91 = v16 / v17;
      if (!(v16 / v17))
      {
        v61 = &a1[OBJC_IVAR___SiriTTSAudioData_asbd];
        swift_beginAccess();
        if (*(v61 + 2))
        {
          v62 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
          OUTLINED_FUNCTION_4_28();

          v64 = &v62[OBJC_IVAR___SiriTTSAudioData_asbd];
          OUTLINED_FUNCTION_0_37();
          OUTLINED_FUNCTION_5_30();
          *v64 = v65;
          *(v64 + 8) = xmmword_1B1C387F0;
          *(v64 + 24) = xmmword_1B1C38800;
          goto LABEL_30;
        }
      }

      v82 = v2;
      v97 = xmmword_1B1C35270;
      v98 = xmmword_1B1C35270;
      v18 = swift_allocObject();
      v85 = 0;
      v19 = 0;
      v89 = 0;
      v20 = 0;
      v92 = v18;
      *(v18 + 16) = 0;
      v90 = v96;
      v84 = *MEMORY[0x1E6969010];
      v83 = (v6 + 104);
      v21 = 0x1FBFD2000;
      v22 = v88;
      while (1)
      {
        while (1)
        {
          if (v19)
          {
            if (v20)
            {
LABEL_26:
              aBlock = 0;
              v95 = 0xE000000000000000;
              sub_1B1C2D538();

              aBlock = 0xD00000000000002CLL;
              v95 = 0x80000001B1C52A80;
              v52 = [v20 localizedDescription];
              v53 = sub_1B1C2CB58();
              v55 = v54;

              MEMORY[0x1B27381B0](v53, v55);

              v56 = aBlock;
              v57 = v22;
              v58 = v95;
              sub_1B1A9EC9C();
              OUTLINED_FUNCTION_34();
              *v59 = 1;
              *(v59 + 8) = v56;
              *(v59 + 16) = v58;
              swift_willThrow();
              OUTLINED_FUNCTION_4_28();

              sub_1B1A94524(v97, *(&v97 + 1));
              sub_1B1A94524(v98, *(&v98 + 1));

              goto LABEL_30;
            }

            v66 = [objc_allocWithZone(type metadata accessor for AudioData()) init];
            OUTLINED_FUNCTION_4_28();

            v68 = &v66[OBJC_IVAR___SiriTTSAudioData_asbd];
            OUTLINED_FUNCTION_0_37();
            OUTLINED_FUNCTION_5_30();
            *v68 = v69;
            *(v68 + 8) = xmmword_1B1C387F0;
            *(v68 + 24) = xmmword_1B1C38800;
            v70 = v98;
            v71 = &v66[OBJC_IVAR___SiriTTSAudioData_audioData];
            OUTLINED_FUNCTION_0_37();
            v72 = *v71;
            v73 = v71[1];
            *v71 = v70;
            sub_1B1A94524(v72, v73);
            v74 = OBJC_IVAR___SiriTTSAudioData_packetCount;
            swift_beginAccess();
            *&v66[v74] = v85;
            v75 = v97;
            v76 = &v66[OBJC_IVAR___SiriTTSAudioData_packetDescriptions];
            OUTLINED_FUNCTION_0_37();
            v77 = *v76;
            v78 = v76[1];
            *v76 = v75;
            sub_1B1A94524(v77, v78);

            goto LABEL_30;
          }

          if (v20)
          {
            goto LABEL_26;
          }

          v23 = v21;
          v24 = swift_allocObject();
          v24[2] = v91;
          v24[3] = a1;
          v24[4] = v92;
          v24[5] = v3;
          v96[2] = sub_1B1AD1288;
          v96[3] = v24;
          aBlock = MEMORY[0x1E69E9820];
          v95 = 1107296256;
          v96[0] = sub_1B1AD121C;
          v96[1] = &block_descriptor_26;
          v25 = _Block_copy(&aBlock);
          OUTLINED_FUNCTION_4_28();
          v27 = v26;
          v28 = a1;

          aBlock = 0;
          v19 = [v22 convertToBuffer:v27 error:&aBlock withInputFromBlock:v25];
          _Block_release(v25);
          v20 = aBlock;
          v29 = aBlock;
          if (v19 <= 1)
          {
            break;
          }

          v19 = 1;
LABEL_17:
        }

        if (!OUTLINED_FUNCTION_3_26())
        {
          goto LABEL_17;
        }

        v30 = [v27 audioBufferList];

        v31 = v30[2];
        if (!v31)
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          return;
        }

        v32 = [v27 audioBufferList];

        v81 = v32[3];
        v33 = v86;
        v80 = *v83;
        v80(v86, v84, v87);
        v34 = MEMORY[0x1B2737710](v31, v81, v33);
        v81 = v35;
        sub_1B1C2C318();
        sub_1B1A94524(v34, v81);
        v36 = 0;
        v37 = 16 * OUTLINED_FUNCTION_3_26();
        while (v37 != v36)
        {
          v38 = [v27 packetDescriptions];
          if (!v38)
          {
            goto LABEL_34;
          }

          v39 = *&v38[v36];
          v40 = __OFADD__(v39, v89);
          v41 = v39 + v89;
          if (v40)
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
          }

          *&v38[v36] = v41;
          v36 += 16;
        }

        v42 = [v27 packetDescriptions];
        if (!v42)
        {
          goto LABEL_36;
        }

        v43 = v42;
        v89 = 16 * OUTLINED_FUNCTION_3_26();
        v44 = v86;
        v80(v86, v84, v87);
        v45 = MEMORY[0x1B2737710](v43, v89, v44);
        v89 = v46;
        sub_1B1C2C318();
        sub_1B1A94524(v45, v89);
        v47 = [v27 packetDescriptions];
        v22 = v88;
        if (!v47)
        {
          goto LABEL_37;
        }

        v48 = &v47[16 * OUTLINED_FUNCTION_3_26()];
        v49 = *(v48 - 2);
        v50 = *(v48 - 1);
        v89 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_33;
        }

        v51 = OUTLINED_FUNCTION_3_26();
        v40 = __OFADD__(v85, v51);
        v85 += v51;
        v21 = v23;
        if (v40)
        {
          __break(1u);
          break;
        }
      }
    }
  }

  a1;
LABEL_30:
  v79 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1AD1ED8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = OUTLINED_FUNCTION_1_0();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void _s14SiriTTSService12AsynchronousPA2A6BufferCRbzrlE12isProcessingSbvg_0()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_12_7(v2, v3);
  v4 = v1();
  OUTLINED_FUNCTION_6_13(v4);
  v6 = v5;
  OUTLINED_FUNCTION_89_0();

  [v0 lock];

  v7 = OUTLINED_FUNCTION_1_17();
  v8 = *((v1)(v7) + 16);

  v9 = OUTLINED_FUNCTION_5_15();
  sub_1B1AD0464(v9, v10, v11);
  OUTLINED_FUNCTION_22_4();
}

uint64_t Asynchronous<>.waitDequeue()(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v4 = v2;
  v53 = a1;
  v5 = sub_1B1C2C428();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v47 - v10;
  v12 = v2[3];
  [v12 lock];
  OUTLINED_FUNCTION_44();
  v14 = *(v13 + 96);
  v15 = v13 + 96;
  v16 = v14();
  sub_1B1A95484(v16);
  OUTLINED_FUNCTION_89_0();

  if (v3)
  {
    v17 = (*(*v2 + 14))(&v54);
    v18 = sub_1B1AA87F0();
    v17(&v54, 0);
    v19 = v4;
LABEL_13:
    [v19[3] unlock];
    return v18;
  }

  else
  {
    v51 = v15;
    v52 = v14;
    v20 = v53;
    v49 += 8;
    v50 = v12;
    v21 = v48;
    while (1)
    {
      v22 = Asynchronous<>.isProcessing.getter(v20, v21);
      v19 = v4;
      v23 = v52;
      if ((v22 & 1) == 0)
      {
        break;
      }

      v24 = v52();
      v3 = v24 >> 62 ? sub_1B1C2D468() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        break;
      }

      sub_1B1C2C3E8();
      v4 = v19;
      v20 = v53;
      Asynchronous<>.waitTimeout.getter(v53, v21);
      sub_1B1C2C398();
      v25 = *v49;
      (*v49)(v9, v5);
      v26 = sub_1B1C2C378();
      v25(v11, v5);
      v3 = [v50 waitUntilDate_];

      if ((v3 & 1) == 0)
      {
        if (qword_1ED9A9288 != -1)
        {
          OUTLINED_FUNCTION_0_0();
          swift_once();
        }

        v30 = sub_1B1C2C8A8();
        __swift_project_value_buffer(v30, qword_1ED9A9120);
        v19 = v4;

        v31 = sub_1B1C2C888();
        v32 = sub_1B1C2D0C8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_21_0();
          v34 = OUTLINED_FUNCTION_19_0();
          v54 = v34;
          *v33 = 136315138;
          v56 = v4;

          v35 = sub_1B1C2CBD8();
          v37 = sub_1B1A930E4(v35, v36, &v54);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_1B1A8A000, v31, v32, "Workflow: waitDequeue timed out in %s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
          v19 = v4;
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1B1C2D538();

        v54 = 0xD000000000000023;
        v55 = 0x80000001B1C4CDF0;
        v56 = v19;

        v44 = sub_1B1C2CBD8();
        MEMORY[0x1B27381B0](v44);

        v18 = v54;
        v45 = v55;
        sub_1B1A9EC9C();
        swift_allocError();
        *v46 = 2;
        *(v46 + 8) = v18;
        *(v46 + 16) = v45;
        swift_willThrow();
        goto LABEL_13;
      }
    }

    v27 = v23();
    sub_1B1A95484(v27);
    OUTLINED_FUNCTION_89_0();

    if (v3)
    {
      v28 = (*(*v19 + 14))(&v54);
      v18 = sub_1B1AA87F0();
      v28(&v54, 0);
      goto LABEL_13;
    }

    v54 = v19;
    v38 = v19;
    v39 = *(v21 + 8);
    v40 = v53;
    v18 = *(v39(v53, v21) + 24);
    v41 = v18;

    if (!v18)
    {
      v19 = v38;
      goto LABEL_13;
    }

    v54 = v38;
    v18 = v39(v40, v21);
    v42 = v18[3];
    v43 = v42;

    if (v42)
    {
      swift_willThrow();
      v19 = v38;
      goto LABEL_13;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1AD2548()
{
  OUTLINED_FUNCTION_7_12();
  v1 = *(v0 + 16);
}

uint64_t sub_1B1AD25A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&outTimeStamp, 0, sizeof(outTimeStamp));
  result = AudioQueueGetCurrentTime(*(a1 + 72), 0, &outTimeStamp, 0);
  if (result)
  {
    v4 = 1;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
  }

  else
  {
    v4 = 0;
    v8 = *&outTimeStamp.mSampleTime;
    v5 = *&outTimeStamp.mRateScalar;
    v6 = *&outTimeStamp.mSMPTETime.mSubframes;
    v7 = *&outTimeStamp.mSMPTETime.mHours;
  }

  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B1AD2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = sub_1B1C2BF08();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B1C2BF38();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_14;
    }

    v11 = (a1 - v10 + v9);
  }

  else
  {
    v11 = 0;
  }

  sub_1B1C2BF28();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = *(a4 + 8);
  v13 = &a5[OBJC_IVAR___SiriTTSAudioData_audioData];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = 0;
  switch(v15 >> 62)
  {
    case 1uLL:
      v17 = __OFSUB__(HIDWORD(v14), v14);
      v18 = HIDWORD(v14) - v14;
      if (v17)
      {
        goto LABEL_15;
      }

      v16 = v18;
LABEL_11:
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        JUMPOUT(0x1B1AD2768);
      }

LABEL_12:
      memmove(v12, v11, v16);

      return;
    case 2uLL:
      v21 = v14 + 16;
      v19 = *(v14 + 16);
      v20 = *(v21 + 8);
      v16 = v20 - v19;
      if (!__OFSUB__(v20, v19))
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    case 3uLL:
      goto LABEL_12;
    default:
      v16 = BYTE6(v15);
      goto LABEL_12;
  }
}

AudioQueueBuffer *sub_1B1AD279C(SInt64 a1, OpaqueAudioQueue *a2, uint64_t a3, AudioQueueBuffer *a4, char *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a2;
  switch(a2 >> 62)
  {
    case 1uLL:
      v20 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_17;
      }

      v21 = a1;

      v14 = a5;
      v15 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v21;
      v17 = v20;
      goto LABEL_11;
    case 2uLL:
      goto LABEL_5;
    case 3uLL:
      *(&v24.mStartOffset + 6) = 0;
      v24.mStartOffset = 0;
      v9 = *(a3 + 72);
      v18 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      swift_beginAccess();
      v11 = *&a5[v18];
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
      }

      if (HIDWORD(v11))
      {
        goto LABEL_18;
      }

LABEL_8:
      v19 = AudioQueueEnqueueBuffer(v9, a4, v11, &v24);
LABEL_13:
      a4 = v19;

LABEL_14:
      v22 = *MEMORY[0x1E69E9840];
      return a4;
    default:
      v24.mStartOffset = a1;
      LOWORD(v24.mVariableFramesInPacket) = a2;
      BYTE2(v24.mVariableFramesInPacket) = BYTE2(a2);
      HIBYTE(v24.mVariableFramesInPacket) = BYTE3(a2);
      LOBYTE(v24.mDataByteSize) = BYTE4(a2);
      BYTE1(v24.mDataByteSize) = BYTE5(a2);
      v9 = *(a3 + 72);
      v10 = OBJC_IVAR___SiriTTSAudioData_packetCount;
      a1 = swift_beginAccess();
      v11 = *&a5[v10];
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (!HIDWORD(v11))
      {
        goto LABEL_8;
      }

      __break(1u);
LABEL_5:
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);

      v14 = a5;
      v15 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v12;
      v17 = v13;
LABEL_11:
      v19 = sub_1B1AD29D4(v16, v17, v15, a3, a4, v14);
      if (!v5)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
  }
}

uint64_t sub_1B1AD29D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, AudioQueueBuffer *a5, char *a6)
{
  result = sub_1B1C2BF08();
  v12 = result;
  if (result)
  {
    result = sub_1B1C2BF38();
    if (__OFSUB__(a1, result))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v12 = (v12 + a1 - result);
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1B1C2BF28();
  if (v12)
  {
    v13 = *(a4 + 72);
    v14 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    result = swift_beginAccess();
    v15 = *&a6[v14];
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v15))
      {
        v16 = AudioQueueEnqueueBuffer(v13, a5, v15, v12);

        return v16;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1B1AD2ACC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AD2B24();
  }

  return result;
}

void sub_1B1AD2B24()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v2 = sub_1B1C2C7F8();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_7_6();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval;
  if (!*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval))
  {
    sub_1B1C2C7E8();
    v8 = sub_1B1C2C818();
    v9 = sub_1B1C2D188();
    if (sub_1B1C2D278())
    {
      v10 = OUTLINED_FUNCTION_20_0();
      *v10 = 0;
      v11 = sub_1B1C2C7D8();
      _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v8, v9, v11, "TTSPlayback", "", v10, 2u);
      OUTLINED_FUNCTION_11();
    }

    v12 = OUTLINED_FUNCTION_11_5();
    v13(v12);
    v14 = sub_1B1C2C868();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    sub_1B1C2C858();
    v18 = OUTLINED_FUNCTION_16_8();
    v19(v18);
    v20 = *(v1 + v7);
    *(v1 + v7) = v17;
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AD2CB0()
{
  OUTLINED_FUNCTION_59_5();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_6_28();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_18_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_28();
  v14 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId;
  OUTLINED_FUNCTION_65();
  sub_1B1AADD60(v0 + v14, v0);
  OUTLINED_FUNCTION_13(v0);
  if (v74)
  {
    sub_1B1AABFB0(v0);
LABEL_6:
    OUTLINED_FUNCTION_58_7();
    return;
  }

  v15 = OUTLINED_FUNCTION_21_12(v10);
  v16(v15);
  v17 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v18 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  OUTLINED_FUNCTION_66_0();
  if (*(v17 + v18))
  {
LABEL_5:
    v19 = OUTLINED_FUNCTION_45_7();
    v20(v19);
    goto LABEL_6;
  }

  v123 = v1;
  *(v17 + v18) = mach_absolute_time();
  v21 = [objc_allocWithZone(MEMORY[0x1E69CF7C8]) init];
  v124 = v21;
  if (v21)
  {
    InstrumentationMetrics.customerPerceivedLatency.getter();
    *&v22 = v22;
    [v21 setCustomerPerceivedLatencyInSecond_];
    v23 = OBJC_IVAR___SiriTTSInstrumentationMetrics_sourceOfTTS;
    OUTLINED_FUNCTION_65();
    [v21 setSynthesisSource_];
    v24 = objc_allocWithZone(MEMORY[0x1E69CF7F0]);
    v25 = v21;
    v26 = [v24 init];
    [v25 setVoiceContext_];

    v27 = OUTLINED_FUNCTION_52_6();
    if (v27)
    {
      v28 = v27;
      v29 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v29)
      {
        v30 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
        OUTLINED_FUNCTION_65();
        v31 = *(v29 + v30);
        v21 = v124;
        v32 = sub_1B1AD3C90(v31);
      }

      else
      {
        v32 = 1;
      }

      [v28 setVoiceType_];
    }

    v33 = OUTLINED_FUNCTION_52_6();
    if (v33)
    {
      v34 = v33;
      v35 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v35)
      {
        v36 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
        OUTLINED_FUNCTION_65();
        v37 = *(v35 + v36);
        v21 = v124;
        v38 = sub_1B1AD3CB4(v37);
      }

      else
      {
        v38 = 1;
      }

      [v34 setVoiceFootprint_];
    }

    v39 = OUTLINED_FUNCTION_52_6();
    if (v39)
    {
      v40 = v39;
      v41 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
      if (v41)
      {
        v42 = (v41 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
        OUTLINED_FUNCTION_65();
        v43 = v42[1];
        if (v43)
        {
          v44 = _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(*v42, v43);
        }

        else
        {
          v44 = 0;
        }

        v21 = v124;
      }

      else
      {
        v44 = 0;
      }

      [v40 setVoiceName_];
    }

    v45 = OUTLINED_FUNCTION_52_6();
    if (!v45)
    {
      goto LABEL_33;
    }

    v46 = v45;
    v47 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedVoice);
    if (v47)
    {
      v48 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      OUTLINED_FUNCTION_65();
      v49 = *(v48 + v47);
      if ((v49 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      v21 = v124;
      if (!HIDWORD(v49))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    v49 = 0;
LABEL_32:
    [v46 setVoiceVersion_];

LABEL_33:
    v50 = OUTLINED_FUNCTION_52_6();
    if (!v50)
    {
LABEL_40:
      [v25 setSynthesisEffect_];
      v55 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalState;
      OUTLINED_FUNCTION_65();
      [v25 setThermalState_];
      v56 = OBJC_IVAR___SiriTTSInstrumentationMetrics_deviceThermalLevel;
      OUTLINED_FUNCTION_65();
      [v25 setThermalLevel_];
      v57 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_voiceSelectLatencyInSeconds);
      *&v57 = v57;
      [v25 setAssetSelectionLatencyInSecond_];
      v58 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
      OUTLINED_FUNCTION_65();
      v59 = *(v17 + v58);
      *&v59 = v59;
      [v25 setAudioQueueLatencyInSecond_];
      v60 = OBJC_IVAR___SiriTTSInstrumentationMetrics_isWarmStart;
      OUTLINED_FUNCTION_65();
      [v25 setIsWarmStart_];
      goto LABEL_41;
    }

    v51 = v50;
    v52 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_selectedResource);
    if (!v52)
    {
      goto LABEL_38;
    }

    v53 = OBJC_IVAR___SiriTTSSynthesisResource_version;
    OUTLINED_FUNCTION_65();
    v54 = *(v52 + v53);
    if ((v54 & 0x8000000000000000) == 0)
    {
      v21 = v124;
      if (!HIDWORD(v54))
      {
LABEL_39:
        [v51 setResourceVersion_];

        goto LABEL_40;
      }

      __break(1u);
LABEL_38:
      v54 = 0;
      goto LABEL_39;
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

LABEL_41:
  v61 = (v17 + OBJC_IVAR___SiriTTSInstrumentationMetrics_dynamicPromptStyle);
  OUTLINED_FUNCTION_65();
  if (v21 && v61[1])
  {
    v62 = *v61;
    v63 = v21;
    OUTLINED_FUNCTION_34_11();

    v64 = SynthesisContext.PromptStyle.init(_:)();
    if ((v65 & 1) != 0 || v64 > 3)
    {
      v66 = 0;
    }

    else
    {
      v66 = (v64 + 1);
    }

    [v61 setLlmStylePrompt_];
  }

  v67 = v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo;
  v68 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo + 8);
  if (v68)
  {
    v69 = *v67;
    v70 = v21;
    v71 = *(v67 + 16);
    v121 = *(v67 + 24);
    v122 = *(v67 + 32);
    if (v70)
    {
      v72 = *(v67 + 40);

      LODWORD(v73) = v72;
      [v70 setVolume_];
    }

    else
    {
    }

    v74 = v69 == 0x6E49746C697542 && v68 == 0xE700000000000000;
    if (v74 || ((v75 = OUTLINED_FUNCTION_23_13(), v69 == 0x72656B61657053) ? (v76 = v68 == 0xE700000000000000) : (v76 = 0), !v76 ? (v77 = 0) : (v77 = 1), (v75 & 1) != 0 || (v77 & 1) != 0 || (OUTLINED_FUNCTION_23_13() & 1) != 0))
    {
      v21 = v124;
      if (v124)
      {
        v78 = 2;
        goto LABEL_67;
      }

LABEL_90:

      goto LABEL_105;
    }

    v91 = v69 == 0x6F69647541726143 && v68 == 0xEE0074757074754FLL;
    if (v91 || (OUTLINED_FUNCTION_23_13() & 1) != 0)
    {
      v21 = v124;
      if (!v124)
      {
        goto LABEL_90;
      }

      v78 = 7;
    }

    else
    {
      v92 = v69 == 0x79616C50726941 && v68 == 0xE700000000000000;
      if (v92 || (OUTLINED_FUNCTION_23_13() & 1) != 0 || (v69 == 0x73656E7554726941 ? (v93 = v68 == 0xE800000000000000) : (v93 = 0), v93 || (OUTLINED_FUNCTION_23_13() & 1) != 0))
      {
        v21 = v124;
        if (!v124)
        {
          goto LABEL_90;
        }

        v78 = 8;
      }

      else
      {
        if ((v71 & 0x100) != 0)
        {
          if (v71)
          {
            if (!v124)
            {
              goto LABEL_103;
            }

            v78 = 3;
          }

          else
          {
            if (!v124)
            {
              goto LABEL_103;
            }

            v78 = 5;
          }
        }

        else if (v71)
        {
          if (!v124)
          {
            goto LABEL_103;
          }

          v78 = 4;
        }

        else
        {
          if (!v124)
          {
            goto LABEL_103;
          }

          v78 = 6;
        }

        v21 = v124;
      }
    }

LABEL_67:
    [v21 setAudioOutputRoute_];
    v79 = objc_allocWithZone(MEMORY[0x1E69CF778]);
    v80 = v21;
    v81 = [v79 init];
    OUTLINED_FUNCTION_35_11(v81, sel_setAudioInterface_);

    v82 = [v80 audioInterface];
    if (v82)
    {
      v83 = v82;
      v84 = sub_1B1C2D778();
      sub_1B1AD55EC(v84, v85, v83, &selRef_setVendorId_);
    }

    v86 = [v80 audioInterface];
    if (v86)
    {
      v87 = v86;
      v88 = sub_1B1C2D778();
      v90 = v89;

      sub_1B1AD55EC(v88, v90, v87, &selRef_setProductId_);

LABEL_104:
      v21 = v124;
      goto LABEL_105;
    }

LABEL_103:

    goto LABEL_104;
  }

LABEL_105:
  v94 = [objc_allocWithZone(MEMORY[0x1E69CF790]) init];
  [v94 setStartedOrChanged_];
  if (v94)
  {
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    (*(v10 + 16))(v123, v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId, v7);
    v95 = v94;
    v96 = sub_1B1AABA20(v123);
    OUTLINED_FUNCTION_35_11(v96, sel_setContextId_);
  }

  v97 = [objc_allocWithZone(MEMORY[0x1E69CF780]) init];
  if (!v97)
  {
    v111 = OUTLINED_FUNCTION_45_7();
    v112(v111);

    goto LABEL_6;
  }

  v98 = v97;
  [v97 setSpeechContext_];
  sub_1B1AABABC();
  v100 = v99;
  OUTLINED_FUNCTION_35_11(v99, sel_setEventMetadata_);

  OUTLINED_FUNCTION_55_4();
  v102 = [v98 v101];
  if (v102)
  {
    v103 = v102;
    sub_1B1A8E474(0, &qword_1EB761050, 0x1E69CF640);
    OUTLINED_FUNCTION_43_9();
    OUTLINED_FUNCTION_37_1();
    v104();
    v105 = sub_1B1AABA20(v123);
    [v103 setTtsId_];

    v100 = &off_1E7AF4000;
  }

  v106 = [v98 v100[441]];
  if (v106)
  {
    v107 = v106;
    if (*(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8))
    {
      v108 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId);
      v109 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

      v110 = sub_1B1C2CB28();
    }

    else
    {
      v110 = 0;
    }

    OUTLINED_FUNCTION_69_4(v106, sel_setClientId_);
  }

  sub_1B1AABE04(v98);
  v113 = *(v2 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_siriPowerLogger);
  if (!v113 || (v114 = [v113 captureSnapshot]) == 0)
  {
    v119 = OUTLINED_FUNCTION_45_7();
    v120(v119);

    goto LABEL_6;
  }

  v115 = v114;
  v116 = [objc_opt_self() context];
  if (v116)
  {
    v117 = v116;
    v118 = sub_1B1C2C448();
    [v115 logWithEventContext:v117 ttsIdentifier:v118];

    goto LABEL_5;
  }

LABEL_123:
  __break(1u);
}

void sub_1B1AD3824(uint64_t a1, OpaqueAudioQueue *a2, AudioQueueBuffer *a3)
{
  if (qword_1ED9A5118 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9A5120;
  [qword_1ED9A5120 lock];
  if (qword_1ED9A96B8 != -1)
  {
    swift_once();
  }

  sub_1B1AD3948();
  if (v6 == 2 || (v6 & 1) == 0)
  {
    mUserData = a3->mUserData;
    if (!mUserData)
    {
      __break(1u);
      return;
    }

    AudioQueueFreeBuffer(a2, a3);
    v9 = mUserData[3];
    v8 = mUserData[4];

    v9(0);
  }

  [v5 unlock];
}

void sub_1B1AD3948()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 880);
  v3 = *(v0 + 888);
  v4 = *(v0 + 896);
  v5 = *(v0 + 904);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

void sub_1B1AD39BC(void *a1, uint64_t a2, void *a3)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v6 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v6, qword_1ED9A9120);
  v7 = a3;
  v8 = sub_1B1C2C888();
  v9 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    *(v10 + 4) = a2;
    *(v10 + 12) = 2048;
    v11 = OBJC_IVAR___SiriTTSAudioData_packetCount;
    swift_beginAccess();
    *(v10 + 14) = *&v7[v11];
    *(v10 + 22) = 2048;
    v12 = &v7[OBJC_IVAR___SiriTTSAudioData_audioData];
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = 0;
    switch(v14 >> 62)
    {
      case 1uLL:
        LODWORD(v15) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x1B1AD3BB0);
        }

        v15 = v15;
LABEL_12:
        *(v10 + 24) = v15;

        _os_log_impl(&dword_1B1A8A000, v8, v9, "Played audio buffer #%ld, packet count: %ld, bytes: %ld", v10, 0x20u);
        MEMORY[0x1B2739FD0](v10, -1, -1);

        if (!a1)
        {
          return;
        }

        goto LABEL_7;
      case 2uLL:
        v19 = v13 + 16;
        v18 = *(v13 + 16);
        v17 = *(v19 + 8);
        v20 = __OFSUB__(v17, v18);
        v15 = v17 - v18;
        if (!v20)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_12;
      default:
        v15 = BYTE6(v14);
        goto LABEL_12;
    }
  }

  if (a1)
  {
LABEL_7:
    v16 = a1;
    sub_1B1B02E5C();
  }
}

uint64_t sub_1B1AD3BC0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B1AD3BF8(unint64_t a1)
{
  if (a1 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_1B1C41554[a1];
  }
}

uint64_t OUTLINED_FUNCTION_48_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return sub_1B1C2D628();
}

uint64_t sub_1B1AD3C90(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return dword_1B1C4153C[a1 - 1];
  }
}

uint64_t sub_1B1AD3CB4(unint64_t a1)
{
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 1;
  }
}

uint64_t _s14SiriTTSService14SynthesisVoiceC9voiceEnum7forNameSo08SISchemadH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F726161 && a2 == 0xE500000000000000;
  if (v3 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6E61646961 && a2 == 0xE500000000000000;
  if (v7 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 2;
  }

  v8 = a1 == 0x6873616B61 && a2 == 0xE500000000000000;
  if (v8 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 3;
  }

  v9 = a1 == 0x6965736B656C61 && a2 == 0xE700000000000000;
  if (v9 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 4;
  }

  v10 = a1 == 1635150945 && a2 == 0xE400000000000000;
  if (v10 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 5;
  }

  v11 = a1 == 0x65696C656D61 && a2 == 0xE600000000000000;
  if (v11 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 6;
  }

  v12 = a1 == 0x6C65676E61 && a2 == 0xE500000000000000;
  if (v12 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 7;
  }

  v13 = a1 == 0x727568747261 && a2 == 0xE600000000000000;
  if (v13 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 8;
  }

  v14 = a1 == 1818589281 && a2 == 0xE400000000000000;
  if (v14 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 9;
  }

  v15 = a1 == 0x7A697274616562 && a2 == 0xE700000000000000;
  if (v15 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 10;
  }

  v16 = a1 == 0x6E656D726163 && a2 == 0xE600000000000000;
  if (v16 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 11;
  }

  v17 = a1 == 0x74696D726163 && a2 == 0xE600000000000000;
  if (v17 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 12;
  }

  v18 = a1 == 0x6E69726568746163 && a2 == 0xE900000000000065;
  if (v18 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 13;
  }

  v19 = a1 == 0x6E6168676E656863 && a2 == 0xE800000000000000;
  if (v19 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 14;
  }

  v20 = a1 == 0x746E6179616D6164 && a2 == 0xE900000000000069;
  if (v20 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 15;
  }

  v21 = a1 == 0x6E6F6D6164 && a2 == 0xE500000000000000;
  if (v21 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 16;
  }

  v22 = a1 == 0x6C65696E6164 && a2 == 0xE600000000000000;
  if (v22 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 17;
  }

  v23 = a1 == 0x432D45442D6564 && a2 == 0xE700000000000000;
  if (v23 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 18;
  }

  v24 = a1 == 0x442D45442D6564 && a2 == 0xE700000000000000;
  if (v24 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 19;
  }

  v25 = a1 == 1718185061 && a2 == 0xE400000000000000;
  if (v25 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 20;
  }

  v26 = a1 == 0x6E656C6C65 && a2 == 0xE500000000000000;
  if (v26 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 21;
  }

  v27 = a1 == 1702063205 && a2 == 0xE400000000000000;
  if (v27 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 22;
  }

  v28 = a1 == 0x432D42472D6E65 && a2 == 0xE700000000000000;
  if (v28 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 23;
  }

  v29 = a1 == 0x442D42472D6E65 && a2 == 0xE700000000000000;
  if (v29 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 24;
  }

  v30 = a1 == 0x637365636E617266 && a2 == 0xE900000000000061;
  if (v30 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 25;
  }

  v31 = a1 == 0x6E6F64726F67 && a2 == 0xE600000000000000;
  if (v31 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 26;
  }

  v32 = a1 == 0x432D55412D6E65 && a2 == 0xE700000000000000;
  if (v32 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 94;
  }

  v33 = a1 == 0x442D55412D6E65 && a2 == 0xE700000000000000;
  if (v33 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 95;
  }

  v34 = a1 == 0x69726F74746168 && a2 == 0xE700000000000000;
  if (v34 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 27;
  }

  v35 = a1 == 0x616E656C6568 && a2 == 0xE600000000000000;
  if (v35 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 28;
  }

  v36 = a1 == 1869769064 && a2 == 0xE400000000000000;
  if (v36 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 29;
  }

  v37 = a1 == 0x6E69796F68 && a2 == 0xE500000000000000;
  if (v37 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 30;
  }

  v38 = a1 == 0x646972676E69 && a2 == 0xE600000000000000;
  if (v38 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 31;
  }

  v39 = a1 == 1936614762 && a2 == 0xE400000000000000;
  if (v39 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 32;
  }

  v40 = a1 == 0x6F6F736E696ALL && a2 == 0xE600000000000000;
  if (v40 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 33;
  }

  v41 = a1 == 1851875691 && a2 == 0xE400000000000000;
  if (v41 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 34;
  }

  v42 = a1 == 0x61796E616BLL && a2 == 0xE500000000000000;
  if (v42 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 35;
  }

  v43 = a1 == 0x6E6179616BLL && a2 == 0xE500000000000000;
  if (v43 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 36;
  }

  v44 = a1 == 0x7261616C6BLL && a2 == 0xE500000000000000;
  if (v44 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 37;
  }

  v45 = a1 == 0x616E6F656CLL && a2 == 0xE500000000000000;
  if (v45 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 38;
  }

  v46 = a1 == 1970104684 && a2 == 0xE400000000000000;
  if (v46 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 39;
  }

  v47 = a1 == 0x6965666E696CLL && a2 == 0xE600000000000000;
  if (v47 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 40;
  }

  v48 = a1 == 0x616E616963756CLL && a2 == 0xE700000000000000;
  if (v48 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 41;
  }

  v49 = a1 == 0x617369756CLL && a2 == 0xE500000000000000;
  if (v49 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 42;
  }

  v50 = a1 == 0x657665616DLL && a2 == 0xE500000000000000;
  if (v50 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 43;
  }

  v51 = a1 == 0x646567616DLL && a2 == 0xE500000000000000;
  if (v51 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 44;
  }

  v52 = a1 == 0x656972616DLL && a2 == 0xE500000000000000;
  if (v52 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 45;
  }

  v53 = a1 == 0x432D52462D7266 && a2 == 0xE700000000000000;
  if (v53 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 98;
  }

  v54 = a1 == 0x442D52462D7266 && a2 == 0xE700000000000000;
  if (v54 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 99;
  }

  v55 = a1 == 0x73756972616DLL && a2 == 0xE600000000000000;
  if (v55 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 46;
  }

  v56 = a1 == 0x61687472616DLL && a2 == 0xE600000000000000;
  if (v56 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 47;
  }

  v57 = a1 == 0x6E697472616DLL && a2 == 0xE600000000000000;
  if (v57 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 48;
  }

  v58 = a1 == 0x61696A69656DLL && a2 == 0xE600000000000000;
  if (v58 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 49;
  }

  v59 = a1 == 0x696A6E696DLL && a2 == 0xE500000000000000;
  if (v59 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 50;
  }

  v60 = a1 == 0x6172696F6DLL && a2 == 0xE500000000000000;
  if (v60 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 51;
  }

  v61 = a1 == 0x412D594D2D736DLL && a2 == 0xE700000000000000;
  if (v61 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 86;
  }

  v62 = a1 == 0x422D594D2D736DLL && a2 == 0xE700000000000000;
  if (v62 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 87;
  }

  v63 = a1 == 0x6F646E616ELL && a2 == 0xE500000000000000;
  if (v63 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 52;
  }

  v64 = a1 == 0x796B63696ELL && a2 == 0xE500000000000000;
  if (v64 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 53;
  }

  v65 = a1 == 1634889582 && a2 == 0xE400000000000000;
  if (v65 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 54;
  }

  v66 = a1 == 1852142191 && a2 == 0xE400000000000000;
  if (v66 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 55;
  }

  v67 = a1 == 0x6F6C6F6170 && a2 == 0xE500000000000000;
  if (v67 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 56;
  }

  v68 = a1 == 0x432D54492D7469 && a2 == 0xE700000000000000;
  if (v68 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 96;
  }

  v69 = a1 == 0x442D54492D7469 && a2 == 0xE700000000000000;
  if (v69 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 97;
  }

  v70 = a1 == 0x616E696C756170 && a2 == 0xE700000000000000;
  if (v70 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 57;
  }

  v71 = a1 == 0x657272656970 && a2 == 0xE600000000000000;
  if (v71 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 58;
  }

  v72 = a1 == 0x726574656970 && a2 == 0xE600000000000000;
  if (v72 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 59;
  }

  v73 = a1 == 0x412D54502D7470 && a2 == 0xE700000000000000;
  if (v73 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 104;
  }

  v74 = a1 == 0x422D54502D7470 && a2 == 0xE700000000000000;
  if (v74 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 105;
  }

  v75 = a1 == 0x6E6E697571 && a2 == 0xE500000000000000;
  if (v75 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 60;
  }

  v76 = a1 == 1635346802 && a2 == 0xE400000000000000;
  if (v76 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 61;
  }

  v77 = a1 == 0x6172756B6173 && a2 == 0xE600000000000000;
  if (v77 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 62;
  }

  v78 = a1 == 0x72656D6173 && a2 == 0xE500000000000000;
  if (v78 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 63;
  }

  v79 = a1 == 0x6172646E6173 && a2 == 0xE600000000000000;
  if (v79 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 64;
  }

  v80 = a1 == 1634886003 && a2 == 0xE400000000000000;
  if (v80 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 65;
  }

  v81 = a1 == 1970561395 && a2 == 0xE400000000000000;
  if (v81 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 66;
  }

  v82 = a1 == 0x6E6566756873 && a2 == 0xE600000000000000;
  if (v82 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 67;
  }

  v83 = a1 == 0x656E6F6D6973 && a2 == 0xE600000000000000;
  if (v83 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 68;
  }

  v84 = a1 == 0x696A6E6973 && a2 == 0xE500000000000000;
  if (v84 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 69;
  }

  v85 = a1 == 1634234227 && a2 == 0xE400000000000000;
  if (v85 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 70;
  }

  v86 = a1 == 0x656968706F73 && a2 == 0xE600000000000000;
  if (v86 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 71;
  }

  v87 = a1 == 1769370995 && a2 == 0xE400000000000000;
  if (v87 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 72;
  }

  v88 = a1 == 0x6173736574 && a2 == 0xE500000000000000;
  if (v88 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 73;
  }

  v89 = a1 == 0x412D48542D6874 && a2 == 0xE700000000000000;
  if (v89 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 74;
  }

  v90 = a1 == 0x422D48542D6874 && a2 == 0xE700000000000000;
  if (v90 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 75;
  }

  v91 = a1 == 0x65646C6974 && a2 == 0xE500000000000000;
  if (v91 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 76;
  }

  v92 = a1 == 1768976244 && a2 == 0xE400000000000000;
  if (v92 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 77;
  }

  v93 = a1 == 0x746E65636E6976 && a2 == 0xE700000000000000;
  if (v93 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 78;
  }

  v94 = a1 == 0x412D4E562D6976 && a2 == 0xE700000000000000;
  if (v94 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 90;
  }

  v95 = a1 == 0x422D4E562D6976 && a2 == 0xE700000000000000;
  if (v95 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 91;
  }

  v96 = a1 == 0x432D4E562D6976 && a2 == 0xE700000000000000;
  if (v96 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 92;
  }

  v97 = a1 == 0x442D4E562D6976 && a2 == 0xE700000000000000;
  if (v97 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 93;
  }

  v98 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF412D74756F6B72;
  if (v98 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 100;
  }

  v99 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF422D74756F6B72;
  if (v99 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 101;
  }

  v100 = a1 == 0x6F772D53552D6E65 && a2 == 0xEF432D74756F6B72;
  if (v100 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 102;
  }

  v101 = a1 == 0x7265646E6178 && a2 == 0xE600000000000000;
  if (v101 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 79;
  }

  v102 = a1 == 0x6E696D736179 && a2 == 0xE600000000000000;
  if (v102 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 80;
  }

  v103 = a1 == 0x61646C6579 && a2 == 0xE500000000000000;
  if (v103 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 81;
  }

  v104 = a1 == 0x616E656C6579 && a2 == 0xE600000000000000;
  if (v104 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 82;
  }

  v105 = a1 == 1634628985 && a2 == 0xE400000000000000;
  if (v105 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 83;
  }

  v106 = a1 == 0x7568737579 && a2 == 0xE500000000000000;
  if (v106 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 84;
  }

  v107 = a1 == 0x432D4E432D687ALL && a2 == 0xE700000000000000;
  if (v107 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 88;
  }

  v108 = a1 == 0x442D4E432D687ALL && a2 == 0xE700000000000000;
  if (v108 || (sub_1B1C2D7A8() & 1) != 0)
  {
    return 89;
  }

  v5 = 85;
  if (a1 != 7760250 || a2 != 0xE300000000000000)
  {
    if (sub_1B1C2D7A8())
    {
      return 85;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1B1AD55E0(unint64_t a1)
{
  if (a1 < 4)
  {
    return (a1 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_1B1AD55EC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1B1C2CB28();

  [a3 *a4];
}

uint64_t sub_1B1AD5658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_56_0();
  v9 = (v4 + *v8);
  OUTLINED_FUNCTION_15_7();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v6;
  v9[1] = v5;
  return a4(v10, v11);
}

uint64_t sub_1B1AD5850()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B1AD588C(int a1)
{
  v3 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B1AD59BC(float a1)
{
  OUTLINED_FUNCTION_3_5(OBJC_IVAR___SiriTTSSynthesisContext_rate);
  result = OUTLINED_FUNCTION_66_0();
  *v1 = a1;
  return result;
}

id SpeechRequest.init(text:voice:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_56_0();
  v6 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  *&v4[v6] = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  objc_allocWithZone(type metadata accessor for SynthesisContext());
  v7 = a3;
  v8 = OUTLINED_FUNCTION_33();
  *&v4[OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext] = SynthesisContext.init(text:voice:)(v8, v9, v7);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SpeechRequest(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

id AudibleContext.init()()
{
  *&v0[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId] = 0;
  v0[OBJC_IVAR___SiriTTSAudibleContext_immediate] = 1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSAudibleContext_didStartSpeaking);
  *&v0[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume] = 1065353216;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudibleContext();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1B1AD5C10()
{
  v1 = [v0 audibleContext];
  v2 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3;
}

uint64_t sub_1B1AD5CBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1AD5CFC(uint64_t result, int a2, int a3)
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

void sub_1B1AD5D94()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_20_5(v7, v8);
  v10 = sub_1B1A954B0(v9);
  OUTLINED_FUNCTION_1_14(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_12:
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  if (OUTLINED_FUNCTION_17_8())
  {
    v17 = *v2;
    sub_1B1A954B0(v1);
    OUTLINED_FUNCTION_6_10();
    if (!v19)
    {
      goto LABEL_12;
    }

    v15 = v18;
  }

  v20 = *v2;
  if (v16)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v15);
    *(v21 + 8 * v15) = v0;
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    sub_1B1B37BEC(v15, v1, v0, v20);
    OUTLINED_FUNCTION_26_1();
  }
}

void sub_1B1AD5EE4(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_51_0();
  v4 = *(v1 + v3);
  v5 = OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_25_1(v5, sel_encodeInt32_forKey_);

  v6 = OBJC_IVAR___SiriTTSAudibleContext_immediate;
  OUTLINED_FUNCTION_40_0();
  v7 = *(v1 + v6);
  v8 = OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_25_1(v8, sel_encodeBool_forKey_);

  OUTLINED_FUNCTION_29(OBJC_IVAR___SiriTTSAudibleContext_playbackVolume);
  OUTLINED_FUNCTION_65();
  v9 = *v1;
  v10 = OUTLINED_FUNCTION_78();
  LODWORD(v11) = v9;
  [a1 encodeFloat:v10 forKey:v11];
}

uint64_t static CacheStorage.sharedSynthesisCache.getter()
{
  if (qword_1ED9A5220 != -1)
  {
    swift_once();
  }
}

void sub_1B1AD6050()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 672);
  v3 = *(v0 + 680);
  v4 = *(v0 + 688);
  v5 = *(v0 + 696);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AD60B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_8_2();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_1B1AD6108(char a1)
{
  v3 = OBJC_IVAR___SiriTTSSynthesisContext_privacySensitive;
  result = OUTLINED_FUNCTION_8_2();
  *(v1 + v3) = a1;
  return result;
}

void sub_1B1AD6190(char *a1, char *a2, void (**a3)(void, void))
{
  v6 = sub_1B1C2C7F8();
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B1C2C8A8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B1C2C828();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DF8, qword_1B1C40850);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v75 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B1A95808;
  *(v23 + 24) = v22;
  aBlock = sub_1B1BFB48C;
  v84 = v23;
  _Block_copy(a3);
  v82 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB764230, &qword_1B1C41090);
  v89 = sub_1B1C2D7F8();
  if (swift_dynamicCast())
  {

    if (qword_1ED9A96B8 != -1)
    {
      swift_once();
    }

    sub_1B1A91998();
    if (v24 == 2 || (v24 & 1) == 0)
    {
      v75 = v6;
      v76 = a3;
      v34 = mach_absolute_time();
      v35 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *&a1[v35] = v34;
      v36 = sub_1B1A919FC();
      v38 = v37;
      v77 = a2;
      v39 = &a1[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
      swift_beginAccess();
      v40 = v39[1];
      *v39 = v36;
      v39[1] = v38;

      sub_1B1A91CD0(&v77[OBJC_IVAR___SiriTTSDaemonSession_accessoryId], v21, &qword_1EB761DF8, qword_1B1C40850);
      v41 = OBJC_IVAR___SiriTTSBaseRequest_accessoryId;
      swift_beginAccess();
      sub_1B1A91B74(v21, &a1[v41]);
      swift_endAccess();
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v9, qword_1ED9A9120);
      (*(v10 + 16))(v13, v42, v9);
      sub_1B1C2C808();
      v43 = a1;
      v44 = v78;
      sub_1B1C2C7E8();
      v45 = sub_1B1C2C818();
      v46 = sub_1B1C2D198();
      if (sub_1B1C2D278())
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = *&a1[v35];

        v48 = sub_1B1C2C7D8();
        _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v45, v46, v48, "TTSRequestReceived", "id %llu", v47, 0xCu);
        MEMORY[0x1B2739FD0](v47, -1, -1);
      }

      else
      {
      }

      (*(v81 + 8))(v44, v75);
      (*(v79 + 8))(v17, v80);
      v49 = v43;
      v50 = sub_1B1C2C888();
      v51 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock = v53;
        *v52 = 136446210;
        v54 = [v49 description];
        v55 = sub_1B1C2CB58();
        v57 = v56;

        v58 = sub_1B1A930E4(v55, v57, &aBlock);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_1B1A8A000, v50, v51, "Start #SpeechRequest %{public}s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1B2739FD0](v53, -1, -1);
        MEMORY[0x1B2739FD0](v52, -1, -1);
      }

      v59 = v77;
      v60 = sub_1B1AD6C0C();
      if (!v60)
      {
        v61 = [objc_opt_self() sharedInstance];
        v62 = [v61 opaqueSessionID];

        v60 = sub_1B1BCF6C4(v62);
      }

      v63 = *&v59[OBJC_IVAR___SiriTTSDaemonSession_requestsLock];
      v64 = MEMORY[0x1EEE9AC00](v60);
      *(&v75 - 2) = v59;
      *(&v75 - 1) = v49;
      MEMORY[0x1EEE9AC00](v64);
      *(&v75 - 2) = sub_1B1BFB388;
      *(&v75 - 1) = v65;
      os_unfair_lock_lock(v63 + 4);
      sub_1B1BFB494();
      os_unfair_lock_unlock(v63 + 4);
      v66 = sub_1B1A9CB84();
      v67 = swift_allocObject();
      v67[2] = v49;
      v67[3] = sub_1B1A95808;
      v68 = v82;
      v67[4] = v82;

      v69 = v49;
      v70 = sub_1B1A927C4(sub_1B1BFB3E0, v67);

      v71 = swift_allocObject();
      v71[2] = v69;
      v71[3] = v59;
      v71[4] = sub_1B1A95808;
      v71[5] = v68;
      v87 = sub_1B1BFB380;
      v88 = v71;
      aBlock = MEMORY[0x1E69E9820];
      v84 = 1107296256;
      v85 = sub_1B1A955E0;
      v86 = &block_descriptor_531;
      v72 = _Block_copy(&aBlock);

      v73 = v69;
      v74 = v59;

      [v70 speakWithSpeechRequest:v73 reply:v72];
      _Block_release(v72);

      swift_unknownObjectRelease();
      a3 = v76;
    }

    else
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v9, qword_1ED9A9120);
      v25 = sub_1B1C2C888();
      v26 = sub_1B1C2D0D8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1B1A8A000, v25, v26, "Skipped #SpeechRequest: TTS is disabled.", v27, 2u);
        MEMORY[0x1B2739FD0](v27, -1, -1);
      }

      a3[2](a3, 0);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_1ED9A9120);
    v28 = sub_1B1C2C888();
    v29 = sub_1B1C2D0C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B1A8A000, v28, v29, "speakWithSpeechRequest:didFinish: requires correct parameters", v30, 2u);
      MEMORY[0x1B2739FD0](v30, -1, -1);
    }

    v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v32 = sub_1B1B1AE5C(0x5353545469726953, 0xEE00656369767265, 1, 0);
    v33 = sub_1B1C2C048();
    (a3)[2](a3, v33);
  }

  _Block_release(a3);
}

uint64_t sub_1B1AD6C14(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_67();
  sub_1B1A991E4();
  return swift_endAccess();
}

unint64_t sub_1B1AD6C78(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
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

void sub_1B1AD6CBC(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  OUTLINED_FUNCTION_52_0();
  v4 = *&v3[v1];
  v5 = OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_13_5();

  v6 = OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext;
  OUTLINED_FUNCTION_35_3();
  v7 = *&v6[v1];
  v8 = OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_11_2(v8);

  sub_1B1A99C9C(a1);
}

id SpeechRequest.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v1 = OBJC_IVAR___SiriTTSSpeechRequest_audibleContext;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AudibleContext()) init];
  OUTLINED_FUNCTION_4_2();
  result = sub_1B1C2D1E8();
  if (result)
  {
    OUTLINED_FUNCTION_19_2();
    OUTLINED_FUNCTION_143();
    type metadata accessor for SynthesisContext();
    result = OUTLINED_FUNCTION_113();
    if (result)
    {
      OUTLINED_FUNCTION_124(result, OBJC_IVAR___SiriTTSSpeechRequest_synthesisContext);
      return BaseRequest.init(coder:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id AudibleContext.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  *&v1[OBJC_IVAR___SiriTTSAudibleContext_audioSessionId] = 0;
  v4 = OBJC_IVAR___SiriTTSAudibleContext_immediate;
  v1[OBJC_IVAR___SiriTTSAudibleContext_immediate] = 1;
  OUTLINED_FUNCTION_85(OBJC_IVAR___SiriTTSAudibleContext_didStartSpeaking);
  v5 = &v1[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume];
  *&v1[OBJC_IVAR___SiriTTSAudibleContext_playbackVolume] = 1065353216;
  v6 = OUTLINED_FUNCTION_79_0();
  v7 = OUTLINED_FUNCTION_63_1();
  v9 = [v7 v8];

  OUTLINED_FUNCTION_66_0();
  *&v1[v3] = v9;
  v10 = OUTLINED_FUNCTION_99();
  v11 = OUTLINED_FUNCTION_63_1();
  LOBYTE(v9) = [v11 v12];

  OUTLINED_FUNCTION_66_0();
  v1[v4] = v9;
  v13 = OUTLINED_FUNCTION_78();
  v14 = OUTLINED_FUNCTION_63_1();
  [v14 v15];
  v17 = v16;

  OUTLINED_FUNCTION_45_2();
  *v5 = v17;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for AudibleContext();
  v18 = objc_msgSendSuper2(&v20, sel_init);

  return v18;
}

uint64_t static InlineStreamingStorage.shared.getter()
{
  if (qword_1ED9A4FF0 != -1)
  {
    swift_once();
  }
}

unint64_t static OS_dispatch_queue.appSynthesisPriority(request:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xA8))();
  v5 = v4;
  v6 = v3 == 0xD000000000000015 && 0x80000001B1C48370 == v4;
  if (v6 || (v7 = v3, (sub_1B1C2D7A8() & 1) != 0) || (v7 == 0xD00000000000002DLL ? (v8 = 0x80000001B1C43A80 == v5) : (v8 = 0), v8))
  {

    goto LABEL_15;
  }

  v9 = sub_1B1C2D7A8();

  if (v9)
  {
LABEL_15:
    v11 = 0;
    v12 = 46;
    return v12 | (v11 << 32);
  }

  v10 = SynthesizingRequestProtocol.synthesisPriority.getter(ObjectType);
  v11 = v10 != 1;
  v12 = 46;
  if (v10 != 1)
  {
    v12 = 0;
  }

  return v12 | (v11 << 32);
}

uint64_t static PreinstalledAudioStorage.shared.getter()
{
  if (qword_1ED9A4FC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B1AD7268()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_1_8();
  return sub_1B1B20E18(v0, v1, v2, v3);
}

void sub_1B1AD72D0()
{
  swift_getObjectType();

  sub_1B1AD8E8C();
}

id WordTimingInfo.init(coder:)()
{
  OUTLINED_FUNCTION_47_0();
  v2 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  *&v0[OBJC_IVAR___SiriTTSWordTimingInfo_startTime] = 0;
  v3 = &v0[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  OUTLINED_FUNCTION_61_1();
  v4 = sub_1B1C2CB28();
  [v1 decodeDoubleForKey_];
  v6 = v5;

  OUTLINED_FUNCTION_66_0();
  *&v0[v2] = v6;
  sub_1B1A8E474(0, &qword_1ED9A8D78, 0x1E696B098);
  v7 = sub_1B1C2D1E8();
  if (v7)
  {
    v8 = v7;
    [v7 rangeValue];
    OUTLINED_FUNCTION_42_3();
  }

  else
  {
    v4 = 0;
    v2 = 0;
  }

  OUTLINED_FUNCTION_45_2();
  *v3 = v4;
  *(v3 + 1) = v2;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for WordTimingInfo();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_1B1AD7490(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  else
  {
    v2 = &type metadata for InstrumentationMetrics.SourceOfTTS;
  }

  v4[0] = a1;
  v4[3] = v2;
  return sub_1B1AA5E5C(v4);
}

double SynthesisCacheFile.SynthesisCacheChunkIterator.next()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1B1C2D068();
  if (v5 >> 60 != 15)
  {
    v7 = sub_1B1AD765C(v4, v5);
    sub_1B1C2D068();
    if (v8 >> 60 == 15)
    {
      v9 = OUTLINED_FUNCTION_15();
    }

    else
    {
      if (MEMORY[0x1B27377C0]() == v7)
      {
        v11 = sub_1B1C2C008();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        swift_allocObject();
        sub_1B1C2BFF8();
        sub_1B1AD76E8();
        sub_1B1C2BFE8();
        v16 = OUTLINED_FUNCTION_42_0();
        sub_1B1AA9670(v16, v17);
        v18 = OUTLINED_FUNCTION_15();
        sub_1B1AA9670(v18, v19);

        result = *&v20;
        *a1 = v20;
        return result;
      }

      v14 = OUTLINED_FUNCTION_15();
      sub_1B1AA9670(v14, v15);
      v9 = OUTLINED_FUNCTION_42_0();
    }

    sub_1B1AA9670(v9, v10);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1B1AD765C(uint64_t a1, unint64_t a2)
{
  result = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1B1AD76D8);
      }

      v4 = a1;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
LABEL_6:
      result = sub_1B1BDB9B8(v4);
      break;
    case 3uLL:
      return result;
    default:
      result = a1;
      break;
  }

  return result;
}

unint64_t sub_1B1AD76E8()
{
  result = qword_1ED9A5188;
  if (!qword_1ED9A5188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5188);
  }

  return result;
}

void SynthesisCache.init(from:)()
{
  OUTLINED_FUNCTION_12_17();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764010, &qword_1B1C40AE8);
  v6 = OUTLINED_FUNCTION_7(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1B1AA9CD0();
  sub_1B1C2D918();
  if (v0)
  {
    goto LABEL_4;
  }

  LOBYTE(v43) = 0;
  v12 = sub_1B1C2D6D8();
  if (v12 != 12918 || v13 != 0xE200000000000000)
  {
    v22 = sub_1B1C2D7A8();

    if (v22)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_35_10();
    v14 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_7_23(v14, v15);
    OUTLINED_FUNCTION_32_11(v17, v16 | 1);
    v18 = *(v8 + 8);
    v19 = OUTLINED_FUNCTION_15();
    v20(v19);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v2);
    goto LABEL_5;
  }

LABEL_13:
  sub_1B1AD7B44();
  OUTLINED_FUNCTION_14_17(MEMORY[0x1E6969080]);
  sub_1B1A8E474(0, &qword_1ED9A4EF0, 0x1E696ACD0);
  OUTLINED_FUNCTION_23_5();
  type metadata accessor for AudioData();
  v42 = sub_1B1C2D0E8();
  if (v42)
  {
    OUTLINED_FUNCTION_14_17(MEMORY[0x1E6969080]);
    type metadata accessor for WordTimingInfo();
    v32 = sub_1B1C2D0F8();
    v33 = v32;
    if (v32)
    {
      v34 = *(v8 + 8);
      v35 = OUTLINED_FUNCTION_15();
      v36(v35);
      sub_1B1A94524(v43, v44);
      sub_1B1A94524(v43, v44);
      *v4 = v42;
      v4[1] = v33;
      v37 = v42;

      __swift_destroy_boxed_opaque_existential_0(v2);

      goto LABEL_5;
    }

    OUTLINED_FUNCTION_35_10();
    v38 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_7_23(v38, v39);
    OUTLINED_FUNCTION_32_11(v41, v40 + 6);
    sub_1B1A94524(v43, v44);
    v27 = v43;
    v28 = v44;
  }

  else
  {
    OUTLINED_FUNCTION_35_10();
    v23 = OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_7_23(v23, v24);
    OUTLINED_FUNCTION_32_11(v25, v26);
    v27 = v43;
    v28 = v44;
  }

  sub_1B1A94524(v27, v28);
  v29 = *(v8 + 8);
  v30 = OUTLINED_FUNCTION_15();
  v31(v30);
  __swift_destroy_boxed_opaque_existential_0(v2);
  if (v42)
  {
  }

LABEL_5:
  OUTLINED_FUNCTION_13_23();
}

unint64_t sub_1B1AD7B44()
{
  result = qword_1ED9A5250;
  if (!qword_1ED9A5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A5250);
  }

  return result;
}

void sub_1B1AD7B98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v107 - v4;
  v6 = type metadata accessor for SynthesisCacheFile(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1AA95C4();
  if (!v10)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v28 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v28, qword_1ED9A9120);
    v29 = sub_1B1C2C888();
    v30 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v30))
    {
      v31 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v31);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_42_4();
    return;
  }

  v11 = v10;
  if (*(v0 + 56))
  {
    sub_1B1AC5D40();
    if (v12 != 2 && (v12 & 1) != 0)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v13 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v13, qword_1ED9A9120);
      v14 = sub_1B1C2C888();
      v15 = sub_1B1C2D098();
      if (!OUTLINED_FUNCTION_10_2(v15))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  if (!*(v0 + 40) || (swift_getObjectType(), v16 = v11, sub_1B1AD8E8C(), v18 = v17, v16, !v18))
  {
    if (!*(v1 + 32))
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v45 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v45, qword_1ED9A9120);
      v14 = sub_1B1C2C888();
      v46 = sub_1B1C2D0B8();
      if (!OUTLINED_FUNCTION_10_2(v46))
      {
        goto LABEL_43;
      }

LABEL_42:
      v47 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v47);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_29_1();
LABEL_43:

      OUTLINED_FUNCTION_42_4();
      return;
    }

    v110 = *(v1 + 32);

    v39 = sub_1B1AA95A0(v37, v38);
    if (!v39)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v53 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v53, qword_1ED9A9120);
      v54 = sub_1B1C2C888();
      v55 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_10_2(v55))
      {
        v56 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_39_3(v56);
        OUTLINED_FUNCTION_16_6();
        _os_log_impl(v57, v58, v59, v60, v61, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      OUTLINED_FUNCTION_42_4();

      return;
    }

    v109 = v39;
    v40 = sub_1B1AA9644();
    if (!v40)
    {
      if (qword_1ED9A9288 != -1)
      {
        OUTLINED_FUNCTION_3_1();
      }

      v62 = sub_1B1C2C8A8();
      OUTLINED_FUNCTION_12_1(v62, qword_1ED9A9120);
      v63 = sub_1B1C2C888();
      v64 = sub_1B1C2D0B8();
      if (OUTLINED_FUNCTION_10_2(v64))
      {
        v65 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_39_3(v65);
        OUTLINED_FUNCTION_16_6();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_29_1();
      }

      OUTLINED_FUNCTION_42_4();

      v71 = v109;
      goto LABEL_69;
    }

    v108 = v40;
    swift_getObjectType();
    if (SynthesizingRequestProtocol.text.getter() == 0xD000000000000010 && 0x80000001B1C4A490 == v41)
    {
    }

    else
    {
      v43 = sub_1B1C2D7A8();

      if ((v43 & 1) == 0)
      {
        v44 = v11;
        sub_1B1ACC8C8();

        sub_1B1AEA43C();

        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {
          sub_1B1A90C78(v5, &qword_1EB762088, &unk_1B1C371C0);
          OUTLINED_FUNCTION_42_4();
        }

        else
        {
          sub_1B1AEACB0(v5, v9);
          if (qword_1ED9A9288 != -1)
          {
            OUTLINED_FUNCTION_3_1();
          }

          v81 = sub_1B1C2C8A8();
          OUTLINED_FUNCTION_12_1(v81, qword_1ED9A9120);
          v82 = v44;
          v83 = sub_1B1C2C888();
          v84 = sub_1B1C2D0D8();
          v107 = v82;

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            *v85 = 138412290;
            v87 = v107;
            *(v85 + 4) = v107;
            *v86 = v11;
            v88 = v87;
            OUTLINED_FUNCTION_16_6();
            _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
            sub_1B1A90C78(v86, &qword_1EB7625C0, &qword_1B1C37990);
            MEMORY[0x1B2739FD0](v86, -1, -1);
            OUTLINED_FUNCTION_29_1();
          }

          v94 = *(v1 + 48);
          if (v94)
          {
            if (qword_1ED9A4DF8 != -1)
            {
              OUTLINED_FUNCTION_32();
            }

            sub_1B1AEAD14();
          }

          v112 = *&v9[*(v6 + 20)];
          v95 = v112;
          v96 = 0.0;
          while (1)
          {
            SynthesisCacheFile.SynthesisCacheChunkIterator.next()(&v111);
            v97 = v111;
            if (!v111)
            {
              break;
            }

            type metadata accessor for DataContainer();
            v98 = swift_allocObject();
            *(v98 + 16) = sub_1B1C2CAB8();
            v99 = v97;
            sub_1B1ACC2E4(v97);

            v101 = sub_1B1ACC308(v100);
            v103 = sub_1B1ABF3B8(v101, v102);
            sub_1B1AD7464(v103);
            sub_1B1AD7490(8, 0);
            AudioData.duration.getter();
            v96 = v96 + v104;
            sub_1B1AA81A8();
            if (v94)
            {
              if (qword_1ED9A4EA8 != -1)
              {
                OUTLINED_FUNCTION_26_3();
                swift_once();
              }

              [v94 postNotificationName:qword_1ED9A4EB0 object:v99];
              if (qword_1ED9A4DA0 != -1)
              {
                OUTLINED_FUNCTION_25_2();
                swift_once();
              }

              sub_1B1AC4DD4();

              v105 = OUTLINED_FUNCTION_13_2();
              sub_1B1AD8690(v105);
            }

            else
            {

              v106 = OUTLINED_FUNCTION_13_2();
              sub_1B1AD8690(v106);
            }
          }

          if (v94)
          {
            if (qword_1ED9A4E88 != -1)
            {
              OUTLINED_FUNCTION_31_1();
            }

            sub_1B1ADED40();

            sub_1B1ACD41C(v9);
            return;
          }

          sub_1B1ACD41C(v9);
        }

        goto LABEL_68;
      }
    }

    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v72 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v72, qword_1ED9A9120);
    v73 = sub_1B1C2C888();
    v74 = sub_1B1C2D0D8();
    if (OUTLINED_FUNCTION_10_2(v74))
    {
      v75 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_39_3(v75);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_29_1();
    }

    OUTLINED_FUNCTION_42_4();
LABEL_68:

    v71 = v108;
LABEL_69:

    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v19 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v19, qword_1ED9A9120);
  v20 = v16;
  v21 = sub_1B1C2C888();
  v22 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v11;
    v25 = v20;
    _os_log_impl(&dword_1B1A8A000, v21, v22, "Preinstalled audio is found for request %@", v23, 0xCu);
    sub_1B1A90C78(v24, &qword_1EB7625C0, &qword_1B1C37990);
    MEMORY[0x1B2739FD0](v24, -1, -1);
    MEMORY[0x1B2739FD0](v23, -1, -1);
  }

  v26 = *(v1 + 48);
  if (v26)
  {
    if (qword_1ED9A4DF8 != -1)
    {
      OUTLINED_FUNCTION_32();
    }

    sub_1B1AEAD14();
  }

  v27 = v18;
  sub_1B1ACC2E4(v18);
  sub_1B1AD7490(8, 0);
  OUTLINED_FUNCTION_42_4();
  if (!sub_1B1AC5E20())
  {
    if (!v26)
    {
LABEL_50:

      return;
    }

LABEL_45:
    if (qword_1ED9A4EA8 != -1)
    {
      OUTLINED_FUNCTION_26_3();
      swift_once();
    }

    [v26 postNotificationName:qword_1ED9A4EB0 object:v27];
    if (qword_1ED9A4E88 != -1)
    {
      OUTLINED_FUNCTION_31_1();
    }

    AudioData.duration.getter();
    sub_1B1ADED40();
    goto LABEL_50;
  }

  if (v26)
  {
    if (qword_1ED9A4DA0 != -1)
    {
      OUTLINED_FUNCTION_25_2();
      swift_once();
    }

    sub_1B1AC4DD4();

    goto LABEL_45;
  }
}

void *sub_1B1AD8690(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1AD874C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    type metadata accessor for WordTimingInfo();
    v4 = sub_1B1C2CE68();
    [v3 didGenerateWordTimingsWithRequestId:a1 wordTimingInfo:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall DaemonSession.didGenerateWordTimings(requestId:wordTimingInfo:)(Swift::UInt64 requestId, Swift::OpaquePointer wordTimingInfo)
{
  v5 = *(v2 + OBJC_IVAR___SiriTTSDaemonSession_requestsLock);
  os_unfair_lock_lock(v5 + 4);
  OUTLINED_FUNCTION_117_1();
  sub_1B1BFB4AC(v6, v7);
  os_unfair_lock_unlock(v5 + 4);
  v8 = v29;
  if (!v29)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v11 = sub_1B1C2C8A8();
    OUTLINED_FUNCTION_12_1(v11, qword_1ED9A9120);
    v8 = sub_1B1C2C888();
    v12 = sub_1B1C2D0B8();
    if (OUTLINED_FUNCTION_10_2(v12))
    {
      v13 = OUTLINED_FUNCTION_21_0();
      *v13 = 134217984;
      *(v13 + 4) = requestId;
      OUTLINED_FUNCTION_5_1();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      OUTLINED_FUNCTION_9_1();
    }

    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_101_2())
  {
    swift_getObjectType();
    Word = SynthesizingRequestProtocol.didGenerateWordTimings.getter();
    if (Word)
    {
      v10 = Word;
      Word(wordTimingInfo._rawValue);

      sub_1B1A949B4(v10);
      return;
    }

    goto LABEL_13;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v19 = sub_1B1C2C8A8();
  OUTLINED_FUNCTION_12_1(v19, qword_1ED9A9120);
  v20 = v29;
  v21 = sub_1B1C2C888();
  v22 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_21_0();
    v23 = OUTLINED_FUNCTION_17_2();
    v8 = OUTLINED_FUNCTION_145(v23, 5.7779e-34);
    OUTLINED_FUNCTION_7_24();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    sub_1B1A90CD8(v23, &qword_1EB7625C0, &qword_1B1C37990);
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_10_1();

LABEL_13:
    return;
  }
}

void sub_1B1AD8AA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WordTimingInfo();
  v3 = sub_1B1C2CE68();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1B1AD8B10(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_4([v2 synthesisContext]);
  OUTLINED_FUNCTION_65();
  v4 = *&v2[a2];

  return v4;
}

uint64_t sub_1B1AD8B64(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1C2CA38();
  v4 = OUTLINED_FUNCTION_7(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v10 = v9 - v8;
  v51 = sub_1B1C2CBC8();
  v11 = OUTLINED_FUNCTION_7(v51);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v48 = sub_1B1C2CA68();
  v19 = OUTLINED_FUNCTION_7(v48);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  sub_1B1C2CA58();
  SynthesizingRequestProtocol.text.getter();
  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v27 = SynthesizingRequestProtocol.voice.getter(a2);
  v28 = &v27[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_65();
  v29 = *v28;
  v30 = *(v28 + 1);

  MEMORY[0x1B27381B0](v29, v30);

  MEMORY[0x1B27381B0](32, 0xE100000000000000);
  v31 = SynthesizingRequestProtocol.voice.getter(a2);
  v32 = &v31[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_26_2();
  v34 = *v32;
  v33 = *(v32 + 1);

  if (v33)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v35, v36);

  sub_1B1C2CBB8();
  sub_1B1C2CB68();
  v38 = v37;
  result = (*(v13 + 8))(v18, v51);
  if (v38 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    v40 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA64DC(v40, v41);
    v42 = OUTLINED_FUNCTION_9_9();
    sub_1B1ACCEA4(v42, v43);
    v44 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA9670(v44, v45);
    v46 = OUTLINED_FUNCTION_9_9();
    sub_1B1AA9670(v46, v47);
    sub_1B1C2CA48();
    sub_1B1ACD0C0();
    (*(v49 + 8))(v10, v50);
    (*(v21 + 8))(v26, v48);
    return OUTLINED_FUNCTION_43_0();
  }

  return result;
}

void sub_1B1AD8E8C()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v60 = v2;
  v4 = v3;
  v61 = sub_1B1C2C0A8();
  v5 = OUTLINED_FUNCTION_7(v61);
  v59 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1B1C2C1C8();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_1();
  v58[0] = v18 - v19;
  OUTLINED_FUNCTION_16_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v58 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_24(v24, v25, v26, v27, v28, v29, v30, v31, v58[0]);
  v32 = SynthesizingRequestProtocol.voice.getter(v1);
  v33 = &v32[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  OUTLINED_FUNCTION_65();
  v34 = *v33;
  v35 = v33[1];

  v62 = v34;
  v63 = v35;
  OUTLINED_FUNCTION_8_8();
  v36 = SynthesizingRequestProtocol.voice.getter(v1);
  v37 = &v36[OBJC_IVAR___SiriTTSSynthesisVoice_name];
  OUTLINED_FUNCTION_65();
  v38 = *v37;
  v39 = *(v37 + 1);

  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (!v39)
  {
    v39 = 0xE000000000000000;
  }

  MEMORY[0x1B27381B0](v40, v39);

  v42 = v62;
  v41 = v63;
  v62 = sub_1B1AD8B64(v4, v1);
  v63 = v43;

  OUTLINED_FUNCTION_4_29();

  v44 = v62;
  v45 = v63;
  v46 = &v60[OBJC_IVAR____TtC14SiriTTSService24PreinstalledAudioStorage_storageURL];
  v60 = *(v15 + 16);
  (v60)(v23, v46, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B1C36280;
  *(v47 + 32) = v42;
  *(v47 + 40) = v41;
  v48 = v12;
  *(v47 + 48) = v44;
  *(v47 + 56) = v45;
  v49 = v59;
  v50 = v61;
  (*(v59 + 104))(v11, *MEMORY[0x1E6968F68], v61);
  sub_1B1A8EDAC();
  v51 = v58[1];
  sub_1B1C2C1A8();

  (*(v49 + 8))(v11, v50);
  v52 = *(v15 + 8);
  v52(v23, v48);
  v53 = [objc_opt_self() defaultManager];
  sub_1B1C2C098();
  v54 = sub_1B1C2CB28();

  LODWORD(v44) = [v53 fileExistsAtPath_];

  if (v44)
  {
    type metadata accessor for AudioData();
    v55 = v58[0];
    (v60)(v58[0], v51, v48);
    v56 = AudioData.__allocating_init(audioFileURL:)(v55);
    v52(v51, v48);
    AudioData.duration.getter();
    if (v57 <= 0.0)
    {
    }
  }

  else
  {
    v52(v51, v48);
  }

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1AD9298(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v26[0] = 0;
    if ([a2 closeAndReturnError_])
    {
      v15 = v26[0];
    }

    else
    {
      v17 = v26[0];
      v18 = sub_1B1C2C058();

      swift_willThrow();
    }

    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v19 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v19, qword_1ED9A9120);

    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1B1A930E4(a3, a4, v26);
      _os_log_impl(&dword_1B1A8A000, v20, v21, "Dumped tailspin to %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2739FD0](v23, -1, -1);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    goto LABEL_17;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v5, qword_1ED9A9120);
  v6 = a1;
  oslog = sub_1B1C2C888();
  v7 = sub_1B1C2D0B8();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1B1C2D828();
    v12 = sub_1B1A930E4(v10, v11, v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B1A8A000, oslog, v7, "Error during tailspin dump, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2739FD0](v9, -1, -1);
    MEMORY[0x1B2739FD0](v8, -1, -1);

LABEL_17:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1AD95F0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_requestCreatedTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1AD9650()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechBeginTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B1AD96B0()
{
  v1 = OBJC_IVAR___SiriTTSInstrumentationMetrics_speechEndTime;
  OUTLINED_FUNCTION_6_27();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B1AD9710(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_1B1AD9784(uint64_t a1, void (**a2)(void))
{
  a2[2](a2);

  _Block_release(a2);
}

uint64_t DelegateHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = *(v0 + 24);

  sub_1B1A97294(v0 + 32);

  return v0;
}

uint64_t DelegateHandler.__deallocating_deinit()
{
  DelegateHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DiagnosticService.__deallocating_deinit()
{
  DiagnosticService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 49, 7);
}

void sub_1B1AD9898()
{
  OUTLINED_FUNCTION_11_7();
  v1 = *(v0 + 48);
  if (v1)
  {
    OUTLINED_FUNCTION_19_2();
    if (*(*(v0 + 56) + 16))
    {
      v2 = v1;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v3);

      v4 = *(v0 + 56);
    }

    *(v0 + 56) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t SignpostHandler.__deallocating_deinit()
{
  SignpostHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t IsNaturalVoiceCondition.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1AD9A3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AD9A74(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B1A95870;
    v7[3] = &block_descriptor_27;
    v6 = _Block_copy(v7);

    [v5 pingWithReply_];
    swift_unknownObjectRelease();
    _Block_release(v6);
  }
}

uint64_t sub_1B1AD9B5C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    v5 = (v1 + 40);
    do
    {
      [v3 removeObserver:*(v5 - 1) name:*v5 object:0];
      v5 += 2;
      --v2;
    }

    while (v2);

    v6 = *(v0 + 24);
  }

  *(v0 + 24) = MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t objectdestroy_23Tm_0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_0_23();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t CoreAnalyticsSynthesisHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return v0;
}

uint64_t CoreAnalyticsSynthesisHandler.__deallocating_deinit()
{
  CoreAnalyticsSynthesisHandler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t SignpostHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_signposter;
  v3 = sub_1B1C2C828();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_synthesisInterval);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_voiceSelectionInternal);

  v6 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_engineSelectionInterval);

  v7 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_audioStartingInterval);

  v8 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_playbackInterval);

  return v0;
}

uint64_t SiriAnalyticsHandler.deinit()
{
  sub_1B1AD97C8();

  v1 = *(v0 + 24);

  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_ttsId);
  v2 = OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_contextId;
  v3 = sub_1B1C2C478();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_isolatedStreamId);

  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo + 8);

  v5 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_encounteredIssues);

  v6 = *(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_clientId + 8);

  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_logLinkId);
  sub_1B1AABFB0(v0 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_interactionLinkId);
  return v0;
}

uint64_t SiriAnalyticsHandler.__deallocating_deinit()
{
  SiriAnalyticsHandler.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t DiagnosticService.deinit()
{
  sub_1B1AD9B5C();

  v1 = *(v0 + 24);

  return v0;
}

uint64_t CacheReadingAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return v0;
}

uint64_t CacheReadingAction.__deallocating_deinit()
{
  v0 = CacheReadingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1B1ADA078()
{
  Buffer.deinit();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = OUTLINED_FUNCTION_13_12();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t PassThroughAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t SynthesisEngineSelectionAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SynthesisEngineSelectionAction.__deallocating_deinit()
{
  v0 = SynthesisEngineSelectionAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t DeviceSynthesisAction.deinit()
{
  sub_1B1ADA1CC();
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  sub_1B1ADA260(v0 + 72);
  v4 = *(v0 + 112);

  v5 = *(v0 + 144);
  return v0;
}

uint64_t DeviceSynthesisAction.__deallocating_deinit()
{
  v0 = DeviceSynthesisAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t AsynchronousContext.__deallocating_deinit()
{
  AsynchronousContext.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1ADA260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7620B0, &unk_1B1C37260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SynthesisBufferingAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t SynthesisBufferingAction.__deallocating_deinit()
{
  v0 = SynthesisBufferingAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t OpusEncodingAction.__deallocating_deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_1B1ADA380()
{
  OUTLINED_FUNCTION_11_7();
  v1 = *(v0 + 96);
  if (v1)
  {
    OUTLINED_FUNCTION_19_2();
    if (*(*(v0 + 104) + 16))
    {
      v2 = v1;
      OUTLINED_FUNCTION_10_9();
      OUTLINED_FUNCTION_17_7();
      do
      {
        OUTLINED_FUNCTION_2_14();
        OUTLINED_FUNCTION_16_9();
      }

      while (!v3);

      v4 = *(v0 + 104);
    }

    *(v0 + 104) = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_10();
}

uint64_t AudioPlaybackAction.deinit()
{
  sub_1B1ADA380();
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1B1A90C78(v0 + 32, &qword_1EB763F90, &unk_1B1C40840);

  v3 = *(v0 + 104);

  return v0;
}

uint64_t AudioPlaybackAction.__deallocating_deinit()
{
  AudioPlaybackAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t BufferedAudioPlayback.deinit()
{
  OUTLINED_FUNCTION_17_3();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v1 + 96));
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_44();
  return v0;
}

uint64_t BufferedAudioPlayback.__deallocating_deinit()
{
  BufferedAudioPlayback.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t AudioQueueInterface.__deallocating_deinit()
{
  AudioQueueInterface.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

uint64_t AudioQueueInterface.deinit()
{
  v2 = v0;
  [*(v0 + 80) lock];
  v3 = AudioQueueDispose(*(v0 + 72), 1u);
  [*(v0 + 80) unlock];
  if (v3 != sub_1B1C2C958())
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v4 = sub_1B1C2C8A8();
    v5 = OUTLINED_FUNCTION_56(v4, qword_1ED9A9120);
    sub_1B1C2D0B8();
    v6 = OUTLINED_FUNCTION_19();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_23_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_18();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v1 = 136315138;
      v9 = sub_1B1B269CC(v3);
      v11 = sub_1B1A930E4(v9, v10, &v22);

      *(v1 + 4) = v11;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v12, v13, v14, v15, v16, v17);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      v18 = OUTLINED_FUNCTION_10_0();
      MEMORY[0x1B2739FD0](v18);
    }
  }

  v19 = *(v2 + 32);

  v20 = *(v2 + 192);

  return v2;
}