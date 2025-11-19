void sub_1B1B44170(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = objc_opt_self();
  v34 = [v35 sharedManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A0, &unk_1B1C38A88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v11 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v10 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1C361C0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(inited + 48) = v12;
  *(inited + 56) = 0x73747469726973;
  *(inited + 64) = 0xE700000000000000;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C361C0;
  *(v13 + 32) = v11;
  *(v13 + 40) = v10;
  *(inited + 72) = v13;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  sub_1B1C2CAB8();
  v30 = sub_1B1C2CA78();

  if (a2)
  {
    v29 = sub_1B1C2CE68();
  }

  else
  {
    v29 = 0;
  }

  if (qword_1EB761360 != -1)
  {
    swift_once();
  }

  v28 = qword_1EB772D00;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a4;
  v40 = sub_1B1B48214;
  v41 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1B1B10890;
  v39 = &block_descriptor_135;
  v15 = _Block_copy(&aBlock);
  v16 = a1;
  sub_1B1A94514(a3);

  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a5;
  v17[4] = a6;
  v40 = sub_1B1B48220;
  v41 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = sub_1B1A95870;
  v39 = &block_descriptor_141;
  v18 = _Block_copy(&aBlock);
  v19 = v16;
  sub_1B1A94514(a5);

  [v34 updateAssetsForSubscribers:v30 policies:v29 queue:v28 detailedProgress:v15 completion:v18];
  _Block_release(v18);
  _Block_release(v15);

  v20 = [v35 sharedManager];
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1B1C36280;
  *(v21 + 32) = v11;
  *(v21 + 40) = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B1C361C0;
  *(v22 + 32) = v11;
  *(v22 + 40) = v10;
  *(v21 + 48) = v22;
  *(v21 + 56) = 0x73747469726973;
  *(v21 + 64) = 0xE700000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B1C361C0;
  *(v23 + 32) = v11;
  *(v23 + 40) = v10;
  *(v21 + 72) = v23;
  swift_bridgeObjectRetain_n();
  sub_1B1C2CAB8();
  v24 = sub_1B1C2CA78();

  v25 = [v20 downloadStatusForSubscribers_];

  if ((v25 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v26 = &v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
    os_unfair_lock_lock(&v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
    if (v26[1] >= 1)
    {
      v27 = &v19[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
      os_unfair_lock_lock(v27);
      LOBYTE(v27[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v27);
    }

    os_unfair_lock_unlock(v26);
  }
}

uint64_t sub_1B1B4465C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B1C2C988();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B1C2C9D8();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 downloadStatus] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v16 = a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading;
    os_unfair_lock_lock((a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading));
    *(v16 + 4) = 1;
    os_unfair_lock_unlock(v16);
  }

  v17 = *(a2 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_progressQueue);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = sub_1B1B48238;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1A95870;
  aBlock[3] = &block_descriptor_153;
  v19 = _Block_copy(aBlock);
  sub_1B1A94514(a3);
  v20 = a1;
  sub_1B1C2C9A8();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B1AADE74(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v15, v11, v19);
  _Block_release(v19);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t (*sub_1B1B4498C(uint64_t (*result)(id, double), int a2, id a3))(id, double)
{
  if (result)
  {
    v4 = result;
    [a3 completedPercent];
    return v4([a3 downloadStatus], v5 / 100.0);
  }

  return result;
}

void sub_1B1B44A04(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B1C2C988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B1C2C9D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter];
  os_unfair_lock_lock(&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_updateCounter]);
  v17 = *(v16 + 1);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 1) = v19;
    os_unfair_lock_unlock(v16);
    v20 = &a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
    os_unfair_lock_lock(&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
    LOBYTE(v20[1]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v20);
    v26 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_progressQueue];
    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = a2;
    v21[4] = a3;
    aBlock[4] = sub_1B1B4822C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1A95870;
    aBlock[3] = &block_descriptor_147_0;
    v22 = _Block_copy(aBlock);
    v23 = a1;
    sub_1B1A94514(a2);
    sub_1B1C2C9A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B1AADE74(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    v25 = v11;
    sub_1B1AA624C(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
    sub_1B1C2D418();
    MEMORY[0x1B2738610](0, v15, v10, v22);
    _Block_release(v22);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v25);
  }
}

void sub_1B1B44D44(void *a1, void (*a2)(void))
{
  if (([a1 locallyAvailable] & 1) == 0)
  {
    sub_1B1B4386C();
  }

  if (a2)
  {
    a2();
  }
}

void sub_1B1B44D98()
{
  OUTLINED_FUNCTION_25();
  v54 = v2;
  v55 = v1;
  v4 = v3;
  v56 = v5;
  v52 = v6;
  v57 = sub_1B1C2C428();
  v7 = OUTLINED_FUNCTION_7(v57);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  sub_1B1C2C418();
  v16 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
  v16[4] = 1;
  os_unfair_lock_unlock(v16);
  v53 = v0;
  v17 = &v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v18 = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v19 = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762738, &unk_1B1C39850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C361C0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001B1C4D870;
  v21 = *(v17 + 2);

  v22 = OUTLINED_FUNCTION_126();
  *(inited + 48) = sub_1B1B67C04(v22, v23, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  v24 = sub_1B1C2CAB8();
  v25 = objc_allocWithZone(MEMORY[0x1E69DEEF8]);
  v26 = OUTLINED_FUNCTION_126();
  v28 = sub_1B1B4740C(v26, v27, v24, 0);
  if (v28)
  {
    v29 = v28;
    v51 = [objc_opt_self() sharedManager];
    OUTLINED_FUNCTION_126();
    v50 = sub_1B1C2CB28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1B1C37D90;
    *(v30 + 32) = v29;
    sub_1B1A8E474(0, &qword_1EB760F88, 0x1E69DEEF8);
    v49 = v29;
    v48 = sub_1B1C2CE68();

    v31 = v15;
    v32 = v15;
    v33 = v57;
    (*(v9 + 16))(v13, v32, v57);
    v34 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v35 = swift_allocObject();
    v36 = v9;
    v37 = v52;
    v38 = v53;
    *(v35 + 2) = v53;
    *(v35 + 3) = v4;
    *(v35 + 4) = v54;
    *(v35 + 5) = v37;
    (*(v36 + 32))(&v35[v34], v13, v33);
    v39 = &v35[(v11 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
    v41 = v55;
    v40 = v56;
    *v39 = v55;
    v39[1] = v40;
    v58[4] = sub_1B1B47500;
    v58[5] = v35;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v58[2] = v42;
    v58[3] = &block_descriptor_13;
    v43 = _Block_copy(v58);
    v44 = v38;
    sub_1B1A94514(v4);
    sub_1B1A94514(v41);

    v46 = v50;
    v45 = v51;
    v47 = v48;
    [v51 subscribe:v50 subscriptions:v48 queue:0 completion:v43];
    _Block_release(v43);

    (*(v36 + 8))(v31, v33);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B1B45194(void *a1, char *a2, void (*a3)(void), uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a4;
  v15 = sub_1B1C2C428();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v72 = a3;
    v19 = a1;
    LODWORD(v71) = sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1B1C36280;
    v21 = &a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v22 = a2;
    v23 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v24 = *(v21 + 1);
    v25 = MEMORY[0x1E69E6158];
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1B1AC9204();
    *(v20 + 64) = v26;
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    swift_getErrorValue();

    v27 = sub_1B1C2D828();
    *(v20 + 96) = v25;
    *(v20 + 104) = v26;
    *(v20 + 72) = v27;
    *(v20 + 80) = v28;
    sub_1B1C2C7C8();

    v29 = &v22[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
    os_unfair_lock_lock(&v22[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
    v29[4] = 0;
    os_unfair_lock_unlock(v29);
    if (v72)
    {
      v72(0);
    }

    return;
  }

  v69 = v17;
  v70 = a7;
  if (([a2 locallyAvailable] & 1) == 0)
  {
    if (a5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1B1C361C0;
      v37 = *MEMORY[0x1E69DEF58];
      *(v36 + 32) = sub_1B1C2CB58();
      *(v36 + 40) = v38;
    }

    else
    {
      v36 = 0;
    }

    v66 = a8;
    LODWORD(v68) = sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    v67 = qword_1ED9AA668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1B1C36280;
    v71 = a2;
    v40 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v41 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v42 = MEMORY[0x1E69E6158];
    *(v39 + 56) = MEMORY[0x1E69E6158];
    v43 = sub_1B1AC9204();
    *(v39 + 64) = v43;
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    if (v36)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      v76 = sub_1B1AA624C(&unk_1EB7624B8, &unk_1EB761F10, &unk_1B1C37DA0);
      *&v74 = v36;
      sub_1B1A8D0E0(&v74, v39 + 72);
      v44 = v36;
    }

    else
    {
      v44 = 0;
      *(v39 + 96) = v42;
      *(v39 + 104) = v43;
      *(v39 + 72) = 7104878;
      *(v39 + 80) = 0xE300000000000000;
    }

    v65[1] = v44;

    sub_1B1C2C7C8();

    v45 = sub_1B1AE47E4();
    if (v45)
    {
      v46 = v45;
      v47 = [v45 integerValue];

      v72 = a3;
      v65[0] = v36;
      if (v47 < 1)
      {
        v68 = 500000000;
        goto LABEL_25;
      }

      v48 = sub_1B1AE47E4();
      if (v48)
      {
        v49 = v48;
        v68 = [v48 integerValue];

LABEL_25:
        v50 = a6;
        v51 = swift_allocObject();
        *(v51 + 16) = 0xBFF0000000000000;
        v52 = swift_allocObject();
        *(v52 + 16) = -1;
        v53 = v69;
        (*(v69 + 16))(v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v15);
        v54 = (*(v53 + 80) + 24) & ~*(v53 + 80);
        v55 = (v16 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
        v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
        v57 = swift_allocObject();
        *(v57 + 16) = v68;
        (*(v53 + 32))(v57 + v54, v18, v15);
        *(v57 + v55) = v51;
        *(v57 + v56) = v52;
        v58 = (v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
        v59 = v70;
        v60 = v66;
        *v58 = v70;
        v58[1] = v60;
        v61 = swift_allocObject();
        v62 = v71;
        v63 = v72;
        v61[2] = v71;
        v61[3] = v63;
        v61[4] = v73;

        sub_1B1A94514(v59);
        v64 = v62;
        sub_1B1A94514(v63);
        sub_1B1AF6E30(v65[0], sub_1B1B4812C, v57, sub_1B1B481F8, v61);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v30 = a2;
  v31 = a3;
  sub_1B1C2D0D8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B1C361C0;
  v33 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v34 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  *(v32 + 56) = MEMORY[0x1E69E6158];
  *(v32 + 64) = sub_1B1AC9204();
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;

  sub_1B1C2C7C8();

  v35 = &a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading];
  os_unfair_lock_lock(&v30[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDownloading]);
  LOBYTE(v35[1]._os_unfair_lock_opaque) = 0;
  os_unfair_lock_unlock(v35);
  type metadata accessor for TTSAsset();
  sub_1B1B7693C();
  if (v31)
  {
    v31(v30);
  }
}

uint64_t sub_1B1B458C0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, double), uint64_t a8)
{
  v32[1] = a8;
  v14 = sub_1B1C2C428();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0.0;
  v20 = a1 != 4 && a3 < 1.0;
  v21 = a2;
  if (v20)
  {
    if (a3 <= 0.0)
    {
      v21 = 0;
      v19 = 300.0;
    }

    else
    {
      sub_1B1C2C418();
      sub_1B1C2C408();
      v23 = v22;
      result = (*(v15 + 8))(v18, v14);
      v25 = a2 * a3;
      if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v25 <= -9.22337204e18)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= 9.22337204e18)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v19 = (1.0 - a3) * v23 / a3;
      v21 = v25;
    }
  }

  swift_beginAccess();
  if (v19 == *(a5 + 16))
  {
    result = swift_beginAccess();
    if (v21 == *(a6 + 16))
    {
      return result;
    }
  }

  sub_1B1C2D0A8();
  if (qword_1ED9A99B8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  result = swift_allocObject();
  *(result + 16) = xmmword_1B1C364E0;
  v26 = a3 * 100.0;
  if (COERCE__INT64(fabs(a3 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = MEMORY[0x1E69E6530];
  v28 = MEMORY[0x1E69E65A8];
  *(result + 56) = MEMORY[0x1E69E6530];
  *(result + 64) = v28;
  *(result + 32) = v26;
  v29 = MEMORY[0x1E69E6438];
  *(result + 96) = MEMORY[0x1E69E63B0];
  *(result + 104) = v29;
  *(result + 72) = v19;
  *(result + 136) = v27;
  *(result + 144) = v28;
  v30 = MEMORY[0x1E69E6810];
  *(result + 112) = v21;
  v31 = MEMORY[0x1E69E6870];
  *(result + 176) = v30;
  *(result + 184) = v31;
  *(result + 152) = a1;
  sub_1B1C2C7C8();

  if (a7)
  {
    a7(v21, a2, v19);
  }

  swift_beginAccess();
  *(a5 + 16) = v19;
  result = swift_beginAccess();
  *(a6 + 16) = v21;
  return result;
}

uint64_t sub_1B1B45C28(char *a1, uint64_t (*a2)(char *))
{
  if ([a1 locallyAvailable])
  {
    sub_1B1C2D0D8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B1C361C0;
    v6 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v5 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 64) = sub_1B1AC9204();
    *(v4 + 32) = v6;
    *(v4 + 40) = v5;

    sub_1B1C2C7C8();

    type metadata accessor for TTSAsset();
    result = sub_1B1B7693C();
    if (a2)
    {
      v8 = a1;
      return a2(v8);
    }
  }

  else
  {
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B1C361C0;
    v11 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v10 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1B1AC9204();
    *(v9 + 32) = v11;
    *(v9 + 40) = v10;

    sub_1B1C2C7C8();

    if (a2)
    {
      v8 = 0;
      return a2(v8);
    }
  }

  return result;
}

void sub_1B1B45F6C(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 downloading])
  {
    type metadata accessor for TTSAssetUAFStrategy();
    swift_initStaticObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B1C37D90;
    *(v5 + 32) = a1;
    v6 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v7 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = sub_1B1B20A10;
    v8[4] = v4;
    v9 = a1;

    sub_1B1B69B18(v5, v6, v7, sub_1B1B483C0, v8);
  }

  else
  {
    v10 = [a1 locallyAvailable];
    sub_1B1C2D098();
    if (v10)
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B1C361C0;
      v13 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v12 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1B1AC9204();
      *(v11 + 32) = v13;
      *(v11 + 40) = v12;

      sub_1B1C2C7C8();

      (a2)[2](a2, a1);
    }

    else
    {
      if (qword_1ED9A99B8 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1B1C361C0;
      v16 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
      v15 = *&a1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1B1AC9204();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;

      sub_1B1C2C7C8();

      a2[2](a2, 0);
    }
  }

  _Block_release(a2);
}

uint64_t sub_1B1B462A8(void *a1, char *a2, uint64_t (*a3)(char *))
{
  v3 = a3;
  if (a1)
  {
    v6 = a1;
    sub_1B1C2D0B8();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1B1C36280;
    v8 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v9 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v10 = MEMORY[0x1E69E6158];
    *(v7 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1B1AC9204();
    *(v7 + 64) = v11;
    *(v7 + 32) = v8;
    *(v7 + 40) = v9;
    swift_getErrorValue();

    v12 = sub_1B1C2D828();
    *(v7 + 96) = v10;
    *(v7 + 104) = v11;
    *(v7 + 72) = v12;
    *(v7 + 80) = v13;
    sub_1B1C2C7C8();

    v3 = a3;
  }

  else
  {
    sub_1B1C2D098();
    if (qword_1ED9A99B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B1C361C0;
    v16 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v15 = *&a2[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B1AC9204();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;

    sub_1B1C2C7C8();
  }

  if ([a2 locallyAvailable])
  {
    v17 = a2;
  }

  else
  {
    v17 = 0;
  }

  return v3(v17);
}

uint64_t sub_1B1B46570()
{
  OUTLINED_FUNCTION_62();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = OUTLINED_FUNCTION_72();
  sub_1B1A94514(v3);
  sub_1B1B466F8();
}

uint64_t sub_1B1B465EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for TTSAsset();
  result = sub_1B1B7693C();
  if (a2)
  {
    return a2(a1);
  }

  return result;
}

uint64_t sub_1B1B466F8()
{
  OUTLINED_FUNCTION_62();
  type metadata accessor for TTSAssetUAFStrategy();
  swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B1C37D90;
  *(v3 + 32) = v1;
  v4 = *&v1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  v5 = *&v1[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  v6 = v1;
  v7 = OUTLINED_FUNCTION_30_5();
  sub_1B1B69B18(v7, v8, v9, v2, v0);
}

id TTSAssetUAFAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B1B46828()
{
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8);
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);

  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  v4 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
  sub_1B1A90C20(v4 + *(v5 + 28), &unk_1EB761F00, &qword_1B1C36480);

  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDownloadSize + 8, &qword_1EB762780, &qword_1B1C38A60);
  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazyDiskSize + 8, &qword_1EB762780, &qword_1B1C38A60);
  sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages + 8, &qword_1EB762788, &qword_1B1C38A68);
  return sub_1B1A90C20(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_experimentId + 8, &qword_1EB761D78, &qword_1B1C38F90);
}

id sub_1B1B46B88(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  OUTLINED_FUNCTION_92();
  v5 = sub_1B1C2CB28();

  return v5;
}

id sub_1B1B46CD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1B1B46D4C()
{
  sub_1B1AC763C();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    sub_1B1B46D88();
  }

  return v1;
}

uint64_t sub_1B1B46D88()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
  v3 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  v4 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  sub_1B1AB9288();

  v5 = v12;
  result = sub_1B1A90C20(v11, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v5)
  {
    v7 = *(v1 + v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    result = swift_allocObject();
    *(result + 16) = xmmword_1B1C361C0;
    if (v2[2] < 6uLL)
    {
      __break(1u);
    }

    else
    {
      v8 = result;
      v9 = v2[14];
      v10 = v2[15];
      *(result + 32) = v9;
      *(result + 40) = v10;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
      v11[0] = v8;

      sub_1B1AC965C(v11);
    }
  }

  return result;
}

uint64_t sub_1B1B47024()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8);

  return OUTLINED_FUNCTION_43_0();
}

id sub_1B1B47084(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CA78();

  return v5;
}

uint64_t sub_1B1B47100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762470, &qword_1B1C35D80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C364D0;
  *(inited + 32) = 0x6564496563696F56;
  *(inited + 40) = 0xEF7265696669746ELL;
  v2 = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
  v3 = MEMORY[0x1E69E6158];
  *(inited + 48) = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x80000001B1C41EA0;

  v4 = [v0 primaryLanguage];
  v5 = sub_1B1C2CB58();
  v7 = v6;

  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 120) = v3;
  strcpy((inited + 128), "VoiceVersion");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v8 = sub_1B1AB8434();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = v8;
  v9 = sub_1B1C2CAB8();
  v10 = sub_1B1AE47E4();
  if (v10)
  {
    v11 = v10;
    v39 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    v19 = OUTLINED_FUNCTION_35_0(v39, v12, v13, v14, v15, v16, v17, v18, v33, v34, v35, v36, v37, v38, v11);
    sub_1B1A9EEE0(v19, v20);
    swift_isUniquelyReferenced_nonNull_native();
    v34 = v9;
    sub_1B1A9EEF0();
  }

  v21 = sub_1B1AE4808();
  if (v21)
  {
    v22 = v21;
    v40 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
    v30 = OUTLINED_FUNCTION_35_0(v40, v23, v24, v25, v26, v27, v28, v29, v33, v34, v35, v36, v37, v38, v22);
    sub_1B1A9EEE0(v30, v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B1A9EEF0();
  }

  return v9;
}

id sub_1B1B47364(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B1C2CB28();

  sub_1B1A8E474(0, &qword_1EB762770, 0x1E69C7550);
  v6 = sub_1B1C2CE68();

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:v6];

  return v7;
}

