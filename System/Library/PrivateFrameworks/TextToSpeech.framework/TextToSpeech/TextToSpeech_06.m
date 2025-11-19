uint64_t sub_1A93B59D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93B5A34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1A957CE48();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1A93B6054(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A93B6374(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A93B5B24(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v16, (a1 + v8), sizeof(v16));
  memcpy(v17, (a1 + v8), sizeof(v17));
  result = sub_1A932D058(v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v13, v17, sizeof(v13));
    v10 = sub_1A957B308();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = *(v1 + 80);
    memcpy(v14, v16, sizeof(v14));
    sub_1A937B3DC(v14, v15);
    v12 = v11(v13, v7);
    sub_1A937B960(v7, &qword_1EB386988, &qword_1A9587830);
    memcpy(v15, v13, 0x118uLL);
    sub_1A937B48C(v15);
    return v12;
  }

  return result;
}

uint64_t sub_1A93B5CE8(uint64_t result, uint64_t a2, char *a3)
{
  v5 = result;
  v6 = *a3;
  v7 = *v3;
  v8 = *v3 >> 61;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = 0;
      v17 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *(v17 + 16);
      do
      {
        v9 = v18 != v16;
        if (v18 == v16)
        {
          break;
        }

        if (v16 >= *(v17 + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v19 = v16 + 1;
        v27 = *(v17 + 32 + 8 * v16);
        LOBYTE(v26[0]) = v6;

        v20 = sub_1A93B5CE8(v5, a2, v26);

        v16 = v19;
      }

      while ((v20 & 1) == 0);
    }

    else if (v8 == 4)
    {
      v10 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v27 = v11 | 0x4000000000000000;
      LOBYTE(v26[0]) = v6;

      v12 = sub_1A93B5CE8(v5, a2, v26);

      v9 = v12 ^ 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    if (!v8)
    {
      v13 = *(v7 + 16);
      v14 = *(v7 + 24);
      sub_1A957C1A8();
      sub_1A957C1A8();
      v15 = sub_1A957C348();

      return v15 & 1;
    }

    if (v8 == 1)
    {
      v30 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v29 = v6;
      sub_1A93B74AC();
      sub_1A957C438();
      sub_1A957C438();
      if (v27 == v26[0] && v28 == v26[1])
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_1A957D3E8();
      }
    }

    else
    {
      v21 = 0;
      v22 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *(v22 + 16);
      do
      {
        v9 = v23 == v21;
        if (v23 == v21)
        {
          break;
        }

        if (v21 >= *(v22 + 16))
        {
          goto LABEL_27;
        }

        v24 = v21 + 1;
        v27 = *(v22 + 32 + 8 * v21);
        LOBYTE(v26[0]) = v6;

        v25 = sub_1A93B5CE8(v5, a2, v26);

        v21 = v24;
      }

      while ((v25 & 1) != 0);
    }
  }

  return v9 & 1;
}

uint64_t sub_1A93B5F94(uint64_t a1)
{
  v2 = type metadata accessor for PronunciationRuleSet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93B6054(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1A957CE48();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1A957CF38();
  *v1 = result;
  return result;
}

size_t sub_1A93B60F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A93B6114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A93B6114(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386BD0, &qword_1A9588998);
  v10 = *(type metadata accessor for PronunciationRuleSet() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PronunciationRuleSet() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_1A93B62EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC585DE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A93B636C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93B6374(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
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
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A93B744C(&qword_1EB386BA8, &qword_1EB386BA0, &qword_1A9588978);
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB386BA0, &qword_1A9588978);
            v9 = sub_1A93B62EC(v13, i, a3);
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
        sub_1A93B7394();
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

void sub_1A93B6518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v100 = a3;
  v105 = a2;
  v97 = sub_1A937829C(&qword_1EB386B90, &unk_1A9588940);
  v5 = *(v97 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v97, v7);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v103 = &v94 - v11;
  v12 = sub_1A937829C(&qword_1EB386BB0, &qword_1A9588980);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v102 = &v94 - v15;
  v111 = sub_1A957AE58();
  v16 = *(v111 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v111, v18);
  v110 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [objc_allocWithZone(TTSRuleset) init];
  v116 = 0x5F656C75727861;
  v117 = 0xE700000000000000;
  v21 = type metadata accessor for PronunciationRuleSet();
  MEMORY[0x1AC585140](*(a1 + v21[6]), *(a1 + v21[6] + 8));
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v22 = a1 + v21[5];
  v23 = sub_1A957B088();
  MEMORY[0x1AC585140](v23);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  MEMORY[0x1AC585140](*a1, a1[1]);
  v24 = sub_1A957C0C8();

  [v20 setIdentifier_];

  [v20 setPriority_];
  v25 = (a1 + v21[8]);
  if (v25[1])
  {
    v26 = *v25;
    v27 = objc_allocWithZone(TTSRegex);
    v28 = sub_1A957C0C8();
    v29 = [v27 initWithPerlPattern_];

    [v20 setActivationRegex_];
  }

  v30 = *(a1 + v21[9]);
  v31 = *(v30 + 16);
  if (!v31)
  {
    return;
  }

  v32 = 0;
  v99 = 0;
  v109 = (v16 + 8);
  v96 = (v5 + 16);
  v95 = (v5 + 8);
  v33 = (v30 + 48);
  v98 = xmmword_1A9587160;
  v106 = v20;
  v107 = v31;
  v108 = v30;
  while (v32 < *(v30 + 16))
  {
    if (*(v33 + 17) != 1)
    {
      goto LABEL_7;
    }

    v34 = *(v33 - 2);
    v35 = *(v33 - 1);
    v36 = v33[1];
    v115 = *v33;
    v37 = *(v33 + 16);
    v38 = v33[3];
    v39 = v33[5];
    v40 = objc_allocWithZone(TTSRuleReplacement);

    v114 = v36;

    v112 = v38;
    sub_1A93B73E0(v38);
    v113 = v39;

    v41 = [v40 init];
    if (HIDWORD(v32))
    {
      goto LABEL_50;
    }

    v42 = v41;
    [v41 setOriginalRulesetIndex_];
    v122[0] = v34;
    v122[1] = v35;

    v43 = v110;
    sub_1A957AE08();
    sub_1A93820F4();
    sub_1A957CCF8();
    (*v109)(v43, v111);

    v44 = sub_1A957C348();

    if (v44)
    {
    }

    else
    {
      v122[0] = 6446127;
      v122[1] = 0xE300000000000000;

      MEMORY[0x1AC585140](v34, v35);

      MEMORY[0x1AC585140](1764713052, 0xE400000000000000);
    }

    v45 = v115;
    v46 = objc_allocWithZone(TTSRegex);
    v47 = sub_1A957C0C8();

    v48 = [v46 initWithPerlPattern_];

    [v42 setRegex_];
    v121 = v37;
    v120 = 1;
    sub_1A93B73F8();
    sub_1A957C438();
    sub_1A957C438();
    if (v122[0] == v118 && v122[1] == v119)
    {
    }

    else
    {
      v49 = sub_1A957D3E8();

      if ((v49 & 1) == 0)
      {
        v51 = v97;
        v52 = v103;
        if (qword_1EB392A10 != -1)
        {
          swift_once();
        }

        v53 = sub_1A937731C(v51, qword_1EB3A7BC0);
        swift_beginAccess();
        (*v96)(v52, v53, v51);
        sub_1A93B744C(&qword_1EB386BC0, &qword_1EB386B90, &unk_1A9588940);
        sub_1A957BA98();
        sub_1A957C3B8();
        v54 = v99;
        sub_1A957BAD8();
        if (v54)
        {

          v55 = *v95;
          (*v95)(v104, v51);
          v55(v103, v51);
          v56 = sub_1A937829C(&qword_1EB386BC8, &qword_1A9588988);
          v57 = v102;
          (*(*(v56 - 8) + 56))(v102, 1, 1, v56);
          v99 = 0;
        }

        else
        {
          v99 = 0;

          v58 = *v95;
          (*v95)(v104, v51);
          v58(v103, v51);
          v57 = v102;
        }

        v59 = sub_1A937829C(&qword_1EB386BC8, &qword_1A9588988);
        v60 = (*(*(v59 - 8) + 48))(v57, 1, v59) != 1;
        sub_1A937B960(v57, &qword_1EB386BB0, &qword_1A9588980);
        v50 = v60;
        v45 = v115;
        goto LABEL_25;
      }
    }

    v50 = 1;
LABEL_25:
    [v42 setIsTerminalRule_];
    if ((v37 & 1) == 0)
    {
      v74 = sub_1A957C0C8();
      goto LABEL_34;
    }

    v61 = v114;
    if (*(v105 + 120) != 2)
    {
      goto LABEL_29;
    }

    v62 = *(v105 + 72);
    v63 = vorrq_s8(*(v105 + 88), *(v105 + 104));
    v64 = *&vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL)) | *(v105 + 80);
    if (v62 == 1 && !v64)
    {
      goto LABEL_29;
    }

    if (v62 == 4 && !v64)
    {
      v78 = objc_opt_self();
      v79 = sub_1A957C0C8();
      v80 = sub_1A957C0C8();
      v81 = [v78 eloquencePhonemesFromIPA:v79 language:v80];

      if (!v81)
      {
LABEL_42:
        v85 = AXTTSLogCommon();
        if (!v85)
        {
          goto LABEL_51;
        }

        v86 = v85;
        sub_1A957CA98();
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v87 = swift_allocObject();
        *(v87 + 16) = v98;
        *(v87 + 56) = MEMORY[0x1E69E6158];
        *(v87 + 64) = sub_1A93B3A38();
        *(v87 + 32) = v45;
        *(v87 + 40) = v61;

        sub_1A957BC48();

        sub_1A93B7494(v112);
        goto LABEL_6;
      }

      v82 = sub_1A957C0F8();
      v84 = v83;

      v122[0] = 5988384;
      v122[1] = 0xE300000000000000;
      MEMORY[0x1AC585140](v82, v84);

      v72 = 8285;
      v73 = 0xE200000000000000;
      goto LABEL_31;
    }

    if (v62 == 5 && !v64)
    {
      v122[0] = 0;
      v122[1] = 0xE000000000000000;
      sub_1A957CF08();

      strcpy(v122, "[[inpt PHON]] ");
      HIBYTE(v122[1]) = -18;
      v88 = objc_opt_self();
      v89 = sub_1A957C0C8();
      v90 = [v88 applebetPhonemesFromIPA_];

      if (!v90)
      {
        goto LABEL_52;
      }

      v91 = sub_1A957C0F8();
      v93 = v92;

      MEMORY[0x1AC585140](v91, v93);

      v72 = 0x2074706E695B5B20;
      v73 = 0xEF205D5D54584554;
    }

    else
    {
LABEL_29:
      v65 = objc_opt_self();
      v66 = sub_1A957C0C8();
      v67 = sub_1A957C0C8();
      v68 = [v65 lhPhonemesFromIPA:v66 language:v67];

      if (!v68)
      {
        goto LABEL_42;
      }

      v69 = sub_1A957C0F8();
      v71 = v70;

      v122[0] = 724526428;
      v122[1] = 0xE400000000000000;
      MEMORY[0x1AC585140](v69, v71);

      v72 = 0x202B2F655CLL;
      v73 = 0xE500000000000000;
    }

LABEL_31:
    MEMORY[0x1AC585140](v72, v73);
    if (!v122[1])
    {
      goto LABEL_42;
    }

    v74 = sub_1A957C0C8();

LABEL_34:
    v75 = v106;
    [v42 setReplacement_];

    v76 = [v42 replacement];
    if (!v76)
    {
      sub_1A957C0F8();
      v76 = sub_1A957C0C8();
    }

    v77 = [objc_opt_self() processReplacementStringForSpecialCharacters_];

    if (!v77)
    {
      sub_1A957C0F8();
      v77 = sub_1A957C0C8();
    }

    [v42 setReplacement_];

    [v75 addRuleReplacement_];

    sub_1A93B7494(v112);

LABEL_6:

    v31 = v107;
    v30 = v108;
LABEL_7:
    ++v32;
    v33 += 8;
    if (v31 == v32)
    {
      return;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

unint64_t sub_1A93B72DC()
{
  result = qword_1ED96FDB8;
  if (!qword_1ED96FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FDB8);
  }

  return result;
}

unint64_t sub_1A93B7394()
{
  result = qword_1EB386B98;
  if (!qword_1EB386B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB386B98);
  }

  return result;
}

uint64_t sub_1A93B73E0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1A93B73F8()
{
  result = qword_1EB386BB8;
  if (!qword_1EB386BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BB8);
  }

  return result;
}

uint64_t sub_1A93B744C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93B7494(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1A93B74AC()
{
  result = qword_1EB386BD8;
  if (!qword_1EB386BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BD8);
  }

  return result;
}

__n128 sub_1A93B7500@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2 | (*(v2 + 4) << 32);
  v5 = v2[2] | (*(v2 + 12) << 32);
  v6 = v2[4] | (*(v2 + 20) << 32);
  sub_1A9379534(a1, &v23);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v7 = HIDWORD(v4);
  v8 = HIDWORD(v5);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v20 = 0u;
    v19 = 0u;
    v10 = sub_1A937B960(&v19, &qword_1EB386BE0, qword_1A95889A8);
    goto LABEL_10;
  }

  v27 = v21;
  *v28 = *v22;
  *&v28[13] = *&v22[13];
  v25 = v19;
  v26 = v20;
  if (v22[4] != 255 && v7 < 0xFF || (v9 = v6 >> 34, v28[12] >> 2 <= 0x3EuLL) && v9 < 0x3F || v28[20] != 255 && v8 < 0xFF)
  {
    v10 = sub_1A93B77E0(&v25);
LABEL_10:
    LODWORD(v25) = v4;
    BYTE4(v25) = BYTE4(v4);
    BYTE4(v19) = BYTE4(v6);
    LODWORD(v19) = v6;
    v24 = BYTE4(v5);
    v23 = v5;
    MEMORY[0x1EEE9AC00](v10, v11);
    a2[3] = &type metadata for TTSMarkup.Prosody;
    a2[4] = &protocol witness table for TTSMarkup.Prosody;
    v12 = swift_allocObject();
    *a2 = v12;
    TTSMarkup.Prosody.init(rate:pitch:volume:speech:)(&v25, &v19, &v23, sub_1A93B7798, (v12 + 16));
    return result;
  }

  v14 = *v28 | (v22[4] << 32);
  v15 = *&v28[8] | (v28[12] << 32);
  if (v7 <= 0xFE)
  {
    v14 = v4;
  }

  *v28 = v14;
  v28[4] = BYTE4(v14);
  if (v8 <= 0xFE)
  {
    v16 = v5;
  }

  else
  {
    v16 = *&v28[16] | (v28[20] << 32);
  }

  *&v28[16] = v16;
  v28[20] = BYTE4(v16);
  if (v9 <= 0x3E)
  {
    v15 = v6;
  }

  *&v28[8] = v15;
  v28[12] = BYTE4(v15);
  a2[3] = &type metadata for TTSMarkup.Prosody;
  a2[4] = &protocol witness table for TTSMarkup.Prosody;
  v17 = swift_allocObject();
  *a2 = v17;
  v18 = *v28;
  *(v17 + 48) = v27;
  *(v17 + 64) = v18;
  *(v17 + 77) = *&v28[13];
  result = v26;
  *(v17 + 16) = v25;
  *(v17 + 32) = result;
  return result;
}

uint64_t sub_1A93B7798@<X0>(uint64_t a1@<X8>)
{
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v4, *(v1 + 16));
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v4, a1);
  return sub_1A9378138(v4);
}

uint64_t TTSMarkup.SpeechText.phonemes(_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = v4[1];
  v16 = *a1;
  v15 = *(v4 + 1);

  v10 = sub_1A9473844();
  v12 = v11;
  a4[3] = &type metadata for TTSMarkup.Phoneme;
  a4[4] = &protocol witness table for TTSMarkup.Phoneme;
  v13 = swift_allocObject();
  *a4 = v13;
  return TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)(&v16, a2, a3, v10, v12, v13 + 16);
}

uint64_t TTSMarkup.SpeechText.substitute(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    a3[3] = &type metadata for TTSMarkup.Sub;
    a3[4] = &protocol witness table for TTSMarkup.Sub;
    v11 = swift_allocObject();
    *a3 = v11;

    return sub_1A94E0908(a1, a2, sub_1A93B7A50, (v11 + 16));
  }

  else
  {
    a3[3] = &type metadata for TTSMarkup.SpeechText;
    a3[4] = &protocol witness table for TTSMarkup.SpeechText;
    v13 = swift_allocObject();
    *a3 = v13;
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v8;
    v13[5] = v7;
  }
}

uint64_t sub_1A93B7A50@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v9[3] = &type metadata for TTSMarkup.SpeechText;
  v9[4] = &protocol witness table for TTSMarkup.SpeechText;
  v7 = swift_allocObject();
  v9[0] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;

  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v10, v9);
  sub_1A9378138(v9);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v10, a1);
  return sub_1A9378138(v10);
}

