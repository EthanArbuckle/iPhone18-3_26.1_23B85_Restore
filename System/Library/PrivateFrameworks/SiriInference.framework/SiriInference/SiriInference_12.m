uint64_t sub_1DD46CC1C(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  v3 = *(v1 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CCBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD46CD6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD46CDC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD46CE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DD46CE9C()
{
  type metadata accessor for ContactResolverConfig(319);
  if (v0 <= 0x3F)
  {
    sub_1DD46CF80(319, &qword_1ECCDCF68, &qword_1ECCDCF70, &qword_1DD64CC48);
    if (v1 <= 0x3F)
    {
      sub_1DD46CF80(319, &qword_1ECCDCF78, &qword_1ECCDCF80, &qword_1DD64CC50);
      if (v2 <= 0x3F)
      {
        sub_1DD46CFD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD46CF80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DD6405F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DD46CFD4()
{
  if (!qword_1ECCDCF88)
  {
    type metadata accessor for RelationshipLocalizer();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDCF88);
    }
  }
}

uint64_t sub_1DD46D034(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1DD46D074(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD46D108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF48, &unk_1DD664BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for ContactsFrameworkMatcher()
{
  result = qword_1EE164068;
  if (!qword_1EE164068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD46D204()
{
  result = sub_1DD3C6C14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD46D298(uint64_t a1, void (*a2)(uint64_t *, _OWORD *))
{
  v7 = a1;
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!*(&v6 + 1))
    {

      return v7;
    }

    v5[0] = v5[3];
    v5[1] = v5[4];
    v5[2] = v6;
    a2(&v7, v5);
    if (v2)
    {
      break;
    }

    sub_1DD390754(v5, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  }

  sub_1DD390754(v5, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD46D394(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1DD46D494(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 40);
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    v8 = *v7;
    v10[0] = *(v7 - 1);
    v10[1] = v8;

    a2(&v11, v10);
    if (v4)
    {
      break;
    }

    v7 += 2;
    if (!--v6)
    {
      return v11;
    }
  }
}

uint64_t sub_1DD46D53C(uint64_t a1, void (*a2)(uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v12;
  }

  while (1)
  {
    memcpy(__dst, v7, sizeof(__dst));
    memcpy(__src, v7, sizeof(__src));
    sub_1DD3EB3D0(__dst, v9, &qword_1ECCDBCA8, &unk_1DD649E40);
    a2(&v12, __src);
    if (v4)
    {
      break;
    }

    memcpy(v9, __src, sizeof(v9));
    sub_1DD390754(v9, &qword_1ECCDBCA8, &unk_1DD649E40);
    v7 += 104;
    if (!--v6)
    {
      return v12;
    }
  }

  memcpy(v9, __src, sizeof(v9));
  sub_1DD390754(v9, &qword_1ECCDBCA8, &unk_1DD649E40);
}

uint64_t sub_1DD46D650(uint64_t a1)
{
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = OUTLINED_FUNCTION_0(v140);
  v142 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v145 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  v137 = v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v135 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_37_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_3();
  v138 = v16;
  v133 = type metadata accessor for Contact();
  v17 = OUTLINED_FUNCTION_0(v133);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v132 = v21 - v20;
  v22 = type metadata accessor for Signpost();
  v23 = OUTLINED_FUNCTION_7(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    v29 = qword_1EE16F0C0;
    v30 = v28 + *(v22 + 5);
    *v30 = "ContactResolver.1PMatcher";
    *(v30 + 8) = 25;
    *(v30 + 16) = 2;
    v31 = v29;
    sub_1DD63F9B8();
    *(v28 + *(v22 + 6)) = v31;
    v31;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1DD643F90;
    v33 = sub_1DD6408F8();
    v35 = v34;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1DD392BD8();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    v134 = v28;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v36 = sub_1DD63F9F8();
    v37 = __swift_project_value_buffer(v36, qword_1EE16F068);
    v38 = sub_1DD63F9D8();
    sub_1DD640368();
    v39 = OUTLINED_FUNCTION_5_32();
    v28 = v138;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v37;
      v42 = swift_slowAlloc();
      *v42 = 0;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v43, v44, v45, v46, v42, 2u);
      v37 = v41;
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    sub_1DD46E2B4(a1);
    v47 = v140;
    if (v143)
    {
      break;
    }

    v22 = a1;
    v61 = sub_1DD63F9D8();
    v62 = sub_1DD640368();

    v131 = v62;
    if (os_log_type_enabled(v61, v62))
    {
      v130 = v61;
      OUTLINED_FUNCTION_18_1();
      swift_slowAlloc();
      v63 = OUTLINED_FUNCTION_24_9();
      v62 = v63;
      v150 = v63;
      *v37 = 136315138;
      v64 = *(a1 + 16);
      v65 = MEMORY[0x1E69E7CC0];
      if (v64)
      {
        v129 = v63;
        v149 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5EC(0, v64, 0);
        v65 = v149;
        OUTLINED_FUNCTION_18_3();
        v67 = a1 + v66;
        v144 = *(v68 + 72);
        do
        {
          sub_1DD3EB3D0(v67, v138, &qword_1ECCDBBE8, &qword_1DD644470);
          OUTLINED_FUNCTION_3_29();
          sub_1DD470F08(v138, v132, v69);
          sub_1DD390754(v138, &qword_1ECCDBBE8, &qword_1DD644470);
          v71 = *(v149 + 16);
          v70 = *(v149 + 24);
          if (v71 >= v70 >> 1)
          {
            v74 = OUTLINED_FUNCTION_1_0(v70);
            sub_1DD42B5EC(v74, v71 + 1, 1);
          }

          *(v149 + 16) = v71 + 1;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v132, v149 + v72 + *(v73 + 72) * v71);
          v67 += v144;
          --v64;
        }

        while (v64);
        v62 = v129;
      }

      v75 = MEMORY[0x1E12B2430](v65, v133);
      v77 = v76;

      v78 = sub_1DD39565C(v75, v77, &v150);

      *(v37 + 4) = v78;
      OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v130, v131, "raw matches: %s");
      __swift_destroy_boxed_opaque_existential_1(v62);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v47 = v140;
      v22 = a1;
    }

    else
    {
    }

    v79 = 0;
    v143 = v22[2];
    v146 = MEMORY[0x1E69E7CC0];
    while (v143 != v79)
    {
      if (v79 >= v22[2])
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_34_10();
      v28 = *(v80 + 72);
      OUTLINED_FUNCTION_23_14();
      sub_1DD3EB3D0(v81, v82, v83, v84);
      v85 = v1 + *(v47 + 36);
      if (v85[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)])
      {
        sub_1DD390754(v1, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v79;
        v22 = a1;
      }

      else
      {
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v86, v87, v88, v89);
        v90 = v146;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v146;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v92 = v146[2];
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8();
          v90 = v150;
        }

        v22 = a1;
        v93 = v90;
        v94 = *(v90 + 16);
        v95 = *(v93 + 24);
        v96 = v94 + 1;
        if (v94 >= v95 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v95);
          v147 = v101;
          sub_1DD42B4F8();
          v96 = v147;
          v22 = a1;
          v93 = v150;
        }

        ++v79;
        *(v93 + 16) = v96;
        v146 = v93;
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v97, v98, v99, v100);
        v47 = v140;
      }
    }

    v102 = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v1 = &qword_1ECCDBBE8;
    while (v143 != v102)
    {
      if (v102 >= v22[2])
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_34_10();
      v28 = *(v104 + 72);
      sub_1DD3EB3D0(v62 + v22 + v28 * v102, v2, &qword_1ECCDBBE8, &qword_1DD644470);
      v105 = v2 + *(v47 + 36);
      if (*(v105 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
      {
        sub_1DD3EB4B8(v2, v135, &qword_1ECCDBBE8, &qword_1DD644470);
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v103;
        if ((v106 & 1) == 0)
        {
          v107 = *(v103 + 16);
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8();
          v103 = v150;
        }

        v22 = a1;
        v109 = *(v103 + 16);
        v108 = *(v103 + 24);
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v108);
          v112 = v111;
          sub_1DD42B4F8();
          v110 = v112;
          v22 = a1;
          v103 = v150;
        }

        ++v102;
        *(v103 + 16) = v110;
        sub_1DD3EB4B8(v135, v62 + v103 + v109 * v28, &qword_1ECCDBBE8, &qword_1DD644470);
        v47 = v140;
      }

      else
      {
        sub_1DD390754(v2, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v102;
        v22 = a1;
      }
    }

    LOBYTE(v113) = v146;
    v114 = sub_1DD46FACC(v146);

    v150 = v114;
    sub_1DD60782C();
    v115 = sub_1DD3C67E4(v150);

    v60 = sub_1DD3C6AF8(v115);

    if (!v143)
    {
LABEL_61:

      v125 = sub_1DD63F9D8();
      v126 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v126))
      {
        OUTLINED_FUNCTION_18_1();
        v127 = swift_slowAlloc();
        *v127 = 134217984;
        *(v127 + 4) = *(v60 + 16);
        _os_log_impl(&dword_1DD38D000, v125, v113, "found %ld matches after deduping", v127, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      goto LABEL_64;
    }

    v113 = 0;
    v22 = a1;
    v28 = a1 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
    v116 = v137;
    v135 = v28;
    v136 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    while (v113 < v22[2])
    {
      v148 = *(v142 + 72);
      sub_1DD3EB3D0(v28 + v148 * v113, v116, &qword_1ECCDBBE8, &qword_1DD644470);
      v117 = v116 + *(v47 + 36);
      v118 = type metadata accessor for ContactResolver.SignalSet(0);
      if (v117[*(v118 + 140)] == 1)
      {
        v138 = v118;
        v139 = v113;
        v119 = *v116;
        v2 = v116[1];
        v1 = *(v60 + 16);

        v28 = 0;
        v120 = v136;
        while (1)
        {
          if (v1 == v28)
          {

            v47 = v140;
            v22 = a1;
LABEL_59:
            v116 = v137;
            v113 = v139;
            v28 = v135;
            goto LABEL_60;
          }

          if (v28 >= *(v60 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v121 = v60;
          v22 = &qword_1DD644470;
          sub_1DD3EB3D0(v60 + v120, v145, &qword_1ECCDBBE8, &qword_1DD644470);
          if (*v145 == v119 && v145[1] == v2)
          {
            break;
          }

          v123 = sub_1DD640CD8();
          sub_1DD390754(v145, &qword_1ECCDBBE8, &qword_1DD644470);
          if (v123)
          {
            goto LABEL_55;
          }

          ++v28;
          v120 += v148;
          v60 = v121;
        }

        sub_1DD390754(v145, &qword_1ECCDBBE8, &qword_1DD644470);
LABEL_55:
        v60 = v121;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18(v121);
          v60 = v124;
        }

        v47 = v140;
        v22 = a1;
        if (v28 < *(v60 + 16))
        {
          *(v60 + *(v138 + 140) + *(v140 + 36) + v120) = 1;
          goto LABEL_59;
        }

        goto LABEL_69;
      }

      v47 = v140;
      v22 = a1;
LABEL_60:
      ++v113;
      sub_1DD390754(v116, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v113 == v143)
      {
        goto LABEL_61;
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v48 = v143;
  v49 = sub_1DD63F9D8();
  v50 = sub_1DD640378();

  if (os_log_type_enabled(v49, v50))
  {
    OUTLINED_FUNCTION_18_1();
    swift_slowAlloc();
    v51 = OUTLINED_FUNCTION_24_9();
    v150 = v51;
    *v37 = 136315138;
    v52 = v143;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v53 = sub_1DD63FE38();
    v55 = sub_1DD39565C(v53, v54, &v150);

    *(v37 + 4) = v55;
    OUTLINED_FUNCTION_38_8();
    OUTLINED_FUNCTION_44_9(v56, v57, v58, v59);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_64:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD470F64(v134, type metadata accessor for Signpost);
  return v60;
}

unint64_t sub_1DD46E2B4(uint64_t a1)
{
  v276 = type metadata accessor for ContactResolver.SignalSet(0);
  v2 = OUTLINED_FUNCTION_7(v276);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v251 = v6 - v5;
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  v8 = OUTLINED_FUNCTION_0(i);
  v241 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v243 = (&v240 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFD0, &qword_1DD64CDA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_2_1();
  v244 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v245 = v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  v279 = v19;
  v282 = type metadata accessor for Contact();
  v20 = OUTLINED_FUNCTION_7(v282);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v246 = v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  v249 = v25;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v240 - v27;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v29 = OUTLINED_FUNCTION_0(v269);
  v273 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v248 = v33;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  v247 = v35;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  v278 = v37;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  v285 = v39;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16_3();
  v260 = v41;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v42 = OUTLINED_FUNCTION_0(v257);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  v250 = v47;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_16_3();
  v272 = v49;
  v50 = *(a1 + 16);
  sub_1DD3BEC44();
  v284 = v51;
  v52 = MEMORY[0x1E69E6168];
  v294 = MEMORY[0x1E12B2590](v50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_57_3();
  v268 = i;
  v53 = sub_1DD63FC88();
  v286[2] = v280;
  v54 = v283;
  sub_1DD46D394(v53, sub_1DD470EEC, v286, a1);
  v263 = v54;

  v55 = sub_1DD41B630();
  v293 = v55;
  v256 = v50;
  if (v50)
  {
    v56 = type metadata accessor for ContactsFrameworkMatcher();
    v57 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v262 = v56;
    v58 = *(v56 + 20);
    v254 = a1 + v57;
    v255 = v58;
    v253 = *(v44 + 72);
    *&v59 = 136315138;
    v252 = v59;
    *&v59 = 134217984;
    v242 = v59;
    OUTLINED_FUNCTION_32_10();
    v275 = v28;
    v61 = v272;
    while (1)
    {
      v258 = v60;
      sub_1DD3EB3D0(v254 + v253 * v60, v61, &qword_1ECCDBC18, &unk_1DD6459A0);
      memcpy(v287, v61, 0xF0uLL);
      v62 = *(v61 + 240);
      v288 = *(v61 + 248);
      v291 = type metadata accessor for StringTokenizer();
      v292 = &off_1F58C2FE8;
      __swift_allocate_boxed_opaque_existential_1(&v289);
      OUTLINED_FUNCTION_16_19();
      sub_1DD470F08(v280 + v255, v63, v64);
      v287[30] = v62;
      sub_1DD41E258();
      MEMORY[0x1EEE9AC00](v65);
      v66 = v263;
      sub_1DD582E38();
      v68 = v67;
      v263 = v66;

      __swift_destroy_boxed_opaque_existential_1(&v289);
      v277 = v68;
      v287[0] = v68;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD4477A4();
      sub_1DD63FD58();
      v71 = v70;
      OUTLINED_FUNCTION_1_25();
      v274 = v73;
      if (!v73 || (v281 = v72, sub_1DD47EEBC(v72, v71, v294)))
      {

        OUTLINED_FUNCTION_27_12();
        if (v75 == 1 && *(v62 + 16))
        {
          v277 = v74;
          LODWORD(v274) = *(v62 + 32);
          v76 = *(v62 + 48);
          v271 = *(v62 + 40);
          v78 = *(v62 + 56);
          v77 = *(v62 + 64);
          v79 = *(v62 + 72);
          v283 = *(i + 16);
          v284 = i;
          v281 = v76;

          for (i = 0; ; ++i)
          {
            v80 = v260;
            if (v283 == i)
            {

              goto LABEL_80;
            }

            if (i >= *(v284 + 16))
            {
              goto LABEL_129;
            }

            v69 = v28;
            v81 = v284 + ((*(v273 + 80) + 32) & ~*(v273 + 80)) + *(v273 + 72) * i;
            v52 = &qword_1ECCDBBE8;
            sub_1DD3EB3D0(v81, v260, &qword_1ECCDBBE8, &qword_1DD644470);
            v82 = *v80 == v78 && v80[1] == v77;
            if (v82)
            {
              break;
            }

            v83 = sub_1DD640CD8();
            v84 = v80;
            v85 = v83;
            v86 = sub_1DD390754(v84, &qword_1ECCDBBE8, &qword_1DD644470);
            if (v85)
            {
              goto LABEL_79;
            }
          }

          v86 = sub_1DD390754(v80, &qword_1ECCDBBE8, &qword_1DD644470);
LABEL_79:
          v164 = *(v277 + 248);
          LOBYTE(v287[0]) = v274;
          v52 = v281;
          v287[1] = v271;
          v287[2] = v281;
          v287[3] = v78;
          v287[4] = v77;
          v287[5] = v79;
          MEMORY[0x1EEE9AC00](v86);
          v165 = v263;
          v166 = sub_1DD450728();
          v263 = v165;

          if (v166)
          {
LABEL_80:
            v61 = v272;
            sub_1DD390754(v272, &qword_1ECCDBC18, &unk_1DD6459A0);
            OUTLINED_FUNCTION_32_10();
            goto LABEL_85;
          }

          v167 = v284;
          if (i >= *(v284 + 16))
          {
            goto LABEL_131;
          }

          v168 = v269;
          v69 = v276;
          v169 = v277;
          *(v81 + *(v269 + 36) + v276[51]) = 1;
          v170 = *(v69 + 208);
          v171 = v81 + *(v168 + 36);
          v172 = *(v171 + v170);
          *(v171 + v170) = *(v169 + v170);

          if (i >= *(v167 + 16))
          {
            goto LABEL_132;
          }

          v173 = *(v69 + 212);
          v69 = *(v169 + v173);
          *(v81 + *(v168 + 36) + v173) = v69;
          sub_1DD390754(v272, &qword_1ECCDBC18, &unk_1DD6459A0);
          if (i >= *(v167 + 16))
          {
            goto LABEL_133;
          }

          *(v81 + *(v282 + 92)) = v69 ^ 1;
          OUTLINED_FUNCTION_32_10();
          v61 = v272;
        }

        else
        {
          sub_1DD390754(v61, &qword_1ECCDBC18, &unk_1DD6459A0);
          v52 = v276;
        }

        goto LABEL_85;
      }

      v283 = v71;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v87 = sub_1DD63F9F8();
      v88 = __swift_project_value_buffer(v87, qword_1EE16F068);
      v89 = v283;

      v259 = v88;
      v90 = sub_1DD63F9D8();
      v91 = sub_1DD640368();

      if (os_log_type_enabled(v90, v91))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        v92 = OUTLINED_FUNCTION_24_9();
        v93 = OUTLINED_FUNCTION_26_13(v92);
        *(v69 + 4) = sub_1DD39565C(v93, v89, v94);
        OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v90, v91, "running standard fts search on %s");
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v69 = *(v280 + 3);
      v95 = *(v280 + 4);
      __swift_project_boxed_opaque_existential_1(v280, v69);
      v96 = *(v95 + 8);
      v97 = OUTLINED_FUNCTION_57_3();
      v98 = v263;
      v100 = v99(v97);
      v263 = v98;
      if (v98)
      {
        sub_1DD390754(v272, &qword_1ECCDBC18, &unk_1DD6459A0);

        i = v293;
        goto LABEL_98;
      }

      v101 = v100;
      v102 = sub_1DD63F9D8();
      v103 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v103))
      {
        OUTLINED_FUNCTION_18_1();
        v104 = swift_slowAlloc();
        *v104 = v242;
        *(v104 + 4) = sub_1DD3CC020(v101);
        _os_log_impl(&dword_1DD38D000, v102, v69, "found %ld contacts via standard search", v104, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v105 = v283;

      sub_1DD56CE00(v287, v281, v105);

      v106 = sub_1DD3CC020(v101);
      v61 = v272;
      v271 = v106;
      if (v106)
      {
        break;
      }

LABEL_76:

      sub_1DD390754(v61, &qword_1ECCDBC18, &unk_1DD6459A0);

LABEL_85:
      v60 = v258 + 1;
      if (v258 + 1 == v256)
      {
        v69 = v293;
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_27_12();
    v107 = v52[53];
    v265 = v108;
    v109 = *(v108 + v107);
    v267 = v101 & 0xC000000000000001;
    v261 = v101 + 32;
    OUTLINED_FUNCTION_31_11();
    if (!v82)
    {
      v110 = v111;
    }

    v264 = v110;

    v112 = 0;
    v266 = v101;
    while (1)
    {
      v113 = v267;
      sub_1DD408BFC(v112);
      if (v113)
      {
        v114 = MEMORY[0x1E12B2C10](v112, v101);
      }

      else
      {
        v114 = *(v261 + 8 * v112);
      }

      v115 = v114;
      if (__OFADD__(v112++, 1))
      {
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v284 = i;
      sub_1DD470814(v114, v61, v28);
      OUTLINED_FUNCTION_3_29();
      v117 = v285;
      sub_1DD470F08(v28, v285, v118);
      v119 = v117 + *(v269 + 36);
      sub_1DD470F08(v265, v119, type metadata accessor for ContactResolver.SignalSet);
      *(v119 + 338) = 1;
      v120 = [v115 isSuggested];
      *(v117 + *(v282 + 84)) = v120;
      *(v119 + 332) = [v115 isSuggested];
      *(v119 + 337) = [v115 hasSuggestedProperties];

      v122 = sub_1DD41859C(v121);
      v123 = sub_1DD470954(v122, v117);
      v124 = v123;
      LODWORD(v117) = v123;

      *(v119 + 333) = v124 & 1;
      *(v119 + 334) = v117 > 0xFF;
      if (v117 < 0x100)
      {
        v125 = 0;
      }

      else
      {
        v125 = *(v119 + v52[35]);
      }

      v126 = v279;
      *(v119 + v52[36]) = v125;
      v127 = *(v285 + 120);
      v128 = *(v285 + 128);
      OUTLINED_FUNCTION_1_25();
      if (v129)
      {
        if (v281 == sub_1DD63FE58() && v283 == v130)
        {
          v132 = 1;
        }

        else
        {
          v132 = sub_1DD640CD8();
        }

        v126 = v279;
      }

      else
      {
        v132 = 0;
      }

      *(v119 + v52[33] + 15) = v132 & 1;
      v133 = *v285;
      v134 = *(v285 + 8);
      sub_1DD59B7D8(*v285, v134, v270);
      v135 = v268;
      if (__swift_getEnumTagSinglePayload(v126, 1, v268) == 1)
      {
        sub_1DD390754(v126, &qword_1ECCDCFD0, &qword_1DD64CDA0);
      }

      else
      {
        v136 = *v126;
        sub_1DD390754(v126 + *(v135 + 48), &qword_1ECCDBC18, &unk_1DD6459A0);
        *(v119 + 339) = 1;
        *(v119 + 344) = v136;
        sub_1DD581CB8(v133, v134);
      }

      v137 = v283;
      *(v285 + *(v282 + 92)) = v264;
      v289 = 0;
      v290 = 0xE000000000000000;
      v287[0] = v281;
      v287[1] = v137;
      v287[2] = 0;
      v287[3] = v274;
      swift_bridgeObjectRetain_n();
      v28 = v275;
      while (1)
      {
        v138 = sub_1DD63FF88();
        if (!v139)
        {
          break;
        }

        v140 = v138;
        v133 = v139;
        if ((sub_1DD63FD18() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v140, v133);
        }
      }

      OUTLINED_FUNCTION_20_14();
      while (1)
      {
        v141 = sub_1DD63FF88();
        if (!v142)
        {
          break;
        }

        v143 = v141;
        v133 = v142;
        if ((sub_1DD63FD38() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v143, v133);
        }
      }

      OUTLINED_FUNCTION_20_14();
      while (1)
      {
        v144 = sub_1DD63FF88();
        if (!v145)
        {
          break;
        }

        v146 = v144;
        v133 = v145;
        if ((sub_1DD63FD08() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v146, v133);
        }
      }

      v147 = v289;
      v148 = v290;
      if (sub_1DD63FF08() >= 3)
      {

        v149 = *(sub_1DD4189F4(v147, v148) + 16);

        v52 = v276;
        if (v149 > 1)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v52 = v276;
      }

      if ((v124 & 1) != 0 || *(v280 + *(v262 + 24)) == 1)
      {
LABEL_67:
        sub_1DD3EB3D0(v285, v278, &qword_1ECCDBBE8, &qword_1DD644470);
        i = v284;
        v151 = *(v284 + 16);
        v150 = *(v284 + 24);
        if (v151 >= v150 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v150);
          sub_1DD3BEC44();
          i = v163;
        }

        OUTLINED_FUNCTION_2_30();
        sub_1DD470F64(v28, v152);
        *(i + 16) = v151 + 1;
        OUTLINED_FUNCTION_18_3();
        v155 = i + v153 + *(v154 + 72) * v151;
        v69 = &qword_1DD644470;
        sub_1DD3EB4B8(v278, v155, &qword_1ECCDBBE8, &qword_1DD644470);
        goto LABEL_74;
      }

      v156 = v283;

      v157 = sub_1DD63F9D8();
      v158 = sub_1DD640368();

      if (os_log_type_enabled(v157, v158))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        v159 = OUTLINED_FUNCTION_24_9();
        v160 = OUTLINED_FUNCTION_26_13(v159);
        *(v133 + 4) = sub_1DD39565C(v160, v156, v161);
        OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v157, v158, "Match was not added because it was a short partial match: %s");
        __swift_destroy_boxed_opaque_existential_1(v159);
        v52 = v276;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      OUTLINED_FUNCTION_2_30();
      v28 = v275;
      sub_1DD470F64(v275, v162);
      i = v284;
      v69 = &qword_1DD644470;
LABEL_74:
      sub_1DD390754(v285, &qword_1ECCDBBE8, &qword_1DD644470);
      v61 = v272;
      v101 = v266;
      if (v112 == v271)
      {

        goto LABEL_76;
      }
    }
  }

  v69 = v55;
  OUTLINED_FUNCTION_32_10();
LABEL_88:
  if (*(v69 + 16))
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_134;
    }

    while (1)
    {
      v174 = sub_1DD63F9F8();
      __swift_project_value_buffer(v174, qword_1EE16F068);

      v175 = sub_1DD63F9D8();
      v176 = sub_1DD640368();
      if (os_log_type_enabled(v175, v176))
      {
        OUTLINED_FUNCTION_18_1();
        v177 = swift_slowAlloc();
        *v177 = 134217984;
        *(v177 + 4) = *(v69 + 16);
        _os_log_impl(&dword_1DD38D000, v175, v176, "running findContacts for %ld IDs", v177, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v178 = *(v280 + 3);
      v179 = *(v280 + 4);
      __swift_project_boxed_opaque_existential_1(v280, v178);

      v69 = sub_1DD594058(v69);
      v180 = v263;
      v181 = (*(v179 + 32))(v69, MEMORY[0x1E69E7CC0], v178, v179);
      v263 = v180;
      if (v180)
      {
        break;
      }

      v182 = v181;

      v183 = sub_1DD63F9D8();
      v184 = sub_1DD640368();
      if (OUTLINED_FUNCTION_2_4(v184))
      {
        OUTLINED_FUNCTION_18_1();
        v185 = swift_slowAlloc();
        *v185 = 134217984;
        *(v185 + 4) = sub_1DD3CC020(v182);

        _os_log_impl(&dword_1DD38D000, v183, v69, "found %ld contacts from IDs", v185, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v280 = sub_1DD3CC020(v182);
      if (!v280)
      {
        goto LABEL_125;
      }

      v278 = v182;
      v279 = v182 & 0xC000000000000001;
      v275 = "ContactResolver.1PMatcher";
      v277 = "meworkMatcher.swift";
      v285 = 4;
      while (1)
      {
        v284 = i;
        v186 = v279;
        v187 = (v285 - 4);
        sub_1DD408BFC(v285 - 4);
        v188 = v186 ? MEMORY[0x1E12B2C10](v187, v182) : *(v182 + 8 * v285);
        if (__OFADD__(v187, 1))
        {
          break;
        }

        v281 = (v187 + 1);
        v283 = v188;
        v189 = [v188 identifier];
        sub_1DD63FDD8();

        if (*(v270 + 16))
        {
          v190 = v270;
          v191 = sub_1DD3978DC();
          v193 = v192;

          v194 = v245;
          if (v193)
          {
            sub_1DD3EB3D0(*(v190 + 56) + *(v241 + 72) * v191, v245, &qword_1ECCDCFC8, &qword_1DD64CD98);
            v195 = 0;
          }

          else
          {
            v195 = 1;
          }

          v196 = v268;
          v197 = v244;
        }

        else
        {

          v195 = 1;
          v196 = v268;
          v197 = v244;
          v194 = v245;
        }

        __swift_storeEnumTagSinglePayload(v194, v195, 1, v196);
        sub_1DD3EB3D0(v194, v197, &qword_1ECCDCFD0, &qword_1DD64CDA0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v197, 1, v196);
        v199 = v246;
        v200 = MEMORY[0x1E69E7CC0];
        if (EnumTagSinglePayload == 1)
        {

          sub_1DD390754(v197, &qword_1ECCDCFD0, &qword_1DD64CDA0);
          type metadata accessor for InferenceError();
          swift_allocObject();
          v237 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000093, v275 | 0x8000000000000000, 0xD000000000000018, v277 | 0x8000000000000000, 181, v200, 2);
          v238 = *(v237 + 32);
          *(v237 + 24) = 0;
          *(v237 + 32) = 0xE000000000000000;

          sub_1DD426968();
          swift_allocError();
          *v239 = v237;
          swift_willThrow();

          sub_1DD390754(v194, &qword_1ECCDCFD0, &qword_1DD64CDA0);
          i = v284;
          goto LABEL_98;
        }

        sub_1DD390754(v194, &qword_1ECCDCFD0, &qword_1DD64CDA0);
        v201 = v197;
        v202 = v243;
        sub_1DD3EB4B8(v201, v243, &qword_1ECCDCFC8, &qword_1DD64CD98);
        v203 = *v202;
        v204 = v202 + *(v196 + 48);
        v205 = v250;
        sub_1DD3EB4B8(v204, v250, &qword_1ECCDBC18, &unk_1DD6459A0);
        v206 = v283;
        sub_1DD40B108();
        v207 = *(v205 + 184);
        v208 = v251;
        if (v207)
        {
          v209 = v205;
          v210 = *(v205 + 168);
          v211 = v199;
          v212 = *(v209 + 176);
          v213 = *(v211 + 216);
          v214 = OUTLINED_FUNCTION_57_3();
          sub_1DD41D254(v214, v215, v207);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v233 = *(v213 + 16);
            OUTLINED_FUNCTION_26_2();
            sub_1DD3BF940();
            v213 = v234;
          }

          v217 = *(v213 + 16);
          v216 = *(v213 + 24);
          if (v217 >= v216 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v216);
            sub_1DD3BF940();
            v213 = v235;
          }

          v218 = OUTLINED_FUNCTION_57_3();
          sub_1DD4178B4(v218, v219, v207);
          *(v213 + 16) = v217 + 1;
          v220 = (v213 + 48 * v217);
          v220[4] = 0;
          v220[5] = 0xE000000000000000;
          v220[6] = v212;
          v220[7] = v207;
          v220[8] = 0;
          v220[9] = 0xE000000000000000;
          v199 = v246;
          *(v246 + 216) = v213;
          v52 = v276;
          v205 = v250;
          v208 = v251;
        }

        v221 = v205 + *(v257 + 36);
        if (*(v221 + v52[51]))
        {
          v222 = (*(v221 + v52[53]) & 1) == 0;
        }

        else
        {
          v222 = 2;
        }

        *(v199 + *(v282 + 92)) = v222;
        v223 = v249;
        sub_1DD3C95D4(v199, v249);
        sub_1DD470F08(v221, v208, type metadata accessor for ContactResolver.SignalSet);
        *(v208 + 339) = 1;
        *(v208 + 344) = v203;
        OUTLINED_FUNCTION_3_29();
        v224 = v247;
        sub_1DD470F08(v223, v247, v225);
        sub_1DD470F08(v208, v224 + *(v269 + 36), type metadata accessor for ContactResolver.SignalSet);
        sub_1DD3EB3D0(v224, v248, &qword_1ECCDBBE8, &qword_1DD644470);
        i = v284;
        v227 = *(v284 + 16);
        v226 = *(v284 + 24);
        v228 = v285;
        if (v227 >= v226 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v226);
          sub_1DD3BEC44();
          i = v232;
        }

        v182 = v278;

        v69 = &qword_1DD644470;
        sub_1DD390754(v247, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD470F64(v251, type metadata accessor for ContactResolver.SignalSet);
        OUTLINED_FUNCTION_2_30();
        sub_1DD470F64(v249, v229);
        sub_1DD390754(v250, &qword_1ECCDBC18, &unk_1DD6459A0);
        *(i + 16) = v227 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD3EB4B8(v248, i + v230 + *(v231 + 72) * v227, &qword_1ECCDBBE8, &qword_1DD644470);
        v285 = v228 + 1;
        if (v281 == v280)
        {
          goto LABEL_125;
        }
      }

LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

LABEL_98:
  }

  else
  {
LABEL_125:
  }

  return i;
}

uint64_t *sub_1DD46FACC(uint64_t *a1)
{
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = OUTLINED_FUNCTION_0(v206);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v204 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_36_9();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v198 - v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v202 = v19;
  OUTLINED_FUNCTION_8_1();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v198 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v198 - v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  v200 = v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_0();
  v199 = v29;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_37_12();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_0();
  v201 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v198 - v34);
  v36 = *(v1 + *(type metadata accessor for ContactsFrameworkMatcher() + 24));
  v205 = a1;
  if (v36 == 1)
  {
    v204 = v26;
    v37 = 0;
    v38 = a1[2];
    v203 = MEMORY[0x1E69E7CC0];
    v39 = a1;
    while (v38 != v37)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v40, v41, v42, v43);
      OUTLINED_FUNCTION_21_13();
      v45 = v35 + v44;
      if (v45[333] == 1 && v45[334] == 1)
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v46, v47, v48, v49);
        v50 = OUTLINED_FUNCTION_43_10();
        v207 = v39;
        if ((v50 & 1) == 0)
        {
          v51 = v39[2];
          OUTLINED_FUNCTION_10_24();
          v39 = v207;
        }

        v52 = v39[3];
        if (v39[2] >= v52 >> 1)
        {
          OUTLINED_FUNCTION_8_21(v52);
          v202 = v57;
          v203 = v58;
          sub_1DD42B4F8();
        }

        ++v37;
        OUTLINED_FUNCTION_29_9();
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v53, v54, v55, v56);
        v39 = v205;
      }

      else
      {
        sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v37;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v74)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v75 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v75, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v77 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v77, v78))
      {
LABEL_99:
        OUTLINED_FUNCTION_18_1();
        v183 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_20(v183, 3.852e-34);
        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v184, v185, v186, v187, v183, 0xCu);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();

        return v35;
      }

LABEL_100:

      return v35;
    }

    v83 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (v38 != v83)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v84, v85, v86, v87);
      OUTLINED_FUNCTION_21_13();
      if (*(v3 + v88 + 333) == 1 && (v89 = type metadata accessor for ContactResolver.SignalSet(0), OUTLINED_FUNCTION_41_7(v89), (v90 & 1) == 0))
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v91, v92, v93, v94);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v207 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v96 = v35[2];
          OUTLINED_FUNCTION_10_24();
          v35 = v207;
        }

        v97 = v35;
        v98 = v35[2];
        v99 = v97[3];
        v100 = v98 + 1;
        if (v98 >= v99 >> 1)
        {
          OUTLINED_FUNCTION_8_21(v99);
          v203 = v105;
          sub_1DD42B4F8();
          v100 = v203;
          v97 = v207;
        }

        ++v83;
        v97[2] = v100;
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v101, v102, v103, v104);
        v35 = v97;
      }

      else
      {
        sub_1DD390754(v3, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v83;
      }
    }

    if (v35[2])
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v130 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v130, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v131 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v131, v132))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v137 = 0;
    v35 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v138 = v200;
    while (v38 != v137)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_19_16();
      sub_1DD3EB3D0(v139, v140, v141, v142);
      OUTLINED_FUNCTION_21_13();
      v144 = v138 + v143;
      v145 = type metadata accessor for ContactResolver.SignalSet(0);
      if ((*(v144 + *(v145 + 140)) & 1) != 0 || (OUTLINED_FUNCTION_41_7(v145), (v146 & 1) == 0))
      {
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v147, v148, v149, v150);
        v151 = swift_isUniquelyReferenced_nonNull_native();
        v207 = v35;
        if ((v151 & 1) == 0)
        {
          v152 = v35[2];
          OUTLINED_FUNCTION_10_24();
          v35 = v207;
        }

        v154 = v35[2];
        v153 = v35[3];
        v155 = v35;
        if (v154 >= v153 >> 1)
        {
          OUTLINED_FUNCTION_8_21(v153);
          sub_1DD42B4F8();
          v155 = v207;
        }

        ++v137;
        v155[2] = v154 + 1;
        OUTLINED_FUNCTION_19_16();
        sub_1DD3EB4B8(v156, v157, v158, v159);
        v35 = v155;
        goto LABEL_66;
      }

      sub_1DD390754(v138, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v137;
    }

    if (v35[2])
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v176 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v176, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v177 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v177, v178))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }
  }

  else
  {
    v200 = v12;
    v201 = v2;
    v59 = 0;
    v60 = a1[2];
    v203 = MEMORY[0x1E69E7CC0];
    v35 = &qword_1ECCDBBE8;
    v61 = a1;
    while (v60 != v59)
    {
      OUTLINED_FUNCTION_1_39();
      sub_1DD3EB3D0(v62 + v12 * v59, v23, &qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_21_13();
      v64 = &v23[v63];
      if (v23[v63 + 333] == 1 && ((v64[334] & 1) != 0 || (v65 = type metadata accessor for ContactResolver.SignalSet(0), v66 = OUTLINED_FUNCTION_41_7(v65), (v67 & 1) == 0) && (v64[*(v66 + 148)] & 1) == 0))
      {
        sub_1DD3EB4B8(v23, v202, &qword_1ECCDBBE8, &qword_1DD644470);
        v68 = OUTLINED_FUNCTION_43_10();
        v207 = v64;
        if ((v68 & 1) == 0)
        {
          v69 = *(v64 + 2);
          OUTLINED_FUNCTION_10_24();
          v64 = v207;
        }

        v70 = *(v64 + 3);
        if (*(v64 + 2) >= v70 >> 1)
        {
          OUTLINED_FUNCTION_8_21(v70);
          v203 = v72;
          v199 = v73;
          sub_1DD42B4F8();
        }

        ++v59;
        OUTLINED_FUNCTION_29_9();
        sub_1DD3EB4B8(v202, v71, &qword_1ECCDBBE8, &qword_1DD644470);
        v61 = v205;
      }

      else
      {
        sub_1DD390754(v23, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v59;
        v61 = v205;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v79)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v80 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v80, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v81 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v81, v82))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v106 = 0;
    v203 = MEMORY[0x1E69E7CC0];
    v35 = &qword_1DD644470;
    while (v60 != v106)
    {
      OUTLINED_FUNCTION_1_39();
      OUTLINED_FUNCTION_23_14();
      sub_1DD3EB3D0(v107, v108, v109, v110);
      OUTLINED_FUNCTION_21_13();
      v112 = &v18[v111];
      v113 = type metadata accessor for ContactResolver.SignalSet(0);
      if (v112[*(v113 + 140)] & 1) == 0 && ((v114 = OUTLINED_FUNCTION_41_7(v113), (v115) || (v112[*(v114 + 148)]))
      {
        sub_1DD390754(v18, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v106;
        v61 = v205;
      }

      else
      {
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v116, v117, v118, v119);
        v120 = OUTLINED_FUNCTION_43_10();
        v207 = v112;
        if ((v120 & 1) == 0)
        {
          v121 = *(v112 + 2);
          OUTLINED_FUNCTION_10_24();
          v112 = v207;
        }

        v123 = *(v112 + 2);
        v122 = *(v112 + 3);
        v124 = v123 + 1;
        if (v123 >= v122 >> 1)
        {
          OUTLINED_FUNCTION_8_21(v122);
          v203 = v129;
          sub_1DD42B4F8();
          v124 = v203;
          v112 = v207;
        }

        ++v106;
        *(v112 + 2) = v124;
        v203 = v112;
        OUTLINED_FUNCTION_23_14();
        sub_1DD3EB4B8(v125, v126, v127, v128);
        v61 = v205;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v133)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v134 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v134, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v135 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v135, v136))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    v160 = 0;
    v203 = MEMORY[0x1E69E7CC0];
    v161 = &qword_1ECCDBBE8;
    v35 = &qword_1DD644470;
    while (v60 != v160)
    {
      v162 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v163 = *(v7 + 72);
      v164 = v61 + v162 + v163 * v160;
      v165 = v204;
      v166 = v161;
      sub_1DD3EB3D0(v164, v204, v161, &qword_1DD644470);
      OUTLINED_FUNCTION_21_13();
      v168 = v165 + v167;
      switch(*(v165 + v167 + 256))
      {
        case 1:

          v61 = v205;
          goto LABEL_81;
        default:
          v169 = sub_1DD640CD8();

          v61 = v205;
          if ((v169 & 1) == 0)
          {
            goto LABEL_84;
          }

LABEL_81:
          if (*(v168 + 333) == 1 && (v170 = type metadata accessor for ContactResolver.SignalSet(0), *(v168 + *(v170 + 148)) == 1) && *(v168 + *(v170 + 132) + 15) == 1)
          {
            sub_1DD3EB4B8(v204, v200, v166, &qword_1DD644470);
            v171 = OUTLINED_FUNCTION_43_10();
            v207 = v61;
            if ((v171 & 1) == 0)
            {
              v172 = v61[2];
              OUTLINED_FUNCTION_10_24();
              v61 = v207;
            }

            v174 = v61[2];
            v173 = v61[3];
            if (v174 >= v173 >> 1)
            {
              OUTLINED_FUNCTION_8_21(v173);
              sub_1DD42B4F8();
              v61 = v207;
            }

            ++v160;
            v61[2] = v174 + 1;
            v203 = v61;
            v175 = v61 + v162 + v174 * v163;
            v161 = v166;
            sub_1DD3EB4B8(v200, v175, v166, &qword_1DD644470);
            v61 = v205;
          }

          else
          {
LABEL_84:
            v161 = v166;
            sub_1DD390754(v204, v166, &qword_1DD644470);
            ++v160;
          }

          break;
      }
    }

    OUTLINED_FUNCTION_39_7();
    if (v179)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v180 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_22_12(v180, qword_1EE16F068);
      v76 = sub_1DD63F9D8();
      sub_1DD640368();
      v181 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v181, v182))
      {
        goto LABEL_99;
      }

      goto LABEL_100;
    }
  }

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v189 = sub_1DD63F9F8();
  __swift_project_value_buffer(v189, qword_1EE16F068);
  v190 = sub_1DD63F9D8();
  sub_1DD640368();
  v191 = OUTLINED_FUNCTION_5_32();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    *v193 = 0;
    OUTLINED_FUNCTION_38_8();
    _os_log_impl(v194, v195, v196, v197, v193, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD470814@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  sub_1DD40B108();
  v6 = a2[23];
  if (v6)
  {
    v8 = a2[21];
    v7 = a2[22];
    v9 = *(a3 + 216);
    sub_1DD41D254(v8, v7, a2[23]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v9 + 16);
      OUTLINED_FUNCTION_26_2();
      sub_1DD3BF940();
      v9 = v23;
    }

    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    if (v11 >= v10 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v10);
      sub_1DD3BF940();
      v9 = v24;
    }

    sub_1DD4178B4(v8, v7, v6);
    *(v9 + 16) = v11 + 1;
    v12 = (v9 + 48 * v11);
    v12[4] = 0;
    v12[5] = 0xE000000000000000;
    v12[6] = v7;
    v12[7] = v6;
    v12[8] = 0;
    v12[9] = 0xE000000000000000;
    *(a3 + 216) = v9;
  }

  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  v14 = type metadata accessor for ContactResolver.SignalSet(0);
  v15 = v13[*(v14 + 204)];
  v16 = v13[*(v14 + 212)];
  OUTLINED_FUNCTION_31_11();
  if (v19)
  {
    v20 = v17;
  }

  else
  {
    v20 = v18;
  }

  result = type metadata accessor for Contact();
  *(a3 + *(result + 92)) = v20;
  return result;
}

