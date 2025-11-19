unint64_t sub_22F26E448()
{
  result = qword_27DAB2CE0;
  if (!qword_27DAB2CE0)
  {
    type metadata accessor for PGUpNextDebugInfoBuilder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CE0);
  }

  return result;
}

unint64_t sub_22F26E4C4()
{
  result = qword_27DAB2CE8;
  if (!qword_27DAB2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CE8);
  }

  return result;
}

unint64_t sub_22F26E51C()
{
  result = qword_27DAB2CF0;
  if (!qword_27DAB2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CF0);
  }

  return result;
}

unint64_t sub_22F26E574()
{
  result = qword_27DAB2CF8;
  if (!qword_27DAB2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CF8);
  }

  return result;
}

uint64_t sub_22F26E5D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F770E00;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v1;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v2;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v3;
  *(inited + 80) = sub_22F740E20();
  *(inited + 88) = v4;
  *(inited + 96) = sub_22F740E20();
  *(inited + 104) = v5;
  *(inited + 112) = sub_22F740E20();
  *(inited + 120) = v6;
  *(inited + 128) = sub_22F740E20();
  *(inited + 136) = v7;
  *(inited + 144) = sub_22F740E20();
  *(inited + 152) = v8;
  *(inited + 160) = sub_22F740E20();
  *(inited + 168) = v9;
  *(inited + 176) = sub_22F740E20();
  *(inited + 184) = v10;
  v11 = sub_22F3D9AEC(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  off_2810AB8C0 = v11;
  return result;
}

uint64_t sub_22F26E730(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v135 = a4;
  v146 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
  v8 = *(v141 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v141);
  v11 = &v127 - v10;
  v130 = type metadata accessor for Song();
  v143 = *(v130 - 8);
  v12 = *(v143 + 64);
  MEMORY[0x28223BE20](v130);
  v151 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v133 = (&v127 - v15);
  MEMORY[0x28223BE20](v16);
  v138 = (&v127 - v17);
  MEMORY[0x28223BE20](v18);
  v142 = (&v127 - v19);
  MEMORY[0x28223BE20](v20);
  isUniquelyReferenced_nonNull_native = &v127 - v21;
  MEMORY[0x28223BE20](v23);
  v128 = &v127 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v134 = (&v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v140 = (&v127 - v29);
  MEMORY[0x28223BE20](v30);
  v137 = &v127 - v31;
  MEMORY[0x28223BE20](v32);
  v136 = &v127 - v33;
  if (qword_2810A9B28 != -1)
  {
    goto LABEL_112;
  }

  while (1)
  {
    v34 = qword_2810B4E28;
    *&v35 = CACurrentMediaTime();
    sub_22F1B560C("Sentiment Ranker", 16, 2u, v35, 0, v34, v149);
    v36 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 340);
    v37 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel + 8);
    v139 = v11;
    if (v37)
    {
      v151 = v37;
      v144 = v5;
      v147 = *(a2 + OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel);
      v38 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_configuration + 352);
      v5 = v146 + 56;
      v39 = -1 << *(v146 + 32);
      if (-v39 < 64)
      {
        v40 = ~(-1 << -v39);
      }

      else
      {
        v40 = -1;
      }

      v41 = v40 & *(v146 + 56);
      v127 = -1 << *(v146 + 32);
      a3 = ((63 - v39) >> 6);
      v134 = (v8 + 56);
      v133 = (v8 + 48);

      v42 = 0;
      v8 = 0;
      v43 = MEMORY[0x277D84F98];
      v145 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        while (1)
        {
          v132 = v41;
          v131 = v8;
          if (!v41)
          {
            if (a3 <= v8 + 1)
            {
              v44 = (v8 + 1);
            }

            else
            {
              v44 = a3;
            }

            isUniquelyReferenced_nonNull_native = v44 - 1;
            v45 = v8;
            while (1)
            {
              v8 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                break;
              }

              if (v8 >= a3)
              {
                v50 = v137;
                v51 = v141;
                (*v134)(v137, 1, 1, v141);
                v41 = 0;
                v8 = isUniquelyReferenced_nonNull_native;
                goto LABEL_20;
              }

              a2 = *(v5 + 8 * v8);
              ++v45;
              if (a2)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_103;
          }

          a2 = v41;
LABEL_18:
          v46 = v128;
          sub_22F15CAA0(*(v146 + 48) + *(v143 + 72) * (__clz(__rbit64(a2)) | (v8 << 6)), v128);
          isUniquelyReferenced_nonNull_native = v141;
          v47 = *(v141 + 48);
          *v11 = v42;
          sub_22F15CB04(v46, v11 + v47);
          v48 = __OFADD__(v42++, 1);
          if (v48)
          {
            goto LABEL_104;
          }

          v41 = (a2 - 1) & a2;
          v49 = v11;
          v50 = v137;
          sub_22F1207AC(v49, v137, &qword_27DAB1630, &qword_22F772A70);
          (*v134)(v50, 0, 1, isUniquelyReferenced_nonNull_native);
          v51 = isUniquelyReferenced_nonNull_native;
LABEL_20:
          v52 = v50;
          v11 = v136;
          sub_22F1207AC(v52, v136, &qword_27DAB1628, &qword_22F772A68);
          v53 = (*v133)(v11, 1, v51);
          v54 = v145;
          if (v53 == 1)
          {
            v91 = &v150;
            goto LABEL_96;
          }

          v140 = *v11;
          sub_22F15CB04(v11 + *(v51 + 48), v145);
          v55 = &v54[*(v130 + 72)];
          if ((v55[1] & 1) == 0)
          {
            break;
          }

          v56 = v138;
          sub_22F15CAA0(v54, v138);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v148[0] = v43;
          v57 = v56;
          a2 = v43;
          v58 = sub_22F122A14(v57);
          v60 = v43[2];
          v61 = (v59 & 1) == 0;
          v48 = __OFADD__(v60, v61);
          v62 = v60 + v61;
          if (v48)
          {
            goto LABEL_105;
          }

          v11 = v59;
          if (v43[3] < v62)
          {
            sub_22F125F5C(v62, isUniquelyReferenced_nonNull_native);
            a2 = v148[0];
            v58 = sub_22F122A14(v138);
            if ((v11 & 1) != (v63 & 1))
            {
              goto LABEL_113;
            }

LABEL_44:
            v43 = v148[0];
            if (v11)
            {
              goto LABEL_7;
            }

            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          a2 = v148;
          v90 = v58;
          sub_22F134678();
          v58 = v90;
          v43 = v148[0];
          if (v11)
          {
LABEL_7:
            *(v43[7] + 4 * v58) = v36;
            sub_22F15CBD8(v138);
            sub_22F15CBD8(v145);
            goto LABEL_8;
          }

LABEL_45:
          v43[(v58 >> 6) + 8] |= 1 << v58;
          a2 = v58;
          isUniquelyReferenced_nonNull_native = v138;
          sub_22F15CAA0(v138, v43[6] + *(v143 + 72) * v58);
          *(v43[7] + 4 * a2) = v36;
          sub_22F15CBD8(isUniquelyReferenced_nonNull_native);
          sub_22F15CBD8(v145);
          v84 = v43[2];
          v48 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v48)
          {
            goto LABEL_110;
          }

          v43[2] = v85;
LABEL_8:
          v11 = v139;
        }

        v64 = *v55;
        sub_22F15CAA0(v54, v142);
        if (qword_2810AB8B8 != -1)
        {
          swift_once();
        }

        v65 = off_2810AB8C0;
        v66 = *(off_2810AB8C0 + 2);
        v129 = v41;
        if (v66)
        {
          v67 = *(off_2810AB8C0 + 5);
          sub_22F742170();
          sub_22F740D60();
          v68 = sub_22F7421D0();
          v69 = -1 << v65[32];
          v11 = v68 & ~v69;
          if ((*&v65[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11))
          {
            break;
          }
        }

LABEL_37:
        v76 = 1.0;
        if (v38 < v64)
        {
          goto LABEL_38;
        }

LABEL_39:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = v43;
        a2 = v43;
        v78 = sub_22F122A14(v142);
        v79 = v43[2];
        v80 = (v77 & 1) == 0;
        v81 = v79 + v80;
        if (__OFADD__(v79, v80))
        {
          goto LABEL_106;
        }

        v11 = v77;
        if (v43[3] >= v81)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F134678();
          }
        }

        else
        {
          sub_22F125F5C(v81, isUniquelyReferenced_nonNull_native);
          v82 = sub_22F122A14(v142);
          if ((v11 & 1) != (v83 & 1))
          {
            goto LABEL_113;
          }

          v78 = v82;
        }

        isUniquelyReferenced_nonNull_native = v145;
        v43 = v148[0];
        if (v11)
        {
          *(*(v148[0] + 56) + 4 * v78) = v76;
          sub_22F15CBD8(v142);
        }

        else
        {
          *(v148[0] + 8 * (v78 >> 6) + 64) |= 1 << v78;
          a2 = v142;
          sub_22F15CAA0(v142, v43[6] + *(v143 + 72) * v78);
          *(v43[7] + 4 * v78) = v76;
          sub_22F15CBD8(a2);
          v86 = v43[2];
          v48 = __OFADD__(v86, 1);
          v87 = v86 + 1;
          if (v48)
          {
            goto LABEL_109;
          }

          v43[2] = v87;
        }

        v88 = *(v146 + 16);
        v89 = v144;
        sub_22F741680();
        a2 = v89;
        sub_22F15CBD8(isUniquelyReferenced_nonNull_native);
        v11 = v139;
        v144 = v89;
        v41 = v129;
        if (v89)
        {

          sub_22F0FF590();

          return v43;
        }
      }

      v70 = ~v69;
      v71 = v151;
      v72 = v147;
      while (1)
      {
        v73 = (*(v65 + 6) + 16 * v11);
        if (*v73 == v72 && v71 == v73[1])
        {
          break;
        }

        v75 = sub_22F742040();
        v72 = v147;
        v71 = v151;
        if (v75)
        {
          break;
        }

        v11 = (v11 + 1) & v70;
        if (((*&v65[((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v11) & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      v76 = 1.0;
      if (v38 < v64)
      {
        goto LABEL_39;
      }

LABEL_38:
      v76 = 0.0;
      goto LABEL_39;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v92 = sub_22F740B90();
    __swift_project_value_buffer(v92, qword_2810B4D90);
    v93 = sub_22F740B70();
    v94 = sub_22F7415D0();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      *(v95 + 4) = v36;
      _os_log_impl(&dword_22F0FC000, v93, v94, "[MemoriesMusic] SentimentRanker producing default scores of %f because the graph is not available.", v95, 0xCu);
      MEMORY[0x2319033A0](v95, -1, -1);
    }

    v96 = *(v146 + 56);
    v136 = v146 + 56;
    v97 = -1 << *(v146 + 32);
    if (-v97 < 64)
    {
      v98 = ~(-1 << -v97);
    }

    else
    {
      v98 = -1;
    }

    a3 = (v98 & v96);
    v132 = -1 << *(v146 + 32);
    v11 = (63 - v97) >> 6;
    v142 = (v8 + 56);
    v145 = (v8 + 48);

    v147 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    v43 = MEMORY[0x277D84F98];
LABEL_71:
    v138 = a3;
    v137 = isUniquelyReferenced_nonNull_native;
    if (a3)
    {
      v101 = a3;
LABEL_80:
      v104 = v133;
      sub_22F15CAA0(*(v146 + 48) + *(v143 + 72) * (__clz(__rbit64(v101)) | (isUniquelyReferenced_nonNull_native << 6)), v133);
      a2 = v141;
      v105 = *(v141 + 48);
      v8 = v139;
      v106 = v147;
      *v139 = v147;
      sub_22F15CB04(v104, v8 + v105);
      v48 = __OFADD__(v106, 1);
      a3 = (v106 + 1);
      v147 = a3;
      if (!v48)
      {
        v144 = v5;
        a3 = ((v101 - 1) & v101);
        v107 = v8;
        v108 = v134;
        sub_22F1207AC(v107, v134, &qword_27DAB1630, &qword_22F772A70);
        (*v142)(v108, 0, 1, a2);
        goto LABEL_82;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v102 = v11 <= isUniquelyReferenced_nonNull_native + 1 ? isUniquelyReferenced_nonNull_native + 1 : v11;
    a2 = v102 - 1;
    v103 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = v103 + 1;
      if (__OFADD__(v103, 1))
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
        __break(1u);
        goto LABEL_108;
      }

      if (isUniquelyReferenced_nonNull_native >= v11)
      {
        break;
      }

      v101 = *(v136 + 8 * isUniquelyReferenced_nonNull_native);
      ++v103;
      if (v101)
      {
        goto LABEL_80;
      }
    }

    v144 = v5;
    v108 = v134;
    v123 = v141;
    (*v142)(v134, 1, 1, v141);
    a3 = 0;
    isUniquelyReferenced_nonNull_native = a2;
    a2 = v123;
LABEL_82:
    v109 = v140;
    sub_22F1207AC(v108, v140, &qword_27DAB1628, &qword_22F772A68);
    if ((*v145)(v109, 1, a2) == 1)
    {
      break;
    }

    v8 = *v109;
    v110 = v109 + *(a2 + 48);
    v111 = v151;
    sub_22F15CB04(v110, v151);
    v5 = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = v43;
    a2 = v43;
    v113 = sub_22F122A14(v111);
    v114 = v43[2];
    v115 = (v112 & 1) == 0;
    v116 = v114 + v115;
    if (__OFADD__(v114, v115))
    {
      goto LABEL_107;
    }

    v117 = v112;
    if (v43[3] < v116)
    {
      sub_22F125F5C(v116, v5);
      a2 = v148[0];
      v118 = sub_22F122A14(v151);
      if ((v117 & 1) != (v119 & 1))
      {
LABEL_113:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v113 = v118;
      v43 = v148[0];
      if ((v117 & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_69:
      *(v43[7] + 4 * v113) = v36;
      sub_22F15CBD8(v151);
LABEL_70:
      v99 = *(v146 + 16);
      v100 = v144;
      sub_22F741680();
      v5 = v100;
      if (v100)
      {
        sub_22F0FF590();

LABEL_100:

        return v43;
      }

      goto LABEL_71;
    }

    if (v5)
    {
      v43 = v148[0];
      if ((v112 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_69;
    }

    a2 = v148;
    sub_22F134678();
    v43 = v148[0];
    if (v117)
    {
      goto LABEL_69;
    }

LABEL_90:
    v43[(v113 >> 6) + 8] |= 1 << v113;
    v120 = v151;
    sub_22F15CAA0(v151, v43[6] + *(v143 + 72) * v113);
    *(v43[7] + 4 * v113) = v36;
    sub_22F15CBD8(v120);
    v121 = v43[2];
    v48 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (!v48)
    {
      v43[2] = v122;
      goto LABEL_70;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    swift_once();
  }

  v91 = &v151;
LABEL_96:
  v124 = *(v91 - 32);
  sub_22F0FF590();
  v125 = v144;
  sub_22F1B2BBC(0);
  sub_22F7416A0();
  if (v125)
  {

    goto LABEL_100;
  }

  return v43;
}

id MusicSourceCacheManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicSourceCacheManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicSourceCacheManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F26F9C0(void *a1, void *a2)
{
  v5 = sub_22F7416E0();
  v7 = v6;
  v17 = v8;
  v10 = v9;
  v11 = [a1 librarySpecificFetchOptions];
  sub_22F26FBF8();
  v12 = [swift_getObjCClassFromMetadata() fetchMomentsWithOptions_];
  sub_22F7416A0();
  if (v2)
  {
  }

  else
  {
    v14 = a2;
    sub_22F3D9D90(v12, a1);
    if (qword_2810A9B40 != -1)
    {
      swift_once();
    }

    v13 = qword_2810B4E38;
    sub_22F1B560C("MusicForTimePruneSourcesPerformance", 35, 2u, 0, 1, qword_2810B4E38, v15);
    sub_22F1B2BBC(0);

    sub_22F1B560C("MusicForTimePruneSourcesPerformance", 35, 2u, 0, 1, v13, v16);
    sub_22F1B2BBC(0);

    sub_22F3B078C(v12, a1, v14);
  }
}

unint64_t sub_22F26FBF8()
{
  result = qword_2810A8EA8;
  if (!qword_2810A8EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EA8);
  }

  return result;
}

uint64_t sub_22F26FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a2 + OBJC_IVAR___PGMusicCuratorContext_allowExplicitMusicContent) & 1) != 0 || a3 == 0x726F46636973756DLL && a4 == 0xEE00747369747241)
  {
    return 1;
  }

  if (sub_22F742040())
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a1 + 72) ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_22F26FD00(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22F7414D0();
  if (!v26)
  {
    return sub_22F7411F0();
  }

  v48 = v26;
  v52 = sub_22F741C10();
  v39 = sub_22F741C20();
  sub_22F741BC0();
  result = sub_22F7414C0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22F741510();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22F741C00();
      result = sub_22F7414E0();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall ImportantEntitiesEngineParameters.init()(PhotosGraph::ImportantEntitiesEngineParameters *__return_ptr retstr)
{
  *&retstr->recencyThresholdTimeIntervalFromLatestMomentDateSeconds = xmmword_22F781420;
  retstr->minimumNumberOfMoments = 10;
  *&retstr->minimumImportantLocationPresenceRatioInLifespan = xmmword_22F781430;
  retstr->nonOutlierEntityMinimumImportantLocationPresenceRatioProportion = 0.0;
}

unint64_t static ImportantEntitiesEngine.inferImportantEntities(inContainer:withParameters:progressBlock:reportToCoreAnalytics:)(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  v6 = v5;
  v12 = v6[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v835 = sub_22F741860();
  v785 = *(v835 - 8);
  v13 = *(v785 + 64);
  MEMORY[0x28223BE20](v835);
  v834 = &v760 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v833 = &v760 - v16;
  v841 = sub_22F73F090();
  v815 = *(v841 - 8);
  v17 = v815[8];
  MEMORY[0x28223BE20](v841);
  v801 = &v760 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v826 = &v760 - v20;
  MEMORY[0x28223BE20](v21);
  v838 = &v760 - v22;
  MEMORY[0x28223BE20](v23);
  v784 = &v760 - v24;
  MEMORY[0x28223BE20](v25);
  v793 = &v760 - v26;
  MEMORY[0x28223BE20](v27);
  v792 = &v760 - v28;
  MEMORY[0x28223BE20](v29);
  v798 = (&v760 - v30);
  MEMORY[0x28223BE20](v31);
  v813 = (&v760 - v32);
  v837 = sub_22F73F690();
  v791 = *(v837 - 8);
  v33 = *(v791 + 64);
  MEMORY[0x28223BE20](v837);
  v789 = &v760 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v788 = &v760 - v36;
  MEMORY[0x28223BE20](v37);
  v800 = &v760 - v38;
  MEMORY[0x28223BE20](v39);
  v799 = &v760 - v40;
  MEMORY[0x28223BE20](v41);
  v812 = &v760 - v42;
  MEMORY[0x28223BE20](v43);
  v811 = &v760 - v44;
  MEMORY[0x28223BE20](v45);
  v825 = &v760 - v46;
  MEMORY[0x28223BE20](v47);
  v824 = &v760 - v48;
  MEMORY[0x28223BE20](v49);
  v810 = &v760 - v50;
  MEMORY[0x28223BE20](v51);
  v827 = &v760 - v52;
  MEMORY[0x28223BE20](v53);
  v828 = &v760 - v54;
  v55 = v6[12];
  v832 = sub_22F741860();
  v56 = *(v832 - 1);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v832);
  v822 = &v760 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v839 = &v760 - v60;
  v858 = v55;
  v61 = *(v55 - 1);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v797 = &v760 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v831 = &v760 - v66;
  MEMORY[0x28223BE20](v67);
  v840 = &v760 - v68;
  v864 = v12;
  v851 = *(v12 - 8);
  v69 = *(v851 + 64);
  MEMORY[0x28223BE20](v70);
  v808 = &v760 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v823 = &v760 - v73;
  MEMORY[0x28223BE20](v74);
  v802 = &v760 - v75;
  MEMORY[0x28223BE20](v76);
  v820 = &v760 - v77;
  MEMORY[0x28223BE20](v78);
  v816 = &v760 - v79;
  MEMORY[0x28223BE20](v80);
  v842 = &v760 - v81;
  MEMORY[0x28223BE20](v82);
  v821 = &v760 - v83;
  MEMORY[0x28223BE20](v84);
  v809 = (&v760 - v85);
  MEMORY[0x28223BE20](v86);
  v783 = &v760 - v87;
  MEMORY[0x28223BE20](v88);
  v782 = &v760 - v89;
  MEMORY[0x28223BE20](v90);
  v786 = &v760 - v91;
  MEMORY[0x28223BE20](v92);
  v787 = &v760 - v93;
  MEMORY[0x28223BE20](v94);
  v796 = &v760 - v95;
  MEMORY[0x28223BE20](v96);
  v850 = &v760 - v97;
  MEMORY[0x28223BE20](v98);
  v860 = &v760 - v99;
  v780 = v100;
  MEMORY[0x28223BE20](v101);
  v859 = (&v760 - v102);
  v803 = sub_22F740B90();
  v804 = *(v803 - 8);
  v103 = *(v804 + 64);
  MEMORY[0x28223BE20](v803);
  v105 = &v760 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *a2;
  v107 = *(a2 + 8);
  v852 = *(a2 + 16);
  v109 = *(a2 + 24);
  v108 = *(a2 + 32);
  v110 = *(a2 + 40);
  v111 = swift_slowAlloc();
  *v111 = 0;
  v817 = a4;
  v818 = a3;
  a3(0.0);
  v805 = v111;
  if (*v111 == 1)
  {
    v112 = MEMORY[0x277D84F90];

    return sub_22F14E740(v112);
  }

  v863 = v56;
  v114 = v61;
  sub_22F740B80();
  v115 = v6[13];
  v116 = *(v115 + 6);
  v781 = v6;
  v117 = v6[10];
  v857 = v115;
  v118 = v116(v117);
  v119 = sub_22F741230();
  v120 = v105;
  if (!v119)
  {

    v126 = sub_22F740B70();
    v127 = sub_22F7415D0();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_22F0FC000, v126, v127, "No entities found in the container, returning...", v128, 2u);
      MEMORY[0x2319033A0](v128, -1, -1);
    }

    v129 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v804 + 8))(v105, v803);
    return v129;
  }

  v121 = v119;
  v764 = a5;

  v122 = sub_22F740B70();
  v123 = sub_22F7415D0();
  v124 = os_log_type_enabled(v122, v123);
  v853 = a1;
  v861 = v117;
  if (v124)
  {
    v125 = swift_slowAlloc();
    *v125 = 134217984;
    *(v125 + 4) = sub_22F741230();

    _os_log_impl(&dword_22F0FC000, v122, v123, "There are %ld potential entities.", v125, 0xCu);
    v117 = v861;
    MEMORY[0x2319033A0](v125, -1, -1);
  }

  else
  {
  }

  v130 = v857;
  v775 = (*(v857 + 7))(v117, v857);
  v778 = sub_22F276A8C(v775);
  v131 = v852 / 2;
  if (v852 / 2 <= 1)
  {
    v131 = 1;
  }

  v769 = v131;
  v132 = sub_22F7411F0();
  v869 = v132;
  v133 = MEMORY[0x277D84F90];
  v770 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v868 = v770;
  v829 = sub_22F14E214(v133);

  v134 = sub_22F741230();
  v862 = v120;
  v849 = v118;
  if (v134)
  {
    v136 = 0;
    v848 = 0;
    *&v845 = *(v130 + 8);
    v761 = 0.3 / v121;
    v856 = (v851 + 16);
    v844 = (v851 + 32);
    v830 = (v114 + 48);
    v807 = (v114 + 32);
    v846 = (v130 + 64);
    v779 = v130 + 40;
    v790 = (v791 + 8);
    v768 = (v815 + 2);
    v774 = (v815 + 1);
    *&v806 = v114 + 8;
    v847 = v851 + 8;
    v763 = v107 / 86400.0;
    v773 = (v114 + 16);
    v819 = (v863 + 1);
    v863 = MEMORY[0x277D84F98];
    v137 = 0.0;
    *&v135 = 134218498;
    v814 = v135;
    *&v135 = 136315138;
    v795 = v135;
    *&v135 = 134219010;
    v762 = v135;
    *&v135 = 136315394;
    v760 = v135;
    v767 = v106 / 86400.0;
    v138 = v858;
    v139 = v860;
    while (1)
    {
      v140 = sub_22F741210();
      sub_22F7411B0();
      if (v140)
      {
        v141 = *(v851 + 16);
        v142 = (v141)(v859, v118 + ((*(v851 + 80) + 32) & ~*(v851 + 80)) + *(v851 + 72) * v136, v864);
      }

      else
      {
        v410 = sub_22F741B30();
        if (v780 != 8)
        {
          goto LABEL_305;
        }

        v865 = v410;
        v141 = *v856;
        (*v856)(v859, &v865, v864);
        v142 = swift_unknownObjectRelease();
      }

      v143 = v850;
      if (__OFADD__(v136, 1))
      {
        __break(1u);
LABEL_282:
        v757 = v142;

        v129 = sub_22F14E740(MEMORY[0x277D84F90]);
        (*v830)(v757, v841);
        (*v860)(v130, v864);
        (*(v804 + 8))(v120, v803);

        return v129;
      }

      v855 = v136 + 1;
      v854 = v136;
      (*v844)(v139, v859, v864);
      v144 = v861;
      v145 = (v845)(v139, v861, v130);
      v146 = sub_22F741230();
      if (v146 < v852)
      {
        break;
      }

      v843 = v141;
      v865 = v145;
      MEMORY[0x28223BE20](v146);
      *(&v760 - 4) = v144;
      v161 = v864;
      *(&v760 - 3) = v864;
      *(&v760 - 2) = v138;
      *(&v760 - 1) = v130;
      sub_22F741280();
      swift_getWitnessTable();
      v162 = v138;
      v163 = v848;
      v164 = sub_22F7410A0();
      v848 = v163;
      v865 = v164;
      swift_getWitnessTable();
      v165 = v839;
      sub_22F7414F0();
      v166 = *v830;
      if ((*v830)(v165, 1, v162) == 1)
      {

        (*v819)(v165, v832);

        v167 = v821;
        v843(v821, v860, v161);
        v168 = sub_22F740B70();
        v169 = sub_22F7415E0();
        if (os_log_type_enabled(v168, v169))
        {
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v865 = v171;
          *v170 = v795;
          v172 = v864;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v174 = (*(AssociatedConformanceWitness + 8))(v172, AssociatedConformanceWitness);
          v175 = v167;
          v176 = v174;
          v178 = v177;
          v179 = *v847;
          (*v847)(v175, v172);
          v180 = sub_22F145F20(v176, v178, &v865);

          *(v170 + 4) = v180;
          _os_log_impl(&dword_22F0FC000, v168, v169, "Unable to find first moment for entity with uuid %s", v170, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v171);
          MEMORY[0x2319033A0](v171, -1, -1);
          MEMORY[0x2319033A0](v170, -1, -1);
        }

        else
        {

          v179 = *v847;
          (*v847)(v167, v864);
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        }

        v215 = v863;
        v216 = (*(AssociatedConformanceWitness + 8))(v864, AssociatedConformanceWitness);
        v218 = v217;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v865 = v215;
        v220 = sub_22F1229E8(v216, v218);
        v222 = *(v215 + 16);
        v223 = (v221 & 1) == 0;
        v189 = __OFADD__(v222, v223);
        v224 = v222 + v223;
        if (v189)
        {
          goto LABEL_287;
        }

        v225 = v221;
        if (*(v215 + 24) >= v224)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v412 = v220;
            sub_22F134340();
            v220 = v412;
          }
        }

        else
        {
          sub_22F1259D0(v224, isUniquelyReferenced_nonNull_native);
          v220 = sub_22F1229E8(v216, v218);
          if ((v225 & 1) != (v226 & 1))
          {
            goto LABEL_307;
          }
        }

        v139 = v860;
        if (v225)
        {
          v262 = v220;

          v863 = v865;
          *(v865[7] + v262) = 3;
          (v179)(v139, v864);
          goto LABEL_54;
        }

        v211 = v865;
        v865[(v220 >> 6) + 8] |= 1 << v220;
        v263 = (v211[6] + 16 * v220);
        *v263 = v216;
        v263[1] = v218;
        *(v211[7] + v220) = 3;
        (v179)(v139, v864);
        v264 = v211[2];
        v189 = __OFADD__(v264, 1);
        v214 = v264 + 1;
        if (v189)
        {
          goto LABEL_292;
        }

LABEL_53:
        v863 = v211;
        v211[2] = v214;
        goto LABEL_54;
      }

      v193 = *v807;
      v194 = v858;
      (*v807)(v840, v165, v858);
      v865 = v164;
      swift_getWitnessTable();
      v195 = v822;
      sub_22F740D90();
      if ((v166)(v195, 1, v194) == 1)
      {

        (*v819)(v195, v832);

        v196 = v809;
        v843(v809, v860, v864);
        v197 = sub_22F740B70();
        v198 = sub_22F7415E0();
        if (os_log_type_enabled(v197, v198))
        {
          v199 = swift_slowAlloc();
          v200 = swift_slowAlloc();
          v865 = v200;
          *v199 = v795;
          v201 = v864;
          v202 = swift_getAssociatedConformanceWitness();
          v203 = (*(v202 + 8))(v201, v202);
          v204 = v196;
          v205 = v203;
          v207 = v206;
          v208 = *v847;
          (*v847)(v204, v201);
          v209 = sub_22F145F20(v205, v207, &v865);

          *(v199 + 4) = v209;
          _os_log_impl(&dword_22F0FC000, v197, v198, "Unable to find last moment for entity with uuid %s", v199, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v200);
          MEMORY[0x2319033A0](v200, -1, -1);
          MEMORY[0x2319033A0](v199, -1, -1);
        }

        else
        {

          v208 = *v847;
          (*v847)(v196, v864);
          v202 = swift_getAssociatedConformanceWitness();
        }

        v266 = v863;
        v267 = (*(v202 + 8))(v864, v202);
        v269 = v268;
        v270 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v266;
        v271 = sub_22F1229E8(v267, v269);
        v273 = *(v266 + 16);
        v274 = (v272 & 1) == 0;
        v189 = __OFADD__(v273, v274);
        v275 = v273 + v274;
        if (v189)
        {
          goto LABEL_290;
        }

        v276 = v272;
        if (*(v266 + 24) >= v275)
        {
          if ((v270 & 1) == 0)
          {
            v413 = v271;
            sub_22F134340();
            v271 = v413;
          }
        }

        else
        {
          sub_22F1259D0(v275, v270);
          v271 = sub_22F1229E8(v267, v269);
          if ((v276 & 1) != (v277 & 1))
          {
            goto LABEL_307;
          }
        }

        v139 = v860;
        if (v276)
        {
          v326 = v271;

          v863 = v865;
          *(v865[7] + v326) = 3;
        }

        else
        {
          v327 = v865;
          v865[(v271 >> 6) + 8] |= 1 << v271;
          v328 = (v327[6] + 16 * v271);
          *v328 = v267;
          v328[1] = v269;
          *(v327[7] + v271) = 3;
          v329 = v327[2];
          v189 = __OFADD__(v329, 1);
          v330 = v329 + 1;
          if (v189)
          {
            goto LABEL_297;
          }

          v863 = v327;
          v327[2] = v330;
        }

        v138 = v858;
        (*v806)(v840, v858);
        (v208)(v139, v864);
        v120 = v862;
        goto LABEL_55;
      }

      v227 = v858;
      v193(v831, v195, v858);

      v228 = v857;
      v229 = v861;
      v230 = swift_getAssociatedConformanceWitness();
      v232 = v230 + 8;
      v231 = *(v230 + 8);
      v233 = v828;
      v794 = v230;
      (v231)(v227, v230);
      v234 = v810;
      (*(v228 + 5))(v229, v228);
      v235 = v827;
      sub_22F73F5E0();
      v236 = *v790;
      v237 = v837;
      (*v790)(v234, v837);
      LOBYTE(v228) = sub_22F73F5D0();
      v236(v235, v237);
      v236(v233, v237);
      if (v228)
      {
        v771 = v231;
        v772 = v232;

        v238 = v796;
        v843(v796, v860, v864);
        v239 = v797;
        (*v773)(v797, v831, v858);
        v240 = sub_22F740B70();
        v241 = sub_22F7415D0();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v776 = v236;
          v243 = v242;
          v766 = swift_slowAlloc();
          v865 = v766;
          *v243 = v814;
          *(v243 + 4) = v767;
          *(v243 + 12) = 2080;
          v244 = v857;
          v245 = swift_getAssociatedConformanceWitness();
          v246 = (*(v245 + 8))(v864, v245);
          LODWORD(v765) = v241;
          v247 = v246;
          v249 = v248;
          v250 = *v847;
          v777 = (v847 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v843 = v250;
          (v250)(v238, v864);
          v251 = sub_22F145F20(v247, v249, &v865);

          *(v243 + 14) = v251;
          *(v243 + 22) = 2080;
          v252 = v828;
          v253 = v858;
          (v771)(v858, v794);
          v254 = *v806;
          (*v806)(v239, v253);
          sub_22F1662C8(&qword_2810AC6F8);
          v255 = v837;
          v256 = sub_22F742010();
          v258 = v257;
          v259 = v252;
          v130 = v244;
          v776(v259, v255);
          v260 = sub_22F145F20(v256, v258, &v865);

          *(v243 + 24) = v260;
          _os_log_impl(&dword_22F0FC000, v240, v765, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v243, 0x20u);
          v261 = v766;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v261, -1, -1);
          MEMORY[0x2319033A0](v243, -1, -1);
        }

        else
        {
          v254 = *v806;
          (*v806)(v239, v858);

          v331 = *v847;
          v777 = (v847 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v843 = v331;
          (v331)(v238, v864);
          v130 = v857;
          v245 = swift_getAssociatedConformanceWitness();
        }

        v332 = v860;
        v333 = v864;
        v334 = (*(v245 + 8))(v864, v245);
        v336 = v335;
        v337 = v863;
        v338 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v337;
        sub_22F1302A0(1, v334, v336, v338);

        v138 = v858;
        v254(v831, v858);
        v254(v840, v138);
        v139 = v332;
        (v843)(v332, v333);
        v863 = v865;
        v120 = v862;
      }

      else
      {
        v278 = v858;
        v279 = v794;
        (v231)(v858, v794);
        (v231)(v278, v279);
        v280 = v813;
        sub_22F73F040();
        sub_22F73F080();
        v281 = v843;
        if (v282 >= v107)
        {
          v339 = sub_22F276A8C(v145);

          v120 = v862;
          sub_22F2770FC(v778, v339, v769, v862);
          v341 = v340;

          v130 = v857;
          v139 = v860;
          if (v341 <= 1.0)
          {
            if (v341 >= v109)
            {
              v389 = v864;
              v390 = swift_getAssociatedConformanceWitness();
              v391 = *(v390 + 8);
              v794 = v391(v389, v390);
              v393 = v392;
              v394 = v784;
              v149 = v841;
              (*v768)(v784, v813, v841);
              v395 = swift_isUniquelyReferenced_nonNull_native();
              v865 = v868;
              sub_22F130088(v394, v794, v393, v395);

              v770 = v865;
              v868 = v865;
              v396 = v391(v389, v390);
              v139 = v860;
              v397 = v396;
              v399 = v398;
              v400 = v829;
              v401 = swift_isUniquelyReferenced_nonNull_native();
              v865 = v400;
              sub_22F12FF10(v397, v399, v401, v341);

              v829 = v865;
              (v281)(v783, v139, v389);
              sub_22F741280();
              sub_22F741240();
              v137 = v761 + v137;
              v402 = v805;
              (v818)(v805, v137);
              if (*v402 == 1)
              {
                goto LABEL_284;
              }

              (*v774)(v813, v149);
              v403 = *v806;
              v138 = v858;
              (*v806)(v831, v858);
              v403(v840, v138);
              (*v847)(v139, v864);
              v130 = v857;
              v118 = v849;
              v265 = v854;
              goto LABEL_57;
            }

            v363 = v782;
            (v281)(v782, v860, v864);
            v364 = sub_22F740B70();
            v365 = sub_22F7415D0();
            v366 = os_log_type_enabled(v364, v365);
            v367 = v847;
            v368 = (v847 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            if (v366)
            {
              v369 = swift_slowAlloc();
              v370 = swift_slowAlloc();
              v865 = v370;
              *v369 = v814;
              *(v369 + 4) = v109;
              *(v369 + 12) = 2080;
              v843 = v368;
              v371 = v857;
              v372 = v864;
              v373 = swift_getAssociatedConformanceWitness();
              v374 = (*(v373 + 8))(v372, v373);
              v375 = v363;
              v376 = v374;
              v378 = v377;
              v379 = *v847;
              (*v847)(v375, v372);
              v380 = sub_22F145F20(v376, v378, &v865);

              *(v369 + 14) = v380;
              *(v369 + 22) = 2048;
              *(v369 + 24) = v341;
              v381 = v365;
              v130 = v371;
              _os_log_impl(&dword_22F0FC000, v364, v381, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v369, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v370);
              MEMORY[0x2319033A0](v370, -1, -1);
              v382 = v369;
              v139 = v860;
              MEMORY[0x2319033A0](v382, -1, -1);
            }

            else
            {

              v372 = v864;
              v379 = *v367;
              (*v367)(v363, v864);
              v130 = v857;
              v373 = swift_getAssociatedConformanceWitness();
            }

            v404 = (*(v373 + 8))(v372, v373);
            v406 = v405;
            v407 = v863;
            v408 = swift_isUniquelyReferenced_nonNull_native();
            v865 = v407;
            sub_22F1302A0(5, v404, v406, v408);

            (*v774)(v813, v841);
            v409 = *v806;
            v138 = v858;
            (*v806)(v831, v858);
            v409(v840, v138);
            (v379)(v139, v372);
          }

          else
          {
            v342 = v786;
            (v281)(v786, v860, v864);
            v343 = sub_22F740B70();
            v344 = sub_22F7415E0();
            if (os_log_type_enabled(v343, v344))
            {
              v345 = swift_slowAlloc();
              v346 = swift_slowAlloc();
              v865 = v346;
              *v345 = v760;
              v347 = v864;
              v348 = swift_getAssociatedConformanceWitness();
              v349 = (*(v348 + 8))(v347, v348);
              v350 = v342;
              v351 = v349;
              v353 = v352;
              v354 = *v847;
              (*v847)(v350, v347);
              v355 = sub_22F145F20(v351, v353, &v865);

              *(v345 + 4) = v355;
              *(v345 + 12) = 2048;
              *(v345 + 14) = v341;
              _os_log_impl(&dword_22F0FC000, v343, v344, "Entity %s has invalid location presence %f!", v345, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v346);
              MEMORY[0x2319033A0](v346, -1, -1);
              v356 = v345;
              v130 = v857;
              MEMORY[0x2319033A0](v356, -1, -1);
            }

            else
            {

              v354 = *v847;
              v347 = v864;
              (*v847)(v342, v864);
              v348 = swift_getAssociatedConformanceWitness();
            }

            v139 = v860;
            v383 = (*(v348 + 8))(v347, v348);
            v385 = v384;
            v386 = v863;
            v387 = swift_isUniquelyReferenced_nonNull_native();
            v865 = v386;
            sub_22F1302A0(7, v383, v385, v387);

            (*v774)(v813, v841);
            v388 = *v806;
            v138 = v858;
            (*v806)(v831, v858);
            v388(v840, v138);
            (v354)(v139, v347);
          }
        }

        else
        {

          v283 = v787;
          (v281)(v787, v860, v864);
          v284 = *v768;
          v285 = v841;
          (*v768)(v798, v280, v841);
          v286 = v792;
          v284(v792, v280, v285);
          v287 = v793;
          v284(v793, v280, v285);
          v288 = sub_22F740B70();
          v289 = sub_22F7415D0();
          v290 = os_log_type_enabled(v288, v289);
          v291 = v774;
          v843 = (v774 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v130 = v857;
          if (v290)
          {
            v292 = swift_slowAlloc();
            v777 = swift_slowAlloc();
            v865 = v777;
            *v292 = v762;
            *(v292 + 4) = v763;
            *(v292 + 12) = 2080;
            v776 = v236;
            v293 = v864;
            v772 = swift_getAssociatedConformanceWitness();
            v294 = *(v772 + 8);
            LODWORD(v766) = v289;
            v295 = v294(v293, v772);
            v765 = v288;
            v296 = v295;
            v298 = v297;
            v771 = *v847;
            v794 = v847 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            (v771)(v283, v293);
            v299 = sub_22F145F20(v296, v298, &v865);

            *(v292 + 14) = v299;
            *(v292 + 22) = 2080;
            v300 = v828;
            v301 = v798;
            sub_22F73F060();
            sub_22F1662C8(&qword_2810AC6F8);
            v302 = v837;
            v303 = sub_22F742010();
            v305 = v304;
            v776(v300, v302);
            v306 = *v291;
            v307 = v301;
            v308 = v841;
            (*v291)(v307, v841);
            v309 = sub_22F145F20(v303, v305, &v865);
            v310 = v308;

            *(v292 + 24) = v309;
            *(v292 + 32) = 2080;
            v311 = v792;
            sub_22F73F030();
            v312 = sub_22F742010();
            v314 = v313;
            v315 = v300;
            v130 = v857;
            v776(v315, v302);
            v306(v311, v310);
            v316 = sub_22F145F20(v312, v314, &v865);

            *(v292 + 34) = v316;
            *(v292 + 42) = 2048;
            v317 = v793;
            sub_22F73F080();
            v319 = v318;
            v306(v317, v310);
            v320 = v864;
            *(v292 + 44) = v319 / 86400.0;
            v321 = v765;
            _os_log_impl(&dword_22F0FC000, v765, v766, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v292, 0x34u);
            v322 = v777;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v322, -1, -1);
            v323 = v292;
            v324 = v771;
            MEMORY[0x2319033A0](v323, -1, -1);

            v325 = v772;
          }

          else
          {

            v306 = *v291;
            (*v291)(v287, v285);
            v306(v286, v285);
            v306(v798, v285);
            v324 = *v847;
            v320 = v864;
            v310 = v285;
            v794 = v847 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            (v324)(v283, v864);
            v325 = swift_getAssociatedConformanceWitness();
          }

          v139 = v860;
          v357 = (*(v325 + 8))(v320);
          v359 = v358;
          v360 = v863;
          v361 = swift_isUniquelyReferenced_nonNull_native();
          v865 = v360;
          sub_22F1302A0(2, v357, v359, v361);

          v306(v813, v310);
          v362 = *v806;
          v138 = v858;
          (*v806)(v831, v858);
          v362(v840, v138);
          (v324)(v139, v320);
        }

        v863 = v865;
        v120 = v862;
      }

LABEL_56:
      v118 = v849;
      v265 = v854;
LABEL_57:
      v136 = v265 + 1;
      if (v855 == sub_22F741230())
      {

        v414 = v869;
        goto LABEL_94;
      }
    }

    v147 = v864;
    (v141)(v143, v139, v864);

    v148 = sub_22F740B70();
    v149 = v147;
    v150 = sub_22F7415D0();
    if (os_log_type_enabled(v148, v150))
    {
      v151 = swift_slowAlloc();
      v843 = swift_slowAlloc();
      v865 = v843;
      *v151 = v814;
      *(v151 + 4) = v852;
      *(v151 + 12) = 2080;
      v152 = swift_getAssociatedConformanceWitness();
      v153 = (*(v152 + 8))(v149, v152);
      v154 = v143;
      v156 = v155;
      v120 = v847;
      v157 = *v847;
      (*v847)(v154, v149);
      v158 = sub_22F145F20(v153, v156, &v865);

      *(v151 + 14) = v158;
      *(v151 + 22) = 2048;
      v159 = sub_22F741230();

      *(v151 + 24) = v159;

      _os_log_impl(&dword_22F0FC000, v148, v150, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v151, 0x20u);
      v160 = v843;
      __swift_destroy_boxed_opaque_existential_0(v843);
      MEMORY[0x2319033A0](v160, -1, -1);
      MEMORY[0x2319033A0](v151, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v120 = v847;
      v157 = *v847;
      (*v847)(v143, v149);
      v152 = swift_getAssociatedConformanceWitness();
    }

    v181 = v863;
    v182 = (*(v152 + 8))(v864, v152);
    v184 = v183;
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v865 = v181;
    v185 = sub_22F1229E8(v182, v184);
    v187 = *(v181 + 16);
    v188 = (v186 & 1) == 0;
    v189 = __OFADD__(v187, v188);
    v190 = v187 + v188;
    if (v189)
    {
      __break(1u);
LABEL_284:

      swift_bridgeObjectRelease_n();

      v129 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*v774)(v813, v149);
      v758 = *v806;
      v759 = v858;
      (*v806)(v831, v858);
      v758(v840, v759);
      (*v847)(v139, v864);
      (*(v804 + 8))(v120, v803);

      return v129;
    }

    v191 = v186;
    if (*(v181 + 24) >= v190)
    {
      if ((v139 & 1) == 0)
      {
        v411 = v185;
        sub_22F134340();
        v185 = v411;
      }
    }

    else
    {
      sub_22F1259D0(v190, v139);
      v185 = sub_22F1229E8(v182, v184);
      if ((v191 & 1) != (v192 & 1))
      {
        goto LABEL_307;
      }
    }

    v139 = v860;
    if (v191)
    {
      v210 = v185;

      v863 = v865;
      *(v865[7] + v210) = 4;
      (v157)(v139, v864);
LABEL_54:
      v120 = v862;
      v138 = v858;
LABEL_55:
      v130 = v857;
      goto LABEL_56;
    }

    v211 = v865;
    v865[(v185 >> 6) + 8] |= 1 << v185;
    v212 = (v211[6] + 16 * v185);
    *v212 = v182;
    v212[1] = v184;
    *(v211[7] + v185) = 4;
    (v157)(v139, v864);
    v213 = v211[2];
    v189 = __OFADD__(v213, 1);
    v214 = v213 + 1;
    if (v189)
    {
      goto LABEL_288;
    }

    goto LABEL_53;
  }

  v848 = 0;
  v863 = MEMORY[0x277D84F98];
  v414 = v132;
LABEL_94:

  v415 = sub_22F740B70();
  v416 = sub_22F7415D0();
  if (os_log_type_enabled(v415, v416))
  {
    v417 = swift_slowAlloc();
    *v417 = 134217984;
    *(v417 + 4) = sub_22F741230();
    v418 = v414;

    _os_log_impl(&dword_22F0FC000, v415, v416, "After filtering potential entities, there are %ld entities remaining.", v417, 0xCu);
    MEMORY[0x2319033A0](v417, -1, -1);
  }

  else
  {

    v418 = v414;
  }

  v419 = v805;
  v420 = v858;
  v421 = (v818)(v805, 0.3);
  if (*v419 == 1)
  {

    v129 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v804 + 8))(v120, v803);

    return v129;
  }

  v865 = v418;
  MEMORY[0x28223BE20](v421);
  v422 = v864;
  *(&v760 - 6) = v861;
  *(&v760 - 5) = v422;
  *(&v760 - 4) = v420;
  *(&v760 - 3) = v423;
  *(&v760 - 2) = &v868;
  v424 = sub_22F741280();

  WitnessTable = swift_getWitnessTable();
  v426 = v805;
  v427 = v848;
  v428 = sub_22F7410A0();

  v429 = 0.4;
  (v818)(v426, 0.4);
  if (*v426 == 1)
  {

    v129 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v804 + 8))(v120, v803);
