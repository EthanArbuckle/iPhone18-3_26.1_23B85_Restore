uint64_t sub_1D89633E4()
{
  v1 = v0[113];
  CVDebugArtifactManager.summary(for:)((v0 + 56));
  v0[117] = v1;
  if (v1)
  {
    v2 = v0[104];
    v3 = v0[103];

    sub_1D897988C(v2, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D897988C(v3, type metadata accessor for BundleClassification.ClassificationType);

    v4 = sub_1D896450C;
  }

  else
  {
    sub_1D897988C(v0[104], type metadata accessor for BundleClassification.ClassificationType);
    v4 = sub_1D89634E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D89634E4()
{
  v2 = *(v1 + 912);
  v3 = *(v1 + 824);
  v143 = *(v1 + 448);
  v4 = *(v1 + 456);
  v5 = *(v1 + 464);
  v6 = *(v1 + 472);
  v7 = *(v1 + 480);
  v8 = *(v1 + 488);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 704) = v2;
  v10 = sub_1D87EF6AC(v3);
  v12 = *(v2 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v0 = v11;
  v3 = (v1 + 704);
  v140 = v4;
  if (*(*(v1 + 912) + 24) >= v15)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_9:
    v24 = v10;
    sub_1D8969B2C();
    v10 = v24;
    v18 = *v3;
    if (v0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v16 = *(v1 + 824);
  sub_1D8972614(v15, isUniquelyReferenced_nonNull_native);
  v10 = sub_1D87EF6AC(v16);
  if ((v0 & 1) != (v17 & 1))
  {
LABEL_108:

    return sub_1D8B16C30();
  }

LABEL_6:
  v18 = *v3;
  if (v0)
  {
LABEL_7:
    v19 = *(v1 + 824);
    v20 = *(v18 + 56) + 48 * v10;
    *v20 = v143;
    *(v20 + 8) = v140;
    *(v20 + 16) = v5;
    *(v20 + 24) = v6;
    *(v20 + 32) = v7;
    *(v20 + 40) = v8;

    v21 = sub_1D897988C(v19, type metadata accessor for BundleClassification.ClassificationType);
    goto LABEL_12;
  }

LABEL_10:
  v25 = *(v1 + 928);
  v26 = *(v1 + 824);
  *(v18 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v27 = v10;
  sub_1D89798EC(v26, *(v18 + 48) + v25 * v10, type metadata accessor for BundleClassification.ClassificationType);
  v28 = *(v18 + 56) + 48 * v27;
  *v28 = v143;
  *(v28 + 8) = v140;
  *(v28 + 16) = v5;
  *(v28 + 24) = v6;
  *(v28 + 32) = v7;
  *(v28 + 40) = v8;
  v21 = sub_1D897988C(v26, type metadata accessor for BundleClassification.ClassificationType);
  v29 = *(v18 + 16);
  v14 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v14)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  *(v18 + 16) = v30;
LABEL_12:
  v31 = *(v1 + 920) + 1;
  if (v31 != *(v1 + 896))
  {
    v98 = *(v1 + 936);
    *(v1 + 920) = v31;
    *(v1 + 912) = v18;
    *(v1 + 904) = v98;
    v99 = *(v1 + 888);
    if (v31 < *(v99 + 16))
    {
      v100 = *(v1 + 840);
      v101 = *(v1 + 832);
      v102 = *(v1 + 824);
      v103 = *(v1 + 784);
      v104 = v99 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
      v105 = *(v103 + 72);
      *(v1 + 928) = v105;
      sub_1D89798EC(v104 + v105 * v31, v101, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89798EC(v101, v102, type metadata accessor for BundleClassification.ClassificationType);
      v21 = sub_1D89633E4;
      v22 = v100;
      goto LABEL_105;
    }

    goto LABEL_117;
  }

  *(v1 + 944) = v18;
  v129 = *(v1 + 784);

  v32 = v18 + 64;
  v33 = -1;
  v34 = -1 << *(v18 + 32);
  if (-v34 < 64)
  {
    v33 = ~(-1 << -v34);
  }

  v35 = v33 & *(v18 + 64);
  v128 = (63 - v34) >> 6;
  v134 = *(v1 + 880);
  v36 = *(v1 + 864);
  v130 = v18;
  v21 = swift_bridgeObjectRetain_n();
  v37 = 0;
  v38 = 0;
  v144 = v1;
  for (i = v32; ; v32 = i)
  {
    *(v1 + 952) = v37;
    v138 = v37;
    v141 = v36;
    if (!v35)
    {
      if (v128 <= v38 + 1)
      {
        v40 = v38 + 1;
      }

      else
      {
        v40 = v128;
      }

      v41 = v40 - 1;
      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v128)
        {
          v69 = *(v1 + 760);
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
          (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
          v35 = 0;
          v38 = v41;
          goto LABEL_27;
        }

        v35 = *(v32 + 8 * v39);
        ++v38;
        if (v35)
        {
          v38 = v39;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v39 = v38;
LABEL_26:
    v42 = *(v1 + 816);
    v43 = *(v1 + 760);
    v44 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v45 = v44 | (v39 << 6);
    sub_1D89798EC(*(v130 + 48) + *(v129 + 72) * v45, v42, type metadata accessor for BundleClassification.ClassificationType);
    v46 = *(v130 + 56) + 48 * v45;
    v47 = *v46;
    v137 = *(v46 + 8);
    v136 = *(v46 + 16);
    v49 = *(v46 + 24);
    v48 = *(v46 + 32);
    v50 = *(v46 + 40);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    v52 = v43 + *(v51 + 48);
    sub_1D897999C(v42, v43, type metadata accessor for BundleClassification.ClassificationType);
    *v52 = v47;
    *(v52 + 8) = v137;
    *(v52 + 16) = v136;
    *(v52 + 24) = v49;
    *(v52 + 32) = v48;
    *(v52 + 40) = v50;
    v1 = v144;
    (*(*(v51 - 8) + 56))(v43, 0, 1, v51);

LABEL_27:
    v53 = *(v1 + 768);
    sub_1D881F6FC(*(v1 + 760), v53, &qword_1ECA65F28);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F30);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      break;
    }

    v55 = *(v1 + 808);
    v56 = *(v1 + 800);
    v57 = *(v1 + 768);
    v58 = v57 + *(v54 + 48);
    v59 = *v58;
    v60 = *(v58 + 8);
    v61 = *(v58 + 16);
    v62 = *(v58 + 24);
    v132 = *(v58 + 40);
    v133 = *(v58 + 32);
    sub_1D897999C(v57, v55, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D89798EC(v55, v56, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v135 = v62;
    if (EnumCaseMultiPayload > 4)
    {
      v64 = v141;
      if (EnumCaseMultiPayload <= 6)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v66 = 0x6974634174786574;
          v65 = 0xEB00000000736E6FLL;
        }

        else
        {
          v65 = 0xE500000000000000;
          v66 = 0x746E657665;
        }
      }

      else
      {
        v67 = 0x7A6972616D6D7573;
        if (EnumCaseMultiPayload == 8)
        {
          v67 = 0x74616C736E617274;
        }

        v68 = EnumCaseMultiPayload == 7;
        if (EnumCaseMultiPayload == 7)
        {
          v66 = 0x756F6C4164616572;
        }

        else
        {
          v66 = v67;
        }

        if (v68)
        {
          v65 = 0xE900000000000064;
        }

        else
        {
          v65 = 0xE900000000000065;
        }
      }
    }

    else
    {
      v64 = v141;
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v65 = 0xE800000000000000;
          v66 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
          v65 = 0xE400000000000000;
          v66 = 1936744813;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v65 = 0xE700000000000000;
        v66 = 0x65646F63726162;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v65 = 0xE600000000000000;
        v66 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v1 + 800), type metadata accessor for BundleClassification.ClassificationType);
        v65 = 0xE400000000000000;
        v66 = 1667459446;
      }
    }

    v71 = *(v1 + 808);
    v72 = *(v1 + 792);
    v73 = *(v1 + 752);
    MEMORY[0x1DA71EFA0](v66, v65);

    MEMORY[0x1DA71EFA0](0x7972616D6D75732DLL, 0xE800000000000000);
    *(v144 + 64) = &type metadata for BundleClassificationResultSummary;
    *(v144 + 72) = sub_1D8978EF0();
    v74 = swift_allocObject();
    *(v144 + 40) = v74;
    *(v74 + 16) = v59;
    *(v74 + 24) = v60;
    *(v74 + 32) = v61;
    *(v74 + 40) = v135;
    *(v74 + 48) = v133;
    *(v74 + 56) = v132;
    *(v144 + 80) = 3;
    *(v144 + 16) = 0;
    *(v144 + 24) = 0xE000000000000000;
    v1 = v144;
    *(v144 + 32) = v73;
    sub_1D89798EC(v71, v72, type metadata accessor for BundleClassification.ClassificationType);
    v75 = swift_getEnumCaseMultiPayload();
    if (v75 > 4)
    {
      v76 = v138;
      if (v75 <= 6)
      {
        if (v75 == 5)
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v78 = 0x6974634174786574;
          v77 = 0xEB00000000736E6FLL;
        }

        else
        {
          v77 = 0xE500000000000000;
          v78 = 0x746E657665;
        }
      }

      else if (v75 == 7)
      {
        v77 = 0xE900000000000064;
        v78 = 0x756F6C4164616572;
      }

      else
      {
        if (v75 == 8)
        {
          v78 = 0x74616C736E617274;
        }

        else
        {
          v78 = 0x7A6972616D6D7573;
        }

        v77 = 0xE900000000000065;
      }
    }

    else
    {
      v76 = v138;
      if (v75 <= 1)
      {
        if (v75)
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v77 = 0xE800000000000000;
          v78 = 0x796669746E656469;
        }

        else
        {
          sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
          v77 = 0xE400000000000000;
          v78 = 1936744813;
        }
      }

      else if (v75 == 2)
      {
        sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v77 = 0xE700000000000000;
        v78 = 0x65646F63726162;
      }

      else if (v75 == 3)
      {
        v77 = 0xE600000000000000;
        v78 = 0x686372616573;
      }

      else
      {
        sub_1D897988C(*(v144 + 792), type metadata accessor for BundleClassification.ClassificationType);
        v77 = 0xE400000000000000;
        v78 = 1667459446;
      }
    }

    sub_1D88C4BD0(v144 + 16, v144 + 88);
    sub_1D878BBCC(v76);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v80 = sub_1D87EF838(v78, v77);
    v81 = v64[2];
    v82 = (v22 & 1) == 0;
    v21 = (v81 + v82);
    if (__OFADD__(v81, v82))
    {
      goto LABEL_112;
    }

    v83 = v22;
    if (v64[3] >= v21)
    {
      if (v79)
      {
        if (v22)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v21 = sub_1D896B350(&qword_1ECA65C68);
        if (v83)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      sub_1D8974F38(v21, v79, &qword_1ECA65C68);
      v21 = sub_1D87EF838(v78, v77);
      if ((v83 & 1) != (v22 & 1))
      {
        goto LABEL_108;
      }

      v80 = v21;
      if (v83)
      {
LABEL_79:

        goto LABEL_80;
      }
    }

    v64[(v80 >> 6) + 8] |= 1 << v80;
    v84 = (v64[6] + 16 * v80);
    *v84 = v78;
    v84[1] = v77;
    *(v64[7] + 8 * v80) = MEMORY[0x1E69E7CC0];
    v85 = v64[2];
    v14 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (v14)
    {
      goto LABEL_114;
    }

    v64[2] = v86;
LABEL_80:
    v87 = v64[7];
    v88 = *(v87 + 8 * v80);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    *(v87 + 8 * v80) = v88;
    v90 = v64;
    if ((v89 & 1) == 0)
    {
      v88 = sub_1D87C7B24(0, *(v88 + 2) + 1, 1, v88);
      *(v87 + 8 * v80) = v88;
    }

    v92 = *(v88 + 2);
    v91 = *(v88 + 3);
    if (v92 >= v91 >> 1)
    {
      *(v87 + 8 * v80) = sub_1D87C7B24((v91 > 1), v92 + 1, 1, v88);
    }

    sub_1D897988C(*(v144 + 808), type metadata accessor for BundleClassification.ClassificationType);
    v21 = sub_1D87DC9A0(v144 + 16);
    v93 = *(v87 + 8 * v80);
    *(v93 + 16) = v92 + 1;
    v94 = v93 + 72 * v92;
    v95 = *(v144 + 104);
    v96 = *(v144 + 120);
    v97 = *(v144 + 136);
    *(v94 + 96) = *(v144 + 152);
    *(v94 + 64) = v96;
    *(v94 + 80) = v97;
    *(v94 + 48) = v95;
    *(v94 + 32) = *(v144 + 88);
    v37 = sub_1D8979B40;
    v36 = v90;
    v134 = v90;
  }

  v106 = *(v1 + 81);

  if ((v106 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C68);
    v21 = sub_1D8B168F0();
    v107 = v21;
    v108 = 0;
    v109 = v134[8];
    v110 = 1 << *(v134 + 32);
    v111 = -1;
    if (v110 < 64)
    {
      v111 = ~(-1 << v110);
    }

    v112 = v111 & v109;
    v113 = (v110 + 63) >> 6;
    v139 = v21 + 64;
    v142 = v21;
    if ((v111 & v109) != 0)
    {
      do
      {
        v114 = __clz(__rbit64(v112));
        v112 &= v112 - 1;
LABEL_100:
        v117 = v114 | (v108 << 6);
        v118 = (v134[6] + 16 * v117);
        v120 = *v118;
        v119 = v118[1];

        v122 = sub_1D8966B38(v121);

        v107 = v142;
        *&v139[(v117 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v117;
        v123 = (*(v142 + 6) + 16 * v117);
        *v123 = v120;
        v123[1] = v119;
        *(*(v142 + 7) + 8 * v117) = v122;
        v124 = *(v142 + 2);
        v14 = __OFADD__(v124, 1);
        v125 = v124 + 1;
        if (v14)
        {
          goto LABEL_115;
        }

        *(v142 + 2) = v125;
        v1 = v144;
      }

      while (v112);
    }

    v115 = v108;
    while (1)
    {
      v108 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        break;
      }

      if (v108 >= v113)
      {

        goto LABEL_104;
      }

      v116 = v134[v108 + 8];
      ++v115;
      if (v116)
      {
        v114 = __clz(__rbit64(v116));
        v112 = (v116 - 1) & v116;
        goto LABEL_100;
      }
    }

LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v107 = v134;
LABEL_104:
  *(v1 + 960) = v107;
  v126 = *(v1 + 840);

  v21 = sub_1D896437C;
  v22 = v126;
LABEL_105:
  v23 = 0;

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1D896437C()
{
  sub_1D8A3CD18();

  return MEMORY[0x1EEE6DFA0](sub_1D89643E4, 0, 0);
}

uint64_t sub_1D89643E4()
{
  v1 = v0[120];
  v2 = v0[119];
  v3 = v0[118];
  v4 = v0[109];
  v5 = v0[90];
  v6 = v0[89];

  sub_1D878BBCC(v4);
  sub_1D878BBCC(v2);
  *v6 = v5;
  v6[1] = v1;
  v6[2] = v3;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D896450C()
{
  v1 = *(v0 + 872);

  sub_1D878BBCC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t CVResultPackage.export(url:)(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = sub_1D8B16790();
  *(v2 + 104) = v3;
  *(v2 + 112) = *(v3 - 8);
  *(v2 + 120) = swift_task_alloc();
  v4 = sub_1D8B167A0();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = type metadata accessor for BundleClassification.ClassificationType(0);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = *(type metadata accessor for BundleClassification(0) - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = type metadata accessor for CVBundle(0);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F48);
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v5 = sub_1D8B13000();
  *(v2 + 240) = v5;
  *(v2 + 248) = *(v5 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  sub_1D8B12BC0();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = *v1;
  *(v2 + 304) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D8964914, 0, 0);
}

uint64_t sub_1D8964914()
{
  sub_1D8B12C00();
  swift_allocObject();
  v1 = sub_1D8B12BF0();
  sub_1D8B12BB0();
  sub_1D8B12BD0();
  sub_1D8B12F70();
  sub_1D8965D0C();
  v2 = *(v0 + 248);
  v69 = *(v0 + 184);
  *(v0 + 64) = sub_1D893E91C(MEMORY[0x1E69E7CC0]);
  v71 = (v2 + 8);

  v70 = v1;
  while (1)
  {
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    sub_1D8960BA4(v4);
    sub_1D881F6FC(v4, v3, &qword_1ECA65F48);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64250);
    if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
    {
      break;
    }

    v6 = *(v0 + 232);
    v7 = *(v0 + 208);
    v8 = *v6;
    sub_1D897999C(v6 + *(v5 + 48), *(v0 + 216), type metadata accessor for CVBundle);
    CVBundle.sanitizeForJSON()(v7);
    sub_1D8979954(&qword_1ECA64370, type metadata accessor for CVBundle);
    v9 = sub_1D8B12BE0();
    v11 = v10;
    sub_1D897988C(*(v0 + 208), type metadata accessor for CVBundle);
    v73 = v8;
    *(v0 + 88) = v8;
    v12 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v12);

    MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
    sub_1D8B12F70();

    v74 = v9;
    sub_1D8B13070();
    v72 = v11;
    v13 = *(v0 + 216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D8B1AB90;
    sub_1D8B16720();

    sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
    v15 = sub_1D8B16B50();
    MEMORY[0x1DA71EFA0](v15);

    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = 0xD000000000000010;
    *(v14 + 40) = 0x80000001D8B44DD0;
    sub_1D8B16CF0();

    v16 = CVBundle.classifications.getter();
    v17 = swift_task_alloc();
    *(v17 + 16) = v13;
    v18 = sub_1D87C6A38(sub_1D8979828, v17, v16);

    v19 = *(v18 + 16);
    if (v19)
    {
      v76 = MEMORY[0x1E69E7CC0];
      sub_1D87F3F54(0, v19, 0);
      v20 = v76;
      v21 = v18 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v22 = *(v69 + 72);
      do
      {
        v23 = *(v0 + 192);
        v24 = *(v0 + 176);
        sub_1D89798EC(v21, v23, type metadata accessor for BundleClassification);
        sub_1D89798EC(v23, v24, type metadata accessor for BundleClassification.ClassificationType);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v26 = *(v0 + 192);
        if (EnumCaseMultiPayload > 4)
        {
          if (EnumCaseMultiPayload <= 6)
          {
            if (EnumCaseMultiPayload == 5)
            {
              sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
              sub_1D897988C(v26, type metadata accessor for BundleClassification);
              v28 = 0x6974634174786574;
              v27 = 0xEB00000000736E6FLL;
            }

            else
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v27 = 0xE500000000000000;
              v28 = 0x746E657665;
            }
          }

          else if (EnumCaseMultiPayload == 7)
          {
            sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
            v27 = 0xE900000000000064;
            v28 = 0x756F6C4164616572;
          }

          else
          {
            if (EnumCaseMultiPayload == 8)
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v28 = 0x74616C736E617274;
            }

            else
            {
              sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
              v28 = 0x7A6972616D6D7573;
            }

            v27 = 0xE900000000000065;
          }
        }

        else if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v30 = *(v0 + 176);
            sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
            sub_1D897988C(v30, type metadata accessor for BundleClassification.ClassificationType);
            v27 = 0xE800000000000000;
            v28 = 0x796669746E656469;
          }

          else
          {
            sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
            sub_1D897988C(v26, type metadata accessor for BundleClassification);
            v27 = 0xE400000000000000;
            v28 = 1936744813;
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          sub_1D897988C(*(v0 + 176), type metadata accessor for BundleClassification.ClassificationType);
          sub_1D897988C(v26, type metadata accessor for BundleClassification);
          v27 = 0xE700000000000000;
          v28 = 0x65646F63726162;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
          v27 = 0xE600000000000000;
          v28 = 0x686372616573;
        }

        else
        {
          v29 = *(v0 + 176);
          sub_1D897988C(*(v0 + 192), type metadata accessor for BundleClassification);
          sub_1D897988C(v29, type metadata accessor for BundleClassification.ClassificationType);
          v27 = 0xE400000000000000;
          v28 = 1667459446;
        }

        v32 = *(v76 + 16);
        v31 = *(v76 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D87F3F54((v31 > 1), v32 + 1, 1);
        }

        *(v76 + 16) = v32 + 1;
        v33 = v76 + 16 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v27;
        v21 += v22;
        --v19;
      }

      while (v19);
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v34 = *(v0 + 304);
    v35 = *(v0 + 96);
    v36 = swift_task_alloc();
    v37 = *(v0 + 288);
    *(v36 + 16) = v73;
    *(v36 + 24) = v35;
    *(v36 + 32) = v37;
    *(v36 + 48) = v34;
    *(v36 + 56) = v74;
    *(v36 + 64) = v72;
    *(v36 + 72) = v0 + 64;
    sub_1D8965B54(sub_1D8979848, v36, v20);
    v38 = *(v0 + 216);
    (*v71)(*(v0 + 264), *(v0 + 240));
    sub_1D87A1598(v74, v72);

    sub_1D897988C(v38, type metadata accessor for CVBundle);
  }

  v39 = *(v0 + 296);

  v40 = v39 + 64;
  v41 = -1;
  v42 = -1 << *(v39 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v39 + 64);
  v44 = (63 - v42) >> 6;

  v45 = 0;
  v75 = v39;
  while (v43)
  {
LABEL_39:
    v47 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v48 = v47 | (v45 << 6);
    if (*(*(*(v39 + 56) + 8 * v48) + 16))
    {
      v49 = *(*(v39 + 56) + 8 * v48);

      sub_1D8B12F70();

      v50 = objc_opt_self();
      v51 = [v50 defaultManager];
      sub_1D8B12FC0();
      v52 = sub_1D8B15940();

      v53 = [v51 fileExistsAtPath_];

      if ((v53 & 1) == 0)
      {
        v54 = [v50 defaultManager];
        v55 = sub_1D8B12F50();
        *(v0 + 72) = 0;
        v56 = [v54 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:v0 + 72];

        v57 = *(v0 + 72);
        if ((v56 & 1) == 0)
        {
          v64 = *(v0 + 272);
          v65 = *(v0 + 256);
          v66 = *(v0 + 240);
          v67 = v57;

          sub_1D8B12EB0();

          swift_willThrow();

          v68 = *v71;
          (*v71)(v65, v66);
          v68(v64, v66);

          v63 = *(v0 + 8);

          return v63();
        }

        v58 = v57;
      }

      v59 = *(v0 + 256);

      sub_1D896663C(v49, v59, v70);
      (*v71)(*(v0 + 256), *(v0 + 240));

      v39 = v75;
    }
  }

  while (1)
  {
    v46 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
    }

    if (v46 >= v44)
    {
      break;
    }

    v43 = *(v40 + 8 * v46);
    ++v45;
    if (v43)
    {
      v45 = v46;
      goto LABEL_39;
    }
  }

  (*v71)(*(v0 + 272), *(v0 + 240));

  v60 = *(v0 + 64);

  v61 = *(v0 + 8);

  return v61(v60);
}

uint64_t sub_1D8965B54(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1D8965BE8(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D8B16610())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA71FC20](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
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

VisualIntelligenceCore::CVResultPackage __swiftcall CVResultPackage.init(bundles:debugArtifactsByCategory:summaryByBundleType:)(Swift::OpaquePointer bundles, Swift::OpaquePointer debugArtifactsByCategory, Swift::OpaquePointer summaryByBundleType)
{
  v3->_rawValue = bundles._rawValue;
  v3[1]._rawValue = debugArtifactsByCategory._rawValue;
  v3[2]._rawValue = summaryByBundleType._rawValue;
  result.summaryByBundleType = summaryByBundleType;
  result.debugArtifactsByCategory = debugArtifactsByCategory;
  result.bundles = bundles;
  return result;
}

void sub_1D8965D0C()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1D8B12FC0();
  v2 = sub_1D8B15940();

  v3 = [v1 fileExistsAtPath_];

  if ((v3 & 1) == 0)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1D8B12F50();
    v9[0] = 0;
    v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1D8B12EB0();

      swift_willThrow();
    }
  }
}