uint64_t sub_1DD470954(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ContactsFrameworkMatcher() + 20);
  v17[3] = type metadata accessor for StringTokenizer();
  v17[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v17);
  OUTLINED_FUNCTION_16_19();
  sub_1DD470F08(v3 + v6, v7, v8);
  sub_1DD40FC64();
  sub_1DD582E38();
  v10 = v9;

  v11 = sub_1DD41859C(v10);
  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_1DD586D00(v3 + v6, 1, a2);
  v12 = sub_1DD5839F8(v11, a1);

  v13 = OUTLINED_FUNCTION_15_0();
  LOBYTE(a1) = sub_1DD5839F8(v13, v14);

  if (a1)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 0xFFFFFFFE | v12 & 1;
}

uint64_t sub_1DD470A74(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v47 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  v43 = *(v45 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = (&v42 - v7);
  v55 = sub_1DD63E428();
  v8 = *(*(v55 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2;
  v56 = *(a2 + 240);
  v53 = *(v56 + 16);
  if (!v53)
  {
    return result;
  }

  v12 = 0;
  v51 = (v10 + 8);
  v52 = (v10 + 104);
  v50 = *MEMORY[0x1E69D1AE8];
  v13 = (v56 + 72);
  while (v12 < *(v56 + 16))
  {
    v58 = *(v13 - 40);
    v14 = *(v13 - 4);
    v15 = *(v13 - 3);
    v16 = *(v13 - 1);
    v57 = *(v13 - 2);
    v17 = *v13;
    v19 = v54;
    v18 = v55;
    (*v52)(v54, v50, v55);

    v20 = v16;

    v21 = sub_1DD63E418();
    v23 = v22;
    (*v51)(v19, v18);
    if (v14 == v21 && v15 == v23)
    {
    }

    else
    {
      v25 = sub_1DD640CD8();

      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (((*(v49 + *(type metadata accessor for ContactsFrameworkMatcher() + 28)) | v58) & 1) == 0)
    {
LABEL_18:

      goto LABEL_22;
    }

    v26 = v44;
    v27 = *(v45 + 48);
    *v44 = v17;
    sub_1DD3EB3D0(v46, v26 + v27, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD3EB4B8(v26, v48, &qword_1ECCDCFC8, &qword_1DD64CD98);
    v28 = v47;
    v29 = *v47;
    swift_isUniquelyReferenced_nonNull_native();
    v59 = *v28;
    v30 = v59;
    v31 = sub_1DD3978DC();
    if (__OFADD__(v30[2], (v32 & 1) == 0))
    {
      goto LABEL_25;
    }

    v33 = v31;
    v34 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFD8, &qword_1DD64CDA8);
    if (sub_1DD640A08())
    {
      v35 = sub_1DD3978DC();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v33 = v35;
    }

    v37 = v59;
    if (v34)
    {
      sub_1DD471024(v48, v59[7] + *(v43 + 72) * v33);
    }

    else
    {
      v59[(v33 >> 6) + 8] |= 1 << v33;
      v38 = (v37[6] + 16 * v33);
      *v38 = v57;
      v38[1] = v20;
      sub_1DD3EB4B8(v48, v37[7] + *(v43 + 72) * v33, &qword_1ECCDCFC8, &qword_1DD64CD98);

      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_26;
      }

      v37[2] = v41;
    }

    *v47 = v37;
LABEL_22:
    ++v12;
    v13 += 6;
    if (v53 == v12)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD470F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

uint64_t sub_1DD470F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

BOOL sub_1DD470FBC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1DD5867DC(v7, v8);
}

uint64_t sub_1DD471024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_10_24()
{

  sub_1DD42B4F8();
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_24_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_26_13(uint64_t a1)
{
  *(v1 + 424) = a1;
  *v2 = *(v1 + 112);
  return *(v1 + 360);
}

uint64_t OUTLINED_FUNCTION_43_10()
{
  v2 = *(v0 - 120);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_44_9(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t ContactSlotResolutionTask.init(queries:config:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[5] = a1;
  v5 = type metadata accessor for ContactSlotResolutionTask();
  sub_1DD472E74(a2, a3 + *(v5 + 24), type metadata accessor for ContactResolverConfig);
  v6 = type metadata accessor for ContactResolver();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = ContactResolver.init()();
  a3[3] = v6;
  a3[4] = &off_1F58B3CC8;
  *a3 = v9;
  return sub_1DD472F1C(a2, type metadata accessor for ContactResolverConfig);
}

uint64_t type metadata accessor for ContactSlotResolutionTask()
{
  result = qword_1EE1614E8;
  if (!qword_1EE1614E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  v104 = *(v3 - 8);
  v4 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v105 = &v91 - v5;
  v6 = type metadata accessor for ContactSlotResolutionTask();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContactResolverRunTimeData(0);
  v11 = OUTLINED_FUNCTION_0(v10);
  v106 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v21 = OUTLINED_FUNCTION_0(v20);
  v101 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v91 - v25;
  v27 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v28 = v2[5];
  v29 = *(v7 + 32);
  v30 = *v27;
  sub_1DD43DA04(v28, v2 + v29, v31, v32, v33, v34, v35, v36, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  if (!v1)
  {
    v38 = v37;
    v97 = 0;
    v98 = v28;
    v99 = v2;
    v100 = v20;
    v110 = v16;
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v39 = sub_1DD63F9F8();
      v40 = __swift_project_value_buffer(v39, qword_1EE16F068);

      v41 = sub_1DD63F9D8();
      v42 = sub_1DD640368();

      v43 = os_log_type_enabled(v41, v42);
      v103 = v38;
      v44 = v100;
      if (v43)
      {
        HIDWORD(v96) = v42;
        v45 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v112 = v94;
        v95 = v45;
        *v45 = 136315138;
        v46 = *(v38 + 16);
        v47 = v38;
        v48 = MEMORY[0x1E69E7CC0];
        if (v46)
        {
          v107 = v19;
          v92 = v41;
          v93 = v40;
          v109 = v10;
          v111 = MEMORY[0x1E69E7CC0];
          v49 = OUTLINED_FUNCTION_3_30();
          sub_1DD42BA74(v49, v50, v51);
          v48 = v111;
          OUTLINED_FUNCTION_18_3();
          v53 = v47 + v52;
          v108 = *(v54 + 72);
          v55 = v101;
          do
          {
            v56 = v107;
            sub_1DD472E74(v53, v107, type metadata accessor for ContactResolverRunTimeData);
            sub_1DD472ED0(v56 + *(v109 + 40), v26, &qword_1ECCDBEE0, &unk_1DD645510);
            sub_1DD472F1C(v56, type metadata accessor for ContactResolverRunTimeData);
            v111 = v48;
            v58 = *(v48 + 16);
            v57 = *(v48 + 24);
            if (v58 >= v57 >> 1)
            {
              sub_1DD42BA74(v57 > 1, v58 + 1, 1);
              v55 = v101;
              v48 = v111;
            }

            *(v48 + 16) = v58 + 1;
            sub_1DD472F7C(v26, v48 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v58, &qword_1ECCDBEE0, &unk_1DD645510);
            v53 += v108;
            --v46;
          }

          while (v46);
          v60 = v103;
          v10 = v109;
          v41 = v92;
          v44 = v100;
        }

        else
        {
          v60 = v47;
        }

        v61 = MEMORY[0x1E12B2430](v48, v44);
        v63 = v62;

        v64 = sub_1DD39565C(v61, v63, &v112);

        v65 = v95;
        *(v95 + 1) = v64;
        _os_log_impl(&dword_1DD38D000, v41, BYTE4(v96), "Contact recommendations: %s", v65, 0xCu);
        v66 = v94;
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x1E12B3DA0](v66, -1, -1);
        MEMORY[0x1E12B3DA0](v65, -1, -1);

        v59 = v98;
        v38 = v60;
      }

      else
      {

        v59 = v98;
      }

      v67 = MEMORY[0x1E69E7CC0];
      v19 = *(v59 + 16);
      if (v19 != *(v38 + 16))
      {
        break;
      }

      if (!v19)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v68 = v97;
      v109 = v10;
      v112 = MEMORY[0x1E69E7CC0];
      sub_1DD42BBC8(0, v19, 0);
      v69 = 0;
      v20 = v112;
      OUTLINED_FUNCTION_18_3();
      v108 = v38 + v71;
      v10 = v110;
      while (v69 < *(v38 + 16))
      {
        sub_1DD472E74(v108 + *(v70 + 72) * v69, v10, type metadata accessor for ContactResolverRunTimeData);
        v72 = v109;
        v73 = *(v109 + 40);
        v74 = sub_1DD45E2B8();
        sub_1DD45DC70();
        v75 = *(v72 + 52);
        v10 = v110;
        v26 = v105;
        sub_1DD471B60(v74, v76, v110[v75], v105);
        if (v68)
        {
          OUTLINED_FUNCTION_0_51();

          return v20;
        }

        OUTLINED_FUNCTION_0_51();

        v112 = v20;
        v78 = *(v20 + 2);
        v77 = *(v20 + 3);
        if (v78 >= v77 >> 1)
        {
          sub_1DD42BBC8(v77 > 1, v78 + 1, 1);
          v20 = v112;
        }

        ++v69;
        *(v20 + 2) = v78 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD472F7C(v26, &v20[v79 + *(v80 + 72) * v78], &qword_1ECCDBED0, &qword_1DD64A050);
        v38 = v103;
        v70 = v106;
        if (v19 == v69)
        {

          return v20;
        }
      }

      __break(1u);
LABEL_30:
      swift_once();
    }

    v81 = v102;
    sub_1DD472E74(v99, v102, type metadata accessor for ContactSlotResolutionTask);

    v82 = sub_1DD63F9D8();
    v83 = sub_1DD640378();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134218240;
      v85 = v38;
      v86 = *(*(v81 + 40) + 16);
      OUTLINED_FUNCTION_1_40();
      *(v84 + 4) = v86;
      *(v84 + 12) = 2048;
      v87 = *(v85 + 16);

      *(v84 + 14) = v87;

      _os_log_impl(&dword_1DD38D000, v82, v83, "Original query count (%ld) doesn't match recommendations count (%ld). Results may be truncated.", v84, 0x16u);
      MEMORY[0x1E12B3DA0](v84, -1, -1);
    }

    else
    {

      OUTLINED_FUNCTION_1_40();
    }

    v20 = "findAllMatches(queries:)";
    type metadata accessor for InferenceError();
    swift_allocObject();
    v88 = sub_1DD4DE96C(30, 0, 0xE000000000000000, 0xD00000000000007FLL, 0x80000001DD66CCB0, 0xD00000000000001ELL, 0x80000001DD66CD30, 49, v67, 1);
    sub_1DD426968();
    swift_allocError();
    *v89 = v88;
    swift_willThrow();
  }

  return v20;
}

void sub_1DD471B60(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v91 = a1;
  v92 = a3;
  v93 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v95 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v86 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v86 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v86 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v86 - v18;
  v20 = type metadata accessor for Contact();
  v99 = *(v20 - 8);
  v100 = v20;
  v21 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v97 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v86 - v29;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE08, &qword_1DD644158);
  v30 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v86 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v88 = (&v86 - v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v86 - v39;
  sub_1DD472ED0(v101, &v86 - v39, &qword_1ECCDBEE0, &unk_1DD645510);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v62 = v97;
      sub_1DD3C95D4(v40, v97);
      v63 = v96;
      sub_1DD472E74(v62, v96, type metadata accessor for Contact);
      v64 = v100;
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v100);
      v65 = v95;
      sub_1DD472ED0(v63, v95, &qword_1ECCDC268, &qword_1DD64CE00);
      if (__swift_getEnumTagSinglePayload(v65, 1, v64) == 1)
      {
        sub_1DD425B4C(v65);
        type metadata accessor for InferenceError();
        swift_allocObject();
        v66 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, 0x80000001DD66CD50, 0xD000000000000023, 0x80000001DD66CDE0, 19, MEMORY[0x1E69E7CC0], 2);
        v67 = *(v66 + 32);
        *(v66 + 24) = 0;
        *(v66 + 32) = 0xE000000000000000;

        sub_1DD426968();
        swift_allocError();
        *v68 = v66;
        swift_willThrow();
        sub_1DD425B4C(v63);
        v46 = v62;
        goto LABEL_15;
      }

      sub_1DD425B4C(v63);
      sub_1DD472F1C(v62, type metadata accessor for Contact);
      v75 = v65;
      v76 = v86;
      sub_1DD3C95D4(v75, v86);
      goto LABEL_21;
    case 2u:
      v47 = *v40;
      v48 = *(*v40 + 16);
      if (v48)
      {
        v102 = MEMORY[0x1E69E7CC0];
        sub_1DD42B5EC(0, v48, 0);
        v49 = 0;
        v50 = *(v99 + 80);
        v101 = v102;
        v95 = (v50 + 32) & ~v50;
        v96 = v47;
        v97 = v47 + v95;
        v86 = "run(withAlreadyResolvedSlots:)";
        v89 = "ResolutionResult.swift";
        v51 = v87;
        do
        {
          if (v49 >= *(v47 + 16))
          {
            __break(1u);
            return;
          }

          v52 = v98;
          v53 = *(v99 + 72);
          sub_1DD472E74(v97 + v53 * v49, v98, type metadata accessor for Contact);
          sub_1DD472E74(v52, v19, type metadata accessor for Contact);
          v54 = v100;
          __swift_storeEnumTagSinglePayload(v19, 0, 1, v100);
          sub_1DD472ED0(v19, v16, &qword_1ECCDC268, &qword_1DD64CE00);
          if (__swift_getEnumTagSinglePayload(v16, 1, v54) == 1)
          {

            sub_1DD425B4C(v16);
            type metadata accessor for InferenceError();
            swift_allocObject();
            v78 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, v86 | 0x8000000000000000, 0xD000000000000023, v89 | 0x8000000000000000, 22, MEMORY[0x1E69E7CC0], 2);
            v79 = *(v78 + 32);
            *(v78 + 24) = 0;
            *(v78 + 32) = 0xE000000000000000;

            sub_1DD426968();
            swift_allocError();
            *v80 = v78;
            swift_willThrow();
            sub_1DD425B4C(v19);
            sub_1DD472F1C(v52, type metadata accessor for Contact);

            return;
          }

          sub_1DD425B4C(v19);
          sub_1DD472F1C(v52, type metadata accessor for Contact);
          sub_1DD3C95D4(v16, v51);
          v55 = v101;
          v102 = v101;
          v56 = v51;
          v58 = *(v101 + 16);
          v57 = *(v101 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_1DD42B5EC(v57 > 1, v58 + 1, 1);
            v55 = v102;
          }

          ++v49;
          *(v55 + 16) = v58 + 1;
          v101 = v55;
          sub_1DD3C95D4(v56, v55 + v95 + v58 * v53);
          v51 = v56;
          v47 = v96;
        }

        while (v48 != v49);

        v81 = v101;
      }

      else
      {
        v77 = *v40;

        v81 = MEMORY[0x1E69E7CC0];
      }

      v76 = v88;
      *v88 = v81;
LABEL_21:
      swift_storeEnumTagMultiPayload();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
      v70 = v93;
      v83 = v94;
      v84 = v93 + *(v82 + 36);
      v85 = v92;
      *v84 = v91;
      *(v84 + 8) = v83;
      *(v84 + 16) = v85;
      v74 = v76;
      goto LABEL_22;
    case 3u:
      v59 = v93;
      swift_storeEnumTagMultiPayload();
      v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050) + 36);
      v61 = v92;
      *v60 = v91;
      *(v60 + 8) = v94;
      *(v60 + 16) = v61;
      goto LABEL_23;
    default:
      sub_1DD3C95D4(v40, v25);
      sub_1DD472E74(v25, v13, type metadata accessor for Contact);
      v41 = v100;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v100);
      v42 = v89;
      sub_1DD472ED0(v13, v89, &qword_1ECCDC268, &qword_1DD64CE00);
      if (__swift_getEnumTagSinglePayload(v42, 1, v41) == 1)
      {
        sub_1DD425B4C(v42);
        type metadata accessor for InferenceError();
        swift_allocObject();
        v43 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000086, 0x80000001DD66CD50, 0xD000000000000023, 0x80000001DD66CDE0, 17, MEMORY[0x1E69E7CC0], 2);
        v44 = *(v43 + 32);
        *(v43 + 24) = 0;
        *(v43 + 32) = 0xE000000000000000;

        sub_1DD426968();
        swift_allocError();
        *v45 = v43;
        swift_willThrow();
        sub_1DD425B4C(v13);
        v46 = v25;
LABEL_15:
        sub_1DD472F1C(v46, type metadata accessor for Contact);
      }

      else
      {
        sub_1DD425B4C(v13);
        sub_1DD472F1C(v25, type metadata accessor for Contact);
        sub_1DD3C95D4(v42, v34);
        swift_storeEnumTagMultiPayload();
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
        v70 = v93;
        v71 = v94;
        v72 = v93 + *(v69 + 36);
        v73 = v92;
        *v72 = v91;
        *(v72 + 8) = v71;
        *(v72 + 16) = v73;
        v74 = v34;
LABEL_22:
        sub_1DD472F7C(v74, v70, &qword_1ECCDBE08, &qword_1DD644158);
LABEL_23:
      }

      return;
  }
}