id sub_1B1B4740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2CB28();

  if (!a3)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761EE0, &unk_1B1C38950);
  v8 = sub_1B1C2CA78();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1B1C2CA78();

LABEL_6:
  v10 = [v4 initWithName:v7 assetSets:v8 usageAliases:v9];

  return v10;
}

void sub_1B1B47500(void *a1)
{
  v3 = *(sub_1B1C2C428() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1B1B45194(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

void sub_1B1B475C4()
{
  sub_1B1B476B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B1B476B8()
{
  if (!qword_1EB761320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB761F00, &qword_1B1C36480);
    v0 = sub_1B1C2C4F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB761320);
    }
  }
}

uint64_t sub_1B1B477C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1B1AA0B44(a1, a2, a3, v44);
  v42[2] = v44[0];
  v42[3] = v44[1];
  v42[4] = v44[2];
  v43 = v45;
  v36 = a1;

  v35 = a3;

  while (1)
  {
    sub_1B1A9E6FC(&v41);
    v9 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {
      sub_1B1A9D350();
    }

    v10 = v41;
    sub_1B1A9EEE0(v42, v40);
    v11 = *a5;
    v19 = sub_1B1A8EB10();
    v20 = v11[2];
    v21 = (v12 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v12;
    if (v11[3] >= v22)
    {
      if (a4)
      {
        if (v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
        v22 = sub_1B1C2D638();
        if (v23)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1B1AC891C(v22, a4 & 1);
      v24 = *a5;
      v22 = sub_1B1A8EB10();
      if ((v23 & 1) != (v12 & 1))
      {
        goto LABEL_18;
      }

      v19 = v22;
      if (v23)
      {
LABEL_10:
        v25 = *a5;
        v26 = OUTLINED_FUNCTION_35_0(v22, v12, v13, v14, v15, v16, v17, v18, v35, v36, v37, *(&v37 + 1), v38, v39, v40[0]);
        sub_1B1A93378(v26, v27);
        __swift_destroy_boxed_opaque_existential_0(v40);

        v28 = (v25[7] + 32 * v19);
        __swift_destroy_boxed_opaque_existential_0(v28);
        sub_1B1A9EEE0(&v37, v28);
        goto LABEL_14;
      }
    }

    v29 = *a5;
    *(*a5 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v30 = (v29[6] + 16 * v19);
    *v30 = v10;
    v30[1] = v9;
    sub_1B1A9EEE0(v40, (v29[7] + 32 * v19));
    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    v29[2] = v33;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

uint64_t sub_1B1B479F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1B1B477C8(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1B1B47A68(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1B1B47D6C(v9, v4, v2);
      MEMORY[0x1B2739FD0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1B1ADFF70(0, v4, v5);
  v6 = sub_1B1B47BCC(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1B1B47BCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(a3 + 56) + 16 * v13 + 8);

    if (sub_1B1C2CDA8())
    {
    }

    else
    {
      v18 = sub_1B1C2CDA8();

      if ((v18 & 1) == 0)
      {
        *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v22++, 1))
        {
          __break(1u);
          return sub_1B1B47DE4(v21, a2, v22, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1B1B47DE4(v21, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B1B47D6C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1B1B47BCC(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1B1B47DE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762778, &qword_1B1C38A58);
  result = sub_1B1C2D6A8();
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
  v35 = v4;
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
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B1B4802C(void *a1)
{
  v1 = [a1 assets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1B1A8E474(0, &qword_1EB761278, 0x1E69DEED0);
  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1B480BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1B4812C(uint64_t a1, double a2)
{
  v5 = *(sub_1B1C2C428() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_1B1B458C0(a1, v11, a2, v2 + v6, v9, v10, v13, v14);
}

uint64_t getEnumTagSinglePayload for TTSAssetUAFAsset.assetDeviceType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for TTSAssetUAFAsset.assetDeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B1B483DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  v4 = v3;
  v5 = sub_1B1A97A14(&unk_1ED9A94F0, type metadata accessor for URLResourceKey);
  v6 = MEMORY[0x1B2738440](v2, v4, v5);
  v7 = 0;
  v10[1] = v6;
  v8 = *(a1 + 16);
  while (1)
  {
    if (v8 == v7)
    {

      return;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = v7 + 1;
    sub_1B1B1DEEC(v10, *(a1 + 8 * v7 + 32));

    v7 = v9;
  }

  __break(1u);
}

uint64_t TTSAssetUAFAssetProvider.__allocating_init()()
{
  OUTLINED_FUNCTION_15_3();
  v0 = swift_allocObject();
  TTSAssetUAFAssetProvider.init()();
  return v0;
}

uint64_t sub_1B1B484F0()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = v8;
  v10 = sub_1B1ABB11C(v0, 1u);
  v0 = static TTSAsset.listAssets(ofTypes:matching:)(v4, v10);

  v11 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C(v0);
  OUTLINED_FUNCTION_23_4();
  v12 = MEMORY[0x1E69E7D40];
  while (v4 != v1)
  {
    if (v2)
    {
      v13 = MEMORY[0x1B2738A20](v1, v0);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_18;
      }

      v13 = *(v0 + v1 + 4);
    }

    v14 = v13;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v15 = *v13;
    v16 = *v12;
    OUTLINED_FUNCTION_21_6();
    v18 = (*(v17 + 280))();
    if (v18)
    {
      v19 = v18;
      v44 = sub_1B1ABFFF8();
      v20 = [v19 bundlePath];
      sub_1B1C2CB58();
      v42 = v21;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v22, v23, v24, v25, v26, v27, v28, v29, v40, v42, v44);
      OUTLINED_FUNCTION_10_3(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43, v45, v46);
      if (v38)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
      v11 = v46;
      ++v1;
    }

    else
    {

      ++v1;
    }
  }

  return v11;
}

void sub_1B1B48728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v5 = *v3;
  v46 = MEMORY[0x1E69E7CC0];
  v47[0] = MEMORY[0x1E69E7CC0];
  v6 = sub_1B1A9547C(a1);
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2738A20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v49 = v8;
    sub_1B1B48B10(&v49, &v48);

    if (v48)
    {
      v10 = MEMORY[0x1B2738320]();
      OUTLINED_FUNCTION_10_3(v10, v11, v12, v13, v14, v15, v16, v17, v44, v45, v46, v47[0]);
      if (v18)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
      v46 = v47[0];
    }
  }

  v19 = sub_1B1A9547C(v46);
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (v19 != v20)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1B2738A20](v20, v46);
    }

    else
    {
      if (v20 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v22 = *(v46 + 8 * v20 + 32);
    }

    v23 = v22;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_50;
    }

    v24 = sub_1B1ABA04C();

    v25 = *(v24 + 16);
    v26 = *(v21 + 16);
    if (__OFADD__(v26, v25))
    {
      goto LABEL_52;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v26 + v25 > *(v21 + 24) >> 1)
    {
      sub_1B1A9ED54();
      v21 = v27;
    }

    if (*(v24 + 16))
    {
      if ((*(v21 + 24) >> 1) - *(v21 + 16) < v25)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v28 = *(v21 + 16);
        v29 = __OFADD__(v28, v25);
        v30 = v28 + v25;
        if (v29)
        {
          goto LABEL_55;
        }

        *(v21 + 16) = v30;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_53;
      }
    }

    ++v20;
  }

  v31 = sub_1B1ACB6B8(v21);
  v32 = v31;
  v49 = MEMORY[0x1E69E7CC0];
  v33 = v31 + 56;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v31 + 56);
  v37 = (v34 + 63) >> 6;

  v38 = 0;
  if (v36)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      type metadata accessor for TTSAssetUAFStrategy();
      swift_initStaticObject();
      v47[0] = v46;
      v43 = OUTLINED_FUNCTION_20_7();
      sub_1B1C004C0(v43);
      sub_1B1B68860(v47[0], 0x73747469726973, 0xE700000000000000, v44, v45);

      return;
    }

    v36 = *(v33 + 8 * v39);
    ++v38;
    if (v36)
    {
      v38 = v39;
      do
      {
LABEL_38:
        v40 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
        v42 = *v40;
        v41 = v40[1];
        v47[0] = v42;
        v47[1] = v41;
        sub_1B1B48D9C(v47, &v48);
        if (v48)
        {
          MEMORY[0x1B2738320]();
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B1C2CE98();
          }

          sub_1B1C2CEC8();
        }

        v36 &= v36 - 1;
      }

      while (v36);
    }
  }

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
}

void sub_1B1B48B10(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED9A9980;
  *(v4 + 32) = qword_1ED9A9980;
  v6 = qword_1ED9A9850;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED9A97E0;
  *(v4 + 40) = qword_1ED9A97E0;
  v9 = OBJC_IVAR___SiriTTSVoiceSubscription_voice;
  swift_beginAccess();
  v10 = *&v3[v9];
  v11 = v8;
  v12 = v10;
  v13 = sub_1B1ABB11C(v10, 2u);

  v14 = static TTSAsset.bestAsset(ofTypes:matching:)(v4, v13);

  if (v14)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      *a2 = v15;
      return;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);
    v17 = v3;
    v14 = sub_1B1C2C888();
    v18 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v14, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_1B1A8A000, v14, v18, "Can't determine asset matching subscription: %@", v19, 0xCu);
      sub_1B1B1AF0C(v20);
      MEMORY[0x1B2739FD0](v20, -1, -1);
      MEMORY[0x1B2739FD0](v19, -1, -1);
    }
  }

  *a2 = 0;
}

