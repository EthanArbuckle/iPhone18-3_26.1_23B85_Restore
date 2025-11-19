uint64_t sub_2300FFEDC()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_2300FFF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v6 || (sub_230311048() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1953720684 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_230311048();

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

uint64_t sub_2300FFFE4(uint64_t a1)
{
  v2 = sub_230107DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230100020(uint64_t a1)
{
  v2 = sub_230107DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23010005C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2301077E8(a1);
  if (!v2)
  {
    *a2 = v7;
    *(a2 + 8) = result;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6 & 1;
  }

  return result;
}

uint64_t sub_2301000B8()
{
  v1 = 0x6E6F6973726576;
  v2 = 1735287148;
  if (*v0 != 2)
  {
    v2 = 0x73656C62627562;
  }

  if (*v0)
  {
    v1 = 0x65636E6174736964;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_230100138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301079BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230100160(uint64_t a1)
{
  v2 = sub_2301076B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23010019C(uint64_t a1)
{
  v2 = sub_2301076B4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2301001D8@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_230107B28(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_230100234@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*(result + 16) != a2)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >> 60)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = swift_slowAlloc();
  v7 = v6;
  if (*(v5 + 16))
  {
    memcpy(v6, (v5 + 32), 8 * a2);

LABEL_6:
    type metadata accessor for REMLinearAlgebraDataRef();
    result = swift_allocObject();
    *(result + 16) = v7;
    *(result + 24) = a2;
    *a3 = a2;
    a3[1] = result;
    return result;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2301002EC(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  v103 = a2;
  v3 = sub_23030EBB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v86 - v11;
  v13 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (!v13)
  {
    goto LABEL_52;
  }

  v14 = v13;
  v102 = sub_2303101F8();
  if (!v102)
  {

LABEL_52:
    v71 = v103;
    *v103 = 0u;
    v71[1] = 0u;
    *(v71 + 32) = -1;
    return;
  }

  v107 = v14;
  v86 = v10;
  v87 = v12;
  v88 = v6;
  v89 = v4;
  v90 = v3;
  v15 = *(v108 + 24);
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v97 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
  v96 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale;
  v20 = (v17 + 63) >> 6;
  v105 = v15;

  v21 = 0;
  v100 = 0;
  *&v22 = 136315138;
  v94 = v22;
  v23 = v102;
  v98 = v20;
  while (1)
  {
    while (1)
    {
      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v20)
          {

            goto LABEL_52;
          }

          v19 = *(v16 + 8 * v24);
          ++v21;
          if (v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return;
      }

      v24 = v21;
LABEL_12:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = *(v105 + 56) + 32 * (v25 | (v24 << 6));
      v27 = *v26;
      v29 = *(v26 + 8);
      v28 = *(v26 + 16);
      v30 = *(v26 + 24);

      sub_230106CCC(v29, v28, v30);
      v31 = sub_2303101F8();

      if (v31)
      {
        break;
      }

      sub_230106CDC(v29, v28, v30);
      v21 = v24;
    }

    v101 = v30;
    v32 = *(v23 + 16);
    if (v32 >> 60)
    {
      goto LABEL_60;
    }

    v99 = v28;
    v33 = swift_slowAlloc();
    v34 = v33;
    if (*(v23 + 16))
    {
      memcpy(v33, (v23 + 32), 8 * v32);
    }

    else if (v32)
    {
      goto LABEL_61;
    }

    v104 = v29;
    type metadata accessor for REMLinearAlgebraDataRef();
    inited = swift_initStackObject();
    *(inited + 16) = v34;
    *(inited + 24) = v32;
    v106 = inited;
    v36 = *(v31 + 16);
    if (v36 >> 60)
    {
      goto LABEL_62;
    }

    v37 = swift_slowAlloc();
    v38 = v37;
    if (*(v31 + 16))
    {
      memcpy(v37, (v31 + 32), 8 * v36);
    }

    else
    {

      if (v36)
      {
        goto LABEL_63;
      }
    }

    v39 = swift_initStackObject();
    v40 = v39;
    *(v39 + 16) = v38;
    *(v39 + 24) = v36;
    if (*(v108 + v97))
    {
      v95 = v39;
      v113 = v32;
      v114 = v106;

      v41 = v100;
      sub_2302D46DC(&v113, &v110);
      v42 = v41;
      if (v41)
      {

        v100 = 0;
        if (qword_280C97168 != -1)
        {
          swift_once();
        }

        v43 = sub_23030EF48();
        __swift_project_value_buffer(v43, qword_280C97170);
        v44 = v41;
        v45 = sub_23030EF38();
        v46 = sub_230310288();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v92 = v47;
          v93 = swift_slowAlloc();
          v110 = v93;
          *v47 = v94;
          swift_getErrorValue();
          v91 = v46;
          v48 = Error.rem_errorDescription.getter(v109);
          v50 = sub_23004E30C(v48, v49, &v110);

          v51 = v92;
          *(v92 + 1) = v50;
          _os_log_impl(&dword_230044000, v45, v91, "REMAnchoredBubbleModel: Skipping dimension reduction when predicting from token due to %s", v51, 0xCu);
          v52 = v93;
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x231914180](v52, -1, -1);
          MEMORY[0x231914180](v51, -1, -1);
        }

        else
        {
        }

        v40 = v95;
      }

      else
      {

        v32 = v110;
        v106 = v111;
        v113 = v36;
        v114 = v95;

        sub_2302D46DC(&v113, &v110);
        v100 = 0;

        v36 = v110;
        v40 = v111;
      }
    }

    v53 = v104;
    v54 = v101;
    v55 = *(v108 + v96);
    v110 = v32;
    v56 = v106;
    v111 = v106;
    v113 = v36;
    v114 = v40;
    static REMVector.angularCosineDistance(lhs:rhs:)(&v110, &v113);
    v20 = v98;
    if (v55 <= 0.49)
    {
      v59 = v55 > 0.2 ? v55 : 0.2;
      v58 = v57 <= 0.25;
    }

    else
    {
      v58 = v57 <= 0.25;
      v59 = 0.49;
    }

    v60 = v107;
    if (v58)
    {
      if (v57 * 4.0 * v59 > v27)
      {
LABEL_47:

        sub_230106CDC(v53, v99, v54);
        goto LABEL_49;
      }
    }

    else if (v59 + v59 + v57 * (1.0 - v59) * 4.0 + -1.0 > v27)
    {
      goto LABEL_47;
    }

    if ((v54 & 1) == 0)
    {

      goto LABEL_55;
    }

    v61 = sub_2300FCD8C();
    if ((v53 & 0x8000000000000000) == 0 && v53 < *(v61 + 16))
    {
      break;
    }

    if (qword_280C97168 != -1)
    {
      swift_once();
    }

    v62 = sub_23030EF48();
    __swift_project_value_buffer(v62, qword_280C97170);
    v63 = sub_23030EF38();
    v64 = sub_230310288();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v113 = v66;
      *v65 = v94;
      v110 = v104;
      v111 = v99;
      v112 = 1;
      v67 = sub_23030F948();
      v106 = v56;
      v69 = sub_23004E30C(v67, v68, &v113);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_230044000, v63, v64, "REMAnchoredBubbleModel.predict: cannot find category label for %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      v23 = v102;
      MEMORY[0x231914180](v66, -1, -1);
      v70 = v65;
      v20 = v98;
      MEMORY[0x231914180](v70, -1, -1);

      v21 = v24;
    }

    else
    {

LABEL_49:
      v21 = v24;
      v23 = v102;
    }
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15450);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_230315CE0;
  *(v72 + 32) = 4;
  v73 = v72 + 32;
  *(v72 + 40) = MEMORY[0x277D84FA0];
  v74 = sub_23008CD08(v72);
  swift_setDeallocating();
  sub_230061918(v73, &qword_27DB15458);
  v75 = v87;
  sub_23030EB68();

  v76 = v86;
  sub_230055F74(v75, v86, &qword_27DB14800);
  v77 = v89;
  v78 = v90;
  v79 = (*(v89 + 48))(v76, 1, v90);
  v80 = v88;
  if (v79 == 1)
  {
    sub_230061918(v75, &qword_27DB14800);
    sub_230061918(v76, &qword_27DB14800);
    v81 = 0xE500000000000000;
    v82 = 0x296C696E28;
  }

  else
  {
    (*(v77 + 32))(v88, v76, v78);
    v82 = sub_23030EB78();
    v81 = v83;
    sub_230061918(v75, &qword_27DB14800);
    (*(v77 + 8))(v80, v78);
  }

  type metadata accessor for REMSuggestedList();
  v84 = swift_allocObject();
  *(v84 + 16) = v82;
  *(v84 + 24) = v81;

  v85 = v103;
  *v103 = v74;
  *(v85 + 1) = v84;
  *(v85 + 2) = 0;
  *(v85 + 3) = 0;
  *(v85 + 32) = 0;
}

uint64_t sub_230100EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23030E4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v39, 0, sizeof(v39));
  v40 = -1;
  v10 = objc_opt_self();
  v11 = *(v3 + 16);
  v12 = [v10 wordEmbeddingForLanguage_];
  if (!v12)
  {
    if (qword_280C97168 != -1)
    {
      swift_once();
    }

    v28 = sub_23030EF48();
    __swift_project_value_buffer(v28, qword_280C97170);

    v29 = sub_23030EF38();
    v30 = sub_230310288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v31 = 136315138;
      v33 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v35 = sub_23004E30C(v33, v34, v38);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_230044000, v29, v30, "REMAnchoredBubbleModel: missing NLEmbedding for %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    return 0;
  }

  v13 = v12;
  v38[0] = _s19ReminderKitInternal25REMFilteredTitleEmbeddingC17decodeEmojiInText_8languageS2S_So10NLLanguageatFZ_0(a1, a2, v11);
  v38[1] = v14;
  sub_23030E478();
  sub_2300A85F0();
  v15 = sub_230310558();
  v17 = v16;
  (*(v7 + 8))(v9, v6);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    return 0;
  }

  v19 = sub_2300FF38C();

  v20 = *(v19 + 16);
  if (v20 >= 0xA)
  {
    v21 = 10;
  }

  else
  {
    v21 = *(v19 + 16);
  }

  if (v20)
  {
    v22 = (v19 + 40);
    do
    {
      v24 = *(v22 - 1);
      v23 = *v22;

      v26 = MEMORY[0x2319135A0](v25);
      sub_230101288(v3, v24, v23, v39);

      objc_autoreleasePoolPop(v26);
      v27 = v39[0];
      if (v40 != 255)
      {
        break;
      }

      v22 += 2;
      --v21;
    }

    while (v21);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void sub_230101288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  if (*(v8 + 16))
  {

    v9 = sub_23005EE00(a2, a3);
    if (v10)
    {
      v11 = *(v8 + 56) + 32 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      sub_230106CCC(v13, v14, v15);

      v16 = *a4;
      v17 = *(a4 + 8);
      v18 = *(a4 + 16);
      *a4 = v12;
      *(a4 + 8) = v13;
      *(a4 + 16) = v14;
      v19 = *(a4 + 24);
      *(a4 + 24) = v15;
      sub_230107EC8(v16, v17, v18, v19);
      return;
    }
  }

  v20 = sub_2303101F8();
  if (v20)
  {
    v21 = v20;
    v73 = v4;
    v22 = *(a1 + 24);
    v65 = v22 + 64;
    v23 = 1 << *(v22 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v22 + 64);
    v66 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale;
    v67 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
    v64 = (v23 + 63) >> 6;

    v26 = 0;
    v69 = v21;
    v70 = a4;
    v68 = v22;
    while (1)
    {
      if (!v25)
      {
        while (1)
        {
          v32 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v32 >= v64)
          {

            return;
          }

          v25 = *(v65 + 8 * v32);
          ++v26;
          if (v25)
          {
            v26 = v32;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        return;
      }

LABEL_16:
      v33 = *(v22 + 56) + 32 * (__clz(__rbit64(v25)) | (v26 << 6));
      v34 = *v33;
      v35 = *(v33 + 8);
      v30 = *(v33 + 16);
      v36 = *(v33 + 24);

      v76 = v36;
      v37 = sub_230106CCC(v35, v30, v36);
      v74 = MEMORY[0x2319135A0](v37);
      v38 = sub_2303101F8();
      if (v38)
      {
        break;
      }

LABEL_10:
      v25 &= v25 - 1;

      sub_230106CDC(v35, v30, v76);
      objc_autoreleasePoolPop(v74);
      if (*(a4 + 24) != 255)
      {

        return;
      }
    }

    v72 = v35;
    v39 = *(v21 + 16);
    if (v39 >> 60)
    {
      goto LABEL_47;
    }

    v40 = v38;
    v71 = v30;

    v41 = swift_slowAlloc();
    v42 = v41;
    if (*(v21 + 16))
    {
      memcpy(v41, (v21 + 32), 8 * v39);
    }

    else
    {

      if (v39)
      {
        goto LABEL_48;
      }
    }

    type metadata accessor for REMLinearAlgebraDataRef();
    inited = swift_initStackObject();
    *(inited + 16) = v42;
    *(inited + 24) = v39;
    v44 = *(v40 + 16);
    if (v44 >> 60)
    {
      goto LABEL_49;
    }

    v45 = inited;
    v46 = swift_slowAlloc();
    v47 = v46;
    if (*(v40 + 16))
    {
      memcpy(v46, (v40 + 32), 8 * v44);
    }

    else
    {

      if (v44)
      {
        goto LABEL_50;
      }
    }

    v48 = swift_initStackObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = v44;
    if (*(a1 + v67))
    {
      v78 = v39;
      v79 = v45;

      v49 = v73;
      sub_2302D46DC(&v78, &v80);
      if (v73)
      {

        v73 = 0;
        if (qword_280C97168 != -1)
        {
          swift_once();
        }

        v50 = sub_23030EF48();
        __swift_project_value_buffer(v50, qword_280C97170);
        v51 = v49;
        v52 = sub_23030EF38();
        v53 = sub_230310288();

        v63 = v53;
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v80 = v62;
          *v54 = 136315138;
          swift_getErrorValue();
          v55 = Error.rem_errorDescription.getter(v77);
          v57 = sub_23004E30C(v55, v56, &v80);

          *(v54 + 4) = v57;
          _os_log_impl(&dword_230044000, v52, v63, "REMAnchoredBubbleModel: Skipping dimension reduction when predicting from title due to %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v62);
          MEMORY[0x231914180](v62, -1, -1);
          MEMORY[0x231914180](v54, -1, -1);
        }

        else
        {
        }
      }

      else
      {

        v39 = v80;
        v45 = v81;
        v78 = v44;
        v79 = v48;

        sub_2302D46DC(&v78, &v80);
        v73 = 0;

        v44 = v80;
        v48 = v81;
      }
    }

    v58 = *(a1 + v66);
    v80 = v39;
    v81 = v45;
    v78 = v44;
    v79 = v48;
    static REMVector.angularCosineDistance(lhs:rhs:)(&v80, &v78);
    v60 = v59;

    a4 = v70;
    if (v58 <= 0.49)
    {
      if (v58 > 0.2)
      {
        v61 = v58;
      }

      else
      {
        v61 = 0.2;
      }

      v35 = v72;
      if (v60 <= 0.25)
      {
LABEL_35:
        if (v60 * 4.0 * v61 >= v34)
        {
          goto LABEL_42;
        }

LABEL_9:
        v27 = *v70;
        v28 = *(v70 + 8);
        v29 = *(v70 + 16);
        *v70 = v34;
        v30 = v71;
        *(v70 + 8) = v35;
        *(v70 + 16) = v71;
        v31 = *(v70 + 24);
        *(v70 + 24) = v76;
        sub_230106CCC(v35, v71, v76);
        sub_230107EC8(v27, v28, v29, v31);
        v22 = v68;
        v21 = v69;
        goto LABEL_10;
      }
    }

    else
    {
      v61 = 0.49;
      v35 = v72;
      if (v60 <= 0.25)
      {
        goto LABEL_35;
      }
    }

    if (v61 + v61 + v60 * (1.0 - v61) * 4.0 + -1.0 >= v34)
    {
LABEL_42:
      v22 = v68;
      v21 = v69;
      v30 = v71;
      goto LABEL_10;
    }

    goto LABEL_9;
  }
}

uint64_t sub_23010191C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9)
{
  v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v12 = v11;
  if (v10 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v12 == v13)
  {
  }

  else
  {
    v15 = sub_230311048();

    if ((v15 & 1) == 0)
    {
      v16 = sub_23030FB28();
      v17 = MEMORY[0x2319116F0](v16);
      v19 = v18;

      goto LABEL_13;
    }
  }

  if (a1)
  {

    v20 = a1;
    v21 = sub_2300AEB10();

    if (v21)
    {
      v22 = sub_230310418();
      if (*(v22 + 16))
      {
        v23 = *(v22 + 32);
        v24 = v23;

        if (v23)
        {
          v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v19 = v25;

LABEL_13:
          v26 = sub_2300975FC();
          v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          if (*(v26 + 16))
          {
            v29 = sub_23005EE00(v27, v28);
            v31 = v30;

            if (v31)
            {
              v32 = *(*(v26 + 56) + 8 * v29);

              v33 = sub_2300A576C(v17, v19, v32);

              if (v33)
              {

                return 0;
              }

              goto LABEL_19;
            }
          }

          else
          {
          }

LABEL_19:
          v35 = *a9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a9 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_23007E928(0, *(v35 + 2) + 1, 1, v35);
            *a9 = v35;
          }

          v38 = *(v35 + 2);
          v37 = *(v35 + 3);
          if (v38 >= v37 >> 1)
          {
            v35 = sub_23007E928((v37 > 1), v38 + 1, 1, v35);
            *a9 = v35;
          }

          *(v35 + 2) = v38 + 1;
          v39 = &v35[16 * v38];
          *(v39 + 4) = v17;
          *(v39 + 5) = v19;
        }
      }

      else
      {
      }
    }
  }

  return 1;
}