uint64_t sub_1A93B7B04@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 4);
  v11 = *a1;
  v12 = v7 != 0;
  v14 = -1;
  v13 = 0;
  v16 = -4;
  v15 = 0;
  v10[3] = a2;
  v10[4] = a3;
  v8 = sub_1A93981E4(v10);
  (*(*(a2 - 8) + 16))(v8, v4, a2);
  sub_1A93B7500(v10, a4);
  return sub_1A9378138(v10);
}

uint64_t sub_1A93B7BC4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v13 = -1;
  v12 = 0;
  v15 = -1;
  v14 = 0;
  v17 = v8;
  v16 = v7;
  v11[3] = a2;
  v11[4] = a3;
  v9 = sub_1A93981E4(v11);
  (*(*(a2 - 8) + 16))(v9, v4, a2);
  sub_1A93B7500(v11, a4);
  return sub_1A9378138(v11);
}

uint64_t sub_1A93B7C70@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4) == 0;
  v14 = -1;
  v13 = 0;
  v9 = 1;
  if (v8)
  {
    v9 = 0;
  }

  v15 = v7;
  v16 = v9;
  v18 = -4;
  v17 = 0;
  v12[3] = a2;
  v12[4] = a3;
  v10 = sub_1A93981E4(v12);
  (*(*(a2 - 8) + 16))(v10, v4, a2);
  sub_1A93B7500(v12, a4);
  return sub_1A9378138(v12);
}

uint64_t TTSMarkupSpeech.emphasis(_:)@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  a2[3] = &type metadata for TTSMarkup.Emphasis;
  a2[4] = &protocol witness table for TTSMarkup.Emphasis;
  v3 = swift_allocObject();
  *a2 = v3;
  return TTSMarkup.Emphasis.init(_:speech:)(&v5, sub_1A93B8E64, (v3 + 16));
}

uint64_t sub_1A93B7DB8(uint64_t a1)
{
  v3 = v1[2];

  if (v1[6])
  {
    sub_1A9378138(v1 + 3);
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t TTSMarkupSpeech.language(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for TTSMarkup.Language;
  a3[4] = &protocol witness table for TTSMarkup.Language;
  v6 = swift_allocObject();
  *a3 = v6;

  return TTSMarkup.Language.init(languageCode:speech:)(a1, a2, sub_1A93B8E64, (v6 + 16));
}

uint64_t TTSMarkupSpeech.preferringSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for TTSMarkup.Voice;
  a3[4] = &protocol witness table for TTSMarkup.Voice;
  v6 = swift_allocObject();
  *a3 = v6;

  return TTSMarkup.Voice.init(voiceSelectionClientKey:speech:)(a1, a2, sub_1A93B7F4C, (v6 + 16));
}

uint64_t TTSMarkupSpeech.selectionProsody(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1A94ED8F8();
  TTSMarkupSpeech.rate(_:)(v6 | ((HIDWORD(v6) & 1) << 32), a1, a2, v17);
  v7 = v18;
  v8 = v19;
  sub_1A93780F4(v17, v18);
  v9 = sub_1A94ED8CC();
  TTSMarkupSpeech.pitch(_:)(v9 | ((HIDWORD(v9) & 1) << 32), v7, v8, v14);
  v10 = v15;
  v11 = v16;
  sub_1A93780F4(v14, v15);
  v12 = sub_1A957B898();
  TTSMarkupSpeech.volume(_:)(v12 | ((HIDWORD(v12) & 1) << 32), v10, v11, a3);
  sub_1A9378138(v14);
  return sub_1A9378138(v17);
}

uint64_t TTSMarkupSpeech.rate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v7 = sub_1A93981E4(a4);
    v8 = *(*(a2 - 8) + 16);

    return v8(v7, v4, a2);
  }

  else
  {
    v9 = a1;
    v10 = 1;
    return sub_1A93B7B04(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.pitch(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v7 = sub_1A93981E4(a4);
    v8 = *(*(a2 - 8) + 16);

    return v8(v7, v4, a2);
  }

  else
  {
    v9 = a1;
    v10 = -126;
    return sub_1A93B7BC4(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.volume(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v9 = sub_1A93981E4(a4);
    v10 = *(*(a2 - 8) + 16);

    return v10(v9, v4, a2);
  }

  else
  {
    sub_1A93BF6F4(&v13, *&a1);
    v11 = v13;
    v12 = v14;
    return sub_1A93B7C70(&v11, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.rate(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 5)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7B04(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.pitch(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 5)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7BC4(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.volume(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 6)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7C70(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.voice(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v8[3] = &type metadata for TTSMarkup.Voice;
    v8[4] = &protocol witness table for TTSMarkup.Voice;
    v9 = v8;
    v10 = swift_allocObject();
    *v9 = v10;

    return TTSMarkup.Voice.init(named:speech:)(a1, a2, sub_1A93B8E64, (v10 + 16));
  }

  else
  {
    a5[3] = a3;
    a5[4] = a4;
    v13 = sub_1A93981E4(a5);
    v14 = *(*(a3 - 8) + 16);

    return v14(v13, v5, a3);
  }
}

uint64_t sub_1A93B8574@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v8 = *(v1 + 16);
  v6 = v8;
  v4 = sub_1A93981E4(v7);
  (*(*(v6 - 8) + 16))(v4, v3);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v9, v7);
  sub_1A9378138(v7);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v9, a1);
  return sub_1A9378138(v9);
}

uint64_t TTSMarkupSpeech.marker(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  TTSMarkupSpeech.tap(_:)(sub_1A93B86C4, v10, a3, a4, a5);
}

uint64_t TTSMarkup.SpeechText.word(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8704, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B87CC, sub_1A93B8E60, a3);
}

uint64_t sub_1A93B8704(uint64_t result)
{
  if (!*(result + 16))
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v5 = *result;
    v4 = *(result + 8);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v6 = sub_1A9473844();
    v3(v5, v4, v6, v7);
  }

  return result;
}

uint64_t sub_1A93B87CC(uint64_t result)
{
  if (!*(result + 16))
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v4 = *(result + 24);
    v6 = *result;
    v5 = *(result + 8);
    v9 = *(v1 + 32);
    v10 = *(v1 + 40);
    v11 = *(v1 + 48);
    v7 = sub_1A9473874();
    v3(v6, v5, v7, v8, v4);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.sentence(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B88A4, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B896C, sub_1A93B8E60, a3);
}

uint64_t sub_1A93B88A4(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v5 = *result;
    v4 = *(result + 8);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v6 = sub_1A9473844();
    v3(v5, v4, v6, v7);
  }

  return result;
}

uint64_t sub_1A93B896C(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v4 = *(result + 24);
    v6 = *result;
    v5 = *(result + 8);
    v9 = *(v1 + 32);
    v10 = *(v1 + 40);
    v11 = *(v1 + 48);
    v7 = sub_1A9473844();
    v3(v6, v5, v7, v8, v4);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.paragraph(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8A44, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8C5C, sub_1A93B8E60, a3);
}

uint64_t sub_1A93B8A44(uint64_t result)
{
  if (*(result + 16) == 2)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v5 = *result;
    v4 = *(result + 8);
    v8 = *(v1 + 32);
    v9 = *(v1 + 40);
    v10 = *(v1 + 48);
    v6 = sub_1A9473844();
    v3(v5, v4, v6, v7);
  }

  return result;
}

uint64_t sub_1A93B8B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11 = *v5;
  v10 = v5[1];
  v13 = v5[2];
  v12 = v5[3];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v11;
  v14[5] = v10;
  v14[6] = v13;
  v14[7] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = v14;

  TTSMarkupSpeech.tap(_:)(a4, v15, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, a5);
}

uint64_t sub_1A93B8C0C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A93B8C5C(uint64_t result)
{
  if (*(result + 16) == 2)
  {
    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    v4 = *(result + 24);
    v6 = *result;
    v5 = *(result + 8);
    v9 = *(v1 + 32);
    v10 = *(v1 + 40);
    v11 = *(v1 + 48);
    v7 = sub_1A9473844();
    v3(v6, v5, v7, v8, v4);
  }

  return result;
}

uint64_t sub_1A93B8CF8(uint64_t result)
{
  v4 = *(result + 16);
  if (v4 >> 61 == 1)
  {
    v11 = v1;
    v12 = v2;
    v13 = v3;
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = *(result + 24);
    v8 = *result;
    v9 = v4;
    v10 = v7;
    return v5(&v8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ProsodyModifier(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProsodyModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProsodyModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 4) = ~a2;
    }
  }

  return result;
}