void sub_1B1B48D9C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED9A9968;
  *(v5 + 32) = qword_1ED9A9968;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 32) = 1;
  *(inited + 40) = v3;
  *(inited + 48) = v4;
  *(inited + 64) = v8;
  *(inited + 72) = 7;
  v9 = qword_1EB761310;
  v10 = v6;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB761318;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v11;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A14(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty);
  v12 = v11;
  v13 = sub_1B1C2CAB8();
  v14 = static TTSAsset.bestAsset(ofTypes:matching:)(v5, v13);

  if (v14)
  {
    type metadata accessor for TTSAssetUAFAsset(0);
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      *a2 = v15;
      return;
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v16, qword_1ED9A9120);

    v14 = sub_1B1C2C888();
    v17 = sub_1B1C2D0D8();

    if (os_log_type_enabled(v14, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B1A930E4(v3, v4, &v20);
      _os_log_impl(&dword_1B1A8A000, v14, v17, "Can't determine resource asset matching subscription language: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B2739FD0](v19, -1, -1);
      MEMORY[0x1B2739FD0](v18, -1, -1);
    }
  }

  *a2 = 0;
}

void sub_1B1B490D0()
{
  OUTLINED_FUNCTION_25();
  v0 = sub_1B1C2C988();
  v47 = OUTLINED_FUNCTION_7(v0);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_16();
  v46 = sub_1B1C2C9D8();
  v3 = OUTLINED_FUNCTION_7(v46);
  v45 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  v44 = v8 - v7;
  v9 = sub_1B1C2C998();
  v10 = OUTLINED_FUNCTION_7(v9);
  v42 = v11;
  v43 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  v16 = v15 - v14;
  v48 = dispatch_group_create();
  if (qword_1EB761370 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v17 = qword_1EB772D08;
    v18 = sub_1B1A9547C(qword_1EB772D08);
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1B2738A20](v21, v17);
        }

        else
        {
          if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v22 = *(v17 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if ([v22 locallyAvailable])
        {
          dispatch_group_enter(v48);
          *(swift_allocObject() + 16) = v48;
          v25 = v48;
          sub_1B1B466F8();

          v20 = 1;
        }

        else
        {
        }

        ++v21;
        if (v24 == v19)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v20 = 0;
LABEL_15:
    if (qword_1EB7612C8 != -1)
    {
      swift_once();
    }

    v26 = qword_1EB772CE8;
    v27 = sub_1B1A9547C(qword_1EB772CE8);
    if (!v27)
    {
      break;
    }

    v28 = v27;
    v29 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1B2738A20](v29, v26);
      }

      else
      {
        if (v29 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v30 = *(v26 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if ([v30 locallyAvailable])
      {
        dispatch_group_enter(v48);
        *(swift_allocObject() + 16) = v48;
        v33 = v48;
        sub_1B1B466F8();

        v20 = 1;
        ++v29;
        if (v32 == v28)
        {
          goto LABEL_30;
        }
      }

      else
      {

        ++v29;
        if (v32 == v28)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_29:
  if (v20)
  {
LABEL_30:
    sub_1B1A8E474(0, &qword_1ED9A9940, 0x1E69E9610);
    (*(v42 + 104))(v16, *MEMORY[0x1E69E7F98], v43);
    v34 = sub_1B1C2D168();
    (*(v42 + 8))(v16, v43);
    v49[4] = sub_1B1B49664;
    v49[5] = 0;
    OUTLINED_FUNCTION_2_2();
    v49[1] = 1107296256;
    v49[2] = sub_1B1A95870;
    v49[3] = &block_descriptor_14;
    v35 = _Block_copy(v49);
    sub_1B1C2C9A8();
    OUTLINED_FUNCTION_3_15();
    sub_1B1A97A14(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
    sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
    sub_1B1C2D418();
    sub_1B1C2D108();
    _Block_release(v35);

    v38 = OUTLINED_FUNCTION_13_13();
    v39(v38);
    (*(v45 + 8))(v44, v46);
    OUTLINED_FUNCTION_26_1();
  }

  else
  {
    OUTLINED_FUNCTION_26_1();
  }
}

void sub_1B1B49690(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (!a2[1])
  {
    v3 = *a2;
  }

  sub_1B1B496A8();
}

void sub_1B1B496A8()
{
  OUTLINED_FUNCTION_25();
  v4 = v3;
  v6 = v5;
  v34 = v7;
  v35 = v8;
  v32 = v9;
  v33 = v10;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v16 = sub_1B1C2C988();
  v17 = OUTLINED_FUNCTION_7(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v37 = sub_1B1C2C9D8();
  v20 = OUTLINED_FUNCTION_7(v37);
  v36 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v24 = swift_allocObject();
  v24[2] = v14;
  v24[3] = v6;
  v24[4] = v4;
  v24[5] = v12;
  v24[6] = v33;
  v24[7] = v32;
  v24[8] = v34;
  v24[9] = v35;
  v24[10] = v15;
  v38[4] = sub_1B1B4AEDC;
  v38[5] = v24;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v38[2] = v25;
  v38[3] = &block_descriptor_9;
  v26 = _Block_copy(v38);
  v27 = v14;

  sub_1B1A94514(v12);
  sub_1B1A94514(v34);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_3_15();
  sub_1B1A97A14(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v2, v1, v26);
  _Block_release(v26);
  v30 = OUTLINED_FUNCTION_13_13();
  v31(v30);
  (*(v36 + 8))(v2, v37);

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1B49954(void *a1, void (*a2)(void *, void *), uint64_t a3, void (*a4)(void **), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED9A9980;
  *(v13 + 32) = qword_1ED9A9980;
  v15 = qword_1ED9A9850;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED9A97E0;
  *(v13 + 40) = qword_1ED9A97E0;
  v18 = v17;
  v19 = sub_1B1ABB11C(a1, 2u);
  v20 = static TTSAsset.bestAsset(ofTypes:matching:)(v13, v19);

  if (v20)
  {
    if (([v20 locallyAvailable] & 1) != 0 && (v21 = (*((*MEMORY[0x1E69E7D40] & *v20) + 0x118))()) != 0)
    {
      v22 = v21;
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v23 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v23, qword_1ED9A9120);
      v24 = v20;
      v25 = sub_1B1C2C888();
      v26 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v20;
        v29 = v24;
        _os_log_impl(&dword_1B1A8A000, v25, v26, "Voice is locally available already: %@", v27, 0xCu);
        sub_1B1B1AF0C(v28);
        MEMORY[0x1B2739FD0](v28, -1, -1);
        MEMORY[0x1B2739FD0](v27, -1, -1);
      }

      v30 = sub_1B1ABFFF8();
      v31 = [v22 bundlePath];
      v32 = sub_1B1C2CB58();
      v34 = v33;

      type metadata accessor for VoiceAsset();
      v35 = swift_allocObject();
      v35[2] = v30;
      v35[3] = v32;
      v35[4] = v34;
      a2(0, v35);
    }

    else
    {
      if (a4)
      {
        v54 = v12;
        aBlock = v20;
        v36 = v20;
        sub_1B1A94514(a4);
        a4(&aBlock);
        sub_1B1A949B4(a4);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      v37 = swift_allocObject();
      *(v37 + 16) = a7;
      *(v37 + 24) = a8;
      v55 = sub_1B1B4B110;
      v56 = v37;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = sub_1B1B203B8;
      v54 = &block_descriptor_39;
      v38 = _Block_copy(&aBlock);
      sub_1B1A94514(a7);

      v39 = swift_allocObject();
      v39[2] = a2;
      v39[3] = a3;
      v39[4] = v20;
      v55 = sub_1B1B4B150;
      v56 = v39;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = sub_1B1B20428;
      v54 = &block_descriptor_45;
      v40 = _Block_copy(&aBlock);
      v41 = v20;

      [v41 downloadWithOptions:a6 progress:v38 then:v40];
      _Block_release(v40);
      _Block_release(v38);
    }
  }

  else
  {
    sub_1B1C2D538();

    v42 = [a1 description];
    v43 = sub_1B1C2CB58();
    v45 = v44;

    MEMORY[0x1B27381B0](v43, v45);

    sub_1B1A9EC9C();
    v46 = swift_allocError();
    *v47 = 5;
    *(v47 + 8) = 0xD00000000000001ELL;
    *(v47 + 16) = 0x80000001B1C4DD60;
    a2(v46, 0);
  }
}

void sub_1B1B49F3C(void *a1, void (*a2)(void *, void *), uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
    v7 = a1;
    v8 = v6();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1B1ABFFF8();
      v11 = [v9 bundlePath];
      v12 = sub_1B1C2CB58();
      v14 = v13;

      type metadata accessor for VoiceAsset();
      v15 = swift_allocObject();
      v15[2] = v10;
      v15[3] = v12;
      v15[4] = v14;
      a2(0, v15);

      return;
    }
  }

  sub_1B1C2D538();

  v16 = [a4 description];
  v17 = sub_1B1C2CB58();
  v19 = v18;

  MEMORY[0x1B27381B0](v17, v19);

  sub_1B1A9EC9C();
  v20 = swift_allocError();
  *v21 = 1;
  *(v21 + 8) = 0xD00000000000001ALL;
  *(v21 + 16) = 0x80000001B1C4DD80;
  a2(v20, 0);
}

uint64_t sub_1B1B4A17C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C36280);
  v5 = MEMORY[0x1E69E6370];
  v4[2].n128_u8[8] = 1;
  v4[4].n128_u64[0] = v5;
  v4[4].n128_u64[1] = 7;
  if (qword_1EB761310 != -1)
  {
LABEL_19:
    OUTLINED_FUNCTION_6_14();
  }

  v6 = qword_1EB761318;
  inited[6].n128_u64[1] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[5].n128_u64[0] = v6;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_19();
  sub_1B1A97A14(v7, v8);
  v9 = v6;
  v10 = OUTLINED_FUNCTION_25_4();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v12 = qword_1ED9A9968;
  *(v11 + 32) = qword_1ED9A9968;
  v13 = v12;
  inited = static TTSAsset.listAssets(ofTypes:matching:)(v11, v10);

  v14 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B1A9547C(inited);
  OUTLINED_FUNCTION_23_4();
  v15 = MEMORY[0x1E69E7D40];
  while (v10 != v0)
  {
    if (v1)
    {
      v16 = MEMORY[0x1B2738A20](v0, inited);
    }

    else
    {
      if (v0 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v16 = inited[2].n128_u64[v0];
    }

    v17 = v16;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v18 = *v16;
    v19 = *v15;
    OUTLINED_FUNCTION_21_6();
    v21 = (*(v20 + 280))();
    if (v21)
    {
      v22 = v21;
      v47 = sub_1B1ABC174();
      v23 = [v22 bundlePath];
      sub_1B1C2CB58();
      v45 = v24;

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_17_10(v25, v26, v27, v28, v29, v30, v31, v32, v43, v45, v47);
      OUTLINED_FUNCTION_10_3(v33, v34, v35, v36, v37, v38, v39, v40, v44, v46, v48, v49);
      if (v41)
      {
        OUTLINED_FUNCTION_9_14();
      }

      OUTLINED_FUNCTION_20_7();
      sub_1B1C2CEC8();
      v14 = v49;
      ++v0;
    }

    else
    {

      ++v0;
    }
  }

  return v14;
}

void sub_1B1B4A44C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  if (!a3[1])
  {
    v4 = *a3;
  }

  sub_1B1B4A464();
}

void sub_1B1B4A464()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v30 = v5;
  v31 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_1B1C2C988();
  v15 = OUTLINED_FUNCTION_7(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_16_13();
  v32 = sub_1B1C2C9D8();
  v18 = OUTLINED_FUNCTION_7(v32);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_22_5();
  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = v11;
  v23[4] = v30;
  v23[5] = v3;
  v23[6] = v9;
  v23[7] = v7;
  v23[8] = v31;
  v33[4] = sub_1B1B4AF14;
  v33[5] = v23;
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_14(COERCE_DOUBLE(1107296256));
  v33[2] = v24;
  v33[3] = &block_descriptor_15_0;
  v25 = _Block_copy(v33);

  sub_1B1A94514(v7);
  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_3_15();
  sub_1B1A97A14(v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v1, v0, v25);
  _Block_release(v25);
  v28 = OUTLINED_FUNCTION_13_13();
  v29(v28);
  (*(v20 + 8))(v1, v32);

  OUTLINED_FUNCTION_26_1();
}

void sub_1B1B4A6D0(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  v14 = MEMORY[0x1E69E6158];
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v14;
  *(inited + 72) = 7;
  v15 = qword_1EB761310;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB761318;
  *(inited + 104) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *(inited + 80) = v16;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1A97A14(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty);
  v17 = v16;
  v18 = sub_1B1C2CAB8();
  type metadata accessor for TTSAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v20 = qword_1ED9A9968;
  *(v19 + 32) = qword_1ED9A9968;
  v21 = v20;
  v22 = static TTSAsset.bestAsset(ofTypes:matching:)(v19, v18);

  if (v22)
  {
    if ([v22 locallyAvailable])
    {
      if (qword_1ED9A9288 != -1)
      {
        swift_once();
      }

      v23 = sub_1B1C2C8A8();
      __swift_project_value_buffer(v23, qword_1ED9A9120);

      v24 = sub_1B1C2C888();
      v25 = sub_1B1C2D0D8();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1B1A930E4(a1, a2, &aBlock);
        _os_log_impl(&dword_1B1A8A000, v24, v25, "Resource asset is locally available: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B2739FD0](v27, -1, -1);
        MEMORY[0x1B2739FD0](v26, -1, -1);
      }

      (a3)(0);
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = a6;
      *(v30 + 24) = a7;
      v39 = sub_1B1B4B178;
      v40 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B203B8;
      v38 = &block_descriptor_27;
      v31 = _Block_copy(&aBlock);
      sub_1B1A94514(a6);

      v32 = swift_allocObject();
      v32[2] = a3;
      v32[3] = a4;
      v32[4] = a1;
      v32[5] = a2;
      v39 = sub_1B1B4B104;
      v40 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1B1B20428;
      v38 = &block_descriptor_33;
      v33 = _Block_copy(&aBlock);

      [v22 downloadWithOptions:a5 progress:v31 then:v33];
      _Block_release(v33);
      _Block_release(v31);
    }
  }

  else
  {
    sub_1B1C2D538();

    MEMORY[0x1B27381B0](a1, a2);
    sub_1B1A9EC9C();
    v28 = swift_allocError();
    *v29 = 1;
    *(v29 + 8) = 0xD00000000000001CLL;
    *(v29 + 16) = 0x80000001B1C4DD20;
    a3();
  }
}

void sub_1B1B4AC10(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    (a2)(0);
  }

  else
  {
    sub_1B1C2D538();

    MEMORY[0x1B27381B0](a4, a5);
    sub_1B1A9EC9C();
    v8 = swift_allocError();
    *v9 = 1;
    *(v9 + 8) = 0xD00000000000001DLL;
    *(v9 + 16) = 0x80000001B1C4DD40;
    a2();
  }
}

