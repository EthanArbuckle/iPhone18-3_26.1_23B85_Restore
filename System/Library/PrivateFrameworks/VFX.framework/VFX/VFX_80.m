uint64_t sub_1AF747ED0(uint64_t a1)
{
  sub_1AF0D4AA4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF747F54()
{
  sub_1AF0D4E74();
  v135 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v134 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1AFDFC298();
  v4 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v5);
  v132 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for TextureCache.TextureKey();
  v127 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v7);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v126 = &v121 - v12;
  sub_1AF74EED8(0, &qword_1EB63E198, &unk_1EB63E1A0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v137 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v136 = &v121 - v18;
  os_unfair_lock_lock(*(v0 + 48));
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v19 = sub_1AFDFDA28();
  if (qword_1ED731058 != -1)
  {
    v120 = v19;
    swift_once();
    v19 = v120;
  }

  v152 = 0;
  v138 = qword_1ED73B8A0;
  sub_1AF0D4F18(v19, &v152, 0xD000000000000015, 0x80000001AFF32B00);
  v122 = v0;
  v20 = *(v0 + 72);
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  v124 = (v21 + 63) >> 6;
  v131 = (v4 + 32);

  v123 = 0;
  v25 = 0;
  v128 = v24;
  v26 = v24 + 72;
  v139 = xmmword_1AFE431C0;
  v129 = v9;
  v130 = v24 + 72;
  v27 = v137;
  if (!v23)
  {
    goto LABEL_9;
  }

LABEL_8:
  v141 = v25;
  v28 = v25;
LABEL_16:
  v142 = (v23 - 1) & v23;
  v31 = __clz(__rbit64(v23)) | (v28 << 6);
  v32 = v128;
  v33 = v126;
  sub_1AF74FBE4(*(v128 + 48) + *(v127 + 72) * v31, v126, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74EA6C(*(v32 + 56) + 104 * v31, &v152);
  sub_1AF74EF30(0, &unk_1EB63E1A0);
  v35 = v34;
  v36 = *(v34 + 48);
  sub_1AF74E7B0(v33, v27);
  sub_1AF446690(&v152, v27 + v36);
  (*(*(v35 - 8) + 56))(v27, 0, 1, v35);
  while (1)
  {
    v37 = v136;
    sub_1AF74EF9C(v27, v136, &qword_1EB63E198, &unk_1EB63E1A0);
    sub_1AF74EF30(0, &unk_1EB63E1A0);
    if ((*(*(v35 - 8) + 48))(v37, 1, v35) == 1)
    {
      break;
    }

    v38 = *(v35 + 48);
    sub_1AF74E7B0(v37, v9);
    sub_1AF74EA04((v37 + v38), &v152);
    sub_1AF74EA3C(v37 + v38);
    if (v155 > 1u)
    {
      if (v155 == 2)
      {
        v46 = v152;
        swift_getErrorValue();
        v43 = sub_1AFDFF1D8();
        v44 = v47;

        v42 = 0;
        v45 = 0xE000000000000000;
      }

      else
      {
        v42 = 0;
        v45 = 0xE000000000000000;
        v44 = 0xE400000000000000;
        v43 = 1701736302;
      }

      goto LABEL_85;
    }

    if (!v155)
    {
      v39 = v152;
      v40 = v153;
      v41 = v154;
      v149 = 0x20676E6964616F6CLL;
      v150 = 0xE800000000000000;

      MEMORY[0x1B2718AE0](v39, v40);

      swift_bridgeObjectRelease_n();
      v42 = 0;
      v43 = v149;
      v44 = v150;
      v45 = 0xE000000000000000;
      goto LABEL_85;
    }

    sub_1AF74EB90(&v152, &v149);
    v48 = *&v9[*(v140 + 24)];
    sub_1AF74E914(&v149, &v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (v148)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EBF8(&v145);
      if (Strong)
      {
        v50 = [Strong length];
        v145 = 1534423139;
        v146 = 0xE400000000000000;
        v51 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
        [v51 setCountStyle_];
        v52 = [v51 stringFromByteCount_];
        v53 = sub_1AFDFCEF8();
        v55 = v54;

        MEMORY[0x1B2718AE0](v53, v55);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v56 = v145;
        v57 = v146;
        v58 = sub_1AF420554(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v60 = *(v58 + 2);
        v59 = *(v58 + 3);
        if (v60 >= v59 >> 1)
        {
          v58 = sub_1AF420554(v59 > 1, v60 + 1, 1, v58);
        }

        swift_unknownObjectRelease();
        *(v58 + 2) = v60 + 1;
        v61 = &v58[16 * v60];
        *(v61 + 4) = v56;
        *(v61 + 5) = v57;
        v123 += v50;
      }

      else
      {
        v58 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      sub_1AF74E994(&v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      v58 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF74E914(v151, &v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v146 == 1)
    {
      sub_1AF74E994(&v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v125 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v63 = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EC28(&v145);
      if (v63)
      {
        swift_getObjectType();
        v64 = sub_1AF4730E8();
        v145 = 1534423143;
        v146 = 0xE400000000000000;
        v65 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
        [v65 setCountStyle_];
        v66 = [v65 stringFromByteCount_];
        v67 = sub_1AFDFCEF8();
        v69 = v68;

        MEMORY[0x1B2718AE0](v67, v69);

        MEMORY[0x1B2718AE0](93, 0xE100000000000000);
        v70 = v145;
        v71 = v146;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
        }

        v73 = *(v58 + 2);
        v72 = *(v58 + 3);
        if (v73 >= v72 >> 1)
        {
          v58 = sub_1AF420554(v72 > 1, v73 + 1, 1, v58);
        }

        *(v58 + 2) = v73 + 1;
        v74 = &v58[16 * v73];
        *(v74 + 4) = v70;
        *(v74 + 5) = v71;
        v123 += v64;
        sub_1AF0D6048(0, &qword_1ED730B50, 255, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v75 = swift_allocObject();
        *(v75 + 16) = v139;
        *(v75 + 56) = MEMORY[0x1E69E6530];
        *(v75 + 64) = MEMORY[0x1E69E65A8];
        *(v75 + 32) = v63;
        v125 = sub_1AFDFCF38();
        v45 = v76;
        swift_unknownObjectRelease();
      }

      else
      {
        v125 = 0;
        v45 = 0xE000000000000000;
      }
    }

    sub_1AF74E914(v151, &v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v146 == 1)
    {
      sub_1AF74E994(&v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v77 = 0;
    }

    else
    {
      v77 = v147;
      sub_1AF74EC28(&v145);
    }

    sub_1AF74E914(&v149, &v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (v148)
    {
      v78 = v147;
      sub_1AF74EBF8(&v145);
    }

    else
    {
      sub_1AF74E994(&v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      v78 = 0;
    }

    if (v78 + v77 >= 1)
    {
      v143 = 0x284B41454CLL;
      v144 = 0xE500000000000000;
      sub_1AF74E914(v151, &v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      if (v146 == 1)
      {
        sub_1AF74E994(&v145, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
        v79 = 0;
      }

      else
      {
        v79 = v147;
        sub_1AF74EC28(&v145);
      }

      sub_1AF74E914(&v149, &v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      if (v148)
      {
        v85 = v147;
        sub_1AF74EBF8(&v145);
      }

      else
      {
        sub_1AF74E994(&v145, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
        v85 = 0;
      }

      v145 = v85 + v79;
      v86 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v86);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v84 = v143;
      v83 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
      }

      v81 = *(v58 + 2);
      v87 = *(v58 + 3);
      v82 = v81 + 1;
      if (v81 >= v87 >> 1)
      {
        v58 = sub_1AF420554(v87 > 1, v81 + 1, 1, v58);
      }

LABEL_64:
      *(v58 + 2) = v82;
      v88 = &v58[16 * v81];
      *(v88 + 4) = v84;
      *(v88 + 5) = v83;
      goto LABEL_65;
    }

    if (!*(v58 + 2))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1AF420554(0, 1, 1, v58);
      }

      v81 = *(v58 + 2);
      v80 = *(v58 + 3);
      v82 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v58 = sub_1AF420554(v80 > 1, v81 + 1, 1, v58);
      }

      v83 = 0xE400000000000000;
      v84 = 1701736302;
      goto LABEL_64;
    }

LABEL_65:
    if ((v48 & 0x60) != 0)
    {
      v145 = 0;
      v146 = 0xE000000000000000;
      if ((v48 & 0x20) != 0)
      {
        v89 = 0xE600000000000000;
      }

      else
      {
        v89 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0]((v48 << 58 >> 63) & 0x2D636F6C6C61, v89);

      if ((v48 & 0x40) != 0)
      {
        v90 = 0xE400000000000000;
      }

      else
      {
        v90 = 0xE000000000000000;
      }

      MEMORY[0x1B2718AE0]((v48 << 57 >> 63) & 0x2D6E6567, v90);

      MEMORY[0x1B2718AE0](0x70616D70696DLL, 0xE600000000000000);
      v91 = v145;
      v92 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
      }

      v94 = *(v58 + 2);
      v93 = *(v58 + 3);
      if (v94 >= v93 >> 1)
      {
        v58 = sub_1AF420554(v93 > 1, v94 + 1, 1, v58);
      }

      *(v58 + 2) = v94 + 1;
      v95 = &v58[16 * v94];
      *(v95 + 4) = v91;
      *(v95 + 5) = v92;
    }

    if ((v48 & 0x100) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
      }

      v97 = *(v58 + 2);
      v96 = *(v58 + 3);
      v42 = v125;
      if (v97 >= v96 >> 1)
      {
        v58 = sub_1AF420554(v96 > 1, v97 + 1, 1, v58);
      }

      *(v58 + 2) = v97 + 1;
      v98 = &v58[16 * v97];
      *(v98 + 4) = 0x6361667275736F69;
      *(v98 + 5) = 0xE900000000000065;
    }

    else
    {
      v42 = v125;
    }

    v145 = v58;
    sub_1AF74FCC4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF488088();
    v43 = sub_1AFDFCD98();
    v44 = v99;

    sub_1AF74EBC8(&v149);
LABEL_85:
    v152 = sub_1AFDFC028();
    v153 = v100;
    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v43, v44);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v42, v45);

    v102 = v152;
    v101 = v153;
    v103 = sub_1AFDFDA28();
    if (qword_1ED730E98 != -1)
    {
      swift_once();
    }

    sub_1AF0D6048(0, &qword_1ED730B50, 255, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
    v104 = swift_allocObject();
    *(v104 + 16) = v139;
    *(v104 + 56) = MEMORY[0x1E69E6158];
    *(v104 + 64) = sub_1AF0D544C();
    *(v104 + 32) = v102;
    *(v104 + 40) = v101;

    sub_1AFDFC4C8();

    v105 = v132;
    sub_1AFDFC288();
    v106 = v134;
    v107 = v135[12];
    v108 = v135[16];
    v109 = &v134[v135[20]];
    (*v131)(v134, v105, v133);
    *(v106 + v107) = v103;
    *(v106 + v108) = 0;
    *v109 = v102;
    v109[1] = v101;
    sub_1AFDFC608();

    sub_1AF74EB30(v106, sub_1AF0D4E74);
    v9 = v129;
    sub_1AF74EB30(v129, type metadata accessor for TextureCache.TextureKey);
    v26 = v130;
    v25 = v141;
    v23 = v142;
    v27 = v137;
    if (v142)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (v124 <= v25 + 1)
    {
      v29 = v25 + 1;
    }

    else
    {
      v29 = v124;
    }

    v30 = v29 - 1;
    while (1)
    {
      v28 = v25 + 1;
      if (v25 + 1 >= v124)
      {
        break;
      }

      v23 = *(v26 + 8 * v25++);
      if (v23)
      {
        v141 = v28;
        goto LABEL_16;
      }
    }

    sub_1AF74EF30(0, &unk_1EB63E1A0);
    v35 = v62;
    (*(*(v62 - 8) + 56))(v27, 1, 1, v62);
    v141 = v30;
    v142 = 0;
  }

  v152 = 0;
  v153 = 0xE000000000000000;
  sub_1AFDFE218();

  v152 = 0xD000000000000014;
  v153 = 0x80000001AFF32B20;
  v110 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v110 setCountStyle_];
  v111 = v123;
  v112 = [v110 stringFromByteCount_];
  v113 = sub_1AFDFCEF8();
  v115 = v114;

  MEMORY[0x1B2718AE0](v113, v115);

  v116 = v152;
  v117 = v153;
  v118 = sub_1AFDFDA28();
  v152 = 0;
  sub_1AF0D4F18(v118, &v152, v116, v117);

  os_unfair_lock_unlock(*(v122 + 48));
  return v111;
}

uint64_t sub_1AF7490D8(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v16 = v9;
  v11 = sub_1AF41A700(a1);
  v12 = v10;
  result = v9[2] + ((v10 & 1) == 0);
  if (v9[3] >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v2 = v9;
      if (v10)
      {
LABEL_8:
        ++*(v9[7] + 8 * v11);
        return result;
      }
    }

    else
    {
      result = sub_1AF84BE98();
      v9 = v16;
      *v2 = v16;
      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    sub_1AF74FBE4(a1, v7, type metadata accessor for TextureCache.TextureKey);
    result = sub_1AF843B0C(v11, v7, 0, v9);
    goto LABEL_8;
  }

  sub_1AF83A630(result, isUniquelyReferenced_nonNull_native);
  v9 = v16;
  result = sub_1AF41A700(a1);
  if ((v12 & 1) == (v14 & 1))
  {
    v11 = result;
    *v2 = v9;
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF749250(uint64_t a1, uint64_t a2, char a3)
{
  sub_1AF74EA04(v3, v27);
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      sub_1AF74A46C(v27);
    }

    v9 = 0;
  }

  else if (v30)
  {
    sub_1AF74EB90(v27, v25);
    sub_1AF74E914(v25, v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v24[0])
    {
      sub_1AF74EE0C(v23, &v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (Strong)
      {
        v11 = v17 + 1;
      }

      else
      {
        v11 = 0;
      }

      *(&v16 + 1) = Strong;
      v17 = v11;
      sub_1AF74EE44(&v16, v21);
      sub_1AF74EBF8(v23);
    }

    else
    {
      sub_1AF74E994(v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v21, 0, sizeof(v21));
      v22 = 0;
    }

    sub_1AF74E914(&v26, v23, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (*(&v23[0] + 1) == 1)
    {
      sub_1AF74E994(v23, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v16 = xmmword_1AFE21110;
      v17 = 0;
    }

    else
    {
      sub_1AF74ED90(v23, v18);
      v12 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      if (v12)
      {
        v13 = v20 + 1;
      }

      else
      {
        v13 = 0;
      }

      v19 = v12;
      v20 = v13;
      sub_1AF74EDD0(v18, &v16);
      sub_1AF74EC28(v23);
    }

    memset(v23, 0, sizeof(v23));
    v24[0] = 0u;
    v24[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v21, v23, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v16, v24 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74A46C(v3);
    sub_1AF74EEA0(v23, v3);
    *(v3 + 96) = 1;
    v14 = sub_1AF7494D8();
    sub_1AF74EBC8(v25);
    sub_1AF74EBC8(v23);
    v9 = v14 ^ 1;
  }

  else
  {
    v7 = v28;
    v8 = v29 + (a3 & 1);
    sub_1AF74A46C(v3);

    *v3 = a1;
    *(v3 + 8) = a2;
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
    *(v3 + 96) = 0;

    v9 = 1;
  }

  return v9 & 1;
}

uint64_t sub_1AF7494D8()
{
  sub_1AF74E914(v0, v4, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1AF74EBF8(v4);
    if (Strong)
    {
LABEL_8:
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    sub_1AF74E994(v4, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  }

  sub_1AF74E914(v0 + 72, v4, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
  if (v5 == 1)
  {
    sub_1AF74E994(v4, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    return 1;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  sub_1AF74EC28(v4);
  if (v3)
  {
    goto LABEL_8;
  }

  return 1;
}

void sub_1AF7495C8(_OWORD *a1@<X8>)
{
  sub_1AF74EA04(v1, v26);
  if (v27 == 2)
  {
    v3 = v26[0];
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF32BE0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v4 = v21[0];
    v5 = sub_1AFDFDA08();
    *&v21[0] = 1;
    sub_1AF75A4B4(v5, v4, *(&v4 + 1), v21);

    v6 = xmmword_1AFE74F10;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
LABEL_17:
    *a1 = v7;
    a1[1] = v6;
    a1[2] = v8;
    a1[3] = v9;
    return;
  }

  if (v27 == 1)
  {
    sub_1AF74EB90(v26, v24);
    sub_1AF74991C(v28);
    v12 = v28[0];
    v13 = v28[1];
    v10 = v28[3];
    v11 = v28[2];
    sub_1AF74E914(v24, v21, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v22[0])
    {
      sub_1AF74EE0C(v21, &v14);
      if (!--v15)
      {
        swift_unknownObjectRelease();
        *(&v14 + 1) = 0;
      }

      sub_1AF74EE44(&v14, v19);
      sub_1AF74EBF8(v21);
    }

    else
    {
      sub_1AF74E994(v21, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v19, 0, sizeof(v19));
      v20 = 0;
    }

    sub_1AF74E914(&v25, v21, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74EBC8(v24);
    if (*(&v21[0] + 1) == 1)
    {
      sub_1AF74E994(v21, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v14 = xmmword_1AFE21110;
      v15 = 0;
    }

    else
    {
      sub_1AF74ED90(v21, v16);
      if (!--v18)
      {
        swift_unknownObjectRelease();
        v17 = 0;
      }

      sub_1AF74EDD0(v16, &v14);
      sub_1AF74EC28(v21);
    }

    memset(v21, 0, sizeof(v21));
    v22[0] = 0u;
    v22[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v19, v21, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v14, v22 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    v23 = 1;
    sub_1AF74ECD8(v21, v1);
    v7 = v12;
    v6 = v13;
    v9 = v10;
    v8 = v11;
    goto LABEL_17;
  }

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF74991C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF749EDC(&v13);
  v4 = v18;
  if (!v18)
  {
    sub_1AF74E914(v1 + 72, v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    if (v12 == 1)
    {
      result = sub_1AF74E994(v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1AF74EC28(v11);
      if (Strong)
      {
        v8 = 0;
        v9 = 0;
        *&v7 = Strong;
        goto LABEL_8;
      }
    }

    v6 = 0;
    v9 = 0;
    v4 = 0;
    v7 = 0uLL;
    v8 = 0x1FFFFFFFELL;
    v5 = 0uLL;
    goto LABEL_8;
  }

  v5 = v16;
  v6 = v14;
  v7 = v13;
  v8 = v15 & 1;
  v9 = v17 & 0xFFFFFF | 0x8000000000000000;
LABEL_8:
  *a1 = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v5;
  *(a1 + 48) = v9;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_1AF749A08(uint64_t a1)
{
  sub_1AF74EA04(v1, v16);
  if (v17 == 2)
  {
    return sub_1AF74A46C(v16);
  }

  if (v17 == 1)
  {
    sub_1AF74EB90(v16, v14);
    sub_1AF74E914(v14, v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    if (*&v12[0])
    {
      sub_1AF74EE0C(v11, &v4);
      v5 -= a1;
      if (!v5)
      {
        swift_unknownObjectRelease();
        *(&v4 + 1) = 0;
      }

      sub_1AF74EE44(&v4, v9);
      sub_1AF74EBF8(v11);
    }

    else
    {
      sub_1AF74E994(v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
      memset(v9, 0, sizeof(v9));
      v10 = 0;
    }

    sub_1AF74E914(&v15, v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    sub_1AF74EBC8(v14);
    if (*(&v11[0] + 1) == 1)
    {
      sub_1AF74E994(v11, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
      v4 = xmmword_1AFE21110;
      v5 = 0;
    }

    else
    {
      sub_1AF74ED90(v11, v6);
      v8 -= a1;
      if (!v8)
      {
        swift_unknownObjectRelease();
        v7 = 0;
      }

      sub_1AF74EDD0(v6, &v4);
      sub_1AF74EC28(v11);
    }

    memset(v11, 0, sizeof(v11));
    v12[0] = 0u;
    v12[1] = xmmword_1AFE22A20;
    sub_1AF74ED10(v9, v11, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    sub_1AF74ED10(&v4, v12 + 8, &qword_1ED725A08, &type metadata for TextureCache.WeakStorage.GPU);
    v13 = 1;
    return sub_1AF74ECD8(v11, v1);
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF749C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[4] = 0u;
  a3[5] = xmmword_1AFE22A20;
  v6 = *(a1 + 48);
  if (v6 < 0)
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v17 = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 24);
    v20 = v9;
    v21 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v22 = v8;
    sub_1AF749DF4(&v17, a2, v14);
    v10 = &unk_1ED725A10;
    v11 = &type metadata for TextureCache.WeakStorage.CPU;
    v12 = a3;
  }

  else
  {
    swift_unknownObjectWeakInit();
    v15 = 0;
    v16 = 0;
    swift_unknownObjectWeakAssign();
    if (a2 < 1)
    {
      sub_1AF74EC58(a1);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1AF74EC58(a1);
      v15 = Strong;
      v16 = a2;
    }

    v10 = &qword_1ED725A08;
    v11 = &type metadata for TextureCache.WeakStorage.GPU;
    v12 = a3 + 72;
  }

  return sub_1AF74ED10(v14, v12, v10, v11);
}

uint64_t sub_1AF749D58(void *a1)
{
  sub_1AF74EAF8(v1, v10);
  *v1 = a1;
  *(v1 + 96) = 2;
  sub_1AF74EA04(v10, v8);
  if (v9)
  {
    v3 = a1;
    sub_1AF74A46C(v10);
    v4 = v8;
  }

  else
  {
    v5 = v8[2];
    v6 = a1;
    dispatch_group_leave(v5);

    v4 = v10;
  }

  return sub_1AF74A46C(v4);
}

uint64_t sub_1AF749DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (*a1)
  {
    v10 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    *(a3 + 40) = *(a1 + 32);
    *(a3 + 56) = *(a1 + 48);

    v7 = v10;
  }

  else
  {
    swift_unknownObjectWeakAssign();
    *(a3 + 56) = 0;
    v7 = 0uLL;
    *(a3 + 40) = 0u;
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(a3 + 24) = v7;
  *(a3 + 64) = v6;
  if (a2 < 1)
  {

    return sub_1AF478A6C(a1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1AF478A6C(a1);
    *(a3 + 8) = Strong;
    *(a3 + 16) = a2;
  }

  return result;
}

uint64_t sub_1AF749EDC@<X0>(uint64_t a1@<X8>)
{
  sub_1AF74E914(v1, v18, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
  if (!v22)
  {
    result = sub_1AF74E994(v18, &unk_1ED725A10, &type metadata for TextureCache.WeakStorage.CPU);
    Strong = 0;
LABEL_6:
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    goto LABEL_7;
  }

  sub_1AF74EE44(v18, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    result = sub_1AF74EBF8(v23);
    goto LABEL_6;
  }

  CFXTextureDescriptorMakeDefault(v14);
  v4 = v24;
  v5 = v25;
  *&v13[7] = v26;
  v6 = v28;
  *&v13[23] = v27;

  sub_1AF74EBF8(v23);

  v15[0] = Strong;
  v15[1] = v4;
  v15[2] = v5;
  LOBYTE(v16[0]) = 1;
  *(v16 + 1) = *v13;
  v16[1] = *&v13[15];
  v17 = v6;
  v10 = *&v13[15];
  v11 = v16[0];
  v18[0] = Strong;
  v18[1] = v4;
  v18[2] = v5;
  v19 = 1;
  *v20 = *v13;
  *&v20[15] = *&v13[15];
  v21 = v6;
  sub_1AF44222C(v15, v12);
  result = sub_1AF478A6C(v18);
  v9 = v10;
  v8 = v11;
LABEL_7:
  *a1 = Strong;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_1AF74A04C()
{
  MEMORY[0x1B271DEA0](*(v0 + 48), -1, -1);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void destroy for TextureCache.CacheEntry(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 == 2)
  {
    v3 = *a1;

    goto LABEL_6;
  }

  if (v2 == 1)
  {
    if (*(a1 + 64))
    {
      MEMORY[0x1B271E060](a1);
      swift_unknownObjectRelease();
    }

    if (*(a1 + 80) != 1)
    {
      MEMORY[0x1B271E060](a1 + 72);

      swift_unknownObjectRelease();
    }
  }

  else if (!*(a1 + 96))
  {

    v3 = *(a1 + 16);

LABEL_6:
  }
}

uint64_t initializeWithCopy for TextureCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3 == 2)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 2;
LABEL_14:
    *(a1 + 96) = v12;
    return a1;
  }

  if (v3 == 1)
  {
    if (*(a2 + 64))
    {
      v8 = a2;
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = *(v8 + 8);
      *(a1 + 16) = *(v8 + 16);
      *(a1 + 32) = *(v8 + 32);
      *(a1 + 40) = *(v8 + 40);
      v9 = *(v8 + 64);
      *(a1 + 56) = *(v8 + 56);
      *(a1 + 64) = v9;
      swift_unknownObjectRetain();

      a2 = v8;
    }

    else
    {
      v16 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v16;
      *(a1 + 64) = *(a2 + 64);
      v17 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v17;
    }

    if (*(a2 + 80) == 1)
    {
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
    }

    else
    {
      v18 = a2;
      swift_unknownObjectWeakCopyInit();
      v19 = *(v18 + 88);
      *(a1 + 80) = *(v18 + 80);
      *(a1 + 88) = v19;
      swift_unknownObjectRetain();
    }

    v12 = 1;
    goto LABEL_14;
  }

  if (*(a2 + 96))
  {
    v13 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
  }

  else
  {
    v4 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    *(a1 + 96) = 0;

    v7 = v6;
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.CacheEntry(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    sub_1AF74A46C(a1);
    v4 = *(a2 + 96);
    if (v4 == 2)
    {
      v8 = *a2;
      v9 = v8;
      *a1 = v8;
      v10 = 2;
    }

    else
    {
      if (v4 != 1)
      {
        if (*(a2 + 96))
        {
          v11 = *a2;
          v12 = a2[2];
          *(a1 + 16) = a2[1];
          *(a1 + 32) = v12;
          *a1 = v11;
          v13 = a2[3];
          v14 = a2[4];
          v15 = a2[5];
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 64) = v14;
          *(a1 + 80) = v15;
          *(a1 + 48) = v13;
        }

        else
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v5 = *(a2 + 2);
          *(a1 + 16) = v5;
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 96) = 0;

          v6 = v5;
        }

        return a1;
      }

      if (*(a2 + 8))
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        v7 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 40) = v7;
        *(a1 + 64) = *(a2 + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        *a1 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v17;
        *(a1 + 48) = v18;
        *(a1 + 16) = v16;
      }

      if (*(a2 + 10) == 1)
      {
        v19 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 72) = v19;
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        swift_unknownObjectRetain();
      }

      v10 = 1;
    }

    *(a1 + 96) = v10;
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.CacheEntry(uint64_t result, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 64))
    {
      result = swift_unknownObjectWeakTakeInit();
      *(result + 8) = *(a2 + 8);
      *(result + 24) = *(a2 + 24);
      *(result + 40) = *(a2 + 40);
      v3 = *(a2 + 64);
      *(result + 56) = *(a2 + 56);
      *(result + 64) = v3;
    }

    else
    {
      v7 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v7;
      *(result + 64) = *(a2 + 64);
      v8 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v8;
    }

    if (*(a2 + 80) == 1)
    {
      *(result + 72) = *(a2 + 72);
      *(result + 88) = *(a2 + 88);
    }

    else
    {
      v9 = result;
      swift_unknownObjectWeakTakeInit();
      result = v9;
      *(v9 + 80) = *(a2 + 80);
    }

    *(result + 96) = 1;
  }

  else
  {
    v4 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v4;
    *(result + 96) = *(a2 + 96);
    v5 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v5;
    v6 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v6;
  }

  return result;
}

uint64_t assignWithTake for TextureCache.CacheEntry(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1AF74A46C(a1);
    if (*(a2 + 96) == 1)
    {
      if (*(a2 + 64))
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        v4 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v4;
      }

      else
      {
        v8 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v8;
        *(a1 + 64) = *(a2 + 64);
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
      }

      if (*(a2 + 80) == 1)
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 80) = *(a2 + 80);
      }

      *(a1 + 96) = 1;
    }

    else
    {
      v5 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v5;
      *(a1 + 96) = *(a2 + 96);
      v6 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      v7 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v7;
    }
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.CacheEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.CacheEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

void destroy for TextureCache.CacheEntry.State(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  switch(v2)
  {
    case 2u:
      v3 = *a1;

      goto LABEL_8;
    case 1u:
      if (*(a1 + 64))
      {
        MEMORY[0x1B271E060](a1);
        swift_unknownObjectRelease();
      }

      if (*(a1 + 80) != 1)
      {
        MEMORY[0x1B271E060](a1 + 72);

        swift_unknownObjectRelease();
      }

      break;
    case 0u:

      v3 = *(a1 + 16);

LABEL_8:

      break;
  }
}

uint64_t initializeWithCopy for TextureCache.CacheEntry.State(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 96);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v10 = *a2;
    v11 = *a2;
    *a1 = v10;
    v12 = 2;
LABEL_16:
    *(a1 + 96) = v12;
    return a1;
  }

  if (v3 == 1)
  {
    if (a2[8])
    {
      v8 = a2;
      swift_unknownObjectWeakCopyInit();
      *(a1 + 8) = v8[1];
      *(a1 + 16) = *(v8 + 1);
      *(a1 + 32) = v8[4];
      *(a1 + 40) = *(v8 + 5);
      v9 = v8[8];
      *(a1 + 56) = v8[7];
      *(a1 + 64) = v9;
      swift_unknownObjectRetain();

      a2 = v8;
    }

    else
    {
      v16 = *(a2 + 3);
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 48) = v16;
      *(a1 + 64) = a2[8];
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v17;
    }

    if (a2[10] == 1)
    {
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 88) = a2[11];
    }

    else
    {
      v18 = a2;
      swift_unknownObjectWeakCopyInit();
      v19 = v18[11];
      *(a1 + 80) = v18[10];
      *(a1 + 88) = v19;
      swift_unknownObjectRetain();
    }

    v12 = 1;
    goto LABEL_16;
  }

  if (v3)
  {
    v13 = *(a2 + 5);
    *(a1 + 64) = *(a2 + 4);
    *(a1 + 80) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v14;
    v15 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v15;
  }

  else
  {
    v4 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v4;
    v6 = a2[2];
    v5 = a2[3];
    *(a1 + 16) = v6;
    *(a1 + 24) = v5;
    *(a1 + 96) = 0;

    v7 = v6;
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.CacheEntry.State(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        if (*(a1 + 64))
        {
          MEMORY[0x1B271E060](a1);
          swift_unknownObjectRelease();
        }

        if (*(a1 + 80) != 1)
        {
          MEMORY[0x1B271E060](a1 + 72);
          swift_unknownObjectRelease();
        }

        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 96);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v9 = *a2;
      v10 = v9;
      *a1 = v9;
      v11 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          v12 = *a2;
          v13 = a2[2];
          *(a1 + 16) = a2[1];
          *(a1 + 32) = v13;
          *a1 = v12;
          v14 = a2[3];
          v15 = a2[4];
          v16 = a2[5];
          *(a1 + 96) = *(a2 + 96);
          *(a1 + 64) = v15;
          *(a1 + 80) = v16;
          *(a1 + 48) = v14;
        }

        else
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 1);
          v6 = *(a2 + 2);
          *(a1 + 16) = v6;
          *(a1 + 24) = *(a2 + 3);
          *(a1 + 96) = 0;

          v7 = v6;
        }

        return a1;
      }

      if (*(a2 + 8))
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 8) = *(a2 + 1);
        *(a1 + 16) = *(a2 + 2);
        *(a1 + 24) = *(a2 + 3);
        *(a1 + 32) = *(a2 + 4);
        v8 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 7);
        *(a1 + 40) = v8;
        *(a1 + 64) = *(a2 + 8);
        swift_unknownObjectRetain();
      }

      else
      {
        *a1 = *a2;
        v17 = a2[1];
        v18 = a2[2];
        v19 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v18;
        *(a1 + 48) = v19;
        *(a1 + 16) = v17;
      }

      if (*(a2 + 10) == 1)
      {
        v20 = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a1 + 72) = v20;
      }

      else
      {
        swift_unknownObjectWeakCopyInit();
        *(a1 + 80) = *(a2 + 10);
        *(a1 + 88) = *(a2 + 11);
        swift_unknownObjectRetain();
      }

      v11 = 1;
    }

    *(a1 + 96) = v11;
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.CacheEntry.State(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2 >= 3)
  {
    v2 = *a2 + 3;
  }

  if (v2 == 2)
  {
    *result = *a2;
    *(result + 96) = 2;
  }

  else if (v2 == 1)
  {
    if (*(a2 + 64))
    {
      v4 = a2;
      result = swift_unknownObjectWeakTakeInit();
      a2 = v4;
      *(result + 8) = *(v4 + 8);
      *(result + 24) = *(v4 + 24);
      *(result + 40) = *(v4 + 40);
      v5 = *(v4 + 64);
      *(result + 56) = *(v4 + 56);
      *(result + 64) = v5;
    }

    else
    {
      v9 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v9;
      *(result + 64) = *(a2 + 64);
      v10 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v10;
    }

    if (*(a2 + 80) == 1)
    {
      *(result + 72) = *(a2 + 72);
      *(result + 88) = *(a2 + 88);
    }

    else
    {
      v11 = result;
      v12 = a2;
      swift_unknownObjectWeakTakeInit();
      result = v11;
      *(v11 + 80) = *(v12 + 80);
    }

    *(result + 96) = 1;
  }

  else if (v2)
  {
    v6 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v6;
    *(result + 96) = *(a2 + 96);
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v7;
    v8 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v8;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 96) = 0;
  }

  return result;
}

uint64_t assignWithTake for TextureCache.CacheEntry.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 96);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    switch(v4)
    {
      case 2u:

        break;
      case 1u:
        if (*(a1 + 64))
        {
          MEMORY[0x1B271E060](a1);
          swift_unknownObjectRelease();
        }

        if (*(a1 + 80) != 1)
        {
          MEMORY[0x1B271E060](a1 + 72);
          swift_unknownObjectRelease();
        }

        break;
      case 0u:

        break;
    }

    v5 = *(a2 + 96);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      *a1 = *a2;
      v8 = 2;
    }

    else
    {
      if (v5 != 1)
      {
        if (v5)
        {
          v9 = *(a2 + 80);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v9;
          *(a1 + 96) = *(a2 + 96);
          v10 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v10;
          v11 = *(a2 + 48);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = v11;
        }

        else
        {
          v6 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v6;
          *(a1 + 96) = 0;
        }

        return a1;
      }

      if (*(a2 + 64))
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v7;
      }

      else
      {
        v12 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v12;
        *(a1 + 64) = *(a2 + 64);
        v13 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v13;
      }

      if (*(a2 + 80) == 1)
      {
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 88);
      }

      else
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 80) = *(a2 + 80);
      }

      v8 = 1;
    }

    *(a1 + 96) = v8;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.CacheEntry.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TextureCache.CacheEntry.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AF74AEE8(uint64_t a1)
{
  result = *(a1 + 96);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1AF74AF04(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

char *sub_1AF74AF40(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v8 = sub_1AFDFC128();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = *(a3 + 24);
    v10 = &v3[v9];
    v11 = &a2[v9];
    v12 = *(v11 + 1);
    *v10 = *v11;
    *(v10 + 1) = v12;
    *(v10 + 2) = *(v11 + 2);
    *(v10 + 42) = *(v11 + 42);
  }

  return v3;
}

uint64_t sub_1AF74B02C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *sub_1AF74B094(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v9[2] = v10[2];
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

_BYTE *sub_1AF74B134(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  v11 = *(v10 + 8);
  v9[24] = v10[24];
  *(v9 + 8) = v11;
  v12 = *(v10 + 42);
  *(v9 + 2) = *(v10 + 2);
  *(v9 + 42) = v12;
  return a1;
}

_BYTE *sub_1AF74B1E4(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v9[2] = v10[2];
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

_BYTE *sub_1AF74B284(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_1AFDFC128();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v9[24] = v10[24];
  *(v9 + 2) = *(v10 + 2);
  *(v9 + 42) = *(v10 + 42);
  return a1;
}

uint64_t sub_1AF74B36C()
{
  MEMORY[0x1B271ACB0](*v0);
  v1 = type metadata accessor for TextureCache.TextureKey();
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  sub_1AFDFCD08();
  v2 = &v0[*(v1 + 24)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = v2[24];
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 28);
  MEMORY[0x1B271ACB0](*v2);
  if (v5 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v5 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v4);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v4);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v9 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v8);
    }
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF74B51C()
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*v0);
  v1 = type metadata accessor for TextureCache.TextureKey();
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  sub_1AFDFCD08();
  v2 = &v0[*(v1 + 24)];
  v3 = *(v2 + 1);
  v4 = *(v2 + 2);
  v5 = v2[24];
  v7 = *(v2 + 4);
  v6 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 28);
  MEMORY[0x1B271ACB0](*v2);
  if (v5 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v5 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v4);
      goto LABEL_5;
    }

    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v3);
    MEMORY[0x1B271ACB0](v4);
  }

  sub_1AFDFF2A8();
