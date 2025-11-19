unint64_t sub_1C73D3000()
{
  result = qword_1EC21B4F0;
  if (!qword_1EC21B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B4F0);
  }

  return result;
}

unint64_t sub_1C73D3054()
{
  result = qword_1EC21B508;
  if (!qword_1EC21B508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B510);
    sub_1C73D31AC(&qword_1EC21B518, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B508);
  }

  return result;
}

uint64_t sub_1C73D3128(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C73D31AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C73D31F4()
{
  result = qword_1EC21B538;
  if (!qword_1EC21B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B530);
    sub_1C73D31AC(&qword_1EC21B540, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B538);
  }

  return result;
}

void Hastings.ClusterAssetElector.sortedAssets(from:assetsByQueryString:clusterID:randomizer:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Hastings.Asset(0);
  v13 = OUTLINED_FUNCTION_18(v12);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v62 = v17 - v16;
  v18 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v19 = OUTLINED_FUNCTION_18(v18);
  v21 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_2();
  v64 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = sub_1C73D7314(v11, v9);
  Hastings.ClusterAssetElector.stochatizedAssets(from:bestSemanticalRankByAsset:randomizer:)(v11, v26, v3);
  v69[0] = v27;
  swift_retain_n();
  sub_1C75504FC();
  sub_1C73D1770(v69, v1);

  v66 = v21;

  v28 = v69[0];
  v29 = *(v1 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_diagnosticReporter);
  if (v29)
  {
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v29 + 16);
    sub_1C6FC9B80();
    *(v29 + 16) = v68;
    swift_endAccess();
  }

  v30 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  sub_1C75504FC();
  v31 = sub_1C754FEEC();
  v32 = sub_1C755117C();

  v33 = os_log_type_enabled(v31, v32);
  v67 = v30;
  v63 = v15;
  if (v33)
  {
    swift_slowAlloc();
    v34 = v28;
    v35 = OUTLINED_FUNCTION_47_10();
    v69[0] = v35;
    *v30 = 136315138;
    *(v30 + 4) = sub_1C6F765A4(v7, v5, v69);
    _os_log_impl(&dword_1C6F5C000, v31, v32, "Sorted Stochatized Assets for cluster %s:", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v28 = v34;
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v36 = *(v28 + 16);
  if (v36)
  {
    OUTLINED_FUNCTION_191();
    v61 = v28;
    v38 = v28 + v37;
    v40 = *(v39 + 72);
    *&v41 = 136315138;
    v65 = v41;
    v60 = v28 + v37;
    v66 = v40;
    do
    {
      OUTLINED_FUNCTION_19_66();
      sub_1C73D968C();
      v42 = sub_1C754FEEC();
      v43 = sub_1C755117C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = OUTLINED_FUNCTION_20_1();
        v69[0] = v45;
        *v44 = v65;
        v46 = Hastings.ClusterAssetElector.StochatizedAsset.description.getter();
        OUTLINED_FUNCTION_8_80();
        v48 = sub_1C73D96E4(v25, v47);
        OUTLINED_FUNCTION_73_21(v48, v49, v69);
        OUTLINED_FUNCTION_2_61();

        *(v44 + 4) = v46;
        _os_log_impl(&dword_1C6F5C000, v42, v43, "%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_109();
        v40 = v66;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_8_80();
        sub_1C73D96E4(v25, v50);
      }

      v38 += v40;
      --v36;
    }

    while (v36);
    v51 = *(v61 + 16);
    v52 = v64;
    if (v51)
    {
      v69[0] = MEMORY[0x1E69E7CC0];
      sub_1C716E298(0, v51, 0);
      v53 = v69[0];
      v54 = v60;
      do
      {
        OUTLINED_FUNCTION_19_66();
        sub_1C73D968C();
        OUTLINED_FUNCTION_0_170();
        sub_1C73D968C();
        OUTLINED_FUNCTION_8_80();
        sub_1C73D96E4(v52, v55);
        v69[0] = v53;
        v57 = *(v53 + 16);
        v56 = *(v53 + 24);
        if (v57 >= v56 >> 1)
        {
          v58 = OUTLINED_FUNCTION_15(v56);
          sub_1C716E298(v58, v57 + 1, 1);
          v53 = v69[0];
        }

        *(v53 + 16) = v57 + 1;
        OUTLINED_FUNCTION_191();
        OUTLINED_FUNCTION_1_126();
        sub_1C73D973C();
        v54 += v40;
        --v51;
      }

      while (v51);
    }
  }

  OUTLINED_FUNCTION_25_0();
}

void sub_1C73D37A4()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_130();
  v59 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v60 = *(sub_1C73D3D6C(v1) + 16);
  if (v60 >= sub_1C754F43C())
  {
    OUTLINED_FUNCTION_55_31();
    v20();
    v21 = sub_1C754FEEC();
    v22 = sub_1C75511BC();
    if (!os_log_type_enabled(v21, v22))
    {

      v44 = OUTLINED_FUNCTION_135();
      v45(v44);
      goto LABEL_16;
    }

    v23 = OUTLINED_FUNCTION_23_1();
    v24 = OUTLINED_FUNCTION_20_1();
    v61 = v24;
    *v23 = 136315394;
    sub_1C754F45C();
    v25 = OUTLINED_FUNCTION_135();
    v26(v25);
    v27 = OUTLINED_FUNCTION_23_14();
    v30 = sub_1C6F765A4(v27, v28, v29);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v60;
    _os_log_impl(&dword_1C6F5C000, v21, v22, "Cluster %s: Using %ld dependency group features as tie-breaker", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_109();
LABEL_13:
    OUTLINED_FUNCTION_109();

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_55_31();
  v58 = v10;
  v10();
  v11 = sub_1C754FEEC();
  v12 = sub_1C75511BC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_23_1();
    v57 = OUTLINED_FUNCTION_20_1();
    v61 = v57;
    *v13 = 136315394;
    v14 = sub_1C754F45C();
    v15 = OUTLINED_FUNCTION_52_29(v4);
    v17 = v16(v15);
    OUTLINED_FUNCTION_73_21(v17, v18, &v61);
    OUTLINED_FUNCTION_2_61();

    *(v13 + 4) = v14;
    *(v13 + 12) = 2048;
    v19 = v60;
    *(v13 + 14) = v60;
    _os_log_impl(&dword_1C6F5C000, v11, v12, "Cluster %s: Not enough (%ld) dependency group features to be used for tie-breaking", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v31 = OUTLINED_FUNCTION_52_29(v4);
    v32(v31);
    v19 = v60;
  }

  sub_1C73D3E54();
  v34 = *(v33 + 16);
  if (v19 >= v34)
  {

    OUTLINED_FUNCTION_55_31();
    v58();
    v21 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    if (!os_log_type_enabled(v21, v46))
    {

      OUTLINED_FUNCTION_63_23();
      v55 = OUTLINED_FUNCTION_135();
      v56(v55);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_20_1();
    v47 = OUTLINED_FUNCTION_47_10();
    v61 = v47;
    *v12 = 136315650;
    sub_1C754F45C();
    OUTLINED_FUNCTION_63_23();
    v48 = OUTLINED_FUNCTION_135();
    v49(v48);
    v50 = OUTLINED_FUNCTION_23_14();
    v53 = sub_1C6F765A4(v50, v51, v52);

    *(v12 + 4) = v53;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v34;
    *(v12 + 22) = 2048;
    *(v12 + 24) = v60;
    _os_log_impl(&dword_1C6F5C000, v21, v46, "Cluster %s: Somehow got only %ld subcluster features, using %ld dependency group features as tie-breaker", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    OUTLINED_FUNCTION_109();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_55_31();
  v58();
  v35 = sub_1C754FEEC();
  v36 = sub_1C75511BC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_23_1();
    v38 = OUTLINED_FUNCTION_20_1();
    v61 = v38;
    *v37 = 136315394;
    sub_1C754F45C();
    OUTLINED_FUNCTION_63_23();
    v39(v59, v2);
    v40 = OUTLINED_FUNCTION_23_14();
    v43 = sub_1C6F765A4(v40, v41, v42);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2048;
    *(v37 + 14) = v34;
    _os_log_impl(&dword_1C6F5C000, v35, v36, "Cluster %s: Using %ld subcluster features as tie-breaker", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    OUTLINED_FUNCTION_63_23();
    v54(v59, v2);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C73D3D6C(uint64_t a1)
{
  v2 = v1;
  v10 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v4 = sub_1C754F46C();

  v5 = MEMORY[0x1E69E7CC8];
  v6 = sub_1C73D0F54(MEMORY[0x1E69E7CC8], v4, v2, &v10);

  v9[2] = &v10;
  v9[3] = v2;
  v9[4] = a1;
  v7 = sub_1C6FD9EEC(v5, sub_1C73DB40C, v9, v6);

  return v7;
}

void sub_1C73D3E54()
{
  OUTLINED_FUNCTION_33();
  v104 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  OUTLINED_FUNCTION_3_0();
  v106 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v103[3] = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_130();
  v105 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_108_0(v103 - v11);
  v103[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_108_0(v13);
  v117 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  *&v111 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v113 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v19 = OUTLINED_FUNCTION_76(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_2();
  v115 = v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v103 - v22);
  v116 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_2();
  v112 = v27;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  v114 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_102_4();
  v31 = sub_1C754F43C();
  type metadata accessor for Random();
  swift_allocObject();
  v32 = Random.init(randomSeed:)(42);
  v120 = 0;
  type metadata accessor for KMeans();
  swift_initStackObject();
  v108 = KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(v31, sub_1C7085560, 0, v32, &v120, 0.000001);
  v107 = v4;
  v103[4] = v3;
  v33 = v25;
  v34 = sub_1C754F46C();
  v35 = 0;
  v36 = *(v34 + 16);
  v110 = MEMORY[0x1E69E7CC0];
  v109 = v25;
  while (1)
  {
    if (v36 == v35)
    {

      v49 = v110;
      v50 = *(v110 + 16);
      v51 = v117;
      if (v50)
      {
        v35 = *(v116 + 32);
        OUTLINED_FUNCTION_191();
        v53 = v49 + v52;
        v54 = *(v33 + 72);
        v116 = v111 + 32;
        v112 = v111 + 8;
        v55 = MEMORY[0x1E69E7CC0];
        v56 = &unk_1EC219230;
        v111 = xmmword_1C755BAB0;
        v58 = v114;
        v57 = v115;
        do
        {
          OUTLINED_FUNCTION_0_170();
          sub_1C73D968C();
          sub_1C6FD7F70();
          if (__swift_getEnumTagSinglePayload(v57, 1, v51) == 1)
          {
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v58, v59);
          }

          else
          {
            v60 = v56;
            (*v116)(v113, v57, v51);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0);
            v61 = swift_allocObject();
            *(v61 + 16) = v111;
            sub_1C754DE3C();
            *&v62 = v62;
            *(v61 + 32) = LODWORD(v62);
            v63 = OUTLINED_FUNCTION_66_2();
            v64(v63);
            OUTLINED_FUNCTION_3_107();
            sub_1C73D96E4(v58, v65);
            v66 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_99();
              sub_1C6FB2DBC();
              v66 = v69;
            }

            v68 = *(v66 + 16);
            v67 = *(v66 + 24);
            v55 = v66;
            if (v68 >= v67 >> 1)
            {
              OUTLINED_FUNCTION_15(v67);
              sub_1C6FB2DBC();
              v55 = v70;
            }

            *(v55 + 16) = v68 + 1;
            *(v55 + 8 * v68 + 32) = v61;
            v58 = v114;
            v57 = v115;
            v56 = v60;
          }

          v53 += v54;
          --v50;
        }

        while (v50);
        v49 = v110;
        v71 = *(v110 + 16);
      }

      else
      {
        v71 = 0;
        v55 = MEMORY[0x1E69E7CC0];
      }

      v72 = v107;
      v73 = v106;
      v74 = v105;
      if (v71 == *(v55 + 16))
      {
        v35 = 0;
        (*(*v108 + 192))(v55);

        v92 = v108;
        OUTLINED_FUNCTION_0_53();
        swift_beginAccess();
        v93 = *(v92 + 64);
        if (v93)
        {
          v118 = MEMORY[0x1E69E7CC8];
          v94 = *(v93 + 16);
          sub_1C75504FC();
          v95 = 0;
          v23 = v103[1];
          while (v94 != v95)
          {
            if (v95 >= *(v93 + 16))
            {
              goto LABEL_44;
            }

            v96 = *(v110 + 16);
            if (v95 == v96)
            {
              break;
            }

            if (v95 >= v96)
            {
              goto LABEL_45;
            }

            *v23 = *(v93 + 8 * v95 + 32);
            OUTLINED_FUNCTION_0_170();
            sub_1C73D968C();
            sub_1C73D5338(&v118);
            sub_1C6FD7FC8(v23, &qword_1EC216A10);
            ++v95;
          }

          goto LABEL_38;
        }

        v97 = v103[0];
        OUTLINED_FUNCTION_39_39();
        v98();
        v76 = OUTLINED_FUNCTION_47_23();
        v99 = sub_1C755119C();
        if (!os_log_type_enabled(v76, v99))
        {

          (*(v73 + 8))(v97, v72);
          goto LABEL_30;
        }

        swift_slowAlloc();
        v79 = OUTLINED_FUNCTION_47_10();
        v118 = v79;
        MEMORY[0] = 136315138;
        sub_1C754F45C();
        OUTLINED_FUNCTION_64_18();
        v101 = v100(v97, v72);
        OUTLINED_FUNCTION_73_21(v101, v102, &v118);
        OUTLINED_FUNCTION_2_61();

        MEMORY[4] = v97;
        v85 = "Cluster %s: No labels from clustering";
        v86 = v99;
        v87 = v76;
        v88 = 0;
        v89 = 12;
      }

      else
      {
        OUTLINED_FUNCTION_39_39();
        v75();

        sub_1C75504FC();
        v76 = OUTLINED_FUNCTION_47_23();
        v77 = sub_1C755119C();
        if (!os_log_type_enabled(v76, v77))
        {

          swift_bridgeObjectRelease_n();
          (*(v73 + 8))(v74, v72);
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_20_1();
        v79 = OUTLINED_FUNCTION_47_10();
        v119 = v79;
        *v35 = 136315650;
        sub_1C754F45C();
        OUTLINED_FUNCTION_64_18();
        v81 = v80(v74, v72);
        OUTLINED_FUNCTION_73_21(v81, v82, &v119);
        OUTLINED_FUNCTION_2_61();

        *(v35 + 4) = v74;
        *(v35 + 12) = 2048;
        v83 = *(v49 + 16);

        *(v35 + 14) = v83;

        *(v35 + 22) = 2048;
        v84 = *(v55 + 16);

        *(v35 + 24) = v84;

        v85 = "Cluster %s: assetsForClustering has inexplicably not the same number of items (%ld) as pointsForClustering %ld";
        v86 = v77;
        v87 = v76;
        v88 = v35;
        v89 = 32;
      }

      _os_log_impl(&dword_1C6F5C000, v87, v86, v85, v88, v89);
      __swift_destroy_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

LABEL_30:
      type metadata accessor for Hastings.Feature();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8);
      OUTLINED_FUNCTION_17_74();
      sub_1C73D31AC(v90, v91);
      sub_1C75504DC();

LABEL_38:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    if (v35 >= *(v34 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_0_170();
    sub_1C73D968C();
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v23, 1, v117) == 1)
    {
      OUTLINED_FUNCTION_3_107();
      sub_1C73D96E4(v1, v37);
      sub_1C6FD7FC8(v23, &unk_1EC219230);
      ++v35;
    }

    else
    {
      sub_1C6FD7FC8(v23, &unk_1EC219230);
      OUTLINED_FUNCTION_1_126();
      sub_1C73D973C();
      v38 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = OUTLINED_FUNCTION_99();
        sub_1C716E298(v40, v41, v42);
        v33 = v109;
        v38 = v119;
      }

      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v46 = OUTLINED_FUNCTION_15(v43);
        v48 = v47;
        sub_1C716E298(v46, v47, 1);
        v45 = v48;
        v33 = v109;
        v38 = v119;
      }

      ++v35;
      *(v38 + 16) = v45;
      v110 = v38;
      OUTLINED_FUNCTION_1_126();
      sub_1C73D973C();
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);

  sub_1C6FD7FC8(v23, &qword_1EC216A10);

  __break(1u);
}

uint64_t sub_1C73D4B94(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42[2] = a4;
  v50 = a1;
  v6 = type metadata accessor for Hastings.Asset(0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0;
  v10 = a2[1];
  v53 = *a2;
  v45 = a3;
  v46 = a2;
  v51 = v10;
  v11 = *(a3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_curationOptions + 40);
  v12 = *(v11 + 16);
  v47 = v11;
  v48 = v12;
  v43 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_anchorAssetUUIDs;
  for (i = (v11 + 48); ; i += 3)
  {
    if (v48 == v9)
    {
      return sub_1C6F6E5B4(v8);
    }

    if (v9 >= *(v47 + 16))
    {
      break;
    }

    v14 = *i;
    if (!*(*i + 16))
    {
      return sub_1C6F6E5B4(v8);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v15 = sub_1C6F78124(v53, v51);
    if ((v16 & 1) == 0)
    {

      return sub_1C6F6E5B4(v8);
    }

    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    sub_1C75504FC();

    sub_1C73D968C();
    sub_1C6F6E5B4(v8);
    v20 = v50;
    swift_isUniquelyReferenced_nonNull_native();
    v52 = *v20;
    v21 = v52;
    v22 = sub_1C6F78124(v19, v18);
    if (__OFADD__(v21[2], (v23 & 1) == 0))
    {
      goto LABEL_23;
    }

    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6F0);
    v26 = sub_1C7551A2C();
    v27 = v52;
    if (v26)
    {
      v28 = sub_1C6F78124(v19, v18);
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_25;
      }

      v24 = v28;
    }

    *v50 = v27;
    if ((v25 & 1) == 0)
    {
      v27[(v24 >> 6) + 8] |= 1 << v24;
      v30 = (v27[6] + 16 * v24);
      *v30 = v19;
      v30[1] = v18;
      *(v27[7] + 8 * v24) = MEMORY[0x1E69E7CC0];
      v31 = v27[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_24;
      }

      v27[2] = v33;
      sub_1C75504FC();
    }

    v34 = v27[7];
    v35 = *(v34 + 8 * v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + 8 * v24) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB2ED4(0, *(v35 + 16) + 1, 1, v35);
      v35 = v39;
      *(v34 + 8 * v24) = v39;
    }

    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1C6FB2ED4(v37 > 1, v38 + 1, 1, v35);
      v35 = v40;
      *(v34 + 8 * v24) = v40;
    }

    *(v35 + 16) = v38 + 1;
    sub_1C73D973C();
    if (sub_1C7009C30(v53, v51, *(v45 + v43)))
    {
      sub_1C70F082C(&v52, v19, v18);
    }

    ++v9;
    v8 = sub_1C6F86C50;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73D4F84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v31 = a5;
  v32 = a4;
  v33 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Hastings.Feature();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = a2[1];
  v15 = *a3;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v16 = sub_1C7009C30(v14, v13, v15);

  if (v16)
  {
    v17 = *(v10 + 24);
    v18 = *MEMORY[0x1E69C1910];
    v19 = sub_1C754F58C();
    (*(*(v19 - 8) + 104))(&v12[v17], v18, v19);
    *v12 = v14;
    *(v12 + 1) = v13;
    v12[16] = 5;
    v20 = v33;
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *v20;
    sub_1C6FC8748();
    *v20 = v35;
    sub_1C73D96E4(v12, type metadata accessor for Hastings.Feature);
  }

  else
  {
    v33 = v14;

    (*(v34 + 16))(v9, v31, v7);
    sub_1C75504FC();
    v21 = sub_1C754FEEC();
    v22 = sub_1C75511BC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315394;
      v25 = sub_1C754F45C();
      v27 = v26;
      (*(v34 + 8))(v9, v7);
      v28 = sub_1C6F765A4(v25, v27, &v35);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = sub_1C6F765A4(v33, v13, &v35);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Cluster%s: group %s doesn't have any anchor asset, not usable as feature", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v24, -1, -1);
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v9, v7);
    }
  }
}

uint64_t sub_1C73D5338(uint64_t *a1)
{
  v37 = a1;
  v1 = type metadata accessor for Hastings.Feature();
  MEMORY[0x1EEE9AC00](v1);
  v35 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v34 - v7);
  v9 = type metadata accessor for Hastings.Asset(0);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v34 - v11;
  sub_1C6FD7F70();
  v13 = *v8;
  sub_1C73D973C();
  v38 = 0x7473756C63627553;
  v39 = 0xEB00000000207265;
  v40 = v13;
  v14 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v14);

  v15 = v38;
  v16 = v39;
  v34[1] = v1;
  v17 = *(v1 + 24);
  v18 = v37;
  v19 = *MEMORY[0x1E69C1910];
  v20 = sub_1C754F58C();
  (*(*(v20 - 8) + 104))(&v5[v17], v19, v20);
  *v5 = v15;
  *(v5 + 1) = v16;
  v5[16] = 5;
  sub_1C73D968C();
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *v18;
  v21 = v38;
  v22 = sub_1C6FC27A8();
  if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v24 = v22;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151F8);
  v26 = sub_1C7551A2C();
  v27 = v38;
  if (v26)
  {
    v28 = sub_1C6FC27A8();
    if ((v25 & 1) == (v29 & 1))
    {
      v24 = v28;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  *v18 = v27;
  if ((v25 & 1) == 0)
  {
    v30 = v35;
    sub_1C73D968C();
    sub_1C6FC70CC(v24, v30, MEMORY[0x1E69E7CC0], v27);
  }

  v31 = *(v27 + 56) + 8 * v24;
  sub_1C6FB0AA8();
  v32 = *(*v31 + 16);
  sub_1C6FB12F4();
  sub_1C73D96E4(v5, type metadata accessor for Hastings.Feature);
  sub_1C73D96E4(v12, type metadata accessor for Hastings.Asset);
  *(*v31 + 16) = v32 + 1;
  return sub_1C73D973C();
}

uint64_t sub_1C73D5774(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E657065646E69 && a2 == 0xEB00000000746E65;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E65646E65706564 && a2 == 0xE900000000000074)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C73D588C(char a1)
{
  if (!a1)
  {
    return 0x726F68636E61;
  }

  if (a1 == 1)
  {
    return 0x646E657065646E69;
  }

  return 0x6E65646E65706564;
}

uint64_t sub_1C73D58EC(uint64_t a1)
{
  v2 = sub_1C73D9890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5928(uint64_t a1)
{
  v2 = sub_1C73D9890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D5774(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D5994(uint64_t a1)
{
  v2 = sub_1C73D9794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D59D0(uint64_t a1)
{
  v2 = sub_1C73D9794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D5A0C(uint64_t a1)
{
  v2 = sub_1C73D97E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5A48(uint64_t a1)
{
  v2 = sub_1C73D97E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D5A84(uint64_t a1)
{
  v2 = sub_1C73D983C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5AC0(uint64_t a1)
{
  v2 = sub_1C73D983C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.DependencyType.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B550);
  OUTLINED_FUNCTION_3_0();
  v30 = v6;
  v31 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B558);
  OUTLINED_FUNCTION_3_0();
  v27 = v10;
  v28 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B560);
  OUTLINED_FUNCTION_3_0();
  v24 = v14;
  v25 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B568);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_34();
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73D9794();
  OUTLINED_FUNCTION_70_20();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C73D983C();
      v2 = v26;
      OUTLINED_FUNCTION_4_59();
      v22 = v27;
      v21 = v28;
    }

    else
    {
      sub_1C73D97E8();
      v2 = v29;
      OUTLINED_FUNCTION_4_59();
      v22 = v30;
      v21 = v31;
    }
  }

  else
  {
    sub_1C73D9890();
    OUTLINED_FUNCTION_4_59();
    v22 = v24;
    v21 = v25;
  }

  (*(v22 + 8))(v2, v21);
  return (*(v18 + 8))(v3, v16);
}

uint64_t sub_1C73D5E1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000021 && 0x80000001C75AE830 == a2;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x80000001C75AE860 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C73D5F34(char a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001ALL;
  }

  return 0x726568746FLL;
}

uint64_t sub_1C73D5F94(uint64_t a1)
{
  v2 = sub_1C73D998C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D5FD0(uint64_t a1)
{
  v2 = sub_1C73D998C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D6014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D5E1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D603C(uint64_t a1)
{
  v2 = sub_1C73D98E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6078(uint64_t a1)
{
  v2 = sub_1C73D98E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D60B4(uint64_t a1)
{
  v2 = sub_1C73D99E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D60F0(uint64_t a1)
{
  v2 = sub_1C73D99E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C73D612C(uint64_t a1)
{
  v2 = sub_1C73D9938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6168(uint64_t a1)
{
  v2 = sub_1C73D9938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B590);
  OUTLINED_FUNCTION_3_0();
  v30 = v6;
  v31 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_36();
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B598);
  OUTLINED_FUNCTION_3_0();
  v27 = v10;
  v28 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_36();
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5A0);
  OUTLINED_FUNCTION_3_0();
  v24 = v14;
  v25 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_61_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5A8);
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_45_34();
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73D98E4();
  OUTLINED_FUNCTION_70_20();
  if (v20)
  {
    if (v20 == 1)
    {
      sub_1C73D998C();
      v2 = v26;
      OUTLINED_FUNCTION_4_59();
      v22 = v27;
      v21 = v28;
    }

    else
    {
      sub_1C73D9938();
      v2 = v29;
      OUTLINED_FUNCTION_4_59();
      v22 = v30;
      v21 = v31;
    }
  }

  else
  {
    sub_1C73D99E0();
    OUTLINED_FUNCTION_4_59();
    v22 = v24;
    v21 = v25;
  }

  (*(v22 + 8))(v2, v21);
  return (*(v18 + 8))(v3, v16);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.dependencyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.personMatching.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

int *Hastings.ClusterAssetElector.StochatizedAsset.init(asset:dependencyType:personMatching:isBadQuality:isExpressive:bestSemanticalRank:stochatizedCurationScore:stochatizedAestheticScore:iconicScoreBucket:isPlayable:hasPromotableLocation:)@<X0>(char *a1@<X1>, char *a2@<X2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, char a11, char a12)
{
  v20 = *a1;
  v21 = *a2;
  OUTLINED_FUNCTION_1_126();
  sub_1C73D973C();
  result = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  *(a8 + result[5]) = v20;
  *(a8 + result[6]) = v21;
  *(a8 + result[7]) = a3;
  *(a8 + result[8]) = a4;
  v23 = a8 + result[9];
  *v23 = a5;
  *(v23 + 8) = a6 & 1;
  *(a8 + result[10]) = a9;
  *(a8 + result[11]) = a10;
  *(a8 + result[12]) = a7;
  *(a8 + result[13]) = a11;
  *(a8 + result[14]) = a12;
  return result;
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.description.getter()
{
  sub_1C755180C();
  sub_1C75504FC();
  v1 = sub_1C7033D84(8);
  v2 = MEMORY[0x1CCA5CC40](v1);
  v4 = v3;

  MEMORY[0x1CCA5CD70](v2, v4);

  MEMORY[0x1CCA5CD70](23328, 0xE200000000000000);
  v5 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  OUTLINED_FUNCTION_71_17();
  OUTLINED_FUNCTION_50_29();
  OUTLINED_FUNCTION_71_17();
  OUTLINED_FUNCTION_50_29();
  if (*(v0 + *(v5 + 28)))
  {
    v6 = 6578530;
  }

  else
  {
    v6 = 1685024615;
  }

  if (*(v0 + *(v5 + 28)))
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v6, v7);

  MEMORY[0x1CCA5CD70](0x6E61526D6573202CLL, 0xEA00000000003D6BLL);
  v8 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v8);

  OUTLINED_FUNCTION_50_29();
  if (*(v0 + *(v5 + 52)))
  {
    v9 = 0x656C626179616C70;
  }

  else
  {
    v9 = 0x79616C7020746F6ELL;
  }

  if (*(v0 + *(v5 + 52)))
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEC000000656C6261;
  }

  MEMORY[0x1CCA5CD70](v9, v10);

  MEMORY[0x1CCA5CD70](0x3D727563202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_69_23();
  MEMORY[0x1CCA5CD70](0x3D736561202CLL, 0xE600000000000000);
  OUTLINED_FUNCTION_69_23();
  MEMORY[0x1CCA5CD70](0x3D6F6369202CLL, 0xE600000000000000);
  v11 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_1C73D69BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65646E65706564 && a2 == 0xEE00657079547963;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x614D6E6F73726570 && a2 == 0xEE00676E69686374;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6175516461427369 && a2 == 0xEC0000007974696CLL;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7365727078457369 && a2 == 0xEC00000065766973;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000012 && 0x80000001C75AE880 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001C75AE8A0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C75AE8C0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001C7595830 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001C75AE8E0 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C7551DBC();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C73D6D28(char a1)
{
  result = 0x7465737361;
  switch(a1)
  {
    case 1:
      result = 0x6E65646E65706564;
      break;
    case 2:
      result = 0x614D6E6F73726570;
      break;
    case 3:
      result = 0x6175516461427369;
      break;
    case 4:
      result = 0x7365727078457369;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x626179616C507369;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73D6EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73D69BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73D6ED0(uint64_t a1)
{
  v2 = sub_1C73D9A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73D6F0C(uint64_t a1)
{
  v2 = sub_1C73D9A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.ClusterAssetElector.StochatizedAsset.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B5D0);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_61_1();
  v6 = OUTLINED_FUNCTION_23_14();
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1C73D9A34();
  OUTLINED_FUNCTION_20_14();
  type metadata accessor for Hastings.Asset(0);
  sub_1C73D31AC(&qword_1EC2168D8, type metadata accessor for Hastings.Asset);
  OUTLINED_FUNCTION_97();
  sub_1C7551D2C();
  if (!v0)
  {
    type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
    sub_1C73D9A88();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D2C();
    sub_1C73D9ADC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CAC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_97();
    sub_1C7551CEC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551D0C();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_10_74();
    sub_1C7551CDC();
  }

  return (*(v4 + 8))(v1, v2);
}

void Hastings.ClusterAssetElector.stochatizedAssets(from:bestSemanticalRankByAsset:randomizer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 24);
  v8 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 32);
  v9 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 40);
  v10 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 48);
  v11 = *(v3 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 56);

  sub_1C75504FC();
  sub_1C73D1050(a1, v3, a2, a3, v11, v7, v8, v9, v10);
}

uint64_t sub_1C73D7314(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  v64 = type metadata accessor for Hastings.Asset(0);
  MEMORY[0x1EEE9AC00](v64);
  v75 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v63 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v63 - v12);
  v15 = *(a1 + 16);
  v68 = v13;
  if (v15)
  {
    v16 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v17 = MEMORY[0x1E69E7CC8];
    v18 = *(v13 + 72);
    v76 = (&v63 - v12);
    while (1)
    {
      v77 = v15;
      sub_1C73D968C();
      v19 = *v14;
      v20 = v14[1];
      sub_1C73D968C();
      swift_isUniquelyReferenced_nonNull_native();
      v78 = v17;
      v21 = sub_1C6F78124(v19, v20);
      if (__OFADD__(*(v17 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38);
      if (sub_1C7551A2C())
      {
        v25 = sub_1C6F78124(v19, v20);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_54;
        }

        v23 = v25;
      }

      v17 = v78;
      if (v24)
      {
        sub_1C7091D14(v10, *(v78 + 56) + v23 * v18);
      }

      else
      {
        *(v78 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v27 = (*(v17 + 48) + 16 * v23);
        *v27 = v19;
        v27[1] = v20;
        sub_1C73D973C();
        v28 = *(v17 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_51;
        }

        *(v17 + 16) = v30;
        sub_1C75504FC();
      }

      v14 = v76;
      sub_1C73D96E4(v76, type metadata accessor for Hastings.Asset);
      v16 += v18;
      v15 = v77 - 1;
      if (v77 == 1)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_14:
    v31 = v74 + 64;
    v32 = 1 << *(v74 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v74 + 64);
    v35 = (v32 + 63) >> 6;
    sub_1C75504FC();
    v36 = 0;
    v73 = MEMORY[0x1E69E7CC8];
    v66 = v31;
    v71 = v35;
    if (v34)
    {
LABEL_17:
      v37 = v36;
LABEL_21:
      v38 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v39 = v38 | (v37 << 6);
      v40 = *(*(v74 + 56) + 8 * v39);
      v42 = v40 + 16;
      v41 = *(v40 + 16);
      v77 = *(*(v74 + 48) + 16 * v39 + 8);
      sub_1C75504FC();
      sub_1C75504FC();
      v43 = 0;
      while (2)
      {
        v44 = (v42 + 24 * v43);
        do
        {
          if (v41 == v43)
          {

            v36 = v37;
            if (!v34)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          if (v43 >= *(v40 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          ++v43;
          v44 += 3;
        }

        while (!*(v17 + 16));
        v76 = v42;
        v45 = *(v44 - 1);
        v46 = *v44;
        sub_1C75504FC();
        sub_1C6F78124(v45, v46);
        if ((v47 & 1) == 0)
        {
LABEL_44:

          v35 = v71;
          v42 = v76;
          continue;
        }

        break;
      }

      v65 = *(v68 + 72);
      sub_1C73D968C();
      sub_1C73D973C();
      sub_1C73D968C();
      v48 = v73;
      v49 = *(v73 + 16);
      v69 = v46;
      if (v49 && (sub_1C6FC292C(), (v51 & 1) != 0))
      {
        v52 = *(*(v48 + 56) + 8 * v50);
      }

      else
      {
        v52 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v52 >= v43)
      {
        v52 = v43;
      }

      v70 = v52;
      swift_isUniquelyReferenced_nonNull_native();
      v78 = v48;
      sub_1C6FC292C();
      if (!__OFADD__(*(v48 + 16), (v54 & 1) == 0))
      {
        v55 = v53;
        LODWORD(v73) = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6F8);
        if (sub_1C7551A2C())
        {
          sub_1C6FC292C();
          v58 = v73;
          v31 = v66;
          if ((v73 & 1) != (v57 & 1))
          {
            goto LABEL_54;
          }

          v55 = v56;
        }

        else
        {
          v31 = v66;
          v58 = v73;
        }

        v59 = v78;
        v73 = v78;
        if (v58)
        {
          *(*(v78 + 56) + 8 * v55) = v70;
        }

        else
        {
          *(v78 + 8 * (v55 >> 6) + 64) |= 1 << v55;
          sub_1C73D968C();
          *(*(v59 + 56) + 8 * v55) = v70;
          v60 = *(v59 + 16);
          v29 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v29)
          {
            goto LABEL_53;
          }

          *(v59 + 16) = v61;
        }

        sub_1C73D96E4(v75, type metadata accessor for Hastings.Asset);
        sub_1C73D96E4(v72, type metadata accessor for Hastings.Asset);
        goto LABEL_44;
      }

      goto LABEL_52;
    }

LABEL_18:
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        return v73;
      }

      v34 = *(v31 + 8 * v37);
      ++v36;
      if (v34)
      {
        goto LABEL_21;
      }
    }

LABEL_49:
    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73D798C(void *a1, void *a2)
{
  type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  v7 = v6[6];
  v8 = *(a1 + v7);
  v3 = *(a1 + v7) == 0;
  v9 = *(a2 + v7);
  if (v3 == (v9 != 0))
  {
    return v3;
  }

  v3 = v8 == 1;
  if (v3 == (v9 != 1))
  {
    return v3;
  }

  v10 = v2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration;
  if (*(v2 + OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_configuration + 19) == 1)
  {
    v11 = v6[12];
    v12 = *(a1 + v11);
    v13 = *(a2 + v11);
    if (v12 != v13)
    {
      return v13 < v12;
    }
  }

  v14 = v6[5];
  v3 = *(a1 + v14) == 0;
  if (v3 == (*(a2 + v14) != 0))
  {
    return v3;
  }

  v15 = v6[7];
  v3 = *(a2 + v15);
  if (*(a1 + v15) != v3)
  {
    return v3;
  }

  v17 = v6[9];
  v16 = v6[10];
  v18 = *(a1 + v16);
  v19 = *(a2 + v16);
  v20 = *(a1 + v17);
  v21 = *(a1 + v17 + 8);
  v22 = a2 + v17;
  v23 = *(a2 + v17);
  v24 = v22[8];
  if (*v10 == 1)
  {
    if (v18 >= 0.75 && v19 < 0.6)
    {
      return 1;
    }

    if (v19 >= 0.75 && v18 < 0.6)
    {
      return 0;
    }
  }

  if (*(v10 + 1) == 1)
  {
    if (v18 >= 0.75 && v19 < 0.75)
    {
      return 1;
    }

    if (v19 >= 0.75 && v18 < 0.75)
    {
      return 0;
    }
  }

  if (((*(v10 + 16) | v21 | v24) & 1) == 0)
  {
    v38 = *(v10 + 8);
    if (v38 >= v20 && v38 < v23)
    {
      return 1;
    }

    if (v38 >= v23 && v38 < v20)
    {
      return 0;
    }
  }

  if (*(v10 + 17) != 1)
  {
    goto LABEL_33;
  }

  if (!((v18 <= 0.5) | v21 & 1) && v24 == 1)
  {
    return 1;
  }

  if (!((v19 <= 0.5) | v24 & 1) && v21 == 1)
  {
    return 0;
  }

LABEL_33:
  if (*(v10 + 18) != 1)
  {
    if (((v21 | v24) & 1) != 0 || v20 == v23)
    {
      goto LABEL_67;
    }

    return v20 < v23;
  }

  if (!v21)
  {
    if (v20 == v23)
    {
      v42 = 1;
    }

    else
    {
      v42 = v24;
    }

    if (v42)
    {
      goto LABEL_67;
    }

    return v20 < v23;
  }

  if (v24)
  {
    v29 = v6[11];
    v30 = *(a1 + v29);
    v31 = *(a2 + v29);
    v32 = type metadata accessor for Hastings.Asset(0);
    v33 = [*(a1 + *(v32 + 52)) aestheticsModel];
    if (v33)
    {
      v34 = v33;
      [v33 aestheticScoreThresholdToBeAestheticallyPrettyGood];
      v36 = v35;
    }

    else
    {
      v36 = 1.0;
    }

    v3 = v36 <= v30;
    v43 = [*(a2 + *(v32 + 52)) aestheticsModel];
    if (v43)
    {
      v44 = v43;
      v45 = v36 <= v30;
      [v43 aestheticScoreThresholdToBeAestheticallyPrettyGood];
      v47 = v46;

      if (((v45 ^ (v47 > v31)) & 1) == 0)
      {
        return v3;
      }
    }

    else if (v31 < 1.0 == v36 <= v30)
    {
      return v3;
    }
  }

LABEL_67:
  if (v18 != v19)
  {
    return v19 < v18;
  }

  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  OUTLINED_FUNCTION_40_41();
  if (!v48)
  {
    return v3;
  }

  v48 = *a1 == *a2 && a1[1] == a2[1];
  if (v48)
  {
    return 0;
  }

  return sub_1C7551DBC();
}

uint64_t Hastings.ClusterAssetElector.deinit()
{
  v1 = OBJC_IVAR____TtCV18PhotosIntelligence8Hastings19ClusterAssetElector_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(&v1[v0]);

  return v0;
}

uint64_t Hastings.ClusterAssetElector.__deallocating_deinit()
{
  Hastings.ClusterAssetElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73D7E68(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1C73D8254(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C73D7FDC(0, v4, 1, a1);
  }
}

uint64_t sub_1C73D7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v25 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v25 - v14);
  v27 = a2;
  if (a3 == a2)
  {
  }

  v17 = *(v13 + 72);
  v18 = *a4 + v17 * (a3 - 1);
  v19 = -v17;
  v20 = a1 - a3;
  v32 = *a4;
  v26 = v17;
  v21 = v32 + v17 * a3;
  while (2)
  {
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    v22 = v18;
    do
    {
      sub_1C73D968C();
      sub_1C73D968C();
      v23 = sub_1C73D798C(v15, v11);
      sub_1C73D96E4(v11, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v15, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      if ((v23 & 1) == 0)
      {
        break;
      }

      if (!v32)
      {

        __break(1u);
        return result;
      }

      sub_1C73D973C();
      swift_arrayInitWithTakeFrontToBack();
      sub_1C73D973C();
      v22 += v19;
      v21 += v19;
    }

    while (!__CFADD__(v20++, 1));
    a3 = v31 + 1;
    v18 = v30 + v26;
    v20 = v29 - 1;
    v21 = v28 + v26;
    if (v31 + 1 != v27)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1C73D8254(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v118 = a1;
  v132 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  v126 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v115 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v134 = (&v115 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v133 = (&v115 - v14);
  v128 = a3;
  v15 = a3[1];
  v135 = a5;
  if (v15 < 1)
  {
    swift_retain_n();
    v17 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v132 = *v118;
    if (!v132)
    {
      goto LABEL_145;
    }

    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v101 = v129;
      v102 = v17 + 16;
      v103 = *(v17 + 2);
      for (i = v17; ; v17 = i)
      {
        if (v103 < 2)
        {
        }

        v104 = *v128;
        if (!*v128)
        {
          goto LABEL_142;
        }

        v105 = &v17[16 * v103];
        v106 = *v105;
        v107 = v102;
        v108 = &v102[16 * v103];
        v109 = *(v108 + 1);
        v110 = *(v126 + 72);
        v111 = v104 + v110 * *v105;
        v112 = v104 + v110 * *v108;
        v133 = (v104 + v110 * v109);
        v134 = v111;

        sub_1C73D8C60(v134, v112, v133, v132);
        if (v101)
        {
          break;
        }

        if (v109 < v106)
        {
          goto LABEL_130;
        }

        if (v103 - 2 >= *v107)
        {
          goto LABEL_131;
        }

        v102 = v107;
        *v105 = v106;
        *(v105 + 1) = v109;
        v113 = *v107 - v103;
        if (*v107 < v103)
        {
          goto LABEL_132;
        }

        v103 = *v107 - 1;
        sub_1C7423CF4(v108 + 16, v113, v108);
        *v107 = v103;
      }
    }

LABEL_139:
    v17 = sub_1C7420830();
    goto LABEL_104;
  }

  v116 = a4;
  swift_retain_n();
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v16 + 1 >= v15)
    {
      v127 = v16 + 1;
    }

    else
    {
      i = v17;
      v18 = *(v126 + 72);
      v19 = *v128 + v18 * (v16 + 1);
      v124 = *v128;
      v20 = v133;
      v127 = v15;
      sub_1C73D968C();
      v21 = v134;
      sub_1C73D968C();
      LODWORD(v125) = sub_1C73D798C(v20, v21);
      sub_1C73D96E4(v21, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v20, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      v22 = v127;
      v117 = v16;
      v23 = v16 + 2;
      v130 = v18;
      v24 = v124 + v18 * (v16 + 2);
      v25 = v16 + 1;
      while (1)
      {
        v26 = v23;
        if (++v25 >= v22)
        {
          break;
        }

        v27 = v133;
        sub_1C73D968C();
        v28 = v134;
        sub_1C73D968C();
        v29 = sub_1C73D798C(v27, v28) & 1;
        sub_1C73D96E4(v28, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        sub_1C73D96E4(v27, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
        v22 = v127;
        v24 += v130;
        v19 += v130;
        v23 = v26 + 1;
        if ((v125 & 1) != v29)
        {
          goto LABEL_10;
        }
      }

      v25 = v22;
LABEL_10:
      v127 = v25;
      v17 = i;
      if ((v125 & 1) == 0)
      {
        goto LABEL_30;
      }

      v16 = v117;
      v30 = v127;
      if (v127 < v117)
      {
        goto LABEL_136;
      }

      if (v117 < v127)
      {
        if (v22 >= v26)
        {
          v31 = v26;
        }

        else
        {
          v31 = v22;
        }

        v32 = v130 * (v31 - 1);
        v33 = v130 * v31;
        v34 = v117 * v130;
        do
        {
          if (v16 != --v30)
          {
            v35 = *v128;
            if (!*v128)
            {
              goto LABEL_143;
            }

            sub_1C73D973C();
            v36 = v34 < v32 || v35 + v34 >= v35 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v32)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C73D973C();
          }

          ++v16;
          v32 -= v130;
          v33 -= v130;
          v34 += v130;
        }

        while (v16 < v30);
        v17 = i;
LABEL_30:
        v16 = v117;
      }
    }

    v37 = v128[1];
    if (v127 < v37)
    {
      if (__OFSUB__(v127, v16))
      {
        goto LABEL_135;
      }

      if (v127 - v16 < v116)
      {
        break;
      }
    }

LABEL_48:
    if (v127 < v16)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v17 = v99;
    }

    v49 = *(v17 + 2);
    v50 = v49 + 1;
    if (v49 >= *(v17 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v17 = v100;
    }

    *(v17 + 2) = v50;
    v51 = v17 + 32;
    v52 = &v17[16 * v49 + 32];
    v53 = v127;
    *v52 = v16;
    *(v52 + 1) = v53;
    v130 = *v118;
    if (!v130)
    {
      goto LABEL_144;
    }

    if (v49)
    {
      v125 = (v17 + 32);
      while (1)
      {
        v54 = v50 - 1;
        v55 = &v51[16 * v50 - 16];
        v56 = &v17[16 * v50];
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v57 = *(v17 + 4);
          v58 = *(v17 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_69:
          if (v60)
          {
            goto LABEL_121;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_129;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v50 < 2)
        {
          goto LABEL_123;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_84:
        if (v75)
        {
          goto LABEL_126;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_128;
        }

        if (v82 < v74)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v54 - 1 >= v50)
        {
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

        v86 = *v128;
        if (!*v128)
        {
          goto LABEL_141;
        }

        v87 = &v51[16 * v54 - 16];
        v88 = *v87;
        v89 = v54;
        v90 = &v51[16 * v54];
        v91 = *(v90 + 1);
        v92 = *(v126 + 72);
        v93 = v86 + v92 * *v87;
        v94 = v86 + v92 * *v90;
        v95 = v86 + v92 * v91;

        v96 = v93;
        v97 = v129;
        sub_1C73D8C60(v96, v94, v95, v130);
        if (v97)
        {
        }

        if (v91 < v88)
        {
          goto LABEL_116;
        }

        v98 = *(v17 + 2);
        if (v89 > v98)
        {
          goto LABEL_117;
        }

        *v87 = v88;
        *(v87 + 1) = v91;
        if (v89 >= v98)
        {
          goto LABEL_118;
        }

        v129 = 0;
        v50 = v98 - 1;
        sub_1C7423CF4(v90 + 16, v98 - 1 - v89, v90);
        *(v17 + 2) = v98 - 1;
        v51 = v125;
        if (v98 <= 2)
        {
          goto LABEL_98;
        }
      }

      v61 = &v51[16 * v50];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_119;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_120;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_122;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_125;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_133;
        }

        if (v59 < v85)
        {
          v54 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v16 = v127;
    v15 = v128[1];
    if (v127 >= v15)
    {
      goto LABEL_102;
    }
  }

  if (__OFADD__(v16, v116))
  {
    goto LABEL_137;
  }

  if (v16 + v116 >= v37)
  {
    v38 = v128[1];
  }

  else
  {
    v38 = v16 + v116;
  }

  if (v38 < v16)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v39 = v127;
  if (v127 == v38)
  {
    goto LABEL_48;
  }

  i = v17;
  v40 = *v128;
  v41 = *(v126 + 72);
  v42 = *v128 + v41 * (v127 - 1);
  v43 = -v41;
  v117 = v16;
  v44 = v16 - v127;
  v130 = v40;
  v119 = v41;
  v120 = v38;
  v45 = v40 + v127 * v41;
LABEL_41:
  v127 = v39;
  v123 = v45;
  v124 = v44;
  v125 = v42;
  while (1)
  {
    v46 = v133;
    sub_1C73D968C();
    v47 = v134;
    sub_1C73D968C();
    v48 = sub_1C73D798C(v46, v47);
    sub_1C73D96E4(v47, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
    sub_1C73D96E4(v46, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
    if ((v48 & 1) == 0)
    {
LABEL_46:
      v39 = v127 + 1;
      v42 = v125 + v119;
      v44 = v124 - 1;
      v45 = v123 + v119;
      if (v127 + 1 == v120)
      {
        v127 = v120;
        v17 = i;
        v16 = v117;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v130)
    {
      break;
    }

    sub_1C73D973C();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C73D973C();
    v42 += v43;
    v45 += v43;
    v36 = __CFADD__(v44++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

void sub_1C73D8C60(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a4;
  v51 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v45 = v4;
  v16 = (a2 - a1) / v12;
  v57 = a1;
  v56 = v54;
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v49 = a1;
    v29 = v54;
    sub_1C741E844(a2, v14 / v12, v54);
    v30 = v29 + v17 * v12;
    v31 = -v12;
    v32 = v30;
    v47 = v31;
LABEL_36:
    v50 = a2 + v31;
    v33 = a3;
    v44 = v32;
    v48 = a2;
    while (1)
    {
      if (v30 <= v54)
      {
        v57 = a2;
        v55 = v32;
        goto LABEL_58;
      }

      if (a2 <= v49)
      {
        break;
      }

      v46 = v32;
      v34 = v33 + v31;
      v35 = v30 + v31;
      v36 = v52;
      sub_1C73D968C();
      v37 = v53;
      sub_1C73D968C();
      v38 = sub_1C73D798C(v36, v37);
      sub_1C73D96E4(v37, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v36, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      if (v38)
      {
        v40 = v33 < v48 || v34 >= v48;
        a3 = v34;
        if (v40)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v46;
          v31 = v47;
        }

        else
        {
          v41 = v46;
          v31 = v47;
          v32 = v46;
          v42 = v50;
          a2 = v50;
          if (v33 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v32 = v41;
          }
        }

        goto LABEL_36;
      }

      if (v33 < v30 || v34 >= v30)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v34;
        v30 = v35;
        v32 = v35;
        v31 = v47;
        a2 = v48;
      }

      else
      {
        v32 = v35;
        v13 = v30 == v33;
        v33 = v34;
        v30 = v35;
        v31 = v47;
        a2 = v48;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v34;
          v30 = v35;
          v32 = v35;
        }
      }
    }

    v57 = a2;
    v55 = v44;
  }

  else
  {
    v18 = v54;
    sub_1C741E844(a1, (a2 - a1) / v12, v54);
    v50 = v18 + v16 * v12;
    v55 = v50;
    for (i = a1; v54 < v50 && a2 < a3; v57 = i)
    {
      v21 = a3;
      v22 = a2;
      v23 = v52;
      sub_1C73D968C();
      v24 = v53;
      sub_1C73D968C();
      v25 = sub_1C73D798C(v23, v24);
      sub_1C73D96E4(v24, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v23, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      if (v25)
      {
        a2 = v22 + v12;
        if (i < v22 || i >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (i != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        v27 = v54 + v12;
        if (i < v54 || i >= v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (i != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = v27;
        v54 = v27;
      }

      i += v12;
    }
  }

LABEL_58:
  sub_1C7420914(&v57, &v56, &v55);
}

uint64_t sub_1C73D9104()
{
  OUTLINED_FUNCTION_58_27();
  *v0 = v1;
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D9134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_29(a1, a2, a3, a4);
  sub_1C75504FC();
  return v4;
}

uint64_t sub_1C73D916C()
{
  OUTLINED_FUNCTION_58_27();
  OUTLINED_FUNCTION_21_56();
  sub_1C73D968C();
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D91A8()
{
  OUTLINED_FUNCTION_58_27();
  OUTLINED_FUNCTION_20_57();
  sub_1C73D968C();
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D9228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_29(a1, a2, a3, a4);
  v6 = v4;
  return v5;
}

uint64_t sub_1C73D925C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_1C75504FC();
  v6 = OUTLINED_FUNCTION_66_2();
  sub_1C6FEB1B0(v6, v7);
  return a2;
}

uint64_t sub_1C73D92AC()
{
  OUTLINED_FUNCTION_58_27();
  *v0 = v1;
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D92DC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0) + 48);
  result = sub_1C6F995F8();
  *(a1 + v2) = result;
  return result;
}

uint64_t sub_1C73D934C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v31[0] = type metadata accessor for Hastings.Feature();
  v38 = *(v31[0] - 8);
  MEMORY[0x1EEE9AC00](v31[0]);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - v12;
  sub_1C6F78034(v36);
  v32 = v36[0];
  v33 = v36[1];
  v34 = v36[2];
  v35 = v37;
  v31[2] = a1;
  sub_1C75504FC();
  v31[1] = a3;

  while (1)
  {
    sub_1C73DB0D0(v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1C7251404();
    }

    v15 = *(v14 + 48);
    sub_1C73D973C();
    v16 = *&v13[v15];
    v17 = *a5;
    v19 = sub_1C6FC27A8();
    v20 = *(v17 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151F8);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7355040(v22, a4 & 1);
      v24 = sub_1C6FC27A8();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_16;
      }

      v19 = v24;
    }

    v26 = *a5;
    if (v23)
    {
      sub_1C73D96E4(v10, type metadata accessor for Hastings.Feature);
      *(*(v26 + 56) + 8 * v19) = v16;

      a4 = 1;
    }

    else
    {
      *(v26 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      sub_1C73D973C();
      *(*(v26 + 56) + 8 * v19) = v16;
      v27 = *(v26 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_15;
      }

      *(v26 + 16) = v29;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C73D968C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C73D96E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73D973C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C73D9794()
{
  result = qword_1EC21B570;
  if (!qword_1EC21B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B570);
  }

  return result;
}

unint64_t sub_1C73D97E8()
{
  result = qword_1EC21B578;
  if (!qword_1EC21B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B578);
  }

  return result;
}

unint64_t sub_1C73D983C()
{
  result = qword_1EC21B580;
  if (!qword_1EC21B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B580);
  }

  return result;
}

unint64_t sub_1C73D9890()
{
  result = qword_1EC21B588;
  if (!qword_1EC21B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B588);
  }

  return result;
}

unint64_t sub_1C73D98E4()
{
  result = qword_1EC21B5B0;
  if (!qword_1EC21B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5B0);
  }

  return result;
}

unint64_t sub_1C73D9938()
{
  result = qword_1EC21B5B8;
  if (!qword_1EC21B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5B8);
  }

  return result;
}

unint64_t sub_1C73D998C()
{
  result = qword_1EC21B5C0;
  if (!qword_1EC21B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5C0);
  }

  return result;
}

unint64_t sub_1C73D99E0()
{
  result = qword_1EC21B5C8;
  if (!qword_1EC21B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5C8);
  }

  return result;
}

unint64_t sub_1C73D9A34()
{
  result = qword_1EC21B5D8;
  if (!qword_1EC21B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5D8);
  }

  return result;
}

unint64_t sub_1C73D9A88()
{
  result = qword_1EC21B5E0;
  if (!qword_1EC21B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5E0);
  }

  return result;
}

unint64_t sub_1C73D9ADC()
{
  result = qword_1EC21B5E8;
  if (!qword_1EC21B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5E8);
  }

  return result;
}

unint64_t sub_1C73D9B34()
{
  result = qword_1EC21B5F0;
  if (!qword_1EC21B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5F0);
  }

  return result;
}

unint64_t sub_1C73D9B8C()
{
  result = qword_1EC21B5F8;
  if (!qword_1EC21B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B5F8);
  }

  return result;
}

uint64_t sub_1C73D9C08()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C73D9D1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[58])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C73D9D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C73D9E68()
{
  type metadata accessor for Hastings.Asset(319);
  if (v0 <= 0x3F)
  {
    sub_1C7028B94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C73DA0A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C73DA188()
{
  result = qword_1EC21B620;
  if (!qword_1EC21B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B620);
  }

  return result;
}

unint64_t sub_1C73DA1E0()
{
  result = qword_1EC21B628;
  if (!qword_1EC21B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B628);
  }

  return result;
}

unint64_t sub_1C73DA238()
{
  result = qword_1EC21B630;
  if (!qword_1EC21B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B630);
  }

  return result;
}

unint64_t sub_1C73DA290()
{
  result = qword_1EC21B638;
  if (!qword_1EC21B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B638);
  }

  return result;
}

unint64_t sub_1C73DA2E8()
{
  result = qword_1EC21B640;
  if (!qword_1EC21B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B640);
  }

  return result;
}

unint64_t sub_1C73DA340()
{
  result = qword_1EC21B648;
  if (!qword_1EC21B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B648);
  }

  return result;
}

unint64_t sub_1C73DA398()
{
  result = qword_1EC21B650;
  if (!qword_1EC21B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B650);
  }

  return result;
}