LABEL_255:

    return v129;
  }

  v796 = v427;
  v798 = v418;
  v807 = sub_22F741230();
  v430 = 0.5 / v807;
  v867 = MEMORY[0x277D84FA0];
  v847 = v428;
  v866 = v428;
  MEMORY[0x231900C20](&v865, v424, WitnessTable);
  v866 = v865;
  sub_22F741D90();
  sub_22F741D60();
  v844 = sub_22F741D80();
  v843 = (v785 + 32);
  v431 = TupleTypeMetadata2;
  v840 = (TupleTypeMetadata2 - 8);
  v839 = (v851 + 32);
  v831 = (v815 + 2);
  v832 = (v791 + 8);
  v809 = (v791 + 32);
  v830 = (v815 + 1);
  v860 = (v851 + 8);
  v846 = (v851 + 16);
  *&v432 = 136315138;
  v845 = v432;
  *&v432 = 136315394;
  v806 = v432;
  *&v432 = 136315906;
  v795 = v432;
  v130 = v842;
  v797 = v424;
LABEL_105:
  v434 = v834;
  sub_22F741D70();
  v435 = v833;
  (*v843)(v833, v434, v835);
  if ((*(*(v431 - 8) + 48))(v435, 1, v431) == 1)
  {

    v865 = v798;
    MEMORY[0x28223BE20](v726);
    v727 = v861;
    v728 = v864;
    *(&v760 - 6) = v861;
    *(&v760 - 5) = v728;
    v729 = v857;
    *(&v760 - 4) = v858;
    *(&v760 - 3) = v729;
    *(&v760 - 2) = &v867;
    swift_getWitnessTable();
    v730 = v818;
    v731 = sub_22F741B90();
    v732 = v805;
    v733 = v817;
    (v730)(v805, 0.9);
    if (*v732 == 1)
    {

      v129 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v804 + 8))(v120, v803);

      goto LABEL_255;
    }

    (*(v729 + 9))(v731, v730, v733, v727, v729);
    v734 = sub_22F741230();
    v735 = v808;
    if (!v734)
    {
LABEL_277:

      (v818)(v805, 1.0);
      if (v764)
      {
        sub_22F277E50(v863);
      }

      (*(v804 + 8))(v120, v803);

      return v863;
    }

    v736 = 0;
    v861 = swift_getAssociatedConformanceWitness();
    v858 = *(v861 + 8);
    v859 = (v861 + 8);
    while (1)
    {
      v737 = sub_22F741210();
      sub_22F7411B0();
      if (v737)
      {
        (*(v851 + 16))(v735, v731 + ((*(v851 + 80) + 32) & ~*(v851 + 80)) + *(v851 + 72) * v736, v864);
        v738 = v736 + 1;
        if (__OFADD__(v736, 1))
        {
          goto LABEL_293;
        }
      }

      else
      {
        v756 = sub_22F741B30();
        if (v780 != 8)
        {
          goto LABEL_306;
        }

        v865 = v756;
        (*v846)(v735, &v865, v864);
        swift_unknownObjectRelease();
        v738 = v736 + 1;
        if (__OFADD__(v736, 1))
        {
          goto LABEL_293;
        }
      }

      v739 = v858(v864, v861);
      v741 = v740;
      v742 = v863;
      v743 = swift_isUniquelyReferenced_nonNull_native();
      v865 = v742;
      v745 = sub_22F1229E8(v739, v741);
      v746 = *(v742 + 16);
      v747 = (v744 & 1) == 0;
      v748 = v746 + v747;
      if (__OFADD__(v746, v747))
      {
        goto LABEL_294;
      }

      v749 = v744;
      if (*(v742 + 24) >= v748)
      {
        v735 = v808;
        (*v860)(v808, v864);
        if (v743)
        {
          if (v749)
          {
            goto LABEL_258;
          }
        }

        else
        {
          sub_22F134340();
          v735 = v808;
          if (v749)
          {
            goto LABEL_258;
          }
        }
      }

      else
      {
        sub_22F1259D0(v748, v743);
        v750 = sub_22F1229E8(v739, v741);
        if ((v749 & 1) != (v751 & 1))
        {
          goto LABEL_307;
        }

        v745 = v750;
        v735 = v808;
        (*v860)(v808, v864);
        if (v749)
        {
LABEL_258:

          v863 = v865;
          *(v865[7] + v745) = 0;
          goto LABEL_259;
        }
      }

      v752 = v865;
      v865[(v745 >> 6) + 8] |= 1 << v745;
      v753 = (v752[6] + 16 * v745);
      *v753 = v739;
      v753[1] = v741;
      *(v752[7] + v745) = 0;
      v754 = v752[2];
      v189 = __OFADD__(v754, 1);
      v755 = v754 + 1;
      if (v189)
      {
        goto LABEL_298;
      }

      v863 = v752;
      v752[2] = v755;
LABEL_259:
      ++v736;
      if (v738 == sub_22F741230())
      {
        goto LABEL_277;
      }
    }
  }

  v436 = *v435;
  v437 = v864;
  (*v839)(v130, &v435[*(v431 + 48)], v864);
  v438 = swift_getAssociatedConformanceWitness();
  v439 = v438 + 8;
  v440 = *(v438 + 8);
  v859 = (v440)(v437, v438);
  v854 = v441;
  v442 = v438;
  v443 = (v440)(v437, v438);
  v445 = v868;
  if (*(v868 + 16))
  {
    v819 = v436;
    v446 = sub_22F1229E8(v443, v444);
    v448 = v447;

    if ((v448 & 1) == 0)
    {
      goto LABEL_161;
    }

    v449 = *(v445 + 56);
    v822 = v815[9];
    v821 = v815[2];
    (v821)(v838, v449 + v822 * v446, v841);
    v450 = (v440)(v864, v438);
    if (!*(v829 + 16))
    {

LABEL_174:

      v567 = v802;
      (*v846)(v802, v130, v864);
      v568 = sub_22F740B70();
      v569 = sub_22F7415E0();
      if (os_log_type_enabled(v568, v569))
      {
        v570 = swift_slowAlloc();
        v571 = v567;
        v572 = swift_slowAlloc();
        v865 = v572;
        *v570 = v845;
        v573 = v864;
        v574 = (v440)(v864, v442);
        v852 = v439;
        v576 = v575;
        v859 = *v860;
        v577 = v442;
        v578 = v440;
        v579 = v571;
        v580 = v577;
        (v859)(v579, v573);
        v581 = sub_22F145F20(v574, v576, &v865);

        *(v570 + 4) = v581;
        _os_log_impl(&dword_22F0FC000, v568, v569, "Unable to find important location presence for entity %s", v570, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v572);
        MEMORY[0x2319033A0](v572, -1, -1);
        v582 = v570;
        v130 = v842;
        MEMORY[0x2319033A0](v582, -1, -1);

        v583 = v859;
      }

      else
      {

        v573 = v864;
        v583 = *v860;
        v580 = v442;
        v578 = v440;
        (*v860)(v567, v864);
      }

      v584 = (v578)(v573, v580);
      v586 = v585;
      v587 = v863;
      v588 = swift_isUniquelyReferenced_nonNull_native();
      v865 = v587;
      sub_22F1302A0(9, v584, v586, v588);

      (*v830)(v838, v841);
      v583(v130, v573);
      v863 = v865;
LABEL_103:
      v120 = v862;
      goto LABEL_104;
    }

    v848 = v445;
    v452 = sub_22F1229E8(v450, v451);
    v454 = v453;

    if ((v454 & 1) == 0)
    {
      goto LABEL_174;
    }

    v455 = (v819 - 1);
    if (__OFSUB__(v819, 1))
    {
      goto LABEL_301;
    }

    v456 = *(*(v829 + 56) + 8 * v452);
    v457 = v816;
    v458 = v863;
    v855 = v442;
    v459 = v848;
    if (v455 < 0)
    {
      goto LABEL_181;
    }

    v852 = v439;
    v856 = v440;
    while (1)
    {
      while (1)
      {
        v850 = v455;
        v460 = v864;
        sub_22F7412B0();
        v461 = (v440)(v460, v442);
        v463 = v461;
        v464 = v462;
        if (*(v459 + 2))
        {
          v465 = sub_22F1229E8(v461, v462);
          if (v466)
          {
            break;
          }
        }

        v493 = sub_22F740B70();
        v494 = sub_22F7415E0();

        if (os_log_type_enabled(v493, v494))
        {
          v495 = v458;
          v496 = swift_slowAlloc();
          v497 = swift_slowAlloc();
          v865 = v497;
          *v496 = v845;
          v498 = sub_22F145F20(v463, v464, &v865);

          *(v496 + 4) = v498;
          _os_log_impl(&dword_22F0FC000, v493, v494, "Unable to find lifespan for entity %s", v496, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v497);
          MEMORY[0x2319033A0](v497, -1, -1);
          v499 = v496;
          v458 = v495;
          MEMORY[0x2319033A0](v499, -1, -1);
        }

        else
        {
        }

        v500 = (v856)(v864, v855);
        v502 = v501;
        v503 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v458;
        v504 = sub_22F1229E8(v500, v502);
        v506 = v458[2];
        v507 = (v505 & 1) == 0;
        v189 = __OFADD__(v506, v507);
        v508 = v506 + v507;
        if (v189)
        {
          __break(1u);
          goto LABEL_286;
        }

        v509 = v505;
        if (v458[3] >= v508)
        {
          if ((v503 & 1) == 0)
          {
            v537 = v504;
            sub_22F134340();
            v504 = v537;
          }
        }

        else
        {
          sub_22F1259D0(v508, v503);
          v504 = sub_22F1229E8(v500, v502);
          if ((v509 & 1) != (v510 & 1))
          {
            goto LABEL_307;
          }
        }

        v442 = v855;
        v440 = v856;
        if (v509)
        {
          v511 = v504;

          v512 = v865;
          *(v865[7] + v511) = 8;
          v458 = v512;
          (*v860)(v457, v864);
        }

        else
        {
          v458 = v865;
          v865[(v504 >> 6) + 8] |= 1 << v504;
          v513 = (v458[6] + 16 * v504);
          *v513 = v500;
          v513[1] = v502;
          *(v458[7] + v504) = 8;
          (*v860)(v457, v864);
          v514 = v458[2];
          v189 = __OFADD__(v514, 1);
          v515 = v514 + 1;
          if (v189)
          {
            goto LABEL_289;
          }

          v458[2] = v515;
        }

        v439 = v852;
        v459 = v848;
LABEL_158:
        v455 = v850;
        if (v850 < 0)
        {
          goto LABEL_181;
        }
      }

      v813 = v463;
      *&v814 = v464;
      v863 = v458;
      v467 = v826;
      (v821)(v826, *(v459 + 7) + v465 * v822, v841);
      v468 = v828;
      sub_22F73F030();
      v469 = v827;
      sub_22F73F060();
      sub_22F1662C8(&qword_2810AC708);
      v470 = v837;
      v471 = sub_22F740DB0();
      v472 = *v832;
      (*v832)(v469, v470);
      (v472)(v468, v470);
      if ((v471 & 1) == 0)
      {

        (*v830)(v467, v841);
        goto LABEL_180;
      }

      sub_22F73F060();
      v473 = v811;
      sub_22F73F030();
      v474 = v812;
      sub_22F73F030();
      v475 = sub_22F740DB0();
      v476 = (v475 & 1) == 0;
      if (v475)
      {
        v477 = v473;
      }

      else
      {
        v477 = v474;
      }

      if (v476)
      {
        v474 = v473;
      }

      (v472)(v477, v470);
      (*v809)(v825, v474, v470);
      sub_22F73F590();
      v479 = v478;
      sub_22F73F080();
      if (v108 * v480 >= v479)
      {

        (v472)(v825, v470);
        (v472)(v824, v470);
        (*v830)(v826, v841);
LABEL_180:
        (*v860)(v816, v864);
        v458 = v863;
        v439 = v852;
        v440 = v856;
LABEL_181:
        v863 = v458;
        v589 = v867;
        v590 = v854;
        v120 = v862;
        if (*(v867 + 16))
        {
          v591 = *(v867 + 40);
          sub_22F742170();
          sub_22F740D60();
          v592 = sub_22F7421D0();
          v593 = v859;
          v594 = -1 << *(v589 + 32);
          v595 = v592 & ~v594;
          if ((*(v589 + 56 + ((v595 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v595))
          {
            v596 = ~v594;
            do
            {
              v597 = (*(v589 + 48) + 16 * v595);
              v598 = *v597 == v593 && v597[1] == v590;
              if (v598 || (v599 = sub_22F742040(), v593 = v859, (v599 & 1) != 0))
              {

                (*v830)(v838, v841);
                v130 = v842;
                (*v860)(v842, v864);
                goto LABEL_104;
              }

              v595 = (v595 + 1) & v596;
            }

            while (((*(v589 + 56 + ((v595 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v595) & 1) != 0);
          }
        }

        v600 = v819 + 1;
        if (__OFADD__(v819, 1))
        {
          goto LABEL_303;
        }

        v601 = v818;
        v130 = v842;
        v602 = v848;
        if (v600 >= v807)
        {
LABEL_239:

          goto LABEL_240;
        }

        v852 = v439;
        v856 = v440;
        while (2)
        {
          v604 = v864;
          sub_22F7412B0();
          v605 = (v440)(v604, v855);
          v607 = v605;
          v608 = v606;
          if (!*(v602 + 2) || (v609 = sub_22F1229E8(v605, v606), (v610 & 1) == 0))
          {

            v637 = sub_22F740B70();
            v638 = sub_22F7415E0();

            if (os_log_type_enabled(v637, v638))
            {
              v639 = swift_slowAlloc();
              v640 = v440;
              v641 = swift_slowAlloc();
              v865 = v641;
              *v639 = v845;
              v642 = sub_22F145F20(v607, v608, &v865);
              v643 = v439;
              v644 = v642;

              *(v639 + 4) = v644;
              v439 = v643;
              _os_log_impl(&dword_22F0FC000, v637, v638, "Unable to find lifespan for entity %s", v639, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v641);
              v645 = v641;
              v440 = v640;
              v646 = v855;
              MEMORY[0x2319033A0](v645, -1, -1);
              MEMORY[0x2319033A0](v639, -1, -1);

              v647 = v863;
            }

            else
            {

              v647 = v863;
              v646 = v855;
            }

            v648 = v646;
            v649 = v439;
            v650 = v440;
            v651 = (v440)(v864, v648);
            v653 = v652;
            v654 = swift_isUniquelyReferenced_nonNull_native();
            v865 = v647;
            v655 = sub_22F1229E8(v651, v653);
            v657 = *(v647 + 16);
            v658 = (v656 & 1) == 0;
            v189 = __OFADD__(v657, v658);
            v659 = v657 + v658;
            if (v189)
            {
              goto LABEL_296;
            }

            v660 = v656;
            if (*(v647 + 24) >= v659)
            {
              if ((v654 & 1) == 0)
              {
                v690 = v655;
                sub_22F134340();
                v655 = v690;
              }
            }

            else
            {
              sub_22F1259D0(v659, v654);
              v655 = sub_22F1229E8(v651, v653);
              if ((v660 & 1) != (v661 & 1))
              {
                goto LABEL_307;
              }
            }

            v440 = v650;
            v120 = v862;
            if (v660)
            {
              v603 = v655;

              v863 = v865;
              *(v865[7] + v603) = 8;
              (*v860)(v820, v864);
            }

            else
            {
              v662 = v865;
              v865[(v655 >> 6) + 8] |= 1 << v655;
              v663 = (v662[6] + 16 * v655);
              *v663 = v651;
              v663[1] = v653;
              *(v662[7] + v655) = 8;
              (*v860)(v820, v864);
              v664 = v662[2];
              v189 = __OFADD__(v664, 1);
              v665 = v664 + 1;
              if (v189)
              {
                goto LABEL_300;
              }

              v863 = v662;
              v662[2] = v665;
            }

            v601 = v818;
            v439 = v649;
            goto LABEL_195;
          }

          v850 = v607;
          v819 = v608;
          *&v814 = v600;
          v611 = v801;
          (v821)(v801, *(v602 + 7) + v609 * v822, v841);
          v612 = v828;
          sub_22F73F030();
          v613 = v827;
          sub_22F73F060();
          sub_22F1662C8(&qword_2810AC708);
          v614 = v837;
          v615 = sub_22F740DB0();
          v616 = *v832;
          (*v832)(v613, v614);
          (v616)(v612, v614);
          if ((v615 & 1) == 0)
          {

            (*v830)(v611, v841);
LABEL_246:
            (*v860)(v820, v864);
            v601 = v818;
            v130 = v842;
            v120 = v862;
            goto LABEL_240;
          }

          sub_22F73F060();
          v617 = v788;
          sub_22F73F030();
          v618 = v789;
          sub_22F73F030();
          v619 = sub_22F740DB0();
          v620 = (v619 & 1) == 0;
          if (v619)
          {
            v621 = v617;
          }

          else
          {
            v621 = v618;
          }

          if (v620)
          {
            v618 = v617;
          }

          (v616)(v621, v614);
          (*v809)(v800, v618, v614);
          sub_22F73F590();
          v623 = v622;
          sub_22F73F080();
          if (v108 * v624 >= v623)
          {

            v700 = v837;
            (v616)(v800, v837);
            (v616)(v799, v700);
            (*v830)(v801, v841);
            goto LABEL_246;
          }

          v813 = v616;
          v120 = v862;
          v625 = v854;
          v626 = v819;
          if (!*(v829 + 16) || (v627 = sub_22F1229E8(v850, v819), (v628 & 1) == 0))
          {

            v666 = sub_22F740B70();
            v667 = sub_22F7415E0();

            v668 = os_log_type_enabled(v666, v667);
            v130 = v842;
            if (v668)
            {
              v669 = swift_slowAlloc();
              v670 = swift_slowAlloc();
              v865 = v670;
              *v669 = v845;
              v671 = sub_22F145F20(v850, v626, &v865);

              *(v669 + 4) = v671;
              _os_log_impl(&dword_22F0FC000, v666, v667, "Unable to find important location presence for entity %s", v669, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v670);
              MEMORY[0x2319033A0](v670, -1, -1);
              MEMORY[0x2319033A0](v669, -1, -1);
            }

            else
            {
            }

            v601 = v818;
            v672 = (v856)(v864, v855);
            v674 = v673;
            v675 = v863;
            v676 = swift_isUniquelyReferenced_nonNull_native();
            v865 = v675;
            v677 = sub_22F1229E8(v672, v674);
            v679 = *(v675 + 16);
            v680 = (v678 & 1) == 0;
            v189 = __OFADD__(v679, v680);
            v681 = v679 + v680;
            if (v189)
            {
              goto LABEL_302;
            }

            v682 = v678;
            if (*(v675 + 24) >= v681)
            {
              if ((v676 & 1) == 0)
              {
                v691 = v677;
                sub_22F134340();
                v677 = v691;
                v601 = v818;
              }
            }

            else
            {
              sub_22F1259D0(v681, v676);
              v677 = sub_22F1229E8(v672, v674);
              if ((v682 & 1) != (v683 & 1))
              {
                goto LABEL_307;
              }
            }

            v440 = v856;
            v684 = v865;
            v863 = v865;
            if (v682)
            {
              *(v865[7] + v677) = 9;
            }

            else
            {
              v865[(v677 >> 6) + 8] |= 1 << v677;
              v685 = (v684[6] + 16 * v677);
              *v685 = v672;
              v685[1] = v674;
              *(v684[7] + v677) = 9;
              v686 = v684[2];
              v189 = __OFADD__(v686, 1);
              v687 = v686 + 1;
              if (v189)
              {
                goto LABEL_304;
              }

              v684[2] = v687;
            }

            v439 = v852;
            v688 = v837;
            v689 = v813;
            (v813)(v800, v837);
            (v689)(v799, v688);
            (*v830)(v801, v841);
            (*v860)(v820, v864);
            v600 = v814;
            goto LABEL_195;
          }

          v629 = *(*(v829 + 56) + 8 * v627);

          v630 = sub_22F740B70();
          v631 = sub_22F7415C0();

          v632 = os_log_type_enabled(v630, v631);
          v439 = v852;
          if (v632)
          {
            v633 = swift_slowAlloc();
            v634 = swift_slowAlloc();
            v865 = v634;
            *v633 = v806;
            *(v633 + 4) = sub_22F145F20(v859, v625, &v865);
            *(v633 + 12) = 2080;
            *(v633 + 14) = sub_22F145F20(v850, v626, &v865);
            _os_log_impl(&dword_22F0FC000, v630, v631, "Entity %s's lifespan has significant overlap with %s's lifespan!", v633, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v634, -1, -1);
            MEMORY[0x2319033A0](v633, -1, -1);
          }

          v601 = v818;
          v130 = v842;
          v440 = v856;
          if (v456 >= v110 * v629)
          {

            v635 = v837;
            v636 = v813;
            (v813)(v800, v837);
            (v636)(v799, v635);
            (*v830)(v801, v841);
            (*v860)(v820, v864);
            v600 = (v814 + 1);
LABEL_195:
            v602 = v848;
            if (v600 >= v807)
            {
              goto LABEL_239;
            }

            continue;
          }

          break;
        }

        v709 = v859;
        sub_22F10BBDC(&v865, v859, v625);

        v710 = sub_22F740B70();
        v711 = sub_22F7415D0();

        if (os_log_type_enabled(v710, v711))
        {
          v712 = swift_slowAlloc();
          v822 = swift_slowAlloc();
          v865 = v822;
          *v712 = v795;
          v713 = sub_22F145F20(v709, v625, &v865);

          *(v712 + 4) = v713;
          v440 = v856;
          v714 = v855;
          *(v712 + 12) = 2048;
          *(v712 + 14) = v456;
          *(v712 + 22) = 2080;
          v715 = sub_22F145F20(v850, v626, &v865);

          *(v712 + 24) = v715;
          *(v712 + 32) = 2048;
          *(v712 + 34) = v629;
          _os_log_impl(&dword_22F0FC000, v710, v711, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v712, 0x2Au);
          v716 = v822;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v716, -1, -1);
          MEMORY[0x2319033A0](v712, -1, -1);
        }

        else
        {

          v714 = v855;
        }

        v717 = v864;
        v718 = (v440)(v864, v714);
        v720 = v719;
        v721 = v863;
        v722 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v721;
        sub_22F1302A0(6, v718, v720, v722);

        v723 = v837;
        v724 = v813;
        (v813)(v800, v837);
        (v724)(v799, v723);
        (*v830)(v801, v841);
        (*v860)(v820, v717);
        v863 = v865;
        v601 = v818;
        v120 = v862;
LABEL_240:
        v429 = v430 + v429;
        v692 = v805;
        (v601)(v805, v429);
        v142 = v838;
        if (*v692 == 1)
        {
          goto LABEL_282;
        }

        (*v830)(v838, v841);
        (*v860)(v130, v864);
LABEL_104:
        v431 = TupleTypeMetadata2;
        goto LABEL_105;
      }

      v810 = v472;
      v457 = v816;
      v481 = v864;
      v482 = v814;
      v483 = v813;
      if (!*(v829 + 16) || (v484 = sub_22F1229E8(v813, v814), (v485 & 1) == 0))
      {

        v516 = sub_22F740B70();
        v517 = sub_22F7415E0();

        if (os_log_type_enabled(v516, v517))
        {
          v518 = swift_slowAlloc();
          v519 = swift_slowAlloc();
          v865 = v519;
          *v518 = v845;
          v520 = sub_22F145F20(v483, v482, &v865);

          *(v518 + 4) = v520;
          _os_log_impl(&dword_22F0FC000, v516, v517, "Unable to find important location presence for entity %s", v518, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v519);
          v481 = v864;
          MEMORY[0x2319033A0](v519, -1, -1);
          MEMORY[0x2319033A0](v518, -1, -1);
        }

        else
        {
        }

        v521 = v863;
        v522 = (v856)(v481, v855);
        v524 = v523;
        v525 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v521;
        v526 = sub_22F1229E8(v522, v524);
        v528 = *(v521 + 16);
        v529 = (v527 & 1) == 0;
        v189 = __OFADD__(v528, v529);
        v530 = v528 + v529;
        if (v189)
        {
          goto LABEL_295;
        }

        v531 = v527;
        if (*(v521 + 24) >= v530)
        {
          if ((v525 & 1) == 0)
          {
            v538 = v526;
            sub_22F134340();
            v526 = v538;
          }
        }

        else
        {
          sub_22F1259D0(v530, v525);
          v526 = sub_22F1229E8(v522, v524);
          if ((v531 & 1) != (v532 & 1))
          {
            goto LABEL_307;
          }
        }

        v440 = v856;
        v458 = v865;
        if (v531)
        {
          *(v865[7] + v526) = 9;
        }

        else
        {
          v865[(v526 >> 6) + 8] |= 1 << v526;
          v533 = (v458[6] + 16 * v526);
          *v533 = v522;
          v533[1] = v524;
          *(v458[7] + v526) = 9;
          v534 = v458[2];
          v189 = __OFADD__(v534, 1);
          v535 = v534 + 1;
          if (v189)
          {
            goto LABEL_299;
          }

          v458[2] = v535;
        }

        v536 = v810;
        (v810)(v825, v470);
        v536(v824, v470);
        (*v830)(v826, v841);
        (*v860)(v457, v864);
        v439 = v852;
        v459 = v848;
        v442 = v855;
        goto LABEL_158;
      }

      v486 = *(*(v829 + 56) + 8 * v484);
      v487 = v854;

      v488 = sub_22F740B70();
      v489 = sub_22F7415C0();

      if (os_log_type_enabled(v488, v489))
      {
        v490 = swift_slowAlloc();
        v491 = swift_slowAlloc();
        v865 = v491;
        *v490 = v806;
        *(v490 + 4) = sub_22F145F20(v859, v487, &v865);
        *(v490 + 12) = 2080;
        *(v490 + 14) = sub_22F145F20(v483, v482, &v865);
        _os_log_impl(&dword_22F0FC000, v488, v489, "Entity %s's lifespan has significant overlap with %s's lifespan!", v490, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v491, -1, -1);
        MEMORY[0x2319033A0](v490, -1, -1);
      }

      v458 = v863;
      v442 = v855;
      v440 = v856;
      v459 = v848;
      if (v456 < v110 * v486)
      {
        v693 = v854;

        v694 = v859;
        sub_22F10BBDC(&v865, v859, v693);

        v695 = sub_22F740B70();
        v696 = sub_22F7415D0();

        if (os_log_type_enabled(v695, v696))
        {
          v697 = swift_slowAlloc();
          v698 = swift_slowAlloc();
          v865 = v698;
          *v697 = v795;
          *(v697 + 4) = sub_22F145F20(v694, v693, &v865);
          *(v697 + 12) = 2048;
          *(v697 + 14) = v456;
          *(v697 + 22) = 2080;
          v699 = sub_22F145F20(v813, v482, &v865);

          *(v697 + 24) = v699;
          *(v697 + 32) = 2048;
          *(v697 + 34) = v486;
          _os_log_impl(&dword_22F0FC000, v695, v696, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v697, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v698, -1, -1);
          MEMORY[0x2319033A0](v697, -1, -1);
        }

        else
        {
        }

        v701 = v864;
        v439 = v852;
        v702 = (v440)(v864, v442);
        v704 = v703;
        v705 = v863;
        v706 = swift_isUniquelyReferenced_nonNull_native();
        v865 = v705;
        sub_22F1302A0(6, v702, v704, v706);

        v707 = v837;
        v708 = v810;
        (v810)(v825, v837);
        v708(v824, v707);
        (*v830)(v826, v841);
        (*v860)(v457, v701);
        v458 = v865;
        goto LABEL_181;
      }

      v492 = v810;
      (v810)(v825, v470);
      v492(v824, v470);
      (*v830)(v826, v841);
      (*v860)(v457, v864);
      v455 = v850 - 1;
      v439 = v852;
      if (v850 - 1 < 0)
      {
        goto LABEL_181;
      }
    }
  }

LABEL_161:

  v539 = v823;
  (*v846)(v823, v130, v864);
  v540 = sub_22F740B70();
  v541 = sub_22F7415E0();
  if (os_log_type_enabled(v540, v541))
  {
    v542 = swift_slowAlloc();
    v543 = swift_slowAlloc();
    v865 = v543;
    *v542 = v845;
    v544 = v864;
    v545 = (v440)(v864, v442);
    v546 = v544;
    v856 = v440;
    v548 = v547;
    v549 = *v860;
    (*v860)(v539, v546);
    v550 = sub_22F145F20(v545, v548, &v865);
    v440 = v856;

    *(v542 + 4) = v550;
    _os_log_impl(&dword_22F0FC000, v540, v541, "Unable to find lifespan for entity %s", v542, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v543);
    MEMORY[0x2319033A0](v543, -1, -1);
    MEMORY[0x2319033A0](v542, -1, -1);
  }

  else
  {

    v549 = *v860;
    (*v860)(v539, v864);
  }

  v551 = (v440)(v864, v442);
  v553 = v552;
  v554 = v863;
  v555 = swift_isUniquelyReferenced_nonNull_native();
  v865 = v554;
  v556 = sub_22F1229E8(v551, v553);
  v558 = *(v554 + 16);
  v559 = (v557 & 1) == 0;
  v189 = __OFADD__(v558, v559);
  v560 = v558 + v559;
  if (v189)
  {
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  v561 = v557;
  if (*(v554 + 24) >= v560)
  {
    if ((v555 & 1) == 0)
    {
      v725 = v556;
      sub_22F134340();
      v556 = v725;
    }
  }

  else
  {
    sub_22F1259D0(v560, v555);
    v556 = sub_22F1229E8(v551, v553);
    if ((v561 & 1) != (v562 & 1))
    {
      goto LABEL_307;
    }
  }

  if (v561)
  {
    v433 = v556;

    v863 = v865;
    *(v865[7] + v433) = 8;
    v130 = v842;
    v549(v842, v864);
    goto LABEL_103;
  }

  v563 = v865;
  v865[(v556 >> 6) + 8] |= 1 << v556;
  v564 = (v563[6] + 16 * v556);
  *v564 = v551;
  v564[1] = v553;
  *(v563[7] + v556) = 8;
  v130 = v842;
  v549(v842, v864);
  v565 = v563[2];
  v189 = __OFADD__(v565, 1);
  v566 = v565 + 1;
  if (!v189)
  {
    v863 = v563;
    v563[2] = v566;
    goto LABEL_103;
  }

LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

PhotosGraph::ImportantEntityInferenceResult_optional __swiftcall ImportantEntityInferenceResult.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ImportantEntityInferenceResult.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000020;
    v7 = 0xD00000000000001FLL;
    if (v1 == 8)
    {
      v7 = 0xD000000000000010;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000022;
    if (v1 != 5)
    {
      v8 = 0x457265696C74756FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E65636552746F6ELL;
    v3 = 0xD000000000000019;
    v4 = 0x746E656D6F4D6F6ELL;
    if (v1 != 3)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000017;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_22F2769C4()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F1B5E48();
  return sub_22F7421D0();
}

uint64_t sub_22F276A14()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F1B5E48();
  return sub_22F7421D0();
}

unint64_t sub_22F276A64@<X0>(unint64_t *a1@<X8>)
{
  result = ImportantEntityInferenceResult.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F276A8C(uint64_t a1)
{
  v3 = v1[12];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = sub_22F741280();
  v10 = sub_22F740C50();
  v50 = v10;
  v46 = a1;
  if (!sub_22F741230())
  {
    return v10;
  }

  v36[0] = v5;
  v11 = v1[13];
  v12 = v1[10];
  v13 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 16);
  v42 = AssociatedConformanceWitness + 16;
  v45 = (v4 + 16);
  v39 = (v4 + 8);
  v40 = (v4 + 32);
  v14 = v38;
  v36[1] = v9;
  v37 = v8;
  while (1)
  {
    v15 = sub_22F741210();
    sub_22F7411B0();
    if (v15)
    {
      v16 = *(v4 + 16);
      v16(v8, (v46 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13), v3);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    result = sub_22F741B30();
    if (v36[0] != 8)
    {
      break;
    }

    v47 = result;
    v16 = *v45;
    (*v45)(v8, &v47, v3);
    swift_unknownObjectRelease();
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
LABEL_15:
      __break(1u);
      return v50;
    }

LABEL_7:
    (*v40)(v14, v8, v3);
    v18 = v41(v3, AssociatedConformanceWitness);
    if (v19)
    {
      v20 = v19;
      v44 = v18;
      v47 = v18;
      v48 = v19;

      sub_22F740D10();

      if (v49)
      {
        v21 = sub_22F210E70(v3, v3);
        v22 = *(v21 + 52);
        v23 = *(v4 + 72);
        v24 = (*(v4 + 80) + *(v21 + 48)) & ~*(v4 + 80);
        swift_allocObject();
        v25 = sub_22F7411A0();
        v16(v26, v38, v3);
        sub_22F20F8F4(v25);
        v27 = sub_22F7411D0();
        v14 = v38;

        v48 = v20;
        v49 = v27;
      }

      else
      {
        v28 = sub_22F210E70(v3, v3);
        v29 = *(v28 + 52);
        v30 = *(v4 + 72);
        v31 = (*(v4 + 80) + *(v28 + 48)) & ~*(v4 + 80);
        swift_allocObject();
        v32 = sub_22F7411A0();
        v16(v33, v14, v3);
        v34 = sub_22F20F8F4(v32);
        v48 = v20;
        v49 = v34;
      }

      v47 = v44;
      sub_22F740CE0();
      sub_22F740D20();
      (*(v4 + 8))(v14, v3);
      v8 = v37;
    }

    else
    {
      (*v39)(v14, v3);
    }

    ++v13;
    if (v17 == sub_22F741230())
    {
      return v50;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F276F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[0] = a1;
  v19[1] = a2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(AssociatedConformanceWitness + 8);
  v15(a5, AssociatedConformanceWitness);
  v15(a5, AssociatedConformanceWitness);
  v16 = sub_22F73F5D0();
  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v13, v6);
  return v16 & 1;
}

void sub_22F2770FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v78 = a4;
  v74 = a3;
  v81 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v69 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v75 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v79 = &v69 - v17;
  v18 = *(v4 + 96);
  v19 = sub_22F741280();
  v80 = a2;
  v88 = GEOLocationCoordinate2DMake(a2);
  sub_22F740CD0();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_22F7410D0();
  v88 = v86;
  sub_22F741C30();
  swift_getWitnessTable();
  v86 = sub_22F741290();
  v73 = *(v4 + 80);
  v83 = v73;
  v20 = *(v4 + 104);
  v76 = v18;
  v84 = v18;
  v85 = v20;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_22F26FD00(sub_22F278B24, v82, v19, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);

  sub_22F1732E8(v23, v11);
  v24 = v13[6];
  if (v24(v11, 1, v12) == 1)
  {

    sub_22F15FCF0(v11);
    v25 = sub_22F740B70();
    v26 = sub_22F7415E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Couldn't find the minimum of the datetime array!", v27, 2u);
      MEMORY[0x2319033A0](v27, -1, -1);
    }
  }

  else
  {
    v28 = v20;
    v72 = v13;
    v29 = v13[4];
    v29(v79, v11, v12);
    v30 = v77;
    sub_22F172094(v23, v77);

    if (v24(v30, 1, v12) == 1)
    {
      sub_22F15FCF0(v30);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22F0FC000, v31, v32, "Couldn't find the minimum of the datetime array!", v33, 2u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }

      (v72[1])(v79, v12);
    }

    else
    {
      v34 = v75;
      v71 = v12;
      v29(v75, v30, v12);
      v35 = v81 + 64;
      v36 = 1 << *(v81 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v38 = v37 & *(v81 + 64);
      v39 = (v36 + 63) >> 6;

      v70 = 0;
      v77 = 0;
      v40 = 0;
      *&v41 = v76;
      *(&v41 + 1) = v28;
      v42 = v34;
      v69 = v41;
      do
      {
        while (1)
        {
          v43 = v40;
          if (!v38)
          {
            while (1)
            {
              v40 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v40 >= v39)
              {
                goto LABEL_22;
              }

              v38 = *(v35 + 8 * v40);
              ++v43;
              if (v38)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

LABEL_16:
          v44 = __clz(__rbit64(v38)) | (v40 << 6);
          v45 = (*(v81 + 48) + 16 * v44);
          v46 = v45[1];
          v47 = *(*(v81 + 56) + 8 * v44);
          v38 &= v38 - 1;
          v86 = *v45;
          v87 = v46;

          sub_22F740D10();

          if (v88)
          {
            break;
          }
        }

        v86 = v47;
        MEMORY[0x28223BE20](v48);
        v49 = v69;
        *(&v69 - 3) = v73;
        *(&v69 - 2) = v49;
        *(&v69 - 2) = v79;
        *(&v69 - 1) = v50;
        swift_getWitnessTable();
        sub_22F741B90();
        v51 = sub_22F741230();

        v52 = __OFADD__(v70, v51);
        v70 += v51;
        if (v52)
        {
          goto LABEL_30;
        }

        v53 = sub_22F741230();

        v52 = __OFADD__(v77, v53);
        v77 += v53;
        v42 = v75;
      }

      while (!v52);
      __break(1u);
LABEL_22:

      v54 = v74;
      v55 = v77;
      if (v77 >= v74)
      {
        v67 = v72[1];
        v68 = v71;
        v67(v42, v71);
        v67(v79, v68);
      }

      else
      {
        v56 = sub_22F740B70();
        v57 = sub_22F7415C0();
        v58 = os_log_type_enabled(v56, v57);
        v59 = v71;
        v60 = v72;
        v61 = v79;
        if (v58)
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_22F0FC000, v56, v57, "Not enough moments at important locations that the entity has been to in the entity's lifetime!", v62, 2u);
          MEMORY[0x2319033A0](v62, -1, -1);
        }

        v63 = sub_22F740B70();
        v64 = sub_22F7415C0();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 134218240;
          *(v65 + 4) = v55;
          *(v65 + 12) = 2048;
          *(v65 + 14) = v54;
          _os_log_impl(&dword_22F0FC000, v63, v64, "Only had %ld moments, which is less than minimum threshold %ld", v65, 0x16u);
          MEMORY[0x2319033A0](v65, -1, -1);
        }

        v66 = v60[1];
        v66(v42, v59);
        v66(v61, v59);
      }
    }
  }
}

uint64_t sub_22F27798C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v62 = a2;
  v7 = sub_22F73F690();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x28223BE20](v7);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v11;
  v12 = sub_22F73F090();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x28223BE20](v12);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v53 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v64 = &v53 - v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 8);
  v24 = v23(a5, AssociatedConformanceWitness);
  v63 = a3;
  v26 = *a3;
  if (!*(*a3 + 16))
  {

    goto LABEL_7;
  }

  v56 = v7;
  v27 = sub_22F1229E8(v24, v25);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_7:
    v47 = 0;
    return v47 & 1;
  }

  v30 = *(v26 + 56);
  v32 = v65;
  v31 = v66;
  v55 = *(v65 + 72);
  v33 = *(v65 + 16);
  v33(v19, v30 + v55 * v27, v66);
  v54 = *(v32 + 32);
  v54(v64, v19, v31);
  v34 = v23(a5, AssociatedConformanceWitness);
  v36 = *v63;
  if (!*(*v63 + 16))
  {

    goto LABEL_9;
  }

  v37 = sub_22F1229E8(v34, v35);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