uint64_t sub_1D8965E68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v13 - v1;
  v3 = type metadata accessor for BundleClassification(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.refinementState(of:)(v2);
  v6 = type metadata accessor for RefinementState(0);
  if ((*(*(v6 - 8) + 48))(v2, 1, v6) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA657B8);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D897999C(v2, v5, type metadata accessor for BundleClassification);
    v7 = &v5[*(v3 + 20)];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = v7[3];
    sub_1D8912A48(*v7, v9, v10, v11);
    sub_1D897988C(v5, type metadata accessor for BundleClassification);
    if (v8 == 2)
    {
      return 1;
    }

    sub_1D88E0FE4(v8, v9, v10, v11);
  }

  else
  {
    sub_1D897988C(v2, type metadata accessor for RefinementState);
  }

  return 0;
}

uint64_t sub_1D8966084(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, unint64_t *a9)
{
  v60 = a8;
  v59 = a7;
  v62 = sub_1D8B13000();
  v11 = *(v62 - 8);
  v12 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - v17;
  v19 = *a1;
  v20 = a1[1];
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1D8B16720();

  v63 = v19;
  v64 = v20;
  MEMORY[0x1DA71EFA0](0x2D656C646E75622DLL, 0xE800000000000000);
  v65 = a2;
  v21 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v21);

  MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
  sub_1D8B12F70();
  v22 = v61;
  sub_1D8965D0C();
  if (v22)
  {
    (*(v11 + 8))(v18, v62);
  }

  v56 = v19;
  v57 = v20;
  v61 = v11;
  sub_1D8B12F70();

  sub_1D8B13070();
  v60 = 0;
  v59 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D8B1AB90;
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1D8B16720();

  v63 = 0xD000000000000010;
  v64 = 0x80000001D8B44DD0;
  sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
  v25 = v62;
  v26 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v26);

  v27 = v63;
  v28 = v64;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 32) = v27;
  *(v24 + 40) = v28;
  sub_1D8B16CF0();

  v29 = v61;
  v30 = v16;
  (*(v61 + 16))(v58, v16, v25);
  v31 = v57;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *a9;
  v33 = v63;
  *a9 = 0x8000000000000000;
  v34 = v56;
  v36 = sub_1D87EF838(v56, v31);
  v37 = *(v33 + 16);
  v38 = (v35 & 1) == 0;
  v39 = v37 + v38;
  if (__OFADD__(v37, v38))
  {
    __break(1u);
    goto LABEL_18;
  }

  v40 = v35;
  if (*(v33 + 24) >= v39)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D896B350(&qword_1ECA65C18);
      v33 = v63;
    }
  }

  else
  {
    sub_1D8974F38(v39, isUniquelyReferenced_nonNull_native, &qword_1ECA65C18);
    v33 = v63;
    v41 = sub_1D87EF838(v34, v31);
    if ((v40 & 1) != (v42 & 1))
    {
LABEL_20:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }

    v36 = v41;
  }

  *a9 = v33;

  v43 = *a9;
  if (v40)
  {

    goto LABEL_13;
  }

  v43[(v36 >> 6) + 8] |= 1 << v36;
  v44 = (v43[6] + 16 * v36);
  *v44 = v34;
  v44[1] = v31;
  *(v43[7] + 8 * v36) = MEMORY[0x1E69E7CC0];
  v45 = v43[2];
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
    goto LABEL_20;
  }

  v43[2] = v47;