LABEL_5:
  if ((v9 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v9 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v8);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF74B6F4(uint64_t a1, uint64_t a2)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](*v2);
  sub_1AFDFC128();
  sub_1AF74E8CC(&qword_1ED725EE0, MEMORY[0x1E6968FB0]);
  sub_1AFDFCD08();
  v4 = &v2[*(a2 + 24)];
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  v7 = v4[24];
  v9 = *(v4 + 4);
  v8 = *(v4 + 5);
  v10 = *(v4 + 6);
  v11 = *(v4 + 28);
  MEMORY[0x1B271ACB0](*v4);
  if (v7 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v7 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v5);
      MEMORY[0x1B271ACB0](v6);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v5);
      MEMORY[0x1B271ACB0](v6);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v11 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v9);
    MEMORY[0x1B271ACB0](v8);
    sub_1AFDFF2A8();
    if ((v11 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v10);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF74B8BC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v3;
  v19 = v4;
  if (sub_1AFDFC0A8())
  {
    v9 = *(a3 + 24);
    v10 = *&a1[v9 + 16];
    v14[0] = *&a1[v9];
    v14[1] = v10;
    v15[0] = *&a1[v9 + 32];
    *(v15 + 10) = *&a1[v9 + 42];
    v11 = &a2[v9];
    v12 = *(v11 + 1);
    v16[0] = *v11;
    v16[1] = v12;
    v17[0] = *(v11 + 2);
    *(v17 + 10) = *(v11 + 42);
    v13 = sub_1AF8FD008(v14, v16);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1AF74B9C0(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v1 + 48));
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = sub_1AF449CB8(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(*(v2 + 48));
  return v7;
}

uint64_t sub_1AF74BA30(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v48 = a1;
  v2 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1AFDFCA68();
  v5 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_1AFDFCB28();
  MEMORY[0x1EEE9AC00](v46, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v42 - v14;
  v45 = (v5 + 104);
  v44 = *MEMORY[0x1E69E7F38];
  v16 = (v5 + 8);
  v18 = (v17 + 8);
  do
  {
    sub_1AF74EA04(v48, &v52);
    if (v55)
    {
      sub_1AF74A46C(&v52);
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v19 = v54;
    sub_1AFDFCB18();
    *v8 = 1000;
    v20 = v47;
    (*v45)(v8, v44, v47);
    MEMORY[0x1B2718560](v11, v8);
    (*v16)(v8, v20);
    v21 = *v18;
    v22 = v46;
    (*v18)(v11, v46);
    sub_1AFDFDA98();
    v21(v15, v22);
    LOBYTE(v20) = sub_1AFDFCA78();

    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  while ([*(v49 + 56) operationCount]);
  sub_1AF747F54();
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1AFDFE218();

  v50 = 0xD00000000000001FLL;
  v51 = 0x80000001AFF32AA0;
  sub_1AF74EA04(v48, &v52);
  if (v55)
  {
    sub_1AF74A46C(&v52);
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    v26 = v52;
    v25 = v53;

    v24 = v26;
  }

  v27 = v43;
  v28 = v42;
  MEMORY[0x1B2718AE0](v24, v25);

  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF32AC0);
  v30 = v50;
  v29 = v51;
  os_unfair_lock_lock(*(v49 + 48));
  sub_1AF74FBE4(v28, v27, type metadata accessor for TextureCache.TextureKey);
  v31 = sub_1AF6B0ABC(&v52, v27);
  if (*(v32 + 96) == 255)
  {
    (v31)(&v52, 0);
    sub_1AF74EB30(v27, type metadata accessor for TextureCache.TextureKey);
  }

  else
  {
    sub_1AF74EAA4();
    v33 = swift_allocError();
    *v34 = v30;
    v34[1] = v29;

    sub_1AF749D58(v33);
    (v31)(&v52, 0);
    sub_1AF74EB30(v27, type metadata accessor for TextureCache.TextureKey);
  }

  os_unfair_lock_unlock(*(v49 + 48));
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1AFDFE218();

  v52 = 0xD00000000000001CLL;
  v53 = 0x80000001AFF32AE0;
  v50 = v30;
  v51 = v29;
  sub_1AF74EAA4();
  v35 = sub_1AFDFF1D8();
  v37 = v36;

  MEMORY[0x1B2718AE0](v35, v37);

  v39 = v52;
  v38 = v53;
  v40 = sub_1AFDFDA18();
  if (qword_1ED731058 != -1)
  {
    v41 = v40;
    swift_once();
    v40 = v41;
  }

  v52 = 0;
  sub_1AF0D4F18(v40, &v52, v39, v38);
}

uint64_t sub_1AF74C018(unsigned __int8 *a1)
{
  v2 = v1;
  os_unfair_lock_lock(*(v1 + 48));
  v4 = *(v1 + 72);
  if (*(v4 + 16) && (v5 = sub_1AF41A700(a1), (v6 & 1) != 0))
  {
    sub_1AF74EA6C(*(v4 + 56) + 104 * v5, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v14 = -1;
  }

  os_unfair_lock_unlock(*(v2 + 48));
  sub_1AF74E914(v13, v10, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
  if (v11 == 255)
  {
    sub_1AF74E994(v13, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
    v8 = v10;
  }

  else
  {
    sub_1AF446690(v10, v12);
    sub_1AF74EA04(v12, v10);
    v7 = v11;
    sub_1AF74A46C(v10);
    if (!v7)
    {
      sub_1AF74BA30(v12, a1);
    }

    sub_1AF74EA3C(v12);
    v8 = v13;
  }

  return sub_1AF74E994(v8, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
}

uint64_t sub_1AF74C154(uint64_t a1)
{
  v3 = type metadata accessor for TextureCache.TextureKey();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v47 - v9;
  sub_1AF74EED8(0, &qword_1ED725A48, &unk_1ED725A50);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = sub_1AF74B9C0(a1);
  if (v18)
  {
    v55 = v17;
    v19 = 0;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v18 + 64);
    v23 = (v20 + 63) >> 6;
    v52 = v18;
    v48 = v18 + 72;
    v24 = MEMORY[0x1E69E6530];
    v53 = v1;
    v54 = v6;
    v49 = v13;
    while (1)
    {
      if (v22)
      {
        v25 = v19;
LABEL_13:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = v27 | (v25 << 6);
        v29 = v52;
        v30 = v50;
        sub_1AF74FBE4(*(v52 + 48) + *(v51 + 72) * v28, v50, type metadata accessor for TextureCache.TextureKey);
        v31 = *(*(v29 + 56) + 8 * v28);
        sub_1AF74EF30(0, &unk_1ED725A50);
        v33 = v32;
        v34 = v24;
        v35 = *(v32 + 48);
        v36 = v30;
        v13 = v49;
        sub_1AF74E7B0(v36, v49);
        *&v13[v35] = v31;
        (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
        v56 = v25;
      }

      else
      {
        v26 = v23 <= v19 + 1 ? v19 + 1 : v23;
        while (1)
        {
          v25 = v19 + 1;
          if (v19 + 1 >= v23)
          {
            break;
          }

          v22 = *(v48 + 8 * v19++);
          if (v22)
          {
            goto LABEL_13;
          }
        }

        v56 = v26 - 1;
        sub_1AF74EF30(0, &unk_1ED725A50);
        v33 = v44;
        (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
        v22 = 0;
        v34 = v24;
      }

      v37 = v55;
      sub_1AF74EF9C(v13, v55, &qword_1ED725A48, &unk_1ED725A50);
      sub_1AF74EF30(0, &unk_1ED725A50);
      v38 = (*(*(v33 - 8) + 48))(v37, 1, v33);
      v39 = v54;
      if (v38 == 1)
      {
      }

      sub_1AF74E7B0(v37, v54);
      v40 = v53;
      os_unfair_lock_lock(*(v53 + 48));
      v41 = *(v40 + 72);
      if (*(v41 + 16))
      {
        v42 = sub_1AF41A700(v39);
        v24 = v34;
        if (v43)
        {
          sub_1AF74EA6C(*(v41 + 56) + 104 * v42, &v60);
        }

        else
        {
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v66 = -1;
        }
      }

      else
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v66 = -1;
        v24 = v34;
      }

      os_unfair_lock_unlock(*(v40 + 48));
      sub_1AF74E914(&v60, v57, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
      if (v58 == 255)
      {
        sub_1AF74E994(&v60, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
        sub_1AF74EB30(v39, type metadata accessor for TextureCache.TextureKey);
        sub_1AF74E994(v57, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
        v19 = v56;
      }

      else
      {
        sub_1AF446690(v57, v59);
        sub_1AF74EA04(v59, v57);
        if (v58)
        {
          sub_1AF74EA3C(v59);
          sub_1AF74E994(&v60, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
          sub_1AF74EB30(v39, type metadata accessor for TextureCache.TextureKey);
          sub_1AF74A46C(v57);
        }

        else
        {
          sub_1AF74A46C(v57);
          sub_1AF74BA30(v59, v39);
          sub_1AF74EA3C(v59);
          sub_1AF74E994(&v60, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
          sub_1AF74EB30(v39, type metadata accessor for TextureCache.TextureKey);
        }

        v19 = v56;
      }
    }
  }

  else
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v60 = 0xD00000000000002BLL;
    *(&v60 + 1) = 0x80000001AFF32C00;
    v59[0] = a1;
    v46 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v46);

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF74C750(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TextureCache.TextureKey();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v54 = &v52 - v13;
  sub_1AF74EED8(0, &qword_1ED725A48, &unk_1ED725A50);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v57 = &v52 - v20;
  os_unfair_lock_lock(*(v1 + 48));
  v21 = sub_1AF850E2C(a1);
  v60 = v2;
  os_unfair_lock_unlock(*(v2 + 48));
  if (v21)
  {
    v22 = 0;
    v23 = 1 << *(v21 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v21 + 64);
    v26 = (v23 + 63) >> 6;
    v56 = v21;
    v27 = v21 + 72;
    v53 = v10;
    v58 = v17;
    while (1)
    {
      if (v25)
      {
        v28 = v22;
LABEL_15:
        v31 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v32 = v31 | (v28 << 6);
        v33 = v56;
        v34 = v54;
        sub_1AF74FBE4(*(v56 + 48) + *(v55 + 72) * v32, v54, type metadata accessor for TextureCache.TextureKey);
        v35 = *(*(v33 + 56) + 8 * v32);
        sub_1AF74EF30(0, &unk_1ED725A50);
        v37 = v36;
        v38 = *(v36 + 48);
        v39 = v34;
        v40 = v58;
        sub_1AF74E7B0(v39, v58);
        *(v40 + v38) = v35;
        v41 = v40;
        (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
        v10 = v53;
      }

      else
      {
        v29 = v26 <= v22 + 1 ? v22 + 1 : v26;
        v30 = v29 - 1;
        while (1)
        {
          v28 = v22 + 1;
          if (v22 + 1 >= v26)
          {
            break;
          }

          v25 = *(v27 + 8 * v22++);
          if (v25)
          {
            v22 = v28;
            goto LABEL_15;
          }
        }

        v22 = v30;
        sub_1AF74EF30(0, &unk_1ED725A50);
        v37 = v49;
        v41 = v58;
        (*(*(v49 - 8) + 56))(v58, 1, 1, v49);
        v25 = 0;
      }

      v42 = v41;
      v43 = v57;
      sub_1AF74EF9C(v42, v57, &qword_1ED725A48, &unk_1ED725A50);
      sub_1AF74EF30(0, &unk_1ED725A50);
      if ((*(*(v37 - 8) + 48))(v43, 1, v37) == 1)
      {
      }

      v44 = *(v43 + *(v37 + 48));
      sub_1AF74E7B0(v43, v10);
      v45 = v60;
      sub_1AF74C018(v10);
      os_unfair_lock_lock(*(v45 + 48));
      v46 = v59;
      sub_1AF74FBE4(v10, v59, type metadata accessor for TextureCache.TextureKey);
      v47 = sub_1AF6B0ABC(&v61, v46);
      if (*(v48 + 96) != 255)
      {
        sub_1AF749A08(v44);
      }

      (v47)(&v61, 0);
      sub_1AF74EB30(v59, type metadata accessor for TextureCache.TextureKey);
      os_unfair_lock_unlock(*(v60 + 48));
      sub_1AF74EB30(v10, type metadata accessor for TextureCache.TextureKey);
    }
  }

  else
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1AFDFE218();

    v61 = 0xD00000000000002BLL;
    v62 = 0x80000001AFF32C00;
    v63 = a1;
    v51 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v51);

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF74CC88(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v10 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF74CEDC(v4, a1, a2, a3, v28);
  if (!v5)
  {
    if (v28[96] == 255)
    {
      sub_1AF74E994(v28, &unk_1ED725A20, &type metadata for TextureCache.CacheEntry);
      v17 = 0;
      v18 = xmmword_1AFE74F10;
      v19 = 0uLL;
    }

    else
    {
      sub_1AF446690(v28, v29);
      sub_1AF74EA04(v29, v26);
      v14 = v27;
      sub_1AF74A46C(v26);
      if (v14)
      {
LABEL_7:
        os_unfair_lock_lock(*(v4 + 48));
        sub_1AF74FBE4(a1, v13, type metadata accessor for TextureCache.TextureKey);
        v15 = sub_1AF6B0ABC(v26, v13);
        if (*(v16 + 96) == 255)
        {
          (v15)(v26, 0);
          v24 = 0u;
          v25 = xmmword_1AFE74F10;
          v22 = 0u;
          v23 = 0u;
        }

        else
        {
          sub_1AF7495C8(v30);
          v24 = v30[0];
          v25 = v30[1];
          v22 = v30[3];
          v23 = v30[2];
          (v15)(v26, 0);
        }

        sub_1AF74EB30(v13, type metadata accessor for TextureCache.TextureKey);
        os_unfair_lock_unlock(*(v4 + 48));
        sub_1AF74EA3C(v29);
        v17 = 0;
        v19 = v24;
        v18 = v25;
        v21 = v22;
        v20 = v23;
        goto LABEL_14;
      }

      if (a2 & 1) != 0 && (a3)
      {
        sub_1AF74BA30(v29, a1);
        goto LABEL_7;
      }

      sub_1AF74EA3C(v29);
      v18 = xmmword_1AFE74F10;
      v19 = 0uLL;
      v17 = 1;
    }

    v20 = 0uLL;
    v21 = 0uLL;
LABEL_14:
    *a4 = v19;
    *(a4 + 16) = v18;
    *(a4 + 32) = v20;
    *(a4 + 48) = v21;
    *(a4 + 64) = v17;
  }
}

void sub_1AF74CEDC(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v38 = a4;
  v39 = a3;
  v7 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v36 - v13;
  os_unfair_lock_lock(*(a1 + 48));
  sub_1AF74FBE4(a2, v14, type metadata accessor for TextureCache.TextureKey);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = *(a1 + 72);
  v16 = *&v36[0];
  *(a1 + 72) = 0x8000000000000000;
  v17 = sub_1AF41A700(v14);
  v19 = v18;
  v20 = *(v16 + 16) + ((v18 & 1) == 0);
  if (*(v16 + 24) >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AF84A698();
      v16 = *&v36[0];
    }

LABEL_6:
    *(a1 + 72) = v16;

    v23 = *(a1 + 72);
    if ((v19 & 1) == 0)
    {
      memset(v36, 0, sizeof(v36));
      v37 = 3;
      sub_1AF74FBE4(v14, v10, type metadata accessor for TextureCache.TextureKey);
      sub_1AF843900(v17, v10, v36, v23);
    }

    v24 = v23[7] + 104 * v17;
    v25 = sub_1AFDFC0C8();
    v26 = v39;
    v28 = sub_1AF749250(v25, v27, v39 & 1);

    if (v28)
    {
      sub_1AF74EA6C(v24, v35);
      sub_1AF74EB30(v14, type metadata accessor for TextureCache.TextureKey);
LABEL_16:
      os_unfair_lock_unlock(*(a1 + 48));
      return;
    }

    if (v26)
    {
      v29 = sub_1AFDFC0C8();
      v31 = v30;
      v32 = dispatch_group_create();
      dispatch_group_enter(v32);
      v33 = (v38 & 1) == 0;
      sub_1AF74A46C(v24);
      *v24 = v29;
      *(v24 + 8) = v31;
      *(v24 + 16) = v32;
      *(v24 + 24) = v33;
      *(v24 + 96) = 0;
      sub_1AF74EB30(v14, type metadata accessor for TextureCache.TextureKey);
    }

    else
    {
      sub_1AF74EA04(v24, v36);
      if (v37 == 2)
      {
        swift_willThrow();
        sub_1AF74EB30(v14, type metadata accessor for TextureCache.TextureKey);
        goto LABEL_16;
      }

      sub_1AF74EB30(v14, type metadata accessor for TextureCache.TextureKey);
      sub_1AF74A46C(v36);
    }

    v34 = v35;
    *(v35 + 64) = 0u;
    *(v34 + 80) = 0u;
    *(v34 + 32) = 0u;
    *(v34 + 48) = 0u;
    *v34 = 0u;
    *(v34 + 16) = 0u;
    *(v34 + 96) = -1;
    goto LABEL_16;
  }

  sub_1AF8376F4(v20, isUniquelyReferenced_nonNull_native);
  v16 = *&v36[0];
  v21 = sub_1AF41A700(v14);
  if ((v19 & 1) == (v22 & 1))
  {
    v17 = v21;
    goto LABEL_6;
  }

  sub_1AFDFF1A8();
  __break(1u);
}

void sub_1AF74D21C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(*(v3 + 48));
  sub_1AF74FBE4(a2, v9, type metadata accessor for TextureCache.TextureKey);
  v11 = sub_1AF6B0ABC(v25, v9);
  if (*(v10 + 96) == 255)
  {
    (v11)(v25, 0);
  }

  else
  {
    v12 = v10;
    sub_1AF74EA04(v10, &v20);
    if (v24)
    {
      sub_1AF74A46C(&v20);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v20 = 0;
      *(&v20 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v19 = v20;
      MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF32B40);
      v13 = *(a1 + 16);
      v20 = *a1;
      v21 = v13;
      v14 = *(a1 + 48);
      v22 = *(a1 + 32);
      v23 = v14;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0xD000000000000038, 0x80000001AFF32B60);
      sub_1AFDFE458();
      v15 = v19;
      v16 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v18 = v16;
        swift_once();
        v16 = v18;
      }

      *&v20 = 0;
      sub_1AF0D4F18(v16, &v20, v15, *(&v15 + 1));
    }

    else
    {
      v17 = v21;
      sub_1AF74ECA0(a1, &v20);
      sub_1AF749C44(a1, *(&v17 + 1), &v20);
      v24 = 1;
      sub_1AF74ECD8(&v20, v12);
      dispatch_group_leave(v17);
    }

    (v11)(v25, 0);
  }

  sub_1AF74EB30(v9, type metadata accessor for TextureCache.TextureKey);
  os_unfair_lock_unlock(*(v3 + 48));
}

uint64_t sub_1AF74D574@<X0>(char a1@<W0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, _OWORD *a7@<X8>)
{
  v81 = a6;
  v83 = a5;
  *&v85 = a4;
  *&v84 = a3;
  v77 = a7;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TextureCache.TextureKey();
  v73 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v76 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v74 = &v72 - v20;
  v75 = v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v94 = &v72 - v24;
  sub_1AFDFBF98();
  v25 = *a2;
  v82 = v7;
  if ((a1 & 1) == 0)
  {
    v26 = v25 & 0x9C;
    goto LABEL_5;
  }

  if ((v25 & 0x100) == 0)
  {
    v26 = v25 & 0xFC;
LABEL_5:
    v78 = *(a2 + 1);
    v27 = *(a2 + 24);
    v79 = *(a2 + 2);
    v28 = a2[6];
    v29 = *(a2 + 28);
    goto LABEL_7;
  }

  v28 = 0;
  v26 = v25 & 0x104;
  v79 = 0u;
  v29 = 768;
  v27 = -2;
  v78 = 0u;
LABEL_7:
  v30 = a1 & 1;
  v31 = v94;
  *v94 = v30;
  (*(v11 + 32))(&v31[*(v15 + 20)], v14, v10);
  v32 = &v31[*(v15 + 24)];
  *v32 = v26;
  *(v32 + 8) = v78;
  v32[24] = v27;
  *(v32 + 25) = v93[0];
  *(v32 + 7) = *(v93 + 3);
  *(v32 + 2) = v79;
  *(v32 + 6) = v28;
  *(v32 + 28) = v29;
  v33 = v81;
  v34 = v85;
  v35 = v84;
  v36 = v83;
  v38 = v81 != 2 || (v85 | v84 | v83) != 0;
  v39 = v82;
  v40 = v80;
  sub_1AF74CC88(v31, v38, v81 != 1, &aBlock);
  if (v40)
  {
    return sub_1AF74EB30(v31, type metadata accessor for TextureCache.TextureKey);
  }

  if (*(&v88 + 1) >> 1 != 0xFFFFFFFFLL || v90 >> 24)
  {
    v79 = v90;
    v80 = v89;
    v84 = aBlock;
    v85 = v88;
    goto LABEL_48;
  }

  v42 = v91;
  if (v33 != 1)
  {
    if ((v91 & 1) == 0)
    {
      if (!v33)
      {
LABEL_41:
        LODWORD(v80) = v33;
        swift_unownedRetainStrong();
        sub_1AF74E798(v35, v34, v36, v33);
        sub_1AF74E798(v35, v34, v36, v33);
        swift_unownedRetain();
        swift_unownedRetain();

        v53 = v35;
        v31 = v94;
        v54 = v74;
        sub_1AF74FBE4(v94, v74, type metadata accessor for TextureCache.TextureKey);
        v55 = v76;
        sub_1AF74FBE4(v54, v76, type metadata accessor for TextureCache.TextureKey);
        v56 = (*(v73 + 80) + 40) & ~*(v73 + 80);
        v57 = swift_allocObject();
        v57[2] = v53;
        v57[3] = v34;
        v57[4] = v39;
        *&v78 = v57;
        sub_1AF74E7B0(v54, v57 + v56);
        if (v80 != 1)
        {
          v71 = v83;
          sub_1AF74E798(v53, v34, v83, v33);
          swift_unownedRetain();
          sub_1AF74DFB4(v53, v34, v39, v55, v92);
          v85 = v92[1];
          v84 = v92[0];
          v79 = v92[3];
          v80 = v92[2];
          swift_unownedRelease();
          sub_1AF74E888(v53, v34, v71, v33);

          sub_1AF74E888(v53, v34, v71, v33);
          swift_unownedRelease();
          sub_1AF74EB30(v55, type metadata accessor for TextureCache.TextureKey);
          goto LABEL_48;
        }

        swift_unownedRetain();
        sub_1AF74EB30(v55, type metadata accessor for TextureCache.TextureKey);
        swift_unownedRelease();
        v58 = *(v39 + 56);
        v59 = swift_allocObject();
        v60 = v78;
        *(v59 + 16) = sub_1AF74E814;
        *(v59 + 24) = v60;
        v61 = qword_1ED730EA0;
        v62 = v58;

        if (v61 != -1)
        {
          swift_once();
        }

        v63 = v83;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v64 = qword_1ED73B8A0;
        v65 = swift_allocObject();
        *(v65 + 16) = sub_1AF74E8A0;
        *(v65 + 24) = v59;
        v66 = swift_allocObject();
        v66[2] = v64;
        v66[3] = sub_1AF6FC894;
        v66[4] = v65;
        *&v89 = sub_1AF74E8A8;
        *(&v89 + 1) = v66;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v88 = sub_1AFCDA044;
        *(&v88 + 1) = &unk_1F24E5FD8;
        v67 = _Block_copy(&aBlock);
        swift_retain_n();

        [v62 addOperationWithBlock_];
        _Block_release(v67);

        swift_unownedRelease();
        sub_1AF74E888(v84, v85, v63, v33);
      }

LABEL_47:
      v85 = xmmword_1AFE74F10;
      v84 = 0u;
      v80 = 0u;
      v79 = 0u;
      v31 = v94;
      goto LABEL_48;
    }

    v31 = v94;
    if (!v33)
    {
      sub_1AF74C018(v94);
      sub_1AF74CC88(v31, 0, 1, &aBlock);
      v85 = v88;
      v84 = aBlock;
      v79 = v90;
      v80 = v89;
      result = sub_1AF74EB30(v31, type metadata accessor for TextureCache.TextureKey);
LABEL_49:
      v68 = v77;
      v69 = v85;
      *v77 = v84;
      v68[1] = v69;
      v70 = v79;
      v68[2] = v80;
      v68[3] = v70;
      return result;
    }

    v85 = xmmword_1AFE74F10;
    v84 = 0u;
    v80 = 0u;
    v79 = 0u;
LABEL_48:
    result = sub_1AF74EB30(v31, type metadata accessor for TextureCache.TextureKey);
    goto LABEL_49;
  }

  os_unfair_lock_lock(*(v39 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = *(v39 + 64);
  v44 = aBlock;
  *(v39 + 64) = 0x8000000000000000;
  v46 = sub_1AF449CB8(v36);
  v47 = v45;
  v48 = *(v44 + 16) + ((v45 & 1) == 0);
  if (*(v44 + 24) >= v48)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v34 = v85;
      if (v45)
      {
        goto LABEL_28;
      }
    }

    else
    {
      sub_1AF84A674();
      v34 = v85;
      if (v47)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    v51 = 0;
LABEL_34:
    v86 = v51;
    sub_1AF7490D8(v94);
    v52 = aBlock;
    if (v86)
    {
      if (v47)
      {
        *(*(aBlock + 56) + 8 * v46) = v86;
      }

      else
      {
        sub_1AF843558(v46, v36, v86, aBlock);
      }
    }

    else if (v47)
    {
      sub_1AF6B2F08(v46, aBlock);
    }

    *(v39 + 64) = v52;
    os_unfair_lock_unlock(*(v39 + 48));
    v35 = v84;
    if ((v42 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

  sub_1AF837488(v48, isUniquelyReferenced_nonNull_native);
  v49 = sub_1AF449CB8(v36);
  if ((v47 & 1) == (v50 & 1))
  {
    v46 = v49;
    v34 = v85;
    if ((v47 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_28:
    v51 = *(*(aBlock + 56) + 8 * v46);
    goto LABEL_34;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF74DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v29 = a5;
  v30 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for TextureCache.TextureKey();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0uLL;
  *&v48 = 0;
  *(&v48 + 1) = 0x1FFFFFFFELL;
  v49 = 0u;
  v50 = 0u;
  v46 = 0;
  v12 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2] = &v47;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = &v46;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AF74EC94;
  *(v14 + 24) = v13;
  *&v44 = sub_1AF464154;
  *(&v44 + 1) = v14;
  *&v42 = MEMORY[0x1E69E9820];
  *(&v42 + 1) = 1107296256;
  *&v43 = sub_1AF6F662C;
  *(&v43 + 1) = &unk_1F2539990;
  v15 = _Block_copy(&v42);

  *&v42 = 0;
  LODWORD(v12) = [v12 performBlockThrowingExceptionsAsErrors:v15 error:&v42];
  _Block_release(v15);
  v16 = v42;
  swift_isEscapingClosureAtFileLocation();

  if (!v12)
  {
    sub_1AFDFBF58();

    swift_willThrow();
LABEL_8:

    v42 = v47;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    sub_1AF74E994(&v42, &unk_1ED725A60, &type metadata for TextureCache.Texture);
  }

  v17 = *(&v48 + 1);
  v38 = v48;
  v36 = v49;
  v37 = v47;
  v18 = v50;
  v39 = v49;
  v40 = v47;
  v41 = v48;
  if (*(&v48 + 1) >> 1 == 0xFFFFFFFFLL && !(v50 >> 24))
  {
    swift_unownedRetainStrong();
    v19 = v46;
    v20 = *(a3 + 48);
    v21 = v46;
    os_unfair_lock_lock(v20);
    sub_1AF74FBE4(v30, v11, type metadata accessor for TextureCache.TextureKey);
    v22 = sub_1AF6B0ABC(&v42, v11);
    if (*(v23 + 96) != 255)
    {
      sub_1AF749D58(v19);
    }

    (v22)(&v42, 0);
    sub_1AF74EB30(v11, type metadata accessor for TextureCache.TextureKey);
    os_unfair_lock_unlock(*(a3 + 48));

    v24 = v46;
    swift_willThrow();
    v25 = v24;
    goto LABEL_8;
  }

  v51[0] = v47;
  v51[1] = v48;
  v51[2] = v49;
  v51[3] = v50;
  swift_unownedRetainStrong();
  v31 = v37;
  v32 = v38;
  v33 = v17;
  v34 = v36;
  v35 = v18;
  sub_1AF74ECA0(&v31, &v42);
  sub_1AF74D21C(v51, v30);

  v42 = v47;
  v43 = v48;
  v44 = v49;
  v45 = v50;
  sub_1AF74E994(&v42, &unk_1ED725A60, &type metadata for TextureCache.Texture);

  v27 = v39;
  v28 = v29;
  *v29 = v40;
  *(v28 + 2) = v41;
  *(v28 + 3) = v17;
  v28[2] = v27;
  v28[3] = v18;
  return result;
}

uint64_t sub_1AF74E3F4(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v9);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = v9[1];
  *a1 = v9[0];
  a1[1] = v5;
  v6 = v9[3];
  a1[2] = v9[2];
  a1[3] = v6;
  return sub_1AF74E994(v8, &unk_1ED725A60, &type metadata for TextureCache.Texture);
}

BOOL sub_1AF74E4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF74EF30(0, &unk_1EB63E1A0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  sub_1AF74FBE4(a1, &v22 - v16, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74EA6C(a2, &v17[*(v10 + 56)]);
  sub_1AF74F00C(v17, v13);
  v18 = *(v10 + 56);
  v19 = type metadata accessor for TextureCache.TextureKey();
  (*(v5 + 16))(v8, &v13[*(v19 + 20)], v4);
  sub_1AF74EB30(v13, type metadata accessor for TextureCache.TextureKey);
  sub_1AF74E8CC(&qword_1EB6327A0, MEMORY[0x1E6968FB0]);
  v20 = sub_1AFDFCE58();
  (*(v5 + 8))(v8, v4);
  sub_1AF74F080(v17);
  sub_1AF74EA3C(&v13[v18]);
  return (v20 & 1) == 0;
}

void sub_1AF74E6EC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  os_unfair_lock_lock(*(*(a2 + 120) + 48));

  v8 = sub_1AF6B0BE0(v9, a3, a4);
  if (*(v7 + 56))
  {
    *(v7 + 24) = 1;
  }

  (v8)(v9, 0);

  os_unfair_lock_unlock(*(*(a2 + 120) + 48));
}

uint64_t sub_1AF74E798(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AF74E7B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextureCache.TextureKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF74E888(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1AF74E8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF74E8CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF74E914(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF74FCC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF74E994(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF74FCC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF74EAA4()
{
  result = qword_1EB63E188;
  if (!qword_1EB63E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E188);
  }

  return result;
}

uint64_t sub_1AF74EB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF74EC28(uint64_t a1)
{
  MEMORY[0x1B271E060]();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_1AF74ED10(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AF74FCC4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF74ED90(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a1 + 16);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = v4;
  swift_unknownObjectRetain();
  return a2;
}

uint64_t sub_1AF74EDD0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t sub_1AF74EE44(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 64) = *(a1 + 64);
  return a2;
}

void sub_1AF74EED8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF74EF30(255, a3);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF74EF30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for TextureCache.TextureKey();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF74EF9C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1AF74EED8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF74F00C(uint64_t a1, uint64_t a2)
{
  sub_1AF74EF30(0, &unk_1EB63E1A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF74F080(uint64_t a1)
{
  sub_1AF74EF30(0, &unk_1EB63E1A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF74F0EC(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  [a1 setTexture:a2 atIndex:0];
  v6 = [a2 textureType];
  if (v6 == 7)
  {
    return sub_1AF6F4874(a3, a2, 0);
  }

  if (v6 == 2)
  {
    return sub_1AF6F448C(a3, a2, 0);
  }

  if (!v6)
  {
    return sub_1AF6F47F4(a3, a2, 0);
  }

  sub_1AF74FCC4(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32CD0);
  [a2 textureType];
  type metadata accessor for MTLTextureType(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_1AFDFF258();
}

uint64_t sub_1AF74F2D4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v7 = 0uLL;
  if (!a2)
  {
    v56 = 0;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
LABEL_22:
    *a6 = v7;
    *(a6 + 16) = v57;
    *(a6 + 32) = v58;
    *(a6 + 48) = v59;
    *(a6 + 64) = v56;
    return result;
  }

  v12 = result;
  v13 = *(a2 + 120);
  v14 = *(v13 + 48);

  os_unfair_lock_lock(v14);
  v15 = *(v13 + 88);
  if (*(v15 + 16))
  {
    v16 = sub_1AF41A680(a3, a4);
    if (v17)
    {
      v18 = *(v15 + 56) + 72 * v16;
      v94 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      v95 = *(v18 + 16);
      v96 = v20;
      v98 = v21;
      v97 = v19;
      if (a5)
      {
        sub_1AF74FBE4(&v94, &aBlock, sub_1AF4464AC);
LABEL_21:
        v68 = v95;
        v70 = v94;
        v64 = v97;
        v66 = v96;
        v56 = v98;
        os_unfair_lock_unlock(*(v13 + 48));

        v59 = v64;
        v58 = v66;
        v57 = v68;
        v7 = v70;
        goto LABEL_22;
      }

      sub_1AF74FBE4(&v94, &aBlock, sub_1AF4464AC);
      sub_1AF74FBE4(&v94, &aBlock, sub_1AF4464AC);
      swift_unknownObjectRelease();
      sub_1AF478A6C(&v94);
      if (BYTE8(v95) == 1)
      {
        goto LABEL_21;
      }

      sub_1AF74EB30(&v94, sub_1AF4464AC);
      os_unfair_lock_unlock(*(v13 + 48));

      goto LABEL_19;
    }
  }

  os_unfair_lock_unlock(*(v13 + 48));
  v22 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v69 = a3;
  v23 = sub_1AFA32924(a3, a4);
  v24 = a4;
  v25 = v23;
  v27 = v26;
  sub_1AFDFF308();
  v28 = v22;

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v29 = sub_1AFDFF2E8();
  *&v101 = v25;
  *(&v101 + 1) = v27;
  v102 = 0;
  v103 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  v105 = v29;
  v30 = sub_1AF73BD84(&v101, 0, 0, v22);
  v32 = v31;

  v62 = v28;

  v67 = v30;
  if (v30)
  {
    v33 = 7;
    if (v24 == 2)
    {
      v33 = 2;
    }

    v34 = v24 == 1 ? 0 : v33;
    v35 = *(a2 + 16);
    CFXTextureDescriptorMakeDefault(&v99);
    sub_1AF466BDC(v34, &v99);
    sub_1AF48F3E0(&v99);
    sub_1AF74FBC0(&v99);
    sub_1AF74FBCC(&v99);
    sub_1AF74FBD8(&v99);
    sub_1AF48F3EC(&v99);
    sub_1AF4674BC(&v99);
    sub_1AF48F3F8(&v99);
    sub_1AF4674D0(&v99);
    sub_1AF5C44E0(&v99);
    v94 = v99;
    *&v95 = v100;
    v36 = CFXGPUDeviceCreateTexture(v35, &v94);

    if (v36)
    {
      v65 = a6;
      sub_1AFA32924(v69, v24);
      v37 = sub_1AFDFCEC8();

      [v36 setLabel_];

      v63 = a2;
      type metadata accessor for CommandBufferHelper();
      swift_allocObject();
      v38 = swift_unknownObjectRetain();
      v39 = sub_1AF0D82B4(v38, 0xD000000000000013, 0x80000001AFF32CB0);
      swift_unknownObjectRelease();
      v61 = v24;
      v40 = sub_1AF6F4158();
      swift_unknownObjectRetain();
      v41 = sub_1AFDFCEC8();
      [v40 pushDebugGroup_];

      sub_1AF6F3BD8();
      sub_1AF74F0EC(v40, v36, v67);
      swift_unknownObjectRelease();
      [v40 popDebugGroup];
      swift_unknownObjectRelease();
      CFXTextureDescriptorMakeDefault(&v88);
      *(v85 + 7) = v88;
      *(&v85[1] + 7) = v89;
      *v87 = 0;
      v86 = 0uLL;
      v87[8] = 0;
      *&v87[9] = v85[0];
      *&v87[24] = *(v85 + 15);
      *&v87[40] = MEMORY[0x1E69E7CC0];
      v42 = v35;
      sub_1AF8DBA78(v39, v42, v36, &v86, 0, 0);

      v93 = *&v87[32];
      v90 = v86;
      v91 = *v87;
      v92 = *&v87[16];
      v97 = *&v87[32];
      v94 = v86;
      v95 = *v87;
      v96 = *&v87[16];
      v98 = v36;
      v43 = *(v13 + 48);
      swift_unknownObjectRetain();
      sub_1AF44222C(&v90, &aBlock);
      os_unfair_lock_lock(v43);
      v60 = v90;
      v44 = v91;
      LOWORD(v37) = v93;
      LOBYTE(v40) = BYTE2(v93);
      v45 = *(&v93 + 1);
      v46 = BYTE8(v91) & 1;
      v47 = *(&v92 + 4);
      v48 = HIDWORD(v92);
      v49 = v92;
      sub_1AF74FBE4(&v94, &aBlock, sub_1AF74FC4C);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v13 + 88);
      v80 = v36;
      *&aBlock = v51;
      *(v13 + 88) = 0x8000000000000000;
      v71 = v60;
      v72 = v44;
      v73 = v46;
      v74 = v49;
      v75 = v47;
      v76 = v48;
      v78 = v40;
      v77 = v37;
      v79 = v45;
      sub_1AF856AB4(&v71, v69, v61, isUniquelyReferenced_nonNull_native);
      *(v13 + 88) = aBlock;
      os_unfair_lock_unlock(*(v13 + 48));
      v52 = *(v39 + 16);
      if (v52 && (v53 = swift_allocObject(), *(v53 + 16) = v63, *(v53 + 24) = v69, *(v53 + 32) = v61, *&v83 = sub_1AF74FCB4, *(&v83 + 1) = v53, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v82 = sub_1AF719CC4, *(&v82 + 1) = &unk_1F25399E0, v54 = _Block_copy(&aBlock), , swift_unknownObjectRetain(), , [v52 addCompletedHandler_], swift_unknownObjectRelease(), _Block_release(v54), (v55 = *(v39 + 16)) != 0))
      {
        swift_unknownObjectRetain();
        sub_1AF6F37F0();
        [v55 commit];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1AF74EB30(&v94, sub_1AF74FC4C);
        swift_unknownObjectRelease();
        aBlock = v86;
        v82 = *v87;
        v83 = *&v87[16];
        v84 = *&v87[32];
        sub_1AF478A6C(&aBlock);
        *(v39 + 16) = 0;

        result = swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
        sub_1AF74EB30(&v94, sub_1AF74FC4C);
        swift_unknownObjectRelease();
        aBlock = v86;
        v82 = *v87;
        v83 = *&v87[16];
        v84 = *&v87[32];
        result = sub_1AF478A6C(&aBlock);
      }

      a6 = v65;
LABEL_19:
      v56 = 0;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v7 = 0uLL;
      goto LABEL_22;
    }
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF74FBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF74FC4C()
{
  if (!qword_1EB631BB0)
  {
    sub_1AF6B7338();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB631BB0);
    }
  }
}

void sub_1AF74FCC4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF74FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 0)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1AF74FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 0)
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t *initializeWithCopy for TextureCache.Texture(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  sub_1AF74FD14(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  return a1;
}

uint64_t *assignWithCopy for TextureCache.Texture(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  sub_1AF74FD14(*a2, v4, v5, v6, v7, v8, v9);
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1[5];
  v17 = a1[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  sub_1AF74FD78(v11, v12, v13, v14, v15, v16, v17);
  return a1;
}

uint64_t *assignWithTake for TextureCache.Texture(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v10;
  v11 = a2[3];
  *(a1 + 2) = a2[2];
  *(a1 + 3) = v11;
  sub_1AF74FD78(v3, v5, v4, v6, v7, v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.Texture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for TextureCache.Texture(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF750008(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFLL | (a2 << 63);
  *(result + 24) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t destroy for TextureCache.WeakStorage.GPU()
{
  MEMORY[0x1B271E060]();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 initializeWithTake for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  return result;
}

uint64_t assignWithTake for TextureCache.WeakStorage.GPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage.GPU(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage.GPU(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t destroy for TextureCache.WeakStorage.CPU()
{
  MEMORY[0x1B271E060]();
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  *(a1 + 56) = v4;
  *(a1 + 64) = v5;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

__n128 initializeWithTake for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  result = *(a2 + 40);
  *(v3 + 40) = result;
  v5 = *(a2 + 64);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TextureCache.WeakStorage.CPU(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage.CPU(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage.CPU(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TextureCache.WeakStorage(uint64_t result)
{
  v1 = result;
  if (*(result + 64))
  {
    MEMORY[0x1B271E060](result);
    swift_unknownObjectRelease();
  }

  if (*(v1 + 80) != 1)
  {
    MEMORY[0x1B271E060](v1 + 72);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t initializeWithCopy for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v4;
    swift_unknownObjectRetain();
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  if (*(a2 + 80) == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    swift_unknownObjectWeakCopyInit();
    v7 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v7;
    swift_unknownObjectRetain();
  }

  return a1;
}

uint64_t assignWithCopy for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      swift_unknownObjectWeakCopyAssign();
      *(a1 + 8) = *(a2 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 42) = *(a2 + 42);
      *(a1 + 43) = *(a2 + 43);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      v5 = *(a2 + 56);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 56) = v5;
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      sub_1AF74EBF8(a1);
      *a1 = *a2;
      v8 = *(a2 + 32);
      v7 = *(a2 + 48);
      v9 = *(a2 + 16);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v8;
      *(a1 + 48) = v7;
      *(a1 + 16) = v9;
    }
  }

  else if (v4)
  {
    swift_unknownObjectWeakCopyInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 64) = *(a2 + 64);
    swift_unknownObjectRetain();
  }

  else
  {
    *a1 = *a2;
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
    *(a1 + 16) = v10;
  }

  v13 = *(a2 + 80);
  if (*(a1 + 80) == 1)
  {
    if (v13 == 1)
    {
      v14 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v14;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      swift_unknownObjectRetain();
    }
  }

  else if (v13 == 1)
  {
    sub_1AF74EC28(a1 + 72);
    v15 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v15;
  }

  else
  {
    swift_unknownObjectWeakCopyAssign();
    *(a1 + 80) = *(a2 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *(a1 + 88) = *(a2 + 88);
  }

  return a1;
}

uint64_t initializeWithTake for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64))
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v4 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v4;
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v5;
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  if (*(a2 + 80) == 1)
  {
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 80) = *(a2 + 80);
  }

  return a1;
}

uint64_t assignWithTake for TextureCache.WeakStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 8) = *(a2 + 8);
      swift_unknownObjectRelease();
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 44) = *(a2 + 44);
      *(a1 + 52) = *(a2 + 52);
      v5 = *(a2 + 56);
      *(a1 + 58) = *(a2 + 58);
      *(a1 + 56) = v5;
      *(a1 + 64) = *(a2 + 64);

      goto LABEL_8;
    }

    sub_1AF74EBF8(a1);
  }

  else if (v4)
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 64);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = v6;
    goto LABEL_8;
  }

  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
LABEL_8:
  v9 = *(a2 + 80);
  if (*(a1 + 80) != 1)
  {
    if (v9 != 1)
    {
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 80) = *(a2 + 80);
      swift_unknownObjectRelease();
      *(a1 + 88) = *(a2 + 88);
      return a1;
    }

    sub_1AF74EC28(a1 + 72);
    goto LABEL_13;
  }

  if (v9 == 1)
  {
LABEL_13:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  swift_unknownObjectWeakTakeInit();
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextureCache.WeakStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureCache.WeakStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

void destroy for TextureCache.CacheEntry.Loading(uint64_t a1)
{

  v2 = *(a1 + 16);
}

void *initializeWithCopy for TextureCache.CacheEntry.Loading(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v5 = a2[2];
  v4 = a2[3];
  a1[2] = v5;
  a1[3] = v4;

  v6 = v5;
  return a1;
}

void *assignWithCopy for TextureCache.CacheEntry.Loading(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a2[2];
  v5 = a1[2];
  a1[2] = v4;
  v6 = v4;

  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for TextureCache.CacheEntry.Loading(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t sub_1AF750CAC()
{
  result = qword_1EB63E1B0;
  if (!qword_1EB63E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E1B0);
  }

  return result;
}

id *sub_1AF750D14()
{
  if (*(*(v0 + 32) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 32);
    *(v0 + 32) = 0x8000000000000000;
    sub_1AF750FA0();
    sub_1AFDFE4B8();
    *(v0 + 32) = v3;
  }

  v1 = *(v0 + 16);

  return CFXTextureAllocatorPerFrameNextFrame(v1);
}

uint64_t sub_1AF750DA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF750DEC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, char a6, char a7)
{
  v8 = v7;
  v15 = *(v7 + 32);
  if (*(v15 + 16) && (v17 = sub_1AF419914(a1, a2), (v18 & 1) != 0) && (a7 & 1) != 0)
  {
    v19 = *(*(v15 + 56) + 8 * v17);
    if (a6)
    {
      swift_unknownObjectRetain();
      return v19;
    }

    v20 = swift_unknownObjectRetain();
    if (sub_1AF8DAAD0(v20, a3, a4, a5 & 0xFFFFFF))
    {
      return v19;
    }

    swift_unknownObjectRelease();
  }

  else if (a6)
  {
    return 0;
  }

  v21 = *(v8 + 16);
  v26[0] = a3;
  v26[1] = a4;
  v28 = BYTE2(a5);
  v27 = a5;
  v22 = CFXTextureAllocatorPerFrameAllocate(v21, v26);
  if (v22)
  {
    v19 = v22;
    v23 = sub_1AFDFCEC8();
    [v19 setLabel_];

    v24 = swift_unknownObjectRetain();
    sub_1AF824548(v24, a1, a2);
    return v19;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF750FA0()
{
  if (!qword_1EB632920)
  {
    sub_1AF6B7338();
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632920);
    }
  }
}

uint64_t sub_1AF75114C()
{
  v1 = v0;
  v2 = sub_1AFDFC298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  sub_1AF751F30(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v33 - v21;
  result = swift_weakLoadStrong();
  if (result)
  {
    v34 = v6;
    sub_1AF0D4AFC(v22);
    sub_1AF751DDC(v1 + OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_lastModificationDate, v18);
    v24 = *(v3 + 48);
    if (v24(v18, 1, v2) == 1)
    {
      sub_1AF747ED0(v22);

      v25 = v18;
    }

    else
    {
      v26 = *(v3 + 32);
      v33 = v10;
      v27 = v26;
      v26();
      sub_1AF751DDC(v22, v14);
      if (v24(v14, 1, v2) == 1)
      {

        (*(v3 + 8))(v33, v2);
        sub_1AF747ED0(v22);
        v25 = v14;
      }

      else
      {
        v28 = v34;
        (v27)(v34, v14, v2);
        v29 = v33;
        if (sub_1AFDFC268())
        {
          v30 = swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1AF66D948(sub_1AF751E70, v30);

          v31 = *(v3 + 8);
          v31(v28, v2);
          v31(v29, v2);
          sub_1AF747ED0(v22);
        }

        v32 = *(v3 + 8);
        v32(v28, v2);
        v32(v29, v2);
        v25 = v22;
      }
    }

    return sub_1AF747ED0(v25);
  }

  return result;
}

void sub_1AF7514F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v1 = swift_weakLoadStrong();
    if (v1)
    {
      v2 = v1;
      if (v14[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_shouldReplicate])
      {
        v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
        if (v3)
        {
          v4 = *(v3 + 80);
          swift_unknownObjectWeakLoadStrong();
          v3 = *(v3 + 56);
        }

        else
        {
          v4 = 0;
        }

        swift_unknownObjectUnownedInit();
        v15[0] = v2;
        v15[2] = v3;
        swift_unknownObjectUnownedAssign();
        swift_unownedRetain();
        swift_unknownObjectRelease();
        v16 = v4;
        sub_1AF6C8780(*&v14[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity]);
        sub_1AF579490(v15);
        if (v4)
        {
          v5 = [objc_opt_self() immediateMode];
          sub_1AF6C5E30(v5 ^ 1);
        }
      }

      else
      {
        sub_1AF678B44(*&v14[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_entity]);
      }

      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + 120);

        v8 = &v14[OBJC_IVAR____TtCC3VFX10URLWatcherP33_98C17C331D2C865219A0B9EDA6B0BCC59Presenter_url];
        os_unfair_lock_lock(*(v7 + 48));
        v9 = *(v7 + 72);
        MEMORY[0x1EEE9AC00](v10, v11);
        v13[2] = v8;

        v12 = sub_1AF8FA484(sub_1AF751E78, v13, v9);

        *(v7 + 72) = v12;

        os_unfair_lock_unlock(*(v7 + 48));
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1AF75186C()
{
  v0 = sub_1AFDFCA88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AFDFCAC8();
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF615168();
  v9 = sub_1AFDFDB08();
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AF751E98;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6000;
  v11 = _Block_copy(aBlock);

  sub_1AFDFCAA8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1AF751ED8();
  sub_1AF751F30(0, &qword_1ED72F9A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1AF6FD510();
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v8, v4, v11);
  _Block_release(v11);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v16);

  v12 = v15;

  return v12;
}

uint64_t sub_1AF751B40(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    [objc_opt_self() *a3];
  }
}

uint64_t sub_1AF751C1C()
{
  sub_1AF75186C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLWatcher.Presenter()
{
  result = qword_1EB63E258;
  if (!qword_1EB63E258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF751CC8()
{
  sub_1AFDFC128();
  if (v0 <= 0x3F)
  {
    sub_1AF751F30(319, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1AF751DDC(uint64_t a1, uint64_t a2)
{
  sub_1AF751F30(0, &qword_1ED730AD8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF751EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1AF751ED8()
{
  result = qword_1ED72F9D0;
  if (!qword_1ED72F9D0)
  {
    sub_1AFDFCA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED72F9D0);
  }

  return result;
}

void sub_1AF751F30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF751F94()
{
  v1 = sub_1AFDFCA88();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFCAC8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED72F8A0);
  v11 = sub_1AFDFDB08();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1AF7553B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6028;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1AFDFCAA8();
  v16[1] = MEMORY[0x1E69E7CC0];
  sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
  sub_1AF6CB2E0();
  sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF752278()
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AF7527A4();
}

uint64_t sub_1AF752318(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(void))
{
  v5 = a5;
  v8 = *(a2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v8)
  {
    swift_unownedRetainStrong();
    v11 = *(a2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
    v12 = *(v8 + 88);

    os_unfair_lock_lock(v12);
    v13 = (v8 + 96);
    v14 = *(v8 + 96);
    v15 = v14[2];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (v14[v16 + 4] != a3)
      {
        ++v17;
        v16 += 2;
        if (v15 == v17)
        {
          goto LABEL_6;
        }
      }

      if (v11)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1AFC0DB70(v14);
          *v13 = v14;
        }

        v24 = &v14[v16];
        v24[4] = v11;
        v24[5] = &off_1F2537A78;
      }

      else
      {
        sub_1AF620F30(v17);
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_6:
      if (v11)
      {

        v18 = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((v18 & 1) == 0)
        {
          v14 = sub_1AF424C70(0, v15 + 1, 1, v14);
          *v13 = v14;
        }

        v20 = v14[2];
        v19 = v14[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          v27 = v20 + 1;
          v26 = sub_1AF424C70(v19 > 1, v20 + 1, 1, v14);
          v21 = v20 + 1;
          v14 = v26;
          *v13 = v26;
        }

        v14[2] = v21;
        v22 = &v14[2 * v20];
        v22[4] = v11;
        v22[5] = &off_1F2537A78;
      }
    }

    os_unfair_lock_unlock(*(v8 + 88));

    v5 = a5;
  }

  [a4 setPresentsWithTransaction_];
  return v5(a1 & 1);
}

uint64_t sub_1AF752518(uint64_t result, uint64_t a2)
{
  v2 = *(result + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v2)
  {

    v4 = objc_autoreleasePoolPush();
    sub_1AF6F7DDC(a2, v2);
    objc_autoreleasePoolPop(v4);
  }

  return result;
}

uint64_t sub_1AF7525A8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer;
  v3 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  type metadata accessor for CAMetalLayerRenderOutput();
  swift_allocObject();
  v4 = sub_1AF7080D4(v3);
  *(v4 + 40) = 2;
  v5 = [v0 backgroundColor];
  if (!v5)
  {
    v5 = [objc_opt_self() blackColor];
  }

  v6 = v5;
  v7 = [v5 CGColor];
  sub_1AF6DE2A8(v7);

  *(v4 + 48) = nullsub_106();
  *(v4 + 56) = v8;
  *(v4 + 64) = v9;
  *(v4 + 72) = v10;
  v11 = v0[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond + 8];
  *(v4 + 88) = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *(v4 + 96) = v11;
  *(v4 + 168) = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize];
  *(v4 + 152) = (v0[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] & 1) == 0;
  v12 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_effectID];
  v13 = sub_1AF80F414(0);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  *(v4 + 80) = v14;
  *(v4 + 84) = 2 * (v12 == v13);
  *(v4 + 184) = v1[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode];
  *(v4 + 97) = v1[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode];
  v15 = *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  v16 = *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback + 8];
  v17 = *(v4 + 120);
  *(v4 + 120) = v15;
  *(v4 + 128) = v16;
  sub_1AF0FBD8C(v15);
  sub_1AF0FB8EC(v17);
  sub_1AFDFF308();
  MEMORY[0x1B271ACB0](*&v1[v2]);
  *(v4 + 144) = sub_1AFDFF2E8();
  return v4;
}

void sub_1AF7527A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v1)
  {
    v2 = v0;
    if (*(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
    {
      v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v4 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v4)
      {
        v5 = *(v1 + 88);
        swift_retain_n();

        os_unfair_lock_lock(v5);
        MEMORY[0x1EEE9AC00](v6, v7);
        v10[2] = v4;
        v10[3] = &off_1F2537A78;
        v8 = sub_1AF66DE98(sub_1AF755B70, v10);
        sub_1AF64DF20(v8, *(*(v1 + 96) + 16));
        os_unfair_lock_unlock(*(v1 + 88));

        *(v2 + v3) = 0;
      }

      else
      {
        swift_retain_n();
      }

      v9 = sub_1AF7525A8();
      *(v2 + v3) = v9;
      swift_retain_n();

      sub_1AFCF7B24(v9, v1);
    }

    else
    {
    }

    if (swift_weakLoadStrong())
    {
      sub_1AF6F9CD8(v1);
    }
  }
}

void sub_1AF752BB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  if (*(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v3 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v5)
      {
        v6 = *(v3 + 88);

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v7, v8);
        v15[2] = v5;
        v15[3] = &off_1F2537A78;
        v9 = sub_1AF66DE98(sub_1AF755B70, v15);
        sub_1AF64DF20(v9, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *(v1 + v4) = 0;
      }

      else
      {
      }

      v10 = sub_1AF7525A8();
      *(v1 + v4) = v10;
      swift_retain_n();

      sub_1AFCF7B24(v10, v3);

      v2 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
    }
  }

  v11 = *(v1 + v2);
  if (v11)
  {
    if (*(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) == 1)
    {
      v12 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_effectID);

      v16 = 0;
      if (v12 == sub_1AF80F414(0))
      {
        os_unfair_lock_lock(*(v11 + 88));
        v13 = *(*(v11 + 96) + 16);
        os_unfair_lock_unlock(*(v11 + 88));
        if (!v13)
        {
          if (swift_weakLoadStrong())
          {
            sub_1AF6FA23C(v11);
          }
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1AFCF4B48();
LABEL_19:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        sub_1AF6F9CD8(v11);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1AFCF4B6C();
        goto LABEL_19;
      }
    }
  }
}

uint64_t sub_1AF752E24(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_effectID) = result;
  if (*(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v3)
    {
      v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v5 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v5)
      {
        v6 = *(v3 + 88);

        os_unfair_lock_lock(v6);
        MEMORY[0x1EEE9AC00](v7, v8);
        v11[2] = v5;
        v11[3] = &off_1F2537A78;
        v9 = sub_1AF66DE98(sub_1AF755B70, v11);
        sub_1AF64DF20(v9, *(*(v3 + 96) + 16));
        os_unfair_lock_unlock(*(v3 + 88));

        *(v2 + v4) = 0;
      }

      else
      {
      }

      v10 = sub_1AF7525A8();
      *(v2 + v4) = v10;
      swift_retain_n();

      sub_1AFCF7B24(v10, v3);
    }
  }

  return result;
}

void sub_1AF752F8C()
{
  v1 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v2 = 0;
  }

  v3 = OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer;
  v4 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = v2;
  v5 = v2;

  [v5 setPixelFormat_];
  [*&v0[v3] setFramebufferOnly_];
  v6 = *&v0[v3];
  [v6 setDevice_];

  swift_unknownObjectRelease();
  [*&v0[v3] setOpaque_];
  v7 = *MEMORY[0x1E695F1C0];
  v8 = *&v0[v3];
  v9 = CGColorSpaceCreateWithName(v7);
  [v8 setColorspace_];
}

id sub_1AF7530D8(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = 0;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_sampleCount] = 1;
  v4 = &v1[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = 0x3FF0000000000000;
  v5 = &v1[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  *v5 = 0;
  v5[1] = 0;
  swift_weakInit();
  v6 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v7 = CFXGPUDeviceCreate(0);
  v20 = 1;
  v19 = 1;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = 0;
  v29 = 1;
  v30 = 1;
  v31 = 260;
  v32 = 0;
  v33 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  *&v2[v6] = sub_1AF70A2F4(v7, 0, &v22, 0);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode] = 0;
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] = 0;
  v8 = OBJC_IVAR____TtC3VFX11VFXCoreView_effectID;
  v21 = 0;
  *&v2[v8] = sub_1AF80F414(0);
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_sizeDirty] = 1;
  __asm { FMOV            V0.2D, #16.0 }

  *&v2[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] = _Q0;
  v2[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = 0;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for VFXCoreView();
  v14 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    sub_1AF752F8C();
    sub_1AF7527A4();
  }

  return v15;
}

id sub_1AF753390(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v5[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer] = 0;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_sampleCount] = 1;
  v12 = &v5[OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond];
  *v12 = 0;
  v12[8] = 1;
  *&v5[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor] = 0x3FF0000000000000;
  v13 = &v5[OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback];
  *v13 = 0;
  v13[1] = 0;
  swift_weakInit();
  v14 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v15 = CFXGPUDeviceCreate(0);
  v27 = 1;
  v26 = 1;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 1;
  v35 = 0;
  v36 = 1;
  v37 = 1;
  v38 = 260;
  v39 = 0;
  v40 = 0;
  type metadata accessor for Renderer();
  swift_allocObject();
  *&v6[v14] = sub_1AF70A2F4(v15, 0, &v29, 0);
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_stereoMode] = 0;
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_paused] = 0;
  v16 = OBJC_IVAR____TtC3VFX11VFXCoreView_effectID;
  v28 = 0;
  *&v6[v16] = sub_1AF80F414(0);
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_sizeDirty] = 1;
  __asm { FMOV            V0.2D, #16.0 }

  *&v6[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] = _Q0;
  v6[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode] = 0;
  v25.receiver = v6;
  v25.super_class = type metadata accessor for VFXCoreView();
  v22 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a2, a3, a4, a5);
  if (a1)
  {
    swift_weakAssign();
  }

  v23 = v22;
  sub_1AF752F8C();
  sub_1AF7527A4();

  return v23;
}

void sub_1AF7535DC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
  v5 = *(v1 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
  if (v5)
  {
    v6 = *(a1 + 88);

    os_unfair_lock_lock(v6);
    MEMORY[0x1EEE9AC00](v7, v8);
    v11[2] = v5;
    v11[3] = &off_1F2537A78;
    v9 = sub_1AF66DE98(sub_1AF755B70, v11);
    sub_1AF64DF20(v9, *(*(a1 + 96) + 16));
    os_unfair_lock_unlock(*(a1 + 88));

    *(v2 + v4) = 0;
  }

  os_unfair_lock_lock(*(a1 + 88));
  v10 = *(*(a1 + 96) + 16);
  os_unfair_lock_unlock(*(a1 + 88));
  if (!v10)
  {
    if (swift_weakLoadStrong())
    {
      sub_1AF6FA23C(a1);
    }
  }
}

id sub_1AF753704()
{
  if (*&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer])
  {

    sub_1AF7535DC(v1);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VFXCoreView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1AF7538E0()
{
  v1 = [v0 window];
  if (v1)
  {
    v18 = v1;
    v2 = objc_opt_self();
    [v2 begin];
    [v2 setDisableActions_];
    v3 = *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor];
    v4 = [v18 screen];
    [v4 nativeScale];
    v6 = v5;

    [v0 setContentScaleFactor_];
    [v0 bounds];
    v8 = v7;
    v10 = v9;
    [v0 contentScaleFactor];
    v12 = v8 * v11;
    [v0 contentScaleFactor];
    v14 = v10 * v13;
    v15 = ceil(v12);
    v16 = ceil(v14);
    if (*&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize] != v15 || *&v0[OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize + 8] != v16)
    {
      sub_1AF753FAC(v15, v16);
    }

    [v2 commit];
  }
}

void sub_1AF753A54(int a1)
{
  v16 = a1;
  v2 = sub_1AFDFCA88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AFDFCAC8();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D4478(0, &qword_1ED72F8A0);
  v11 = sub_1AFDFDB08();
  v12 = swift_allocObject();
  v17 = v1;
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1AF755B60;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F253A000;
  v13 = _Block_copy(aBlock);

  sub_1AFDFCAA8();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
  sub_1AF6CB2E0();
  sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v10, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v15);

  if (v16)
  {
    sub_1AF7538E0();
    sub_1AF7527A4();
  }

  else if (*(v17 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
  {

    sub_1AF7535DC(v14);
  }
}

void sub_1AF753D9C()
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v1 = [Strong window];
    if (v1)
    {

      v2 = [v3 isHidden];
    }

    else
    {
      v2 = 1;
    }

    *(v3 + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) = v2;
    sub_1AF752BB4();
  }

  else
  {
  }
}

void sub_1AF753FAC(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize);
  *v3 = a1;
  v3[1] = a2;
  if (*(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer))
  {
    v4 = v2;
    v5 = *(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
    if (v5)
    {
      v6 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput;
      v7 = *(v2 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput);
      if (v7)
      {
        v8 = *(v5 + 88);

        os_unfair_lock_lock(v8);
        MEMORY[0x1EEE9AC00](v9, v10);
        v13[2] = v7;
        v13[3] = &off_1F2537A78;
        v11 = sub_1AF66DE98(sub_1AF755B40, v13);
        sub_1AF64DF20(v11, *(*(v5 + 96) + 16));
        os_unfair_lock_unlock(*(v5 + 88));

        *(v4 + v6) = 0;
      }

      else
      {
      }

      v12 = sub_1AF7525A8();
      *(v4 + v6) = v12;
      swift_retain_n();

      sub_1AFCF7B24(v12, v5);
    }
  }
}

void sub_1AF754468()
{
  sub_1AF7527A4();
  v1 = [v0 backgroundColor];
  if (!v1)
  {
    v1 = [objc_opt_self() blackColor];
  }

  v2 = v1;
  color = [v1 CGColor];

  v3 = CGColorGetAlpha(color) == 1.0;
  v4 = [v0 layer];
  [v4 setOpaque_];

  [v0 setOpaque_];
}

void sub_1AF754704(void *a1)
{
  v2 = v1;
  v4 = sub_1AFDFCA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFCAC8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v77 = a1;
      v16 = [v77 touchesForView_];
      v74 = v4;
      if (v16)
      {
        v17 = v16;
        sub_1AF0D4478(0, &qword_1EB63E300);
        sub_1AF755AB4();
        v18 = sub_1AFDFD778();
      }

      else if (MEMORY[0x1E69E7CC0] >> 62 && sub_1AFDFE108())
      {
        v18 = sub_1AFAF59FC(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v18 = MEMORY[0x1E69E7CD0];
      }

      v71 = v13;
      v73 = v8;
      v72 = v9;
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_1AFDFE0C8();
        sub_1AF0D4478(0, &qword_1EB63E300);
        sub_1AF755AB4();
        sub_1AFDFD7C8();
        v20 = v85[4];
        v19 = v85[5];
        v21 = v85[6];
        v22 = v85[7];
        v23 = v85[8];
      }

      else
      {
        v22 = 0;
        v24 = -1 << *(v18 + 32);
        v19 = v18 + 56;
        v21 = ~v24;
        v25 = -v24;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v23 = v26 & *(v18 + 56);
        v20 = v18;
      }

      v75 = v21;
      v27 = (v21 + 64) >> 6;
      v70 = v85;
      v69 = (v5 + 8);
      v68 = (v10 + 8);
      v76 = v19;
      v28 = v19 + 8;
      v78 = v15;
      v79 = v2;
      v80 = v19 + 8;
      v81 = v27;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_14:
      v29 = sub_1AFDFE138();
      if (!v29 || (v83 = v29, sub_1AF0D4478(0, &qword_1EB63E300), swift_dynamicCast(), v30 = aBlock[0], i = v22, v32 = v23, !aBlock[0]))
      {
LABEL_47:
        sub_1AF0FBB14();

        return;
      }

      while (1)
      {
        v82 = v32;
        type metadata accessor for InputEvent();
        swift_allocObject();
        v35 = v30;
        v36 = v2;
        v37 = sub_1AF6A5CD4(v35, v36);

        if (v36[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] == 1)
        {
          if (v37[2].i8[0] != 2)
          {
            goto LABEL_27;
          }

          v38 = 0;
        }

        else
        {
          if (v37[2].i8[0])
          {
            goto LABEL_27;
          }

          v38 = 1;
        }

        v36[OBJC_IVAR____TtC3VFX11VFXCoreView_isDragging] = v38;
LABEL_27:
        *&v36[OBJC_IVAR____TtC3VFX11VFXCoreView_lastTouch] = v37[7];
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v15;
        v40 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
        if (v40)
        {

          os_unfair_recursive_lock_lock_with_options();
          if (*(v40 + 120) == 1)
          {
            os_unfair_recursive_lock_unlock();
            goto LABEL_41;
          }

          v55 = swift_allocObject();
          *(v55 + 16) = sub_1AF755B1C;
          *(v55 + 24) = v39;
          v56 = *(v40 + 72);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v40 + 72) = v56;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v56 = sub_1AF4221DC(0, v56[2] + 1, 1, v56);
            *(v40 + 72) = v56;
          }

          v59 = v56[2];
          v58 = v56[3];
          if (v59 >= v58 >> 1)
          {
            v56 = sub_1AF4221DC(v58 > 1, v59 + 1, 1, v56);
          }

          v56[2] = v59 + 1;
          v60 = &v56[2 * v59];
          v60[4] = sub_1AF6D25EC;
          v60[5] = v55;
          *(v40 + 72) = v56;
          os_unfair_recursive_lock_unlock();
          os_unfair_recursive_lock_lock_with_options();
          v61 = *(v40 + 152);
          os_unfair_recursive_lock_unlock();
          v15 = v78;
          v2 = v79;
          if (v61)
          {
LABEL_41:
          }

          else
          {
            v62 = *(v40 + 16);
            [*(v62 + 16) lock];
            *(v62 + 24) = 1;
            [*(v62 + 16) signal];
            [*(v62 + 16) unlock];

LABEL_43:
          }

          v22 = i;
          v23 = v82;
          goto LABEL_45;
        }

        v41 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated);
        v42 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager__invalidated + 8);

        v43 = v42;
        [v43 lock];
        [v43 unlock];

        if (v41 == 1)
        {
          goto LABEL_43;
        }

        v44 = *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_asyncQueue);
        v45 = swift_allocObject();
        v45[2] = v15;
        v45[3] = sub_1AF755B1C;
        v45[4] = v39;
        v46 = qword_1ED730EA0;

        v66 = v44;
        if (v46 != -1)
        {
          swift_once();
        }

        v67 = v20;
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v47 = qword_1ED73B8A0;
        v48 = swift_allocObject();
        *(v48 + 16) = sub_1AF67008C;
        *(v48 + 24) = v45;
        v49 = swift_allocObject();
        v65 = v47;
        v49[2] = v47;
        v49[3] = sub_1AF6CB244;
        v49[4] = v48;
        v85[2] = sub_1AF74E8A8;
        v85[3] = v49;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v85[0] = sub_1AFCDA044;
        v85[1] = &unk_1F2539F88;
        v64 = _Block_copy(aBlock);
        swift_retain_n();

        v50 = v71;
        sub_1AFDFCAA8();
        v83 = MEMORY[0x1E69E7CC0];
        sub_1AF6CB338(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
        sub_1AF6CB2E0();
        sub_1AF6CB338(&qword_1ED72F990, sub_1AF6CB2E0);
        v63[1] = v45;
        v51 = v73;
        v52 = v74;
        sub_1AFDFE058();
        v53 = v64;
        v54 = v66;
        MEMORY[0x1B2719530](0, v50, v51, v64);
        _Block_release(v53);

        (*v69)(v51, v52);
        (*v68)(v50, v72);

        v22 = i;
        v23 = v82;
        v15 = v78;
        v2 = v79;
        v20 = v67;
LABEL_45:
        v28 = v80;
        v27 = v81;
        if (v20 < 0)
        {
          goto LABEL_14;
        }

LABEL_17:
        v33 = v22;
        v34 = v23;
        for (i = v22; !v34; v34 = *(v28 + 8 * v33++))
        {
          i = v33 + 1;
          if (v33 + 1 >= v27)
          {
            goto LABEL_47;
          }
        }

        v32 = (v34 - 1) & v34;
        v30 = *(*(v20 + 48) + ((i << 9) | (8 * __clz(__rbit64(v34)))));
        if (!v30)
        {
          goto LABEL_47;
        }
      }
    }
  }
}