void sub_1B1B4AD18(uint64_t a1)
{
  sub_1B1A93378(a1, aBlock);
  type metadata accessor for TTSAsset();
  if (swift_dynamicCast())
  {
    v1 = aBlock[6];
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B1B20428;
    aBlock[3] = &block_descriptor_18_0;
    v2 = _Block_copy(aBlock);
    [v1 cancelDownloadingThen:v2];
    _Block_release(v2);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v3, qword_1ED9A9120);
    v1 = sub_1B1C2C888();
    v4 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B1A8A000, v1, v4, "Unable to cancel download of non-TTSAssetUAFAsset asset", v5, 2u);
      MEMORY[0x1B2739FD0](v5, -1, -1);
    }
  }
}

uint64_t sub_1B1B4B114(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 24);
    return v3(result / a2);
  }

  return result;
}

uint64_t ObjectPool.__allocating_init()()
{
  v0 = swift_allocObject();
  ObjectPool.init()();
  return v0;
}

uint64_t sub_1B1B4B1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getMetatypeMetadata();
  v8 = sub_1B1A93280();
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a1;
  v11[4] = a2;
  swift_beginAccess();

  v12 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + 16);
  sub_1B1B37680(sub_1B1B4B304, v11, v8, v10, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v15;

  return swift_endAccess();
}

uint64_t sub_1B1B4B2C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return a1();
}