uint64_t TTSMarkup.Voice.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Voice.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v36, 0, v36, &v29);
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v3);
  if (*(v5 + 16) && (v6 = sub_1A937A490(1701667182, 0xE400000000000000), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];

    v30 = v9;
    v31 = v10;
  }

  else
  {
  }

  v12 = (*((*v4 & *a1) + 0x100))(v11);
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_23;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v14; i = a1)
  {
    v15 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC585DE0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_1A93D1250(&v24);

      if (v25)
      {
        sub_1A932D070(&v24, &v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1A93ADC90(0, a1[2] + 1, 1, a1);
        }

        v20 = a1[2];
        v19 = a1[3];
        if (v20 >= v19 >> 1)
        {
          a1 = sub_1A93ADC90((v19 > 1), v20 + 1, 1, a1);
        }

        a1[2] = v20 + 1;
        sub_1A932D070(&v26, &a1[5 * v20 + 4]);
      }

      else
      {
        sub_1A937B960(&v24, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v14 = sub_1A957CE48();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v27 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v28 = &protocol witness table for <A> [A];

  *&v26 = a1;
  sub_1A93A38D8(&v26, v34);
  sub_1A93B9BF0(&v29, a2);
  return sub_1A93B9C28(&v29);
}

uint64_t TTSMarkup.Voice.Gender.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t TTSMarkup.Voice.Gender.rawValue.getter()
{
  v1 = 1701601645;
  if (*v0 != 1)
  {
    v1 = 0x656C616D6566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A93B9278(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701601645;
  if (v2 != 1)
  {
    v4 = 0x656C616D6566;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6669636570736E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646569;
  }

  v7 = 0xE400000000000000;
  v8 = 1701601645;
  if (*a2 != 1)
  {
    v8 = 0x656C616D6566;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A93B9368()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93B9408()
{
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A93B9494()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93B9530@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Voice.Gender.init(rawValue:)(a1);
}

void sub_1A93B953C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0xE400000000000000;
  v5 = 1701601645;
  if (v2 != 1)
  {
    v5 = 0x656C616D6566;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6669636570736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TTSMarkup.Voice.voiceSelectionClientKey.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t TTSMarkup.Voice.voiceSelectionClientKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t TTSMarkup.Voice.init(named:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(v11, 0, v11, a4);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 - 16) = 0;
  *(v7 - 8) = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v7 - 32) = a1;
  *(v7 - 24) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

uint64_t TTSMarkup.Voice.init(gender:spokenLanguages:speech:)@<X0>(void (*a1)(void *__return_ptr, uint64_t)@<X2>, uint64_t a2@<X8>)
{

  v4 = SpeechContext.init<each A>(_:)(v7, 0, v7, a2);
  *(a2 + 40) = 0u;
  a2 += 40;
  *(a2 - 16) = 0;
  *(a2 - 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 - 32) = 0;
  *(a2 - 24) = 0xE000000000000000;
  a1(v6, v4);
  return sub_1A93A38D8(v6, a2);
}

uint64_t TTSMarkup.Voice.init(voiceSelectionClientKey:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(v11, 0, v11, a4);
  *(v7 + 40) = 0u;
  v7 += 40;
  *(v7 - 16) = 0;
  *(v7 - 8) = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0u;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0xE000000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Voice.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 1701667182;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t TTSMarkup.Voice.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 104))(v3);
}

{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

unint64_t sub_1A93B9A6C()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 1701667182;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A93B9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Voice.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93B9C5C()
{
  result = qword_1EB386BE8;
  if (!qword_1EB386BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BE8);
  }

  return result;
}

__n128 sub_1A93B9CB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1A93B9CCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1A93B9D14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static MacinTalkMarkup.writer(minSpeakingRate:normalSpeakingRate:maxSpeakingRate:)@<X0>(uint64_t a1@<X8>, unsigned int a2@<S0>, unsigned int a3@<S1>, float a4@<S2>)
{
  v16 = &type metadata for MacinTalkMarkup;
  v17 = &off_1F1CF3080;
  v14 = __PAIR64__(a2, a3);
  v15 = a4;
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v5 = *(sub_1A957B308() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A9587160;
  sub_1A957B108();
  LOBYTE(v7) = sub_1A93775FC();
  v9 = sub_1A93ADEC0();
  v11 = v10;
  v12 = sub_1A93775FC();
  return sub_1A94A50A4(&v14, 1, v8, v7 & 1, v9, v11, v12 & 1, a1);
}

uint64_t sub_1A93B9F54(char *a1)
{
  v1 = *a1;
  v2 = 0x4C20726168635B5BLL;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
  }

  else
  {
    v4 = sub_1A957D3E8();

    if ((v4 & 1) == 0)
    {
      sub_1A957C438();
      sub_1A957C438();
      if (v9 == v7 && v10 == v8)
      {
      }

      else
      {
        v5 = sub_1A957D3E8();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      return 0x4C2072626D6E5B5BLL;
    }
  }

  return v2;
}

uint64_t sub_1A93BA140(float a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  MEMORY[0x1AC585140](0x20657461725B5BLL, 0xE700000000000000);
  v6 = 1.0;
  if (a1 >= 1.0)
  {
    v7 = 2.0;
    v8 = v3;
    v9 = v5;
  }

  else
  {
    v6 = 0.0;
    v7 = 1.0;
    v8 = v4;
    v9 = v3;
  }

  sub_1A94CF2F0(v6, v7, v8, v9, a1);
  sub_1A957C898();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A93BA204(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = objc_opt_self();
  v4 = sub_1A957C0C8();
  v5 = [v3 applebetPhonemesFromIPA_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1A957C0F8();
  v8 = v7;

  sub_1A957CF08();

  strcpy(v10, "[[inpt PHON]] ");
  HIBYTE(v10[1]) = -18;
  MEMORY[0x1AC585140](v6, v8);

  MEMORY[0x1AC585140](0x2074706E695B5B20, 0xEE005D5D54584554);
  return v10[0];
}

uint64_t sub_1A93BA320()
{
  MEMORY[0x1AC585140](0x20636E6C735B5BLL, 0xE700000000000000);
  sub_1A957C888();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t sub_1A93BA3B0()
{
  MEMORY[0x1AC585140]();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0x20636E79735B5BLL;
}

uint64_t sub_1A93BA408(float a1, float a2)
{
  v3 = sub_1A93875C0(a1 + -1.0);
  v4 = v3 - sub_1A93875C0(a2 + -1.0);
  if (v4 == 0.0)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  else
  {
    v5 = sub_1A94CF30C(roundf(v4 * 100.0) / 100.0);
    v6 = v7;
  }

  MEMORY[0x1AC585140](v5, v6);

  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0x20736162705B5BLL;
}

uint64_t sub_1A93BA4D0()
{
  MEMORY[0x1AC585140](0x206D6C6F765B5BLL, 0xE700000000000000);
  sub_1A957C898();
  MEMORY[0x1AC585140](23901, 0xE200000000000000);
  return 0;
}

uint64_t initializeBufferWithCopyOfBuffer for MacinTalkMarkup(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MacinTalkMarkup(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MacinTalkMarkup(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t CoreSynthesizer.Voice.fetchAudioUnit()()
{
  *(v1 + 180) = *(v0 + 160);
  *(v1 + 196) = *(v0 + 176);
  return MEMORY[0x1EEE6DFA0](sub_1A93BA620, 0, 0);
}

uint64_t sub_1A93BA620()
{
  v1 = v0 + 16;
  v2 = *(v0 + 196);
  v3 = *(v0 + 180);
  v4 = *(v0 + 188);
  v5 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1A93BA770;
  v6 = swift_continuation_init();
  v7 = sub_1A937829C(&qword_1EB386BF0, &unk_1A9588BB8);
  *(v0 + 160) = v3;
  v8 = v0 + 160;
  *(v8 - 24) = v7;
  *(v8 - 80) = MEMORY[0x1E69E9820];
  *(v8 - 72) = 1107296256;
  *(v8 - 64) = sub_1A93BA9AC;
  *(v8 - 56) = &unk_1F1CED680;
  *(v8 - 48) = v6;
  *(v8 + 8) = v4;
  *(v8 + 16) = v2;
  [v5 instantiateWithComponentDescription:v8 options:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1A93BA770()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_1A93BA940;
  }

  else
  {
    v3 = sub_1A93BA880;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A93BA880()
{
  v1 = *(v0 + 144);
  v2 = objc_opt_self();
  v3 = [v1 AUAudioUnit];
  v4 = [v2 makeAU_];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1A93BA940()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

void *sub_1A93BA9AC(uint64_t a1, void *a2, void *a3)
{
  result = sub_1A93780F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AUAudioUnit._fallbacksLoaded.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB392BA0 = a1;
  return result;
}

uint64_t sub_1A93BAB80()
{
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1EB392BB0 = result;
  return result;
}

uint64_t static AUAudioUnit.fallbackLock.getter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AUAudioUnit.fallbackLock.setter(uint64_t a1)
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB392BB0 = a1;
}

uint64_t (*static AUAudioUnit.fallbackLock.modify())()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

Swift::Bool __swiftcall AUAudioUnit.hasEntitlement(_:)(Swift::String a1)
{
  v6 = *MEMORY[0x1E69E9840];
  [v1 remoteProcessAuditToken];
  sub_1A957C1C8();
  v2 = xpc_copy_entitlement_for_token();

  if (v2)
  {
    value = xpc_BOOL_get_value(v2);
    swift_unknownObjectRelease();
  }

  else
  {
    value = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return value;
}

uint64_t static AUAudioUnit.fallbacksLoaded.getter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v0 = swift_beginAccess();
  v1 = qword_1EB392BB0;
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  MEMORY[0x1EEE9AC00](v3, v4);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93BC680(&v7);
  os_unfair_lock_unlock(v1 + 4);
  v5 = v7;

  return v5;
}

uint64_t sub_1A93BAF08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = static AUAudioUnit.fallbacksLoaded.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A93BAF38(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static AUAudioUnit.fallbacksLoaded.setter();
}

uint64_t static AUAudioUnit.fallbacksLoaded.setter()
{
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v0 = swift_beginAccess();
  v1 = qword_1EB392BB0;
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  MEMORY[0x1EEE9AC00](v3, v4);

  os_unfair_lock_lock(v1 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1A93BB078@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB392BA0;
  return result;
}

void (*static AUAudioUnit.fallbacksLoaded.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v5 = swift_beginAccess();
  v6 = qword_1EB392BB0;
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  MEMORY[0x1EEE9AC00](v8, v9);

  os_unfair_lock_lock(v6 + 4);
  sub_1A93BC7D0(v12);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v6 + 4);
  v10 = v12[0];

  *(v4 + 40) = v10;
  return sub_1A93BB234;
}

void sub_1A93BB234(uint64_t a1)
{
  v1 = *a1;
  v2 = qword_1EB392BB0;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 40);

  os_unfair_lock_lock(v2 + 4);
  sub_1A93BC800();
  os_unfair_lock_unlock(v2 + 4);

  free(v1);
}

uint64_t static AUAudioUnit.loadInProcessFallbacks()()
{
  v1 = v0;
  v161[4] = *MEMORY[0x1E69E9840];
  v159 = sub_1A957BC88();
  v2 = *(v159 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v159, v4);
  v148 = v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v151 = v135 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v135 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v135 - v15;
  v145 = sub_1A957AFD8();
  v17 = *(v145 - 8);
  v18 = v17[8];
  v20 = MEMORY[0x1EEE9AC00](v145, v19);
  v142 = v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v144 = v135 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v153 = v135 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26, v28);
  v139 = v135 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v147 = v135 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v37 = v135 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v138 = v135 - v39;
  if (qword_1EB392BA8 != -1)
  {
    swift_once();
  }

  v40 = swift_beginAccess();
  v41 = qword_1EB392BB0;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v135[-2] = v0;
  MEMORY[0x1EEE9AC00](v43, v44);
  v135[-2] = sub_1A93BC7E8;
  v135[-1] = v45;

  os_unfair_lock_lock(v41 + 4);
  sub_1A93BC7D0(v161);
  os_unfair_lock_unlock(v41 + 4);
  v46 = v161[0];

  if ((v46 & 1) == 0)
  {
    v140 = v16;
    v143 = v13;
    v136 = v1;
    type metadata accessor for CoreSynthesizer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    v50 = [v49 bundleURL];

    sub_1A957AF98();
    v51 = v138;
    sub_1A957AF88();
    v52 = v17[1];
    v53 = v145;
    v54 = v52(v37, v145);
    MEMORY[0x1EEE9AC00](v54, v55);
    v135[-2] = v51;
    v56 = sub_1A93BC2BC(sub_1A93BC734, &v135[-4], &unk_1F1CF3158);
    swift_arrayDestroy();
    v58 = *(v56 + 16);
    if (v58)
    {
      v141 = 0;
      v157 = v17 + 1;
      v158 = v52;
      v61 = v17[2];
      v60 = v17 + 2;
      v59 = v61;
      v62 = (*(v60 + 64) + 32) & ~*(v60 + 64);
      v135[1] = v56;
      v63 = v56 + v62;
      v64 = v60[7];
      v155 = (v2 + 16);
      v156 = v64;
      v154 = (v2 + 8);
      *&v57 = 136315138;
      v146 = v57;
      v150 = v60;
      v65 = v153;
      v66 = v147;
      v152 = v61;
      while (1)
      {
        v68 = v65;
        v59(v66, v63, v53);
        v69 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
        v70 = sub_1A957AF58();
        v71 = [v69 initWithURL_];

        if (v71)
        {
          v161[0] = 0;
          if (![v71 loadAndReturnError_])
          {
            v102 = v161[0];
            v103 = sub_1A957AEF8();

            v149 = v103;
            swift_willThrow();
            v141 = 0;

            v104 = sub_1A93772F8();
            v105 = v148;
            (*v155)(v148, v104, v159);
            v106 = v142;
            v59(v142, v66, v53);
            v107 = sub_1A957BC68();
            v108 = sub_1A957CA78();
            if (os_log_type_enabled(v107, v108))
            {
              v109 = v106;
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              v161[0] = v111;
              *v110 = v146;
              sub_1A93BC760();
              v112 = sub_1A957D3A8();
              v114 = v113;
              v158(v109, v145);
              v115 = v112;
              v59 = v152;
              v116 = sub_1A937A5C0(v115, v114, v161);
              v53 = v145;

              *(v110 + 4) = v116;
              _os_log_impl(&dword_1A9324000, v107, v108, "Failed to load first party audio unit from %s", v110, 0xCu);
              sub_1A9378138(v111);
              MEMORY[0x1AC587CD0](v111, -1, -1);
              MEMORY[0x1AC587CD0](v110, -1, -1);

              (*v154)(v148, v159);
              v158(v66, v53);
            }

            else
            {

              v67 = v158;
              v158(v106, v53);
              (*v154)(v105, v159);
              v67(v66, v53);
            }

            v65 = v153;
            goto LABEL_8;
          }

          v72 = v161[0];
          if ([v71 principalClass])
          {
            swift_getObjCClassMetadata();
            v160 = &unk_1F1D24020;
            v73 = swift_dynamicCastTypeToObjCProtocolConditional();
            if (v73)
            {
              v149 = v73;
              v74 = sub_1A93772F8();
              (*v155)(v140, v74, v159);
              v75 = v66;
              v76 = v139;
              v59(v139, v75, v53);
              v77 = sub_1A957BC68();
              v78 = v53;
              v79 = sub_1A957CA58();
              if (os_log_type_enabled(v77, v79))
              {
                v80 = swift_slowAlloc();
                v137 = swift_slowAlloc();
                v161[0] = v137;
                *v80 = v146;
                sub_1A93BC760();
                v81 = v78;
                v82 = sub_1A957D3A8();
                v84 = v83;
                v85 = v81;
                v86 = v158;
                v158(v76, v85);
                v87 = sub_1A937A5C0(v82, v84, v161);

                *(v80 + 4) = v87;
                _os_log_impl(&dword_1A9324000, v77, v79, "Loading audio unit fallback for %s", v80, 0xCu);
                v88 = v137;
                sub_1A9378138(v137);
                v89 = v88;
                v65 = v153;
                MEMORY[0x1AC587CD0](v89, -1, -1);
                MEMORY[0x1AC587CD0](v80, -1, -1);

                (*v154)(v140, v159);
                v53 = v145;
              }

              else
              {

                v86 = v158;
                v158(v76, v78);
                (*v154)(v140, v159);
                v53 = v78;
                v65 = v68;
              }

              [swift_getObjCClassFromMetadata() registerAudioUnit];

              v66 = v147;
              v86(v147, v53);
              v59 = v152;
              goto LABEL_8;
            }
          }

          v117 = sub_1A93772F8();
          (*v155)(v143, v117, v159);
          v59(v68, v66, v53);
          v118 = sub_1A957BC68();
          v93 = v53;
          v119 = sub_1A957CA78();
          if (!os_log_type_enabled(v118, v119))
          {

            v127 = v158;
            v158(v68, v93);
            (*v154)(v143, v159);
            goto LABEL_24;
          }

          v120 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v161[0] = v121;
          *v120 = v146;
          sub_1A93BC760();
          v122 = sub_1A957D3A8();
          v124 = v123;
          v158(v153, v93);
          v125 = sub_1A937A5C0(v122, v124, v161);

          *(v120 + 4) = v125;
          _os_log_impl(&dword_1A9324000, v118, v119, "Missing principle class in fw %s", v120, 0xCu);
          sub_1A9378138(v121);
          MEMORY[0x1AC587CD0](v121, -1, -1);
          v126 = v120;
          v66 = v147;
          v65 = v153;
          MEMORY[0x1AC587CD0](v126, -1, -1);

          (*v154)(v143, v159);
          v158(v66, v93);
        }

        else
        {
          v90 = sub_1A93772F8();
          (*v155)(v151, v90, v159);
          v91 = v144;
          v59(v144, v66, v53);
          v92 = sub_1A957BC68();
          v93 = v53;
          v94 = sub_1A957CA78();
          if (!os_log_type_enabled(v92, v94))
          {

            v127 = v158;
            v158(v91, v93);
            (*v154)(v151, v159);
LABEL_24:
            v127(v66, v93);
            v53 = v93;
            v59 = v152;
            v65 = v68;
            goto LABEL_8;
          }

          v95 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v161[0] = v149;
          *v95 = v146;
          sub_1A93BC760();
          v96 = sub_1A957D3A8();
          v98 = v97;
          v158(v91, v93);
          v99 = sub_1A937A5C0(v96, v98, v161);

          *(v95 + 4) = v99;
          _os_log_impl(&dword_1A9324000, v92, v94, "Failed to load bundle for %s", v95, 0xCu);
          v100 = v149;
          sub_1A9378138(v149);
          MEMORY[0x1AC587CD0](v100, -1, -1);
          v101 = v95;
          v66 = v147;
          v65 = v153;
          MEMORY[0x1AC587CD0](v101, -1, -1);

          (*v154)(v151, v159);
          v158(v66, v93);
        }

        v53 = v93;
        v59 = v152;
LABEL_8:
        v63 += v156;
        if (!--v58)
        {

          v128 = (v158)(v138, v53);
          goto LABEL_29;
        }
      }
    }

    v128 = v52(v138, v53);
LABEL_29:
    v130 = qword_1EB392BB0;
    v131 = MEMORY[0x1EEE9AC00](v128, v129);
    v135[-2] = v136;
    LOBYTE(v135[-1]) = 1;
    MEMORY[0x1EEE9AC00](v131, v132);
    v135[-2] = sub_1A93BC7B8;
    v135[-1] = v133;

    os_unfair_lock_lock(v130 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v130 + 4);
  }

  v134 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A93BC19C(void *a1)
{
  v2 = sub_1A957AF08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E6968F70], v2);
  sub_1A93820F4();
  sub_1A957AFC8();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1A93BC2BC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1A957AFD8();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1A93BC488(0, v11, 0);
  v12 = v23;
  v18 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v14 = *i;
    v22[0] = *(i - 1);
    v22[1] = v14;

    v20(v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v23 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1A93BC488(v15 > 1, v16 + 1, 1);
      v12 = v23;
    }

    *(v12 + 16) = v16 + 1;
    (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v10, v19);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1A93BC488(size_t a1, int64_t a2, char a3)
{
  result = sub_1A93BC4A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A93BC4A8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386C60, &qword_1A9588BC8);
  v10 = *(sub_1A957AFD8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1A957AFD8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A93BC698()
{
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  byte_1EB392BA0 = v1;
  return result;
}

void *sub_1A93BC6F0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_1A93BC760()
{
  result = qword_1EB386BF8;
  if (!qword_1EB386BF8)
  {
    sub_1A957AFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BF8);
  }

  return result;
}

uint64_t Array<A>.init(contentBlock:)(void (*a1)(void))
{
  sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9587160;
  a1();
  return v2;
}

double Array<A>.content.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_1A93BC894@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t Array<A>.content.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = MEMORY[0x1E69E7CC0];
  sub_1A93ADE40(a1, &v8);
  if (v9)
  {
    sub_1A932D070(&v8, v10);
    sub_1A9379534(v10, &v8);
    v4 = sub_1A93ADC90(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1A93ADC90((v5 > 1), v6 + 1, 1, v4);
    }

    sub_1A9383404(a1);
    sub_1A9378138(v10);
    v4[2] = v6 + 1;
    result = sub_1A932D070(&v8, &v4[5 * v6 + 4]);
    *v1 = v4;
  }

  else
  {
    sub_1A9383404(a1);
    return sub_1A9383404(&v8);
  }

  return result;
}

void (*Array<A>.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  return sub_1A93BCA50;
}

void sub_1A93BCA50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1A93ADE40(*a1, v2 + 40);
    Array<A>.content.setter(v2 + 40);
    sub_1A9383404(v2);
  }

  else
  {
    Array<A>.content.setter(*a1);
  }

  free(v2);
}

uint64_t Array<A>.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t Array<A>.context.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SpeechContext.init<each A>(_:)(v18, 0, v18, &v17);
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = a1 + 4;
  v8 = a1[7];
  v7 = a1[8];
  sub_1A93780F4(v6, v8);
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, v8, v7);

  if (v16)
  {
    goto LABEL_5;
  }

  v10 = &v6[5 * v5];
  v11 = *(v10 - 2);
  v12 = *(v10 - 1);
  sub_1A93780F4(v10 - 5, v11);
  v13 = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(v13, v11, v12);

  if (*(&v15[0] + 1) >> 14 >= *&v15[0] >> 14)
  {
    sub_1A93A0F34(*&v15[0], *(&v15[0] + 1), *&v15[0], *(&v15[0] + 1), v14);
    v15[0] = v14[0];
    v15[1] = v14[1];
    v16 = 0;
    result = sub_1A93A0EEC(v15);
LABEL_5:
    *a2 = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93BCD2C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = Array<A>.context.getter(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t Array<A>.ssml.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v1, 0);
    v2 = v18;
    v4 = a1 + 32;
    do
    {
      sub_1A9379534(v4, v15);
      v5 = v16;
      v6 = v17;
      sub_1A93780F4(v15, v16);
      v7 = (*(v6 + 64))(v5, v6);
      v9 = v8;
      sub_1A9378138(v15);
      v18 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1A93ABB68((v10 > 1), v11 + 1, 1);
        v2 = v18;
      }

      *(v2 + 16) = v11 + 1;
      v12 = v2 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v15[0] = v2;
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  sub_1A93BD360();
  v13 = sub_1A957C088();

  return v13;
}

void *Array<A>.init(ssml:)()
{
  v2 = v0;
  type metadata accessor for SSMLParser();
  v3 = static SSMLParser.parse(ssml:)();

  if (!v0)
  {
    if (v3 >> 62)
    {
      goto LABEL_20;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v4; i = v2)
    {
      v5 = 0;
      v1 = MEMORY[0x1E69E7CC0];
      while ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC585DE0](v5, v3);
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }

LABEL_10:
        v7 = v6;
        sub_1A93D1250(v14);
        v11 = v14[0];
        v12 = v14[1];
        v13 = v15;

        if (*(&v12 + 1))
        {
          sub_1A932D070(&v11, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = sub_1A93ADC90(0, v1[2] + 1, 1, v1);
          }

          v9 = v1[2];
          v8 = v1[3];
          if (v9 >= v8 >> 1)
          {
            v1 = sub_1A93ADC90((v8 > 1), v9 + 1, 1, v1);
          }

          v1[2] = v9 + 1;
          sub_1A932D070(v14, &v1[5 * v9 + 4]);
        }

        else
        {
          sub_1A9383404(&v11);
        }

        ++v5;
        if (v2 == v4)
        {
          goto LABEL_22;
        }
      }

      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v6 = *(v3 + 8 * v5 + 32);
      v2 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v4 = sub_1A957CE48();
    }

    v1 = MEMORY[0x1E69E7CC0];
LABEL_22:
  }

  return v1;
}

void (*sub_1A93BD190(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  return sub_1A93BCA50;
}

uint64_t sub_1A93BD28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return Array<A>.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93BD360()
{
  result = qword_1EB385F80;
  if (!qword_1EB385F80)
  {
    sub_1A93A7B68(&qword_1EB386B68, &qword_1A9591620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB385F80);
  }

  return result;
}

uint64_t TTSMarkup.Prosody.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Prosody.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))(v3);
}

{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.Prosody.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v93, 0, v93, &v83);
  v87 = -1;
  v89 = -4;
  v91 = -1;
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v86 = 0;
  v88 = 0;
  v90 = 0;
  v5 = (*(v4 + 256))(v3);
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A957CE48())
  {
    v76 = a1;
    v8 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      a1 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v78);

      if (v79)
      {
        sub_1A932D070(&v78, &v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        a1 = (v13 + 1);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = a1;
        sub_1A932D070(&v80, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A9383404(&v78);
      }

      ++v9;
      if (v11 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_18:

  v81 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v82 = &protocol witness table for <A> [A];
  *&v80 = v8;
  v14 = sub_1A93A38D8(&v80, v84);
  v15 = *((*MEMORY[0x1E69E7D40] & *v76) + 0xE8);
  v16 = v15(v14);
  if (*(v16 + 16) && (v17 = sub_1A937A490(1702125938, 0xE400000000000000), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v20 = *v19;
    v21 = v19[1];

    TTSMarkup.Prosody.PredefinedRate.init(rawValue:)(&v80);
    v22 = v80;
    if (v80 != 5)
    {

      goto LABEL_25;
    }

    v23 = sub_1A94F2D4C();
    swift_beginAccess();
    v24 = *(**v23 + 144);

    LODWORD(v25) = v24(v20, v21, &unk_1F1CF32D0);
    v27 = v26;

    if (v27)
    {

      v22 = COERCE_UNSIGNED_INT(v25 / 100.0) | 0x100000000;
LABEL_25:
      v86 = v22;
      v87 = BYTE4(v22);
    }
  }

  else
  {
  }

  v29 = v15(v28);
  if (*(v29 + 16) && (v30 = sub_1A937A490(0x656D756C6F76, 0xE600000000000000), (v31 & 1) != 0))
  {
    v32 = (*(v29 + 56) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];

    TTSMarkup.Prosody.PredefinedVolume.init(rawValue:)(&v80);
    v35 = v80;
    if (v80 != 6)
    {

      goto LABEL_33;
    }

    v36 = sub_1A94F2D4C();
    swift_beginAccess();
    v37 = *(**v36 + 160);

    v38 = v37(v33, v34, &unk_1F1CF33B0);
    v40 = v39;

    if (v40)
    {

      v35 = v38 | 0x100000000;
LABEL_33:
      v90 = v35;
      v91 = BYTE4(v35);
    }
  }

  else
  {
  }

  v42 = v15(v41);
  if (*(v42 + 16) && (v43 = sub_1A937A490(0x6863746970, 0xE500000000000000), (v44 & 1) != 0))
  {
    v45 = (*(v42 + 56) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];

    TTSMarkup.Prosody.PredefinedPitch.init(rawValue:)(&v80);
    v48 = v80;
    if (v80 == 5)
    {
      v49 = sub_1A94F2D4C();
      swift_beginAccess();
      v50 = *(**v49 + 144);

      v51 = v50(v47, v46, &unk_1F1CF34E0);
      v53 = v52;

      if (v53)
      {

        v48 = v51 | 0x4000000000;
      }

      else
      {
        swift_beginAccess();
        v56 = *v49;
        v92 = MEMORY[0x1E69E7CC0];

        sub_1A93ABB68(0, 3, 0);
        v57 = v92;
        v59 = *(v92 + 16);
        v58 = *(v92 + 24);
        v60 = v58 >> 1;
        v61 = v59 + 1;
        if (v58 >> 1 <= v59)
        {
          sub_1A93ABB68((v58 > 1), v59 + 1, 1);
          v61 = v59 + 1;
          v57 = v92;
          v58 = *(v92 + 24);
          v60 = v58 >> 1;
        }

        *(v57 + 16) = v61;
        v62 = v57 + 16 * v59;
        *(v62 + 32) = 31304;
        *(v62 + 40) = 0xE200000000000000;
        v92 = v57;
        v63 = v59 + 2;
        if (v60 <= v61)
        {
          v74 = v61;
          v75 = v63;
          sub_1A93ABB68((v58 > 1), v63, 1);
          v63 = v75;
          v61 = v74;
          v57 = v92;
        }

        *(v57 + 16) = v63;
        v64 = v57 + 16 * v61;
        *(v64 + 32) = 29811;
        *(v64 + 40) = 0xE200000000000000;
        v92 = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        v67 = v66 + 1;
        if (v66 >= v65 >> 1)
        {
          sub_1A93ABB68((v65 > 1), v66 + 1, 1);
          v67 = v66 + 1;
          v57 = v92;
        }

        *(v57 + 16) = v67;
        v68 = v57 + 16 * v66;
        *(v68 + 32) = 37;
        *(v68 + 40) = 0xE100000000000000;
        v69 = (*(*v56 + 168))(v47, v46, v57);
        v71 = v70;

        if (v71)
        {

          v72 = sub_1A957D158();
          swift_bridgeObjectRelease_n();
          v73 = v69 | (v72 << 32);
          if (v72 <= 2)
          {
            v48 = v73 | 0xFFFFFF8000000000;
          }

          else
          {
            v48 = 0xFC00000000;
          }
        }

        else
        {
          v48 = 0xFC00000000;
        }
      }
    }

    v54 = a2;
    if (((v48 >> 34) & 0x3F) != 0x3F)
    {
      v88 = v48;
      v89 = BYTE4(v48);
    }
  }

  else
  {

    v54 = a2;
  }

  sub_1A93BFBB0(&v83, v54);
  return sub_1A93B77E0(&v83);
}

uint64_t TTSMarkup.Prosody.PredefinedRate.description.getter()
{
  v1 = *v0;
  v2 = 0x776F6C732D78;
  v3 = 0x6D756964656DLL;
  v4 = 1953718630;
  if (v1 != 3)
  {
    v4 = 0x747361662D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2003790963;
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

uint64_t TTSMarkup.Prosody.PredefinedRate.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A93BDE98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  v6 = 0xE400000000000000;
  v7 = 1685417836;
  if (a1 != 4)
  {
    v7 = 0x64756F6C2D78;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x74666F732D78;
  if (a1 != 1)
  {
    v9 = 1952870259;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746E656C6973;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D756964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1685417836)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64756F6C2D78)
      {
LABEL_34:
        v13 = sub_1A957D3E8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x74666F732D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1952870259)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x746E656C6973)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A93BE044(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 0x776F6C2D78;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1751607656;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x686769682D78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7827308;
    }

    else
    {
      v9 = 0x776F6C2D78;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1751607656;
    if (a2 != 3)
    {
      v6 = 0x686769682D78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A93BE19C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 2003790963;
    }

    else
    {
      v4 = 0x776F6C732D78;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6D756964656DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1953718630;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x747361662D78;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 2003790963;
    }

    else
    {
      v9 = 0x776F6C732D78;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1953718630;
    if (a2 != 3)
    {
      v6 = 0x747361662D78;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1A957D3E8();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1A93BE2F4()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE3BC()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE4A4()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A93BE558()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE61C()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BE700@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Prosody.PredefinedRate.init(rawValue:)(a1);
}

void sub_1A93BE70C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x776F6C732D78;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1953718630;
  if (v2 != 3)
  {
    v8 = 0x747361662D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 2003790963;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A93BE790()
{
  v1 = *v0;
  v2 = 0x776F6C732D78;
  v3 = 0x6D756964656DLL;
  v4 = 1953718630;
  if (v1 != 3)
  {
    v4 = 0x747361662D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2003790963;
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

uint64_t TTSMarkup.Prosody.Rate.description.getter()
{
  if (*(v0 + 4))
  {
    sub_1A957C898();
    MEMORY[0x1AC585140](37, 0xE100000000000000);
    return 0;
  }

  else
  {
    v2 = *v0;
    v3 = 0x776F6C732D78;
    v4 = 0x6D756964656DLL;
    v5 = 1953718630;
    if (v2 != 3)
    {
      v5 = 0x747361662D78;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 2003790963;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t TTSMarkup.Prosody.PredefinedPitch.description.getter()
{
  v1 = *v0;
  v2 = 0x776F6C2D78;
  v3 = 0x6D756964656DLL;
  v4 = 1751607656;
  if (v1 != 3)
  {
    v4 = 0x686769682D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7827308;
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

uint64_t TTSMarkup.Prosody.PredefinedPitch.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A93BEA04()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BEACC()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A93BEB80()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BEC44@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Prosody.PredefinedPitch.init(rawValue:)(a1);
}

void sub_1A93BEC50(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x776F6C2D78;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (v2 != 3)
  {
    v8 = 0x686769682D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7827308;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A93BECD4()
{
  v1 = *v0;
  v2 = 0x776F6C2D78;
  v3 = 0x6D756964656DLL;
  v4 = 1751607656;
  if (v1 != 3)
  {
    v4 = 0x686769682D78;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7827308;
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

uint64_t TTSMarkup.Prosody.RelativePitchUnit.description.getter()
{
  v1 = 29811;
  if (*v0 != 1)
  {
    v1 = 37;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 31304;
  }
}

uint64_t TTSMarkup.Prosody.RelativePitchUnit.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A93BEDF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 29811;
  if (v2 != 1)
  {
    v4 = 37;
    v3 = 0xE100000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 31304;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 29811;
  if (*a2 != 1)
  {
    v8 = 37;
    v7 = 0xE100000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 31304;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}

uint64_t sub_1A93BEEC0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BEF40()
{
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A93BEFAC()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A93BF028@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Prosody.RelativePitchUnit.init(rawValue:)(a1);
}

void sub_1A93BF034(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE200000000000000;
  v5 = 29811;
  if (v2 != 1)
  {
    v5 = 37;
    v4 = 0xE100000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 31304;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A93BF070()
{
  v1 = 29811;
  if (*v0 != 1)
  {
    v1 = 37;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 31304;
  }
}

void static TTSMarkup.Prosody.Pitch.ttsPitch(_:)(uint64_t a1@<X8>, float a2@<S0>)
{
  v4 = 1.0;
  if (a2 >= 1.0)
  {
    v7 = 100.0;
    v6 = 2.0;
    v5 = 0.0;
  }

  else
  {
    v5 = -50.0;
    v4 = 0.5;
    v6 = 1.0;
    v7 = 0.0;
  }

  *a1 = sub_1A94CF2F0(v4, v6, v5, v7, a2);
  *(a1 + 4) = -126;
}

uint64_t TTSMarkup.Prosody.Pitch.description.getter()
{
  v1 = *(v0 + 4) >> 6;
  if (v1)
  {
    if (v1 == 1)
    {
      v12 = 0;
      sub_1A957C898();
      MEMORY[0x1AC585140](31304, 0xE200000000000000);
    }

    else
    {
      *(v0 + 4);
      v7 = ((*v0 | (*(v0 + 4) << 32)) >> 32) & 0x3F;
      v12 = sub_1A94CF30C(*v0);
      v8 = 0xE200000000000000;
      v9 = 29811;
      if (v7 != 1)
      {
        v9 = 37;
        v8 = 0xE100000000000000;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 31304;
      }

      if (v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0xE200000000000000;
      }

      MEMORY[0x1AC585140](v10, v11);
    }

    return v12;
  }

  else
  {
    *(v0 + 4);
    v2 = *v0;
    v3 = 0x776F6C2D78;
    v4 = 0x6D756964656DLL;
    v5 = 1751607656;
    if (v2 != 3)
    {
      v5 = 0x686769682D78;
    }

    if (v2 != 2)
    {
      v4 = v5;
    }

    if (*v0)
    {
      v3 = 7827308;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t TTSMarkup.Prosody.PredefinedVolume.description.getter()
{
  v1 = *v0;
  v2 = 0x746E656C6973;
  v3 = 0x6D756964656DLL;
  v4 = 1685417836;
  if (v1 != 4)
  {
    v4 = 0x64756F6C2D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74666F732D78;
  if (v1 != 1)
  {
    v5 = 1952870259;
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

uint64_t TTSMarkup.Prosody.PredefinedVolume.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A93BF394()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A93BF46C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.Prosody.PredefinedVolume.init(rawValue:)(a1);
}

void sub_1A93BF478(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E656C6973;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1685417836;
  if (v2 != 4)
  {
    v8 = 0x64756F6C2D78;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x74666F732D78;
  if (v2 != 1)
  {
    v10 = 1952870259;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1A93BF518()
{
  v1 = *v0;
  v2 = 0x746E656C6973;
  v3 = 0x6D756964656DLL;
  v4 = 1685417836;
  if (v1 != 4)
  {
    v4 = 0x64756F6C2D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74666F732D78;
  if (v1 != 1)
  {
    v5 = 1952870259;
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

float sub_1A93BF5B4()
{
  if (*(v0 + 4))
  {
    return roundf(sub_1A93876A4(*v0) * 100.0) / 100.0;
  }

  else
  {
    return flt_1A95891C8[*v0];
  }
}

uint64_t TTSMarkup.Prosody.Volume.description.getter()
{
  if (*(v0 + 4))
  {
    v7 = sub_1A94CF30C(*v0);
    MEMORY[0x1AC585140](16996, 0xE200000000000000);
    return v7;
  }

  else
  {
    v2 = *v0;
    v3 = 0x746E656C6973;
    v4 = 0x6D756964656DLL;
    v5 = 1685417836;
    if (v2 != 4)
    {
      v5 = 0x64756F6C2D78;
    }

    if (v2 != 3)
    {
      v4 = v5;
    }

    v6 = 0x74666F732D78;
    if (v2 != 1)
    {
      v6 = 1952870259;
    }

    if (*v0)
    {
      v3 = v6;
    }

    if (*v0 <= 2u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }
}

void sub_1A93BF6F4(uint64_t a1@<X8>, float a2@<S0>)
{
  if (a2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = sub_1A9387684(a2);
  }

  *a1 = v4;
  *(a1 + 4) = a2 != 0.0;
}

uint64_t TTSMarkup.Prosody.init(rate:pitch:volume:speech:)@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, void (*a4)(void *__return_ptr, uint64_t)@<X3>, void *a5@<X8>)
{
  v6 = a5;
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = *a2;
  v10 = *(a2 + 4);
  v11 = *a3;
  v12 = *(a3 + 4);
  v13 = SpeechContext.init<each A>(_:)(v16, 0, v16, a5);
  *(v6 + 8) = 0u;
  v6 += 8;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 44) = v8;
  *(v6 + 40) = v7;
  *(v6 + 52) = v10;
  *(v6 + 48) = v9;
  *(v6 + 60) = v12;
  *(v6 + 56) = v11;
  a4(v15, v13);
  return sub_1A93A38D8(v15, v6);
}

uint64_t TTSMarkup.Prosody.attributes.getter()
{
  v1 = MEMORY[0x1E69E7CC8];
  if (*(v0 + 52) != 255)
  {
    if (((*(v0 + 52) << 32) & 0x100000000) != 0)
    {
      sub_1A957C898();
      MEMORY[0x1AC585140](37, 0xE100000000000000);
      v4 = 0;
      v3 = 0xE000000000000000;
    }

    else
    {
      v2 = *(v0 + 48);
      if (v2 <= 1)
      {
        if (*(v0 + 48))
        {
          v4 = 2003790963;
        }

        else
        {
          v4 = 0x776F6C732D78;
        }

        if (*(v0 + 48))
        {
          v3 = 0xE400000000000000;
        }

        else
        {
          v3 = 0xE600000000000000;
        }
      }

      else if (v2 == 2)
      {
        v3 = 0xE600000000000000;
        v4 = 0x6D756964656DLL;
      }

      else if (v2 == 3)
      {
        v3 = 0xE400000000000000;
        v4 = 1953718630;
      }

      else
      {
        v3 = 0xE600000000000000;
        v4 = 0x747361662D78;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v4, v3, 1702125938, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  }

  if (*(v0 + 60) >> 2 <= 0x3EuLL)
  {
    v16 = *(v0 + 56);
    v6 = TTSMarkup.Prosody.Pitch.description.getter();
    v8 = v7;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v6, v8, 0x6863746970, 0xE500000000000000, v9);
  }

  if (*(v0 + 68) != 255)
  {
    if (((*(v0 + 68) << 32) & 0x100000000) != 0)
    {
      v17 = sub_1A94CF30C(*(v0 + 64));
      v18 = v13;
      MEMORY[0x1AC585140](16996, 0xE200000000000000);
      v12 = v17;
      v11 = v18;
    }

    else
    {
      v10 = *(v0 + 64);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0xE600000000000000;
          v12 = 0x6D756964656DLL;
        }

        else if (v10 == 4)
        {
          v11 = 0xE400000000000000;
          v12 = 1685417836;
        }

        else
        {
          v11 = 0xE600000000000000;
          v12 = 0x64756F6C2D78;
        }
      }

      else if (*(v0 + 64))
      {
        if (v10 == 1)
        {
          v11 = 0xE600000000000000;
          v12 = 0x74666F732D78;
        }

        else
        {
          v11 = 0xE400000000000000;
          v12 = 1952870259;
        }
      }

      else
      {
        v11 = 0xE600000000000000;
        v12 = 0x746E656C6973;
      }
    }

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v12, v11, 0x656D756C6F76, 0xE600000000000000, v14);
  }

  return v1;
}

uint64_t sub_1A93BFB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Prosody.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A93BFBEC()
{
  result = qword_1EB386C68;
  if (!qword_1EB386C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C68);
  }

  return result;
}

unint64_t sub_1A93BFC44()
{
  result = qword_1EB386C70;
  if (!qword_1EB386C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C70);
  }

  return result;
}

unint64_t sub_1A93BFC9C()
{
  result = qword_1EB386C78;
  if (!qword_1EB386C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C78);
  }

  return result;
}

unint64_t sub_1A93BFCF4()
{
  result = qword_1EB386C80;
  if (!qword_1EB386C80)
  {
    sub_1A93A7B68(&qword_1EB386C88, &qword_1A9588EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C80);
  }

  return result;
}

unint64_t sub_1A93BFD5C()
{
  result = qword_1EB386C90;
  if (!qword_1EB386C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386C90);
  }

  return result;
}

__n128 sub_1A93BFDB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A93BFDD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 69))
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

uint64_t sub_1A93BFE1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 69) = 1;
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

    *(result + 69) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s7ProsodyV5PitchOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceDatabaseError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceDatabaseError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7ProsodyV5PitchOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 5))
  {
    return (*a1 + 62);
  }

  v3 = ((*(a1 + 4) >> 6) & 0xFFFFFFC3 | (4 * ((*(a1 + 4) >> 2) & 0xF))) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s7ProsodyV5PitchOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 4) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 4) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t _s7ProsodyV16PredefinedVolumeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7ProsodyV16PredefinedVolumeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s7ProsodyV4RateOwet_0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s7ProsodyV4RateOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A93C0380@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C03DC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x70);

  return v4(v2, v3);
}

uint64_t sub_1A93C04E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C0540(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);

  return v4(v2, v3);
}

id sub_1A93C0624(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1A957C0C8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A93C06C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1A957C0F8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A93C074C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C07A8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);

  return v4(v2, v3);
}

id sub_1A93C0880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
  *v16 = a1;
  *(v16 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  *v15 = a5;
  *(v15 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1A93C0AE0()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1A93C0B98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A93C0BF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93C0C4C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);

  return v3(v4);
}

id sub_1A93C0D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_1A957C0C8();

  return v6;
}

uint64_t sub_1A93C0DAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A957C0F8();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A93C0E24@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x78))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C0E80(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x80);

  return v4(v2, v3);
}

id sub_1A93C0F58(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets] = MEMORY[0x1E69E7CC0];
  v6 = &v5[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_originalSSML];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id TaggedSSML.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A93C10EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x70))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C1148(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x78);

  return v4(v2, v3);
}

uint64_t sub_1A93C1238@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A93C1294(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x90);

  return v4(v2, v3);
}

id SSMLVoiceTagger.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentVoiceName];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_currentLanguage];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_voiceTagRanges] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SSMLVoiceTagger();
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_1A93C149C(unint64_t a1, unint64_t a2)
{
  v4 = v2;
  type metadata accessor for SSMLParser();

  v88 = a1;
  v7 = SSMLParser.__allocating_init(ssml:)();
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x130))();
  v87 = a2;
  sub_1A937829C(&qword_1EB386CE0, &qword_1A95891E8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9587160;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 64) = MEMORY[0x1E69E7CC0];
  v11 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles;
  swift_beginAccess();
  v12 = *(v4 + v11);
  v85 = v11;
  *(v4 + v11) = v9;

  (*((*v8 & *v4) + 0x78))(0, 0);
  v13 = (*((*v8 & *v4) + 0x90))(0, 0);
  v14 = (*((*v8 & *v7) + 0xE8))(v13);
  if (v14)
  {
    v15 = v14;
    sub_1A93C2334(v14);
  }

  v16 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_voiceTagRanges;
  swift_beginAccess();
  v17 = *(v4 + v16);
  v18 = *(v17 + 16);
  v82 = v4;
  v76 = v7;
  if (v18)
  {
    v19 = v87;

    v20 = (v17 + 40);
    v21 = v88;
    do
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      sub_1A957C3B8();
      sub_1A957CC78();

      v98 = 0;
      v99 = 0xE000000000000000;
      v95 = 32;
      v96 = 0xE100000000000000;
      sub_1A93820F4();
      v24 = sub_1A957CD28();
      v21 = sub_1A93C1FAC(v22, v23, v24, v25, v21, v19);
      v3 = v26;

      v19 = v3;
      v20 += 2;
      --v18;
    }

    while (v18);

    v8 = MEMORY[0x1E69E7D40];
    v4 = v82;
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = v87;

    v21 = v88;
  }

  v27 = type metadata accessor for TaggedSSML();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_ssmlSnippets] = v10;
  v29 = &v28[OBJC_IVAR____TtC12TextToSpeech10TaggedSSML_originalSSML];
  *v29 = v21;
  v29[1] = v19;
  v97.receiver = v28;
  v97.super_class = v27;
  v30 = sel_init;

  v31 = objc_msgSendSuper2(&v97, sel_init);
  v32 = v31;
  v75 = *(*(v4 + v11) + 16);
  if (v75 < 2)
  {
    v61 = type metadata accessor for VoiceTaggedSSMLSnippet();
    v62 = objc_allocWithZone(v61);
    v63 = &v62[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
    *v63 = 0;
    *(v63 + 1) = 0;
    v64 = &v62[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
    *v64 = 0;
    *(v64 + 1) = 0;
    v65 = &v62[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
    *v65 = v21;
    v65[1] = v19;
    swift_beginAccess();
    *v63 = 0;
    *(v63 + 1) = 0;
    swift_beginAccess();
    *v64 = 0;
    *(v64 + 1) = 0;
    v94.receiver = v62;
    v94.super_class = v61;
    objc_msgSendSuper2(&v94, &selRef_getArgument_atIndex_);
    v66 = (*((*v8 & *v32) + 0x70))(&v98);
    v68 = v67;
    MEMORY[0x1AC585360]();
    if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v70 = *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1A957C4F8();
    }

    sub_1A957C538();
    v66(&v98, 0);
LABEL_35:
  }

  else
  {
    v73 = v21;
    v74 = v19;
    v33 = 0;
    v71 = *((*v8 & *v31) + 0x70);
    v72 = v31;
    while (1)
    {
      v34 = *(v4 + v85);
      v35 = *(v34 + 16);
      if (v33 >= v35)
      {
        break;
      }

      v36 = (v34 + 40 * v33);
      v30 = v36[5];
      v80 = v36[6];
      v81 = v33 + 1;
      v78 = v36[4];
      v79 = v36[7];

      v32 = v74;

      v77 = v30;

      v3 = 0;
      v7 = v73;
      v83 = v35;
      v84 = v33;
      do
      {
        if (v3 == v35)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v3 != v33)
        {
          v37 = *(v4 + v85);
          if (v3 >= *(v37 + 16))
          {
            goto LABEL_40;
          }

          v38 = *(v37 + 40 * v3 + 64);
          if (v38 >> 62)
          {
            v30 = *(v37 + 40 * v3 + 64);
            v39 = sub_1A957CE48();
            v38 = v30;
            if (v39)
            {
LABEL_18:
              if (v39 >= 1)
              {
                v86 = v3;
                v89 = v38 & 0xC000000000000001;
                v90 = v38;

                v40 = 0;
                while (1)
                {
                  v30 = v39;
                  v41 = v89 ? MEMORY[0x1AC585DE0](v40, v90) : *&v90[8 * v40 + 32];
                  v42 = v41;
                  v43 = v8;
                  v44 = *((*v8 & *v41) + 0x118);
                  v45 = v44();
                  v44();
                  if (v46 >> 14 < v45 >> 14)
                  {
                    break;
                  }

                  ++v40;
                  sub_1A957C3B8();
                  sub_1A957CC78();

                  v48 = (v44)(v47);
                  v50 = v49;
                  v98 = 0;
                  v99 = 0xE000000000000000;
                  v92 = 32;
                  v93 = 0xE100000000000000;
                  sub_1A93820F4();
                  v51 = sub_1A957CD28();
                  v7 = sub_1A93C1FAC(v48, v50, v51, v52, v7, v32);
                  v54 = v53;

                  v32 = v54;
                  v39 = v30;
                  v8 = v43;
                  if (v30 == v40)
                  {

                    v4 = v82;
                    v35 = v83;
                    v33 = v84;
                    v3 = v86;
                    goto LABEL_12;
                  }
                }

                __break(1u);
                goto LABEL_38;
              }

              goto LABEL_41;
            }
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v39)
            {
              goto LABEL_18;
            }
          }
        }

LABEL_12:
        ++v3;
      }

      while (v3 != v35);
      v55 = type metadata accessor for VoiceTaggedSSMLSnippet();
      v56 = objc_allocWithZone(v55);
      v57 = &v56[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_voiceName];
      *v57 = 0;
      *(v57 + 1) = 0;
      v3 = &v56[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_language];
      *v3 = 0;
      *(v3 + 8) = 0;
      v58 = &v56[OBJC_IVAR____TtC12TextToSpeech22VoiceTaggedSSMLSnippet_ssml];
      *v58 = v7;
      *(v58 + 1) = v32;
      swift_beginAccess();
      *v57 = v78;
      *(v57 + 1) = v77;
      swift_beginAccess();
      *v3 = v80;
      *(v3 + 8) = v79;
      v91.receiver = v56;
      v91.super_class = v55;
      objc_msgSendSuper2(&v91, sel_init);
      v32 = v72;
      v30 = v71(&v98);
      v60 = v59;
      MEMORY[0x1AC585360]();
      if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
      }

      sub_1A957C538();
      (v30)(&v98, 0);
      v33 = v81;
      v7 = v76;
      if (v81 == v75)
      {
LABEL_38:

        goto LABEL_35;
      }
    }