uint64_t sub_1AF7550EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 184);

  sub_1AF6D2ADC(&type metadata for InputStream, &off_1F2534998, v2, sub_1AF755B24);
}

void sub_1AF755190(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AF0D4478(0, &qword_1EB63E300);
  sub_1AF755AB4();
  sub_1AFDFD778();
  v9 = a4;
  v10 = a1;
  sub_1AF754704(a4);
  v11 = sub_1AFDFD768();

  v12.receiver = v10;
  v12.super_class = type metadata accessor for VFXCoreView();
  objc_msgSendSuper2(&v12, *a6, v11, v9);
}

uint64_t sub_1AF7553B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF7553D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (!v1)
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if ((*(v1 + 40) & 1) == 0)
  {
    v4 = *(v1 + 32);
    v5 = objc_opt_self();

    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    if (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
    {
      if (qword_1EB632FC0 == -1)
      {
        goto LABEL_9;
      }
    }

    else if (qword_1EB637158 == -1)
    {
LABEL_9:

      sub_1AF6F50CC(v4);

      *(v1 + 32) = 0;
      *(v1 + 40) = 1;
      goto LABEL_10;
    }

    swift_once();
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1AF755554(char a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    a3(v35);
LABEL_15:

    return;
  }

  v10 = Strong;
  v11 = *&a2[OBJC_IVAR____TtC3VFX11VFXCoreView_renderer];
  if (!v11)
  {

    a3(v35);

    goto LABEL_15;
  }

  v12 = *&a2[OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer];
  if (!v12)
  {
    sub_1AF0FBD8C(a3);

    a3(v35);

    goto LABEL_15;
  }

  v29 = OBJC_IVAR____TtC3VFX11VFXCoreView_renderer;
  v30 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8);
  sub_1AF0FBD8C(a3);

  v13 = v12;
  [v13 setPresentsWithTransaction_];
  v34 = a1;
  v14 = sub_1AF7525A8();
  *(v14 + 98) = 1;
  *(v14 + 160) = 1;
  swift_unownedRetainStrong();
  v15 = v13;
  swift_unownedRetain();
  v16 = a2;
  swift_unownedRelease();
  swift_unownedRetain();

  v17 = swift_allocObject();
  v31 = v16;
  v17[2] = v16;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = sub_1AF755A94;
  v17[6] = v8;
  v32 = v11;
  v18 = *(v14 + 104);
  *(v14 + 104) = sub_1AF755A9C;
  *(v14 + 112) = v17;
  v33 = v15;

  sub_1AF0FB8EC(v18);
  if (v34)
  {
    *(v14 + 136) = sub_1AF707694(0x746963696C707845, 0xEF7265646E657220, 1, v30);
    swift_unknownObjectRelease();
  }

  if (*&v31[OBJC_IVAR____TtC3VFX11VFXCoreView_renderOutput])
  {
    v19 = &off_1F2537A78;
  }

  else
  {
    v19 = 0;
  }

  sub_1AF709D1C(v20, v19, v14, &off_1F2537A78);

  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  *(v21 + 24) = v10;
  v22 = *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v22)
  {
    v23 = v31;

    os_unfair_recursive_lock_lock_with_options();
    if (*(v22 + 120))
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1AF755AAC;
      *(v27 + 24) = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35[0] = *(v22 + 40);
      *(v22 + 40) = 0x8000000000000000;
      sub_1AF855560(sub_1AF464154, v27, v32, isUniquelyReferenced_nonNull_native);
      *(v22 + 40) = v35[0];
      os_unfair_recursive_lock_unlock();
      sub_1AF6CF09C();
    }
  }

  else
  {
    v24 = *&a2[v29];
    v25 = v31;

    if (v24)
    {

      v26 = objc_autoreleasePoolPush();
      sub_1AF6F7DDC(v10, v24);
      objc_autoreleasePoolPop(v26);
    }
  }

  if (v34)
  {
    sub_1AF660F84(v10);
  }

  else
  {
  }
}