LABEL_13:
  isUniquelyReferenced_nonNull_native = v43[7];
  v24 = *(isUniquelyReferenced_nonNull_native + 8 * v36);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v36) = v24;
  if ((v48 & 1) == 0)
  {
LABEL_18:
    v24 = sub_1D87C8798(0, *(v24 + 16) + 1, 1, v24);
    *(isUniquelyReferenced_nonNull_native + 8 * v36) = v24;
  }

  v50 = *(v24 + 16);
  v49 = *(v24 + 24);
  v51 = v62;
  if (v50 >= v49 >> 1)
  {
    v54 = sub_1D87C8798(v49 > 1, v50 + 1, 1, v24);
    v51 = v62;
    *(isUniquelyReferenced_nonNull_native + 8 * v36) = v54;
  }

  v52 = *(v29 + 8);
  v52(v30, v51);
  v52(v59, v51);
  v53 = *(isUniquelyReferenced_nonNull_native + 8 * v36);
  *(v53 + 16) = v50 + 1;
  return (*(v29 + 32))(v53 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v50, v58, v51);
}

uint64_t sub_1D896663C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = a3;
  v34 = a2;
  v4 = sub_1D8B13000();
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + 32;
    v29 = 0x80000001D8B44E10;
    v30 = 0x80000001D8B44DF0;
    v32 = (v6 + 8);
    v31 = xmmword_1D8B1AB90;
    v33 = result;
    do
    {
      sub_1D88C4BD0(v10, &v40);
      sub_1D89791F0(&v41, &v36);
      if (v39 - 1 >= 2)
      {
        if (v39)
        {
          sub_1D8788F40(&v36, v35);
          __swift_project_boxed_opaque_existential_1(v35, v35[3]);
          v21 = v42;
          v22 = sub_1D8B12BE0();
          v42 = v21;
          if (v21)
          {
            sub_1D87DC9A0(&v40);
            return __swift_destroy_boxed_opaque_existential_1(v35);
          }

          v18 = v22;
          v17 = v23;
          __swift_destroy_boxed_opaque_existential_1(v35);
          v15 = 0xE400000000000000;
          v16 = 1852797802;
        }

        else
        {
          v19 = v36;
          v18 = CVBufferRef.pngData.getter();
          v17 = v20;

          v15 = 0xE300000000000000;
          v16 = 4673104;
        }
      }

      else
      {
        v16 = v37;
        v15 = v38;
        v17 = *(&v36 + 1);
        v18 = v36;
      }

      v36 = v40;

      MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
      MEMORY[0x1DA71EFA0](v16, v15);

      sub_1D8B12F70();

      if (v17 >> 60 == 15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
        v11 = swift_allocObject();
        *(v11 + 16) = v31;
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        sub_1D8B16720();

        *&v36 = 0xD00000000000001ALL;
        *(&v36 + 1) = v30;
        sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
        v12 = v33;
        v13 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v13);

        v14 = v36;
        *(v11 + 56) = MEMORY[0x1E69E6158];
        *(v11 + 32) = v14;
        sub_1D8B16CF0();
      }

      else
      {
        v24 = v42;
        sub_1D8B13070();
        v42 = v24;
        if (v24)
        {
          sub_1D87C12A4(v18, v17);
          (*v32)(v8, v33);
          return sub_1D87DC9A0(&v40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
        v25 = swift_allocObject();
        *(v25 + 16) = v31;
        *&v36 = 0;
        *(&v36 + 1) = 0xE000000000000000;
        sub_1D8B16720();

        *&v36 = 0xD000000000000012;
        *(&v36 + 1) = v29;
        sub_1D8979954(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
        v12 = v33;
        v26 = sub_1D8B16B50();
        MEMORY[0x1DA71EFA0](v26);

        v27 = v36;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 32) = v27;
        sub_1D8B16CF0();

        sub_1D87C12A4(v18, v17);
      }

      (*v32)(v8, v12);
      result = sub_1D87DC9A0(&v40);
      v10 += 72;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1D8966B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D88C4BD0(v2, &v18);
    sub_1D89791F0(v19 + 8, &v13);
    v4 = BYTE8(v15);
    sub_1D897924C(&v13);
    if (v4 < 2)
    {
      sub_1D87DC9A0(&v18);
    }

    else
    {
      v15 = v19[1];
      v16 = v19[2];
      v17 = v20;
      v13 = v18;
      v14 = v19[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F466C(0, *(v3 + 16) + 1, 1);
        v3 = v21;
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D87F466C((v6 > 1), v7 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v7 + 1;
      v8 = v3 + 72 * v7;
      *(v8 + 32) = v13;
      v9 = v14;
      v10 = v15;
      v11 = v16;
      *(v8 + 96) = v17;
      *(v8 + 64) = v10;
      *(v8 + 80) = v11;
      *(v8 + 48) = v9;
    }

    v2 += 72;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t Collection<>.withoutGraphicalArtifacts.getter(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_1D8B15BF0();
}

uint64_t sub_1D8966D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8B16D20();
  if (a2)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1DA720250](v5);
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D8966DFC()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x1DA720210](0);
  }

  v1 = *(v0 + 16);
  MEMORY[0x1DA720210](1);
  sub_1D8B15A60();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1DA720250](v2);
}