unint64_t sub_1C73DA3F0()
{
  result = qword_1EC21B658;
  if (!qword_1EC21B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B658);
  }

  return result;
}

unint64_t sub_1C73DA448()
{
  result = qword_1EC21B660;
  if (!qword_1EC21B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B660);
  }

  return result;
}

unint64_t sub_1C73DA4A0()
{
  result = qword_1EC21B668;
  if (!qword_1EC21B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B668);
  }

  return result;
}

unint64_t sub_1C73DA4F8()
{
  result = qword_1EC21B670;
  if (!qword_1EC21B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B670);
  }

  return result;
}

unint64_t sub_1C73DA550()
{
  result = qword_1EC21B678;
  if (!qword_1EC21B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B678);
  }

  return result;
}

unint64_t sub_1C73DA5A8()
{
  result = qword_1EC21B680;
  if (!qword_1EC21B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B680);
  }

  return result;
}

unint64_t sub_1C73DA600()
{
  result = qword_1EC21B688;
  if (!qword_1EC21B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B688);
  }

  return result;
}

unint64_t sub_1C73DA658()
{
  result = qword_1EC21B690;
  if (!qword_1EC21B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B690);
  }

  return result;
}

unint64_t sub_1C73DA6B0()
{
  result = qword_1EC21B698;
  if (!qword_1EC21B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B698);
  }

  return result;
}

