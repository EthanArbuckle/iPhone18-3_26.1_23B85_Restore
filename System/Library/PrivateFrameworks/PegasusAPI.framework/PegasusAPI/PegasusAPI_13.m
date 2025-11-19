uint64_t static Aspiresnippetpb_GeoPoi.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8DF7878(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_9();
  sub_1B8CD1A78(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DF7878(uint64_t a1, uint64_t a2)
{
  v153 = type metadata accessor for Aspiresnippetpb_MapRegion(0);
  v4 = OUTLINED_FUNCTION_59_1(v153);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v150 = v7;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAC48, &qword_1B9655E38);
  OUTLINED_FUNCTION_59_1(v152);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v148 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB68, &qword_1B96558F8);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  v151 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v148 - v19;
  v160 = type metadata accessor for Geopb_Timezone(0);
  v20 = OUTLINED_FUNCTION_59_1(v160);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v155 = v23;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAC50, &unk_1B9655E40);
  OUTLINED_FUNCTION_59_1(v159);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v161 = &v148 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB48, &qword_1B96558F0);
  v29 = OUTLINED_FUNCTION_183(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_66();
  v156 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v168 = &v148 - v35;
  v166 = type metadata accessor for Geopb_StructuredAddress(0);
  v36 = OUTLINED_FUNCTION_59_1(v166);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21();
  v157 = v39;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAC58, &qword_1B9656380);
  OUTLINED_FUNCTION_59_1(v164);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v42);
  v167 = &v148 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  v45 = OUTLINED_FUNCTION_183(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_66();
  v162 = (v48 - v49);
  MEMORY[0x1EEE9AC00](v50);
  v165 = &v148 - v51;
  v52 = type metadata accessor for Locationpb_Point(0);
  v53 = OUTLINED_FUNCTION_59_1(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21();
  v163 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_59_1(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v148 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  v64 = OUTLINED_FUNCTION_183(v63);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_66();
  v69 = v67 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v148 - v71;
  OUTLINED_FUNCTION_521();
  v73 = a1;
  v75 = *(a1 + 16);
  v74 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v76 = *(a2 + 24);
  if (v74)
  {
    if (!v76)
    {
      return 0;
    }

    v77 = v75 == *(a2 + 16) && v74 == v76;
    if (!v77 && (sub_1B964C9F0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v76)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v78 = *(v73 + 32);
  v79 = *(v73 + 40);
  OUTLINED_FUNCTION_521();
  v80 = *(a2 + 40);
  if (v79)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v78 != *(a2 + 32))
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_521();
  v81 = *(v73 + 48);
  v82 = *(v73 + 56);
  OUTLINED_FUNCTION_521();
  v83 = v81 == *(a2 + 48) && v82 == *(a2 + 56);
  if (!v83 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v149 = a2;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_521();
  v84 = *(v57 + 48);
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v62, 1, v52);
  if (v77)
  {

    sub_1B8D9207C(v72, &qword_1EBAB9280, &qword_1B96535F0);
    OUTLINED_FUNCTION_178(&v62[v84], 1, v52);
    v85 = v73;
    if (v77)
    {
      sub_1B8D9207C(v62, &qword_1EBAB9280, &qword_1B96535F0);
      goto LABEL_31;
    }

LABEL_29:
    v87 = &qword_1EBAB9288;
    v88 = &unk_1B964DA70;
    v89 = v62;
    goto LABEL_50;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v62[v84], 1, v52);
  if (v86)
  {

    sub_1B8D9207C(v72, &qword_1EBAB9280, &qword_1B96535F0);
    sub_1B8DF8A40();
    goto LABEL_29;
  }

  v90 = v163;
  sub_1B8DF8990();

  v91 = static Locationpb_Point.== infix(_:_:)(v69, v90);
  sub_1B8DF8A40();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v92, v93, v94);
  v85 = v73;
  sub_1B8DF8A40();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v95, v96, v97);
  if ((v91 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_31:
  OUTLINED_FUNCTION_521();
  v98 = v165;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_521();
  v99 = *(v164 + 48);
  v100 = v167;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v101 = v166;
  OUTLINED_FUNCTION_178(v100, 1, v166);
  if (v77)
  {
    sub_1B8D9207C(v98, &qword_1EBABAB38, &qword_1B96558E8);
    OUTLINED_FUNCTION_178(v100 + v99, 1, v101);
    v102 = v168;
    if (v77)
    {
      sub_1B8D9207C(v100, &qword_1EBABAB38, &qword_1B96558E8);
      goto LABEL_41;
    }

LABEL_39:
    v87 = &qword_1EBABAC58;
    v88 = &qword_1B9656380;
    v89 = v100;
    goto LABEL_50;
  }

  v103 = v162;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v100 + v99, 1, v101);
  v102 = v168;
  if (v104)
  {
    sub_1B8D9207C(v98, &qword_1EBABAB38, &qword_1B96558E8);
    sub_1B8DF8A40();
    goto LABEL_39;
  }

  v105 = v157;
  sub_1B8DF8990();
  v106 = static Geopb_StructuredAddress.== infix(_:_:)(v103, v105);
  sub_1B8DF8A40();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v107, v108, v109);
  sub_1B8DF8A40();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v110, v111, v112);
  if ((v106 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_41:
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v113 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__timezone;
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_521();
  v114 = *(v159 + 48);
  v115 = v161;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_4();
  sub_1B8D92024();
  v116 = v160;
  OUTLINED_FUNCTION_178(v115, 1, v160);
  if (!v77)
  {
    v118 = v156;
    sub_1B8D92024();
    OUTLINED_FUNCTION_57(v115 + v114);
    if (!v119)
    {
      OUTLINED_FUNCTION_0_10();
      v121 = v155;
      sub_1B8DF8990();
      v122 = *v118 == *v121 && v118[1] == v121[1];
      if (v122 || (sub_1B964C9F0() & 1) != 0)
      {
        v123 = *(v116 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_1_9();
        sub_1B8CD1A78(v124, v125);
        v126 = sub_1B964C850();
        sub_1B8DF8A40();
        OUTLINED_FUNCTION_112_1();
        sub_1B8D9207C(v127, v128, v129);
        sub_1B8DF8A40();
        OUTLINED_FUNCTION_112_1();
        v117 = v158;
        sub_1B8D9207C(v130, v131, v132);
        if (v126)
        {
          goto LABEL_59;
        }

LABEL_51:

        return 0;
      }

      sub_1B8DF8A40();
      sub_1B8D9207C(v102, &qword_1EBABAB48, &qword_1B96558F0);
      sub_1B8DF8A40();
      v89 = v161;
      v87 = &qword_1EBABAB48;
      v88 = &qword_1B96558F0;
LABEL_50:
      sub_1B8D9207C(v89, v87, v88);
      goto LABEL_51;
    }

    sub_1B8D9207C(v102, &qword_1EBABAB48, &qword_1B96558F0);
    sub_1B8DF8A40();
LABEL_49:
    v87 = &qword_1EBABAC50;
    v88 = &unk_1B9655E40;
    v89 = v115;
    goto LABEL_50;
  }

  sub_1B8D9207C(v102, &qword_1EBABAB48, &qword_1B96558F0);
  OUTLINED_FUNCTION_57(v115 + v114);
  v117 = v158;
  if (!v77)
  {
    goto LABEL_49;
  }

  sub_1B8D9207C(v115, &qword_1EBABAB48, &qword_1B96558F0);
LABEL_59:
  v133 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  OUTLINED_FUNCTION_521();
  v134 = *(v85 + v133);
  v135 = OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__popularityScore;
  OUTLINED_FUNCTION_521();
  if (v134 != *(v113 + v135))
  {
    goto LABEL_51;
  }

  v136 = (v85 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  OUTLINED_FUNCTION_521();
  v137 = *v136;
  v138 = v136[1];
  v139 = (v149 + OBJC_IVAR____TtCV10PegasusAPI22Aspiresnippetpb_GeoPoiP33_1C02B3B8F181B0ECB14E471192F8D74613_StorageClass__modernPrimaryCategoryID);
  OUTLINED_FUNCTION_521();
  v140 = v137 == *v139 && v138 == v139[1];
  if (!v140 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_51;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_521();
  v141 = *(v152 + 48);
  v142 = v154;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v143 = v153;
  OUTLINED_FUNCTION_178(v142, 1, v153);
  if (v77)
  {

    sub_1B8D9207C(v117, &qword_1EBABAB68, &qword_1B96558F8);
    OUTLINED_FUNCTION_178(v142 + v141, 1, v143);
    if (v77)
    {
      sub_1B8D9207C(v142, &qword_1EBABAB68, &qword_1B96558F8);
      return 1;
    }

    goto LABEL_73;
  }

  v144 = v151;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v142 + v141, 1, v143);
  if (v145)
  {

    sub_1B8D9207C(v158, &qword_1EBABAB68, &qword_1B96558F8);
    sub_1B8DF8A40();
LABEL_73:
    sub_1B8D9207C(v142, &qword_1EBABAC48, &qword_1B9655E38);
    return 0;
  }

  v146 = v150;
  sub_1B8DF8990();
  v147 = static Aspiresnippetpb_MapRegion.== infix(_:_:)(v144, v146);

  sub_1B8DF8A40();
  sub_1B8D9207C(v158, &qword_1EBABAB68, &qword_1B96558F8);
  sub_1B8DF8A40();
  sub_1B8D9207C(v142, &qword_1EBABAB68, &qword_1B96558F8);
  return (v147 & 1) != 0;
}

uint64_t sub_1B8DF86E0(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1A78(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DF87C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1A78(&qword_1EBABAC30, type metadata accessor for Aspiresnippetpb_GeoPoi);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DF8840(uint64_t a1)
{
  v2 = sub_1B8CD1A78(&qword_1EBABAB80, type metadata accessor for Aspiresnippetpb_GeoPoi);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DF88B0()
{
  sub_1B8CD1A78(&qword_1EBABAB80, type metadata accessor for Aspiresnippetpb_GeoPoi);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DF8990()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DF89E8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DF8A40()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1B8DF8E44()
{
  sub_1B8DF91EC(319, &qword_1EBABABF0, type metadata accessor for Aspiresnippetpb_GeoPoi, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8DF8F30()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Aspiresnippetpb_GeoPoi._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8DF8FBC()
{
  sub_1B8DF91EC(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B8DF91EC(319, &qword_1EBABAC18, type metadata accessor for Geopb_StructuredAddress, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B8DF91EC(319, &qword_1EBABAC20, type metadata accessor for Geopb_Timezone, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B8DF91EC(319, &qword_1EBABAC28, type metadata accessor for Aspiresnippetpb_MapRegion, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B8DF91EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_8_6()
{
  result = type metadata accessor for Aspiresnippetpb_GeoPoi(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{
  v0 = type metadata accessor for Aspiresnippetpb_GeoPoi._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return type metadata accessor for Aspiresnippetpb_GeoPoi(0);
}

uint64_t OUTLINED_FUNCTION_15_3()
{
  v1 = *(v0 + *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1B964C6B0();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  result = *(v0 + 8) + v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_0()
{
  v1 = *(v0 + *(type metadata accessor for Aspiresnippetpb_GeoPoi(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_1B8DF8990();
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return sub_1B8DAA170();
}

uint64_t OUTLINED_FUNCTION_68_1()
{

  return sub_1B8DF8990();
}

uint64_t Aspiresnippetpb_LandmarkSnippet.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  v3 = a1 + *(v2 + 36);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 40);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t type metadata accessor for Aspiresnippetpb_LandmarkSnippet()
{
  result = qword_1EBABACA8;
  if (!qword_1EBABACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Aspiresnippetpb_LandmarkSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locationpb_Point(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v22 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  v25 = *(v24 + 40);
  v26 = *(v16 + 48);
  sub_1B8DF97C0(a1 + v25, v21);
  sub_1B8DF97C0(a2 + v25, &v21[v26]);
  OUTLINED_FUNCTION_117(v21);
  if (v22)
  {
    OUTLINED_FUNCTION_117(&v21[v26]);
    if (v22)
    {
      sub_1B8D9207C(v21, &qword_1EBAB9280, &qword_1B96535F0);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v21, &qword_1EBAB9288, &unk_1B964DA70);
LABEL_25:
    v33 = 0;
    return v33 & 1;
  }

  sub_1B8DF97C0(v21, v15);
  OUTLINED_FUNCTION_117(&v21[v26]);
  if (v27)
  {
    sub_1B8DFABA8(v15);
    goto LABEL_19;
  }

  sub_1B8DFAC04(&v21[v26], v9);
  v28 = static Locationpb_Point.== infix(_:_:)(v15, v9);
  sub_1B8DFABA8(v9);
  sub_1B8DFABA8(v15);
  sub_1B8D9207C(v21, &qword_1EBAB9280, &qword_1B96535F0);
  if ((v28 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_25;
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    goto LABEL_25;
  }

  v29 = *(a1 + 40);
  v30 = *(a2 + 40);
  sub_1B8D7B95C();
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

  v32 = *(v24 + 36);
  sub_1B964C2B0();
  sub_1B8CD1AC0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v33 = sub_1B964C850();
  return v33 & 1;
}

uint64_t sub_1B8DF97C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.locationPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v17 - v6;
  v8 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  sub_1B8DF97C0(v1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Locationpb_Point(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    return sub_1B8DFAC04(v7, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v10 = a1 + *(v9 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(v9 + 36);
  sub_1B964C130();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  result = __swift_getEnumTagSinglePayload(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B8D9207C(v7, &qword_1EBAB9280, &qword_1B96535F0);
  }

  return result;
}

uint64_t sub_1B8DF9A6C(uint64_t a1)
{
  v2 = type metadata accessor for Locationpb_Point(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8DFAC68(a1, v5);
  return Aspiresnippetpb_LandmarkSnippet.locationPoint.setter(v5);
}

uint64_t Aspiresnippetpb_LandmarkSnippet.locationPoint.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Aspiresnippetpb_LandmarkSnippet() + 40);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DFAC04(a1, v1 + v3);
  v4 = type metadata accessor for Locationpb_Point(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Aspiresnippetpb_LandmarkSnippet.locationPoint.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Locationpb_Point(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Aspiresnippetpb_LandmarkSnippet() + 40);
  *(v3 + 10) = v11;
  sub_1B8DF97C0(v1 + v11, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    *(v10 + 24) = 1;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v13 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v7 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_117(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    sub_1B8DFAC04(v6, v10);
  }

  return sub_1B8DF9CEC;
}

void sub_1B8DF9CEC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B8DFAC68((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9280, &qword_1B96535F0);
    sub_1B8DFAC04(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8DFABA8(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB9280, &qword_1B96535F0);
    sub_1B8DFAC04(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Aspiresnippetpb_LandmarkSnippet.hasLocationPoint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  sub_1B8DF97C0(v0 + *(v7 + 40), v6);
  v8 = type metadata accessor for Locationpb_Point(0);
  v9 = __swift_getEnumTagSinglePayload(v6, 1, v8) != 1;
  sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
  return v9;
}

Swift::Void __swiftcall Aspiresnippetpb_LandmarkSnippet.clearLocationPoint()()
{
  v1 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  sub_1B8D9207C(v0 + *(v1 + 40), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Aspiresnippetpb_LandmarkSnippet.localizedNames.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Aspiresnippetpb_LandmarkSnippet() + 36);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Aspiresnippetpb_LandmarkSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Aspiresnippetpb_LandmarkSnippet() + 36);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B8DFA0F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAC70);
  __swift_project_value_buffer(v0, qword_1EBABAC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "location_point";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "popularity";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "coverage";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "localized_names";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Aspiresnippetpb_LandmarkSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB60B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABAC70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Aspiresnippetpb_LandmarkSnippet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8DFA52C();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8DFA5E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DFA52C()
{
  v0 = *(type metadata accessor for Aspiresnippetpb_LandmarkSnippet() + 40);
  type metadata accessor for Locationpb_Point(0);
  sub_1B8CD1AC0(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  return sub_1B964C580();
}

uint64_t sub_1B8DFA5E0()
{
  type metadata accessor for Geopb_BusinessCard.LocalizedName(0);
  sub_1B8CD1AC0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName);
  return sub_1B964C570();
}

uint64_t Aspiresnippetpb_LandmarkSnippet.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Locationpb_Point(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v0;
  v15 = *(v0 + 1);
  OUTLINED_FUNCTION_1();
  if (!v16 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    v18 = *(v0 + 2);
    v19 = *(v0 + 3);
    OUTLINED_FUNCTION_1();
    if (!v20 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      v23 = type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
      sub_1B8DF97C0(v0 + *(v23 + 40), v7);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        sub_1B8D9207C(v7, &qword_1EBAB9280, &qword_1B96535F0);
      }

      else
      {
        sub_1B8DFAC04(v7, v13);
        sub_1B8CD1AC0(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
        OUTLINED_FUNCTION_79_0();
        sub_1B964C740();
        result = sub_1B8DFABA8(v13);
        if (v1)
        {
          return result;
        }
      }

      if (v0[8] == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
      {
        if (v0[9] == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
        {
          if (!*(*(v0 + 5) + 16) || (type metadata accessor for Geopb_BusinessCard.LocalizedName(0), sub_1B8CD1AC0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
          {
            v21 = v0 + *(v23 + 36);
            OUTLINED_FUNCTION_12();
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Aspiresnippetpb_LandmarkSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Aspiresnippetpb_LandmarkSnippet();
  sub_1B8CD1AC0(&qword_1EBABAC90, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DFAA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1AC0(&qword_1EBABACC0, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DFAAB8(uint64_t a1)
{
  v2 = sub_1B8CD1AC0(&qword_1EBABAAB0, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DFAB28()
{
  sub_1B8CD1AC0(&qword_1EBABAAB0, type metadata accessor for Aspiresnippetpb_LandmarkSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DFABA8(uint64_t a1)
{
  v2 = type metadata accessor for Locationpb_Point(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8DFAC04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locationpb_Point(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8DFAC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locationpb_Point(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B8DFAE14()
{
  sub_1B8DFAF2C(319, &qword_1EBABACB8, type metadata accessor for Geopb_BusinessCard.LocalizedName, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8DFAF2C(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8DFAF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Aspiresnippetpb_StorefrontListSnippet.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Aspiresnippetpb_StorefrontListSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *v0;
  v3 = *v2;
  sub_1B8D74864();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_8_7();
  sub_1B8CD1B08(v6, v7);
  return sub_1B964C850() & 1;
}

uint64_t Aspiresnippetpb_StorefrontListSnippet.pois.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Aspiresnippetpb_StorefrontListSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Aspiresnippetpb_StorefrontListSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Aspiresnippetpb_StorefrontListSnippet.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(v0) + 20);
  return nullsub_1;
}

uint64_t Aspiresnippetpb_StorefrontPoi.id.getter()
{
  OUTLINED_FUNCTION_4_8();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_521();
  return *(v2 + 16);
}

uint64_t Aspiresnippetpb_StorefrontPoi.id.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DFD2B4(v8);
    *(v2 + v4) = v7;
  }

  result = OUTLINED_FUNCTION_18();
  *(v7 + 16) = v0;
  return result;
}

void (*Aspiresnippetpb_StorefrontPoi.id.modify())(uint64_t *a1)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_8();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  *(v1 + 72) = *(v4 + 16);
  return sub_1B8DFB328;
}

void sub_1B8DFB328(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_5_5();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DFD2B4(v10);
    *(v9 + v8) = v7;
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 16) = v2;

  free(v1);
}

uint64_t Aspiresnippetpb_StorefrontPoi.location.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_4_8();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v10 = type metadata accessor for Geopb_LatLng(0);
  OUTLINED_FUNCTION_178(v7, 1, v10);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0;
    v12 = a1 + v10[6];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = v10[7];
    sub_1B964C1C0();
    OUTLINED_FUNCTION_16_6(a1 + v13);
    OUTLINED_FUNCTION_16_6(a1 + v10[8]);
    result = OUTLINED_FUNCTION_178(v7, 1, v10);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAD00, &unk_1B9656000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    return sub_1B8DFF024();
  }

  return result;
}

uint64_t Aspiresnippetpb_StorefrontPoi.location.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = *(OUTLINED_FUNCTION_15_4() + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B8DFD2B4(v9);
  }

  OUTLINED_FUNCTION_0_11();
  sub_1B8DFF024();
  v10 = type metadata accessor for Geopb_LatLng(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void (*Aspiresnippetpb_StorefrontPoi.location.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Geopb_LatLng(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_4_8();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v10 = 0;
    v10[1] = 0;
    v14 = v10 + v7[6];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = v7[7];
    sub_1B964C1C0();
    OUTLINED_FUNCTION_16_6(v10 + v15);
    OUTLINED_FUNCTION_16_6(v10 + v7[8]);
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBABAD00, &unk_1B9656000);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1B8DFF024();
  }

  return sub_1B8DFB798;
}

uint64_t sub_1B8DFB830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_StorefrontPoi.prefLocale.setter(v1, v2);
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefLocale.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_32_5(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8DFB918(void *a1)
{
  OUTLINED_FUNCTION_4_8();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B8DFB96C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_StorefrontPoi.prefName.setter(v1, v2);
}

uint64_t sub_1B8DFB9B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8DFD2B4(v12);
    *(v5 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = a1;
  v13[1] = a2;
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefName.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_32_5(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v7 = &v13 - v6;
  OUTLINED_FUNCTION_4_8();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v10 = type metadata accessor for Geopb_StructuredAddress(0);
  OUTLINED_FUNCTION_178(v7, 1, v10);
  if (v11)
  {
    Geopb_StructuredAddress.init()(a1);
    result = OUTLINED_FUNCTION_178(v7, 1, v10);
    if (!v11)
    {
      return sub_1B8D9207C(v7, &qword_1EBABAB38, &qword_1B96558E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_10();
    return sub_1B8DFF024();
  }

  return result;
}

uint64_t sub_1B8DFBBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_177_1();
  sub_1B8DFF07C();
  return a7(v12);
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefAddress.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = *(OUTLINED_FUNCTION_15_4() + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B8DFD2B4(v9);
  }

  OUTLINED_FUNCTION_1_10();
  sub_1B8DFF024();
  v10 = type metadata accessor for Geopb_StructuredAddress(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void (*Aspiresnippetpb_StorefrontPoi.prefAddress.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Geopb_StructuredAddress(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_4_8();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    v10[10] = 0;
    v10[11] = 0xE000000000000000;
    v10[12] = 0;
    v10[13] = 0xE000000000000000;
    v10[14] = 0;
    v10[15] = 0xE000000000000000;
    v10[16] = 0;
    v10[17] = 0xE000000000000000;
    v10[18] = MEMORY[0x1E69E7CC0];
    v14 = v10 + *(v7 + 56);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v6, &qword_1EBABAB38, &qword_1B96558E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_10();
    sub_1B8DFF024();
  }

  return sub_1B8DFBF20;
}

void sub_1B8DFBF4C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B8DFF07C();
    a3(v5);
    sub_1B8DFF0D4();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1B8DFC02C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_4_8();
  v16 = *(v4 + v15);
  v17 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v18 = a4(0);
  OUTLINED_FUNCTION_178(v14, 1, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1B8D9207C(v14, a1, a2);
  return v20;
}

uint64_t sub_1B8DFC134(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v7 + v14) = sub_1B8DFD2B4(v18);
  }

  v19 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *a4;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8DFC244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_StorefrontPoi.prefPhone.setter(v1, v2);
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefPhone.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_32_5(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Aspiresnippetpb_StorefrontPoi.localizedName.getter()
{
  OUTLINED_FUNCTION_4_8();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  OUTLINED_FUNCTION_521();
  v4 = *(v2 + v3);
}

uint64_t sub_1B8DFC368(uint64_t *a1)
{
  v1 = *a1;

  return Aspiresnippetpb_StorefrontPoi.localizedName.setter();
}

uint64_t Aspiresnippetpb_StorefrontPoi.localizedName.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_5();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8DFD2B4(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  OUTLINED_FUNCTION_18();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

uint64_t Aspiresnippetpb_StorefrontPoi.localizedName.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_4_8();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DFC498(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Aspiresnippetpb_StorefrontPoi.localizedName.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_5_5();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8DFD2B4(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
    OUTLINED_FUNCTION_18();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t sub_1B8DFC560(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Aspiresnippetpb_StorefrontPoi.prefCategoryID.setter(v1, v2);
}

uint64_t Aspiresnippetpb_StorefrontPoi.prefCategoryID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_32_5(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8DFC63C(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v4 + 64);
    v9 = *(*a1 + 56);

    a4(v5, v6);
    v10 = *(v4 + 56);
  }

  else
  {
    v12 = *(v4 + 72);
    v13 = *(v4 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 72);
      v18 = *(v4 + 64);
      OUTLINED_FUNCTION_5_5();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B8DFD2B4(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *a3);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v5;
    v20[1] = v6;
  }

  free(v4);
}

uint64_t Aspiresnippetpb_StorefrontPoi.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Aspiresnippetpb_StorefrontPoi.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t Aspiresnippetpb_StorefrontPoi.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(0) + 20);
  if (qword_1EBAB60D0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABACF8;
}

uint64_t sub_1B8DFC884()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABACC8);
  __swift_project_value_buffer(v0, qword_1EBABACC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "pois";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t Aspiresnippetpb_StorefrontListSnippet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_288();
      sub_1B8DFCA78();
    }
  }

  return result;
}

uint64_t sub_1B8DFCA78()
{
  type metadata accessor for Aspiresnippetpb_StorefrontPoi(0);
  sub_1B8CD1B08(&qword_1EBABAD40, type metadata accessor for Aspiresnippetpb_StorefrontPoi);
  return sub_1B964C570();
}

uint64_t Aspiresnippetpb_StorefrontListSnippet.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Aspiresnippetpb_StorefrontPoi(0), sub_1B8CD1B08(&qword_1EBABAD40, type metadata accessor for Aspiresnippetpb_StorefrontPoi), result = sub_1B964C730(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Aspiresnippetpb_StorefrontListSnippet(0) + 20);
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DFCCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B08(&qword_1EBABADC0, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DFCD28(uint64_t a1)
{
  v2 = sub_1B8CD1B08(&qword_1EBABAAB8, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DFCD98()
{
  sub_1B8CD1B08(&qword_1EBABAAB8, type metadata accessor for Aspiresnippetpb_StorefrontListSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DFCE34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABACE0);
  __swift_project_value_buffer(v0, qword_1EBABACE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pref_locale";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "pref_name";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "pref_address";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "pref_phone";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "localized_name";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "pref_category_id";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8DFD1A8()
{
  v0 = type metadata accessor for Aspiresnippetpb_StorefrontPoi._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8DFD1E8();
  qword_1EBABACF8 = result;
  return result;
}

uint64_t sub_1B8DFD1E8()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__location;
  v2 = type metadata accessor for Geopb_LatLng(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefAddress;
  v6 = type metadata accessor for Geopb_StructuredAddress(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8DFD2B4(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v40 = v38 - v5;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__location;
  v8 = type metadata accessor for Geopb_LatLng(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefAddress;
  v38[1] = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefAddress;
  v12 = type metadata accessor for Geopb_StructuredAddress(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v39 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName) = MEMORY[0x1E69E7CC0];
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID);
  v41 = v14;
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  swift_beginAccess();
  v15 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v15;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  swift_beginAccess();
  v19 = v9[1];
  *v9 = v18;
  v9[1] = v17;

  v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  v23 = v10[1];
  *v10 = v22;
  v10[1] = v21;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = v13[1];
  *v13 = v26;
  v13[1] = v25;

  v28 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v39;
  swift_beginAccess();
  v31 = *(v2 + v30);
  *(v2 + v30) = v29;

  v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID);
  swift_beginAccess();
  v34 = *v32;
  v33 = v32[1];

  v35 = v41;
  swift_beginAccess();
  v36 = v35[1];
  *v35 = v34;
  v35[1] = v33;

  return v2;
}

uint64_t sub_1B8DFD704()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__location, &qword_1EBABAD00, &unk_1B9656000);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefAddress, &qword_1EBABAB38, &qword_1B96558E8);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID + 8);

  return v0;
}

uint64_t sub_1B8DFD7BC()
{
  v0 = sub_1B8DFD704();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Aspiresnippetpb_StorefrontPoi.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Aspiresnippetpb_StorefrontPoi(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Aspiresnippetpb_StorefrontPoi._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8DFD2B4(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8DFD8B0(v11, a1, a2, a3);
}

uint64_t sub_1B8DFD8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DFDA28();
        continue;
      case 2:
        sub_1B8DFDAAC();
        continue;
      case 3:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale;
        goto LABEL_11;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName;
        goto LABEL_11;
      case 5:
        sub_1B8DFDB88();
        continue;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone;
        goto LABEL_11;
      case 7:
        sub_1B8DFDC64();
        continue;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID;
LABEL_11:
        sub_1B8DFDD40(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8DFDA28()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8DFDAAC()
{
  swift_beginAccess();
  type metadata accessor for Geopb_LatLng(0);
  sub_1B8CD1B08(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DFDB88()
{
  swift_beginAccess();
  type metadata accessor for Geopb_StructuredAddress(0);
  sub_1B8CD1B08(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8DFDC64()
{
  swift_beginAccess();
  type metadata accessor for Geopb_BusinessCard.LocalizedName(0);
  sub_1B8CD1B08(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8DFDD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t Aspiresnippetpb_StorefrontPoi.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Aspiresnippetpb_StorefrontPoi(0);
  result = sub_1B8DFDE30(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8DFDE30(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v36 - v6;
  v7 = type metadata accessor for Geopb_StructuredAddress(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Geopb_LatLng(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C720(), !v1))
  {
    v37 = v7;
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1B8D9207C(v13, &qword_1EBABAD00, &unk_1B9656000);
    }

    else
    {
      sub_1B8DFF024();
      sub_1B8CD1B08(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng);
      sub_1B964C740();
      result = sub_1B8DFF0D4();
      if (v1)
      {
        return result;
      }
    }

    v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (, sub_1B964C700(), result = , !v2))
    {
      v21 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName);
      swift_beginAccess();
      v22 = *v21;
      v23 = v21[1];
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v22 & 0xFFFFFFFFFFFFLL;
      }

      v25 = v37;
      v26 = v39;
      if (!v24 || (, sub_1B964C700(), result = , !v2))
      {
        swift_beginAccess();
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v26, 1, v25) == 1)
        {
          sub_1B8D9207C(v26, &qword_1EBABAB38, &qword_1B96558E8);
        }

        else
        {
          sub_1B8DFF024();
          sub_1B8CD1B08(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress);
          sub_1B964C740();
          result = sub_1B8DFF0D4();
          if (v2)
          {
            return result;
          }
        }

        v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone);
        swift_beginAccess();
        v28 = *v27;
        v29 = v27[1];
        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (!v30 || (, sub_1B964C700(), result = , !v2))
        {
          v31 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
          swift_beginAccess();
          if (!*(*(a1 + v31) + 16) || (type metadata accessor for Geopb_BusinessCard.LocalizedName(0), sub_1B8CD1B08(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName), , sub_1B964C730(), result = , !v2))
          {
            v32 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID);
            result = swift_beginAccess();
            v33 = *v32;
            v34 = v32[1];
            v35 = HIBYTE(v34) & 0xF;
            if ((v34 & 0x2000000000000000) == 0)
            {
              v35 = v33 & 0xFFFFFFFFFFFFLL;
            }

            if (v35)
            {

              sub_1B964C700();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Aspiresnippetpb_StorefrontPoi.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_4_8();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8DFE538(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_8_7();
  sub_1B8CD1B08(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8DFE538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Geopb_StructuredAddress(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAC58, &qword_1B9656380);
  OUTLINED_FUNCTION_59_1(v96);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v92 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAB38, &qword_1B96558E8);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44_0();
  v95 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v92 - v21;
  v100 = type metadata accessor for Geopb_LatLng(0);
  v22 = OUTLINED_FUNCTION_59_1(v100);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABADC8, &qword_1B9656388);
  OUTLINED_FUNCTION_59_1(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v92 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAD00, &unk_1B9656000);
  v33 = OUTLINED_FUNCTION_183(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44_0();
  v99 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v92 - v38;
  OUTLINED_FUNCTION_521();
  v40 = *(a1 + 16);
  OUTLINED_FUNCTION_521();
  if (v40 != *(a2 + 16))
  {
    return 0;
  }

  v92 = v9;
  v93 = v4;
  v94 = v14;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v41 = *(v26 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v42 = v100;
  OUTLINED_FUNCTION_178(v31, 1, v100);
  if (v43)
  {

    sub_1B8D9207C(v39, &qword_1EBABAD00, &unk_1B9656000);
    OUTLINED_FUNCTION_178(&v31[v41], 1, v42);
    if (v43)
    {
      sub_1B8D9207C(v31, &qword_1EBABAD00, &unk_1B9656000);
      goto LABEL_16;
    }

LABEL_10:
    v44 = &qword_1EBABADC8;
    v45 = &qword_1B9656388;
    v46 = v31;
LABEL_11:
    sub_1B8D9207C(v46, v44, v45);
    goto LABEL_12;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v31[v41], 1, v42);
  if (v43)
  {

    sub_1B8D9207C(v39, &qword_1EBABAD00, &unk_1B9656000);
    sub_1B8DFF0D4();
    goto LABEL_10;
  }

  sub_1B8DFF024();

  v48 = static Geopb_LatLng.== infix(_:_:)();
  sub_1B8DFF0D4();
  v49 = OUTLINED_FUNCTION_177_1();
  sub_1B8D9207C(v49, v50, &unk_1B9656000);
  sub_1B8DFF0D4();
  sub_1B8D9207C(v31, &qword_1EBABAD00, &unk_1B9656000);
  if ((v48 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefLocale);
  OUTLINED_FUNCTION_7_7();
  v52 = *v51;
  v53 = v51[1];
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_6();
  if (v43)
  {
    v55 = v53 == v54;
  }

  else
  {
    v55 = 0;
  }

  if (!v55)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefName);
  OUTLINED_FUNCTION_7_7();
  v57 = *v56;
  v58 = v56[1];
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_6();
  if (!v43 || v58 != v59)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  OUTLINED_FUNCTION_521();
  v61 = v97;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521();
  v62 = *(v96 + 48);
  v63 = v94;
  sub_1B8D92024();
  sub_1B8D92024();
  v64 = v93;
  OUTLINED_FUNCTION_178(v63, 1, v93);
  if (!v43)
  {
    v65 = v95;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v63 + v62, 1, v64);
    if (!v66)
    {
      v67 = v92;
      sub_1B8DFF024();
      v68 = static Geopb_StructuredAddress.== infix(_:_:)(v65, v67);
      sub_1B8DFF0D4();
      OUTLINED_FUNCTION_112_1();
      sub_1B8D9207C(v69, v70, v71);
      sub_1B8DFF0D4();
      OUTLINED_FUNCTION_112_1();
      sub_1B8D9207C(v72, v73, v74);
      if (v68)
      {
        goto LABEL_36;
      }

LABEL_12:

      return 0;
    }

    sub_1B8D9207C(v61, &qword_1EBABAB38, &qword_1B96558E8);
    sub_1B8DFF0D4();
    goto LABEL_34;
  }

  sub_1B8D9207C(v61, &qword_1EBABAB38, &qword_1B96558E8);
  OUTLINED_FUNCTION_178(v63 + v62, 1, v64);
  if (!v43)
  {
LABEL_34:
    v44 = &qword_1EBABAC58;
    v45 = &qword_1B9656380;
    v46 = v63;
    goto LABEL_11;
  }

  sub_1B8D9207C(v63, &qword_1EBABAB38, &qword_1B96558E8);
LABEL_36:
  v75 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefPhone);
  OUTLINED_FUNCTION_7_7();
  v76 = *v75;
  v77 = v75[1];
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_6();
  if (v43)
  {
    v79 = v77 == v78;
  }

  else
  {
    v79 = 0;
  }

  if (!v79)
  {
    OUTLINED_FUNCTION_177_1();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v80 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  OUTLINED_FUNCTION_521();
  v81 = *(a1 + v80);
  v82 = OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__localizedName;
  OUTLINED_FUNCTION_521();
  v83 = *(a2 + v82);

  sub_1B8D7B95C();
  v85 = v84;

  if ((v85 & 1) == 0)
  {
    goto LABEL_12;
  }

  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI29Aspiresnippetpb_StorefrontPoiP33_DFB6AB38E135A66BA37A6C25F52F988F13_StorageClass__prefCategoryID);
  OUTLINED_FUNCTION_7_7();
  v87 = *v86;
  v88 = v86[1];
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_30_6();
  if (v43)
  {
    v90 = v88 == v89;
  }

  else
  {
    v90 = 0;
  }

  if (v90)
  {

    return 1;
  }

  OUTLINED_FUNCTION_177_1();
  v91 = sub_1B964C9F0();

  return (v91 & 1) != 0;
}

uint64_t sub_1B8DFED90(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1B08(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8DFEE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B08(&qword_1EBABADB8, type metadata accessor for Aspiresnippetpb_StorefrontPoi);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DFEEF4(uint64_t a1)
{
  v2 = sub_1B8CD1B08(&qword_1EBABAD40, type metadata accessor for Aspiresnippetpb_StorefrontPoi);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DFEF64()
{
  sub_1B8CD1B08(&qword_1EBABAD40, type metadata accessor for Aspiresnippetpb_StorefrontPoi);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DFF024()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DFF07C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8DFF0D4()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_1B8DFF390()
{
  sub_1B8DFF64C(319, &qword_1EBABAD88, type metadata accessor for Aspiresnippetpb_StorefrontPoi, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8DFF46C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Aspiresnippetpb_StorefrontPoi._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8DFF4F8()
{
  sub_1B8DFF64C(319, &qword_1EBABADB0, type metadata accessor for Geopb_LatLng, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B8DFF64C(319, &qword_1EBABAC18, type metadata accessor for Geopb_StructuredAddress, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B8DFF64C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_8()
{
  result = type metadata accessor for Aspiresnippetpb_StorefrontPoi(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v0 = type metadata accessor for Aspiresnippetpb_StorefrontPoi._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{

  return type metadata accessor for Aspiresnippetpb_StorefrontPoi(0);
}

uint64_t OUTLINED_FUNCTION_16_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t Debuglevelspb_AnyArray.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Debuglevelspb_AnyArray(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Debuglevelspb_AnyMap.map.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B8DFF918@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B8DFF9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t Debuglevelspb_AnyMap.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *a1 = sub_1B964C7B0();
  v2 = a1 + *(type metadata accessor for Debuglevelspb_AnyMap(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8DFFB78()
{
  sub_1B964C1C0();
  sub_1B8E0070C(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]);
  return sub_1B964C570();
}

uint64_t Debuglevelspb_AnyArray.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_0_12();
  if (!v1 || (sub_1B964C1C0(), sub_1B8E0070C(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10]), result = sub_1B964C730(), !v0))
  {
    v3 = type metadata accessor for Debuglevelspb_AnyArray(0);
    return OUTLINED_FUNCTION_2_7(v3);
  }

  return result;
}

uint64_t sub_1B8DFFDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E0070C(&qword_1EBABAE60, type metadata accessor for Debuglevelspb_AnyArray);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8DFFE24(uint64_t a1)
{
  v2 = sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8DFFE94()
{
  sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);

  return sub_1B964C5D0();
}

uint64_t sub_1B8DFFF50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1B964C780();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v16);
  (*(v17 + 104))(v14, v15);
  return sub_1B964C760();
}

uint64_t sub_1B8E00108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B8E00180()
{
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray);
  sub_1B8E0070C(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray);
  return sub_1B964C3A0();
}

uint64_t Debuglevelspb_AnyMap.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_0_12();
  if (!v1 || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), sub_1B8E0070C(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray), sub_1B8E0070C(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray), result = sub_1B964C5E0(), !v0))
  {
    v3 = type metadata accessor for Debuglevelspb_AnyMap(0);
    return OUTLINED_FUNCTION_2_7(v3);
  }

  return result;
}

uint64_t sub_1B8E003B8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_1B964C2B0();
  sub_1B8E0070C(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E004B8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8E0070C(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E0059C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E0070C(&qword_1EBABAE58, type metadata accessor for Debuglevelspb_AnyMap);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0061C(uint64_t a1)
{
  v2 = sub_1B8E0070C(&qword_1EBABAE38, type metadata accessor for Debuglevelspb_AnyMap);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0068C()
{
  sub_1B8E0070C(&qword_1EBABAE38, type metadata accessor for Debuglevelspb_AnyMap);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0070C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B8E009D4()
{
  if (!qword_1ED9D3970)
  {
    sub_1B964C1C0();
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9D3970);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8E00B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1B964C2B0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8E00BFC()
{
  if (!qword_1ED9D3A88[0])
  {
    type metadata accessor for Debuglevelspb_AnyArray(255);
    v0 = sub_1B964C7C0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9D3A88);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_7(uint64_t a1)
{
  v3 = v1 + *(a1 + 20);

  return sub_1B964C290();
}

uint64_t Domainresultpb_DomainResult.snippet.getter()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_521();
  return sub_1B8D92024();
}

uint64_t sub_1B8E00D34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1B8D92024();
  return Domainresultpb_DomainResult.snippet.setter();
}

uint64_t Domainresultpb_DomainResult.snippet.setter()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Domainresultpb_DomainResult(v2) + 20);
  v4 = *(v0 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v7 = OUTLINED_FUNCTION_40_0();
    *(v1 + v3) = sub_1B8E05D2C(v7);
  }

  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void (*Domainresultpb_DomainResult.snippet.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_177_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  *(v1 + 56) = __swift_coroFrameAllocStub(v7);
  *(v1 + 64) = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v8;
  v9 = *(v0 + v8);
  OUTLINED_FUNCTION_62_0();
  sub_1B8D92024();
  return sub_1B8E00F70;
}

void sub_1B8E00F70(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    v5 = *(v2 + 48);
    OUTLINED_FUNCTION_466();
    sub_1B8D92024();
    Domainresultpb_DomainResult.snippet.setter();
    v6 = OUTLINED_FUNCTION_236();
    sub_1B8D9207C(v6, v7, &qword_1B96566D0);
  }

  else
  {
    v8 = *(v2 + 72);
    v9 = *(v2 + 48);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v2 + 72);
      v14 = *(v2 + 48);
      OUTLINED_FUNCTION_31_6();
      v15 = OUTLINED_FUNCTION_40_0();
      *(v14 + v13) = sub_1B8E05D2C(v15);
    }

    v4 = *(v2 + 56);
    v3 = *(v2 + 64);
    OUTLINED_FUNCTION_131();
    swift_beginAccess();
    sub_1B8DAA170();
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Domainresultpb_DomainResult.kg.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_23_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v11 = *(type metadata accessor for Kgqsapipb_KGDBResponse(0) + 20);
  if (qword_1EBAB6250 != -1)
  {
    OUTLINED_FUNCTION_58_1();
  }

  *(a1 + v11) = qword_1EBABBB70;
}

void Domainresultpb_DomainResult.kg.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Kgqsapipb_KGDBResponse(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (!OUTLINED_FUNCTION_74_2())
    {
      OUTLINED_FUNCTION_23_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6250 != -1)
  {
    OUTLINED_FUNCTION_58_1();
  }

  *&v12[v15] = qword_1EBABBB70;

LABEL_9:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.maps.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_19_3();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Mapspb_LocalSearchBusiness(0) + 20);
  if (qword_1EBAB6460 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  *(a1 + v12) = qword_1EBABCD98;
}

uint64_t sub_1B8E01470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v12 = &v14 - v11;
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D97C();
  return a7(v12);
}

void Domainresultpb_DomainResult.maps.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Mapspb_LocalSearchBusiness(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 1)
    {
      OUTLINED_FUNCTION_19_3();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6460 != -1)
  {
    OUTLINED_FUNCTION_56_1();
  }

  *&v12[v15] = qword_1EBABCD98;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

void sub_1B8E016BC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B8E0D97C();
    a3(v5);
    sub_1B8E0D8D0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t Domainresultpb_DomainResult.webImages.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_18_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if (qword_1EBAB65A0 != -1)
  {
    OUTLINED_FUNCTION_54_1();
  }

  *(a1 + v12) = qword_1EBABD8D8;
}

void Domainresultpb_DomainResult.webImages.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_WebImagesSnippet(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 2)
    {
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB65A0 != -1)
  {
    OUTLINED_FUNCTION_54_1();
  }

  *&v12[v15] = qword_1EBABD8D8;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.movies.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_17_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  if (qword_1EBAB6560 != -1)
  {
    OUTLINED_FUNCTION_53_1();
  }

  *(a1 + v12) = qword_1EBABD698;
}

void Domainresultpb_DomainResult.movies.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_MoviesSnippet(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 3)
    {
      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6560 != -1)
  {
    OUTLINED_FUNCTION_53_1();
  }

  *&v12[v15] = qword_1EBABD698;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.tvShow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_16_7();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  if (qword_1EBAB6580 != -1)
  {
    OUTLINED_FUNCTION_51_3();
  }

  *(a1 + v12) = qword_1EBABD7B0;
}

void Domainresultpb_DomainResult.tvShow.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_TvShowSnippet(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 4)
    {
      OUTLINED_FUNCTION_16_7();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6580 != -1)
  {
    OUTLINED_FUNCTION_51_3();
  }

  *&v12[v15] = qword_1EBABD7B0;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.media.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_15_5();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  if (qword_1EBAB6550 != -1)
  {
    OUTLINED_FUNCTION_49_2();
  }

  *(a1 + v12) = qword_1EBABD650;
}

void Domainresultpb_DomainResult.media.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_MediaSnippet(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_74_2();
    if (v14 == 5)
    {
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_177_1();
      sub_1B8E0D924();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = *(v8 + 20);
  if (qword_1EBAB6550 != -1)
  {
    OUTLINED_FUNCTION_49_2();
  }

  *&v12[v15] = qword_1EBABD650;

LABEL_10:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.shopping.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_24_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  return Snippetpb_ShoppingSnippet.init()(a1);
}

void Domainresultpb_DomainResult.shopping.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Snippetpb_ShoppingSnippet();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[16] = 0;
    *(v11 + 48) = 1;
    v14 = MEMORY[0x1E69E7CC0];
    *(v11 + 5) = 0;
    *(v11 + 7) = v14;
    *(v11 + 8) = v14;
    *(v11 + 9) = v14;
    *(v11 + 10) = v14;
    v15 = v11 + *(v7 + 52);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = *(v7 + 56);
    v17 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
    __swift_storeEnumTagSinglePayload(v11 + v16, 1, 1, v17);
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 6)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.visual3P.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v14 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_22_4();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  v13 = a1 + *(type metadata accessor for Snippetpb_Visual3PSnippet() + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.visual3P.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Snippetpb_Visual3PSnippet();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[2] = xmmword_1B9652FE0;
    *(v11 + 6) = 0;
    *(v11 + 7) = v14;
    *(v11 + 8) = 0;
    *(v11 + 9) = v14;
    v15 = v11 + *(v7 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 7)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_4();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.experimentalVisual.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_21_3();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v12 = a1 + *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.experimentalVisual.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_26_3(v6);
  v8 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_47_1(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    *v12 = 0;
    v12[8] = 1;
    *(v12 + 1) = xmmword_1B9652FE0;
    *(v12 + 4) = MEMORY[0x1E69E7CC0];
    v15 = &v12[*(v8 + 28)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v14 = OUTLINED_FUNCTION_74_2();
  if (v14 != 8)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.food.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v14 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_4_9();
  if (v9)
  {
    sub_1B8D9207C(v8, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_20_1();
      return OUTLINED_FUNCTION_70_1();
    }

    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
  }

  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v13 = a1 + *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E02C04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = *(OUTLINED_FUNCTION_68_2() + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B8E05D2C(v9);
  }

  sub_1B8E0D924();
  v10 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  swift_storeEnumTagMultiPayload();
  v11 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Domainresultpb_DomainResult.food.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_26_3(v6);
  v7 = type metadata accessor for Snippetpb_FoodSnippet();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_47_1(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_3_10();
  if (v12)
  {
    sub_1B8D9207C(v0, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_7:
    OUTLINED_FUNCTION_77_2();
    v11[4] = 0;
    v11[5] = v14;
    v11[6] = 0;
    v11[7] = v14;
    v11[8] = 0;
    *(v11 + 18) = 0;
    v15 = v11 + *(v7 + 44);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  v13 = OUTLINED_FUNCTION_74_2();
  if (v13 != 9)
  {
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_177_1();
  sub_1B8E0D924();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_283();
}

uint64_t Domainresultpb_DomainResult.tophit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v9 = type metadata accessor for Tophitpb_TopHit();
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 9) = 0;
    v11 = a1 + *(v9 + 36);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v8, &qword_1EBABAEC0, &qword_1B96566D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    return OUTLINED_FUNCTION_70_1();
  }

  return result;
}

uint64_t Domainresultpb_DomainResult.tophit.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = *(OUTLINED_FUNCTION_68_2() + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B8E05D2C(v9);
  }

  OUTLINED_FUNCTION_9_6();
  sub_1B8E0D924();
  type metadata accessor for Tophitpb_TopHit();
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Domainresultpb_DomainResult.tophit.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[4] = v5;
  v6 = type metadata accessor for Tophitpb_TopHit();
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[6] = v9;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v6);
  if (v12)
  {
    *v9 = 0;
    v9[8] = 1;
    *(v9 + 9) = 0;
    v13 = &v9[*(v6 + 36)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v14, v15, v6);
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBABAEC0, &qword_1B96566D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    sub_1B8E0D924();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E03274(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Domainresultpb_DomainResult.canonicalID.setter(v1, v2);
}

void (*Domainresultpb_DomainResult.canonicalID.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_62_0();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return sub_1B8E03348;
}

uint64_t Domainresultpb_DomainResult.resultEntities.getter()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_521();
  v4 = *(v2 + v3);
}

uint64_t sub_1B8E033B0(uint64_t *a1)
{
  v1 = *a1;

  return Domainresultpb_DomainResult.resultEntities.setter();
}

uint64_t Domainresultpb_DomainResult.resultEntities.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_313();
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(v3) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E05D2C(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18();
  v10 = *(v7 + v9);
  *(v7 + v9) = v0;
}

void (*Domainresultpb_DomainResult.resultEntities.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return sub_1B8E034DC;
}

void sub_1B8E034DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Domainresultpb_DomainResult.resultEntities.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_31_6();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8E05D2C(v14);
      *(v13 + v12) = v11;
    }

    v15 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
    OUTLINED_FUNCTION_18();
    v16 = *(v11 + v15);
    *(v11 + v15) = v3;
  }

  free(v2);
}

uint64_t Domainresultpb_DomainResult.alternativeResult.getter()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521();
  return *(v2 + v3);
}

uint64_t Domainresultpb_DomainResult.alternativeResult.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E05D2C(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_93_2();
  result = OUTLINED_FUNCTION_18();
  *(v7 + v9) = a1 & 1;
  return result;
}

uint64_t Domainresultpb_DomainResult.alternativeResult.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E036D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_31_6();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E05D2C(v10);
    *(v9 + v8) = v7;
  }

  v11 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_18();
  *(v7 + v11) = v4;

  free(v1);
}

float Domainresultpb_DomainResult.score.getter()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score;
  OUTLINED_FUNCTION_521();
  return *v2;
}

uint64_t Domainresultpb_DomainResult.score.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E05D2C(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  result = OUTLINED_FUNCTION_18();
  *v9 = a1;
  return result;
}

uint64_t Domainresultpb_DomainResult.score.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 84) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E038C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_31_6();
    v10 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E05D2C(v10);
    *(v9 + v8) = v7;
  }

  v11 = (v7 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_18();
  *v11 = v2;

  free(v1);
}

uint64_t Domainresultpb_DomainResult.layoutInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_236();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v8 = &v13 - v7;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v9 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = MEMORY[0x1E69E7CC0];
    *(a1 + 16) = 0;
    v11 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v8, &qword_1EBABAED0, &qword_1B96566E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    return OUTLINED_FUNCTION_70_1();
  }

  return result;
}

uint64_t Domainresultpb_DomainResult.layoutInfo.setter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  v5 = *(OUTLINED_FUNCTION_68_2() + 20);
  v6 = *(v0 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v5) = sub_1B8E05D2C(v9);
  }

  OUTLINED_FUNCTION_8_8();
  sub_1B8E0D924();
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  v10 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

uint64_t Domainresultpb_LayoutInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Domainresultpb_LayoutInfo(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Domainresultpb_DomainResult.layoutInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v0[4] = v5;
  v6 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v0[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v0[6] = v9;
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  v10 = OUTLINED_FUNCTION_207();
  OUTLINED_FUNCTION_178(v10, v11, v6);
  if (v12)
  {
    *v9 = 0;
    v9[1] = MEMORY[0x1E69E7CC0];
    *(v9 + 16) = 0;
    v13 = v9 + *(v6 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_207();
    OUTLINED_FUNCTION_178(v14, v15, v6);
    if (!v12)
    {
      sub_1B8D9207C(v5, &qword_1EBABAED0, &qword_1B96566E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_1B8E0D924();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E03D68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  OUTLINED_FUNCTION_5_6();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  OUTLINED_FUNCTION_178(v15, 1, v17);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  sub_1B8D9207C(v15, v5, v4);
  return v19;
}

uint64_t sub_1B8E03E68(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v7 + v14) = sub_1B8E05D2C(v18);
  }

  a3(0);
  v19 = OUTLINED_FUNCTION_207();
  __swift_storeEnumTagSinglePayload(v19, v20, 1, v21);
  v22 = *a4;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E03F70(void *a1)
{
  OUTLINED_FUNCTION_12_7();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_1B8E03FC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Domainresultpb_DomainResult.entityType.setter(v1, v2);
}

uint64_t sub_1B8E04014(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_31_6();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E05D2C(v12);
    *(v7 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = v5;
  v13[1] = v3;
}

void (*Domainresultpb_DomainResult.entityType.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_12_7();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_62_0();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return sub_1B8E0412C;
}

void sub_1B8E0414C(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v8 = *(v4 + 64);
    v9 = *(*a1 + 56);

    v10 = OUTLINED_FUNCTION_461();
    a4(v10);
    v11 = *(v4 + 56);
  }

  else
  {
    v13 = *(v4 + 72);
    v14 = *(v4 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v4 + 72);
      v19 = *(v4 + 64);
      OUTLINED_FUNCTION_31_6();
      v20 = OUTLINED_FUNCTION_40_0();
      v17 = sub_1B8E05D2C(v20);
      *(v19 + v18) = v17;
    }

    v21 = (v17 + *a3);
    OUTLINED_FUNCTION_18();
    v22 = v21[1];
    *v21 = v5;
    v21[1] = v6;
  }

  free(v4);
}

uint64_t Domainresultpb_DomainResult.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Domainresultpb_DomainResult.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

void static Domainresultpb_DomainResult.OneOf_Snippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v149 = v0;
  v150 = v1;
  v2 = type metadata accessor for Snippetpb_FoodSnippet();
  v3 = OUTLINED_FUNCTION_183(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v143 = v6;
  v7 = OUTLINED_FUNCTION_201();
  v128 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v7);
  v8 = OUTLINED_FUNCTION_59_1(v128);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v144 = v11;
  OUTLINED_FUNCTION_201();
  v12 = type metadata accessor for Snippetpb_Visual3PSnippet();
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v140 = v16;
  OUTLINED_FUNCTION_201();
  v17 = type metadata accessor for Snippetpb_ShoppingSnippet();
  v18 = OUTLINED_FUNCTION_183(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  v138 = v21;
  v22 = OUTLINED_FUNCTION_201();
  v137 = type metadata accessor for Snippetpb_MediaSnippet(v22);
  v23 = OUTLINED_FUNCTION_59_1(v137);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_21();
  v142 = v26;
  v27 = OUTLINED_FUNCTION_201();
  v135 = type metadata accessor for Snippetpb_TvShowSnippet(v27);
  v28 = OUTLINED_FUNCTION_59_1(v135);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21();
  v141 = v31;
  v32 = OUTLINED_FUNCTION_201();
  v133 = type metadata accessor for Snippetpb_MoviesSnippet(v32);
  v33 = OUTLINED_FUNCTION_59_1(v133);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21();
  v139 = v36;
  v37 = OUTLINED_FUNCTION_201();
  v132 = type metadata accessor for Snippetpb_WebImagesSnippet(v37);
  v38 = OUTLINED_FUNCTION_59_1(v132);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_21();
  v136 = v41;
  v42 = OUTLINED_FUNCTION_201();
  v131 = type metadata accessor for Mapspb_LocalSearchBusiness(v42);
  v43 = OUTLINED_FUNCTION_59_1(v131);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_21();
  v134 = v46;
  v47 = OUTLINED_FUNCTION_201();
  v129 = type metadata accessor for Kgqsapipb_KGDBResponse(v47);
  v48 = OUTLINED_FUNCTION_59_1(v129);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21();
  v130 = v51;
  v52 = OUTLINED_FUNCTION_201();
  v53 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(v52);
  v54 = OUTLINED_FUNCTION_59_1(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_66();
  v59 = v57 - v58;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_682();
  v148 = v61;
  OUTLINED_FUNCTION_230();
  v63 = MEMORY[0x1EEE9AC00](v62);
  v65 = (&v128 - v64);
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = &v128 - v67;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_682();
  v147 = v69;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_682();
  v146 = v71;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_682();
  v145 = v73;
  OUTLINED_FUNCTION_230();
  v75 = MEMORY[0x1EEE9AC00](v74);
  v77 = &v128 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75);
  v80 = &v128 - v79;
  MEMORY[0x1EEE9AC00](v78);
  v82 = &v128 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED8, &qword_1B96566E8);
  OUTLINED_FUNCTION_183(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_176();
  v87 = MEMORY[0x1EEE9AC00](v86);
  v89 = &v128 - v88;
  v90 = *(v87 + 56);
  sub_1B8E0D97C();
  sub_1B8E0D97C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 1)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_19_3();
      v105 = v134;
      sub_1B8E0D924();
      v106 = *(v131 + 20);
      if (*&v80[v106] == *(v105 + v106) || (v107 = *&v80[v106], , , v108 = OUTLINED_FUNCTION_432(), sub_1B8E9C91C(v108, v109), OUTLINED_FUNCTION_87_1(), , (v65 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v110, v111);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_44_1();
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 2u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 2)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_18_4();
      v95 = v136;
      sub_1B8E0D924();
      v96 = *(v132 + 20);
      if (*&v77[v96] == *(v95 + v96) || (v97 = *&v77[v96], , , OUTLINED_FUNCTION_432(), sub_1B8ED6DA4(), OUTLINED_FUNCTION_87_1(), , (v65 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v98, v99);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_45_0();
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 3u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 3)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_17_4();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2(v133);
      if (v91)
      {
        goto LABEL_18;
      }

      v100 = OUTLINED_FUNCTION_432();
      sub_1B8EC2CC0(v100, v101);
      OUTLINED_FUNCTION_87_1();

      if (v65)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    case 4u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 4)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_16_7();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2(v135);
      if (v91)
      {
        goto LABEL_18;
      }

      v92 = OUTLINED_FUNCTION_432();
      sub_1B8ECE508(v92, v93);
      OUTLINED_FUNCTION_87_1();

      if (v65)
      {
        goto LABEL_18;
      }

      goto LABEL_47;
    case 5u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 5)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_15_5();
      sub_1B8E0D924();
      OUTLINED_FUNCTION_50_2(v137);
      if (v91 || (, , OUTLINED_FUNCTION_432(), sub_1B8EB9A38(), OUTLINED_FUNCTION_87_1(), , (v65 & 1) != 0))
      {
LABEL_18:
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_8();
        sub_1B8CD1B50(v102, v103);
        OUTLINED_FUNCTION_67_2();
      }

      goto LABEL_47;
    case 6u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 6)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_24_4();
      v112 = v138;
      sub_1B8E0D924();
      static Snippetpb_ShoppingSnippet.== infix(_:_:)(v68, v112);
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 7u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 7)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_22_4();
      v104 = v140;
      sub_1B8E0D924();
      static Snippetpb_Visual3PSnippet.== infix(_:_:)(v65, v104);
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 8u:
      OUTLINED_FUNCTION_1_11();
      v113 = v148;
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 8)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_21_3();
      v114 = v144;
      sub_1B8E0D924();
      if (sub_1B8D57FD0(*v113, *(v113 + 8), *v114, *(v114 + 8)) && (MEMORY[0x1BFADC060](*(v113 + 16), *(v113 + 24), *(v114 + 16), *(v114 + 24)) & 1) != 0)
      {
        v115 = *(v113 + 32);
        v116 = *(v114 + 32);
        sub_1B8D7B19C();
        if (v117)
        {
          v118 = *(v128 + 28);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_8();
          sub_1B8CD1B50(v119, v120);
          sub_1B964C850();
        }
      }

LABEL_47:
      sub_1B8E0D8D0();
      goto LABEL_48;
    case 9u:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1() != 9)
      {
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_20_1();
      v94 = v143;
      sub_1B8E0D924();
      static Snippetpb_FoodSnippet.== infix(_:_:)(v59, v94);
      sub_1B8E0D8D0();
      OUTLINED_FUNCTION_543();
      goto LABEL_48;
    default:
      OUTLINED_FUNCTION_1_11();
      sub_1B8E0D97C();
      if (OUTLINED_FUNCTION_73_1())
      {
LABEL_37:
        sub_1B8E0D8D0();
        sub_1B8D9207C(v89, &qword_1EBABAED8, &qword_1B96566E8);
      }

      else
      {
        OUTLINED_FUNCTION_23_4();
        v121 = v130;
        sub_1B8E0D924();
        v122 = *(v129 + 20);
        if (*&v82[v122] == *(v121 + v122))
        {
          goto LABEL_41;
        }

        v123 = *&v82[v122];

        OUTLINED_FUNCTION_543();
        sub_1B8E44E08();
        v125 = v124;

        if (v125)
        {
LABEL_41:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_8();
          sub_1B8CD1B50(v126, v127);
          sub_1B964C850();
        }

        OUTLINED_FUNCTION_41_1();
        sub_1B8E0D8D0();
        OUTLINED_FUNCTION_432();
LABEL_48:
        sub_1B8E0D8D0();
        OUTLINED_FUNCTION_0_13();
        sub_1B8E0D8D0();
      }

      OUTLINED_FUNCTION_283();
      return;
  }
}

uint64_t Domainresultpb_DomainResult.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  if (qword_1EBAB60F0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABAE80;
}

uint64_t Domainresultpb_SiribaseEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Domainresultpb_SiribaseEntity.id.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.primaryName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Domainresultpb_SiribaseEntity.primaryName.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.description_p.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Domainresultpb_SiribaseEntity.description_p.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Domainresultpb_SiribaseEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Domainresultpb_SiribaseEntity(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Domainresultpb_SiribaseEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Domainresultpb_SiribaseEntity(v2) + 44);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Domainresultpb_SiribaseEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Domainresultpb_SiribaseEntity(v0) + 44);
  return nullsub_1;
}

uint64_t Domainresultpb_SiribaseEntity.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  v3 = a1 + *(type metadata accessor for Domainresultpb_SiribaseEntity(0) + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Domainresultpb_LayoutInfo.rankedExperienceSections.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Domainresultpb_LayoutInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Domainresultpb_LayoutInfo(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Domainresultpb_LayoutInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Domainresultpb_LayoutInfo(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Domainresultpb_LayoutInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Domainresultpb_LayoutInfo(v0) + 32);
  return nullsub_1;
}

uint64_t sub_1B8E0566C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAE68);
  __swift_project_value_buffer(v0, qword_1EBABAE68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1B96566C0;
  v4 = v41 + v3 + v1[14];
  *(v41 + v3) = 2;
  *v4 = "kg";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v41 + v3 + v2 + v1[14];
  *(v41 + v3 + v2) = 7;
  *v8 = "maps";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v41 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 9;
  *v10 = "web_images";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v7();
  v12 = (v41 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 13;
  *v13 = "movies";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v41 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 14;
  *v15 = "tv_show";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v41 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 16;
  *v17 = "media";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v7();
  v18 = (v41 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 21;
  *v19 = "shopping";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v7();
  v20 = (v41 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 26;
  *v21 = "visual3p";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v7();
  v22 = (v41 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 42;
  *v23 = "experimental_visual";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v7();
  v24 = (v41 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 49;
  *v25 = "food";
  *(v25 + 1) = 4;
  v25[16] = 2;
  v7();
  v26 = (v41 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 51;
  *v27 = "tophit";
  *(v27 + 1) = 6;
  v27[16] = 2;
  v7();
  v28 = (v41 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 52;
  *v29 = "canonical_id";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v7();
  v30 = (v41 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 53;
  *v31 = "result_entities";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v7();
  v32 = (v41 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 54;
  *v33 = "alternative_result";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v7();
  v34 = (v41 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 57;
  *v35 = "score";
  *(v35 + 1) = 5;
  v35[16] = 2;
  v7();
  v36 = (v41 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 101;
  *v37 = "layout_info";
  *(v37 + 1) = 11;
  v37[16] = 2;
  v7();
  v38 = (v41 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 102;
  *v39 = "entity_type";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8E05C08()
{
  v0 = type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1B8E05C48();
  qword_1EBABAE80 = result;
  return result;
}

uint64_t sub_1B8E05C48()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  v2 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit;
  v4 = type metadata accessor for Tophitpb_TopHit();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v7 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8E05D2C(uint64_t a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v39 = v35 - v4;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v35[1] = v35 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v8 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  v9 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit;
  v11 = type metadata accessor for Tophitpb_TopHit();
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult) = 0;
  v37 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score) = 0;
  v14 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v38 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo;
  v15 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  v35[0] = v1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType;
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];
  swift_beginAccess();
  v20 = v12[1];
  *v12 = v19;
  v12[1] = v18;

  v21 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  swift_beginAccess();
  v22 = *(a1 + v21);
  swift_beginAccess();
  v23 = *(v1 + v13);
  *(v1 + v13) = v22;

  v24 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v36;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  swift_beginAccess();
  v27 = *v26;
  v28 = v37;
  swift_beginAccess();
  *v28 = v27;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  swift_beginAccess();
  v31 = *v29;
  v30 = v29[1];

  v32 = v35[0];
  swift_beginAccess();
  v33 = v32[1];
  *v32 = v31;
  v32[1] = v30;

  return v1;
}

uint64_t sub_1B8E0622C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet, &qword_1EBABAEB8, &qword_1B96566D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__tophit, &qword_1EBABAEC0, &qword_1B96566D8);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID + 8);

  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__layoutInfo, &qword_1EBABAED0, &qword_1B96566E0);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType + 8);

  return v0;
}

uint64_t sub_1B8E062DC()
{
  v0 = sub_1B8E0622C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Domainresultpb_DomainResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Domainresultpb_DomainResult(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E05D2C(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8E063D0(v11, a1, a2, a3);
}

uint64_t sub_1B8E063D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!(!v10 & v9))
    {
      switch(result)
      {
        case '*':
          sub_1B8E091E4(a1, a2, a3, a4);
          continue;
        case '+':
        case ',':
        case '-':
        case '.':
        case '/':
        case '0':
        case '2':
        case '7':
        case '8':
          continue;
        case '1':
          sub_1B8E09754(a1, a2, a3, a4);
          continue;
        case '3':
          sub_1B8E09CC4();
          continue;
        case '4':
          v13 = a2;
          v14 = a1;
          v15 = a3;
          v16 = a4;
          v17 = &OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID;
          goto LABEL_26;
        case '5':
          sub_1B8E09DA0();
          continue;
        case '6':
          sub_1B8E09E7C();
          continue;
        case '9':
          sub_1B8E09F08();
          continue;
        default:
          JUMPOUT(0);
      }
    }

    switch(result)
    {
      case 7:
        sub_1B8E06BD4(a1, a2, a3, a4);
        break;
      case 8:
      case 10:
      case 11:
      case 12:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
        continue;
      case 9:
        sub_1B8E07144(a1, a2, a3, a4);
        break;
      case 13:
        sub_1B8E076B4(a1, a2, a3, a4);
        break;
      case 14:
        sub_1B8E07C24(a1, a2, a3, a4);
        break;
      case 16:
        sub_1B8E08194(a1, a2, a3, a4);
        break;
      case 21:
        sub_1B8E08704(a1, a2, a3, a4);
        break;
      default:
        switch(result)
        {
          case 102:
            v13 = a2;
            v14 = a1;
            v15 = a3;
            v16 = a4;
            v17 = &OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType;
LABEL_26:
            sub_1B8DAB218(v13, v14, v15, v16, v17);
            break;
          case 26:
            sub_1B8E08C74(a1, a2, a3, a4);
            break;
          case 101:
            sub_1B8E09F94();
            break;
          case 2:
            sub_1B8E06680(a1, a2, a3, a4);
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B8E06680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFE8, &unk_1B9656C90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8E0D8D0();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBABAFE8, &unk_1B9656C90);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse);
  v28 = v37;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBABAFE8, &unk_1B9656C90);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABAFE8, &unk_1B9656C90);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBABAFE8, &unk_1B9656C90);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &qword_1EBABAFE8, &unk_1B9656C90);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E06BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF0, &qword_1B96607C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBABAFF0, &qword_1B96607C0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABAFF0, &qword_1B96607C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABAFF0, &qword_1B96607C0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABAFF0, &qword_1B96607C0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABAFF0, &qword_1B96607C0);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E07144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF8, &qword_1B9656CA0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBABAFF8, &qword_1B9656CA0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABAFF8, &qword_1B9656CA0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABAFF8, &qword_1B9656CA0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABAFF8, &qword_1B9656CA0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABAFF8, &qword_1B9656CA0);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E076B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB000, &qword_1B9656CA8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v25, &qword_1EBABB000, &qword_1B9656CA8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB000, &qword_1B9656CA8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB000, &qword_1B9656CA8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB000, &qword_1B9656CA8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB000, &qword_1B9656CA8);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E07C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB008, &qword_1B9656CB0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v25, &qword_1EBABB008, &qword_1B9656CB0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB008, &qword_1B9656CB0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB008, &qword_1B9656CB0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB008, &qword_1B9656CB0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB008, &qword_1B9656CB0);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_MediaSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB010, &qword_1B9656CB8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v25, &qword_1EBABB010, &qword_1B9656CB8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB010, &qword_1B9656CB8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB010, &qword_1B9656CB8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB010, &qword_1B9656CB8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB010, &qword_1B9656CB8);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_ShoppingSnippet();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB018, &qword_1B9656CC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v25, &qword_1EBABB018, &qword_1B9656CC0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB018, &qword_1B9656CC0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB018, &qword_1B9656CC0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB018, &qword_1B9656CC0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB018, &qword_1B9656CC0);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E08C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_Visual3PSnippet();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB020, &qword_1B9656CC8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v25, &qword_1EBABB020, &qword_1B9656CC8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB020, &qword_1B9656CC8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB020, &qword_1B9656CC8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB020, &qword_1B9656CC8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB020, &qword_1B9656CC8);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E091E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB028, &qword_1B9656CD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v25, &qword_1EBABB028, &qword_1B9656CD0);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB028, &qword_1B9656CD0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB028, &qword_1B9656CD0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB028, &qword_1B9656CD0);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB028, &qword_1B9656CD0);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E09754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Snippetpb_FoodSnippet();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB030, &qword_1B9656CD8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    v32[0] = a1;
    sub_1B8E0D924();
    sub_1B8E0D924();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8D9207C(v25, &qword_1EBABB030, &qword_1B9656CD8);
      sub_1B8E0D924();
      sub_1B8E0D924();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B8E0D8D0();
    }
  }

  sub_1B8CD1B50(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBABB030, &qword_1B9656CD8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBABB030, &qword_1B9656CD8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBABB030, &qword_1B9656CD8);
  }

  sub_1B8E0D924();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBABB030, &qword_1B9656CD8);
  v31 = v33;
  sub_1B8E0D924();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B8E09CC4()
{
  swift_beginAccess();
  type metadata accessor for Tophitpb_TopHit();
  sub_1B8CD1B50(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E09DA0()
{
  swift_beginAccess();
  type metadata accessor for Domainresultpb_SiribaseEntity(0);
  sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E09E7C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8E09F08()
{
  swift_beginAccess();
  sub_1B964C490();
  return swift_endAccess();
}

uint64_t sub_1B8E09F94()
{
  swift_beginAccess();
  type metadata accessor for Domainresultpb_LayoutInfo(0);
  sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Domainresultpb_DomainResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for Domainresultpb_DomainResult(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8E0A0D4(v7, v8, v9, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E0A0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v114 = a4;
  v113 = a3;
  v118 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v106 = v88 - v7;
  v89 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  v8 = *(*(v89 - 8) + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88[1] = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v101 = v88 - v12;
  v105 = type metadata accessor for Tophitpb_TopHit();
  v13 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v96 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Snippetpb_FoodSnippet();
  v15 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  v17 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v93 = v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Snippetpb_Visual3PSnippet();
  v19 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v111 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Snippetpb_ShoppingSnippet();
  v21 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v117 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Snippetpb_MediaSnippet(0);
  v23 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  v25 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  v27 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v104 = v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v107 = v88 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v108 = v88 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v109 = v88 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v110 = v88 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v112 = v88 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v116 = v88 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v47 = v88 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = v88 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = v88 - v51;
  v53 = type metadata accessor for Kgqsapipb_KGDBResponse(0);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__snippet;
  swift_beginAccess();
  v119 = a1;
  v120 = v55;
  sub_1B8D92024();
  v56 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v52, 1, v56) == 1)
  {
    sub_1B8D9207C(v52, &qword_1EBABAEB8, &qword_1B96566D0);
    v57 = v115;
    v58 = v114;
    v59 = v113;
  }

  else if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8E0D8D0();
    v57 = v115;
    v58 = v114;
    v59 = v113;
  }

  else
  {
    sub_1B8E0D924();
    sub_1B8CD1B50(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse);
    v61 = v115;
    v59 = v113;
    v58 = v114;
    sub_1B964C740();
    v57 = v61;
    if (v61)
    {
      return sub_1B8E0D8D0();
    }

    sub_1B8E0D8D0();
  }

  v60 = v119;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v50, 1, v56) == 1)
  {
    sub_1B8D9207C(v50, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v56);
  v63 = v116;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v63, 1, v56) != 1)
  {
    sub_1B8D92024();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      v65 = v57;
      sub_1B8E0B9D4(v60, v118, v59, v58);
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
LABEL_29:
        sub_1B8E0D8D0();
        goto LABEL_30;
      }

      v65 = v57;
      sub_1B8E0B7A0(v60, v118, v59, v58);
    }

    v57 = v65;
    if (v65)
    {
      sub_1B8E0D8D0();
      return sub_1B8D9207C(v63, &qword_1EBABAEB8, &qword_1B96566D0);
    }

    goto LABEL_29;
  }

LABEL_30:
  sub_1B8D9207C(v116, &qword_1EBABAEB8, &qword_1B96566D0);
  v67 = v110;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v67, 1, v56) == 1)
  {
    sub_1B8D9207C(v67, &qword_1EBABAEB8, &qword_1B96566D0);
    v68 = v119;
  }

  else
  {
    v69 = swift_getEnumCaseMultiPayload();
    v68 = v119;
    if (v69 == 5)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v70 = v109;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70, 1, v56) == 1)
  {
    sub_1B8D9207C(v70, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v71 = v108;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v71, 1, v56) == 1)
  {
    sub_1B8D9207C(v71, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v72 = v107;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v56) == 1)
  {
    sub_1B8D9207C(v72, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet);
      sub_1B964C740();
      if (v57)
      {
        return sub_1B8E0D8D0();
      }
    }

    sub_1B8E0D8D0();
  }

  v73 = v104;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v56) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBABAEB8, &qword_1B96566D0);
LABEL_56:
    v74 = v106;
    v75 = v105;
    goto LABEL_57;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B8E0D8D0();
    goto LABEL_56;
  }

  sub_1B8E0D924();
  sub_1B8CD1B50(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet);
  sub_1B964C740();
  v74 = v106;
  v75 = v105;
  if (v57)
  {
    return sub_1B8E0D8D0();
  }

  sub_1B8E0D8D0();
LABEL_57:
  swift_beginAccess();
  v76 = v101;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v76, 1, v75) == 1)
  {
    sub_1B8D9207C(v76, &qword_1EBABAEC0, &qword_1B96566D8);
    goto LABEL_63;
  }

  sub_1B8E0D924();
  sub_1B8CD1B50(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit);
  sub_1B964C740();
  if (v57)
  {
    return sub_1B8E0D8D0();
  }

  sub_1B8E0D8D0();
LABEL_63:
  v77 = (v68 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  swift_beginAccess();
  v79 = *v77;
  v78 = v77[1];
  v80 = HIBYTE(v78) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v80 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (!v80 || (, sub_1B964C700(), result = , !v57))
  {
    v81 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
    swift_beginAccess();
    if (!*(*(v68 + v81) + 16) || (type metadata accessor for Domainresultpb_SiribaseEntity(0), sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity), , sub_1B964C730(), result = , !v57))
    {
      v82 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
      swift_beginAccess();
      if (*(v68 + v82) != 1 || (result = sub_1B964C670(), !v57))
      {
        v83 = (v68 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
        swift_beginAccess();
        if (*v83 == 0.0 || (result = sub_1B964C6B0(), !v57))
        {
          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v74, 1, v89) == 1)
          {
            sub_1B8D9207C(v74, &qword_1EBABAED0, &qword_1B96566E0);
          }

          else
          {
            sub_1B8E0D924();
            sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo);
            sub_1B964C740();
            result = sub_1B8E0D8D0();
            if (v57)
            {
              return result;
            }
          }

          v84 = (v68 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
          result = swift_beginAccess();
          v86 = *v84;
          v85 = v84[1];
          v87 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v87 = v86 & 0xFFFFFFFFFFFFLL;
          }

          if (v87)
          {

            sub_1B964C700();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8E0B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet);
      sub_1B964C740();
      return sub_1B8E0D8D0();
    }

    result = sub_1B8E0D8D0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8E0B9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1B8D92024();
  v10 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &qword_1EBABAEB8, &qword_1B96566D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8E0D924();
      sub_1B8CD1B50(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet);
      sub_1B964C740();
      return sub_1B8E0D8D0();
    }

    result = sub_1B8E0D8D0();
  }

  __break(1u);
  return result;
}

uint64_t static Domainresultpb_DomainResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_12_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8E0BCD4(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  sub_1B8CD1B50(v7, v8);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E0BCD4(uint64_t a1, uint64_t a2)
{
  v126 = a2;
  v115 = type metadata accessor for Domainresultpb_LayoutInfo(0);
  v3 = OUTLINED_FUNCTION_59_1(v115);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21();
  v112 = v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF78, &qword_1B9656C78);
  OUTLINED_FUNCTION_59_1(v114);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v116 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAED0, &qword_1B96566E0);
  v12 = OUTLINED_FUNCTION_183(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66();
  v113 = (v15 - v16);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  v123 = &v112 - v18;
  OUTLINED_FUNCTION_201();
  v121 = type metadata accessor for Tophitpb_TopHit();
  v19 = OUTLINED_FUNCTION_59_1(v121);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21();
  v117 = v22;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF80, &qword_1B9656C80);
  OUTLINED_FUNCTION_59_1(v120);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  v122 = &v112 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEC0, &qword_1B96566D8);
  v28 = OUTLINED_FUNCTION_183(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_66();
  v118 = (v31 - v32);
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  v125 = &v112 - v34;
  v35 = OUTLINED_FUNCTION_201();
  v36 = type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet(v35);
  v37 = OUTLINED_FUNCTION_59_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_21();
  v119 = v40;
  v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAF88, &qword_1B9656C88) - 8);
  v42 = *(*v41 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v112 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAEB8, &qword_1B96566D0);
  v47 = OUTLINED_FUNCTION_183(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_66();
  v124 = v50 - v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v112 - v53;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v55 = v126;
  OUTLINED_FUNCTION_521();
  v56 = v41[14];
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v45);
  if (v57)
  {

    sub_1B8D9207C(v54, &qword_1EBABAEB8, &qword_1B96566D0);
    OUTLINED_FUNCTION_37_0(&v45[v56]);
    if (v57)
    {
      sub_1B8D9207C(v45, &qword_1EBABAEB8, &qword_1B96566D0);
      goto LABEL_11;
    }

LABEL_9:
    v58 = &qword_1EBABAF88;
    v59 = &qword_1B9656C88;
    v60 = v45;
LABEL_21:
    sub_1B8D9207C(v60, v58, v59);
LABEL_22:

    return 0;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v45[v56]);
  if (v57)
  {

    sub_1B8D9207C(v54, &qword_1EBABAEB8, &qword_1B96566D0);
    OUTLINED_FUNCTION_0_13();
    sub_1B8E0D8D0();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_11();
  sub_1B8E0D924();

  OUTLINED_FUNCTION_461();
  static Domainresultpb_DomainResult.OneOf_Snippet.== infix(_:_:)();
  v62 = v61;
  sub_1B8E0D8D0();
  sub_1B8D9207C(v54, &qword_1EBABAEB8, &qword_1B96566D0);
  OUTLINED_FUNCTION_236();
  sub_1B8E0D8D0();
  sub_1B8D9207C(v45, &qword_1EBABAEB8, &qword_1B96566D0);
  if ((v62 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  OUTLINED_FUNCTION_521();
  v63 = v125;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v64 = *(v120 + 48);
  v65 = v122;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_178(v65, 1, v121);
  if (v57)
  {
    sub_1B8D9207C(v63, &qword_1EBABAEC0, &qword_1B96566D8);
    OUTLINED_FUNCTION_37_0(v65 + v64);
    v66 = v123;
    if (v57)
    {
      sub_1B8D9207C(v65, &qword_1EBABAEC0, &qword_1B96566D8);
      goto LABEL_25;
    }

LABEL_19:
    v58 = &qword_1EBABAF80;
    v59 = &qword_1B9656C80;
LABEL_20:
    v60 = v65;
    goto LABEL_21;
  }

  v67 = v118;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v65 + v64);
  v66 = v123;
  if (v68)
  {
    sub_1B8D9207C(v125, &qword_1EBABAEC0, &qword_1B96566D8);
    sub_1B8E0D8D0();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_9_6();
  v70 = v117;
  sub_1B8E0D924();
  v71 = static Tophitpb_TopHit.== infix(_:_:)(v67, v70);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v72, v73, v74);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v75, v76, v77);
  if ((v71 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_521();
  v79 = *v78;
  v80 = v78[1];
  v81 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__canonicalID);
  OUTLINED_FUNCTION_521();
  if (v79 != *v81 || v80 != v81[1])
  {
    OUTLINED_FUNCTION_543();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v83 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_521();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__resultEntities;
  OUTLINED_FUNCTION_521();
  v86 = *(v55 + v85);

  OUTLINED_FUNCTION_543();
  sub_1B8D884A0();
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_22;
  }

  v89 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521();
  LODWORD(v89) = *(a1 + v89);
  v90 = OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__alternativeResult;
  OUTLINED_FUNCTION_521();
  if (v89 != *(v55 + v90))
  {
    goto LABEL_22;
  }

  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_521();
  v92 = *v91;
  v93 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__score);
  OUTLINED_FUNCTION_521();
  if (v92 != *v93)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521();
  v94 = *(v114 + 48);
  v65 = v116;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v95 = v115;
  OUTLINED_FUNCTION_178(v65, 1, v115);
  if (v57)
  {
    sub_1B8D9207C(v66, &qword_1EBABAED0, &qword_1B96566E0);
    OUTLINED_FUNCTION_178(v65 + v94, 1, v95);
    if (v57)
    {
      sub_1B8D9207C(v65, &qword_1EBABAED0, &qword_1B96566E0);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v96 = v113;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v65 + v94, 1, v95);
  if (v97)
  {
    sub_1B8D9207C(v66, &qword_1EBABAED0, &qword_1B96566E0);
    sub_1B8E0D8D0();
LABEL_41:
    v58 = &qword_1EBABAF78;
    v59 = &qword_1B9656C78;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8_8();
  v98 = v112;
  sub_1B8E0D924();
  v99 = static Domainresultpb_LayoutInfo.== infix(_:_:)(v96, v98);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v100, v101, v102);
  sub_1B8E0D8D0();
  OUTLINED_FUNCTION_466();
  sub_1B8D9207C(v103, v104, v105);
  if ((v99 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_43:
  v106 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_521();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v55 + OBJC_IVAR____TtCV10PegasusAPI27Domainresultpb_DomainResultP33_79FB1AA937F16A4ABE687017212EC26813_StorageClass__entityType);
  OUTLINED_FUNCTION_521();
  if (v107 == *v109 && v108 == v109[1])
  {

    return 1;
  }

  OUTLINED_FUNCTION_543();
  v111 = sub_1B964C9F0();

  result = 0;
  if (v111)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B8E0C78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF70, type metadata accessor for Domainresultpb_DomainResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0C80C(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0C87C()
{
  sub_1B8CD1B50(&qword_1EBABAF00, type metadata accessor for Domainresultpb_DomainResult);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0C914()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAE88);
  __swift_project_value_buffer(v0, qword_1EBABAE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "primary_name";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "score";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_redirect_match";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "is_title_match";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "max_popularity_score";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Domainresultpb_SiribaseEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Domainresultpb_SiribaseEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
      {
        if (*(v2 + 48) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
        {
          if (*(v2 + 52) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 53) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (*(v2 + 56) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
              {
                v13 = v2 + *(type metadata accessor for Domainresultpb_SiribaseEntity(0) + 44);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Domainresultpb_SiribaseEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 48) != *(v0 + 48) || *(v1 + 52) != *(v0 + 52) || *(v1 + 53) != *(v0 + 53) || *(v1 + 56) != *(v0 + 56))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Domainresultpb_SiribaseEntity(0) + 44);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  sub_1B8CD1B50(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E0D018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF68, type metadata accessor for Domainresultpb_SiribaseEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0D098(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0D108()
{
  sub_1B8CD1B50(&qword_1EBABAF18, type metadata accessor for Domainresultpb_SiribaseEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0D1A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABAEA0);
  __swift_project_value_buffer(v0, qword_1EBABAEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inline_card_eligible";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "inline_rerank_eligible";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ranked_experience_sections";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kg_intent_eligible";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Domainresultpb_LayoutInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Domainresultpb_LayoutInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
    {
      if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
      {
        if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          v4 = v2 + *(type metadata accessor for Domainresultpb_LayoutInfo(0) + 32);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Domainresultpb_LayoutInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 1) != *(v5 + 1) || (sub_1B8D6123C(*(v3 + 8), *(v2 + 8)) & 1) == 0 || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Domainresultpb_LayoutInfo(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_8();
  sub_1B8CD1B50(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E0D680(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1B50(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E0D760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B50(&qword_1EBABAF60, type metadata accessor for Domainresultpb_LayoutInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E0D7E0(uint64_t a1)
{
  v2 = sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E0D850()
{
  sub_1B8CD1B50(&qword_1EBABAF30, type metadata accessor for Domainresultpb_LayoutInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E0D8D0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E0D924()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E0D97C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E0DD9C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Domainresultpb_DomainResult._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E0DE28()
{
  result = type metadata accessor for Kgqsapipb_KGDBResponse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Mapspb_LocalSearchBusiness(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Snippetpb_WebImagesSnippet(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Snippetpb_MoviesSnippet(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Snippetpb_TvShowSnippet(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Snippetpb_MediaSnippet(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Snippetpb_ShoppingSnippet();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Snippetpb_Visual3PSnippet();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Snippetpb_ExperimentalVisualSnippet(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Snippetpb_FoodSnippet();
                    if (v10 <= 0x3F)
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
    }
  }

  return result;
}

uint64_t sub_1B8E0DF64()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E0E02C()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E0E0C8()
{
  sub_1B8E0E250(319, &qword_1ED9CCB18, type metadata accessor for Domainresultpb_DomainResult.OneOf_Snippet);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8E0E250(319, &qword_1ED9CD8F8, type metadata accessor for Tophitpb_TopHit);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B8E0E250(319, &qword_1ED9CCC58, type metadata accessor for Domainresultpb_LayoutInfo);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8E0E250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  result = type metadata accessor for Domainresultpb_DomainResult(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_12_7()
{
  result = type metadata accessor for Domainresultpb_DomainResult(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_7()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_31_6()
{
  v0 = type metadata accessor for Domainresultpb_DomainResult._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_49_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_50_2(uint64_t a1@<X8>)
{
  v3 = *(a1 + 20);
  v4 = *(v2 + v3);
  v5 = *(v1 + v3);
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_68_2()
{

  return type metadata accessor for Domainresultpb_DomainResult(0);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_1B8E0D924();
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return swift_getEnumCaseMultiPayload();
}

void OUTLINED_FUNCTION_77_2()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_84_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_87_1()
{
}

uint64_t sub_1B8E0E750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1F75C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_Status.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8E0E83C@<X0>(uint64_t *a1@<X8>)
{
  result = static Electionspb_Status.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E0E88C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1E03C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_DialogID.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E0E978@<X0>(uint64_t *a1@<X8>)
{
  result = static Electionspb_DialogID.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E0E9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E1E090();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Electionspb_ElectionResultUseCase.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B8E0EAB4@<X0>(uint64_t *a1@<X8>)
{
  result = static Electionspb_ElectionResultUseCase.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Electionspb_ElectionRace.siribaseID.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0EB3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.siribaseID.setter();
}

void Electionspb_ElectionRace.siribaseID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.siribaseID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0EC60(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.siribaseID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.name.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0ED34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.name.setter();
}

void Electionspb_ElectionRace.name.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0EE38(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.name.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.politicalPartyID.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0EF0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.politicalPartyID.setter();
}

void Electionspb_ElectionRace.politicalPartyID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.politicalPartyID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F010(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.politicalPartyID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.politicalParty.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0F0E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.politicalParty.setter();
}

void Electionspb_ElectionRace.politicalParty.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.politicalParty.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F1E8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.politicalParty.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.jurisdiction.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0F2BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.jurisdiction.setter();
}

void Electionspb_ElectionRace.jurisdiction.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 88);
  *(v5 + 80) = v2;
  *(v5 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.jurisdiction.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 88);
  *(v1 + 48) = *(v5 + 80);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F3C0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.jurisdiction.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.raceDate.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0F494(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.raceDate.setter();
}

void Electionspb_ElectionRace.raceDate.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 104);
  *(v5 + 96) = v2;
  *(v5 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.raceDate.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 104);
  *(v1 + 48) = *(v5 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F598(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.raceDate.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.raceType.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 112);
}

uint64_t sub_1B8E0F668(uint64_t *a1)
{
  v1 = *a1;

  return Electionspb_ElectionRace.raceType.setter();
}

uint64_t Electionspb_ElectionRace.raceType.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Electionspb_ElectionRace(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 112);
  *(v6 + 112) = v0;
}

uint64_t Electionspb_ElectionRace.raceType.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 112);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F774(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Electionspb_ElectionRace.raceType.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_16_8();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8E156D8(v14);
      OUTLINED_FUNCTION_15(v15);
    }

    OUTLINED_FUNCTION_59_3();
    v16 = *(v11 + 112);
    *(v11 + 112) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.officeContested.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E0F85C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.officeContested.setter();
}

void Electionspb_ElectionRace.officeContested.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 128);
  *(v5 + 120) = v2;
  *(v5 + 128) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.officeContested.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 128);
  *(v1 + 48) = *(v5 + 120);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0F960(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.officeContested.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 128);
    *(v9 + 120) = v4;
    *(v9 + 128) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.delegateCount.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 136);
}

uint64_t Electionspb_ElectionRace.delegateCount.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 136) = v0;
  return result;
}

uint64_t Electionspb_ElectionRace.delegateCount.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FAE4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_135_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E156D8(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 136) = v3;

  free(v1);
}

float Electionspb_ElectionRace.precinctReported.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 140);
}

uint64_t Electionspb_ElectionRace.precinctReported.setter()
{
  v4 = OUTLINED_FUNCTION_141_2();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8E156D8(v6);
    *(v0 + v2) = v5;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 140) = v3;
  return result;
}

uint64_t Electionspb_ElectionRace.precinctReported.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + 140);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FC68(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_134_1(v5);
  v7 = *(v3 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8E156D8(v10);
    OUTLINED_FUNCTION_15(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 140) = v4;

  free(v1);
}

uint64_t Electionspb_ElectionRace.candidateInfo.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 144);
}

uint64_t sub_1B8E0FD34(uint64_t *a1)
{
  v1 = *a1;

  return Electionspb_ElectionRace.candidateInfo.setter();
}

uint64_t Electionspb_ElectionRace.candidateInfo.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Electionspb_ElectionRace(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E156D8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 144);
  *(v6 + 144) = v0;
}

uint64_t Electionspb_ElectionRace.candidateInfo.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E0FE40(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Electionspb_ElectionRace.candidateInfo.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_16_8();
      v14 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8E156D8(v14);
      OUTLINED_FUNCTION_15(v15);
    }

    OUTLINED_FUNCTION_59_3();
    v16 = *(v11 + 144);
    *(v11 + 144) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 152);
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 152) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isSuperTuesday.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 152);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E0FFD8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 152) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isFirstRace.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 153);
}

uint64_t Electionspb_ElectionRace.isFirstRace.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 153) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isFirstRace.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 153);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10148(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 153) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isToday.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 154);
}

uint64_t Electionspb_ElectionRace.isToday.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 154) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isToday.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 154);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E102B8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 154) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isCancelled.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 155);
}

uint64_t Electionspb_ElectionRace.isCancelled.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 155) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isCancelled.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 155);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10428(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 155) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.isInFuture.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 156);
}

uint64_t Electionspb_ElectionRace.isInFuture.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 156) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.isInFuture.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 156);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E10598(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 156) = v3;

  free(v1);
}

uint64_t Electionspb_ElectionRace.lastUpdated.getter()
{
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8E10658(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Electionspb_ElectionRace.lastUpdated.setter();
}

void Electionspb_ElectionRace.lastUpdated.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_6();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E156D8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 168);
  *(v5 + 160) = v2;
  *(v5 + 168) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Electionspb_ElectionRace.lastUpdated.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_11(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 168);
  *(v1 + 48) = *(v5 + 160);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E1075C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Electionspb_ElectionRace.lastUpdated.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_16_8();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8E156D8(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 168);
    *(v9 + 160) = v4;
    *(v9 + 168) = v3;
  }

  free(v1);
}

uint64_t Electionspb_ElectionRace.winnerDeclared.getter()
{
  OUTLINED_FUNCTION_11_7();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 176);
}

uint64_t Electionspb_ElectionRace.winnerDeclared.setter()
{
  v3 = OUTLINED_FUNCTION_21_4();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_8();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8E156D8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 176) = v0 & 1;
  return result;
}

uint64_t Electionspb_ElectionRace.winnerDeclared.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_5_7(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 176);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8E108E0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_16_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E156D8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v3;

  free(v1);
}

uint64_t Electionspb_VoteInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Electionspb_VoteInfo(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Electionspb_ElectionRace.totalVoteInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Electionspb_VoteInfo(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    OUTLINED_FUNCTION_133_2();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_137_1();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E10B54(uint64_t *a1)
{
  v3 = OUTLINED_FUNCTION_690();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_7();
  v8 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_132_1();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBABB160, &qword_1B9656D10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8E1632C();
  }

  return result;
}