LABEL_42:
    __break(1u);
    sub_1A957C4F8();
    sub_1A957C538();
    (v3)(&v98, 0);
  }

  return v32;
}

unint64_t sub_1A93C1FAC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1A957CCA8();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1A957CCA8();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1A938156C(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_1A957C2F8();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1A938156C(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1A938156C(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_1A957C2F8();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_1A957C2B8();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x1AC5850B0](result);
LABEL_23:
        sub_1A957C3B8();
        sub_1A93C3A6C();
        sub_1A957C278();

        sub_1A957C278();
        sub_1A93C3234(a2, a5, a6);
        sub_1A957C278();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1A93C2334(unint64_t a1)
{
  v2 = v1;
  if (sub_1A93C2D5C())
  {
    v4 = OBJC_IVAR____TtC12TextToSpeech15SSMLVoiceTagger_leafPiles;
    v5 = swift_beginAccess();
    v6 = *(v4 + v1);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 40 * v7;
      v10 = *(v8 + 8);
      v9 = *(v8 + 16);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v20 = MEMORY[0x1E69E7D40];
    v21 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x88);
    v22 = (v21)(v5);
    if (v9)
    {
      if (!v23)
      {
        goto LABEL_71;
      }

      if (v10 == v22 && v9 == v23)
      {
      }

      else
      {
        v25 = sub_1A957D3E8();

        if ((v25 & 1) == 0)
        {
          goto LABEL_72;
        }
      }
    }

    else if (v23)
    {
      goto LABEL_71;
    }

    v65 = *(v4 + v1);
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = (v65 + 40 * v66);
      v69 = *(v67 - 1);
      v68 = *v67;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    v70 = (*((*v20 & *v1) + 0x70))(v22);
    if (v68)
    {
      if (v71)
      {
        if (v69 == v70 && v68 == v71)
        {

          goto LABEL_77;
        }

        v73 = sub_1A957D3E8();

        if (v73)
        {
LABEL_77:
          v47 = *(v4 + v2);
          v45 = *(v47 + 16);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v2) = v47;
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v45)
            {
              goto LABEL_79;
            }

            goto LABEL_86;
          }

LABEL_85:
          v47 = sub_1A93C34A4(v47);
          *(v4 + v2) = v47;
          if (v45)
          {
LABEL_79:
            if (v45 <= *(v47 + 16))
            {
              v86 = a1;
              MEMORY[0x1AC585360]();
              if (*((*(v47 + 40 * v45 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v47 + 40 * v45 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_81:
                sub_1A957C538();
                *(v4 + v2) = v47;
                return swift_endAccess();
              }

LABEL_88:
              sub_1A957C4F8();
              goto LABEL_81;
            }

LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_72:
        v74 = (*((*v20 & *v1) + 0x70))(v22);
        v76 = v75;
        v77 = v21();
        v79 = v78;
        swift_beginAccess();
        v80 = *(v4 + v2);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v2) = v80;
        if ((v81 & 1) == 0)
        {
          v80 = sub_1A93C3384(0, *(v80 + 2) + 1, 1, v80);
          *(v4 + v2) = v80;
        }

        v83 = *(v80 + 2);
        v82 = *(v80 + 3);
        if (v83 >= v82 >> 1)
        {
          v80 = sub_1A93C3384((v82 > 1), v83 + 1, 1, v80);
        }

        *(v80 + 2) = v83 + 1;
        v84 = &v80[40 * v83];
        *(v84 + 4) = v74;
        *(v84 + 5) = v76;
        *(v84 + 6) = v77;
        *(v84 + 7) = v79;
        *(v84 + 8) = MEMORY[0x1E69E7CC0];
        *(v4 + v2) = v80;
        swift_endAccess();
        goto LABEL_77;
      }
    }

    else if (!v71)
    {
      goto LABEL_77;
    }

LABEL_71:

    goto LABEL_72;
  }

  v4 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xB8);
  v11(&v98);
  sub_1A93C34B8();
  sub_1A957C438();
  sub_1A957C438();
  if (v96 == v94 && v97 == v95)
  {
  }

  else
  {
    v13 = sub_1A957D3E8();

    if ((v13 & 1) == 0)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_25;
    }
  }

  v14 = (*((*v4 & *a1) + 0xE8))(v12);
  if (*(v14 + 16) && (v15 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

LABEL_25:
  (v11)(&v98, v12);
  sub_1A957C438();
  sub_1A957C438();
  if (v96 == v94 && v97 == v95)
  {
  }

  else
  {
    v27 = sub_1A957D3E8();

    if ((v27 & 1) == 0)
    {
      v32 = 0;
      v33 = 0;
      goto LABEL_35;
    }
  }

  v28 = (*((*v4 & *a1) + 0xE8))(v26);
  if (*(v28 + 16) && (v29 = sub_1A937A490(1701667182, 0xE400000000000000), (v30 & 1) != 0))
  {
    v31 = (*(v28 + 56) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

LABEL_35:
  v34 = sub_1A93C2EDC();
  if (v34)
  {
    v34 = (*((*v4 & *a1) + 0x130))();
    if ((v36 & 1) == 0)
    {
      v37 = v34;
      v38 = v35;
      v34 = (*((*v4 & *a1) + 0x148))();
      if ((v40 & 1) == 0)
      {
        v41 = v34;
        v91 = v39;
        sub_1A937829C(&qword_1EB386CF0, &qword_1A9589298);
        v93 = v19;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A95873F0;
        *(inited + 32) = v37;
        *(inited + 40) = v38;
        *(inited + 48) = v41;
        *(inited + 56) = v91;
        swift_beginAccess();
        v43 = inited;
        v19 = v93;
        sub_1A93C3084(v43);
        v34 = swift_endAccess();
      }
    }
  }

  v44 = *v4;
  if (!(v33 | v18))
  {
    v45 = a1;
    v46 = (*((v44 & *a1) + 0x100))(v34);
    a1 = v46;
    if (v46 >> 62)
    {
      v47 = sub_1A957CE48();
      if (v47)
      {
LABEL_42:
        v48 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1AC585DE0](v48, a1);
          }

          else
          {
            if (v48 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v49 = *(a1 + 8 * v48 + 32);
          }

          v50 = v49;
          v4 = (v48 + 1);
          if (__OFADD__(v48, 1))
          {
            break;
          }

          v45 = v2;
          sub_1A93C2334(v49);

          ++v48;
          if (v4 == v47)
          {
            goto LABEL_90;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
        goto LABEL_42;
      }
    }

LABEL_90:
  }

  v51 = (*((v44 & *v2) + 0x70))(v34);
  v90 = v52;
  v92 = v51;
  v53 = (*((*v4 & *v2) + 0x88))();
  v88 = v54;
  v89 = v53;
  v55 = *((*v4 & *v2) + 0x90);

  v87 = v55;
  v55(v19, v18);
  v56 = v4;
  v57 = *((*v4 & *v2) + 0x78);
  v58 = v57(v32, v33);
  result = (*((*v56 & *a1) + 0x100))(v58);
  v60 = result;
  if (!(result >> 62))
  {
    v61 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_52;
    }

LABEL_92:

    v87(v89, v88);
    v57(v92, v90);
  }

  result = sub_1A957CE48();
  v61 = result;
  if (!result)
  {
    goto LABEL_92;
  }

LABEL_52:
  if (v61 >= 1)
  {
    for (i = 0; i != v61; ++i)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x1AC585DE0](i, v60);
      }

      else
      {
        v63 = *(v60 + 8 * i + 32);
      }

      v64 = v63;
      (sub_1A93C2334)();
    }

    goto LABEL_92;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93C2D5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(&v14);
  v3 = v14 - 1;
  if (v3 < 0xF && ((0x45CDu >> v3) & 1) != 0)
  {
    v4 = 0x7E7Fu >> v3;
  }

  else
  {
    v5 = (*((*v1 & *v0) + 0x100))(v2);
    v6 = v5;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_19:
      v8 = sub_1A957CE48();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v8 != i; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1AC585DE0](i, v6);
      }

      else
      {
        if (i >= *(v7 + 16))
        {
          goto LABEL_18;
        }

        v10 = *(v6 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v12 = sub_1A93C2D5C();

      if ((v12 & 1) == 0)
      {

        LOBYTE(v4) = 0;
        return v4 & 1;
      }
    }

    LOBYTE(v4) = 1;
  }

  return v4 & 1;
}