unint64_t sub_1DD4725F4@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  switch(a2)
  {
    case 1:
      *a3 = result;
      *(a3 + 8) = 1;

    case 2:
      if (result >> 62)
      {
        goto LABEL_22;
      }

      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      break;
    case 3:
      *a3 = 0;
      v10 = 3;
      goto LABEL_17;
    default:
      *a3 = result;
      *(a3 + 8) = 0;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v5)
    {
      break;
    }

    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1DD640988();
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B2C10](v7, v3);
        goto LABEL_13;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v3 + 8 * v7 + 32);

LABEL_13:
      ++v7;
      sub_1DD640958();
      v9 = *(v11 + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      result = sub_1DD640968();
      if (v5 == v7)
      {
        v6 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1DD6407B8();
    v5 = result;
  }

LABEL_15:
  *a3 = v6;
  v10 = 2;
LABEL_17:
  *(a3 + 8) = v10;
  return result;
}

uint64_t sub_1DD472784@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x2C9uLL);
  switch(sub_1DD472DB0(__dst))
  {
    case 1u:
      nullsub_1(__dst);
      memcpy(v19, v1, 0x2C9uLL);
      v17 = nullsub_1(v19);
      memcpy(__src, v17, 0x2C8uLL);
      sub_1DD472E60(__src);
      memcpy(a1, __src, 0x2C9uLL);
      OUTLINED_FUNCTION_6_26();
      v4 = nullsub_1(v21);
      goto LABEL_12;
    case 2u:
      nullsub_1(__dst);
      OUTLINED_FUNCTION_6_26();
      v5 = nullsub_1(v21);
      v6 = *v5;
      v7 = *(*v5 + 16);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v18[0] = MEMORY[0x1E69E7CC0];
        v9 = OUTLINED_FUNCTION_3_30();
        sub_1DD42BDE0(v9, v10, v11);
        v8 = v18[0];
        v12 = (v6 + 32);
        do
        {
          memcpy(__src, v12, 0x2C8uLL);
          sub_1DD472DF8(__src, v19);
          v18[0] = v8;
          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1DD42BDE0(v13 > 1, v14 + 1, 1);
            v8 = v18[0];
          }

          *(v8 + 16) = v14 + 1;
          memcpy((v8 + 712 * v14 + 32), __src, 0x2C8uLL);
          v12 += 712;
          --v7;
        }

        while (v7);
      }

      __src[0] = v8;
      sub_1DD472E54(__src);
      v15 = __src;
      goto LABEL_10;
    case 3u:
      sub_1DD472DC8(v21);
      v15 = v21;