unint64_t sub_1C73DA708()
{
  result = qword_1EC21B6A0;
  if (!qword_1EC21B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6A0);
  }

  return result;
}

unint64_t sub_1C73DA760()
{
  result = qword_1EC21B6A8;
  if (!qword_1EC21B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6A8);
  }

  return result;
}

unint64_t sub_1C73DA7B8()
{
  result = qword_1EC21B6B0;
  if (!qword_1EC21B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6B0);
  }

  return result;
}

unint64_t sub_1C73DA810()
{
  result = qword_1EC21B6B8;
  if (!qword_1EC21B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6B8);
  }

  return result;
}

unint64_t sub_1C73DA868()
{
  result = qword_1EC21B6C0;
  if (!qword_1EC21B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6C0);
  }

  return result;
}

unint64_t sub_1C73DA8C0()
{
  result = qword_1EC21B6C8;
  if (!qword_1EC21B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6C8);
  }

  return result;
}

unint64_t sub_1C73DA918()
{
  result = qword_1EC21B6D0;
  if (!qword_1EC21B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6D0);
  }

  return result;
}

unint64_t sub_1C73DA970()
{
  result = qword_1EC21B6D8;
  if (!qword_1EC21B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B6D8);
  }

  return result;
}

void sub_1C73DA9C4()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217038);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_60_22();
  v10 = type metadata accessor for AssetSummaryInfo(v9);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B700);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_41_38();
  if (v16)
  {
    OUTLINED_FUNCTION_51_26();
    v17 = v4;
LABEL_7:
    OUTLINED_FUNCTION_22_61(v17);
    OUTLINED_FUNCTION_21_56();
    sub_1C73D968C();
    *v3 = v7;
    v3[1] = v6;
    sub_1C73D973C();
    v19 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
    sub_1C75504FC();
    v6 = v24;
LABEL_8:
    OUTLINED_FUNCTION_46_32();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v22)
    {
      OUTLINED_FUNCTION_23_47();
      v0(v1);
      OUTLINED_FUNCTION_48_26();
      v3 = 0;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217040);
    __swift_storeEnumTagSinglePayload(v6, v3, 1, v23);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v18 >= ((v15 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v1 = 0;
        goto LABEL_8;
      }

      ++v4;
      if (*(v0 + v18))
      {
        OUTLINED_FUNCTION_51_26();
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DAC08()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217068);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_60_22();
  v9 = type metadata accessor for MomentInformation();
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B708);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_41_38();
  if (v15)
  {
    OUTLINED_FUNCTION_51_26();
    v16 = v4;
LABEL_7:
    OUTLINED_FUNCTION_22_61(v16);
    OUTLINED_FUNCTION_20_57();
    sub_1C73D968C();
    *v3 = v7;
    v3[1] = v6;
    sub_1C73D973C();
    v18 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
    sub_1C75504FC();
    v6 = v23;
LABEL_8:
    OUTLINED_FUNCTION_46_32();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v21)
    {
      OUTLINED_FUNCTION_23_47();
      v0(v1);
      OUTLINED_FUNCTION_48_26();
      v3 = 0;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217070);
    __swift_storeEnumTagSinglePayload(v6, v3, 1, v22);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v17 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v17 >= ((v14 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v1 = 0;
        goto LABEL_8;
      }

      ++v4;
      if (*(v0 + v17))
      {
        OUTLINED_FUNCTION_51_26();
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DAE4C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = type metadata accessor for Hastings.Feature();
  v9 = OUTLINED_FUNCTION_18(v8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A30);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102_4();
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v30[1] = v7;
  v33 = v16;
  if (v18)
  {
    v31 = v3;
    v19 = v17;
LABEL_7:
    v20 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    OUTLINED_FUNCTION_2_120();
    sub_1C73D968C();
    v22 = *(*(v14 + 56) + 8 * v21);
    v23 = *(v4 + 48);
    OUTLINED_FUNCTION_16_61();
    sub_1C73D973C();
    *(v1 + v23) = v22;
    v24 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
    sub_1C75504FC();
    v3 = v31;
LABEL_8:
    *v0 = v14;
    v0[1] = v15;
    v0[2] = v33;
    v0[3] = v17;
    v0[4] = v20;
    v27 = v0[5];
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v28)
    {
      OUTLINED_FUNCTION_23_47();
      v27(v17);
      OUTLINED_FUNCTION_48_26();
      v1 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20);
    __swift_storeEnumTagSinglePayload(v3, v1, 1, v29);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= ((v16 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v20 = 0;
        goto LABEL_8;
      }

      v18 = *(v15 + 8 * v19);
      ++v17;
      if (v18)
      {
        v31 = v3;
        v17 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DB0D0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Hastings.Feature();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v17 = v1[4];
  v28 = v5;
  v32 = v15;
  if (v17)
  {
    v29 = v9;
    v30 = a1;
    v18 = v16;
LABEL_7:
    v19 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    sub_1C73D968C();
    v21 = *(*(v13 + 56) + 8 * v20);
    v22 = *(v3 + 48);
    sub_1C73D973C();
    *&v12[v22] = v21;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v3);
    sub_1C75504FC();
    v9 = v29;
    a1 = v30;
LABEL_8:
    *v1 = v13;
    v1[1] = v14;
    v1[2] = v32;
    v1[3] = v16;
    v1[4] = v19;
    v23 = v1[5];
    sub_1C7091CBC();
    v24 = 1;
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
    {
      v25 = v28;
      sub_1C7091CBC();
      v23(v25);
      sub_1C6FD7FC8(v25, &qword_1EC2168B0);
      v24 = 0;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0);
    __swift_storeEnumTagSinglePayload(a1, v24, 1, v26);
  }

  else
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= ((v15 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v27 - v11, 1, 1, v3);
        v19 = 0;
        goto LABEL_8;
      }

      v17 = *(v14 + 8 * v18);
      ++v16;
      if (v17)
      {
        v29 = v9;
        v30 = a1;
        v16 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_47_23()
{

  return sub_1C754FEEC();
}

void OUTLINED_FUNCTION_50_29()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_69_23()
{

  return sub_1C7550F5C();
}

uint64_t OUTLINED_FUNCTION_70_20()
{

  return sub_1C755200C();
}

uint64_t StoryPlaceholderAssetsGenerator.init(storyPhotoLibraryContext:storyAssetsFetcher:storyAssetManager:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = a1[2];
  type metadata accessor for StoryPlaceholderAssetsGenerator();
  if (qword_1EDD07B20 != -1)
  {
    OUTLINED_FUNCTION_1_127();
  }

  v10 = qword_1EDD07B28;
  sub_1C754FF2C();
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  result = sub_1C6FD80E4(a2, a4 + 24);
  *(a4 + 64) = a3;
  return result;
}

uint64_t type metadata accessor for StoryPlaceholderAssetsGenerator()
{
  result = qword_1EDD0D530;
  if (!qword_1EDD0D530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StoryPlaceholderAssetsGenerator.generateRandomPlaceholderAssetUUIDs(eventRecorder:progressReporter:forPrewarming:)(void *a1, uint64_t a2, char a3)
{
  v7 = sub_1C754F38C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v11 + 8))(a2);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    sub_1C73DC404(v13[1], a3 & 1, &v14);
    objc_autoreleasePoolPop(v12);
    sub_1C754F2EC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t StoryPlaceholderAssetsGenerator.generatePlaceholderAssets(from:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = sub_1C754F38C();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73DB978, 0, 0);
}

uint64_t sub_1C73DB978()
{
  type metadata accessor for StoryPlaceholderAssetsGenerator();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Start generating placeholder assets using user prompt", v3, 2u);
    MEMORY[0x1CCA5F8E0](v3, -1, -1);
  }

  v4 = *(v0 + 240);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  __swift_project_boxed_opaque_existential_1(*(v0 + 240), v4[3]);
  sub_1C754F15C();
  *(v0 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 64) = &off_1F46ACFD0;
  v5 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 256);
  *(v0 + 32) = 4;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6 == 0;
  *(v0 + 16) = 2;
  *(v0 + 24) = 1;
  *(v0 + 88) = xmmword_1C7569120;
  *(v0 + 104) = xmmword_1C7589230;
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 700;
  *(v0 + 144) = 0;
  *(v0 + 72) = 250;
  *(v0 + 80) = 0;
  v9 = v8[6];
  v10 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v9);
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  sub_1C75504FC();
  v11 = sub_1C7073450();
  *(v0 + 288) = v11;
  v14 = (*(v10 + 16) + **(v10 + 16));
  v12 = swift_task_alloc();
  *(v0 + 296) = v12;
  *v12 = v0;
  v12[1] = sub_1C73DBD90;

  return v14(v0 + 192, v11, v0 + 16, v0 + 152, v9, v10);
}

uint64_t sub_1C73DBD90()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1C73DC154;
  }

  else
  {
    v3 = sub_1C73DBEC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C73DBEC4()
{
  v26 = v0;
  v1 = v0[38];
  v2 = v0[25];
  v3 = v0[26];
  v22 = v0[24];
  v23 = v2;
  v24 = v3;
  v4 = FreeformStoryFetching.Result.uuids.getter();
  v5 = sub_1C7033F04(250, v4);
  v6 = sub_1C706E83C(v5);
  sub_1C754F2DC();
  if (v1)
  {
    v7 = v0[34];
    v8 = v0[35];
    v9 = v0[33];
    v20 = v0[31];
    __swift_destroy_boxed_opaque_existential_1((v0 + 19));

    swift_unknownObjectRelease();
    sub_1C70DF138((v0 + 2));
    OUTLINED_FUNCTION_38_1();
    sub_1C754F1AC();
    (*(v7 + 8))(v8, v9);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v10 + 8))(v20);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    StoryAsset.Manager.collection(with:)(v6, &v22);

    v11 = v22;
    v12 = v23;
    v18 = v24;
    v19 = v25;
    sub_1C754F2EC();
    v14 = v0[34];
    v13 = v0[35];
    v21 = v0[33];
    v17 = v0[27];
    __swift_destroy_boxed_opaque_existential_1((v0 + 19));

    swift_unknownObjectRelease();
    sub_1C70DF138((v0 + 2));
    *v17 = v11;
    v17[1] = v12;
    v17[2] = v18;
    v17[3] = v19;
    OUTLINED_FUNCTION_38_1();
    sub_1C754F1AC();
    (*(v14 + 8))(v13, v21);

    OUTLINED_FUNCTION_43();
  }

  return v15();
}