uint64_t sub_1A93C2EDC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  v1(&v11);
  sub_1A93C34B8();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {

    v5 = 1;
  }

  else
  {
    v3 = sub_1A957D3E8();

    if (v3)
    {
      v5 = 1;
    }

    else
    {
      (v1)(&v11, v4);
      sub_1A957C438();
      sub_1A957C438();
      if (v9 == v7 && v10 == v8)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1A957D3E8();
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_1A93C3084(uint64_t result)
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

  result = sub_1A93C3280(result, v12, 1, v3);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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

id sub_1A93C3188(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A93C3234(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1A957C3B8();
  }

  __break(1u);
  return result;
}

char *sub_1A93C3280(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386CF0, &qword_1A9589298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A93C3384(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386CE0, &qword_1A95891E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A93C34B8()
{
  result = qword_1EB386CE8;
  if (!qword_1EB386CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386CE8);
  }

  return result;
}

uint64_t sub_1A93C3848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A93C3890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A93C3A6C()
{
  result = qword_1EB386CF8;
  if (!qword_1EB386CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386CF8);
  }

  return result;
}

void *sub_1A93C3AC8()
{
  v0 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v0[2] = TTSExecutor.__allocating_init()();
  v0[3] = 300000;
  v0[4] = sub_1A93CF37C(MEMORY[0x1E69E7CC0]);
  return v0;
}

uint64_t sub_1A93C3B54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

uint64_t sub_1A93C3BA0(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A93C3C00()
{
  swift_beginAccess();
  v1 = *(v0 + 328);
  v2 = v1;
  return v1;
}

void sub_1A93C3C44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 328);
  *(v1 + 328) = a1;
}

uint64_t sub_1A93C3CDC(const void *a1, uint64_t a2, uint64_t a3)
{
  v4[84] = v3;
  v4[83] = a3;
  v4[82] = a2;
  v6 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v4[85] = swift_task_alloc();
  memcpy(v4 + 2, a1, 0x138uLL);
  type metadata accessor for TTSAURenderer();
  v4[86] = sub_1A93CFF90(&qword_1EB386D00, v7, type metadata accessor for TTSAURenderer);
  v9 = sub_1A957C5A8();
  v4[87] = v9;
  v4[88] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A93C3DEC, v9, v8);
}