LABEL_10:
      result = memcpy(a1, v15, 0x2C9uLL);
      break;
    default:
      nullsub_1(__dst);
      memcpy(v19, v1, 0x2C9uLL);
      v3 = nullsub_1(v19);
      memcpy(__src, v3, 0x2C8uLL);
      sub_1DD472E6C(__src);
      memcpy(a1, __src, 0x2C9uLL);
      OUTLINED_FUNCTION_6_26();
      v4 = nullsub_1(v21);
LABEL_12:
      result = sub_1DD472DF8(v4, v18);
      break;
  }

  return result;
}

uint64_t sub_1DD4729B0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x81uLL);
  switch(sub_1DD472D58(__dst))
  {
    case 1u:
      nullsub_1(__dst);
      memcpy(v58, v1, 0x81uLL);
      v33 = nullsub_1(v58);
      memcpy(__src, v33, 0x80uLL);
      sub_1DD472D9C(__src);
      v34 = memcpy(a1, __src, 0x81uLL);
      OUTLINED_FUNCTION_5_33(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], v60[0]);
      v12 = nullsub_1(v60);
      goto LABEL_12;
    case 2u:
      v13 = nullsub_1(__dst);
      OUTLINED_FUNCTION_5_33(v13, v14, v15, v16, v17, v18, v19, v20, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], v60[0]);
      v21 = nullsub_1(v60);
      v22 = *v21;
      v23 = *(*v21 + 16);
      v24 = MEMORY[0x1E69E7CC0];
      if (v23)
      {
        v42 = MEMORY[0x1E69E7CC0];
        v25 = OUTLINED_FUNCTION_3_30();
        sub_1DD42BEAC(v25, v26, v27);
        v24 = v42;
        v28 = (v22 + 32);
        do
        {
          memcpy(__src, v28, 0x80uLL);
          sub_1DD400BFC(__src, v58);
          v42 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1DD42BEAC(v29 > 1, v30 + 1, 1);
            v24 = v42;
          }

          *(v24 + 16) = v30 + 1;
          memcpy((v24 + (v30 << 7) + 32), __src, 0x80uLL);
          v28 += 128;
          --v23;
        }

        while (v23);
      }

      __src[0] = v24;
      sub_1DD472D90(__src);
      v31 = __src;
      goto LABEL_10;
    case 3u:
      sub_1DD472D70(v60);
      v31 = v60;
LABEL_10:
      result = memcpy(a1, v31, 0x81uLL);
      break;
    default:
      nullsub_1(__dst);
      memcpy(v58, v1, 0x81uLL);
      v3 = nullsub_1(v58);
      memcpy(__src, v3, 0x80uLL);
      sub_1DD472DA8(__src);
      v4 = memcpy(a1, __src, 0x81uLL);
      OUTLINED_FUNCTION_5_33(v4, v5, v6, v7, v8, v9, v10, v11, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12], v58[13], v58[14], v58[15], v58[16], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], v60[0]);
      v12 = nullsub_1(v60);
LABEL_12:
      result = sub_1DD400BFC(v12, &v42);
      break;
  }

  return result;
}

void sub_1DD472C10()
{
  sub_1DD472CAC();
  if (v0 <= 0x3F)
  {
    sub_1DD472D08();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ContactResolverConfig(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DD472CAC()
{
  result = qword_1EE162920;
  if (!qword_1EE162920)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE162920);
  }

  return result;
}

void sub_1DD472D08()
{
  if (!qword_1EE160310)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160310);
    }
  }
}

uint64_t sub_1DD472D58(uint64_t a1)
{
  if (*(a1 + 128) <= 2u)
  {
    return *(a1 + 128);
  }

  else
  {
    return (*a1 + 3);
  }
}

double sub_1DD472D70(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 3;
  return result;
}

uint64_t sub_1DD472DB0(uint64_t a1)
{
  if (*(a1 + 712) <= 2u)
  {
    return *(a1 + 712);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1DD472E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2_31(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD472ED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_31(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1DD472F1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DD472F7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_31(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

SiriInference::ContinentName::Value_optional __swiftcall ContinentName.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContinentName.Value.rawValue.getter()
{
  result = 0x6D41206874726F4ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6D41206874756F53;
      break;
    case 2:
      result = 0x6369747261746E41;
      break;
    case 3:
      result = 0x616369726641;
      break;
    case 4:
      result = 0x65706F727545;
      break;
    case 5:
      result = 1634300737;
      break;
    case 6:
      result = 0x61697361727545;
      break;
    case 7:
      result = 0x61696E6165634FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD473124(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3B1024();
}

uint64_t sub_1DD473154@<X0>(uint64_t *a1@<X8>)
{
  result = ContinentName.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::ContinentName::Prefix_optional __swiftcall ContinentName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContinentName.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E69746E6F63;
  }
}

uint64_t sub_1DD473304@<X0>(uint64_t *a1@<X8>)
{
  result = ContinentName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static ContinentName.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a2;
  v5 = *a1;
  if ((sub_1DD3B1024() & 1) == 0)
  {
    return 0;
  }

  result = v3 == 3 && v2 == 3;
  if (v2 != 3 && v3 != 3)
  {

    return sub_1DD3B1204(v2, v3);
  }

  return result;
}

uint64_t sub_1DD473470(uint64_t a1)
{
  v2 = sub_1DD47385C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4734AC(uint64_t a1)
{
  v2 = sub_1DD47385C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContinentName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFE8, &qword_1DD64CE18);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47385C();
  sub_1DD640EF8();
  v20 = v12;
  v19 = 0;
  sub_1DD4738B0();
  sub_1DD640C68();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD473904();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t ContinentName.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD008, &qword_1DD64CE20);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47385C();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD473958();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v14 = v21;
    v18 = 1;
    sub_1DD4739AC();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47385C()
{
  result = qword_1ECCDCFF0;
  if (!qword_1ECCDCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCFF0);
  }

  return result;
}

unint64_t sub_1DD4738B0()
{
  result = qword_1ECCDCFF8;
  if (!qword_1ECCDCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDCFF8);
  }

  return result;
}

unint64_t sub_1DD473904()
{
  result = qword_1ECCDD000;
  if (!qword_1ECCDD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD000);
  }

  return result;
}

unint64_t sub_1DD473958()
{
  result = qword_1ECCDD010;
  if (!qword_1ECCDD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD010);
  }

  return result;
}

unint64_t sub_1DD4739AC()
{
  result = qword_1ECCDD018;
  if (!qword_1ECCDD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD018);
  }

  return result;
}

unint64_t sub_1DD473A04()
{
  result = qword_1ECCDD020;
  if (!qword_1ECCDD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD020);
  }

  return result;
}

unint64_t sub_1DD473A5C()
{
  result = qword_1ECCDD028;
  if (!qword_1ECCDD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContinentName(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContinentName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinentName.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContinentName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContinentName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD473EB4()
{
  result = qword_1ECCDD030;
  if (!qword_1ECCDD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD030);
  }

  return result;
}

unint64_t sub_1DD473F0C()
{
  result = qword_1ECCDD038;
  if (!qword_1ECCDD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD038);
  }

  return result;
}

unint64_t sub_1DD473F64()
{
  result = qword_1ECCDD040;
  if (!qword_1ECCDD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD040);
  }

  return result;
}

unint64_t sub_1DD473FB8()
{
  result = qword_1ECCDD048;
  if (!qword_1ECCDD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD048);
  }

  return result;
}

unint64_t sub_1DD47400C()
{
  result = qword_1ECCDD050;
  if (!qword_1ECCDD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD050);
  }

  return result;
}

uint64_t sub_1DD474060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_1DD63D328();
  v5 = OUTLINED_FUNCTION_0(v61);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_1DD63D2D8();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v21 = v20 - v19;
  v22 = sub_1DD63D078();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v60 = *(a2 + 1);
  (*(v25 + 16))(v29 - v28, a3 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v22);
  v31 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  swift_beginAccess();
  (*(v16 + 16))(v21, a3 + v31, v13);
  (*(v7 + 16))(v12, a3 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v61);
  v32 = sub_1DD4AC988();
  (*(v7 + 8))(v12, v61);
  (*(v16 + 8))(v21, v13);
  result = (*(v25 + 8))(v30, v22);
  v34 = a1;
  v35 = 0;
  if (v60 == 1)
  {
    v36 = *(a1 + 16);
    v37 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v38 = (a1 + 32 + 80 * v35);
    while (v36 != v35)
    {
      if (v35 >= v36)
      {
        __break(1u);
        goto LABEL_56;
      }

      result = memcpy(__dst, v38, 0x49uLL);
      if (__OFADD__(v35, 1))
      {
        goto LABEL_57;
      }

      type metadata accessor for DateTime();
      OUTLINED_FUNCTION_5_34();
      if (!static DateTime.<= infix(_:_:)())
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_0_52();
          v37 = v64;
        }

        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_2_32(v40);
          sub_1DD42BBE8();
          v37 = v64;
        }

        *(v37 + 16) = v41 + 1;
        result = OUTLINED_FUNCTION_3_31(v37 + 80 * v41);
        ++v35;
        v34 = a1;
        goto LABEL_3;
      }

      result = sub_1DD474778(__dst);
      ++v35;
      v38 += 80;
      v34 = a1;
    }

    if (!*(v37 + 16))
    {

      v48 = 0;
      v37 = MEMORY[0x1E69E7CC0];
LABEL_28:
      v49 = (v34 + 32 + 80 * v48);
      while (v36 != v48)
      {
        if (v48 >= v36)
        {
          goto LABEL_59;
        }

        result = memcpy(__dst, v49, 0x49uLL);
        if (__OFADD__(v48, 1))
        {
          goto LABEL_61;
        }

        type metadata accessor for DateTime();
        OUTLINED_FUNCTION_5_34();
        if (static DateTime.<= infix(_:_:)() && (__dst[3] & 1) != 0)
        {
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v37;
          if ((v50 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_52();
            v37 = v64;
          }

          v52 = *(v37 + 16);
          v51 = *(v37 + 24);
          if (v52 >= v51 >> 1)
          {
            OUTLINED_FUNCTION_2_32(v51);
            sub_1DD42BBE8();
            v37 = v64;
          }

          *(v37 + 16) = v52 + 1;
          result = OUTLINED_FUNCTION_3_31(v37 + 80 * v52);
          ++v48;
          goto LABEL_28;
        }

        result = sub_1DD474778(__dst);
        ++v48;
        v49 += 80;
      }
    }
  }

  else
  {
    v42 = *(a1 + 16);
    v37 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v43 = (a1 + 32 + 80 * v35);
    while (v42 != v35)
    {
      if (v35 >= v42)
      {
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
LABEL_62:
        __break(1u);
        return result;
      }

      result = memcpy(__dst, v43, 0x49uLL);
      if (__OFADD__(v35, 1))
      {
        goto LABEL_58;
      }

      v44 = __dst[0];
      type metadata accessor for DateTime();
      OUTLINED_FUNCTION_5_34();
      if (static DateTime.< infix(_:_:)(v44, v32))
      {
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v64 = v37;
        if ((v45 & 1) == 0)
        {
          OUTLINED_FUNCTION_0_52();
          v37 = v64;
        }

        v47 = *(v37 + 16);
        v46 = *(v37 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_2_32(v46);
          sub_1DD42BBE8();
          v37 = v64;
        }

        *(v37 + 16) = v47 + 1;
        result = OUTLINED_FUNCTION_3_31(v37 + 80 * v47);
        ++v35;
        v34 = a1;
        goto LABEL_15;
      }

      result = sub_1DD474778(__dst);
      ++v35;
      v43 += 80;
      v34 = a1;
    }

    if (!*(v37 + 16))
    {

      v53 = 0;
      v54 = v34 + 32;
      v37 = MEMORY[0x1E69E7CC0];
LABEL_43:
      v55 = (v54 + 80 * v53);
      while (v42 != v53)
      {
        if (v53 >= v42)
        {
          goto LABEL_60;
        }

        result = memcpy(__dst, v55, 0x49uLL);
        if (__OFADD__(v53, 1))
        {
          goto LABEL_62;
        }

        v56 = __dst[0];
        type metadata accessor for DateTime();
        OUTLINED_FUNCTION_5_34();
        if (!static DateTime.< infix(_:_:)(v56, v32) && (__dst[3] & 1) != 0)
        {
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v37;
          if ((v57 & 1) == 0)
          {
            OUTLINED_FUNCTION_0_52();
            v37 = v64;
          }

          v59 = *(v37 + 16);
          v58 = *(v37 + 24);
          if (v59 >= v58 >> 1)
          {
            OUTLINED_FUNCTION_2_32(v58);
            sub_1DD42BBE8();
            v37 = v64;
          }

          *(v37 + 16) = v59 + 1;
          result = OUTLINED_FUNCTION_3_31(v37 + 80 * v59);
          ++v53;
          goto LABEL_43;
        }

        result = sub_1DD474778(__dst);
        ++v53;
        v55 += 80;
      }
    }
  }

  return v37;
}

uint64_t sub_1DD474708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD474778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *OUTLINED_FUNCTION_3_31@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 - 200), 0x49uLL);
}