id sub_1B1B4B3E4()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) assetType];
  if (result)
  {
    v2 = result;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    sub_1B1C2CB58();

    return sub_1B1AAFB2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4B51C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  v2 = OUTLINED_FUNCTION_29_3();
  if (!v2)
  {
    __break(1u);
    goto LABEL_79;
  }

  v3 = v2;
  v4 = sub_1B1C2CA98();

  v27[0] = 0x325665707954;
  v27[1] = 0xE600000000000000;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(&v30, v4);

  if (v29)
  {
    sub_1B1B08B44(&v30);
    sub_1B1A9EEE0(&v28, &v32);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_29_3();
    if (!v5)
    {
      __break(1u);
      goto LABEL_81;
    }

    v6 = v5;
    sub_1B1B08B44(&v30);
    v7 = sub_1B1C2CA98();

    sub_1B1C2D4B8();
    sub_1B1B29EE8(v27, v7);

    sub_1B1B08B44(v27);
    if (v29)
    {
      sub_1B1A90C78(&v28, &qword_1EB761DE0, &qword_1B1C352C0);
    }
  }

  if (!v33)
  {
    sub_1B1A90C78(&v32, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_16;
  }

  if (!swift_dynamicCast())
  {
LABEL_16:
    v11 = sub_1B1B4B3E4();
    if (qword_1ED9A98D0 != -1)
    {
      OUTLINED_FUNCTION_23_0();
    }

    v12 = qword_1ED9A98D8;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v13 = v12;
    v14 = sub_1B1C2D248();

    if (v14)
    {

LABEL_20:
      if (qword_1ED9A97B8 != -1)
      {
        swift_once();
      }

      v15 = &qword_1ED9A97C0;
      goto LABEL_32;
    }

    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v16 = qword_1ED9A98B0;
    v17 = sub_1B1C2D248();

    if ((v17 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v9 = v30;
  v8 = v31;
  v10 = v30 == 0x657A696C61636F76 && v31 == 0xE900000000000072;
  if (v10 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

LABEL_29:
    if (qword_1ED9A9890 != -1)
    {
      swift_once();
    }

    v15 = &qword_1ED9A9818;
    goto LABEL_32;
  }

  v20 = v9 == 0x6D6F74737563 && v8 == 0xE600000000000000;
  if (v20 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    goto LABEL_20;
  }

  v21 = v9 == 0x6E6F6870797267 && v8 == 0xE700000000000000;
  if (v21 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A97A8 != -1)
    {
      swift_once();
    }

    v15 = &qword_1ED9A9898;
    goto LABEL_32;
  }

  v22 = v9 == 0x6C617275656ELL && v8 == 0xE600000000000000;
  if (v22 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v15 = &qword_1ED9A9828;
    goto LABEL_32;
  }

  v23 = v9 == 0x58416C617275656ELL && v8 == 0xE800000000000000;
  if (v23 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A9698 == -1)
    {
LABEL_63:
      v15 = &qword_1ED9A9710;
      goto LABEL_32;
    }

LABEL_79:
    swift_once();
    goto LABEL_63;
  }

  v24 = v9 == 0x6C61727574616ELL && v8 == 0xE700000000000000;
  if (v24 || (OUTLINED_FUNCTION_8_6() & 1) != 0)
  {

    if (qword_1ED9A8D90 == -1)
    {
LABEL_70:
      v15 = &qword_1ED9A8D98;
      goto LABEL_32;
    }

LABEL_81:
    swift_once();
    goto LABEL_70;
  }

  if (v9 != 0x6C61746E6963616DLL || v8 != 0xE90000000000006BLL)
  {
    v26 = OUTLINED_FUNCTION_8_6();

    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_16;
  }

LABEL_26:
  if (qword_1ED9A5280 != -1)
  {
    swift_once();
  }

  v15 = &qword_1ED9A5288;
LABEL_32:
  v18 = *v15;

  return v18;
}

uint64_t sub_1B1B4BAE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627D8, &qword_1B1C38C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C36280;
  *(inited + 32) = 2019912769;
  *(inited + 40) = 0xE400000000000000;
  if (qword_1ED9A9100 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED9A90A8;
  *(inited + 48) = 1;
  *(inited + 56) = v1;
  *(inited + 64) = 0x6169726F74636956;
  *(inited + 72) = 0xE800000000000000;
  v2 = qword_1ED9A97D8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A9830;
  *(inited + 80) = 2;
  *(inited + 88) = v4;
  v5 = v4;
  result = sub_1B1C2CAB8();
  qword_1EB772E78 = result;
  return result;
}

id sub_1B1B4BC54()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_52;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  OUTLINED_FUNCTION_33_3();
  v51 = v5;
  v6 = OUTLINED_FUNCTION_22_6();
  v14 = OUTLINED_FUNCTION_8_15(v6, v7, v8, v9, v10, v11, v12, v13, v48, v51, 0xE900000000000074, v57[0]);
  sub_1B1B29EE8(v14, v4);

  v15 = sub_1B1B08B44(v57);
  if (!v59)
  {
    sub_1B1A90C78(v58, &qword_1EB761DE0, &qword_1B1C352C0);
LABEL_13:
    result = [v1 attributes];
    if (result)
    {
      v24 = result;
      v25 = sub_1B1C2CA98();

      OUTLINED_FUNCTION_14_11();
      v26 = OUTLINED_FUNCTION_22_6();
      v34 = OUTLINED_FUNCTION_8_15(v26, v27, v28, v29, v30, v31, v32, v33, v49, v52, v55, v57[0]);
      sub_1B1B29EE8(v34, v25);

      v35 = sub_1B1B08B44(v57);
      if (v59)
      {
        OUTLINED_FUNCTION_16_14(v35, v36, v37, MEMORY[0x1E69E6158], v38, v39, v40, v41, v50, v53);
        if (swift_dynamicCast())
        {
          if (qword_1EB761618 != -1)
          {
            OUTLINED_FUNCTION_10_15();
          }

          sub_1B1B2A000(v54, v56, qword_1EB772E78);
          v43 = v42;

          if (v43)
          {
            return v43;
          }
        }
      }

      else
      {
        sub_1B1A90C78(v58, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      goto LABEL_21;
    }

LABEL_52:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_14(v15, v16, v17, MEMORY[0x1E69E6158], v18, v19, v20, v21, v49, v52);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v22 = v52 == 0x746361706D6F63 && v55 == 0xE700000000000000;
  if (!v22 && (OUTLINED_FUNCTION_21_7() & 1) == 0)
  {
    v44 = v52 == 0x6D75696D657270 && v55 == 0xE700000000000000;
    if (v44 || (OUTLINED_FUNCTION_21_7() & 1) != 0)
    {

LABEL_21:
      if (qword_1ED9A9100 != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v23 = qword_1ED9A90A8;
      goto LABEL_24;
    }

    v45 = v52 == 0x686D75696D657270 && v55 == 0xEB00000000686769;
    if (v45 || (OUTLINED_FUNCTION_21_7() & 1) != 0)
    {

      if (qword_1ED9A9628 != -1)
      {
        OUTLINED_FUNCTION_14_0();
      }

      v23 = qword_1ED9A9598;
      goto LABEL_24;
    }

    if (v52 == 1635018082 && v55 == 0xE400000000000000)
    {

LABEL_48:
      if (qword_1EB7615E0 != -1)
      {
        swift_once();
      }

      v23 = qword_1EB7625D8;
      goto LABEL_24;
    }

    v47 = OUTLINED_FUNCTION_21_7();

    if (v47)
    {
      goto LABEL_48;
    }

    goto LABEL_13;
  }

  if (qword_1ED9A97D8 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v23 = qword_1ED9A9830;
LABEL_24:

  return v23;
}

uint64_t sub_1B1B4C028()
{
  result = sub_1B1C2CAB8();
  qword_1EB772E80 = result;
  return result;
}

id sub_1B1B4C080()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (result)
  {
    v3 = result;
    v4 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_14_11();
    v5 = OUTLINED_FUNCTION_22_6();
    v13 = OUTLINED_FUNCTION_8_15(v5, v6, v7, v8, v9, v10, v11, v12, v38, v40, v43, v46[0]);
    sub_1B1B29EE8(v13, v4);

    sub_1B1B08B44(v46);
    if (v48)
    {
      if (OUTLINED_FUNCTION_5_16())
      {
        v46[0] = v41;
        v46[1] = v44;
        sub_1B1A8EDAC();
        v14 = sub_1B1C2D378();
        v15 = sub_1B1B4DC6C();
        if (v15[2])
        {
          v16 = v15[4];
          v17 = v15[5];

          OUTLINED_FUNCTION_33();
          sub_1B1C2CBE8();
          sub_1B1C2CBE8();

          v18 = sub_1B1C2CDA8();

          if (v18)
          {

            v14 = v41;
          }
        }

        else
        {
        }

        v36 = OUTLINED_FUNCTION_33();
        v35 = sub_1B1AC8BF0(v36, v37, v14);

        goto LABEL_19;
      }
    }

    else
    {
      sub_1B1A90C78(v47, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    result = [v1 attributes];
    if (result)
    {
      v19 = result;
      v20 = sub_1B1C2CA98();

      OUTLINED_FUNCTION_3_16();
      v21 = OUTLINED_FUNCTION_22_6();
      v29 = OUTLINED_FUNCTION_8_15(v21, v22, v23, v24, v25, v26, v27, v28, v39, v41, v44, v46[0]);
      sub_1B1B29EE8(v29, v20);

      sub_1B1B08B44(v46);
      if (v48)
      {
        if (OUTLINED_FUNCTION_5_16())
        {
          if (qword_1EB761620 != -1)
          {
            OUTLINED_FUNCTION_17_11();
          }

          v30 = sub_1B1B29F98(v42, v45, qword_1EB772E80);
          v32 = v31;

          if (v32)
          {
            v33 = OUTLINED_FUNCTION_33();
            v35 = sub_1B1AC8BF0(v33, v34, v30);
LABEL_19:

            return v35;
          }
        }
      }

      else
      {
        sub_1B1A90C78(v47, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1B4C3B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v2 attributes];
  if (result)
  {
    v4 = result;
    v5 = sub_1B1C2CA98();

    v6 = MEMORY[0x1E69E6158];
    sub_1B1C2D4B8();
    sub_1B1B29EE8(&v107, v5);

    sub_1B1B08B44(&v107);
    if (v113)
    {
      v7 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v8 = sub_1B1B4B3E4();
        if (qword_1ED9A98B8 != -1)
        {
          OUTLINED_FUNCTION_13_14();
        }

        v9 = qword_1ED9A98C0;
        sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
        v10 = v9;
        v11 = sub_1B1C2D248();

        if ((v11 & 1) == 0)
        {
          v107 = 0x64496563696F56;
          v108 = 0xE700000000000000;
          strcpy(v112, "speech.voice");
          BYTE5(v112[1]) = 0;
          HIWORD(v112[1]) = -5120;
          v36 = sub_1B1A8EDAC();
          OUTLINED_FUNCTION_12_9(v36, v37, v38, v39, v40, v41, v42, v43, v101, v102, v36, v36, v104, 0xD000000000000016, 0x80000001B1C4DDF0, v107, v108, v109, v110, v111, v112[0]);
          OUTLINED_FUNCTION_4();
          v44 = sub_1B1C2D398();
          v46 = v45;

          v112[1] = 0xE900000000000065;
          OUTLINED_FUNCTION_12_9(v47, v48, v49, v50, v51, v52, v53, v54, v7, v36, v36, v36, v105, 0xD000000000000016, 0x80000001B1C4DDF0, v44, v46, v109, v110, v111, 116);
          OUTLINED_FUNCTION_4();
          v29 = sub_1B1C2D398();

          return v29;
        }

        v6 = MEMORY[0x1E69E6158];
      }
    }

    else
    {
      sub_1B1A90C78(v112, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v12 = sub_1B1B4B3E4();
    v13 = qword_1ED9A9978;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1ED9A9980;
    sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
    v16 = v15;
    v17 = sub_1B1C2D248();

    if (v17)
    {
      goto LABEL_15;
    }

    v18 = qword_1ED9A98D0;
    v19 = v14;
    if (v18 != -1)
    {
      OUTLINED_FUNCTION_23_0();
    }

    v17 = qword_1ED9A98D8;
    v20 = sub_1B1C2D248();

    if (v20)
    {
LABEL_15:

      v21 = 0x80000001B1C4B5A0;
      v6 = type metadata accessor for TTSAsset();
      sub_1B1B4C080();
      v22 = sub_1B1C2CBE8();

      sub_1B1B19BF8(v22);
      OUTLINED_FUNCTION_32_5();

      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v24 = qword_1ED9A9830;
      v25 = OUTLINED_FUNCTION_35_7();

      if (v25)
      {
        v26 = 0x746361706D6F632ELL;
      }

      else
      {
        v26 = 0x6D75696D6572702ELL;
      }

      v27 = 0xD00000000000002DLL;
      goto LABEL_21;
    }

    v30 = qword_1ED9A98A8;
    v31 = v19;
    if (v30 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v22 = qword_1ED9A98B0;
    v32 = sub_1B1C2D248();

    if (v32)
    {

      v21 = 0x80000001B1C4B570;
      sub_1B1B4C080();
      OUTLINED_FUNCTION_32_5();
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v33 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
      if (qword_1ED9A97D8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v27 = 0xD000000000000021;
      v34 = qword_1ED9A9830;
      v35 = OUTLINED_FUNCTION_35_7();

      if (v35)
      {
        v26 = 0x746361706D6F632ELL;
      }

      else
      {
        v26 = 0;
      }

      if (v35)
      {
        v28 = 0xE800000000000000;
      }

      else
      {
        v28 = 0xE000000000000000;
      }

      goto LABEL_22;
    }

    v55 = qword_1ED9A9850;
    v56 = v31;
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = qword_1ED9A97E0;
    v58 = sub_1B1C2D248();

    if (v58)
    {
      goto LABEL_42;
    }

    v59 = qword_1ED9A98B8;
    v60 = v56;
    if (v59 != -1)
    {
      OUTLINED_FUNCTION_13_14();
    }

    v61 = qword_1ED9A98C0;
    v62 = sub_1B1C2D248();

    if (v62)
    {
LABEL_42:

      v21 = 0x80000001B1C4B570;
      v63 = sub_1B1B4C080();
      v22 = v64;
      v107 = v63;
      v108 = v64;
      v112[0] = 45;
      v112[1] = 0xE100000000000000;
      v65 = sub_1B1A8EDAC();
      OUTLINED_FUNCTION_12_9(v65, v66, v67, v68, v69, v70, v71, v72, v101, v102, v65, v65, v104, 0, 0xE000000000000000, v107, v108, v109, v110, v111, v112[0]);
      OUTLINED_FUNCTION_4();
      sub_1B1C2D398();

      sub_1B1C2CBE8();
      OUTLINED_FUNCTION_32_5();

      v74 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v73);
      v75 = qword_1ED9A97D8;
      v76 = v74;
      if (v75 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v27 = 0xD000000000000021;
      v77 = qword_1ED9A9830;
      sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
      v78 = v77;
      v79 = sub_1B1C2D248();

      if (v79)
      {
        v26 = 0x746361706D6F632ELL;
      }

      else
      {
        v80 = qword_1ED9A9100;
        v76 = v76;
        if (v80 != -1)
        {
          OUTLINED_FUNCTION_2_0();
        }

        v26 = 0x6D75696D6572702ELL;
        v81 = qword_1ED9A90A8;
        v82 = sub_1B1C2D248();

        if ((v82 & 1) == 0)
        {
          if (qword_1ED9A9628 != -1)
          {
            OUTLINED_FUNCTION_14_0();
          }

          v100 = qword_1ED9A9598;
          sub_1B1C2D248();

          goto LABEL_21;
        }
      }

LABEL_21:
      v28 = 0xE800000000000000;
LABEL_22:
      v107 = v27;
      v108 = v21;

      MEMORY[0x1B27381B0](v22, v6);

      MEMORY[0x1B27381B0](v26, v28);

      return v107;
    }

    v83 = sub_1B1B4B3E4();
    v84 = [v83 string];

    v85 = sub_1B1C2CB58();
    v22 = v86;

    v107 = v85;
    v108 = v22;

    MEMORY[0x1B27381B0](46, 0xE100000000000000);

    v27 = v107;
    v21 = v108;
    v107 = sub_1B1B4C080();
    v108 = v87;
    v112[0] = 45;
    v112[1] = 0xE100000000000000;
    v88 = sub_1B1A8EDAC();
    OUTLINED_FUNCTION_12_9(v88, v89, v90, v91, v92, v93, v94, v95, v101, v102, v88, v88, v104, 0, 0xE000000000000000, v107, v108, v109, v110, v111, v112[0]);
    v103 = v96;
    OUTLINED_FUNCTION_4();
    sub_1B1C2D398();
    OUTLINED_FUNCTION_32_5();

    result = [v2 &selRef:v6 sleepForTimeInterval:v103];
    if (result)
    {
      v97 = result;

      v98 = sub_1B1C2CA98();
      OUTLINED_FUNCTION_33_3();
      v106 = v99;
      sub_1B1C2D4B8();
      sub_1B1B29EE8(&v107, v98);

      sub_1B1B08B44(&v107);
      if (v113)
      {
        if (swift_dynamicCast())
        {
          v107 = 46;
          v108 = 0xE100000000000000;
          MEMORY[0x1B27381B0](v106, 0xE900000000000074);

          v26 = v107;
          v28 = v108;
          goto LABEL_22;
        }
      }

      else
      {
        sub_1B1A90C78(v112, &qword_1EB761DE0, &qword_1B1C352C0);
      }

      v26 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1B4CE58(uint64_t a1, uint64_t a2)
{
  result = [*&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] attributes];
  if (!result)
  {
    goto LABEL_99;
  }

  v6 = result;
  v7 = sub_1B1C2CA98();

  v68[0] = a1;
  v68[1] = a2;

  v8 = MEMORY[0x1E69E6158];
  v9 = sub_1B1C2D4B8();
  v17 = OUTLINED_FUNCTION_8_15(v9, v10, v11, v12, v13, v14, v15, v16, v61, v62, v64, v66[0]);
  sub_1B1B29EE8(v17, v7);

  sub_1B1B08B44(v66);
  sub_1B1A9D80C(v68, v66);
  if (v67)
  {
    v18 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      v19 = v63;
      if (v63 <= 19999)
      {
        sub_1B1A90C78(v68, &qword_1EB761DE0, &qword_1B1C352C0);
        return v19;
      }

      sub_1B1C2D0C8();
      if (qword_1ED9A99C0 != -1)
      {
        OUTLINED_FUNCTION_0_13();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1B1C364D0;
      v36 = MEMORY[0x1E69E65A8];
      *(v35 + 56) = v18;
      *(v35 + 64) = v36;
      *(v35 + 32) = v63;
      *(v35 + 96) = v8;
      v37 = sub_1B1AC9204();
      *(v35 + 104) = v37;
      *(v35 + 72) = a1;
      *(v35 + 80) = a2;

      v38 = [v2 description];
      v39 = sub_1B1C2CB58();
      v41 = v40;

      *(v35 + 136) = v8;
      *(v35 + 144) = v37;
      *(v35 + 112) = v39;
      *(v35 + 120) = v41;
LABEL_89:
      sub_1B1C2C7C8();
      goto LABEL_90;
    }
  }

  else
  {
    sub_1B1A90C78(v66, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  sub_1B1A9D80C(v68, v66);
  if (!v67)
  {
    OUTLINED_FUNCTION_30();
    sub_1B1A90C78(v29, v30, v31);
    OUTLINED_FUNCTION_30();
LABEL_92:
    sub_1B1A90C78(v32, v33, v34);
    return 0;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_91:
    v33 = &qword_1EB761DE0;
    v34 = &qword_1B1C352C0;
    v32 = v68;
    goto LABEL_92;
  }

  v20 = HIBYTE(v65) & 0xF;
  v21 = v63 & 0xFFFFFFFFFFFFLL;
  if ((v65 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v65) & 0xF;
  }

  else
  {
    v22 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_90:

    goto LABEL_91;
  }

  if ((v65 & 0x1000000000000000) != 0)
  {

    sub_1B1B2EFF0(v63, v65, 10);
    v19 = v52;
    v54 = v53;

    if (v54)
    {
      goto LABEL_90;
    }

LABEL_84:
    if (v19 <= 19999)
    {
      sub_1B1A90C78(v68, &qword_1EB761DE0, &qword_1B1C352C0);

      return v19;
    }

    sub_1B1C2D0C8();
    if (qword_1ED9A99C0 != -1)
    {
      OUTLINED_FUNCTION_0_13();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1B1C364D0;
    *(v55 + 56) = v8;
    v56 = sub_1B1AC9204();
    *(v55 + 32) = v63;
    *(v55 + 40) = v65;
    *(v55 + 96) = v8;
    *(v55 + 104) = v56;
    *(v55 + 64) = v56;
    *(v55 + 72) = a1;
    *(v55 + 80) = a2;

    v57 = [v2 description];
    v58 = sub_1B1C2CB58();
    v60 = v59;

    *(v55 + 136) = v8;
    *(v55 + 144) = v56;
    *(v55 + 112) = v58;
    *(v55 + 120) = v60;
    goto LABEL_89;
  }

  if ((v65 & 0x2000000000000000) != 0)
  {
    v66[0] = v63;
    v66[1] = v65 & 0xFFFFFFFFFFFFFFLL;
    if (v63 == 43)
    {
      if (v20)
      {
        if (v20 != 1)
        {
          OUTLINED_FUNCTION_31_3();
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v25 & v24)
            {
              break;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v25)
            {
              break;
            }

            v19 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            OUTLINED_FUNCTION_16_2();
            if (v25)
            {
              goto LABEL_81;
            }
          }
        }

        goto LABEL_80;
      }

      goto LABEL_98;
    }

    if (v63 != 45)
    {
      if (v20)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v25 & v24)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v25)
          {
            break;
          }

          v19 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v25)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }

    if (v20)
    {
      if (v20 != 1)
      {
        OUTLINED_FUNCTION_31_3();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v25 & v24)
          {
            break;
          }

          OUTLINED_FUNCTION_1_20();
          if (!v25)
          {
            break;
          }

          v19 = v43 - v42;
          if (__OFSUB__(v43, v42))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v25)
          {
            goto LABEL_81;
          }
        }
      }

      goto LABEL_80;
    }
  }

  else
  {
    if ((v63 & 0x1000000000000000) != 0)
    {
      result = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v23 = *result;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        if (v21 != 1)
        {
          v19 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v25 & v24)
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_1_20();
              if (!v25)
              {
                goto LABEL_80;
              }

              v19 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                goto LABEL_80;
              }

              OUTLINED_FUNCTION_16_2();
              if (v25)
              {
                goto LABEL_81;
              }
            }
          }

          goto LABEL_71;
        }

        goto LABEL_80;
      }

      goto LABEL_97;
    }

    if (v23 != 45)
    {
      if (v21)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            v48 = *result - 48;
            if (v48 > 9)
            {
              goto LABEL_80;
            }

            v49 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_80;
            }

            v19 = v49 + v48;
            if (__OFADD__(v49, v48))
            {
              goto LABEL_80;
            }

            ++result;
            if (!--v21)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_71;
      }

LABEL_80:
      v19 = 0;
      v28 = 1;
LABEL_81:
      if (v28)
      {
        goto LABEL_90;
      }

      goto LABEL_84;
    }

    if (v21 >= 1)
    {
      if (v21 != 1)
      {
        v19 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v25 & v24)
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_1_20();
            if (!v25)
            {
              goto LABEL_80;
            }

            v19 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              goto LABEL_80;
            }

            OUTLINED_FUNCTION_16_2();
            if (v25)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_71:
        v28 = 0;
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    __break(1u);
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_1B1B4D498()
{
  v0 = *MEMORY[0x1E69B1848];
  v1 = sub_1B1C2CB58();
  v3 = sub_1B1B4CE58(v1, v2);

  v5 = 100000 * v3;
  if ((v3 * 100000) >> 64 != (100000 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = *MEMORY[0x1E69B1860];
  v7 = sub_1B1C2CB58();
  v9 = sub_1B1B4CE58(v7, v8);

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id sub_1B1B4D544(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t sub_1B1B4D5B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  v5 = *MEMORY[0x1E69B1848];
  v34[0] = sub_1B1C2CB58();
  v34[1] = v6;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v27, v4);

  sub_1B1B08B44(v27);
  result = [v1 attributes];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  v8 = sub_1B1C2CA98();

  v9 = *MEMORY[0x1E69B1860];
  v33[0] = sub_1B1C2CB58();
  v33[1] = v10;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v27, v8);

  sub_1B1B08B44(v27);
  result = [v1 attributes];
  if (result)
  {
    v11 = result;
    v12 = sub_1B1C2CA98();

    v13 = *MEMORY[0x1E69B1840];
    *&v30 = sub_1B1C2CB58();
    *(&v30 + 1) = v14;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v27, v12);

    sub_1B1B08B44(v27);
    if (v31)
    {
      sub_1B1A9EEE0(&v30, v32);
      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      MEMORY[0x1B27381B0](23328, 0xE200000000000000);
      sub_1B1C2D618();
      MEMORY[0x1B27381B0](93, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_0(v32);
    }

    else
    {
      sub_1B1A90C78(&v30, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    sub_1B1A9D80C(v34, v27);
    sub_1B1A9D80C(v33, &v28);
    if (v27[3])
    {
      sub_1B1A9D80C(v27, v32);
      if (v29)
      {
        sub_1B1A9EEE0(v32, &v30);
        sub_1B1A9EEE0(&v28, v26);
        MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
        OUTLINED_FUNCTION_36_5();
        MEMORY[0x1B27381B0](0x20564D202F20, 0xE600000000000000);
        OUTLINED_FUNCTION_36_5();

        v15 = OUTLINED_FUNCTION_72();
        MEMORY[0x1B27381B0](v15);

        v16 = 0;
        __swift_destroy_boxed_opaque_existential_0(v26);
      }

      else
      {
        sub_1B1A9EEE0(v32, &v30);
        *&v26[0] = 0;
        *(&v26[0] + 1) = 0xE000000000000000;
        MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
        sub_1B1C2D618();

        v19 = OUTLINED_FUNCTION_72();
        MEMORY[0x1B27381B0](v19);

        v16 = 0;
      }

      v18 = &v30;
    }

    else
    {
      if (!v29)
      {

        OUTLINED_FUNCTION_30();
        sub_1B1A90C78(v20, v21, v22);
        OUTLINED_FUNCTION_30();
        sub_1B1A90C78(v23, v24, v25);
        sub_1B1A90C78(v27, &qword_1EB7627C0, &qword_1B1C39550);
        return 0x6E776F6E6B6E555BLL;
      }

      sub_1B1A9EEE0(&v28, v32);
      *&v30 = 0;
      *(&v30 + 1) = 0xE000000000000000;
      MEMORY[0x1B27381B0](2119245, 0xE300000000000000);
      sub_1B1C2D618();

      v17 = OUTLINED_FUNCTION_72();
      MEMORY[0x1B27381B0](v17);

      v16 = v30;
      v18 = v32;
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
    sub_1B1A90C78(v33, &qword_1EB761DE0, &qword_1B1C352C0);
    sub_1B1A90C78(v34, &qword_1EB761DE0, &qword_1B1C352C0);
    sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
    return v16;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1B1B4DADC()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_3_16();
    v4 = OUTLINED_FUNCTION_22_6();
    v12 = OUTLINED_FUNCTION_8_15(v4, v5, v6, v7, v8, v9, v10, v11, v20, v22, v25, v27[0]);
    sub_1B1B29EE8(v12, v3);

    v13 = sub_1B1B08B44(v27);
    if (v29)
    {
      OUTLINED_FUNCTION_16_14(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v21, v23);
      if (swift_dynamicCast())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
        result = swift_allocObject();
        *(result + 1) = xmmword_1B1C361C0;
        *(result + 4) = v24;
        *(result + 5) = v26;
        return result;
      }
    }

    else
    {
      sub_1B1A90C78(v28, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4DC6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = [v1 attributes];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  v18 = 0xD000000000000016;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v19, v4);

  sub_1B1B08B44(v19);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (OUTLINED_FUNCTION_26_4())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B1A90C78(v20, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = [v1 attributes];
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = sub_1B1C2CA98();

  v18 = 0x65676175676E614CLL;
  sub_1B1C2D4B8();
  sub_1B1B29EE8(v19, v6);

  sub_1B1B08B44(v19);
  if (!v21)
  {
    sub_1B1A90C78(v20, &qword_1EB761DE0, &qword_1B1C352C0);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if ((OUTLINED_FUNCTION_26_4() & 1) == 0)
  {
LABEL_11:
    v7 = sub_1B1B4DADC();
    goto LABEL_12;
  }

LABEL_9:
  v7 = v18;
LABEL_12:
  v8 = v7[2];
  if (v8)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1B1AC9FA8();
    v9 = v17;
    sub_1B1A8EDAC();
    v10 = v7 + 5;
    do
    {
      v11 = *v10;
      v19[0] = *(v10 - 1);
      v19[1] = v11;
      v20[0] = 95;
      v20[1] = 0xE100000000000000;
      OUTLINED_FUNCTION_4();
      v12 = sub_1B1C2D398();
      v14 = v13;
      v15 = *(v17 + 16);
      if (v15 >= *(v17 + 24) >> 1)
      {
        sub_1B1AC9FA8();
      }

      *(v17 + 16) = v15 + 1;
      v16 = v17 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
      v10 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1B1B4DFB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  result = OUTLINED_FUNCTION_29_3();
  if (!result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v3 = result;
  v4 = sub_1B1C2CA98();

  v5 = OUTLINED_FUNCTION_22_6();
  v13 = OUTLINED_FUNCTION_8_15(v5, v6, v7, v8, v9, v10, v11, v12, v46, 0x7265646E6547, 0xE600000000000000, v55[0]);
  sub_1B1B29EE8(v13, v4);

  sub_1B1B08B44(v55);
  if (v57)
  {
    if (OUTLINED_FUNCTION_5_16())
    {
      v14 = v49 == 1701601645 && v52 == 0xE400000000000000;
      if (v14 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 1;
      }

      v43 = v49 == 0x656C616D6566 && v52 == 0xE600000000000000;
      if (v43 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 2;
      }

      if (v49 == 0x6C61727475656ELL && v52 == 0xE700000000000000)
      {

        return 3;
      }

      v45 = OUTLINED_FUNCTION_3();

      if (v45)
      {
        return 3;
      }

      return 0;
    }
  }

  else
  {
    sub_1B1A90C78(v56, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = OUTLINED_FUNCTION_29_3();
  if (!result)
  {
    goto LABEL_44;
  }

  v16 = result;
  v17 = sub_1B1C2CA98();

  OUTLINED_FUNCTION_14_11();
  v18 = OUTLINED_FUNCTION_22_6();
  v26 = OUTLINED_FUNCTION_8_15(v18, v19, v20, v21, v22, v23, v24, v25, v47, v49, v52, v55[0]);
  sub_1B1B29EE8(v26, v17);

  sub_1B1B08B44(v55);
  if (v57)
  {
    if (OUTLINED_FUNCTION_5_16())
    {
      if (qword_1EB761618 != -1)
      {
        OUTLINED_FUNCTION_10_15();
      }

      v15 = sub_1B1B2A000(v50, v53, qword_1EB772E78);
      v28 = v27;

      if (v28)
      {

        return v15;
      }
    }
  }

  else
  {
    sub_1B1A90C78(v56, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  result = OUTLINED_FUNCTION_29_3();
  if (result)
  {
    v29 = result;
    v30 = sub_1B1C2CA98();

    OUTLINED_FUNCTION_3_16();
    v31 = OUTLINED_FUNCTION_22_6();
    v39 = OUTLINED_FUNCTION_8_15(v31, v32, v33, v34, v35, v36, v37, v38, v48, v50, v53, v55[0]);
    sub_1B1B29EE8(v39, v30);

    sub_1B1B08B44(v55);
    if (v57)
    {
      if (OUTLINED_FUNCTION_5_16())
      {
        if (qword_1EB761620 != -1)
        {
          OUTLINED_FUNCTION_17_11();
        }

        sub_1B1B29F98(v51, v54, qword_1EB772E80);
        v41 = v40;
        v15 = v42;

        if (v41)
        {

          return v15;
        }
      }
    }

    else
    {
      sub_1B1A90C78(v56, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    return 0;
  }

LABEL_45:
  __break(1u);
  return result;
}

id sub_1B1B4E3A0()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v6[0] = 6645569;
    v6[1] = 0xE300000000000000;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v5, v3);

    sub_1B1B08B44(v5);
    if (v6[3])
    {
      sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_27_6())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B1A90C78(v6, &qword_1EB761DE0, &qword_1B1C352C0);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1B4E530()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (!v1 || (v2 = v1, v3 = sub_1B1C2CA98(), v2, v4 = sub_1B1B4E600(v3), , !v4))
  {
    v4 = sub_1B1C2CAB8();
  }

  v5 = sub_1B1AE0B90(v4);

  return v5;
}

unint64_t sub_1B1B4E600(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627C8, &unk_1B1C40E70);
    v2 = sub_1B1C2D6A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1B1B37DE8(*(a1 + 48) + 40 * v10, __src);
    sub_1B1A93378(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B1B37DE8(__dst, v21);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1B1A93378(&__dst[40], v22);
    sub_1B1A90C78(__dst, &qword_1EB7627D0, &qword_1B1C38C50);
    v23 = v20;
    sub_1B1A9EEE0(v22, v24);
    v11 = v23;
    sub_1B1A9EEE0(v24, v25);
    sub_1B1A9EEE0(v25, &v23);
    result = sub_1B1A8EB10();
    v12 = result;
    if (v13)
    {
      v14 = v2[6] + 16 * result;
      v15 = *(v14 + 8);
      *v14 = v11;

      v16 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = sub_1B1A9EEE0(&v23, v16);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v11;
      result = sub_1B1A9EEE0(&v23, (v2[7] + 32 * result));
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  sub_1B1A90C78(__dst, &qword_1EB7627D0, &qword_1B1C38C50);

  return 0;
}

id sub_1B1B4E8FC()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v4 = *MEMORY[0x1E69B1850];
    v8[0] = sub_1B1C2CB58();
    v8[1] = v5;
    sub_1B1C2D4B8();
    sub_1B1B29EE8(v7, v3);

    sub_1B1B08B44(v7);
    if (v8[3])
    {
      sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      if (OUTLINED_FUNCTION_27_6())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B1A90C78(v8, &qword_1EB761DE0, &qword_1B1C352C0);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4EA60()
{
  result = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) attributes];
  if (result)
  {
    v2 = result;
    v3 = sub_1B1C2CA98();

    v4 = *MEMORY[0x1E69B1868];
    v26 = sub_1B1C2CB58();
    v29 = v5;
    v6 = OUTLINED_FUNCTION_22_6();
    v14 = OUTLINED_FUNCTION_8_15(v6, v7, v8, v9, v10, v11, v12, v13, v24, v26, v29, v30[0]);
    sub_1B1B29EE8(v14, v3);

    sub_1B1B08B44(v30);
    if (v32)
    {
      v15 = sub_1B1A8E474(0, &qword_1ED9A94B0, 0x1E696AD98);
      OUTLINED_FUNCTION_16_14(v15, v16, v17, v15, v18, v19, v20, v21, v25, v27);
      if (swift_dynamicCast())
      {
        return v28;
      }
    }

    else
    {
      sub_1B1A90C78(v31, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v22 = TTSAsset.effectiveDiskSize.getter();
    if (v23)
    {
      return 0;
    }

    else
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B1B4EBF0()
{
  v1 = sub_1B1C2C1C8();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v2);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  sub_1B1C2C168();

  (*(v4 + 32))(v14, v12, v1);
  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  (*(v4 + 16))(v9, v14, v1);
  v17 = sub_1B1AB30DC(v9);
  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_72();
  v20(v19);
  return v17;
}

void sub_1B1B4EEC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69B1948]) init];
  [v10 setDiscretionary_];
  [v10 setRequiresPowerPluggedIn_];
  v11 = *&v5[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v23 = sub_1B1B500F8;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B1B20428;
  v22 = &block_descriptor_15;
  v13 = _Block_copy(&aBlock);
  sub_1B1A94514(a2);

  [v11 attachProgressCallBack_];
  _Block_release(v13);
  OUTLINED_FUNCTION_66();
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = a4;
  v14[4] = a5;
  v23 = sub_1B1B50100;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1B1B4B398;
  v22 = &block_descriptor_6_2;
  v15 = _Block_copy(&aBlock);
  v16 = v10;
  v17 = v5;
  sub_1B1A94514(a4);

  [v11 startDownload:v16 then:v15];
  _Block_release(v15);

  [v11 refreshState];
}

void sub_1B1B4F0EC(void *a1, void (*a2)(id, id, double))
{
  if (a1 && a2)
  {
    v4 = a1;
    [v4 expectedTimeRemaining];
    a2([v4 totalWritten], objc_msgSend(v4, sel_totalExpected), v3);
  }
}

id sub_1B1B4F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(a2 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  [v6 attachProgressCallBack_];
  result = [v6 refreshState];
  if (a1)
  {
    if (!a3)
    {
      return result;
    }

    v8 = 0;
  }

  else
  {
    type metadata accessor for TTSAsset();
    result = sub_1B1B7693C();
    if (!a3)
    {
      return result;
    }

    v8 = a2;
  }

  return a3(v8);
}

void sub_1B1B4F370(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  OUTLINED_FUNCTION_66();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_1_13();
  v9[1] = 1107296256;
  v9[2] = sub_1B1B4F4B4;
  v9[3] = &block_descriptor_12_0;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v5 cancelDownload_];
  _Block_release(v7);
}

uint64_t sub_1B1B4F44C(uint64_t a1, char *a2, uint64_t (*a3)(char *))
{
  [*&a2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset] refreshState];
  if ([a2 locallyAvailable])
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return a3(v5);
}

uint64_t sub_1B1B4F4BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B1B4F5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset);
  [v1 purgeSync];
  [v1 refreshState];
  type metadata accessor for TTSAsset();
  return sub_1B1B7693C();
}

void sub_1B1B4F648(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset];
  OUTLINED_FUNCTION_66();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  OUTLINED_FUNCTION_1_13();
  v10[1] = 1107296256;
  v10[2] = sub_1B1B4B374;
  v10[3] = &block_descriptor_18_1;
  v7 = _Block_copy(v10);
  v8 = v2;
  v9 = OUTLINED_FUNCTION_33();
  sub_1B1A94514(v9);

  [v5 purge_];
  _Block_release(v7);
}

void sub_1B1B4F724(void *a1, uint64_t a2, void (*a3)(void *))
{
  [*(a2 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) refreshState];
  type metadata accessor for TTSAsset();
  sub_1B1B7693C();
  if (a3)
  {
    if (a1)
    {
      sub_1B1C2D538();
      MEMORY[0x1B27381B0](0xD000000000000019, 0x80000001B1C49540);
      type metadata accessor for MAPurgeResult(0);
      sub_1B1C2D618();
      sub_1B1A9EC9C();
      a1 = swift_allocError();
      *v5 = 1;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0xE000000000000000;
    }

    a3(a1);
  }
}

id TTSAssetMAAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1B4FA54()
{
  v66[3] = *MEMORY[0x1E69E9840];
  v63 = sub_1B1C2C0A8();
  v1 = OUTLINED_FUNCTION_7(v63);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v62 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1C2C1C8();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v65 = v50 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v61 = v50 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v50 - v21;
  v23 = [*(v0 + OBJC_IVAR____TtC14SiriTTSService15TTSAssetMAAsset_asset) getLocalFileUrl];
  if (!v23)
  {
    goto LABEL_13;
  }

  sub_1B1C2C168();

  v24 = *(v10 + 32);
  v25 = OUTLINED_FUNCTION_33();
  v26(v25);
  v27 = [objc_opt_self() defaultManager];
  v28 = sub_1B1C2C118();
  v66[0] = 0;
  v29 = [v27 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:0 error:v66];

  v30 = v66[0];
  if (!v29)
  {
    v43 = v66[0];
    v44 = sub_1B1C2C058();

    swift_willThrow();
    (*(v10 + 8))(v22, v7);
LABEL_12:
    v23 = 0;
    goto LABEL_13;
  }

  v60 = v7;
  v31 = sub_1B1C2CE78();
  v32 = v30;

  v59 = *(v31 + 16);
  if (!v59)
  {

    v40 = *(v10 + 8);
    v34 = v60;
LABEL_11:
    v40(v22, v34);
    goto LABEL_12;
  }

  v50[0] = v15;
  v51 = v22;
  v33 = 0;
  v56 = v31 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v58 = v10 + 16;
  v55 = *MEMORY[0x1E6968F58];
  v57 = v10;
  v53 = (v3 + 8);
  v54 = (v3 + 104);
  v50[1] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34 = v60;
  v35 = v61;
  v52 = v31;
  v36 = v63;
  while (1)
  {
    if (v33 >= *(v31 + 16))
    {
      __break(1u);
    }

    v37 = v57;
    v38 = v56 + *(v57 + 72) * v33;
    v64 = *(v57 + 16);
    v64(v35, v38, v34);
    v66[0] = 0x746361706D6F63;
    v66[1] = 0xE700000000000000;
    v39 = v62;
    (*v54)(v62, v55, v36);
    sub_1B1A8EDAC();
    sub_1B1C2C1B8();
    v40 = *(v37 + 8);
    v40(v35, v34);
    (*v53)(v39, v36);
    v41 = sub_1B1C2C148();
    v42 = v64;
    v31 = v52;
    if (v41)
    {
      break;
    }

    ++v33;
    v34 = v60;
    v40(v65, v60);
    if (v59 == v33)
    {

      v22 = v51;
      goto LABEL_11;
    }
  }

  sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
  v47 = v50[0];
  v48 = v65;
  v49 = v60;
  v42(v50[0], v65, v60);
  v23 = sub_1B1AB30DC(v47);
  v40(v48, v49);
  v40(v51, v49);
LABEL_13:
  v45 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t (*sub_1B1B4FFC4(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(0);
  }

  return result;
}

id sub_1B1B500C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1B50184(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B1B501C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B1B50210(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B1B50250(uint64_t result, int a2, int a3)
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

uint64_t AudioHandler.__allocating_init(notificationCenter:)(void *a1)
{
  v2 = swift_allocObject();
  AudioHandler.init(notificationCenter:)(a1);
  return v2;
}

void AudioHandler.audioPower.getter(int32x2_t *a1@<X8>)
{
  os_unfair_lock_lock(v1 + 8);
  sub_1B1B50350(&v1[10], a1);

  os_unfair_lock_unlock(v1 + 8);
}

int32x2_t sub_1B1B50350@<D0>(uint64_t a1@<X0>, int32x2_t *a2@<X8>)
{
  sub_1B1B50850(a1, &v6, &unk_1EB762990, &unk_1B1C352D0);
  if (v7)
  {
    sub_1B1A8D0E0(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1B1A90C78(&v6, &unk_1EB762990, &unk_1B1C352D0);
    result = vdup_n_s32(0xC2F00000);
    *a2 = result;
  }

  return result;
}

float AudioHandler.audioVolume.getter()
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v0 + 80, &v5, &qword_1EB7618F8, &unk_1B1C352E0);
  if (v6)
  {
    sub_1B1A8D0E0(&v5, v7);
    v1 = v8;
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_1B1A90C78(&v5, &qword_1EB7618F8, &unk_1B1C352E0);
    return 1.0;
  }

  return v3;
}

uint64_t AudioHandler.audioVolume.setter(float a1)
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v1 + 80, &v6, &qword_1EB7618F8, &unk_1B1C352E0);
  if (!v7)
  {
    return sub_1B1A90C78(&v6, &qword_1EB7618F8, &unk_1B1C352E0);
  }

  sub_1B1A8D0E0(&v6, v8);
  v3 = v9;
  v4 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
  (*(v4 + 16))(v3, v4, a1);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t (*AudioHandler.audioVolume.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = AudioHandler.audioVolume.getter();
  return sub_1B1B50618;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHandler.adjust(volume:rampTime:)(Swift::Float volume, Swift::Double rampTime)
{
  OUTLINED_FUNCTION_0_20();
  swift_beginAccess();
  sub_1B1B50850(v2 + 80, &v8, &qword_1EB7618F8, &unk_1B1C352E0);
  if (v9)
  {
    sub_1B1A8D0E0(&v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 32))(v5, v6, volume, rampTime);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    sub_1B1A90C78(&v8, &qword_1EB7618F8, &unk_1B1C352E0);
    sub_1B1A9EC9C();
    swift_allocError();
    *v7 = 14;
    *(v7 + 8) = 0xD00000000000002ALL;
    *(v7 + 16) = 0x80000001B1C4DF60;
    swift_willThrow();
  }
}

uint64_t (*sub_1B1B507B4(uint64_t a1))(float *a1)
{
  *a1 = *v1;
  *(a1 + 8) = AudioHandler.audioVolume.getter();
  return sub_1B1B50618;
}

uint64_t sub_1B1B50850(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OpusEncodingAction.__allocating_init(pool:)()
{
  *(swift_allocObject() + 32) = 0;
  v0 = _s14SiriTTSService17PassThroughActionCACycfc_0();

  return v0;
}

uint64_t OpusEncodingAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B1B5093C@<X0>(uint64_t *a1@<X8>)
{
  result = OpusEncodingAction.__allocating_init(pool:)();
  *a1 = result;
  return result;
}

id sub_1B1B509C8()
{
  if (!*v0)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  v3 = *v0;
  v4 = sub_1B1C2CB28();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v12, v11);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v12);

      return v10;
    }

    else
    {
      v8 = sub_1B1C2CB28();
      v6 = [v3 integerForKey_];

      __swift_destroy_boxed_opaque_existential_0(v12);
    }
  }

  else
  {

    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
  }

  return v6;
}

uint64_t sub_1B1B50B04()
{
  if (*v0)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = *v0;
    v4 = sub_1B1C2CB28();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v13, v12);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v13);

        return v11;
      }

      else
      {
        v8 = sub_1B1C2CB28();
        [v3 floatForKey_];
        v10 = v9;

        __swift_destroy_boxed_opaque_existential_0(v13);
        *&result = v10;
      }
    }

    else
    {

      result = *(v0 + 24);
      v7 = *(v0 + 32);
    }
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void InternalSettings.Default.wrappedValue.getter(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_1B1C2D2B8();
  OUTLINED_FUNCTION_35_1();
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v61 - v15;
  OUTLINED_FUNCTION_35_1();
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v27 = &v61 - v26;
  v28 = *v2;
  if (*v2)
  {
    v62 = v25;
    v63 = a1;
    v65 = a2;
    v66 = v24;
    v64 = v23;
    v30 = v2[1];
    v29 = v2[2];
    v31 = v28;
    v32 = sub_1B1C2CB28();
    v33 = [v31 objectForKey_];

    if (!v33)
    {

      v46 = *(v63 + 32);
      v47 = *(v66 + 16);
      OUTLINED_FUNCTION_26_1();

      __asm { BRAA            X3, X16 }
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A9EEE0(v67, v68);
    sub_1B1A93378(v68, v67);
    if (swift_dynamicCast())
    {

      OUTLINED_FUNCTION_57_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
      __swift_destroy_boxed_opaque_existential_0(v68);
      v38 = *(v62 + 32);
      v38(v27, v16, v5);
      v39 = v65;
      v40 = v27;
    }

    else
    {
      OUTLINED_FUNCTION_57_2();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      v54 = *(v66 + 8);
      v55 = v16;
      v56 = v64;
      v54(v55, v64);
      sub_1B1B518BC(v31, v2, v5, v14);

      __swift_destroy_boxed_opaque_existential_0(v68);
      (*(v66 + 32))(v11, v14, v56);
      if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
      {
        v54(v11, v56);
        (*(v66 + 16))(v65, v2 + *(v63 + 32), v56);
LABEL_15:
        OUTLINED_FUNCTION_26_1();
        return;
      }

      v38 = *(v62 + 32);
      v38(v22, v11, v5);
      v39 = v65;
      v40 = v22;
    }

    v38(v39, v40, v5);
    OUTLINED_FUNCTION_57_2();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_26_1();

  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
}

void sub_1B1B51048(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for InternalSettings.Default();
  InternalSettings.Default.wrappedValue.getter(v5, a3);
}

void sub_1B1B51084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = sub_1B1C2D2B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  v11 = type metadata accessor for InternalSettings.Default();
  InternalSettings.Default.wrappedValue.setter(v9, v11);
}

void sub_1B1B51164(char a1)
{
  v2 = *v1;
  if (a1 == 2)
  {
    if (v2)
    {
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      v9 = sub_1B1C2CB28();
      [v2 removeObjectForKey_];
    }
  }

  else if (v2)
  {
    v5 = sub_1B1C2D7F8();
    v6 = *(v1 + 8);
    v7 = *(v1 + 16);
    v8 = sub_1B1C2CB28();
    [v2 setObject:v5 forKey:v8];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B5123C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *v2;
    if (*v2)
    {

      v4 = sub_1B1C2D7F8();
      v5 = *(v2 + 8);
      v6 = *(v2 + 16);
      v7 = sub_1B1C2CB28();
      [v3 setObject:v4 forKey:v7];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v8 = *v2;
    if (*v2)
    {
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      v11 = sub_1B1C2CB28();
      [v8 removeObjectForKey_];
    }
  }
}

void sub_1B1B5134C(uint64_t a1)
{
  v2 = *v1;
  if ((a1 & 0x100000000) != 0)
  {
    if (v2)
    {
      v7 = *(v1 + 8);
      v8 = *(v1 + 16);
      v9 = sub_1B1C2CB28();
      [v2 removeObjectForKey_];
    }
  }

  else if (v2)
  {
    v3 = sub_1B1C2D7F8();
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v6 = sub_1B1C2CB28();
    [v2 setObject:v3 forKey:v6];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B5141C(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      v10 = sub_1B1C2CB28();
      [v3 removeObjectForKey_];
    }
  }

  else if (v3)
  {
    v6 = sub_1B1C2D7F8();
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    v9 = sub_1B1C2CB28();
    [v3 setObject:v6 forKey:v9];
    swift_unknownObjectRelease();
  }
}

void sub_1B1B514E8(uint64_t a1, char a2)
{
  v3 = *v2;
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      v10 = sub_1B1C2CB28();
      [v3 removeObjectForKey_];
    }
  }

  else if (v3)
  {
    v6 = sub_1B1C2D7F8();
    v7 = *(v2 + 8);
    v8 = *(v2 + 16);
    v9 = sub_1B1C2CB28();
    [v3 setObject:v6 forKey:v9];
    swift_unknownObjectRelease();
  }
}

void InternalSettings.Default.wrappedValue.setter(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B1C2D2B8();
  OUTLINED_FUNCTION_35_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  OUTLINED_FUNCTION_35_1();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v12, a1, v5);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {
    v20 = *(v7 + 8);
    v20(v12, v5);
    v21 = *v2;
    if (*v2)
    {
      v22 = *(v2 + 8);
      v23 = *(v2 + 16);
      v24 = sub_1B1C2CB28();
      [v21 removeObjectForKey_];
    }

    v20(a1, v5);
  }

  else
  {
    (*(v14 + 32))(v19, v12, v4);
    v25 = *v2;
    if (*v2)
    {
      v26 = sub_1B1C2D798();
      v27 = *(v2 + 8);
      v28 = *(v2 + 16);
      v29 = sub_1B1C2CB28();
      [v25 setObject:v26 forKey:v29];
      swift_unknownObjectRelease();
    }

    (*(v7 + 8))(a1, v5);
    (*(v14 + 8))(v19, v4);
  }

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B517F4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_1B1C2CB28();
  v6 = [a1 stringForKey_];

  if (v6)
  {
    sub_1B1C2CB58();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D78, &qword_1B1C38F90);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1B518BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (swift_dynamicCastMetatype())
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = sub_1B1C2CB28();
    [a1 integerForKey_];

LABEL_9:
    v18 = swift_dynamicCast();
    return __swift_storeEnumTagSinglePayload(a4, v18 ^ 1u, 1, a3);
  }

  if (swift_dynamicCastMetatype())
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = sub_1B1C2CB28();
    v14 = [a1 stringForKey_];

    if (v14)
    {
      sub_1B1C2CB58();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761D78, &qword_1B1C38F90);
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = sub_1B1C2CB28();
    [a1 floatForKey_];

    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v20 = *(a2 + 8);
    v21 = *(a2 + 16);
    v22 = sub_1B1C2CB28();
    [a1 BOOLForKey_];

    goto LABEL_9;
  }

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
}

void (*InternalSettings.Default.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v7 = sub_1B1C2D2B8();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v5[5] = v10;
  InternalSettings.Default.wrappedValue.getter(a2, v10);
  return sub_1B1B51C0C;
}

void sub_1B1B51C0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    v8 = *(v5 + 16);
    v9 = OUTLINED_FUNCTION_51();
    v10(v9);
    InternalSettings.Default.wrappedValue.setter(v3, v7);
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_126();
    v13(v12);
  }

  else
  {
    v14 = v2[1];
    InternalSettings.Default.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1B1B51CC4()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[2];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[3];
      v4 = v0[4];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[3];
    v7 = v0[4];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B51D70()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 16);
  *(v1 + 32) = v4;
  v5 = *(v0 + 24);
  *(v1 + 40) = v5;
  v6 = *(v0 + 32);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 40));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B51DE8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 16;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B51EB0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[6];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[7];
      v4 = v0[8];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[7];
    v7 = v0[8];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B51F5C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 48);
  *(v1 + 32) = v4;
  v5 = *(v0 + 56);
  *(v1 + 40) = v5;
  v6 = *(v0 + 64);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 72));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B51FD4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 48;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B5209C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[10];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[11];
      v4 = v0[12];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[11];
    v7 = v0[12];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52148()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 80);
  *(v1 + 32) = v4;
  v5 = *(v0 + 88);
  *(v1 + 40) = v5;
  v6 = *(v0 + 96);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 104));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B521C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 80;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52288()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[14];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[15];
      v4 = v0[16];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[15];
    v7 = v0[16];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52334()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 112);
  *(v1 + 32) = v4;
  v5 = *(v0 + 120);
  *(v1 + 40) = v5;
  v6 = *(v0 + 128);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 136));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B523AC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 112;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52474()
{
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_67();
  if (v0)
  {
    if (!v1[18])
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v2 = v1[19];
    v3 = v1[20];
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v4, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (v1[18])
  {
    v5 = v1[19];
    v6 = v1[20];
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52538()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_67();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(v0[11].n128_u64[0], v0[9], v0[10]);
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B525A0(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B5267C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B526E0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[23];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[24];
      v4 = v0[25];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[24];
    v7 = v0[25];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5278C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 184);
  *(v1 + 32) = v4;
  v5 = *(v0 + 192);
  *(v1 + 40) = v5;
  v6 = *(v0 + 200);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 208));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52804(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 184;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B528CC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B52930()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[27];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[28];
      v4 = v0[29];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[28];
    v7 = v0[29];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B529DC()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 216);
  *(v1 + 32) = v4;
  v5 = *(v0 + 224);
  *(v1 + 40) = v5;
  v6 = *(v0 + 232);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 240));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52A54(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 216;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B52B1C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B52B80()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[31];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[32];
      v4 = v0[33];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[32];
    v7 = v0[33];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52C2C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 248);
  *(v1 + 32) = v4;
  v5 = *(v0 + 256);
  *(v1 + 40) = v5;
  v6 = *(v0 + 264);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 272));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52CA4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 248;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52D6C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[35];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[36];
      v4 = v0[37];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[36];
    v7 = v0[37];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B52E18()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 280);
  *(v1 + 32) = v4;
  v5 = *(v0 + 288);
  *(v1 + 40) = v5;
  v6 = *(v0 + 296);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 304));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B52E90(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 280;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B52F58()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_58_4();
  v27 = *(v0 + 344);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B52FBC()
{
  OUTLINED_FUNCTION_45_5();
  OUTLINED_FUNCTION_67();
  if (v0)
  {
    if (!v1[39])
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v2 = v1[40];
    v3 = v1[41];
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v4, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (v1[39])
  {
    v5 = v1[40];
    v6 = v1[41];
    v4 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v4, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53080()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 344), *(v0 + 312), *(v0 + 328));
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B530E4(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B531C0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1ABCB5C();
  *a2 = v4;
  *(a2 + 4) = v5 & 1;
}

uint64_t sub_1B1B531F4(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v3 = v1[44];
  if ((a1 & 0x100000000) != 0)
  {
    if (v3)
    {
      v7 = v1[45];
      v8 = v1[46];
      v6 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    sub_1B1C2D7F8();
    v4 = v1[45];
    v5 = v1[46];
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5329C()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 352);
  v1[4] = v4;
  v5 = *(v0 + 360);
  v1[5] = v5;
  v6 = *(v0 + 368);
  v1[6] = v6;
  v7 = *(v0 + 380);
  v8 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 376));
  OUTLINED_FUNCTION_23_8(v8);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53320(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v8, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B533F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1ABCD1C();
  *a2 = v4;
  *(a2 + 4) = v5 & 1;
}

uint64_t sub_1B1B53424(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v3 = v1[48];
  if ((a1 & 0x100000000) != 0)
  {
    if (v3)
    {
      v7 = v1[49];
      v8 = v1[50];
      v6 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    sub_1B1C2D7F8();
    v4 = v1[49];
    v5 = v1[50];
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B534CC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 384);
  v1[4] = v4;
  v5 = *(v0 + 392);
  v1[5] = v5;
  v6 = *(v0 + 400);
  v1[6] = v6;
  v7 = *(v0 + 412);
  v8 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 408));
  OUTLINED_FUNCTION_23_8(v8);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53550(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v8, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B53620(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1ABDCD0();
  *a2 = v4;
  *(a2 + 4) = v5 & 1;
}

uint64_t sub_1B1B53654(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v3 = v1[52];
  if ((a1 & 0x100000000) != 0)
  {
    if (v3)
    {
      v7 = v1[53];
      v8 = v1[54];
      v6 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    sub_1B1C2D7F8();
    v4 = v1[53];
    v5 = v1[54];
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B536FC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 416);
  v1[4] = v4;
  v5 = *(v0 + 424);
  v1[5] = v5;
  v6 = *(v0 + 432);
  v1[6] = v6;
  v7 = *(v0 + 444);
  v8 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 440));
  OUTLINED_FUNCTION_23_8(v8);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53780(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v8, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

uint64_t sub_1B1B53850()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[56];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[57];
      v4 = v0[58];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[57];
    v7 = v0[58];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B538FC()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 448);
  *(v1 + 32) = v4;
  v5 = *(v0 + 456);
  *(v1 + 40) = v5;
  v6 = *(v0 + 464);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 472));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53974(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 448;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B53A3C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 504);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B53AA0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[60];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[61];
      v4 = v0[62];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[61];
    v7 = v0[62];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53B4C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 480);
  *(v1 + 32) = v4;
  v5 = *(v0 + 488);
  *(v1 + 40) = v5;
  v6 = *(v0 + 496);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 504));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53BC4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 480;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B53C8C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1B53CC0();
  *a2 = v4;
  *(a2 + 4) = v5 & 1;
}