uint64_t sub_1D8966E74()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA720250](v3);
  }

  else
  {
    MEMORY[0x1DA720210](0);
  }

  return sub_1D8B16D80();
}

BOOL sub_1D8966EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (!v3)
  {
    return !v4;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  if (*a1 == *a2 && v3 == v4)
  {
    return v6 == v5;
  }

  v8 = sub_1D8B16BA0();
  result = 0;
  if (v8)
  {
    return v6 == v5;
  }

  return result;
}

BOOL sub_1D8966F78(uint64_t a1)
{
  sub_1D89791F0(a1 + 24, v3);
  v1 = v3[40] > 1u;
  sub_1D897924C(v3);
  return v1;
}

void *sub_1D8966FC8()
{
  v1 = v0;
  v2 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66050);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896721C()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BuiltInAction(0);
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64008);
  v7 = *v0;
  v8 = sub_1D8B168F0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v33 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v42 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v41 + 32;
    v35 = v41 + 16;
    v36 = v7;
    v19 = v37;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = *(v38 + 72) * v23;
        sub_1D89798EC(*(v7 + 48) + v24, v19, type metadata accessor for BuiltInAction);
        v26 = v40;
        v25 = v41;
        v27 = *(v41 + 72) * v23;
        v28 = *(v7 + 56) + v27;
        v29 = v39;
        (*(v41 + 16))(v39, v28, v40);
        v30 = v42;
        sub_1D897999C(v19, *(v42 + 48) + v24, type metadata accessor for BuiltInAction);
        v31 = v29;
        v7 = v36;
        result = (*(v25 + 32))(*(v30 + 56) + v27, v31, v26);
        v17 = v43;
      }

      while (v43);
    }

    v21 = v13;
    v9 = v42;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v22 = *(v11 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_1D896754C()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B13240();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC8);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for CVBundle);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for CVBundle);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1D8967878()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B14D80();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66048);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for BundleClassification);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for BundleClassification);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D8967BA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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