LABEL_9:
    (*(v65 + 8))(v64, v66);
    v47 = 1;
    return v47 & 1;
  }

  v40 = *(v36 + 56) + v37 * v55;
  v41 = v57;
  v42 = v66;
  v33(v57, v40, v66);
  v43 = v58;
  v54(v58, v41, v42);
  v44 = v59;
  v45 = v64;
  sub_22F73F060();
  v46 = v60;
  sub_22F73F060();
  v47 = sub_22F73F5D0();
  v48 = *(v61 + 8);
  v49 = v46;
  v50 = v56;
  v48(v49, v56);
  v48(v44, v50);
  v51 = *(v65 + 8);
  v51(v43, v42);
  v51(v45, v42);
  return v47 & 1;
}

BOOL sub_22F277DA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);

  v8 = v7(a4, AssociatedConformanceWitness);
  LOBYTE(a4) = sub_22F15E910(v8, v9, v5);

  return (a4 & 1) == 0;
}

void sub_22F277E50(uint64_t a1)
{
  v2 = *(v1 + 80);
  type metadata accessor for ImportantEntitiesPetContainer();
  v3 = sub_22F14E718(MEMORY[0x277D84F90]);
  v4 = sub_22F740DF0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v4, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v6 = sub_22F7417F0();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v94 = v3;
  sub_22F12FEE8(v6, 0xD000000000000010, 0x800000022F792BD0, v7);
  v8 = 0;
  v9 = v94;
  do
  {
    while (1)
    {
      v13 = &unk_2843D9058 + v8++;
      v14 = v13[32];
      v15 = 0xD000000000000020;
      v16 = 0xD00000000000001FLL;
      if (v14 == 8)
      {
        v16 = 0xD000000000000010;
      }

      v17 = 0x800000022F78E4D0;
      if (v14 == 8)
      {
        v17 = 0x800000022F78E4B0;
      }

      if (v14 != 7)
      {
        v15 = v16;
      }

      v18 = 0x800000022F78E480;
      if (v14 != 7)
      {
        v18 = v17;
      }

      v19 = 0xD000000000000022;
      if (v14 != 5)
      {
        v19 = 0x457265696C74756FLL;
      }

      v20 = 0xED0000797469746ELL;
      if (v14 == 5)
      {
        v20 = 0x800000022F78E440;
      }

      if (v14 <= 6)
      {
        v15 = v19;
        v18 = v20;
      }

      v21 = 0xD000000000000019;
      v22 = 0x746E656D6F4D6F6ELL;
      if (v14 != 3)
      {
        v22 = 0xD000000000000010;
      }

      v23 = 0x800000022F78E420;
      if (v14 == 3)
      {
        v23 = 0xE900000000000073;
      }

      if (v14 != 2)
      {
        v21 = v22;
      }

      v24 = 0x800000022F78E3F0;
      if (v14 != 2)
      {
        v24 = v23;
      }

      v25 = 0xD000000000000017;
      if (v14)
      {
        v25 = 0x6E65636552746F6ELL;
      }

      v26 = 0xEF6867756F6E4574;
      if (!v14)
      {
        v26 = 0x800000022F78E3C0;
      }

      if (v14 <= 1)
      {
        v21 = v25;
        v24 = v26;
      }

      v27 = v14 <= 4;
      if (v14 <= 4)
      {
        v28 = v21;
      }

      else
      {
        v28 = v15;
      }

      if (v27)
      {
        v29 = v24;
      }

      else
      {
        v29 = v18;
      }

      v94 = v28;
      v95 = v29;

      MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

      v31 = v94;
      v30 = v29;
      v32 = sub_22F7417F0();
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v9;
      v34 = sub_22F1229E8(v31, v30);
      v36 = v9[2];
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        __break(1u);
        goto LABEL_98;
      }

      v40 = v35;
      if (v9[3] >= v39)
      {
        break;
      }

      sub_22F125718(v39, v33);
      v34 = sub_22F1229E8(v31, v30);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_103;
      }

LABEL_42:
      if ((v40 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_2:
      v10 = v34;

      v9 = v94;
      v11 = v94[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v32;

      if (v8 == 10)
      {
        goto LABEL_48;
      }
    }

    if (v33)
    {
      goto LABEL_42;
    }

    v45 = v34;
    sub_22F1341C4();
    v34 = v45;
    if (v40)
    {
      goto LABEL_2;
    }

LABEL_43:
    v9 = v94;
    v94[(v34 >> 6) + 8] |= 1 << v34;
    v42 = (v9[6] + 16 * v34);
    *v42 = v31;
    v42[1] = v30;
    *(v9[7] + 8 * v34) = v32;
    v43 = v9[2];
    v38 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v38)
    {
      goto LABEL_99;
    }

    v9[2] = v44;
  }

  while (v8 != 10);
LABEL_48:
  v46 = a1;
  v47 = a1 + 64;
  v48 = 1 << *(a1 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a1 + 64);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v92 = v51;
  while (2)
  {
    while (2)
    {
      v53 = v52;
      while (2)
      {
        if (!v50)
        {
          while (1)
          {
            v52 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              break;
            }

            if (v52 >= v51)
            {

              v87 = objc_opt_self();
              v88 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v93 = sub_22F740C80();
              [v87 sendEvent:v88 withPayload:v93];

              return;
            }

            v50 = *(v47 + 8 * v52);
            ++v53;
            if (v50)
            {
              goto LABEL_59;
            }
          }

LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v52 = v53;
LABEL_59:
        v54 = *(*(v46 + 56) + (__clz(__rbit64(v50)) | (v52 << 6)));
        if (v54 > 4)
        {
          if (v54 <= 6)
          {
            if (v54 == 5)
            {
              v55 = 0xD000000000000022;
              v56 = 0x800000022F78E440;
            }

            else
            {
              v55 = 0x457265696C74756FLL;
              v56 = 0xED0000797469746ELL;
            }
          }

          else if (v54 == 7)
          {
            v55 = 0xD000000000000020;
            v56 = 0x800000022F78E480;
          }

          else if (v54 == 8)
          {
            v55 = 0xD000000000000010;
            v56 = 0x800000022F78E4B0;
          }

          else
          {
            v55 = 0xD00000000000001FLL;
            v56 = 0x800000022F78E4D0;
          }
        }

        else if (v54 <= 1)
        {
          v55 = 0x6E65636552746F6ELL;
          v56 = 0xEF6867756F6E4574;
          if (!v54)
          {
            v55 = 0xD000000000000017;
            v56 = 0x800000022F78E3C0;
          }
        }

        else if (v54 == 2)
        {
          v55 = 0xD000000000000019;
          v56 = 0x800000022F78E3F0;
        }

        else if (v54 == 3)
        {
          v55 = 0x746E656D6F4D6F6ELL;
          v56 = 0xE900000000000073;
        }

        else
        {
          v55 = 0xD000000000000010;
          v56 = 0x800000022F78E420;
        }

        v50 &= v50 - 1;
        v94 = v55;
        v95 = v56;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v58 = v94;
        v57 = v95;
        if (!v9[2] || (v59 = sub_22F1229E8(v94, v95), (v60 & 1) == 0) || (v61 = *(v9[7] + 8 * v59), objc_opt_self(), (v62 = swift_dynamicCastObjCClass()) == 0))
        {

          v63 = sub_22F740B70();
          v64 = sub_22F7415E0();

          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v94 = v66;
            *v65 = 136315138;
            v67 = sub_22F145F20(v58, v57, &v94);

            *(v65 + 4) = v67;
            _os_log_impl(&dword_22F0FC000, v63, v64, "Unable to parse result count for %s as a NSNumber!", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v66);
            v68 = v66;
            v47 = a1 + 64;
            MEMORY[0x2319033A0](v68, -1, -1);
            v69 = v65;
            v46 = a1;
            MEMORY[0x2319033A0](v69, -1, -1);
          }

          else
          {
          }

          v53 = v52;
          v51 = v92;
          continue;
        }

        break;
      }

      v70 = v62;
      v90 = v61;
      if (__OFADD__([v70 integerValue], 1))
      {
        goto LABEL_100;
      }

      v89 = sub_22F7417F0();
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v94 = v9;
      v73 = sub_22F1229E8(v58, v57);
      v74 = v9[2];
      v75 = (v72 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v9[3] >= v76)
      {
        if (v71)
        {
          v46 = a1;
          if ((v72 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v82 = v72;
          sub_22F1341C4();
          v83 = v82;
          v46 = a1;
          if ((v83 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v9 = v94;
        v80 = v94[7];
        v81 = *(v80 + 8 * v73);
        *(v80 + 8 * v73) = v89;

        v51 = v92;
        continue;
      }

      break;
    }

    v77 = v72;
    sub_22F125718(v76, v71);
    v78 = sub_22F1229E8(v58, v57);
    if ((v77 & 1) != (v79 & 1))
    {
      goto LABEL_103;
    }

    v73 = v78;
    v46 = a1;
    if (v77)
    {
      goto LABEL_90;
    }

LABEL_92:
    v9 = v94;
    v94[(v73 >> 6) + 8] |= 1 << v73;
    v84 = (v9[6] + 16 * v73);
    *v84 = v58;
    v84[1] = v57;
    *(v9[7] + 8 * v73) = v89;

    v85 = v9[2];
    v38 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (!v38)
    {
      v9[2] = v86;
      v51 = v92;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

uint64_t sub_22F2787B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a3;
  v22 = a2;
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  v19 = a1;
  v20 = a6;
  v14(a6, AssociatedConformanceWitness);
  sub_22F1662C8(&qword_2810AC708);
  LOBYTE(a1) = sub_22F740DB0();
  v15 = *(v9 + 8);
  v15(v12, v8);
  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v14(v20, AssociatedConformanceWitness);
    v17 = sub_22F740DB0();
    v15(v12, v8);
    v16 = v17 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_22F2789C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return sub_22F27798C(a1, a2, *(v2 + 48), *(v2 + 16), *(v2 + 24)) & 1;
}

BOOL sub_22F2789E8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22F277DA0(a1, *(v1 + 48), *(v1 + 16), *(v1 + 24));
}

unint64_t sub_22F278A14()
{
  result = qword_27DAB2D00[0];
  if (!qword_27DAB2D00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAB2D00);
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

uint64_t sub_22F278A7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F278A9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_22F278B24()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 8))(v3, AssociatedConformanceWitness);
}

uint64_t sub_22F278BCC(uint64_t a1, unint64_t isUniquelyReferenced_nonNull_native, int a3)
{
  LODWORD(v3) = a3;
  v518 = sub_22F73F690();
  v6 = *(v518 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v518);
  v509 = &v467 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v488 = &v467 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v487 = &v467 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v498 = &v467 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v497 = &v467 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v479 = &v467 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v478 = &v467 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v485 = &v467 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v484 = &v467 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v519 = &v467 - v27;
  MEMORY[0x28223BE20](v26);
  v521 = &v467 - v28;
  v516 = sub_22F73F090();
  v492 = *(v516 - 8);
  v29 = v492[8];
  v30 = MEMORY[0x28223BE20](v516);
  v477 = &v467 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v494 = (&v467 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v493 = &v467 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v467 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v467 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v499 = &v467 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v507 = &v467 - v45;
  MEMORY[0x28223BE20](v44);
  v502 = &v467 - v46;
  v490 = sub_22F740B90();
  v489 = *(v490 - 8);
  v47 = *(v489 + 64);
  MEMORY[0x28223BE20](v490);
  v49 = &v467 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v495 = swift_slowAlloc();
  *v495 = 0;
  v528 = v49;
  sub_22F740B80();
  swift_beginAccess();
  v527 = a1;
  v50 = *(a1 + 24);
  v51 = v50 >> 62;
  v525 = v50;
  if (!(v50 >> 62))
  {
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_305:
    v434 = sub_22F740B70();
    v435 = sub_22F7415D0();
    if (os_log_type_enabled(v434, v435))
    {
      v436 = swift_slowAlloc();
      *v436 = 0;
      _os_log_impl(&dword_22F0FC000, v434, v435, "No entities found in the container, returning...", v436, 2u);
      MEMORY[0x2319033A0](v436, -1, -1);
    }

    v41 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v489 + 8))(v528, v490);
    return v41;
  }

  while (2)
  {
    if (!sub_22F741A00())
    {
      goto LABEL_305;
    }

LABEL_3:
    v468 = v3;
    swift_bridgeObjectRetain_n();
    v52 = sub_22F740B70();
    v53 = sub_22F7415D0();
    v54 = os_log_type_enabled(v52, v53);
    v483 = v38;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 134217984;
      if (v51)
      {
        v38 = v525;
        v56 = sub_22F741A00();
      }

      else
      {
        v56 = *((v525 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v55 + 4) = v56;

      _os_log_impl(&dword_22F0FC000, v52, v53, "There are %ld potential entities.", v55, 0xCu);
      MEMORY[0x2319033A0](v55, -1, -1);
    }

    else
    {
    }

    v57 = v527;
    swift_beginAccess();
    v58 = *(v57 + 40);

    v491 = (sub_22F250878)();
    v526 = *(isUniquelyReferenced_nonNull_native + 16);
    v59 = v526 / 2;
    if (v526 / 2 <= 1)
    {
      v59 = 1;
    }

    *&v482 = v59;
    v60 = MEMORY[0x277D84F90];
    v535 = MEMORY[0x277D84F90];
    v475 = sub_22F14E83C(MEMORY[0x277D84F90]);
    v534 = v475;
    v508 = sub_22F14E214(v60);
    if (v51)
    {
      v63 = v525;
      v64 = sub_22F741A00();
      v61 = v63;
      v62 = v64;
    }

    else
    {
      v61 = v525;
      v62 = *((v525 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v513 = isUniquelyReferenced_nonNull_native;
    v469 = v6;
    if (!v62)
    {
      v225 = 0;
      v224 = MEMORY[0x277D84F90];
      v41 = MEMORY[0x277D84F98];
LABEL_115:

      v3 = sub_22F740B70();
      LOBYTE(v226) = sub_22F7415D0();
      v227 = os_log_type_enabled(v3, v226);
      v496 = v224;
      if (v227)
      {
        v228 = swift_slowAlloc();
        *v228 = 134217984;
        if (!(v224 >> 62))
        {
          v229 = *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_118;
        }

        goto LABEL_316;
      }

      while (1)
      {
        if (*v495 == 1)
        {

          v41 = sub_22F14E740(MEMORY[0x277D84F90]);
          (*(v489 + 8))(v528, v490);

          goto LABEL_362;
        }

        v531 = sub_22F36C3E4(v231);
        sub_22F243D88(&v531, &v534, v232, v233);
        v90 = &v515;
        v486 = v225;
        if (v225)
        {
          goto LABEL_373;
        }

        v38 = v531;
        if (*v495)
        {

          v41 = sub_22F14E740(MEMORY[0x277D84F90]);
          (*(v489 + 8))(v528, v490);
          goto LABEL_361;
        }

        while (1)
        {
          v500 = sub_22F741A00();
          v532 = MEMORY[0x277D84FA0];
          v225 = sub_22F741A00();
          if (!v225)
          {
            goto LABEL_319;
          }

LABEL_128:
          v51 = 0;
          v524 = v38 & 0xC000000000000001;
          v517 = v38 + 32;
          v510 = (v492 + 2);
          v512 = (v469 + 8);
          v494 = (v469 + 32);
          v509 = (v492 + 1);
          *&v234 = 136315138;
          v514 = v234;
          *&v234 = 136315394;
          v482 = v234;
          *&v234 = 136315906;
          v480 = v234;
          v520 = v38;
          v483 = v225;
LABEL_132:
          if (v524)
          {
            v6 = MEMORY[0x2319016F0](v51, v38);
            v235 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (v51 >= *(v38 + 16))
            {
              goto LABEL_296;
            }

            v6 = *(v517 + 8 * v51);

            v235 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_295;
            }
          }

          v522 = v235;
          v236 = v534;
          v237 = *(v534 + 16);
          v529 = v6;
          if (!v237)
          {
            goto LABEL_191;
          }

          v238 = *(v6 + 24);
          isUniquelyReferenced_nonNull_native = *(v6 + 32);

          v239 = sub_22F1229E8(v238, isUniquelyReferenced_nonNull_native);
          if ((v240 & 1) == 0)
          {
            break;
          }

          v493 = v238;
          v526 = v236;
          v241 = *(v236 + 56);
          *&v506 = v492[9];
          v505 = v492[2];
          v505(v502, v241 + v506 * v239, v516);
          v226 = v508;
          if (*(v508 + 16))
          {
            v501 = isUniquelyReferenced_nonNull_native;
            v242 = *(v6 + 24);
            v243 = *(v6 + 32);

            v3 = sub_22F1229E8(v242, v243);
            v245 = v244;
            isUniquelyReferenced_nonNull_native = v501;

            if (v245)
            {
              v246 = *(v226[7].isa + v3);
              v247 = v51 - 1;
              if (v51 < 1)
              {
                isUniquelyReferenced_nonNull_native = v519;
                v225 = v507;
                v38 = v520;
                goto LABEL_221;
              }

              isUniquelyReferenced_nonNull_native = v519;
              v38 = v520;
              while (1)
              {
                v523 = v247;
                if (v524)
                {
                  v248 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if (v247 >= *(v38 + 16))
                  {
                    goto LABEL_301;
                  }

                  v248 = *(v517 + 8 * v247);
                }

                v249 = *(v248 + 24);
                v51 = *(v248 + 32);
                v3 = *(v526 + 16);

                if (!v3 || (v250 = sub_22F1229E8(v249, v51), (v251 & 1) == 0))
                {

                  v226 = sub_22F740B70();
                  v276 = sub_22F7415E0();

                  if (os_log_type_enabled(v226, v276))
                  {
                    v277 = swift_slowAlloc();
                    v3 = swift_slowAlloc();
                    v531 = v3;
                    *v277 = v514;
                    v278 = sub_22F145F20(v249, v51, &v531);
                    v51 = v248;
                    v279 = v41;
                    v280 = v278;

                    *(v277 + 4) = v280;
                    v41 = v279;
                    _os_log_impl(&dword_22F0FC000, v226, v276, "Unable to find lifespan for entity %s", v277, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v3);
                    MEMORY[0x2319033A0](v3, -1, -1);
                    MEMORY[0x2319033A0](v277, -1, -1);
                  }

                  else
                  {
                  }

                  v281 = *(v529 + 24);
                  v6 = *(v529 + 32);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v531 = v41;
                  LOBYTE(v226) = v41;
                  v282 = sub_22F1229E8(v281, v6);
                  v284 = v41;
                  v285 = *(v41 + 16);
                  v286 = (v283 & 1) == 0;
                  v158 = __OFADD__(v285, v286);
                  v287 = v285 + v286;
                  if (v158)
                  {
                    goto LABEL_299;
                  }

                  v288 = v283;
                  if (*(v284 + 24) >= v287)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v226 = &v531;
                      v3 = v282;
                      sub_22F134340();
                      v282 = v3;
                    }
                  }

                  else
                  {
                    sub_22F1259D0(v287, isUniquelyReferenced_nonNull_native);
                    LOBYTE(v226) = v531;
                    v282 = sub_22F1229E8(v281, v6);
                    if ((v288 & 1) != (v289 & 1))
                    {
                      goto LABEL_372;
                    }
                  }

                  isUniquelyReferenced_nonNull_native = v519;
                  if (v288)
                  {
                    v3 = v282;

                    v41 = v531;
                    *(*(v531 + 56) + v3) = 8;
                  }

                  else
                  {
                    v41 = v531;
                    *(v531 + 8 * (v282 >> 6) + 64) |= 1 << v282;
                    v290 = (*(v41 + 48) + 16 * v282);
                    *v290 = v281;
                    v290[1] = v6;
                    *(*(v41 + 56) + v282) = 8;

                    v291 = *(v41 + 16);
                    v158 = __OFADD__(v291, 1);
                    v292 = v291 + 1;
                    if (v158)
                    {
                      goto LABEL_303;
                    }

                    *(v41 + 16) = v292;
                  }

                  goto LABEL_142;
                }

                v503 = v249;
                v511 = v51;
                v504 = v248;
                v530 = v41;
                v252 = v499;
                v505(v499, *(v526 + 56) + v250 * v506, v516);
                v253 = v521;
                sub_22F73F030();
                v254 = v502;
                sub_22F73F060();
                sub_22F1662C8(&qword_2810AC708);
                v255 = v518;
                LOBYTE(v226) = v518;
                v256 = sub_22F740DB0();
                v257 = *v512;
                (*v512)(isUniquelyReferenced_nonNull_native, v255);
                v257(v253, v255);
                if ((v256 & 1) == 0)
                {
                  (*v509)(v252, v516);

LABEL_220:
                  isUniquelyReferenced_nonNull_native = v519;
                  v225 = v507;
                  v41 = v530;
                  v38 = v520;
                  v6 = v529;
                  goto LABEL_221;
                }

                sub_22F73F060();
                v258 = v487;
                sub_22F73F030();
                v259 = v488;
                sub_22F73F030();
                v260 = sub_22F740DB0();
                v261 = (v260 & 1) == 0;
                if (v260)
                {
                  v262 = v258;
                }

                else
                {
                  v262 = v259;
                }

                if (v261)
                {
                  v259 = v258;
                }

                v257(v262, v255);
                (*v494)(v498, v259, v255);
                sub_22F73F590();
                v264 = v263;
                LOBYTE(v226) = v254;
                sub_22F73F080();
                v3 = v513;
                v266 = v255;
                if (v265 * v513[4] >= v264)
                {

                  v257(v498, v255);
                  v257(v497, v255);
                  (*v509)(v499, v516);
                  goto LABEL_220;
                }

                v225 = v257;
                v41 = v530;
                v38 = v520;
                v51 = v511;
                v267 = v503;
                if (!*(v508 + 16) || (v268 = sub_22F1229E8(v503, v511), (v269 & 1) == 0))
                {

                  v226 = sub_22F740B70();
                  v293 = sub_22F7415E0();

                  if (os_log_type_enabled(v226, v293))
                  {
                    v3 = swift_slowAlloc();
                    v294 = swift_slowAlloc();
                    v531 = v294;
                    *v3 = v514;
                    v295 = sub_22F145F20(v267, v51, &v531);

                    *(v3 + 4) = v295;
                    v41 = v530;
                    _os_log_impl(&dword_22F0FC000, v226, v293, "Unable to find important location presence for entity %s", v3, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v294);
                    MEMORY[0x2319033A0](v294, -1, -1);
                    MEMORY[0x2319033A0](v3, -1, -1);
                  }

                  else
                  {
                  }

                  v296 = *(v529 + 24);
                  v6 = *(v529 + 32);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v531 = v41;
                  LOBYTE(v226) = v41;
                  v228 = sub_22F1229E8(v296, v6);
                  v298 = v41;
                  v299 = *(v41 + 16);
                  v300 = (v297 & 1) == 0;
                  v158 = __OFADD__(v299, v300);
                  v301 = v299 + v300;
                  if (v158)
                  {
                    goto LABEL_310;
                  }

                  v41 = v297;
                  if (*(v298 + 24) >= v301)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v306 = v228;
                      sub_22F134340();
                      v228 = v306;
                    }
                  }

                  else
                  {
                    sub_22F1259D0(v301, isUniquelyReferenced_nonNull_native);
                    v228 = sub_22F1229E8(v296, v6);
                    if ((v41 & 1) != (v302 & 1))
                    {
                      goto LABEL_372;
                    }
                  }

                  v3 = v518;
                  isUniquelyReferenced_nonNull_native = v519;
                  v226 = v531;
                  if (v41)
                  {
                    *(*(v531 + 56) + v228) = 9;

                    v41 = v226;
                  }

                  else
                  {
                    *(v531 + 8 * (v228 >> 6) + 64) |= 1 << v228;
                    v303 = (v226[6].isa + 16 * v228);
                    *v303 = v296;
                    v303[1] = v6;
                    *(v226[7].isa + v228) = 9;
                    isa = v226[2].isa;
                    v158 = __OFADD__(isa, 1);
                    v305 = (isa + 1);
                    if (v158)
                    {
                      goto LABEL_315;
                    }

                    v41 = v226;
                    v226[2].isa = v305;
                  }

                  LOBYTE(v226) = v512;
                  v257(v498, v3);
                  v257(v497, v3);
                  (*v509)(v499, v516);
LABEL_142:
                  v225 = v507;
                  v6 = v529;
                  v247 = v523;
                  if ((v523 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_221;
                  }

                  continue;
                }

                v270 = *(*(v508 + 56) + 8 * v268);
                v271 = v501;

                v226 = sub_22F740B70();
                v272 = sub_22F7415C0();

                if (os_log_type_enabled(v226, v272))
                {
                  v273 = swift_slowAlloc();
                  v274 = swift_slowAlloc();
                  v531 = v274;
                  *v273 = v482;
                  *(v273 + 4) = sub_22F145F20(v493, v271, &v531);
                  *(v273 + 12) = 2080;
                  *(v273 + 14) = sub_22F145F20(v267, v51, &v531);
                  _os_log_impl(&dword_22F0FC000, v226, v272, "Entity %s's lifespan has significant overlap with %s's lifespan!", v273, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x2319033A0](v274, -1, -1);
                  v275 = v273;
                  v266 = v518;
                  v3 = v513;
                  MEMORY[0x2319033A0](v275, -1, -1);
                }

                if (v246 < v270 * *(v3 + 40))
                {
                  break;
                }

                LODWORD(v3) = v512;
                (v225)(v498, v266);
                (v225)(v497, v266);
                (*v509)(v499, v516);
                v247 = v523 - 1;
                isUniquelyReferenced_nonNull_native = v519;
                v225 = v507;
                v6 = v529;
                if (((v523 - 1) & 0x8000000000000000) != 0)
                {
                  goto LABEL_221;
                }
              }

              v405 = v501;

              v406 = v493;
              sub_22F10BBDC(&v531, v493, v405);

              v226 = sub_22F740B70();
              v407 = sub_22F7415D0();

              v408 = os_log_type_enabled(v226, v407);
              v481 = v225;
              if (v408)
              {
                v409 = swift_slowAlloc();
                v410 = swift_slowAlloc();
                v531 = v410;
                *v409 = v480;
                *(v409 + 4) = sub_22F145F20(v406, v405, &v531);
                *(v409 + 12) = 2048;
                *(v409 + 14) = v246;
                *(v409 + 22) = 2080;
                v411 = sub_22F145F20(v267, v51, &v531);

                *(v409 + 24) = v411;
                *(v409 + 32) = 2048;
                *(v409 + 34) = v270;
                _os_log_impl(&dword_22F0FC000, v226, v407, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v409, 0x2Au);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v410, -1, -1);
                MEMORY[0x2319033A0](v409, -1, -1);
              }

              else
              {
              }

              v38 = v520;
              v6 = v529;
              v412 = *(v529 + 24);
              v413 = *(v529 + 32);

              v414 = swift_isUniquelyReferenced_nonNull_native();
              v531 = v41;
              sub_22F1302A0(6, v412, v413, v414);

              v415 = v518;
              LOBYTE(v226) = v512;
              v416 = v481;
              v481(v498, v518);
              v416(v497, v415);
              (*v509)(v499, v516);
              v41 = v531;
              isUniquelyReferenced_nonNull_native = v519;
              v225 = v507;
LABEL_221:
              v3 = v501;
              if (sub_22F15E910(v493, v501, v532))
              {
                (*v509)(v502, v516);

                v225 = v483;
LABEL_131:
                v51 = v522;
                if (v522 == v225)
                {
                  goto LABEL_319;
                }

                goto LABEL_132;
              }

              if (v522 >= v500)
              {
LABEL_268:

LABEL_269:
                v225 = v483;
LABEL_270:
                v70 = v516;
                if (*v495 != 1)
                {
                  (*v509)(v502, v516);
                  goto LABEL_202;
                }

LABEL_288:
                v433 = v70;

                v41 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v509)(v502, v433);
                (*(v489 + 8))(v528, v490);

                goto LABEL_362;
              }

              v228 = v522;
              while (2)
              {
                v511 = v228;
                if (v524)
                {
                  v339 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if ((v228 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_312;
                  }

                  if (v228 >= *(v38 + 16))
                  {
                    goto LABEL_313;
                  }

                  v340 = *(v517 + 8 * v228);
                }

                v341 = *(v339 + 24);
                v342 = *(v339 + 32);
                v523 = v339;
                v3 = *(v526 + 16);

                if (v3)
                {
                  v343 = sub_22F1229E8(v341, v342);
                  if (v344)
                  {
                    v503 = v341;
                    v504 = v342;
                    v345 = v521;
                    v505(v225, *(v526 + 56) + v343 * v506, v516);
                    sub_22F73F030();
                    sub_22F73F060();
                    v3 = isUniquelyReferenced_nonNull_native;
                    isUniquelyReferenced_nonNull_native = sub_22F1662C8(&qword_2810AC708);
                    v346 = v518;
                    v347 = sub_22F740DB0();
                    v348 = *v512;
                    (*v512)(v3, v346);
                    v348(v345, v346);
                    if ((v347 & 1) == 0)
                    {
                      (*v509)(v225, v516);

LABEL_274:
                      v38 = v520;
                      v225 = v483;
                      v6 = v529;
                      goto LABEL_270;
                    }

                    v530 = v41;
                    sub_22F73F060();
                    v349 = v478;
                    sub_22F73F030();
                    v350 = v479;
                    sub_22F73F030();
                    v351 = sub_22F740DB0();
                    v352 = (v351 & 1) == 0;
                    if (v351)
                    {
                      v353 = v349;
                    }

                    else
                    {
                      v353 = v350;
                    }

                    if (v352)
                    {
                      v354 = v349;
                    }

                    else
                    {
                      v354 = v350;
                    }

                    v348(v353, v346);
                    (*v494)(v485, v354, v346);
                    sub_22F73F590();
                    v356 = v355;
                    sub_22F73F080();
                    v358 = v348;
                    if (v357 * v513[4] >= v356)
                    {

                      LODWORD(v3) = v512;
                      v348(v485, v346);
                      v348(v484, v346);
                      (*v509)(v507, v516);
                      v41 = v530;
                      goto LABEL_274;
                    }

                    v41 = v530;
                    v359 = v504;
                    v360 = v503;
                    if (*(v508 + 16))
                    {
                      v361 = sub_22F1229E8(v503, v504);
                      if (v362)
                      {
                        v481 = v348;
                        v363 = *(*(v508 + 56) + 8 * v361);
                        v364 = v501;

                        v365 = sub_22F740B70();
                        v366 = sub_22F7415C0();

                        v367 = os_log_type_enabled(v365, v366);
                        v225 = v507;
                        if (v367)
                        {
                          v368 = swift_slowAlloc();
                          v369 = v225;
                          v370 = v359;
                          v371 = swift_slowAlloc();
                          v531 = v371;
                          *v368 = v482;
                          *(v368 + 4) = sub_22F145F20(v493, v364, &v531);
                          *(v368 + 12) = 2080;
                          v372 = v370;
                          v225 = v369;
                          *(v368 + 14) = sub_22F145F20(v503, v372, &v531);
                          _os_log_impl(&dword_22F0FC000, v365, v366, "Entity %s's lifespan has significant overlap with %s's lifespan!", v368, 0x16u);
                          swift_arrayDestroy();
                          MEMORY[0x2319033A0](v371, -1, -1);
                          MEMORY[0x2319033A0](v368, -1, -1);
                        }

                        v226 = v518;
                        v38 = v520;
                        v6 = v529;
                        isUniquelyReferenced_nonNull_native = v519;
                        if (v246 < v363 * v513[5])
                        {
                          v417 = v501;

                          v418 = v493;
                          sub_22F10BBDC(&v531, v493, v417);

                          v419 = v504;

                          v420 = sub_22F740B70();
                          v421 = sub_22F7415D0();

                          if (os_log_type_enabled(v420, v421))
                          {
                            v422 = v419;
                            v423 = swift_slowAlloc();
                            v424 = swift_slowAlloc();
                            v531 = v424;
                            *v423 = v480;
                            v425 = sub_22F145F20(v418, v417, &v531);

                            *(v423 + 4) = v425;
                            *(v423 + 12) = 2048;
                            *(v423 + 14) = v246;
                            *(v423 + 22) = 2080;
                            v426 = sub_22F145F20(v503, v422, &v531);
                            v225 = v507;

                            *(v423 + 24) = v426;
                            *(v423 + 32) = 2048;
                            *(v423 + 34) = v363;
                            _os_log_impl(&dword_22F0FC000, v420, v421, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v423, 0x2Au);
                            swift_arrayDestroy();
                            MEMORY[0x2319033A0](v424, -1, -1);
                            MEMORY[0x2319033A0](v423, -1, -1);
                          }

                          else
                          {
                          }

                          v427 = *(v6 + 24);
                          v428 = *(v6 + 32);

                          v429 = swift_isUniquelyReferenced_nonNull_native();
                          v531 = v41;
                          sub_22F1302A0(6, v427, v428, v429);

                          v430 = v518;
                          LODWORD(v3) = v512;
                          isUniquelyReferenced_nonNull_native = v481;
                          v481(v485, v518);
                          (isUniquelyReferenced_nonNull_native)(v484, v430);
                          (*v509)(v225, v516);
                          v41 = v531;
                          v38 = v520;
                          goto LABEL_269;
                        }

                        v3 = v512;
                        v373 = v481;
                        v481(v485, v226);
                        v373(v484, v226);
                        (*v509)(v225, v516);
                        v374 = &v533;
                        v228 = v511 + 1;
                        if (__OFADD__(v511, 1))
                        {
                          goto LABEL_369;
                        }

                        goto LABEL_267;
                      }
                    }

                    v395 = sub_22F740B70();
                    v396 = sub_22F7415E0();

                    v397 = os_log_type_enabled(v395, v396);
                    v225 = v507;
                    v6 = v529;
                    if (v397)
                    {
                      v398 = swift_slowAlloc();
                      v399 = v359;
                      v400 = swift_slowAlloc();
                      v531 = v400;
                      *v398 = v514;
                      v401 = sub_22F145F20(v360, v399, &v531);

                      *(v398 + 4) = v401;
                      v41 = v530;
                      _os_log_impl(&dword_22F0FC000, v395, v396, "Unable to find important location presence for entity %s", v398, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v400);
                      MEMORY[0x2319033A0](v400, -1, -1);
                      MEMORY[0x2319033A0](v398, -1, -1);
                    }

                    else
                    {
                    }

                    v402 = *(v6 + 24);
                    v403 = *(v6 + 32);

                    v404 = swift_isUniquelyReferenced_nonNull_native();
                    v531 = v41;
                    sub_22F1302A0(9, v402, v403, v404);

                    v226 = v518;
                    v3 = v512;
                    v358(v485, v518);
                    v358(v484, v226);
                    (*v509)(v225, v516);
                    v41 = v531;
                    isUniquelyReferenced_nonNull_native = v519;
                    v38 = v520;
LABEL_266:
                    v228 = v511;
LABEL_267:
                    if (v228 >= v500)
                    {
                      goto LABEL_268;
                    }

                    continue;
                  }
                }

                break;
              }

              v226 = sub_22F740B70();
              v375 = sub_22F7415E0();

              if (os_log_type_enabled(v226, v375))
              {
                v376 = v341;
                v377 = v225;
                v378 = v342;
                v379 = swift_slowAlloc();
                v380 = swift_slowAlloc();
                v531 = v380;
                *v379 = v514;
                v381 = sub_22F145F20(v376, v378, &v531);
                v3 = v41;
                v382 = v381;
                v225 = v377;

                *(v379 + 4) = v382;
                v41 = v3;
                _os_log_impl(&dword_22F0FC000, v226, v375, "Unable to find lifespan for entity %s", v379, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v380);
                v383 = v380;
                v38 = v520;
                MEMORY[0x2319033A0](v383, -1, -1);
                MEMORY[0x2319033A0](v379, -1, -1);
              }

              else
              {
              }

              v384 = *(v6 + 24);
              v6 = *(v6 + 32);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v531 = v41;
              LOBYTE(v226) = v41;
              v228 = sub_22F1229E8(v384, v6);
              v386 = v41;
              v387 = *(v41 + 16);
              v388 = (v385 & 1) == 0;
              v158 = __OFADD__(v387, v388);
              v389 = v387 + v388;
              if (v158)
              {
                goto LABEL_309;
              }

              v390 = v385;
              if (*(v386 + 24) >= v389)
              {
                LOBYTE(v226) = v523;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v3 = v228;
                  sub_22F134340();
                  LOBYTE(v226) = v523;
                  v228 = v3;
                }

                isUniquelyReferenced_nonNull_native = v519;
                if ((v390 & 1) == 0)
                {
                  goto LABEL_255;
                }
              }

              else
              {
                sub_22F1259D0(v389, isUniquelyReferenced_nonNull_native);
                v228 = sub_22F1229E8(v384, v6);
                if ((v390 & 1) != (v391 & 1))
                {
                  goto LABEL_372;
                }

                isUniquelyReferenced_nonNull_native = v519;
                LOBYTE(v226) = v523;
                if ((v390 & 1) == 0)
                {
LABEL_255:
                  v41 = v531;
                  *(v531 + 8 * (v228 >> 6) + 64) |= 1 << v228;
                  v392 = (*(v41 + 48) + 16 * v228);
                  *v392 = v384;
                  v392[1] = v6;
                  *(*(v41 + 56) + v228) = 8;

                  v393 = *(v41 + 16);
                  v158 = __OFADD__(v393, 1);
                  v394 = v393 + 1;
                  if (v158)
                  {
                    goto LABEL_314;
                  }

                  *(v41 + 16) = v394;
                  goto LABEL_261;
                }
              }

              v3 = v228;

              v41 = v531;
              *(*(v531 + 56) + v3) = 8;

LABEL_261:
              v6 = v529;
              goto LABEL_266;
            }
          }

          v323 = sub_22F740B70();
          v324 = sub_22F7415E0();
          if (os_log_type_enabled(v323, v324))
          {
            v325 = swift_slowAlloc();
            isUniquelyReferenced_nonNull_native = swift_slowAlloc();
            v531 = isUniquelyReferenced_nonNull_native;
            *v325 = v514;
            v326 = *(v6 + 24);
            v327 = *(v529 + 32);

            v328 = sub_22F145F20(v326, v327, &v531);
            v6 = v529;

            *(v325 + 4) = v328;
            _os_log_impl(&dword_22F0FC000, v323, v324, "Unable to find important location presence for entity %s", v325, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
            MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
            MEMORY[0x2319033A0](v325, -1, -1);
          }

          else
          {
          }

          v329 = *(v6 + 24);
          v3 = *(v6 + 32);

          v330 = swift_isUniquelyReferenced_nonNull_native();
          v531 = v41;
          LOBYTE(v226) = v41;
          v228 = sub_22F1229E8(v329, v3);
          v332 = *(v41 + 16);
          v333 = (v331 & 1) == 0;
          v158 = __OFADD__(v332, v333);
          v334 = v332 + v333;
          if (v158)
          {
            goto LABEL_311;
          }

          isUniquelyReferenced_nonNull_native = v331;
          if (*(v41 + 24) >= v334)
          {
            if ((v330 & 1) == 0)
            {
              v432 = v228;
              sub_22F134340();
              v228 = v432;
            }
          }

          else
          {
            sub_22F1259D0(v334, v330);
            v228 = sub_22F1229E8(v329, v3);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v335 & 1))
            {
              goto LABEL_372;
            }
          }

          v38 = v520;
          v41 = v531;
          if (isUniquelyReferenced_nonNull_native)
          {
            *(*(v531 + 56) + v228) = 9;

LABEL_130:
            (*v509)(v502, v516);
            goto LABEL_131;
          }

          *(v531 + 8 * (v228 >> 6) + 64) |= 1 << v228;
          v336 = (*(v41 + 48) + 16 * v228);
          *v336 = v329;
          v336[1] = v3;
          *(*(v41 + 56) + v228) = 9;
          v337 = *(v41 + 16);
          v158 = __OFADD__(v337, 1);
          v338 = v337 + 1;
          if (!v158)
          {
            *(v41 + 16) = v338;

            goto LABEL_130;
          }

          __break(1u);
        }

LABEL_191:

        v307 = sub_22F740B70();
        v308 = sub_22F7415E0();
        if (os_log_type_enabled(v307, v308))
        {
          v309 = swift_slowAlloc();
          isUniquelyReferenced_nonNull_native = swift_slowAlloc();
          v531 = isUniquelyReferenced_nonNull_native;
          *v309 = v514;
          v310 = *(v6 + 24);
          v311 = *(v529 + 32);

          v312 = sub_22F145F20(v310, v311, &v531);
          v6 = v529;

          *(v309 + 4) = v312;
          _os_log_impl(&dword_22F0FC000, v307, v308, "Unable to find lifespan for entity %s", v309, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
          MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
          MEMORY[0x2319033A0](v309, -1, -1);
        }

        else
        {
        }

        v51 = *(v6 + 24);
        v3 = *(v6 + 32);

        v38 = swift_isUniquelyReferenced_nonNull_native();
        v531 = v41;
        LOBYTE(v226) = v41;
        v313 = sub_22F1229E8(v51, v3);
        v315 = *(v41 + 16);
        v316 = (v314 & 1) == 0;
        v158 = __OFADD__(v315, v316);
        v317 = v315 + v316;
        if (v158)
        {
          goto LABEL_300;
        }

        isUniquelyReferenced_nonNull_native = v314;
        if (*(v41 + 24) >= v317)
        {
          if ((v38 & 1) == 0)
          {
            v226 = &v531;
            v431 = v313;
            sub_22F134340();
            v313 = v431;
          }
        }

        else
        {
          sub_22F1259D0(v317, v38);
          LOBYTE(v226) = v531;
          v313 = sub_22F1229E8(v51, v3);
          if ((isUniquelyReferenced_nonNull_native & 1) != (v318 & 1))
          {
            goto LABEL_372;
          }
        }

        v38 = v520;
        if (isUniquelyReferenced_nonNull_native)
        {
          v319 = v313;

          v41 = v531;
          *(*(v531 + 56) + v319) = 8;
LABEL_202:

          goto LABEL_131;
        }

        v41 = v531;
        *(v531 + 8 * (v313 >> 6) + 64) |= 1 << v313;
        v320 = (*(v41 + 48) + 16 * v313);
        *v320 = v51;
        v320[1] = v3;
        *(*(v41 + 56) + v313) = 8;

        v321 = *(v41 + 16);
        v158 = __OFADD__(v321, 1);
        v322 = v321 + 1;
        if (!v158)
        {
          *(v41 + 16) = v322;
          goto LABEL_131;
        }

        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        v437 = v228;
        v229 = sub_22F741A00();
        v228 = v437;
LABEL_118:
        *(v228 + 4) = v229;
        v230 = v228;

        _os_log_impl(&dword_22F0FC000, v3, v226, "After filtering potential entities, there are %ld entities remaining.", v230, 0xCu);
        MEMORY[0x2319033A0](v230, -1, -1);
      }

      v225 = *(v531 + 16);
      v532 = MEMORY[0x277D84FA0];
      v500 = v225;
      if (v225)
      {
        goto LABEL_128;
      }

LABEL_319:

      v225 = sub_22F250860(v496, &v532);

      if (*v495)
      {

        v41 = sub_22F14E740(MEMORY[0x277D84F90]);
        (*(v489 + 8))(v528, v490);
LABEL_360:

LABEL_361:

LABEL_362:

        return v41;
      }

      *swift_slowAlloc() = 0;
      v438 = v225;
      v374 = (v225 & 0xFFFFFFFFFFFFFF8);
      v358 = (v225 >> 62);
      if (v225 >> 62)
      {
        goto LABEL_370;
      }

      v526 = v225 & 0xFFFFFFFFFFFFFF8;
      v225 = *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_323:
      v530 = v438 & 0xC000000000000001;
      v529 = v438;
      if (v225)
      {
        v439 = 0;
        v440 = v527 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode;
        do
        {
          if (v530)
          {
            v441 = MEMORY[0x2319016F0](v439, v438);
            v442 = v439 + 1;
            if (__OFADD__(v439, 1))
            {
LABEL_332:
              __break(1u);
              break;
            }
          }

          else
          {
            v374 = *(v526 + 16);
            if (v439 >= v374)
            {
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
LABEL_369:
              __break(1u);
LABEL_370:
              v526 = v374;
              sub_22F741A00();
              v466 = sub_22F741A00();
              v438 = v225;
              v225 = v466;
              goto LABEL_323;
            }

            v441 = *(v438 + 8 * v439 + 32);

            v442 = v439 + 1;
            if (__OFADD__(v439, 1))
            {
              goto LABEL_332;
            }
          }

          v443 = v41;
          v445 = *v440;
          v444 = *(v440 + 8);
          v446 = *(v441 + 16);
          v445();
          v41 = v443;

          v438 = v529;
          ++v439;
        }

        while (v442 != v225);
      }

      if (v358)
      {
        v447 = v438;
        v448 = sub_22F741A00();
        v438 = v447;
        v358 = v448;
        if (!v448)
        {
LABEL_357:

          v464 = v528;
          if (v468)
          {
            sub_22F242910(v41);
          }

          (*(v489 + 8))(v464, v490);
          goto LABEL_360;
        }
      }

      else
      {
        v358 = *(v526 + 16);
        if (!v358)
        {
          goto LABEL_357;
        }
      }

      v449 = 0;
      while (1)
      {
        if (v530)
        {
          v450 = MEMORY[0x2319016F0](v449, v438);
          v451 = (v449 + 1);
          if (__OFADD__(v449, 1))
          {
            goto LABEL_365;
          }
        }

        else
        {
          v374 = *(v526 + 16);
          if (v449 >= v374)
          {
            goto LABEL_368;
          }

          v450 = *(v438 + 8 * v449 + 32);

          v451 = (v449 + 1);
          if (__OFADD__(v449, 1))
          {
            goto LABEL_365;
          }
        }

        v453 = *(v450 + 24);
        v452 = *(v450 + 32);

        v225 = swift_isUniquelyReferenced_nonNull_native();
        v531 = v41;
        v455 = sub_22F1229E8(v453, v452);
        v456 = v41;
        v374 = *(v41 + 16);
        v457 = (v454 & 1) == 0;
        v458 = &v374[v457];
        if (__OFADD__(v374, v457))
        {
          goto LABEL_366;
        }

        v459 = v454;
        if (*(v456 + 24) >= v458)
        {

          if (v225)
          {
            if (v459)
            {
              goto LABEL_338;
            }
          }

          else
          {
            sub_22F134340();
            if (v459)
            {
              goto LABEL_338;
            }
          }
        }

        else
        {
          sub_22F1259D0(v458, v225);
          v460 = sub_22F1229E8(v453, v452);
          if ((v459 & 1) != (v461 & 1))
          {
            goto LABEL_372;
          }

          v455 = v460;

          if (v459)
          {
LABEL_338:

            v41 = v531;
            *(*(v531 + 56) + v455) = 0;
            goto LABEL_339;
          }
        }

        v41 = v531;
        *(v531 + 8 * (v455 >> 6) + 64) |= 1 << v455;
        v462 = (*(v41 + 48) + 16 * v455);
        *v462 = v453;
        v462[1] = v452;
        *(*(v41 + 56) + v455) = 0;
        v463 = *(v41 + 16);
        v158 = __OFADD__(v463, 1);
        v374 = (v463 + 1);
        if (v158)
        {
          goto LABEL_367;
        }

        *(v41 + 16) = v374;
LABEL_339:
        ++v449;
        v438 = v529;
        if (v451 == v358)
        {
          goto LABEL_357;
        }
      }
    }

    v505 = v41;
    v65 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
    v523 = v61 & 0xC000000000000001;

    LODWORD(v3) = v527;
    swift_beginAccess();
    v504 = v65;
    swift_beginAccess();
    v66 = v525;
    isUniquelyReferenced_nonNull_native = 0;
    v524 = 0;
    v510 = v525 & 0xFFFFFFFFFFFFFF8;
    v503 = (v6 + 16);
    v512 = (v6 + 8);
    v481 = (v492 + 2);
    v500 = (v492 + 1);
    v41 = MEMORY[0x277D84F98];
    *&v67 = 134218498;
    v506 = v67;
    *&v67 = 136315138;
    v480 = v67;
    *&v67 = 134219010;
    v470 = v67;
    *&v67 = 136315394;
    v467 = v67;
    v496 = MEMORY[0x277D84F90];
    v522 = v62;
    while (1)
    {
      if (v523)
      {
        v51 = MEMORY[0x2319016F0](isUniquelyReferenced_nonNull_native, v66);
        v71 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (isUniquelyReferenced_nonNull_native >= *(v510 + 16))
        {
          goto LABEL_290;
        }

        v51 = *(v66 + 8 * isUniquelyReferenced_nonNull_native + 32);

        v71 = isUniquelyReferenced_nonNull_native + 1;
        if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
        {
LABEL_287:
          __break(1u);
          goto LABEL_288;
        }
      }

      v529 = v71;
      v72 = *(v527 + 32);
      v73 = *(v72 + 16);
      v530 = v41;
      if (v73)
      {
        break;
      }

LABEL_37:
      v41 = MEMORY[0x277D84F90];
      v80 = MEMORY[0x277D84F90] >> 62;
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_74;
      }

LABEL_38:
      v81 = (v41 & 0xFFFFFFFFFFFFFF8);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) < v526)
      {
        goto LABEL_39;
      }

