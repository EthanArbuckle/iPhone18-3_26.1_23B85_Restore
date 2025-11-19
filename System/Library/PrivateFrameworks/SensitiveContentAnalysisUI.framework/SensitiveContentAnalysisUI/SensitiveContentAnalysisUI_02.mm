double sub_1BC66ED90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC200, &qword_1BC761178);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v58 - v4);
  v6._countAndFlagsBits = 0x4C45485F45524F4DLL;
  v6._object = 0xE900000000000050;
  SCLocalizedStringKey.init(stringLiteral:)(v6);
  v7 = v67;
  v8 = v68;
  v9 = type metadata accessor for InterventionScreenModel.Action();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v11 = v7;
  v11[1] = v8;
  v10[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
  *&v10[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 2;
  v66.receiver = v10;
  v66.super_class = v9;
  v12 = objc_msgSendSuper2(&v66, sel_init);
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x98))();
  v15 = OBJC_IVAR___SCUIInterventionScreenModel_config;
  v16 = v5 + *(v2 + 56);
  *v5 = v14;
  sub_1BC66FDD8(v0 + v15, v16, type metadata accessor for InterventionConfig.Layout);
  if (v14 != 1)
  {
    goto LABEL_9;
  }

  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
    {
      v18 = *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

      v19 = sub_1BC759D00();
      (*(*(v19 - 8) + 8))(v16, v19);
LABEL_11:
      v44._countAndFlagsBits = 0x4C45434E4143;
      v44._object = 0xE600000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(v44);
      v45 = v67;
      v46 = v68;
      v47 = objc_allocWithZone(v9);
      v48 = &v47[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
      *v48 = v45;
      v48[1] = v46;
      v47[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
      *&v47[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
      v61.receiver = v47;
      v61.super_class = v9;
      v59 = objc_msgSendSuper2(&v61, sel_init);
      v49._countAndFlagsBits = 0x5F4E4F5F59415453;
      v49._object = 0xEC0000004C4C4143;
      SCLocalizedStringKey.init(stringLiteral:)(v49);
      v50 = v67;
      v51 = v68;
      v52 = objc_allocWithZone(v9);
      v53 = &v52[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
      *v53 = v50;
      v53[1] = v51;
      v52[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
      *&v52[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
      v60.receiver = v52;
      v60.super_class = v9;
      v30 = objc_msgSendSuper2(&v60, sel_init);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1BC66FE40(v16, type metadata accessor for InterventionConfig.Layout);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 7)
  {
LABEL_9:
    v31._countAndFlagsBits = 0x4C45434E4143;
    v31._object = 0xE600000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v31);
    v32 = v67;
    v33 = v68;
    v34 = objc_allocWithZone(v9);
    v35 = &v34[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v35 = v32;
    v35[1] = v33;
    v34[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
    *&v34[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
    v65.receiver = v34;
    v65.super_class = v9;
    v59 = objc_msgSendSuper2(&v65, sel_init);
    v36._countAndFlagsBits = 0x455255535F4D49;
    v36._object = 0xE700000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(v36);
    v37 = v13;
    v38 = v12;
    v40 = v67;
    v39 = v68;
    v41 = objc_allocWithZone(v9);
    v42 = &v41[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
    *v42 = v40;
    v42[1] = v39;
    v12 = v38;
    v13 = v37;
    v41[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
    *&v41[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
    v64.receiver = v41;
    v64.super_class = v9;
    v43 = objc_msgSendSuper2(&v64, sel_init);
    v30 = sub_1BC66008C(v5, &qword_1EBCDC200, &qword_1BC761178);
    goto LABEL_13;
  }

  sub_1BC66FE40(v16, type metadata accessor for InterventionConfig.Layout);
  v20._countAndFlagsBits = 0x4C45434E4143;
  v20._object = 0xE600000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v20);
  v21 = v67;
  v22 = v68;
  v23 = objc_allocWithZone(v9);
  v24 = &v23[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v24 = v21;
  v24[1] = v22;
  v23[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 1;
  *&v23[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 1;
  v63.receiver = v23;
  v63.super_class = v9;
  v59 = objc_msgSendSuper2(&v63, sel_init);
  v25._countAndFlagsBits = 0x45554E49544E4F43;
  v25._object = 0xE800000000000000;
  SCLocalizedStringKey.init(stringLiteral:)(v25);
  v26 = v67;
  v27 = v68;
  v28 = objc_allocWithZone(v9);
  v29 = &v28[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_titleKey];
  *v29 = v26;
  v29[1] = v27;
  v28[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_primary] = 0;
  *&v28[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Action_actionID] = 3;
  v62.receiver = v28;
  v62.super_class = v9;
  v30 = objc_msgSendSuper2(&v62, sel_init);
LABEL_12:
  v43 = v30;
LABEL_13:
  v54 = (*((*v13 & *v0) + 0xA0))(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
  if (v54)
  {
    v57 = swift_allocObject();
    *&result = 3;
    *(v57 + 16) = xmmword_1BC760FF0;
    *(v57 + 32) = v59;
    *(v57 + 40) = v12;
    *(v57 + 48) = v43;
  }

  else
  {
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1BC761000;
    *(v55 + 32) = v59;
    *(v55 + 40) = v43;
  }

  return result;
}

SCUIInterventionScreenModelFactory __swiftcall SCUIInterventionScreenModelFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1BC66FC24()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4450);
  __swift_project_value_buffer(v0, qword_1EBCF4450);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC66FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InterventionScreenModel()
{
  result = qword_1EBCE31A8;
  if (!qword_1EBCE31A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC66FD54@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *a1;
  v9 = *(v2 + 16);
  v10 = sub_1BC6F39FC();
  if (v11)
  {
    v10 = 2;
  }

  result = sub_1BC670408(v10, v4, v5, v8, v6, v7);
  *a2 = result;
  return result;
}

uint64_t sub_1BC66FDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC66FE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1BC66FEA0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v10 = *(sub_1BC759FE0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_1BC759FE0() - 8);
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

uint64_t sub_1BC670078(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1BC66FEA0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1BC759FE0();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1BC6701A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC67022C(a1, a2, a3, *v3, &qword_1EBCDC1F8, &qword_1BC761170, MEMORY[0x1E697B5B0]);
  *v3 = result;
  return result;
}

size_t sub_1BC6701E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC67022C(a1, a2, a3, *v3, &qword_1EBCDC210, &qword_1BC761190, MEMORY[0x1E697B460]);
  *v3 = result;
  return result;
}

size_t sub_1BC67022C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BC670408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, void *a6)
{
  v598 = a6;
  LODWORD(v615) = a5;
  v614 = a2;
  v9 = sub_1BC759FC0();
  v10 = *(v9 - 8);
  v593 = v9;
  v594 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v595 = &v591 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v597 = &v591 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BC759D00();
  v17 = *(v16 - 8);
  v611 = v16;
  v612 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v608 = &v591 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BC759FE0();
  v609 = *(v20 - 8);
  v610 = v20;
  v21 = *(v609 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v596 = &v591 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v592 = &v591 - v24;
  v613 = type metadata accessor for InterventionConfig.Layout(0);
  v25 = *(*(v613 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v613);
  v604 = &v591 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v603 = &v591 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v602 = (&v591 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v607 = (&v591 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v599 = (&v591 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v606 = (&v591 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v601 = &v591 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v600 = &v591 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v591 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v605 = (&v591 - v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC208, &qword_1BC761188);
  v47 = (v46 - 8);
  v48 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v591 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v591 - v52;
  *(&v591 - v52) = a1;
  v54 = v47[14];
  sub_1BC66FDD8(v614, &v591 + v54 - v52, type metadata accessor for InterventionConfig.Layout);
  v55 = v47[18];
  v614 = a3;
  *&v53[v55] = a3;
  v53[v47[22]] = a4;
  v56 = v615;
  v53[v47[26]] = v615;
  v57 = &v51[v47[14]];
  sub_1BC66FDD8(&v53[v54], v57, type metadata accessor for InterventionConfig.Layout);
  if (a1 == 2)
  {
    goto LABEL_103;
  }

  if (a1 == 1)
  {
    if (a4)
    {
      v58 = v614;
      if (a4 == 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              if (v58 == 1)
              {
                v148._countAndFlagsBits = 0xD000000000000034;
                v148._object = 0x80000001BC7708F0;
                SCLocalizedStringKey.init(stringLiteral:)(v148);
                v149 = v676;
                v150 = v677;
                v151 = type metadata accessor for InterventionScreenModel.Bullet();
                v152 = objc_allocWithZone(v151);
                v153 = &v152[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v153 = v149;
                v153[1] = v150;
                v154 = &v152[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                strcpy(&v152[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
                v154[15] = -18;
                v155 = &v152[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v155 = 0;
                *(v155 + 1) = 0;
                v673.receiver = v152;
                v673.super_class = v151;
                v68 = objc_msgSendSuper2(&v673, sel_init);
                goto LABEL_235;
              }

              if (!v58)
              {
                v298._countAndFlagsBits = 0xD000000000000033;
                v298._object = 0x80000001BC770930;
                SCLocalizedStringKey.init(stringLiteral:)(v298);
                v299 = v676;
                v300 = v677;
                v301 = type metadata accessor for InterventionScreenModel.Bullet();
                v302 = objc_allocWithZone(v301);
                v303 = &v302[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v303 = v299;
                v303[1] = v300;
                v304 = &v302[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                *v304 = 0xD000000000000015;
                *(v304 + 1) = 0x80000001BC770970;
                v305 = &v302[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v305 = 0;
                *(v305 + 1) = 0;
                v672.receiver = v302;
                v672.super_class = v301;
                v68 = objc_msgSendSuper2(&v672, sel_init);
                goto LABEL_235;
              }

              goto LABEL_254;
            }

            if (EnumCaseMultiPayload == 3)
            {
              if (v58 == 1)
              {
                v60._countAndFlagsBits = 0xD000000000000038;
                v60._object = 0x80000001BC770870;
                SCLocalizedStringKey.init(stringLiteral:)(v60);
                v61 = v676;
                v62 = v677;
                v63 = type metadata accessor for InterventionScreenModel.Bullet();
                v64 = objc_allocWithZone(v63);
                v65 = &v64[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v65 = v61;
                v65[1] = v62;
                v66 = &v64[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                strcpy(&v64[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
                v66[15] = -18;
                v67 = &v64[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
                *v67 = 0;
                *(v67 + 1) = 0;
                v675.receiver = v64;
                v675.super_class = v63;
                v68 = objc_msgSendSuper2(&v675, sel_init);
LABEL_235:
                v475 = v68;
                sub_1BC66008C(v53, &qword_1EBCDC208, &qword_1BC761188);
                goto LABEL_236;
              }

              if (!v58)
              {
                v331._countAndFlagsBits = 0xD000000000000037;
                v331._object = 0x80000001BC7708B0;
                SCLocalizedStringKey.init(stringLiteral:)(v331);
                v332 = v676;
                v333 = v677;
                v334 = type metadata accessor for InterventionScreenModel.Bullet();
                v335 = objc_allocWithZone(v334);
                v336 = &v335[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
                *v336 = v332;
                v336[1] = v333;
                v337 = &v335[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
                *v337 = 0x732D74656C6C7562;
                *(v337 + 1) = 0xEA00000000006461;
                *&v335[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
                v674.receiver = v335;
                v674.super_class = v334;
                v68 = objc_msgSendSuper2(&v674, sel_init);
                goto LABEL_235;
              }

              goto LABEL_254;
            }

            v176 = v604;
            sub_1BC66FDD8(v57, v604, type metadata accessor for InterventionConfig.Layout);
            v177 = *(v176 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

            (*(v612 + 1))(v176, v611);
            if (v58 != 1)
            {
              if (v58)
              {
                goto LABEL_254;
              }

              goto LABEL_117;
            }

            goto LABEL_124;
          }

          if (!EnumCaseMultiPayload)
          {
            if (v58 == 1)
            {
LABEL_71:
              sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
              v99._countAndFlagsBits = 0xD000000000000026;
              v99._object = 0x80000001BC770AB0;
              SCLocalizedStringKey.init(stringLiteral:)(v99);
              v100 = v676;
              v101 = v677;
              v102 = type metadata accessor for InterventionScreenModel.Bullet();
              v103 = objc_allocWithZone(v102);
              v104 = &v103[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v104 = v100;
              v104[1] = v101;
              v105 = &v103[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v105 = 0xD00000000000001CLL;
              *(v105 + 1) = 0x80000001BC770A60;
              *&v103[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761030;
              v664.receiver = v103;
              v664.super_class = v102;
              v106 = objc_msgSendSuper2(&v664, sel_init);
LABEL_231:
              v475 = v106;
              v514 = v53;
LABEL_232:
              sub_1BC66008C(v514, &qword_1EBCDC208, &qword_1BC761188);
              return v475;
            }

            if (v58)
            {
              goto LABEL_254;
            }

            goto LABEL_186;
          }

          if (!v58)
          {
LABEL_122:
            sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
            v185._countAndFlagsBits = 0xD000000000000028;
            v185._object = 0x80000001BC770A80;
            SCLocalizedStringKey.init(stringLiteral:)(v185);
            v186 = v676;
            v187 = v677;
            v188 = type metadata accessor for InterventionScreenModel.Bullet();
            v189 = objc_allocWithZone(v188);
            v190 = &v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v190 = v186;
            v190[1] = v187;
            v191 = &v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v191 = 0xD000000000000015;
            *(v191 + 1) = 0x80000001BC770970;
            v192 = &v189[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v192 = 0;
            *(v192 + 1) = 0;
            v665.receiver = v189;
            v665.super_class = v188;
            v106 = objc_msgSendSuper2(&v665, sel_init);
            goto LABEL_231;
          }

          if (v58 != 1)
          {
            goto LABEL_254;
          }

          goto LABEL_188;
        }

        if (EnumCaseMultiPayload <= 6)
        {
          if (EnumCaseMultiPayload == 5)
          {
            v107 = v603;
            sub_1BC66FDD8(v57, v603, type metadata accessor for InterventionConfig.Layout);
            v108 = *(v107 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

            (*(v612 + 1))(v107, v611);
            if (!v58)
            {
LABEL_117:
              sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
              v178._countAndFlagsBits = 0xD00000000000002ELL;
              v178._object = 0x80000001BC7709C0;
              SCLocalizedStringKey.init(stringLiteral:)(v178);
              v179 = v676;
              v180 = v677;
              v181 = type metadata accessor for InterventionScreenModel.Bullet();
              v182 = objc_allocWithZone(v181);
              v183 = &v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v183 = v179;
              v183[1] = v180;
              v184 = &v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v184 = 0x732D74656C6C7562;
              *(v184 + 1) = 0xEA00000000006461;
              *&v182[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
              v670.receiver = v182;
              v670.super_class = v181;
              v106 = objc_msgSendSuper2(&v670, sel_init);
              goto LABEL_231;
            }

            if (v58 != 1)
            {
              goto LABEL_254;
            }
          }

          else if (v58 != 1)
          {
            if (!v58)
            {
              v353._countAndFlagsBits = 0xD00000000000003ALL;
              v353._object = 0x80000001BC7709F0;
              SCLocalizedStringKey.init(stringLiteral:)(v353);
              v354 = v676;
              v355 = v677;
              v356 = type metadata accessor for InterventionScreenModel.Bullet();
              v357 = objc_allocWithZone(v356);
              v358 = &v357[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
              *v358 = v354;
              v358[1] = v355;
              v359 = &v357[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
              *v359 = 0x732D74656C6C7562;
              *(v359 + 1) = 0xEA00000000006461;
              *&v357[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
              v667.receiver = v357;
              v667.super_class = v356;
              v68 = objc_msgSendSuper2(&v667, sel_init);
              goto LABEL_235;
            }

            goto LABEL_254;
          }

LABEL_124:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v193._countAndFlagsBits = 0xD00000000000002FLL;
          v193._object = 0x80000001BC770990;
          SCLocalizedStringKey.init(stringLiteral:)(v193);
          v194 = v676;
          v195 = v677;
          v196 = type metadata accessor for InterventionScreenModel.Bullet();
          v197 = objc_allocWithZone(v196);
          v198 = &v197[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v198 = v194;
          v198[1] = v195;
          v199 = &v197[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v197[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-bubble");
          *(v199 + 7) = -4864;
          *&v197[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761020;
          v671.receiver = v197;
          v671.super_class = v196;
          v106 = objc_msgSendSuper2(&v671, sel_init);
          goto LABEL_231;
        }

        if (EnumCaseMultiPayload != 7)
        {
          if (EnumCaseMultiPayload == 8)
          {
            if (v58)
            {
              if (v58 != 1)
              {
                goto LABEL_254;
              }

              goto LABEL_71;
            }

LABEL_186:
            sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
            v338._countAndFlagsBits = 0xD000000000000025;
            v338._object = 0x80000001BC770AE0;
            SCLocalizedStringKey.init(stringLiteral:)(v338);
            v339 = v676;
            v340 = v677;
            v341 = type metadata accessor for InterventionScreenModel.Bullet();
            v342 = objc_allocWithZone(v341);
            v343 = &v342[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v343 = v339;
            v343[1] = v340;
            v344 = &v342[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v344 = 0xD000000000000015;
            *(v344 + 1) = 0x80000001BC770970;
            v345 = &v342[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v345 = 0;
            *(v345 + 1) = 0;
            v663.receiver = v342;
            v663.super_class = v341;
            v106 = objc_msgSendSuper2(&v663, sel_init);
            goto LABEL_231;
          }

          if (v58 != 1)
          {
            if (v58)
            {
              goto LABEL_254;
            }

            goto LABEL_122;
          }

LABEL_188:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v346._countAndFlagsBits = 0xD000000000000029;
          v346._object = 0x80000001BC770A30;
          SCLocalizedStringKey.init(stringLiteral:)(v346);
          v347 = v676;
          v348 = v677;
          v349 = type metadata accessor for InterventionScreenModel.Bullet();
          v350 = objc_allocWithZone(v349);
          v351 = &v350[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v351 = v347;
          v351[1] = v348;
          v352 = &v350[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v352 = 0xD00000000000001CLL;
          *(v352 + 1) = 0x80000001BC770A60;
          *&v350[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761030;
          v666.receiver = v350;
          v666.super_class = v349;
          v106 = objc_msgSendSuper2(&v666, sel_init);
          goto LABEL_231;
        }

        v156 = v602;
        sub_1BC66FDD8(v57, v602, type metadata accessor for InterventionConfig.Layout);
        v158 = *v156;
        v157 = v156[1];

        if (v58 == 1)
        {

          goto LABEL_124;
        }

        if (!v58)
        {
          v306 = sub_1BC66DFB8(v158);

          if (v306)
          {
            v307._countAndFlagsBits = 0xD00000000000003ALL;
            v307._object = 0x80000001BC7709F0;
            SCLocalizedStringKey.init(stringLiteral:)(v307);
            v308 = v676;
            v309 = v677;
            v310 = type metadata accessor for InterventionScreenModel.Bullet();
            v311 = objc_allocWithZone(v310);
            v312 = &v311[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v312 = v308;
            v312[1] = v309;
            v313 = &v311[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v313 = 0x732D74656C6C7562;
            *(v313 + 1) = 0xEA00000000006461;
            *&v311[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v668.receiver = v311;
            v668.super_class = v310;
            v68 = objc_msgSendSuper2(&v668, sel_init);
          }

          else
          {
            v515._countAndFlagsBits = 0xD00000000000002ELL;
            v515._object = 0x80000001BC7709C0;
            SCLocalizedStringKey.init(stringLiteral:)(v515);
            v516 = v676;
            v517 = v677;
            v518 = type metadata accessor for InterventionScreenModel.Bullet();
            v519 = objc_allocWithZone(v518);
            v520 = &v519[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v520 = v516;
            v520[1] = v517;
            v521 = &v519[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v521 = 0x732D74656C6C7562;
            *(v521 + 1) = 0xEA00000000006461;
            *&v519[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v669.receiver = v519;
            v669.super_class = v518;
            v68 = objc_msgSendSuper2(&v669, sel_init);
          }

          goto LABEL_235;
        }

LABEL_253:

        goto LABEL_254;
      }

      sub_1BC66008C(v53, &qword_1EBCDC208, &qword_1BC761188);
      swift_getEnumCaseMultiPayload();
      goto LABEL_104;
    }

    v79 = swift_getEnumCaseMultiPayload();
    if (v79 <= 4)
    {
      v80 = v614;
      if (v79 > 1)
      {
        if (v79 == 2)
        {
          if (v614 == 1)
          {
            v159._countAndFlagsBits = 0xD000000000000034;
            v159._object = 0x80000001BC770BB0;
            SCLocalizedStringKey.init(stringLiteral:)(v159);
            v160 = v676;
            v161 = v677;
            v162 = type metadata accessor for InterventionScreenModel.Bullet();
            v163 = objc_allocWithZone(v162);
            v164 = &v163[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v164 = v160;
            v164[1] = v161;
            v165 = &v163[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v165 = 0x6E2D74656C6C7562;
            *(v165 + 1) = 0xEF7972746E652D6FLL;
            *&v163[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v660.receiver = v163;
            v660.super_class = v162;
            v68 = objc_msgSendSuper2(&v660, sel_init);
            goto LABEL_235;
          }

          if (!v614)
          {
            v314._countAndFlagsBits = 0xD000000000000033;
            v314._object = 0x80000001BC770BF0;
            SCLocalizedStringKey.init(stringLiteral:)(v314);
            v315 = v676;
            v316 = v677;
            v317 = type metadata accessor for InterventionScreenModel.Bullet();
            v318 = objc_allocWithZone(v317);
            v319 = &v318[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v319 = v315;
            v319[1] = v316;
            v320 = &v318[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v320 = 0xD000000000000014;
            *(v320 + 1) = 0x80000001BC770C30;
            v321 = &v318[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v321 = 0;
            *(v321 + 1) = 0;
            v659.receiver = v318;
            v659.super_class = v317;
            v68 = objc_msgSendSuper2(&v659, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        if (v79 == 3)
        {
          if (v614 == 1)
          {
            v81._countAndFlagsBits = 0xD000000000000038;
            v81._object = 0x80000001BC770B10;
            SCLocalizedStringKey.init(stringLiteral:)(v81);
            v82 = v676;
            v83 = v677;
            v84 = type metadata accessor for InterventionScreenModel.Bullet();
            v85 = objc_allocWithZone(v84);
            v86 = &v85[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v86 = v82;
            v86[1] = v83;
            v87 = &v85[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v87 = 0x6E2D74656C6C7562;
            *(v87 + 1) = 0xEF7972746E652D6FLL;
            *&v85[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v662.receiver = v85;
            v662.super_class = v84;
            v68 = objc_msgSendSuper2(&v662, sel_init);
            goto LABEL_235;
          }

          if (!v614)
          {
            v360._countAndFlagsBits = 0xD000000000000037;
            v360._object = 0x80000001BC770B50;
            SCLocalizedStringKey.init(stringLiteral:)(v360);
            v361 = v676;
            v362 = v677;
            v363 = type metadata accessor for InterventionScreenModel.Bullet();
            v364 = objc_allocWithZone(v363);
            v365 = &v364[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v365 = v361;
            v365[1] = v362;
            v366 = &v364[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v366 = 0xD000000000000013;
            *(v366 + 1) = 0x80000001BC770B90;
            v367 = &v364[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v367 = 0;
            *(v367 + 1) = 0;
            v661.receiver = v364;
            v661.super_class = v363;
            v68 = objc_msgSendSuper2(&v661, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        v116 = v606;
        sub_1BC66FDD8(v57, v606, type metadata accessor for InterventionConfig.Layout);
        v200 = *(v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

        if (v80 == 1)
        {
          (*(v612 + 1))(v116, v611);
LABEL_133:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v208._countAndFlagsBits = 0xD00000000000002FLL;
          v208._object = 0x80000001BC770D30;
          SCLocalizedStringKey.init(stringLiteral:)(v208);
          v209 = v676;
          v210 = v677;
          v211 = type metadata accessor for InterventionScreenModel.Bullet();
          v212 = objc_allocWithZone(v211);
          v213 = &v212[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v213 = v209;
          v213[1] = v210;
          v214 = &v212[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v214 = 0xD000000000000010;
          *(v214 + 1) = 0x80000001BC770C90;
          *&v212[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
          v654.receiver = v212;
          v654.super_class = v211;
          v106 = objc_msgSendSuper2(&v654, sel_init);
          goto LABEL_231;
        }

        if (!v80)
        {
          v368._countAndFlagsBits = 0xD00000000000002ELL;
          v368._object = 0x80000001BC770D60;
          SCLocalizedStringKey.init(stringLiteral:)(v368);
          v369 = v676;
          v370 = v677;
          v371 = type metadata accessor for InterventionScreenModel.Bullet();
          v372 = objc_allocWithZone(v371);
          v373 = &v372[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v373 = v369;
          v373[1] = v370;
          v374 = &v372[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v374 = 0xD000000000000013;
          *(v374 + 1) = 0x80000001BC770B90;
          v375 = &v372[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v375 = 0;
          *(v375 + 1) = 0;
          v653.receiver = v372;
          v653.super_class = v371;
          v376 = objc_msgSendSuper2(&v653, sel_init);
LABEL_221:
          v475 = v376;
          sub_1BC66008C(v53, &qword_1EBCDC208, &qword_1BC761188);
          (*(v612 + 1))(v116, v611);
LABEL_236:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          return v475;
        }

        goto LABEL_252;
      }

      if (!v79)
      {
        if (v614 == 1)
        {
LABEL_78:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v109._countAndFlagsBits = 0xD000000000000026;
          v109._object = 0x80000001BC770E30;
          SCLocalizedStringKey.init(stringLiteral:)(v109);
          v110 = v676;
          v111 = v677;
          v112 = type metadata accessor for InterventionScreenModel.Bullet();
          v113 = objc_allocWithZone(v112);
          v114 = &v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v114 = v110;
          v114[1] = v111;
          v115 = &v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-dancers");
          v115[15] = -18;
          *&v113[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761060;
          v649.receiver = v113;
          v649.super_class = v112;
          v106 = objc_msgSendSuper2(&v649, sel_init);
          goto LABEL_231;
        }

        if (v614)
        {
          goto LABEL_254;
        }

        goto LABEL_196;
      }

      if (!v614)
      {
LABEL_131:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v201._countAndFlagsBits = 0xD000000000000028;
        v201._object = 0x80000001BC770E00;
        SCLocalizedStringKey.init(stringLiteral:)(v201);
        v202 = v676;
        v203 = v677;
        v204 = type metadata accessor for InterventionScreenModel.Bullet();
        v205 = objc_allocWithZone(v204);
        v206 = &v205[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v206 = v202;
        v206[1] = v203;
        v207 = &v205[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v207 = 0xD000000000000014;
        *(v207 + 1) = 0x80000001BC770C30;
        *&v205[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761070;
        v650.receiver = v205;
        v650.super_class = v204;
        v106 = objc_msgSendSuper2(&v650, sel_init);
        goto LABEL_231;
      }

      if (v614 != 1)
      {
        goto LABEL_254;
      }

      goto LABEL_200;
    }

    if (v79 <= 6)
    {
      if (v79 != 5)
      {
        if (v614 != 1)
        {
          if (!v614)
          {
            v399._countAndFlagsBits = 0xD00000000000003ALL;
            v399._object = 0x80000001BC770D90;
            SCLocalizedStringKey.init(stringLiteral:)(v399);
            v400 = v676;
            v401 = v677;
            v402 = type metadata accessor for InterventionScreenModel.Bullet();
            v403 = objc_allocWithZone(v402);
            v404 = &v403[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v404 = v400;
            v404[1] = v401;
            v405 = &v403[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v405 = 0xD000000000000013;
            *(v405 + 1) = 0x80000001BC770B90;
            v406 = &v403[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v406 = 0;
            *(v406 + 1) = 0;
            v652.receiver = v403;
            v652.super_class = v402;
            v68 = objc_msgSendSuper2(&v652, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_133;
      }

      v116 = v607;
      sub_1BC66FDD8(v57, v607, type metadata accessor for InterventionConfig.Layout);
      v117 = *(v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

      if (v614 != 1)
      {
        if (!v614)
        {
          v384._countAndFlagsBits = 0xD000000000000031;
          v384._object = 0x80000001BC770CB0;
          SCLocalizedStringKey.init(stringLiteral:)(v384);
          v385 = v676;
          v386 = v677;
          v387 = type metadata accessor for InterventionScreenModel.Bullet();
          v388 = objc_allocWithZone(v387);
          v389 = &v388[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v389 = v385;
          v389[1] = v386;
          v390 = &v388[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v390 = 0xD000000000000013;
          *(v390 + 1) = 0x80000001BC770B90;
          v391 = &v388[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v391 = 0;
          *(v391 + 1) = 0;
          v657.receiver = v388;
          v657.super_class = v387;
          v376 = objc_msgSendSuper2(&v657, sel_init);
          goto LABEL_221;
        }

LABEL_252:
        (*(v612 + 1))(v116, v611);
        goto LABEL_254;
      }

      (*(v612 + 1))(v116, v611);
    }

    else
    {
      if (v79 != 7)
      {
        if (v79 == 8)
        {
          if (v614)
          {
            if (v614 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_78;
          }

LABEL_196:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v377._countAndFlagsBits = 0xD000000000000025;
          v377._object = 0x80000001BC770E60;
          SCLocalizedStringKey.init(stringLiteral:)(v377);
          v378 = v676;
          v379 = v677;
          v380 = type metadata accessor for InterventionScreenModel.Bullet();
          v381 = objc_allocWithZone(v380);
          v382 = &v381[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v382 = v378;
          v382[1] = v379;
          v383 = &v381[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v383 = 0xD000000000000014;
          *(v383 + 1) = 0x80000001BC770C30;
          *&v381[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761070;
          v648.receiver = v381;
          v648.super_class = v380;
          v106 = objc_msgSendSuper2(&v648, sel_init);
          goto LABEL_231;
        }

        if (v614 != 1)
        {
          if (v614)
          {
            goto LABEL_254;
          }

          goto LABEL_131;
        }

LABEL_200:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v392._countAndFlagsBits = 0xD000000000000029;
        v392._object = 0x80000001BC770DD0;
        SCLocalizedStringKey.init(stringLiteral:)(v392);
        v393 = v676;
        v394 = v677;
        v395 = type metadata accessor for InterventionScreenModel.Bullet();
        v396 = objc_allocWithZone(v395);
        v397 = &v396[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v397 = v393;
        v397[1] = v394;
        v398 = &v396[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v396[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-dancers");
        v398[15] = -18;
        *&v396[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761060;
        v651.receiver = v396;
        v651.super_class = v395;
        v106 = objc_msgSendSuper2(&v651, sel_init);
        goto LABEL_231;
      }

      v166 = v599;
      sub_1BC66FDD8(v57, v599, type metadata accessor for InterventionConfig.Layout);
      v168 = *v166;
      v167 = v166[1];

      if (v614 != 1)
      {
        if (!v614)
        {
          v322 = sub_1BC66DFB8(v168);

          if (v322)
          {
            v323._countAndFlagsBits = 0xD00000000000003CLL;
            v323._object = 0x80000001BC770CF0;
            SCLocalizedStringKey.init(stringLiteral:)(v323);
            v324 = v676;
            v325 = v677;
            v326 = type metadata accessor for InterventionScreenModel.Bullet();
            v327 = objc_allocWithZone(v326);
            v328 = &v327[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v328 = v324;
            v328[1] = v325;
            v329 = &v327[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v329 = 0xD000000000000013;
            *(v329 + 1) = 0x80000001BC770B90;
            v330 = &v327[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v330 = 0;
            *(v330 + 1) = 0;
            v655.receiver = v327;
            v655.super_class = v326;
            v68 = objc_msgSendSuper2(&v655, sel_init);
          }

          else
          {
            v522._countAndFlagsBits = 0xD000000000000031;
            v522._object = 0x80000001BC770CB0;
            SCLocalizedStringKey.init(stringLiteral:)(v522);
            v523 = v676;
            v524 = v677;
            v525 = type metadata accessor for InterventionScreenModel.Bullet();
            v526 = objc_allocWithZone(v525);
            v527 = &v526[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v527 = v523;
            v527[1] = v524;
            v528 = &v526[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v528 = 0xD000000000000013;
            *(v528 + 1) = 0x80000001BC770B90;
            v529 = &v526[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v529 = 0;
            *(v529 + 1) = 0;
            v656.receiver = v526;
            v656.super_class = v525;
            v68 = objc_msgSendSuper2(&v656, sel_init);
          }

          goto LABEL_235;
        }

        goto LABEL_253;
      }
    }

    sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
    v169._countAndFlagsBits = 0xD000000000000032;
    v169._object = 0x80000001BC770C50;
    SCLocalizedStringKey.init(stringLiteral:)(v169);
    v170 = v676;
    v171 = v677;
    v172 = type metadata accessor for InterventionScreenModel.Bullet();
    v173 = objc_allocWithZone(v172);
    v174 = &v173[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v174 = v170;
    v174[1] = v171;
    v175 = &v173[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v175 = 0xD000000000000010;
    *(v175 + 1) = 0x80000001BC770C90;
    *&v173[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
    v658.receiver = v173;
    v658.super_class = v172;
    v106 = objc_msgSendSuper2(&v658, sel_init);
    goto LABEL_231;
  }

  v69 = v614;
  if (a1)
  {
    goto LABEL_254;
  }

  if (!a4)
  {
    v88 = swift_getEnumCaseMultiPayload();
    if (v88 <= 4)
    {
      if (v88 > 1)
      {
        if (v88 == 2)
        {
          if (v69 == 1)
          {
            v223._countAndFlagsBits = 0xD00000000000002CLL;
            v223._object = 0x80000001BC771260;
            SCLocalizedStringKey.init(stringLiteral:)(v223);
            v224 = v676;
            v225 = v677;
            v226 = type metadata accessor for InterventionScreenModel.Bullet();
            v227 = objc_allocWithZone(v226);
            v228 = &v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v228 = v224;
            v228[1] = v225;
            v229 = &v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v229 = 0x6E2D74656C6C7562;
            *(v229 + 1) = 0xEF7972746E652D6FLL;
            *&v227[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v626.receiver = v227;
            v626.super_class = v226;
            v68 = objc_msgSendSuper2(&v626, sel_init);
            goto LABEL_235;
          }

          if (!v69)
          {
            v415._countAndFlagsBits = 0xD00000000000002BLL;
            v415._object = 0x80000001BC771290;
            SCLocalizedStringKey.init(stringLiteral:)(v415);
            v416 = v676;
            v417 = v677;
            v418 = type metadata accessor for InterventionScreenModel.Bullet();
            v419 = objc_allocWithZone(v418);
            v420 = &v419[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v420 = v416;
            v420[1] = v417;
            v421 = &v419[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v421 = 0xD000000000000014;
            *(v421 + 1) = 0x80000001BC770C30;
            v422 = &v419[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v422 = 0;
            *(v422 + 1) = 0;
            v625.receiver = v419;
            v625.super_class = v418;
            v68 = objc_msgSendSuper2(&v625, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        if (v88 == 3)
        {
          if (v69 == 1)
          {
            v89._countAndFlagsBits = 0xD000000000000030;
            v89._object = 0x80000001BC7711F0;
            SCLocalizedStringKey.init(stringLiteral:)(v89);
            v90 = v676;
            v91 = v677;
            v92 = type metadata accessor for InterventionScreenModel.Bullet();
            v93 = objc_allocWithZone(v92);
            v94 = &v93[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v94 = v90;
            v94[1] = v91;
            v95 = &v93[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v95 = 0x6E2D74656C6C7562;
            *(v95 + 1) = 0xEF7972746E652D6FLL;
            *&v93[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761050;
            v628.receiver = v93;
            v628.super_class = v92;
            v68 = objc_msgSendSuper2(&v628, sel_init);
            goto LABEL_235;
          }

          if (!v69)
          {
            v459._countAndFlagsBits = 0xD00000000000002FLL;
            v459._object = 0x80000001BC771230;
            SCLocalizedStringKey.init(stringLiteral:)(v459);
            v460 = v676;
            v461 = v677;
            v462 = type metadata accessor for InterventionScreenModel.Bullet();
            v463 = objc_allocWithZone(v462);
            v464 = &v463[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v464 = v460;
            v464[1] = v461;
            v465 = &v463[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v465 = 0xD000000000000013;
            *(v465 + 1) = 0x80000001BC770B90;
            v466 = &v463[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v466 = 0;
            *(v466 + 1) = 0;
            v627.receiver = v463;
            v627.super_class = v462;
            v68 = objc_msgSendSuper2(&v627, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        v116 = v605;
        sub_1BC66FDD8(v57, v605, type metadata accessor for InterventionConfig.Layout);
        v261 = *(v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

        if (v69 != 1)
        {
          if (!v69)
          {
            v467._countAndFlagsBits = 0xD000000000000026;
            v467._object = 0x80000001BC771350;
            SCLocalizedStringKey.init(stringLiteral:)(v467);
            v468 = v676;
            v469 = v677;
            v470 = type metadata accessor for InterventionScreenModel.Bullet();
            v471 = objc_allocWithZone(v470);
            v472 = &v471[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v472 = v468;
            v472[1] = v469;
            v473 = &v471[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v473 = 0xD000000000000013;
            *(v473 + 1) = 0x80000001BC770B90;
            v474 = &v471[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v474 = 0;
            *(v474 + 1) = 0;
            v621.receiver = v471;
            v621.super_class = v470;
            v376 = objc_msgSendSuper2(&v621, sel_init);
            goto LABEL_221;
          }

          goto LABEL_252;
        }

        (*(v612 + 1))(v116, v611);
LABEL_161:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v270._countAndFlagsBits = 0xD000000000000027;
        v270._object = 0x80000001BC771320;
        SCLocalizedStringKey.init(stringLiteral:)(v270);
        v271 = v676;
        v272 = v677;
        v273 = type metadata accessor for InterventionScreenModel.Bullet();
        v274 = objc_allocWithZone(v273);
        v275 = &v274[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v275 = v271;
        v275[1] = v272;
        v276 = &v274[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v276 = 0xD000000000000010;
        *(v276 + 1) = 0x80000001BC770C90;
        *&v274[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
        v622.receiver = v274;
        v622.super_class = v273;
        v106 = objc_msgSendSuper2(&v622, sel_init);
        goto LABEL_231;
      }

      if (!v88)
      {
        if (v69 == 1)
        {
LABEL_90:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v128._countAndFlagsBits = 0xD00000000000001ELL;
          v128._object = 0x80000001BC771440;
          SCLocalizedStringKey.init(stringLiteral:)(v128);
          v129 = v676;
          v130 = v677;
          v131 = type metadata accessor for InterventionScreenModel.Bullet();
          v132 = objc_allocWithZone(v131);
          v133 = &v132[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v133 = v129;
          v133[1] = v130;
          v134 = &v132[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          strcpy(&v132[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-family");
          *(v134 + 7) = -4864;
          v135 = &v132[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v135 = 0x1000000000000019;
          *(v135 + 1) = 0x80000001BC7713F0;
          v617.receiver = v132;
          v617.super_class = v131;
          v106 = objc_msgSendSuper2(&v617, sel_init);
          goto LABEL_231;
        }

        if (v69)
        {
          goto LABEL_254;
        }

        goto LABEL_223;
      }

      if (!v69)
      {
LABEL_159:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v262._countAndFlagsBits = 0xD000000000000020;
        v262._object = 0x80000001BC771410;
        SCLocalizedStringKey.init(stringLiteral:)(v262);
        v263 = v676;
        v264 = v677;
        v265 = type metadata accessor for InterventionScreenModel.Bullet();
        v266 = objc_allocWithZone(v265);
        v267 = &v266[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v267 = v263;
        v267[1] = v264;
        v268 = &v266[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v268 = 0xD000000000000013;
        *(v268 + 1) = 0x80000001BC770B90;
        v269 = &v266[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v269 = 0;
        *(v269 + 1) = 0;
        v618.receiver = v266;
        v618.super_class = v265;
        v106 = objc_msgSendSuper2(&v618, sel_init);
        goto LABEL_231;
      }

      if (v69 != 1)
      {
        goto LABEL_254;
      }

      goto LABEL_225;
    }

    if (v88 <= 6)
    {
      if (v88 != 5)
      {
        if (v69 != 1)
        {
          if (!v69)
          {
            v492._countAndFlagsBits = 0xD000000000000032;
            v492._object = 0x80000001BC771380;
            SCLocalizedStringKey.init(stringLiteral:)(v492);
            v493 = v676;
            v494 = v677;
            v495 = type metadata accessor for InterventionScreenModel.Bullet();
            v496 = objc_allocWithZone(v495);
            v497 = &v496[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v497 = v493;
            v497[1] = v494;
            v498 = &v496[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v498 = 0xD000000000000013;
            *(v498 + 1) = 0x80000001BC770B90;
            v499 = &v496[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v499 = 0;
            *(v499 + 1) = 0;
            v620.receiver = v496;
            v620.super_class = v495;
            v68 = objc_msgSendSuper2(&v620, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_161;
      }

      sub_1BC66FDD8(v57, v44, type metadata accessor for InterventionConfig.Layout);
      v136 = *&v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

      (*(v612 + 1))(v44, v611);
      if (v69 != 1)
      {
        if (v69)
        {
          goto LABEL_254;
        }

        goto LABEL_142;
      }
    }

    else
    {
      if (v88 != 7)
      {
        if (v88 == 8)
        {
          if (v69)
          {
            if (v69 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_90;
          }

LABEL_223:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v476._countAndFlagsBits = 0xD00000000000001DLL;
          v476._object = 0x80000001BC771460;
          SCLocalizedStringKey.init(stringLiteral:)(v476);
          v477 = v676;
          v478 = v677;
          v479 = type metadata accessor for InterventionScreenModel.Bullet();
          v480 = objc_allocWithZone(v479);
          v481 = &v480[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v481 = v477;
          v481[1] = v478;
          v482 = &v480[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v482 = 0xD000000000000013;
          *(v482 + 1) = 0x80000001BC770B90;
          v483 = &v480[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v483 = 0;
          *(v483 + 1) = 0;
          v616.receiver = v480;
          v616.super_class = v479;
          v106 = objc_msgSendSuper2(&v616, sel_init);
          goto LABEL_231;
        }

        if (v69 != 1)
        {
          if (v69)
          {
            goto LABEL_254;
          }

          goto LABEL_159;
        }

LABEL_225:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v484._countAndFlagsBits = 0xD000000000000021;
        v484._object = 0x80000001BC7713C0;
        SCLocalizedStringKey.init(stringLiteral:)(v484);
        v485 = v676;
        v486 = v677;
        v487 = type metadata accessor for InterventionScreenModel.Bullet();
        v488 = objc_allocWithZone(v487);
        v489 = &v488[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v489 = v485;
        v489[1] = v486;
        v490 = &v488[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v488[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-family");
        *(v490 + 7) = -4864;
        v491 = &v488[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v491 = 0x1000000000000019;
        *(v491 + 1) = 0x80000001BC7713F0;
        v619.receiver = v488;
        v619.super_class = v487;
        v106 = objc_msgSendSuper2(&v619, sel_init);
        goto LABEL_231;
      }

      if (!v69)
      {
LABEL_142:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v230._countAndFlagsBits = 0xD000000000000029;
        v230._object = 0x80000001BC7712F0;
        SCLocalizedStringKey.init(stringLiteral:)(v230);
        v231 = v676;
        v232 = v677;
        v233 = type metadata accessor for InterventionScreenModel.Bullet();
        v234 = objc_allocWithZone(v233);
        v235 = &v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v235 = v231;
        v235[1] = v232;
        v236 = &v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v236 = 0xD000000000000013;
        *(v236 + 1) = 0x80000001BC770B90;
        v237 = &v234[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v237 = 0;
        *(v237 + 1) = 0;
        v623.receiver = v234;
        v623.super_class = v233;
        v106 = objc_msgSendSuper2(&v623, sel_init);
        goto LABEL_231;
      }

      if (v69 != 1)
      {
        goto LABEL_254;
      }
    }

    sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
    v423._countAndFlagsBits = 0xD00000000000002ALL;
    v423._object = 0x80000001BC7712C0;
    SCLocalizedStringKey.init(stringLiteral:)(v423);
    v424 = v676;
    v425 = v677;
    v426 = type metadata accessor for InterventionScreenModel.Bullet();
    v427 = objc_allocWithZone(v426);
    v428 = &v427[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v428 = v424;
    v428[1] = v425;
    v429 = &v427[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v429 = 0xD000000000000010;
    *(v429 + 1) = 0x80000001BC770C90;
    *&v427[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761040;
    v624.receiver = v427;
    v624.super_class = v426;
    v106 = objc_msgSendSuper2(&v624, sel_init);
    goto LABEL_231;
  }

  if (a4 != 1)
  {
    if (v614 != 1)
    {
      if (!v614)
      {
        v96 = swift_getEnumCaseMultiPayload();
        if (v96 <= 1)
        {
          if (!v96)
          {
            sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
            goto LABEL_172;
          }

          if (v96 == 1)
          {
            sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
            goto LABEL_102;
          }
        }

        else if (v96 != 2)
        {
          if (v96 != 8)
          {
            if (v96 != 9)
            {
              goto LABEL_103;
            }

LABEL_102:
            v139._countAndFlagsBits = 0xD000000000000020;
            v139._object = 0x80000001BC770F90;
            SCLocalizedStringKey.init(stringLiteral:)(v139);
            v140 = v676;
            v141 = v677;
            v142 = type metadata accessor for InterventionScreenModel.Bullet();
            v143 = objc_allocWithZone(v142);
            v144 = &v143[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v144 = v140;
            v144[1] = v141;
            v145 = &v143[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v145 = 0xD000000000000015;
            *(v145 + 1) = 0x80000001BC770970;
            v146 = &v143[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
            *v146 = 0;
            *(v146 + 1) = 0;
            v641.receiver = v143;
            v641.super_class = v142;
            v106 = objc_msgSendSuper2(&v641, sel_init);
            goto LABEL_231;
          }

LABEL_172:
          v290._countAndFlagsBits = 0xD00000000000001DLL;
          v290._object = 0x80000001BC770FC0;
          SCLocalizedStringKey.init(stringLiteral:)(v290);
          v291 = v676;
          v292 = v677;
          v293 = type metadata accessor for InterventionScreenModel.Bullet();
          v294 = objc_allocWithZone(v293);
          v295 = &v294[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v295 = v291;
          v295[1] = v292;
          v296 = &v294[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v296 = 0xD000000000000015;
          *(v296 + 1) = 0x80000001BC770970;
          v297 = &v294[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
          *v297 = 0;
          *(v297 + 1) = 0;
          v640.receiver = v294;
          v640.super_class = v293;
          v106 = objc_msgSendSuper2(&v640, sel_init);
          goto LABEL_231;
        }
      }

LABEL_103:
      sub_1BC66008C(v53, &qword_1EBCDC208, &qword_1BC761188);
      goto LABEL_104;
    }

    if ((v56 & 1) == 0)
    {
      sub_1BC66008C(v53, &qword_1EBCDC208, &qword_1BC761188);
      v137 = swift_getEnumCaseMultiPayload();
      if (v137 <= 5 && (v137 == 4 || v137 == 5))
      {
        v138 = *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

        (*(v612 + 1))(v57, v611);
        return 0;
      }

LABEL_104:
      sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
      return 0;
    }

    v97 = swift_getEnumCaseMultiPayload();
    if (v97 <= 5)
    {
      if (v97 == 4 || v97 == 5)
      {
        v98 = *&v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48)];

        (*(v612 + 1))(v57, v611);
LABEL_230:
        v507._countAndFlagsBits = 0xD00000000000001BLL;
        v507._object = 0x80000001BC770F70;
        SCLocalizedStringKey.init(stringLiteral:)(v507);
        v508 = v676;
        v509 = v677;
        v510 = type metadata accessor for InterventionScreenModel.Bullet();
        v511 = objc_allocWithZone(v510);
        v512 = &v511[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v512 = v508;
        v512[1] = v509;
        v513 = &v511[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v513 = 0x6C2D74656C6C7562;
        *(v513 + 1) = 0xEB000000006B636FLL;
        *&v511[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v642.receiver = v511;
        v642.super_class = v510;
        v106 = objc_msgSendSuper2(&v642, sel_init);
        goto LABEL_231;
      }

      goto LABEL_228;
    }

    if (v97 == 6)
    {
      sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
      goto LABEL_230;
    }

    if (v97 != 7)
    {
LABEL_228:
      v500._countAndFlagsBits = 0xD00000000000001ELL;
      v500._object = 0x80000001BC770E90;
      SCLocalizedStringKey.init(stringLiteral:)(v500);
      v501 = v676;
      v502 = v677;
      v503 = type metadata accessor for InterventionScreenModel.Bullet();
      v504 = objc_allocWithZone(v503);
      v505 = &v504[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v505 = v501;
      v505[1] = v502;
      v506 = &v504[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v506 = 0x6C2D74656C6C7562;
      *(v506 + 1) = 0xEB000000006B636FLL;
      *&v504[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
      v647.receiver = v504;
      v647.super_class = v503;
      v68 = objc_msgSendSuper2(&v647, sel_init);
      goto LABEL_235;
    }

    v278 = *v57;
    v277 = *(v57 + 1);
    v279 = *(*v57 + 16);
    if (v279)
    {
      v607 = *(v57 + 1);
      v613 = v53;
      v676 = MEMORY[0x1E69E7CC0];
      sub_1BC6701A4(0, v279, 0);
      v280 = v676;
      v281 = *(v612 + 2);
      v282 = *(v612 + 80);
      v606 = v278;
      v283 = &v278[(v282 + 32) & ~v282];
      v614 = *(v612 + 9);
      v615 = v281;
      v612 = (v612 + 16);
      v284 = (v612 - 8);
      v285 = v592;
      do
      {
        v286 = v608;
        v287 = v611;
        v615(v608, v283, v611);
        sub_1BC759CC0();
        (*v284)(v286, v287);
        v676 = v280;
        v289 = *(v280 + 16);
        v288 = *(v280 + 24);
        if (v289 >= v288 >> 1)
        {
          sub_1BC6701A4(v288 > 1, v289 + 1, 1);
          v280 = v676;
        }

        *(v280 + 16) = v289 + 1;
        (*(v609 + 32))(v280 + ((*(v609 + 80) + 32) & ~*(v609 + 80)) + *(v609 + 72) * v289, v285, v610);
        v283 += v614;
        --v279;
      }

      while (v279);

      v53 = v613;
      v277 = v607;
    }

    else
    {
      v530 = *v57;

      v280 = MEMORY[0x1E69E7CC0];
    }

    v676 = v280;
    sub_1BC670078(v277);
    v531 = v676;
    v532 = *(v676 + 16);
    v116 = v598;
    v534 = v595;
    v533 = v596;
    v535 = v610;
    if (!v532)
    {

      v577._countAndFlagsBits = 0xD000000000000022;
      v577._object = 0x80000001BC770F40;
      SCLocalizedStringKey.init(stringLiteral:)(v577);
      v578 = v676;
      v579 = v677;
      v580 = type metadata accessor for InterventionScreenModel.Bullet();
      v581 = objc_allocWithZone(v580);
      v582 = &v581[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v582 = v578;
      v582[1] = v579;
      v583 = &v581[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v583 = 0x6C2D74656C6C7562;
      *(v583 + 1) = 0xEB000000006B636FLL;
      *&v581[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
      v643.receiver = v581;
      v643.super_class = v580;
      v106 = objc_msgSendSuper2(&v643, sel_init);
      goto LABEL_231;
    }

    if (v532 == 1)
    {
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v560._countAndFlagsBits = 0xD000000000000022;
      v560._object = 0x80000001BC770F10;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v560);
      v561 = v593;
      v562 = v594;
      if (*(v531 + 16))
      {
        v563 = v609;
        v564 = v596;
        (*(v609 + 16))(v596, v531 + ((*(v563 + 80) + 32) & ~*(v563 + 80)), v610);

        (*(v562 + 104))(v534, *MEMORY[0x1E697B5A0], v561);
        v565 = sub_1BC75A0F0();
        v567 = v566;
        (*(v562 + 8))(v534, v561);
        (*(v563 + 8))(v564, v610);
        v568._countAndFlagsBits = v565;
        v568._object = v567;
        v569 = v597;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v568);

        v570._countAndFlagsBits = 0;
        v570._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v570);
        SCLocalizedStringKey.init(stringInterpolation:)(v569, &v676);
        v571 = v676;
        v572 = v677;
        v573 = type metadata accessor for InterventionScreenModel.Bullet();
        v574 = objc_allocWithZone(v573);
        v575 = &v574[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v575 = v571;
        v575[1] = v572;
        v576 = &v574[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v576 = 0x6C2D74656C6C7562;
        *(v576 + 1) = 0xEB000000006B636FLL;
        *&v574[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v644.receiver = v574;
        v644.super_class = v573;
        v106 = objc_msgSendSuper2(&v644, sel_init);
        goto LABEL_231;
      }

      __break(1u);
    }

    else
    {
      v536 = v594;
      if (v532 != 2)
      {

        v584._countAndFlagsBits = 0xD000000000000022;
        v584._object = 0x80000001BC770EB0;
        SCLocalizedStringKey.init(stringLiteral:)(v584);
        v585 = v676;
        v586 = v677;
        v587 = type metadata accessor for InterventionScreenModel.Bullet();
        v588 = objc_allocWithZone(v587);
        v589 = &v588[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v589 = v585;
        v589[1] = v586;
        v590 = &v588[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        *v590 = 0x6C2D74656C6C7562;
        *(v590 + 1) = 0xEB000000006B636FLL;
        *&v588[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
        v646.receiver = v588;
        v646.super_class = v587;
        v106 = objc_msgSendSuper2(&v646, sel_init);
        goto LABEL_231;
      }

      v613 = v53;
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v537._countAndFlagsBits = 0xD000000000000022;
      v537._object = 0x80000001BC770EE0;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v537);
      if (*(v531 + 16))
      {
        v116 = v609;
        v538 = *(v609 + 16);
        v607 = (v531 + ((*(v116 + 80) + 32) & ~*(v116 + 80)));
        v615 = (v609 + 16);
        v612 = v538;
        v538(v533);
        v539 = *(v536 + 104);
        LODWORD(v611) = *MEMORY[0x1E697B5A8];
        v540 = v593;
        v614 = v536 + 104;
        v608 = v539;
        (v539)(v534);
        v541 = sub_1BC75A0F0();
        v543 = v542;
        v606 = *(v536 + 8);
        (v606)(v534, v540);
        v605 = v116[1];
        (v605)(v533, v535);
        v544._countAndFlagsBits = v541;
        v544._object = v543;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v544);

        v545._countAndFlagsBits = 32;
        v545._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v545);
        if (*(v531 + 16) >= 2uLL)
        {
          v546 = v610;
          (v612)(v533, v607 + v116[9], v610);

          v547 = v593;
          (v608)(v534, v611, v593);
          v548 = sub_1BC75A0F0();
          v550 = v549;
          (v606)(v534, v547);
          (v605)(v533, v546);
          v551._countAndFlagsBits = v548;
          v551._object = v550;
          v552 = v597;
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v551);

          v553._countAndFlagsBits = 0;
          v553._object = 0xE000000000000000;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v553);
          SCLocalizedStringKey.init(stringInterpolation:)(v552, &v676);
          v554 = v676;
          v555 = v677;
          v556 = type metadata accessor for InterventionScreenModel.Bullet();
          v557 = objc_allocWithZone(v556);
          v558 = &v557[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v558 = v554;
          v558[1] = v555;
          v559 = &v557[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v559 = 0x6C2D74656C6C7562;
          *(v559 + 1) = 0xEB000000006B636FLL;
          *&v557[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761080;
          v645.receiver = v557;
          v645.super_class = v556;
          v475 = objc_msgSendSuper2(&v645, sel_init);
          v514 = v613;
          goto LABEL_232;
        }

        goto LABEL_251;
      }
    }

    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v70 = swift_getEnumCaseMultiPayload();
  if (v70 > 4)
  {
    if (v70 <= 6)
    {
      if (v70 != 5)
      {
        if (v69 != 1)
        {
          if (!v69)
          {
            v452._countAndFlagsBits = 0xD000000000000032;
            v452._object = 0x80000001BC771110;
            SCLocalizedStringKey.init(stringLiteral:)(v452);
            v453 = v676;
            v454 = v677;
            v455 = type metadata accessor for InterventionScreenModel.Bullet();
            v456 = objc_allocWithZone(v455);
            v457 = &v456[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
            *v457 = v453;
            v457[1] = v454;
            v458 = &v456[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
            *v458 = 0x732D74656C6C7562;
            *(v458 + 1) = 0xEA00000000006461;
            *&v456[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
            v633.receiver = v456;
            v633.super_class = v455;
            v68 = objc_msgSendSuper2(&v633, sel_init);
            goto LABEL_235;
          }

          goto LABEL_254;
        }

        goto LABEL_152;
      }

      v126 = v600;
      sub_1BC66FDD8(v57, v600, type metadata accessor for InterventionConfig.Layout);
      v127 = *(v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

      (*(v612 + 1))(v126, v611);
      if (v69)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (v70 != 7)
      {
        if (v70 == 8)
        {
          if (v69)
          {
            if (v69 != 1)
            {
              goto LABEL_254;
            }

            goto LABEL_84;
          }

LABEL_212:
          sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
          v437._countAndFlagsBits = 0xD00000000000001DLL;
          v437._object = 0x80000001BC7711D0;
          SCLocalizedStringKey.init(stringLiteral:)(v437);
          v438 = v676;
          v439 = v677;
          v440 = type metadata accessor for InterventionScreenModel.Bullet();
          v441 = objc_allocWithZone(v440);
          v442 = &v441[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
          *v442 = v438;
          v442[1] = v439;
          v443 = &v441[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
          *v443 = 0x732D74656C6C7562;
          *(v443 + 1) = 0xEA00000000006461;
          *&v441[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
          v629.receiver = v441;
          v629.super_class = v440;
          v106 = objc_msgSendSuper2(&v629, sel_init);
          goto LABEL_231;
        }

        if (v69 != 1)
        {
          if (v69)
          {
            goto LABEL_254;
          }

          goto LABEL_150;
        }

LABEL_214:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v444._countAndFlagsBits = 0xD000000000000021;
        v444._object = 0x80000001BC771150;
        SCLocalizedStringKey.init(stringLiteral:)(v444);
        v445 = v676;
        v446 = v677;
        v447 = type metadata accessor for InterventionScreenModel.Bullet();
        v448 = objc_allocWithZone(v447);
        v449 = &v448[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v449 = v445;
        v449[1] = v446;
        v450 = &v448[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v448[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
        v450[15] = -18;
        v451 = &v448[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v451 = 0;
        *(v451 + 1) = 0;
        v632.receiver = v448;
        v632.super_class = v447;
        v106 = objc_msgSendSuper2(&v632, sel_init);
        goto LABEL_231;
      }

      if (v69)
      {
LABEL_137:
        if (v69 != 1)
        {
          goto LABEL_254;
        }

        goto LABEL_152;
      }
    }

LABEL_145:
    sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
    v240._countAndFlagsBits = 0xD000000000000026;
    v240._object = 0x80000001BC7710E0;
    SCLocalizedStringKey.init(stringLiteral:)(v240);
    v241 = v676;
    v242 = v677;
    v243 = type metadata accessor for InterventionScreenModel.Bullet();
    v244 = objc_allocWithZone(v243);
    v245 = &v244[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v245 = v241;
    v245[1] = v242;
    v246 = &v244[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v246 = 0x732D74656C6C7562;
    *(v246 + 1) = 0xEA00000000006461;
    *&v244[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
    v634.receiver = v244;
    v634.super_class = v243;
    v106 = objc_msgSendSuper2(&v634, sel_init);
    goto LABEL_231;
  }

  if (v70 <= 1)
  {
    if (!v70)
    {
      if (v69 == 1)
      {
LABEL_84:
        sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
        v118._countAndFlagsBits = 0xD00000000000001ELL;
        v118._object = 0x80000001BC7711B0;
        SCLocalizedStringKey.init(stringLiteral:)(v118);
        v119 = v676;
        v120 = v677;
        v121 = type metadata accessor for InterventionScreenModel.Bullet();
        v122 = objc_allocWithZone(v121);
        v123 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
        *v123 = v119;
        v123[1] = v120;
        v124 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
        strcpy(&v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
        v124[15] = -18;
        v125 = &v122[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
        *v125 = 0;
        *(v125 + 1) = 0;
        v630.receiver = v122;
        v630.super_class = v121;
        v106 = objc_msgSendSuper2(&v630, sel_init);
        goto LABEL_231;
      }

      if (v69)
      {
        goto LABEL_254;
      }

      goto LABEL_212;
    }

    if (!v69)
    {
LABEL_150:
      sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
      v247._countAndFlagsBits = 0xD000000000000020;
      v247._object = 0x80000001BC771180;
      SCLocalizedStringKey.init(stringLiteral:)(v247);
      v248 = v676;
      v249 = v677;
      v250 = type metadata accessor for InterventionScreenModel.Bullet();
      v251 = objc_allocWithZone(v250);
      v252 = &v251[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v252 = v248;
      v252[1] = v249;
      v253 = &v251[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v253 = 0x732D74656C6C7562;
      *(v253 + 1) = 0xEA00000000006461;
      *&v251[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
      v631.receiver = v251;
      v631.super_class = v250;
      v106 = objc_msgSendSuper2(&v631, sel_init);
      goto LABEL_231;
    }

    if (v69 != 1)
    {
      goto LABEL_254;
    }

    goto LABEL_214;
  }

  if (v70 == 2)
  {
    if (v69 == 1)
    {
      v215._countAndFlagsBits = 0xD00000000000002CLL;
      v215._object = 0x80000001BC771050;
      SCLocalizedStringKey.init(stringLiteral:)(v215);
      v216 = v676;
      v217 = v677;
      v218 = type metadata accessor for InterventionScreenModel.Bullet();
      v219 = objc_allocWithZone(v218);
      v220 = &v219[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v220 = v216;
      v220[1] = v217;
      v221 = &v219[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      strcpy(&v219[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
      v221[15] = -18;
      v222 = &v219[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
      *v222 = 0;
      *(v222 + 1) = 0;
      v637.receiver = v219;
      v637.super_class = v218;
      v68 = objc_msgSendSuper2(&v637, sel_init);
      goto LABEL_235;
    }

    if (!v69)
    {
      v407._countAndFlagsBits = 0xD00000000000002BLL;
      v407._object = 0x80000001BC771080;
      SCLocalizedStringKey.init(stringLiteral:)(v407);
      v408 = v676;
      v409 = v677;
      v410 = type metadata accessor for InterventionScreenModel.Bullet();
      v411 = objc_allocWithZone(v410);
      v412 = &v411[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
      *v412 = v408;
      v412[1] = v409;
      v413 = &v411[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
      *v413 = 0xD000000000000015;
      *(v413 + 1) = 0x80000001BC770970;
      v414 = &v411[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
      *v414 = 0;
      *(v414 + 1) = 0;
      v636.receiver = v411;
      v636.super_class = v410;
      v68 = objc_msgSendSuper2(&v636, sel_init);
      goto LABEL_235;
    }

    goto LABEL_254;
  }

  if (v70 != 3)
  {
    v238 = v601;
    sub_1BC66FDD8(v57, v601, type metadata accessor for InterventionConfig.Layout);
    v239 = *(v238 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));

    (*(v612 + 1))(v238, v611);
    if (v69 != 1)
    {
      if (v69)
      {
        goto LABEL_254;
      }

      goto LABEL_145;
    }

LABEL_152:
    sub_1BC66FE40(v57, type metadata accessor for InterventionConfig.Layout);
    v254._countAndFlagsBits = 0xD000000000000027;
    v254._object = 0x80000001BC7710B0;
    SCLocalizedStringKey.init(stringLiteral:)(v254);
    v255 = v676;
    v256 = v677;
    v257 = type metadata accessor for InterventionScreenModel.Bullet();
    v258 = objc_allocWithZone(v257);
    v259 = &v258[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v259 = v255;
    v259[1] = v256;
    v260 = &v258[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    strcpy(&v258[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-bubble");
    *(v260 + 7) = -4864;
    *&v258[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761020;
    v635.receiver = v258;
    v635.super_class = v257;
    v106 = objc_msgSendSuper2(&v635, sel_init);
    goto LABEL_231;
  }

  if (v69 == 1)
  {
    v71._countAndFlagsBits = 0xD000000000000030;
    v71._object = 0x80000001BC770FE0;
    SCLocalizedStringKey.init(stringLiteral:)(v71);
    v72 = v676;
    v73 = v677;
    v74 = type metadata accessor for InterventionScreenModel.Bullet();
    v75 = objc_allocWithZone(v74);
    v76 = &v75[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v76 = v72;
    v76[1] = v73;
    v77 = &v75[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    strcpy(&v75[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName], "bullet-teacher");
    v77[15] = -18;
    v78 = &v75[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji];
    *v78 = 0;
    *(v78 + 1) = 0;
    v639.receiver = v75;
    v639.super_class = v74;
    v68 = objc_msgSendSuper2(&v639, sel_init);
    goto LABEL_235;
  }

  if (!v69)
  {
    v430._countAndFlagsBits = 0xD00000000000002FLL;
    v430._object = 0x80000001BC771020;
    SCLocalizedStringKey.init(stringLiteral:)(v430);
    v431 = v676;
    v432 = v677;
    v433 = type metadata accessor for InterventionScreenModel.Bullet();
    v434 = objc_allocWithZone(v433);
    v435 = &v434[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_textKey];
    *v435 = v431;
    v435[1] = v432;
    v436 = &v434[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_imageName];
    *v436 = 0x732D74656C6C7562;
    *(v436 + 1) = 0xEA00000000006461;
    *&v434[OBJC_IVAR____TtCC26SensitiveContentAnalysisUI23InterventionScreenModel6Bullet_emoji] = xmmword_1BC761010;
    v638.receiver = v434;
    v638.super_class = v433;
    v68 = objc_msgSendSuper2(&v638, sel_init);
    goto LABEL_235;
  }

LABEL_254:
  result = sub_1BC75C3D0();
  __break(1u);
  return result;
}

id _sSo34SCUIInterventionScreenModelFactoryC26SensitiveContentAnalysisUIE5model3for8workflow4type7optionsSo0abC8Protocol_pSo0afB0V_So0A8WorkflowVSo0A4TypeVSo0A7OptionsVtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1BC759EE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for InterventionScreenModel();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR___SCUIInterventionScreenModel_authority] = 0;
  v21[OBJC_IVAR___SCUIInterventionScreenModel____lazy_storage___canShowScreenTimePasscodeWarningBullet] = 2;
  *&v21[OBJC_IVAR___SCUIInterventionScreenModel_screen] = a1;
  sub_1BC6E53B4(a3);
  v22 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_1BC6E3EAC(a2, 0, v15, a4, v11, v19);
  sub_1BC66FCA4(v19, &v21[OBJC_IVAR___SCUIInterventionScreenModel_config]);
  sub_1BC75A110();
  *&v21[OBJC_IVAR___SCUIInterventionScreenModel_participantContactCache] = sub_1BC75A100();
  v24.receiver = v21;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1BC673F08()
{
  result = type metadata accessor for InterventionConfig(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC6741B0()
{
  result = qword_1EBCDBF78;
  if (!qword_1EBCDBF78)
  {
    sub_1BC759C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDBF78);
  }

  return result;
}

unint64_t sub_1BC674230()
{
  result = qword_1EBCDC228;
  if (!qword_1EBCDC228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC230, qword_1BC761230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC228);
  }

  return result;
}

unint64_t sub_1BC674298()
{
  result = qword_1EBCE32D0[0];
  if (!qword_1EBCE32D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE32D0);
  }

  return result;
}

uint64_t sub_1BC6742F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC674314, 0, 0);
}

uint64_t sub_1BC674314()
{
  v22 = v0;
  if (SBSGetScreenLockStatus())
  {
    if (qword_1EBCE33E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1BC75A4E0();
    *(v0 + 32) = __swift_project_value_buffer(v1, qword_1EBCF4478);
    v2 = sub_1BC75A4C0();
    v3 = sub_1BC75BF40();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BC630000, v2, v3, "Requesting screen unlock", v4, 2u);
      MEMORY[0x1BFB27EF0](v4, -1, -1);
    }

    v5 = *(MEMORY[0x1E69E88D0] + 4);
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_1BC674618;
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 48, 0, 0, 0xD00000000000002BLL, 0x80000001BC7718F0, sub_1BC674914, 0, v7);
  }

  else
  {
    if (qword_1EBCE33E0 != -1)
    {
      swift_once();
    }

    v8 = sub_1BC75A4E0();
    __swift_project_value_buffer(v8, qword_1EBCF4478);
    v9 = sub_1BC75A4C0();
    v10 = sub_1BC75BF50();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
      v13 = *(v0 + 49);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_1BC75C2C0();
      v18 = sub_1BC674BD8(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1BC630000, v9, v10, "%s: Screen is not locked, continuing...", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB27EF0](v15, -1, -1);
      MEMORY[0x1BFB27EF0](v14, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1BC674618()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BC674714, 0, 0);
}

uint64_t sub_1BC674714()
{
  v18 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = sub_1BC75A4C0();
  if (v2 == 1)
  {
    v4 = sub_1BC75BF40();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC630000, v3, v4, "Unlocked screen.", v5, 2u);
      MEMORY[0x1BFB27EF0](v5, -1, -1);
    }

    v6 = *(v0 + 8);
  }

  else
  {
    v7 = sub_1BC75BF50();
    if (os_log_type_enabled(v3, v7))
    {
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      v10 = *(v0 + 49);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = sub_1BC75C2C0();
      v15 = sub_1BC674BD8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1BC630000, v3, v7, "%s: User didn't unlock", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1BFB27EF0](v12, -1, -1);
      MEMORY[0x1BFB27EF0](v11, -1, -1);
    }

    sub_1BC75BDB0();
    sub_1BC674B80();
    swift_allocError();
    sub_1BC75BA20();
    swift_willThrow();
    v6 = *(v0 + 8);
  }

  return v6();
}

void sub_1BC674914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - v5;
  (*(v3 + 16))(aBlock - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  aBlock[4] = sub_1BC675180;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BC674AAC;
  aBlock[3] = &block_descriptor;
  v9 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v9);
}

uint64_t sub_1BC674AAC(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

uint64_t sub_1BC674B04()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4478);
  __swift_project_value_buffer(v0, qword_1EBCF4478);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC674B80()
{
  result = qword_1EBCDC238;
  if (!qword_1EBCDC238)
  {
    sub_1BC75BDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC238);
  }

  return result;
}

uint64_t sub_1BC674BD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BC674CA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BC65F494(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BC674CA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BC674DB0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BC75C310();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1BC674DB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC674DFC(a1, a2);
  sub_1BC674F2C(&unk_1F3B28860);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BC674DFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BC675018(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BC75C310();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BC75BC10();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BC675018(v10, 0);
        result = sub_1BC75C260();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BC674F2C(uint64_t result)
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

  result = sub_1BC67508C(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_1BC675018(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE50, &unk_1BC76CB40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BC67508C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDEE50, &unk_1BC76CB40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1BC675180()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDC240, qword_1BC7612F0);
  return sub_1BC75BDA0();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AXIdentifiers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXIdentifiers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXIdentifiers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AXIdentifiers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXIdentifiers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t static AXIdentifiers.interventionScreen(_:)(uint64_t a1)
{
  v1 = 0xD000000000000022;
  if (a1 == 1)
  {
    v1 = 0xD000000000000021;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

id sub_1BC6755E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  if (v4)
  {
    v5 = sub_1BC75BB30();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _s26SensitiveContentAnalysisUI13AXIdentifiersC24interventionScreenActionySSSgSo016SCUIInterventiongH2IdVFZ_0(uint64_t a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000013;
      }

      else
      {
        return 0x754253497478656ELL;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return 0x497373696D736964;
      }

      return 0x426E776F6E6B6E75;
    }

    return result;
  }

  if (a1 <= 5)
  {
    if (a1 != 4)
    {
      return 0x426567617373656DLL;
    }

    v3 = 0x646564656568;
    return v3 & 0xFFFFFFFFFFFFLL | 0x5349000000000000;
  }

  if (a1 == 6)
  {
    v3 = 0x737361707962;
    return v3 & 0xFFFFFFFFFFFFLL | 0x5349000000000000;
  }

  if (a1 != 7)
  {
    return 0x426E776F6E6B6E75;
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI13AXIdentifiersC14helpMenuActionySSSgSo012SCUIMoreHelpgH2IDVFZ_0(uint64_t a1)
{
  result = 0;
  if (a1 > 5)
  {
    if (a1 > 7)
    {
      switch(a1)
      {
        case 8:
          return 0xD000000000000013;
        case 9:
          return 0x74747542776F6873;
        case 10:
          return 0xD000000000000011;
      }

      return 0x426E776F6E6B6E75;
    }

    if (a1 != 6)
    {
      return 0x7542435365646968;
    }
  }

  else if (a1 > 2)
  {
    if ((a1 - 4) < 2)
    {
      return 0xD000000000000012;
    }

    if (a1 != 3)
    {
      return 0x426E776F6E6B6E75;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return 0x426567617373656DLL;
    }

    if (a1 == 2)
    {
      return 0xD000000000000013;
    }

    return 0x426E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_1BC675998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v0 + OBJC_IVAR___SCUIInterventionViewController__config, v14);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v11(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v9);
    v12 = *&v9[*(v5 + 28)];

    sub_1BC67876C(v9, type metadata accessor for InterventionConfig);
    return v12;
  }

  else
  {
    v11(v4, 1, 1, v5);
    sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC675BE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for InterventionConfig(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v0 + OBJC_IVAR___SCUIInterventionViewController__config, v14);
  v10 = swift_dynamicCast();
  v11 = *(v6 + 56);
  if (v10)
  {
    v11(v4, 0, 1, v5);
    sub_1BC66FCA4(v4, v9);
    v12 = *&v9[*(v5 + 24)];
    sub_1BC67876C(v9, type metadata accessor for InterventionConfig);
    return v12;
  }

  else
  {
    v11(v4, 1, 1, v5);
    sub_1BC66008C(v4, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC675E34(uint64_t (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for InterventionConfig(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BC65F494(v1 + OBJC_IVAR___SCUIInterventionViewController__config, v17);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v6, 0, 1, v7);
    v14 = sub_1BC66FCA4(v6, v11);
    v15 = a1(v14);
    sub_1BC67876C(v11, type metadata accessor for InterventionConfig);
    return v15;
  }

  else
  {
    v13(v6, 1, 1, v7);
    sub_1BC66008C(v6, &qword_1EBCDC250, &qword_1BC761340);
    result = sub_1BC75C3D0();
    __break(1u);
  }

  return result;
}

void sub_1BC676124()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23[-v4];
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR___SCUIInterventionViewController_remoteController;
  v12 = *&v1[OBJC_IVAR___SCUIInterventionViewController_remoteController];
  if (v12)
  {
    v13 = v12;
    [v13 didMoveToParentViewController_];
    v14 = [v13 view];
    if (!v14)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v15 = v14;
    [v14 removeFromSuperview];

    [v13 removeFromParentViewController];
  }

  sub_1BC65F494(&v1[OBJC_IVAR___SCUIInterventionViewController__config], v23);
  if (swift_dynamicCast())
  {
    type metadata accessor for RemoteInterventionViewController();
    v16 = *(v7 + 56);
    v7 += 56;
    v16(v5, 0, 1, v6);
    sub_1BC66FCA4(v5, v10);
    v17 = swift_unknownObjectRetain();
    v18 = sub_1BC6E9EA0(v17, v10);
    v6 = *&v1[v11];
    *&v1[v11] = v18;
    v19 = v18;

    v5 = v19;
    [v1 addChildViewController_];
    v20 = [v1 view];
    if (v20)
    {
      v6 = v20;
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];

      v21 = [v1 view];
      if (v21)
      {
        v6 = v21;
        v22 = [v5 view];

        if (v22)
        {
          [v6 addSubview_];

          [v5 didMoveToParentViewController_];
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_1BC66008C(v5, &qword_1EBCDC250, &qword_1BC761340);
  sub_1BC75C3D0();
  __break(1u);
}

id sub_1BC676488(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BC75BA30();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:a1 contextDictionary:v3];

  return v4;
}

id sub_1BC6765B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1BC75BA30();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:a1 contextDictionary:v5 options:a3];

  return v6;
}

id sub_1BC676950(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v29 - v10;
  v12 = sub_1BC759EE0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InterventionConfig(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v29 - v21;
  sub_1BC6E53B4(a4);
  if (a2)
  {

    v23 = sub_1BC75BA30();
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() getAnalyticsUIContextWith_];

  if (v24)
  {
    (*((*MEMORY[0x1E69E7D40] & *v24) + 0x58))();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v26 - 8) + 56))(v11, v25, 1, v26);
  sub_1BC6E3EAC(a1, a2, v15, a3 | 1, v11, v22);
  sub_1BC678AE4(v22, v20, type metadata accessor for InterventionConfig);
  v27 = [v29[1] initWithTypeErasedConfig_];
  swift_unknownObjectRelease();
  sub_1BC67876C(v22, type metadata accessor for InterventionConfig);
  return v27;
}

id SCUIInterventionViewController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void SCUIInterventionViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___SCUIInterventionViewController_remoteController) = 0;
  sub_1BC75C3D0();
  __break(1u);
}

id SCUIInterventionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1BC75BB30();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id sub_1BC677130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1BC759EE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;

  sub_1BC75A060();
  sub_1BC75A070();

  if (v3)
  {

LABEL_5:
    v21 = v30;
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v21;
  }

  v29 = a3;
  sub_1BC759EC0();
  sub_1BC759E50();
  sub_1BC75C100();
  v18 = *(v11 + 8);
  v18(v15, v10);
  sub_1BC66008C(v9, &unk_1EBCDBD90, &unk_1BC75F850);
  v19 = sub_1BC67E9F0();
  if (v20)
  {

    type metadata accessor for SCAError(0);
    v31 = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);
    sub_1BC759700();
    swift_willThrow();
    v18(v17, v10);
    goto LABEL_5;
  }

  v23 = v19;
  v24 = sub_1BC67EDF4(v29);
  v26 = (v25 & 1) == 0 && v24;
  v28 = v18;
  if (a2)
  {
    v27 = sub_1BC75BA30();
  }

  else
  {
    v27 = 0;
  }

  v21 = [v30 initWithWorkflow:v26 contextDictionary:v27 options:v29 type:{v23, v28}];

  v28(v17, v10);
  return v21;
}

void SCUIInterventionViewController.dismissInterventionFacade(completion:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1BC67768C;
    v4[3] = &block_descriptor_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_1BC67768C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id SCUIInterventionViewController.init(kind:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for InterventionConfig(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (v17 - v13);
  sub_1BC759EC0();
  sub_1BC6779F4(a1, v7, v14);
  if (v2)
  {
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC66008C(v7, &unk_1EBCDBD90, &unk_1BC75F850);
  }

  else
  {
    sub_1BC66008C(v7, &unk_1EBCDBD90, &unk_1BC75F850);
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1BC678AE4(v14, v12, type metadata accessor for InterventionConfig);
    v1 = [v15 initWithTypeErasedConfig_];
    swift_unknownObjectRelease();
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC67876C(v14, type metadata accessor for InterventionConfig);
  }

  return v1;
}

uint64_t sub_1BC6779F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v23 = a1;
  v5 = type metadata accessor for SCUIInterventionKind(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v22 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  sub_1BC75A060();
  sub_1BC75A070();

  if (!v3)
  {
    v22 = a3;
    sub_1BC759E50();
    sub_1BC75C100();
    v21 = *(v10 + 8);
    v21(v17, v9);
    sub_1BC678AE4(v23, v8, type metadata accessor for SCUIInterventionKind);
    (*(v10 + 16))(v14, v19, v9);
    InterventionConfig.init(kind:policy:options:)(v8, v14, 1, v22);
    return (v21)(v19, v9);
  }

  return result;
}

id SCUIInterventionViewController.init(kind:policy:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  sub_1BC6779F4(a1, a2, (&v15 - v11));
  if (v3)
  {
    sub_1BC66008C(a2, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
  }

  else
  {
    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1BC678AE4(v12, v10, type metadata accessor for InterventionConfig);
    v2 = [v13 initWithTypeErasedConfig_];
    swift_unknownObjectRelease();
    sub_1BC66008C(a2, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC67876C(a1, type metadata accessor for SCUIInterventionKind);
    sub_1BC67876C(v12, type metadata accessor for InterventionConfig);
  }

  return v2;
}

uint64_t sub_1BC677E04(uint64_t a1)
{
  v2 = sub_1BC67870C(&qword_1EBCDC318, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BC677E70(uint64_t a1)
{
  v2 = sub_1BC67870C(&qword_1EBCDC318, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1BC677EE0(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1BC677F64(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1BC677FD0(uint64_t a1)
{
  v2 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1BC67803C(void *a1, uint64_t a2)
{
  v4 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1BC6780F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1BC67816C()
{
  v2 = *v0;
  sub_1BC75C700();
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t sub_1BC6781CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1BC678250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC350, &unk_1BC764270);
    v3 = sub_1BC75C420();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BC678B4C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BC65B77C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BC678BBC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id sub_1BC678360(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_1BC759EE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = sub_1BC75A060();
  sub_1BC75A070();

  if (!v2)
  {
    v31 = v9;
    sub_1BC759EC0();
    sub_1BC759E50();
    sub_1BC75C100();
    v18 = *(v10 + 8);
    v19 = v14;
    v20 = v31;
    v18(v19, v31);
    sub_1BC66008C(v8, &unk_1EBCDBD90, &unk_1BC75F850);
    v21 = sub_1BC67E9F0();
    if (v22)
    {
      type metadata accessor for SCAError(0);
      v17 = v23;
      v32 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67870C(&unk_1EBCDC290, type metadata accessor for SCAError);
      sub_1BC759700();
      swift_willThrow();
      v18(v16, v20);
    }

    else
    {
      v25 = v21;
      v26 = sub_1BC67EDF4(a2);
      v28 = (v27 & 1) == 0 && v26;
      if (a1)
      {
        v29 = sub_1BC75BA30();
      }

      else
      {
        v29 = 0;
      }

      v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithWorkflow:v28 contextDictionary:v29 options:a2 type:v25];

      v18(v16, v31);
    }
  }

  return v17;
}

unint64_t sub_1BC678690()
{
  result = qword_1EBCDC280;
  if (!qword_1EBCDC280)
  {
    sub_1BC65F664(255, &qword_1EDDCDFB0, 0x1E697B648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC280);
  }

  return result;
}

uint64_t sub_1BC67870C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BC67876C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6789F0()
{
  result = qword_1EBCDC340;
  if (!qword_1EBCDC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC340);
  }

  return result;
}

uint64_t sub_1BC678AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC678B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC358, &unk_1BC7615C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BC678BBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

BOOL VideoCallOverlayBackground.Kind.isGroupCall.getter()
{
  v1 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67D594(v0, v4, type metadata accessor for VideoCallOverlayBackground.Kind);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v9 = *(*v4 + 16);

    return v9 > 1;
  }

  else
  {
    v5 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48)];
    v6 = sub_1BC759FE0();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = *(v5 + 16);

    return v7 != 0;
  }
}

uint64_t sub_1BC679138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1BC67D898(&qword_1EDDCE6E0, MEMORY[0x1E697B5B0]);
    v22 = sub_1BC75BAB0();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t VideoCallOverlayBackground.body.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BC75B810();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D0, &qword_1BC7616B0);
  return sub_1BC67939C(v1, a1 + *(v4 + 44));
}

uint64_t sub_1BC67939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC568, &qword_1BC761CF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v17 - v10;
  nullsub_1(v9);
  v12 = sub_1BC75A980();
  v13 = sub_1BC75B000();
  *v11 = sub_1BC75ACD0();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC570, &qword_1BC761CF8);
  sub_1BC679504(a1, &v11[*(v14 + 44)]);
  sub_1BC660024(v11, v8, &qword_1EBCDC568, &qword_1BC761CF0);
  *a2 = v12;
  *(a2 + 8) = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC578, &qword_1BC761D00);
  sub_1BC660024(v8, a2 + *(v15 + 48), &qword_1EBCDC568, &qword_1BC761CF0);
  sub_1BC66008C(v11, &qword_1EBCDC568, &qword_1BC761CF0);
  return sub_1BC66008C(v8, &qword_1EBCDC568, &qword_1BC761CF0);
}

uint64_t sub_1BC679504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = type metadata accessor for FollowUpButtons(0);
  v3 = *(*(v73 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v73);
  v76 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC580, &qword_1BC761D08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v72 - v9;
  v11 = sub_1BC75B5D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC588, &unk_1BC761D10);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v72 - v21;
  sub_1BC75B5C0();
  (*(v12 + 104))(v15, *MEMORY[0x1E6981630], v11);
  v23 = sub_1BC75B610();

  (*(v12 + 8))(v15, v11);
  v24 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v26 = sub_1BC75AD00();
  (*(*(v26 - 8) + 56))(v24 + v25, 0, 1, v26);
  *v24 = swift_getKeyPath();
  *v22 = v23;
  *(v22 + 1) = 0;
  *(v22 + 8) = 1;
  v27 = sub_1BC75B530();
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v27;
  v28 = sub_1BC75B0A0();
  v29 = *(*(v28 - 8) + 56);
  v29(v10, 1, 1, v28);
  v30 = sub_1BC75B0B0();
  sub_1BC66008C(v10, &qword_1EBCDC580, &qword_1BC761D08);
  KeyPath = swift_getKeyPath();
  v32 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A8, &qword_1BC761D60) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  sub_1BC75B810();
  sub_1BC75A810();
  v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B0, &qword_1BC761D68) + 36)];
  v34 = v126;
  *v33 = v125;
  *(v33 + 1) = v34;
  *(v33 + 2) = v127;
  v35 = sub_1BC75B000();
  v36 = &v22[*(v17 + 44)];
  *v36 = v35;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  v36[40] = 1;
  VideoCallOverlayBackground.Kind.localizedText.getter(&v91);
  v83 = v91;
  v77 = sub_1BC651E78(&v83);
  v80 = v37;
  v81 = v38;
  LOBYTE(v30) = v39;
  v79 = swift_getKeyPath();
  v29(v10, 1, 1, v28);
  *(&v72 + 1) = sub_1BC75B0B0();
  sub_1BC66008C(v10, &qword_1EBCDC580, &qword_1BC761D08);
  *&v72 = swift_getKeyPath();
  v40 = v30 & 1;
  LOBYTE(v91) = v30 & 1;
  v78 = sub_1BC75B530();
  sub_1BC75B810();
  sub_1BC75AA00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1BC7615F0;
  LOBYTE(v10) = sub_1BC75B030();
  *(v41 + 32) = v10;
  v42 = sub_1BC75B050();
  *(v41 + 33) = v42;
  v43 = sub_1BC75B020();
  *(v41 + 34) = v43;
  v44 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v10)
  {
    v44 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v42)
  {
    v44 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v43)
  {
    v44 = sub_1BC75B040();
  }

  sub_1BC75A670();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v123 = 0;
  v53 = VideoCallOverlayBackground.Kind.isGroupCall.getter();
  v54 = type metadata accessor for VideoCallOverlayBackground(0);
  v55 = v74;
  sub_1BC660024(a1 + *(v54 + 20), &v74[*(v73 + 20)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v55 = v53;
  v56 = v82;
  sub_1BC660024(v22, v82, &qword_1EBCDC588, &unk_1BC761D10);
  v57 = v76;
  sub_1BC67D594(v55, v76, type metadata accessor for FollowUpButtons);
  v58 = v56;
  v59 = v75;
  sub_1BC660024(v58, v75, &qword_1EBCDC588, &unk_1BC761D10);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5C0, &qword_1BC761DA8);
  v61 = *(v60 + 48);
  *(&v87[6] + 8) = v120;
  *(&v87[3] + 8) = v117;
  *(&v87[4] + 8) = v118;
  *(&v87[5] + 8) = v119;
  *(v87 + 8) = v114;
  v62 = v59 + v61;
  *&v83 = v77;
  *(&v83 + 1) = v80;
  LOBYTE(v84) = v40;
  LODWORD(v73) = v40;
  *(&v84 + 1) = *v122;
  DWORD1(v84) = *&v122[3];
  *(&v84 + 1) = v81;
  *&v85 = v79;
  BYTE8(v85) = 1;
  *(&v85 + 9) = *v121;
  HIDWORD(v85) = *&v121[3];
  v63 = v72;
  v86 = v72;
  *&v87[0] = v78;
  *(&v87[1] + 8) = v115;
  *(&v87[2] + 8) = v116;
  BYTE8(v87[7]) = v44;
  *(&v87[7] + 9) = *v124;
  HIDWORD(v87[7]) = *&v124[3];
  *&v88 = v46;
  *(&v88 + 1) = v48;
  *&v89 = v50;
  *(&v89 + 1) = v52;
  v90 = 0;
  *(v62 + 224) = 0;
  v64 = v84;
  *v62 = v83;
  *(v62 + 16) = v64;
  v65 = v87[1];
  *(v62 + 64) = v87[0];
  *(v62 + 80) = v65;
  v66 = v86;
  *(v62 + 32) = v85;
  *(v62 + 48) = v66;
  v67 = v87[5];
  *(v62 + 128) = v87[4];
  *(v62 + 144) = v67;
  v68 = v87[3];
  *(v62 + 96) = v87[2];
  *(v62 + 112) = v68;
  v69 = v87[7];
  *(v62 + 160) = v87[6];
  *(v62 + 176) = v69;
  v70 = v89;
  *(v62 + 192) = v88;
  *(v62 + 208) = v70;
  sub_1BC67D594(v57, v59 + *(v60 + 64), type metadata accessor for FollowUpButtons);
  sub_1BC660024(&v83, &v91, &qword_1EBCDC5C8, &unk_1BC761DB0);
  sub_1BC67D8E0(v55, type metadata accessor for FollowUpButtons);
  sub_1BC66008C(v22, &qword_1EBCDC588, &unk_1BC761D10);
  sub_1BC67D8E0(v57, type metadata accessor for FollowUpButtons);
  v103 = v117;
  v104 = v118;
  v105 = v119;
  v106 = v120;
  v100 = v114;
  v101 = v115;
  *&v91 = v77;
  *(&v91 + 1) = v80;
  v92 = v73;
  *v93 = *v122;
  *&v93[3] = *&v122[3];
  v94 = v81;
  v95 = v79;
  v96 = 1;
  *v97 = *v121;
  *&v97[3] = *&v121[3];
  v98 = v63;
  v99 = v78;
  v102 = v116;
  v107 = v44;
  *&v108[3] = *&v124[3];
  *v108 = *v124;
  v109 = v46;
  v110 = v48;
  v111 = v50;
  v112 = v52;
  v113 = 0;
  sub_1BC66008C(&v91, &qword_1EBCDC5C8, &unk_1BC761DB0);
  return sub_1BC66008C(v82, &qword_1EBCDC588, &unk_1BC761D10);
}

uint64_t sub_1BC679E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BC67D5FC(a1, a3, type metadata accessor for VideoCallOverlayBackground.Kind);
  v5 = type metadata accessor for VideoCallOverlayBackground(0);
  return sub_1BC65FFBC(a2, a3 + *(v5 + 20), &qword_1EBCDBC50, &qword_1BC762D70);
}

uint64_t sub_1BC679ECC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BC75B810();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D0, &qword_1BC7616B0);
  return sub_1BC67939C(v1, a1 + *(v4 + 44));
}

uint64_t sub_1BC679F1C@<X0>(uint64_t *a1@<X8>)
{
  v38 = _s6LayoutV4ModeOMa(0);
  v2 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1BC759CA0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BC759EE0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BC759FE0();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67E5EC(&unk_1F3B28998);
  sub_1BC67E754(&unk_1F3B289B8);
  sub_1BC759F70();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC548, &qword_1BC761CE0);
  a1[3] = v36;
  a1[4] = sub_1BC67E8D4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
  v19 = v12[2];
  v19(boxed_opaque_existential_1, v16, v11);
  *(boxed_opaque_existential_1 + v18) = MEMORY[0x1E69E7CC0];
  type metadata accessor for VideoCallOverlayBackground.Kind(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(type metadata accessor for VideoCallOverlayBackground(0) + 20);
  v21 = v10;
  sub_1BC759EB0();
  v22 = v35;
  sub_1BC759BC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v23 = v12[9];
  v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC761600;
  v26 = v25 + v24;
  v27 = v34;
  v19(v26, v16, v34);
  v28 = v37;
  *v37 = v25;
  swift_storeEnumTagMultiPayload();
  sub_1BC663D18(v21, v22, &unk_1F3B289C8, v28, boxed_opaque_existential_1 + v20);
  v29 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v29 - 8) + 56))(boxed_opaque_existential_1 + v20, 0, 1, v29);
  v30 = sub_1BC75B510();
  LOBYTE(v21) = sub_1BC75B000();
  result = (v13[1])(v16, v27);
  v32 = boxed_opaque_existential_1 + *(v36 + 36);
  *v32 = v30;
  v32[8] = v21;
  return result;
}

uint64_t sub_1BC67A340@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for VideoStreamFollowUpButton(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = *(type metadata accessor for FollowUpButtons(0) + 20);
  sub_1BC660024(&a1[v17], &v16[*(v4 + 32)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = swift_getKeyPath();
  *(v16 + 4) = 0;
  v16[40] = 0;
  v16[*(v4 + 36)] = 2;
  v18 = *a1;
  sub_1BC660024(&a1[v17], &v14[*(v4 + 32)], &qword_1EBCDBC50, &qword_1BC762D70);
  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = swift_getKeyPath();
  *(v14 + 4) = 0;
  v14[40] = 0;
  v14[*(v4 + 36)] = v18;
  sub_1BC67D594(v16, v11, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D594(v14, v8, type metadata accessor for VideoStreamFollowUpButton);
  v19 = v23;
  sub_1BC67D594(v11, v23, type metadata accessor for VideoStreamFollowUpButton);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC540, &qword_1BC761CD8);
  sub_1BC67D594(v8, v19 + *(v20 + 48), type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v14, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v16, type metadata accessor for VideoStreamFollowUpButton);
  sub_1BC67D8E0(v8, type metadata accessor for VideoStreamFollowUpButton);
  return sub_1BC67D8E0(v11, type metadata accessor for VideoStreamFollowUpButton);
}

uint64_t sub_1BC67A5BC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC3D8, &qword_1BC7616B8);
  return sub_1BC67A340(v1, a1 + *(v3 + 44));
}

unint64_t VideoStreamFollowUpButton.Kind.axIdentifier.getter()
{
  if (*v0 == 2)
  {
    return 0xD000000000000027;
  }

  else
  {
    return 0xD000000000000024;
  }
}

BOOL static VideoStreamFollowUpButton.Kind.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1BC67A728(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1BC67AF00()
{
  v1 = type metadata accessor for VideoStreamFollowUpButton(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_1BC75ABB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v28 - v15;
  if (*(v0 + *(v1 + 28)) == 2)
  {
    v17 = sub_1BC75BE10();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    sub_1BC67D594(v0, &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VideoStreamFollowUpButton);
    sub_1BC75BDE0();
    v18 = sub_1BC75BDD0();
    v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x1E69E85E0];
    *(v20 + 16) = v18;
    *(v20 + 24) = v21;
    sub_1BC67D5FC(&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for VideoStreamFollowUpButton);
    sub_1BC67B7C8(0, 0, v7, &unk_1BC761CD0, v20);
  }

  sub_1BC660024(v0 + *(v1 + 24), v16, &qword_1EBCDBC50, &qword_1BC762D70);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
  {
    sub_1BC66008C(v16, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  else
  {
    AnalyticsUIContext.collectContentInteractionEvent(state:)(1);
    sub_1BC67D8E0(v16, type metadata accessor for AnalyticsUIContext);
  }

  v24 = *(v0 + 24);
  v25 = *(v0 + 32);
  if (*(v0 + 40) != 1)
  {

    sub_1BC75BF70();
    v27 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v24, v25, 0, sub_1BC635480);
    result = (*(v9 + 8))(v12, v8);
    v24 = v28;
    if (v28 == 1)
    {
      return result;
    }

    goto LABEL_10;
  }

  v26 = *(v0 + 32);
  result = sub_1BC63302C(*(v0 + 24));
  if (v24 != 1)
  {
LABEL_10:
    sub_1BC71CC90(v24);
    return sub_1BC635468(v24);
  }

  return result;
}

uint64_t sub_1BC67B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_1BC75ABB0();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_1BC75BDE0();
  v4[9] = sub_1BC75BDD0();
  v8 = swift_task_alloc();
  v4[10] = v8;
  *v8 = v4;
  v8[1] = sub_1BC67B480;

  return sub_1BC6742F0("followUpButtonTapped()", 22, 2);
}

uint64_t sub_1BC67B480()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 88) = v2;

  v7 = sub_1BC75BD80();
  if (v2)
  {
    v8 = sub_1BC67B758;
  }

  else
  {
    v8 = sub_1BC67B5DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BC67B5DC()
{
  v1 = v0[9];
  v2 = v0[4];

  v4 = *v2;
  v3 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];

    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC67D564(v4, v3, 0, sub_1BC635480);
    (*(v6 + 8))(v5, v7);
    v4 = v0[2];
    if (v4 == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v0[2] = v4;
  v0[3] = v3;
  sub_1BC63302C(v4);
  if (v4 != 1)
  {
LABEL_5:
    v12 = v0[3];
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v4);
  }

LABEL_6:
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BC67B758()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1BC67B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1BC660024(a3, v24 - v10, &qword_1EBCDBB20, &qword_1BC75F0D0);
  v12 = sub_1BC75BE10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BC66008C(v11, &qword_1EBCDBB20, &qword_1BC75F0D0);
  }

  else
  {
    sub_1BC75BE00();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BC75BD80();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BC75BBC0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BC66008C(a3, &qword_1EBCDBB20, &qword_1BC75F0D0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

double sub_1BC67BA78()
{
  sub_1BC75B530();
  v0 = sub_1BC75B550();

  qword_1EBCF4490 = 0x4028000000000000;
  *algn_1EBCF4498 = v0;
  xmmword_1EBCF44A0 = xmmword_1BC761610;
  unk_1EBCF44B0 = xmmword_1BC761620;
  result = 16.0;
  xmmword_1EBCF44C0 = xmmword_1BC761630;
  unk_1EBCF44D0 = xmmword_1BC761640;
  return result;
}

double sub_1BC67BAEC()
{
  sub_1BC75B530();
  v0 = sub_1BC75B550();

  *&xmmword_1EBCF44E0 = 0x4028000000000000;
  *(&xmmword_1EBCF44E0 + 1) = v0;
  xmmword_1EBCF44F0 = xmmword_1BC761650;
  xmmword_1EBCF4500 = xmmword_1BC761660;
  result = 28.0;
  xmmword_1EBCF4510 = xmmword_1BC761670;
  xmmword_1EBCF4520 = xmmword_1BC761640;
  return result;
}

uint64_t sub_1BC67BB60()
{
  if (qword_1EBCE3880 != -1)
  {
    swift_once();
  }

  if (qword_1EBCE3888 != -1)
  {
    swift_once();
  }

  v2[2] = xmmword_1EBCF4500;
  v2[3] = xmmword_1EBCF4510;
  v2[4] = xmmword_1EBCF4520;
  v2[0] = xmmword_1EBCF44E0;
  v2[1] = xmmword_1EBCF44F0;
  xmmword_1EBCF4550 = xmmword_1EBCF4500;
  unk_1EBCF4560 = xmmword_1EBCF4510;
  xmmword_1EBCF4570 = xmmword_1EBCF4520;
  xmmword_1EBCF4530 = xmmword_1EBCF44E0;
  unk_1EBCF4540 = xmmword_1EBCF44F0;
  return sub_1BC67D860(v2, &v1);
}

double sub_1BC67BC6C()
{
  v20 = sub_1BC75ABB0();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC428, &qword_1BC7617B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19 - v7);
  v9 = sub_1BC75ACC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VideoStreamFollowUpButton.Style(0);
  sub_1BC660024(v0 + *(v14 + 20), v8, &qword_1EBCDC428, &qword_1BC7617B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v15 = *v8;
    sub_1BC75BF70();
    v16 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v20);
  }

  v17 = (*(v10 + 88))(v13, v9);
  if (v17 == *MEMORY[0x1E697F650])
  {
    return 1.14;
  }

  if (v17 == *MEMORY[0x1E697F660])
  {
    return 1.27;
  }

  if (v17 == *MEMORY[0x1E697F630])
  {
    return 1.45;
  }

  if (v17 == *MEMORY[0x1E697F670])
  {
    return 1.82;
  }

  if (v17 == *MEMORY[0x1E697F668])
  {
    return 2.27;
  }

  result = 2.82;
  if (v17 != *MEMORY[0x1E697F678] && v17 != *MEMORY[0x1E697F640] && v17 != *MEMORY[0x1E697F648])
  {
    (*(v10 + 8))(v13, v9, 2.82);
    return 1.0;
  }

  return result;
}

double sub_1BC67BFF0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1BC75B810();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC448, &qword_1BC7617C8);
  sub_1BC67C200(v2, a1, a2 + *(v6 + 44));
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC450, &unk_1BC7617D0) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v9 = *MEMORY[0x1E697DBB8];
  v10 = sub_1BC75A710();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = swift_getKeyPath();
  v11 = *(v2 + 48);
  v12 = v11 * sub_1BC67BC6C();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC460, &unk_1BC761810) + 36));
  v14 = *(sub_1BC75A9C0() + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1BC75AC90();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = v12;
  v13[1] = v12;
  *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC468, &qword_1BC76D0D0) + 36)) = 256;
  v17 = *(v2 + 32);
  sub_1BC67BC6C();
  v18 = *(v2 + 40);
  sub_1BC67BC6C();
  sub_1BC75B810();
  sub_1BC75A810();
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC470, &qword_1BC761820) + 36));
  *v19 = v21;
  v19[1] = v22;
  result = *&v23;
  v19[2] = v23;
  return result;
}

uint64_t sub_1BC67C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v45 = a3;
  v4 = sub_1BC75AEF0();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC520, &qword_1BC761C70);
  v7 = *(*(v39 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC528, &qword_1BC761C78);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v38 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38 - v23;
  v25 = *(a1 + *(type metadata accessor for VideoStreamFollowUpButton.Style(0) + 24));
  if (v25 == 2)
  {
    v26 = sub_1BC75B530();
  }

  else
  {
    v26 = sub_1BC75B4E0();
  }

  v27 = v26;
  KeyPath = swift_getKeyPath();
  v29 = v22 + *(v15 + 36);
  sub_1BC75B7D0();
  v30 = sub_1BC75B000();
  v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC530, &qword_1BC761CB0) + 36)] = v30;
  *v22 = KeyPath;
  v22[1] = v27;
  sub_1BC65FFBC(v22, v24, &qword_1EBCDC528, &qword_1BC761C78);
  v31 = v41;
  sub_1BC75AF00();
  if (v25 == 2)
  {
    v32 = sub_1BC75B510();
  }

  else
  {
    v32 = sub_1BC75B530();
  }

  v33 = v32;
  (*(v42 + 32))(v12, v31, v43);
  *&v12[*(v39 + 36)] = v33;
  sub_1BC65FFBC(v12, v14, &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC660024(v24, v19, &qword_1EBCDC528, &qword_1BC761C78);
  v34 = v44;
  sub_1BC660024(v14, v44, &qword_1EBCDC520, &qword_1BC761C70);
  v35 = v45;
  sub_1BC660024(v19, v45, &qword_1EBCDC528, &qword_1BC761C78);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC538, &unk_1BC761CB8);
  sub_1BC660024(v34, v35 + *(v36 + 48), &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC66008C(v14, &qword_1EBCDC520, &qword_1BC761C70);
  sub_1BC66008C(v24, &qword_1EBCDC528, &qword_1BC761C78);
  sub_1BC66008C(v34, &qword_1EBCDC520, &qword_1BC761C70);
  return sub_1BC66008C(v19, &qword_1EBCDC528, &qword_1BC761C78);
}

uint64_t sub_1BC67C5C0@<X0>(uint64_t *a1@<X8>)
{
  v60 = a1;
  v1 = type metadata accessor for FollowUpButtons(0);
  v2 = *(v1 - 8);
  v56 = v1 - 8;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v49 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v57 = &v49 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v49 - v10;
  v54 = _s6LayoutV4ModeOMa(0);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = (&v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1BC759CA0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v49 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC759EE0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AnalyticsUIContext(0);
  v21 = *(v51 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BC759FE0();
  v53 = v24;
  v25 = *(v24 - 8);
  v26 = v25;
  v27 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC67E5EC(&unk_1F3B289F0);
  sub_1BC67E754(&unk_1F3B28A10);
  v52 = v29;
  sub_1BC759F70();
  sub_1BC759EB0();
  v30 = v49;
  sub_1BC759BC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v31 = *(v25 + 72);
  v32 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1BC761600;
  (*(v25 + 16))(v33 + v32, v29, v24);
  *v13 = v33;
  swift_storeEnumTagMultiPayload();
  v34 = v50;
  sub_1BC663D18(v20, v30, &unk_1F3B28A20, v13, v50);
  v36 = v55;
  v35 = v56;
  v37 = *(v56 + 28);
  sub_1BC67D594(v34, &v55[v37], type metadata accessor for AnalyticsUIContext);
  v38 = *(v21 + 56);
  v39 = v51;
  v38(&v36[v37], 0, 1, v51);
  *v36 = 1;
  v40 = *(v35 + 28);
  v41 = v57;
  sub_1BC67D594(v34, &v57[v40], type metadata accessor for AnalyticsUIContext);
  v38(&v41[v40], 0, 1, v39);
  *v41 = 0;
  v42 = v58;
  sub_1BC67D594(v36, v58, type metadata accessor for FollowUpButtons);
  v43 = v59;
  sub_1BC67D594(v41, v59, type metadata accessor for FollowUpButtons);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC500, &qword_1BC761C58);
  v45 = v60;
  v60[3] = v44;
  v45[4] = sub_1BC633C54(&qword_1EBCDC508, &qword_1EBCDC500, &qword_1BC761C58);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  sub_1BC67D594(v42, boxed_opaque_existential_1, type metadata accessor for FollowUpButtons);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC510, &unk_1BC761C60);
  sub_1BC67D594(v43, boxed_opaque_existential_1 + *(v47 + 48), type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v41, type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v36, type metadata accessor for FollowUpButtons);
  sub_1BC67D8E0(v34, type metadata accessor for AnalyticsUIContext);
  (*(v26 + 8))(v52, v53);
  sub_1BC67D8E0(v43, type metadata accessor for FollowUpButtons);
  return sub_1BC67D8E0(v42, type metadata accessor for FollowUpButtons);
}

uint64_t sub_1BC67CBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BC660024(a1, &v6 - v4, &qword_1EBCDC5D0, &unk_1BC761EE0);
  return sub_1BC75AAE0();
}

uint64_t sub_1BC67CC80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AB10();
  *a1 = result;
  return result;
}

uint64_t sub_1BC67CCAC(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BC75AB20();
}

uint64_t sub_1BC67CCD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC75AAF0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC67CD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BC67CE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC75AA70();
  *a1 = result;
  return result;
}

uint64_t sub_1BC67CE78(uint64_t *a1)
{
  v1 = *a1;

  return sub_1BC75AA80();
}

uint64_t _s26SensitiveContentAnalysisUI26VideoCallOverlayBackgroundV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v66 = &v64 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v64 - v11;
  v12 = type metadata accessor for VideoCallOverlayBackground.Kind(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v64 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D8, &unk_1BC761DC0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v64 - v28;
  v30 = (&v64 + *(v27 + 56) - v28);
  sub_1BC67D594(a1, &v64 - v28, type metadata accessor for VideoCallOverlayBackground.Kind);
  sub_1BC67D594(a2, v30, type metadata accessor for VideoCallOverlayBackground.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC67D594(v29, v19, type metadata accessor for VideoCallOverlayBackground.Kind);
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
      v37 = *&v19[v36];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        (*(v69 + 8))(v19, v68);
        goto LABEL_18;
      }

      v38 = *(v30 + v36);
      v39 = v69;
      v40 = v67;
      v41 = v30;
      v42 = v68;
      (*(v69 + 32))(v67, v41, v68);
      v43 = MEMORY[0x1BFB24B70](v19, v40);
      v44 = *(v39 + 8);
      v44(v19, v42);
      if (v43)
      {
        v45 = sub_1BC679138(v37, v38);

        v46 = v40;
LABEL_21:
        v44(v46, v42);
        goto LABEL_22;
      }

      v62 = v40;
      goto LABEL_26;
    }

    sub_1BC67D594(v29, v16, type metadata accessor for VideoCallOverlayBackground.Kind);
    v57 = *v16;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_18;
    }

    v45 = sub_1BC679138(v57, *v30);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1BC67D594(v29, v24, type metadata accessor for VideoCallOverlayBackground.Kind);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
      v33 = *&v24[v32];
      v34 = swift_getEnumCaseMultiPayload();
      v35 = v69;
      if (v34)
      {

        (*(v35 + 8))(v24, v68);
LABEL_18:
        sub_1BC66008C(v29, &qword_1EBCDC5D8, &unk_1BC761DC0);
LABEL_28:
        v45 = 0;
        return v45 & 1;
      }

      v58 = *(v30 + v32);
      v59 = v65;
      v60 = v30;
      v42 = v68;
      (*(v69 + 32))(v65, v60, v68);
      v61 = MEMORY[0x1BFB24B70](v24, v59);
      v44 = *(v35 + 8);
      v44(v24, v42);
      if (v61)
      {
        v45 = sub_1BC679138(v33, v58);

        v46 = v59;
        goto LABEL_21;
      }

      v62 = v59;
LABEL_26:
      v44(v62, v42);
      goto LABEL_27;
    }

    sub_1BC67D594(v29, v22, type metadata accessor for VideoCallOverlayBackground.Kind);
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
    v48 = *&v22[v47];
    v49 = swift_getEnumCaseMultiPayload();
    v50 = v69;
    if (v49 != 1)
    {

      (*(v50 + 8))(v22, v68);
      goto LABEL_18;
    }

    v51 = *(v30 + v47);
    v52 = v66;
    v53 = v30;
    v54 = v68;
    (*(v69 + 32))(v66, v53, v68);
    v55 = MEMORY[0x1BFB24B70](v22, v52);
    v56 = *(v50 + 8);
    v56(v22, v54);
    if ((v55 & 1) == 0)
    {
      v56(v52, v54);
LABEL_27:

      sub_1BC67D8E0(v29, type metadata accessor for VideoCallOverlayBackground.Kind);
      goto LABEL_28;
    }

    v45 = sub_1BC679138(v48, v51);

    v56(v52, v54);
  }

LABEL_22:
  sub_1BC67D8E0(v29, type metadata accessor for VideoCallOverlayBackground.Kind);
  return v45 & 1;
}

uint64_t sub_1BC67D564(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1BC67D594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC67D5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC67D664()
{
  v1 = *(type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1BC67AF00();
}

unint64_t sub_1BC67D6C0()
{
  result = qword_1EBCDC408;
  if (!qword_1EBCDC408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E8, &qword_1BC761730);
    sub_1BC67D778();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC408);
  }

  return result;
}

unint64_t sub_1BC67D778()
{
  result = qword_1EBCDC410;
  if (!qword_1EBCDC410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E0, &qword_1BC761728);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    sub_1BC67D898(&qword_1EDDCE000, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC410);
  }

  return result;
}

uint64_t sub_1BC67D898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC67D8E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BC67D9D8()
{
  type metadata accessor for VideoCallOverlayBackground.Kind(319);
  if (v0 <= 0x3F)
  {
    sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC67DADC()
{
  sub_1BC67DB54();
  if (v0 <= 0x3F)
  {
    sub_1BC67DBD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BC67DB54()
{
  if (!qword_1EDDCEE60)
  {
    sub_1BC759FE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCEE60);
    }
  }
}

void sub_1BC67DBD4()
{
  if (!qword_1EDDCDFE0)
  {
    sub_1BC67E134(0, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCDFE0);
    }
  }
}

void sub_1BC67DC84()
{
  sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC67DD58()
{
  sub_1BC67DE5C(319, qword_1EDDCE810, &qword_1EBCDC480, &unk_1BC761B50);
  if (v0 <= 0x3F)
  {
    sub_1BC67DE5C(319, &qword_1EBCDC488, &qword_1EBCDC490, &unk_1BC764690);
    if (v1 <= 0x3F)
    {
      sub_1BC67E134(319, &unk_1EDDCF078, type metadata accessor for AnalyticsUIContext, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC67DE5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BC75A720();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VideoStreamFollowUpButton.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoStreamFollowUpButton.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1BC67E014(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1BC67E030(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1BC67E080()
{
  sub_1BC67E134(319, &qword_1EBCDC498, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC67E134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BC67E1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC67E1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BC67E270()
{
  result = qword_1EBCDC4C0;
  if (!qword_1EBCDC4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC438, &qword_1BC7617B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3F0, &qword_1BC761738);
    type metadata accessor for VideoStreamFollowUpButton.Style(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC3E8, &qword_1BC761730);
    sub_1BC67D6C0();
    swift_getOpaqueTypeConformance2();
    sub_1BC67D898(&qword_1EBCDC430, type metadata accessor for VideoStreamFollowUpButton.Style);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4C0);
  }

  return result;
}

unint64_t sub_1BC67E3C4()
{
  result = qword_1EBCDC4C8;
  if (!qword_1EBCDC4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC470, &qword_1BC761820);
    sub_1BC67E450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4C8);
  }

  return result;
}

unint64_t sub_1BC67E450()
{
  result = qword_1EBCDC4D0;
  if (!qword_1EBCDC4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC460, &unk_1BC761810);
    sub_1BC67E508();
    sub_1BC633C54(&qword_1EBCDC4F8, &qword_1EBCDC468, &qword_1BC76D0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4D0);
  }

  return result;
}

unint64_t sub_1BC67E508()
{
  result = qword_1EBCDC4D8;
  if (!qword_1EBCDC4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC450, &unk_1BC7617D0);
    sub_1BC633C54(&qword_1EBCDC4E0, &qword_1EBCDC4E8, &unk_1BC761C48);
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC4D8);
  }

  return result;
}

uint64_t sub_1BC67E5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
    v3 = sub_1BC75C250();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1BC75C700();

      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1BC75C5E0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BC67E80C()
{
  v2 = *(type metadata accessor for VideoStreamFollowUpButton(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC65281C;

  return sub_1BC67B364(v4, v5, v6, v0 + v3);
}

unint64_t sub_1BC67E8D4()
{
  result = qword_1EBCDC550;
  if (!qword_1EBCDC550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC548, &qword_1BC761CE0);
    sub_1BC67D898(qword_1EDDCE2C0, type metadata accessor for VideoCallOverlayBackground);
    sub_1BC633C54(&qword_1EBCDC558, &qword_1EBCDC560, &qword_1BC761CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC550);
  }

  return result;
}

uint64_t sub_1BC67E9F0()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759DF0();
  sub_1BC67F9D0(&qword_1EDDCF090, MEMORY[0x1E697B510]);
  v5 = sub_1BC75C170();
  v6 = *(v1 + 8);
  v6(v4, v0);
  result = 0;
  if (v5)
  {
    sub_1BC759E50();
    v8 = sub_1BC75C170();
    v6(v4, v0);
    if (v8)
    {
      sub_1BC759E90();
      v9 = sub_1BC75C170();
      v6(v4, v0);
      return ~v9 & 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

id sub_1BC67EE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1BC759EE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  v18 = sub_1BC75A060();
  sub_1BC75A070();

  if (!v3)
  {
    v32 = a1;
    v33 = v10;
    v19 = v34;
    sub_1BC759EC0();
    sub_1BC759E50();
    sub_1BC75C100();
    v20 = *(v11 + 8);
    v21 = v15;
    v22 = v33;
    v20(v21, v33);
    sub_1BC67F968(v9);
    v23 = sub_1BC67E9F0();
    if (v24)
    {
      type metadata accessor for SCAError(0);
      v18 = v25;
      v35 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError);
      sub_1BC759700();
      swift_willThrow();
      v20(v17, v22);
    }

    else
    {
      v27 = v23;
      v31 = v20;
      if (a2)
      {
        v28 = sub_1BC75BA30();
      }

      else
      {
        v28 = 0;
      }

      v29 = v31;
      v18 = [objc_allocWithZone(SCUIInterventionAlertController) initWithWorkflow:v32 contextDictionary:v28 options:v19 type:v27];

      v29(v17, v33);
    }
  }

  return v18;
}

uint64_t sub_1BC67F10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = sub_1BC759EE0();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = *(v42 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v41 = &v37 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = sub_1BC759CA0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75BFE0();
  v27 = sub_1BC759BD0();
  (*(v23 + 8))(v26, v22);
  if (v27)
  {
    sub_1BC75A060();
    sub_1BC75A070();

    if (!v3)
    {
      sub_1BC759EC0();
      sub_1BC759DF0();
      sub_1BC75C100();
      v29 = *(v42 + 8);
      v30 = v19;
      v31 = v43;
      v29(v30, v43);
      sub_1BC67F968(v9);
      v29(v21, v31);
      v32 = v40;
      sub_1BC759EC0();
      sub_1BC759DF0();
      v33 = v41;
      sub_1BC75C100();
      v29(v14, v31);
      sub_1BC67F968(v32);
      v34 = sub_1BC67E9F0();
      if (v35)
      {
        type metadata accessor for SCAError(0);
        v44 = 20;
        sub_1BC678250(MEMORY[0x1E69E7CC0]);
        sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError);
        sub_1BC759700();
        swift_willThrow();
        return (v29)(v33, v31);
      }

      else
      {
        v36 = [objc_opt_self() menuWithDelegate:v38 additionalOptions:v39 interventionType:v34];
        v29(v33, v31);
        return v36;
      }
    }
  }

  else
  {
    type metadata accessor for SCAError(0);
    v44 = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError);
    sub_1BC759700();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BC67F5CC(uint64_t a1)
{
  v30 = a1;
  v2 = sub_1BC7599C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_1BC759EE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v27 - v17;
  sub_1BC75A060();
  sub_1BC75A070();

  if (!v1)
  {
    v28 = v2;
    v29 = v3;
    sub_1BC759EC0();
    sub_1BC759DF0();
    sub_1BC75C100();
    v19 = v11;
    v20 = *(v12 + 8);
    v20(v16, v19);
    sub_1BC67F968(v10);
    v21 = sub_1BC67E9F0();
    if (v22)
    {
      type metadata accessor for SCAError(0);
      v32 = 20;
      sub_1BC678250(MEMORY[0x1E69E7CC0]);
      sub_1BC67F9D0(&unk_1EBCDC290, type metadata accessor for SCAError);
      sub_1BC759700();
      swift_willThrow();
      return (v20)(v31, v19);
    }

    else
    {
      v23 = v21;
      sub_1BC7599B0();
      v24 = sub_1BC759950();
      v25 = [objc_opt_self() modelWithOptions:v30 interventionType:v23 locale:v24 menuType:2];

      (*(v29 + 8))(v6, v28);
      v26 = [objc_opt_self() menuWithModel_];

      v20(v31, v19);
      return v26;
    }
  }

  return result;
}

uint64_t sub_1BC67F968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC67F9D0(unint64_t *a1, void (*a2)(uint64_t))
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

double SensitiveContentTipViewStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BC75ABF0();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E0, &qword_1BC761DD0);
  sub_1BC67FAB0(a1 + *(v2 + 44));
  v3 = sub_1BC75B000();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E8, &qword_1BC761DD8) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_1BC67FAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC608, &qword_1BC761E48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v18 = sub_1BC75ABF0();
  v20 = 1;
  sub_1BC67FE0C(&v32);
  v25 = *&v33[48];
  v26 = *&v33[64];
  v27[0] = *&v33[80];
  *(v27 + 9) = *&v33[89];
  v21 = v32;
  v22 = *v33;
  v23 = *&v33[16];
  v24 = *&v33[32];
  v28[0] = v32;
  v28[1] = *v33;
  v28[2] = *&v33[16];
  v28[3] = *&v33[32];
  v28[4] = *&v33[48];
  v28[5] = *&v33[64];
  v29[0] = *&v33[80];
  *(v29 + 9) = *&v33[89];
  sub_1BC660024(&v21, &v30, &qword_1EBCDC610, &qword_1BC761E50);
  sub_1BC66008C(v28, &qword_1EBCDC610, &qword_1BC761E50);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v9 = v20;
  *v8 = sub_1BC75ACE0();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC618, &qword_1BC761E58);
  sub_1BC680108(&v8[*(v10 + 44)]);
  sub_1BC660024(v8, v6, &qword_1EBCDC608, &qword_1BC761E48);
  v11 = v18;
  v30 = v18;
  v31[0] = v9;
  *&v31[81] = v19[5];
  *&v31[65] = v19[4];
  *&v31[1] = v19[0];
  *&v31[17] = v19[1];
  *&v31[97] = v19[6];
  *&v31[113] = v19[7];
  *&v31[33] = v19[2];
  *&v31[49] = v19[3];
  v12 = *&v31[96];
  *(a1 + 96) = *&v31[80];
  *(a1 + 112) = v12;
  *(a1 + 128) = *&v31[112];
  *(a1 + 144) = v31[128];
  v13 = *&v31[32];
  *(a1 + 32) = *&v31[16];
  *(a1 + 48) = v13;
  v14 = *&v31[64];
  *(a1 + 64) = *&v31[48];
  *(a1 + 80) = v14;
  v15 = *v31;
  *a1 = v30;
  *(a1 + 16) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC620, &qword_1BC761E60);
  sub_1BC660024(v6, a1 + *(v16 + 48), &qword_1EBCDC608, &qword_1BC761E48);
  sub_1BC660024(&v30, &v32, &qword_1EBCDC628, &qword_1BC761E68);
  sub_1BC66008C(v8, &qword_1EBCDC608, &qword_1BC761E48);
  sub_1BC66008C(v6, &qword_1EBCDC608, &qword_1BC761E48);
  *&v33[65] = v19[4];
  *&v33[81] = v19[5];
  *&v33[97] = v19[6];
  v34 = v19[7];
  *&v33[1] = v19[0];
  *&v33[17] = v19[1];
  *&v33[33] = v19[2];
  v32 = v11;
  v33[0] = v9;
  *&v33[49] = v19[3];
  return sub_1BC66008C(&v32, &qword_1EBCDC628, &qword_1BC761E68);
}

double sub_1BC67FE0C@<D0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24[-1] - v4;
  v6 = sub_1BC75B5D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1BC75A510())
  {
    (*(v7 + 104))(v10, *MEMORY[0x1E6981630], v6);
    sub_1BC75B610();

    (*(v7 + 8))(v10, v6);
    sub_1BC75ACF0();
    v11 = sub_1BC75AD00();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    v12 = sub_1BC75B5E0();

    sub_1BC66008C(v5, &qword_1EBCDC5D0, &unk_1BC761EE0);
    v13 = sub_1BC75B560();
    sub_1BC75B810();
    sub_1BC75A810();
    v28 = 1;
    *&v27[6] = v30;
    *&v27[22] = v31;
    *&v27[38] = v32;
    v14 = sub_1BC75B010();
    sub_1BC75A670();
    *(v24 + 10) = *v27;
    *(&v24[1] + 10) = *&v27[16];
    v29 = 0;
    *&v23 = v12;
    *(&v23 + 1) = v13;
    *&v24[0] = 0;
    WORD4(v24[0]) = 1;
    *(&v24[2] + 10) = *&v27[32];
    *(&v24[3] + 1) = *&v27[46];
    LOBYTE(v25) = v14;
    *(&v25 + 1) = v15;
    *v26 = v16;
    *&v26[8] = v17;
    *&v26[16] = v18;
    v26[24] = 0;
    nullsub_1(&v23);
    v37 = v24[3];
    v38 = v25;
    v39[0] = *v26;
    *(v39 + 9) = *&v26[9];
    v33 = v23;
    v34 = v24[0];
    v35 = v24[1];
    v36 = v24[2];
  }

  else
  {
    sub_1BC681050(&v33);
  }

  v19 = v38;
  a1[4] = v37;
  a1[5] = v19;
  a1[6] = v39[0];
  *(a1 + 105) = *(v39 + 9);
  v20 = v34;
  *a1 = v33;
  a1[1] = v20;
  result = *&v35;
  v22 = v36;
  a1[2] = v35;
  a1[3] = v22;
  return result;
}

uint64_t sub_1BC680108@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC630, &qword_1BC761E70);
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x1EEE9AC00](v1);
  v30 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC638, &qword_1BC761E78);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  *v14 = sub_1BC75ABF0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC640, &qword_1BC761E80);
  sub_1BC680498(&v14[*(v15 + 44)]);
  v16 = sub_1BC75B060();
  sub_1BC75A670();
  v17 = &v14[*(v9 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v33 = sub_1BC75A520();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC648, &qword_1BC761E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC650, &qword_1BC761E90);
  sub_1BC633C54(&qword_1EBCDC658, &qword_1EBCDC648, &qword_1BC761E88);
  sub_1BC633C54(&qword_1EBCDC660, &qword_1EBCDC650, &qword_1BC761E90);
  sub_1BC680CA0();
  sub_1BC75B780();
  v22 = v32;
  sub_1BC660024(v14, v32, &qword_1EBCDC638, &qword_1BC761E78);
  v23 = v2[2];
  v24 = v30;
  v23(v30, v7, v1);
  v25 = v22;
  v26 = v31;
  sub_1BC660024(v25, v31, &qword_1EBCDC638, &qword_1BC761E78);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC670, &qword_1BC761E98);
  v23((v26 + *(v27 + 48)), v24, v1);
  v28 = v2[1];
  v28(v7, v1);
  sub_1BC66008C(v14, &qword_1EBCDC638, &qword_1BC761E78);
  v28(v24, v1);
  return sub_1BC66008C(v32, &qword_1EBCDC638, &qword_1BC761E78);
}

uint64_t sub_1BC680498@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC690, &qword_1BC761EB8);
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - v6;
  v7 = sub_1BC75A530();
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    sub_1BC75B080();
    v13 = v11 & 1;
    v40 = v11 & 1;
    v14 = sub_1BC75B190();
    v34 = v15;
    v17 = v16;

    sub_1BC680E6C(v7, v9, v13);

    v39 = sub_1BC75AEE0();
    v18 = v34;
    v7 = sub_1BC75B160();
    v9 = v19;
    v21 = v20;
    v36 = v22;
    sub_1BC680E6C(v14, v18, v17 & 1);

    v11 = v21 & 1;
  }

  else
  {
    v36 = 0;
  }

  v34 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC698, &unk_1BC761EC0);
  sub_1BC680E7C();
  v23 = v35;
  sub_1BC75B680();
  v25 = v37;
  v24 = v38;
  v26 = *(v37 + 16);
  v26(v38, v23, v2);
  *a1 = v7;
  *(a1 + 8) = v9;
  v27 = v7;
  v28 = v36;
  *(a1 + 16) = v11;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6C8, &qword_1BC761ED8);
  v26((a1 + *(v29 + 64)), v24, v2);
  v30 = v34;
  sub_1BC680FB8(v27, v34, v11, v28);
  v31 = *(v25 + 8);
  v31(v23, v2);
  v31(v24, v2);
  return sub_1BC68100C(v27, v30, v11, v28);
}

uint64_t sub_1BC68079C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BC75B5C0();
  result = sub_1BC75B560();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1BC6807E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC678, &qword_1BC761EA0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC680, &qword_1BC761EA8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v29[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29[-v18];
  sub_1BC75B770();
  sub_1BC75B810();
  sub_1BC75A810();
  v20 = &v19[*(v13 + 44)];
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v20[2] = v33;
  sub_1BC75A5E0();
  v30 = a1;
  sub_1BC75B680();
  LOBYTE(a1) = sub_1BC75B060();
  sub_1BC75A670();
  v22 = &v11[*(v5 + 44)];
  *v22 = a1;
  *(v22 + 1) = v23;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  *(v22 + 4) = v26;
  v22[40] = 0;
  sub_1BC660024(v19, v17, &qword_1EBCDC680, &qword_1BC761EA8);
  sub_1BC660024(v11, v9, &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC660024(v17, a2, &qword_1EBCDC680, &qword_1BC761EA8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC688, &qword_1BC761EB0);
  sub_1BC660024(v9, a2 + *(v27 + 48), &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC66008C(v11, &qword_1EBCDC678, &qword_1BC761EA0);
  sub_1BC66008C(v19, &qword_1EBCDC680, &qword_1BC761EA8);
  sub_1BC66008C(v9, &qword_1EBCDC678, &qword_1BC761EA0);
  return sub_1BC66008C(v17, &qword_1EBCDC680, &qword_1BC761EA8);
}

double sub_1BC680A80@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BC75ABF0();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E0, &qword_1BC761DD0);
  sub_1BC67FAB0(a1 + *(v2 + 44));
  v3 = sub_1BC75B000();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5E8, &qword_1BC761DD8) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveContentTipViewStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SensitiveContentTipViewStyle(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1BC680BE4()
{
  result = qword_1EBCDC5F0;
  if (!qword_1EBCDC5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC5E8, &qword_1BC761DD8);
    sub_1BC633C54(&qword_1EBCDC5F8, &qword_1EBCDC600, &qword_1BC761E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC5F0);
  }

  return result;
}

unint64_t sub_1BC680CA0()
{
  result = qword_1EBCDC668;
  if (!qword_1EBCDC668)
  {
    sub_1BC75A5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC668);
  }

  return result;
}

uint64_t sub_1BC680CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1BC75A5D0();
  v5 = v4();
  v7 = v6;
  v9 = v8;

  v10 = sub_1BC75A5B0();
  v12 = v11;
  v13 = sub_1BC729328();
  v14 = *v13 == v10 && v13[1] == v12;
  if (v14 || (sub_1BC75C5E0() & 1) != 0)
  {

    sub_1BC75B4E0();
  }

  else
  {
    v15 = sub_1BC72931C();
    if (*v15 != v10 || v15[1] != v12)
    {
      sub_1BC75C5E0();
    }

    sub_1BC75B4F0();
  }

  v16 = sub_1BC75B160();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BC680E6C(v5, v7, v9 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_1BC680E6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1BC680E7C()
{
  result = qword_1EBCDC6A0;
  if (!qword_1EBCDC6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC698, &unk_1BC761EC0);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6A0);
  }

  return result;
}

unint64_t sub_1BC680F34()
{
  result = qword_1EBCDC6A8;
  if (!qword_1EBCDC6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC6B0, &qword_1BC7698B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6A8);
  }

  return result;
}

uint64_t sub_1BC680FB8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680FFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1BC680FFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BC68100C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1BC680E6C(result, a2, a3 & 1);
  }

  return result;
}

double sub_1BC681050(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BC68106C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Report.Authority(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v12, type metadata accessor for Report.Authority);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v13._countAndFlagsBits = 0x454C505041;
    v13._object = 0xE500000000000000;
    result = SCLocalizedStringKey.init(stringLiteral:)(v13).localized._countAndFlagsBits;
    v16 = v17[0];
    v15 = v17[1];
  }

  else
  {
    sub_1BC684D3C(v12, v8, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v16 = *v8;
    v15 = v8[1];

    result = sub_1BC68164C(v8, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  *a1 = v16;
  a1[1] = v15;
  return result;
}

uint64_t sub_1BC681254@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Report.Authority(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v16, type metadata accessor for Report.Authority);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_1BC7597E0();
    v17 = sub_1BC759800();
    v18 = *(v17 - 8);
    result = (*(v18 + 48))(v7, 1, v17);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return (*(v18 + 32))(a1, v7, v17);
    }
  }

  else
  {
    sub_1BC684D3C(v16, v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    v20 = *(v8 + 28);
    v21 = sub_1BC759800();
    (*(*(v21 - 8) + 16))(a1, &v12[v20], v21);
    return sub_1BC68164C(v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  return result;
}

uint64_t sub_1BC6814FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Report.Authority(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v7, type metadata accessor for Report.Authority);
  v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    v9._countAndFlagsBits = 0x525F54494D425553;
    v9._object = 0xED000054524F5045;
    result = SCLocalizedStringKey.init(stringLiteral:)(v9).localized._countAndFlagsBits;
  }

  else
  {
    v11._countAndFlagsBits = 0x5F554F595F455241;
    v11._object = 0xEC00000045525553;
    SCLocalizedStringKey.init(stringLiteral:)(v11);
    result = sub_1BC68164C(v7, type metadata accessor for Report.Authority);
  }

  v12 = v13[1];
  *a1 = v13[0];
  a1[1] = v12;
  return result;
}

uint64_t sub_1BC68164C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6816AC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Report.Authority(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v2, v16, type metadata accessor for Report.Authority);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    v17._countAndFlagsBits = 0xD000000000000019;
    v17._object = 0x80000001BC772070;
    result = SCLocalizedStringKey.init(stringLiteral:)(v17).localized._countAndFlagsBits;
  }

  else
  {
    sub_1BC684D3C(v16, v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._object = 0x80000001BC772090;
    v19._countAndFlagsBits = 0xD000000000000011;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
    v20 = v12[1];
    v24 = *v12;
    v25 = v20;

    v21.localized._countAndFlagsBits = &v24;
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v21);

    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
    SCLocalizedStringKey.init(stringInterpolation:)(v7, &v24);
    result = sub_1BC68164C(v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  }

  v23 = v25;
  *a1 = v24;
  a1[1] = v23;
  return result;
}

uint64_t sub_1BC681900@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1BC759F50();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Report.TestingOptions(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
  v58 = *(v15 - 8);
  v59 = v15;
  v16 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v61 = &v54 - v20;
  v21 = type metadata accessor for Report.Authority(0);
  v62 = *(v21 - 8);
  v22 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x20) != 0)
  {
    v55 = v24;
    v56 = v21;
    v60 = a1;
    v57 = a3;
    v27 = sub_1BC7012B4();
    swift_beginAccess();
    sub_1BC686D0C(v27, v14, type metadata accessor for Report.TestingOptions);
    sub_1BC660024(&v14[*(v11 + 24)], v19, &qword_1EBCDBC10, &qword_1BC75F180);
    sub_1BC68164C(v14, type metadata accessor for Report.TestingOptions);
    v28 = sub_1BC759990();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (v30(v19, 1, v28) == 1)
    {
      v31 = v61;
      sub_1BC7599A0();
      if (v30(v19, 1, v28) != 1)
      {
        sub_1BC66008C(v19, &qword_1EBCDBC10, &qword_1BC75F180);
      }
    }

    else
    {
      v31 = v61;
      (*(v29 + 32))(v61, v19, v28);
      (*(v29 + 56))(v31, 0, 1, v28);
    }

    v32 = v7[13];
    v32(v10, *MEMORY[0x1E697B580], v6);
    v33 = sub_1BC759F40();
    v34 = v7[1];
    v34(v10, v6);
    if (v33)
    {
      goto LABEL_12;
    }

    v32(v10, *MEMORY[0x1E697B568], v6);
    v35 = sub_1BC759F40();
    v34(v10, v6);
    if ((v35 & 1) == 0)
    {
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7C0, &qword_1BC762A28);
    v36 = *(v58 + 72);
    v37 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1BC75F0C0;
    v39 = v38 + v37;
    sub_1BC759980();
    v40 = *(v29 + 56);
    v40(v39, 0, 1, v28);
    sub_1BC759980();
    v40(v39 + v36, 0, 1, v28);
    v41 = sub_1BC6820B8(v31, v38);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v41)
    {
      v42 = [objc_opt_self() isiMessageLoggedIn];
      v21 = v56;
      a3 = v57;
      v43 = v60;
      if (v42)
      {
        v44 = sub_1BC7599C0();
        (*(*(v44 - 8) + 8))(v43, v44);
        sub_1BC66008C(v31, &qword_1EBCDBC10, &qword_1BC75F180);
        v45 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
        v46 = v55;
        (*(*(v45 - 8) + 56))(v55, 1, 1, v45);
        sub_1BC684D3C(v46, a3, type metadata accessor for Report.Authority);
        v26 = 0;
      }

      else
      {
        if (qword_1EBCE3CA0 != -1)
        {
          swift_once();
        }

        v49 = sub_1BC75A4E0();
        __swift_project_value_buffer(v49, qword_1EBCF4580);
        v50 = sub_1BC75A4C0();
        v51 = sub_1BC75BF40();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1BC630000, v50, v51, "iMessage is not logged in, cannot report to Apple", v52, 2u);
          MEMORY[0x1BFB27EF0](v52, -1, -1);
        }

        v53 = sub_1BC7599C0();
        (*(*(v53 - 8) + 8))(v43, v53);
        sub_1BC66008C(v31, &qword_1EBCDBC10, &qword_1BC75F180);
        v26 = 1;
      }
    }

    else
    {
LABEL_12:
      v47 = sub_1BC7599C0();
      (*(*(v47 - 8) + 8))(v60, v47);
      sub_1BC66008C(v31, &qword_1EBCDBC10, &qword_1BC75F180);
      v26 = 1;
      v21 = v56;
      a3 = v57;
    }
  }

  else
  {
    v25 = sub_1BC7599C0();
    (*(*(v25 - 8) + 8))(a1, v25);
    v26 = 1;
  }

  return (*(v62 + 56))(a3, v26, 1, v21);
}

uint64_t sub_1BC6820B8(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_1BC759990();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC10, &qword_1BC75F180);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7C8, &qword_1BC762A30);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_1BC660024(v16, v13, &qword_1EBCDBC10, &qword_1BC75F180);
    sub_1BC660024(v32, &v13[v19], &qword_1EBCDBC10, &qword_1BC75F180);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_1BC660024(v13, v33, &qword_1EBCDBC10, &qword_1BC75F180);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1BC68616C(&qword_1EBCDC7D0, MEMORY[0x1E6969680]);
    v29 = sub_1BC75BAB0();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_1BC66008C(v13, &qword_1EBCDBC10, &qword_1BC75F180);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_1BC66008C(v13, &qword_1EBCDC7C8, &qword_1BC762A30);
    goto LABEL_5;
  }

  sub_1BC66008C(v13, &qword_1EBCDBC10, &qword_1BC75F180);
  return 1;
}

uint64_t Report.Authority.DirectAuthorityDetails.hash(into:)()
{
  v1 = v0;
  v7 = *v0;
  v9 = v0[1];
  sub_1BC684A00();
  sub_1BC75BA70();
  v2 = v0[2];
  sub_1BC75C050();
  v8 = v1[3];
  v10 = v1[4];
  sub_1BC75BA70();
  v3 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v4 = *(v3 + 28);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0]);
  sub_1BC75BA70();
  v5 = v1 + *(v3 + 32);
  return sub_1BC75BA70();
}

uint64_t Report.Authority.DirectAuthorityDetails.hashValue.getter()
{
  v1 = v0;
  sub_1BC75C700();
  v7 = *v0;
  v9 = v0[1];
  sub_1BC684A00();
  sub_1BC75BA70();
  v2 = v0[2];
  sub_1BC75C050();
  v8 = v1[3];
  v10 = v1[4];
  sub_1BC75BA70();
  v3 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v4 = *(v3 + 28);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0]);
  sub_1BC75BA70();
  v5 = v1 + *(v3 + 32);
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t sub_1BC6826B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v9 = *v2;
  v11 = v2[1];
  sub_1BC684A00();
  sub_1BC75BA70();
  v5 = v2[2];
  sub_1BC75C050();
  v10 = v4[3];
  v12 = v4[4];
  sub_1BC75BA70();
  v6 = *(a2 + 28);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0]);
  sub_1BC75BA70();
  v7 = v4 + *(a2 + 32);
  return sub_1BC75BA70();
}

uint64_t sub_1BC6827C0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1BC75C700();
  v9 = *v2;
  v11 = v2[1];
  sub_1BC684A00();
  sub_1BC75BA70();
  v5 = v2[2];
  sub_1BC75C050();
  v10 = v4[3];
  v12 = v4[4];
  sub_1BC75BA70();
  v6 = *(a2 + 28);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0]);
  sub_1BC75BA70();
  v7 = v4 + *(a2 + 32);
  sub_1BC75BA70();
  return sub_1BC75C720();
}

uint64_t Report.Authority.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Report.Authority(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v1, v10, type metadata accessor for Report.Authority);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    return MEMORY[0x1BFB272F0](1);
  }

  sub_1BC684D3C(v10, v6, type metadata accessor for Report.Authority.DirectAuthorityDetails);
  MEMORY[0x1BFB272F0](0);
  v12 = v6[1];
  v17 = *v6;
  v18 = v12;
  sub_1BC684A00();
  sub_1BC75BA70();
  v13 = v6[2];
  sub_1BC75C050();
  v14 = v6[4];
  v17 = v6[3];
  v18 = v14;
  sub_1BC75BA70();
  v15 = *(v2 + 28);
  sub_1BC759800();
  sub_1BC68616C(&qword_1EBCDC6E0, MEMORY[0x1E6968FB0]);
  sub_1BC75BA70();
  v16 = v6 + *(v2 + 32);
  sub_1BC75BA70();
  return sub_1BC68164C(v6, type metadata accessor for Report.Authority.DirectAuthorityDetails);
}

uint64_t Report.Authority.hashValue.getter()
{
  sub_1BC75C700();
  Report.Authority.hash(into:)();
  return sub_1BC75C720();
}

uint64_t sub_1BC682B74()
{
  sub_1BC75C700();
  Report.Authority.hash(into:)();
  return sub_1BC75C720();
}

uint64_t sub_1BC682BB8()
{
  sub_1BC75C700();
  Report.Authority.hash(into:)();
  return sub_1BC75C720();
}

unint64_t Report.AuthorityWrapper.Kind.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1BC682C0C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BC682D24()
{
  v1 = type metadata accessor for Report.Authority(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC686D0C(v0 + OBJC_IVAR___SCUIReportAuthority_authority, v4, type metadata accessor for Report.Authority);
  v5 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v6 = 1;
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    sub_1BC68164C(v4, type metadata accessor for Report.Authority);
    return 0;
  }

  return v6;
}

id sub_1BC682E1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Report.Authority(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v1);
  sub_1BC660024(a1, v6, &qword_1EBCDC6E8, &qword_1BC761EF8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC66008C(a1, &qword_1EBCDC6E8, &qword_1BC761EF8);
    sub_1BC66008C(v6, &qword_1EBCDC6E8, &qword_1BC761EF8);
    v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x30);
    v14 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    sub_1BC684D3C(v6, v11, type metadata accessor for Report.Authority);
    sub_1BC684D3C(v11, v12 + OBJC_IVAR___SCUIReportAuthority_authority, type metadata accessor for Report.Authority);
    v17.receiver = v12;
    v17.super_class = v1;
    v16 = objc_msgSendSuper2(&v17, sel_init);
    sub_1BC66008C(a1, &qword_1EBCDC6E8, &qword_1BC761EF8);
    return v16;
  }
}

uint64_t Report.AuthorityWrapper.__allocating_init(locale:moreHelpMenuOptions:interventionType:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1BC7599C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC681900(v10, a2, v14);
  v17 = (*(ObjectType + 96))(v14);
  (*(v7 + 8))(a1, v6);
  v18 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x30);
  v19 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x34);
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t Report.AuthorityWrapper.init(locale:moreHelpMenuOptions:interventionType:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1BC7599C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6E8, &qword_1BC761EF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  ObjectType = swift_getObjectType();
  (*(v7 + 16))(v10, a1, v6);
  sub_1BC681900(v10, a2, v14);
  v16 = (*(ObjectType + 96))(v14);
  (*(v7 + 8))(a1, v6);
  v17 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

id Report.AuthorityWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Report.AuthorityWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Report.AuthorityWrapper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BC683814(uint64_t a1)
{
  v2 = sub_1BC6853F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683850(uint64_t a1)
{
  v2 = sub_1BC6853F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BC68388C()
{
  v1 = *v0;
  v2 = 0x6874756F5377656ELL;
  v3 = 0x6169726F74636976;
  if (v1 != 6)
  {
    v3 = 0x61696E616D736174;
  }

  v4 = 0x7375416874756F73;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 2)
  {
    v5 = 0x616C736E65657571;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC6839AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC685444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC6839D4(uint64_t a1)
{
  v2 = sub_1BC685150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683A10(uint64_t a1)
{
  v2 = sub_1BC685150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683A4C(uint64_t a1)
{
  v2 = sub_1BC68539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683A88(uint64_t a1)
{
  v2 = sub_1BC68539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683AC4(uint64_t a1)
{
  v2 = sub_1BC685348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683B00(uint64_t a1)
{
  v2 = sub_1BC685348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683B3C(uint64_t a1)
{
  v2 = sub_1BC6852F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683B78(uint64_t a1)
{
  v2 = sub_1BC6852F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683BB4(uint64_t a1)
{
  v2 = sub_1BC6852A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683BF0(uint64_t a1)
{
  v2 = sub_1BC6852A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683C2C(uint64_t a1)
{
  v2 = sub_1BC6851A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683C68(uint64_t a1)
{
  v2 = sub_1BC6851A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683CA4(uint64_t a1)
{
  v2 = sub_1BC6851F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683CE0(uint64_t a1)
{
  v2 = sub_1BC6851F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683D1C(uint64_t a1)
{
  v2 = sub_1BC68524C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC683D58(uint64_t a1)
{
  v2 = sub_1BC68524C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC683D94(void *a1, int a2)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6F0, &qword_1BC761F00);
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6F8, &qword_1BC761F08);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC700, &qword_1BC761F10);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC708, &qword_1BC761F18);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC710, &qword_1BC761F20);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC718, &qword_1BC761F28);
  v44 = *(v18 - 8);
  v45 = v18;
  v19 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC720, &qword_1BC761F30);
  v42 = *(v43 - 8);
  v22 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC728, &qword_1BC761F38);
  v41 = *(v25 - 8);
  v26 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v41 - v27;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC730, &qword_1BC761F40);
  v29 = *(v62 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v32 = &v41 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC685150();
  sub_1BC75C740();
  v34 = (v29 + 8);
  if (v61 > 3u)
  {
    if (v61 > 5u)
    {
      if (v61 == 6)
      {
        v69 = 6;
        sub_1BC6851F8();
        v37 = v55;
        v38 = v62;
        sub_1BC75C4E0();
        v40 = v56;
        v39 = v57;
      }

      else
      {
        v70 = 7;
        sub_1BC6851A4();
        v37 = v58;
        v38 = v62;
        sub_1BC75C4E0();
        v40 = v59;
        v39 = v60;
      }
    }

    else if (v61 == 4)
    {
      v67 = 4;
      sub_1BC6852A0();
      v37 = v49;
      v38 = v62;
      sub_1BC75C4E0();
      v40 = v50;
      v39 = v51;
    }

    else
    {
      v68 = 5;
      sub_1BC68524C();
      v37 = v52;
      v38 = v62;
      sub_1BC75C4E0();
      v40 = v53;
      v39 = v54;
    }

    goto LABEL_16;
  }

  if (v61 > 1u)
  {
    if (v61 == 2)
    {
      v65 = 2;
      sub_1BC685348();
      v38 = v62;
      sub_1BC75C4E0();
      (*(v44 + 8))(v21, v45);
      return (*v34)(v32, v38);
    }

    v66 = 3;
    sub_1BC6852F4();
    v37 = v46;
    v38 = v62;
    sub_1BC75C4E0();
    v40 = v47;
    v39 = v48;
LABEL_16:
    (*(v40 + 8))(v37, v39);
    return (*v34)(v32, v38);
  }

  if (!v61)
  {
    v63 = 0;
    sub_1BC6853F0();
    v35 = v62;
    sub_1BC75C4E0();
    (*(v41 + 8))(v28, v25);
    return (*v34)(v32, v35);
  }

  v64 = 1;
  sub_1BC68539C();
  v38 = v62;
  sub_1BC75C4E0();
  (*(v42 + 8))(v24, v43);
  return (*v34)(v32, v38);
}

uint64_t sub_1BC684530(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_1BC6836F4(&v5, *a1);
  sub_1BC6836F4(&v4, v2);
  sub_1BC652378();
  LOBYTE(v2) = sub_1BC75BAB0();

  return v2 & 1;
}

uint64_t sub_1BC6845A8()
{
  v1 = *v0;
  sub_1BC75C700();
  sub_1BC6836F4(&v3, v1);
  sub_1BC684A00();
  sub_1BC75BA70();

  return sub_1BC75C720();
}

uint64_t sub_1BC684614()
{
  sub_1BC6836F4(&v2, *v0);
  sub_1BC684A00();
  sub_1BC75BA70();
}

uint64_t sub_1BC68466C()
{
  v1 = *v0;
  sub_1BC75C700();
  sub_1BC6836F4(&v3, v1);
  sub_1BC684A00();
  sub_1BC75BA70();

  return sub_1BC75C720();
}

uint64_t sub_1BC6846D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC684DC4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BC684728@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC685704(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1BC684770@<X0>(void *a1@<X8>)
{
  result = sub_1BC6836F4(v5, *v1);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_1BC6847AC()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF4580);
  __swift_project_value_buffer(v0, qword_1EBCF4580);
  return sub_1BC75A4D0();
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC9AuthorityO06DirectF7DetailsV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v21 = *a1;
  v23 = a1[1];
  v17 = *a2;
  v19 = a2[1];
  sub_1BC686D74();
  sub_1BC75BC70();
  sub_1BC75BC70();
  if (v15 == v13 && v16 == v14)
  {
  }

  else
  {
    v4 = sub_1BC75C5E0();

    if ((v4 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
  v5 = a1[2];
  v6 = a2[2];
  if ((sub_1BC75C040() & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = a1[3];
  v24 = a1[4];
  v18 = a2[3];
  v20 = a2[4];
  sub_1BC75BC70();
  sub_1BC75BC70();
  if (v15 == v13 && v16 == v14)
  {

    goto LABEL_10;
  }

  v7 = sub_1BC75C5E0();

  if ((v7 & 1) == 0)
  {
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

LABEL_10:
  v8 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v9 = *(v8 + 28);
  if ((sub_1BC7597B0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = *(v8 + 32);
  v11 = sub_1BC7597B0();
  return v11 & 1;
}

unint64_t sub_1BC684A00()
{
  result = qword_1EBCDC6D8;
  if (!qword_1EBCDC6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC6D8);
  }

  return result;
}

uint64_t _s26SensitiveContentAnalysisUI6ReportC9AuthorityO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Report.Authority(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7D8, &qword_1BC762A38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v22 - v16;
  v18 = *(v15 + 56);
  sub_1BC686D0C(a1, &v22 - v16, type metadata accessor for Report.Authority);
  sub_1BC686D0C(a2, &v17[v18], type metadata accessor for Report.Authority);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BC686D0C(v17, v12, type metadata accessor for Report.Authority);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_1BC684D3C(&v17[v18], v8, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      v20 = _s26SensitiveContentAnalysisUI6ReportC9AuthorityO06DirectF7DetailsV2eeoiySbAG_AGtFZ_0(v12, v8);
      sub_1BC68164C(v8, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      sub_1BC68164C(v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
      sub_1BC68164C(v17, type metadata accessor for Report.Authority);
      return v20 & 1;
    }

    sub_1BC68164C(v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v17, &qword_1EBCDC7D8, &qword_1BC762A38);
    v20 = 0;
    return v20 & 1;
  }

  sub_1BC68164C(v17, type metadata accessor for Report.Authority);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1BC684D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC684DC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  v3._object = 0x80000001BC772130;
  SCLocalizedStringKey.init(stringLiteral:)(v3);
  sub_1BC652378();
  v4 = sub_1BC75BAB0();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6._countAndFlagsBits = 0x74756F532077654ELL;
    v6._object = 0xEF73656C61572068;
    SCLocalizedStringKey.init(stringLiteral:)(v6);
    v7 = sub_1BC75BAB0();

    if (v7)
    {

      return 1;
    }

    else
    {
      v8._countAndFlagsBits = 0xD000000000000012;
      v8._object = 0x80000001BC772110;
      SCLocalizedStringKey.init(stringLiteral:)(v8);
      v9 = sub_1BC75BAB0();

      if (v9)
      {

        return 2;
      }

      else
      {
        v10._countAndFlagsBits = 0x616C736E65657551;
        v10._object = 0xEA0000000000646ELL;
        SCLocalizedStringKey.init(stringLiteral:)(v10);
        v11 = sub_1BC75BAB0();

        if (v11)
        {

          return 3;
        }

        else
        {
          v12._countAndFlagsBits = 0x7541206874756F53;
          v12._object = 0xEF61696C61727473;
          SCLocalizedStringKey.init(stringLiteral:)(v12);
          v13 = sub_1BC75BAB0();

          if (v13)
          {

            return 4;
          }

          else
          {
            v14._object = 0x80000001BC7720F0;
            v14._countAndFlagsBits = 0xD000000000000011;
            SCLocalizedStringKey.init(stringLiteral:)(v14);
            v15 = sub_1BC75BAB0();

            if (v15)
            {

              return 5;
            }

            else
            {
              v16._countAndFlagsBits = 0x6169726F74636956;
              v16._object = 0xE800000000000000;
              SCLocalizedStringKey.init(stringLiteral:)(v16);
              v17 = sub_1BC75BAB0();

              if (v17)
              {

                return 6;
              }

              else
              {
                v18._countAndFlagsBits = 0x61696E616D736154;
                v18._object = 0xE800000000000000;
                SCLocalizedStringKey.init(stringLiteral:)(v18);
                v19 = sub_1BC75BAB0();

                if (v19)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BC685150()
{
  result = qword_1EBCE3CA8;
  if (!qword_1EBCE3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CA8);
  }

  return result;
}

unint64_t sub_1BC6851A4()
{
  result = qword_1EBCE3CB0;
  if (!qword_1EBCE3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CB0);
  }

  return result;
}

unint64_t sub_1BC6851F8()
{
  result = qword_1EBCE3CB8;
  if (!qword_1EBCE3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CB8);
  }

  return result;
}

unint64_t sub_1BC68524C()
{
  result = qword_1EBCE3CC0;
  if (!qword_1EBCE3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CC0);
  }

  return result;
}

unint64_t sub_1BC6852A0()
{
  result = qword_1EBCE3CC8;
  if (!qword_1EBCE3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CC8);
  }

  return result;
}

unint64_t sub_1BC6852F4()
{
  result = qword_1EBCE3CD0;
  if (!qword_1EBCE3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CD0);
  }

  return result;
}

unint64_t sub_1BC685348()
{
  result = qword_1EBCE3CD8;
  if (!qword_1EBCE3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CD8);
  }

  return result;
}

unint64_t sub_1BC68539C()
{
  result = qword_1EBCE3CE0;
  if (!qword_1EBCE3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE3CE0);
  }

  return result;
}

unint64_t sub_1BC6853F0()
{
  result = qword_1EBCE3CE8[0];
  if (!qword_1EBCE3CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE3CE8);
  }

  return result;
}

uint64_t sub_1BC685444(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001BC7721A0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874756F5377656ELL && a2 == 0xED000073656C6157 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BC7721C0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C736E65657571 && a2 == 0xEA0000000000646ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375416874756F73 && a2 == 0xEE0061696C617274 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC7721E0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6169726F74636976 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61696E616D736174 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BC685704(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC778, &qword_1BC7629E0);
  v80 = *(v2 - 8);
  v81 = v2;
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v85 = &v62[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC780, &qword_1BC7629E8);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v62[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC788, &qword_1BC7629F0);
  v76 = *(v8 - 8);
  v77 = v8;
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v62[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC790, &qword_1BC7629F8);
  v12 = *(v11 - 8);
  v74 = v11;
  v75 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v62[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC798, &qword_1BC762A00);
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v62[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7A0, &qword_1BC762A08);
  v20 = *(v19 - 8);
  v70 = v19;
  v71 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v62[-v22];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7A8, &qword_1BC762A10);
  v69 = *(v68 - 8);
  v23 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v25 = &v62[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7B0, &qword_1BC762A18);
  v67 = *(v26 - 8);
  v27 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7B8, &qword_1BC762A20);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v62[-v33];
  v36 = a1[3];
  v35 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1BC685150();
  v37 = v88;
  sub_1BC75C730();
  if (v37)
  {
    goto LABEL_9;
  }

  v64 = v26;
  v39 = v86;
  v38 = v87;
  v88 = v31;
  v66 = v30;
  v65 = v34;
  v40 = sub_1BC75C4D0();
  if (*(v40 + 16) != 1 || (v41 = *(v40 + 32), v41 == 8))
  {
    v45 = sub_1BC75C300();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
    *v47 = &type metadata for AustralianState;
    v49 = v66;
    v50 = v65;
    sub_1BC75C460();
    sub_1BC75C2F0();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v88 + 8))(v50, v49);
    swift_unknownObjectRelease();
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v89);
    return 0;
  }

  v63 = *(v40 + 32);
  if (v41 > 3)
  {
    v43 = v66;
    v44 = v65;
    if (v41 > 5)
    {
      v42 = v88;
      if (v41 != 6)
      {
        v97 = 7;
        sub_1BC6851A4();
        v61 = v85;
        sub_1BC75C450();
        (*(v80 + 8))(v61, v81);
        goto LABEL_20;
      }

      v96 = 6;
      sub_1BC6851F8();
      sub_1BC75C450();
      v58 = v78;
      v57 = v79;
    }

    else
    {
      v42 = v88;
      if (v41 == 4)
      {
        v94 = 4;
        sub_1BC6852A0();
        sub_1BC75C450();
        (*(v75 + 8))(v39, v74);
        goto LABEL_20;
      }

      v95 = 5;
      sub_1BC68524C();
      v38 = v84;
      sub_1BC75C450();
      v58 = v76;
      v57 = v77;
    }

    (*(v58 + 8))(v38, v57);
    goto LABEL_20;
  }

  if (v41 > 1)
  {
    if (v41 == 2)
    {
      v92 = 2;
      sub_1BC685348();
      v52 = v83;
      v53 = v66;
      v54 = v65;
      sub_1BC75C450();
      v55 = v70;
      v56 = v71;
    }

    else
    {
      v93 = 3;
      sub_1BC6852F4();
      v52 = v82;
      v53 = v66;
      v54 = v65;
      sub_1BC75C450();
      v55 = v72;
      v56 = v73;
    }

    (*(v56 + 8))(v52, v55);
    (*(v88 + 8))(v54, v53);
    goto LABEL_24;
  }

  v42 = v88;
  if (!v41)
  {
    v90 = 0;
    sub_1BC6853F0();
    v43 = v66;
    v44 = v65;
    sub_1BC75C450();
    (*(v67 + 8))(v29, v64);
LABEL_20:
    (*(v42 + 8))(v44, v43);
    goto LABEL_24;
  }

  v91 = 1;
  sub_1BC68539C();
  v59 = v66;
  v60 = v65;
  sub_1BC75C450();
  (*(v69 + 8))(v25, v68);
  (*(v42 + 8))(v60, v59);
LABEL_24:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v89);
  return v63;
}

uint64_t sub_1BC68616C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC686200()
{
  result = qword_1EBCDC748;
  if (!qword_1EBCDC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC748);
  }

  return result;
}

unint64_t sub_1BC686258()
{
  result = qword_1EBCDC750;
  if (!qword_1EBCDC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC750);
  }

  return result;
}

unint64_t sub_1BC6862AC(uint64_t a1)
{
  *(a1 + 8) = sub_1BC686258();
  result = sub_1BC6862DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BC6862DC()
{
  result = qword_1EBCDC758;
  if (!qword_1EBCDC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC758);
  }

  return result;
}

unint64_t sub_1BC686334()
{
  result = qword_1EBCDC760;
  if (!qword_1EBCDC760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC768, &qword_1BC762178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC760);
  }

  return result;
}

uint64_t sub_1BC6863CC()
{
  v0 = type metadata accessor for Report.Authority.DirectAuthorityDetails(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1BC68644C()
{
  result = sub_1BC65F664(319, &qword_1EBCDC770, 0x1E69DCAB8);
  if (v1 <= 0x3F)
  {
    result = sub_1BC759800();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC6864F8()
{
  result = type metadata accessor for Report.Authority(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC686688()
{
  result = qword_1EBCE4DA0[0];
  if (!qword_1EBCE4DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4DA0);
  }

  return result;
}

unint64_t sub_1BC6866E0()
{
  result = qword_1EBCE4EB0;
  if (!qword_1EBCE4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4EB0);
  }

  return result;
}

unint64_t sub_1BC686738()
{
  result = qword_1EBCE4EB8[0];
  if (!qword_1EBCE4EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4EB8);
  }

  return result;
}

unint64_t sub_1BC686790()
{
  result = qword_1EBCE4F40;
  if (!qword_1EBCE4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4F40);
  }

  return result;
}

unint64_t sub_1BC6867E8()
{
  result = qword_1EBCE4F48[0];
  if (!qword_1EBCE4F48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4F48);
  }

  return result;
}

unint64_t sub_1BC686840()
{
  result = qword_1EBCE4FD0;
  if (!qword_1EBCE4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE4FD0);
  }

  return result;
}

unint64_t sub_1BC686898()
{
  result = qword_1EBCE4FD8[0];
  if (!qword_1EBCE4FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE4FD8);
  }

  return result;
}

unint64_t sub_1BC6868F0()
{
  result = qword_1EBCE5060;
  if (!qword_1EBCE5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5060);
  }

  return result;
}

unint64_t sub_1BC686948()
{
  result = qword_1EBCE5068[0];
  if (!qword_1EBCE5068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5068);
  }

  return result;
}

unint64_t sub_1BC6869A0()
{
  result = qword_1EBCE50F0;
  if (!qword_1EBCE50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE50F0);
  }

  return result;
}

unint64_t sub_1BC6869F8()
{
  result = qword_1EBCE50F8[0];
  if (!qword_1EBCE50F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE50F8);
  }

  return result;
}

unint64_t sub_1BC686A50()
{
  result = qword_1EBCE5180;
  if (!qword_1EBCE5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5180);
  }

  return result;
}

unint64_t sub_1BC686AA8()
{
  result = qword_1EBCE5188[0];
  if (!qword_1EBCE5188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5188);
  }

  return result;
}

unint64_t sub_1BC686B00()
{
  result = qword_1EBCE5210;
  if (!qword_1EBCE5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5210);
  }

  return result;
}

unint64_t sub_1BC686B58()
{
  result = qword_1EBCE5218[0];
  if (!qword_1EBCE5218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5218);
  }

  return result;
}

unint64_t sub_1BC686BB0()
{
  result = qword_1EBCE52A0;
  if (!qword_1EBCE52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE52A0);
  }

  return result;
}

unint64_t sub_1BC686C08()
{
  result = qword_1EBCE52A8[0];
  if (!qword_1EBCE52A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE52A8);
  }

  return result;
}

unint64_t sub_1BC686C60()
{
  result = qword_1EBCE5330;
  if (!qword_1EBCE5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5330);
  }

  return result;
}

unint64_t sub_1BC686CB8()
{
  result = qword_1EBCE5338[0];
  if (!qword_1EBCE5338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5338);
  }

  return result;
}

uint64_t sub_1BC686D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC686D74()
{
  result = qword_1EBCDC7E0;
  if (!qword_1EBCDC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC7E0);
  }

  return result;
}

uint64_t ShowContentButton.init(isShowingContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  result = swift_getKeyPath();
  *(a4 + 24) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = a1;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t ShowContentButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v48 = sub_1BC75ACB0();
  v47 = *(v48 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v40 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7F8, &qword_1BC762AB8);
  v44 = *(v45 - 8);
  v15 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v40 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC800, &unk_1BC762AC0);
  v18 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v40 - v19;
  v21 = v1[3];
  v55 = v1[2];
  v56 = v21;
  v57 = *(v1 + 64);
  v22 = v1[1];
  v53 = *v1;
  v54 = v22;
  v50 = v1[3];
  v51 = *(v1 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  MEMORY[0x1BFB262E0](&v52, v23);
  if (v52 == 1)
  {
    v24 = "HIDE_BUTTON_TITLE";
  }

  else
  {
    v24 = "SHOW_BUTTON_TITLE";
  }

  v25._object = ((v24 - 32) | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000011;
  SCLocalizedStringKey.init(stringLiteral:)(v25);
  v52 = v50;
  v26 = swift_allocObject();
  v27 = v56;
  *(v26 + 48) = v55;
  *(v26 + 64) = v27;
  *(v26 + 80) = v57;
  v28 = v54;
  *(v26 + 16) = v53;
  *(v26 + 32) = v28;
  sub_1BC6877B8(&v53, &v50);
  sub_1BC651F0C(&v52);
  KeyPath = swift_getKeyPath();
  v30 = &v11[*(v8 + 36)];
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v32 = *MEMORY[0x1E697DBA8];
  v33 = sub_1BC75A710();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  (*(v4 + 32))(v11, v7, v42);
  v34 = &v14[*(v43 + 36)];
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC810, &qword_1BC762B08) + 28);
  sub_1BC75AA20();
  *v34 = swift_getKeyPath();
  sub_1BC687940(v11, v14);
  v36 = v46;
  sub_1BC75ACA0();
  sub_1BC6879B0();
  sub_1BC687E5C(&qword_1EBCDC830, MEMORY[0x1E697C540]);
  v37 = v48;
  sub_1BC75B1F0();
  (*(v47 + 8))(v36, v37);
  sub_1BC66008C(v14, &qword_1EBCDC7F0, &qword_1BC762AB0);
  v38 = sub_1BC75B530();
  (*(v44 + 32))(v20, v17, v45);
  *&v20[*(v41 + 36)] = v38;
  sub_1BC687B4C();
  sub_1BC75B330();
  return sub_1BC63B004(v20);
}

uint64_t sub_1BC68744C(__int128 *a1)
{
  v2 = sub_1BC75ABB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 6);
  v7 = *(a1 + 7);
  v9 = *(a1 + 64);
  *&v23 = v8;
  *(&v23 + 1) = v7;
  v24 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC808, &qword_1BC763F60);
  MEMORY[0x1BFB262E0](&v20);
  if (v20 != 1)
  {
    v23 = *(a1 + 24);
    v24 = *(a1 + 40);
    v12 = v23;
    if (v24 == 1)
    {
      v17 = v23;
      sub_1BC687EA4(&v23, &v20);
      if (v12 == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1BC687EA4(&v23, &v20);
      sub_1BC75BF70();
      v14 = sub_1BC75AFC0();
      sub_1BC75A4B0();

      sub_1BC75ABA0();
      swift_getAtKeyPath();
      sub_1BC66008C(&v23, &qword_1EBCDC850, &qword_1BC762D20);
      (*(v3 + 8))(v6, v2);
      v12 = v17;
      if (v17 == 1)
      {
        goto LABEL_12;
      }
    }

    v20 = v12;
    v21 = *(&v17 + 1);
    OnShowContentCallback.callAsFunction()();
    sub_1BC635484(v20);
    goto LABEL_12;
  }

  v23 = *a1;
  v24 = *(a1 + 16);
  v11 = v23;
  if (v24 == 1)
  {
    sub_1BC63302C(v23);
    if (v11 == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_1BC75BF70();
  v13 = sub_1BC75AFC0();
  sub_1BC75A4B0();

  sub_1BC75ABA0();
  swift_getAtKeyPath();
  sub_1BC66008C(&v23, &qword_1EBCDC858, &qword_1BC762D28);
  (*(v3 + 8))(v6, v2);
  v11 = v20;
  if (v20 != 1)
  {
LABEL_9:
    sub_1BC7119C8(v11);
    sub_1BC635468(v11);
  }

LABEL_12:
  v25 = v8;
  v20 = v8;
  v21 = v7;
  v22 = v9;
  sub_1BC687F14(&v25, &v17);

  MEMORY[0x1BFB262E0](&v19, v10);
  *&v17 = v8;
  *(&v17 + 1) = v7;
  v18 = v9;
  v16[15] = (v19 & 1) == 0;
  sub_1BC75B710();
  sub_1BC687F70(&v25);
}

uint64_t sub_1BC6877A0(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1BC687870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1BC687940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6879B0()
{
  result = qword_1EBCDC818;
  if (!qword_1EBCDC818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
    sub_1BC687A68();
    sub_1BC633C54(&qword_1EBCDC828, &qword_1EBCDC810, &qword_1BC762B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC818);
  }

  return result;
}

unint64_t sub_1BC687A68()
{
  result = qword_1EBCDC820;
  if (!qword_1EBCDC820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7E8, &qword_1BC762AA8);
    sub_1BC633C54(&qword_1EBCDC400, &unk_1EBCDE1C0, &qword_1BC761720);
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC820);
  }

  return result;
}

unint64_t sub_1BC687B4C()
{
  result = qword_1EBCDC838;
  if (!qword_1EBCDC838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC800, &unk_1BC762AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC7F0, &qword_1BC762AB0);
    sub_1BC75ACB0();
    sub_1BC6879B0();
    sub_1BC687E5C(&qword_1EBCDC830, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC838);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI06OnHideB8CallbackVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BC687CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC687D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BC687DA0()
{
  result = qword_1EBCDC840;
  if (!qword_1EBCDC840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC848, &qword_1BC762D18);
    sub_1BC687B4C();
    sub_1BC687E5C(&qword_1EDDCE000, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC840);
  }

  return result;
}

uint64_t sub_1BC687E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC687EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC850, &qword_1BC762D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC687FCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1BC75B5F0();
  }
}

uint64_t sub_1BC688180()
{
  v1 = OBJC_IVAR____TtC26SensitiveContentAnalysisUI31OutgoingCallInterventionHandler___observationRegistrar;
  v2 = sub_1BC759A90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BC68821C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BC759A80();
  return v3;
}

uint64_t EnvironmentValues.intervenableAction.getter()
{
  sub_1BC6355AC();

  return sub_1BC75ABC0();
}

uint64_t EnvironmentValues.intervenableAction.setter(uint64_t a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1BC68B6C8(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntervenableAction);
  sub_1BC6355AC();
  sub_1BC75ABD0();
  return sub_1BC68C880(a1, type metadata accessor for IntervenableAction);
}

void (*EnvironmentValues.intervenableAction.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for IntervenableAction(0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_1BC6355AC();
  sub_1BC75ABC0();
  return sub_1BC68847C;
}

void sub_1BC68847C(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_1BC68B6C8((*a1)[3], (*a1)[2], type metadata accessor for IntervenableAction);
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[1];
  v7 = v3[2];
  v8 = *v3;
  if (a2)
  {
    sub_1BC68B6C8(v3[2], v3[1], type metadata accessor for IntervenableAction);
    sub_1BC75ABD0();
    sub_1BC68C880(v7, type metadata accessor for IntervenableAction);
  }

  else
  {
    v9 = v3[2];
    v10 = v3[4];
    sub_1BC75ABD0();
  }

  sub_1BC68C880(v4, type metadata accessor for IntervenableAction);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

BOOL static IntervenableAction.ButtonTreatment.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v4 = sub_1BC75B5F0();

      return v4 & 1;
    }

    return 0;
  }

  return !v2;
}

BOOL sub_1BC688614(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      v3 = *a2;

      v4 = sub_1BC75B5F0();

      return v4 & 1;
    }

    return 0;
  }

  return !v2;
}

BOOL sub_1BC688698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_1BC75A160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 17) != 1)
  {
    return 0;
  }

  v10 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v0 + *(v10 + 28), v4, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BC66008C(v4, &qword_1EBCDC868, &qword_1BC762D30);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = sub_1BC75A150();
    (*(v6 + 8))(v9, v5);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v0 + 16) <= 1u)
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }

    v12 = MEMORY[0x1E69E7CC0];
  }

  return (sub_1BC638C30(v12, *(v0 + 8)) & 1) == 0;
}