uint64_t sub_1A93C3DEC()
{
  v1 = v0[84];
  v2 = *(v1 + 344);
  if (v2)
  {
    v0[89] = v2;
    v3 = *(MEMORY[0x1E69E86B0] + 4);

    v4 = swift_task_alloc();
    v0[90] = v4;
    v5 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v4 = v0;
    v4[1] = sub_1A93C404C;
    v6 = MEMORY[0x1E69E7288];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 80, v2, v7, v5, v6);
  }

  else
  {
    v8 = v0[86];
    v9 = v0[85];
    v10 = v0[83];
    v11 = v0[82];
    sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
    swift_allocObject();
    v12 = sub_1A957BC38();
    v13 = sub_1A957C688();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v8;
    v14[4] = v1;
    memcpy(v14 + 5, v0 + 2, 0x138uLL);
    v14[44] = v11;
    v14[45] = v10;
    v14[46] = v12;
    swift_retain_n();
    sub_1A93CF590((v0 + 2), (v0 + 41));

    v15 = sub_1A93C4B70(0, 0, v9, &unk_1A95892E8, v14);
    v16 = *(v1 + 344);
    *(v1 + 344) = v15;

    v17 = v0[1];

    return v17(v12);
  }
}

uint64_t sub_1A93C404C()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v6 = *v0;

  sub_1A93CF4C8(*(v1 + 640), *(v1 + 648));
  v3 = *(v1 + 704);
  v4 = *(v1 + 696);

  return MEMORY[0x1EEE6DFA0](sub_1A93C418C, v4, v3);
}

uint64_t sub_1A93C418C()
{
  v1 = v0[84];
  v2 = *(v1 + 344);
  if (v0[89])
  {
    if (v2)
    {
      v3 = *(v1 + 344);

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      v4 = sub_1A957C728();

      if (v4)
      {
        goto LABEL_10;
      }

      v1 = v0[84];
    }

    v2 = *(v1 + 344);
    if (v2)
    {
LABEL_6:
      v0[89] = v2;
      v5 = *(MEMORY[0x1E69E86B0] + 4);

      v6 = swift_task_alloc();
      v0[90] = v6;
      v7 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v6 = v0;
      v6[1] = sub_1A93C404C;
      v8 = MEMORY[0x1E69E7288];
      v9 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA20](v0 + 80, v2, v9, v7, v8);
    }
  }

  else if (v2)
  {
    goto LABEL_6;
  }

LABEL_10:
  v10 = v0[86];
  v11 = v0[85];
  v12 = v0[84];
  v13 = v0[83];
  v14 = v0[82];
  sub_1A937829C(&qword_1EB386D08, &qword_1A95892D8);
  swift_allocObject();
  v15 = sub_1A957BC38();
  v16 = sub_1A957C688();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = v12;
  v17[3] = v10;
  v17[4] = v12;
  memcpy(v17 + 5, v0 + 2, 0x138uLL);
  v17[44] = v14;
  v17[45] = v13;
  v17[46] = v15;
  swift_retain_n();
  sub_1A93CF590((v0 + 2), (v0 + 41));

  v18 = sub_1A93C4B70(0, 0, v11, &unk_1A95892E8, v17);

  v19 = *(v12 + 344);
  *(v12 + 344) = v18;

  v20 = v0[1];

  return v20(v15);
}

uint64_t sub_1A93C447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[85] = a8;
  v8[84] = a7;
  v8[83] = a6;
  v8[82] = a5;
  v8[81] = a4;
  v9 = sub_1A957C5E8();
  v8[86] = v9;
  v10 = *(v9 - 8);
  v8[87] = v10;
  v11 = *(v10 + 64) + 15;
  v8[88] = swift_task_alloc();
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v12, type metadata accessor for TTSAURenderer);
  v14 = sub_1A957C5A8();
  v8[89] = v14;
  v8[90] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1A93C45A4, v14, v13);
}

uint64_t sub_1A93C45A4()
{
  v1 = v0[82];
  TTSKickAudioComponentRegistry();
  memcpy(v0 + 2, v1, 0x138uLL);
  v2 = swift_task_alloc();
  v0[91] = v2;
  *v2 = v0;
  v2[1] = sub_1A93C465C;
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[81];

  return sub_1A93C812C((v0 + 2), v4, v3);
}

uint64_t sub_1A93C465C()
{
  v2 = *(*v1 + 728);
  v3 = *v1;
  *(v3 + 736) = v0;

  if (v0)
  {
    v4 = *(v3 + 720);
    v5 = *(v3 + 712);

    return MEMORY[0x1EEE6DFA0](sub_1A93C4920, v5, v4);
  }

  else
  {
    memcpy((v3 + 328), *(v3 + 656), 0x138uLL);
    v6 = swift_task_alloc();
    *(v3 + 744) = v6;
    *v6 = v3;
    v6[1] = sub_1A93C47E4;
    v7 = *(v3 + 680);
    v8 = *(v3 + 648);

    return sub_1A93C55C8((v3 + 328), v7);
  }
}

uint64_t sub_1A93C47E4()
{
  v2 = *(*v1 + 744);
  v3 = *v1;
  v3[94] = v0;

  if (v0)
  {
    v4 = v3[90];
    v5 = v3[89];

    return MEMORY[0x1EEE6DFA0](sub_1A93C4A48, v5, v4);
  }

  else
  {
    v6 = v3[88];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_1A93C4920()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  *(v0 + 640) = v1;
  v4 = v1;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);

    sub_1A957BC18();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = *(v0 + 680);
    v10 = *(v0 + 648);

    sub_1A957BBF8();
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v12 = *(v0 + 704);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A93C4A48()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 704);
  v3 = *(v0 + 688);
  *(v0 + 640) = v1;
  v4 = v1;
  sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = *(v0 + 680);

    sub_1A957BC18();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = *(v0 + 680);
    v10 = *(v0 + 648);

    sub_1A957BBF8();
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  v12 = *(v0 + 704);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A93C4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = v25 - v11;
  sub_1A9391BAC(a3, v25 - v11, &qword_1EB388000, &qword_1A9587710);
  v13 = sub_1A957C688();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1A937B960(v12, &qword_1EB388000, &qword_1A9587710);
  }

  else
  {
    sub_1A957C678();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1A957C5A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1A957C1C8() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A937B960(a3, &qword_1EB388000, &qword_1A9587710);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1A93C4E1C()
{
  if (*(v0 + 344))
  {
    v1 = *(v0 + 344);

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();

    v2 = *(v0 + 344);
  }

  *(v0 + 344) = 0;
}

uint64_t TTSAURenderer.__allocating_init()()
{
  v0 = swift_allocObject();
  TTSAURenderer.init()();
  return v0;
}

uint64_t TTSAURenderer.init()()
{
  v1 = sub_1A957CAD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_1A957CAC8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = sub_1A957BF48();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  type metadata accessor for AudioUnitCache();
  v13 = swift_allocObject();
  type metadata accessor for TTSExecutor();
  v13[2] = TTSExecutor.__allocating_init()();
  v13[3] = 300000;
  v13[4] = sub_1A93CF37C(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = v13;
  *(v0 + 24) = TTSExecutor.__allocating_init()();
  sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF38();
  sub_1A957CAB8();
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8090], v1);
  *(v0 + 32) = sub_1A957CB08();
  *(v0 + 40) = 0;
  sub_1A93847E0(v18);
  memcpy((v0 + 48), v18, 0x118uLL);
  *(v0 + 328) = 0;
  if (TTSSpeechUnitTestingMode())
  {
    v14 = 512;
  }

  else
  {
    v14 = 256;
  }

  *(v0 + 336) = v14;
  *(v0 + 340) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 0;
  *(v0 + 368) = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v0 + 376) = v15;
  *(v0 + 384) = 0;
  *(v0 + 392) = 0;
  *(v0 + 400) = 0;
  return v0;
}

uint64_t TTSAURenderer.deinit()
{
  v1 = *(v0 + 392);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  sub_1A937B960(__dst, &unk_1EB387BC0, &qword_1A9587E30);

  v4 = *(v0 + 344);

  v5 = *(v0 + 368);
  sub_1A93CF5C8(*(v0 + 360));
  v6 = *(v0 + 376);

  v7 = *(v0 + 384);

  v8 = *(v0 + 400);

  return v0;
}

uint64_t TTSAURenderer.__deallocating_deinit()
{
  TTSAURenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A93C525C()
{
  swift_beginAccess();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  sub_1A932D0E4(v1);
  return v1;
}

uint64_t sub_1A93C52AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 360);
  v6 = *(v2 + 368);
  *(v2 + 360) = a1;
  *(v2 + 368) = a2;
  return sub_1A93CF5C8(v5);
}

uint64_t (*sub_1A93C5350())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 376);
  os_unfair_lock_lock(v1 + 4);
  sub_1A93CF674(&v4);
  os_unfair_lock_unlock(v1 + 4);
  if (!v4)
  {
    return 0;
  }

  v3 = v4;
  *(swift_allocObject() + 16) = v3;
  return sub_1A93CF6B8;
}

uint64_t sub_1A93C5404(uint64_t a1)
{
  v3 = *(v1 + 376);
  os_unfair_lock_lock(v3 + 4);
  sub_1A93B5100();
  os_unfair_lock_unlock(v3 + 4);
  return sub_1A93CF5C8(a1);
}

uint64_t (*sub_1A93C548C(uint64_t (**a1)(uint64_t a1, uint64_t a2)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A93C5350();
  a1[1] = v3;
  return sub_1A93C54D4;
}

uint64_t sub_1A93C54D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + 376);
  v5 = a1[2];
  v6 = a1[1];
  if (a2)
  {
    sub_1A932D0E4(v2);
    os_unfair_lock_lock(v3 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v3 + 4);
    sub_1A93CF5C8(v2);
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_1A93BC800();
    os_unfair_lock_unlock(v3 + 4);
  }

  return sub_1A93CF5C8(v2);
}

uint64_t sub_1A93C55C8(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3[63] = a2;
  v3[64] = v2;
  v5 = sub_1A957D018();
  v3[65] = v5;
  v6 = *(v5 - 8);
  v3[66] = v6;
  v7 = *(v6 + 64) + 15;
  v3[67] = swift_task_alloc();
  v8 = type metadata accessor for TTSAURenderer.SpeechBuffer();
  v3[68] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v10 = a1[1];
  v3[71] = *a1;
  v3[72] = v10;
  memcpy(v3 + 2, a1 + 2, 0x118uLL);
  v11 = a1[38];
  v3[73] = a1[37];
  v3[74] = v11;
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v12, type metadata accessor for TTSAURenderer);
  v13 = sub_1A957C5A8();
  v3[75] = v13;
  v3[76] = v14;
  v15 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93C5778, v13, v14);
}

uint64_t sub_1A93C5778()
{
  v66 = v0;
  v65 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 512);
  v2 = *(v1 + 40);
  *(v0 + 616) = v2;
  if (!v2)
  {
LABEL_18:
    v57 = *(v0 + 560);
    v58 = *(v0 + 552);
    v59 = *(v0 + 536);

    v60 = *(v0 + 8);
    v61 = *MEMORY[0x1E69E9840];

    return v60();
  }

  v3 = *(v0 + 584);
  v63 = *(v0 + 592);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  *(v1 + 340) = 0;
  v6 = v2;
  [v6 cancelSpeechRequest];
  v7 = v6;
  [v7 maximumFramesToRender];
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v8 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  v9 = objc_allocWithZone(MEMORY[0x1E69584E8]);
  v10 = sub_1A957C0C8();
  v11 = [v9 initWithSSMLRepresentation:v10 voice:v8];
  *(v0 + 624) = v11;

  v12 = sub_1A957C0C8();
  [v11 setJobIdentifier_];

  sub_1A937829C(&qword_1EB386D80, &qword_1A95898D8);
  v13 = sub_1A94BA628();
  *(v0 + 632) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  v15 = *v1 + 424;
  v16 = *v15;
  *(v0 + 640) = *v15;
  *(v0 + 648) = v15 & 0xFFFFFFFFFFFFLL | 0xF111000000000000;
  v17 = v11;

  v16(sub_1A93D0990, v14);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v18 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  v19 = objc_allocWithZone(MEMORY[0x1E69584E8]);
  v20 = sub_1A957C0C8();
  v21 = [v19 initWithSSMLRepresentation:v20 voice:v18];

  v22 = sub_1A957C0C8();
  [v21 setJobIdentifier_];

  [v7 synthesizeSpeechRequest_];
  v23 = [v7 maximumFramesToRender];
  v24 = *(*v1 + 248);
  v25 = *v1 + 248;
  *(v0 + 656) = v24;
  *(v0 + 664) = v25 & 0xFFFFFFFFFFFFLL | 0x229C000000000000;
  v26 = v24(v23);
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  [v26 sampleRate];
  v29 = v28;

  v30 = v29 * 0.1;
  if (COERCE__INT64(fabs(v29 * 0.1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v30 <= -1.0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v30 < 4294967300.0)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v30 = 2205.0;
LABEL_8:
  *(v0 + 672) = v30;
  *(v0 + 788) = 0;
  if (sub_1A957C778())
  {

    v31 = *(v0 + 664);
    v32 = *(v0 + 512);
    v33 = (*(v0 + 656))();
    *(v0 + 736) = v33;
    if (v33)
    {
      v34 = v33;
      v35 = *(v0 + 648);
      v36 = *(v0 + 640);
      v37 = *(v0 + 512);
      v38 = sub_1A93CF95C(*(v0 + 632));
      v36(0, 0);
      v39 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v34 frameCapacity:0];
      *(v0 + 744) = v39;
      [v39 setFrameLength_];
      v40 = *(v37 + 340);
      v41 = v40 + 1;
      if (v40 != -1)
      {
        v42 = *(v0 + 552);
        v43 = *(v0 + 544);
        v44 = v39;
        sub_1A957B0A8();
        *(v42 + v43[5]) = v41;
        *(v42 + v43[6]) = v44;
        *(v42 + v43[7]) = v38;
        v45 = *(MEMORY[0x1E698D2F0] + 4);
        v46 = swift_task_alloc();
        *(v0 + 752) = v46;
        *v46 = v0;
        v46[1] = sub_1A93C7314;
        v47 = *(v0 + 552);
        v48 = *(v0 + 504);
        v49 = *MEMORY[0x1E69E9840];

        return MEMORY[0x1EEDEE810](v47);
      }

LABEL_23:
      __break(1u);
    }

    v53 = *(v0 + 632);
    v54 = *(v0 + 624);
    v55 = *(v0 + 616);
    v56 = *(v0 + 504);
    sub_1A957BC18();

    goto LABEL_18;
  }

  *(v0 + 796) = 0;
  v50 = swift_task_alloc();
  *(v0 + 680) = v50;
  *v50 = v0;
  v50[1] = sub_1A93C5D54;
  v51 = *(v0 + 512);
  v52 = *MEMORY[0x1E69E9840];

  return sub_1A93C7898();
}