void sub_230101BC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, double a7)
{
  v8 = v7;
  v41 = a6;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_230055F74(*(a1 + 56) + 40 * v20, &v35, &qword_27DB15500);
      v24 = v35;
      v33 = v36[0];
      v34 = v36[1];

      v25 = v33;
      v26 = v34;
      v18 = v16;
LABEL_13:
      v37 = v23;
      v38 = v22;
      v39 = v24;
      v40[0] = v25;
      v40[1] = v26;
      if (!v22)
      {
        break;
      }

      v27 = sub_230061914(v40, v36);
      v16 = MEMORY[0x2319135A0](v27);
      sub_230101DB0(v23, v22, a7, v24, a2, a3, a4, a5);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      objc_autoreleasePoolPop(v16);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v15 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v22 = 0;
        v23 = 0;
        v13 = 0;
        v25 = 0uLL;
        v24 = 0.0;
        v26 = 0uLL;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    objc_autoreleasePoolPop(v16);
    __break(1u);
  }
}

void sub_230101DB0(uint64_t a1, unint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  sub_2300FE388(a6, &v62);
  v56 = v63;
  if (!v63)
  {
    if (qword_280C97168 == -1)
    {
LABEL_33:
      v38 = sub_23030EF48();
      __swift_project_value_buffer(v38, qword_280C97170);

      v39 = sub_23030EF38();
      v40 = sub_2303102A8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v62 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_23004E30C(a1, a2, &v62);
        _os_log_impl(&dword_230044000, v39, v40, "REMAnchoredBubbleModel: check too singular: Anchorword %s has no embedding", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x231914180](v42, -1, -1);
        MEMORY[0x231914180](v41, -1, -1);
      }

      return;
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

  if (__OFADD__(*a7, 1))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = v62;
  ++*a7;
  v15 = sub_230310208();
  a1 = v15;
  v58 = *(v15 + 16);
  if (!v58)
  {

    goto LABEL_38;
  }

  v53 = a8;
  v16 = 0;
  if (a3 > 0.2)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0.2;
  }

  v18 = v15 + 40;
  a2 = v8;
  v20 = a6;
  v19 = *(v15 + 16);
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v26 = sub_2303101F8();

    if (v26)
    {
      break;
    }

LABEL_10:
    ++v16;
    v18 += 24;
    if (v19 == v16)
    {

      return;
    }
  }

  if (!v20)
  {

    goto LABEL_10;
  }

  v27 = *(v26 + 16);
  if (v27 >> 60)
  {
    goto LABEL_45;
  }

  v28 = swift_slowAlloc();
  v29 = v28;
  if (*(v26 + 16))
  {
    memcpy(v28, (v26 + 32), 8 * v27);
  }

  else
  {

    if (v27)
    {
      goto LABEL_46;
    }
  }

  type metadata accessor for REMLinearAlgebraDataRef();
  inited = swift_initStackObject();
  *(inited + 16) = v29;
  *(inited + 24) = v27;
  v60 = v27;
  v61 = inited;
  v31 = a2;
  sub_2302D46DC(&v60, &v62);
  if (a2)
  {

    if (qword_280C97168 != -1)
    {
      swift_once();
    }

    a2 = 0;
    v32 = sub_23030EF48();
    __swift_project_value_buffer(v32, qword_280C97170);
    v33 = v31;
    v34 = sub_23030EF38();
    v35 = sub_230310288();

    if (os_log_type_enabled(v34, v35))
    {
      log = v34;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.rem_errorDescription.getter(v59[3]);
      v25 = sub_23004E30C(v23, v24, &v62);

      *(v21 + 4) = v25;
      a2 = 0;
      _os_log_impl(&dword_230044000, log, v35, "REMAnchoredBubbleModel: Skipping dimension reduction when predicting from token due to %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x231914180](v22, -1, -1);
      MEMORY[0x231914180](v21, -1, -1);

      v20 = a6;
    }

    else
    {
      v20 = a6;
    }

    goto LABEL_9;
  }

  v60 = v54;
  v61 = v56;
  v59[0] = v62;
  v59[1] = v63;
  static REMVector.angularCosineDistance(lhs:rhs:)(&v60, v59);
  if (a3 <= 0.49)
  {
    v37 = v17;
  }

  else
  {
    v37 = 0.49;
  }

  if (v36 > 0.25)
  {
    if (v37 + v37 + v36 * (1.0 - v37) * 4.0 + -1.0 < a4)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (v36 * 4.0 * v37 >= a4)
  {
LABEL_31:

    a2 = 0;
LABEL_9:
    v19 = v58;
    goto LABEL_10;
  }

LABEL_39:
  if (__OFADD__(*v53, 1))
  {
    __break(1u);
    goto LABEL_50;
  }

  ++*v53;
  if (qword_280C97168 != -1)
  {
LABEL_50:
    swift_once();
  }

  v43 = sub_23030EF48();
  __swift_project_value_buffer(v43, qword_280C97170);

  v44 = sub_23030EF38();
  v45 = sub_2303102A8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60 = v47;
    *v46 = 136315138;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15508);
    v49 = MEMORY[0x231911A60](a1, v48);
    v51 = v50;

    v52 = sub_23004E30C(v49, v51, &v60);

    *(v46 + 4) = v52;
    _os_log_impl(&dword_230044000, v44, v45, "REMAnchoredBubbleModel: Anchor word has nearby words: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x231914180](v47, -1, -1);
    MEMORY[0x231914180](v46, -1, -1);
  }

  else
  {
  }

LABEL_38:
}

uint64_t REMAnchoredBubbleModel.deinit()
{

  sub_230061918(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictionEditingSessionID, &qword_27DB14800);

  return v0;
}