void sub_1B1B53CC0()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 520);
  v2 = *(v0 + 528);
  v3 = *(v0 + 536);
  v4 = *(v0 + 540);
  v5 = *(v0 + 512);
  OUTLINED_FUNCTION_56_2();
  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B53D30(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v3 = v1[64];
  if ((a1 & 0x100000000) != 0)
  {
    if (v3)
    {
      v7 = v1[65];
      v8 = v1[66];
      v6 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    sub_1B1C2D7F8();
    v4 = v1[65];
    v5 = v1[66];
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B53DE0()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 512);
  v1[4] = v4;
  v5 = *(v0 + 520);
  v1[5] = v5;
  v6 = *(v0 + 528);
  v1[6] = v6;
  v7 = *(v0 + 540);
  v8 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 536));
  OUTLINED_FUNCTION_23_8(v8);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B53E64(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v8, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B53F34(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1B1B53FAC();
  *a2 = v4;
  *(a2 + 4) = v5 & 1;
}

void sub_1B1B53FAC()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 552);
  v2 = *(v0 + 560);
  v3 = *(v0 + 568);
  v4 = *(v0 + 572);
  v5 = *(v0 + 544);
  OUTLINED_FUNCTION_56_2();
  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B5401C(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v3 = v1[68];
  if ((a1 & 0x100000000) != 0)
  {
    if (v3)
    {
      v7 = v1[69];
      v8 = v1[70];
      v6 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v6, sel_removeObjectForKey_);
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    sub_1B1C2D7F8();
    v4 = v1[69];
    v5 = v1[70];
    v6 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v6, sel_setObject_forKey_);
    swift_unknownObjectRelease();
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B540CC()
{
  v2 = OUTLINED_FUNCTION_49_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 544);
  v1[4] = v4;
  v5 = *(v0 + 552);
  v1[5] = v5;
  v6 = *(v0 + 560);
  v1[6] = v6;
  v7 = *(v0 + 572);
  v8 = OUTLINED_FUNCTION_40_3(v4, v5, v6, *(v0 + 568));
  OUTLINED_FUNCTION_23_8(v8);
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54150(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_4_17();
    sub_1B1B5134C(v4);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_50_2();
  if (v5)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    v6 = v3[5];
    v7 = v3[6];
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v8, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22_7();
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v8 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v8, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v3);
}