unint64_t sub_1AF755AB4()
{
  result = qword_1EB63E308;
  if (!qword_1EB63E308)
  {
    sub_1AF0D4478(255, &qword_1EB63E300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E308);
  }

  return result;
}

uint64_t sub_1AF755BE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = 0;
  v16 = MEMORY[0x1B27191B0](*(a1 + 16));
  v7 = 1 << *(a1 + 32);
  v8 = *(a1 + 64);
  v9 = -1;
  if (v7 < 64)
  {
    v9 = ~(-1 << v7);
  }

  v10 = v9 & v8;
  v11 = (v7 + 63) >> 6;
  if ((v9 & v8) != 0)
  {
    do
    {
      v12 = v6;
LABEL_8:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      a4(&v15, *(*(a1 + 48) + ((v12 << 9) | (8 * v13))));
    }

    while (v10);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (v6 + 1 >= v11)
    {
      break;
    }

    v10 = *(a1 + 8 * v6++ + 72);
    if (v10)
    {
      v6 = v12;
      goto LABEL_8;
    }
  }

  return v16;
}

uint64_t sub_1AF755D0C()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3[0] = 0;
  [v0 viewports:v3 :&v2];
  return v2;
}

unint64_t sub_1AF755D74(void *a1, unint64_t a2, unsigned __int8 a3)
{
  v6 = [a1 frontFaceTest];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AF6F4D08(v6);
  }

  else
  {
    v8 = a2;
  }

  v9 = [a1 backFaceTest];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = sub_1AF6F4D08(v9);
  }

  else
  {
    v11 = HIDWORD(a2);
  }

  v12 = sub_1AF7572F4(a2, a3);
  v13 = sub_1AF7572FC(a2, a3);
  v15 = __PAIR64__(v11, v8);
  sub_1AF0D7334(v12, &v15);
  sub_1AF0D7344(v13, &v15);
  return v15;
}