uint64_t sub_1C73DC154()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  __swift_destroy_boxed_opaque_existential_1((v0 + 19));
  sub_1C70DF138((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C73DC250()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EDD07B28 = result;
  return result;
}

uint64_t static StoryPlaceholderAssetsGenerator.placeHolderAssetGenerator(storyPhotoLibraryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  static FreeformStoryFetching.fetcher(with:isForTesting:)(*a1, 0, v15);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  type metadata accessor for StoryAsset.Manager();
  swift_allocObject();
  v6 = v3;

  v7 = StoryAsset.Manager.init(storyPhotoLibraryContext:)(&v12);
  sub_1C6FB5E28(v15, a2 + 24);
  type metadata accessor for StoryPlaceholderAssetsGenerator();
  v8 = qword_1EDD07B20;
  v9 = v6;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_127();
  }

  v10 = qword_1EDD07B28;
  sub_1C754FF2C();
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 64) = v7;
  return result;
}

void sub_1C73DC404(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v70 = *(type metadata accessor for StoryPlaceholderAssetsGenerator() + 28);
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Start generating random placeholder assets", v6, 2u);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
  }

  v71 = a1;
  v74 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*a1, *(a1 + 8), 0);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C75604F0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  *(v7 + 64) = v9;
  v10 = 0xD000000000000020;
  *(v7 + 32) = 0xD000000000000028;
  *(v7 + 40) = 0x80000001C75A3700;
  v11 = MEMORY[0x1E69E72E8];
  *(v7 + 96) = MEMORY[0x1E69E7290];
  *(v7 + 104) = v11;
  *(v7 + 72) = 1;
  v12 = sub_1C755112C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C75604F0;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 32) = 0xD00000000000002BLL;
  *(v13 + 40) = 0x80000001C75AE980;
  v14 = MEMORY[0x1E69E75F8];
  v15 = MEMORY[0x1E69E7660];
  *(v13 + 96) = MEMORY[0x1E69E75F8];
  *(v13 + 104) = v15;
  *(v13 + 72) = 3;
  v16 = sub_1C755112C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C75604F0;
  *(v17 + 56) = v8;
  *(v17 + 64) = v9;
  *(v17 + 32) = 0xD000000000000020;
  *(v17 + 40) = 0x80000001C75AE9B0;
  *(v17 + 96) = v14;
  *(v17 + 104) = v15;
  *(v17 + 72) = 7;
  v18 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C75650C0;
  *(v19 + 32) = v12;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  v20 = v12;
  v21 = v16;
  v22 = v18;
  v23 = sub_1C6F6E5C4();
  [v74 setInternalPredicate_];

  if (a2)
  {
    v24 = 100;
  }

  else
  {
    v24 = 250;
  }

  v25 = [objc_opt_self() placeholderAssetFetchMultiplier];
  if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v73 = v24;
  [v74 setFetchLimit_];
  v26 = [objc_opt_self() fetchAssetsWithOptions_];
  v27 = [v26 fetchedObjects];

  v66 = v20;
  v67 = v22;
  v65 = v21;
  if (v27)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v28 = sub_1C7550B5C();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1C6FB6304();
  v30 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  while (v29 != v30)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1CCA5DDD0](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v10 = v31;
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = sub_1C70CAC04(v31);
    v35 = v34;

    ++v30;
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v75 = v37;
      }

      v10 = *(v75 + 16);
      if (v10 >= *(v75 + 24) >> 1)
      {
        sub_1C6FB1814();
        v75 = v38;
      }

      *(v75 + 16) = v10 + 1;
      v36 = v75 + 16 * v10;
      *(v36 + 32) = v33;
      *(v36 + 40) = v35;
      v30 = v32;
    }
  }

  sub_1C70CFE0C(v39, v40, v41, v42, v43, v44, v45, v46, v64, v65, v20, v22, v68, v69, v70, v71, v73, v74, v75, 4, v76, v75);
  v47 = *(v77 + 16);
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();
  v10 = &unk_1C755C000;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v47;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Generated %ld curated / summary assets", v50, 0xCu);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }

  sub_1C74B833C(0);
  v52 = v51;
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v59 = MEMORY[0x1E69E7CC0];
  }

  v60 = *(v59 + 16);

  if (__OFSUB__(v54 >> 1, v52))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_unknownObjectRelease_n();
LABEL_26:
    sub_1C739C274();
    v56 = v55;
    v57 = v67;
    v58 = v65;
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  if (v60 != (v54 >> 1) - v52)
  {
    goto LABEL_42;
  }

  v56 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v57 = v67;
  v58 = v65;
  if (!v56)
  {
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

LABEL_34:

  v61 = sub_1C754FEEC();
  v62 = sub_1C75511BC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = *(v10 + 3176);
    *(v63 + 4) = *(v56 + 16);

    _os_log_impl(&dword_1C6F5C000, v61, v62, "Selected %ld random placeholder assets", v63, 0xCu);
    MEMORY[0x1CCA5F8E0](v63, -1, -1);
  }

  else
  {
  }

  *v68 = v56;
}

unint64_t sub_1C73DCB74()
{
  result = sub_1C72C729C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoryAsset.Manager();
    if (v2 <= 0x3F)
    {
      result = sub_1C754FF1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MusicKeywordsOptions.init(query:maxKeywords:maestroKeywords:computeNumberOfTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void *static StoryGenerationUtilities.boundedAssetUUIDsForEmptyInitialRetrieval(storyPhotoLibraryContext:eventRecorder:maximumNumberOfMomentsForEntireLibraryRetrieval:)(uint64_t a1, void *a2, uint64_t a3)
{
  v67 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_11_71();
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v12 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v13 = v12;
  PerformanceMeasure.init(name:log:)();
  v14 = objc_autoreleasePoolPush();
  sub_1C73DD990(v9, v10, &v71, &v68);
  if (!v3)
  {
    v63 = v11;
    v64 = v9;
    v65 = v10;
    objc_autoreleasePoolPop(v14);
    v15 = v68;
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v61 = v7;
    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EDD28D28);
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    v19 = v64;
    if (OUTLINED_FUNCTION_15_75(v18))
    {
      v20 = OUTLINED_FUNCTION_41_0();
      *v20 = 134217984;
      *(v20 + 4) = a3;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "%ld moments max for entire library retrieval", v20, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v21 = sub_1C75504FC();
    v62 = v15;
    v22 = sub_1C706D154(v21);
    v68 = v64;
    v69 = v65;
    v70 = v63;
    v9 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v22, &v68);

    v23 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v9);
    v24 = *(v23 + 16);
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_15_75(v26))
    {
      v27 = OUTLINED_FUNCTION_41_0();
      *v27 = 134217984;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "%ld moments from month highlights", v27, 0xCu);
      v19 = v64;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v28 = a3 - v24;
    if (a3 <= v24)
    {
      v30 = sub_1C754FEEC();
      v31 = sub_1C75511BC();
      v32 = OUTLINED_FUNCTION_72();
      v7 = v61;
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C6F5C000, v30, v31, "Sampling moments from only month highlights", v34, 2u);
        v19 = v64;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v68 = v19;
      v69 = v65;
      v70 = v63;
      v11 = sub_1C73DDDF0(v62, v9, v23, a3);
    }

    else
    {

      v29 = objc_autoreleasePoolPush();
      sub_1C73DE268(v19, v65, &v71, &v68);
      v7 = v61;
      v11 = v62;
      objc_autoreleasePoolPop(v29);
      v36 = v68;
      if (!v68[2])
      {

        v51 = sub_1C754FEEC();
        v59 = sub_1C75511BC();
        if (!OUTLINED_FUNCTION_15_75(v59))
        {
LABEL_26:

          goto LABEL_17;
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v54 = "No dayHighlightAssetUUIDs from which to sample, returning month highlight asset UUIDs";
        v55 = v59;
        v56 = v51;
        v57 = v60;
        v58 = 2;
LABEL_25:
        _os_log_impl(&dword_1C6F5C000, v56, v55, v54, v57, v58);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        goto LABEL_26;
      }

      v37 = sub_1C754FEEC();
      sub_1C75511BC();
      v38 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_41_0();
        *v40 = 134217984;
        *(v40 + 4) = v28;
        OUTLINED_FUNCTION_6_100();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v46 = sub_1C75504FC();
      v47 = sub_1C706D154(v46);
      v68 = v19;
      v9 = v19;
      v69 = v65;
      v70 = v63;
      v48 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v47, &v68);

      v49 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v48);
      v68 = v19;
      v69 = v65;
      v70 = v63;
      v50 = sub_1C73DDDF0(v36, v48, v49, v28);

      v68 = v62;
      sub_1C6FD2568(v50);
      v11 = v68;
      sub_1C75504FC();
      v51 = sub_1C754FEEC();
      v52 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_15_75(v52))
      {
        v53 = OUTLINED_FUNCTION_41_0();
        *v53 = 134217984;
        *(v53 + 4) = v11[2];

        v54 = "Bounded initial retrieval with %ld assets from both month and day highlights";
        v55 = v52;
        v56 = v51;
        v57 = v53;
        v58 = 12;
        goto LABEL_25;
      }
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v14);
LABEL_17:
  sub_1C6F85170();

  OUTLINED_FUNCTION_8_81();
  (*(v7 + 8))(v9, v67);
  return v11;
}

uint64_t sub_1C73DD2C4(uint64_t a1, uint64_t *a2, void *a3)
{
  v67 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *a2;
  v13 = *(a2 + 4);
  v14 = a2[2];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v15 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  v17 = *(a1 + 16);
  sub_1C75504FC();
  v18 = a1;
  v65 = v17;
  if (v17 >= 0xFB)
  {
    sub_1C706D154(a1);
    OUTLINED_FUNCTION_13_78();
    static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v19, v20);
    OUTLINED_FUNCTION_68();
    v21 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(a1);

    v22 = *(v21 + 16);

    if (v22 < 0xFB)
    {
      sub_1C75504FC();
      v18 = a1;
    }

    else
    {
      OUTLINED_FUNCTION_13_78();
      v18 = sub_1C73DEC88(a1, v23);
    }
  }

  v24 = objc_opt_self();
  a1 = v14;
  v25 = v13;
  v26 = [v24 useNormalDistributionForMoments];
  [v24 minimumCumulativeDistributionOfMomentFrequency];
  v73 = v12;
  v74 = v25;
  v75 = a1;
  v68 = xmmword_1C7575BD0;
  v69 = 4;
  v70 = v26;
  v71 = v27;
  v72 = 0;
  v28 = v76;
  v29 = static StoryGenerationUtilities.representativeMomentUUIDsAndAssetUUIDs(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(v18, &v73, MEMORY[0x1E69E7CC0], &v68);
  if (v28)
  {

    sub_1C6F85170();

    OUTLINED_FUNCTION_10_75();
    (*(v7 + 8))(v11, v67);
  }

  else
  {
    v30 = v29;
    v63 = a1;
    v66 = v25;

    sub_1C71BB090(v30);
    OUTLINED_FUNCTION_68();
    v31 = sub_1C71C1210(v18);
    a1 = v31;
    if (*(v31 + 16) > 0xFAuLL)
    {
      v60 = *(v31 + 16);
      v61 = v11;
      v62 = v7;
      v11 = v31 + 64;
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v14 = v33 & *(v31 + 64);
      v34 = (v32 + 63) >> 6;
      v76 = v31;
      sub_1C75504FC();
      a1 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v13 = v66;
      v64 = v12;
      while (v14)
      {
LABEL_17:
        v37 = *(*(v76 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v14)))));
        v38 = *(v37 + 16);
        v12 = *(v35 + 16);
        v7 = v12 + v38;
        if (__OFADD__(v12, v38))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          OUTLINED_FUNCTION_2();
          swift_once();
          goto LABEL_30;
        }

        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v35;
        if (!isUniquelyReferenced_nonNull_native || v7 > *(v35 + 24) >> 1)
        {
          sub_1C6FB1814();
          v40 = v41;
        }

        v12 = v64;
        v14 &= v14 - 1;
        v13 = v66;
        if (*(v37 + 16))
        {
          if ((*(v40 + 24) >> 1) - *(v40 + 16) < v38)
          {
            goto LABEL_39;
          }

          v7 = v40;
          swift_arrayInitWithCopy();

          v35 = v7;
          if (v38)
          {
            v42 = *(v7 + 16);
            v43 = __OFADD__(v42, v38);
            v44 = v42 + v38;
            if (v43)
            {
              goto LABEL_40;
            }

            *(v7 + 16) = v44;
          }
        }

        else
        {
          v45 = v40;

          v35 = v45;
          if (v38)
          {
            __break(1u);
            goto LABEL_34;
          }
        }
      }

      while (1)
      {
        v36 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v36 >= v34)
        {
          break;
        }

        v14 = *(v11 + 8 * v36);
        ++a1;
        if (v14)
        {
          a1 = v36;
          goto LABEL_17;
        }
      }

      v14 = v35;

      if (qword_1EDD0DBE0 != -1)
      {
        goto LABEL_41;
      }