void sub_1B1B54220()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 576);
  v3 = *(v0 + 584);
  v4 = *(v0 + 592);
  v5 = *(v0 + 600);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54288()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[72];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[73];
      v4 = v0[74];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[73];
    v7 = v0[74];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5433C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 576);
  *(v1 + 32) = v4;
  v5 = *(v0 + 584);
  *(v1 + 40) = v5;
  v6 = *(v0 + 592);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 600));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B543B4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 576;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B5447C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[76];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[77];
      v4 = v0[78];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[77];
    v7 = v0[78];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54530()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 608);
  *(v1 + 32) = v4;
  v5 = *(v0 + 616);
  *(v1 + 40) = v5;
  v6 = *(v0 + 624);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 632));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B545A8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 608;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B54670()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[80];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[81];
      v4 = v0[82];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[81];
    v7 = v0[82];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54724()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 640);
  *(v1 + 32) = v4;
  v5 = *(v0 + 648);
  *(v1 + 40) = v5;
  v6 = *(v0 + 656);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 664));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5479C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 640;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B54864()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[84];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[85];
      v4 = v0[86];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[85];
    v7 = v0[86];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54918()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 672);
  *(v1 + 32) = v4;
  v5 = *(v0 + 680);
  *(v1 + 40) = v5;
  v6 = *(v0 + 688);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 696));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54990(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 672;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B54A58()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 704);
  v3 = *(v0 + 712);
  v4 = *(v0 + 720);
  v5 = *(v0 + 728);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54AC0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[88];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[89];
      v4 = v0[90];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[89];
    v7 = v0[90];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54B74()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 704);
  *(v1 + 32) = v4;
  v5 = *(v0 + 712);
  *(v1 + 40) = v5;
  v6 = *(v0 + 720);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 728));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54BEC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 704;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