void sub_1DD4747FC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    OUTLINED_FUNCTION_4_1();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v15 = v12 | (v4 << 6);
      v16 = *(*(a1 + 56) + 8 * v15);
      v17 = sub_1DD3FE6CC(*(*(a1 + 48) + v15));
      if ((v18 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
      {
        return;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(a1 + 64 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

BOOL sub_1DD4748F0(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_59:
    v20 = 1;
    goto LABEL_67;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_66;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v49 = a1;
  while (2)
  {
    if (v7)
    {
      v9 = __clz(__rbit64(v7));
      v51 = (v7 - 1) & v7;
    }

    else
    {
      v10 = v3;
      do
      {
        v3 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        if (v3 >= v8)
        {
          goto LABEL_59;
        }

        v11 = *(v4 + 8 * v3);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v51 = (v11 - 1) & v11;
    }

    v12 = v9 | (v3 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a1 + 56) + 24 * v12;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);

    v52 = v17;
    sub_1DD475D2C(v18, v17, v19);
    v20 = v15 == 0;
    if (!v15)
    {
      goto LABEL_67;
    }

    v21 = sub_1DD3978DC();
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_65;
    }

    v24 = *(v2 + 56) + 24 * v21;
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = *(v24 + 16);
    switch(v27)
    {
      case 1:
        if (v19 != 1)
        {
          goto LABEL_64;
        }

        sub_1DD475D50(*v24, *(v24 + 8), 1);
        sub_1DD475D50(v18, v52, 1);
        v28 = *&v26 == *&v18;
        v2 = a2;
        goto LABEL_45;
      case 2:
        sub_1DD475D50(*v24, *(v24 + 8), 2);
        v2 = a2;
        if (v19 != 2)
        {
          goto LABEL_65;
        }

        sub_1DD475D50(v18, v52, 2);
        a1 = v49;
        v7 = v51;
        v20 = 0;
        if ((v26 ^ v18))
        {
          goto LABEL_67;
        }

        continue;
      case 3:
        if (v19 == 3)
        {
          if (v26 == v18 && v25 == v52)
          {
            v36 = *(v24 + 8);

            sub_1DD475D50(v18, v52, 3);
            v38 = v18;
            v39 = v52;
            v37 = 3;
LABEL_58:
            sub_1DD475D50(v38, v39, v37);
            a1 = v49;
            v2 = a2;
            v7 = v51;
          }

          else
          {
            v33 = *v24;
            v34 = *(v24 + 8);
            v35 = sub_1DD640CD8();

            sub_1DD475D50(v26, v34, 3);
            sub_1DD475D50(v18, v52, 3);
            a1 = v49;
            v2 = a2;
            v7 = v51;
            v20 = 0;
            if ((v35 & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          continue;
        }

        v45 = *(v24 + 8);

LABEL_62:
        v25 = v45;
LABEL_64:
        sub_1DD475D50(v26, v25, v27);
LABEL_65:
        sub_1DD475D50(v18, v52, v19);
LABEL_66:
        v20 = 0;
LABEL_67:
        v47 = *MEMORY[0x1E69E9840];
        return v20;
      case 4:
        if (v19 != 4)
        {
          v45 = *(v24 + 8);
          sub_1DD3D01B4(*v24, v45);
          goto LABEL_62;
        }

        v30 = *&v26 == 0.0 && v25 == 0xC000000000000000 && v52 >> 62 == 3;
        if (v30 && (*&v18 == 0.0 ? (v31 = v52 == 0xC000000000000000) : (v31 = 0), v31))
        {
          sub_1DD3D01B4(0, 0xC000000000000000);
          sub_1DD475D50(0, 0xC000000000000000, 4);
          v38 = 0;
          v39 = 0xC000000000000000;
        }

        else
        {
          switch(v52 >> 62)
          {
            case 1uLL:
              LODWORD(v40) = HIDWORD(v18) - v18;
              if (__OFSUB__(HIDWORD(v18), v18))
              {
                goto LABEL_69;
              }

              v40 = v40;
LABEL_55:
              if (v40)
              {
                v46 = *(v24 + 8);
                sub_1DD3D01B4(v26, v25);
                v25 = v46;
                LOBYTE(v19) = 4;
                goto LABEL_64;
              }

LABEL_56:
              v44 = *(v24 + 8);
              sub_1DD3D01B4(v26, v25);
              sub_1DD475D50(v26, v44, 4);
              v38 = v18;
              v39 = v52;
              break;
            case 2uLL:
              v42 = *(v18 + 16);
              v41 = *(v18 + 24);
              v43 = __OFSUB__(v41, v42);
              v40 = v41 - v42;
              if (!v43)
              {
                goto LABEL_55;
              }

              goto LABEL_70;
            case 3uLL:
              goto LABEL_56;
            default:
              v40 = BYTE6(v52);
              goto LABEL_55;
          }
        }

        v37 = 4;
        goto LABEL_58;
      default:
        sub_1DD475D50(*v24, *(v24 + 8), 0);
        v2 = a2;
        if (v19)
        {
          goto LABEL_65;
        }

        sub_1DD475D50(v18, v52, 0);
        v28 = v26 == v18;
LABEL_45:
        a1 = v49;
        v7 = v51;
        v20 = 0;
        if (!v28)
        {
          goto LABEL_67;
        }

        continue;
    }
  }
}

void sub_1DD475668(uint64_t a1, uint64_t a2)
{
  v62 = sub_1DD63D2B8();
  v4 = OUTLINED_FUNCTION_0(v62);
  v57 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B0, &qword_1DD64D458);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v16 = 0;
    v54 = a1;
    v18 = *(a1 + 64);
    v17 = a1 + 64;
    v19 = *(v17 - 32);
    OUTLINED_FUNCTION_4_1();
    v22 = v21 & v20;
    v50 = (v23 + 63) >> 6;
    v51 = v17;
    v52 = v57 + 16;
    v53 = v15;
    v59 = v24;
    v60 = (v57 + 32);
    v55 = (v57 + 8);
    while (v22)
    {
      v61 = (v22 - 1) & v22;
      v25 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_11:
      v29 = v54;
      v31 = v56;
      v30 = v57;
      v32 = v62;
      (*(v57 + 16))(v56, *(v54 + 48) + *(v57 + 72) * v25, v62);
      v33 = *(v29 + 56) + 16 * v25;
      v34 = *v33;
      LOBYTE(v29) = *(v33 + 8);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
      v26 = v59;
      v36 = v59 + *(v35 + 48);
      (*(v30 + 32))(v59, v31, v32);
      *v36 = v34;
      *(v36 + 8) = v29;
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v35);
      v15 = v53;
LABEL_12:
      sub_1DD476984(v26, v15);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
      if (__swift_getEnumTagSinglePayload(v15, 1, v37) == 1)
      {
        return;
      }

      v38 = &v15[*(v37 + 48)];
      v39 = v58;
      v40 = v62;
      (*v60)(v58, v15, v62);
      v41 = *v38;
      v42 = v38[8];
      sub_1DD3FE7FC();
      v44 = v43;
      LOBYTE(v38) = v45;
      (*v55)(v39, v40);
      if ((v38 & 1) == 0)
      {
        return;
      }

      v46 = *(a2 + 56) + 16 * v44;
      if (*(v46 + 8))
      {
        v22 = v61;
        if ((v42 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (*v46 == v41)
        {
          v47 = v42;
        }

        else
        {
          v47 = 1;
        }

        v22 = v61;
        if (v47)
        {
          return;
        }
      }
    }

    v26 = v59;
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v50)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B8, qword_1DD64D460);
        __swift_storeEnumTagSinglePayload(v26, 1, 1, v48);
        v61 = 0;
        goto LABEL_12;
      }

      v28 = *(v51 + 8 * v27);
      ++v16;
      if (v28)
      {
        v61 = (v28 - 1) & v28;
        v25 = __clz(__rbit64(v28)) | (v27 << 6);
        v16 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

SiriInference::CoreAnalyticsMetric __swiftcall CoreAnalyticsMetric.init(eventName:properties:)(Swift::String eventName, Swift::OpaquePointer properties)
{
  *v2 = eventName;
  *(v2 + 16) = properties;
  result.eventName = eventName;
  result.properties = properties;
  return result;
}

void CoreAnalyticsMetric.eventPayload()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
  v2 = sub_1DD640A58();
  v3 = 0;
  v5 = v1 + 64;
  v4 = *(v1 + 64);
  v6 = *(v1 + 32);
  OUTLINED_FUNCTION_4_1();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v39 = v12 + 64;
  v40 = v1;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v16 = v13 | (v3 << 6);
      v17 = (*(v40 + 48) + 16 * v16);
      v18 = v17[1];
      v41 = *v17;
      v19 = *(v40 + 56) + 24 * v16;
      v20 = *v19;
      v21 = *(v19 + 8);
      switch(*(v19 + 16))
      {
        case 1:
          v33 = *v19;
          v34 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v23 = [v34 initWithDouble_];
          goto LABEL_15;
        case 2:
          v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v23 = [v30 initWithBool_];
          goto LABEL_15;
        case 3:

          v31 = OUTLINED_FUNCTION_25_3();
          sub_1DD475D2C(v31, v32, 3);
          OUTLINED_FUNCTION_25_3();
          v26 = sub_1DD63FDA8();
          v27 = OUTLINED_FUNCTION_25_3();
          v29 = 3;
          goto LABEL_13;
        case 4:

          v24 = OUTLINED_FUNCTION_25_3();
          sub_1DD475D2C(v24, v25, 4);
          OUTLINED_FUNCTION_25_3();
          v26 = sub_1DD63CF08();
          v27 = OUTLINED_FUNCTION_25_3();
          v29 = 4;
LABEL_13:
          sub_1DD475D50(v27, v28, v29);
          break;
        default:
          v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v23 = [v22 initWithInteger_];
LABEL_15:
          v26 = v23;
          break;
      }

      *(v39 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35 = (v2[6] + 16 * v16);
      *v35 = v41;
      v35[1] = v18;
      *(v2[7] + 8 * v16) = v26;
      v36 = v2[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        break;
      }

      v2[2] = v38;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v11)
      {
        return;
      }

      v15 = *(v5 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DD475D2C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1DD3D01B4(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1DD475D50(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1DD3AD790(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

BOOL static CoreAnalyticsMetric.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return sub_1DD4748F0(v2, v3);
}

uint64_t sub_1DD475DE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD475EC0(char a1)
{
  if (a1)
  {
    return 0x69747265706F7270;
  }

  else
  {
    return 0x6D614E746E657665;
  }
}

uint64_t sub_1DD475F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD475DE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD475F30(uint64_t a1)
{
  v2 = sub_1DD47617C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD475F6C(uint64_t a1)
{
  v2 = sub_1DD47617C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsMetric.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD058, &qword_1DD64D248);
  v5 = OUTLINED_FUNCTION_0(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47617C();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v18 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD068, &qword_1DD64D250);
    sub_1DD47645C(&qword_1ECCDD070, sub_1DD4761D0);
    sub_1DD640C68();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_1DD47617C()
{
  result = qword_1ECCDD060;
  if (!qword_1ECCDD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD060);
  }

  return result;
}

unint64_t sub_1DD4761D0()
{
  result = qword_1ECCDD078;
  if (!qword_1ECCDD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD078);
  }

  return result;
}

uint64_t CoreAnalyticsMetric.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD080, &qword_1DD64D258);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47617C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD068, &qword_1DD64D250);
  sub_1DD47645C(&qword_1ECCDD088, sub_1DD4764E0);
  sub_1DD640B78();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DD47645C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD068, &qword_1DD64D250);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4764E0()
{
  result = qword_1ECCDD090;
  if (!qword_1ECCDD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD090);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CoreAnalyticsMetric.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD47665C()
{
  result = qword_1ECCDD098;
  if (!qword_1ECCDD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD098);
  }

  return result;
}

unint64_t sub_1DD4766B4()
{
  result = qword_1ECCDD0A0;
  if (!qword_1ECCDD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0A0);
  }

  return result;
}

unint64_t sub_1DD47670C()
{
  result = qword_1ECCDD0A8;
  if (!qword_1ECCDD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0A8);
  }

  return result;
}

void sub_1DD476760(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_1DD4768CC(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x1E69E9840];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_1DD4768CC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1DD63C928();
  v8 = result;
  if (result)
  {
    result = sub_1DD63C948();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1DD63C938();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_1DD476984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0B0, &qword_1DD64D458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4769F8(uint64_t a1, void (*a2)(unint64_t, unint64_t, uint64_t))
{
  v4 = type metadata accessor for AppRankEvent(0);
  v5 = *(a1 + *(v4 + 24));
  v6 = type metadata accessor for AppRankSelectionEvent(0);
  v7 = (a1 + v6[6]);
  v8 = *v7;
  v9 = v7[1];
  result = sub_1DD52823C();
  if ((v11 & 1) == 0 && __OFADD__(result, 1))
  {
    goto LABEL_10;
  }

  v12 = *(v4 + 20);
  v13 = a1 + v6[5];
  result = sub_1DD63CF88();
  v15 = round(v14 * 1000.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v15 > -9.22337204e18)
  {
    if (v15 < 9.22337204e18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC230, &unk_1DD64AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD6444F0;
      strcpy((inited + 32), "numAppsShown");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      v17 = (a1 + v6[7]);
      v18 = *v17;
      *(v17 + 8);
      *(inited + 48) = sub_1DD6402C8();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x80000001DD66CE70;
      *(inited + 72) = sub_1DD6402C8();
      *(inited + 80) = 0xD00000000000001CLL;
      *(inited + 88) = 0x80000001DD66CE90;
      *(inited + 96) = sub_1DD6402C8();
      sub_1DD395950();
      v19 = sub_1DD63FC88();
      a2(0xD00000000000001FLL, 0x80000001DD66CEB0, v19);
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

NSObject __swiftcall CoreAnalyticsValue.toNSObject()()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v9 = *v0;
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v4 = sel_initWithDouble_;

      return [v3 v4];
    case 2:
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v4 = sel_initWithBool_;
      v5 = v2 & 1;

      return [v3 v4];
    case 3:
      v8 = *v0;

      return sub_1DD63FDA8();
    case 4:
      v7 = *v0;

      return sub_1DD63CF08();
    default:
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v4 = sel_initWithInteger_;
      v5 = v2;

      return [v3 v4];
  }
}

uint64_t sub_1DD476D30()
{
  v0 = sub_1DD640AA8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD476D84(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1DD476DB0()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD476E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD476D30();
  *a2 = result;
  return result;
}

uint64_t sub_1DD476E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD476D84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DD476E84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD476D30();
  *a1 = result;
  return result;
}

uint64_t sub_1DD476EB8(uint64_t a1)
{
  v2 = sub_1DD4771E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD476EF4(uint64_t a1)
{
  v2 = sub_1DD4771E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0C0, &qword_1DD64D490);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4771E8();
  sub_1DD640ED8();
  if (!v2)
  {
    LOBYTE(v31) = 0;
    sub_1DD640B28();
    v13 = sub_1DD476DB0();
    v14 = v13;
    switch(v13)
    {
      case 1:
        OUTLINED_FUNCTION_0_53();
        sub_1DD640B48();
        v28 = v27;
        v29 = OUTLINED_FUNCTION_41();
        v30(v29);
        v18 = 0;
        v15 = v28;
        goto LABEL_10;
      case 2:
        OUTLINED_FUNCTION_0_53();
        v21 = sub_1DD640B38();
        v22 = OUTLINED_FUNCTION_41();
        v23(v22);
        v18 = 0;
        v15 = v21 & 1;
        goto LABEL_10;
      case 3:
        OUTLINED_FUNCTION_0_53();
        v15 = sub_1DD640B28();
        v18 = v24;
        v25 = OUTLINED_FUNCTION_41();
        v26(v25);
        goto LABEL_10;
      case 4:
        sub_1DD477290();
        sub_1DD640B78();
        v19 = OUTLINED_FUNCTION_41();
        v20(v19);
        v15 = v31;
        v18 = v32;
        goto LABEL_10;
      case 5:
        sub_1DD47723C();
        swift_allocError();
        swift_willThrow();
        v10 = OUTLINED_FUNCTION_41();
        v11(v10);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      default:
        OUTLINED_FUNCTION_0_53();
        v15 = sub_1DD640B58();
        v16 = OUTLINED_FUNCTION_41();
        v17(v16);
        v18 = 0;
LABEL_10:
        *a2 = v15;
        *(a2 + 8) = v18;
        *(a2 + 16) = v14;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD4771E8()
{
  result = qword_1ECCDD0C8;
  if (!qword_1ECCDD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0C8);
  }

  return result;
}

unint64_t sub_1DD47723C()
{
  result = qword_1ECCDD0D0;
  if (!qword_1ECCDD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0D0);
  }

  return result;
}

unint64_t sub_1DD477290()
{
  result = qword_1ECCDD0D8;
  if (!qword_1ECCDD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0D8);
  }

  return result;
}

uint64_t CoreAnalyticsValue.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD0E0, &qword_1DD64D498);
  v5 = OUTLINED_FUNCTION_0(v4);
  v19 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4771E8();
  sub_1DD640EF8();
  switch(v13)
  {
    case 1:
      OUTLINED_FUNCTION_6_27();
      v14 = v4;
      v16 = v18;
      sub_1DD640C38();
      if (!v16)
      {
        LOBYTE(v20) = 0;
        goto LABEL_13;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_6_27();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C28();
      if (!v2)
      {
        LOBYTE(v20) = 0;
        goto LABEL_13;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_6_27();
      v14 = v4;
      v15 = v18;
      sub_1DD640C18();
      if (!v15)
      {
        LOBYTE(v20) = 0;
        goto LABEL_13;
      }

      break;
    case 4:
      v20 = v11;
      v21 = v12;
      v22 = 1;
      sub_1DD47756C();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C68();
      if (!v2)
      {
        LOBYTE(v20) = 0;
        goto LABEL_13;
      }

      break;
    default:
      OUTLINED_FUNCTION_6_27();
      OUTLINED_FUNCTION_5_35();
      sub_1DD640C48();
      if (!v2)
      {
        LOBYTE(v20) = 0;
LABEL_13:
        sub_1DD640C18();
      }

      break;
  }

  return (*(v19 + 8))(v10, v14);
}

unint64_t sub_1DD47756C()
{
  result = qword_1ECCDD0E8;
  if (!qword_1ECCDD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0E8);
  }

  return result;
}

uint64_t static CoreAnalyticsValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_19;
      }

      v38 = *a1;
      v39 = *a2;
      v40 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v40, v41, 1);
      v42 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v42, v43, 1);
      v11 = v2 == v5;
      return v11 & 1;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_19;
      }

      v23 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v23, v24, 2);
      v25 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v25, v26, 2);
      v11 = LOBYTE(v5) ^ LOBYTE(v2) ^ 1;
      return v11 & 1;
    case 3:
      if (v6 != 3)
      {
        v46 = *(a1 + 8);

        goto LABEL_19;
      }

      v27 = *a1;
      if (*&v2 != *&v5 || v3 != *(a2 + 8))
      {
        v17 = sub_1DD640CD8();
        v29 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v29, v30, 3);
        v31 = OUTLINED_FUNCTION_2_33();
        sub_1DD475D2C(v31, v32, v33);
        v34 = OUTLINED_FUNCTION_2_33();
        sub_1DD475D50(v34, v35, v36);
        v20 = OUTLINED_FUNCTION_4_28();
        v22 = 3;
        goto LABEL_14;
      }

      sub_1DD475D2C(*&v27, v3, 3);
      v53 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D2C(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D50(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_2_33();
      sub_1DD475D50(v59, v60, v61);
      v11 = 1;
      return v11 & 1;
    case 4:
      if (v6 == 4)
      {
        v12 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v12, v13, 4);
        v14 = OUTLINED_FUNCTION_52();
        sub_1DD475D2C(v14, v15, 4);
        v16 = OUTLINED_FUNCTION_52();
        v17 = MEMORY[0x1E12AF220](v16);
        v18 = OUTLINED_FUNCTION_52();
        sub_1DD475D50(v18, v19, 4);
        v20 = OUTLINED_FUNCTION_4_28();
        v22 = 4;
LABEL_14:
        sub_1DD475D50(v20, v21, v22);
        return v17 & 1;
      }

      else
      {
        v44 = OUTLINED_FUNCTION_52();
        sub_1DD3D01B4(v44, v45);
LABEL_19:
        v47 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D2C(v47, v48, v6);
        v49 = OUTLINED_FUNCTION_52();
        sub_1DD475D50(v49, v50, v4);
        v51 = OUTLINED_FUNCTION_4_28();
        sub_1DD475D50(v51, v52, v6);
        v11 = 0;
        return v11 & 1;
      }

    default:
      if (*(a2 + 16))
      {
        goto LABEL_19;
      }

      v7 = OUTLINED_FUNCTION_52();
      sub_1DD475D50(v7, v8, 0);
      v9 = OUTLINED_FUNCTION_4_28();
      sub_1DD475D50(v9, v10, 0);
      v11 = *&v2 == *&v5;
      return v11 & 1;
  }
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

uint64_t sub_1DD477824(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD477864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

_BYTE *sub_1DD4778BC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1DD477964(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD477A40()
{
  result = qword_1ECCDD0F0;
  if (!qword_1ECCDD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0F0);
  }

  return result;
}

unint64_t sub_1DD477A98()
{
  result = qword_1ECCDD0F8;
  if (!qword_1ECCDD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD0F8);
  }

  return result;
}

unint64_t sub_1DD477AF0()
{
  result = qword_1ECCDD100;
  if (!qword_1ECCDD100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD100);
  }

  return result;
}

unint64_t sub_1DD477B48()
{
  result = qword_1ECCDD108;
  if (!qword_1ECCDD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD108);
  }

  return result;
}

void sub_1DD477B9C(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v36 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD64D850;
  v7 = objc_opt_self();
  v8 = sub_1DD63CFA8();
  v9 = [v7 predicateForEventsWithStartDateAfter_];

  if (!v9)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v6 + 32) = v9;
  v10 = objc_opt_self();
  sub_1DD478748(v10);
  if (v11)
  {
    v12 = sub_1DD63FDA8();
  }

  else
  {
    v12 = 0;
  }

  sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);
  v13 = sub_1DD477FB8();
  v14 = [v7 predicateForObjectsWithMetadataKey:v12 andValue:v13];

  if (!v14)
  {
    goto LABEL_22;
  }

  sub_1DD39638C(0, &qword_1EE1601C8, 0x1E696AB28);
  *(v6 + 40) = v14;
  v15 = sub_1DD47802C();
  v16 = [objc_opt_self() tombstoneStream];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v16;
  sub_1DD39638C(0, &qword_1EE166240, 0x1E6997968);
  v18 = [swift_getObjCClassFromMetadata() startDateSortDescriptorAscending_];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  v20 = swift_allocObject();
  v36 = xmmword_1DD643B80;
  *(v20 + 16) = xmmword_1DD643B80;
  *(v20 + 32) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = v36;
  *(v21 + 32) = v19;
  v22 = v15;
  v23 = v19;
  v24 = v17;
  v25 = sub_1DD4780B0(v15, v20, 0, 1, v21);
  if (!v25)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v26 = v25;
  sub_1DD4781B8(v25);
  if (v1)
  {
  }

  else
  {
    v28 = v27;

    if (sub_1DD3CC020(v28))
    {
      sub_1DD408BFC(0);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E12B2C10](0, v28);
      }

      else
      {
        v29 = *(v28 + 32);
      }

      v30 = v29;

      v31 = [v30 startDate];

      if (v31)
      {
        sub_1DD63D048();

        v32 = sub_1DD63D078();
        v33 = 0;
      }

      else
      {

        v32 = sub_1DD63D078();
        v33 = 1;
      }

      v35 = v37;
      __swift_storeEnumTagSinglePayload(v5, v33, 1, v32);
      sub_1DD3D7DA0(v5, v35);
    }

    else
    {

      v34 = sub_1DD63D078();
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v34);
    }
  }
}