LABEL_30:
      v46 = sub_1C754FF1C();
      __swift_project_value_buffer(v46, qword_1EDD28D28);
      sub_1C75504FC();
      sub_1C75504FC();
      v47 = sub_1C754FEEC();
      v48 = sub_1C75511BC();
      v49 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218752;
        *(v51 + 4) = v60;
        *(v51 + 12) = 2048;
        v52 = OUTLINED_FUNCTION_12_72(v51);
        *(v52 + 22) = 2048;
        *(v52 + 24) = *(v14 + 16);

        *(v51 + 32) = 2048;
        *(v51 + 34) = v65;

        _os_log_impl(&dword_1C6F5C000, v47, v48, "Applying moment sampling: numberOfMomentsCovered (%ld) > maximumNumberOfMoments (%ld), got %ld out of %ld assets.", v51, 0x2Au);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v11 = v61;
      v7 = v62;
      v53 = sub_1C75504FC();
      v54 = sub_1C706D154(v53);
      *&v68 = v12;
      WORD4(v68) = v13;
      v69 = v63;
      static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v54, &v68);
      OUTLINED_FUNCTION_68();
      v55 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v47);
      *&v68 = v12;
      WORD4(v68) = v13;
      v69 = v63;
      v56 = v12;
      v57 = sub_1C73DDDF0(v14, v47, v55, 250);

      v58 = sub_1C706D154(v57);
      *&v68 = v56;
      WORD4(v68) = v66;
      v69 = v63;
      static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v58, &v68);
      OUTLINED_FUNCTION_68();
      a1 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v47);
    }

LABEL_34:
    sub_1C6F85170();

    OUTLINED_FUNCTION_10_75();
    (*(v7 + 8))(v11, v67);
  }

  return a1;
}

void sub_1C73DD990(void *a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAA0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6F6D524();
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x80000001C75A2960;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = 0x696C696269736976;
  *(v6 + 80) = 0xEF65746174537974;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214ED8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  *(v9 + 32) = 196610;
  *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300);
  *(v6 + 144) = sub_1C7343B78();
  *(v6 + 112) = v9;
  v10 = sub_1C755112C();
  [v5 setInternalPredicate_];

  v11 = [objc_opt_self() fetchAssetsWithOptions_];
  v12 = [v11 fetchedObjects];

  if (v12)
  {
    v32 = v5;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v13 = sub_1C7550B5C();

    a3 = sub_1C6FB6304();
    v5 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (a3 == v5)
      {

        *a4 = v34;
        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](v5, v13);
      }

      else
      {
        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v13 + 8 * v5 + 32);
      }

      v15 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v16 = v14;
      v17 = [v16 uuid];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1C755068C();
        v31 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v34 = v23;
        }

        v21 = *(v34 + 16);
        if (v21 >= *(v34 + 24) >> 1)
        {
          sub_1C6FB1814();
          v34 = v24;
        }

        *(v34 + 16) = v21 + 1;
        v22 = v34 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v31;
        v5 = v15;
      }

      else
      {

        ++v5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDD0DBE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EDD28D28);
  v26 = sub_1C754FEEC();
  v27 = sub_1C755119C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Wasn't able to fetch assets in month highlights", v28, 2u);
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
  }

  sub_1C7196EF4();
  v29 = swift_allocError();
  *v30 = 6;
  *(v30 + 8) = 2;
  swift_willThrow();

  *a3 = v29;
}

uint64_t sub_1C73DDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDD0DBE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v8 = v7;
  PerformanceMeasure.init(name:log:)();
  v9 = *(a1 + 16);
  v40 = *(a3 + 16);
  v10 = sub_1C75504FC();
  v11 = sub_1C71CD90C(v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v42 = v9;
  if (v12)
  {
    sub_1C716DA70();
    v14 = v9;
    v15 = (v11 + 40);
    do
    {
      v16 = 0.0;
      if (*(a3 + 16))
      {
        v17 = *(v15 - 1);
        v18 = *v15;
        sub_1C75504FC();
        v19 = sub_1C6F78124(v17, v18);
        if (v20)
        {
          v21 = *(*(a3 + 56) + 8 * v19);
          sub_1C75504FC();

          v22 = *(v21 + 16);

          v16 = v22;
        }

        else
        {
        }
      }

      v23 = *(v13 + 16);
      if (v23 >= *(v13 + 24) >> 1)
      {
        sub_1C716DA70();
      }

      *(v13 + 16) = v23 + 1;
      *(v13 + 8 * v23 + 32) = v16 / v14;
      v15 += 2;
      --v12;
    }

    while (v12);
    v9 = v42;
  }

  sub_1C73DF7AC(v11, a4, v13);

  if (v9)
  {
    v24 = (a1 + 40);
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(a2 + 16))
      {
        v27 = *(v24 - 1);
        v26 = *v24;
        sub_1C75504FC();
        v28 = sub_1C6F78124(v27, v26);
        if ((v29 & 1) != 0 && (MEMORY[0x1EEE9AC00](v28), sub_1C75504FC(), v30 = sub_1C70735F4(), , v30))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v25 = v33;
          }

          v31 = *(v25 + 16);
          if (v31 >= *(v25 + 24) >> 1)
          {
            sub_1C6FB1814();
            v25 = v34;
          }

          *(v25 + 16) = v31 + 1;
          v32 = v25 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v26;
        }

        else
        {
        }
      }

      v24 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v35 = sub_1C754FF1C();
  __swift_project_value_buffer(v35, qword_1EDD28D28);
  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C75511BC();
  if (!os_log_type_enabled(v36, v37))
  {

    goto LABEL_33;
  }

  result = swift_slowAlloc();
  *result = 134218752;
  *(result + 4) = v40;
  *(result + 12) = 2048;
  if (!__OFSUB__(v40, a4))
  {
    v39 = result;
    *(result + 14) = v40 - a4;
    *(result + 22) = 2048;
    *(result + 24) = v42;
    *(result + 32) = 2048;
    *(result + 34) = *(v25 + 16);

    _os_log_impl(&dword_1C6F5C000, v36, v37, "Applied moment bounding on %ld moments: discarded %ld moments via sampling, went from %ld assets to %ld.", v39, 0x2Au);
    MEMORY[0x1CCA5F8E0](v39, -1, -1);
LABEL_33:

    sub_1C6F85170();

    return v25;
  }

  __break(1u);
  return result;
}

void sub_1C73DE268(void *a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v38 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x80000001C75A2960;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = 0x696C696269736976;
  *(v5 + 80) = 0xEF65746174537974;
  v8 = MEMORY[0x1E69E7660];
  *(v5 + 136) = MEMORY[0x1E69E75F8];
  *(v5 + 144) = v8;
  *(v5 + 112) = 1;
  *(v4 + 32) = sub_1C755112C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C755BAA0;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = 0xD00000000000001CLL;
  *(v9 + 40) = 0x80000001C75A2960;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  strcpy((v9 + 72), "extendedCount");
  *(v9 + 86) = -4864;
  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 136) = MEMORY[0x1E69E6530];
  *(v9 + 144) = v10;
  *(v9 + 112) = 2;
  *(v4 + 40) = sub_1C755112C();
  v11 = sub_1C6F6E5C4();
  [v38 setInternalPredicate_];

  v12 = [objc_opt_self() fetchAssetsWithOptions_];
  v13 = [v12 fetchedObjects];

  if (v13)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v14 = sub_1C7550B5C();

    v15 = sub_1C6FB6304();
    v16 = 0;
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 == v16)
      {

        *a4 = v39;
        return;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCA5DDD0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = v18;
      v21 = [v20 uuid];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1C755068C();
        v37 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v39 = v27;
        }

        v25 = *(v39 + 16);
        if (v25 >= *(v39 + 24) >> 1)
        {
          sub_1C6FB1814();
          v39 = v28;
        }

        *(v39 + 16) = v25 + 1;
        v26 = v39 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v37;
        v16 = v19;
      }

      else
      {

        ++v16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = a3;
  if (qword_1EDD0DBE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, qword_1EDD28D28);
  v30 = sub_1C754FEEC();
  v31 = sub_1C755119C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1C6F5C000, v30, v31, "Wasn't able to fetch assets in day highlights", v32, 2u);
    MEMORY[0x1CCA5F8E0](v32, -1, -1);
  }

  sub_1C7196EF4();
  v33 = swift_allocError();
  *v34 = 6;
  *(v34 + 8) = 2;
  swift_willThrow();

  *v17 = v33;
}

int64_t sub_1C73DE778(int64_t a1, uint64_t a2, void *a3)
{
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v53 = v6;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_11_71();
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v10 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v11 = v10;
  PerformanceMeasure.init(name:log:)();
  v12 = *(a1 + 16);
  if (v12 < 0xFB)
  {
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v24 = sub_1C754FF1C();
    __swift_project_value_buffer(v24, qword_1EDD28D28);
    v25 = sub_1C754FEEC();
    sub_1C75511BC();
    v26 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v12;
      *(v28 + 12) = 2048;
      OUTLINED_FUNCTION_12_72(v28);
      OUTLINED_FUNCTION_6_100();
      _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();
  }

  else
  {
    v13 = sub_1C75504FC();
    sub_1C706D154(v13);
    OUTLINED_FUNCTION_3_108();
    v15 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v14, v55);

    v16 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v15);

    v17 = *(v16 + 16);

    if (v17 < 0xFB)
    {
      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v34 = sub_1C754FF1C();
      __swift_project_value_buffer(v34, qword_1EDD28D28);
      v35 = sub_1C754FEEC();
      sub_1C75511BC();
      v36 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134218240;
        *(v38 + 4) = v17;
        *(v38 + 12) = 2048;
        OUTLINED_FUNCTION_12_72(v38);
        OUTLINED_FUNCTION_6_100();
        _os_log_impl(v39, v40, v41, v42, v43, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
    }

    else
    {
      OUTLINED_FUNCTION_3_108();
      v19 = sub_1C73DEC88(a1, v55);
      if (v18 < 251)
      {
        v44 = v18;
        if (qword_1EDD0DBE0 != -1)
        {
          OUTLINED_FUNCTION_2();
          swift_once();
        }

        v45 = sub_1C754FF1C();
        __swift_project_value_buffer(v45, qword_1EDD28D28);
        sub_1C75504FC();
        sub_1C75504FC();
        v46 = sub_1C754FEEC();
        v47 = sub_1C75511BC();
        v48 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 134218752;
          *(v50 + 4) = v44;
          *(v50 + 12) = 2048;
          v51 = OUTLINED_FUNCTION_12_72(v50);
          *(v51 + 22) = 2048;
          *(v51 + 24) = *(v19 + 16);

          *(v50 + 32) = 2048;
          *(v50 + 34) = v12;

          _os_log_impl(&dword_1C6F5C000, v46, v47, "No moment sampling applied: filtered numberOfMomentsCovered (%ld) <= maximumNumberOfMoments (%ld), returning %ld out of %ld assets.", v50, 0x2Au);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        a1 = v19;
      }

      else
      {
        v20 = sub_1C75504FC();
        sub_1C706D154(v20);
        OUTLINED_FUNCTION_3_108();
        v22 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v21, v55);

        v23 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v22);
        OUTLINED_FUNCTION_3_108();
        a1 = sub_1C73DDDF0(v19, v22, v23, 250);
      }
    }
  }

  sub_1C6F85170();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  (*(v53 + 8))(v9, v54);
  return a1;
}

uint64_t sub_1C73DEC88(int64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v3 = *a2;
  LOWORD(v4) = *(a2 + 8);
  v5 = *(a2 + 16);
  if (qword_1EDD0DBE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = qword_1EDD28D40;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v7 = v6;
    PerformanceMeasure.init(name:log:)();
    v8 = sub_1C75504FC();
    v117 = isUniquelyReferenced_nonNull_native;
    v9 = sub_1C706D154(v8);
    v122 = v3;
    v123 = v4;
    v124 = v5;
    v10 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v9, &v122);

    v3 = v10 + 64;
    v11 = 1 << *(v10 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v4 = v12 & *(v10 + 64);
    v13 = (v11 + 63) >> 6;
    v121 = v10;
    sub_1C75504FC();
    v14 = 0;
    v5 = MEMORY[0x1E69E7CC8];
    v119 = v10 + 64;
    if (v4)
    {
      break;
    }

    while (1)
    {
LABEL_6:
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v15 >= v13)
      {
        break;
      }

      v4 = *(v3 + 8 * v15);
      ++v14;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    v34 = 0;
    v35 = 1 << *(v5 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = *(v5 + 16);
    v38 = v36 & *(v5 + 64);
    v39 = (v35 + 63) >> 6;
    for (i = 0.0; v38; i = i + *(*(v5 + 56) + ((v41 << 9) | (8 * v42))))
    {
      v41 = v34;
LABEL_28:
      v42 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
    }

    while (1)
    {
      v41 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v41 >= v39)
      {
        v116 = *(v5 + 16);
        v43 = v37;
        v44 = i / v37;
        v45 = MEMORY[0x1E69E7CC0];
        if (!v116)
        {
LABEL_51:
          v61 = *(v45 + 2);
          if (v61)
          {
            v62 = v45 + 4;
            v63 = 0.0;
            do
            {
              v64 = *v62++;
              v63 = v63 + v64;
              --v61;
            }

            while (v61);
          }

          else
          {
            v63 = 0.0;
          }

          v65 = sqrt(v63 / v43);
          if (v44 + v65 * -0.5 > v44 + v44 * -0.6)
          {
            v66 = v44 + v65 * -0.5;
          }

          else
          {
            v66 = v44 + v44 * -0.6;
          }

          if (qword_1EDD0DBE0 != -1)
          {
            swift_once();
          }

          v67 = sub_1C754FF1C();
          __swift_project_value_buffer(v67, qword_1EDD28D28);
          v68 = sub_1C754FEEC();
          v69 = sub_1C755117C();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 134218496;
            *(v70 + 4) = v44;
            *(v70 + 12) = 2048;
            *(v70 + 14) = v65;
            *(v70 + 22) = 2048;
            *(v70 + 24) = v66;
            _os_log_impl(&dword_1C6F5C000, v68, v69, "meanScore = %f, standardDeviation = %f, threshold = %f", v70, 0x20u);
            v71 = v70;
            v3 = v119;
            MEMORY[0x1CCA5F8E0](v71, -1, -1);
          }

          v72 = 1 << *(v5 + 32);
          v73 = -1;
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          v74 = v73 & *(v5 + 64);
          v4 = (v72 + 63) >> 6;
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = 0;
          v75 = MEMORY[0x1E69E7CC0];
          v76 = (v5 + 64);
          while (v74)
          {
LABEL_71:
            v78 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
            v79 = v78 | (isUniquelyReferenced_nonNull_native << 6);
            if (v66 <= *(*(v5 + 56) + 8 * v79))
            {
              v80 = (*(v5 + 48) + 16 * v79);
              v82 = *v80;
              v81 = v80[1];
              sub_1C75504FC();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v75 = v85;
              }

              v83 = *(v75 + 16);
              v76 = (v5 + 64);
              if (v83 >= *(v75 + 24) >> 1)
              {
                sub_1C6FB1814();
                v76 = (v5 + 64);
                v75 = v86;
              }

              *(v75 + 16) = v83 + 1;
              v84 = v75 + 16 * v83;
              *(v84 + 32) = v82;
              *(v84 + 40) = v81;
              v3 = v119;
            }
          }

          while (1)
          {
            v77 = isUniquelyReferenced_nonNull_native + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
            {
              goto LABEL_107;
            }

            if (v77 >= v4)
            {

              v87 = sub_1C706D154(v75);
              v88 = 1 << *(v121 + 32);
              if (v88 < 64)
              {
                v89 = ~(-1 << v88);
              }

              else
              {
                v89 = -1;
              }

              v90 = v89 & *(v121 + 64);
              isUniquelyReferenced_nonNull_native = (v88 + 63) >> 6;
              sub_1C75504FC();
              v5 = 0;
              v91 = MEMORY[0x1E69E7CC0];
LABEL_81:
              while (v90)
              {
                v92 = v90;
LABEL_87:
                v90 = (v92 - 1) & v92;
                if (*(v87 + 16))
                {
                  v120 = v91;
                  v94 = (v5 << 10) | (16 * __clz(__rbit64(v92)));
                  v95 = (*(v121 + 48) + v94);
                  v96 = v95[1];
                  v118 = *v95;
                  v97 = (*(v121 + 56) + v94);
                  v99 = *v97;
                  v98 = v97[1];
                  sub_1C7551F3C();
                  v4 = v96;
                  sub_1C75504FC();
                  sub_1C75504FC();
                  sub_1C75505AC();
                  v100 = sub_1C7551FAC();
                  v101 = ~(-1 << *(v87 + 32));
                  do
                  {
                    v102 = v100 & v101;
                    if (((*(v87 + 56 + (((v100 & v101) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v100 & v101)) & 1) == 0)
                    {

                      v3 = v119;
                      v91 = v120;
                      goto LABEL_81;
                    }

                    v103 = (*(v87 + 48) + 16 * v102);
                    if (*v103 == v99 && v103[1] == v98)
                    {
                      break;
                    }

                    v105 = sub_1C7551DBC();
                    v100 = v102 + 1;
                  }

                  while ((v105 & 1) == 0);

                  v91 = v120;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C6FB1814();
                    v91 = v108;
                  }

                  v3 = v119;
                  v106 = *(v91 + 16);
                  if (v106 >= *(v91 + 24) >> 1)
                  {
                    sub_1C6FB1814();
                    v91 = v109;
                  }

                  *(v91 + 16) = v106 + 1;
                  v107 = v91 + 16 * v106;
                  *(v107 + 32) = v118;
                  *(v107 + 40) = v4;
                }
              }

              while (1)
              {
                v93 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  goto LABEL_108;
                }

                if (v93 >= isUniquelyReferenced_nonNull_native)
                {

                  v110 = *(v87 + 16);

                  sub_1C75504FC();
                  sub_1C75504FC();
                  v111 = sub_1C754FEEC();
                  v112 = sub_1C75511BC();
                  if (os_log_type_enabled(v111, v112))
                  {
                    v113 = swift_slowAlloc();
                    *v113 = 134218752;
                    *(v113 + 4) = *(v91 + 16);

                    *(v113 + 12) = 2048;
                    *(v113 + 14) = *(v117 + 16);

                    *(v113 + 22) = 2048;
                    *(v113 + 24) = v110;
                    *(v113 + 32) = 2048;
                    *(v113 + 34) = v116;
                    _os_log_impl(&dword_1C6F5C000, v111, v112, "StorytellingAssets: selected %ld from %ld assets in %ld moments out of %ld", v113, 0x2Au);
                    MEMORY[0x1CCA5F8E0](v113, -1, -1);
                  }

                  else
                  {
                  }

                  sub_1C6F85170();

                  return v91;
                }

                v92 = *(v3 + 8 * v93);
                ++v5;
                if (v92)
                {
                  v5 = v93;
                  goto LABEL_87;
                }
              }
            }

            v74 = *&v76[8 * v77];
            ++isUniquelyReferenced_nonNull_native;
            if (v74)
            {
              isUniquelyReferenced_nonNull_native = v77;
              goto LABEL_71;
            }
          }
        }

        v122 = MEMORY[0x1E69E7CC0];
        sub_1C716DA70();
        v45 = v122;
        v46 = sub_1C70D4544(v5);
        v48 = (v5 + 64);
        v49 = v46;
        v51 = v50;
        v52 = v116;
        v3 = 0;
        if ((v46 & 0x8000000000000000) == 0)
        {
          while (v49 < 1 << *(v5 + 32))
          {
            isUniquelyReferenced_nonNull_native = v49 >> 6;
            v4 = 1 << v49;
            if ((*&v48[8 * (v49 >> 6)] & (1 << v49)) == 0)
            {
              goto LABEL_110;
            }

            if (*(v5 + 36) != v51)
            {
              goto LABEL_111;
            }

            v53 = *(*(v5 + 56) + 8 * v49);
            v122 = v45;
            v54 = *(v45 + 2);
            if (v54 >= *(v45 + 3) >> 1)
            {
              v115 = v47;
              sub_1C716DA70();
              v47 = v115;
              v52 = v116;
              v48 = (v5 + 64);
              v45 = v122;
            }

            *(v45 + 2) = v54 + 1;
            v45[v54 + 4] = (v53 - v44) * (v53 - v44);
            v55 = 1 << *(v5 + 32);
            if (v49 >= v55)
            {
              goto LABEL_112;
            }

            v56 = *&v48[8 * isUniquelyReferenced_nonNull_native];
            if ((v56 & v4) == 0)
            {
              goto LABEL_113;
            }

            if (*(v5 + 36) != v51)
            {
              goto LABEL_114;
            }

            v57 = v56 & (-2 << (v49 & 0x3F));
            if (v57)
            {
              v55 = __clz(__rbit64(v57)) | v49 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v4 = isUniquelyReferenced_nonNull_native << 6;
              v58 = isUniquelyReferenced_nonNull_native + 1;
              v59 = (v5 + 72 + 8 * isUniquelyReferenced_nonNull_native);
              while (v58 < (v55 + 63) >> 6)
              {
                v60 = *v59++;
                isUniquelyReferenced_nonNull_native = v60;
                v4 += 64;
                ++v58;
                if (v60)
                {
                  sub_1C6F9ED50(v49, v51, v47 & 1);
                  v52 = v116;
                  v48 = (v5 + 64);
                  v55 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v4;
                  goto LABEL_47;
                }
              }

              sub_1C6F9ED50(v49, v51, v47 & 1);
              v52 = v116;
              v48 = (v5 + 64);
            }

LABEL_47:
            if (++v3 == v52)
            {
              v3 = v119;
              goto LABEL_51;
            }

            v47 = 0;
            v51 = *(v5 + 36);
            v49 = v55;
            if (v55 < 0)
            {
              goto LABEL_109;
            }
          }
        }

        goto LABEL_109;
      }

      v38 = *(v5 + 64 + 8 * v41);
      ++v34;
      if (v38)
      {
        v34 = v41;
        goto LABEL_28;
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
    __break(1u);
LABEL_117:
    __break(1u);
  }

  while (1)
  {
    v15 = v14;
LABEL_9:
    v16 = (*(v10 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v4)))));
    v18 = *v16;
    v17 = v16[1];
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v5;
    v19 = sub_1C6F78124(v18, v17);
    v21 = *(v5 + 16);
    v22 = (v20 & 1) == 0;
    v5 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_115;
    }

    v3 = v19;
    v23 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8);
    v24 = sub_1C7551A2C();
    v5 = v122;
    if (v24)
    {
      break;
    }