uint64_t sub_1A93C5D54(int a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(*v3 + 680);
  v13 = *v3;
  *(v5 + 688) = a2;
  *(v5 + 696) = v2;

  if (v2)
  {

    v7 = *(v5 + 608);
    v8 = *(v5 + 600);
    v9 = sub_1A93C7570;
  }

  else
  {
    *(v5 + 792) = a1;
    v7 = *(v5 + 608);
    v8 = *(v5 + 600);
    v9 = sub_1A93C5EB8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A93C5EB8()
{
  v126 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 688);
  if ((*(v0 + 792) & 0x80) != 0)
  {
    [*(v0 + 616) reset];
    v6 = *(v0 + 688);
    v3 = *(v0 + 796);
    v8 = v2;
    goto LABEL_7;
  }

  v3 = *(v0 + 796);
  v4 = *(v0 + 788);
  v5 = *(v0 + 672);
  v6 = v2;
  if ((v3 & 1) != 0 || v4 >= v5)
  {
LABEL_7:
    *(v0 + 704) = v6;
    *(v0 + 797) = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v124 = v6;
    if (TTSIsBaseSystem())
    {
      goto LABEL_32;
    }

    v10 = *(v0 + 512);
    v11 = sub_1A93C980C();
    v12 = v11;
    if (v11 >> 62)
    {
      v13 = sub_1A957CE48();
      if (v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
LABEL_10:
        *(v0 + 760) = 0;
        *(v0 + 768) = 0;
        *(v0 + 776) = 0;
        if (v13 < 1)
        {
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v1 = 0;
        v118 = v12 & 0xC000000000000001;
        v121 = v12;
        do
        {
          if (v118)
          {
            v14 = MEMORY[0x1AC585DE0](v1, v12);
          }

          else
          {
            v14 = *(v12 + 8 * v1 + 32);
          }

          v16 = v14;
          v17 = *(v0 + 512);
          ++v1;
          *(v0 + 784) = 64;
          LODWORD(v15) = *(v17 + 340);
          *(v0 + 344) = *(v0 + 776);
          *(v0 + 328) = *(v0 + 760);
          *(v0 + 296) = v15;
          *(v0 + 312) = 0;
          *(v0 + 320) = 0;
          *(v0 + 304) = 0;
          *(v0 + 352) = 1;
          v18 = [v14 AUAudioUnit];
          v19 = [v18 renderBlock];

          v20 = [v124 frameLength];
          v21 = [v124 mutableAudioBufferList];
          *(v0 + 392) = sub_1A93D0B04;
          *(v0 + 400) = v9;
          *(v0 + 360) = MEMORY[0x1E69E9820];
          *(v0 + 368) = 1107296256;
          *(v0 + 376) = sub_1A93C8064;
          *(v0 + 384) = &unk_1F1CF3E28;
          v22 = _Block_copy((v0 + 360));
          v23 = *(v0 + 400);
          swift_retain_n();

          v19[2](v19, v0 + 784, v0 + 296, v20, 0, v21, v22);

          _Block_release(v22);
          _Block_release(v19);

          v12 = v121;
        }

        while (v13 != v1);
      }
    }

LABEL_32:

    v62 = *(v0 + 512);
    v63 = v124;
    v64 = *(v62 + 340);
    v65 = [v63 format];
    [v65 streamDescription];
    v66 = *(v0 + 432);

    v68 = v64 * v66;
    if ((v68 & 0xFFFFFFFF00000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v69 = *(v0 + 632);
      v70 = swift_allocObject();
      *(v70 + 16) = v68;
      v71 = (*(*v69 + 160))(sub_1A93D0B54, v70);

      if ((v71 & 0xC000000000000001) != 0)
      {
        v72 = sub_1A957CE48();
      }

      else
      {
        v72 = *(v71 + 16);
      }

      v1 = MEMORY[0x1E69E7CC0];
      if (!v72)
      {
        v73 = MEMORY[0x1E69E7CC0];
        goto LABEL_44;
      }

      if (v72 < 1)
      {
        v73 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
        v73 = swift_allocObject();
        v74 = j__malloc_size(v73);
        v75 = v74 - 32;
        if (v74 < 32)
        {
          v75 = v74 - 25;
        }

        v73[2] = v72;
        v73[3] = (2 * (v75 >> 3)) | 1;
      }

      v76 = sub_1A93CF160((v0 + 448), v73 + 4, v72, v71);
      v77 = *(v0 + 448);
      v78 = *(v0 + 456);
      v79 = *(v0 + 464);
      v80 = *(v0 + 472);
      v81 = *(v0 + 480);
      v67 = sub_1A932D088();
      if (v76 == v72)
      {
LABEL_44:
        v82 = *(v0 + 696);
        *(v0 + 488) = v73;
        sub_1A93CCC64((v0 + 488));
        if (v82)
        {

          v83 = *(v0 + 488);
          v84 = *MEMORY[0x1E69E9840];
        }

        v85 = *(v0 + 512);

        v67 = *(v0 + 488);
        v115 = v63;
        v114 = *(v85 + 340);
        if ((v67 & 0x8000000000000000) == 0 && (v67 & 0x4000000000000000) == 0)
        {
          v86 = *(v67 + 16);
          if (v86)
          {
            goto LABEL_51;
          }

          goto LABEL_63;
        }

LABEL_62:
        v106 = v67;
        v86 = sub_1A957CE48();
        v67 = v106;
        if (v86)
        {
LABEL_51:
          v87 = v67;
          *(v0 + 496) = v1;
          sub_1A93CE79C(0, v86 & ~(v86 >> 63), 0);
          if ((v86 & 0x8000000000000000) == 0)
          {
            v88 = 0;
            v89 = v87;
            v116 = v87 & 0xC000000000000001;
            v117 = v86;
            v90 = *(v0 + 496);
            v119 = v87;
            do
            {
              if (v116)
              {
                v91 = MEMORY[0x1AC585DE0](v88, v89);
              }

              else
              {
                v91 = *(v89 + 8 * v88 + 32);
              }

              v92 = v91;
              v125 = [v91 mark];
              v123 = [v92 byteSampleOffset];
              v93 = [v92 textRange];
              aBlock = v94;
              v122 = v93;
              v95 = [v92 bookmarkName];
              v96 = sub_1A957C0F8();
              v98 = v97;

              v99 = [v92 phoneme];
              v100 = sub_1A957C0F8();
              v102 = v101;

              *(v0 + 496) = v90;
              v104 = *(v90 + 16);
              v103 = *(v90 + 24);
              if (v104 >= v103 >> 1)
              {
                sub_1A93CE79C((v103 > 1), v104 + 1, 1);
                v90 = *(v0 + 496);
              }

              ++v88;
              *(v90 + 16) = v104 + 1;
              v105 = (v90 + (v104 << 6));
              v105[4] = v125;
              v105[5] = v123;
              v105[6] = v122;
              v105[7] = aBlock;
              v105[8] = v96;
              v105[9] = v98;
              v105[10] = v100;
              v105[11] = v102;
              v89 = v119;
            }

            while (v117 != v88);

            goto LABEL_64;
          }

          goto LABEL_69;
        }

LABEL_63:

        v90 = MEMORY[0x1E69E7CC0];
LABEL_64:
        v107 = *(v0 + 560);
        v108 = *(v0 + 544);
        sub_1A957B0A8();
        *(v107 + v108[5]) = v114;
        *(v107 + v108[6]) = v115;
        *(v107 + v108[7]) = v90;
        v109 = *(MEMORY[0x1E698D2F0] + 4);
        v110 = v115;
        v111 = swift_task_alloc();
        *(v0 + 712) = v111;
        *v111 = v0;
        v111[1] = sub_1A93C68F4;
        v48 = *(v0 + 560);
        goto LABEL_65;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v7 = TTSSpeechUnitTestingMode();
  v6 = *(v0 + 688);
  if (v7)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v24 = sub_1A93C7644(0.001);

  if (v24)
  {
    v3 = 1;
    v6 = v24;
    goto LABEL_7;
  }

  v25 = *(v0 + 512);

  v26 = *(v25 + 336);
  v27 = *(v25 + 340);
  v28 = __CFADD__(v27, v26);
  v29 = v27 + v26;
  if (v28)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v30 = *(v0 + 788);
  *(*(v0 + 512) + 340) = v29;
  v28 = __CFADD__(v30, v26);
  v31 = v30 + v26;
  if (v28)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  *(v0 + 788) = v31;
  if (sub_1A957C778())
  {

    v32 = *(v0 + 664);
    v33 = *(v0 + 512);
    v34 = (*(v0 + 656))();
    *(v0 + 736) = v34;
    if (v34)
    {
      v35 = v34;
      v36 = *(v0 + 648);
      v37 = *(v0 + 640);
      v38 = *(v0 + 512);
      v39 = sub_1A93CF95C(*(v0 + 632));
      v37(0, 0);
      v40 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v35 frameCapacity:0];
      *(v0 + 744) = v40;
      [v40 setFrameLength_];
      v41 = *(v38 + 340);
      v42 = v41 + 1;
      if (v41 != -1)
      {
        v43 = *(v0 + 552);
        v44 = *(v0 + 544);
        v45 = v40;
        sub_1A957B0A8();
        *(v43 + v44[5]) = v42;
        *(v43 + v44[6]) = v45;
        *(v43 + v44[7]) = v39;
        v46 = *(MEMORY[0x1E698D2F0] + 4);
        v47 = swift_task_alloc();
        *(v0 + 752) = v47;
        *v47 = v0;
        v47[1] = sub_1A93C7314;
        v48 = *(v0 + 552);
LABEL_65:
        v112 = *(v0 + 504);
        v113 = *MEMORY[0x1E69E9840];

        return MEMORY[0x1EEDEE810](v48);
      }

LABEL_72:
      __break(1u);
    }

    v53 = *(v0 + 632);
    v54 = *(v0 + 624);
    v55 = *(v0 + 616);
    v56 = *(v0 + 504);
    sub_1A957BC18();

    v57 = *(v0 + 560);
    v58 = *(v0 + 552);
    v59 = *(v0 + 536);

    v60 = *(v0 + 8);
    v61 = *MEMORY[0x1E69E9840];

    return v60();
  }

  else
  {
    *(v0 + 796) = 0;
    v49 = swift_task_alloc();
    *(v0 + 680) = v49;
    *v49 = v0;
    v49[1] = sub_1A93C5D54;
    v50 = *(v0 + 512);
    v51 = *MEMORY[0x1E69E9840];

    return sub_1A93C7898();
  }
}

uint64_t sub_1A93C68F4()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 712);
  v3 = *(*v0 + 560);
  v9 = *v0;

  sub_1A93D0B8C(v3);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93C6A64, v5, v4);
}

uint64_t sub_1A93C6A64()
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 512);
  v2 = *(v1 + 336);
  v3 = *(v1 + 340);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v0 + 792);
  *(v1 + 340) = v5;
  if ((v6 & 0x80) != 0)
  {
    v28 = *(v0 + 536);
    [*(v0 + 616) maximumFramesToRender];
    sub_1A957D468();
    v29 = swift_task_alloc();
    *(v0 + 720) = v29;
    *v29 = v0;
    v29[1] = sub_1A93C6E38;
    v30 = *(v0 + 536);
    v31 = *MEMORY[0x1E69E9840];

    return sub_1A93CC26C(5000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v7 = *(v0 + 704);
    v8 = *(v0 + 688);

    if (sub_1A957C778())
    {

      v9 = *(v0 + 664);
      v10 = *(v0 + 512);
      v11 = (*(v0 + 656))();
      *(v0 + 736) = v11;
      if (v11)
      {
        v12 = v11;
        v13 = *(v0 + 648);
        v14 = *(v0 + 640);
        v15 = *(v0 + 512);
        v16 = sub_1A93CF95C(*(v0 + 632));
        v14(0, 0);
        v17 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v12 frameCapacity:0];
        *(v0 + 744) = v17;
        [v17 setFrameLength_];
        v18 = *(v15 + 340);
        v19 = v18 + 1;
        if (v18 != -1)
        {
          v20 = *(v0 + 552);
          v21 = *(v0 + 544);
          v22 = v17;
          sub_1A957B0A8();
          *(v20 + v21[5]) = v19;
          *(v20 + v21[6]) = v22;
          *(v20 + v21[7]) = v16;
          v23 = *(MEMORY[0x1E698D2F0] + 4);
          v24 = swift_task_alloc();
          *(v0 + 752) = v24;
          *v24 = v0;
          v24[1] = sub_1A93C7314;
          v25 = *(v0 + 552);
          v26 = *(v0 + 504);
          v27 = *MEMORY[0x1E69E9840];

          return MEMORY[0x1EEDEE810](v25);
        }

LABEL_19:
        __break(1u);
      }

      v35 = *(v0 + 632);
      v36 = *(v0 + 624);
      v37 = *(v0 + 616);
      v38 = *(v0 + 504);
      sub_1A957BC18();

      v39 = *(v0 + 560);
      v40 = *(v0 + 552);
      v41 = *(v0 + 536);

      v42 = *(v0 + 8);
      v43 = *MEMORY[0x1E69E9840];

      return v42();
    }

    else
    {
      *(v0 + 796) = *(v0 + 797);
      v32 = swift_task_alloc();
      *(v0 + 680) = v32;
      *v32 = v0;
      v32[1] = sub_1A93C5D54;
      v33 = *(v0 + 512);
      v34 = *MEMORY[0x1E69E9840];

      return sub_1A93C7898();
    }
  }
}

uint64_t sub_1A93C6E38()
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 720);
  v13 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v4 = *(v2 + 536);
    v5 = *(v2 + 528);
    v6 = *(v2 + 520);

    (*(v5 + 8))(v4, v6);
    v7 = *(v2 + 608);
    v8 = *(v2 + 600);
    v9 = sub_1A93C722C;
  }

  else
  {
    (*(*(v2 + 528) + 8))(*(v2 + 536), *(v2 + 520));
    v7 = *(v2 + 608);
    v8 = *(v2 + 600);
    v9 = sub_1A93C6FD8;
  }

  v10 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1A93C6FD8()
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 616);
  [v3 maximumFramesToRender];

  v4 = *(v0 + 664);
  v5 = *(v0 + 512);
  v6 = (*(v0 + 656))();
  *(v0 + 736) = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 648);
    v9 = *(v0 + 640);
    v10 = *(v0 + 512);
    v11 = sub_1A93CF95C(*(v0 + 632));
    v9(0, 0);
    v12 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v7 frameCapacity:0];
    *(v0 + 744) = v12;
    [v12 setFrameLength_];
    v13 = *(v10 + 340);
    v14 = v13 + 1;
    if (v13 == -1)
    {
      __break(1u);
    }

    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = v12;
    sub_1A957B0A8();
    *(v15 + v16[5]) = v14;
    *(v15 + v16[6]) = v17;
    *(v15 + v16[7]) = v11;
    v18 = *(MEMORY[0x1E698D2F0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 752) = v19;
    *v19 = v0;
    v19[1] = sub_1A93C7314;
    v20 = *(v0 + 552);
    v21 = *(v0 + 504);
    v22 = *MEMORY[0x1E69E9840];

    return MEMORY[0x1EEDEE810](v20);
  }

  else
  {
    v23 = *(v0 + 632);
    v24 = *(v0 + 624);
    v25 = *(v0 + 616);
    v26 = *(v0 + 504);
    sub_1A957BC18();

    v27 = *(v0 + 560);
    v28 = *(v0 + 552);
    v29 = *(v0 + 536);

    v30 = *(v0 + 8);
    v31 = *MEMORY[0x1E69E9840];

    return v30();
  }
}

uint64_t sub_1A93C722C()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 632);
  v4 = *(v0 + 616);

  v5 = *(v0 + 728);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 536);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1A93C7314()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 552);
  v9 = *v0;

  sub_1A93D0B8C(v3);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93C7484, v5, v4);
}