id sub_1DD477FB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD63FDA8();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_1DD47802C()
{
  sub_1DD39638C(0, &qword_1EE166250, 0x1E696AE18);
  v0 = sub_1DD6400F8();

  v1 = [swift_getObjCClassFromMetadata() andPredicateWithSubpredicates_];

  return v1;
}

id sub_1DD4780B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_1DD39638C(0, &qword_1EE166238, 0x1E6997970);
  v9 = sub_1DD6400F8();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1DD39638C(0, &qword_1EE166230, 0x1E696AEB0);
  v10 = sub_1DD6400F8();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

void sub_1DD4781B8(uint64_t a1)
{
  v2 = MEMORY[0x1E12B3350]();
  sub_1DD478230(a1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_1DD478230(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() userKnowledgeStore];
  if (!v6)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v14 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 39, MEMORY[0x1E69E7CC0], 2);
    v15 = *(v14 + 32);
    *(v14 + 24) = 0;
    *(v14 + 32) = 0xE000000000000000;

    sub_1DD426968();
    v16 = swift_allocError();
    *v17 = v14;
    swift_willThrow();
LABEL_14:
    *a2 = v16;
    goto LABEL_15;
  }

  v7 = v6;
  v44[0] = 0;
  v8 = [v6 executeQuery:a1 error:v44];
  v9 = v44[0];
  if (!v8)
  {
    v18 = v44[0];
    v19 = sub_1DD63CD98();

    swift_willThrow();
    type metadata accessor for InferenceError();
    swift_allocObject();
    v20 = sub_1DD4DE96C(56, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 40, MEMORY[0x1E69E7CC0], 1);
    v44[0] = v19;
    v21 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v22 = sub_1DD63FE38();
    v23 = *(v20 + 32);
    *(v20 + 24) = v22;
    *(v20 + 32) = v24;

    sub_1DD426968();
    v16 = swift_allocError();
    *v25 = v20;
    swift_willThrow();

    goto LABEL_14;
  }

  v10 = v8;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v26 = v9;
    goto LABEL_9;
  }

  v44[0] = 0;
  sub_1DD39638C(0, &qword_1EE166220, 0x1E6997960);
  v11 = v9;
  v12 = v10;
  sub_1DD640108();

  v13 = v44[0];
  if (!v44[0])
  {
LABEL_9:
    if (qword_1EE166258 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    __swift_project_value_buffer(v27, qword_1EE16F0A8);
    v28 = v10;
    v29 = sub_1DD63F9D8();
    v30 = sub_1DD640378();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v31 = 136315138;
      v32 = v28;
      v33 = a2;
      v34 = [v32 description];
      v42 = v30;
      v35 = sub_1DD63FDD8();
      v37 = v36;

      a2 = v33;
      v38 = sub_1DD39565C(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_1DD38D000, v29, v42, "invalid query results. expected [_DKEvent], got %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1E12B3DA0](v43, -1, -1);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
    }

    type metadata accessor for InferenceError();
    swift_allocObject();
    v39 = sub_1DD4DE96C(55, 0, 0xE000000000000000, 0xD00000000000006ELL, 0x80000001DD66CED0, 0x79726575516E7572, 0xEC000000293A5F28, 45, MEMORY[0x1E69E7CC0], 1);
    sub_1DD426968();
    v16 = swift_allocError();
    *v40 = v39;
    swift_willThrow();

    goto LABEL_14;
  }

  *a3 = v13;
LABEL_15:
  v41 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DD478748(void *a1)
{
  v1 = [a1 eventStreamName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t Country.Value.init(rawValue:)@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD110, &qword_1DD64D860);
  v2 = swift_allocObject();
  v3 = sub_1DD3AE030(v2, 255);
  *v4 = "AD";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  *(v4 + 24) = "AE";
  *(v4 + 32) = 2;
  *(v4 + 40) = 2;
  *(v4 + 48) = "AF";
  *(v4 + 56) = 2;
  *(v4 + 64) = 2;
  *(v4 + 72) = "AG";
  *(v4 + 80) = 2;
  *(v4 + 88) = 2;
  *(v4 + 96) = "AI";
  *(v4 + 104) = 2;
  *(v4 + 112) = 2;
  *(v4 + 120) = "AL";
  *(v4 + 128) = 2;
  *(v4 + 136) = 2;
  *(v4 + 144) = "AM";
  *(v4 + 152) = 2;
  *(v4 + 160) = 2;
  *(v4 + 168) = "AN";
  *(v4 + 176) = 2;
  *(v4 + 184) = 2;
  *(v4 + 192) = "AO";
  *(v4 + 200) = 2;
  *(v4 + 208) = 2;
  *(v4 + 216) = "AQ";
  *(v4 + 224) = 2;
  *(v4 + 232) = 2;
  *(v4 + 240) = "AR";
  *(v4 + 248) = 2;
  *(v4 + 256) = 2;
  *(v4 + 264) = "AS";
  *(v4 + 272) = 2;
  *(v4 + 280) = 2;
  *(v4 + 288) = "AT";
  *(v4 + 296) = 2;
  *(v4 + 304) = 2;
  *(v4 + 312) = "AU";
  *(v4 + 320) = 2;
  *(v4 + 328) = 2;
  *(v4 + 336) = "AW";
  *(v4 + 344) = 2;
  *(v4 + 352) = 2;
  *(v4 + 360) = "AX";
  *(v4 + 368) = 2;
  *(v4 + 376) = 2;
  *(v4 + 384) = "AZ";
  *(v4 + 392) = 2;
  *(v4 + 400) = 2;
  *(v4 + 408) = "BA";
  *(v4 + 416) = 2;
  *(v4 + 424) = 2;
  *(v4 + 432) = "BB";
  *(v4 + 440) = 2;
  *(v4 + 448) = 2;
  *(v4 + 456) = "BD";
  *(v4 + 464) = 2;
  *(v4 + 472) = 2;
  *(v4 + 480) = "BE";
  *(v4 + 488) = 2;
  *(v4 + 496) = 2;
  *(v4 + 504) = "BF";
  *(v4 + 512) = 2;
  *(v4 + 520) = 2;
  *(v4 + 528) = "BG";
  *(v4 + 536) = 2;
  *(v4 + 544) = 2;
  *(v4 + 552) = "BH";
  *(v4 + 560) = 2;
  *(v4 + 568) = 2;
  *(v4 + 576) = "BI";
  *(v4 + 584) = 2;
  *(v4 + 592) = 2;
  *(v4 + 600) = "BJ";
  *(v4 + 608) = 2;
  *(v4 + 616) = 2;
  *(v4 + 624) = "BL";
  *(v4 + 632) = 2;
  *(v4 + 640) = 2;
  *(v4 + 648) = "BM";
  *(v4 + 656) = 2;
  *(v4 + 664) = 2;
  *(v4 + 672) = "BN";
  *(v4 + 680) = 2;
  *(v4 + 688) = 2;
  *(v4 + 696) = "BO";
  *(v4 + 704) = 2;
  *(v4 + 712) = 2;
  *(v4 + 720) = "BR";
  *(v4 + 728) = 2;
  *(v4 + 736) = 2;
  *(v4 + 744) = "BQ";
  *(v4 + 752) = 2;
  *(v4 + 760) = 2;
  *(v4 + 768) = "BS";
  *(v4 + 776) = 2;
  *(v4 + 784) = 2;
  *(v4 + 792) = "BT";
  *(v4 + 800) = 2;
  *(v4 + 808) = 2;
  *(v4 + 816) = "BV";
  *(v4 + 824) = 2;
  *(v4 + 832) = 2;
  *(v4 + 840) = "BW";
  *(v4 + 848) = 2;
  *(v4 + 856) = 2;
  *(v4 + 864) = "BY";
  *(v4 + 872) = 2;
  *(v4 + 880) = 2;
  *(v4 + 888) = "BZ";
  *(v4 + 896) = 2;
  *(v4 + 904) = 2;
  *(v4 + 912) = "CA";
  *(v4 + 920) = 2;
  *(v4 + 928) = 2;
  *(v4 + 936) = "CC";
  *(v4 + 944) = 2;
  *(v4 + 952) = 2;
  *(v4 + 960) = "CD";
  *(v4 + 968) = 2;
  *(v4 + 976) = 2;
  *(v4 + 984) = "CF";
  *(v4 + 992) = 2;
  *(v4 + 1000) = 2;
  *(v4 + 1008) = "CG";
  *(v4 + 1016) = 2;
  *(v4 + 1024) = 2;
  *(v4 + 1032) = "CH";
  *(v4 + 1040) = 2;
  *(v4 + 1048) = 2;
  *(v4 + 1056) = "CI";
  *(v4 + 1064) = 2;
  *(v4 + 1072) = 2;
  *(v4 + 1080) = "CK";
  *(v4 + 1088) = 2;
  *(v4 + 1096) = 2;
  *(v4 + 1104) = "CL";
  *(v4 + 1112) = 2;
  *(v4 + 1120) = 2;
  *(v4 + 1128) = "CM";
  *(v4 + 1136) = 2;
  *(v4 + 1144) = 2;
  *(v4 + 1152) = "CN";
  *(v4 + 1160) = 2;
  *(v4 + 1168) = 2;
  *(v4 + 1176) = "CO";
  *(v4 + 1184) = 2;
  *(v4 + 1192) = 2;
  *(v4 + 1200) = "CR";
  *(v4 + 1208) = 2;
  *(v4 + 1216) = 2;
  *(v4 + 1224) = "CU";
  *(v4 + 1232) = 2;
  *(v4 + 1240) = 2;
  *(v4 + 1248) = "CV";
  *(v4 + 1256) = 2;
  *(v4 + 1264) = 2;
  *(v4 + 1272) = "CW";
  *(v4 + 1280) = 2;
  *(v4 + 1288) = 2;
  *(v4 + 1296) = "CX";
  *(v4 + 1304) = 2;
  *(v4 + 1312) = 2;
  *(v4 + 1320) = "CY";
  *(v4 + 1328) = 2;
  *(v4 + 1336) = 2;
  *(v4 + 1344) = "CZ";
  *(v4 + 1352) = 2;
  *(v4 + 1360) = 2;
  *(v4 + 1368) = "DE";
  *(v4 + 1376) = 2;
  *(v4 + 1384) = 2;
  *(v4 + 1392) = "DJ";
  *(v4 + 1400) = 2;
  *(v4 + 1408) = 2;
  *(v4 + 1416) = "DK";
  *(v4 + 1424) = 2;
  *(v4 + 1432) = 2;
  *(v4 + 1440) = "DM";
  *(v4 + 1448) = 2;
  *(v4 + 1456) = 2;
  *(v4 + 1464) = "DO";
  *(v4 + 1472) = 2;
  *(v4 + 1480) = 2;
  *(v4 + 1488) = "DZ";
  *(v4 + 1496) = 2;
  *(v4 + 1504) = 2;
  *(v4 + 1512) = "EC";
  *(v4 + 1520) = 2;
  *(v4 + 1528) = 2;
  *(v4 + 1536) = "EE";
  *(v4 + 1544) = 2;
  *(v4 + 1552) = 2;
  *(v4 + 1560) = "EG";
  *(v4 + 1568) = 2;
  *(v4 + 1576) = 2;
  *(v4 + 1584) = "EH";
  *(v4 + 1592) = 2;
  *(v4 + 1600) = 2;
  *(v4 + 1608) = "ER";
  *(v4 + 1616) = 2;
  *(v4 + 1624) = 2;
  *(v4 + 1632) = "ES";
  *(v4 + 1640) = 2;
  *(v4 + 1648) = 2;
  *(v4 + 1656) = "ET";
  *(v4 + 1664) = 2;
  *(v4 + 1672) = 2;
  *(v4 + 1680) = "FI";
  *(v4 + 1688) = 2;
  *(v4 + 1696) = 2;
  *(v4 + 1704) = "FJ";
  *(v4 + 1712) = 2;
  *(v4 + 1720) = 2;
  *(v4 + 1728) = "FK";
  *(v4 + 1736) = 2;
  *(v4 + 1752) = "FM";
  *(v4 + 1776) = "FO";
  *(v4 + 1800) = "FR";
  *(v4 + 1824) = "FU";
  *(v4 + 1848) = "GA";
  *(v4 + 1872) = "GB";
  *(v4 + 1896) = "GD";
  *(v4 + 1920) = "GE";
  *(v4 + 1944) = "GF";
  *(v4 + 1968) = "GG";
  *(v4 + 1992) = "GH";
  *(v4 + 2184) = "GS";
  *(v4 + 2280) = "GY";
  *(v4 + 2376) = "HR";
  *(v4 + 2472) = "IE";
  *(v4 + 2568) = "IO";
  *(v4 + 2664) = "IT";
  *(v4 + 2760) = "JP";
  *(v4 + 2856) = "KI";
  *(v4 + 2952) = "KR";
  *(v4 + 3048) = "LA";
  *(v4 + 3144) = "LK";
  *(v4 + 3240) = "LU";
  *(v4 + 3336) = "MC";
  *(v4 + 3432) = "MG";
  *(v4 + 3528) = "MM";
  *(v4 + 3624) = "MQ";
  *(v4 + 3720) = "MU";
  *(v4 + 3816) = "MY";
  *(v4 + 3912) = "NE";
  *(v4 + 4008) = "NL";
  *(v4 + 1744) = 2;
  *(v4 + 4056) = "NP";
  *(v4 + 4040) = 2;
  *(v4 + 4048) = 2;
  *(v4 + 1760) = 2;
  *(v4 + 4032) = "NO";
  *(v4 + 4016) = 2;
  *(v4 + 4024) = 2;
  *(v4 + 3984) = "NI";
  *(v4 + 3976) = 2;
  *(v4 + 3992) = 2;
  *(v4 + 4000) = 2;
  *(v4 + 3960) = "NG";
  *(v4 + 3944) = 2;
  *(v4 + 3952) = 2;
  *(v4 + 3968) = 2;
  *(v4 + 1768) = 2;
  *(v4 + 3936) = "NF";
  *(v4 + 3920) = 2;
  *(v4 + 3928) = 2;
  *(v4 + 3888) = "NC";
  *(v4 + 3880) = 2;
  *(v4 + 3896) = 2;
  *(v4 + 3904) = 2;
  *(v4 + 3864) = "NA";
  *(v4 + 3848) = 2;
  *(v4 + 3856) = 2;
  *(v4 + 3872) = 2;
  *(v4 + 1784) = 2;
  *(v4 + 3840) = "MZ";
  *(v4 + 3824) = 2;
  *(v4 + 3832) = 2;
  *(v4 + 3792) = "MX";
  *(v4 + 3784) = 2;
  *(v4 + 3800) = 2;
  *(v4 + 3808) = 2;
  *(v4 + 3768) = "MW";
  *(v4 + 3752) = 2;
  *(v4 + 3760) = 2;
  *(v4 + 3776) = 2;
  *(v4 + 1792) = 2;
  *(v4 + 3744) = "MV";
  *(v4 + 3728) = 2;
  *(v4 + 3736) = 2;
  *(v4 + 3696) = "MT";
  *(v4 + 3688) = 2;
  *(v4 + 3704) = 2;
  *(v4 + 3712) = 2;
  *(v4 + 3672) = "MS";
  *(v4 + 3656) = 2;
  *(v4 + 3664) = 2;
  *(v4 + 3680) = 2;
  *(v4 + 1808) = 2;
  *(v4 + 3648) = "MR";
  *(v4 + 3632) = 2;
  *(v4 + 3640) = 2;
  *(v4 + 3600) = "MP";
  *(v4 + 3592) = 2;
  *(v4 + 3608) = 2;
  *(v4 + 3616) = 2;
  *(v4 + 3576) = "MO";
  *(v4 + 3560) = 2;
  *(v4 + 3568) = 2;
  *(v4 + 3584) = 2;
  *(v4 + 1816) = 2;
  *(v4 + 3552) = "MN";
  *(v4 + 3536) = 2;
  *(v4 + 3544) = 2;
  *(v4 + 3504) = "ML";
  *(v4 + 3496) = 2;
  *(v4 + 3512) = 2;
  *(v4 + 3520) = 2;
  *(v4 + 3480) = "MK";
  *(v4 + 3464) = 2;
  *(v4 + 3472) = 2;
  *(v4 + 3488) = 2;
  *(v4 + 1832) = 2;
  *(v4 + 3456) = "MH";
  *(v4 + 3440) = 2;
  *(v4 + 3448) = 2;
  *(v4 + 3408) = "MF";
  *(v4 + 3400) = 2;
  *(v4 + 3416) = 2;
  *(v4 + 3424) = 2;
  *(v4 + 3384) = "ME";
  *(v4 + 3368) = 2;
  *(v4 + 3376) = 2;
  *(v4 + 3392) = 2;
  *(v4 + 1840) = 2;
  *(v4 + 3360) = "MD";
  *(v4 + 3344) = 2;
  *(v4 + 3352) = 2;
  *(v4 + 3312) = "MA";
  *(v4 + 3304) = 2;
  *(v4 + 3320) = 2;
  *(v4 + 3328) = 2;
  *(v4 + 3288) = "LY";
  *(v4 + 3272) = 2;
  *(v4 + 3280) = 2;
  *(v4 + 3296) = 2;
  *(v4 + 1856) = 2;
  *(v4 + 3264) = "LV";
  *(v4 + 3248) = 2;
  *(v4 + 3256) = 2;
  *(v4 + 3216) = "LT";
  *(v4 + 3208) = 2;
  *(v4 + 3224) = 2;
  *(v4 + 3232) = 2;
  *(v4 + 3192) = "LS";
  *(v4 + 3176) = 2;
  *(v4 + 3184) = 2;
  *(v4 + 3200) = 2;
  *(v4 + 1864) = 2;
  *(v4 + 3168) = "LR";
  *(v4 + 3152) = 2;
  *(v4 + 3160) = 2;
  *(v4 + 3120) = "LI";
  *(v4 + 3112) = 2;
  *(v4 + 3128) = 2;
  *(v4 + 3136) = 2;
  *(v4 + 3096) = "LC";
  *(v4 + 3080) = 2;
  *(v4 + 3088) = 2;
  *(v4 + 3104) = 2;
  *(v4 + 1880) = 2;
  *(v4 + 3072) = "LB";
  *(v4 + 3056) = 2;
  *(v4 + 3064) = 2;
  *(v4 + 3024) = "KZ";
  *(v4 + 3016) = 2;
  *(v4 + 3032) = 2;
  *(v4 + 3040) = 2;
  *(v4 + 3000) = "KY";
  *(v4 + 2984) = 2;
  *(v4 + 2992) = 2;
  *(v4 + 3008) = 2;
  *(v4 + 1888) = 2;
  *(v4 + 2976) = "KW";
  *(v4 + 2960) = 2;
  *(v4 + 2968) = 2;
  *(v4 + 2928) = "KP";
  *(v4 + 2920) = 2;
  *(v4 + 2936) = 2;
  *(v4 + 2944) = 2;
  *(v4 + 2904) = "KN";
  *(v4 + 2888) = 2;
  *(v4 + 2896) = 2;
  *(v4 + 2912) = 2;
  *(v4 + 1904) = 2;
  *(v4 + 2880) = "KM";
  *(v4 + 2864) = 2;
  *(v4 + 2872) = 2;
  *(v4 + 2832) = "KH";
  *(v4 + 2824) = 2;
  *(v4 + 2840) = 2;
  *(v4 + 2848) = 2;
  *(v4 + 2808) = "KG";
  *(v4 + 2792) = 2;
  *(v4 + 2800) = 2;
  *(v4 + 2816) = 2;
  *(v4 + 1912) = 2;
  *(v4 + 2784) = "KE";
  *(v4 + 2768) = 2;
  *(v4 + 2776) = 2;
  *(v4 + 2736) = "JO";
  *(v4 + 2728) = 2;
  *(v4 + 2744) = 2;
  *(v4 + 2752) = 2;
  *(v4 + 2712) = "JM";
  *(v4 + 2696) = 2;
  *(v4 + 2704) = 2;
  *(v4 + 2720) = 2;
  *(v4 + 1928) = 2;
  *(v4 + 2688) = "JE";
  *(v4 + 2672) = 2;
  *(v4 + 2680) = 2;
  *(v4 + 2640) = "IS";
  *(v4 + 2632) = 2;
  *(v4 + 2648) = 2;
  *(v4 + 2656) = 2;
  *(v4 + 2616) = "IR";
  *(v4 + 2600) = 2;
  *(v4 + 2608) = 2;
  *(v4 + 2624) = 2;
  *(v4 + 1936) = 2;
  *(v4 + 2592) = "IQ";
  *(v4 + 2576) = 2;
  *(v4 + 2584) = 2;
  *(v4 + 2544) = "IN";
  *(v4 + 2536) = 2;
  *(v4 + 2552) = 2;
  *(v4 + 2560) = 2;
  *(v4 + 2520) = "IM";
  *(v4 + 2504) = 2;
  *(v4 + 2512) = 2;
  *(v4 + 2528) = 2;
  *(v4 + 1952) = 2;
  *(v4 + 2496) = "IL";
  *(v4 + 2480) = 2;
  *(v4 + 2488) = 2;
  *(v4 + 2448) = "ID";
  *(v4 + 2440) = 2;
  *(v4 + 2456) = 2;
  *(v4 + 2464) = 2;
  *(v4 + 2424) = "HU";
  *(v4 + 2408) = 2;
  *(v4 + 2416) = 2;
  *(v4 + 2432) = 2;
  *(v4 + 1960) = 2;
  *(v4 + 2400) = "HT";
  *(v4 + 2384) = 2;
  *(v4 + 2392) = 2;
  *(v4 + 2352) = "HN";
  *(v4 + 2344) = 2;
  *(v4 + 2360) = 2;
  *(v4 + 2368) = 2;
  *(v4 + 2328) = "HM";
  *(v4 + 2312) = 2;
  *(v4 + 2320) = 2;
  *(v4 + 2336) = 2;
  *(v4 + 1976) = 2;
  *(v4 + 2304) = "HK";
  *(v4 + 2288) = 2;
  *(v4 + 2296) = 2;
  *(v4 + 2256) = "GW";
  *(v4 + 2248) = 2;
  *(v4 + 2264) = 2;
  *(v4 + 2272) = 2;
  *(v4 + 2232) = "GU";
  *(v4 + 2216) = 2;
  *(v4 + 2224) = 2;
  *(v4 + 2240) = 2;
  *(v4 + 1984) = 2;
  *(v4 + 2208) = "GT";
  *(v4 + 2192) = 2;
  *(v4 + 2200) = 2;
  *(v4 + 2160) = "GR";
  *(v4 + 2152) = 2;
  *(v4 + 2168) = 2;
  *(v4 + 2176) = 2;
  *(v4 + 2136) = "GQ";
  *(v4 + 2120) = 2;
  *(v4 + 2128) = 2;
  *(v4 + 2144) = 2;
  *(v4 + 2000) = 2;
  *(v4 + 2112) = "GP";
  *(v4 + 2096) = 2;
  *(v4 + 2104) = 2;
  *(v4 + 2064) = "GM";
  *(v4 + 2072) = 2;
  *(v4 + 2080) = 2;
  *(v4 + 2088) = "GN";
  *(v4 + 2032) = 2;
  *(v4 + 2040) = "GL";
  *(v4 + 2048) = 2;
  *(v4 + 2056) = 2;
  *(v4 + 2008) = 2;
  *(v4 + 2016) = "GI";
  *(v4 + 2024) = 2;
  *(v4 + 4064) = 2;
  *(v4 + 4072) = 2;
  *(v4 + 4080) = "NR";
  *(v4 + 4088) = 2;
  *(v4 + 4096) = 2;
  *(v4 + 4104) = "NU";
  *(v4 + 4112) = 2;
  *(v4 + 4120) = 2;
  *(v4 + 4128) = "NZ";
  *(v4 + 4136) = 2;
  *(v4 + 4144) = 2;
  *(v4 + 4152) = "OM";
  *(v4 + 4160) = 2;
  *(v4 + 4168) = 2;
  *(v4 + 4176) = "PA";
  *(v4 + 4184) = 2;
  *(v4 + 4192) = 2;
  *(v4 + 4200) = "PE";
  *(v4 + 4208) = 2;
  *(v4 + 4216) = 2;
  *(v4 + 4224) = "PF";
  *(v4 + 4232) = 2;
  *(v4 + 4240) = 2;
  *(v4 + 4248) = "PG";
  *(v4 + 4256) = 2;
  *(v4 + 4264) = 2;
  *(v4 + 4272) = "PH";
  *(v4 + 4280) = 2;
  *(v4 + 4288) = 2;
  *(v4 + 4296) = "PI";
  *(v4 + 4304) = 2;
  *(v4 + 4312) = 2;
  *(v4 + 4320) = "PK";
  *(v4 + 4328) = 2;
  *(v4 + 4336) = 2;
  *(v4 + 4344) = "PL";
  *(v4 + 4352) = 2;
  *(v4 + 4360) = 2;
  *(v4 + 4368) = "PM";
  *(v4 + 4376) = 2;
  *(v4 + 4384) = 2;
  *(v4 + 4392) = "PN";
  *(v4 + 4400) = 2;
  *(v4 + 4408) = 2;
  *(v4 + 4416) = "PR";
  *(v4 + 4424) = 2;
  *(v4 + 4432) = 2;
  *(v4 + 4440) = "PS";
  *(v4 + 4448) = 2;
  *(v4 + 4456) = 2;
  *(v4 + 4464) = "PT";
  *(v4 + 4472) = 2;
  *(v4 + 4480) = 2;
  *(v4 + 4488) = "PW";
  *(v4 + 4496) = 2;
  *(v4 + 4504) = 2;
  *(v4 + 4512) = "PY";
  *(v4 + 4520) = 2;
  *(v4 + 4528) = 2;
  *(v4 + 4536) = "QA";
  *(v4 + 4544) = 2;
  *(v4 + 4552) = 2;
  *(v4 + 4560) = "RE";
  *(v4 + 4568) = 2;
  *(v4 + 4576) = 2;
  *(v4 + 4584) = "RO";
  *(v4 + 4592) = 2;
  *(v4 + 4600) = 2;
  *(v4 + 4608) = "RS";
  *(v4 + 4616) = 2;
  *(v4 + 4624) = 2;
  *(v4 + 4632) = "RU";
  *(v4 + 4640) = 2;
  *(v4 + 4648) = 2;
  *(v4 + 4656) = "RW";
  *(v4 + 4664) = 2;
  *(v4 + 4672) = 2;
  *(v4 + 4680) = "SA";
  *(v4 + 4688) = 2;
  *(v4 + 4696) = 2;
  *(v4 + 4704) = "SB";
  *(v4 + 4712) = 2;
  *(v4 + 4720) = 2;
  *(v4 + 4728) = "SC";
  *(v4 + 4736) = 2;
  *(v4 + 4744) = 2;
  *(v4 + 4752) = "SD";
  *(v4 + 4760) = 2;
  *(v4 + 4768) = 2;
  *(v4 + 4776) = "SE";
  *(v4 + 4784) = 2;
  *(v4 + 4792) = 2;
  *(v4 + 4800) = "SG";
  *(v4 + 4808) = 2;
  *(v4 + 4816) = 2;
  *(v4 + 4824) = "SH";
  *(v4 + 4832) = 2;
  *(v4 + 4840) = 2;
  *(v4 + 4848) = "SI";
  *(v4 + 4856) = 2;
  *(v4 + 4864) = 2;
  *(v4 + 4872) = "SJ";
  *(v4 + 4880) = 2;
  *(v4 + 4888) = 2;
  *(v4 + 4896) = "SK";
  *(v4 + 4904) = 2;
  *(v4 + 4912) = 2;
  *(v4 + 4920) = "SL";
  *(v4 + 4928) = 2;
  *(v4 + 4936) = 2;
  *(v4 + 4944) = "SM";
  *(v4 + 4952) = 2;
  *(v4 + 4960) = 2;
  *(v4 + 4968) = "SN";
  *(v4 + 4976) = 2;
  *(v4 + 4984) = 2;
  *(v4 + 4992) = "SO";
  *(v4 + 5000) = 2;
  *(v4 + 5008) = 2;
  *(v4 + 5016) = "SR";
  *(v4 + 5024) = 2;
  *(v4 + 5032) = 2;
  *(v4 + 5040) = "SS";
  *(v4 + 5048) = 2;
  *(v4 + 5056) = 2;
  *(v4 + 5064) = "ST";
  *(v4 + 5072) = 2;
  *(v4 + 5080) = 2;
  *(v4 + 5088) = "SX";
  *(v4 + 5096) = 2;
  *(v4 + 5104) = 2;
  *(v4 + 5112) = "SV";
  *(v4 + 5120) = 2;
  *(v4 + 5128) = 2;
  *(v4 + 5136) = "SY";
  *(v4 + 5144) = 2;
  *(v4 + 5152) = 2;
  *(v4 + 5160) = "SZ";
  *(v4 + 5168) = 2;
  *(v4 + 5176) = 2;
  *(v4 + 5184) = "TC";
  *(v4 + 5192) = 2;
  *(v4 + 5200) = 2;
  *(v4 + 5208) = "TD";
  *(v4 + 5216) = 2;
  *(v4 + 5224) = 2;
  *(v4 + 5232) = "TF";
  *(v4 + 5240) = 2;
  *(v4 + 5248) = 2;
  *(v4 + 5256) = "TG";
  *(v4 + 5264) = 2;
  *(v4 + 5272) = 2;
  *(v4 + 5280) = "TH";
  *(v4 + 5288) = 2;
  *(v4 + 5296) = 2;
  *(v4 + 5304) = "TJ";
  *(v4 + 5312) = 2;
  *(v4 + 5320) = 2;
  *(v4 + 5328) = "TK";
  *(v4 + 5336) = 2;
  *(v4 + 5344) = 2;
  *(v4 + 5352) = "TL";
  *(v4 + 5360) = 2;
  *(v4 + 5368) = 2;
  *(v4 + 5376) = "TM";
  *(v4 + 5384) = 2;
  *(v4 + 5392) = 2;
  *(v4 + 5400) = "TN";
  *(v4 + 5408) = 2;
  *(v4 + 5416) = 2;
  *(v4 + 5424) = "TO";
  *(v4 + 5432) = 2;
  *(v4 + 5440) = 2;
  *(v4 + 5448) = "TR";
  *(v4 + 5456) = 2;
  *(v4 + 5464) = 2;
  *(v4 + 5472) = "TT";
  *(v4 + 5480) = 2;
  *(v4 + 5488) = 2;
  *(v4 + 5496) = "TV";
  *(v4 + 5504) = 2;
  *(v4 + 5512) = 2;
  *(v4 + 5520) = "TW";
  *(v4 + 5528) = 2;
  *(v4 + 5536) = 2;
  *(v4 + 5544) = "TZ";
  *(v4 + 5552) = 2;
  *(v4 + 5560) = 2;
  *(v4 + 5568) = "UA";
  *(v4 + 5576) = 2;
  *(v4 + 5584) = 2;
  *(v4 + 5592) = "UG";
  *(v4 + 5600) = 2;
  *(v4 + 5608) = 2;
  *(v4 + 5616) = "UM";
  *(v4 + 5624) = 2;
  *(v4 + 5632) = 2;
  *(v4 + 5640) = "US";
  *(v4 + 5648) = 2;
  *(v4 + 5656) = 2;
  *(v4 + 5664) = "UY";
  *(v4 + 5672) = 2;
  *(v4 + 5680) = 2;
  *(v4 + 5688) = "UZ";
  *(v4 + 5696) = 2;
  *(v4 + 5704) = 2;
  *(v4 + 5712) = "VA";
  *(v4 + 5720) = 2;
  *(v4 + 5728) = 2;
  *(v4 + 5736) = "VC";
  *(v4 + 5744) = 2;
  *(v4 + 5752) = 2;
  *(v4 + 5760) = "VE";
  *(v4 + 5768) = 2;
  *(v4 + 5776) = 2;
  *(v4 + 5784) = "VG";
  *(v4 + 5792) = 2;
  *(v4 + 5800) = 2;
  *(v4 + 5808) = "VI";
  *(v4 + 5816) = 2;
  *(v4 + 5824) = 2;
  *(v4 + 5832) = "VN";
  *(v4 + 5840) = 2;
  *(v4 + 5848) = 2;
  *(v4 + 5856) = "VT";
  *(v4 + 5864) = 2;
  *(v4 + 5872) = 2;
  *(v4 + 5880) = "VU";
  *(v4 + 5888) = 2;
  *(v4 + 5896) = 2;
  *(v4 + 5904) = "WF";
  *(v4 + 5912) = 2;
  *(v4 + 5920) = 2;
  *(v4 + 5928) = "WS";
  *(v4 + 5936) = 2;
  *(v4 + 5944) = 2;
  *(v4 + 5952) = "YE";
  *(v4 + 5960) = 2;
  *(v4 + 5968) = 2;
  *(v4 + 5976) = "YT";
  *(v4 + 5984) = 2;
  *(v4 + 5992) = 2;
  *(v4 + 6000) = "YY";
  *(v4 + 6008) = 2;
  *(v4 + 6016) = 2;
  *(v4 + 6024) = "ZA";
  *(v4 + 6032) = 2;
  *(v4 + 6040) = 2;
  *(v4 + 6048) = "ZM";
  *(v4 + 6056) = 2;
  *(v4 + 6064) = 2;
  *(v4 + 6072) = "ZW";
  *(v4 + 6080) = 2;
  *(v4 + 6088) = 2;
  *(v4 + 6096) = "ZZ";
  *(v4 + 6104) = 2;
  *(v4 + 6112) = 2;
  nullsub_1(v3);
  v5 = sub_1DD640AA8();

  if (v5 < 0x80 || (v5 & 0xFFFFFFFFFFFFFFC0) == 0x80)
  {
LABEL_3:
    v7 = v5;
  }

  else
  {
    v8 = v5 - 192;
    v7 = -19;
    LOBYTE(v5) = -64;
    switch(v8)
    {
      case 0uLL:
        goto LABEL_3;
      case 1uLL:
        LOBYTE(v5) = -63;
        goto LABEL_3;
      case 2uLL:
        LOBYTE(v5) = -62;
        goto LABEL_3;
      case 3uLL:
        LOBYTE(v5) = -61;
        goto LABEL_3;
      case 4uLL:
        LOBYTE(v5) = -60;
        goto LABEL_3;
      case 5uLL:
        LOBYTE(v5) = -59;
        goto LABEL_3;
      case 6uLL:
        LOBYTE(v5) = -58;
        goto LABEL_3;
      case 7uLL:
        LOBYTE(v5) = -57;
        goto LABEL_3;
      case 8uLL:
        LOBYTE(v5) = -56;
        goto LABEL_3;
      case 9uLL:
        LOBYTE(v5) = -55;
        goto LABEL_3;
      case 0xAuLL:
        LOBYTE(v5) = -54;
        goto LABEL_3;
      case 0xBuLL:
        LOBYTE(v5) = -53;
        goto LABEL_3;
      case 0xCuLL:
        LOBYTE(v5) = -52;
        goto LABEL_3;
      case 0xDuLL:
        LOBYTE(v5) = -51;
        goto LABEL_3;
      case 0xEuLL:
        LOBYTE(v5) = -50;
        goto LABEL_3;
      case 0xFuLL:
        LOBYTE(v5) = -49;
        goto LABEL_3;
      case 0x10uLL:
        LOBYTE(v5) = -48;
        goto LABEL_3;
      case 0x11uLL:
        LOBYTE(v5) = -47;
        goto LABEL_3;
      case 0x12uLL:
        LOBYTE(v5) = -46;
        goto LABEL_3;
      case 0x13uLL:
        LOBYTE(v5) = -45;
        goto LABEL_3;
      case 0x14uLL:
        LOBYTE(v5) = -44;
        goto LABEL_3;
      case 0x15uLL:
        LOBYTE(v5) = -43;
        goto LABEL_3;
      case 0x16uLL:
        LOBYTE(v5) = -42;
        goto LABEL_3;
      case 0x17uLL:
        LOBYTE(v5) = -41;
        goto LABEL_3;
      case 0x18uLL:
        LOBYTE(v5) = -40;
        goto LABEL_3;
      case 0x19uLL:
        LOBYTE(v5) = -39;
        goto LABEL_3;
      case 0x1AuLL:
        LOBYTE(v5) = -38;
        goto LABEL_3;
      case 0x1BuLL:
        LOBYTE(v5) = -37;
        goto LABEL_3;
      case 0x1CuLL:
        LOBYTE(v5) = -36;
        goto LABEL_3;
      case 0x1DuLL:
        LOBYTE(v5) = -35;
        goto LABEL_3;
      case 0x1EuLL:
        LOBYTE(v5) = -34;
        goto LABEL_3;
      case 0x1FuLL:
        LOBYTE(v5) = -33;
        goto LABEL_3;
      case 0x20uLL:
        LOBYTE(v5) = -32;
        goto LABEL_3;
      case 0x21uLL:
        LOBYTE(v5) = -31;
        goto LABEL_3;
      case 0x22uLL:
        LOBYTE(v5) = -30;
        goto LABEL_3;
      case 0x23uLL:
        LOBYTE(v5) = -29;
        goto LABEL_3;
      case 0x24uLL:
        LOBYTE(v5) = -28;
        goto LABEL_3;
      case 0x25uLL:
        LOBYTE(v5) = -27;
        goto LABEL_3;
      case 0x26uLL:
        LOBYTE(v5) = -26;
        goto LABEL_3;
      case 0x27uLL:
        LOBYTE(v5) = -25;
        goto LABEL_3;
      case 0x28uLL:
        LOBYTE(v5) = -24;
        goto LABEL_3;
      case 0x29uLL:
        LOBYTE(v5) = -23;
        goto LABEL_3;
      case 0x2AuLL:
        LOBYTE(v5) = -22;
        goto LABEL_3;
      case 0x2BuLL:
        LOBYTE(v5) = -21;
        goto LABEL_3;
      case 0x2CuLL:
        LOBYTE(v5) = -20;
        goto LABEL_3;
      case 0x2DuLL:
        break;
      case 0x2EuLL:
        v7 = -18;
        break;
      case 0x2FuLL:
        v7 = -17;
        break;
      case 0x30uLL:
        v7 = -16;
        break;
      case 0x31uLL:
        v7 = -15;
        break;
      case 0x32uLL:
        v7 = -14;
        break;
      case 0x33uLL:
        v7 = -13;
        break;
      case 0x34uLL:
        v7 = -12;
        break;
      case 0x35uLL:
        v7 = -11;
        break;
      case 0x36uLL:
        v7 = -10;
        break;
      case 0x37uLL:
        v7 = -9;
        break;
      case 0x38uLL:
        v7 = -8;
        break;
      case 0x39uLL:
        v7 = -7;
        break;
      case 0x3AuLL:
        v7 = -6;
        break;
      case 0x3BuLL:
        v7 = -5;
        break;
      case 0x3CuLL:
        v7 = -4;
        break;
      case 0x3DuLL:
        v7 = -3;
        break;
      case 0x3EuLL:
        v7 = -2;
        break;
      default:
        v7 = -1;
        break;
    }
  }

  *a1 = v7;
  return result;
}

char *Country.init(value:prefix:suffix:)@<X0>(char *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *result;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  a4[2] = v4;
  return result;
}

uint64_t sub_1DD479E64@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Country.Value.init(rawValue:)(a1);
}