void *sub_1D8967D00()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        result = sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1D8967FEC()
{
  v1 = v0;
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896822C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

char *sub_1D8968388()
{
  v1 = v0;
  v2 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D8B13240();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB8);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1D89798EC(*(v5 + 56) + v26, v35, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_1D897999C(v25, *(v27 + 56) + v26, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1D89686B4()
{
  v1 = v0;
  v31 = sub_1D8B13240();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC0);
  v3 = *v0;
  v4 = sub_1D8B168F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1D8968924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FD8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_1D8968A94()
{
  v1 = v0;
  v2 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FA8);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 48) + v22, v5, type metadata accessor for CVProcessorTaskDescriptor);
        v21 *= 40;
        sub_1D87C1470(*(v6 + 56) + v21, v24);
        sub_1D897999C(v5, *(v8 + 48) + v22, type metadata accessor for CVProcessorTaskDescriptor);
        result = sub_1D8788F40(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D8968CE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D87D3E4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D8943B68(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D8968E84()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v28 - v3;
  v4 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    v30 = v6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = *(v33 + 72) * v22;
        v24 = v31;
        sub_1D89798EC(*(v6 + 48) + v23, v31, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v25 = *(v34 + 72) * v22;
        v26 = v32;
        sub_1D87A0E38(*(v6 + 56) + v25, v32, &qword_1ECA65B78);
        v27 = v35;
        sub_1D897999C(v24, *(v35 + 48) + v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v6 = v30;
        result = sub_1D881F6FC(v26, *(v27 + 56) + v25, &qword_1ECA65B78);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v29;
        v8 = v35;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D8969194()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; *(v19 + 4) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 8 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 4);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v19 = *(v4 + 56) + 8 * v14;
      *v19 = v18;
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

void *sub_1D89692F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_1D8969464()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FE8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_1D89695C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = (*(v2 + 48) + 88 * v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v25 = *(v17 + 10);
      v24[3] = v19;
      v24[4] = v20;
      v21 = v17[1];
      v24[0] = *v17;
      v24[1] = v21;
      v24[2] = v18;
      v22 = *(*(v2 + 56) + 8 * v16);
      memmove((*(v4 + 48) + 88 * v16), v17, 0x58uLL);
      *(*(v4 + 56) + 8 * v16) = v22;
      sub_1D881F59C(v24, v23);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

char *sub_1D89697E0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v34 - v6;
  v43 = sub_1D8B13240();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *v3;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

char *sub_1D8969B2C()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v33 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38);
  v4 = *v0;
  v5 = sub_1D8B168F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v33 + 72) * v19;
        sub_1D89798EC(*(v4 + 48) + v21, v32, type metadata accessor for BundleClassification.ClassificationType);
        v22 = 48 * v19;
        v23 = (*(v4 + 56) + 48 * v19);
        v37 = *v23;
        v36 = *(v23 + 1);
        v35 = v23[16];
        v24 = *(v23 + 3);
        v25 = *(v23 + 4);
        v26 = *(v23 + 5);
        v27 = v34;
        sub_1D897999C(v20, *(v34 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        v28 = *(v27 + 56) + v22;
        *v28 = v37;
        *(v28 + 8) = v36;
        *(v28 + 16) = v35;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;

        v14 = v38;
      }

      while (v38);
    }

    v17 = v10;
    v6 = v34;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D8969DF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
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

void *sub_1D8969F5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_1D896A0C4()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for BundleClassification.ClassificationType);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896A2FC()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for BundleClassification.ClassificationType);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for BundleClassification.ClassificationType);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896A53C()
{
  v1 = v0;
  v2 = type metadata accessor for RefinementState(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for RefinementState);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for BundleClassification.ClassificationType);
        result = sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for RefinementState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1D896A828()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657C8);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 48) + v21, v4, type metadata accessor for CVBundle);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_1D897999C(v4, *(v7 + 48) + v21, type metadata accessor for CVBundle);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896AA68()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassifier.ClassificationInfo(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F88);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for BundleClassification.ClassificationType);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for BundleClassifier.ClassificationInfo);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for BundleClassification.ClassificationType);
        result = sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for BundleClassifier.ClassificationInfo);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1D896AD68()
{
  v1 = v0;
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B38);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 56) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 56) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D896AFA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B40);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
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

void *sub_1D896B104()
{
  v1 = v0;
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F90);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 48) + v22, v5, type metadata accessor for BundleClassification.ClassificationType);
        v21 *= 40;
        sub_1D87C1470(*(v6 + 56) + v21, v24);
        sub_1D897999C(v5, *(v8 + 48) + v22, type metadata accessor for BundleClassification.ClassificationType);
        result = sub_1D8788F40(v24, *(v8 + 56) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D896B350(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1D8B168F0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1D896B4B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65BA0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; v20[1] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 16 * v14);
      v18 = v17[1];
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = (*(v4 + 56) + 16 * v14);
      *v20 = v19;
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

void *sub_1D896B624(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_1D8B13240();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

id sub_1D896B89C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F78);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_1D896BA08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66020);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

void *sub_1D896BB64()
{
  v1 = v0;
  v2 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66000);
  v6 = *v0;
  v7 = sub_1D8B168F0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v3 + 72) * v21;
        sub_1D89798EC(*(v6 + 56) + v23, v5, type metadata accessor for CVDebugArtifactManager.BoresightState);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_1D897999C(v5, *(v8 + 56) + v23, type metadata accessor for CVDebugArtifactManager.BoresightState);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1D896BD9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64968);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_1D881F59C(&v29, v28))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + v16);
      v18 = *(v2 + 56) + 88 * v16;
      v19 = *(v18 + 32);
      v20 = *(v18 + 48);
      v21 = *(v18 + 64);
      v34 = *(v18 + 80);
      v32 = v20;
      v33 = v21;
      v22 = *(v18 + 16);
      v29 = *v18;
      v30 = v22;
      v31 = v19;
      *(*(v4 + 48) + v16) = v17;
      v23 = *(v4 + 56) + 88 * v16;
      v24 = v30;
      *v23 = v29;
      *(v23 + 16) = v24;
      v25 = v31;
      v26 = v32;
      v27 = v33;
      *(v23 + 80) = v34;
      *(v23 + 48) = v26;
      *(v23 + 64) = v27;
      *(v23 + 32) = v25;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_1D896BF5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        v18 = *(*(v2 + 48) + v17);
        sub_1D87C1470(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1D8788F40(v19, *(v4 + 56) + 40 * v17);
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

void *sub_1D896C0DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AF0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_1D896C254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_1D896C3B4(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_1D8B13240();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

void *sub_1D896C62C()
{
  v1 = v0;
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CA8);
  v8 = *v0;
  v9 = sub_1D8B168F0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1D89798EC(*(v8 + 48) + v24, v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        v25 = *(v29 + 72) * v23;
        sub_1D89798EC(*(v8 + 56) + v25, v4, type metadata accessor for TrackManager.TrackedProcessorState);
        sub_1D897999C(v7, *(v10 + 48) + v24, type metadata accessor for TrackManager.TrackedProcessorState.Key);
        result = sub_1D897999C(v4, *(v10 + 56) + v25, type metadata accessor for TrackManager.TrackedProcessorState);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1D896C918()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

void *sub_1D896CA64()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F70);
  v5 = *v0;
  v6 = sub_1D8B168F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1D89798EC(*(v5 + 56) + v22, v4, type metadata accessor for CVTrackSnapshot);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1D897999C(v4, *(v7 + 56) + v22, type metadata accessor for CVTrackSnapshot);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D896CCA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98);
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v24 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B90);
  v4 = *v0;
  v5 = sub_1D8B168F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    v13 = *(v4 + 64);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v14 = v12 & v13;
    v15 = (v11 + 63) >> 6;
    if ((v12 & v13) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = *(*(v4 + 48) + v19);
        v21 = v27;
        v22 = *(v28 + 72) * v19;
        sub_1D87A0E38(*(v4 + 56) + v22, v27, &qword_1ECA65B98);
        v23 = v29;
        *(*(v29 + 48) + v19) = v20;
        result = sub_1D881F6FC(v21, *(v23 + 56) + v22, &qword_1ECA65B98);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D896CEEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA8);
  v2 = *v0;
  v3 = sub_1D8B168F0();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(*(v2 + 56) + v17);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
      *(v21 + 4) = v18;
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