uint64_t sub_1A93C7484()
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 736);

  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = *(v0 + 504);
  sub_1A957BC18();

  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 536);

  v9 = *(v0 + 8);
  v10 = *MEMORY[0x1E69E9840];

  return v9();
}

uint64_t sub_1A93C7570()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);

  v3 = *(v0 + 696);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 536);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x1E69E9840];

  return v7();
}

char *sub_1A93C7644(float a1)
{
  v2 = v1;
  v4 = [v1 frameLength];
  v5 = [v2 format];
  v6 = [v5 channelCount];

  if (v4)
  {
    v7 = 0;
    v8 = v4;
    v9 = v6;
    while (2)
    {
      v10 = 0;
      v11 = v7 + 1;
      while (v9 != v10)
      {
        result = TTSAudioBuffer.floatChannelData(at:)();
        if (!result)
        {
          goto LABEL_21;
        }

        ++v10;
        if (fabsf(*&result[4 * v7]) > a1)
        {
          v14 = v4 - v7;
          result = [v2 format];
          if (v14 < 0)
          {
            __break(1u);
LABEL_21:
            __break(1u);
          }

          else
          {
            v15 = result;
            v13 = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:result frameCapacity:v8 - v7];

            [v13 setFrameLength_];
            v16 = 0;
            while (1)
            {
              result = TTSAudioBuffer.floatChannelData(at:)();
              if (!result)
              {
                break;
              }

              v17 = result;
              result = TTSAudioBuffer.floatChannelData(at:)();
              if (!result)
              {
                goto LABEL_23;
              }

              v18 = &v17[4 * v7];
              if (v18 != result || &v17[4 * v8] <= result)
              {
                memmove(result, v18, 4 * v14);
              }

              if (v9 == ++v16)
              {
                return v13;
              }
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }
      }

      ++v7;
      if (v11 != v4)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

int *sub_1A93C77FC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1A957B0B8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for TTSAURenderer.SpeechBuffer();
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1A93C7898()
{
  v1[19] = v0;
  v2 = sub_1A957BF18();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_1A957BF48();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  type metadata accessor for TTSAURenderer();
  v1[26] = sub_1A93CFF90(&qword_1EB386D00, v8, type metadata accessor for TTSAURenderer);
  v10 = sub_1A957C5A8();
  v1[27] = v10;
  v1[28] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A93C7A08, v10, v9);
}

uint64_t sub_1A93C7A08()
{
  v1 = *(v0 + 152);
  v2 = v1[5];
  *(v0 + 232) = v2;
  if (v2)
  {
    v3 = *(*v1 + 248);
    v4 = v2;
    v5 = v3();
    *(v0 + 240) = v5;
    if (v5)
    {
      v6 = *(v0 + 208);
      v7 = *(v0 + 152);
      *(v0 + 248) = [objc_allocWithZone(TTSAudioBuffer) initWithFormat:v5 frameCapacity:*(v7 + 336)];
      *(v0 + 272) = *(v7 + 336);
      swift_getObjectType();
      v9 = sub_1A957C5A8();

      return MEMORY[0x1EEE6DFA0](sub_1A93C7B94, v9, v8);
    }
  }

  sub_1A93D06F4();
  swift_allocError();
  *v10 = 3;
  swift_willThrow();
  v11 = *(v0 + 200);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1A93C7B94()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v6 = *(v0 + 160);
  v16 = *(v0 + 168);
  v7 = *(v0 + 152);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_1A93C7E1C;
  v8 = swift_continuation_init();
  v15 = *(v7 + 32);
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v1;
  *(v9 + 32) = v2;
  *(v9 + 40) = v8;
  *(v0 + 112) = sub_1A93D0820;
  *(v0 + 120) = v9;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1A93C80E8;
  *(v0 + 104) = &unk_1F1CF3DB0;
  v10 = _Block_copy((v0 + 80));
  v11 = v3;
  v12 = v2;
  sub_1A957BF28();
  *(v0 + 144) = MEMORY[0x1E69E7CC0];
  sub_1A93CFF90(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A93B744C(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v4, v5, v10);
  _Block_release(v10);
  (*(v16 + 8))(v5, v6);
  (*(v17 + 8))(v4, v18);
  v13 = *(v0 + 120);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1A93C7E1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = *(v1 + 216);
    v5 = *(v1 + 224);
    v6 = sub_1A93C7FE0;
  }

  else
  {
    *(v1 + 276) = *(v1 + 128);
    *(v1 + 264) = *(v1 + 136);
    v4 = *(v1 + 216);
    v5 = *(v1 + 224);
    v6 = sub_1A93C7F48;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A93C7F48()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);
  v6 = *(v0 + 264);
  v7 = *(v0 + 276);

  return v5(v7, v6);
}

uint64_t sub_1A93C7FE0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);

  v3 = *(v0 + 256);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A93C8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = v12(a2, a3, a4, a5, a6);

  return v13;
}

uint64_t sub_1A93C80E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1A93C812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4[716] = v3;
  v4[715] = a3;
  v4[714] = a2;
  memcpy(v4 + 2, (a1 + 16), 0x118uLL);
  type metadata accessor for TTSAURenderer();
  sub_1A93CFF90(&qword_1EB386D00, v5, type metadata accessor for TTSAURenderer);
  v6 = sub_1A957C5A8();
  v4[717] = v6;
  v4[718] = v7;
  v8 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93C8234, v6, v7);
}

uint64_t sub_1A93C8234()
{
  v50 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 5728);
  sub_1A9387478(0, &qword_1EB386D60, 0x1E698D828);
  static AUAudioUnit.loadInProcessFallbacks()();
  v2 = *(v1 + 40);
  if (!v2)
  {
    sub_1A937B3DC(v0 + 16, v0 + 5056);
    sub_1A937B3DC(v0 + 16, v0 + 5336);
    goto LABEL_15;
  }

  if (*(v1 + 384))
  {
    v3 = *(v0 + 5712) == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v6 = *(v0 + 180);
  v5 = *(v0 + 184);
  v7 = *(v0 + 176);
  sub_1A937B3DC(v0 + 16, v0 + 296);
  sub_1A937B3DC(v0 + 16, v0 + 576);
  [v2 componentDescription];
  if (v7 != __dst[0] || v6 != __dst[1] || v5 != __dst[2] || (v4 & 1) != 0)
  {
LABEL_15:
    v11 = *(v1 + 40);
    *(v0 + 5752) = v11;
    if (v11 && (v12 = *(v0 + 5728), memcpy((v0 + 2536), (v12 + 48), 0x118uLL), memcpy((v0 + 2256), (v12 + 48), 0x118uLL), sub_1A932D058(v0 + 2256) != 1))
    {
      v18 = *(*(v0 + 5728) + 16);
      *(v0 + 5760) = v18;
      memcpy((v0 + 2816), (v0 + 2256), 0x118uLL);
      v19 = *v18 + 144;
      *(v0 + 5768) = *v19;
      *(v0 + 5776) = v19 & 0xFFFFFFFFFFFFLL | 0x476A000000000000;
      v20 = v11;
      sub_1A9391BAC(v0 + 2536, v0 + 3096, &unk_1EB387BC0, &qword_1A9587E30);
      type metadata accessor for AudioUnitCache();
      sub_1A93CFF90(&qword_1EB386D10, v21, type metadata accessor for AudioUnitCache);
      v22 = sub_1A957C5A8();
      v24 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DFA0](sub_1A93C88E8, v22, v23);
    }

    else
    {
      v13 = *(*(v0 + 5728) + 16);
      memcpy((v0 + 856), (v0 + 16), 0x118uLL);
      v47 = (*(*v13 + 128) + **(*v13 + 128));
      v14 = *(*(*v13 + 128) + 4);
      v15 = swift_task_alloc();
      *(v0 + 5784) = v15;
      *v15 = v0;
      v15[1] = sub_1A93C8B04;
      v16 = *MEMORY[0x1E69E9840];

      return v47(v0 + 856);
    }
  }

  v8 = *(v0 + 5728);
  memcpy((v0 + 3656), (v8 + 48), 0x118uLL);
  v9 = *(v0 + 3656);
  v10 = *(v0 + 3664);
  memcpy(__dst, (v8 + 64), sizeof(__dst));
  memcpy((v0 + 3392), (v8 + 64), 0x108uLL);
  *(v0 + 3376) = v9;
  *(v0 + 3384) = v10;
  if (sub_1A932D058(v0 + 3376) == 1)
  {
    *(v0 + 4496) = v9;
    *(v0 + 4504) = v10;
    memcpy((v0 + 4512), __dst, 0x108uLL);
    sub_1A9391BAC(v0 + 3656, v0 + 4776, &unk_1EB387BC0, &qword_1A9587E30);
    sub_1A937B960(v0 + 4496, &unk_1EB387BC0, &qword_1A9587E30);
    goto LABEL_15;
  }

  v26 = *(v0 + 16);
  v25 = *(v0 + 24);
  *(v0 + 3936) = v9;
  *(v0 + 3944) = v10;
  memcpy((v0 + 3952), __dst, 0x108uLL);

  sub_1A9391BAC(v0 + 3656, v0 + 4216, &unk_1EB387BC0, &qword_1A9587E30);

  sub_1A937B960(v0 + 3936, &unk_1EB387BC0, &qword_1A9587E30);
  if (v26 == v9 && v25 == v10)
  {
  }

  else
  {
    v27 = sub_1A957D3E8();

    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  sub_1A937B48C(v0 + 16);
  sub_1A937B48C(v0 + 16);
  v28 = *(v0 + 5728);
  v29 = *(v0 + 5720);
  sub_1A93C9384(*(v0 + 5712));
  if (!v29)
  {
    goto LABEL_42;
  }

  v30 = *(v0 + 5728);
  v31 = *(v0 + 5720);
  v32 = sub_1A93C980C();

  v34 = sub_1A93CA998(v33, v32);

  v35 = *(v0 + 5728);
  if (v34)
  {

    if (*(v35 + 352))
    {
      goto LABEL_33;
    }
  }

  else
  {
    v36 = *(v35 + 400);
    *(v35 + 400) = *(v0 + 5720);

    *(v35 + 352) = 0;
  }

  v37 = *(v0 + 5728);
  sub_1A93C984C();
LABEL_33:
  v38 = *(*(v0 + 5728) + 400);
  if (v38 >> 62)
  {
    if (v38 < 0)
    {
      v46 = *(*(v0 + 5728) + 400);
    }

    v39 = sub_1A957CE48();
    if (!v39)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v39)
  {
LABEL_35:
    if (v39 < 1)
    {
      __break(1u);
    }

    v40 = 0;
    do
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1AC585DE0](v40, v38);
      }

      else
      {
        v41 = *(v38 + 8 * v40 + 32);
      }

      v42 = v41;
      ++v40;
      v43 = [v41 AUAudioUnit];
      [v43 reset];
    }

    while (v39 != v40);
  }

LABEL_42:
  v44 = *(v0 + 8);
  v45 = *MEMORY[0x1E69E9840];

  return v44();
}

uint64_t sub_1A93C88E8()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 5776);
  v2 = *(v0 + 5760);
  (*(v0 + 5768))(*(v0 + 5752), v0 + 2816);
  v3 = *(v0 + 5744);
  v4 = *(v0 + 5736);
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1A93C898C, v4, v3);
}

uint64_t sub_1A93C898C()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = v0[719];
  sub_1A937B960((v0 + 317), &unk_1EB387BC0, &qword_1A9587E30);

  v2 = *(v0[716] + 16);
  memcpy(v0 + 107, v0 + 2, 0x118uLL);
  v7 = (*(*v2 + 128) + **(*v2 + 128));
  v3 = *(*(*v2 + 128) + 4);
  v4 = swift_task_alloc();
  v0[723] = v4;
  *v4 = v0;
  v4[1] = sub_1A93C8B04;
  v5 = *MEMORY[0x1E69E9840];

  return v7(v0 + 107);
}

uint64_t sub_1A93C8B04(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  v5 = *(*v2 + 5784);
  v12 = *v2;
  *(*v2 + 5792) = v1;

  if (v1)
  {
    sub_1A937B48C((v4 + 2));
    memcpy(v4 + 142, v4 + 107, 0x118uLL);
    sub_1A937B48C((v4 + 142));
    v6 = v4[718];
    v7 = v4[717];
    v8 = sub_1A93C91FC;
  }

  else
  {
    v4[725] = a1;
    memcpy(v4 + 247, v4 + 107, 0x118uLL);
    sub_1A937B48C((v4 + 247));
    v6 = v4[718];
    v7 = v4[717];
    v8 = sub_1A93C8C94;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A93C8C94()
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 5728);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 5800);

  memcpy((v0 + 1696), (v0 + 16), 0x118uLL);
  nullsub_23(v0 + 1696);
  memcpy((v0 + 1416), (v1 + 48), 0x118uLL);
  memcpy((v1 + 48), (v0 + 1696), 0x118uLL);
  sub_1A937B960(v0 + 1416, &unk_1EB387BC0, &qword_1A9587E30);
  sub_1A93C95C0();
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v0 + 5728);
    [v3 setMaximumFramesToRender_];
    v5 = *(v4 + 40);
    if (v5)
    {
      v6 = *(v0 + 5728);
      v7 = [v5 outputBusses];
      v8 = [v7 objectAtIndexedSubscript_];

      [v8 setEnabled_];
      v9 = *(v6 + 40);
      if (v9)
      {
        v10 = *(v0 + 5728);
        [v9 setRenderingOffline_];
        v11 = *(v10 + 40);
        if (v11)
        {
          v12 = *(v0 + 5728);
          v13 = swift_allocObject();
          swift_weakInit();
          *(v0 + 5648) = sub_1A93D0748;
          *(v0 + 5656) = v13;
          *(v0 + 5616) = MEMORY[0x1E69E9820];
          *(v0 + 5624) = 1107296256;
          *(v0 + 5632) = sub_1A93C92D4;
          *(v0 + 5640) = &unk_1F1CED6A8;
          v14 = _Block_copy((v0 + 5616));
          v15 = *(v0 + 5656);
          v16 = v11;

          [v16 setSpeechSynthesisOutputMetadataBlock_];
          _Block_release(v14);
        }
      }
    }
  }

  v17 = *(v0 + 5728);
  v18 = *(v17 + 384);
  *(v17 + 384) = 0;

  v19 = *(v17 + 40);
  if (!v19)
  {
    goto LABEL_14;
  }

  *(v0 + 5704) = 0;
  v20 = [v19 allocateRenderResourcesAndReturnError_];
  v21 = *(v0 + 5704);
  if (!v20)
  {
    v40 = v21;
    sub_1A957AEF8();

    goto LABEL_16;
  }

  v22 = *(*(v0 + 5728) + 40);
  v23 = v21;
  if (!v22 || (v24 = [v22 outputBusses], v25 = objc_msgSend(v24, sel_objectAtIndexedSubscript_, 0), v24, v26 = objc_msgSend(v25, sel_format), v25, !v26))
  {
LABEL_14:
    sub_1A93D06F4();
    swift_allocError();
    *v39 = 0;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  v27 = *(v0 + 5728);
  v28 = [v26 streamDescription];
  v54 = *v28;
  v55 = v28[1];
  v56 = *(v28 + 4);
  v29 = objc_allocWithZone(TTSAudioFormat);
  *(v0 + 5664) = v54;
  *(v0 + 5680) = v55;
  *(v0 + 5696) = v56;
  (*(*v27 + 256))([v29 initWithStreamDescription_]);

  v27[352] = 0;
  v30 = *(v0 + 5792);
  v31 = *(v0 + 5728);
  v32 = *(v0 + 5720);
  sub_1A93C9384(*(v0 + 5712));
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = *(v0 + 5728);
  v34 = *(v0 + 5720);
  v35 = sub_1A93C980C();

  v37 = sub_1A93CA998(v36, v35);

  v38 = *(v0 + 5728);
  if (v37)
  {

    if (*(v38 + 352))
    {
      goto LABEL_23;
    }
  }

  else
  {
    v44 = *(v38 + 400);
    *(v38 + 400) = *(v0 + 5720);

    *(v38 + 352) = 0;
  }

  v45 = *(v0 + 5728);
  sub_1A93C984C();
  if (v30)
  {
LABEL_17:
    v41 = *(v0 + 8);
    v42 = *MEMORY[0x1E69E9840];
    goto LABEL_18;
  }

LABEL_23:
  v46 = *(*(v0 + 5728) + 400);
  if (v46 >> 62)
  {
    if (v46 < 0)
    {
      v53 = *(*(v0 + 5728) + 400);
    }

    v47 = sub_1A957CE48();
    if (!v47)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
LABEL_25:
    if (v47 < 1)
    {
      __break(1u);
    }

    v48 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1AC585DE0](v48, v46);
      }

      else
      {
        v49 = *(v46 + 8 * v48 + 32);
      }

      v50 = v49;
      ++v48;
      v51 = [v49 AUAudioUnit];
      [v51 reset];
    }

    while (v47 != v48);
  }

LABEL_32:
  v41 = *(v0 + 8);
  v52 = *MEMORY[0x1E69E9840];
LABEL_18:

  return v41();
}