uint64_t sub_1DD479E70@<X0>(uint64_t *a1@<X8>)
{
  result = Country.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::Country::Prefix_optional __swiftcall Country.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Country.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

SiriInference::Country::Suffix_optional __swiftcall Country.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static Country.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if ((sub_1DD3AE614(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D84(v2, v4) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D84(v3, v5);
  }

  return result;
}

uint64_t sub_1DD47A2B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x786966667573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD47A3C4(char a1)
{
  if (!a1)
  {
    return 0x786966657270;
  }

  if (a1 == 1)
  {
    return 0x786966667573;
  }

  return 0x65756C6176;
}

uint64_t sub_1DD47A418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD47A2B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD47A440(uint64_t a1)
{
  v2 = sub_1DD47A890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47A47C(uint64_t a1)
{
  v2 = sub_1DD47A890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Country.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD118, &qword_1DD64D868);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v18 = v1[2];
  v19 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47A890();
  sub_1DD640EF8();
  v25 = v12;
  v24 = 0;
  sub_1DD47A8E4();
  OUTLINED_FUNCTION_10();
  sub_1DD640C08();
  if (!v2)
  {
    v15 = v18;
    v23 = v19;
    v22 = 1;
    sub_1DD47A938();
    OUTLINED_FUNCTION_10();
    sub_1DD640C08();
    v21 = v15;
    v20 = 2;
    sub_1DD47A98C();
    OUTLINED_FUNCTION_10();
    sub_1DD640C68();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t Country.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD140, &qword_1DD64D870);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47A890();
  sub_1DD640ED8();
  if (!v2)
  {
    v23 = 0;
    sub_1DD47A9E0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    v14 = v24;
    v21 = 1;
    sub_1DD47AA34();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    v16 = v22;
    v19 = 2;
    sub_1DD47AA88();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    (*(v8 + 8))(v12, v5);
    v17 = v20;
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47A890()
{
  result = qword_1ECCDD120;
  if (!qword_1ECCDD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD120);
  }

  return result;
}

unint64_t sub_1DD47A8E4()
{
  result = qword_1ECCDD128;
  if (!qword_1ECCDD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD128);
  }

  return result;
}

unint64_t sub_1DD47A938()
{
  result = qword_1ECCDD130;
  if (!qword_1ECCDD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD130);
  }

  return result;
}

unint64_t sub_1DD47A98C()
{
  result = qword_1ECCDD138;
  if (!qword_1ECCDD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD138);
  }

  return result;
}