uint64_t sub_1D896D060(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for GreymatterAvailability.AvailabilityKey(0);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66050);
  v45 = a2;
  result = sub_1D8B16900();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v40 = "sualIntelligenceCamera";
    v41 = "";
    v38 = "gs.AppleIntelligence";
    v39 = "IntelligenceCamera.ImageSearch";
    v36 = "ucturedExtraction.addToCalendar";
    v37 = "textComposition.OpenEndedSchema";
    v42 = v10;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v10 + 48);
      v47 = *(v43 + 72);
      v25 = v24 + v47 * v23;
      if (v45)
      {
        sub_1D897999C(v25, v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v46 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for GreymatterAvailability.AvailabilityKey);
        v46 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1D8B16D20();
      sub_1D8B15A60();

      sub_1D8B14060();
      sub_1D8979954(&qword_1EE0E9CE8, MEMORY[0x1E69A12C8]);
      sub_1D8B157A0();
      result = sub_1D8B16D80();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v10 = v42;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v10 = v42;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D897999C(v7, *(v11 + 48) + v47 * v19, type metadata accessor for GreymatterAvailability.AvailabilityKey);
      *(*(v11 + 56) + 8 * v19) = v46;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v10 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D896D538(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1D8B13240();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BuiltInAction(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64008);
  v46 = a2;
  result = sub_1D8B16900();
  v12 = v10;
  v13 = result;
  if (*(v10 + 16))
  {
    v42[0] = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v42[1] = v5 + 16;
    v43 = v10;
    v44 = v5;
    v47 = (v5 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(v45 + 72);
      v28 = *(v12 + 48) + v27 * v26;
      if (v46)
      {
        sub_1D897999C(v28, v9, type metadata accessor for BuiltInAction);
        v29 = *(v12 + 56);
        v30 = v9;
        v31 = *(v44 + 72);
        (*(v44 + 32))(v48, v29 + v31 * v26, v49);
      }

      else
      {
        sub_1D89798EC(v28, v9, type metadata accessor for BuiltInAction);
        v32 = *(v12 + 56);
        v30 = v9;
        v31 = *(v44 + 72);
        (*(v44 + 16))(v48, v32 + v31 * v26, v49);
      }

      sub_1D8B16D20();
      v33 = v30;
      BuiltInAction.hash(into:)(v50);
      result = sub_1D8B16D80();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1D897999C(v33, *(v13 + 48) + v27 * v21, type metadata accessor for BuiltInAction);
      v22 = *(v13 + 56) + v31 * v21;
      v9 = v33;
      result = (*v47)(v22, v48, v49);
      ++*(v13 + 16);
      v12 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42[0];
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v42[0];
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

uint64_t sub_1D896D99C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CVBundle(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC8);
  v43 = a2;
  result = sub_1D8B16900();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D897999C(v27 + v28 * v24, v47, type metadata accessor for CVBundle);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D89798EC(v29 + v28 * v24, v47, type metadata accessor for CVBundle);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D897999C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for CVBundle);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D896DE3C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassification(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B14D80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66048);
  v43 = a2;
  result = sub_1D8B16900();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D897999C(v27 + v28 * v24, v47, type metadata accessor for BundleClassification);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D89798EC(v29 + v28 * v24, v47, type metadata accessor for BundleClassification);
      }

      sub_1D8979954(&qword_1EE0E3AC0, MEMORY[0x1E69DFAC0]);
      result = sub_1D8B15790();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D897999C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for BundleClassification);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D896E2DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FF8);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x1DA7201E0](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D896E550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E40();
  v147 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v117 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13E30();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v115 = v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v118 = v106 - v15;
  v16 = type metadata accessor for ActionPin.PermanentPill(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v136 = v106 - v19;
  v140 = sub_1D8B14E80();
  v20 = *(v140 - 8);
  v21 = MEMORY[0x1EEE9AC00](v140);
  v135 = v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v126 = v106 - v23;
  v125 = sub_1D8B13240();
  v24 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v124 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v143 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v134 = v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v141 = *(v30 - 8);
  v142 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v148 = v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v139 = v106 - v33;
  v127 = v2;
  v34 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C80);
  v35 = sub_1D8B16900();
  v36 = v35;
  if (*(v34 + 16))
  {
    v109 = v10;
    v114 = v6;
    v113 = v4;
    v37 = 0;
    v38 = *(v34 + 64);
    v122 = (v34 + 64);
    v39 = 1 << *(v34 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & v38;
    v121 = (v39 + 63) >> 6;
    v130 = (v20 + 32);
    v129 = (v20 + 8);
    v111 = (v7 + 48);
    v108 = (v7 + 32);
    v42 = (v7 + 8);
    v110 = v7;
    v43 = v7 + 16;
    v120 = (v24 + 32);
    v119 = (v24 + 8);
    v137 = v35 + 64;
    v131 = v34;
    v44 = v134;
    v138 = v35;
    v45 = v139;
    v112 = (v147 + 8);
    v144 = v43;
    while (v41)
    {
      v47 = __clz(__rbit64(v41));
      v48 = (v41 - 1) & v41;
LABEL_15:
      v52 = v47 | (v37 << 6);
      v53 = *(v34 + 48);
      v146 = *(v141 + 72);
      v147 = v48;
      v54 = v53 + v146 * v52;
      if (a2)
      {
        sub_1D897999C(v54, v45, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v55 = *(v34 + 56);
        v145 = *(v143 + 72);
        sub_1D897999C(v55 + v145 * v52, v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      else
      {
        sub_1D89798EC(v54, v45, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
        v56 = *(v34 + 56);
        v145 = *(v143 + 72);
        sub_1D89798EC(v56 + v145 * v52, v44, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      sub_1D8B16D20();
      sub_1D89798EC(v45, v148, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v58 = v42;
          v59 = v43;
          v60 = v126;
          v61 = v140;
          (*v130)(v126, v148, v140);
          MEMORY[0x1DA720210](1);
          sub_1D8979954(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          v62 = v60;
          v43 = v59;
          v42 = v58;
          (*v129)(v62, v61);
        }

        else
        {
          v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
          v73 = v148;
          (*v130)(v135, v148, v140);
          v74 = v73 + v72;
          v75 = v136;
          sub_1D897999C(v74, v136, type metadata accessor for ActionPin.PermanentPill);
          MEMORY[0x1DA720210](2);
          sub_1D8979954(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          v76 = v128;
          sub_1D89798EC(v75, v128, type metadata accessor for ActionPin.PermanentPill);
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v78 = (*(*(v77 - 8) + 48))(v76, 6, v77);
          if (v78 <= 2)
          {
            if (v78)
            {
              v34 = v131;
              MEMORY[0x1DA720210](v78 != 1);
            }

            else
            {
              v80 = *(v128 + *(v77 + 48));
              v81 = v118;
              sub_1D881F6FC(v128, v118, &qword_1ECA635B8);
              MEMORY[0x1DA720210](5);
              v82 = v81;
              v83 = v116;
              sub_1D87A0E38(v82, v116, &qword_1ECA635B8);
              v84 = v114;
              if ((*v111)(v83, 1, v114) == 1)
              {
                sub_1D8B16D40();
              }

              else
              {
                v85 = v115;
                (*v108)(v115, v83, v84);
                sub_1D8B16D40();
                v86 = v117;
                sub_1D8B13E10();
                sub_1D8979954(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                v87 = v113;
                sub_1D8B157A0();
                (*v112)(v86, v87);
                sub_1D8B13DF0();
                sub_1D8B15A60();

                sub_1D8B13DE0();
                sub_1D8B15A60();

                v88 = v85;
                v44 = v134;
                (*v42)(v88, v84);
              }

              v34 = v131;
              MEMORY[0x1DA720210](*(v80 + 16));
              v89 = *(v80 + 16);
              if (v89)
              {
                v107 = a2;
                v90 = (*(v110 + 80) + 32) & ~*(v110 + 80);
                v106[1] = v80;
                v91 = v80 + v90;
                v133 = *(v110 + 72);
                v132 = *(v110 + 16);
                v92 = v117;
                v93 = v113;
                v94 = v114;
                v95 = v109;
                v96 = v42;
                v97 = v112;
                do
                {
                  v132(v95, v91, v94);
                  sub_1D8B13E10();
                  sub_1D8979954(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                  sub_1D8B157A0();
                  (*v97)(v92, v93);
                  sub_1D8B13DF0();
                  sub_1D8B15A60();

                  sub_1D8B13DE0();
                  sub_1D8B15A60();

                  (*v96)(v95, v94);
                  v91 += v133;
                  --v89;
                }

                while (v89);

                a2 = v107;
                v34 = v131;
                v44 = v134;
                v42 = v96;
                v43 = v144;
              }

              else
              {
              }

              sub_1D87A14E4(v118, &qword_1ECA635B8);
            }

            sub_1D897988C(v136, type metadata accessor for ActionPin.PermanentPill);
            (*v129)(v135, v140);
            v45 = v139;
          }

          else
          {
            if (v78 > 4)
            {
              v34 = v131;
              v45 = v139;
              if (v78 == 5)
              {
                v79 = 4;
              }

              else
              {
                v79 = 6;
              }
            }

            else
            {
              v34 = v131;
              v45 = v139;
              if (v78 == 3)
              {
                v79 = 2;
              }

              else
              {
                v79 = 3;
              }
            }

            MEMORY[0x1DA720210](v79);
            sub_1D897988C(v136, type metadata accessor for ActionPin.PermanentPill);
            (*v129)(v135, v140);
          }
        }
      }

      else
      {
        v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0) + 48);
        v64 = v148;
        v65 = v42;
        v66 = v123;
        sub_1D897999C(v148, v123, type metadata accessor for BundleClassification.ClassificationType);
        v67 = a2;
        v68 = v124;
        v69 = v125;
        (*v120)(v124, v64 + v63, v125);
        MEMORY[0x1DA720210](0);
        BundleClassification.ClassificationType.hash(into:)(&v149);
        sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        sub_1D8B157A0();
        sub_1D8B15A60();
        v45 = v139;

        v70 = v68;
        a2 = v67;
        v34 = v131;
        v44 = v134;
        (*v119)(v70, v69);
        v71 = v66;
        v42 = v65;
        v43 = v144;
        sub_1D897988C(v71, type metadata accessor for BundleClassification.ClassificationType);
      }

      result = sub_1D8B16D80();
      v36 = v138;
      v98 = -1 << *(v138 + 32);
      v99 = result & ~v98;
      v100 = v99 >> 6;
      if (((-1 << v99) & ~*(v137 + 8 * (v99 >> 6))) == 0)
      {
        v101 = 0;
        v102 = (63 - v98) >> 6;
        while (++v100 != v102 || (v101 & 1) == 0)
        {
          v103 = v100 == v102;
          if (v100 == v102)
          {
            v100 = 0;
          }

          v101 |= v103;
          v104 = *(v137 + 8 * v100);
          if (v104 != -1)
          {
            v46 = __clz(__rbit64(~v104)) + (v100 << 6);
            goto LABEL_7;
          }
        }

LABEL_59:
        __break(1u);
        return result;
      }

      v46 = __clz(__rbit64((-1 << v99) & ~*(v137 + 8 * (v99 >> 6)))) | v99 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v137 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      sub_1D897999C(v45, v36[6] + v146 * v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D897999C(v44, v36[7] + v145 * v46, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      ++v36[2];
      v41 = v147;
    }

    v49 = v37;
    result = v122;
    while (1)
    {
      v37 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v37 >= v121)
      {
        break;
      }

      v51 = v122[v37];
      ++v49;
      if (v51)
      {
        v47 = __clz(__rbit64(v51));
        v48 = (v51 - 1) & v51;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v105 = 1 << *(v34 + 32);
      if (v105 >= 64)
      {
        bzero(v122, ((v105 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v122 = -1 << v105;
      }

      *(v34 + 16) = 0;
    }
  }

  *v127 = v36;
  return result;
}

uint64_t sub_1D896F65C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C90);
  v46 = a2;
  result = sub_1D8B16900();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v42 = v3;
    v43 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v44 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v46)
      {
        sub_1D897999C(v25, v7, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v47 = *(*(v10 + 56) + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
        v47 = *(*(v10 + 56) + 8 * v23);
      }

      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v26 = type metadata accessor for ActionPin(0);
      v27 = &v7[*(v26 + 20)];
      v28 = v27[2];
      v29 = v27[3];
      v30 = v27[4];
      v31 = v27[5];
      v32 = v27[6];
      v33 = v27[7];
      sub_1D8818B80(*v27, v27[1]);
      sub_1D8818B80(v28, v29);
      sub_1D8818B80(v30, v31);
      sub_1D8818B80(v32, v33);
      sub_1D8B15A60();
      sub_1D87CF3E8(v48, *&v7[*(v26 + 28)]);
      sub_1D8B16D40();
      ActionPin.Pill.hash(into:)(v48);
      result = sub_1D8B16D80();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v10 = v43;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v10 = v43;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D897999C(v7, *(v11 + 48) + v24 * v19, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      *(*(v11 + 56) + 8 * v19) = v47;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D896FAE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CB8);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1D8B16D10();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D896FD58(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ActionPredictor.BundleActionPredictionResult(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB8);
  v43 = a2;
  result = sub_1D8B16900();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D897999C(v27 + v28 * v24, v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D89798EC(v29 + v28 * v24, v47, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D897999C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ActionPredictor.BundleActionPredictionResult);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D89701F8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D8B13240();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FC0);
  v40 = a2;
  result = sub_1D8B16900();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D89705B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FD8);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D897085C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FA8);
  v42 = a2;
  result = sub_1D8B16900();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    v39 = v8;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v43 = *(v40 + 72);
      v24 = v23 + v43 * v22;
      if (v42)
      {
        sub_1D897999C(v24, v7, type metadata accessor for CVProcessorTaskDescriptor);
        sub_1D8788F40((*(v8 + 56) + 40 * v22), v45);
      }

      else
      {
        sub_1D89798EC(v24, v7, type metadata accessor for CVProcessorTaskDescriptor);
        sub_1D87C1470(*(v8 + 56) + 40 * v22, v45);
      }

      sub_1D8B16D20();
      sub_1D87CFE70(v44, *v7);
      v25 = v7;
      v26 = v7 + *(v41 + 20);
      MEMORY[0x1DA720210](*v26);
      v27 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v44);
      sub_1D8818BD0(v44, *&v26[v27[6]]);
      sub_1D88911A0(*&v26[v27[7]], *&v26[v27[7] + 8], *&v26[v27[7] + 16], *&v26[v27[7] + 24]);
      v28 = *&v26[v27[8]];
      if (v28 == 0.0)
      {
        v28 = 0.0;
      }

      MEMORY[0x1DA720250](*&v28);
      result = sub_1D8B16D80();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v8 = v39;
        v7 = v25;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v8 = v39;
      v7 = v25;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_1D897999C(v7, *(v10 + 48) + v43 * v18, type metadata accessor for CVProcessorTaskDescriptor);
      result = sub_1D8788F40(v45, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v8 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v3 = v10;
  return result;
}

uint64_t sub_1D8970C98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65CD0);
  v33 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1D8943B68(v24, v34);
      }

      else
      {
        sub_1D87D3E4C(v24, v34);
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1D8943B68(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8970F50(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1D8B13CF0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78);
  v57 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v47 - v10;
  v11 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B70);
  v58 = a2;
  v14 = sub_1D8B16900();
  v15 = v14;
  if (*(v13 + 16))
  {
    v47 = v2;
    v16 = 0;
    v17 = *(v13 + 64);
    v48 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v51 = v6 + 16;
    v49 = v6;
    v22 = (v6 + 8);
    v52 = v14 + 64;
    v54 = v13;
    v23 = v59;
    v50 = v21;
    v53 = v14;
    while (v20)
    {
      v62 = (v20 - 1) & v20;
      v63 = v16;
      v25 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_15:
      v30 = *(v13 + 48);
      v61 = *(v55 + 72);
      v31 = v30 + v61 * v25;
      if (v58)
      {
        sub_1D897999C(v31, v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v32 = *(v13 + 56);
        v60 = *(v57 + 72);
        sub_1D881F6FC(v32 + v60 * v25, v64, &qword_1ECA65B78);
      }

      else
      {
        sub_1D89798EC(v31, v23, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
        v33 = *(v13 + 56);
        v60 = *(v57 + 72);
        sub_1D87A0E38(v33 + v60 * v25, v64, &qword_1ECA65B78);
      }

      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v34 = *(v23 + *(v56 + 20));
      MEMORY[0x1DA720210](*(v34 + 16));
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = v34 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
        v37 = *(v49 + 72);
        v38 = *(v49 + 16);
        do
        {
          v38(v8, v36, v5);
          sub_1D8979954(&qword_1ECA65FD0, MEMORY[0x1E69E0420]);
          sub_1D8B157A0();
          (*v22)(v8, v5);
          v36 += v37;
          --v35;
        }

        while (v35);
      }

      result = sub_1D8B16D80();
      v15 = v53;
      v39 = -1 << *(v53 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v52 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        v13 = v54;
        v23 = v59;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v52 + 8 * v41);
          if (v45 != -1)
          {
            v24 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v40) & ~*(v52 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
      v13 = v54;
      v23 = v59;
LABEL_7:
      *(v52 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_1D897999C(v23, v15[6] + v61 * v24, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D881F6FC(v64, v15[7] + v60 * v24, &qword_1ECA65B78);
      ++v15[2];
      v21 = v50;
      v20 = v62;
      v16 = v63;
    }

    v26 = v16;
    result = v48;
    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v28 >= v21)
      {
        break;
      }

      v29 = v48[v28];
      ++v26;
      if (v29)
      {
        v62 = (v29 - 1) & v29;
        v63 = v28;
        v25 = __clz(__rbit64(v29)) | (v28 << 6);
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_37;
    }

    v46 = 1 << *(v13 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero(v48, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v48 = -1 << v46;
    }

    *(v13 + 16) = 0;
  }

LABEL_37:
  *v3 = v15;
  return result;
}

uint64_t sub_1D89715C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56) + 8 * v20;
      v22 = *(*(v5 + 48) + v20);
      v23 = *(v21 + 4);
      v24 = *v21;
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v22);
      result = sub_1D8B16D80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 8 * v15;
      *v16 = v24;
      *(v16 + 4) = v23;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8971854(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64BC0);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8971AFC(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - v10;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v50 = a2;
  result = sub_1D8B16900();
  v16 = result;
  if (*(v14 + 16))
  {
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v12;
    v22 = v20 & *(v14 + 64);
    v23 = (v19 + 63) >> 6;
    v46 = (v21 + 16);
    v47 = v21;
    v44 = v5;
    v45 = v9 + 16;
    v48 = v14;
    v49 = v9;
    v51 = (v9 + 32);
    v52 = (v21 + 32);
    v24 = result + 64;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v14 + 48);
      v53 = *(v21 + 72);
      v31 = v30 + v53 * v29;
      if (v50)
      {
        (*v52)(v56, v31, v11);
        v32 = *(v14 + 56);
        v33 = *(v49 + 72);
        (*(v49 + 32))(v54, v32 + v33 * v29, v55);
      }

      else
      {
        (*v46)(v56, v31, v11);
        v34 = *(v14 + 56);
        v33 = *(v49 + 72);
        (*(v49 + 16))(v54, v34 + v33 * v29, v55);
      }

      sub_1D8979954(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      result = sub_1D8B15790();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v24 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v24 + 8 * v37);
          if (v41 != -1)
          {
            v25 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v36) & ~*(v24 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      (*v52)((*(v16 + 48) + v53 * v25), v56, v11);
      result = (*v51)(*(v16 + 56) + v33 * v25, v54, v55);
      ++*(v16 + 16);
      v21 = v47;
      v14 = v48;
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v23)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v50 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v14 + 32);
    v7 = v44;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v16;
  return result;
}

uint64_t sub_1D8971FA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FE8);
  v30 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      MEMORY[0x1DA720210](v20);
      result = sub_1D8B16D80();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8972230(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65FB0);
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v2;
    v46 = v5;
    v8 = 0;
    v11 = *(v5 + 64);
    v10 = (v5 + 64);
    v9 = v11;
    v12 = 1 << *(v10 - 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v23 = __clz(__rbit64(v14));
      v24 = (v14 - 1) & v14;
LABEL_15:
      v27 = v23 | (v8 << 6);
      v47 = v24;
      if (a2)
      {
        v28 = *(v46 + 48) + 88 * v27;
        sub_1D88C5438(v28, &v50);
        v30 = *(v28 + 72);
        v29 = *(v28 + 80);
        v31 = *(*(v46 + 56) + 8 * v27);
      }

      else
      {
        v32 = *(v46 + 48) + 88 * v27;
        v33 = *(v32 + 32);
        v34 = *(v32 + 48);
        v35 = *(v32 + 64);
        v29 = *(v32 + 80);
        v55 = v29;
        v53 = v34;
        v54 = v35;
        v36 = *(v32 + 16);
        v50 = *v32;
        v51 = v36;
        v52 = v33;
        v31 = *(*(v46 + 56) + 8 * v27);
        v30 = *(&v35 + 1);
        sub_1D881F59C(&v50, v48);
      }

      sub_1D88C5438(&v50, v56);
      sub_1D88C5438(v56, &v50);
      *(&v54 + 1) = v30;
      v55 = v29;
      v48[2] = v52;
      v48[3] = v53;
      v48[4] = v54;
      v49 = v29;
      v48[0] = v50;
      v48[1] = v51;
      sub_1D8B16D20();
      sub_1D881F548();
      sub_1D8B157A0();
      result = sub_1D8B16D80();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v16 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v16 + 8 * v39);
          if (v43 != -1)
          {
            v17 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v38) & ~*(v16 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v7 + 48) + 88 * v17;
      v19 = v51;
      *v18 = v50;
      v20 = v52;
      v21 = v53;
      v22 = v54;
      *(v18 + 80) = v55;
      *(v18 + 48) = v21;
      *(v18 + 64) = v22;
      *(v18 + 16) = v19;
      *(v18 + 32) = v20;
      *(*(v7 + 56) + 8 * v17) = v31;
      ++*(v7 + 16);
      v14 = v47;
    }

    v25 = v8;
    while (1)
    {
      v8 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v15)
      {
        break;
      }

      v26 = v10[v8];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_35;
    }

    v3 = v45;
    v44 = 1 << *(v46 + 32);
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v46 + 16) = 0;
  }

LABEL_35:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8972614(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C38);
  v44 = a2;
  result = sub_1D8B16900();
  v9 = result;
  if (*(v7 + 16))
  {
    v41 = v2;
    v42 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v20 = (v14 - 1) & v14;
LABEL_15:
      v23 = v19 | (v10 << 6);
      v45 = v20;
      v24 = *(v43 + 72);
      v25 = *(v7 + 48) + v24 * v23;
      if (v44)
      {
        sub_1D897999C(v25, v50, type metadata accessor for BundleClassification.ClassificationType);
        v26 = (*(v7 + 56) + 48 * v23);
        v49 = *v26;
        v48 = *(v26 + 1);
        v47 = v26[16];
        v27 = *(v26 + 4);
        v46 = *(v26 + 3);
        v28 = *(v26 + 5);
      }

      else
      {
        sub_1D89798EC(v25, v50, type metadata accessor for BundleClassification.ClassificationType);
        v29 = (*(v7 + 56) + 48 * v23);
        v49 = *v29;
        v48 = *(v29 + 1);
        v47 = v29[16];
        v30 = v24;
        v32 = *(v29 + 3);
        v31 = *(v29 + 4);
        v28 = *(v29 + 5);

        v46 = v32;
        v27 = v31;
        v24 = v30;
      }

      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v51);
      result = sub_1D8B16D80();
      v33 = -1 << *(v9 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v16 + 8 * v35);
          if (v39 != -1)
          {
            v17 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1D897999C(v50, *(v9 + 48) + v24 * v17, type metadata accessor for BundleClassification.ClassificationType);
      v18 = *(v9 + 56) + 48 * v17;
      *v18 = v49;
      *(v18 + 8) = v48;
      *(v18 + 16) = v47;
      v14 = v45;
      *(v18 + 24) = v46;
      *(v18 + 32) = v27;
      *(v18 + 40) = v28;
      ++*(v9 + 16);
      v7 = v42;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v7 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v11, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D8972A20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66018);
  v36 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = v22[1];
      v37 = *v22;
      v24 = v22[2];
      v25 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      if (v23)
      {
        MEMORY[0x1DA720210](1);
        sub_1D8B15A60();
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x1DA720250](v26);
      }

      else
      {
        MEMORY[0x1DA720210](0);
      }

      result = sub_1D8B16D80();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v37;
      v16[1] = v23;
      v16[2] = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8972D20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10);
  v33 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8972FC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B80);
  v34 = a2;
  result = sub_1D8B16900();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D8B16D20();
      sub_1D8B15A60();
      result = sub_1D8B16D80();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D8973264(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C58);
  v40 = a2;
  result = sub_1D8B16900();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v3;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    v41 = v8;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v39 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v40)
      {
        sub_1D897999C(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
      }

      v26 = v7;
      v27 = *(*(v41 + 56) + 8 * v23);
      sub_1D8B16D20();
      v28 = v26;
      BundleClassification.ClassificationType.hash(into:)(v42);
      result = sub_1D8B16D80();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D897999C(v28, *(v11 + 48) + v24 * v19, type metadata accessor for BundleClassification.ClassificationType);
      *(*(v11 + 56) + 8 * v19) = v27;
      v7 = v28;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D89735DC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C48);
  v43 = a2;
  result = sub_1D8B16900();
  v10 = v8;
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v3;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v42 + 72);
      v25 = *(v10 + 48) + v24 * v23;
      if (v43)
      {
        sub_1D897999C(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
        v26 = *(v10 + 56);
        v27 = v7;
        v28 = *(v26 + 8 * v23);
      }

      else
      {
        sub_1D89798EC(v25, v7, type metadata accessor for BundleClassification.ClassificationType);
        v29 = *(v10 + 56);
        v27 = v7;
        v28 = *(v29 + 8 * v23);
      }

      sub_1D8B16D20();
      v30 = v27;
      BundleClassification.ClassificationType.hash(into:)(v44);
      result = sub_1D8B16D80();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1D897999C(v30, *(v11 + 48) + v24 * v19, type metadata accessor for BundleClassification.ClassificationType);
      *(*(v11 + 56) + 8 * v19) = v28;
      v7 = v30;
      ++*(v11 + 16);
      v10 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}