id sub_1AF755E78(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EB634100 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB6C2AD8 + 16))
  {
    sub_1AF419914(a2, a3);
  }

  v8 = sub_1AFDFCEC8();

  v9 = [a4 texture:a1 :v8];

  return v9;
}

uint64_t sub_1AF755F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1AF432980(a2);
  sub_1AF757298();
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

id sub_1AF755FD0(unsigned __int8 a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12[0] = 0;
  if (qword_1EB637168 != -1)
  {
    swift_once();
  }

  if (*(qword_1EB6C31B0 + 16))
  {
    sub_1AF419914(a2, a3);
  }

  v8 = sub_1AFDFCEC8();

  v9 = [a4 buffer__:a1 :{v8, v12, &v11}];

  if (v9)
  {
    swift_unknownObjectRelease();
  }

  return v9;
}

id VFXREBindingMeshData.init()()
{
  *&v0[OBJC_IVAR___VFXREBindingMeshData_buffer] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_length] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_format] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_offset] = 0;
  *&v0[OBJC_IVAR___VFXREBindingMeshData_stride] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VFXREBindingMeshData();
  return objc_msgSendSuper2(&v2, sel_init);
}

__n128 sub_1AF756348@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 31) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result.n128_u64[0] = 0xFFFFFFFFLL;
  result.n128_u64[1] = 0xFFFFFFFFLL;
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1AF756360()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF7563D4()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