_OWORD *sub_1B1B54CE8()
{
  v1 = OUTLINED_FUNCTION_65();
  v2 = *(v0 + 752);
  v27[0] = *(v0 + 736);
  v27[1] = v2;
  v28 = *(v0 + 768);
  OUTLINED_FUNCTION_6_15(v1, v3, v4, v5, v6, v7, v8, v9, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
  v10 = sub_1B1B50B04();
  OUTLINED_FUNCTION_5_17(v10, v11, v12, v13, v14, v15, v16, v17);
  return v27;
}

uint64_t sub_1B1B54D58(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_0();
  v4 = v2[92];
  if (a2)
  {
    if (v4)
    {
      v5 = v2[93];
      v6 = v2[94];
      v7 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v7, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v4)
  {
    sub_1B1C2D7F8();
    v8 = v2[93];
    v9 = v2[94];
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B54E0C(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_67();
  v4 = *(v1 + 736);
  v5 = *(v1 + 752);
  *(v3 + 32) = *(v1 + 768);
  *v3 = v4;
  *(v3 + 1) = v5;
  v3[8] = sub_1B1B50B04();
  *(v3 + 72) = v6 & 1;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B54E94(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[11] + 736;
    sub_1B1B5141C(v2[8], *(v2 + 72));
    goto LABEL_9;
  }

  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  if (v2[9])
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v7, sel_removeObjectForKey_);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_9;
    }

    v2[10] = v2[8];
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_51();
    v7 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v7, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_9:
  swift_endAccess();

  free(v2);
}

void sub_1B1B54F70()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 776);
  v3 = *(v0 + 784);
  v4 = *(v0 + 792);
  v5 = *(v0 + 800);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B54FD8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[97];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[98];
      v4 = v0[99];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[98];
    v7 = v0[99];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5508C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 776);
  *(v1 + 32) = v4;
  v5 = *(v0 + 784);
  *(v1 + 40) = v5;
  v6 = *(v0 + 792);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 800));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55104(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 776;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B551CC()
{
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_58_4();
  v27 = *(v0 + 840);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1B55230()
{
  OUTLINED_FUNCTION_45_5();
  v2 = v1 + 101;
  OUTLINED_FUNCTION_26_5();
  if (v0)
  {
    if (!*v2)
    {

      return swift_endAccess();
    }

    OUTLINED_FUNCTION_53_3();
    sub_1B1C2D7F8();
    v3 = v1[102];
    v4 = v1[103];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_29_4(v5, sel_setObject_forKey_);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*v2)
  {
    v6 = v1[102];
    v7 = v1[103];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
  }

  return swift_endAccess();
}

uint64_t sub_1B1B552F8()
{
  v2 = OUTLINED_FUNCTION_43_5();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_8_16(v3);
  OUTLINED_FUNCTION_34_4();
  *(v1 + 64) = OUTLINED_FUNCTION_32_6(*(v0 + 840), *(v0 + 808), *(v0 + 824));
  *(v1 + 72) = v4;
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5535C(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_31_4();
    v5 = OUTLINED_FUNCTION_51();
    sub_1B1B5123C(v5, v6);
    v7 = v4[9];
LABEL_6:

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_15();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_30_6();
      sub_1B1C2D7F8();
      OUTLINED_FUNCTION_126();
      v8 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_28_3(v8, sel_setObject_forKey_);

      swift_unknownObjectRelease();
    }

    goto LABEL_6;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_126();
    v9 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v9, sel_removeObjectForKey_);
  }

LABEL_7:
  swift_endAccess();

  free(v4);
}

void sub_1B1B55438()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 848);
  v3 = *(v0 + 856);
  v4 = *(v0 + 864);
  v5 = *(v0 + 872);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B554A0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[106];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[107];
      v4 = v0[108];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[107];
    v7 = v0[108];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55554()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 848);
  *(v1 + 32) = v4;
  v5 = *(v0 + 856);
  *(v1 + 40) = v5;
  v6 = *(v0 + 864);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 872));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B555CC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 848;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55694()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[110];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[111];
      v4 = v0[112];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[111];
    v7 = v0[112];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55748()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 880);
  *(v1 + 32) = v4;
  v5 = *(v0 + 888);
  *(v1 + 40) = v5;
  v6 = *(v0 + 896);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 904));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B557C0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 880;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55888()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[114];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[115];
      v4 = v0[116];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[115];
    v7 = v0[116];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B5593C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 912);
  *(v1 + 32) = v4;
  v5 = *(v0 + 920);
  *(v1 + 40) = v5;
  v6 = *(v0 + 928);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 936));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B559B4(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 912;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55A7C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[118];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[119];
      v4 = v0[120];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[119];
    v7 = v0[120];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55B30()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 944);
  *(v1 + 32) = v4;
  v5 = *(v0 + 952);
  *(v1 + 40) = v5;
  v6 = *(v0 + 960);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 968));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55BA8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 944;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B55C70()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 976);
  v3 = *(v0 + 984);
  v4 = *(v0 + 992);
  v5 = *(v0 + 1000);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B55CD8()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[122];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[123];
      v4 = v0[124];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[123];
    v7 = v0[124];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55D8C()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 976);
  *(v1 + 32) = v4;
  v5 = *(v0 + 984);
  *(v1 + 40) = v5;
  v6 = *(v0 + 992);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1000));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55E04(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 976;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B55ECC()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[126];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[127];
      v4 = v0[128];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[127];
    v7 = v0[128];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B55F80()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1008);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1016);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1024);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1032));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B55FF8(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1008;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B560C0()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[130];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[131];
      v4 = v0[132];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[131];
    v7 = v0[132];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B56174()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1040);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1048);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1056);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1064));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B561EC(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1040;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

void sub_1B1B562B4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1096);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1B5631C()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[134];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[135];
      v4 = v0[136];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[135];
    v7 = v0[136];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B563D0()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1072);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1080);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1088);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1096));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B56448(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1072;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}

uint64_t sub_1B1B56510()
{
  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_0();
  v2 = v0[138];
  if (v1 == 2)
  {
    if (v2)
    {
      v3 = v0[139];
      v4 = v0[140];
      v5 = sub_1B1C2CB28();
      OUTLINED_FUNCTION_38_4(v5, sel_removeObjectForKey_);
LABEL_6:
    }
  }

  else if (v2)
  {
    OUTLINED_FUNCTION_20_8();
    sub_1B1C2D7F8();
    v6 = v0[139];
    v7 = v0[140];
    v5 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_11_11(v5, sel_setObject_forKey_);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  return swift_endAccess();
}

uint64_t sub_1B1B565C4()
{
  v2 = OUTLINED_FUNCTION_18_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_13_15();
  v4 = *(v0 + 1104);
  *(v1 + 32) = v4;
  v5 = *(v0 + 1112);
  *(v1 + 40) = v5;
  v6 = *(v0 + 1120);
  *(v1 + 48) = v6;
  *(v1 + 56) = sub_1B1A8DCB4(v4, v5, v6, *(v0 + 1128));
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1B5663C(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_3_17(a1);
  if (v4)
  {
    v5 = v1[3] + 1104;
    sub_1B1B51164(v3);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_19_6();
  if (v7)
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    v8 = v1[5];
    v9 = v1[6];
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_37_4(v10, sel_removeObjectForKey_);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_2_22(v6);
    sub_1B1C2D7F8();
    OUTLINED_FUNCTION_7_13();
    v10 = sub_1B1C2CB28();
    OUTLINED_FUNCTION_10_16(v10, sel_setObject_forKey_);
    swift_unknownObjectRelease();
  }

LABEL_10:
  swift_endAccess();

  free(v1);
}