LABEL_43:
      v531 = v81;
      v89 = v524;
      sub_22F25089C(&v531);
      v90 = &v536;
      v524 = v89;
      if (v89)
      {
        goto LABEL_373;
      }

      v91 = v531;
      if ((v531 & 0x8000000000000000) != 0 || (v531 & 0x4000000000000000) != 0)
      {
        v199 = v531;
        v3 = sub_22F741A00();
        v91 = v199;
        if (!v3)
        {
LABEL_92:

          v200 = sub_22F740B70();
          v201 = sub_22F7415E0();
          if (os_log_type_enabled(v200, v201))
          {
            v202 = swift_slowAlloc();
            v6 = swift_slowAlloc();
            v531 = v6;
            *v202 = v480;
            v203 = *(v51 + 24);
            v204 = *(v51 + 32);

            v205 = sub_22F145F20(v203, v204, &v531);

            *(v202 + 4) = v205;
            _os_log_impl(&dword_22F0FC000, v200, v201, "Unable to find first moment for entity with uuid %s", v202, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v6);
            MEMORY[0x2319033A0](v6, -1, -1);
            MEMORY[0x2319033A0](v202, -1, -1);
          }

          else
          {
          }

          v206 = v530;
          v38 = *(v51 + 24);
          v3 = *(v51 + 32);

          v207 = swift_isUniquelyReferenced_nonNull_native();
          v531 = v206;
          v208 = sub_22F1229E8(v38, v3);
          v210 = *(v206 + 16);
          v211 = (v209 & 1) == 0;
          v158 = __OFADD__(v210, v211);
          v212 = v210 + v211;
          if (v158)
          {
            goto LABEL_298;
          }

          v6 = v209;
          if (*(v206 + 24) < v212)
          {
            sub_22F1259D0(v212, v207);
            v208 = sub_22F1229E8(v38, v3);
            if ((v6 & 1) != (v213 & 1))
            {
              goto LABEL_372;
            }

            goto LABEL_100;
          }

          if (v207)
          {
LABEL_100:
            if ((v6 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v220 = v208;
            sub_22F134340();
            v208 = v220;
            if ((v6 & 1) == 0)
            {
LABEL_111:
              v41 = v531;
              *(v531 + 8 * (v208 >> 6) + 64) |= 1 << v208;
              v221 = (*(v41 + 48) + 16 * v208);
              *v221 = v38;
              v221[1] = v3;
              *(*(v41 + 56) + v208) = 3;

              v222 = *(v41 + 16);
              v158 = __OFADD__(v222, 1);
              v219 = v222 + 1;
              if (v158)
              {
                goto LABEL_302;
              }

              goto LABEL_112;
            }
          }

          v214 = v208;

          v41 = v531;
          *(*(v531 + 56) + v214) = 3;
LABEL_102:

          goto LABEL_19;
        }
      }

      else
      {
        v3 = *(v531 + 16);
        if (!v3)
        {
          goto LABEL_92;
        }
      }

      *&v514 = isUniquelyReferenced_nonNull_native;
      v517 = v51;
      if ((v91 & 0xC000000000000001) != 0)
      {
        v215 = v91;
        v520 = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_371;
        }

        v94 = MEMORY[0x2319016F0](v3 - 1, v215);
      }

      else
      {
        v92 = *(v91 + 16);
        if (!v92)
        {
          goto LABEL_291;
        }

        v93 = v3 - 1;
        if (__OFSUB__(v3, 1))
        {
          goto LABEL_292;
        }

        if (v93 >= v92)
        {
          goto LABEL_293;
        }

        v94 = *(v91 + 32 + 8 * v93);
        v520 = *(v91 + 32);
      }

      v38 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
      v95 = [*(v94 + 16) universalStartDate];
      v96 = v521;
      sub_22F73F640();

      v97 = v509;
      v98 = v518;
      (*v503)(v509, v527 + v504, v518);
      v99 = v513;
      v100 = *v513;
      v101 = v519;
      sub_22F73F5E0();
      v102 = *v512;
      (*v512)(v97, v98);
      LOBYTE(v97) = sub_22F73F5D0();
      v102(v101, v98);
      v511 = v102;
      v102(v96, v98);
      if (v97)
      {

        swift_retain_n();
        v51 = v517;

        v103 = sub_22F740B70();
        v104 = sub_22F7415D0();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v531 = v38;
          *v105 = v506;
          *(v105 + 4) = v100 / 86400.0;
          *(v105 + 12) = 2080;
          v106 = *(v51 + 24);
          v107 = *(v51 + 32);

          v108 = sub_22F145F20(v106, v107, &v531);

          *(v105 + 14) = v108;
          *(v105 + 22) = 2080;
          v109 = [*(v94 + 16) universalStartDate];
          v110 = v521;
          sub_22F73F640();

          sub_22F1662C8(&qword_2810AC6F8);
          v111 = v518;
          v112 = sub_22F742010();
          v114 = v113;

          v511(v110, v111);
          v115 = sub_22F145F20(v112, v114, &v531);

          *(v105 + 24) = v115;
          _os_log_impl(&dword_22F0FC000, v103, v104, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v105, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v38, -1, -1);
          MEMORY[0x2319033A0](v105, -1, -1);
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = v514;
        v3 = *(v51 + 24);
        v6 = *(v51 + 32);

        v68 = v530;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v531 = v68;
        sub_22F1302A0(1, v3, v6, v69);
      }

      else
      {
        v116 = [*(v520 + 16) universalStartDate];
        sub_22F73F640();

        v501 = v94;
        v117 = [*(v94 + 16) universalStartDate];
        sub_22F73F640();

        v118 = v505;
        sub_22F73F040();
        sub_22F73F080();
        v119 = v99[1];
        v51 = v517;
        if (v120 >= v119)
        {
          v162 = sub_22F250878(v41);

          sub_22F241D04(v491, v162, v482, v528);
          v164 = v163;

          isUniquelyReferenced_nonNull_native = v514;
          if (v164 <= 1.0)
          {
            v177 = v513[3];
            v41 = v530;
            if (v164 >= v177)
            {
              v189 = *(v51 + 24);
              v190 = *(v51 + 32);
              v191 = v477;
              (*v481)(v477, v505, v516);

              v192 = v534;
              v193 = swift_isUniquelyReferenced_nonNull_native();
              v531 = v192;
              sub_22F130088(v191, v189, v190, v193);

              v475 = v531;
              v534 = v531;
              v194 = *(v51 + 24);
              v6 = *(v51 + 32);

              v195 = v508;
              v196 = swift_isUniquelyReferenced_nonNull_native();
              v531 = v195;
              sub_22F12FF10(v194, v6, v196, v164);

              v508 = v531;

              MEMORY[0x231900D00](v197);
              if (*((v535 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v535 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v223 = *((v535 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22F7411C0();
              }

              sub_22F741220();
              v496 = v535;
              LODWORD(v3) = v501;
              if (*v495 == 1)
              {

                swift_bridgeObjectRelease_n();

                v41 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v500)(v505, v516);
                (*(v489 + 8))(v528, v490);

                return v41;
              }

              (*v500)(v505, v516);

              goto LABEL_102;
            }

            v178 = sub_22F740B70();
            v179 = sub_22F7415D0();
            if (os_log_type_enabled(v178, v179))
            {
              v180 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v531 = v181;
              *v180 = v506;
              *(v180 + 4) = v177;
              *(v180 + 12) = 2080;
              v182 = v41;
              v183 = *(v51 + 24);
              v184 = *(v51 + 32);

              v185 = sub_22F145F20(v183, v184, &v531);
              v41 = v182;

              *(v180 + 14) = v185;
              *(v180 + 22) = 2048;
              *(v180 + 24) = v164;
              _os_log_impl(&dword_22F0FC000, v178, v179, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v180, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v181);
              MEMORY[0x2319033A0](v181, -1, -1);
              MEMORY[0x2319033A0](v180, -1, -1);
            }

            else
            {
            }

            v3 = *(v51 + 24);
            v6 = *(v51 + 32);

            v198 = swift_isUniquelyReferenced_nonNull_native();
            v531 = v41;
            sub_22F1302A0(5, v3, v6, v198);

            (*v500)(v505, v516);
          }

          else
          {

            v165 = sub_22F740B70();
            v166 = sub_22F7415E0();
            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v531 = v168;
              *v167 = v467;
              v169 = *(v51 + 24);
              v170 = *(v51 + 32);

              v171 = sub_22F145F20(v169, v170, &v531);

              *(v167 + 4) = v171;
              *(v167 + 12) = 2048;
              *(v167 + 14) = v164;
              _os_log_impl(&dword_22F0FC000, v165, v166, "Entity %s has invalid location presence %f!", v167, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v168);
              MEMORY[0x2319033A0](v168, -1, -1);
              MEMORY[0x2319033A0](v167, -1, -1);
            }

            else
            {
            }

            v186 = v530;
            v187 = v505;
            v3 = *(v51 + 24);
            v6 = *(v51 + 32);

            v188 = swift_isUniquelyReferenced_nonNull_native();
            v531 = v186;
            sub_22F1302A0(7, v3, v6, v188);

            (*v500)(v187, v516);
          }
        }

        else
        {

          v121 = *v481;
          v122 = v483;
          v123 = v516;
          (*v481)();
          v124 = v493;
          v121(v493, v118, v123);
          v125 = v494;
          v121(v494, v118, v123);

          v126 = sub_22F740B70();
          v127 = sub_22F7415D0();

          v128 = os_log_type_enabled(v126, v127);
          v129 = v500;
          v486 = v500 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          isUniquelyReferenced_nonNull_native = v514;
          if (v128)
          {
            v130 = swift_slowAlloc();
            v473 = v126;
            v131 = v130;
            v474 = swift_slowAlloc();
            v531 = v474;
            *v131 = v470;
            *(v131 + 4) = v119 / 86400.0;
            *(v131 + 12) = 2080;
            v132 = *(v51 + 24);
            v133 = *(v51 + 32);

            v134 = sub_22F145F20(v132, v133, &v531);

            *(v131 + 14) = v134;
            *(v131 + 22) = 2080;
            v472 = v127;
            v135 = v521;
            v136 = v122;
            sub_22F73F060();
            v471 = sub_22F1662C8(&qword_2810AC6F8);
            v137 = v518;
            v138 = sub_22F742010();
            v140 = v139;
            v511(v135, v137);
            v38 = *v500;
            (*v500)(v136, v123);
            v141 = sub_22F145F20(v138, v140, &v531);

            *(v131 + 24) = v141;
            *(v131 + 32) = 2080;
            v142 = v493;
            sub_22F73F030();
            v143 = sub_22F742010();
            v145 = v144;
            v511(v135, v137);
            v51 = v517;
            (v38)(v142, v123);
            v146 = sub_22F145F20(v143, v145, &v531);

            *(v131 + 34) = v146;
            *(v131 + 42) = 2048;
            v147 = v494;
            sub_22F73F080();
            v149 = v148;
            (v38)(v147, v123);
            *(v131 + 44) = v149 / 86400.0;
            v150 = v473;
            _os_log_impl(&dword_22F0FC000, v473, v472, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v131, 0x34u);
            v151 = v474;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v151, -1, -1);
            MEMORY[0x2319033A0](v131, -1, -1);
          }

          else
          {

            v38 = *v129;
            (*v129)(v125, v123);
            (v38)(v124, v123);
            (v38)(v122, v123);
          }

          v3 = *(v51 + 24);
          v6 = *(v51 + 32);

          v175 = v530;
          v176 = swift_isUniquelyReferenced_nonNull_native();
          v531 = v175;
          sub_22F1302A0(2, v3, v6, v176);

          (v38)(v505, v123);
        }
      }

      v41 = v531;
LABEL_19:
      v66 = v525;
      ++isUniquelyReferenced_nonNull_native;
      if (v529 == v522)
      {

        v224 = v496;
        v225 = v524;
        goto LABEL_115;
      }
    }

    v74 = *(v51 + 24);
    v38 = *(v51 + 32);

    v75 = sub_22F1229E8(v74, v38);
    v6 = v76;

    if ((v6 & 1) == 0)
    {
      goto LABEL_36;
    }

    v3 = *(*(v72 + 56) + 8 * v75);

    if ((v3 & 0xC000000000000001) != 0)
    {
      v77 = sub_22F741A00();
      if (v77)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    v77 = *(v3 + 16);
    if (!v77)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_30:
    if (v77 < 1)
    {
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v41 = swift_allocObject();
      v78 = _swift_stdlib_malloc_size(v41);
      v79 = v78 - 32;
      if (v78 < 32)
      {
        v79 = v78 - 25;
      }

      *(v41 + 16) = v77;
      *(v41 + 24) = (2 * (v79 >> 3)) | 1;
    }

    v38 = sub_22F11A590(&v531, (v41 + 32), v77, v3);
    sub_22F0FF590();
    if (v38 != v77)
    {
      goto LABEL_297;
    }

    v80 = v41 >> 62;
    if (!(v41 >> 62))
    {
      goto LABEL_38;
    }

LABEL_74:
    if (sub_22F741A00() < v526)
    {
LABEL_39:

      v82 = sub_22F740B70();
      v83 = sub_22F7415D0();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v531 = v6;
        *v84 = v506;
        *(v84 + 4) = v526;
        *(v84 + 12) = 2080;
        v86 = *(v51 + 24);
        v85 = *(v51 + 32);

        v87 = sub_22F145F20(v86, v85, &v531);

        *(v84 + 14) = v87;
        *(v84 + 22) = 2048;
        if (v80)
        {
          v88 = sub_22F741A00();
        }

        else
        {
          v88 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v84 + 24) = v88;

        _os_log_impl(&dword_22F0FC000, v82, v83, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v84, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x2319033A0](v6, -1, -1);
        MEMORY[0x2319033A0](v84, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v38 = *(v51 + 24);
      v3 = *(v51 + 32);

      v152 = v530;
      v153 = swift_isUniquelyReferenced_nonNull_native();
      v531 = v152;
      v154 = sub_22F1229E8(v38, v3);
      v156 = *(v152 + 16);
      v157 = (v155 & 1) == 0;
      v158 = __OFADD__(v156, v157);
      v159 = v156 + v157;
      if (v158)
      {
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
LABEL_298:
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        __break(1u);
LABEL_303:
        __break(1u);
        continue;
      }

      v6 = v155;
      if (*(v152 + 24) >= v159)
      {
        if ((v153 & 1) == 0)
        {
          v216 = v154;
          sub_22F134340();
          v154 = v216;
          if ((v6 & 1) == 0)
          {
LABEL_106:
            v41 = v531;
            *(v531 + 8 * (v154 >> 6) + 64) |= 1 << v154;
            v217 = (*(v41 + 48) + 16 * v154);
            *v217 = v38;
            v217[1] = v3;
            *(*(v41 + 56) + v154) = 4;

            v218 = *(v41 + 16);
            v158 = __OFADD__(v218, 1);
            v219 = v218 + 1;
            if (v158)
            {
              goto LABEL_294;
            }

LABEL_112:
            *(v41 + 16) = v219;
            goto LABEL_19;
          }

          goto LABEL_67;
        }
      }

      else
      {
        sub_22F1259D0(v159, v153);
        v154 = sub_22F1229E8(v38, v3);
        if ((v6 & 1) != (v160 & 1))
        {
          goto LABEL_372;
        }
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_67:
      v161 = v154;

      v41 = v531;
      *(*(v531 + 56) + v161) = 4;
      goto LABEL_102;
    }

    break;
  }

  v172 = sub_22F741A00();
  if (!v172)
  {
    v81 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v173 = v172;
  v81 = sub_22F120B48(v172, 0);

  sub_22F3CC8CC((v81 + 4), v173, v41);
  v38 = v174;

  if (v38 == v173)
  {
    goto LABEL_43;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_22F7420C0();
  __break(1u);
LABEL_373:

  __break(1u);
  return result;
}

uint64_t sub_22F27D3B4(uint64_t a1, uint64_t a2, int a3)
{
  v467 = a3;
  v5 = sub_22F73F690();
  isUniquelyReferenced_nonNull_native = *(v5 - 8);
  v7 = *(isUniquelyReferenced_nonNull_native + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v500 = (&v458 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v479 = &v458 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v478 = &v458 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v491 = &v458 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v490 = &v458 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v458 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v470 = &v458 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v475 = &v458 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v474 = &v458 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v509 = (&v458 - v28);
  MEMORY[0x28223BE20](v27);
  v511 = &v458 - v29;
  v506 = sub_22F73F090();
  v484 = *(v506 - 8);
  isa = v484[8].isa;
  v31 = MEMORY[0x28223BE20](v506);
  v469 = &v458 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v486 = &v458 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v485 = (&v458 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v458 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v458 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v492 = &v458 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v476 = &v458 - v46;
  MEMORY[0x28223BE20](v45);
  v494 = &v458 - v47;
  v481 = sub_22F740B90();
  v480 = *(v481 - 8);
  v48 = *(v480 + 64);
  MEMORY[0x28223BE20](v481);
  v50 = &v458 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = swift_slowAlloc();
  *v487 = 0;
  v518 = v50;
  sub_22F740B80();
  swift_beginAccess();
  v517 = a1;
  v51 = *(a1 + 24);
  v52 = v51 >> 62;
  v515 = v51;
  if (!(v51 >> 62))
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_309:
    v426 = sub_22F740B70();
    v427 = sub_22F7415D0();
    if (os_log_type_enabled(v426, v427))
    {
      v428 = swift_slowAlloc();
      *v428 = 0;
      _os_log_impl(&dword_22F0FC000, v426, v427, "No entities found in the container, returning...", v428, 2u);
      MEMORY[0x2319033A0](v428, -1, -1);
    }

    v42 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v480 + 8))(v518, v481);
    return v42;
  }

LABEL_308:
  if (!sub_22F741A00())
  {
    goto LABEL_309;
  }

LABEL_3:
  v465 = v20;
  swift_bridgeObjectRetain_n();
  v53 = sub_22F740B70();
  v54 = sub_22F7415D0();
  v55 = os_log_type_enabled(v53, v54);
  v482 = v39;
  if (v55)
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    if (v52)
    {
      v57 = sub_22F741A00();
    }

    else
    {
      v57 = *((v515 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v56 + 4) = v57;

    _os_log_impl(&dword_22F0FC000, v53, v54, "There are %ld potential entities.", v56, 0xCu);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

  else
  {
  }

  v58 = v517;
  swift_beginAccess();
  v59 = *(v58 + 40);

  v483 = sub_22F250878(v468);
  v516 = *(a2 + 16);
  v60 = v516 / 2;
  if (v516 / 2 <= 1)
  {
    v60 = 1;
  }

  *&v473 = v60;
  v61 = MEMORY[0x277D84F90];
  v524 = MEMORY[0x277D84F90];
  v39 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v523 = v39;
  v499 = sub_22F14E214(v61);
  if (v52)
  {
    v63 = v515;
    v64 = sub_22F741A00();
    v62 = v63;
    v20 = v64;
  }

  else
  {
    v62 = v515;
    v20 = *((v515 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v504 = a2;
  v508 = v5;
  v459 = isUniquelyReferenced_nonNull_native;
  if (v20)
  {
    v466 = v39;
    v497 = v42;
    v65 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
    v513 = v62 & 0xC000000000000001;

    swift_beginAccess();
    v496 = v65;
    swift_beginAccess();
    v66 = v515;
    v5 = 0;
    v514 = 0;
    v501 = v515 & 0xFFFFFFFFFFFFFF8;
    v495 = (isUniquelyReferenced_nonNull_native + 16);
    v503 = (isUniquelyReferenced_nonNull_native + 8);
    v472 = v484 + 2;
    v489 = &v484[1];
    v42 = MEMORY[0x277D84F98];
    *&v67 = 134218498;
    v498 = v67;
    *&v67 = 136315138;
    v471 = v67;
    *&v67 = 134219010;
    v460 = v67;
    *&v67 = 136315394;
    v458 = v67;
    v488 = MEMORY[0x277D84F90];
    v512 = v20;
    while (1)
    {
      if (v513)
      {
        v52 = MEMORY[0x2319016F0](v5, v66);
        v72 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_291;
        }
      }

      else
      {
        if (v5 >= *(v501 + 16))
        {
          goto LABEL_294;
        }

        v52 = *(v66 + 8 * v5 + 32);

        v72 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_291:
          __break(1u);
LABEL_292:
          v425 = v71;

          v42 = sub_22F14E740(MEMORY[0x277D84F90]);

          (v500->isa)(v494, v425);
          (*(v480 + 8))(v518, v481);

          goto LABEL_366;
        }
      }

      v519 = v72;
      v20 = *(v517 + 32);
      v73 = *(v20 + 16);
      v520 = v42;
      if (!v73)
      {
        goto LABEL_37;
      }

      v74 = *(v52 + 24);
      a2 = *(v52 + 32);

      v75 = sub_22F1229E8(v74, a2);
      v39 = v76;

      if ((v39 & 1) == 0)
      {
        goto LABEL_36;
      }

      v77 = *(*(v20 + 56) + 8 * v75);

      if ((v77 & 0xC000000000000001) != 0)
      {
        v20 = sub_22F741A00();
        if (!v20)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v20 = *(v77 + 16);
        if (!v20)
        {
LABEL_36:

LABEL_37:
          v42 = MEMORY[0x277D84F90];
          v80 = MEMORY[0x277D84F90] >> 62;
          if (!(MEMORY[0x277D84F90] >> 62))
          {
            goto LABEL_38;
          }

          goto LABEL_74;
        }
      }

      if (v20 < 1)
      {
        v42 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v42 = swift_allocObject();
        v78 = _swift_stdlib_malloc_size(v42);
        v79 = v78 - 32;
        if (v78 < 32)
        {
          v79 = v78 - 25;
        }

        *(v42 + 16) = v20;
        *(v42 + 24) = (2 * (v79 >> 3)) | 1;
      }

      a2 = sub_22F11A590(&v521, (v42 + 32), v20, v77);
      sub_22F0FF590();
      if (a2 != v20)
      {
        goto LABEL_301;
      }

      v80 = v42 >> 62;
      if (!(v42 >> 62))
      {
LABEL_38:
        v81 = (v42 & 0xFFFFFFFFFFFFFF8);
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) < v516)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }

LABEL_74:
      if (sub_22F741A00() < v516)
      {
LABEL_39:

        v82 = sub_22F740B70();
        v83 = sub_22F7415D0();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v521 = v39;
          *v84 = v498;
          *(v84 + 4) = v516;
          *(v84 + 12) = 2080;
          v86 = *(v52 + 24);
          v85 = *(v52 + 32);

          v87 = sub_22F145F20(v86, v85, &v521);

          *(v84 + 14) = v87;
          *(v84 + 22) = 2048;
          if (v80)
          {
            v88 = sub_22F741A00();
          }

          else
          {
            v88 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v84 + 24) = v88;

          _os_log_impl(&dword_22F0FC000, v82, v83, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v84, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x2319033A0](v39, -1, -1);
          MEMORY[0x2319033A0](v84, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        a2 = *(v52 + 24);
        v152 = *(v52 + 32);

        v20 = v520;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v521 = v20;
        v153 = sub_22F1229E8(a2, v152);
        v155 = *(v20 + 16);
        v156 = (v154 & 1) == 0;
        v157 = __OFADD__(v155, v156);
        v158 = v155 + v156;
        if (v157)
        {
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        v39 = v154;
        if (*(v20 + 24) < v158)
        {
          sub_22F1259D0(v158, isUniquelyReferenced_nonNull_native);
          v20 = v521;
          v153 = sub_22F1229E8(a2, v152);
          if ((v39 & 1) != (v159 & 1))
          {
            goto LABEL_378;
          }

          goto LABEL_66;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_66:
          if ((v39 & 1) == 0)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v20 = &v521;
          v213 = v153;
          sub_22F134340();
          v153 = v213;
          if ((v39 & 1) == 0)
          {
LABEL_106:
            v42 = v521;
            *(v521 + 8 * (v153 >> 6) + 64) |= 1 << v153;
            v214 = (*(v42 + 48) + 16 * v153);
            *v214 = a2;
            v214[1] = v152;
            *(*(v42 + 56) + v153) = 4;

            v215 = *(v42 + 16);
            v157 = __OFADD__(v215, 1);
            v216 = v215 + 1;
            if (v157)
            {
              goto LABEL_298;
            }

LABEL_112:
            *(v42 + 16) = v216;
            goto LABEL_19;
          }
        }

        v160 = v153;

        v42 = v521;
        *(*(v521 + 56) + v160) = 4;
        goto LABEL_102;
      }

      v170 = sub_22F741A00();
      if (v170)
      {
        v20 = v170;
        v81 = sub_22F120B48(v170, 0);

        sub_22F3CC8CC((v81 + 4), v20, v42);
        a2 = v171;

        if (a2 != v20)
        {
          __break(1u);
LABEL_377:
          __break(1u);
          goto LABEL_378;
        }
      }

      else
      {
        v81 = MEMORY[0x277D84F90];
      }

LABEL_43:
      v521 = v81;
      v89 = v514;
      sub_22F25089C(&v521);
      v90 = &v525;
      v514 = v89;
      if (v89)
      {
        goto LABEL_379;
      }

      v91 = v521;
      if (v521 < 0 || (v521 & 0x4000000000000000) != 0)
      {
        v20 = v521;
        v92 = sub_22F741A00();
        v91 = v20;
        if (!v92)
        {
LABEL_92:

          v198 = sub_22F740B70();
          v199 = sub_22F7415E0();
          if (os_log_type_enabled(v198, v199))
          {
            v200 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v521 = v39;
            *v200 = v471;
            v201 = *(v52 + 24);
            v202 = *(v52 + 32);

            v203 = sub_22F145F20(v201, v202, &v521);

            *(v200 + 4) = v203;
            _os_log_impl(&dword_22F0FC000, v198, v199, "Unable to find first moment for entity with uuid %s", v200, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            MEMORY[0x2319033A0](v39, -1, -1);
            MEMORY[0x2319033A0](v200, -1, -1);
          }

          else
          {
          }

          v20 = v520;
          a2 = *(v52 + 24);
          v204 = *(v52 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v521 = v20;
          v205 = sub_22F1229E8(a2, v204);
          v207 = *(v20 + 16);
          v208 = (v206 & 1) == 0;
          v157 = __OFADD__(v207, v208);
          v209 = v207 + v208;
          if (v157)
          {
            goto LABEL_302;
          }

          v39 = v206;
          if (*(v20 + 24) < v209)
          {
            sub_22F1259D0(v209, isUniquelyReferenced_nonNull_native);
            v20 = v521;
            v205 = sub_22F1229E8(a2, v204);
            if ((v39 & 1) != (v210 & 1))
            {
              goto LABEL_378;
            }

            goto LABEL_100;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_100:
            if ((v39 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v20 = &v521;
            v217 = v205;
            sub_22F134340();
            v205 = v217;
            if ((v39 & 1) == 0)
            {
LABEL_111:
              v42 = v521;
              *(v521 + 8 * (v205 >> 6) + 64) |= 1 << v205;
              v218 = (*(v42 + 48) + 16 * v205);
              *v218 = a2;
              v218[1] = v204;
              *(*(v42 + 56) + v205) = 3;

              v219 = *(v42 + 16);
              v157 = __OFADD__(v219, 1);
              v216 = v219 + 1;
              if (v157)
              {
                goto LABEL_306;
              }

              goto LABEL_112;
            }
          }

          v211 = v205;

          v42 = v521;
          *(*(v521 + 56) + v211) = 3;
LABEL_102:

          goto LABEL_19;
        }
      }

      else
      {
        v92 = *(v521 + 16);
        if (!v92)
        {
          goto LABEL_92;
        }
      }

      v505 = v5;
      v507 = v52;
      if ((v91 & 0xC000000000000001) != 0)
      {
        v212 = v91;
        *&v510 = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v92, 1))
        {
          goto LABEL_377;
        }

        v95 = MEMORY[0x2319016F0](v92 - 1, v212);
      }

      else
      {
        v93 = *(v91 + 16);
        if (!v93)
        {
          goto LABEL_295;
        }

        v94 = v92 - 1;
        if (__OFSUB__(v92, 1))
        {
          goto LABEL_296;
        }

        if (v94 >= v93)
        {
          goto LABEL_297;
        }

        v95 = *(v91 + 32 + 8 * v94);
        *&v510 = *(v91 + 32);
      }

      a2 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
      v96 = [*(v95 + 16) universalStartDate];
      isUniquelyReferenced_nonNull_native = v511;
      sub_22F73F640();

      v97 = v500;
      v98 = v508;
      (*v495)(v500, v496 + v517, v508);
      v99 = v504;
      v100 = *v504;
      v101 = v509;
      sub_22F73F5E0();
      v102 = *v503;
      (*v503)(v97, v98);
      LOBYTE(v97) = sub_22F73F5D0();
      v102(v101, v98);
      v502 = v102;
      v102(isUniquelyReferenced_nonNull_native, v98);
      if (v97)
      {

        swift_retain_n();
        v52 = v507;

        v103 = sub_22F740B70();
        isUniquelyReferenced_nonNull_native = sub_22F7415D0();
        a2 = v95;
        if (os_log_type_enabled(v103, isUniquelyReferenced_nonNull_native))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v521 = v105;
          *v104 = v498;
          *(v104 + 4) = v100 / 86400.0;
          *(v104 + 12) = 2080;
          v106 = *(v52 + 24);
          v107 = *(v52 + 32);

          v108 = sub_22F145F20(v106, v107, &v521);

          *(v104 + 14) = v108;
          *(v104 + 22) = 2080;
          v109 = [*(a2 + 16) universalStartDate];
          v110 = v511;
          sub_22F73F640();

          sub_22F1662C8(&qword_2810AC6F8);
          v111 = v508;
          v112 = sub_22F742010();
          v114 = v113;

          v502(v110, v111);
          v115 = sub_22F145F20(v112, v114, &v521);

          *(v104 + 24) = v115;
          _os_log_impl(&dword_22F0FC000, v103, isUniquelyReferenced_nonNull_native, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v104, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v105, -1, -1);
          MEMORY[0x2319033A0](v104, -1, -1);
        }

        else
        {
        }

        v5 = v505;
        v68 = *(v52 + 24);
        v39 = *(v52 + 32);

        v69 = v520;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v521 = v69;
        sub_22F1302A0(1, v68, v39, v70);
      }

      else
      {
        v116 = [*(v510 + 16) universalStartDate];
        sub_22F73F640();

        v493 = v95;
        v117 = [*(v95 + 16) universalStartDate];
        sub_22F73F640();

        v118 = v497;
        sub_22F73F040();
        sub_22F73F080();
        v119 = v99[1];
        v52 = v507;
        if (v120 >= v119)
        {
          v161 = sub_22F250878(v42);

          sub_22F241D1C(v483, v161, v473, v518);
          v163 = v162;

          v5 = v505;
          if (v163 <= 1.0)
          {
            v175 = v504[3];
            v42 = v520;
            if (v163 >= v175)
            {
              v187 = *(v52 + 24);
              v188 = *(v52 + 32);
              v189 = v469;
              (v472->isa)(v469, v497, v506);

              v190 = v523;
              v191 = swift_isUniquelyReferenced_nonNull_native();
              v521 = v190;
              sub_22F130088(v189, v187, v188, v191);

              v466 = v521;
              v523 = v521;
              v192 = *(v52 + 24);
              v39 = *(v52 + 32);

              v193 = v499;
              v194 = swift_isUniquelyReferenced_nonNull_native();
              v521 = v193;
              sub_22F12FF10(v192, v39, v194, v163);

              v499 = v521;

              MEMORY[0x231900D00](v195);
              if (*((v524 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v220 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22F7411C0();
              }

              sub_22F741220();
              v488 = v524;
              if (*v487 == 1)
              {

                swift_bridgeObjectRelease_n();

                v42 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v489)(v497, v506);
                (*(v480 + 8))(v518, v481);

                return v42;
              }

              (*v489)(v497, v506);

              goto LABEL_102;
            }

            v176 = sub_22F740B70();
            v177 = sub_22F7415D0();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = swift_slowAlloc();
              v179 = swift_slowAlloc();
              v521 = v179;
              *v178 = v498;
              *(v178 + 4) = v175;
              *(v178 + 12) = 2080;
              v180 = v42;
              v181 = *(v52 + 24);
              v182 = *(v52 + 32);

              isUniquelyReferenced_nonNull_native = sub_22F145F20(v181, v182, &v521);
              v42 = v180;

              *(v178 + 14) = isUniquelyReferenced_nonNull_native;
              *(v178 + 22) = 2048;
              *(v178 + 24) = v163;
              _os_log_impl(&dword_22F0FC000, v176, v177, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v178, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v179);
              MEMORY[0x2319033A0](v179, -1, -1);
              MEMORY[0x2319033A0](v178, -1, -1);
            }

            else
            {
            }

            v196 = *(v52 + 24);
            v39 = *(v52 + 32);

            v197 = swift_isUniquelyReferenced_nonNull_native();
            v521 = v42;
            sub_22F1302A0(5, v196, v39, v197);

            (*v489)(v497, v506);
          }

          else
          {

            v164 = sub_22F740B70();
            v165 = sub_22F7415E0();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              v167 = swift_slowAlloc();
              v521 = v167;
              *v166 = v458;
              v168 = *(v52 + 24);
              v169 = *(v52 + 32);

              isUniquelyReferenced_nonNull_native = sub_22F145F20(v168, v169, &v521);

              *(v166 + 4) = isUniquelyReferenced_nonNull_native;
              *(v166 + 12) = 2048;
              *(v166 + 14) = v163;
              _os_log_impl(&dword_22F0FC000, v164, v165, "Entity %s has invalid location presence %f!", v166, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v167);
              MEMORY[0x2319033A0](v167, -1, -1);
              MEMORY[0x2319033A0](v166, -1, -1);
            }

            else
            {
            }

            v183 = v520;
            v184 = v497;
            v185 = *(v52 + 24);
            v39 = *(v52 + 32);

            v186 = swift_isUniquelyReferenced_nonNull_native();
            v521 = v183;
            sub_22F1302A0(7, v185, v39, v186);

            (*v489)(v184, v506);
          }
        }

        else
        {

          v121 = v472->isa;
          v122 = v482;
          v123 = v506;
          (v472->isa)(v482, v118, v506);
          isUniquelyReferenced_nonNull_native = v485;
          (v121)(v485, v118, v123);
          v124 = v486;
          (v121)(v486, v118, v123);

          v125 = sub_22F740B70();
          a2 = sub_22F7415D0();

          v126 = os_log_type_enabled(v125, a2);
          v127 = v489;
          v477 = v489 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v5 = v505;
          if (v126)
          {
            v128 = swift_slowAlloc();
            v463 = v125;
            v129 = v128;
            v464 = swift_slowAlloc();
            v521 = v464;
            *v129 = v460;
            *(v129 + 4) = v119 / 86400.0;
            *(v129 + 12) = 2080;
            v130 = v127;
            v131 = *(v52 + 24);
            v132 = *(v52 + 32);

            v133 = sub_22F145F20(v131, v132, &v521);

            *(v129 + 14) = v133;
            *(v129 + 22) = 2080;
            v134 = v511;
            sub_22F73F060();
            v461 = sub_22F1662C8(&qword_2810AC6F8);
            v135 = v508;
            v136 = sub_22F742010();
            v462 = a2;
            v138 = v137;
            v139 = v502;
            v502(v134, v135);
            v140 = *v130;
            (*v130)(v482, v123);
            v141 = sub_22F145F20(v136, v138, &v521);
            v142 = v140;

            *(v129 + 24) = v141;
            *(v129 + 32) = 2080;
            a2 = v485;
            sub_22F73F030();
            v143 = sub_22F742010();
            v145 = v144;
            v146 = v134;
            isUniquelyReferenced_nonNull_native = v486;
            v139(v146, v135);
            v52 = v507;
            v142(a2, v123);
            v147 = sub_22F145F20(v143, v145, &v521);

            *(v129 + 34) = v147;
            *(v129 + 42) = 2048;
            sub_22F73F080();
            v149 = v148;
            v142(isUniquelyReferenced_nonNull_native, v123);
            *(v129 + 44) = v149 / 86400.0;
            v150 = v463;
            _os_log_impl(&dword_22F0FC000, v463, v462, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v129, 0x34u);
            v151 = v464;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v151, -1, -1);
            MEMORY[0x2319033A0](v129, -1, -1);
          }

          else
          {

            v142 = *v127;
            (*v127)(v124, v123);
            v142(isUniquelyReferenced_nonNull_native, v123);
            v142(v122, v123);
          }

          v172 = *(v52 + 24);
          v39 = *(v52 + 32);

          v173 = v520;
          v174 = swift_isUniquelyReferenced_nonNull_native();
          v521 = v173;
          sub_22F1302A0(2, v172, v39, v174);

          v142(v497, v123);
        }
      }

      v42 = v521;
LABEL_19:
      v66 = v515;
      v20 = v512;
      ++v5;
      if (v519 == v512)
      {

        v221 = v488;
        v39 = v466;
        v222 = v514;
        goto LABEL_115;
      }
    }
  }

  v222 = 0;
  v221 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F98];
LABEL_115:

  v223 = sub_22F740B70();
  v20 = sub_22F7415D0();
  v224 = os_log_type_enabled(v223, v20);
  v488 = v221;
  if (v224)
  {
    v225 = swift_slowAlloc();
    *v225 = 134217984;
    if (!(v221 >> 62))
    {
      v226 = *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_118;
    }

    goto LABEL_320;
  }

LABEL_120:
  if (*v487 == 1)
  {

    v42 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v480 + 8))(v518, v481);

    goto LABEL_366;
  }

  v521 = sub_22F36C410(v228);
  sub_22F243DC8(&v521, &v523);
  v90 = &v507;
  v477 = v222;
  if (v222)
  {
    goto LABEL_379;
  }

  v222 = v521;
  if (*v487)
  {

    v42 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v480 + 8))(v518, v481);
    goto LABEL_365;
  }

  if ((v521 & 0x8000000000000000) == 0 && (v521 & 0x4000000000000000) == 0)
  {
    v230 = *(v521 + 16);
    v522 = MEMORY[0x277D84FA0];
    v486 = v230;
    v231 = v230;
    if (v230)
    {
      goto LABEL_128;
    }

LABEL_323:

    v5 = sub_22F250860(v488, &v522);

    if (*v487)
    {

      v42 = sub_22F14E740(MEMORY[0x277D84F90]);
      goto LABEL_364;
    }

    v398 = v5 >> 62;
    v519 = v5;
    if (v5 >> 62)
    {
      goto LABEL_374;
    }

    v430 = v5 & 0xFFFFFFFFFFFFFF8;
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v516 = v5 >> 62;
      v520 = v42;
      v431 = swift_slowAlloc();
      *v431 = 0;
      v432 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_328;
    }

LABEL_339:
    v439 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v439)
    {
LABEL_362:

      if (v467)
      {
        sub_22F243228(v42);
      }

LABEL_364:
      (*(v480 + 8))(v518, v481);

LABEL_365:

LABEL_366:

      return v42;
    }

LABEL_342:
    v440 = 0;
    v520 = v5 & 0xC000000000000001;
    v398 = &v526;
    v517 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v520)
      {
        v441 = MEMORY[0x2319016F0](v440, v5);
        v442 = v440 + 1;
        if (__OFADD__(v440, 1))
        {
          goto LABEL_368;
        }
      }

      else
      {
        if (v440 >= *(v517 + 16))
        {
          goto LABEL_372;
        }

        v441 = *(v5 + 8 * v440 + 32);

        v442 = v440 + 1;
        if (__OFADD__(v440, 1))
        {
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          v516 = v398;
          v520 = v42;
          v430 = v5 & 0xFFFFFFFFFFFFFF8;
          if (!sub_22F741A00())
          {
            v42 = v520;
            v5 = v519;
LABEL_341:
            v439 = sub_22F741A00();
            if (!v439)
            {
              goto LABEL_362;
            }

            goto LABEL_342;
          }

          v431 = swift_slowAlloc();
          *v431 = 0;
          v432 = sub_22F741A00();
          v5 = v519;
LABEL_328:
          v433 = 0;
          v398 = v517;
          v434 = v517 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode;
          v42 = v5 & 0xC000000000000001;
          while (v432 != v433)
          {
            if (v42)
            {
              v435 = MEMORY[0x2319016F0](v433, v5);
              if (__OFADD__(v433, 1))
              {
                goto LABEL_337;
              }
            }

            else
            {
              if (v433 >= *(v430 + 16))
              {
                goto LABEL_370;
              }

              v435 = *(v5 + 8 * v433 + 32);

              if (__OFADD__(v433, 1))
              {
LABEL_337:
                __break(1u);
                break;
              }
            }

            v437 = *v434;
            v436 = *(v434 + 8);
            v438 = *(v435 + 16);
            v437();

            v5 = v519;
            LOBYTE(v436) = *v431;

            ++v433;
            if (v436)
            {
              break;
            }
          }

          v42 = v520;
          if (v516)
          {
            goto LABEL_341;
          }

          goto LABEL_339;
        }
      }

      v5 = *(v441 + 24);
      v443 = *(v441 + 32);

      v444 = swift_isUniquelyReferenced_nonNull_native();
      v521 = v42;
      v446 = sub_22F1229E8(v5, v443);
      v447 = v42;
      v448 = *(v42 + 16);
      v398 = (v445 & 1) == 0;
      v449 = v448 + v398;
      if (__OFADD__(v448, v398))
      {
        goto LABEL_369;
      }

      v450 = v445;
      if (*(v447 + 24) >= v449)
      {

        if (v444)
        {
          if (v450)
          {
            goto LABEL_343;
          }
        }

        else
        {
          sub_22F134340();
          if (v450)
          {
            goto LABEL_343;
          }
        }
      }

      else
      {
        sub_22F1259D0(v449, v444);
        v451 = sub_22F1229E8(v5, v443);
        if ((v450 & 1) != (v452 & 1))
        {
          goto LABEL_378;
        }

        v446 = v451;

        if (v450)
        {
LABEL_343:

          v42 = v521;
          *(*(v521 + 56) + v446) = 0;
          goto LABEL_344;
        }
      }

      v42 = v521;
      v453 = v521 + 8 * (v446 >> 6);
      v398 = *(v453 + 64) | (1 << v446);
      *(v453 + 64) = v398;
      v454 = (*(v42 + 48) + 16 * v446);
      *v454 = v5;
      v454[1] = v443;
      *(*(v42 + 56) + v446) = 0;
      v455 = *(v42 + 16);
      v157 = __OFADD__(v455, 1);
      v456 = v455 + 1;
      if (v157)
      {
        goto LABEL_371;
      }

      *(v42 + 16) = v456;