unint64_t sub_1AF756418@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF75737C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1AF756610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5(a2, a3);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id VFXREDrawCall.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1AF756894(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1AF756950(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v60 = qword_1ED73B840;
  v61 = 0;
  v62 = 2;
  v63 = 0;
  v64 = 2;
  v65 = 0;
  sub_1AF8D66A8(1, 1, 1, v33);
  v51[0] = v33[0];
  v51[1] = v33[1];
  v52 = v34;
  sub_1AF6B06C0(a1, v51, 0x200000000, &v35);
  v26 = v35;
  if (!v35)
  {
    v21 = sub_1AF757408;
    v22 = v33;
    goto LABEL_17;
  }

  v7 = v38;
  v8 = v39;
  v9 = v41;
  v43 = v36;
  v44 = v37;
  v24 = v42;
  v25 = v40;
  if (v42 <= 0 || !v39)
  {
    sub_1AF757498(v33, sub_1AF757408);
    v21 = sub_1AF5C3C90;
    v22 = &v35;
LABEL_17:
    sub_1AF757498(v22, v21);
    return;
  }

  v10 = *(v41 + 32);
  v66 = *(v40 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v23 = a2;
  sub_1AF5D15C0(&v35, v55);
  v11 = (v7 + 24);
  while (1)
  {
    v31 = v8;
    v32 = v4;
    v13 = *(v11 - 6);
    v12 = *(v11 - 5);
    v14 = *(v11 - 4);
    v29 = *v11;
    v30 = *(v11 - 1);
    v15 = v11[2];
    v28 = v11[1];
    if (v66)
    {
      v16 = *(v15 + 376);

      os_unfair_lock_lock(v16);
      os_unfair_lock_lock(*(v15 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v10);
    v17 = *(v9 + 64);
    v53[0] = *(v9 + 48);
    v53[1] = v17;
    v54 = *(v9 + 80);
    v18 = *(v9 + 32);
    v19 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

    *(v9 + 48) = ecs_stack_allocator_allocate(v18, 48 * v19, 8);
    *(v9 + 56) = v19;
    *(v9 + 72) = 0;
    *(v9 + 80) = 0;
    *(v9 + 64) = 0;

    LOBYTE(v45) = 1;
    v55[0] = v25;
    v55[1] = v15;
    v55[2] = v9;
    v55[3] = v14;
    v55[4] = (v12 - v13 + v14);
    v55[5] = v24;
    v55[6] = v13;
    v55[7] = v12;
    v55[8] = 0;
    v55[9] = 0;
    v56 = 1;
    v57 = v30;
    v58 = v29;
    v59 = v28;
    v20 = v23;
    sub_1AFD2511C(v55, v20, a3);
    if (v32)
    {
      break;
    }

    v48 = v26;
    v49 = v43;
    v50 = v44;
    sub_1AF630994(v9, &v48, v53);
    v4 = 0;
    sub_1AF62D29C(v15);
    ecs_stack_allocator_pop_snapshot(v10);
    if (v66)
    {
      os_unfair_lock_unlock(*(v15 + 344));
      os_unfair_lock_unlock(*(v15 + 376));
    }

    v11 += 6;
    v8 = v31 - 1;
    if (v31 == 1)
    {
      sub_1AF757498(v33, sub_1AF757408);
      sub_1AF757498(&v35, sub_1AF5C3C90);

      v22 = &v35;
      v21 = sub_1AF5C3C90;
      goto LABEL_17;
    }
  }

  v45 = v26;
  v46 = v43;
  v47 = v44;
  sub_1AF630994(v9, &v45, v53);
  sub_1AF62D29C(v15);
  ecs_stack_allocator_pop_snapshot(v10);
  os_unfair_lock_unlock(*(v15 + 344));
  os_unfair_lock_unlock(*(v15 + 376));
  __break(1u);
}

void VFXREForEachDrawCall(uint64_t a1, void *a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v7[2] = v5;
  swift_retain_n();
  v6 = a2;
  sub_1AF661130(a1, a1, v6, sub_1AF756EB4, v7);

  _Block_release(v5);
}

uint64_t forEachDrawCall(_:_:_:)(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_retain_n();
  sub_1AF661130(a1, a1, a2, a3, a4);
}

uint64_t sub_1AF756E70()
{
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t destroy for VFXDrawCallHandler(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }

  return result;
}

uint64_t initializeWithCopy for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = (a2 + 16);
  v5 = *(a2 + 16);

  if (v5)
  {
    v7 = *(a2 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v7;
  }

  else
  {
    *(a1 + 16) = *v6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v4)
    {
      v6 = *(a2 + 24);
      *(a1 + 16) = v4;
      *(a1 + 24) = v6;

      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t assignWithTake for VFXDrawCallHandler(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    goto LABEL_8;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

LABEL_8:
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for VFXDrawCallHandler(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for VFXDrawCallHandler(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF757244()
{
  result = qword_1EB63E3B8;
  if (!qword_1EB63E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E3B8);
  }

  return result;
}

void sub_1AF757298()
{
  if (!qword_1EB633C80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB633C80);
    }
  }
}

uint64_t sub_1AF757304(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AF444A40();
  result = MEMORY[0x1B27191B0](v2, &type metadata for Target, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 33;
    do
    {
      sub_1AF70E180(v6, *(v5 - 1));
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1AF75737C(int a1)
{
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      v1 = 0;
      v2 = 3;
      return v2 | (v1 << 32);
    }

    if (a1 == 2)
    {
      v1 = 0;
      v2 = 2;
      return v2 | (v1 << 32);
    }

LABEL_8:
    v2 = 0;
    v1 = 1;
    return v2 | (v1 << 32);
  }

  if (!a1)
  {
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 32);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v1 = 0;
  v2 = 1;
  return v2 | (v1 << 32);
}

uint64_t sub_1AF7573F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AF757408()
{
  if (!qword_1EB633CC0)
  {
    v0 = type metadata accessor for Query3();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633CC0);
    }
  }
}

uint64_t sub_1AF757498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF757510()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1AF757580(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + v2[4] - 1) & -a2;
  v5 = v4 + a1;
  v6 = v2[2];
  if (v6)
  {
    if (v2[3] - v6 >= v5)
    {
LABEL_3:
      v2[4] = v5;
      return v6 + v4;
    }
  }

  else if (v5 < 1)
  {
    goto LABEL_3;
  }

  v15 = *(v2 + 1);
  v8 = v2[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[5] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1AF420660(0, *(v8 + 2) + 1, 1, v8);
    v2[5] = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  v12 = v15;
  if (v11 >= v10 >> 1)
  {
    v14 = sub_1AF420660(v10 > 1, v11 + 1, 1, v8);
    v12 = v15;
    v8 = v14;
  }

  *(v8 + 2) = v11 + 1;
  *&v8[16 * v11 + 32] = v12;
  v2[5] = v8;
  if (v5)
  {
    v13 = 1 << -__clz(v5 - 1);
  }

  else
  {
    v13 = 1;
  }

  result = swift_slowAlloc();
  v2[2] = result;
  v2[3] = result + v13;
  v2[4] = a1;
  return result;
}

uint64_t sub_1AF7576E0()
{
  MEMORY[0x1B271DEA0](*(v0 + 32), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF757744()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 32);
    do
    {
      v4 = *v3++;
      v2 = v4 - v2 + 32 * v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x1B271ACF0](0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v2 ^ (v2 >> 33))) >> 33)));
}

uint64_t sub_1AF7577C8()
{
  v1 = v0;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, 0, 0);
  v2 = v39;

  v3 = -1;
  for (i = 100; i; --i)
  {
    v5 = v3 + 1;
    v6 = (v3 + 1) >> 6;
    v7 = *(v0 + 24);
    if (v6 >= v7)
    {
      break;
    }

    v8 = *(v0 + 32);
    v9 = *(v8 + 8 * v6) >> v5;
    if (!v9)
    {
      v10 = ~v6 + v7;
      v11 = -64 * v6;
      v12 = (v8 + 8 * v6 + 8);
      while (v10)
      {
        v14 = *v12++;
        v13 = v14;
        --v10;
        v11 -= 64;
        if (v14)
        {
          v3 = __clz(__rbit64(v13)) - v11;
          goto LABEL_9;
        }
      }

      break;
    }

    v3 = __clz(__rbit64(v9)) + v5;
LABEL_9:
    sub_1AF68B0F8();
    v15 = sub_1AFDFDF98();
    v40 = v2;
    v18 = *(v2 + 16);
    v17 = *(v2 + 24);
    if (v18 >= v17 >> 1)
    {
      v20 = v15;
      v21 = v16;
      sub_1AFC05CE4(v17 > 1, v18 + 1, 1);
      v16 = v21;
      v15 = v20;
      v2 = v40;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
  }

  sub_1AF629AE4();
  sub_1AF757E30(&qword_1ED726C68, 255, sub_1AF629AE4);
  v22 = sub_1AFDFCD98();
  v24 = v23;

  v25 = v22;
  v26 = *(v1 + 24);
  if (v26)
  {
    v27 = *(v1 + 32);
    if (v26 > 3)
    {
      v29 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27 + 1;
      v31 = 0uLL;
      v32 = v26 & 0xFFFFFFFFFFFFFFFCLL;
      v33 = 0uLL;
      do
      {
        v31 = vpadalq_u32(v31, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v30[-1]))));
        v33 = vpadalq_u32(v33, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v30))));
        v30 += 2;
        v32 -= 4;
      }

      while (v32);
      v28 = vaddvq_s64(vaddq_s64(v33, v31));
      if (v26 == v29)
      {
LABEL_20:
        if (v28 >= 100)
        {
          MEMORY[0x1B2718AE0](0x2E2E2E202CLL, 0xE500000000000000);
          v25 = v22;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    v34 = v26 - v29;
    v35 = v27 + v29;
    do
    {
      v36 = *v35++;
      v37 = vcnt_s8(v36);
      v37.i16[0] = vaddlv_u8(v37);
      v28 += v37.u32[0];
      --v34;
    }

    while (v34);
    goto LABEL_20;
  }

LABEL_22:
  MEMORY[0x1B2718AE0](v25, v24);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  return 123;
}