LABEL_13:
    if (v23)
    {
    }

    else
    {
      *(v5 + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v27 = (*(v5 + 48) + 16 * v3);
      *v27 = v18;
      v27[1] = v17;
      *(*(v5 + 56) + 8 * v3) = 0;
      v28 = *(v5 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_117;
      }

      *(v5 + 16) = v30;
    }

    v31 = *(v5 + 56);
    v32 = *(v31 + 8 * v3);
    v29 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v29)
    {
      goto LABEL_116;
    }

    v4 &= v4 - 1;
    *(v31 + 8 * v3) = v33;

    v14 = v15;
    v3 = v10 + 64;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v25 = sub_1C6F78124(v18, v17);
  if ((v23 & 1) == (v26 & 1))
  {
    v3 = v25;
    goto LABEL_13;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C73DF7AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = *(a3 + 16);
    v6 = a3 + 32;
    v7 = (result + 24);
    v8 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      ++v4;
      result = sub_1C735BAE4(0x20000000000001);
      v9 = 0;
      v10 = vcvtd_n_f64_u64(result, 0x35uLL);
      v11 = 0.0;
      v12 = v7;
      while (v5 != v9)
      {
        v13 = v9 + 1;
        v11 = v11 + *(v6 + 8 * v9);
        v12 += 2;
        ++v9;
        if (v10 < v11)
        {
          if ((v13 - 1) >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v15 = *(v12 - 1);
          v14 = *v12;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v8 = v18;
          }

          v16 = *(v8 + 16);
          if (v16 >= *(v8 + 24) >> 1)
          {
            sub_1C6FB1814();
            v8 = v19;
          }

          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v15;
          *(v17 + 40) = v14;
          break;
        }
      }

      if (v4 != a2)
      {
        continue;
      }

      return v8;
    }
  }

  return result;
}

void *SummarizationCLIPElector.__allocating_init(vectorFetchingBlock:distanceBlock:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t sub_1C73DF964()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B710);
  __swift_project_value_buffer(v0, qword_1EC21B710);
  return sub_1C754FEFC();
}

uint64_t sub_1C73DF9E8()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C754FE8C();
  __swift_allocate_value_buffer(v4, qword_1EC21B728);
  __swift_project_value_buffer(v4, qword_1EC21B728);
  if (qword_1EC2140A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC21B710);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C754FE5C();
}

uint64_t sub_1C73DFB24()
{
  sub_1C7551F3C();
  sub_1C6F9ED28();
  return sub_1C7551FAC();
}

void *SummarizationCLIPElector.init(vectorFetchingBlock:distanceBlock:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t (*sub_1C73DFB78(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), uint64_t a2, uint64_t a3, char *a4))@<X0>(uint64_t *a1@<X8>)
{
  v81 = a4;
  v74 = a3;
  v86 = a2;
  v6 = *v4;
  sub_1C754FE9C();
  OUTLINED_FUNCTION_29();
  v75 = v8;
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v73 = v9 - v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v71 - v12;
  v13 = sub_1C754FE4C();
  OUTLINED_FUNCTION_29();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v77 = (v17 - v18);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v71 - v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v71 - v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v71 - v27;
  if (qword_1EC2140B0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C754FE8C();
  v30 = __swift_project_value_buffer(v29, qword_1EC21B728);
  sub_1C75504FC();
  sub_1C754FE3C();
  v89 = v30;
  v31 = sub_1C754FE6C();
  v32 = sub_1C755131C();
  v33 = sub_1C755144C();
  v88 = v13;
  v78 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = v86;
    *(v34 + 12) = 2048;
    *(v34 + 14) = sub_1C7550BFC();

    v35 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v31, v32, v35, "Elector", "Starting to elect %ld from %ld items", v34, 0x16u);
    v13 = v88;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v79 = *(v15 + 16);
  v79(v25, v28, v13);
  sub_1C754FECC();
  swift_allocObject();
  v85 = sub_1C754FEBC();
  v36 = *(v15 + 8);
  v87 = v15 + 8;
  v90 = v36;
  v36(v28, v13);
  sub_1C75504FC();
  v37 = v80;
  sub_1C754FE3C();
  v38 = sub_1C754FE6C();
  v39 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = sub_1C7550BFC();

    v41 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v38, v39, v41, "Elector_Cluster", "Starting to cluster %ld items", v40, 0xCu);
    v13 = v88;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v79(v25, v37, v13);
  swift_allocObject();
  v42 = sub_1C754FEBC();
  v90(v37, v13);
  v43 = v82;
  v44 = v83;
  v45 = sub_1C73E0450(a1, v86, v81);
  v46 = v84;
  if (v43)
  {
  }

  else
  {
    v47 = v45;
    v86 = 0;
    sub_1C75504FC();
    v48 = sub_1C754FE6C();
    sub_1C754FEAC();
    LODWORD(v82) = sub_1C755130C();
    v49 = sub_1C755144C();
    v50 = MEMORY[0x1E69E93E8];
    v79 = v42;
    if (v49)
    {

      v51 = v72;
      sub_1C754FEDC();

      v53 = v75;
      v52 = v76;
      if ((*(v75 + 88))(v51, v76) == *v50)
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v51, v52);
        v54 = "Finished clustering, found %ld clusters";
      }

      v56 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_82(v56);
      type metadata accessor for SummarizationCLIPElectorCluster();
      *(v56 + 4) = sub_1C7550BFC();

      v55 = v84;
      v57 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v48, v82, v57, "Elector_Cluster", v54, v56, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v13 = v88;
    }

    else
    {

      v55 = v46;
    }

    v58 = (v90)(v55, v13);
    v91 = v47;
    MEMORY[0x1EEE9AC00](v58);
    v59 = v74;
    *(&v71 - 2) = v44;
    *(&v71 - 1) = v59;
    type metadata accessor for SummarizationCLIPElectorCluster();
    sub_1C7550C3C();
    OUTLINED_FUNCTION_0_171();
    swift_getWitnessTable();
    a1 = sub_1C75509CC();

    sub_1C75504FC();
    v60 = sub_1C754FE6C();
    v61 = v77;
    sub_1C754FEAC();
    v62 = sub_1C755130C();
    if (sub_1C755144C())
    {
      v63 = v62;

      v64 = v73;
      sub_1C754FEDC();

      v66 = v75;
      v65 = v76;
      if ((*(v75 + 88))(v64, v76) == *MEMORY[0x1E69E93E8])
      {
        v67 = "[Error] Interval already ended";
      }

      else
      {
        (*(v66 + 8))(v64, v65);
        v67 = "Finished electing, elected %ld items";
      }

      v68 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_82(v68);
      *(v68 + 4) = sub_1C7550BFC();

      v61 = v77;
      v69 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v60, v63, v69, "Elector", v67, v68, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v90(v61, v88);
  }

  return a1;
}

uint64_t sub_1C73E0404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_1C73E0F7C(&v4, a2, a3);
}

uint64_t sub_1C73E0450(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), uint64_t a2, char *a3)
{
  v5 = v3;
  v79 = a2;
  v80 = a1;
  v81 = *v5;
  v7 = v81[10];
  OUTLINED_FUNCTION_29();
  v66 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1C755149C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v63 - v18;
  sub_1C754F2CC();
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v20 + 8))(a3);
  }

  else
  {
    v72 = v19;
    v73 = TupleTypeMetadata2;
    v74 = v15;
    v75 = v12;
    v65 = a3;
    v21 = v5[4];
    v22 = v5[5];
    v23 = v5[6];
    v91 = 0;
    type metadata accessor for KMeans();
    swift_initStackObject();
    v24 = KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(v79, v21, v22, v23, &v91, 0.000001);
    v25 = v5[2];

    v26 = v80;
    v27 = v25(v80);
    v79 = v63;
    v86 = v26;
    MEMORY[0x1EEE9AC00](v27);
    v29 = v81[11];
    v28 = v81[12];
    v63[-4] = v7;
    v63[-3] = v29;
    v76 = v29;
    v77 = v28;
    v63[-2] = v28;
    v63[-1] = v30;
    v31 = sub_1C7550C3C();
    OUTLINED_FUNCTION_0_171();
    WitnessTable = swift_getWitnessTable();
    v33 = sub_1C75509CC();

    (*(*v24 + 192))(v33);
    v34 = v80;
    v71 = WitnessTable;
    v81 = v31;

    swift_beginAccess();
    v35 = v24[8];
    v19 = v65;
    if (v35 && (swift_beginAccess(), (v36 = v24[9]) != 0))
    {
      v63[1] = v24;
      v64 = 0;
      sub_1C75504FC();
      v63[0] = v36;
      sub_1C75504FC();
      v37 = v81;
      v90 = sub_1C755042C();
      v86 = v35;
      *&v85 = v34;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650);
      v39 = sub_1C73E15E4();
      v40 = v71;
      sub_1C7551E2C();

      v85 = v82;
      v70 = v38;
      v86 = v38;
      v87 = v37;
      v88 = v39;
      v69 = v39;
      v89 = v40;
      sub_1C755188C();
      sub_1C755185C();
      v78 = 0;
      v80 = 0;
      v79 = 0;
      v68 = (v66 + 4);
      v67 = (v66 + 2);
      ++v66;
      v41 = v75;
      v42 = v74;
      v43 = v77;
      while (1)
      {
        *&v82 = v70;
        *(&v82 + 1) = v37;
        v83 = v69;
        v84 = v40;
        sub_1C755187C();
        v44 = v72;
        sub_1C755186C();
        v45 = v73;
        if (__swift_getEnumTagSinglePayload(v44, 1, v73) == 1)
        {
          break;
        }

        v46 = *v44;
        (*v68)(v42, &v44[*(v45 + 48)], v7);
        v47 = v43;
        v48 = swift_allocObject();
        v49 = v76;
        v48[2] = v7;
        v48[3] = v49;
        v48[4] = v47;
        OUTLINED_FUNCTION_7_90();
        (*v67)(v41, v42, v7);
        v50 = swift_allocObject();
        v50[2] = v7;
        v50[3] = v49;
        v50[4] = v47;
        v50[5] = sub_1C73E166C;
        v50[6] = v48;
        OUTLINED_FUNCTION_3_109();
        v51 = v90;
        swift_isUniquelyReferenced_nonNull_native();
        *&v82 = v51;
        sub_1C6FCABD0(v46);
        if (__OFADD__(*(v51 + 16), (v52 & 1) == 0))
        {
          __break(1u);
LABEL_22:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        v53 = v52;
        sub_1C7551A6C();
        v54 = sub_1C7551A2C();
        v55 = v82;
        if (v54)
        {
          sub_1C6FCABD0(v46);
          v42 = v74;
          if ((v53 & 1) != (v56 & 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v42 = v74;
        }

        v90 = v55;
        if ((v53 & 1) == 0)
        {
          *&v82 = (v50[5])();
          *&v85 = v46;
          sub_1C7551A5C();
        }

        v41 = v75;
        v37 = v81;
        sub_1C7550C0C();
        (*v66)(v42, v7);
        v80 = sub_1C73E1678;
        v78 = sub_1C73E166C;
        v79 = v50;
        v43 = v77;
        v40 = v71;
      }

      v86 = sub_1C75504FC();
      sub_1C75504EC();
      swift_getWitnessTable();
      v59 = sub_1C7550A3C();

      v86 = v59;
      MEMORY[0x1EEE9AC00](v60);
      v61 = v76;
      v63[-6] = v7;
      v63[-5] = v61;
      v63[-4] = v43;
      v63[-3] = &v90;
      v63[-2] = v63[0];
      type metadata accessor for SummarizationCLIPElectorCluster();
      v62 = v64;
      v19 = sub_1C75509CC();

      sub_1C754F2EC();
      if (v62)
      {
      }

      OUTLINED_FUNCTION_7_90();
      OUTLINED_FUNCTION_3_109();
    }

    else
    {
      type metadata accessor for SummarizationCLIPElector.Error();
      swift_getWitnessTable();
      swift_allocError();
      swift_willThrow();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v57 + 8))(v19);
    }
  }

  return v19;
}

uint64_t sub_1C73E0EBC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1C7550C3C();
  result = sub_1C755056C();
  if (v8)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *(a2 + 16))
    {
      v7 = *(a2 + 8 * v5 + 32);
      *a3 = v5;
      a3[1] = v8;
      a3[2] = v7;
      return sub_1C75504FC();
    }

    __break(1u);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1C73E0F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v3;
  if (a2)
  {
    v21 = *(a1 + 8);
    MEMORY[0x1EEE9AC00](a1);
    sub_1C7550C3C();
    sub_1C75504FC();
    swift_getWitnessTable();
    v4 = sub_1C755191C();
    sub_1C75504FC();
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v7 = (v3[2])(v4);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v7);
  v8 = *(v6 + 80);
  sub_1C7550C3C();
  OUTLINED_FUNCTION_0_171();
  swift_getWitnessTable();
  v9 = sub_1C75509CC();

  v21 = v5;
  v10 = v3[4];
  sub_1C75504FC();
  static PairwiseMetrics.argMinDist(from:to:using:)(&v21, v9, v10);
  v12 = v11;

  if (v12)
  {

    v13 = a3;
    if (qword_1EC2140A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EC21B710);
    v15 = sub_1C754FEEC();
    v16 = sub_1C755119C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "Unexpectedly no item closest to centroid, unable to elect", v17, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v18 = 1;
  }

  else
  {
    v13 = a3;
    sub_1C7550C6C();

    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v13, v18, 1, v8);
}

uint64_t SummarizationCLIPElector.deinit()
{

  return v0;
}

uint64_t SummarizationCLIPElector.__deallocating_deinit()
{
  SummarizationCLIPElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73E1394()
{
  type metadata accessor for SummarizationCLIPElector();
  swift_getWitnessTable();
  return sub_1C754F5AC();
}

uint64_t sub_1C73E154C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C73E15E4()
{
  result = qword_1EC21B840[0];
  if (!qword_1EC21B840[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC21B840);
  }

  return result;
}

uint64_t sub_1C73E1678@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

_BYTE *sub_1C73E16A8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C73E1778()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A030);
  __swift_project_value_buffer(v0, qword_1EDD0A030);
  return sub_1C754FEFC();
}

void *sub_1C73E1820@<X0>(void *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = objc_opt_self();
  v4 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisMiCaImageCaptionResultsKey);
  if (!v5)
  {
    sub_1C73E642C();
    swift_allocError();
    *v22 = 0xD000000000000023;
    v22[1] = 0x80000001C75AED90;
    return swift_willThrow();
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisMiCaVideoCaptionResultsKey);
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    v12 = sub_1C70DA910(v3);
    if (v13)
    {
      v14 = v12;
      v36 = v13;
      v15 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultImageCaptionConfidenceAttributeKey);
      if (v16)
      {
        v30 = v15;
        v32 = v16;
        v17 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultImageCaptionTextAttributeKey);
        v2 = 0xD00000000000002FLL;
        if (v18)
        {
          v29 = v17;
          v31 = v18;
          v19 = sub_1C712ED88(v3);
          if (v20)
          {
            __src[0] = v6;
            __src[1] = v7;
            __src[2] = v11;
            __src[3] = v10;
            __src[4] = v14;
            __src[5] = v36;
            __src[6] = v30;
            __src[7] = v32;
            __src[8] = v29;
            __src[9] = v31;
            __src[10] = v19;
            __src[11] = v20;
            v35[0] = v6;
            v35[1] = v7;
            v35[2] = v11;
            v35[3] = v10;
            v35[4] = v14;
            v35[5] = v36;
            v35[6] = v30;
            v35[7] = v32;
            v35[8] = v29;
            v35[9] = v31;
            v35[10] = v19;
            v35[11] = v20;
            sub_1C73E64B0(__src, v33);
            sub_1C73E6480(v35);
            return memcpy(a1, __src, 0x60uLL);
          }

          v26 = "ultImageCaptionTextAttributeKey";
          v23 = 1;
          v24 = 1;
          v25 = 1;
        }

        else
        {
          v25 = 0;
          v26 = "onfidenceAttributeKey";
          v23 = 1;
          v24 = 1;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = "ultAttributesKey";
        v2 = 0xD000000000000035;
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = "eoCaptionResultsKey";
      v2 = 0xD000000000000020;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = "geCaptionResultsKey";
  }

  v27 = v26 | 0x8000000000000000;
  sub_1C73E642C();
  swift_allocError();
  *v28 = v2;
  v28[1] = v27;
  swift_willThrow();

  if (v10)
  {
  }

  if (v23)
  {

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else if (!v24)
  {
LABEL_15:
    if (!v25)
    {
      return result;
    }
  }

  if (v25)
  {
  }

  return result;
}