uint64_t REMAnchoredBubbleModel.__deallocating_deinit()
{
  REMAnchoredBubbleModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230102598(uint64_t a1, uint64_t a2)
{
  v3 = sub_230106A50(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_230102620(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

char *sub_2301026A4(uint64_t a1)
{
  v20 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v5 = (v3 + 16 * v2);
      v7 = *v5;
      v6 = v5[1];
      v8 = v20;
      if (*(v20 + 16))
      {
        sub_230311358();

        sub_23030F9C8();
        v9 = sub_2303113A8();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          do
          {
            v13 = (*(v8 + 48) + 16 * v11);
            v14 = *v13 == v7 && v13[1] == v6;
            if (v14 || (sub_230311048() & 1) != 0)
            {
              goto LABEL_3;
            }

            v11 = (v11 + 1) & v12;
          }

          while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_23007E928(0, *(v4 + 2) + 1, 1, v4);
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_23007E928((v15 > 1), v16 + 1, 1, v4);
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = v7;
      *(v17 + 5) = v6;
      sub_2300A8988(&v19, v7, v6);
LABEL_3:

      if (++v2 == v1)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_22:

  return v4;
}

uint64_t sub_23010288C(unint64_t isUniquelyReferenced_nonNull_native)
{
  v61 = MEMORY[0x277D84F90];
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_87:
    v53 = isUniquelyReferenced_nonNull_native;
    v1 = sub_2303106D8();
    isUniquelyReferenced_nonNull_native = v53;
    if (v1)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v1 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v2 = 0;
  v60 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v56 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v57 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84FA0];
  v58 = isUniquelyReferenced_nonNull_native;
  v59 = v1;
  v54 = MEMORY[0x277D84FA0];
  v55 = isUniquelyReferenced_nonNull_native + 32;
  while (1)
  {
    if (v60)
    {
      isUniquelyReferenced_nonNull_native = MEMORY[0x231912650](v2, v58);
      v4 = isUniquelyReferenced_nonNull_native;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v2 >= *(v56 + 16))
      {
        goto LABEL_81;
      }

      v4 = *(v55 + 8 * v2);

      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    if ((v3 & 0xC000000000000001) != 0)
    {

      v6 = sub_230310728();

      if (v6)
      {
        goto LABEL_4;
      }
    }

    else if (*(v3 + 16))
    {
      sub_230311358();
      MEMORY[0x2319130E0](v4);
      v7 = sub_2303113A8();
      v8 = -1 << *(v3 + 32);
      v9 = v7 & ~v8;
      if ((*(v3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
      {
        v10 = ~v8;
        v11 = *(v3 + 48);
        swift_beginAccess();
        while (1)
        {
          v12 = *(v11 + 8 * v9);
          isUniquelyReferenced_nonNull_native = swift_beginAccess();
          v13 = *(v12 + 24);
          if (v13 == *(v4 + 24))
          {
            break;
          }

LABEL_18:
          v9 = (v9 + 1) & v10;
          if (((*(v3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        if (v13 < 0)
        {
          goto LABEL_83;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_beginAccess();
        v14 = 4;
        while (v14 - v13 != 4)
        {
          v15 = *(v12 + 16);
          if ((v14 - 4) >= *(v15 + 16))
          {
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

          v16 = *(v4 + 16);
          if ((v14 - 4) >= *(v16 + 16))
          {
            goto LABEL_77;
          }

          v17 = *(v15 + 8 * v14);
          v18 = *(v16 + 8 * v14++);
          if (v17 != v18)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_4;
      }
    }

LABEL_27:

    MEMORY[0x231911A30](v19);
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    sub_23030FD68();
    v57 = v61;
    if ((v3 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v3 < 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = sub_2303106E8();

    if (v21)
    {

      type metadata accessor for RDVector();
      swift_dynamicCast();
LABEL_4:

      goto LABEL_5;
    }

    isUniquelyReferenced_nonNull_native = sub_2303106D8();
    if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
    {
      goto LABEL_85;
    }

    v34 = sub_230104A80(v20, isUniquelyReferenced_nonNull_native + 1);
    if (*(v34 + 24) <= *(v34 + 16))
    {
      sub_2300AAD84();
    }

    sub_230104D04(v35, v34);

    v54 = v34;
    v3 = v34;
LABEL_5:
    if (v2 == v59)
    {

      return v57;
    }
  }

  sub_230311358();
  MEMORY[0x2319130E0](v4);
  v22 = sub_2303113A8();
  v23 = -1 << *(v3 + 32);
  v24 = v22 & ~v23;
  if ((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v25 = ~v23;
    v26 = *(v3 + 48);
    swift_beginAccess();
    while (1)
    {
      v27 = *(v26 + 8 * v24);
      isUniquelyReferenced_nonNull_native = swift_beginAccess();
      v28 = *(v27 + 24);
      if (v28 == *(v4 + 24))
      {
        break;
      }

LABEL_37:
      v24 = (v24 + 1) & v25;
      if (((*(v3 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (v28 < 0)
    {
      goto LABEL_84;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v29 = 4;
    while (v29 - v28 != 4)
    {
      v30 = *(v27 + 16);
      if ((v29 - 4) >= *(v30 + 16))
      {
        goto LABEL_78;
      }

      v31 = *(v4 + 16);
      if ((v29 - 4) >= *(v31 + 16))
      {
        goto LABEL_79;
      }

      v32 = *(v30 + 8 * v29);
      v33 = *(v31 + 8 * v29++);
      if (v32 != v33)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_4;
  }

LABEL_50:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (*(v54 + 24) > *(v54 + 16))
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2300ACAE0();
    }

    goto LABEL_71;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_2300AAD84();
  }

  else
  {
    sub_2300ADE4C();
  }

  sub_230311358();
  MEMORY[0x2319130E0](v4);
  isUniquelyReferenced_nonNull_native = sub_2303113A8();
  v36 = -1 << *(v54 + 32);
  v24 = isUniquelyReferenced_nonNull_native & ~v36;
  if (((*(v54 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
LABEL_71:
    v3 = v54;
    *(v54 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v24;
    *(*(v54 + 48) + 8 * v24) = v4;
    v50 = *(v54 + 16);
    v5 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v5)
    {
      goto LABEL_86;
    }

    *(v54 + 16) = v51;
    goto LABEL_5;
  }

  v37 = ~v36;
  type metadata accessor for RDVector();
  v38 = *(v54 + 48);
  swift_beginAccess();
  while (1)
  {
    v39 = *(v38 + 8 * v24);
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v40 = *(v39 + 24);
    if (v40 == *(v4 + 24))
    {
      if (v40 < 0)
      {
        goto LABEL_82;
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_beginAccess();
      if (!v40)
      {
        goto LABEL_89;
      }

      v41 = *(v39 + 16);
      v42 = *(v41 + 16);
      if (!v42)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v43 = *(v4 + 16);
      v44 = *(v43 + 16);
      if (!v44)
      {
        goto LABEL_75;
      }

      if (*(v41 + 32) == *(v43 + 32))
      {
        break;
      }
    }

LABEL_58:
    v24 = (v24 + 1) & v37;
    if (((*(v54 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  v45 = 0;
  v46 = v41 + 40;
  v47 = v43 + 40;
  while (v40 - 1 != v45)
  {
    if (v45 + 1 >= v42)
    {
      goto LABEL_74;
    }

    if (v45 + 1 >= v44)
    {
      goto LABEL_75;
    }

    v48 = *(v46 + 8 * v45);
    v49 = *(v47 + 8 * v45++);
    if (v48 != v49)
    {
      goto LABEL_58;
    }
  }

LABEL_89:
  result = sub_230311298();
  __break(1u);
  return result;
}

uint64_t sub_230102FAC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23030FD48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_230103384(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2301031AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2301030A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143D0);
        v5 = sub_23030FD48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_230103960(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23010327C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2301031AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_230311048(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23010327C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 40 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v9[4];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v14 = *(v13 + 32);
      if (v11 == v14)
      {
        v15 = result == *v13 && v10 == *(v13 + 8);
        if (v15 || (result = sub_230311048(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 40;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v14 >= v11)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 48);
      v16 = *(v13 + 56);
      v17 = *(v13 + 16);
      v18 = *(v13 + 32);
      result = *(v13 + 40);
      *(v13 + 40) = *v13;
      v19 = *(v13 + 64);
      v11 = *(v13 + 72);
      *(v13 + 56) = v17;
      *(v13 + 72) = v18;
      *v13 = result;
      *(v13 + 8) = v10;
      *(v13 + 16) = v16;
      *(v13 + 24) = v19;
      *(v13 + 32) = v11;
      v13 -= 40;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_230103384(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_230103FD0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_230311048();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_230311048();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23007EA34((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_230103FD0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2302A36A0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2302A3614(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_230311048(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_230103960(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_112:
    v9 = *v102;
    if (!*v102)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_144:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*v5)
      {
        v96 = *&v8[16 * v95];
        v97 = *&v8[16 * v95 + 24];
        sub_2301041F8((*v5 + 40 * v96), (*v5 + 40 * *&v8[16 * v95 + 16]), *v5 + 40 * v97, v9);
        if (v4)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2302A36A0(v8);
        }

        if (v95 - 2 >= *(v8 + 2))
        {
          goto LABEL_138;
        }

        v98 = &v8[16 * v95];
        *v98 = v96;
        *(v98 + 1) = v97;
        result = sub_2302A3614(v95 - 1);
        v95 = *(v8 + 2);
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 40 * v7);
      v12 = v11[4];
      v13 = (*v5 + 40 * v9);
      v14 = v13[4];
      if (v12 == v14)
      {
        result = *v11;
        if (*v11 == *v13 && v11[1] == v13[1])
        {
          v16 = 0;
        }

        else
        {
          result = sub_230311048();
          v16 = result;
        }
      }

      else
      {
        v16 = v14 < v12;
      }

      v7 = (v9 + 2);
      if ((v9 + 2) < v6)
      {
        v17 = (v10 + 40 * v9 + 72);
        do
        {
          v18 = v17[5];
          if (v18 == *v17)
          {
            result = v17[1];
            if (result == *(v17 - 4) && v17[2] == *(v17 - 3))
            {
              if (v16)
              {
                goto LABEL_28;
              }
            }

            else
            {
              result = sub_230311048();
              if ((v16 ^ result))
              {
                goto LABEL_25;
              }
            }
          }

          else
          {
            result = *v17 < v18;
            if ((v16 ^ result))
            {
              goto LABEL_25;
            }
          }

          ++v7;
          v17 += 5;
        }

        while (v6 != v7);
        v7 = v6;
        if (!v16)
        {
          goto LABEL_36;
        }

LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v20 = 40 * v7 - 16;
          v21 = 40 * v9 + 32;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v31 = *v5;
              if (!*v5)
              {
                goto LABEL_147;
              }

              v24 = (v31 + v21);
              v25 = v31 + v20;
              v26 = *(v24 - 2);
              v27 = *(v24 - 1);
              v28 = *v24;
              v29 = *(v25 + 8);
              v30 = *(v25 - 8);
              *(v24 - 2) = *(v25 - 24);
              *(v24 - 1) = v30;
              *v24 = v29;
              *(v25 - 24) = v26;
              *(v25 - 8) = v27;
              *(v25 + 8) = v28;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
        }

        goto LABEL_36;
      }

LABEL_25:
      if (v16)
      {
        goto LABEL_28;
      }
    }

LABEL_36:
    v32 = v5[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_140;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_142;
        }

        if (&v9[a4] >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = &v9[a4];
        }

        if (v33 < v9)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v7 != v33)
        {
          break;
        }
      }
    }

LABEL_61:
    if (v7 < v9)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 2);
    v49 = *(v8 + 3);
    v51 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_23007EA34((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v51;
    v52 = &v8[16 * v50];
    *(v52 + 4) = v9;
    *(v52 + 5) = v7;
    v53 = *v102;
    if (!*v102)
    {
      goto LABEL_149;
    }

    if (v50)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v8 + 4);
          v56 = *(v8 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_81:
          if (v58)
          {
            goto LABEL_128;
          }

          v71 = &v8[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_131;
          }

          v77 = &v8[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_135;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        v81 = &v8[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_95:
        if (v76)
        {
          goto LABEL_130;
        }

        v84 = &v8[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_133;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_102:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
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
          goto LABEL_143;
        }

        if (!*v5)
        {
          goto LABEL_146;
        }

        v9 = *&v8[16 * v92 + 32];
        v93 = *&v8[16 * v54 + 40];
        sub_2301041F8((*v5 + 40 * v9), (*v5 + 40 * *&v8[16 * v54 + 32]), *v5 + 40 * v93, v53);
        if (v4)
        {
        }

        if (v93 < v9)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2302A36A0(v8);
        }

        if (v92 >= *(v8 + 2))
        {
          goto LABEL_125;
        }

        v94 = &v8[16 * v92];
        *(v94 + 4) = v9;
        *(v94 + 5) = v93;
        result = sub_2302A3614(v54);
        v51 = *(v8 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v8[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_126;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_127;
      }

      v66 = &v8[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_129;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_132;
      }

      if (v70 >= v62)
      {
        v88 = &v8[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_136;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_81;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_112;
    }
  }

  v99 = v9;
  v100 = v5;
  v34 = *v5;
  v35 = *v5 + 40 * v7 - 40;
  v36 = &v9[-v7];
LABEL_47:
  v37 = (v34 + 40 * v7);
  result = *v37;
  v38 = v37[1];
  v39 = v37[4];
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 32);
    if (v39 == v42)
    {
      v43 = result == *v41 && v38 == *(v41 + 8);
      if (v43 || (result = sub_230311048(), (result & 1) == 0))
      {
LABEL_46:
        ++v7;
        v35 += 40;
        --v36;
        if (v7 != v33)
        {
          goto LABEL_47;
        }

        v7 = v33;
        v9 = v99;
        v5 = v100;
        goto LABEL_61;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_46;
    }

    if (!v34)
    {
      break;
    }

    v38 = *(v41 + 48);
    v44 = *(v41 + 56);
    v45 = *(v41 + 16);
    v46 = *(v41 + 32);
    result = *(v41 + 40);
    *(v41 + 40) = *v41;
    v47 = *(v41 + 64);
    v39 = *(v41 + 72);
    *(v41 + 56) = v45;
    *(v41 + 72) = v46;
    *v41 = result;
    *(v41 + 8) = v38;
    *(v41 + 16) = v44;
    *(v41 + 24) = v47;
    *(v41 + 32) = v39;
    v41 -= 40;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_230103FD0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_230311048() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_230311048() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2301041F8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[40 * v11] <= a4)
    {
      memmove(a4, __src, 40 * v11);
    }

    v12 = &v4[40 * v11];
    if (v10 < 40 || v6 <= v7)
    {
      v21 = v6;
    }

    else
    {
LABEL_27:
      v19 = 0;
      v20 = v12;
      v21 = v6 - 40;
      do
      {
        v22 = &v20[v19];
        v23 = *&v20[v19 - 8];
        v24 = *(v6 - 1);
        if (v23 == v24)
        {
          v25 = *&v20[v19 - 40] == *(v6 - 5) && *(v22 - 4) == *(v6 - 4);
          if (!v25 && (sub_230311048() & 1) != 0)
          {
LABEL_39:
            v29 = (v5 + v19);
            v5 = v5 + v19 - 40;
            if (v29 != v6)
            {
              v30 = *v21;
              v31 = *(v6 - 24);
              *(v5 + 32) = *(v6 - 1);
              *v5 = v30;
              *(v5 + 16) = v31;
            }

            v12 = &v20[v19];
            if (&v20[v19] <= v4 || (v6 -= 40, v21 <= v7))
            {
              v12 = &v20[v19];
              goto LABEL_47;
            }

            goto LABEL_27;
          }
        }

        else if (v24 < v23)
        {
          goto LABEL_39;
        }

        if ((v5 + v19) != v22)
        {
          v26 = v5 + v19 - 40;
          v27 = *&v20[v19 - 40];
          v28 = *&v20[v19 - 24];
          *(v26 + 32) = *&v20[v19 - 8];
          *v26 = v27;
          *(v26 + 16) = v28;
        }

        v19 -= 40;
        v12 = &v20[v19];
      }

      while (&v20[v19] > v4);
      v21 = v6;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 >= 40 && v6 < v5)
    {
      do
      {
        v13 = *(v6 + 4);
        v14 = *(v4 + 4);
        if (v13 == v14)
        {
          v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
          if (v15 || (sub_230311048() & 1) == 0)
          {
LABEL_13:
            v16 = v4;
            v15 = v7 == v4;
            v4 += 40;
            if (v15)
            {
              goto LABEL_15;
            }

LABEL_14:
            v17 = *v16;
            v18 = *(v16 + 1);
            *(v7 + 4) = *(v16 + 4);
            *v7 = v17;
            *(v7 + 1) = v18;
            goto LABEL_15;
          }
        }

        else if (v14 >= v13)
        {
          goto LABEL_13;
        }

        v16 = v6;
        v15 = v7 == v6;
        v6 += 40;
        if (!v15)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 40;
      }

      while (v4 < v12 && v6 < v5);
    }

    v21 = v7;
  }

LABEL_47:
  v32 = (v12 - v4) / 40;
  if (v21 != v4 || v21 >= &v4[40 * v32])
  {
    memmove(v21, v4, 40 * v32);
  }

  return 1;
}

uint64_t sub_2301044C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E0);
    v2 = sub_2303107D8();
    v15 = v2;
    sub_230310698();
    if (sub_230310718())
    {
      sub_23004CBA4(0, &qword_280C99CD0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2300A9E8C(v9 + 1);
        }

        v2 = v15;
        result = sub_230310438();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_230310718());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2301046B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149D8);
    v2 = sub_2303107D8();
    v15 = v2;
    sub_230310698();
    if (sub_230310718())
    {
      type metadata accessor for REMObjectID_Codable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2300AA420(v9 + 1);
        }

        v2 = v15;
        result = sub_230310438();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_230310718());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_230104890(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15BD0);
    v2 = sub_2303107D8();
    v15 = v2;
    sub_230310698();
    if (sub_230310718())
    {
      sub_23004CBA4(0, &qword_280C9C478);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_2300AAB50(v9 + 1);
        }

        v2 = v15;
        result = sub_230310438();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_230310718());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_230104A80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A8);
    v2 = sub_2303107D8();
    v14 = v2;
    sub_230310698();
    if (sub_230310718())
    {
      type metadata accessor for RDVector();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_2300AAD84();
        }

        v2 = v14;
        sub_230311358();
        MEMORY[0x2319130E0]();
        result = sub_2303113A8();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_230310718());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t sub_230104C80(uint64_t a1, uint64_t a2)
{
  sub_230310438();
  result = sub_230310678();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_230104D04(uint64_t a1, uint64_t a2)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1);
  sub_2303113A8();
  result = sub_230310678();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_230104DA8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15510);
  result = sub_230310B98();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 16 * v13);
      v15 = *v14;
      result = v14[1];
      v16 = (*(a1 + 56) + 24 * v13);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v20 = (v3[6] + 16 * v13);
      *v20 = v15;
      v20[1] = result;
      v21 = v3[7] + 32 * v13;
      *v21 = v17;
      *(v21 + 8) = v18;
      *(v21 + 16) = v19;
      *(v21 + 24) = 0;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_230104F20(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_230311358();

    sub_23030F9C8();
    v11 = sub_2303113A8();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_230311048() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_2301217F0(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_230311358();

        sub_23030F9C8();
        v33 = sub_2303113A8();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_230311048() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_2301053CC(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x231914180](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x231914180](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2301053CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_2301217F0(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_230311358();

        sub_23030F9C8();
        v16 = sub_2303113A8();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_230311048() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

const double *sub_2301055B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = 0x3FECCCCCCCCCCCCDLL;
  if (v4 >= 0x12C)
  {
    v5 = 0;
  }

  v47 = v5;
  if (v4 < 0x12C)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v46 = v6;
  if (!v4)
  {
    v9 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v7 = 0;
  v8 = a1 + 56;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v9;
    v11 = v8 + 40 * v7;
    v12 = v7;
    while (1)
    {
      if (v12 >= v4)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_44;
      }

      v9 = *(v11 - 24);
      v2 = *(v11 - 16);

      v13 = sub_2303101F8();
      if (v13)
      {
        break;
      }

      ++v12;
      v11 += 40;
      if (v7 == v4)
      {
        v9 = v10;
        goto LABEL_30;
      }
    }

    v49 = v8;
    v14 = *(v13 + 16);
    v15 = *(v10 + 16);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      __break(1u);
      goto LABEL_47;
    }

    v48 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v18 = *(v10 + 24) >> 1, v9 = v10, v18 < v16))
    {
      if (v15 <= v16)
      {
        v19 = v15 + v14;
      }

      else
      {
        v19 = v15;
      }

      v9 = sub_23007EB60(isUniquelyReferenced_nonNull_native, v19, 1, v10);
      v18 = *(v9 + 24) >> 1;
    }

    if (*(v48 + 16))
    {
      v20 = *(v9 + 16);
      v8 = v49;
      if (v18 - v20 >= v14)
      {
        memcpy((v9 + 8 * v20 + 32), (v48 + 32), 8 * v14);

        if (!v14)
        {
          goto LABEL_27;
        }

        v21 = *(v9 + 16);
        v22 = __OFADD__(v21, v14);
        v23 = v21 + v14;
        if (!v22)
        {
          *(v9 + 16) = v23;
          goto LABEL_27;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v8 = v49;
    if (v14)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_27:

    if (v7 != v4)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v24 = [a2 dimension];
  v2 = *(v9 + 16);
  v25 = [a2 dimension];
  if (!v25)
  {
LABEL_45:
    __break(1u);
    swift_once();
    v33 = sub_23030EF48();
    __swift_project_value_buffer(v33, qword_280C97170);
    v34 = v2;
    v35 = sub_23030EF38();
    v36 = sub_230310288();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136315138;
      swift_getErrorValue();
      v39 = Error.rem_errorDescription.getter(v53);
      v41 = sub_23004E30C(v39, v40, &v54);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_230044000, v35, v36, "REMAnchoredBubbleModel: Skipping pca fitting due to %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x231914180](v38, -1, -1);
      MEMORY[0x231914180](v37, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  sub_2302D3758(v9, v24, v2 / v25, &v54);
  v26 = v54;
  v9 = v55;
  v27 = v56;
  REMMatrix.init(rowCount:columnCount:)(v55, v54, &v50);
  result = *(v27 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_53;
  }

  v29 = v52;
  v30 = *(v52 + 16);
  if (!v30)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  if (((v9 | v26) & 0x8000000000000000) != 0)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_40;
  }

  v31 = v50;
  v32 = v51;
  vDSP_mtransD(result, 1, v30, 1, v9, v26);

  v54 = v31;
  v55 = v32;
  v56 = v29;
  v50 = v47;
  LOBYTE(v51) = v46;
  v9 = sub_2302D5548(&v54, &v50);
  if (qword_280C97168 != -1)
  {
    goto LABEL_51;
  }

LABEL_40:
  v42 = sub_23030EF48();
  __swift_project_value_buffer(v42, qword_280C97170);
  v43 = sub_23030EF38();
  v44 = sub_2303102A8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_230044000, v43, v44, "REMAnchoredBubbleModel: pca fitted", v45, 2u);
    MEMORY[0x231914180](v45, -1, -1);
  }

  return v9;
}

uint64_t sub_230105AA8(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 64); ; i += 5)
  {
    v5 = *(i - 3);
    v33 = *(i - 4);
    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    swift_bridgeObjectRetain_n();

    v10 = sub_23005EE00(v7, v6);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_2300846C4(v13, 1);
      v1 = v34;
      v15 = sub_23005EE00(v7, v6);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {
      v31 = v2;

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v17;
      *(v17 + 8 * v10) = v18;
      v32 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_23007F2E8(0, v18[2] + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = v18[2];
      v20 = v18[3];
      v22 = v21 + 1;
      v2 = v31;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_23007F2E8((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      v18[2] = v22;
      v4 = &v18[5 * v21];
      v4[4] = v33;
      v4[5] = v5;
      v4[6] = v7;
      v4[7] = v6;
      v4[8] = v32;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143C8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_230315CE0;
      *(v24 + 32) = v33;
      *(v24 + 40) = v5;
      *(v24 + 48) = v7;
      *(v24 + 56) = v6;
      *(v24 + 64) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v7;
      v25[1] = v6;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for REMAnchoredBubbleModel()
{
  result = qword_280C980E8;
  if (!qword_280C980E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_230105D4C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v102 = 0;
  v5 = a4;
  v7 = 0;
  v108 = a1 + 32;
  v109 = *(a1 + 16);
  v8 = a4 + 64;
  if (a2 > 0.2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0.2;
  }

  v10 = MEMORY[0x277D84F98];
  do
  {
    if (v7 == v109)
    {
      return v10;
    }

    v13 = (v108 + 40 * v7);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[3];
    v122 = v13[2];

    v12 = MEMORY[0x2319135A0](v17);
    v18 = sub_2303101F8();
    if (v18)
    {
      v19 = v18;
      v115 = v10;
      v116 = v14;
      v114 = v12;
      v20 = 1 << *(v5 + 32);
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v5 + 64);
      v23 = (v20 + 63) >> 6;

      v10 = 0;
      v24 = INFINITY;
LABEL_14:
      if (v22)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v26 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v26 >= v23)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v125 = v115;
          sub_2300A1B38(v122, v16, v116, v15, isUniquelyReferenced_nonNull_native, v24 * 0.5);

          swift_bridgeObjectRelease_n();
          v10 = v125;
          v12 = v114;
          goto LABEL_6;
        }

        v22 = *(v8 + 8 * v26);
        ++v10;
        if (v22)
        {
          v10 = v26;
LABEL_19:
          v27 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v28 = v27 | (v10 << 6);
          v29 = (*(v5 + 48) + 16 * v28);
          if (v122 != *v29 || v16 != v29[1])
          {
            v25 = *(*(v5 + 56) + 8 * v28);
            if ((sub_230311048() & 1) == 0)
            {
              v99 = v7;
              v7 = *(v25 + 16);

              v105 = v7;
              if (v7)
              {
                v30 = 0;
                v121 = (v25 + 40);
                v110 = v15;
                v100 = v8;
                v101 = v19;
                v117 = v25;
                v104 = v16;
                while (1)
                {
                  if (v30 >= *(v25 + 16))
                  {
                    goto LABEL_87;
                  }

                  v31 = v15;
                  v119 = v30;
                  v32 = *(v121 - 1);
                  v33 = *v121;

                  v118 = MEMORY[0x2319135A0](v34);
                  v106 = v32;
                  v35 = sub_2303101F8();
                  if (v35)
                  {
                    break;
                  }

                  v25 = v117;
                  v15 = v31;
LABEL_25:
                  v7 = v119 + 1;
                  objc_autoreleasePoolPop(v118);
                  v30 = v119 + 1;
                  v121 += 5;
                  v16 = v104;
                  if (v105 == v119 + 1)
                  {
                    goto LABEL_68;
                  }
                }

                v107 = v33;
                v36 = *(v19 + 16);
                if (v36 >> 60)
                {
                  goto LABEL_88;
                }

                v37 = v35;
                v38 = 8 * v36;
                v39 = v19;
                v40 = *(v19 + 16);

                v41 = swift_slowAlloc();
                v42 = v41;
                if (*(v39 + 16))
                {
                  memcpy(v41, (v39 + 32), v38);
                }

                else
                {

                  if (v40)
                  {
                    goto LABEL_89;
                  }
                }

                type metadata accessor for REMLinearAlgebraDataRef();
                inited = swift_initStackObject();
                *(inited + 16) = v42;
                *(inited + 24) = v40;
                v44 = *(v37 + 16);
                if (v44 >> 60)
                {
                  goto LABEL_90;
                }

                v7 = inited;
                v111 = v40;
                v45 = swift_slowAlloc();
                v46 = v45;
                if (*(v37 + 16))
                {
                  memcpy(v45, (v37 + 32), 8 * v44);

                  v8 = v100;
                }

                else
                {

                  v8 = v100;
                  if (v44)
                  {
                    goto LABEL_91;
                  }
                }

                v47 = swift_initStackObject();
                *(v47 + 16) = v46;
                *(v47 + 24) = v44;
                if (a5)
                {
                  v120 = v47;
                  v48 = *(a5 + 48);
                  v15 = v110;
                  v25 = v117;
                  if (v48)
                  {
                    v125 = *(a5 + 32);
                    v126 = v48;
                    v123 = v40;
                    v124 = v7;

                    v49 = v102;
                    static REMMatrix.mul(_:_:)(&v125, &v123, &v127);

                    v7 = v128;
                    v111 = v127;
                    v56 = *(a5 + 48);
                    if (!v56)
                    {
                      goto LABEL_47;
                    }

LABEL_45:
                    v125 = *(a5 + 32);
                    v126 = v56;
                    v123 = v44;
                    v124 = v120;
                    static REMMatrix.mul(_:_:)(&v125, &v123, &v127);
                    v102 = 0;

                    v44 = v127;
                    v47 = v128;
                    v5 = a4;
LABEL_53:
                    *&v125 = v111;
                    *(&v125 + 1) = v7;
                    v127 = v44;
                    v128 = v47;
                    static REMVector.angularCosineDistance(lhs:rhs:)(&v125, &v127);
                    if (a2 <= 0.49)
                    {
                      v64 = v9;
                    }

                    else
                    {
                      v64 = 0.49;
                    }

                    v19 = v101;
                    if (v63 <= 0.25)
                    {
                      v65 = v63 * 4.0 * v64;
                    }

                    else
                    {
                      v65 = v64 + v64 + v63 * (1.0 - v64) * 4.0 + -1.0;
                    }

                    if (v65 < v24)
                    {
                      v24 = v65;
                    }

                    if (v24 == 0.0)
                    {
                      if (qword_280C97168 != -1)
                      {
                        swift_once();
                      }

                      v66 = sub_23030EF48();
                      __swift_project_value_buffer(v66, qword_280C97170);

                      v67 = sub_23030EF38();
                      v68 = sub_230310268();

                      v112 = v67;
                      if (os_log_type_enabled(v67, v68))
                      {
                        v69 = swift_slowAlloc();
                        v70 = swift_slowAlloc();
                        *&v125 = v70;
                        *v69 = 136315394;
                        *(v69 + 4) = sub_23004E30C(v116, v110, &v125);
                        *(v69 + 12) = 2080;
                        *(v69 + 14) = sub_23004E30C(v106, v107, &v125);
                        _os_log_impl(&dword_230044000, v112, v68, "%s and %s has 0 distance", v69, 0x16u);
                        swift_arrayDestroy();
                        v71 = v70;
                        v19 = v101;
                        MEMORY[0x231914180](v71, -1, -1);
                        v72 = v69;
                        v15 = v110;
                        MEMORY[0x231914180](v72, -1, -1);

                        v5 = a4;
                        v25 = v117;
                      }

                      else
                      {

                        v5 = a4;
                        v25 = v117;
                        v15 = v110;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_25;
                  }

                  v50 = qword_27DB13D28;

                  if (v50 != -1)
                  {
                    swift_once();
                  }

                  v51 = sub_23030EF48();
                  __swift_project_value_buffer(v51, qword_27DB19638);
                  v52 = sub_23030EF38();
                  v53 = sub_230310288();
                  if (os_log_type_enabled(v52, v53))
                  {
                    v54 = swift_slowAlloc();
                    *v54 = 0;
                    _os_log_impl(&dword_230044000, v52, v53, "REMPCASolver project vector: missing PCA projection", v54, 2u);
                    v55 = v54;
                    v15 = v110;
                    MEMORY[0x231914180](v55, -1, -1);
                  }

                  v49 = v102;
                  v25 = v117;
                  v56 = *(a5 + 48);
                  if (v56)
                  {
                    goto LABEL_45;
                  }

LABEL_47:
                  v102 = v49;
                  v57 = qword_27DB13D28;

                  if (v57 != -1)
                  {
                    swift_once();
                  }

                  v58 = sub_23030EF48();
                  __swift_project_value_buffer(v58, qword_27DB19638);
                  v59 = sub_23030EF38();
                  v60 = sub_230310288();
                  if (os_log_type_enabled(v59, v60))
                  {
                    v61 = swift_slowAlloc();
                    *v61 = 0;
                    _os_log_impl(&dword_230044000, v59, v60, "REMPCASolver project vector: missing PCA projection", v61, 2u);
                    v62 = v61;
                    v15 = v110;
                    MEMORY[0x231914180](v62, -1, -1);
                  }

                  v47 = v120;
                  v5 = a4;
                }

                else
                {
                  v5 = a4;
                  v15 = v110;
                }

                v25 = v117;
                goto LABEL_53;
              }

LABEL_68:

              v7 = v99;
            }
          }

          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v73 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v15;
    v75 = v73;
    *&v125 = v10;
    v76 = v14;
    v77 = v14;
    v78 = v74;
    v79 = sub_23005EE00(v77, v74);
    v81 = *(v10 + 16);
    v82 = (v80 & 1) == 0;
    v83 = __OFADD__(v81, v82);
    v84 = v81 + v82;
    if (v83)
    {
      goto LABEL_92;
    }

    v85 = v80;
    if (*(v10 + 24) < v84)
    {
      sub_2300846EC(v84, v75);
      v86 = v78;
      v79 = sub_23005EE00(v76, v78);
      if ((v85 & 1) != (v87 & 1))
      {
        result = sub_2303112A8();
        __break(1u);
        return result;
      }

LABEL_75:
      v10 = v125;
      if ((v85 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    if (v75)
    {
      v86 = v78;
      goto LABEL_75;
    }

    v89 = v79;
    sub_230089BA8();
    v79 = v89;
    v86 = v78;
    v10 = v125;
    if ((v85 & 1) == 0)
    {
LABEL_78:
      *(v10 + 8 * (v79 >> 6) + 64) |= 1 << v79;
      v90 = (*(v10 + 48) + 16 * v79);
      *v90 = v76;
      v90[1] = v86;
      v91 = (*(v10 + 56) + 24 * v79);
      *v91 = 0;
      v91[1] = v122;
      v91[2] = v16;
      v92 = *(v10 + 16);
      v83 = __OFADD__(v92, 1);
      v93 = v92 + 1;
      if (v83)
      {
        goto LABEL_93;
      }

      *(v10 + 16) = v93;
      goto LABEL_80;
    }

LABEL_76:
    v88 = (*(v10 + 56) + 24 * v79);
    *v88 = 0;
    v88[1] = v122;
    v88[2] = v16;

LABEL_80:

    v5 = a4;
LABEL_6:
    ++v7;
    objc_autoreleasePoolPop(v12);
  }

  while (*(v10 + 16) >> 3 < 0x271uLL);
  if (qword_280C97168 == -1)
  {
    goto LABEL_82;
  }

LABEL_94:
  swift_once();
LABEL_82:
  v94 = sub_23030EF48();
  __swift_project_value_buffer(v94, qword_280C97170);

  v95 = sub_23030EF38();
  v96 = sub_230310268();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134218240;
    *(v97 + 4) = v7;
    *(v97 + 12) = 2048;
    *(v97 + 14) = v109;

    _os_log_impl(&dword_230044000, v95, v96, "Achieved maxAnchoredBubbleCount. Examined %ld word from total %ld candidates", v97, 0x16u);
    MEMORY[0x231914180](v97, -1, -1);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_230106A50(uint64_t a1, uint64_t a2)
{
  v2 = sub_230100EB4(a1, a2);
  if (v5 == -1)
  {
    return MEMORY[0x277D84F90];
  }

  if ((v5 & 1) == 0)
  {
    sub_230107EC8(v2, v3, v4, v5);
    return MEMORY[0x277D84F90];
  }

  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14858);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_230315CE0;
  v8 = v7;
  *(v7 + 32) = v6;
  result = sub_2300FCD8C();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *(result + 16))
  {
    v10 = result + 16 * v6;
    v12 = *(v10 + 32);
    v11 = *(v10 + 40);

    result = v8;
    *(v8 + 40) = v12;
    *(v8 + 48) = v11;
    *(v8 + 56) = 1065353216;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_230106B1C()
{
  result = qword_27DB15460;
  if (!qword_27DB15460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15460);
  }

  return result;
}

unint64_t sub_230106B70()
{
  result = qword_27DB15468;
  if (!qword_27DB15468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15468);
  }

  return result;
}

uint64_t sub_230106BF4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_230106C78()
{
  result = qword_27DB15490;
  if (!qword_27DB15490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15490);
  }

  return result;
}

uint64_t sub_230106CCC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_230106CDC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_230106CEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_230106D5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_230106D70(a1, a2, a3, a4, a5);
  }
}

void sub_230106D70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 4u)
  {
    if (a5 > 1u)
    {
      if (a5 != 2)
      {
        if (a5 != 3 && a5 != 4)
        {
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (a5)
    {
LABEL_24:

      return;
    }

LABEL_17:

    return;
  }

  if (a5 > 6u)
  {
    if (a5 == 7)
    {
      goto LABEL_24;
    }

    if (a5 == 8)
    {

      goto LABEL_24;
    }

    if (a5 != 9)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a5 != 5)
  {
    if (a5 != 6)
    {
      return;
    }

    goto LABEL_24;
  }
}

void sub_230106E94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 4u)
  {
    if (a5 > 1u)
    {
      if (a5 != 2)
      {
        if (a5 != 3 && a5 != 4)
        {
          return;
        }

        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (a5)
    {
LABEL_24:

      return;
    }

LABEL_17:

    return;
  }

  if (a5 > 6u)
  {
    if (a5 == 7)
    {
      goto LABEL_24;
    }

    if (a5 == 8)
    {

      goto LABEL_24;
    }

    if (a5 != 9)
    {
      return;
    }

    goto LABEL_17;
  }

  if (a5 != 5)
  {
    if (a5 != 6)
    {
      return;
    }

    goto LABEL_24;
  }

  v5 = a2;
}

unint64_t sub_230106FB8()
{
  result = qword_280C98520;
  if (!qword_280C98520)
  {
    sub_23030EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98520);
  }

  return result;
}

void sub_230107018()
{
  sub_2301072D4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2301072D4()
{
  if (!qword_280C9B3E8)
  {
    sub_23030EBB8();
    v0 = sub_2303104C8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C9B3E8);
    }
  }
}

uint64_t sub_23010733C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_230106CCC(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMAnchoredBubbleModel.BubbleCategory(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_230106CCC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_230106CDC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMAnchoredBubbleModel.BubbleCategory(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_230106CDC(v4, v5, v6);
  return a1;
}

uint64_t initializeWithCopy for REMAnchoredBubbleModel.RadiusForBubbleCategory(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_230106CCC(v3, v4, v5);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t assignWithCopy for REMAnchoredBubbleModel.RadiusForBubbleCategory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_230106CCC(v3, v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_230106CDC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMAnchoredBubbleModel.RadiusForBubbleCategory(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  sub_230106CDC(v4, v5, v6);
  return a1;
}

void *assignWithCopy for REMAnchoredBubbleModel.ModelFileData(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for REMAnchoredBubbleModel.ModelFileData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t sub_230107660()
{
  result = qword_27DB154A8;
  if (!qword_27DB154A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154A8);
  }

  return result;
}

unint64_t sub_2301076B4()
{
  result = qword_27DB154B8;
  if (!qword_27DB154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154B8);
  }

  return result;
}

unint64_t sub_230107708()
{
  result = qword_27DB154C0;
  if (!qword_27DB154C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15488);
    sub_230107794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154C0);
  }

  return result;
}

unint64_t sub_230107794()
{
  result = qword_27DB154C8;
  if (!qword_27DB154C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154C8);
  }

  return result;
}

void *sub_2301077E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230107DC8();
  sub_230311428();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v10) = 0;
    sub_230310CB8();
    v11 = 1;
    sub_230107E1C();
    sub_230310CE8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_2301079BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xED0000656C616353 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1735287148 && a2 == 0xE400000000000000 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C62627562 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_230107B28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301076B4();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v12 = v9;
  v25 = 1;
  sub_230310CB8();
  v14 = v13;
  v24 = 2;
  v20 = sub_230310C98();
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15488);
  v22 = 3;
  sub_230106BC4();
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v16 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v14;
  v18 = v21;
  a2[3] = v20;
  a2[4] = v18;
  a2[5] = v16;
  return result;
}

unint64_t sub_230107DC8()
{
  result = qword_27DB154E0;
  if (!qword_27DB154E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154E0);
  }

  return result;
}

unint64_t sub_230107E1C()
{
  result = qword_27DB154E8;
  if (!qword_27DB154E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154E8);
  }

  return result;
}

unint64_t sub_230107E70()
{
  result = qword_27DB154F8;
  if (!qword_27DB154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB154F8);
  }

  return result;
}

uint64_t sub_230107EC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_230106CDC(a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_230107F2C()
{
  result = qword_27DB15520;
  if (!qword_27DB15520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15520);
  }

  return result;
}

unint64_t sub_230107FB4()
{
  result = qword_27DB15528;
  if (!qword_27DB15528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15528);
  }

  return result;
}

unint64_t sub_23010800C()
{
  result = qword_27DB15530;
  if (!qword_27DB15530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15530);
  }

  return result;
}

unint64_t sub_230108064()
{
  result = qword_27DB15538;
  if (!qword_27DB15538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15538);
  }

  return result;
}

unint64_t sub_2301080BC()
{
  result = qword_27DB15540;
  if (!qword_27DB15540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15540);
  }

  return result;
}

unint64_t sub_230108114()
{
  result = qword_27DB15548;
  if (!qword_27DB15548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15548);
  }

  return result;
}

unint64_t sub_23010816C()
{
  result = qword_27DB15550;
  if (!qword_27DB15550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15550);
  }

  return result;
}

uint64_t sub_2301081CC(uint64_t a1)
{
  v41 = sub_23030EBB8();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_2303106D8();
    result = MEMORY[0x277D84F90];
    if (!v5)
    {
      return result;
    }

    v49 = MEMORY[0x277D84F90];
    sub_2303109B8();
    result = sub_230310688();
    v46 = result;
    v47 = v7;
    v48 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v49 = MEMORY[0x277D84F90];
  sub_2303109B8();
  result = sub_230310658();
  v8 = *(a1 + 36);
  v46 = result;
  v47 = v8;
  v48 = 0;
LABEL_7:
  v9 = 0;
  v37 = v5;
  v38 = (v3 + 8);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v10 = a1;
  }

  v35 = a1 + 56;
  v36 = v10;
  v33[1] = v1;
  v34 = a1 + 64;
  while (v9 < v5)
  {
    if (__OFADD__(v9++, 1))
    {
      goto LABEL_35;
    }

    v13 = v46;
    v43 = v47;
    v42 = v48;
    sub_230270864(v46, v47, v48, a1);
    v15 = v14;
    v16 = type metadata accessor for REMObjectID_Codable();
    v17 = objc_allocWithZone(v16);
    v18 = v15;
    v19 = [v18 uuid];
    v20 = v40;
    sub_23030EBA8();

    v21 = sub_23030EB88();
    (*v38)(v20, v41);
    v22 = [v18 entityName];
    if (!v22)
    {
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = sub_23030F8B8();
    }

    v45.receiver = v17;
    v45.super_class = v16;
    objc_msgSendSuper2(&v45, sel_initWithUUID_entityName_, v21, v22);

    sub_230310988();
    sub_2303109C8();
    sub_2303109D8();
    result = sub_230310998();
    if (v39)
    {
      if (!v42)
      {
        goto LABEL_39;
      }

      if (sub_2303106A8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15560);
      v11 = sub_23030FF68();
      sub_230310738();
      result = v11(v44, 0);
      if (v9 == v5)
      {
LABEL_32:
        sub_2300EB170(v46, v47, v48);
        return v49;
      }
    }

    else
    {
      v23 = v43;
      if (v42)
      {
        goto LABEL_40;
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v24 = 1 << *(a1 + 32);
      if (v13 >= v24)
      {
        goto LABEL_36;
      }

      v25 = v13 >> 6;
      v26 = *(v35 + 8 * (v13 >> 6));
      if (((v26 >> v13) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(a1 + 36) != v43)
      {
        goto LABEL_38;
      }

      v27 = v26 & (-2 << (v13 & 0x3F));
      if (v27)
      {
        v24 = __clz(__rbit64(v27)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v25 << 6;
        v29 = v25 + 1;
        v30 = (v34 + 8 * v25);
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_2300EB170(v13, v43, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_31;
          }
        }

        result = sub_2300EB170(v13, v43, 0);
      }

LABEL_31:
      v46 = v24;
      v47 = v23;
      v48 = 0;
      v5 = v37;
      if (v9 == v37)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_230108638(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15498);
    v1 = sub_230310BC8();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15568);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15500);
        swift_dynamicCast();
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v24 = v25;
        v25 = v26;
        *&v26 = v27;
        result = sub_23005EE00(v14, v13);
        if (v15)
        {
          v8 = (v1[6] + 16 * result);
          *v8 = v14;
          v8[1] = v13;
          v9 = result;

          result = sub_230109548(&v24, v1[7] + 40 * v9);
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v1[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          v17 = v1[7] + 40 * result;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v1[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v1[2] = v22;
          v7 = v10;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_2301088C4(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84F98];
    goto LABEL_6;
  }

  if (!sub_2303106D8())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14688);
  v3 = sub_230310BC8();
LABEL_6:
  if (sub_23004CB58() == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      v9 = sub_230310AA8();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v9 | 0x8000000000000000;
    }

    else
    {
      v39 = -1 << *(a1 + 32);
      v11 = ~v39;
      v10 = a1 + 64;
      v40 = -v39;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v12 = v41 & *(a1 + 64);
      v13 = a1;
    }

    v42 = (v11 + 64) >> 6;

    v43 = 0;
    for (i = v13; ; v13 = i)
    {
      if ((v13 & 0x8000000000000000) != 0)
      {
        v57 = sub_230310AD8();
        if (!v57)
        {
          goto LABEL_60;
        }

        v64 = v57;
        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        type metadata accessor for REMList_Codable();
        swift_dynamicCast();
        v56 = v64;
        v55 = v65;
        v50 = v43;
        v52 = v12;
        if (!v65)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v49 = v12;
        v50 = v43;
        if (!v12)
        {
          v51 = v43;
          do
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_64;
            }

            if (v50 >= v42)
            {
              goto LABEL_60;
            }

            v49 = *(v10 + 8 * v50);
            ++v51;
          }

          while (!v49);
          v13 = i;
        }

        v52 = (v49 - 1) & v49;
        v53 = (v50 << 9) | (8 * __clz(__rbit64(v49)));
        v54 = *(*(v13 + 56) + v53);
        v55 = *(*(v13 + 48) + v53);
        v56 = v54;
        if (!v55)
        {
LABEL_60:
          sub_230060014();

          return;
        }
      }

      v58 = sub_230059108(v55);
      if (v59)
      {
        v44 = *(v3 + 48);
        v45 = *(v44 + 8 * v58);
        *(v44 + 8 * v58) = v55;
        v46 = v58;

        v47 = *(v3 + 56);
        v48 = *(v47 + 8 * v46);
        *(v47 + 8 * v46) = v56;
      }

      else
      {
        v60 = *(v3 + 16);
        if (v60 >= *(v3 + 24))
        {
          goto LABEL_65;
        }

        *(v3 + 64 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
        *(*(v3 + 48) + 8 * v58) = v55;
        *(*(v3 + 56) + 8 * v58) = v56;
        *(v3 + 16) = v60 + 1;
      }

      v43 = v50;
      v12 = v52;
    }
  }

  if (v2)
  {
    v4 = sub_230310AA8();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v6 = ~v14;
    v5 = a1 + 64;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v7 = v16 & *(a1 + 64);
    v8 = a1;
  }

  v17 = (v6 + 64) >> 6;
  v18 = v3 + 64;

  v19 = 0;
  v61 = v8;
  while ((v8 & 0x8000000000000000) != 0)
  {
    v30 = sub_230310AD8();
    if (!v30)
    {
      goto LABEL_60;
    }

    v63 = v30;
    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    type metadata accessor for REMList_Codable();
    swift_dynamicCast();
    v29 = v63;
    v28 = v65;
    v22 = v19;
    v24 = v7;
    if (!v65)
    {
      goto LABEL_60;
    }

LABEL_29:
    v31 = sub_230310438();
    v32 = -1 << *(v3 + 32);
    v33 = v31 & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) != 0)
    {
      v20 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v35 = 0;
      v36 = (63 - v32) >> 6;
      do
      {
        if (++v34 == v36 && (v35 & 1) != 0)
        {
          __break(1u);
          goto LABEL_63;
        }

        v37 = v34 == v36;
        if (v34 == v36)
        {
          v34 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v34);
      }

      while (v38 == -1);
      v20 = __clz(__rbit64(~v38)) + (v34 << 6);
    }

    *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v3 + 48) + 8 * v20) = v28;
    *(*(v3 + 56) + 8 * v20) = v29;
    ++*(v3 + 16);
    v19 = v22;
    v7 = v24;
    v8 = v61;
  }

  v21 = v7;
  v22 = v19;
  if (v7)
  {
LABEL_25:
    v24 = (v21 - 1) & v21;
    v25 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v26 = *(*(v8 + 48) + v25);
    v27 = *(*(v8 + 56) + v25);
    v28 = v26;
    v29 = v27;
    if (!v28)
    {
      goto LABEL_60;
    }

    goto LABEL_29;
  }

  v23 = v19;
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v17)
    {
      goto LABEL_60;
    }

    v21 = *(v5 + 8 * v22);
    ++v23;
    if (v21)
    {
      v8 = v61;
      goto LABEL_25;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_230108E08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14518);
    v2 = sub_230310BC8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_23005EE00(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void static REMListStableSortingDataView.fetchLists(store:objectIDs:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2301081CC(a2);
  v4 = sub_2300B397C(v3);

  type metadata accessor for REMListStableSortingDataView.Invocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2300BEE10(v5, v4, v7);

  if (!v2)
  {
    v6 = v7[1];
    sub_2301088C4(v7[0]);
  }
}

id REMListStableSortingDataView.Invocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMListStableSortingDataView.Invocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMListStableSortingDataView.Invocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMListStableSortingDataView.Invocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMListStableSortingDataView.Invocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2301093D8()
{
  result = qword_27DB15558;
  if (!qword_27DB15558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14F00);
    sub_2301094C4(qword_280C9BFD8, type metadata accessor for REMObjectID_Codable);
    sub_2301094C4(&qword_280C9C348, type metadata accessor for REMList_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15558);
  }

  return result;
}

uint64_t sub_2301094C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230109548(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15500);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t REMMemberships.rem_baseForChecksum()()
{
  v2 = v0;
  v83 = *MEMORY[0x277D85DE8];
  v3 = sub_23030EBB8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v74 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = v60 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v60 - v9;
  v11 = [v0 membershipByMemberIdentifier];
  v12 = sub_2300EAFE8();
  v13 = sub_230109E50();
  v64 = v12;
  v71 = v13;
  v14 = sub_23030F658();

  v15 = *(v14 + 16);
  v63 = v2;
  v62 = v4;
  v61 = v10;
  if (v15)
  {
    v16 = sub_23009D990(v15, 0);
    v17 = sub_23009E18C(&v80, (v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80))), v15, v14);
    v75 = v82;

    sub_230060014();
    if (v17 != v15)
    {
      goto LABEL_39;
    }

    v2 = v63;
    v4 = v62;
    v10 = v61;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  *&v80 = v16;
  sub_230109ED0(&v80);
  if (v1)
  {

    __break(1u);
  }

  else
  {

    v18 = v80;
    v70 = *(v80 + 16);
    if (v70)
    {
      v60[1] = 0;
      v19 = 0;
      v68 = v80 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v67 = v4 + 16;
      v66 = (v4 + 8);
      v72 = (v4 + 32);
      v75 = 0x8000000230341240;
      v65 = MEMORY[0x277D84F90];
      v20 = &off_2788BD000;
      v69 = v80;
      do
      {
        if (v19 >= *(v18 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
        }

        (*(v4 + 16))(v10, v68 + *(v4 + 72) * v19, v3);
        v21 = [v2 v20[246]];
        v22 = sub_23030F658();

        if (!*(v22 + 16) || (v23 = sub_230081B9C(v10), (v24 & 1) == 0))
        {

          (*v66)(v10, v3);
          goto LABEL_9;
        }

        v25 = *(*(v22 + 56) + 8 * v23);

        v26 = v25;
        v27 = 0;
        v28 = MEMORY[0x277D84F90];
        do
        {
          if (byte_2844E9D08[v27 + 32] > 1u)
          {
            if (byte_2844E9D08[v27 + 32] == 2)
            {
              v33 = [v26 modifiedOn];
              v81 = sub_23030EB58();
              __swift_allocate_boxed_opaque_existential_0(&v80);
              sub_23030EB18();

              v76 = 0;
              v32 = 0xEA00000000006E4FLL;
              v31 = 0x6465696669646F6DLL;
            }

            else
            {
              if (([v26 isObsolete] & 1) == 0)
              {
                goto LABEL_15;
              }

              v40 = [v26 isObsolete];
              v81 = MEMORY[0x277D839B0];
              LOBYTE(v80) = v40;
              v76 = 0;
              v31 = 0x656C6F73624F7369;
              v32 = 0xEA00000000006574;
            }
          }

          else if (byte_2844E9D08[v27 + 32])
          {
            v34 = [v26 groupIdentifier];
            if (!v34)
            {
              goto LABEL_15;
            }

            v35 = v74;
            v36 = v34;
            sub_23030EBA8();

            v37 = v73;
            v38 = *v72;
            (*v72)(v73, v35, v3);
            v81 = v3;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
            v38(boxed_opaque_existential_0, v37, v3);
            v76 = 0;
            v31 = 0x65644970756F7267;
            v32 = 0xEF7265696669746ELL;
          }

          else
          {
            v30 = [v26 memberIdentifier];
            v81 = v3;
            __swift_allocate_boxed_opaque_existential_0(&v80);
            sub_23030EBA8();

            v76 = 0;
            v31 = 0xD000000000000010;
            v32 = v75;
          }

          v77 = 0xE000000000000000;
          MEMORY[0x231911790](v31, v32);

          MEMORY[0x231911790](58, 0xE100000000000000);
          sub_230310A28();
          v42 = v76;
          v41 = v77;
          __swift_destroy_boxed_opaque_existential_1(&v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_23007E928(0, *(v28 + 2) + 1, 1, v28);
          }

          v44 = *(v28 + 2);
          v43 = *(v28 + 3);
          if (v44 >= v43 >> 1)
          {
            v28 = sub_23007E928((v43 > 1), v44 + 1, 1, v28);
          }

          *(v28 + 2) = v44 + 1;
          v29 = &v28[16 * v44];
          *(v29 + 4) = v42;
          *(v29 + 5) = v41;
LABEL_15:
          ++v27;
        }

        while (v27 != 4);
        *&v80 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
        sub_2300B0FA8();
        v45 = sub_23030F7C8();
        v47 = v46;

        v79 = MEMORY[0x277D837D0];
        *&v78 = v45;
        *(&v78 + 1) = v47;
        v10 = v61;
        (*v66)(v61, v3);
        sub_230061914(&v78, &v80);
        v48 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_23007EEA4(0, *(v48 + 2) + 1, 1, v48);
        }

        v2 = v63;
        v4 = v62;
        v20 = &off_2788BD000;
        v50 = *(v65 + 2);
        v49 = *(v65 + 3);
        if (v50 >= v49 >> 1)
        {
          v65 = sub_23007EEA4((v49 > 1), v50 + 1, 1, v65);
        }

        v51 = v65;
        *(v65 + 2) = v50 + 1;
        sub_230061914(&v80, &v51[32 * v50 + 32]);
LABEL_9:
        ++v19;
        v18 = v69;
      }

      while (v19 != v70);
    }

    v53 = MEMORY[0x2319135A0](v52);
    v54 = objc_opt_self();
    v55 = sub_23030FCC8();
    *&v80 = 0;
    v56 = [v54 dataWithJSONObject:v55 options:0 error:&v80];

    v57 = v80;
    if (v56)
    {
      v58 = sub_23030EA18();
    }

    else
    {
      v58 = v57;
      sub_23030E808();

      swift_willThrow();
    }

    objc_autoreleasePoolPop(v53);
    return v58;
  }

  return result;
}

unint64_t sub_230109E50()
{
  result = qword_280C98528;
  if (!qword_280C98528)
  {
    sub_23030EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98528);
  }

  return result;
}

uint64_t sub_230109ED0(void **a1)
{
  v2 = *(sub_23030EBB8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2302A37F4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_230109F78(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_230109F78(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23030EBB8();
        v6 = sub_23030FD48();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23030EBB8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23010A3AC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23010A0A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23010A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23030EBB8();
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v34 - v12;
  result = MEMORY[0x28223BE20](v11);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v14 + 16);
    v46 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v42 = (v14 + 32);
    v43 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      v45(v47, v21, v8);
      v24(v48, v23, v8);
      v25 = sub_23030EB78();
      v27 = v26;
      if (sub_23030EB78() == v25 && v28 == v27)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        result = (v22)(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = v39 + v35;
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_230311048();

      v30 = *v18;
      (*v18)(v48, v8);
      result = (v30)(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v31)(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23010A3AC(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v134 = a1;
  v9 = sub_23030EBB8();
  v10 = MEMORY[0x28223BE20](v9);
  v138 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v149 = &v128 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v154 = &v128 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v153 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v128 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v145 = &v128 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v133 = &v128 - v23;
  result = MEMORY[0x28223BE20](v22);
  v132 = &v128 - v26;
  v27 = *(a3 + 1);
  v143 = v25;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v134;
    if (!*v134)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v143;
    if (result)
    {
LABEL_105:
      v155 = v29;
      v122 = *(v29 + 16);
      if (v122 >= 2)
      {
        while (1)
        {
          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v124 = a3;
          v125 = *(v29 + 16 * v122);
          a3 = v29;
          v126 = *(v29 + 16 * (v122 - 1) + 32);
          v29 = *(v29 + 16 * (v122 - 1) + 40);
          sub_23010AF5C(&v123[*(v5 + 72) * v125], &v123[*(v5 + 72) * v126], &v123[*(v5 + 72) * v29], v31);
          if (v6)
          {
          }

          if (v29 < v125)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2302A36A0(a3);
          }

          if (v122 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v127 = &a3[16 * v122];
          *v127 = v125;
          *(v127 + 1) = v29;
          v155 = a3;
          result = sub_2302A3614(v122 - 1);
          v29 = v155;
          v122 = *(v155 + 16);
          a3 = v124;
          if (v122 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_2302A36A0(v29);
    v29 = result;
    goto LABEL_105;
  }

  v129 = a4;
  v28 = 0;
  v151 = v25 + 16;
  v152 = (v25 + 8);
  v150 = (v25 + 32);
  v29 = MEMORY[0x277D84F90];
  v135 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v137 = v28;
    if (v28 + 1 < v27)
    {
      v141 = v27;
      v130 = v29;
      v32 = *a3;
      v33 = *(v143 + 72);
      v5 = v28 + 1;
      v34 = &v32[v33 * v31];
      v35 = *(v143 + 16);
      v35(v132, v34, v9);
      v144 = v33;
      v140 = v35;
      v35(v133, &v32[v33 * v30], v9);
      v31 = sub_23030EB78();
      v37 = v36;
      v38 = sub_23030EB78();
      v131 = v6;
      if (v38 == v31 && v39 == v37)
      {
        LODWORD(v142) = 0;
      }

      else
      {
        LODWORD(v142) = sub_230311048();
      }

      v40 = *v152;
      (*v152)(v133, v9);
      v139 = v40;
      result = (v40)(v132, v9);
      v41 = (v137 + 2);
      v42 = v144 * (v137 + 2);
      v43 = &v32[v42];
      v44 = v144 * v5;
      v45 = &v32[v144 * v5];
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v141)
        {
          break;
        }

        v147 = v5;
        v148 = v41;
        v49 = v140;
        (v140)(v145, v43, v9);
        v49(v146, v45, v9);
        v50 = sub_23030EB78();
        v52 = v51;
        if (sub_23030EB78() == v50 && v53 == v52)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_230311048();
        }

        a3 = v148;

        v31 = v139;
        v139(v146, v9);
        result = (v31)(v145, v9);
        v47 = v142 ^ v46;
        v41 = a3 + 1;
        v43 += v144;
        v45 += v144;
        v48 = v147;
        v5 = v147 + 1;
        v44 = v6 + v144;
        v42 = v29 + v144;
      }

      while ((v47 & 1) == 0);
      if (v142)
      {
        v30 = v137;
        if (a3 < v137)
        {
          goto LABEL_132;
        }

        if (v137 < a3)
        {
          v54 = v137 * v144;
          v55 = v137;
          do
          {
            if (v55 != v48)
            {
              v57 = *v135;
              if (!*v135)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v148 = *v150;
              (v148)(v138, v57 + v54, v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v148)(v57 + v6, v138, v9);
              v30 = v137;
              v48 = v5;
            }

            ++v55;
            v6 -= v144;
            v29 -= v144;
            v54 += v144;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
      }

      else
      {
        v31 = a3;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
      }
    }

    v58 = *(a3 + 1);
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v129)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      result = sub_23007EA34((v75 > 1), v76 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v134;
    if (!*v134)
    {
      goto LABEL_140;
    }

    v144 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_23010AF5C(&v118[*(v143 + 72) * v119], &v118[*(v143 + 72) * v120], &v118[*(v143 + 72) * v29], v79);
        if (v6)
        {
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_2302A36A0(a3);
        }

        if (v117 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v121 = &a3[16 * v117];
        *(v121 + 4) = v119;
        *(v121 + 5) = v29;
        v155 = a3;
        result = sub_2302A3614(v31);
        v29 = v155;
        v77 = *(v155 + 16);
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = *(a3 + 1);
    v28 = v144;
    if (v144 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v129);
  if (__OFADD__(v30, v129))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = *(a3 + 1);
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v130 = v29;
  v131 = v6;
  v60 = *a3;
  v61 = *(v143 + 72);
  v62 = *(v143 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v147 = -v61;
  v148 = v60;
  v64 = v30 - v31;
  v136 = v61;
  v65 = &v60[v31 * v61];
  v139 = v59;
LABEL_43:
  v144 = v31;
  v140 = v65;
  v141 = v64;
  v142 = v63;
  v67 = v63;
  while (1)
  {
    v62(v153, v65, v9);
    (v62)(v154, v67);
    v5 = sub_23030EB78();
    v69 = v68;
    if (sub_23030EB78() == v5 && v70 == v69)
    {

      v66 = *v152;
      (*v152)(v154, v9);
      v66(v153, v9);
LABEL_42:
      v31 = v144 + 1;
      v63 = v142 + v136;
      v64 = v141 - 1;
      v65 = &v140[v136];
      if ((v144 + 1) == v139)
      {
        v31 = v139;
        v6 = v131;
        a3 = v135;
        v29 = v130;
        v30 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_230311048();

    v71 = *v152;
    (*v152)(v154, v9);
    result = (v71)(v153, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v148)
    {
      break;
    }

    v72 = v149;
    v5 = v150;
    v73 = *v150;
    (*v150)(v149, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v73)(v67, v72, v9);
    v67 += v147;
    v65 += v147;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
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
  return result;
}

uint64_t sub_23010AF5C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = sub_23030EBB8();
  v8 = *(v71 - 8);
  v9 = MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v67 = &v59 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v70 = &v59 - v14;
  result = MEMORY[0x28223BE20](v13);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_23030EB78();
            v52 = v51;
            if (sub_23030EB78() == v50 && v53 == v52)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_230311048();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_23030EB78();
        v32 = v31;
        if (sub_23030EB78() == v30 && v33 == v32)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_230311048();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_2302A048C(&v74, &v73, &v72);
  return 1;
}

uint64_t REMJSONType.associatedValueAsAny.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v1[1])
  {
    v4 = &unk_27DB15570;
  }

  else
  {
    v4 = &qword_27DB15578;
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  *a1 = v3;
}

void *REMJSONRepresentable.toJSONData()(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  (*(a2 + 8))(&v13);
  if (!v3)
  {
    v4 = v13;
    if (v14)
    {
      v5 = &unk_27DB15570;
    }

    else
    {
      v5 = &qword_27DB15578;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
    v15 = v6;
    v13 = v4;
    v7 = MEMORY[0x2319135A0]();
    v8 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(&v13, v6);
    v12 = 0;
    v9 = [v8 dataWithJSONObject:sub_230311038() options:0 error:&v12];
    swift_unknownObjectRelease();
    v10 = v12;
    if (v9)
    {
      v2 = sub_23030EA18();
    }

    else
    {
      v2 = v10;
      sub_23030E808();

      swift_willThrow();
    }

    objc_autoreleasePoolPop(v7);
    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  return v2;
}

void static REMJSONRepresentable.fromJSONData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x2319135A0]();
  v7 = objc_opt_self();
  v8 = sub_23030E9F8();
  v15 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v15];

  v10 = v15;
  if (v9)
  {
    sub_2303105E8();
    swift_unknownObjectRelease();
    objc_autoreleasePoolPop(v6);
    sub_23004D5CC(v17, &v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
    v11 = swift_dynamicCast();
    if (v11 & 1) != 0 || (sub_23004D5CC(v17, &v15), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570), (swift_dynamicCast()))
    {
      v15 = v14;
      v16 = v11 ^ 1;
      (*(a4 + 16))(&v15, a3, a4);
    }

    else
    {
      sub_2300BB7A4();
      swift_allocError();
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 3;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v12 = v10;
    sub_23030E808();

    swift_willThrow();
    objc_autoreleasePoolPop(v6);
  }
}

uint64_t sub_23010BA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  v7 = sub_23010D250();
  return sub_23006CBDC(sub_23010D230, v9, v5, a3, v6, v7, MEMORY[0x277D84950], v10);
}

uint64_t sub_23010BAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_23004D5CC(a1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    sub_23004D5CC(a1, &v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2300BB7A4();
      v10 = swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 3;
      result = swift_willThrow();
      goto LABEL_6;
    }
  }

  v14 = v13;
  v15 = v9 ^ 1;
  (*(a3 + 16))(&v14, a2, a3);
  v10 = v4;

  if (v4)
  {
LABEL_6:
    *a4 = v10;
  }

  return result;
}

uint64_t Array<A>.toJSON()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[2] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v6 = sub_23030FDE8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
  WitnessTable = swift_getWitnessTable();
  result = sub_23006CBDC(sub_23010CCB4, v10, v6, MEMORY[0x277D84F70] + 8, v7, WitnessTable, MEMORY[0x277D84950], v11);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = 1;
  }

  return result;
}

void *sub_23010BD30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, void *a4@<X8>)
{
  result = (*(a2 + 8))(&v10, a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v8 = v10;
    if (v11)
    {
      v9 = &qword_27DB15570;
    }

    else
    {
      v9 = &qword_27DB15578;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(v9);
    a4[3] = result;
    *a4 = v8;
  }

  return result;
}

uint64_t static Array<A>.fromJSON(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    return sub_23010BA2C(a2, *a1, a2, a3);
  }

  sub_2300BB7A4();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 3;
  return swift_willThrow();
}

uint64_t Dictionary<>.toJSON()@<X0>(uint64_t a1@<X8>)
{
  result = sub_23030F6D8();
  if (!v1)
  {
    *a1 = result;
    *(a1 + 8) = 0;
  }

  return result;
}

void *sub_23010BF34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(a2 + 8))(&v8, a1, a2);
  if (!v3)
  {
    v6 = v8;
    if (v9)
    {
      v7 = &qword_27DB15570;
    }

    else
    {
      v7 = &qword_27DB15578;
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    a3[3] = result;
    *a3 = v6;
  }

  return result;
}

uint64_t static Dictionary<>.fromJSON(_:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_2300BB7A4();
    swift_allocError();
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    return sub_23030F6D8();
  }
}

uint64_t sub_23010C0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23004D5CC(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
  v6 = swift_dynamicCast();
  if (v6 & 1) != 0 || (sub_23004D5CC(a1, &v9), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570), (swift_dynamicCast()))
  {
    v9 = v11;
    v10 = v6 ^ 1;
    (*(a3 + 16))(&v9, a2, a3);
  }

  else
  {
    sub_2300BB7A4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    return swift_willThrow();
  }
}

uint64_t Dictionary<>.deserializeRequired<A>(key:valueType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 16) && (v9 = *a3, v10 = a3[1], v11 = sub_23005EE00(a1, a2), (v12 & 1) != 0))
  {
    sub_23004D5CC(*(a4 + 56) + 32 * v11, v16);
    sub_230061914(v16, v17);
    *&v16[0] = v9;
    *(&v16[0] + 1) = v10;
    v13 = type metadata accessor for Dictionary<>.DeserializableValueType();
    sub_23010C300(v17, a1, a2, v13, a5);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_2300BB7A4();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_23010C300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a3;
  v60 = a1;
  v52 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v47 - v8;
  v9 = sub_23030EBB8();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v47 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23030EB58();
  v48 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 16);
  v15 = sub_2303104C8();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v53 = v14;
  v20 = *(v14 - 8);
  MEMORY[0x28223BE20](v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v5;
  v24 = v5[1];
  if (v24 >> 62)
  {
    if (v24 >> 62 == 1)
    {
      sub_23004D5CC(v60, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      if (swift_dynamicCast())
      {
        v58[2] = v23;
        v59 = v24 & 0x3FFFFFFFFFFFFFFFLL;
        v25 = v54;
        sub_23030F6D8();

        if (!v25)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
          v27 = sub_230310B08();

          v28 = &unk_27DB15610;
LABEL_9:
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
          v58[0] = v27;
          v31 = v52;
          v30 = v53;
          v32 = v53;
LABEL_10:
          throwingCast<A>(_:as:failureMessage:)(v58, v30, 0, 0, v32, v31);
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        return result;
      }
    }

    else
    {
      if (v23 > 0x38)
      {
        goto LABEL_26;
      }

      if (((1 << v23) & 0x100000101010101) != 0)
      {
        sub_23004D5CC(v60, v58);
        v33 = v53;
        v34 = swift_dynamicCast();
        v35 = *(v20 + 56);
        if (v34)
        {
          v35(v19, 0, 1, v33);
          v36 = *(v20 + 32);
          v36(v22, v19, v33);
          return (v36)(v52, v22, v33);
        }

        v35(v19, 1, 1, v33);
        (*(v16 + 8))(v19, v15);
        goto LABEL_17;
      }

      if (v23 == 40)
      {
        sub_23004D5CC(v60, v58);
        if (swift_dynamicCast())
        {
          sub_23030EA38();
          v59 = v11;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v58);
          v40 = v48;
          (*(v48 + 16))(boxed_opaque_existential_0, v13, v11);
          throwingCast<A>(_:as:failureMessage:)(v58, v53, 0, 0, v53, v52);
          (*(v40 + 8))(v13, v11);
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        goto LABEL_17;
      }

      if (v23 != 48)
      {
LABEL_26:
        sub_23004D5CC(v60, v58);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
        if (swift_dynamicCast())
        {
          v59 = v44;
          v58[0] = v57;
          v31 = v52;
          v30 = v53;
          v32 = v53;
          goto LABEL_10;
        }

        goto LABEL_17;
      }

      sub_23004D5CC(v60, v58);
      if (swift_dynamicCast())
      {
        v41 = v49;
        sub_23030EB68();

        v43 = v50;
        v42 = v51;
        if ((*(v50 + 48))(v41, 1, v51) != 1)
        {
          v45 = v47;
          (*(v43 + 32))(v47, v41, v42);
          v59 = v42;
          v46 = __swift_allocate_boxed_opaque_existential_0(v58);
          (*(v43 + 16))(v46, v45, v42);
          throwingCast<A>(_:as:failureMessage:)(v58, v53, 0, 0, v53, v52);
          (*(v43 + 8))(v45, v42);
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }

        sub_230061918(v41, &qword_27DB14800);
      }
    }

LABEL_17:
    sub_2300BB7A4();
    swift_allocError();
    v37 = v56;
    *v38 = v55;
    *(v38 + 8) = v37;
    *(v38 + 16) = 2;
    swift_willThrow();
  }

  sub_23004D5CC(v60, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = v54;
  sub_23010BA2C(v23, v57, v23, v24);

  if (!v29)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15608);
    v27 = sub_230310A18();

    v28 = &unk_27DB15618;
    goto LABEL_9;
  }

  return result;
}

uint64_t Dictionary<>.deserializeOptional<A>(key:valueType:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (*(a5 + 16))
  {
    v13 = *a3;
    v14 = a3[1];
    v15 = sub_23005EE00(a1, a2);
    if (v16)
    {
      sub_23004D5CC(*(a5 + 56) + 32 * v15, &v20);
      sub_230061914(&v20, v22);
      sub_23004D5CC(v22, &v20);
      sub_23010CD24();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v22);
      }

      else
      {
        sub_23004D5CC(v22, v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
        swift_dynamicCast();
        if (v21)
        {
          sub_230061918(&v20, &qword_27DB14810);
          *&v20 = v13;
          *(&v20 + 1) = v14;
          v17 = type metadata accessor for Dictionary<>.DeserializableValueType();
          sub_23010C300(v22, a1, a2, v17, a7);
          return __swift_destroy_boxed_opaque_existential_1(v22);
        }

        __swift_destroy_boxed_opaque_existential_1(v22);
      }
    }
  }

  return (*(*(a6 - 8) + 16))(a7, a4, a6);
}

unint64_t sub_23010CD24()
{
  result = qword_27DB15580[0];
  if (!qword_27DB15580[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27DB15580);
  }

  return result;
}

uint64_t assignWithCopy for REMJSONType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t assignWithTake for REMJSONType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMJSONType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for REMJSONType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23010CEE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23010CF14(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_23010CF30(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23010CEE8(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for REMJSONDeserializationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_23010CEE8(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_23010CF14(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for REMJSONDeserializationError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_23010CF14(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExtendedDiff.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ExtendedDiff.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_23010D0A8(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_23010D0C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_23010D0F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFE && *(a1 + 16))
  {
    return (*a1 + 16382);
  }

  v3 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23010D168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_23010D1D4(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *sub_23010D200(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    result[1] = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

unint64_t sub_23010D250()
{
  result = qword_27DB15620;
  if (!qword_27DB15620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15620);
  }

  return result;
}

uint64_t Sequence.unique<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23030F628();
  (*(v13 + 16))(v15, v6, a3);
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = a6;
  v18[8] = a1;
  v18[9] = a2;
  v18[10] = &v19;
  v16 = sub_23030FBB8();

  return v16;
}

uint64_t sub_23010D424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v23 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v23 - v16;
  v18(v15);
  if (!v6)
  {
    v23[1] = 0;

    v20 = sub_23030FF98();

    if (v20)
    {
      (*(v8 + 8))(v17, a6);
    }

    else
    {
      (*(v8 + 16))(v11, v17, a6);
      sub_23030FFA8();
      sub_23030FF78();
      v21 = *(v8 + 8);
      v21(v14, a6);
      v21(v17, a6);
    }

    v19 = v20 ^ 1;
  }

  return v19 & 1;
}

uint64_t Sequence<>.unique()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return Sequence.unique<A>(by:)(sub_23010D6B8, v8, a1, AssociatedTypeWitness, a2, a3);
}

uint64_t Sequence<>.mapToDict()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v31 - v5;
  v7 = sub_2303104C8();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v31 - v12;
  v14 = *(a1 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v31 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v42 = sub_23030F5F8();
  (*(v14 + 16))(v16, v38, a1);
  sub_23030FB38();
  v20 = v17;
  swift_getAssociatedConformanceWitness();
  v38 = v19;
  sub_2303104F8();
  v21 = v39;
  v22 = v39 + 48;
  v23 = *(v39 + 48);
  if (v23(v13, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v21 + 32);
    v35 = v37 + 8;
    v36 = v24;
    v33 = (v21 + 56);
    v34 = (v21 + 16);
    v39 = v21 + 32;
    v32 = (v21 + 8);
    do
    {
      v36(v6, v13, AssociatedTypeWitness);
      v25 = v22;
      v26 = (*(v37 + 8))(AssociatedTypeWitness);
      v27 = v20;
      v29 = v28;
      (*v34)(v10, v6, AssociatedTypeWitness);
      (*v33)(v10, 0, 1, AssociatedTypeWitness);
      v40 = v26;
      v41 = v29;
      v20 = v27;
      sub_23030F6F8();
      sub_23030F738();
      (*v32)(v6, AssociatedTypeWitness);
      sub_2303104F8();
      v22 = v25;
    }

    while (v23(v13, 1, AssociatedTypeWitness) != 1);
  }

  (*(v31 + 8))(v38, v20);
  return v42;
}

uint64_t REMTextMemberships.rem_baseForChecksum()()
{
  v2 = v1;
  v43[5] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - v4;
  v39 = v0;
  v6 = [v0 memberships];
  sub_23010E074();
  v7 = sub_23030F658();

  v8 = *(v7 + 16);
  if (v8)
  {
    v37 = v1;
    v38 = v5;
    v9 = sub_23009D850(v8, 0);
    v10 = sub_23009E430(v43, v9 + 4, v8, v7);

    sub_230060014();
    if (v10 != v8)
    {
      goto LABEL_25;
    }

    v2 = v37;
    v5 = v38;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v43[0] = v9;
  sub_23010E720(v43);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v11 = v43[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_230315CE0;
    v43[0] = 0;
    v43[1] = 0xE000000000000000;
    sub_230310848();

    strcpy(v43, "lastResetDate:");
    HIBYTE(v43[1]) = -18;
    v13 = [v39 lastResetDate];
    if (v13)
    {
      v14 = v13;
      sub_23030EB18();

      v15 = sub_23030EB58();
      (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
    }

    else
    {
      v16 = sub_23030EB58();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    }

    v17 = sub_23030F948();
    MEMORY[0x231911790](v17);

    v18 = v43[1];
    *(v12 + 32) = v43[0];
    *(v12 + 40) = v18;
    v40 = v12;
    v19 = *(v11 + 2);
    if (v19)
    {
      v20 = 0;
      v21 = (v11 + 40);
      v22 = MEMORY[0x277D84F90];
      v38 = v11;
      while (v20 < *(v11 + 2))
      {
        v24 = *v21;
        v43[0] = *(v21 - 1);
        v43[1] = v24;

        sub_23010E0C0(v39, v43, &v41);

        v25 = v42;
        if (v42)
        {
          v26 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_23007E928(0, *(v22 + 2) + 1, 1, v22);
          }

          v28 = *(v22 + 2);
          v27 = *(v22 + 3);
          if (v28 >= v27 >> 1)
          {
            v22 = sub_23007E928((v27 > 1), v28 + 1, 1, v22);
          }

          *(v22 + 2) = v28 + 1;
          v23 = &v22[16 * v28];
          *(v23 + 4) = v26;
          *(v23 + 5) = v25;
          v11 = v38;
        }

        ++v20;
        v21 += 2;
        if (v19 == v20)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    v22 = MEMORY[0x277D84F90];
LABEL_20:

    v29 = sub_23009CD58(v22);
    v30 = MEMORY[0x2319135A0](v29);
    v31 = objc_opt_self();

    v32 = sub_23030FCC8();

    v43[0] = 0;
    v33 = [v31 dataWithJSONObject:v32 options:0 error:v43];

    v34 = v43[0];
    if (v33)
    {
      v35 = sub_23030EA18();
    }

    else
    {
      v35 = v34;
      sub_23030E808();

      swift_willThrow();
    }

    objc_autoreleasePoolPop(v30);

    return v35;
  }

  return result;
}

unint64_t sub_23010E074()
{
  result = qword_27DB15628;
  if (!qword_27DB15628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB15628);
  }

  return result;
}

void sub_23010E0C0(id a1@<X1>, uint64_t *a2@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = [a1 memberships];
  sub_23010E074();
  v7 = sub_23030F658();

  if (*(v7 + 16) && (v8 = sub_23005EE00(v5, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = v10;
  }

  else
  {
    v10 = 0;
  }

  v14 = v5;

  MEMORY[0x231911790](31546, 0xE200000000000000);
  if (v10)
  {
    v12 = v10;
    sub_23010E220();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
  v13 = sub_23030F948();
  MEMORY[0x231911790](v13);

  MEMORY[0x231911790](125, 0xE100000000000000);

  *a3 = v14;
  a3[1] = v4;
}

uint64_t sub_23010E220()
{
  v16 = byte_2844E9D50;
  sub_23010E40C(&v16, v0, &v14);
  v1 = v15;
  if (v15)
  {
    v2 = v14;
    v3 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23007E928(0, *(v3 + 2) + 1, 1, v3);
    }

    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_23007E928((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = v2;
    *(v6 + 5) = v1;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v16 = byte_2844E9D51;
  sub_23010E40C(&v16, v0, &v14);
  v7 = v15;
  if (v15)
  {
    v8 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23007E928(0, *(v3 + 2) + 1, 1, v3);
    }

    v10 = *(v3 + 2);
    v9 = *(v3 + 3);
    if (v10 >= v9 >> 1)
    {
      v3 = sub_23007E928((v9 > 1), v10 + 1, 1, v3);
    }

    *(v3 + 2) = v10 + 1;
    v11 = &v3[16 * v10];
    *(v11 + 4) = v8;
    *(v11 + 5) = v7;
  }

  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  v12 = sub_23030F7C8();

  return v12;
}

uint64_t sub_23010E40C@<X0>(_BYTE *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = 0xEA00000000006E4FLL;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  if (*a1)
  {
    v13 = [a2 modifiedOn];
    *(&v29 + 1) = sub_23030EB58();
    __swift_allocate_boxed_opaque_existential_0(&v28);
    sub_23030EB18();

    v14 = 0x6465696669646F6DLL;
  }

  else
  {
    v15 = [a2 identifier];
    if (v15)
    {
      v16 = v15;
      sub_23030EBA8();

      v17 = sub_23030EBB8();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v17 = sub_23030EBB8();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    }

    sub_23010E78C(v10, v12);
    sub_23030EBB8();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12, 1, v17) == 1)
    {
      sub_230061918(v12, &qword_27DB14800);
      v24 = 0u;
      v25 = 0u;
    }

    else
    {
      *(&v25 + 1) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
      (*(v18 + 32))(boxed_opaque_existential_0, v12, v17);
    }

    v28 = v24;
    v29 = v25;
    v6 = 0xEA00000000007265;
    v14 = 0x696669746E656469;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
  MEMORY[0x231911790](v14, v6);

  MEMORY[0x231911790](58, 0xE100000000000000);
  sub_2300F7468(&v28, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  v20 = sub_23030F948();
  MEMORY[0x231911790](v20);

  v21 = v26;
  v22 = v27;
  result = sub_230061918(&v28, &qword_27DB14810);
  *a3 = v21;
  a3[1] = v22;
  return result;
}

uint64_t sub_23010E720(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A37B8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23010E7FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23010E78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23010E7FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_230310E48();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_23030FD48();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23010E9C4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23010E8F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23010E8F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_230311048(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23010E9C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_23010EFA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_230311048();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_230311048();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_23007EA34((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_23010EFA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2302A36A0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2302A3614(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_230311048(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}