void *sub_1AF757AB0()
{
  v1 = sub_1AF428780(*v0);

  return v1;
}

uint64_t sub_1AF757B3C()
{
  sub_1AFDFF288();
  sub_1AF757744();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF757BA4()
{
  sub_1AFDFF288();
  sub_1AF757744();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF757BE4@<X0>(int64x2_t *a1@<X0>, void *a2@<X8>)
{
  swift_allocObject();
  v4 = sub_1AF757E78(a1);

  *a2 = v4;
  return result;
}

unint64_t sub_1AF757C88()
{
  result = qword_1EB63E3C8;
  if (!qword_1EB63E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E3C8);
  }

  return result;
}

unint64_t sub_1AF757CDC()
{
  v1 = *v0;
  v2 = v0[1] + 1;
  v0[1] = v2;
  v3 = v2 >> 6;
  v4 = *(v1 + 24);
  if (v2 >> 6 >= v4)
  {
    return 0;
  }

  v5 = *(v1 + 32);
  v6 = *(v5 + 8 * v3) >> v2;
  if (!v6)
  {
    v8 = ~v3 + v4;
    v9 = -64 * v3;
    v10 = (v5 + 8 * v3 + 8);
    while (v8)
    {
      v12 = *v10++;
      v11 = v12;
      --v8;
      v9 -= 64;
      if (v12)
      {
        result = __clz(__rbit64(v11)) - v9;
        goto LABEL_8;
      }
    }

    return 0;
  }

  result = __clz(__rbit64(v6)) + v2;
LABEL_8:
  v0[1] = result;
  return result;
}

unint64_t sub_1AF757D64@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF757CDC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

BOOL sub_1AF757D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 >= v2)
  {
    if (v2 < v3)
    {
      v7 = *(a1 + 24);
      while (v3 != v7)
      {
        if (*(*(a2 + 32) + 8 * v7++))
        {
          return 0;
        }
      }
    }
  }

  else
  {
    v4 = *(a2 + 24);
    while (v2 != v4)
    {
      if (*(*(a1 + 32) + 8 * v4++))
      {
        return 0;
      }
    }
  }

  v9 = 0;
  if (v2 < v3)
  {
    v3 = *(a1 + 24);
  }

  do
  {
    v10 = v3 == v9;
    if (v3 == v9)
    {
      break;
    }

    v11 = *(*(a2 + 32) + 8 * v9);
    v12 = *(*(a1 + 32) + 8 * v9++);
  }

  while (v11 == v12);
  return v10;
}

uint64_t sub_1AF757E30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1AF757E78(int64x2_t *a1)
{
  v3 = a1[1].u64[0];
  if (!v3)
  {
    v6 = 1;
    goto LABEL_15;
  }

  if (v3 < 4)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_8;
  }

  v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = a1 + 3;
  v8 = 0uLL;
  v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 = 0uLL;
  do
  {
    v8 = vbslq_s8(vcgtq_s64(v8, v7[-1]), v8, v7[-1]);
    v10 = vbslq_s8(vcgtq_s64(v10, *v7), v10, *v7);
    v7 += 2;
    v9 -= 4;
  }

  while (v9);
  v11 = vbslq_s8(vcgtq_s64(v8, v10), v8, v10);
  v12 = vextq_s8(v11, v11, 8uLL).u64[0];
  v4 = vbsl_s8(vcgtd_s64(v11.i64[0], v12), *v11.i8, v12);
  if (v3 != v5)
  {
LABEL_8:
    v13 = v3 - v5;
    v14 = &a1[2] + v5;
    do
    {
      v16 = *v14++;
      v15 = v16;
      if (*&v4 <= *&v16)
      {
        v4 = v15;
      }

      --v13;
    }

    while (v13);
  }

  v17 = *&v4 + 63;
  v18 = *&v4 + 126;
  if (v17 < 0)
  {
    v17 = v18;
  }

  v6 = (v17 >> 6) + 1;
LABEL_15:
  v1[2] = v6;
  v1[3] = v6;
  v1[4] = swift_slowAlloc();
  v19 = v1[3];
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      *(v1[4] + 8 * i) = 0;
    }
  }

  if (v3)
  {
    v21 = 0;
    v22 = a1 + 2;
    do
    {
      v23 = v22->i64[v21];
      v24 = v23 >> 6;
      v25 = v1[3];
      if (v23 >> 6 >= v25)
      {
        v26 = v24 + 1;
        if (v1[2] <= v24)
        {
          v27 = swift_slowAlloc();
          v29 = v1[3];
          v28 = v1[4];
          if (v29)
          {
            v30 = 0;
            if (v29 < 4)
            {
              goto LABEL_30;
            }

            if ((v27 - v28) <= 0x1F)
            {
              goto LABEL_30;
            }

            v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
            v31 = (v28 + 16);
            v32 = (v27 + 16);
            v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v34 = *v31;
              *(v32 - 1) = *(v31 - 1);
              *v32 = v34;
              v31 += 2;
              v32 += 2;
              v33 -= 4;
            }

            while (v33);
            if (v29 != v30)
            {
LABEL_30:
              v35 = v29 - v30;
              v36 = 8 * v30;
              v37 = (v27 + 8 * v30);
              v38 = (v28 + v36);
              do
              {
                v39 = *v38++;
                *v37++ = v39;
                --v35;
              }

              while (v35);
            }
          }

          MEMORY[0x1B271DEA0](v28, -1, -1);
          v1[4] = v27;
          v1[2] = 2 * v26;
          v25 = v1[3];
        }

        for (; v26 != v25; ++v25)
        {
          *(v1[4] + 8 * v25) = 0;
        }

        v1[3] = v26;
      }

      ++v21;
      *(v1[4] + 8 * v24) |= 1 << v23;
    }

    while (v21 != v3);
  }

  return v1;
}

uint64_t sub_1AF7580D0()
{
  v1 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = v0[2];
  v4 = *v0;
  if (*v0)
  {
    v5 = v0[1] - v4;
    if (v3 >= v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      return v6;
    }
  }

  v7 = v0[2];
  do
  {
    if (*(v4 + v7) == *(v0 + 24))
    {
      break;
    }

    ++v7;
  }

  while (v5 != v7);
  sub_1AFDFCF68();
  sub_1AF7582E0();
  sub_1AF7583C4(&qword_1EB63E3E8, sub_1AF7582E0);
  v6 = sub_1AFDFCF28();
  if (v8)
  {

    v9 = sub_1AFDFD048();

    v0[2] = v3 + v9 + 1;
  }

  return v6;
}

uint64_t sub_1AF758248(uint64_t a1)
{
  if ((sub_1AFDFEE28() & 1) == 0 && (sub_1AFDFCD28() & 1) != 0 && (sub_1AF759524(10, 0xE100000000000000) & 0xFFFFFF80) == 0)
  {
    sub_1AF759524(10, 0xE100000000000000);
  }

  return a1;
}

void sub_1AF7582E0()
{
  if (!qword_1EB63E3D0)
  {
    sub_1AF758374();
    sub_1AF7583C4(&qword_1EB63E3E0, sub_1AF758374);
    v0 = sub_1AFDFF248();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E3D0);
    }
  }
}

void sub_1AF758374()
{
  if (!qword_1EB63E3D8)
  {
    v0 = sub_1AFDFCE88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E3D8);
    }
  }
}

uint64_t sub_1AF7583C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF75840C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF7584F4()
{
  result = qword_1EB632FA8;
  if (!qword_1EB632FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632FA8);
  }

  return result;
}