uint64_t AssetCaptionGenerator.currentVideoCaptionPreferenceRequestID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_1_7();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C73E1B74(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t AssetCaptionGenerator.currentAssetCaptionRequestID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_1_7();
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E1C70()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = [objc_allocWithZone(*(v0 + 40)) init];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_91(v1);

  return AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)();
}

uint64_t sub_1C73E1D10(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 64) = v1;

  if (!v1)
  {
    *(v5 + 72) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73E1E1C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

id AssetCaptionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[4] = v5;
  v1[7] = swift_getObjectType();
  v6 = sub_1C754F38C();
  v1[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v1[11] = swift_allocBox();
  (*(*(v8 - 8) + 32))(v9, v3, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E1FB8()
{
  v35 = v0;
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= 1; i = sub_1C75516BC())
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
    sub_1C754F1CC();
    if (qword_1EDD0A028 != -1)
    {
      OUTLINED_FUNCTION_1_128();
    }

    v3 = sub_1C754FF1C();
    __swift_project_value_buffer(v3, qword_1EDD0A030);
    sub_1C75504FC();
    v4 = sub_1C754FEEC();
    v5 = sub_1C755118C();

    if (!os_log_type_enabled(v4, v5))
    {
LABEL_22:

      v26 = swift_task_alloc();
      OUTLINED_FUNCTION_13_79(v26);
      v27 = swift_task_alloc();
      *(v0 + 104) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
      *v27 = v0;
      v27[1] = sub_1C73E23F0;
      OUTLINED_FUNCTION_13();

      return MEMORY[0x1EEE6DE38]();
    }

    v30 = v5;
    log = v4;
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    buf = v7;
    *v7 = 136315138;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v8 = 0;
    v9 = v34;
    v10 = v1 & 0xC000000000000001;
    v32 = v6 + 32;
    while (1)
    {
      v11 = v10 ? MEMORY[0x1CCA5DDD0](v8, *(v0 + 32)) : *(v32 + 8 * v8);
      v12 = v11;
      v13 = [v12 uuid];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1C755068C();
        v1 = v16;
      }

      else
      {
        v15 = 0;
        v1 = 0;
      }

      if (!v1)
      {
        break;
      }

      v34 = v9;
      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v9 = v34;
      }

      ++v8;
      *(v9 + 16) = v17 + 1;
      v18 = v9 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v1;
      if (i == v8)
      {
        *(v0 + 24) = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        v22 = sub_1C75505FC();
        v24 = v23;

        v25 = sub_1C6F765A4(v22, v24, &v33);

        *(buf + 4) = v25;
        v4 = log;
        _os_log_impl(&dword_1C6F5C000, log, v30, "The LP assets UUIDs are %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  OUTLINED_FUNCTION_116();
  v20 = MEMORY[0x1E69E7CD0];

  return v19(v20);
}

uint64_t sub_1C73E23F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E24F0()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  OUTLINED_FUNCTION_9_86(*(v0 + 40));
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_116();

  return v5(v1);
}

uint64_t sub_1C73E2598()
{
  OUTLINED_FUNCTION_75_1();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C73E2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a1;
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = objc_opt_self();
  sub_1C71BA830(a3, v21, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37, v13, aBlock, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v36 = sub_1C7550B3C();

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = v22;
  v23[4] = a5;
  v43 = sub_1C73E6528;
  v44 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C7103978;
  v42 = &block_descriptor_26;
  v24 = _Block_copy(&aBlock);

  (*(v9 + 16))(v12, v35, v8);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v12, v8);
  *(v27 + v26) = v34;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v43 = sub_1C73E6608;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C73E3960;
  v42 = &block_descriptor_32;
  v28 = _Block_copy(&aBlock);
  sub_1C75504FC();

  v29 = v36;
  v30 = [v38 requestVideoCaptionPreferenceForAssets:v36 withOptions:0 progressHandler:v24 completionHandler:v28];
  _Block_release(v28);
  _Block_release(v24);

  v31 = v37 + OBJC_IVAR___PNAssetCaptionGenerator_currentVideoCaptionPreferenceRequestID;
  result = swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = 0;
  return result;
}

void sub_1C73E2994(NSObject *a1, NSObject *a2)
{
  v2 = &qword_1EDD0A000;
  if (!a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_1C73E642C();
      v4 = swift_allocError();
      *v87 = 0;
      v87[1] = 0;
    }

    v88 = a2;
    if (qword_1EDD0A028 == -1)
    {
      goto LABEL_82;
    }

    goto LABEL_100;
  }

  v3 = a1;
  v4 = objc_opt_self();
  v5 = sub_1C70DA910(v4);
  if (!v6)
  {
    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v82 = sub_1C754FF1C();
    __swift_project_value_buffer(v82, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisResultAttributesKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_93;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisVideoCaptionPreferenceResultsKey);
  if (!v10)
  {

    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v86 = sub_1C754FF1C();
    __swift_project_value_buffer(v86, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisVideoCaptionPreferenceResultsKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_93;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultVideoCaptionPreferenceAttributeKey);
  if (!v14)
  {

    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v102 = sub_1C754FF1C();
    __swift_project_value_buffer(v102, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisResultVideoCaptionPreferenceAttributeKey from PLMediaAnalysisServiceRequestAdapter!";
LABEL_93:
    _os_log_impl(&dword_1C6F5C000, osloga, v83, v85, v84, 2u);
    MEMORY[0x1CCA5F8E0](v84, -1, -1);
LABEL_94:

    return;
  }

  v106 = v11;
  v107 = v13;
  v112 = v7;
  v113 = v14;
  v111 = v12;
  v117 = v8;
  v126 = MEMORY[0x1E69E7CD0];
  v15 = v3 + 8;
  v16 = 1 << LOBYTE(v3[4].isa);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  isa = v17 & v3[8].isa;
  v19 = (v16 + 63) >> 6;
  sub_1C75504FC();
  v105 = 0;
  v115 = 0;
  v20 = 0;
  oslog = v3;
  if (!isa)
  {
LABEL_9:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        isa = 0;
        memset(__src, 0, 72);
        goto LABEL_14;
      }

      isa = v15[v21].isa;
      ++v20;
      if (isa)
      {
        v20 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_100:
    swift_once();
LABEL_82:
    v89 = sub_1C754FF1C();
    __swift_project_value_buffer(v89, qword_1EDD0A030);
    v90 = v4;
    v91 = sub_1C754FEEC();
    v92 = sub_1C755119C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = v4;
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v96;
      *v94 = v96;
      _os_log_impl(&dword_1C6F5C000, v91, v92, "Failed to get analysis results with asset video caption preferences from mediaanalysisd: %@!", v93, 0xCu);
      sub_1C6FC15D8(v94);
      MEMORY[0x1CCA5F8E0](v94, -1, -1);
      MEMORY[0x1CCA5F8E0](v93, -1, -1);
    }

    *__dst = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0);
    sub_1C7550C9C();
    return;
  }

  while (1)
  {
    v21 = v20;
LABEL_13:
    v22 = __clz(__rbit64(isa));
    isa &= isa - 1;
    v23 = v22 | (v21 << 6);
    sub_1C6FCA584(v3[6].isa + 40 * v23, v122);
    sub_1C6F774EC(v3[7].isa + 32 * v23, v121);
    __src[0] = v122[0];
    __src[1] = v122[1];
    *&__src[2] = v123;
    sub_1C6F9ED18(v121, (&__src[2] + 8));
LABEL_14:
    memcpy(__dst, __src, sizeof(__dst));
    if (!*&__dst[24])
    {

      if (v2[5] != -1)
      {
        swift_once();
      }

      v97 = sub_1C754FF1C();
      __swift_project_value_buffer(v97, qword_1EDD0A030);
      v98 = v126;
      sub_1C75504FC();
      sub_1C75504FC();
      v99 = sub_1C754FEEC();
      v100 = sub_1C755118C();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 134218496;
        *(v101 + 4) = *(v98 + 16);

        *(v101 + 12) = 2048;
        *(v101 + 14) = sub_1C6FB6304();

        *(v101 + 22) = 2048;
        *(v101 + 24) = v115;
        _os_log_impl(&dword_1C6F5C000, v99, v100, "Video caption preferred for %ld out of %ld live photo assets! Number of available video captions is %ld.", v101, 0x20u);
        MEMORY[0x1CCA5F8E0](v101, -1, -1);
      }

      else
      {
      }

      *__dst = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0);
      sub_1C7550CAC();
      return;
    }

    __src[0] = *__dst;
    __src[1] = *&__dst[16];
    *&__src[2] = *&__dst[32];
    sub_1C6F9ED18(&__dst[40], v121);
    sub_1C6FCA584(__src, v122);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (v2[5] != -1)
      {
        swift_once();
      }

      v29 = sub_1C754FF1C();
      __swift_project_value_buffer(v29, qword_1EDD0A030);
      sub_1C6FCA584(__src, v122);
      v4 = sub_1C754FEEC();
      v30 = sub_1C755119C();
      if (!os_log_type_enabled(v4, v30))
      {

        sub_1C6FCA5E0(v122);
        goto LABEL_28;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v120[0] = v32;
      *v31 = 136315138;
      v33 = sub_1C755173C();
      v35 = v34;
      sub_1C6FCA5E0(v122);
      v36 = sub_1C6F765A4(v33, v35, v120);
      v3 = oslog;

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1C6F5C000, v4, v30, "Key in caption result dictionary was not a string, it was %s!", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      v28 = v31;
      v2 = &qword_1EDD0A000;
      goto LABEL_25;
    }

    v4 = v120[0];
    v24 = v120[1];
    sub_1C6F774EC(v121, v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F8);
    if (swift_dynamicCast())
    {
      break;
    }

    if (v2[5] != -1)
    {
      swift_once();
    }

    v25 = sub_1C754FF1C();
    __swift_project_value_buffer(v25, qword_1EDD0A030);
    v4 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    if (!os_log_type_enabled(v4, v26))
    {
      goto LABEL_26;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v26, "Value in caption result dictionary was not a dictionary!", v27, 2u);
    v28 = v27;
LABEL_25:
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
LABEL_26:

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v121);
    sub_1C6FCA5E0(__src);
    if (!isa)
    {
      goto LABEL_9;
    }
  }

  v104 = v24;
  v37 = v120[0];
  if (!*(v120[0] + 2) || (v38 = sub_1C6F78124(v106, v111), (v39 & 1) == 0))
  {

LABEL_67:

    goto LABEL_28;
  }

  v103 = v4;
  v40 = *(v37[7] + 8 * v38);

  *&v122[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8E8);
  sub_1C7550B4C();

  v4 = *&v122[0];
  if (!*&v122[0])
  {
    goto LABEL_67;
  }

  if (!__OFADD__(v105++, 1))
  {
    v42 = *(*&v122[0] + 16);
    if (!v42)
    {
LABEL_68:

      v115 = v105;
      goto LABEL_28;
    }

    v43 = 32;
    v110 = *&v122[0];
    while (2)
    {
      v114 = v43;
      v116 = v42;
      v44 = *(&v4->isa + v43);
      v45 = *(v44 + 16);
      sub_1C75504FC();
      if (v45 && (v46 = sub_1C6F78124(v112, v117), (v47 & 1) != 0))
      {
        v48 = *(*(v44 + 56) + 8 * v46);
        sub_1C75504FC();

        if (*(v48 + 16) && (v49 = sub_1C6F78124(v107, v113), (v50 & 1) != 0) && (sub_1C6F774EC(*(v48 + 56) + 32 * v49, v122), sub_1C6FA7014(), (swift_dynamicCast() & 1) != 0))
        {

          v51 = v120[0];
          if ([v120[0] integerValue] >= 1)
          {
            sub_1C75504FC();
            sub_1C70F082C(v122, v103, v104);

            goto LABEL_55;
          }

          v3 = oslog;
          if (([v51 integerValue] & 0x8000000000000000) != 0)
          {
            if (v2[5] != -1)
            {
              swift_once();
            }

            v75 = sub_1C754FF1C();
            __swift_project_value_buffer(v75, qword_1EDD0A030);
            v76 = v51;
            v77 = sub_1C754FEEC();
            v78 = sub_1C755119C();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 134217984;
              *(v79 + 4) = [v76 integerValue];

              _os_log_impl(&dword_1C6F5C000, v77, v78, "Invalid video caption preference attribute: %ld!", v79, 0xCu);
              v80 = v79;
              v3 = oslog;
              MEMORY[0x1CCA5F8E0](v80, -1, -1);
            }

            else
            {
            }

            v2 = &qword_1EDD0A000;
          }

          else
          {
          }
        }

        else
        {
          if (v2[5] != -1)
          {
            swift_once();
          }

          v65 = sub_1C754FF1C();
          __swift_project_value_buffer(v65, qword_1EDD0A030);
          sub_1C75504FC();
          sub_1C75504FC();
          v66 = sub_1C754FEEC();
          v67 = sub_1C755119C();

          loga = v66;
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v122[0] = v69;
            *v68 = 136315394;
            *(v68 + 4) = sub_1C6F765A4(v107, v113, v122);
            *(v68 + 12) = 2080;
            v70 = sub_1C75504BC();
            v72 = v71;

            v73 = sub_1C6F765A4(v70, v72, v122);

            *(v68 + 14) = v73;
            _os_log_impl(&dword_1C6F5C000, loga, v67, "Could not find value for %s in %s!", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1CCA5F8E0](v69, -1, -1);
            v74 = v68;
            v2 = &qword_1EDD0A000;
            MEMORY[0x1CCA5F8E0](v74, -1, -1);
          }

          else
          {
          }

LABEL_55:
          v3 = oslog;
        }
      }

      else
      {
        if (v2[5] != -1)
        {
          swift_once();
        }

        v52 = sub_1C754FF1C();
        __swift_project_value_buffer(v52, qword_1EDD0A030);
        sub_1C75504FC();
        sub_1C75504FC();
        v53 = sub_1C754FEEC();
        v54 = sub_1C755119C();

        log = v54;
        v55 = v54;
        v56 = v53;
        if (os_log_type_enabled(v53, v55))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v122[0] = v58;
          *v57 = 136315394;
          *(v57 + 4) = sub_1C6F765A4(v112, v117, v122);
          *(v57 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
          v59 = sub_1C75504BC();
          v61 = v60;

          v62 = v59;
          v3 = oslog;
          v63 = sub_1C6F765A4(v62, v61, v122);

          *(v57 + 14) = v63;
          _os_log_impl(&dword_1C6F5C000, v56, log, "Could not find value for %s in %s!", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v58, -1, -1);
          v64 = v57;
          v2 = &qword_1EDD0A000;
          MEMORY[0x1CCA5F8E0](v64, -1, -1);
        }

        else
        {
        }
      }

      v4 = v110;
      v43 = v114 + 8;
      v42 = v116 - 1;
      if (v116 == 1)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1C73E3960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C75504AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E3A24()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = [objc_allocWithZone(*(v0 + 40)) init];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_91(v1);

  return AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)();
}