unint64_t sub_1DD47A9E0()
{
  result = qword_1ECCDD148;
  if (!qword_1ECCDD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD148);
  }

  return result;
}

unint64_t sub_1DD47AA34()
{
  result = qword_1ECCDD150;
  if (!qword_1ECCDD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD150);
  }

  return result;
}

unint64_t sub_1DD47AA88()
{
  result = qword_1ECCDD158;
  if (!qword_1ECCDD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD158);
  }

  return result;
}

unint64_t sub_1DD47AAE0()
{
  result = qword_1ECCDD160;
  if (!qword_1ECCDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD160);
  }

  return result;
}

unint64_t sub_1DD47AB38()
{
  result = qword_1ECCDD168;
  if (!qword_1ECCDD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD168);
  }

  return result;
}

unint64_t sub_1DD47AB90()
{
  result = qword_1ECCDD170;
  if (!qword_1ECCDD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD170);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Country(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFD)
  {
    if ((a2 + 33554179) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776964;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *a1;
  }

  v6 = v5 - 4;
  if (v4 < 3)
  {
    v3 = -1;
  }

  else
  {
    v3 = v6;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Country(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554179) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFC)
  {
    *result = a2 - 253;
    *(result + 2) = (a2 - 253) >> 16;
    if (v3)
    {
      v4 = ((a2 - 253) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 3;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Country.Value(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 != 1)
  {
    if ((a2 + 254) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 254) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 255;
    return (v5 + 1);
  }

LABEL_17:
  if (*a1 == 255)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Country.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 1)
  {
    v6 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
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
          *result = -1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DD47AE80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47AF60()
{
  result = qword_1ECCDD178;
  if (!qword_1ECCDD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD178);
  }

  return result;
}

unint64_t sub_1DD47AFB8()
{
  result = qword_1ECCDD180;
  if (!qword_1ECCDD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD180);
  }

  return result;
}

unint64_t sub_1DD47B010()
{
  result = qword_1ECCDD188;
  if (!qword_1ECCDD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD188);
  }

  return result;
}

unint64_t sub_1DD47B064()
{
  result = qword_1ECCDD190;
  if (!qword_1ECCDD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD190);
  }

  return result;
}

unint64_t sub_1DD47B0B8()
{
  result = qword_1ECCDD198;
  if (!qword_1ECCDD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD198);
  }

  return result;
}

unint64_t sub_1DD47B10C()
{
  result = qword_1ECCDD1A0;
  if (!qword_1ECCDD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1A0);
  }

  return result;
}

SiriInference::County::Prefix_optional __swiftcall County.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t County.Prefix.rawValue.getter()
{
  v1 = 0x79746E756F63;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28265;
  }
}

SiriInference::County::Suffix_optional __swiftcall County.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t County.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static County.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v4 == 3 || (sub_1DD3B2D88(v2, v4) & 1) == 0)
  {
    return 0;
  }

  result = v5 == 3 && v3 == 3;
  if (v3 != 3 && v5 != 3)
  {

    return sub_1DD3B2D88(v3, v5);
  }

  return result;
}

uint64_t sub_1DD47B53C(uint64_t a1)
{
  v2 = sub_1DD47B9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47B578(uint64_t a1)
{
  v2 = sub_1DD47B9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t County.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD1A8, &qword_1DD64E938);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  v23 = *(v1 + 17);
  v24 = v14;
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_1DD47B9B0();
  sub_1DD640EF8();
  v29 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v20 = v23;
    v28 = v24;
    v27 = 1;
    sub_1DD47BA04();
    sub_1DD640C08();
    v26 = v20;
    v25 = 2;
    sub_1DD47BA58();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v19);
}

uint64_t County.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD1C8, &qword_1DD64E940);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47B9B0();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD47BAAC();
  OUTLINED_FUNCTION_3_4();
  sub_1DD47BB00();
  OUTLINED_FUNCTION_3_4();
  v14 = OUTLINED_FUNCTION_0_0();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v17;
  *(a2 + 17) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47B9B0()
{
  result = qword_1ECCDD1B0;
  if (!qword_1ECCDD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1B0);
  }

  return result;
}

unint64_t sub_1DD47BA04()
{
  result = qword_1ECCDD1B8;
  if (!qword_1ECCDD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1B8);
  }

  return result;
}

unint64_t sub_1DD47BA58()
{
  result = qword_1ECCDD1C0;
  if (!qword_1ECCDD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1C0);
  }

  return result;
}

unint64_t sub_1DD47BAAC()
{
  result = qword_1ECCDD1D0;
  if (!qword_1ECCDD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1D0);
  }

  return result;
}

unint64_t sub_1DD47BB00()
{
  result = qword_1ECCDD1D8;
  if (!qword_1ECCDD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1D8);
  }

  return result;
}

unint64_t sub_1DD47BB58()
{
  result = qword_1ECCDD1E0;
  if (!qword_1ECCDD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1E0);
  }

  return result;
}

unint64_t sub_1DD47BBB0()
{
  result = qword_1ECCDD1E8;
  if (!qword_1ECCDD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1E8);
  }

  return result;
}

_BYTE *sub_1DD47BC28(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD47BD08()
{
  result = qword_1ECCDD1F0;
  if (!qword_1ECCDD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1F0);
  }

  return result;
}

unint64_t sub_1DD47BD60()
{
  result = qword_1ECCDD1F8;
  if (!qword_1ECCDD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD1F8);
  }

  return result;
}

unint64_t sub_1DD47BDB8()
{
  result = qword_1ECCDD200;
  if (!qword_1ECCDD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD200);
  }

  return result;
}

unint64_t sub_1DD47BE0C()
{
  result = qword_1ECCDD208;
  if (!qword_1ECCDD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD208);
  }

  return result;
}

unint64_t sub_1DD47BE60()
{
  result = qword_1ECCDD210;
  if (!qword_1ECCDD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD210);
  }

  return result;
}

SiriInference::CrossStreetName::Prefix_optional __swiftcall CrossStreetName.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CrossStreetName.Prefix.rawValue.getter()
{
  result = 28265;
  switch(*v0)
  {
    case 1:
      result = 0x754E746565727473;
      break;
    case 2:
      result = 0x6365737265746E69;
      break;
    case 3:
      result = 1918985582;
      break;
    case 4:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD47BFB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3B0BF8();
}

uint64_t sub_1DD47BFE0@<X0>(uint64_t *a1@<X8>)
{
  result = CrossStreetName.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CrossStreetName.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static CrossStreetName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 5 && (v2 == 5);
    if (v2 != 5 && v3 != 5)
    {

      return sub_1DD3B0BF8();
    }
  }

  return result;
}

uint64_t sub_1DD47C190(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966657270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD47C254(char a1)
{
  if (a1)
  {
    return 0x786966657270;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1DD47C288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD47C190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD47C2B0(uint64_t a1)
{
  v2 = sub_1DD47C6B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD47C2EC(uint64_t a1)
{
  v2 = sub_1DD47C6B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CrossStreetName.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD218, &qword_1DD64ED18);
  v5 = OUTLINED_FUNCTION_0(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47C6B4();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_1DD47C708();
    sub_1DD640C08();
  }

  return (*(v16 + 8))(v10, v4);
}

uint64_t CrossStreetName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD230, &qword_1DD64ED20);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD47C6B4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD47C75C();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD47C6B4()
{
  result = qword_1ECCDD220;
  if (!qword_1ECCDD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD220);
  }

  return result;
}

unint64_t sub_1DD47C708()
{
  result = qword_1ECCDD228;
  if (!qword_1ECCDD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD228);
  }

  return result;
}

unint64_t sub_1DD47C75C()
{
  result = qword_1ECCDD238;
  if (!qword_1ECCDD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD238);
  }

  return result;
}

unint64_t sub_1DD47C7B4()
{
  result = qword_1ECCDD240;
  if (!qword_1ECCDD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD240);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CrossStreetName.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CrossStreetName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD47C9D4()
{
  result = qword_1ECCDD248;
  if (!qword_1ECCDD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD248);
  }

  return result;
}

unint64_t sub_1DD47CA2C()
{
  result = qword_1ECCDD250;
  if (!qword_1ECCDD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD250);
  }

  return result;
}

unint64_t sub_1DD47CA84()
{
  result = qword_1ECCDD258;
  if (!qword_1ECCDD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD258);
  }

  return result;
}

unint64_t sub_1DD47CAD8()
{
  result = qword_1ECCDD260;
  if (!qword_1ECCDD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD260);
  }

  return result;
}

uint64_t sub_1DD47CB2C()
{
  v10 = sub_1DD640478();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DD640438();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DD63FBD8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1DD39638C(0, &qword_1EE166480, 0x1E69E9610);
  sub_1DD63FB98();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1DD47EAB0(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3CBFCC(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD640718();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1DD6404A8();
  qword_1EE1632D0 = result;
  return result;
}

uint64_t DASActivity.description.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

double DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v21 = [objc_opt_self() sharedScheduler];
  *(a9 + 24) = sub_1DD39638C(0, &qword_1EE1601B0, 0x1E698E4B8);
  *(a9 + 32) = &off_1F58B60A8;
  *a9 = v21;
  *(a9 + 40) = a1;
  *(a9 + 48) = a2;
  result = a10 * a11;
  *(a9 + 56) = a10;
  *(a9 + 64) = a10 * a11;
  *(a9 + 72) = a3;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  return result;
}

Swift::Void __swiftcall DASActivity.registerAndSubmit()()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v4 = sub_1DD47CD8C();
  if (qword_1EE1632C8 != -1)
  {
    v4 = OUTLINED_FUNCTION_2_34();
  }

  OUTLINED_FUNCTION_11_23(v4, v5, v6, v7, v8, v9, v10, v11, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0]);
  v12 = swift_allocObject();
  memcpy((v12 + 16), __src, 0x78uLL);
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_7_25();
  v16 = v15(v14);

  if ((v16 & 1) == 0)
  {
    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v38 = sub_1DD63F9F8();
    v39 = __swift_project_value_buffer(v38, qword_1EE16F088);
    OUTLINED_FUNCTION_11_23(v39, v40, v41, v42, v43, v44, v45, v46, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0]);
    v30 = sub_1DD63F9D8();
    v47 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v47))
    {
      OUTLINED_FUNCTION_54();
      v90 = OUTLINED_FUNCTION_5_36();
      *v2 = 136315138;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_8_22();
      sub_1DD47E8F4(__src);
      v48 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v48, v49, v50);
      OUTLINED_FUNCTION_13_20();
      *(v2 + 4) = v75;
      v37 = "DASActivity: register failed for task id=%s";
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  v19 = __swift_project_boxed_opaque_existential_1(v1, v17);
  v20 = sub_1DD47CD8C();
  (*(v18 + 32))(v20);
  OUTLINED_FUNCTION_13_20();
  if (v19)
  {

    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v21 = sub_1DD63F9F8();
    v22 = __swift_project_value_buffer(v21, qword_1EE16F088);
    OUTLINED_FUNCTION_11_23(v22, v23, v24, v25, v26, v27, v28, v29, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0]);
    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v31))
    {
      OUTLINED_FUNCTION_54();
      v90 = OUTLINED_FUNCTION_5_36();
      *v17 = 136315138;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_8_22();
      sub_1DD47E8F4(__src);
      v32 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v32, v33, v34);
      OUTLINED_FUNCTION_13_20();
      *(v17 + 4) = v75;
      v37 = "DASActivity: Reusing existing task id=%s";
LABEL_13:
      OUTLINED_FUNCTION_12_20(&dword_1DD38D000, v35, v36, v37);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();

      return;
    }

LABEL_20:

    sub_1DD47E8F4(__src);
    return;
  }

  sub_1DD39638C(0, &qword_1EE160190, 0x1E698E490);
  sub_1DD47CD8C();
  v51 = sub_1DD47D66C();
  [v51 setPriority_];
  [v51 setRequiresNetworkConnectivity_];
  [v51 setRequiresExternalPower_];
  [v51 setInterval_];
  [v51 setMinDurationBetweenInstances_];
  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v52 = sub_1DD63F9F8();
  v53 = __swift_project_value_buffer(v52, qword_1EE16F088);
  OUTLINED_FUNCTION_11_23(v53, v54, v55, v56, v57, v58, v59, v60, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, __src[0]);
  sub_1DD47D50C(v1, &v75);
  v61 = sub_1DD63F9D8();
  v62 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v62))
  {
    v63 = swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_62();
    v90 = v64;
    *v63 = 136315394;
    v65 = __src[5];
    v66 = __src[6];

    sub_1DD47E8F4(__src);
    v67 = sub_1DD39565C(v65, v66, &v90);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2048;
    v68 = v82;
    sub_1DD47E8F4(&v75);
    *(v63 + 14) = v68;
    _os_log_impl(&dword_1DD38D000, v61, v62, "DASActivity: scheduling %s repeating every %f seconds", v63, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v64);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    sub_1DD47E8F4(&v75);
    sub_1DD47E8F4(__src);
  }

  v69 = *(v1 + 24);
  v70 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, v69);
  (*(v70 + 24))(v51, v69, v70);
}

uint64_t sub_1DD47D568(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &__src[-v5 - 8];
  v7 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_1DD47D50C(v1, __src);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  memcpy(v8 + 4, __src, 0x78uLL);
  v8[19] = a1;
  v9 = a1;
  sub_1DD4B0E18();
}

id sub_1DD47D66C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD63FDA8();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

Swift::Void __swiftcall DASActivity.unregister(cancel:)(Swift::Bool cancel)
{
  v3 = v1;
  if (cancel)
  {
    if (qword_1EE166108 != -1)
    {
      OUTLINED_FUNCTION_0_54();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F088);
    sub_1DD47D50C(v1, v34);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v6))
    {
      OUTLINED_FUNCTION_54();
      v33[0] = OUTLINED_FUNCTION_5_36();
      *v2 = 136315138;
      v7 = v35;
      v8 = v36;

      sub_1DD47E8F4(v34);
      v9 = sub_1DD39565C(v7, v8, v33);

      *(v2 + 4) = v9;
      _os_log_impl(&dword_1DD38D000, v5, v6, "DASActivity: canceling %s", v2, 0xCu);
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD47E8F4(v34);
    }

    sub_1DD47DA1C();
  }

  if (qword_1EE166108 != -1)
  {
    OUTLINED_FUNCTION_0_54();
  }

  v10 = sub_1DD63F9F8();
  v11 = __swift_project_value_buffer(v10, qword_1EE16F088);
  sub_1DD47D50C(v3, v34);
  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640368();
  if (OUTLINED_FUNCTION_9_0(v13))
  {
    v14 = OUTLINED_FUNCTION_54();
    v15 = OUTLINED_FUNCTION_62();
    v33[0] = v15;
    *v14 = 136315138;
    v16 = v35;
    v17 = v36;

    sub_1DD47E8F4(v34);
    v18 = sub_1DD39565C(v16, v17, v33);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v12, v13, "DASActivity: unregistering %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    sub_1DD47E8F4(v34);
  }

  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v20 = sub_1DD47CD8C();
  v21 = (*(v19 + 16))(v20);

  if ((v21 & 1) == 0)
  {
    sub_1DD47D50C(v3, v34);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (OUTLINED_FUNCTION_10_25(v23))
    {
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_5_36();
      *v11 = 136315138;
      OUTLINED_FUNCTION_1_41();
      v33[0] = v24;
      v33[1] = v26;
      v33[2] = v25;
      MEMORY[0x1E12B2260](v35, v36);
      v27 = v33[0];
      sub_1DD47E8F4(v34);
      v28 = OUTLINED_FUNCTION_7_25();
      sub_1DD39565C(v28, v29, v30);
      OUTLINED_FUNCTION_13_20();
      *(v11 + 4) = v27;
      OUTLINED_FUNCTION_12_20(&dword_1DD38D000, v31, v32, "DASActivity: deregister failed for task id=%s");
      OUTLINED_FUNCTION_3_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      sub_1DD47E8F4(v34);
    }
  }
}

void sub_1DD47DA1C()
{
  v1 = v0;
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v3 = sub_1DD47CD8C();
  v4 = (*(v2 + 32))(v3);

  if (v4)
  {

    v5 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = sub_1DD47CD8C();
    (*(v5 + 40))(v6);
  }

  else
  {
    if (qword_1EE166108 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1EE16F088);
    sub_1DD47D50C(v1, v14);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v13 = v11;
      MEMORY[0x1E12B2260](v15, v16);
      sub_1DD47E8F4(v14);
      v12 = sub_1DD39565C(0xD000000000000019, 0x80000001DD66CE50, &v13);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1DD38D000, v8, v9, "DASActivity: No submission to cancel; task id=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E12B3DA0](v11, -1, -1);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    else
    {

      sub_1DD47E8F4(v14);
    }
  }
}

uint64_t sub_1DD47DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v6 = sub_1DD63FB78();
  v5[26] = v6;
  v7 = *(v6 - 8);
  v5[27] = v7;
  v8 = *(v7 + 64) + 15;
  v5[28] = swift_task_alloc();
  v9 = sub_1DD63FBD8();
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();
  v12 = sub_1DD63FB58();
  v5[32] = v12;
  v13 = *(v12 - 8);
  v5[33] = v13;
  v14 = *(v13 + 64) + 15;
  v5[34] = swift_task_alloc();
  v15 = sub_1DD63FC18();
  v5[35] = v15;
  v16 = *(v15 - 8);
  v5[36] = v16;
  v17 = *(v16 + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD47DFE4, 0, 0);
}