LABEL_344:
      ++v440;
      v5 = v519;
      if (v442 == v439)
      {
        goto LABEL_362;
      }
    }
  }

  while (1)
  {
    v486 = sub_22F741A00();
    v522 = MEMORY[0x277D84FA0];
    v231 = sub_22F741A00();
    if (!v231)
    {
      goto LABEL_323;
    }

LABEL_128:
    v5 = 0;
    v516 = v222 & 0xC000000000000001;
    v512 = v222 + 32;
    v501 = &v484[2];
    v505 = (v459 + 8);
    v485 = (v459 + 32);
    v500 = v484 + 1;
    *&v229 = 136315138;
    v510 = v229;
    *&v229 = 136315394;
    v473 = v229;
    *&v229 = 136315906;
    v471 = v229;
    v503 = v222;
    v507 = v231;
    while (2)
    {
      v52 = v5;
      if (v516)
      {
        v39 = MEMORY[0x2319016F0](v5, v222);
        isUniquelyReferenced_nonNull_native = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      else
      {
        if (v5 >= *(v222 + 16))
        {
          goto LABEL_300;
        }

        v39 = *(v512 + 8 * v5);

        isUniquelyReferenced_nonNull_native = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      v232 = v523;
      v233 = *(v523 + 16);
      v519 = v39;
      if (!v233)
      {
        goto LABEL_191;
      }

      a2 = *(v39 + 24);
      v234 = *(v39 + 32);

      v235 = sub_22F1229E8(a2, v234);
      if ((v236 & 1) == 0)
      {

LABEL_191:

        v309 = sub_22F740B70();
        v310 = sub_22F7415E0();
        if (os_log_type_enabled(v309, v310))
        {
          v311 = swift_slowAlloc();
          a2 = swift_slowAlloc();
          v521 = a2;
          *v311 = v510;
          v312 = *(v39 + 24);
          v313 = *(v519 + 32);

          v314 = sub_22F145F20(v312, v313, &v521);
          v39 = v519;

          *(v311 + 4) = v314;
          _os_log_impl(&dword_22F0FC000, v309, v310, "Unable to find lifespan for entity %s", v311, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(a2);
          MEMORY[0x2319033A0](a2, -1, -1);
          MEMORY[0x2319033A0](v311, -1, -1);
        }

        else
        {
        }

        v52 = *(v39 + 24);
        v223 = *(v39 + 32);

        v5 = swift_isUniquelyReferenced_nonNull_native();
        v521 = v42;
        v20 = v42;
        v315 = sub_22F1229E8(v52, v223);
        v317 = *(v42 + 16);
        v318 = (v316 & 1) == 0;
        v157 = __OFADD__(v317, v318);
        v319 = v317 + v318;
        if (v157)
        {
          goto LABEL_304;
        }

        a2 = v316;
        if (*(v42 + 24) >= v319)
        {
          if ((v5 & 1) == 0)
          {
            v20 = &v521;
            v420 = v315;
            sub_22F134340();
            v315 = v420;
            v5 = isUniquelyReferenced_nonNull_native;
            if (a2)
            {
LABEL_200:
              v20 = v315;

              v42 = v521;
              *(*(v521 + 56) + v20) = 8;
              goto LABEL_201;
            }

            goto LABEL_288;
          }
        }

        else
        {
          sub_22F1259D0(v319, v5);
          v20 = v521;
          v315 = sub_22F1229E8(v52, v223);
          if ((a2 & 1) != (v320 & 1))
          {
            goto LABEL_378;
          }
        }

        v5 = isUniquelyReferenced_nonNull_native;
        if (a2)
        {
          goto LABEL_200;
        }

LABEL_288:
        v42 = v521;
        *(v521 + 8 * (v315 >> 6) + 64) |= 1 << v315;
        v421 = (*(v42 + 48) + 16 * v315);
        *v421 = v52;
        v421[1] = v223;
        *(*(v42 + 56) + v315) = 8;

        v422 = *(v42 + 16);
        v157 = __OFADD__(v422, 1);
        v423 = v422 + 1;
        if (!v157)
        {
          *(v42 + 16) = v423;
          goto LABEL_131;
        }

        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        v429 = v225;
        v226 = sub_22F741A00();
        v225 = v429;
LABEL_118:
        *(v225 + 4) = v226;
        v227 = v225;

        _os_log_impl(&dword_22F0FC000, v223, v20, "After filtering potential entities, there are %ld entities remaining.", v227, 0xCu);
        MEMORY[0x2319033A0](v227, -1, -1);

        goto LABEL_120;
      }

      v482 = a2;
      *&v498 = v234;
      v489 = isUniquelyReferenced_nonNull_native;
      v502 = v232;
      v237 = *(v232 + 56);
      v497 = v484[9].isa;
      v496 = v484[2].isa;
      v496(v494, v237 + v497 * v235, v506);
      v20 = v499;
      if (*(v499 + 16))
      {
        v238 = *(v39 + 24);
        a2 = *(v39 + 32);

        v239 = sub_22F1229E8(v238, a2);
        v241 = v240;

        if (v241)
        {
          v242 = *(*(v20 + 56) + 8 * v239);
          v243 = v52 - 1;
          if (v52 >= 1)
          {
            a2 = v509;
            v5 = v511;
            v52 = v502;
            while (1)
            {
              while (1)
              {
                v513 = v243;
                if (v516)
                {
                  v245 = MEMORY[0x2319016F0]();
                }

                else
                {
                  if (v243 >= *(v222 + 16))
                  {
                    goto LABEL_305;
                  }

                  v246 = *(v512 + 8 * v243);
                }

                v248 = *(v245 + 24);
                v247 = *(v245 + 32);
                v514 = v245;
                v249 = *(v52 + 16);

                if (v249)
                {
                  v250 = sub_22F1229E8(v248, v247);
                  if (v251)
                  {
                    break;
                  }
                }

                v275 = sub_22F740B70();
                v276 = sub_22F7415E0();

                if (os_log_type_enabled(v275, v276))
                {
                  v277 = swift_slowAlloc();
                  v278 = swift_slowAlloc();
                  v521 = v278;
                  *v277 = v510;
                  v279 = v42;
                  v280 = sub_22F145F20(v248, v247, &v521);

                  *(v277 + 4) = v280;
                  v42 = v279;
                  v222 = v503;
                  _os_log_impl(&dword_22F0FC000, v275, v276, "Unable to find lifespan for entity %s", v277, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v278);
                  MEMORY[0x2319033A0](v278, -1, -1);
                  MEMORY[0x2319033A0](v277, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = *(v519 + 24);
                v39 = *(v519 + 32);

                v5 = swift_isUniquelyReferenced_nonNull_native();
                v521 = v42;
                v20 = v42;
                v281 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
                v283 = v42;
                v284 = *(v42 + 16);
                v285 = (v282 & 1) == 0;
                v157 = __OFADD__(v284, v285);
                v286 = v284 + v285;
                if (v157)
                {
                  goto LABEL_303;
                }

                v287 = v282;
                if (*(v283 + 24) >= v286)
                {
                  if ((v5 & 1) == 0)
                  {
                    v20 = &v521;
                    v307 = v281;
                    sub_22F134340();
                    v281 = v307;
                  }
                }

                else
                {
                  sub_22F1259D0(v286, v5);
                  v20 = v521;
                  v281 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
                  if ((v287 & 1) != (v288 & 1))
                  {
                    goto LABEL_378;
                  }
                }

                a2 = v509;
                v5 = v511;
                if (v287)
                {
                  v244 = v281;

                  v42 = v521;
                  *(*(v521 + 56) + v244) = 8;
                }

                else
                {
                  v42 = v521;
                  *(v521 + 8 * (v281 >> 6) + 64) |= 1 << v281;
                  v289 = (*(v42 + 48) + 16 * v281);
                  *v289 = isUniquelyReferenced_nonNull_native;
                  v289[1] = v39;
                  *(*(v42 + 56) + v281) = 8;

                  v290 = *(v42 + 16);
                  v157 = __OFADD__(v290, 1);
                  v291 = v290 + 1;
                  if (v157)
                  {
                    goto LABEL_307;
                  }

                  *(v42 + 16) = v291;
                }

LABEL_142:
                v39 = v519;
                v243 = v513;
                if (v513 < 0)
                {
                  goto LABEL_219;
                }
              }

              v495 = v248;
              v493 = v247;
              v520 = v42;
              v252 = v492;
              v496(v492, *(v52 + 56) + v250 * v497, v506);
              sub_22F73F030();
              v253 = v494;
              sub_22F73F060();
              sub_22F1662C8(&qword_2810AC708);
              isUniquelyReferenced_nonNull_native = v508;
              v20 = v508;
              v254 = sub_22F740DB0();
              v255 = *v505;
              (*v505)(a2, isUniquelyReferenced_nonNull_native);
              v255(v5, isUniquelyReferenced_nonNull_native);
              if ((v254 & 1) == 0)
              {
                (v500->isa)(v252, v506);

LABEL_217:
                a2 = v509;
                v5 = v511;
                v42 = v520;
                v222 = v503;
                v39 = v519;
                goto LABEL_218;
              }

              sub_22F73F060();
              a2 = v478;
              sub_22F73F030();
              v256 = v479;
              sub_22F73F030();
              v257 = sub_22F740DB0();
              v258 = (v257 & 1) == 0;
              if (v257)
              {
                v259 = a2;
              }

              else
              {
                v259 = v256;
              }

              if (v258)
              {
                v256 = a2;
              }

              v255(v259, isUniquelyReferenced_nonNull_native);
              (*v485)(v491, v256, isUniquelyReferenced_nonNull_native);
              sub_22F73F590();
              v261 = v260;
              v20 = v253;
              sub_22F73F080();
              v223 = v504;
              v263 = isUniquelyReferenced_nonNull_native;
              if (v262 * v504[4] >= v261)
              {

                v255(v491, isUniquelyReferenced_nonNull_native);
                v255(v490, isUniquelyReferenced_nonNull_native);
                (v500->isa)(v492, v506);
                goto LABEL_217;
              }

              v264 = v255;
              v42 = v520;
              v265 = v493;
              if (!*(v499 + 16) || (v266 = sub_22F1229E8(v495, v493), (v267 & 1) == 0))
              {

                v292 = sub_22F740B70();
                v293 = sub_22F7415E0();

                v294 = os_log_type_enabled(v292, v293);
                v222 = v492;
                v52 = v502;
                if (v294)
                {
                  v223 = swift_slowAlloc();
                  v295 = swift_slowAlloc();
                  v521 = v295;
                  *v223 = v510;
                  v296 = sub_22F145F20(v495, v265, &v521);

                  *(v223 + 4) = v296;
                  v42 = v520;
                  _os_log_impl(&dword_22F0FC000, v292, v293, "Unable to find important location presence for entity %s", v223, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v295);
                  MEMORY[0x2319033A0](v295, -1, -1);
                  MEMORY[0x2319033A0](v223, -1, -1);
                }

                else
                {
                }

                isUniquelyReferenced_nonNull_native = *(v519 + 24);
                v39 = *(v519 + 32);

                v297 = swift_isUniquelyReferenced_nonNull_native();
                v521 = v42;
                v20 = v42;
                v225 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
                v299 = v42;
                v300 = *(v42 + 16);
                v301 = (v298 & 1) == 0;
                v157 = __OFADD__(v300, v301);
                v302 = v300 + v301;
                if (v157)
                {
                  goto LABEL_314;
                }

                v42 = v298;
                if (*(v299 + 24) >= v302)
                {
                  if ((v297 & 1) == 0)
                  {
                    v308 = v225;
                    sub_22F134340();
                    v225 = v308;
                  }
                }

                else
                {
                  sub_22F1259D0(v302, v297);
                  v225 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
                  if ((v42 & 1) != (v303 & 1))
                  {
                    goto LABEL_378;
                  }
                }

                v223 = v508;
                a2 = v509;
                v5 = v511;
                v20 = v521;
                if (v42)
                {
                  *(*(v521 + 56) + v225) = 9;

                  v42 = v20;
                }

                else
                {
                  *(v521 + 8 * (v225 >> 6) + 64) |= 1 << v225;
                  v304 = (*(v20 + 48) + 16 * v225);
                  *v304 = isUniquelyReferenced_nonNull_native;
                  v304[1] = v39;
                  *(*(v20 + 56) + v225) = 9;
                  v305 = *(v20 + 16);
                  v157 = __OFADD__(v305, 1);
                  v306 = v305 + 1;
                  if (v157)
                  {
                    goto LABEL_319;
                  }

                  v42 = v20;
                  *(v20 + 16) = v306;
                }

                v20 = v505;
                v264(v491, v223);
                v264(v490, v223);
                (v500->isa)(v222, v506);
                v222 = v503;
                goto LABEL_142;
              }

              v268 = *(*(v499 + 56) + 8 * v266);
              v269 = v498;

              v20 = sub_22F740B70();
              isUniquelyReferenced_nonNull_native = sub_22F7415C0();

              v270 = os_log_type_enabled(v20, isUniquelyReferenced_nonNull_native);
              v271 = v492;
              v52 = v502;
              if (v270)
              {
                v272 = swift_slowAlloc();
                v273 = swift_slowAlloc();
                v521 = v273;
                *v272 = v473;
                *(v272 + 4) = sub_22F145F20(v482, v269, &v521);
                *(v272 + 12) = 2080;
                *(v272 + 14) = sub_22F145F20(v495, v265, &v521);
                _os_log_impl(&dword_22F0FC000, v20, isUniquelyReferenced_nonNull_native, "Entity %s's lifespan has significant overlap with %s's lifespan!", v272, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v273, -1, -1);
                v274 = v272;
                v263 = v508;
                v223 = v504;
                MEMORY[0x2319033A0](v274, -1, -1);
              }

              if (v242 < v268 * *(v223 + 40))
              {
                v399 = v498;

                v400 = v482;
                sub_22F10BBDC(&v521, v482, v399);

                isUniquelyReferenced_nonNull_native = sub_22F740B70();
                v401 = sub_22F7415D0();

                if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v401))
                {
                  v402 = swift_slowAlloc();
                  v472 = isUniquelyReferenced_nonNull_native;
                  isUniquelyReferenced_nonNull_native = v402;
                  v513 = swift_slowAlloc();
                  v521 = v513;
                  *isUniquelyReferenced_nonNull_native = v471;
                  *(isUniquelyReferenced_nonNull_native + 4) = sub_22F145F20(v400, v399, &v521);
                  *(isUniquelyReferenced_nonNull_native + 12) = 2048;
                  *(isUniquelyReferenced_nonNull_native + 14) = v242;
                  *(isUniquelyReferenced_nonNull_native + 22) = 2080;
                  v403 = sub_22F145F20(v495, v265, &v521);

                  *(isUniquelyReferenced_nonNull_native + 24) = v403;
                  v263 = v508;
                  *(isUniquelyReferenced_nonNull_native + 32) = 2048;
                  v52 = v502;
                  *(isUniquelyReferenced_nonNull_native + 34) = v268;
                  v404 = v472;
                  _os_log_impl(&dword_22F0FC000, v472, v401, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", isUniquelyReferenced_nonNull_native, 0x2Au);
                  v405 = v513;
                  swift_arrayDestroy();
                  MEMORY[0x2319033A0](v405, -1, -1);
                  MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                }

                else
                {
                }

                v39 = v519;
                v406 = *(v519 + 24);
                v407 = *(v519 + 32);

                v408 = swift_isUniquelyReferenced_nonNull_native();
                v521 = v42;
                v20 = &v521;
                sub_22F1302A0(6, v406, v407, v408);

                v264(v491, v263);
                v264(v490, v263);
                (v500->isa)(v271, v506);
                v42 = v521;
                a2 = v509;
                v5 = v511;
                v222 = v503;
                goto LABEL_219;
              }

              v264(v491, v263);
              v264(v490, v263);
              (v500->isa)(v271, v506);
              v243 = v513 - 1;
              a2 = v509;
              v5 = v511;
              v222 = v503;
              v39 = v519;
              if (v513 - 1 < 0)
              {
                goto LABEL_219;
              }
            }
          }

          a2 = v509;
          v5 = v511;
LABEL_218:
          v52 = v502;
LABEL_219:
          if (sub_22F15E910(v482, v498, v522))
          {
            (v500->isa)(v494, v506);

            v5 = v489;
            if (v489 == v507)
            {
              goto LABEL_323;
            }

            continue;
          }

          v223 = v489;
          if (v489 >= v486)
          {

            v5 = v223;
            goto LABEL_274;
          }

          v225 = v489;
LABEL_224:
          v513 = v225;
          if (v516)
          {
            v337 = MEMORY[0x2319016F0]();
          }

          else
          {
            if ((v225 & 0x8000000000000000) != 0)
            {
              goto LABEL_316;
            }

            if (v225 >= *(v222 + 16))
            {
              goto LABEL_317;
            }

            v338 = *(v512 + 8 * v225);
          }

          v339 = *(v337 + 24);
          v340 = *(v337 + 32);
          v514 = v337;
          v223 = *(v52 + 16);

          if (v223)
          {
            v341 = sub_22F1229E8(v339, v340);
            if (v342)
            {
              v493 = v339;
              v495 = v340;
              v343 = v476;
              v496(v476, *(v52 + 56) + v341 * v497, v506);
              v344 = v494;
              sub_22F73F030();
              sub_22F73F060();
              sub_22F1662C8(&qword_2810AC708);
              v345 = a2;
              isUniquelyReferenced_nonNull_native = v5;
              a2 = v508;
              v20 = sub_22F740DB0();
              v346 = *v505;
              (*v505)(v345, a2);
              v346(v5, a2);
              if ((v20 & 1) == 0)
              {
                (v500->isa)(v343, v506);

                goto LABEL_273;
              }

              v520 = v42;
              sub_22F73F060();
              v347 = v470;
              sub_22F73F030();
              isUniquelyReferenced_nonNull_native = v465;
              sub_22F73F030();
              v348 = sub_22F740DB0();
              v349 = (v348 & 1) == 0;
              if (v348)
              {
                v350 = v347;
              }

              else
              {
                v350 = isUniquelyReferenced_nonNull_native;
              }

              if (v349)
              {
                v351 = v347;
              }

              else
              {
                v351 = isUniquelyReferenced_nonNull_native;
              }

              v346(v350, a2);
              (*v485)(v475, v351, a2);
              sub_22F73F590();
              v353 = v352;
              v20 = v344;
              sub_22F73F080();
              v355 = v346;
              if (v354 * v504[4] >= v353)
              {

                v346(v475, a2);
                v346(v474, a2);
                (v500->isa)(v476, v506);
                v42 = v520;
LABEL_273:
                v222 = v503;
                v5 = v489;
                v39 = v519;
LABEL_274:
                v71 = v506;
                if (*v487 == 1)
                {
                  goto LABEL_292;
                }

                (v500->isa)(v494, v506);
LABEL_201:

LABEL_131:
                if (v5 == v507)
                {
                  goto LABEL_323;
                }

                continue;
              }

              v42 = v520;
              v222 = v503;
              v52 = v502;
              isUniquelyReferenced_nonNull_native = v495;
              if (*(v499 + 16))
              {
                v356 = sub_22F1229E8(v493, v495);
                if (v357)
                {
                  v472 = v346;
                  v358 = *(*(v499 + 56) + 8 * v356);
                  v359 = v498;

                  v360 = sub_22F740B70();
                  v361 = sub_22F7415C0();

                  if (os_log_type_enabled(v360, v361))
                  {
                    v362 = swift_slowAlloc();
                    v363 = v52;
                    v364 = v222;
                    v365 = isUniquelyReferenced_nonNull_native;
                    v366 = swift_slowAlloc();
                    v521 = v366;
                    *v362 = v473;
                    *(v362 + 4) = sub_22F145F20(v482, v359, &v521);
                    *(v362 + 12) = 2080;
                    v367 = v493;
                    v368 = v365;
                    v222 = v364;
                    v52 = v363;
                    *(v362 + 14) = sub_22F145F20(v493, v368, &v521);
                    _os_log_impl(&dword_22F0FC000, v360, v361, "Entity %s's lifespan has significant overlap with %s's lifespan!", v362, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v366, -1, -1);
                    MEMORY[0x2319033A0](v362, -1, -1);

                    v20 = v508;
                    v39 = v519;
                  }

                  else
                  {

                    v20 = v508;
                    v39 = v519;
                    v367 = v493;
                  }

                  a2 = v509;
                  v5 = v511;
                  if (v242 < v358 * v504[5])
                  {
                    v409 = v498;

                    v410 = v482;
                    sub_22F10BBDC(&v521, v482, v409);

                    isUniquelyReferenced_nonNull_native = v495;

                    v411 = sub_22F740B70();
                    v412 = sub_22F7415D0();

                    if (os_log_type_enabled(v411, v412))
                    {
                      v413 = isUniquelyReferenced_nonNull_native;
                      isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                      v519 = swift_slowAlloc();
                      v521 = v519;
                      *isUniquelyReferenced_nonNull_native = v471;
                      v414 = sub_22F145F20(v410, v409, &v521);

                      *(isUniquelyReferenced_nonNull_native + 4) = v414;
                      *(isUniquelyReferenced_nonNull_native + 12) = 2048;
                      *(isUniquelyReferenced_nonNull_native + 14) = v242;
                      *(isUniquelyReferenced_nonNull_native + 22) = 2080;
                      v415 = sub_22F145F20(v367, v413, &v521);
                      v222 = v503;

                      *(isUniquelyReferenced_nonNull_native + 24) = v415;
                      *(isUniquelyReferenced_nonNull_native + 32) = 2048;
                      *(isUniquelyReferenced_nonNull_native + 34) = v358;
                      _os_log_impl(&dword_22F0FC000, v411, v412, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", isUniquelyReferenced_nonNull_native, 0x2Au);
                      v416 = v519;
                      swift_arrayDestroy();
                      MEMORY[0x2319033A0](v416, -1, -1);
                      MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                    }

                    else
                    {
                    }

                    v417 = *(v39 + 24);
                    v418 = *(v39 + 32);

                    v419 = swift_isUniquelyReferenced_nonNull_native();
                    v521 = v42;
                    sub_22F1302A0(6, v417, v418, v419);

                    v20 = v508;
                    a2 = v472;
                    (v472)(v475, v508);
                    (a2)(v474, v20);
                    (v500->isa)(v476, v506);
                    v42 = v521;
                    goto LABEL_270;
                  }

                  v223 = v505;
                  isUniquelyReferenced_nonNull_native = v472;
                  (v472)(v475, v20);
                  (isUniquelyReferenced_nonNull_native)(v474, v20);
                  (v500->isa)(v476, v506);
                  v225 = v513 + 1;
                  if (__OFADD__(v513, 1))
                  {
                    goto LABEL_373;
                  }

                  goto LABEL_262;
                }
              }

              v389 = sub_22F740B70();
              v390 = sub_22F7415E0();

              v391 = os_log_type_enabled(v389, v390);
              v39 = v519;
              if (v391)
              {
                v392 = swift_slowAlloc();
                v393 = isUniquelyReferenced_nonNull_native;
                isUniquelyReferenced_nonNull_native = swift_slowAlloc();
                v521 = isUniquelyReferenced_nonNull_native;
                *v392 = v510;
                v394 = sub_22F145F20(v493, v393, &v521);

                *(v392 + 4) = v394;
                v42 = v520;
                _os_log_impl(&dword_22F0FC000, v389, v390, "Unable to find important location presence for entity %s", v392, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(isUniquelyReferenced_nonNull_native);
                MEMORY[0x2319033A0](isUniquelyReferenced_nonNull_native, -1, -1);
                MEMORY[0x2319033A0](v392, -1, -1);
              }

              else
              {
              }

              v395 = *(v39 + 24);
              v396 = *(v39 + 32);

              v397 = swift_isUniquelyReferenced_nonNull_native();
              v521 = v42;
              sub_22F1302A0(9, v395, v396, v397);

              v20 = v508;
              v223 = v505;
              v355(v475, v508);
              v355(v474, v20);
              (v500->isa)(v476, v506);
              v42 = v521;
              a2 = v509;
              v5 = v511;
LABEL_261:
              v225 = v513;
LABEL_262:
              if (v225 >= v486)
              {

LABEL_270:
                v5 = v489;
                goto LABEL_274;
              }

              goto LABEL_224;
            }
          }

          v369 = sub_22F740B70();
          v370 = sub_22F7415E0();

          if (os_log_type_enabled(v369, v370))
          {
            v371 = v339;
            v372 = v52;
            v373 = v222;
            v374 = v340;
            v375 = swift_slowAlloc();
            a2 = swift_slowAlloc();
            v521 = a2;
            *v375 = v510;
            v376 = sub_22F145F20(v371, v374, &v521);
            v223 = v42;
            v377 = v376;
            v222 = v373;
            v52 = v372;

            *(v375 + 4) = v377;
            v42 = v223;
            _os_log_impl(&dword_22F0FC000, v369, v370, "Unable to find lifespan for entity %s", v375, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(a2);
            MEMORY[0x2319033A0](a2, -1, -1);
            MEMORY[0x2319033A0](v375, -1, -1);
          }

          else
          {
          }

          isUniquelyReferenced_nonNull_native = *(v39 + 24);
          v39 = *(v39 + 32);

          v378 = swift_isUniquelyReferenced_nonNull_native();
          v521 = v42;
          v20 = v42;
          v225 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
          v380 = v42;
          v381 = *(v42 + 16);
          v382 = (v379 & 1) == 0;
          v157 = __OFADD__(v381, v382);
          v383 = v381 + v382;
          if (v157)
          {
            goto LABEL_313;
          }

          v384 = v379;
          if (*(v380 + 24) >= v383)
          {
            v20 = v514;
            if ((v378 & 1) == 0)
            {
              v223 = v225;
              sub_22F134340();
              v20 = v514;
              v225 = v223;
            }

            a2 = v509;
            v5 = v511;
            if ((v384 & 1) == 0)
            {
              goto LABEL_250;
            }
          }

          else
          {
            sub_22F1259D0(v383, v378);
            v225 = sub_22F1229E8(isUniquelyReferenced_nonNull_native, v39);
            if ((v384 & 1) != (v385 & 1))
            {
              goto LABEL_378;
            }

            a2 = v509;
            v5 = v511;
            v20 = v514;
            if ((v384 & 1) == 0)
            {
LABEL_250:
              v42 = v521;
              *(v521 + 8 * (v225 >> 6) + 64) |= 1 << v225;
              v386 = (*(v42 + 48) + 16 * v225);
              *v386 = isUniquelyReferenced_nonNull_native;
              v386[1] = v39;
              *(*(v42 + 56) + v225) = 8;

              v387 = *(v42 + 16);
              v157 = __OFADD__(v387, 1);
              v388 = v387 + 1;
              if (v157)
              {
                goto LABEL_318;
              }

              *(v42 + 16) = v388;
              goto LABEL_256;
            }
          }

          v223 = v225;

          v42 = v521;
          *(*(v521 + 56) + v223) = 8;

LABEL_256:
          v39 = v519;
          goto LABEL_261;
        }
      }

      break;
    }

    v321 = sub_22F740B70();
    v322 = sub_22F7415E0();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v521 = a2;
      *v323 = v510;
      v324 = *(v39 + 24);
      v325 = *(v519 + 32);

      v326 = sub_22F145F20(v324, v325, &v521);
      v39 = v519;

      *(v323 + 4) = v326;
      _os_log_impl(&dword_22F0FC000, v321, v322, "Unable to find important location presence for entity %s", v323, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a2);
      MEMORY[0x2319033A0](a2, -1, -1);
      MEMORY[0x2319033A0](v323, -1, -1);
    }

    else
    {
    }

    v327 = *(v39 + 24);
    v223 = *(v39 + 32);

    v328 = swift_isUniquelyReferenced_nonNull_native();
    v521 = v42;
    v20 = v42;
    v225 = sub_22F1229E8(v327, v223);
    v330 = *(v42 + 16);
    v331 = (v329 & 1) == 0;
    v157 = __OFADD__(v330, v331);
    v332 = v330 + v331;
    if (v157)
    {
      goto LABEL_315;
    }

    a2 = v329;
    if (*(v42 + 24) < v332)
    {
      break;
    }

    if ((v328 & 1) == 0)
    {
      v20 = &v521;
      v424 = v225;
      sub_22F134340();
      v225 = v424;
    }

LABEL_211:
    v5 = v489;
    v42 = v521;
    if (a2)
    {
      *(*(v521 + 56) + v225) = 9;

LABEL_130:
      (v500->isa)(v494, v506);
      goto LABEL_131;
    }

    *(v521 + 8 * (v225 >> 6) + 64) |= 1 << v225;
    v334 = (*(v42 + 48) + 16 * v225);
    *v334 = v327;
    v334[1] = v223;
    *(*(v42 + 56) + v225) = 9;
    v335 = *(v42 + 16);
    v157 = __OFADD__(v335, 1);
    v336 = v335 + 1;
    if (!v157)
    {
      *(v42 + 16) = v336;

      goto LABEL_130;
    }

    __break(1u);
  }

  sub_22F1259D0(v332, v328);
  v20 = v521;
  v225 = sub_22F1229E8(v327, v223);
  if ((a2 & 1) == (v333 & 1))
  {
    goto LABEL_211;
  }

LABEL_378:
  sub_22F7420C0();
  __break(1u);
LABEL_379:

  __break(1u);
  return result;
}

uint64_t *sub_22F281C54(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v32 = a4;
  v6 = v5;
  v34 = a5;
  v10 = *v6;
  v11 = sub_22F73F470();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  swift_defaultActor_initialize();
  v18 = [a1 currentToken];
  if (v18)
  {
    v19 = v18;
    v6[18] = a1;
    v6[19] = v18;
    v6[14] = a2;
    v6[15] = a3;
    *(v6 + 136) = 0;
    sub_22F13BA9C(v34, (v6 + 20), &qword_27DAB2D98, &unk_22F7816A8);
    v35 = v10;
    swift_getMetatypeMetadata();
    v31 = v19;
    v30 = a1;
    sub_22F740E90();
    v20 = v32;
    sub_22F73F410();

    sub_22F73F420();
    v21 = v33;
    v22 = *(v33 + 8);
    v22(v15, v11);
    (*(v21 + 16))(v15, v17, v11);
    v23 = type metadata accessor for InputStreamTokenStore();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    swift_defaultActor_initialize();

    sub_22F120ADC(v34, &qword_27DAB2D98, &unk_22F7816A8);
    v22(v20, v11);
    v22(v17, v11);
    v27 = (v26 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token);
    *v27 = 0u;
    v27[1] = 0u;
    (*(v21 + 32))(v26 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_url, v15, v11);
    v6[16] = v26;
  }

  else
  {

    sub_22F2886A4();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    type metadata accessor for PhotoKitInputStream();
    swift_defaultActor_destroy();

    sub_22F120ADC(v34, &qword_27DAB2D98, &unk_22F7816A8);
    (*(v33 + 8))(v32, v11);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t sub_22F281FAC(uint64_t a1)
{
  v2[51] = a1;
  v2[52] = v1;
  v3 = sub_22F73EE60();
  v2[53] = v3;
  v4 = *(v3 - 8);
  v2[54] = v4;
  v5 = *(v4 + 64) + 15;
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F28206C, v1, 0);
}

uint64_t sub_22F28206C()
{
  v1 = *(*(v0 + 416) + 128);
  *(v0 + 448) = v1;
  return MEMORY[0x2822009F8](sub_22F282090, v1, 0);
}

uint64_t sub_22F282090()
{
  v1 = *(v0 + 448);
  v2 = sub_22F73F480();
  v4 = v3;
  v5 = sub_22F73F310();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22F73F300();
  sub_22F288D1C();
  sub_22F73F2F0();
  sub_22F133BF0(v2, v4);

  v8 = *(v0 + 312);
  v9 = *(v0 + 336);
  *(v0 + 480) = *(v0 + 328);
  *(v0 + 488) = v9;
  *(v0 + 464) = v8;
  *(v0 + 456) = 0;
  v10 = *(v0 + 416);

  return MEMORY[0x2822009F8](sub_22F282258, v10, 0);
}

uint64_t sub_22F282258()
{
  v89 = v0;
  v1 = *(v0 + 416);
  v2 = sub_22F284344(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v3 = sub_22F740B90();
  __swift_project_value_buffer(v3, qword_2810B4CB0);
  v4 = sub_22F740B70();
  v5 = sub_22F7415C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v88[0] = v7;
    *v6 = 136315138;
    if (v2)
    {
      v8 = 20302;
    }

    else
    {
      v8 = 5457241;
    }

    if (v2)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    v10 = sub_22F145F20(v8, v9, v88);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22F0FC000, v4, v5, "[IncrementalRebuild] rebuildNeeded = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2319033A0](v7, -1, -1);
    MEMORY[0x2319033A0](v6, -1, -1);
  }

  if ((v2 & 1) == 0)
  {
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      v69 = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v70 = swift_task_alloc();
      *(v0 + 568) = v70;
      *v70 = v0;
      v70[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    v71 = swift_task_alloc();
    *(v0 + 584) = v71;
    *v71 = v0;
    v72 = sub_22F2837B8;
LABEL_47:
    v71[1] = v72;
    v73 = *(v0 + 408);
    v74 = *(v0 + 416);

    return sub_22F28691C(v73);
  }

  if (!*(v0 + 488))
  {
    v21 = *(v0 + 456);
    goto LABEL_16;
  }

  v11 = *(v0 + 464);
  v12 = *(v0 + 472);
  v13 = *(v0 + 456);
  v14 = sub_22F73F310();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_22F15C3C4(v11, v12);

  sub_22F73F300();
  sub_22F288CC8();
  sub_22F73F2F0();
  if (v13)
  {
    v18 = *(v0 + 480);
    v17 = *(v0 + 488);
    v20 = *(v0 + 464);
    v19 = *(v0 + 472);
    sub_22F20AD9C(v20, v19, v18, v17);
    sub_22F20AD9C(v20, v19, v18, v17);

LABEL_27:
    v42 = *(v0 + 440);

    v43 = *(v0 + 8);
LABEL_28:

    return v43();
  }

  v28 = *(v0 + 384);
  *(v0 + 496) = v28;
  v29 = *(v0 + 392);
  v30 = v28;
  v31 = sub_22F740B70();
  v32 = sub_22F7415C0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v88[0] = v34;
    *v33 = 136315138;
    if (v29)
    {
      v35 = 5457241;
    }

    else
    {
      v35 = 20302;
    }

    v87 = v30;
    v36 = v29;
    if (v29)
    {
      v37 = 0xE300000000000000;
    }

    else
    {
      v37 = 0xE200000000000000;
    }

    v38 = sub_22F145F20(v35, v37, v88);
    v29 = v36;
    v30 = v87;

    *(v33 + 4) = v38;
    _os_log_impl(&dword_22F0FC000, v31, v32, "[IncrementalRebuild] rebuildInProgress = %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2319033A0](v34, -1, -1);
    MEMORY[0x2319033A0](v33, -1, -1);
  }

  v39 = *(v0 + 416);
  v40 = v30;
  v41 = sub_22F284470(v40);
  *(v0 + 504) = v41;
  v52 = v41;
  v53 = *(v0 + 416);

  if (*(v53 + 136))
  {
    v55 = *(v0 + 480);
    v54 = *(v0 + 488);
    v57 = *(v0 + 464);
    v56 = *(v0 + 472);

    sub_22F20AD9C(v57, v56, v55, v54);
    v58 = v57;
    v59 = v56;
    v60 = v55;
    v61 = v54;
LABEL_36:
    sub_22F20AD9C(v58, v59, v60, v61);
    v62 = *(v0 + 440);

    v43 = *(v0 + 8);
    goto LABEL_28;
  }

  v63 = v52;
  v64 = sub_22F740B70();
  v65 = sub_22F7415C0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    *(v66 + 4) = [v63 changeCount];

    _os_log_impl(&dword_22F0FC000, v64, v65, "[IncrementalRebuild] changeFetchResult.changeCount = %ld", v66, 0xCu);
    MEMORY[0x2319033A0](v66, -1, -1);
  }

  else
  {

    v64 = v63;
  }

  if ([v63 changeCount]< 1)
  {
    if (v29)
    {
      v71 = swift_task_alloc();
      *(v0 + 552) = v71;
      *v71 = v0;
      v72 = sub_22F2831E0;
      goto LABEL_47;
    }

    v79 = *(v0 + 480);
    v80 = *(v0 + 488);
    v82 = *(v0 + 464);
    v81 = *(v0 + 472);

    sub_22F20AD9C(v82, v81, v79, v80);
    v21 = 0;
LABEL_16:
    v22 = *(*(v0 + 416) + 152);
    v23 = sub_22F73F350();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_22F73F340();
    *(v0 + 368) = v22;
    *(v0 + 376) = 0;
    sub_22F288AD0();
    v26 = sub_22F73F330();
    *(v0 + 600) = v26;
    *(v0 + 608) = v27;
    if (v21)
    {
      sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

      goto LABEL_27;
    }

    v45 = *(v0 + 408);
    v46 = *(v0 + 416);
    v47 = v26;
    v48 = v27;

    v50 = *(v46 + 112);
    v49 = *(v46 + 120);
    *(v0 + 616) = v49;
    *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 304) = &off_2843E9240;
    *(v0 + 272) = v46;
    sub_22F15C30C(v0 + 272, v0 + 64);
    v51 = MEMORY[0x277D84F90];
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = v51;
    *(v0 + 32) = v47;
    *(v0 + 40) = v48;
    *(v0 + 48) = v50;
    *(v0 + 56) = v49;
    sub_22F15C3C4(v47, v48);

    sub_22F15C3C4(v47, v48);

    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    return MEMORY[0x2822009F8](sub_22F283AC8, v45, 0);
  }

  v67 = *(v0 + 416);
  v68 = sub_22F284568(v63);
  *(v0 + 512) = v68;
  if (*(v53 + 136))
  {
    v75 = *(v0 + 480);
    v76 = *(v0 + 488);
    v78 = *(v0 + 464);
    v77 = *(v0 + 472);

    sub_22F20AD9C(v78, v77, v75, v76);
    v58 = v78;
    v59 = v77;
    v60 = v75;
    v61 = v76;
    goto LABEL_36;
  }

  if (v29)
  {
    v71 = swift_task_alloc();
    *(v0 + 520) = v71;
    *v71 = v0;
    v72 = sub_22F282C30;
    goto LABEL_47;
  }

  v83 = swift_task_alloc();
  *(v0 + 536) = v83;
  *v83 = v0;
  v83[1] = sub_22F282E9C;
  v84 = *(v0 + 512);
  v85 = *(v0 + 408);
  v86 = *(v0 + 416);

  return sub_22F284884(v84, v85);
}