uint64_t sub_1C73E3AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 64) = v1;

  if (!v1)
  {
    *(v5 + 72) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[4] = v4;
  v1[5] = v0;
  v1[3] = v5;
  v1[6] = swift_getObjectType();
  v6 = sub_1C754F38C();
  v1[7] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[8] = v7;
  v1[9] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v1[10] = swift_allocBox();
  v1[11] = v9;
  (*(*(v8 - 8) + 32))(v9, v3, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E3CDC()
{
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1CC();
  sub_1C754F2CC();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_13_79(v1);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  *v2 = v0;
  v2[1] = sub_1C73E3ED0;
  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1C73E3ED0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E3FD0()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  OUTLINED_FUNCTION_9_86(*(v0 + 32));
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_116();

  return v5(v1);
}

uint64_t sub_1C73E4078()
{
  v1 = v0[4];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1AC();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73E413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a1;
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = objc_opt_self();
  sub_1C71BA830(a3, v21, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37, v13, aBlock, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v36 = sub_1C7550B3C();

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = a4;
  v23[3] = v22;
  v23[4] = a5;
  v43 = sub_1C73E63C4;
  v44 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C7103978;
  v42 = &block_descriptor_38;
  v24 = _Block_copy(&aBlock);

  (*(v9 + 16))(v12, v35, v8);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v12, v8);
  *(v27 + v26) = v34;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v43 = sub_1C73E6404;
  v44 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C73E3960;
  v42 = &block_descriptor_19;
  v28 = _Block_copy(&aBlock);
  sub_1C75504FC();

  v29 = v36;
  v30 = [v38 requestAssetCaptionsOfTypes:1 forAssets:v36 withOptions:0 progressHandler:v24 completionHandler:v28];
  _Block_release(v28);
  _Block_release(v24);

  v31 = v37 + OBJC_IVAR___PNAssetCaptionGenerator_currentAssetCaptionRequestID;
  result = swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = 0;
  return result;
}

uint64_t sub_1C73E4470()
{
  sub_1C754F2FC();
  swift_projectBox();
  swift_beginAccess();
  sub_1C754F2DC();
  return swift_endAccess();
}

uint64_t sub_1C73E4710(uint64_t a1, id a2)
{
  v2 = &qword_1EDD0A000;
  if (a1)
  {
    v3 = a1;
    sub_1C73E1820(v186);
    v5 = v3 + 64;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    sub_1C75504FC();
    v10 = 0;
    v167 = MEMORY[0x1E69E7CC8];
    v11 = v3 + 64;
    v168 = v3;
    v173 = v3 + 64;
    v176 = v9;
LABEL_8:
    while (2)
    {
      if (v8)
      {
        v12 = v10;
        goto LABEL_14;
      }

      do
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v12 >= v9)
        {
          v8 = 0;
          memset(__src, 0, 72);
          goto LABEL_15;
        }

        v8 = *(v11 + 8 * v12);
        ++v10;
      }

      while (!v8);
      v10 = v12;
LABEL_14:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v12 << 6);
      sub_1C6FCA584(*(v3 + 48) + 40 * v14, &v182);
      sub_1C6F774EC(*(v3 + 56) + 32 * v14, v181);
      __src[0] = v182;
      __src[1] = v183;
      *&__src[2] = v184;
      sub_1C6F9ED18(v181, (&__src[2] + 8));
LABEL_15:
      memcpy(__dst, __src, 0x48uLL);
      if (*(&__dst[1] + 1))
      {
        v182 = __dst[0];
        v183 = __dst[1];
        v184 = *&__dst[2];
        sub_1C6F9ED18((&__dst[2] + 8), v181);
        sub_1C6FCA584(&v182, __src);
        if (swift_dynamicCast())
        {
          v5 = v180;
          sub_1C6F774EC(v181, __src);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
          if (swift_dynamicCast())
          {
            v169 = v5;
            v170 = v8;
            v15 = v179;
            if (*(*&v179 + 16))
            {
              v16 = v186[0];
              v17 = v186[1];
              v171 = v179;
              sub_1C75504FC();
              v5 = sub_1C6F78124(v16, v17);
              v19 = v18;

              v15 = v171;
              if (v19)
              {
                sub_1C6F774EC(*(*&v171 + 56) + 32 * v5, __src);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B50);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_98;
                }

                v20 = v179;
                v21 = *(*&v179 + 16);
                if (v21)
                {
                  v165 = 0.0;
                  v166 = 0;
                  v174 = v188;
                  v175 = v187;
                  v22 = -1.79769313e308;
                  v23 = 32;
                  v172 = v179;
                  while (1)
                  {
                    v177 = v21;
                    v24 = *(*&v20 + v23);
                    v25 = *(v24 + 16);
                    sub_1C75504FC();
                    if (v25 && (sub_1C75504FC(), v26 = sub_1C6F78124(v175, v174), v28 = v27, , (v28 & 1) != 0))
                    {
                      v29 = *(*(v24 + 56) + 8 * v26);
                      v30 = v189;
                      v5 = v190;
                      if (!*(v29 + 16))
                      {
                        goto LABEL_38;
                      }

                      sub_1C75504FC();
                      sub_1C75504FC();
                      v31 = sub_1C6F78124(v30, v5);
                      v33 = v32;

                      if ((v33 & 1) == 0 || (sub_1C6F774EC(*(v29 + 56) + 32 * v31, __src), (swift_dynamicCast() & 1) == 0))
                      {

                        v20 = v172;
LABEL_38:
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v46 = sub_1C754FF1C();
                        __swift_project_value_buffer(v46, qword_1EDD0A030);
                        sub_1C75504FC();
                        sub_1C73E64B0(v186, __src);
                        v47 = sub_1C754FEEC();
                        v48 = sub_1C755119C();
                        sub_1C73E6480(v186);

                        if (os_log_type_enabled(v47, v48))
                        {
                          v49 = swift_slowAlloc();
                          v50 = swift_slowAlloc();
                          *&__src[0] = v50;
                          *v49 = 136315394;
                          sub_1C75504FC();
                          v51 = sub_1C6F765A4(v30, v5, __src);

                          *(v49 + 4) = v51;
                          *(v49 + 12) = 2080;
                          v52 = sub_1C75504BC();
                          v54 = v53;

                          v5 = sub_1C6F765A4(v52, v54, __src);

                          *(v49 + 14) = v5;
                          _os_log_impl(&dword_1C6F5C000, v47, v48, "Could not find value for %s in %s!", v49, 0x16u);
                          swift_arrayDestroy();
                          v55 = v50;
                          v20 = v172;
                          MEMORY[0x1CCA5F8E0](v55, -1, -1);
                          v56 = v49;
                          v2 = &qword_1EDD0A000;
                          MEMORY[0x1CCA5F8E0](v56, -1, -1);
                        }

                        else
                        {
                        }

                        v34 = v22;
                        v11 = v173;
                        goto LABEL_44;
                      }

                      v34 = v179;
                      if (v22 > v179)
                      {

                        v34 = v22;
                        v11 = v173;
                        goto LABEL_59;
                      }

                      v57 = v191;
                      v5 = v192;
                      v11 = v173;
                      if (!*(v29 + 16) || (sub_1C75504FC(), v58 = sub_1C6F78124(v57, v5), v60 = v59, , (v60 & 1) == 0) || (sub_1C6F774EC(*(v29 + 56) + 32 * v58, __src), (swift_dynamicCast() & 1) == 0))
                      {
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v62 = sub_1C754FF1C();
                        __swift_project_value_buffer(v62, qword_1EDD0A030);
                        sub_1C75504FC();
                        sub_1C73E64B0(v186, __src);
                        v63 = sub_1C754FEEC();
                        v64 = sub_1C755119C();
                        sub_1C73E6480(v186);

                        if (os_log_type_enabled(v63, v64))
                        {
                          v65 = swift_slowAlloc();
                          v66 = swift_slowAlloc();
                          *&__src[0] = v66;
                          *v65 = 136315394;
                          sub_1C75504FC();
                          v67 = sub_1C6F765A4(v57, v5, __src);

                          *(v65 + 4) = v67;
                          *(v65 + 12) = 2080;
                          v68 = sub_1C75504BC();
                          v70 = v69;

                          v5 = sub_1C6F765A4(v68, v70, __src);

                          *(v65 + 14) = v5;
                          _os_log_impl(&dword_1C6F5C000, v63, v64, "Could not find value for %s in %s!", v65, 0x16u);
                          swift_arrayDestroy();
                          v71 = v66;
                          v2 = &qword_1EDD0A000;
                          MEMORY[0x1CCA5F8E0](v71, -1, -1);
                          v72 = v65;
                          v11 = v173;
                          MEMORY[0x1CCA5F8E0](v72, -1, -1);
                        }

                        else
                        {
                        }

                        v34 = v22;
LABEL_59:
                        v9 = v176;
LABEL_60:
                        v20 = v172;
                        goto LABEL_45;
                      }

                      v61 = v179;
                      v5 = v180;
                      if (!sub_1C75507FC())
                      {

                        v9 = v176;
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v73 = sub_1C754FF1C();
                        __swift_project_value_buffer(v73, qword_1EDD0A030);
                        v5 = sub_1C754FEEC();
                        v74 = sub_1C755118C();
                        if (os_log_type_enabled(v5, v74))
                        {
                          v75 = swift_slowAlloc();
                          *v75 = 134217984;
                          *(v75 + 4) = v34;
                          _os_log_impl(&dword_1C6F5C000, v5, v74, "Skipping image caption with 0 length and confidence %f.", v75, 0xCu);
                          MEMORY[0x1CCA5F8E0](v75, -1, -1);
                        }

LABEL_81:
                        v34 = v22;
                        goto LABEL_60;
                      }

                      v20 = v172;
                      if (v22 < v34)
                      {
                        goto LABEL_52;
                      }

                      v9 = v176;
                      if (v34 == v22)
                      {
                        if (v166)
                        {
                          v76 = v165;
                        }

                        else
                        {
                          v76 = 0.0;
                        }

                        if (v166)
                        {
                          v77 = v166;
                        }

                        else
                        {
                          v77 = 0xE000000000000000;
                        }

                        if (*&v76 == *&v61 && v77 == v5)
                        {
                          sub_1C75504FC();

                          goto LABEL_81;
                        }

                        v79 = sub_1C7551DBC();
                        sub_1C75504FC();

                        v20 = v172;
                        if (v79)
                        {
LABEL_52:

                          v165 = v61;
                          v166 = v5;
                        }

                        else
                        {

                          v34 = v22;
                        }

LABEL_44:
                        v9 = v176;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      if (v2[5] != -1)
                      {
                        swift_once();
                      }

                      v35 = sub_1C754FF1C();
                      __swift_project_value_buffer(v35, qword_1EDD0A030);
                      sub_1C75504FC();
                      sub_1C73E64B0(v186, __src);
                      v5 = sub_1C754FEEC();
                      v36 = sub_1C755119C();
                      sub_1C73E6480(v186);

                      if (os_log_type_enabled(v5, v36))
                      {
                        v37 = swift_slowAlloc();
                        v38 = swift_slowAlloc();
                        *&__src[0] = v38;
                        *v37 = 136315394;
                        sub_1C75504FC();
                        v39 = sub_1C6F765A4(v175, v174, __src);

                        *(v37 + 4) = v39;
                        *(v37 + 12) = 2080;
                        v40 = sub_1C75504BC();
                        v42 = v41;

                        v43 = sub_1C6F765A4(v40, v42, __src);
                        v11 = v173;

                        *(v37 + 14) = v43;
                        v2 = &qword_1EDD0A000;
                        _os_log_impl(&dword_1C6F5C000, v5, v36, "Could not find value for %s in %s!", v37, 0x16u);
                        swift_arrayDestroy();
                        v44 = v38;
                        v20 = v172;
                        MEMORY[0x1CCA5F8E0](v44, -1, -1);
                        v45 = v37;
                        v9 = v176;
                        MEMORY[0x1CCA5F8E0](v45, -1, -1);
                      }

                      else
                      {
                      }
                    }

                    v34 = v22;
LABEL_45:
                    v23 += 8;
                    v22 = v34;
                    v21 = v177 - 1;
                    if (v177 == 1)
                    {

                      if (!v166)
                      {
                        v3 = v168;
                        goto LABEL_98;
                      }

                      swift_isUniquelyReferenced_nonNull_native();
                      *&__src[0] = v167;
                      v5 = v169;
                      sub_1C6FC80A4();

                      v167 = *&__src[0];
                      __swift_destroy_boxed_opaque_existential_1(v181);
                      sub_1C6FCA5E0(&v182);
                      v3 = v168;
                      v8 = v170;
                      goto LABEL_8;
                    }
                  }
                }

LABEL_98:
                v15 = v171;
              }
            }

            if (*(*&v15 + 16) && (v93 = v186[2], v94 = v186[3], v95 = v15, sub_1C75504FC(), v5 = sub_1C6F78124(v93, v94), v97 = v96, , (v97 & 1) != 0))
            {
              sub_1C6F774EC(*(*&v95 + 56) + 32 * v5, __src);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B50);
              if (swift_dynamicCast())
              {
                v98 = v179;
                v8 = v170;
                if (*(*&v179 + 16) != 1)
                {

                  if (v2[5] != -1)
                  {
                    swift_once();
                  }

                  v113 = sub_1C754FF1C();
                  __swift_project_value_buffer(v113, qword_1EDD0A030);
                  sub_1C75504FC();
                  v5 = sub_1C754FEEC();
                  v114 = sub_1C755119C();
                  if (os_log_type_enabled(v5, v114))
                  {
                    v115 = swift_slowAlloc();
                    v116 = swift_slowAlloc();
                    *&__src[0] = v116;
                    *v115 = 134218242;
                    *(v115 + 4) = *(*&v98 + 16);

                    *(v115 + 12) = 2080;
                    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8E8);
                    v118 = MEMORY[0x1CCA5D090](*&v98, v117);
                    v120 = v119;

                    v121 = v118;
                    v2 = &qword_1EDD0A000;
                    v122 = sub_1C6F765A4(v121, v120, __src);
                    v11 = v173;

                    *(v115 + 14) = v122;
                    _os_log_impl(&dword_1C6F5C000, v5, v114, "Video captions did not return exactly 1 result, instead got %ld results: %s!", v115, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1(v116);
                    v123 = v116;
                    v9 = v176;
                    MEMORY[0x1CCA5F8E0](v123, -1, -1);
                    MEMORY[0x1CCA5F8E0](v115, -1, -1);
                  }

                  else
                  {
                    swift_bridgeObjectRelease_n();
                  }

                  __swift_destroy_boxed_opaque_existential_1(v181);
                  sub_1C6FCA5E0(&v182);
                  v3 = v168;
                  continue;
                }

                v100 = v187;
                v99 = v188;
                v101 = *(*&v179 + 32);
                v102 = *(v101 + 16);
                sub_1C75504FC();
                if (v102 && (sub_1C75504FC(), v103 = sub_1C6F78124(v100, v99), v105 = v104, , (v105 & 1) != 0))
                {
                  v106 = *(*(v101 + 56) + 8 * v103);
                  sub_1C75504FC();

                  v108 = v193;
                  v107 = v194;
                  if (*(v106 + 16))
                  {
                    sub_1C75504FC();
                    v109 = sub_1C6F78124(v108, v107);
                    v111 = v110;

                    if (v111)
                    {
                      sub_1C6F774EC(*(v106 + 56) + 32 * v109, __src);
                      if (swift_dynamicCast())
                      {

                        v5 = *&v179;
                        v112 = v180;
                        if (sub_1C75507FC())
                        {
                          v9 = v176;
                          if (!v5 && v112 == 0xE000000000000000)
                          {

                            goto LABEL_145;
                          }

                          v149 = sub_1C7551DBC();

                          if (v149)
                          {

                            goto LABEL_133;
                          }

LABEL_145:
                        }

                        else
                        {

                          v9 = v176;
                          if (qword_1EDD0A028 != -1)
                          {
                            swift_once();
                          }

                          v145 = sub_1C754FF1C();
                          __swift_project_value_buffer(v145, qword_1EDD0A030);
                          v146 = sub_1C754FEEC();
                          v147 = sub_1C755118C();
                          if (os_log_type_enabled(v146, v147))
                          {
                            v148 = swift_slowAlloc();
                            *v148 = 0;
                            _os_log_impl(&dword_1C6F5C000, v146, v147, "Skipping video caption with 0 length.", v148, 2u);
                            MEMORY[0x1CCA5F8E0](v148, -1, -1);
                          }
                        }

                        v5 = 0;
                        v112 = 0;
                        goto LABEL_133;
                      }
                    }
                  }

                  if (qword_1EDD0A028 != -1)
                  {
                    swift_once();
                  }

                  v135 = sub_1C754FF1C();
                  __swift_project_value_buffer(v135, qword_1EDD0A030);
                  sub_1C73E64B0(v186, __src);
                  sub_1C75504FC();
                  v136 = sub_1C754FEEC();
                  v137 = sub_1C755119C();
                  sub_1C73E6480(v186);

                  if (os_log_type_enabled(v136, v137))
                  {
                    v138 = swift_slowAlloc();
                    v139 = swift_slowAlloc();
                    *&__src[0] = v139;
                    *v138 = 136315394;
                    sub_1C75504FC();
                    v140 = sub_1C6F765A4(v108, v107, __src);

                    *(v138 + 4) = v140;
                    *(v138 + 12) = 2080;
                    v141 = sub_1C75504BC();
                    v143 = v142;

                    v144 = sub_1C6F765A4(v141, v143, __src);

                    *(v138 + 14) = v144;
                    _os_log_impl(&dword_1C6F5C000, v136, v137, "Could not find value for %s in %s!", v138, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1CCA5F8E0](v139, -1, -1);
                    v8 = v170;
                    MEMORY[0x1CCA5F8E0](v138, -1, -1);
                  }

                  else
                  {
                  }

                  v5 = 0;
                  v112 = 0;
                  v11 = v173;
                }

                else
                {
                  if (qword_1EDD0A028 != -1)
                  {
                    swift_once();
                  }

                  v124 = sub_1C754FF1C();
                  __swift_project_value_buffer(v124, qword_1EDD0A030);
                  sub_1C73E64B0(v186, __src);
                  sub_1C75504FC();
                  v125 = sub_1C754FEEC();
                  v126 = sub_1C755119C();
                  sub_1C73E6480(v186);

                  if (os_log_type_enabled(v125, v126))
                  {
                    v127 = swift_slowAlloc();
                    v128 = swift_slowAlloc();
                    *&__src[0] = v128;
                    *v127 = 136315394;
                    sub_1C75504FC();
                    v129 = sub_1C6F765A4(v100, v99, __src);

                    *(v127 + 4) = v129;
                    *(v127 + 12) = 2080;
                    v130 = sub_1C75504BC();
                    v132 = v131;

                    v133 = sub_1C6F765A4(v130, v132, __src);

                    *(v127 + 14) = v133;
                    _os_log_impl(&dword_1C6F5C000, v125, v126, "Could not find value for %s in %s!", v127, 0x16u);
                    swift_arrayDestroy();
                    v8 = v170;
                    MEMORY[0x1CCA5F8E0](v128, -1, -1);
                    v134 = v127;
                    v11 = v173;
                    MEMORY[0x1CCA5F8E0](v134, -1, -1);
                  }

                  else
                  {
                  }

                  v5 = 0;
                  v112 = 0;
                }

                v9 = v176;
LABEL_133:

                if (v112)
                {
                  swift_isUniquelyReferenced_nonNull_native();
                  *&__src[0] = v167;
                  v5 = v169;
                  sub_1C6FC80A4();

                  v167 = *&__src[0];
                }

                else
                {
                }

                __swift_destroy_boxed_opaque_existential_1(v181);
                sub_1C6FCA5E0(&v182);
                v2 = &qword_1EDD0A000;
                v3 = v168;
                continue;
              }
            }

            else
            {
            }

            __swift_destroy_boxed_opaque_existential_1(v181);
            sub_1C6FCA5E0(&v182);
            v8 = v170;
            continue;
          }

          if (v2[5] != -1)
          {
            swift_once();
          }

          v90 = sub_1C754FF1C();
          __swift_project_value_buffer(v90, qword_1EDD0A030);
          v5 = sub_1C754FEEC();
          v91 = sub_1C755119C();
          if (os_log_type_enabled(v5, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_1C6F5C000, v5, v91, "Value in caption result dictionary was not a dictionary!", v92, 2u);
            v89 = v92;
LABEL_90:
            MEMORY[0x1CCA5F8E0](v89, -1, -1);
          }
        }

        else
        {
          if (v2[5] != -1)
          {
            swift_once();
          }

          v80 = sub_1C754FF1C();
          __swift_project_value_buffer(v80, qword_1EDD0A030);
          sub_1C6FCA584(&v182, __src);
          v5 = sub_1C754FEEC();
          v81 = sub_1C755119C();
          if (os_log_type_enabled(v5, v81))
          {
            v82 = swift_slowAlloc();
            *&v83 = COERCE_DOUBLE(swift_slowAlloc());
            v179 = *&v83;
            *v82 = 136315138;
            v84 = sub_1C755173C();
            v86 = v85;
            sub_1C6FCA5E0(__src);
            v87 = sub_1C6F765A4(v84, v86, &v179);
            v2 = &qword_1EDD0A000;

            *(v82 + 4) = v87;
            _os_log_impl(&dword_1C6F5C000, v5, v81, "Key in caption result dictionary was not a string, it was %s!", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v83);
            v88 = v83;
            v9 = v176;
            MEMORY[0x1CCA5F8E0](v88, -1, -1);
            v89 = v82;
            v3 = v168;
            goto LABEL_90;
          }

          sub_1C6FCA5E0(__src);
        }

        __swift_destroy_boxed_opaque_existential_1(v181);
        sub_1C6FCA5E0(&v182);
        continue;
      }

      break;
    }

    sub_1C73E6480(v186);
    if (v2[5] != -1)
    {
      swift_once();
    }

    v150 = sub_1C754FF1C();
    __swift_project_value_buffer(v150, qword_1EDD0A030);
    sub_1C75504FC();
    sub_1C75504FC();
    v151 = sub_1C754FEEC();
    v152 = sub_1C755118C();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 134218240;
      *(v153 + 4) = *(v167 + 16);

      *(v153 + 12) = 2048;
      *(v153 + 14) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v151, v152, "Received captions for %ld/%ld assets!", v153, 0x16u);
      MEMORY[0x1CCA5F8E0](v153, -1, -1);
    }

    else
    {
    }

    *&__src[0] = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8);
    return sub_1C7550CAC();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1C73E642C();
      v5 = swift_allocError();
      *v154 = 0;
      v154[1] = 0;
    }

    v155 = a2;
    if (qword_1EDD0A028 != -1)
    {
LABEL_159:
      swift_once();
    }

    v156 = sub_1C754FF1C();
    __swift_project_value_buffer(v156, qword_1EDD0A030);
    v157 = v5;
    v158 = sub_1C754FEEC();
    v159 = sub_1C755119C();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138412290;
      v162 = v5;
      v163 = _swift_stdlib_bridgeErrorToNSError();
      *(v160 + 4) = v163;
      *v161 = v163;
      _os_log_impl(&dword_1C6F5C000, v158, v159, "Failed to get asset captions from mediaanalysisd: %@!", v160, 0xCu);
      sub_1C6FC15D8(v161);
      MEMORY[0x1CCA5F8E0](v161, -1, -1);
      MEMORY[0x1CCA5F8E0](v160, -1, -1);
    }

    v186[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8);
    return sub_1C7550C9C();
  }
}

id AssetCaptionGenerator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___PNAssetCaptionGenerator_currentVideoCaptionPreferenceRequestID];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR___PNAssetCaptionGenerator_currentAssetCaptionRequestID];
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetCaptionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C73E642C()
{
  result = qword_1EC21B8E0;
  if (!qword_1EC21B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B8E0);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_15Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1C73E6630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_18(v8);
  v10 = v9;
  v12 = v11;
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v14);
  v16 = *(v5 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v13, v15, v16);
}

uint64_t sub_1C73E6700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1C73E6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}