uint64_t sub_1AF7585B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1AFDFE818();
  sub_1AFDFE768();
  (*(*(a4 - 8) + 8))(a2, a4);
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t sub_1AF75870C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (qos_class_self())
  {
    v6 = 0;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v7 = pthread_self();
    pthread_getschedparam(v7, &v19, &v18);
    v6 = sub_1AF7599F0(v18.sched_priority);
  }

  MEMORY[0x1EEE9AC00](v6, v5);
  v14[4] = v8;
  v15 = v9;
  v16 = a2;
  v17 = a3;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AF759980;
  *(v10 + 24) = v14;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AF7599A4;
  *(v11 + 24) = v10;
  MEMORY[0x1EEE9AC00](v11, v12);

  sub_1AFDFDAE8();

  swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_1AF758940(uint64_t a1)
{
  v1 = *(a1 - 8);
  if (*(v1 + 64))
  {
    return *(v1 + 72);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF758994()
{
  v1 = sub_1AFDFCBD8();
  sub_1AFDFCBD8();
  swift_getTupleTypeMetadata2();
  sub_1AFDFD4C8();
  sub_1AFDFD538();
  sub_1AFDFD448();
  sub_1AFDFD538();
  sub_1AFDFD448();
  sub_1AFDFD538();
  swift_getWitnessTable();
  sub_1AFDFD268();
  return v1;
}

uint64_t sub_1AF758AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFCA88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1AFDFCAC8();
  v9 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED73B8A0;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = sub_1AF6CB244;
  v15[4] = v14;
  aBlock[4] = sub_1AF759934;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFCDA044;
  aBlock[3] = &unk_1F24E6078;
  v16 = _Block_copy(aBlock);
  swift_retain_n();

  sub_1AFDFCAA8();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1AF0D4D9C(&qword_1ED72F9D0, MEMORY[0x1E69E7F60]);
  sub_1AF6CB2E0();
  sub_1AF0D4D9C(&qword_1ED72F990, sub_1AF6CB2E0);
  sub_1AFDFE058();
  MEMORY[0x1B2719530](0, v12, v8, v16);
  _Block_release(v16);

  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_1AF758E68(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    v9 = BYTE6(a3);
    if (v8)
    {
      v9 = (0xFFFFFFFF00000001 * a2) >> 32;
    }

    if (v9 > a1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v8 == 2)
  {
    if (*(a2 + 24) - *(a2 + 16) <= a1)
    {
      return 0;
    }
  }

  else if ((a1 & 0x8000000000000000) == 0)
  {
    return 0;
  }

LABEL_5:
  v10 = 10;
  if ((sub_1AFDFEE28() & 1) == 0)
  {
    if ((sub_1AFDFCD28() & 1) == 0 || (sub_1AF759524(10, 0xE100000000000000) & 0xFFFFFF80) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_1AF759524(10, 0xE100000000000000);
    }
  }

  v12 = sub_1AFDFC1F8();
  v14 = v13;
  sub_1AF51E584(v10, v12, v13);
  v15 = sub_1AFDFC1F8();
  v17 = v16;
  sub_1AFDFCF68();
  v18 = sub_1AFDFCF18();
  sub_1AF439ED8(v12, v14);
  sub_1AF439ED8(v15, v17);
  return v18;
}

uint64_t sub_1AF7590A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  (*(v15 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  sub_1AFDFD538();
  sub_1AFDFD4E8();
  (*(v8 + 16))(v10, a2, a6);
  sub_1AFDFD538();
  return sub_1AFDFD4E8();
}

uint64_t sub_1AF75923C(uint64_t a1)
{
  v3 = *(v1 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1AF759298(uint64_t a1)
{
  v2 = sub_1AF759B60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF7592D4(uint64_t a1)
{
  v2 = sub_1AF759B60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF759310(void *a1)
{
  sub_1AF759B04();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AF759B60();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AF75941C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v10 = 0;
  v6 = pthread_self();
  pthread_getschedparam(v6, &v11, &v10);
  if ((a2 & 0x100000000) != 0 || v11 == 2)
  {
    return a3(a1);
  }

  v7 = pthread_self();
  started = pthread_override_qos_class_start_np(v7, a2, 0);
  result = a3(a1);
  if (started)
  {
    return pthread_override_qos_class_end_np(started);
  }

  return result;
}

uint64_t sub_1AF7594E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t **))
{
  v4 = a1;
  v5 = &v4;
  return a3(&v5);
}

unint64_t sub_1AF759524(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1AF759674(15, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1AFDFE208();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1AFDFE308() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

uint64_t sub_1AF759674(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0;
  v4 = result & 0xC;
  v5 = 4 << v3;
  if ((result & 1) == 0 || v4 == v5)
  {
    if (v4 != v5)
    {
      v6 = a2;
      v7 = a3;
      if (result)
      {
        return result;
      }

      return result & 0xC | sub_1AF75970C(result, v6, v7) & 0xFFFFFFFFFFFFFFF3 | 1;
    }

    v6 = a2;
    v7 = a3;
    result = sub_1AF87C068(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1AF75970C(result, v6, v7) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1AF75970C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1AFDFE308();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1AF759830(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 >> 62)
  {
    result = sub_1AFDFE108();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      for (i = 0; v5 != i; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1B2719C70](i, v4);
          result = swift_unknownObjectRelease();
          if (v7 == v3)
          {
            return result;
          }
        }

        else if (*(v4 + 8 * i + 32) == v3)
        {
          return result;
        }
      }
    }
  }

  v8 = swift_unknownObjectRetain();
  MEMORY[0x1B2718E00](v8);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

uint64_t sub_1AF759968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF7599B4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  v5 = &v4;
  return v2(&v5);
}

uint64_t sub_1AF7599F0(int a1)
{
  if (a1 > 37)
  {
    return 33;
  }

  if (a1 > 31)
  {
    return 25;
  }

  if (a1 > 20)
  {
    return 21;
  }

  if (a1 > 4)
  {
    return 17;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return 9;
  }

  sub_1AFDFE218();

  v2 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v2);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF759B04()
{
  if (!qword_1EB63E3F0)
  {
    sub_1AF759B60();
    v0 = sub_1AFDFE9A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63E3F0);
    }
  }
}

unint64_t sub_1AF759B60()
{
  result = qword_1EB63E3F8;
  if (!qword_1EB63E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E3F8);
  }

  return result;
}

unint64_t sub_1AF759BC8()
{
  result = qword_1EB63E400;
  if (!qword_1EB63E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E400);
  }

  return result;
}

unint64_t sub_1AF759C20()
{
  result = qword_1EB63E408[0];
  if (!qword_1EB63E408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63E408);
  }

  return result;
}

uint64_t sub_1AF759C88()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1AF759D24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = v10;
    v11 = v10;
  }

  return v3;
}

void sub_1AF759E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t sub_1AF759E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_1AF759F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_1AF759F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1AF75A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1AF75A094(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AF75A1D0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1AF75A430()
{
  sub_1AF0D5C8C(0, &qword_1ED726878, 255, sub_1AF75A924, MEMORY[0x1E69E8958]);
  swift_allocObject();
  result = sub_1AFDFF498();
  qword_1ED73B3F0 = result;
  return result;
}

void sub_1AF75A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  if ((*a4 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1AFDFF308();
  sub_1AFDFF2A8();
  sub_1AFDFD038();
  v9 = sub_1AFDFF2E8();
  if (qword_1ED725CB8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB634368);
  if (qword_1ED7259C0 != -1)
  {
    swift_once();
  }

  if (!sub_1AF7025B4(v9, off_1ED7259C8))
  {
    sub_1AF70D168(&v10, v9);
    os_unfair_lock_unlock(&dword_1EB634368);
LABEL_11:
    v10 = v8;
    (*(*v4 + 88))(a1, &v10, a2, a3);
    return;
  }

  os_unfair_lock_unlock(&dword_1EB634368);
}

uint64_t sub_1AF75A648()
{
  v0 = sub_1AFDFC598();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1AFDFC538();
  sub_1AF75A958(v2, qword_1ED73B608);
  sub_1AF477C68(v2, qword_1ED73B608);
  v3 = sub_1AF0D5194();
  sub_1AFDFC5A8();
  return sub_1AFDFC518();
}

uint64_t sub_1AF75A700(int a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (qword_1ED731058 != -1)
  {
    v6 = a1;
    v7 = a4;
    v8 = a3;
    swift_once();
    a1 = v6;
    a3 = v8;
    a4 = v7;
  }

  v9 = v4;
  return sub_1AF0D4F18(a1, &v9, a3, a4);
}

unint64_t sub_1AF75A794()
{
  result = qword_1EB63E490;
  if (!qword_1EB63E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E490);
  }

  return result;
}

unint64_t sub_1AF75A7EC()
{
  result = qword_1EB63E498;
  if (!qword_1EB63E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E498);
  }

  return result;
}

unint64_t sub_1AF75A844()
{
  result = qword_1EB63E4A0;
  if (!qword_1EB63E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E4A0);
  }

  return result;
}

unint64_t sub_1AF75A89C()
{
  result = qword_1EB63E4A8[0];
  if (!qword_1EB63E4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63E4A8);
  }

  return result;
}

uint64_t *sub_1AF75A958(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1AF75A9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = *(a1 + 16);
  v4 = sub_1AFDFDD58();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19 - v6;
  v8 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v13 = &v19 - v12;
  if (sub_1AFDFE038())
  {
    v14 = *(*(v3 - 8) + 56);
    v15 = v22;

    return v14(v15, 1, 1, v3);
  }

  else
  {
    sub_1AFDFD2A8();
    swift_getAssociatedConformanceWitness();
    v17 = sub_1AFDFDF48();
    (*(v10 + 8))(v13, AssociatedTypeWitness);
    v18 = v22;
    sub_1AF75AC80(v17, v8, v22);
    sub_1AFDFE028();
    (*(v20 + 8))(v7, v21);
    return (*(*(v3 - 8) + 56))(v18, 0, 1, v3);
  }
}

uint64_t sub_1AF75AC80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = a1;
  v15 = a3;
  v16 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v4);
  v5 = swift_checkMetadataState();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  swift_getAssociatedConformanceWitness();
  sub_1AFDFF158();
  sub_1AFDFEDF8();
  v17 = v14;
  sub_1AF68B0F8();
  sub_1AFDFDF58();
  (*(v6 + 8))(v9, v5);
  return sub_1AFDFF488();
}

void *sub_1AF75AEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getTupleTypeMetadata2();
  v6 = sub_1AFDFD478();
  v7 = sub_1AF75C3D8(v6, a1, a2, a3);

  sub_1AFDFD478();
  return v7;
}

uint64_t sub_1AF75AF78(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_1AFDFDD58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v26 - v14;
  v16 = *(v6 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v8 + 16);
  v27 = a1;
  v22(v15, a1, v7, v19);
  if ((*(v16 + 48))(v15, 1, v6) == 1)
  {
    v23 = *(v8 + 8);
    v23(v15, v7);
    sub_1AF75B834(a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v23(v27, v7);
    return (v23)(v11, v7);
  }

  else
  {
    (*(v16 + 32))(v21, v15, v6);
    sub_1AF75B560(v21, a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v25 = *(v8 + 8);
    v25(v27, v7);
    v25(v11, v7);
    return (*(v16 + 8))(v21, v6);
  }
}

uint64_t sub_1AF75B26C()
{
  sub_1AFDFD538();
  swift_getWitnessTable();
  return sub_1AFDFD908() & 1;
}

uint64_t sub_1AF75B2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = a1;
  v12[3] = a2;
  v8 = type metadata accessor for OrderedDictionary();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B2718C70](v12, v8, WitnessTable);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  sub_1AFDFE228();
  swift_getWitnessTable();
  sub_1AFDFE608();

  return v12[4];
}

uint64_t sub_1AF75B41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, TupleTypeMetadata2, v10);
  (*(*(a3 - 8) + 32))(a4, &v12[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v12, a2);
}

uint64_t sub_1AF75B560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  v5 = *(a3 + 16);
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1AFDFDD58();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v26 - v19;
  (*(v10 + 16))(v14, a1, v9, v18);
  sub_1AFDFCCB8();
  v21 = v27;
  sub_1AFDFCC38();
  if ((*(v10 + 48))(v20, 1, v9) == 1)
  {
    (*(v16 + 8))(v20, v15);
    (*(v26 + 16))(v7, v21, v5);
    sub_1AFDFD538();
    sub_1AFDFD4E8();
    v22 = 1;
    v23 = v28;
  }

  else
  {
    v24 = v28;
    (*(v10 + 32))(v28, v20, v9);
    v22 = 0;
    v23 = v24;
  }

  return (*(v10 + 56))(v23, v22, 1, v9);
}

uint64_t sub_1AF75B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v28 = a3;
  v4 = *(a2 + 16);
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v25[0] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v8 = sub_1AFDFDD58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v25 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFCCB8();
  v25[1] = a1;
  v18 = v27;
  sub_1AFDFCC28();
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v19 = 1;
    v20 = v28;
  }

  else
  {
    v21 = *(v13 + 32);
    v21(v17, v12, v7);
    v29 = *(v18 + 8);
    sub_1AFDFD538();
    swift_getWitnessTable();
    sub_1AFDFD938();
    v22 = v25[0];
    sub_1AFDFD4F8();
    (*(v26 + 8))(v22, v4);
    v23 = v28;
    v21(v28, v17, v7);
    v19 = 0;
    v20 = v23;
  }

  return (*(v13 + 56))(v20, v19, 1, v7);
}

uint64_t sub_1AF75BB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  v10 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - v12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFD598();
  (*(v14 + 16))(a1, v18, a6);
  sub_1AFDFCCC8();
  v19 = *(a7 - 8);
  (*(v19 + 48))(v13, 1, a7);
  (*(v14 + 8))(v18, a6);
  return (*(v19 + 32))(v22, v13, a7);
}

uint64_t sub_1AF75BD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AF75BD24();
  *a1 = result;
  return result;
}

void (*sub_1AF75BD60(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[5] = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v9[6] = v14;
  v16 = sub_1AF75BF78(v9, *a2, *v3, v3[1], v11, v10);
  v18 = v17;
  v9[7] = v16;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v18, v10);
  return sub_1AF75BF00;
}

void sub_1AF75BF00(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1AF75BF78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  a1[1] = v13;
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  a1[2] = v14;
  sub_1AF75BB44(v14, v14 + *(TupleTypeMetadata2 + 48), a2, a3, a4, a5, a6);
  return sub_1AF62A410;
}

uint64_t sub_1AF75C0CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_1AF75C690(a1, a2[2], a2[3], a2[4]);
  v6 = v5;

  *a3 = v4;
  a3[1] = v6;
  return result;
}

__n128 sub_1AF75C11C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AF75C12C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AF75C180()
{
  swift_getWitnessTable();
  v0 = sub_1AFD60D38();

  return v0;
}

unint64_t sub_1AF75C1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFCCF8();

  return sub_1AF75C240(a1, v6, a2, a3);
}

unint64_t sub_1AF75C240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_1AFDFCE58();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1AF75C3C8(uint64_t result)
{
  if (result)
  {
    return _swift_isClassOrObjCExistentialType();
  }

  return result;
}

void *sub_1AF75C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v10);
  v12 = v17 - v11;
  if (sub_1AFDFD4C8())
  {
    sub_1AFDFE5D8();
    v13 = sub_1AFDFE5C8();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  v21 = sub_1AFDFD4C8();
  if (v21)
  {
    v14 = 0;
    v19 = *(TupleTypeMetadata2 + 48);
    v20 = a4;
    v17[2] = a2 - 8;
    v18 = (v9 + 16);
    v17[1] = a3 - 8;
    do
    {
      if (sub_1AFDFD4A8())
      {
        (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, TupleTypeMetadata2);
      }

      else
      {
        v22 = sub_1AFDFE248();
        (*v18)(v12, &v22, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      ++v14;
      v15 = sub_1AF75C1E4(v12, a2, v20);
      *(v13 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * v15, v12, a2);
      (*(*(a3 - 8) + 32))(v13[7] + *(*(a3 - 8) + 72) * v15, &v12[v19], a3);
      ++v13[2];
    }

    while (v21 != v14);
  }

  return v13;
}

uint64_t sub_1AF75C690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v34 = &v28 - v10;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v18);
  v20 = &v28 - v19;
  sub_1AFDFD4C8();
  v36 = a4;
  v38 = MEMORY[0x1B2718660]();
  v37[1] = sub_1AFDFD478();
  v35 = a2;
  v33 = sub_1AFDFD538();
  sub_1AFDFD448();
  if (sub_1AFDFD4C8())
  {
    v21 = 0;
    v22 = *(TupleTypeMetadata2 + 48);
    v31 = (v17 + 16);
    v32 = v22;
    v29 = (v11 + 32);
    v30 = (v11 + 16);
    v28 = a3 - 8;
    do
    {
      if (sub_1AFDFD4A8())
      {
        _swift_isClassOrObjCExistentialType();
        (*(v17 + 16))(v20, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21, TupleTypeMetadata2);
      }

      else
      {
        v37[0] = sub_1AFDFE248();
        (*v31)(v20, v37, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      v23 = a1;
      ++v21;
      v24 = v35;
      (*v30)(v15, v20, v35);
      sub_1AFDFD4E8();
      (*v29)(v15, v20, v24);
      v25 = *(a3 - 8);
      v26 = v34;
      (*(v25 + 32))(v34, &v20[v32], a3);
      (*(v25 + 56))(v26, 0, 1, a3);
      sub_1AFDFCCB8();
      sub_1AFDFCCD8();
      a1 = v23;
    }

    while (v21 != sub_1AFDFD4C8());
  }

  return v38;
}

void *sub_1AF75CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v58 = a1;
  v10 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  v60 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_1AFDFDD58();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v49 - v20;
  v22 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v27);
  v29 = &v49 - v28;
  v59 = a3;
  v61 = sub_1AF75AEF0(a2, a3, a5);
  v62 = v30;
  (*(v22 + 16))(v26, v58, a4);
  v31 = v51;
  sub_1AFDFD208();
  v32 = v29;
  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AFDFDE58();
  v35 = *(TupleTypeMetadata2 - 8);
  v36 = *(v35 + 48);
  v58 = v35 + 48;
  if (v36(v21, 1, TupleTypeMetadata2) != 1)
  {
    v37 = *(v60 + 32);
    v60 += 32;
    v53 = v59 - 8;
    v54 = v37;
    v56 = AssociatedConformanceWitness;
    v57 = v32;
    v55 = v36;
    do
    {
      v38 = *(TupleTypeMetadata2 + 48);
      v54(v31, v21, a2);
      v39 = v21;
      v40 = v59;
      v41 = v33;
      v42 = TupleTypeMetadata2;
      v43 = v31;
      v44 = a2;
      v45 = a5;
      v46 = *(v59 - 8);
      (*(v46 + 32))(v13, &v39[v38], v59);
      (*(v46 + 56))(v13, 0, 1, v40);
      a5 = v45;
      a2 = v44;
      v31 = v43;
      TupleTypeMetadata2 = v42;
      v33 = v41;
      v21 = v39;
      v32 = v57;
      v47 = type metadata accessor for OrderedDictionary();
      sub_1AF75AF78(v13, v31, v47);
      sub_1AFDFDE58();
    }

    while (v55(v39, 1, TupleTypeMetadata2) != 1);
  }

  (*(v52 + 8))(v32, v33);
  return v61;
}

void *sub_1AF75CF20(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *assignWithCopy for Node.Typing(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for Node.Typing(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t sub_1AF75CFF8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}