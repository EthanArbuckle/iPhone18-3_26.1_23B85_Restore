uint64_t sub_23015A028@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F98];
    v6 = MEMORY[0x277D84F90];
LABEL_23:

    *a2 = v6;
    a2[1] = v5;
    return result;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F98];
  v6 = MEMORY[0x277D84F90];
  while (v4 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + 8 * v4);
    if (!*(v5 + 2) || (sub_23008E270(*(a1 + 32 + 8 * v4)), (v8 & 1) == 0))
    {
      v9 = *(v6 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = sub_23008E270(v7);
      v13 = *(v5 + 2);
      v14 = (v12 & 1) == 0;
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (v15)
      {
        goto LABEL_25;
      }

      v17 = v12;
      if (*(v5 + 3) >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_13;
        }

        v19 = v11;
        sub_23008A280();
        v11 = v19;
        if ((v17 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        *(*(v5 + 7) + 8 * v11) = v9;
      }

      else
      {
        sub_230084FA4(v16, isUniquelyReferenced_nonNull_native);
        v11 = sub_23008E270(v7);
        if ((v17 & 1) != (v18 & 1))
        {
          goto LABEL_27;
        }

LABEL_13:
        if (v17)
        {
          goto LABEL_14;
        }

LABEL_16:
        *&v5[8 * (v11 >> 6) + 64] |= 1 << v11;
        *(*(v5 + 6) + 8 * v11) = v7;
        *(*(v5 + 7) + 8 * v11) = v9;
        v20 = *(v5 + 2);
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_26;
        }

        *(v5 + 2) = v21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_23007EA48(0, *(v6 + 2) + 1, 1, v6);
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        v6 = sub_23007EA48((v22 > 1), v23 + 1, 1, v6);
      }

      *(v6 + 2) = v23 + 1;
      *&v6[8 * v23 + 32] = v7;
    }

    if (v3 == ++v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

void *REMSuggestedAttributeInputDataFrame.iloc(_:)(uint64_t a1)
{
  v3 = sub_23030EB58();
  v82 = *(v3 - 8);
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030EBB8();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v69 - v10;
  v12 = v1[2];
  v11 = v1[3];
  v14 = v1[4];
  v13 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  v18 = v1[9];
  v19 = v1[10];
  v73 = v1[11];
  v20 = v1[12];
  v70 = v15;
  v71 = v20;
  if (*(v12 + 24) == 1 || *(*(v12 + 40) + 16) && (sub_23008E270(a1), (v21 & 1) != 0))
  {
    v75 = sub_23016297C(a1);
  }

  else
  {
    v23 = *(v12 + 16);
    v22 = *(v23 + 48);
    v75 = *(v23 + 40);
  }

  v74 = v22;

  v24 = v19;
  if (*(v11 + 24))
  {
    v72 = sub_23015EE2C(a1);
    v25 = v18;
  }

  else
  {
    v25 = v18;
    if (*(*(v11 + 40) + 16) && (sub_23008E270(a1), (v26 & 1) != 0))
    {
      v72 = sub_23015EE2C(a1);
    }

    else
    {
      v72 = *(*(v11 + 16) + 40);
    }
  }

  v27 = v17;
  v28 = v84;
  if (*(v13 + 24) & 1) != 0 || *(*(v13 + 40) + 16) && (sub_23008E270(a1), (v29))
  {
    v81 = sub_23015EE2C(a1);
    if (*(v14 + 24))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v81 = *(*(v13 + 16) + 40);
    if (*(v14 + 24))
    {
LABEL_20:
      sub_23015EF04(a1, v28);
      v32 = v82;
      v31 = v83;
      goto LABEL_22;
    }
  }

  if (*(*(v14 + 40) + 16))
  {
    sub_23008E270(a1);
    if (v30)
    {
      goto LABEL_20;
    }
  }

  v32 = v82;
  v33 = v83;
  (*(v82 + 16))(v28, *(v14 + 16) + *(**(v14 + 16) + 104), v83);
  v31 = v33;
LABEL_22:
  (*(v32 + 56))(v28, 0, 1, v31);
  v34 = v70;
  if (*(v70 + 24))
  {
    v35 = sub_23015EE2C(a1);
    v36 = v73;
    v37 = v71;
    if (*(v16 + 24))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v36 = v73;
    v37 = v71;
    if (*(*(v70 + 40) + 16) && (sub_23008E270(a1), (v38 & 1) != 0))
    {
      v35 = sub_23015EE2C(a1);
      if (*(v16 + 24))
      {
        goto LABEL_32;
      }
    }

    else
    {
      v35 = *(*(v34 + 16) + 40);
      if (*(v16 + 24))
      {
        goto LABEL_32;
      }
    }
  }

  if (!*(*(v16 + 40) + 16) || (sub_23008E270(a1), (v39 & 1) == 0))
  {
    v40 = *(*(v16 + 16) + 40);
    if (*(v27 + 24))
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_32:
  v40 = sub_23015EE2C(a1);
  if (*(v27 + 24))
  {
    goto LABEL_37;
  }

LABEL_35:
  if (!*(*(v27 + 40) + 16) || (sub_23008E270(a1), (v41 & 1) == 0))
  {
    LODWORD(v73) = *(*(v27 + 16) + 40);
    goto LABEL_39;
  }

LABEL_37:
  LODWORD(v73) = sub_23015EE98(a1);
LABEL_39:
  v42 = v80;
  if (*(v25 + 24) & 1) != 0 || *(*(v25 + 40) + 16) && (sub_23008E270(a1), (v43))
  {
    v71 = sub_23015EE2C(a1);
    if (*(v24 + 24))
    {
      goto LABEL_47;
    }
  }

  else
  {
    v71 = *(*(v25 + 16) + 40);
    if (*(v24 + 24))
    {
      goto LABEL_47;
    }
  }

  if (!*(*(v24 + 40) + 16) || (sub_23008E270(a1), (v44 & 1) == 0))
  {
    v45 = *(*(v24 + 16) + 40);
    goto LABEL_49;
  }

LABEL_47:
  v45 = sub_23015EE2C(a1);
LABEL_49:
  v70 = v45;

  if (*(v37 + 24) & 1) != 0 || *(*(v37 + 40) + 16) && (sub_23008E270(a1), (v46))
  {
    v47 = sub_23015EE2C(a1);
    if (*(v36 + 24))
    {
      goto LABEL_57;
    }
  }

  else
  {
    v47 = *(*(v37 + 16) + 40);
    if (*(v36 + 24))
    {
LABEL_57:
      v49 = sub_23015EE2C(a1);
      goto LABEL_59;
    }
  }

  if (*(*(v36 + 40) + 16))
  {
    sub_23008E270(a1);
    if (v48)
    {
      goto LABEL_57;
    }
  }

  v49 = *(*(v36 + 16) + 40);
LABEL_59:
  v69 = v49;

  type metadata accessor for REMSuggestedAttributeInput(0);
  v50 = swift_allocObject();
  v51 = v74;
  v50[2] = v75;
  v50[3] = v51;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list) = v81;
  v52 = type metadata accessor for REMObjectID_Codable();
  v53 = objc_allocWithZone(v52);
  v54 = v72;
  swift_retain_n();
  v55 = v54;
  v56 = v35;

  v75 = v47;

  v57 = [v55 uuid];
  v58 = v76;
  sub_23030EBA8();

  v59 = sub_23030EB88();
  (*(v77 + 8))(v58, v78);
  v60 = [v55 entityName];
  if (!v60)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v60 = sub_23030F8B8();
    v42 = v80;
  }

  v85.receiver = v53;
  v85.super_class = v52;
  v61 = objc_msgSendSuper2(&v85, sel_initWithUUID_entityName_, v59, v60);

  v50[4] = v61;
  v62 = v79;
  sub_230055F74(v84, v79, &unk_27DB15AA0);
  v64 = v82;
  v63 = v83;
  v65 = *(v82 + 48);
  if (v65(v62, 1, v83) == 1)
  {
    sub_23030EB48();
    if (v65(v62, 1, v63) != 1)
    {
      sub_230061918(v62, &unk_27DB15AA0);
    }
  }

  else
  {
    (*(v64 + 32))(v42, v62, v63);
  }

  (*(v64 + 32))(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_creationDate, v42, v63);
  v66 = (v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDateTime);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek) = v56;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location) = v40;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) = v73 & 1;
  v67 = v70;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) = v71;
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags) = v67;

  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact) = v75;
  sub_230061918(v84, &unk_27DB15AA0);
  *(v50 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence) = v69;
  return v50;
}

uint64_t REMSuggestedAttributeInputDataFrame.iloc(index:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  v15 = sub_23015F6F4(v3, v4, &qword_27DB15C68);
  v14 = sub_23015F6F4(v3, v4, &qword_27DB15C70);
  v13 = sub_23015F6F4(v3, v4, &qword_27DB15C78);
  v12 = sub_23015F6F4(v3, v4, &qword_27DB15C80);
  v11 = sub_23015F6F4(v3, v4, &qword_27DB15C88);
  v10 = sub_23015F6F4(v3, v4, &qword_27DB15C90);
  v5 = sub_23015F6F4(v3, v4, &qword_27DB15C98);
  v6 = sub_23015F6F4(v3, v4, &qword_27DB15CA0);
  v7 = sub_23015F6F4(v3, v4, &qword_27DB15CA8);
  v8 = sub_23015F6F4(v3, v4, &qword_27DB15CB0);
  result = sub_23015F6F4(v3, v4, &qword_27DB15CA8);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v15;
  a2[3] = v14;
  a2[4] = v13;
  a2[5] = v12;
  a2[6] = v11;
  a2[7] = v10;
  a2[8] = v5;
  a2[9] = v6;
  a2[11] = result;
  a2[12] = v8;
  a2[10] = v7;
  return result;
}

ReminderKitInternal::REMSuggestedAttributeOutput::Pipeline_optional __swiftcall REMSuggestedAttributeOutput.Pipeline.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMSuggestedAttributeOutput.Pipeline.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5079726575516C6ELL;
  v3 = 0x6974736972756568;
  v4 = 0x6465726F68636E61;
  if (v1 != 4)
  {
    v4 = 0x6867696C746F7073;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 5131883;
  if (v1 != 1)
  {
    v5 = 0x6168654265726F63;
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

uint64_t sub_23015AE1C()
{
  sub_23030F9C8();
}

void sub_23015AF3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007265737261;
  v4 = 0x5079726575516C6ELL;
  v5 = 0x6974736972756568;
  v6 = 0xE900000000000063;
  v7 = 0xEE00656C62627542;
  v8 = 0x6465726F68636E61;
  if (v2 != 4)
  {
    v8 = 0x6867696C746F7073;
    v7 = 0xE900000000000074;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5131883;
  if (v2 != 1)
  {
    v10 = 0x6168654265726F63;
    v9 = 0xEC000000726F6976;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23015B0FC()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_23015B184()
{
  sub_230311358();
  sub_23030F9C8();
  return sub_2303113A8();
}

uint64_t sub_23015B1DC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23015B268@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_230310C08();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_23015B2C0(uint64_t a1)
{
  v2 = sub_2301629F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23015B2FC(uint64_t a1)
{
  v2 = sub_2301629F4();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributeOutput::Source __swiftcall REMSuggestedAttributeOutput.Source.init(pipeline:predictor:)(ReminderKitInternal::REMSuggestedAttributeOutput::Pipeline pipeline, Swift::String predictor)
{
  object = predictor._object;
  countAndFlagsBits = predictor._countAndFlagsBits;
  v5 = v2;
  v6 = *pipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_230315CE0;
  *(v8 + 32) = countAndFlagsBits;
  v9 = v8 + 32;
  *(v8 + 40) = object;
  v10 = sub_2300B38E4(v8);
  swift_setDeallocating();
  sub_2301500DC(v9);
  *(inited + 40) = v10;
  v11 = sub_23008CD08(inited);
  swift_setDeallocating();
  result.predictors._rawValue = sub_230061918(inited + 32, &qword_27DB15458);
  *v5 = v11;
  return result;
}

uint64_t REMSuggestedAttributeOutput.Source.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301629F4();
  sub_230311428();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CC0);
    sub_230162A48();
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23015B5FC(char a1)
{
  v2 = *v1;
  if (!*(*v1 + 16))
  {
    goto LABEL_39;
  }

  sub_230081A54(0);
  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277D84F90];
    if (!*(v2 + 16))
    {
      goto LABEL_39;
    }

    goto LABEL_9;
  }

  v5 = sub_23007E928(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_23007E928((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  strcpy(v8 + 32, "nlQueryParser");
  *(v8 + 23) = -4864;
  if (*(v2 + 16))
  {
LABEL_9:
    sub_230081A54(1u);
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_23007E928(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_23007E928((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = 5131883;
      *(v12 + 5) = 0xE300000000000000;
    }

    if (*(v2 + 16))
    {
      sub_230081A54(2u);
      if (v13)
      {
        v14 = 0x6168654265726F63;
        if (a1)
        {
          strcpy(v36, "coreBehavior:");
          HIWORD(v36[1]) = -4864;

          v15 = sub_23030FF48();
          v17 = v16;

          MEMORY[0x231911790](v15, v17);

          v14 = v36[0];
          v18 = v36[1];
        }

        else
        {
          v18 = 0xEC000000726F6976;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23007E928(0, *(v5 + 2) + 1, 1, v5);
        }

        v19 = *(v5 + 2);
        v20 = *(v5 + 3);
        v21 = v19 + 1;
        if (v19 >= v20 >> 1)
        {
          v33 = v5;
          v34 = *(v5 + 2);
          v35 = sub_23007E928((v20 > 1), v19 + 1, 1, v33);
          v19 = v34;
          v5 = v35;
        }

        *(v5 + 2) = v21;
        v22 = &v5[16 * v19];
        *(v22 + 4) = v14;
        *(v22 + 5) = v18;
      }

      if (*(v2 + 16))
      {
        sub_230081A54(3u);
        if (v23)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_23007E928(0, *(v5 + 2) + 1, 1, v5);
          }

          v25 = *(v5 + 2);
          v24 = *(v5 + 3);
          if (v25 >= v24 >> 1)
          {
            v5 = sub_23007E928((v24 > 1), v25 + 1, 1, v5);
          }

          *(v5 + 2) = v25 + 1;
          v26 = &v5[16 * v25];
          *(v26 + 4) = 0x6974736972756568;
          *(v26 + 5) = 0xE900000000000063;
        }

        if (*(v2 + 16))
        {
          sub_230081A54(4u);
          if (v27)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_23007E928(0, *(v5 + 2) + 1, 1, v5);
            }

            v29 = *(v5 + 2);
            v28 = *(v5 + 3);
            if (v29 >= v28 >> 1)
            {
              v5 = sub_23007E928((v28 > 1), v29 + 1, 1, v5);
            }

            *(v5 + 2) = v29 + 1;
            v30 = &v5[16 * v29];
            strcpy(v30 + 32, "anchoredBubble");
            v30[47] = -18;
          }
        }
      }
    }
  }

LABEL_39:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_23005F108(&qword_280C99CF8, &unk_27DB13DE0);
  v31 = sub_23030F7C8();

  return v31;
}

ReminderKitInternal::REMSuggestedAttributeOutput::Source __swiftcall REMSuggestedAttributeOutput.Source.union(_:)(ReminderKitInternal::REMSuggestedAttributeOutput::Source a1)
{
  v35 = v1;
  v3 = *a1.predictors._rawValue;
  v4 = *v2;
  v5 = *a1.predictors._rawValue + 64;
  v6 = 1 << *(*a1.predictors._rawValue + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(*a1.predictors._rawValue + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v11 << 6);
    v14 = *(*(v3 + 48) + v13);
    v15 = *(*(v3 + 56) + 8 * v13);
    v16 = v4[2];

    if (v16 && (v17 = sub_230081A54(v14), (v18 & 1) != 0))
    {
      v19 = *(v4[7] + 8 * v17);

      v20 = sub_23015BDB4(v15, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_2300A1E0C(v20, v14, isUniquelyReferenced_nonNull_native);
      v10 = v11;
    }

    else
    {
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_230081A54(v14);
      v25 = v4[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_25;
      }

      v29 = v24;
      if (v4[3] >= v28)
      {
        if (v22)
        {
          goto LABEL_18;
        }

        v33 = v23;
        sub_23008ABEC();
        v23 = v33;
        if (v29)
        {
          goto LABEL_4;
        }

LABEL_19:
        v4[(v23 >> 6) + 8] |= 1 << v23;
        *(v4[6] + v23) = v14;
        *(v4[7] + 8 * v23) = v15;
        v31 = v4[2];
        v27 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v27)
        {
          goto LABEL_26;
        }

        v4[2] = v32;
        v10 = v11;
      }

      else
      {
        sub_230085F68(v28, v22);
        v23 = sub_230081A54(v14);
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_27;
        }

LABEL_18:
        if ((v29 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_4:
        *(v4[7] + 8 * v23) = v15;

        v10 = v11;
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      *v35 = v4;
      return result;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result.predictors._rawValue = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_23015BCD4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2300A8D60(&v11, *(*(v2 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23015BDB4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2300A8988(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall REMSuggestedAttributeOutput.Source.append(pipeline:predictor:)(ReminderKitInternal::REMSuggestedAttributeOutput::Pipeline pipeline, Swift::String predictor)
{
  v3 = v2;
  object = predictor._object;
  countAndFlagsBits = predictor._countAndFlagsBits;
  v6 = *pipeline;
  v7 = *v2;
  if (*(*v2 + 16) && (v8 = sub_230081A54(*pipeline), (v9 & 1) != 0))
  {
    v14 = *(*(v7 + 56) + 8 * v8);

    sub_2300A8988(&v13, countAndFlagsBits, object);

    v10 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230315CE0;
    *(inited + 32) = countAndFlagsBits;
    *(inited + 40) = object;

    v10 = sub_2300B38E4(inited);
    swift_setDeallocating();
    sub_2301500DC(inited + 32);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v7;
  sub_2300A1E0C(v10, v6, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
}

Swift::Bool __swiftcall REMSuggestedAttributeOutput.Source.contains(_:)(ReminderKitInternal::REMSuggestedAttributeOutput::Pipeline a1)
{
  if (*(*v1 + 16))
  {
    sub_230081A54(*a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t REMSuggestedAttributeOutput.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301629F4();

  sub_230311448();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CC0);
  sub_230162B4C();
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23015C19C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(*(v2 + 48) + v11);
    v13 = *(*(v2 + 56) + 8 * v11);
    v14 = v13 == 0;

    if (!v13)
    {
      return v14;
    }

    sub_230081A54(v12);
    if ((v15 & 1) == 0)
    {

      return 0;
    }

    v17 = sub_2300A7274(v16, v13);

    if ((v17 & 1) == 0)
    {
      return v14;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23015C2F4(uint64_t a1, uint64_t a2)
{
  v56 = sub_23030EBB8();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x28223BE20](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DB8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + 8 * v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DC0);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_230112AF4(v34, v12, &qword_27DB15DB8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DC0);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = *&v12[v38];
      v42 = sub_230081B9C(v39);
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = *(*(a2 + 56) + 8 * v42) == v41;
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DC0);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_23015C754(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = *(*(a1 + 48) + 8 * v12);
      v20 = *(*(a1 + 56) + 16 * v12);
      v14 = v13;
      if (v13)
      {
        v15 = v14;
        v16 = sub_230068314(v14);
        v18 = v17;

        if (v18)
        {
          v19 = vmovn_s64(vceqq_s64(*(*(a2 + 56) + 16 * v16), v20));
          if (v19.i32[0] & v19.i32[1])
          {
            continue;
          }
        }
      }

      return;
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t REMSuggestedAttributeOutput.Source.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  sub_23015FD58(v3, v1);
  return sub_2303113A8();
}

uint64_t sub_23015C92C()
{
  v1 = *v0;
  sub_230311358();
  sub_23015FD58(v3, v1);
  return sub_2303113A8();
}

uint64_t sub_23015C97C()
{
  v1 = *v0;
  sub_230311358();
  sub_23015FD58(v3, v1);
  return sub_2303113A8();
}

void sub_23015CA0C(char a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  if (v3 > 4)
  {
    v4 = *(v1 + 16);
    if (*(v1 + 32) <= 6u)
    {
      if (v3 == 5)
      {
        sub_230310848();

        v26[0] = 0xD000000000000011;
        v26[1] = 0x8000000230342210;
        v10 = sub_23015B5FC(0);
        MEMORY[0x231911790](v10);

        MEMORY[0x231911790](2112041, 0xE300000000000000);
        v11 = sub_230310478();
        MEMORY[0x231911790](v11);

        MEMORY[0x231911790](8236, 0xE200000000000000);
        v12 = &selRef_debugDescription;
        if ((a1 & 1) == 0)
        {
          v12 = &selRef_description;
        }

        v13 = [v2 *v12];
        v14 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v16 = v15;

        MEMORY[0x231911790](v14, v16);
        goto LABEL_30;
      }

      sub_230310848();

      v26[0] = 0xD000000000000010;
      v26[1] = 0x80000002303421D0;
      v23 = sub_23015B5FC(0);
      MEMORY[0x231911790](v23);

      MEMORY[0x231911790](2112041, 0xE300000000000000);
      if (v2)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }
    }

    else
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          sub_230310848();

          strcpy(v26, "tag(source: ");
          BYTE5(v26[1]) = 0;
          HIWORD(v26[1]) = -5120;
          v5 = sub_23015B5FC(0);
          MEMORY[0x231911790](v5);

          MEMORY[0x231911790](2112041, 0xE300000000000000);
          MEMORY[0x231911790](v2, v4);
          return;
        }

        sub_230310848();

        v26[0] = 0xD000000000000010;
        v26[1] = 0x8000000230342190;
        v21 = sub_23015B5FC(0);
        MEMORY[0x231911790](v21);

        MEMORY[0x231911790](2112041, 0xE300000000000000);
        v7 = *(v2 + 32);
        v8 = *(v2 + 40);
        goto LABEL_24;
      }

      sub_230310848();

      v26[0] = 0xD000000000000011;
      v26[1] = 0x80000002303421B0;
      v19 = sub_23015B5FC(0);
      MEMORY[0x231911790](v19);

      MEMORY[0x231911790](2112041, 0xE300000000000000);
      v18 = sub_230310E58();
    }

LABEL_29:
    MEMORY[0x231911790](v18);
LABEL_30:

    return;
  }

  if (*(v1 + 32) <= 1u)
  {
    if (!*(v1 + 32))
    {
      sub_230310848();

      strcpy(v26, "list(source: ");
      HIWORD(v26[1]) = -4864;
      goto LABEL_12;
    }

    sub_230310848();

    v26[0] = 0xD000000000000016;
    v26[1] = 0x8000000230342270;
    v22 = sub_23015B5FC(0);
    MEMORY[0x231911790](v22);

    MEMORY[0x231911790](41, 0xE100000000000000);
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        sub_230310848();

        v26[0] = 0xD000000000000011;
        v26[1] = 0x80000002303421F0;
LABEL_12:
        v6 = sub_23015B5FC(0);
        MEMORY[0x231911790](v6);

        MEMORY[0x231911790](2112041, 0xE300000000000000);
        v7 = *(v2 + 16);
        v8 = *(v2 + 24);
LABEL_24:
        MEMORY[0x231911790](v7, v8);
        return;
      }

      sub_230310848();

      v26[0] = 0xD000000000000010;
      v26[1] = 0x8000000230342230;
      v20 = sub_23015B5FC(0);
      MEMORY[0x231911790](v20);

      MEMORY[0x231911790](2112041, 0xE300000000000000);
      REMSuggestedWeekDay.description.getter();
      goto LABEL_29;
    }

    sub_230310848();

    v26[0] = 0xD00000000000001CLL;
    v26[1] = 0x8000000230342250;
    v17 = sub_23015B5FC(0);
    MEMORY[0x231911790](v17);

    MEMORY[0x231911790](2112041, 0xE300000000000000);
    if (v2 <= 1)
    {
      if (!v2)
      {
        v18 = 0x796C696164;
        goto LABEL_29;
      }

      if (v2 == 1)
      {
        v18 = 0x796C6B656577;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v2)
      {
        case 2:
          v18 = 0x796C68746E6F6DLL;
          goto LABEL_29;
        case 3:
          v18 = 0x796C72616579;
          goto LABEL_29;
        case 4:
          v18 = 0x796C72756F68;
          goto LABEL_29;
      }
    }

    if (qword_27DB13AB0 != -1)
    {
      swift_once();
    }

    v24 = sub_23030EF48();
    __swift_project_value_buffer(v24, qword_27DB147A8);
    v25 = MEMORY[0x277D84F90];
    sub_23008C5BC(MEMORY[0x277D84F90]);
    sub_23008C5BC(v25);
    sub_230166680("Unknown REMRecurrenceFrequency", 30, 2);
    __break(1u);
  }
}

uint64_t REMSuggestedAttributeOutput.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 32);
  if (v5 > 4)
  {
    v7 = *(v1 + 16);
    if (*(v1 + 32) <= 6u)
    {
      if (v5 != 5)
      {
        MEMORY[0x2319130E0](6);
        sub_23015FD58(a1, v4);
        return sub_230311378();
      }

      v9 = *(v1 + 24);
      MEMORY[0x2319130E0](5);
      sub_23015FD58(a1, v4);
      sub_230310458();
      MEMORY[0x2319130E0](v7);
      v10 = v9;
      return MEMORY[0x2319130E0](v10);
    }

    if (v5 == 7)
    {
      v11 = 7;
LABEL_18:
      MEMORY[0x2319130E0](v11);
      sub_23015FD58(a1, v4);
      v10 = v3;
      return MEMORY[0x2319130E0](v10);
    }

    if (v5 != 8)
    {
      v6 = 9;
      goto LABEL_22;
    }

    MEMORY[0x2319130E0](8);
    sub_23015FD58(a1, v4);

    return sub_23030F9C8();
  }

  else
  {
    if (*(v1 + 32) > 1u)
    {
      if (v5 != 2)
      {
        if (v5 == 3)
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }

LABEL_22:
        MEMORY[0x2319130E0](v6);
        sub_23015FD58(a1, v4);

        sub_23030F9C8();
      }

      v11 = 2;
      goto LABEL_18;
    }

    if (!*(v1 + 32))
    {
      v6 = 0;
      goto LABEL_22;
    }

    MEMORY[0x2319130E0](1);

    return sub_23015FD58(a1, v4);
  }
}

uint64_t REMSuggestedAttributeOutput.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_230311358();
  REMSuggestedAttributeOutput.hash(into:)(v4);
  return sub_2303113A8();
}

uint64_t sub_23015D3B8()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_230311358();
  REMSuggestedAttributeOutput.hash(into:)(v4);
  return sub_2303113A8();
}

uint64_t sub_23015D410()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_230311358();
  REMSuggestedAttributeOutput.hash(into:)(v4);
  return sub_2303113A8();
}

ReminderKitInternal::REMSuggestedAttributeOutput::CodingKeys_optional __swiftcall REMSuggestedAttributeOutput.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMSuggestedAttributeOutput.CodingKeys.stringValue.getter()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x546E4965676E6172;
  }

  if (*v0)
  {
    v1 = 0x64616F6C796170;
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

uint64_t sub_23015D5BC()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_23015D68C()
{
  sub_23030F9C8();
}

uint64_t sub_23015D748()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_23015D820(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = 0xE600000000000000;
  v5 = 0x656372756F73;
  if (*v1 != 2)
  {
    v5 = 0x546E4965676E6172;
    v4 = 0xEC000000656C7469;
  }

  if (*v1)
  {
    v3 = 0x64616F6C796170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23015D8AC()
{
  v1 = 0x54746E65746E6F63;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x546E4965676E6172;
  }

  if (*v0)
  {
    v1 = 0x64616F6C796170;
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

ReminderKitInternal::REMSuggestedAttributeOutput::CodingKeys_optional sub_23015D934@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMSuggestedAttributeOutput.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_23015D96C(uint64_t a1)
{
  v2 = sub_230162C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23015D9A8(uint64_t a1)
{
  v2 = sub_230162C50();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMSuggestedAttributeOutput::ContentType_optional __swiftcall REMSuggestedAttributeOutput.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t REMSuggestedAttributeOutput.ContentType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1953720684;
    v8 = 0xD000000000000013;
    v9 = 0x664F796144657564;
    if (v1 != 3)
    {
      v9 = 0x636F4C6D72616C61;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x616F626574736170;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x797469726F697270;
    v3 = 6775156;
    if (v1 != 9)
    {
      v3 = 0x746361746E6F63;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x656C6369686576;
    v5 = 0x65656E6769737361;
    if (v1 != 6)
    {
      v5 = 0x64656767616C66;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23015DBBC()
{
  sub_230311358();
  sub_2302AE5E8();
  return sub_2303113A8();
}

uint64_t sub_23015DC0C()
{
  sub_230311358();
  sub_2302AE5E8();
  return sub_2303113A8();
}

unint64_t sub_23015DC5C@<X0>(unint64_t *a1@<X8>)
{
  result = REMSuggestedAttributeOutput.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t REMSuggestedAttributeOutput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230162C50();
  sub_230311428();
  if (!v2)
  {
    LOBYTE(v28) = 0;
    sub_230162CA4();
    sub_230310CE8();
    v9 = v26;
    LOBYTE(v28) = 2;
    sub_230162CF8();
    sub_230310CE8();
    v11 = v26;
    if (v9 <= 4)
    {
      if (v9 <= 1)
      {
        if (v9)
        {
          v25 = v26;
          (*(v6 + 8))(v8, v5);
          v12 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 1;
        }

        else
        {
          type metadata accessor for REMSuggestedList();
          LOBYTE(v28) = 1;
          sub_230161788(&qword_280C9AFB8, v17, type metadata accessor for REMSuggestedList);
          sub_230310CE8();
          (*(v6 + 8))(v8, v5);
          v25 = v11;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v12 = v26;
        }

        goto LABEL_24;
      }

      if (v9 == 2)
      {
        v25 = v26;
        LOBYTE(v26) = 1;
        v12 = sub_230310CC8();
        v26 = 0;
        v27 = 0xE000000000000000;
        sub_230310848();
        MEMORY[0x231911790](0xD000000000000033, 0x8000000230341FD0);
        v28 = v12;
        v18 = sub_230310E58();
        MEMORY[0x231911790](v18);

        MEMORY[0x231911790](125, 0xE100000000000000);

        (*(v6 + 8))(v8, v5);
        v21 = 0;
        v22 = 0;
        v23 = 2;
        goto LABEL_24;
      }

      if (v9 == 3)
      {
        type metadata accessor for REMSuggestedWeekDay();
        LOBYTE(v28) = 1;
        sub_230161788(&qword_280C9ACC0, v13, type metadata accessor for REMSuggestedWeekDay);
        sub_230310CE8();
        (*(v6 + 8))(v8, v5);
        v25 = v11;
        v21 = 0;
        v22 = 0;
        v12 = v26;
        v23 = 4;
LABEL_24:
        *a2 = v25;
        *(a2 + 8) = v12;
        *(a2 + 16) = v21;
        *(a2 + 24) = v22;
        *(a2 + 32) = v23;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }

    else
    {
      if (v9 > 7)
      {
        if (v9 == 8)
        {
          v25 = v26;
          LOBYTE(v26) = 1;
          v12 = sub_230310CD8();
          (*(v6 + 8))(v8, v5);
          v21 = 0;
          v22 = 0;
          v23 = 7;
        }

        else if (v9 == 9)
        {
          v25 = v26;
          LOBYTE(v26) = 1;
          v12 = sub_230310C98();
          v15 = v14;
          (*(v6 + 8))(v8, v5);
          v21 = v15;
          v22 = 0;
          v23 = 8;
        }

        else
        {
          type metadata accessor for REMSuggestedContact();
          LOBYTE(v28) = 1;
          sub_230161788(&qword_280C981C8, v20, type metadata accessor for REMSuggestedContact);
          sub_230310CE8();
          v25 = v11;
          (*(v6 + 8))(v8, v5);
          v21 = 0;
          v22 = 0;
          v12 = v26;
          v23 = 9;
        }

        goto LABEL_24;
      }

      if (v9 != 5)
      {
        if (v9 == 6)
        {
          type metadata accessor for REMObjectID_Codable();
          LOBYTE(v28) = 1;
          sub_230161788(&qword_280C9C5D0, 255, type metadata accessor for REMObjectID_Codable);
          sub_230310CE8();
          v25 = v11;
          v12 = v26;
          type metadata accessor for _NSRange(0);
          LOBYTE(v28) = 3;
          sub_230161788(&qword_27DB15CE8, 255, type metadata accessor for _NSRange);
          sub_230310CE8();
          (*(v6 + 8))(v8, v5);
          v21 = v26;
          v22 = v27;
          v23 = 5;
        }

        else
        {
          LOBYTE(v26) = 1;
          v19 = sub_230310CA8();
          v25 = v11;
          (*(v6 + 8))(v8, v5);
          v21 = 0;
          v22 = 0;
          v12 = v19 & 1;
          v23 = 6;
        }

        goto LABEL_24;
      }
    }

    type metadata accessor for REMSuggestedLocation();
    LOBYTE(v28) = 1;
    sub_230161788(&qword_280C9ABE8, v16, type metadata accessor for REMSuggestedLocation);
    sub_230310CE8();
    v25 = v11;
    (*(v6 + 8))(v8, v5);
    v21 = 0;
    v22 = 0;
    v12 = v26;
    v23 = 3;
    goto LABEL_24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t REMSuggestedAttributeOutput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15CF0);
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = *v1;
  v16 = v1[1];
  v17 = v7;
  v8 = v1[3];
  v15 = v1[2];
  v9 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230162C50();
  sub_230311448();
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        LOBYTE(v19) = 6;
        v21 = 0;
        sub_230162D4C();
        sub_230310DF8();
        if (!v2)
        {
          v19 = v17;
          v21 = 2;
          sub_230162DA0();
          sub_230310DF8();
          v19 = v16;
          v21 = 1;
          type metadata accessor for REMObjectID_Codable();
          sub_230161788(qword_280C9BFD8, 255, type metadata accessor for REMObjectID_Codable);
          sub_230310DF8();
          v19 = v15;
          v20 = v8;
          v21 = 3;
          type metadata accessor for _NSRange(0);
          v11 = &unk_27DB15D00;
          v13 = type metadata accessor for _NSRange;
          v10 = 255;
LABEL_27:
          sub_230161788(v11, v10, v13);
LABEL_30:
          sub_230310DF8();
        }
      }

      else
      {
        LOBYTE(v19) = 7;
        v21 = 0;
        sub_230162D4C();
        sub_230310DF8();
        if (!v2)
        {
          v19 = v17;
          v21 = 2;
          sub_230162DA0();
          sub_230310DF8();
          LOBYTE(v19) = 1;
          sub_230310DB8();
        }
      }
    }

    else if (v9 == 7)
    {
      LOBYTE(v19) = 8;
      v21 = 0;
      sub_230162D4C();
      sub_230310DF8();
      if (!v2)
      {
        v19 = v17;
        v21 = 2;
        sub_230162DA0();
        sub_230310DF8();
        LOBYTE(v19) = 1;
        sub_230310DE8();
      }
    }

    else if (v9 == 8)
    {
      LOBYTE(v19) = 9;
      v21 = 0;
      sub_230162D4C();
      sub_230310DF8();
      if (!v2)
      {
        v19 = v17;
        v21 = 2;
        sub_230162DA0();
        sub_230310DF8();
        LOBYTE(v19) = 1;
        sub_230310DA8();
      }
    }

    else
    {
      LOBYTE(v19) = 10;
      v21 = 0;
      sub_230162D4C();
      sub_230310DF8();
      if (!v2)
      {
        v19 = v17;
        v21 = 2;
        sub_230162DA0();
        sub_230310DF8();
        v19 = v16;
        v21 = 1;
        type metadata accessor for REMSuggestedContact();
        v11 = &unk_280C981D0;
        v12 = type metadata accessor for REMSuggestedContact;
        goto LABEL_26;
      }
    }
  }

  else if (v9 <= 1)
  {
    if (v9)
    {
      LOBYTE(v19) = 1;
      v21 = 0;
      sub_230162D4C();
      sub_230310DF8();
      if (!v2)
      {
        v19 = v17;
        v21 = 2;
        sub_230162DA0();
        goto LABEL_30;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
      v21 = 0;
      sub_230162D4C();
      sub_230310DF8();
      if (!v2)
      {
        v19 = v17;
        v21 = 2;
        sub_230162DA0();
        sub_230310DF8();
        v19 = v16;
        v21 = 1;
        type metadata accessor for REMSuggestedList();
        v11 = &qword_280C9AFC8;
        v12 = type metadata accessor for REMSuggestedList;
        goto LABEL_26;
      }
    }
  }

  else if (v9 == 2)
  {
    LOBYTE(v19) = 2;
    v21 = 0;
    sub_230162D4C();
    sub_230310DF8();
    if (!v2)
    {
      v19 = v17;
      v21 = 2;
      sub_230162DA0();
      sub_230310DF8();
      LOBYTE(v19) = 1;
      sub_230310DD8();
    }
  }

  else if (v9 == 3)
  {
    LOBYTE(v19) = 4;
    v21 = 0;
    sub_230162D4C();
    sub_230310DF8();
    if (!v2)
    {
      v19 = v17;
      v21 = 2;
      sub_230162DA0();
      sub_230310DF8();
      v19 = v16;
      v21 = 1;
      type metadata accessor for REMSuggestedLocation();
      v11 = &qword_280C9ABF0;
      v12 = type metadata accessor for REMSuggestedLocation;
LABEL_26:
      v13 = v12;
      goto LABEL_27;
    }
  }

  else
  {
    LOBYTE(v19) = 3;
    v21 = 0;
    sub_230162D4C();
    sub_230310DF8();
    if (!v2)
    {
      v19 = v17;
      v21 = 2;
      sub_230162DA0();
      sub_230310DF8();
      v19 = v16;
      v21 = 1;
      type metadata accessor for REMSuggestedWeekDay();
      v11 = &qword_280C9ACC8;
      v12 = type metadata accessor for REMSuggestedWeekDay;
      goto LABEL_26;
    }
  }

  return (*(v18 + 8))(v6, v4);
}

uint64_t sub_23015EE2C(uint64_t a1)
{
  v2 = v1;
  if (*(*(v1 + 24) + 16) && ((sub_23008E270)(), (v4 & 1) != 0) && (v5 = *(v1 + 32), *(v5 + 16)) && (v6 = sub_23008E270(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 8 * v6;
  }

  else
  {
    v8 = v2 + 40;
  }

  return *v8;
}

uint64_t sub_23015EE98(uint64_t a1)
{
  v2 = v1;
  if (*(*(v1 + 24) + 16) && (sub_23008E270(a1), (v4 & 1) != 0) && (v5 = *(v1 + 32), *(v5 + 16)) && (v6 = sub_23008E270(a1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + v6);
  }

  else
  {
    v8 = (v2 + 40);
  }

  return *v8;
}

uint64_t sub_23015EF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_23030EB58();
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v2 + 24) + 16) && (v18 = v7, sub_23008E270(a1), v7 = v18, (v10 & 1) != 0) && (v11 = *(v2 + 32), *(v11 + 16)) && (v12 = sub_23008E270(a1), v7 = v18, (v13 & 1) != 0))
  {
    (*(v18 + 16))(v9, *(v11 + 56) + *(v18 + 72) * v12, v6);
    return (*(v18 + 32))(a2, v9, v6);
  }

  else
  {
    v15 = *(v7 + 16);
    v16 = v3 + *(*v3 + 104);

    return v15(a2, v16, v6);
  }
}

uint64_t sub_23015F094(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_allocObject();
  *(v7 + 16) = a5(a1, a2);
  v10 = *(a1 + 16);

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = sub_23009D8EC(v10, 0);
  if (sub_2301502A8(v13, (v11 + 4), v10, 0, v10) != v10)
  {
    __break(1u);
LABEL_4:
    v11 = MEMORY[0x277D84F90];
  }

  sub_23015A028(v11, v13);
  *(v7 + 32) = v13[0];
  *(v7 + 24) = 1;
  return v7;
}

uint64_t sub_23015F170(uint64_t a1, char a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15DE8);
  swift_allocObject();
  *(v3 + 16) = sub_230162154(a1, a2);
  v6 = *(a1 + 16);

  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = sub_23009D8EC(v6, 0);
  if (sub_2301502A8(v9, (v7 + 4), v6, 0, v6) != v6)
  {
    __break(1u);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
  }

  sub_23015A028(v7, v9);
  *(v3 + 32) = v9[0];
  *(v3 + 24) = 1;
  return v3;
}

uint64_t sub_23015F24C(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_allocObject();
  *(v9 + 16) = sub_230162710(a1, a2, a5, a6);
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  v12 = sub_2303106D8();

  if ((v12 & 0x8000000000000000) == 0)
  {
LABEL_3:
    if (v12)
    {
      v13 = sub_23009D8EC(v12, 0);
      if (sub_2301502A8(v15, (v13 + 4), v12, 0, v12) == v12)
      {
LABEL_7:
        sub_23015A028(v13, v15);
        *(v9 + 32) = v15[0];
        *(v9 + 24) = 1;
        return v9;
      }

      __break(1u);
    }

    v13 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23015F368(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15E08);
  swift_allocObject();
  *(v3 + 16) = sub_230161C40(a1, v9);
  v10 = *(a1 + 16);

  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = sub_23009D8EC(v10, 0);
  if (sub_2301502A8(v13, (v11 + 4), v10, 0, v10) != v10)
  {
    __break(1u);
LABEL_4:
    v11 = MEMORY[0x277D84F90];
  }

  sub_23015A028(v11, v13);
  (*(v7 + 8))(a2, v6);
  *(v3 + 32) = v13[0];
  *(v3 + 24) = 1;
  return v3;
}

uint64_t sub_23015F504(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15E20);
  swift_allocObject();
  *(v3 + 16) = sub_2301619F4(a1, a2);
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  v6 = sub_2303106D8();

  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_3:
    if (v6)
    {
      v7 = sub_23009D8EC(v6, 0);
      if (sub_2301502A8(v9, (v7 + 4), v6, 0, v6) == v6)
      {
LABEL_7:
        sub_23015A028(v7, v9);
        *(v3 + 32) = v9[0];
        *(v3 + 24) = 1;
        return v3;
      }

      __break(1u);
    }

    v7 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23015F610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15E28);
  swift_allocObject();
  *(v4 + 16) = sub_2301617F0(a1, a2, a3);
  v8 = *(a1 + 16);

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_23009D8EC(v8, 0);
  if (sub_2301502A8(v11, (v9 + 4), v8, 0, v8) != v8)
  {
    __break(1u);
LABEL_4:
    v9 = MEMORY[0x277D84F90];
  }

  sub_23015A028(v9, v11);
  *(v4 + 32) = v11[0];
  *(v4 + 24) = 1;
  return v4;
}

uint64_t sub_23015F6F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *(a1 + 16);
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  if (v6 >= v8)
  {
    if (v8)
    {
      v19 = (v7 + 32);

      v12 = MEMORY[0x277D84F90];
      do
      {
        v23 = *v19++;
        v22 = v23;
        if (*(a2 + 16))
        {
          sub_23008E270(v22);
          if (v24)
          {
            *&v29 = v12;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_23009EC04(0, *(v12 + 16) + 1, 1);
              v12 = v29;
            }

            v21 = *(v12 + 16);
            v20 = *(v12 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_23009EC04((v20 > 1), v21 + 1, 1);
              v12 = v29;
            }

            *(v12 + 16) = v21 + 1;
            *(v12 + 8 * v21 + 32) = v22;
          }
        }

        --v8;
      }

      while (v8);
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }
  }

  else
  {

    if (v6)
    {
      v11 = 0;
      v12 = MEMORY[0x277D84F90];
      v28 = v7;
      do
      {
        v13 = v11;
        while (1)
        {
          if (v13 >= v6)
          {
            __break(1u);
LABEL_36:
            __break(1u);
            return result;
          }

          v11 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_36;
          }

          if (*(*(v4 + 40) + 16))
          {
            v14 = *(a1 + 32 + 8 * v13);
            result = sub_23008E270(v14);
            if (v15)
            {
              break;
            }
          }

          ++v13;
          if (v11 == v6)
          {
            v7 = v28;
            goto LABEL_29;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        *&v29 = v12;
        if ((result & 1) == 0)
        {
          result = sub_23009EC04(0, *(v12 + 16) + 1, 1);
          v12 = v29;
        }

        v17 = *(v12 + 16);
        v16 = *(v12 + 24);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          result = sub_23009EC04((v16 > 1), v17 + 1, 1);
          v18 = v17 + 1;
          v12 = v29;
        }

        *(v12 + 16) = v18;
        *(v12 + 8 * v17 + 32) = v14;
        v7 = v28;
      }

      while (v11 != v6);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }
  }

LABEL_29:

  if (*(v4 + 24) == 1)
  {
    v7 = *(*(v4 + 16) + 16);
  }

  if (*(v12 + 16) == *(v7 + 16))
  {
  }

  else
  {
    v25 = *(v4 + 16);

    sub_23015A028(v12, &v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v4 = swift_allocObject();
    *(v4 + 16) = v25;
    v26 = v29;
    *(v4 + 32) = v29;
    *(v4 + 24) = *(*(v25 + 16) + 16) == *(v26 + 16);
  }

  return v4;
}

_OWORD *sub_23015F9E4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23004B314(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

_OWORD *sub_23015FA60(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23004B314(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_23015FACC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a6[7] + 24 * result;
  *v8 = a7;
  *(v8 + 8) = a4;
  *(v8 + 16) = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_23015FB20(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2 & 1;
  v7 = a4[7];
  v8 = sub_23030EEA8();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_23015FBD0(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23015FC14(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_23015FC58(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  v7 = a6[7] + 40 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_23015FCC0(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_23015FD08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_23015FD58(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_9:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));

    if (!v13)
    {
LABEL_11:

      return MEMORY[0x2319130E0](v10);
    }

    v14 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v14;
    v17 = *(a1 + 64);
    v15 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v15;
    v7 &= v7 - 1;
    sub_23030F9C8();

    sub_2301220BC(v16, v13);

    result = sub_2303113A8();
    v10 ^= result;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19ReminderKitInternal26REMSuggestedAttributeInputC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_230311048() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list);
  v6 = *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list);
  v7 = *(v5 + 16) == *(v6 + 16) && *(v5 + 24) == *(v6 + 24);
  if (!v7 && (sub_230311048() & 1) == 0)
  {
    return 0;
  }

  if ((sub_23030EB08() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek);
  v9 = *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_dueDayOfWeek);
  v10 = *(v8 + 16) == *(v9 + 16) && *(v8 + 24) == *(v9 + 24);
  if (!v10 && (sub_230311048() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location);
  v12 = *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_location);
  v13 = *(v11 + 16) == *(v12 + 16) && *(v11 + 24) == *(v12 + 24);
  if (!v13 && (sub_230311048() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) != *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_flagged) || *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) != *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_priority) || (sub_2300A7274(*(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags), *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact);
  v15 = *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact);
  if ((*(v14 + 16) != *(v15 + 16) || *(v14 + 24) != *(v15 + 24)) && (sub_230311048() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence);
  v17 = *(a2 + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_recurrence);

  return sub_2300A7274(v16, v17);
}

uint64_t _s19ReminderKitInternal27REMSuggestedAttributeOutputO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v42[0] = v3;
  v42[1] = v2;
  v42[2] = v4;
  v42[3] = v5;
  v43 = v6;
  v44 = v7;
  v45 = v8;
  v46 = v9;
  v47 = v10;
  v48 = v11;
  if (v6 > 4)
  {
    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        if (v11 == 5)
        {
          v20 = v7;
          v21 = v9;
          v22 = v10;
          sub_230106E94(v7, v8, v9, v10, 5u);
          sub_230106E94(v3, v2, v4, v5, 5u);
          if (sub_23015C19C(v3, v20))
          {
            sub_23004CBA4(0, &qword_280C9B980);
            v23 = sub_230310448();
            sub_230061918(v42, &qword_27DB15DC8);
            v25 = v4 == v21 && v5 == v22;
            if ((v23 & 1) == 0)
            {
              v25 = 0;
            }

            return v25 & 1;
          }

          goto LABEL_49;
        }
      }

      else if (v11 == 6)
      {
        v37 = v7;
        v38 = v9;
        v39 = v10;
        sub_230106E94(v7, v8, v9, v10, 6u);
        sub_230106E94(v3, v2, v4, v5, 6u);
        sub_230106E94(v37, v8, v38, v39, 6u);
        sub_230106E94(v3, v2, v4, v5, 6u);
        v40 = sub_23015C19C(v3, v37);
        sub_230061918(v42, &qword_27DB15DC8);
        sub_230106D70(v37, v8, v38, v39, 6u);
        sub_230106D70(v3, v2, v4, v5, 6u);
        v25 = v8 ^ v2 ^ 1;
        if ((v40 & 1) == 0)
        {
          v25 = 0;
        }

        return v25 & 1;
      }

      goto LABEL_48;
    }

    if (v6 != 7)
    {
      if (v6 == 8)
      {
        if (v11 == 8)
        {
          v18 = v7;
          v19 = v9;
          sub_230106E94(v7, v8, v9, v10, 8u);
          sub_230106E94(v3, v2, v4, v5, 8u);
          if (sub_23015C19C(v3, v18))
          {
            if (v2 == v8 && v4 == v19)
            {
              goto LABEL_41;
            }

            goto LABEL_52;
          }

LABEL_49:
          sub_230061918(v42, &qword_27DB15DC8);
          v25 = 0;
          return v25 & 1;
        }

        goto LABEL_48;
      }

      if (v11 != 9)
      {
        goto LABEL_48;
      }

      v12 = v7;
      sub_230106E94(v7, v8, v9, v10, 9u);
      v13 = v3;
      v14 = v2;
      v15 = v4;
      v16 = v5;
      v17 = 9;
      goto LABEL_38;
    }

    if (v11 != 7)
    {
      goto LABEL_48;
    }

    v28 = v7;
    v29 = v9;
    v30 = v10;
    sub_230106E94(v7, v8, v9, v10, 7u);
    sub_230106E94(v3, v2, v4, v5, 7u);
    sub_230106E94(v28, v8, v29, v30, 7u);
    sub_230106E94(v3, v2, v4, v5, 7u);
    v31 = sub_23015C19C(v3, v28);
    sub_230061918(v42, &qword_27DB15DC8);
    sub_230106D70(v28, v8, v29, v30, 7u);
    sub_230106D70(v3, v2, v4, v5, 7u);
    v25 = v31 & (v2 == v8);
  }

  else
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v11 == 1)
        {
          v32 = v7;
          v33 = v9;
          v34 = v10;
          sub_230106E94(v7, v8, v9, v10, 1u);
          sub_230106E94(v3, v2, v4, v5, 1u);
          sub_230106E94(v32, v8, v33, v34, 1u);
          sub_230106E94(v3, v2, v4, v5, 1u);
          v35 = sub_23015C19C(v3, v32);
          sub_230061918(v42, &qword_27DB15DC8);
          sub_230106D70(v32, v8, v33, v34, 1u);
          sub_230106D70(v3, v2, v4, v5, 1u);
          return v35 & 1;
        }

        goto LABEL_48;
      }

      if (v11)
      {
LABEL_48:
        sub_230106E94(v7, v8, v9, v10, v11);
        sub_230106E94(v3, v2, v4, v5, v6);
        goto LABEL_49;
      }

      v12 = v7;
      sub_230106E94(v7, v8, v9, v10, 0);
      v13 = v3;
      v14 = v2;
      v15 = v4;
      v16 = v5;
      v17 = 0;
LABEL_38:
      sub_230106E94(v13, v14, v15, v16, v17);
      if (sub_23015C19C(v3, v12))
      {
        if (v2[2] == v8[2] && v2[3] == v8[3])
        {
LABEL_41:
          sub_230061918(v42, &qword_27DB15DC8);
          v25 = 1;
          return v25 & 1;
        }

LABEL_52:
        v41 = sub_230311048();
        sub_230061918(v42, &qword_27DB15DC8);
        return v41 & 1;
      }

      goto LABEL_49;
    }

    if (v6 != 2)
    {
      if (v6 == 3)
      {
        if (v11 == 3)
        {
          v12 = v7;
          sub_230106E94(v7, v8, v9, v10, 3u);
          v13 = v3;
          v14 = v2;
          v15 = v4;
          v16 = v5;
          v17 = 3;
          goto LABEL_38;
        }

        goto LABEL_48;
      }

      if (v11 != 4)
      {
        goto LABEL_48;
      }

      v12 = v7;
      sub_230106E94(v7, v8, v9, v10, 4u);
      v13 = v3;
      v14 = v2;
      v15 = v4;
      v16 = v5;
      v17 = 4;
      goto LABEL_38;
    }

    if (v11 != 2)
    {
      goto LABEL_48;
    }

    v26 = v7;
    sub_230106E94(v7, v8, v9, v10, 2u);
    sub_230106E94(v3, v2, v4, v5, 2u);
    v27 = sub_23015C19C(v3, v26);
    sub_230061918(v42, &qword_27DB15DC8);
    v25 = v27 & (v2 == v8);
  }

  return v25 & 1;
}

uint64_t _s19ReminderKitInternal16REMSuggestedListC8listUUIDAC10Foundation0G0VSg_tcfC_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230055F74(a1, v4, &qword_27DB14800);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_230061918(a1, &qword_27DB14800);
    sub_230061918(v4, &qword_27DB14800);
    v9 = 0xE500000000000000;
    v10 = 0x296C696E28;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_23030EB78();
    v9 = v11;
    sub_230061918(a1, &qword_27DB14800);
    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for REMSuggestedList();
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = v9;
  return result;
}

unint64_t sub_2301608EC()
{
  result = qword_280C9ACE0;
  if (!qword_280C9ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ACE0);
  }

  return result;
}

id _sSo24REMContactRepresentationC19ReminderKitInternalE5parse4fromABSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v4 = sub_23030F938();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030F928();
  v8 = sub_23030F8F8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    if (qword_27DB13B50 != -1)
    {
      swift_once();
    }

    v11 = sub_23030EF48();
    __swift_project_value_buffer(v11, qword_27DB15C10);

    v12 = sub_23030EF38();
    v13 = sub_230310288();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_23004E30C(a1, a2, v37);
      _os_log_impl(&dword_230044000, v12, v13, "Invalid json string: {%s}", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x231914180](v15, -1, -1);
      MEMORY[0x231914180](v14, -1, -1);
    }

    return 0;
  }

  v16 = objc_opt_self();
  v17 = sub_23030E9F8();
  v36 = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:&v36];

  v19 = v36;
  if (!v18)
  {
    v22 = v19;
    v23 = sub_23030E808();

    swift_willThrow();
    goto LABEL_14;
  }

  sub_2303105E8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DB15E30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_27DB13B50 != -1)
    {
      swift_once();
    }

    v24 = sub_23030EF48();
    __swift_project_value_buffer(v24, qword_27DB15C10);

    v25 = sub_23030EF38();
    v26 = sub_230310288();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_23004E30C(a1, a2, v37);
      _os_log_impl(&dword_230044000, v25, v26, "Failed to parse dictionary from: {%s}", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x231914180](v28, -1, -1);
      MEMORY[0x231914180](v27, -1, -1);
    }

    sub_230122604(v8, v10);

    return 0;
  }

  v20 = v36;
  if (!*(v36 + 2))
  {
    goto LABEL_24;
  }

  sub_23005EE00(0x73656E6F6870, 0xE600000000000000);
  if (v21)
  {

    if (!v20[2])
    {
      goto LABEL_24;
    }

LABEL_22:
    sub_23005EE00(0x736C69616D65, 0xE600000000000000);
    if (v30)
    {
    }

    goto LABEL_24;
  }

  if (v20[2])
  {
    goto LABEL_22;
  }

LABEL_24:

  v31 = objc_allocWithZone(MEMORY[0x277D445D8]);
  v32 = sub_23030FCC8();

  v33 = sub_23030FCC8();

  v34 = [v31 initWithPhones:v32 emails:v33];

  sub_230122604(v8, v10);
  return v34;
}

Swift::String *sub_230160E80(void *a1)
{
  v2 = v1;
  if (qword_27DB13B50 != -1)
  {
    swift_once();
  }

  v4 = sub_23030EF48();
  __swift_project_value_buffer(v4, qword_27DB15C10);
  v5 = a1;
  v6 = sub_23030EF38();
  v7 = sub_2303102A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v8 = 136315138;
    v9 = [v5 description];
    v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v12 = v11;

    v13 = sub_23004E30C(v10, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_230044000, v6, v7, "REMContactRepresentation: {%s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x231914180](v17, -1, -1);
    MEMORY[0x231914180](v8, -1, -1);
  }

  REMContactRepresentation.quickName.getter();
  v2[2]._countAndFlagsBits = v14;
  v2[2]._object = v15;
  v2[1] = REMContactRepresentation.parsableString()();
  return v2;
}

Swift::String *_s19ReminderKitInternal19REMSuggestedContactC08expectedE02ofACSo11REMReminderC_tFZ_0(void *a1)
{
  v1 = [a1 contactHandles];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for REMSuggestedContact();
    swift_allocObject();
    v3 = v2;
    v4 = sub_230160E80(v3);

    return v4;
  }

  else
  {
    type metadata accessor for REMSuggestedContact();
    result = swift_allocObject();
    result[2]._countAndFlagsBits = 0;
    result[2]._object = 0xE000000000000000;
    result[1]._countAndFlagsBits = 0x296C696E28;
    result[1]._object = 0xE500000000000000;
  }

  return result;
}

uint64_t _s19ReminderKitInternal20REMSuggestedLocationC08expectedE02ofACSaySo8REMAlarmCG_tFZ_0(unint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v2 = sub_2303106D8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v2 != 0;
  if (!v2)
  {
LABEL_21:
    type metadata accessor for REMSuggestedLocation();
    result = swift_allocObject();
    if (v3)
    {
      v19 = 0x726568746FLL;
    }

    else
    {
      v19 = 0x296C696E28;
    }

    v20 = 0xE500000000000000;
LABEL_25:
    *(result + 16) = v19;
    *(result + 24) = v20;
    return result;
  }

  v25 = 0;
  v4 = 0;
  v27 = v1;
  v28 = v1 & 0xC000000000000001;
  v5 = &off_2788BD000;
  v26 = v2;
  while (1)
  {
    while (1)
    {
      if (v28)
      {
        v6 = MEMORY[0x231912650](v4, v1);
      }

      else
      {
        if (v4 >= *(v29 + 16))
        {
          goto LABEL_37;
        }

        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v9 = [v6 v5[329]];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        type metadata accessor for REMSuggestedLocation();
        result = swift_allocObject();
        v19 = 7496035;
        v20 = 0xE300000000000000;
        goto LABEL_25;
      }

      v10 = [v7 v5[329]];
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v5;
        v14 = [v11 0x1FB72859DLL];
        v15 = [v14 contactLabel];

        if (v15)
        {
          break;
        }

        v16 = [v12 0x1FB72859DLL];
        v15 = [v16 title];

        v5 = v13;
        if (v15)
        {
          break;
        }
      }

      ++v4;
      v1 = v27;
      if (v8 == v26)
      {
        v3 = v25;
        goto LABEL_21;
      }
    }

    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

    sub_2300A85F0();
    if (sub_230310598())
    {

      v21 = [v12 proximity];

      if (!v21)
      {
LABEL_34:
        v23 = 0xE400000000000000;
        v22 = 1701670760;
        goto LABEL_40;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          v22 = 0x6F682E657661656CLL;
          v23 = 0xEA0000000000656DLL;
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_38:
      v23 = 0xEB00000000656D6FLL;
      v22 = 0x682E657669727261;
      goto LABEL_40;
    }

    v17 = sub_230310598();

    if (v17)
    {
      break;
    }

    v25 = 1;
    v4 = v8;
    v5 = v13;
    v1 = v27;
    if (v8 == v26)
    {
      v3 = 1;
      goto LABEL_21;
    }
  }

  v24 = [v12 proximity];

  if (!v24)
  {
    goto LABEL_35;
  }

  if (v24 == 2)
  {
    v23 = 0xEA00000000006B72;
    v22 = 0x6F772E657661656CLL;
  }

  else
  {
    if (v24 == 1)
    {
      v23 = 0xEB000000006B726FLL;
      v22 = 0x772E657669727261;
      goto LABEL_40;
    }

LABEL_35:
    v23 = 0xE400000000000000;
    v22 = 1802661751;
  }

LABEL_40:
  type metadata accessor for REMSuggestedLocation();
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = v23;
  return result;
}

unint64_t sub_2301616A8()
{
  result = qword_27DB15C48;
  if (!qword_27DB15C48)
  {
    sub_23004CBA4(255, &qword_27DB15C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15C48);
  }

  return result;
}

unint64_t sub_230161734()
{
  result = qword_280C9BDA8;
  if (!qword_280C9BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDA8);
  }

  return result;
}

uint64_t sub_230161788(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2301617F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_23015A028(MEMORY[0x277D84F90], &v31);
    *(v3 + 16) = v31;
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    *(v4 + 32) = v10;
    *(v4 + 40) = a2;
    *(v4 + 48) = a3;
    return v4;
  }

  v7 = sub_23009D8EC(v5, 0);
  if (sub_2301502A8(v30, (v7 + 4), v5, 0, v5) != v5)
  {
    goto LABEL_20;
  }

  sub_23015A028(v7, &v31);
  v8 = 0;
  *(v4 + 16) = v31;
  v9 = (a1 + 40);
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v12 = *(v9 - 1);
    v13 = *v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = v10;
    v15 = sub_23008E270(v8);
    v17 = v10[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      break;
    }

    v21 = v16;
    if (v10[3] < v20)
    {
      sub_2300849BC(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_23008E270(v8);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v10 = v30[0];
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v26 = v15;
    sub_230089EB0();
    v15 = v26;
    v10 = v30[0];
    if (v21)
    {
LABEL_4:
      v11 = (v10[7] + 16 * v15);
      *v11 = v12;
      v11[1] = v13;

      goto LABEL_5;
    }

LABEL_12:
    v10[(v15 >> 6) + 8] |= 1 << v15;
    *(v10[6] + 8 * v15) = v8;
    v23 = (v10[7] + 16 * v15);
    *v23 = v12;
    v23[1] = v13;
    v24 = v10[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_19;
    }

    v10[2] = v25;
LABEL_5:
    v8 = (v8 + 1);
    v9 += 2;
    if (v5 == v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_2301619F4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_29;
  }

  do
  {
    v5 = sub_23009D8EC(v4, 0);
    if (sub_2301502A8(v27, (v5 + 4), v4, 0, v4) != v4)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      v23 = sub_2303112A8();
      __break(1u);
      goto LABEL_28;
    }

    sub_23015A028(v5, &v28);
    v6 = 0;
    *(v2 + 16) = v28;
    v2 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231912650](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = v2;
      v12 = sub_23008E270(v6);
      v14 = *(v2 + 16);
      v15 = (v13 & 1) == 0;
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (v16)
      {
        break;
      }

      v18 = v13;
      if (*(v2 + 24) < v17)
      {
        sub_230085D00(v17, isUniquelyReferenced_nonNull_native);
        v2 = v27[0];
        v12 = sub_23008E270(v6);
        if ((v18 & 1) != (v19 & 1))
        {
          goto LABEL_27;
        }

LABEL_15:
        v2 = v27[0];
        if (v18)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v22 = v12;
      sub_23008AA90();
      v12 = v22;
      v2 = v27[0];
      if (v18)
      {
LABEL_5:
        v7 = *(v2 + 56);
        v8 = *(v7 + 8 * v12);
        *(v7 + 8 * v12) = v10;

        goto LABEL_6;
      }

LABEL_16:
      *(v2 + 8 * (v12 >> 6) + 64) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v6;
      *(*(v2 + 56) + 8 * v12) = v10;
      v20 = *(v2 + 16);
      v16 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      *(v2 + 16) = v21;
LABEL_6:
      if (v4 == ++v6)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v23 = sub_2303106D8();
    if (v23 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_28:
    v4 = v23;
    v25 = v2;
  }

  while (v23);
LABEL_29:
  sub_23015A028(MEMORY[0x277D84F90], &v28);
  *(v2 + 16) = v28;
  v2 = MEMORY[0x277D84F98];
LABEL_30:
  result = v25;
  *(v25 + 32) = v2;
  *(v25 + 40) = a2;
  return result;
}

uint64_t sub_230161C40(uint64_t a1, uint64_t a2)
{
  v5 = sub_23030EB58();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15E10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = (&v52 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15E18);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v52 - v15;
  v58 = a1;
  v16 = *(a1 + 16);
  v54 = a2;
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = sub_23009D8EC(v16, 0);
  if (sub_2301502A8(v66, (v17 + 4), v16, 0, v16) != v16)
  {
    __break(1u);
LABEL_4:
    v17 = MEMORY[0x277D84F90];
  }

  sub_23015A028(v17, v66);
  v18 = 0;
  v53 = v2;
  *(v2 + 16) = v66[0];
  v61 = (v9 + 56);
  v60 = (v9 + 48);
  v63 = (v64 + 32);
  v55 = v64 + 40;
  v56 = v64 + 16;
  v19 = MEMORY[0x277D84F98];
  v20 = v62;
  v59 = v16;
  while (1)
  {
    if (v18 == v16)
    {
      v22 = 1;
      v23 = v16;
    }

    else
    {
      if (v18 >= v16)
      {
        goto LABEL_25;
      }

      v23 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_26;
      }

      v24 = v64;
      v25 = v57;
      v26 = v58 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18;
      v27 = *(v8 + 48);
      *v57 = v18;
      (*(v24 + 16))(v25 + v27, v26, v5);
      sub_230112AF4(v25, v14, &qword_27DB15E10);
      v22 = 0;
    }

    (*v61)(v14, v22, 1, v8);
    sub_230112AF4(v14, v20, &qword_27DB15E18);
    if ((*v60)(v20, 1, v8) == 1)
    {
      v50 = v53;
      v49 = v54;
      *(v53 + 32) = v19;
      (*v63)(v50 + *(*v50 + 104), v49, v5);
      return v50;
    }

    v65 = v23;
    v28 = v14;
    v29 = *v20;
    v30 = v8;
    v31 = *(v8 + 48);
    v32 = *v63;
    v33 = v20 + v31;
    v34 = v7;
    v35 = v5;
    (*v63)(v7, v33, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v66[0] = v19;
    v38 = sub_23008E270(v29);
    v39 = v19[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v19[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23008A828();
      }
    }

    else
    {
      sub_2300859B4(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_23008E270(v29);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_28;
      }

      v38 = v43;
    }

    v5 = v35;
    v19 = *&v66[0];
    v20 = v62;
    if (v42)
    {
      v21 = *(*&v66[0] + 56) + *(v64 + 72) * v38;
      v7 = v34;
      (*(v64 + 40))(v21, v34, v5);
    }

    else
    {
      *(*&v66[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      *(v19[6] + 8 * v38) = v29;
      v45 = v19[7] + *(v64 + 72) * v38;
      v7 = v34;
      v32(v45, v34, v5);
      v46 = v19[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_27;
      }

      v19[2] = v48;
    }

    v8 = v30;
    v14 = v28;
    v16 = v59;
    v18 = v65;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_230162154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_23015A028(MEMORY[0x277D84F90], &v26);
    *(v2 + 16) = v26;
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    *(v3 + 32) = v10;
    *(v3 + 40) = a2 & 1;
    return v3;
  }

  v7 = sub_23009D8EC(*(a1 + 16), 0);
  if (sub_2301502A8(v25, (v7 + 4), v5, 0, v5) != v5)
  {
    goto LABEL_20;
  }

  sub_23015A028(v7, &v26);
  v8 = 0;
  *(v3 + 16) = v26;
  v9 = a1 + 32;
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v10;
    v13 = sub_23008E270(v8);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v10[3] < v18)
    {
      sub_2300854AC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_23008E270(v8);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v10 = v25[0];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v13;
    sub_23008A554();
    v13 = v23;
    v10 = v25[0];
    if (v19)
    {
LABEL_4:
      *(v10[7] + v13) = v11;
      goto LABEL_5;
    }

LABEL_12:
    v10[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + 8 * v13) = v8;
    *(v10[7] + v13) = v11;
    v21 = v10[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v10[2] = v22;
LABEL_5:
    if (v5 == ++v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_23016233C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_23015A028(MEMORY[0x277D84F90], &v26);
    *(v2 + 16) = v26;
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    *(v3 + 32) = v10;
    *(v3 + 40) = a2;
    return v3;
  }

  v7 = sub_23009D8EC(*(a1 + 16), 0);
  if (sub_2301502A8(v25, (v7 + 4), v5, 0, v5) != v5)
  {
    goto LABEL_20;
  }

  sub_23015A028(v7, &v26);
  v8 = 0;
  *(v3 + 16) = v26;
  v9 = a1 + 32;
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = *(v9 + 8 * v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v10;
    v13 = sub_23008E270(v8);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v10[3] < v18)
    {
      sub_23008523C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_23008E270(v8);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v10 = v25[0];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v13;
    sub_23008A404();
    v13 = v23;
    v10 = v25[0];
    if (v19)
    {
LABEL_4:
      *(v10[7] + 8 * v13) = v11;
      goto LABEL_5;
    }

LABEL_12:
    v10[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + 8 * v13) = v8;
    *(v10[7] + 8 * v13) = v11;
    v21 = v10[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v10[2] = v22;
LABEL_5:
    if (v5 == ++v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_23016251C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 + 16);
  if (!v5)
  {
    sub_23015A028(MEMORY[0x277D84F90], &v26);
    *(v2 + 16) = v26;
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    *(v3 + 32) = v10;
    *(v3 + 40) = a2;
    return v3;
  }

  v7 = sub_23009D8EC(*(a1 + 16), 0);
  if (sub_2301502A8(v25, (v7 + 4), v5, 0, v5) != v5)
  {
    goto LABEL_20;
  }

  sub_23015A028(v7, &v26);
  v8 = 0;
  *(v3 + 16) = v26;
  v9 = a1 + 32;
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = *(v9 + 8 * v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v10;
    v13 = sub_23008E270(v8);
    v15 = v10[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v10[3] < v18)
    {
      sub_230084FCC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_23008E270(v8);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v10 = v25[0];
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v13;
    sub_23008A2A8();
    v13 = v23;
    v10 = v25[0];
    if (v19)
    {
LABEL_4:
      *(v10[7] + 8 * v13) = v11;

      goto LABEL_5;
    }

LABEL_12:
    v10[(v13 >> 6) + 8] |= 1 << v13;
    *(v10[6] + 8 * v13) = v8;
    *(v10[7] + 8 * v13) = v11;
    v21 = v10[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v10[2] = v22;
LABEL_5:
    if (v5 == ++v8)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

uint64_t sub_230162710(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t isUniquelyReferenced_nonNull_native)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_30;
  }

  do
  {
    v8 = sub_23009D8EC(v7, 0);
    if (sub_2301502A8(v27, (v8 + 4), v7, 0, v7) != v7)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      v21 = sub_2303112A8();
      __break(1u);
      goto LABEL_29;
    }

    v23 = isUniquelyReferenced_nonNull_native;
    sub_23015A028(v8, &v28);
    v9 = 0;
    *(v4 + 16) = v28;
    v4 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x231912650](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = v4;
      v12 = sub_23008E270(v9);
      v13 = *(v4 + 16);
      v14 = (v11 & 1) == 0;
      if (__OFADD__(v13, v14))
      {
        break;
      }

      v15 = v11;
      if (*(v4 + 24) >= v13 + v14)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v27[0];
          if (v11)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v23();
          v4 = v27[0];
          if (v15)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        a3();
        v4 = v27[0];
        v16 = sub_23008E270(v9);
        if ((v15 & 1) != (v17 & 1))
        {
          goto LABEL_28;
        }

        v12 = v16;
        v4 = v27[0];
        if (v15)
        {
LABEL_5:
          *(*(v4 + 56) + 8 * v12) = v10;

          goto LABEL_6;
        }
      }

      *(v4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v9;
      *(*(v4 + 56) + 8 * v12) = v10;
      v18 = *(v4 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_24;
      }

      *(v4 + 16) = v20;
LABEL_6:
      if (v7 == ++v9)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v21 = sub_2303106D8();
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_27;
    }

LABEL_29:
    v7 = v21;
    v24 = v4;
  }

  while (v21);
LABEL_30:
  sub_23015A028(MEMORY[0x277D84F90], &v28);
  *(v4 + 16) = v28;
  v4 = MEMORY[0x277D84F98];
LABEL_31:
  result = v24;
  *(v24 + 32) = v4;
  *(v24 + 40) = a2;
  return result;
}

uint64_t sub_23016297C(uint64_t a1)
{
  v2 = v1;
  if (*(*(v1 + 24) + 16) && (sub_23008E270(a1), (v4 & 1) != 0) && (v5 = *(v1 + 32), *(v5 + 16)) && (v6 = sub_23008E270(a1), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 16 * v6;
  }

  else
  {
    v8 = v2 + 40;
  }

  return *v8;
}

unint64_t sub_2301629F4()
{
  result = qword_280C98B70;
  if (!qword_280C98B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B70);
  }

  return result;
}

unint64_t sub_230162A48()
{
  result = qword_280C96F80;
  if (!qword_280C96F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15CC0);
    sub_230162AF8();
    sub_2301224F0(&qword_280C9B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F80);
  }

  return result;
}

unint64_t sub_230162AF8()
{
  result = qword_280C97708;
  if (!qword_280C97708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97708);
  }

  return result;
}

unint64_t sub_230162B4C()
{
  result = qword_280C96F88;
  if (!qword_280C96F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15CC0);
    sub_230162BFC();
    sub_2301224F0(&qword_280C9B408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C96F88);
  }

  return result;
}

unint64_t sub_230162BFC()
{
  result = qword_280C97710;
  if (!qword_280C97710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97710);
  }

  return result;
}

unint64_t sub_230162C50()
{
  result = qword_27DB15CD8;
  if (!qword_27DB15CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15CD8);
  }

  return result;
}

unint64_t sub_230162CA4()
{
  result = qword_27DB15CE0;
  if (!qword_27DB15CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15CE0);
  }

  return result;
}

unint64_t sub_230162CF8()
{
  result = qword_280C97718;
  if (!qword_280C97718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97718);
  }

  return result;
}

unint64_t sub_230162D4C()
{
  result = qword_27DB15CF8;
  if (!qword_27DB15CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15CF8);
  }

  return result;
}

unint64_t sub_230162DA0()
{
  result = qword_280C97720;
  if (!qword_280C97720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97720);
  }

  return result;
}

unint64_t sub_230162DF8()
{
  result = qword_27DB15D08;
  if (!qword_27DB15D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D08);
  }

  return result;
}

unint64_t sub_230162E50()
{
  result = qword_280C9ACD0;
  if (!qword_280C9ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ACD0);
  }

  return result;
}

unint64_t sub_230162EA8()
{
  result = qword_280C9ACD8;
  if (!qword_280C9ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ACD8);
  }

  return result;
}

unint64_t sub_230162F00()
{
  result = qword_27DB15D10;
  if (!qword_27DB15D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D10);
  }

  return result;
}

unint64_t sub_230162F58()
{
  result = qword_280C9AFD0;
  if (!qword_280C9AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AFD0);
  }

  return result;
}

unint64_t sub_230162FB0()
{
  result = qword_280C9AFD8;
  if (!qword_280C9AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AFD8);
  }

  return result;
}

unint64_t sub_230163008()
{
  result = qword_27DB15D18;
  if (!qword_27DB15D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D18);
  }

  return result;
}

unint64_t sub_230163060()
{
  result = qword_280C98210;
  if (!qword_280C98210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98210);
  }

  return result;
}

unint64_t sub_2301630B8()
{
  result = qword_280C98218;
  if (!qword_280C98218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98218);
  }

  return result;
}

unint64_t sub_230163110()
{
  result = qword_27DB15D20;
  if (!qword_27DB15D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D20);
  }

  return result;
}

unint64_t sub_230163168()
{
  result = qword_280C9ABF8;
  if (!qword_280C9ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9ABF8);
  }

  return result;
}

unint64_t sub_2301631C0()
{
  result = qword_280C9AC00;
  if (!qword_280C9AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AC00);
  }

  return result;
}

unint64_t sub_230163218()
{
  result = qword_27DB15D28;
  if (!qword_27DB15D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D28);
  }

  return result;
}

unint64_t sub_23016326C(uint64_t a1)
{
  *(a1 + 8) = sub_23016329C();
  result = sub_230161734();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23016329C()
{
  result = qword_27DB15D30;
  if (!qword_27DB15D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D30);
  }

  return result;
}

unint64_t sub_2301632F4()
{
  result = qword_280C9BD98;
  if (!qword_280C9BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BD98);
  }

  return result;
}

unint64_t sub_23016334C()
{
  result = qword_280C9BDA0;
  if (!qword_280C9BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9BDA0);
  }

  return result;
}

uint64_t sub_2301633EC(uint64_t a1)
{
  result = sub_230161788(&qword_280C9A210, 255, type metadata accessor for REMSuggestedAttributeInput);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23016344C()
{
  result = qword_280C98B58;
  if (!qword_280C98B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B58);
  }

  return result;
}

unint64_t sub_2301634E8()
{
  result = qword_27DB15D58;
  if (!qword_27DB15D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D58);
  }

  return result;
}

unint64_t sub_230163540()
{
  result = qword_27DB15D60;
  if (!qword_27DB15D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D60);
  }

  return result;
}

unint64_t sub_230163598()
{
  result = qword_27DB15D68;
  if (!qword_27DB15D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D68);
  }

  return result;
}

unint64_t sub_2301635F0()
{
  result = qword_27DB15D70;
  if (!qword_27DB15D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D70);
  }

  return result;
}

unint64_t sub_230163648()
{
  result = qword_27DB15D78;
  if (!qword_27DB15D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D78);
  }

  return result;
}

unint64_t sub_2301636A0()
{
  result = qword_280C97728;
  if (!qword_280C97728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97728);
  }

  return result;
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t keypath_get_33Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

uint64_t sub_230163894()
{
  result = sub_23030EB58();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributeInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributeInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_230163B88()
{
  result = sub_23030EBB8();
  if (v1 <= 0x3F)
  {
    result = sub_23030EB58();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t destroy for REMSuggestedAttributeInputDataFrame()
{
}

void *initializeWithCopy for REMSuggestedAttributeInputDataFrame(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  a1[12] = a2[12];

  return a1;
}

void *assignWithCopy for REMSuggestedAttributeInputDataFrame(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributeInputDataFrame(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributeInputDataFrame(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributeInputDataFrame(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for REMSuggestedAttributeOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_230106E94(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for REMSuggestedAttributeOutput(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  sub_230106E94(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  sub_230106D70(v8, v9, v10, v11, v12);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributeOutput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  sub_230106D70(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributeOutput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 33))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 32);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributeOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_2301649D8()
{
  result = qword_27DB15D90;
  if (!qword_27DB15D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15D90);
  }

  return result;
}

unint64_t sub_230164A30()
{
  result = qword_280C98B60;
  if (!qword_280C98B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B60);
  }

  return result;
}

unint64_t sub_230164A88()
{
  result = qword_280C98B68;
  if (!qword_280C98B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B68);
  }

  return result;
}

unint64_t sub_230164ADC()
{
  result = qword_280C9AC08;
  if (!qword_280C9AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AC08);
  }

  return result;
}

unint64_t sub_230164B30()
{
  result = qword_280C98220;
  if (!qword_280C98220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98220);
  }

  return result;
}

unint64_t sub_230164B84()
{
  result = qword_280C9AFE0;
  if (!qword_280C9AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AFE0);
  }

  return result;
}

unint64_t sub_230164BD8()
{
  result = qword_27DB15DB0;
  if (!qword_27DB15DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15DB0);
  }

  return result;
}

unint64_t sub_230164C2C()
{
  result = qword_280C98B50;
  if (!qword_280C98B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B50);
  }

  return result;
}

uint64_t REMLazy.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_2303104C8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-v10];
  v12 = *(v3 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v12, v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  v14 = (*(v6 + 8))(v11, v5);
  (*(v1 + *(*v1 + 96)))(v14);
  (*(v13 + 16))(v9, a1, v4);
  (*(v13 + 56))(v9, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v12, v9, v5);
  return swift_endAccess();
}

uint64_t sub_230164F8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_23016504C(v2);
}

uint64_t sub_23016504C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2303104C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 32))(&v11 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v9 = *(*v1 + 88);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t REMLazy.__allocating_init(closure:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 56))(v4 + *(*v4 + 88), 1, 1);
  v5 = (v4 + *(*v4 + 96));
  *v5 = a1;
  v5[1] = a2;
  return v4;
}

uint64_t REMLazy.init(closure:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 56))(v2 + *(*v2 + 88), 1, 1);
  v5 = (v2 + *(*v2 + 96));
  *v5 = a1;
  v5[1] = a2;
  return v2;
}

uint64_t REMLazy.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_2303104C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t REMLazy.__deallocating_deinit()
{
  REMLazy.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230165438()
{
  result = sub_2303104C8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_230165520()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15EB8);
  v1 = __swift_project_value_buffer(v0, qword_27DB15EB8);
  if (qword_280C97090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2301655E8(uint64_t a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v64 = &v60 - v6;
  v7 = sub_23030E9B8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  v14 = objc_opt_self();
  v15 = sub_23030E8D8();
  v66[0] = 0;
  v16 = [v14 appLinksWithURL:v15 limit:1 error:v66];

  v17 = v66[0];
  if (!v16)
  {
    v24 = v66[0];
    v1 = sub_23030E808();

    swift_willThrow();
    if (qword_27DB13B58 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

  sub_23004CBA4(0, &qword_27DB15ED8);
  v18 = sub_23030FCD8();
  v19 = v17;

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!sub_2303106D8())
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v18 & 0xC000000000000001) == 0)
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(v18 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_37:
    swift_once();
LABEL_10:
    v25 = sub_23030EF48();
    __swift_project_value_buffer(v25, qword_27DB15EB8);
    (*(v8 + 16))(v11, a1, v7);
    v26 = v1;
    v27 = sub_23030EF38();
    v28 = sub_230310268();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v62 = v13;
      v30 = v29;
      v31 = swift_slowAlloc();
      v61 = a1;
      v32 = v31;
      v66[0] = v31;
      *v30 = 136315394;
      swift_getErrorValue();
      v33 = Error.rem_errorDescription.getter(v65);
      v35 = sub_23004E30C(v33, v34, v66);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      v36 = sub_23030E888();
      v38 = v37;
      (*(v8 + 8))(v11, v7);
      v39 = sub_23004E30C(v36, v38, v66);

      *(v30 + 14) = v39;
      _os_log_impl(&dword_230044000, v27, v28, "Failed to get appLink {error: %s, url: %s}", v30, 0x16u);
      swift_arrayDestroy();
      v40 = v32;
      a1 = v61;
      MEMORY[0x231914180](v40, -1, -1);
      v41 = v30;
      v13 = v62;
      MEMORY[0x231914180](v41, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    goto LABEL_15;
  }

  v20 = MEMORY[0x231912650](0, v18);
LABEL_7:
  v21 = v20;

  v22 = [v21 targetApplicationRecord];

  result = v22;
  if (v22)
  {
    return result;
  }

LABEL_15:
  v42 = objc_opt_self();
  v43 = [v42 defaultWorkspace];
  v44 = v43;
  if (v43)
  {
    v45 = v43;
    v46 = a1;
    v47 = sub_23030E8D8();
    v48 = [v45 URLOverrideForURL_];

    if (v48)
    {
      v49 = v63;
      sub_23030E938();

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v63;
    }

    (*(v8 + 56))(v49, v50, 1, v7);
    v51 = v64;
    sub_23012F860(v49, v64);
    a1 = v46;
    if ((*(v8 + 48))(v51, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v51, v7);
      goto LABEL_24;
    }
  }

  else
  {
    v51 = v64;
    (*(v8 + 56))(v64, 1, 1, v7);
  }

  (*(v8 + 16))(v13, a1, v7);
  if ((*(v8 + 48))(v51, 1, v7) != 1)
  {
    sub_230166394(v51);
  }

LABEL_24:
  v52 = [v42 defaultWorkspace];
  if (!v52 || (v53 = v52, v54 = sub_23030E8D8(), v55 = [v53 applicationsAvailableForOpeningURL_], v53, v54, !v55))
  {
    (*(v8 + 8))(v13, v7);
LABEL_33:

    return 0;
  }

  sub_23004CBA4(0, &qword_27DB15ED0);
  v56 = sub_23030FCD8();

  if (v56 >> 62)
  {
    if (sub_2303106D8())
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

  if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    (*(v8 + 8))(v13, v7);

    goto LABEL_33;
  }

LABEL_28:
  if ((v56 & 0xC000000000000001) != 0)
  {
    v57 = MEMORY[0x231912650](0, v56);
  }

  else
  {
    if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v57 = *(v56 + 32);
  }

  v58 = v57;

  v59 = [v58 correspondingApplicationRecord];

  (*(v8 + 8))(v13, v7);
  return v59;
}

uint64_t sub_230165DA0(void *a1)
{
  sub_23008D308(MEMORY[0x277D84F90]);
  v2 = sub_23030F638();

  v3 = [a1 _determineMatchingApplicationBundleIdentifierWithOptions_];

  if (v3)
  {
    v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v6 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_230315CE0;
    *(v7 + 32) = v4;
    *(v7 + 40) = v6;
    return v7;
  }

  v8 = [a1 activityType];
  v9 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v11 = v10;

  if (v9 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v11 == v12)
  {

    return &unk_2844EAF08;
  }

  v14 = sub_230311048();

  if (v14)
  {
    return &unk_2844EAF08;
  }

  v15 = [a1 activityType];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  LOBYTE(v15) = sub_23030FAC8();

  if ((v15 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = [a1 activityType];
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();

  sub_2300A85F0();
  v17 = sub_230310538();

  if (*(v17 + 16) < 3uLL)
  {

    return MEMORY[0x277D84F90];
  }

  v7 = MEMORY[0x277D84F90];
  while (1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_2300B0FA8();
    v19 = sub_23030F7C8();
    v21 = v20;

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007E928(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    if (v23 >= v22 >> 1)
    {
      result = sub_23007E928((v22 > 1), v23 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v23 + 1;
    v24 = v7 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    if (!*(v17 + 16))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v17 + 16);
      if (!v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v17 = sub_23029CF34(v17);
      v25 = *(v17 + 16);
      if (!v25)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        return v7;
      }
    }

    *(v17 + 16) = v25 - 1;

    if (*(v17 + 16) <= 2uLL)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

id _sSo19LSApplicationRecordC19ReminderKitInternalE011applicationB015forUserActivityABSgSo06NSUserI0C_tFZ_0(void *a1)
{
  v1 = sub_230165DA0(a1);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];

    v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v5 = sub_23012E508(v3, v2, 0);

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_230166394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB17070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_230166454(double a1, double a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D44868]);
  v5 = sub_23030F8B8();
  v6 = [v4 initWithTitle_];

  [v6 setLatitude_];
  [v6 setLongitude_];
  [v6 setRadius_];
  return v6;
}

id static REMStructuredLocation.testing_outbackSteakhouse.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D44868]);
  v1 = sub_23030F8B8();
  v2 = [v0 initWithTitle_];

  [v2 setLatitude_];
  [v2 setLongitude_];
  [v2 setRadius_];
  return v2;
}

id static REMStructuredLocation.testing_outbackSteakhouse(radius:)(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D44868]);
  v3 = sub_23030F8B8();
  v4 = [v2 initWithTitle_];

  [v4 setLatitude_];
  [v4 setLongitude_];
  [v4 setRadius_];
  return v4;
}

void sub_230166680(uint64_t a1, uint64_t a2, char a3)
{

  v5 = sub_23030EF38();
  v6 = sub_230310298();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446722;
    v9 = sub_230310868();
    v11 = sub_23004E30C(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_23030F668();
    v14 = a3;
    v15 = sub_23004E30C(v12, v13, &v19);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2082;
    v16 = sub_23030F668();
    v18 = sub_23004E30C(v16, v17, &v19);
    a3 = v14;

    *(v7 + 24) = v18;
    _os_log_impl(&dword_230044000, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v8, -1, -1);
    MEMORY[0x231914180](v7, -1, -1);
  }

  if (a3)
  {
    __break(1u);
  }

  else if (a1)
  {
    rdi_os_crash();
  }

  __break(1u);
}

uint64_t sub_230166974()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15EE0);
  v1 = __swift_project_value_buffer(v0, qword_27DB15EE0);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int32 __swiftcall Int32.init(timeIntervalSinceReferenceDate:)(Swift::Double timeIntervalSinceReferenceDate)
{
  if ((*&timeIntervalSinceReferenceDate & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (timeIntervalSinceReferenceDate <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (timeIntervalSinceReferenceDate >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (timeIntervalSinceReferenceDate <= 2147483646)
  {
    if (timeIntervalSinceReferenceDate > -2147483650.0)
    {
      if (timeIntervalSinceReferenceDate < 2147483650.0)
      {
        return timeIntervalSinceReferenceDate;
      }

      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  if (qword_27DB13BB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = sub_23030EF48();
  __swift_project_value_buffer(v2, qword_27DB15EE0);
  v3 = sub_23030EF38();
  v4 = sub_230310298();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    v7 = sub_23030FED8();
    v9 = sub_23004E30C(v7, v8, &v10);

    *(v5 + 4) = v9;
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x231914180](v6, -1, -1);
    MEMORY[0x231914180](v5, -1, -1);
  }

  return 0x7FFFFFFF;
}

uint64_t sub_230166C14()
{
  v0 = sub_23030EB58();
  __swift_allocate_value_buffer(v0, qword_27DB15EF8);
  __swift_project_value_buffer(v0, qword_27DB15EF8);
  return sub_23030EA38();
}

uint64_t static Date.referenceDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB13BB8 != -1)
  {
    swift_once();
  }

  v2 = sub_23030EB58();
  v3 = __swift_project_value_buffer(v2, qword_27DB15EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *ExtendedDiff.remainingIndexes.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v10 = v1;
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v10;
    v5 = (v2 + 48);
    do
    {
      if (*v5 == 3)
      {
        v9 = *(v5 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_23007EB4C(0, *(v1 + 2) + 1, 1, v1);
        }

        v7 = *(v1 + 2);
        v6 = *(v1 + 3);
        if (v7 >= v6 >> 1)
        {
          v1 = sub_23007EB4C((v6 > 1), v7 + 1, 1, v1);
        }

        *(v1 + 2) = v7 + 1;
        *&v1[16 * v7 + 32] = v9;
        v4 = v1;
      }

      v5 += 24;
      --v3;
    }

    while (v3);
    v10 = v4;
  }

  else
  {
  }

  sub_230166E18(&v10);
  return v10;
}

uint64_t sub_230166E18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23029CF48(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_230166F60(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_230166F60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_2301674D8((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_23007EA34((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_2301674D8((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2301674D8(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_2301676DC()
{
  v0 = sub_230310348();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2303102F8();
  MEMORY[0x28223BE20](v4);
  v5 = sub_23030F4C8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_230047540();
  sub_23030F488();
  v7[1] = MEMORY[0x277D84F90];
  sub_23004758C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14710);
  sub_2300475E4();
  sub_230310648();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v0);
  result = sub_230310388();
  qword_280C9B1C0 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URL.tryStartAccessingSecurityScopedResource()()
{
  v1 = sub_23030E9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_23030E948() & 1) == 0)
  {
    (*(v2 + 16))(v4, v0, v1);
    type metadata accessor for FailedToAccessSecurityScopedURLError(0);
    sub_230167A4C();
    swift_allocError();
    (*(v2 + 32))(v5, v4, v1);
    swift_willThrow();
  }
}

unint64_t sub_230167A4C()
{
  result = qword_27DB15F10;
  if (!qword_27DB15F10)
  {
    type metadata accessor for FailedToAccessSecurityScopedURLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15F10);
  }

  return result;
}

uint64_t URL.withAccessToSecurityScopedResource<A>(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_23030E948())
  {
    v13 = v18;
    v17(v3);
    if (!v13)
    {
      (*(v10 + 32))(v16, v12, a2);
    }

    return sub_23030E928();
  }

  else
  {
    (*(v6 + 16))(v9, v3, v5);
    type metadata accessor for FailedToAccessSecurityScopedURLError(0);
    sub_230167A4C();
    swift_allocError();
    (*(v6 + 32))(v15, v9, v5);
    return swift_willThrow();
  }
}

Swift::Void __swiftcall URL.stopAccessingSecurityScopedResource(whenDeallocating:)(NSObject whenDeallocating)
{
  v2 = v1;
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  _s23SecurityScopedURLHolderCMa(0);
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  v8[2] = v9;
  (*(v5 + 32))(v8 + OBJC_IVAR____TtCE19ReminderKitInternalV10Foundation3URLP33_C4CF88CCEEBFE10B546F9B83C3AB9A6B23SecurityScopedURLHolder_fileURL, v7, v4);
  objc_setAssociatedObject(whenDeallocating.isa, v9, v8, 1);
}

uint64_t sub_230167E04()
{
  v1 = v0;
  v2 = sub_23030E9B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtCE19ReminderKitInternalV10Foundation3URLP33_C4CF88CCEEBFE10B546F9B83C3AB9A6B23SecurityScopedURLHolder_fileURL;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCE19ReminderKitInternalV10Foundation3URLP33_C4CF88CCEEBFE10B546F9B83C3AB9A6B23SecurityScopedURLHolder_fileURL, v2);
  sub_23030E928();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);
  return swift_deallocClassInstance();
}

uint64_t URL.isHTTPOrHTTPSURL.getter()
{
  sub_23030E978();
  if (!v0)
  {
    return 0;
  }

  v1 = sub_23030F958();
  v3 = v2;

  if (v1 == 1886680168 && v3 == 0xE400000000000000 || (sub_230311048() & 1) != 0 || v1 == 0x7370747468 && v3 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_230311048();

    return v5 & 1;
  }
}

uint64_t URL.domain.getter()
{
  v0 = sub_23030E958();
  v2 = v1;
  if (v1)
  {
    if (sub_23030FAC8())
    {
      v3 = sub_23030F9D8();
      v4 = sub_2300A313C(v3, v0, v2);
      v6 = v5;
      v8 = v7;
      v10 = v9;

      v0 = MEMORY[0x2319116F0](v4, v6, v8, v10);
      v2 = v11;
    }

    v12 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v12 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      return 0;
    }
  }

  return v0;
}

uint64_t sub_2301680FC()
{
  result = sub_23030E9B8();
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

uint64_t sub_23016819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_230168208(uint64_t a1)
{
  v2 = sub_23030E9B8();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_23016826C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_2301682D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_230168334(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_230168398(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030E9B8();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_230168424()
{
  result = sub_23030E9B8();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static REMUrgentAlarmLocalizedStringResources.Alert.title(for:)()
{
  v0 = sub_23030E818();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030ED38();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23030F8A8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23030F888();
  MEMORY[0x28223BE20](v6 - 8);
  sub_23030F878();
  sub_23030F868();
  sub_23030F858();
  sub_23030F868();
  sub_23030F898();
  sub_23030EC88();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23030E838();
}

uint64_t sub_230168758()
{
  v0 = sub_23030E818();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030ED38();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23030F8A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_23030F848();
  sub_23030EC88();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23030E848();
}

uint64_t REMLinearAlgebraDataRef.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x231914180](v1, -1, -1);
  }

  return v0;
}

uint64_t REMLinearAlgebraDataRef.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x231914180](v1, -1, -1);
  }

  return swift_deallocClassInstance();
}

id AsyncBlockOperation.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  ObjectType = swift_getObjectType();
  v7 = &v5[qword_27DB15F40];
  *v7 = a1;
  *(v7 + 1) = a2;
  v9.receiver = v5;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id AsyncBlockOperation.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[qword_27DB15F40];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t AsyncBlockOperation.perform(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  (*(v2 + qword_27DB15F40))();
  v7 = swift_allocObject();
  v8 = *((v6 & v5) + 0xC0);
  v7[2] = v8;
  v7[3] = a1;
  v7[4] = a2;
  v9 = qword_280C9BA30;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_280C9BA38;
  sub_230047648(v10, sub_230168DA8, v7);

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a1;
  v11[4] = a2;

  sub_230065368(v10, sub_230168EE0, v11);
}

uint64_t sub_230168C58(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v7 = sub_230311408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  (*(*(a4 - 8) + 16))(&v12 - v9, a1, a4);
  swift_storeEnumTagMultiPayload();
  a2(v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_230168DC8(void *a1, void (*a2)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v4 = sub_230311408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  *(&v10 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v8 = a1;
  a2(v7);
  return (*(v5 + 8))(v7, v4);
}

id AsyncBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OptionSet<>.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = sub_2303104C8();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = *(a2 + 16);
  v40 = a1;
  v15 = v14(a1, a2);
  v16 = 0;
  v43 = TupleTypeMetadata2 - 8;
  v41 = (v8 + 32);
  v37 = (v5 + 8);
  v38 = (v5 + 32);
  v35 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = v36;
  while (1)
  {
    if (v16 == sub_23030FD78())
    {
      v18 = *(TupleTypeMetadata2 - 8);
      (*(v18 + 56))(v11, 1, 1, TupleTypeMetadata2);
      goto LABEL_8;
    }

    v19 = sub_23030FD58();
    sub_23030FD08();
    if (v19)
    {
      v20 = *(TupleTypeMetadata2 - 8);
      result = (*(v20 + 16))(v11, v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, TupleTypeMetadata2);
      v22 = __OFADD__(v16++, 1);
      if (v22)
      {
        break;
      }

      goto LABEL_7;
    }

    result = sub_2303108C8();
    v20 = *(TupleTypeMetadata2 - 8);
    if (*(v20 + 64) != 8)
    {
      goto LABEL_22;
    }

    v45[0] = result;
    (*(v20 + 16))(v11, v45, TupleTypeMetadata2);
    result = swift_unknownObjectRelease();
    v22 = __OFADD__(v16++, 1);
    if (v22)
    {
      break;
    }

LABEL_7:
    v18 = v20;
    (*(v20 + 56))(v11, 0, 1, TupleTypeMetadata2);
    v17 = v36;
LABEL_8:
    (*v41)(v13, v11, v42);
    if ((*(v18 + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {

      v45[0] = 91;
      v45[1] = 0xE100000000000000;
      v44 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      sub_2300B0FA8();
      v31 = sub_23030F7C8();
      v33 = v32;

      MEMORY[0x231911790](v31, v33);

      MEMORY[0x231911790](93, 0xE100000000000000);
      return v45[0];
    }

    v23 = &v13[*(TupleTypeMetadata2 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = v40;
    (*v38)(v17, v13, v40);
    if (sub_230310618())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_23007E928(0, *(v35 + 2) + 1, 1, v35);
      }

      v28 = *(v35 + 2);
      v27 = *(v35 + 3);
      if (v28 >= v27 >> 1)
      {
        v35 = sub_23007E928((v27 > 1), v28 + 1, 1, v35);
      }

      (*v37)(v36);
      v29 = v35;
      *(v35 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v25;
      *(v30 + 5) = v24;
      goto LABEL_2;
    }

    (*v37)(v17, v26);
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void REMSmartList.NonCustom.init(smartListType:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v6 = v5;
  if (v4 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_230311048();

  if (v9)
  {

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v13 = v12;
  if (v11 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v13 == v14)
  {

    v10 = 1;
  }

  else
  {
    v16 = sub_230311048();

    if (v16)
    {

      v10 = 1;
    }

    else
    {
      v17 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v19 = v18;
      if (v17 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v19 == v20)
      {

        v10 = 2;
      }

      else
      {
        v21 = sub_230311048();

        if (v21)
        {

          v10 = 2;
        }

        else
        {
          v22 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v24 = v23;
          if (v22 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v24 == v25)
          {

            v10 = 3;
          }

          else
          {
            v26 = sub_230311048();

            if (v26)
            {

              v10 = 3;
            }

            else
            {
              v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
              v29 = v28;
              if (v27 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v29 == v30)
              {

                v10 = 4;
              }

              else
              {
                v31 = sub_230311048();

                if (v31)
                {

                  v10 = 4;
                }

                else
                {
                  v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v34 = v33;
                  if (v32 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v34 == v35)
                  {

                    v10 = 5;
                  }

                  else
                  {
                    v36 = sub_230311048();

                    if (v36)
                    {

                      v10 = 5;
                    }

                    else
                    {
                      v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                      v39 = v38;
                      if (v37 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v39 == v40)
                      {

                        v10 = 6;
                      }

                      else
                      {
                        v41 = sub_230311048();

                        if (v41)
                        {

                          v10 = 6;
                        }

                        else
                        {
                          v42 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                          v44 = v43;
                          if (v42 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v44 == v45)
                          {
                          }

                          else
                          {
                            v46 = sub_230311048();

                            if (v46)
                            {
                            }

                            else
                            {
                              v47 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                              v49 = v48;
                              if (v47 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v49 == v50)
                              {

                                v10 = 7;
                                goto LABEL_9;
                              }

                              v51 = sub_230311048();

                              if (v51)
                              {
                                v10 = 7;
                                goto LABEL_9;
                              }
                            }
                          }

                          v10 = 8;
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

LABEL_9:
  *a2 = v10;
}

uint64_t REMSmartList.NonCustom.remObjectID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_23030EBB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030EB68();

  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = objc_opt_self();
    v9 = sub_23030EB88();
    v10 = [v8 objectIDWithUUID_];

    (*(v4 + 8))(v6, v3);
    return v10;
  }

  return result;
}

uint64_t REMSmartList.NonCustom.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

unint64_t sub_230169E7C()
{
  result = qword_27DB15FC8;
  if (!qword_27DB15FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15FC8);
  }

  return result;
}

unint64_t sub_230169ED4()
{
  result = qword_27DB15FD0;
  if (!qword_27DB15FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB15FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15FD0);
  }

  return result;
}

uint64_t sub_230169F48(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2303109B8();
    for (i = a1 + 32; ; i += 32)
    {
      sub_23004D5CC(i, v12);
      sub_23004D5CC(v12, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15578);
      v6 = swift_dynamicCast();
      v7 = v6;
      if (!v6)
      {
        sub_23004D5CC(v12, &v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }
      }

      sub_2300EAFE8();
      v10 = v9;
      v11 = v7 ^ 1;
      static REMMembership.fromJSON(_:)(&v10);
      __swift_destroy_boxed_opaque_existential_1(v12);

      if (v1)
      {
      }

      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      if (!--v3)
      {
        return v13;
      }
    }

    sub_2300BB7A4();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 3;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

void sub_23016A11C(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2303106D8())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_20:
      *a2 = v6;
      *(a2 + 8) = 1;
      return;
    }

    v19 = MEMORY[0x277D84F90];
    sub_23009ECB4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    v6 = v19;
    v14 = a2;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231912650](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      REMMembership.toJSON()(&v15);
      if (v2)
      {

        return;
      }

      v11 = v15;
      if (v16)
      {
        v12 = &qword_27DB15570;
      }

      else
      {
        v12 = &qword_27DB15578;
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);

      *&v17 = v11;
      v19 = v6;
      a2 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (a2 >= v13 >> 1)
      {
        sub_23009ECB4((v13 > 1), a2 + 1, 1);
        v6 = v19;
      }

      *(v6 + 16) = a2 + 1;
      sub_230061914(&v17, (v6 + 32 * a2 + 32));
      ++v7;
      if (v8 == i)
      {
        a2 = v14;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  __break(1u);
}

uint64_t REMMemberships.toJSON()@<X0>(unint64_t *a1@<X8>)
{
  v3 = v2;
  v47 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15FE0);
  v4 = MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v54 = &v46 - v7;
  MEMORY[0x28223BE20](v6);
  v53 = &v46 - v8;
  v9 = [v1 membershipByMemberIdentifier];
  v10 = sub_23030EBB8();
  sub_2300EAFE8();
  sub_230109E50();
  v11 = sub_23030F658();

  v12 = *(v11 + 16);
  if (v12)
  {
    v46 = v2;
    v61 = MEMORY[0x277D84F90];
    sub_2303109B8();
    v13 = v11 + 64;
    result = sub_230310658();
    v15 = result;
    v16 = 0;
    v51 = v10 - 8;
    v48 = v11 + 72;
    v52 = v11;
    v49 = v12;
    v50 = v11 + 64;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      v57 = v16;
      v58 = *(v11 + 36);
      v20 = *(v10 - 8);
      v21 = v53;
      (*(v20 + 16))(v53, *(v11 + 48) + *(v20 + 72) * v15, v10);
      v22 = *(*(v11 + 56) + 8 * v15);
      v23 = v10;
      v24 = v54;
      (*(v20 + 32))(v54, v21, v23);
      *&v24[*(v56 + 48)] = v22;
      v25 = v24;
      v26 = v55;
      sub_23016AC0C(v25, v55);
      v27 = *(v20 + 8);
      v28 = v22;
      v29 = v26;
      v10 = v23;
      v11 = v52;
      v27(v29, v10);
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      result = sub_230310998();
      v17 = 1 << *(v11 + 32);
      if (v15 >= v17)
      {
        goto LABEL_27;
      }

      v13 = v50;
      v30 = *(v50 + 8 * v19);
      if ((v30 & (1 << v15)) == 0)
      {
        goto LABEL_28;
      }

      if (v58 != *(v11 + 36))
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v15 & 0x3F));
      if (v31)
      {
        v17 = __clz(__rbit64(v31)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v49;
      }

      else
      {
        v32 = v19 << 6;
        v33 = v19 + 1;
        v34 = (v48 + 8 * v19);
        v18 = v49;
        while (v33 < (v17 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_2300EB170(v15, v58, 0);
            v17 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_2300EB170(v15, v58, 0);
      }

LABEL_4:
      v16 = v57 + 1;
      v15 = v17;
      if (v57 + 1 == v18)
      {

        v37 = v61;
        v3 = v46;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
LABEL_19:
    sub_23016A11C(v37, &v59);

    if (!v3)
    {
      v38 = v59;
      v39 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2303167B0;
      *(inited + 32) = 0x68737265626D656DLL;
      *(inited + 40) = 0xEB00000000737069;
      if (v39)
      {
        v41 = &qword_27DB15570;
      }

      else
      {
        v41 = &qword_27DB15578;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v41);
      *(inited + 48) = v38;
      *(inited + 72) = v42;
      *(inited + 80) = 0xD000000000000017;
      v43 = *MEMORY[0x277D44CC0];
      *(inited + 120) = MEMORY[0x277D83B88];
      *(inited + 88) = 0x8000000230341C30;
      *(inited + 96) = v43;
      v44 = sub_23008C5BC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
      result = swift_arrayDestroy();
      v45 = v47;
      *v47 = v44;
      *(v45 + 8) = 0;
    }
  }

  return result;
}

void *static REMMemberships.fromJSON(_:)(_BYTE *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v1 = *a1;
    if (!*(*a1 + 16) || (v5 = sub_23005EE00(0xD000000000000017, 0x8000000230341C30), (v6 & 1) == 0))
    {
      sub_2300BB7A4();
      swift_allocError();
      *v3 = 0xD000000000000017;
      *(v3 + 8) = 0x8000000230341C30;
      v4 = 1;
      goto LABEL_9;
    }

    sub_23004D5CC(v1[7] + 32 * v5, v18);
    sub_230061914(v18, v19);
    sub_23004D5CC(v19, v18);
    if (swift_dynamicCast())
    {
      if (rem_isUnsupportedVersionByRuntime())
      {
        sub_2300BB7A4();
        swift_allocError();
        *v7 = *&v17[0];
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
LABEL_19:
        swift_willThrow();
        goto LABEL_20;
      }

      if (v1[2])
      {
        v11 = sub_23005EE00(0x68737265626D656DLL, 0xEB00000000737069);
        if (v12)
        {
          sub_23004D5CC(v1[7] + 32 * v11, v17);
          sub_230061914(v17, v18);
          sub_23004D5CC(v18, v17);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15570);
          if (swift_dynamicCast())
          {
            v1 = sub_230169F48(v16);

            if (!v2)
            {
              v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
              sub_2300EAFE8();
              v14 = sub_23030FCC8();

              v1 = [v13 initWithMemberships_];

              __swift_destroy_boxed_opaque_existential_1(v18);
              __swift_destroy_boxed_opaque_existential_1(v19);
              return v1;
            }
          }

          else
          {
            sub_2300BB7A4();
            swift_allocError();
            *v15 = xmmword_23031F050;
            *(v15 + 16) = 2;
            swift_willThrow();
          }

          __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_20:
          __swift_destroy_boxed_opaque_existential_1(v19);
          return v1;
        }
      }

      sub_2300BB7A4();
      swift_allocError();
      *v9 = xmmword_23031F050;
      v10 = 1;
    }

    else
    {
      sub_2300BB7A4();
      swift_allocError();
      *v9 = 0xD000000000000017;
      *(v9 + 8) = 0x8000000230341C30;
      v10 = 2;
    }

    *(v9 + 16) = v10;
    goto LABEL_19;
  }

  sub_2300BB7A4();
  swift_allocError();
  *v3 = 0;
  *(v3 + 8) = 0;
  v4 = 3;
LABEL_9:
  *(v3 + 16) = v4;
  swift_willThrow();
  return v1;
}

void *sub_23016ABE0@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  result = static REMMemberships.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_23016AC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static REMPaths.mlModelURL()()
{
  v0 = sub_23030E878();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23016AE4C();
  v9[0] = 0x736C65646F4D4C4DLL;
  v9[1] = 0xE90000000000002FLL;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_2300A85F0();
  sub_23030E9A8();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_23016AE4C()
{
  v0 = sub_23030E9B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 2;
  v10 = 0;
  v4 = REMFeatureFlags.isEnabled(on:)(&v10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = &selRef_dataSeparationEnabled_applicationDocumentsURL;
  if (!v4)
  {
    v6 = &selRef_legacy_centralizedDataPath;
  }

  v7 = [ObjCClassFromMetadata *v6];
  sub_23030E938();

  v8 = sub_23030E8D8();
  (*(v1 + 8))(v3, v0);
  v9 = [v8 rem_URLByAppendingReminderDataContainerPathComponent];
  sub_23030E938();
}

id sub_23016AFAC()
{
  v0 = sub_23030E878();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  swift_getObjCClassMetadata();
  sub_23016AE4C();
  v14[0] = 0x736C65646F4D4C4DLL;
  v14[1] = 0xE90000000000002FLL;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
  sub_2300A85F0();
  sub_23030E9A8();
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = sub_23030E8D8();
  v11(v10, v4);

  return v12;
}

id static REMPaths.writableURLForMLModel()@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21[2] = *MEMORY[0x277D85DE8];
  v1 = sub_23030E878();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_23016AE4C();
  v21[0] = 0x736C65646F4D4C4DLL;
  v21[1] = 0xE90000000000002FLL;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91C0], v1);
  sub_2300A85F0();
  sub_23030E9A8();
  (*(v2 + 8))(v4, v1);
  v12 = v6;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_23030E8D8();
  v21[0] = 0;
  LOBYTE(v4) = [v14 rem:v15 createDirectoryIfNecessaryAtURL:v21 error:?];

  v16 = v21[0];
  if (v4)
  {
    (*(v12 + 32))(v20, v11, v5);
    return v16;
  }

  else
  {
    v18 = v21[0];
    sub_23030E808();

    swift_willThrow();
    return (v13)(v11, v5);
  }
}

id static REMPaths.temporaryURLForMLModel()@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21[2] = *MEMORY[0x277D85DE8];
  v1 = sub_23030E878();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_23016AE4C();
  v21[0] = 0xD000000000000012;
  v21[1] = 0x8000000230342750;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91C0], v1);
  sub_2300A85F0();
  sub_23030E9A8();
  (*(v2 + 8))(v4, v1);
  v12 = v6;
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_23030E8D8();
  v21[0] = 0;
  LOBYTE(v4) = [v14 rem:v15 createDirectoryIfNecessaryAtURL:v21 error:?];

  v16 = v21[0];
  if (v4)
  {
    (*(v12 + 32))(v20, v11, v5);
    return v16;
  }

  else
  {
    v18 = v21[0];
    sub_23030E808();

    swift_willThrow();
    return (v13)(v11, v5);
  }
}

id static REMPaths._legacy_mlModelURL()()
{
  v0 = sub_23030E878();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [swift_getObjCClassFromMetadata() legacy_centralizedDataPath];
  if (result)
  {
    v9 = result;
    v10 = [result rem_URLByAppendingReminderDataContainerPathComponent];
    sub_23030E938();

    v11[0] = 0x736C65646F4D4C4DLL;
    v11[1] = 0xE90000000000002FLL;
    (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
    sub_2300A85F0();
    sub_23030E9A8();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static REMPaths._legacy_temporaryMLModelURL()()
{
  v0 = sub_23030E878();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [swift_getObjCClassFromMetadata() legacy_centralizedDataPath];
  if (result)
  {
    v9 = result;
    v10 = [result rem_URLByAppendingReminderDataContainerPathComponent];
    sub_23030E938();

    v11[0] = 0xD000000000000012;
    v11[1] = 0x8000000230342750;
    (*(v1 + 104))(v3, *MEMORY[0x277CC91C0], v0);
    sub_2300A85F0();
    sub_23030E9A8();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23016BC34(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = sub_23030E9B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  a3();
  v8 = sub_23030E8D8();
  (*(v5 + 8))(v7, v4);

  return v8;
}

uint64_t KMeans.__allocating_init(k:pointCloud:maxIter:tolerance:randomGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 96) = MEMORY[0x277D84F90];
  *(v11 + 104) = v12;
  *(v11 + 112) = v12;
  *(v11 + 120) = 0;
  if (a1 < 1)
  {
    v15 = objc_opt_self();
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000003ALL, 0x800000023033FF20);
    v21 = a1;
    v16 = sub_230310E58();
    MEMORY[0x231911790](v16);

    v17 = sub_23030F8B8();

    [v15 invalidParameterErrorWithDescription_];

    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(a2 + 40) < a1)
  {
    v13 = objc_opt_self();
    v14 = sub_23030F8B8();
    [v13 invalidParameterErrorWithDescription_];

LABEL_5:
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a4);

    swift_deallocPartialClassInstance();
    return v11;
  }

  *(v11 + 16) = a1;
  *(v11 + 24) = *(a2 + 57);
  sub_2300819F0(a4, v11 + 56);
  *(v11 + 32) = a2;
  *(v11 + 40) = a5;
  *(v11 + 48) = a3;
  swift_beginAccess();
  v18 = *(a2 + 32) * a5;

  KMeans.trainCenters(_:_:convergeDistance:)(v19, a3, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  if (v5)
  {
  }

  return v11;
}

uint64_t sub_23016BFC0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A37CC(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 8);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = *(v13 + 2);
          *(v13 + 4) = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14928);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_230170FE8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23016C130(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A37E0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_230170D84(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23016C19C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15FE8);
  v1 = __swift_project_value_buffer(v0, qword_27DB15FE8);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23016C27C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230172474();
  sub_230311448();
  v11 = a2;
  v10[7] = 0;
  type metadata accessor for RDVector();
  sub_2301724C8(&qword_27DB16020);
  sub_230310DF8();
  if (!v2)
  {
    v10[6] = 1;
    sub_230310DC8();
    v10[5] = 2;
    sub_230310DD8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23016C46C()
{
  v1 = 0x65636E6169726176;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746E6563;
  }
}

uint64_t sub_23016C4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2301727E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23016C4E4(uint64_t a1)
{
  v2 = sub_230172474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23016C520(uint64_t a1)
{
  v2 = sub_230172474();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_23016C55C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_230172230(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
  }
}

uint64_t KMeans.metrics.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[14];
  v4 = v1[15];
  *a1 = v1[13];
  a1[1] = v3;
  a1[2] = v4;
}

void *KMeans.init(k:pointCloud:maxIter:tolerance:randomGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = v5;
  v11 = MEMORY[0x277D84F90];
  v5[12] = MEMORY[0x277D84F90];
  v5[13] = v11;
  v5[14] = v11;
  v5[15] = 0;
  if (a1 < 1)
  {
    v17 = objc_opt_self();
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000003ALL, 0x800000023033FF20);
    v22 = a1;
    v18 = sub_230310E58();
    MEMORY[0x231911790](v18);

    v15 = sub_23030F8B8();

    v16 = [v17 invalidParameterErrorWithDescription_];
    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(a2 + 40) < a1)
  {
    v14 = objc_opt_self();
    v15 = sub_23030F8B8();
    v16 = [v14 invalidParameterErrorWithDescription_];
LABEL_5:
    v16;

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a4);

    swift_deallocPartialClassInstance();
    return v7;
  }

  v7[2] = a1;
  *(v7 + 24) = *(a2 + 57);
  sub_2300819F0(a4, (v7 + 7));
  v7[4] = a2;
  *(v7 + 5) = a5;
  v7[6] = a3;
  swift_beginAccess();
  v19 = *(a2 + 32) * a5;

  KMeans.trainCenters(_:_:convergeDistance:)(v20, a3, v19);
  __swift_destroy_boxed_opaque_existential_1(a4);
  if (v6)
  {
  }

  return v7;
}

uint64_t KMeans.trainCenters(_:_:convergeDistance:)(void *a1, uint64_t a2, double a3)
{
  v5 = v4;
  v6 = v3;
  v224 = *(v3 + 16);
  if (v224 == 1)
  {
    swift_beginAccess();
    v10 = a1[3];
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148F8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_230315CE0;
      swift_beginAccess();
      v12 = a1[4];
      swift_beginAccess();
      v13 = a1[5];
      *(v11 + 32) = v10;
      *(v11 + 40) = v12;
      *(v11 + 48) = v13;
      *(v6 + 96) = v11;
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143F0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_230315CE0;
      *(v14 + 32) = a1[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14348);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_230315CE0;
      *(v15 + 32) = a1[5];

      v16 = a1[4];
      swift_beginAccess();
      *(v6 + 104) = v14;
      *(v6 + 112) = v15;
      *(v6 + 120) = v16;
      goto LABEL_5;
    }
  }

  swift_beginAccess();
  swift_beginAccess();

  v18 = sub_230170760(v17, v224, v3 + 56);
  swift_endAccess();

  v19 = a1[2];
  v232[0] = *(v3 + 24);

  v20 = sub_23016DE9C(v18, v19, v232, 1);
  if (v4)
  {
    goto LABEL_5;
  }

  v22 = v20;
  v220 = v18;

  if ((v224 & 0x8000000000000000) != 0)
  {
    goto LABEL_242;
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v215 = v3;
  v210 = a1;
  v209 = a2;
  v25 = v224;
  v26 = v22;
  while (1)
  {
    v213 = v23;
    v27 = 0;
    *v231 = v24;
    v18 = *(v26 + 16);
    v28 = v24;
LABEL_9:
    v19 = 16 * v27 + 32;
    while (v18 != v27)
    {
      if (v27 >= *(v26 + 16))
      {
        goto LABEL_160;
      }

      v29 = *(v26 + v19);
      v30 = v29 >> 62;
      if (v29 >> 62)
      {
        v32 = v26;
        v33 = sub_2303106D8();
        v30 = v29 >> 62;
        v31 = v33;
        v26 = v32;
      }

      else
      {
        v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v27;
      v19 += 16;
      if (v31)
      {
        v219 = v26;
        v212 = v30;
        if ((v29 & 0xC000000000000001) == 0)
        {
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(v29 + 32);
            v19 = v29;

            goto LABEL_20;
          }

LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          swift_once();
LABEL_186:
          v165 = sub_23030EF48();
          __swift_project_value_buffer(v165, qword_27DB15FE8);
          v166 = sub_23030EF38();
          v167 = sub_230310288();
          if (os_log_type_enabled(v166, v167))
          {
            v168 = swift_slowAlloc();
            *v168 = 0;
            _os_log_impl(&dword_230044000, v166, v167, "Empty cluster found for k-Mean", v168, 2u);
            MEMORY[0x231914180](v168, -1, -1);
          }

          goto LABEL_189;
        }

        v19 = v29;
        v34 = MEMORY[0x231912650](0, v29);
LABEL_20:
        swift_beginAccess();
        v35 = *(v34 + 24);
        type metadata accessor for RDVector();
        inited = swift_initStackObject();
        *(inited + 24) = v35;
        if ((v35 & 0x8000000000000000) == 0)
        {
          v216 = v5;
          v211 = v18;
          if (v35)
          {
            v36 = sub_23030FD48();
            *(v36 + 16) = v35;
            bzero((v36 + 32), 8 * v35);
          }

          else
          {
            v36 = MEMORY[0x277D84F90];
          }

          *(inited + 16) = v36;
          v225 = v19;
          v221 = v19 + 32;
          v222 = v19 & 0xFFFFFFFFFFFFFF8;
          v37 = 0;

          v226 = v31;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x231912650](v37, v225);
              v40 = __OFADD__(v37++, 1);
              if (v40)
              {
                goto LABEL_200;
              }
            }

            else
            {
              if (v37 >= *(v222 + 16))
              {
                goto LABEL_233;
              }

              v39 = *(v221 + 8 * v37);

              v40 = __OFADD__(v37++, 1);
              if (v40)
              {
                goto LABEL_200;
              }
            }

            swift_beginAccess();
            v41 = *(v5 + 24);
            if (v41 < 0)
            {
              goto LABEL_201;
            }

            if (v41)
            {
              break;
            }

            v38 = MEMORY[0x277D84F90];
LABEL_26:
            v18 = swift_allocObject();
            *(v18 + 16) = v38;
            v19 = *(v38 + 2);

            *(v18 + 24) = v19;

            v5 = v18;
            if (v37 == v226)
            {

              if (v212)
              {
                v48 = sub_2303106D8();
                v5 = v216;
                v25 = v224;
              }

              else
              {
                v25 = v224;
                v48 = *(v222 + 16);
                v5 = v216;
              }

              / infix(_:_:)(v18, v48);

              MEMORY[0x231911A30](v49);
              if (*((*v231 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v231 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23030FD18();
                v25 = v224;
              }

              sub_23030FD68();
              v28 = *v231;
              v6 = v215;
              v26 = v219;
              v18 = v211;
              goto LABEL_9;
            }
          }

          swift_beginAccess();
          swift_beginAccess();
          v6 = 4;
          v38 = MEMORY[0x277D84F90];
          while (1)
          {
            v42 = *(v5 + 16);
            if (v6 - 4 >= *(v42 + 16))
            {
              break;
            }

            v43 = *(v39 + 16);
            if (v6 - 4 >= *(v43 + 16))
            {
              goto LABEL_153;
            }

            v44 = *(v42 + 8 * v6);
            v45 = *(v43 + 8 * v6);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = sub_23007EB60(0, *(v38 + 2) + 1, 1, v38);
            }

            v47 = *(v38 + 2);
            v46 = *(v38 + 3);
            if (v47 >= v46 >> 1)
            {
              v38 = sub_23007EB60((v46 > 1), v47 + 1, 1, v38);
            }

            *(v38 + 2) = v47 + 1;
            *&v38[8 * v47 + 32] = v44 + v45;
            ++v6;
            if (!--v41)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

LABEL_240:
        __break(1u);
        goto LABEL_241;
      }
    }

    v217 = v5;

    v221 = v28;
    if (v25)
    {
      break;
    }

    v51 = 0.0;
LABEL_149:

    v149 = v210[2];
    v6 = v215;
    v231[0] = *(v215 + 24);

    v5 = v217;
    v219 = sub_23016DE9C(v28, v149, v231, 1);

    if (v51 <= a3)
    {
      goto LABEL_161;
    }

    v220 = v28;
    v23 = v213 + 1;
    v24 = MEMORY[0x277D84F90];
    v26 = v219;
    if (v213 + 1 >= v209)
    {
      goto LABEL_162;
    }
  }

  v19 = 0;
  v5 = *(v6 + 24);
  v6 = v220;
  v50 = v220 & 0xC000000000000001;
  v18 = v28 & 0xC000000000000001;
  v227 = v28 & 0xFFFFFFFFFFFFFF8;
  v51 = 0.0;
  v223 = v28 + 32;
  v219 = v28 & 0xC000000000000001;
  while (1)
  {
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    if (v50)
    {
      v52 = MEMORY[0x231912650](v19, v6);
      v228 = v19 + 1;
      if (v18)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v19 >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_234;
      }

      v52 = *(v220 + 32 + 8 * v19);

      v228 = v19 + 1;
      if (v18)
      {
LABEL_56:
        v53 = MEMORY[0x231912650](v19, v28);
        if (!v5)
        {
          goto LABEL_73;
        }

        goto LABEL_57;
      }
    }

    if (v19 >= *(v227 + 16))
    {
      goto LABEL_235;
    }

    v53 = *(v223 + 8 * v19);

    if (!v5)
    {
LABEL_73:
      swift_beginAccess();
      v19 = *(v52 + 24);
      if ((v19 & 0x8000000000000000) != 0)
      {
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
        goto LABEL_240;
      }

      if (v19)
      {
        swift_beginAccess();
        swift_beginAccess();
        v64 = *(v52 + 16);
        v65 = *(v64 + 16);
        if (!v65)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        v66 = *(v53 + 16);
        v67 = *(v66 + 16);
        if (!v67)
        {
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v68 = v64 + 32;
        v69 = v66 + 32;
        v70 = *(v64 + 32) - *(v66 + 32);
        v71 = v70 * v70;
        if (v19 != 1)
        {
          v72 = v67 - 1;
          if (v67 - 1 >= v65 - 1)
          {
            v72 = v65 - 1;
          }

          if (v72 >= v19 - 2)
          {
            v72 = v19 - 2;
          }

          v73 = v72 + 1;
          if (v73 > 4)
          {
            v105 = v73 & 3;
            if ((v73 & 3) == 0)
            {
              v105 = 4;
            }

            v106 = v73 - v105;
            v74 = v106 + 1;
            v107 = (v64 + 56);
            v108 = (v66 + 56);
            do
            {
              v109 = vsubq_f64(v107[-1], v108[-1]);
              v110 = vsubq_f64(*v107, *v108);
              v111 = vmulq_f64(v109, v109);
              v112 = vmulq_f64(v110, v110);
              v71 = v71 + v111.f64[0] + v111.f64[1] + v112.f64[0] + v112.f64[1];
              v107 += 2;
              v108 += 2;
              v106 -= 4;
            }

            while (v106);
          }

          else
          {
            v74 = 1;
          }

          while (v65 != v74)
          {
            if (v74 >= v67)
            {
              goto LABEL_158;
            }

            v71 = v71 + (*(v68 + 8 * v74) - *(v69 + 8 * v74)) * (*(v68 + 8 * v74) - *(v69 + 8 * v74));
            if (v19 == ++v74)
            {
              goto LABEL_121;
            }
          }

          goto LABEL_156;
        }
      }

      else
      {
        v71 = 0.0;
      }

LABEL_121:

      v113 = sqrt(v71);
      goto LABEL_144;
    }

LABEL_57:
    if (v5 != 1)
    {
      swift_beginAccess();
      v19 = *(v52 + 24);
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (!v19)
        {
          v85 = 0.0;
          v84 = 0.0;
          v83 = 0.0;
          goto LABEL_129;
        }

        swift_beginAccess();
        swift_beginAccess();
        v75 = *(v52 + 16);
        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = *(v53 + 16);
          v78 = *(v77 + 16);
          if (!v78)
          {
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            v26 = v219;
LABEL_162:
            v218 = v5;
            v150 = *(v26 + 16);
            v151 = MEMORY[0x277D84F90];
            if (!v150)
            {
LABEL_183:

              *v231 = v151;

              sub_23016C130(v231);
              if (v218)
              {

                __break(1u);
                return result;
              }

              v19 = *v231;
              v5 = *(*v231 + 16);
              v6 = *(v219 + 16);
              v18 = v215;
              if (v5 < v6)
              {
                if (qword_27DB13BC0 != -1)
                {
                  goto LABEL_245;
                }

                goto LABEL_186;
              }

LABEL_189:
              if (!v5)
              {
                goto LABEL_202;
              }

              *v231 = MEMORY[0x277D84F90];
              sub_23009EC74(0, v5, 0);
              v169 = *v231;
              v170 = (v19 + 48);
              do
              {
                v171 = v169;
                v172 = *(v170 - 2);
                v173 = *(v170 - 1);
                v174 = *v170;
                swift_retain_n();

                if (v172 >> 62)
                {
                  v176 = sub_2303106D8();
                  v175 = sub_2303106D8();
                }

                else
                {
                  v175 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);

                  v176 = v175;
                }

                v169 = v171;
                *v231 = v171;
                v178 = v171[2];
                v177 = v171[3];
                if (v178 >= v177 >> 1)
                {
                  sub_23009EC74((v177 > 1), v178 + 1, 1);
                  v169 = *v231;
                }

                v169[2] = v178 + 1;
                v179 = &v169[3 * v178];
                v179[4] = v174;
                v179[5] = v173 / v176;
                *(v179 + 6) = v175;
                v170 += 3;
                --v5;
                v18 = v215;
              }

              while (v5);

              goto LABEL_203;
            }

            v152 = 0;
            v153 = v28 & 0xFFFFFFFFFFFFFF8;
            v5 = v28 & 0xC000000000000001;
            v18 = v28 + 32;
            v154 = v26 + 40;
            v19 = v28 >> 62;
            v229 = v26 + 40;
LABEL_164:
            v155 = (v154 + 16 * v152);
            v156 = v152;
            while (1)
            {
              if (v156 >= v150)
              {
                goto LABEL_243;
              }

              v6 = *(v155 - 1);
              v157 = *v155;
              if (v19)
              {
                if (v156 == sub_2303106D8())
                {
                  goto LABEL_183;
                }
              }

              else if (v156 == *(v153 + 16))
              {
                goto LABEL_183;
              }

              if (v5)
              {

                v158 = MEMORY[0x231912650](v156, v221);
                if (!(v6 >> 62))
                {
                  goto LABEL_171;
                }
              }

              else
              {
                if (v156 >= *(v153 + 16))
                {
                  goto LABEL_244;
                }

                v158 = *(v18 + 8 * v156);

                if (!(v6 >> 62))
                {
LABEL_171:
                  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_178;
                  }

                  goto LABEL_172;
                }
              }

              if (sub_2303106D8())
              {
LABEL_178:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *v231 = v151;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_23009EC94(0, v151[2] + 1, 1);
                  v151 = *v231;
                }

                v160 = v219;
                v162 = v151[2];
                v161 = v151[3];
                v163 = v162 + 1;
                if (v162 >= v161 >> 1)
                {
                  sub_23009EC94((v161 > 1), v162 + 1, 1);
                  v163 = v162 + 1;
                  v160 = v219;
                  v151 = *v231;
                }

                v152 = v156 + 1;
                v151[2] = v163;
                v164 = &v151[3 * v162];
                v164[4] = v6;
                v164[5] = v157;
                v164[6] = v158;
                v150 = *(v160 + 16);
                v154 = v229;
                if (v150 - 1 != v156)
                {
                  goto LABEL_164;
                }

                goto LABEL_183;
              }

LABEL_172:
              ++v156;

              v150 = *(v219 + 16);
              v155 += 2;
              if (v156 == v150)
              {
                goto LABEL_183;
              }
            }
          }

          v79 = v75 + 32;
          v80 = v77 + 32;
          v81 = *(v77 + 32);
          v82 = *(v75 + 32);
          v83 = v82 * v82;
          v84 = v81 * v81;
          v85 = v82 * v81 + 0.0;
          if (v19 != 1)
          {
            v86 = v78 - 1;
            if (v78 - 1 >= v76 - 1)
            {
              v86 = v76 - 1;
            }

            if (v86 >= v19 - 2)
            {
              v86 = v19 - 2;
            }

            v87 = v86 + 1;
            if (v87 > 4)
            {
              v114 = v87 & 3;
              if ((v87 & 3) == 0)
              {
                v114 = 4;
              }

              v115 = v87 - v114;
              v88 = v115 + 1;
              v116 = (v75 + 56);
              v117 = (v77 + 56);
              do
              {
                v118 = v116[-1];
                v119 = v117[-1];
                v120 = vmulq_f64(v118, v118);
                v121 = vmulq_f64(*v116, *v116);
                v122 = vmulq_f64(v119, v119);
                v123 = vmulq_f64(*v117, *v117);
                v124 = vmulq_f64(v118, v119);
                v125 = vmulq_f64(*v116, *v117);
                v85 = v85 + v124.f64[0] + v124.f64[1] + v125.f64[0] + v125.f64[1];
                v84 = v84 + v122.f64[0] + v122.f64[1] + v123.f64[0] + v123.f64[1];
                v83 = v83 + v120.f64[0] + v120.f64[1] + v121.f64[0] + v121.f64[1];
                v116 += 2;
                v117 += 2;
                v115 -= 4;
              }

              while (v115);
            }

            else
            {
              v88 = 1;
            }

            while (v76 != v88)
            {
              if (v88 >= v78)
              {
                goto LABEL_159;
              }

              v126 = *(v79 + 8 * v88);
              v127 = *(v80 + 8 * v88);
              v83 = v83 + v126 * v126;
              v84 = v84 + v127 * v127;
              v85 = v85 + v126 * v127;
              if (v19 == ++v88)
              {
                goto LABEL_129;
              }
            }

            goto LABEL_157;
          }

LABEL_129:

          v128 = sqrt(v83);
          v129 = v128 * sqrt(v84);
          if (v129 == 0.0)
          {
            v130 = 0.0;
          }

          else
          {
            v130 = v85 / v129;
          }

          v113 = acos(v130) / 3.14159265;
          goto LABEL_144;
        }

LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      goto LABEL_236;
    }

    v18 = v5;
    v5 = v50;
    swift_beginAccess();
    v54 = *(v52 + 24);
    if (v54 < 0)
    {
      goto LABEL_238;
    }

    if (v54)
    {
      swift_beginAccess();
      swift_beginAccess();
      v55 = 4;
      v56 = MEMORY[0x277D84F90];
      while (1)
      {
        v57 = *(v52 + 16);
        if ((v55 - 4) >= *(v57 + 16))
        {
          break;
        }

        v58 = *(v53 + 16);
        if ((v55 - 4) >= *(v58 + 16))
        {
          goto LABEL_155;
        }

        v59 = *(v57 + 8 * v55);
        v60 = *(v58 + 8 * v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_23007EB60(0, *(v56 + 2) + 1, 1, v56);
        }

        v62 = *(v56 + 2);
        v61 = *(v56 + 3);
        v63 = v62 + 1;
        if (v62 >= v61 >> 1)
        {
          v56 = sub_23007EB60((v61 > 1), v62 + 1, 1, v56);
        }

        *(v56 + 2) = v63;
        *&v56[8 * v62 + 32] = v59 - v60;
        ++v55;
        if (!--v54)
        {
          goto LABEL_96;
        }
      }

LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_5:
    }

    v56 = MEMORY[0x277D84F90];
    v63 = *(MEMORY[0x277D84F90] + 16);
LABEL_96:
    v89 = 32;
    v6 = v220;
    v28 = v221;
    v50 = v5;
    v5 = v18;
    v18 = v219;
    do
    {
      if (!v63)
      {

        v51 = v51 + 0.0;
        v25 = v224;
        goto LABEL_145;
      }

      v90 = *&v56[v89];
      v89 += 8;
      --v63;
    }

    while ((v90 & 0x7FFFFFFFFFFFFFFFLL) == 0);

    v19 = *(v52 + 24);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_239;
    }

    if (!v19)
    {
      v101 = 0.0;
      v100 = 0.0;
      v99 = 0.0;
      v25 = v224;
      goto LABEL_140;
    }

    swift_beginAccess();
    swift_beginAccess();
    v91 = *(v52 + 16);
    v92 = *(v91 + 16);
    v25 = v224;
    if (!v92)
    {
      goto LABEL_198;
    }

    v93 = *(v53 + 16);
    v94 = *(v93 + 16);
    if (!v94)
    {
      break;
    }

    v95 = v91 + 32;
    v96 = v93 + 32;
    v97 = *(v93 + 32);
    v98 = *(v91 + 32);
    v99 = v98 * v98;
    v100 = v97 * v97;
    v101 = v98 * v97 + 0.0;
    if (v19 != 1)
    {
      v102 = v94 - 1;
      if (v94 - 1 >= v92 - 1)
      {
        v102 = v92 - 1;
      }

      if (v102 >= v19 - 2)
      {
        v102 = v19 - 2;
      }

      v103 = v102 + 1;
      if (v103 > 4)
      {
        v131 = v103 & 3;
        if ((v103 & 3) == 0)
        {
          v131 = 4;
        }

        v132 = v103 - v131;
        v104 = v132 + 1;
        v133 = (v91 + 56);
        v134 = (v93 + 56);
        do
        {
          v135 = v133[-1];
          v136 = v134[-1];
          v137 = vmulq_f64(v135, v135);
          v138 = vmulq_f64(*v133, *v133);
          v139 = vmulq_f64(v136, v136);
          v140 = vmulq_f64(*v134, *v134);
          v141 = vmulq_f64(v135, v136);
          v142 = vmulq_f64(*v133, *v134);
          v101 = v101 + v141.f64[0] + v141.f64[1] + v142.f64[0] + v142.f64[1];
          v100 = v100 + v139.f64[0] + v139.f64[1] + v140.f64[0] + v140.f64[1];
          v99 = v99 + v137.f64[0] + v137.f64[1] + v138.f64[0] + v138.f64[1];
          v133 += 2;
          v134 += 2;
          v132 -= 4;
        }

        while (v132);
      }

      else
      {
        v104 = 1;
      }

      while (v92 != v104)
      {
        if (v104 >= v94)
        {
          goto LABEL_199;
        }

        v143 = *(v95 + 8 * v104);
        v144 = *(v96 + 8 * v104);
        v99 = v99 + v143 * v143;
        v100 = v100 + v144 * v144;
        v101 = v101 + v143 * v144;
        if (v19 == ++v104)
        {
          goto LABEL_140;
        }
      }

LABEL_198:
      __break(1u);
      break;
    }

LABEL_140:

    v145 = sqrt(v99);
    v146 = v145 * sqrt(v100);
    v147 = vabdd_f64(1.0, v101 / v146);
    if (v146 == 0.0)
    {
      v148 = 1.0;
    }

    else
    {
      v148 = v147;
    }

    v113 = sqrt(v148);
LABEL_144:
    v51 = v51 + v113;
LABEL_145:
    if (v228 == v25)
    {
      goto LABEL_149;
    }

    v19 = v228;
    if (v228 >= v25)
    {
      goto LABEL_232;
    }
  }

LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:

  v169 = MEMORY[0x277D84F90];
LABEL_203:
  v180 = v169[2];
  v181 = MEMORY[0x277D84F90];
  if (v180)
  {
    *v231 = MEMORY[0x277D84F90];
    sub_23009EC54(0, v180, 0);
    v182 = *v231;
    v183 = *(*v231 + 16);
    v230 = v169;
    v184 = v169 + 5;
    v185 = v180;
    do
    {
      v186 = *v184;
      *v231 = v182;
      v187 = v182[3];
      if (v183 >= v187 >> 1)
      {
        sub_23009EC54((v187 > 1), v183 + 1, 1);
        v182 = *v231;
      }

      v182[2] = v183 + 1;
      v182[v183 + 4] = v186;
      v184 += 3;
      ++v183;
      --v185;
    }

    while (v185);
    *v231 = MEMORY[0x277D84F90];
    sub_23009EC04(0, v180, 0);
    v188 = *v231;
    v189 = *(*v231 + 16);
    v190 = v169 + 6;
    do
    {
      v192 = *v190;
      v190 += 3;
      v191 = v192;
      *v231 = v188;
      v193 = v188[3];
      if (v189 >= v193 >> 1)
      {
        sub_23009EC04((v193 > 1), v189 + 1, 1);
        v169 = v230;
        v188 = *v231;
      }

      v188[2] = v189 + 1;
      v188[v189++ + 4] = v191;
      --v180;
    }

    while (v180);
    v18 = v215;
    v181 = MEMORY[0x277D84F90];
  }

  else
  {
    v188 = MEMORY[0x277D84F90];
    v182 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    *v231 = v181;
    sub_23009EC54(0, v6, 0);
    v194 = v219;
    v195 = *v231;
    v196 = *(*v231 + 16);
    v197 = 40;
    do
    {
      v198 = *(v194 + v197);
      *v231 = v195;
      v199 = v195[3];
      if (v196 >= v199 >> 1)
      {
        sub_23009EC54((v199 > 1), v196 + 1, 1);
        v194 = v219;
        v195 = *v231;
      }

      v195[2] = v196 + 1;
      v195[v196 + 4] = v198;
      v197 += 16;
      ++v196;
      --v6;
    }

    while (v6);

    v18 = v215;
  }

  else
  {

    v195 = MEMORY[0x277D84F90];
  }

  v200 = v195[2];
  if (v200)
  {
    if (v200 <= 3)
    {
      v201 = 0;
      v202 = 0.0;
      goto LABEL_228;
    }

    v201 = v200 & 0x7FFFFFFFFFFFFFFCLL;
    v203 = (v195 + 6);
    v202 = 0.0;
    v204 = v200 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v202 = v202 + *(v203 - 2) + *(v203 - 1) + *v203 + v203[1];
      v203 += 4;
      v204 -= 4;
    }

    while (v204);
    if (v200 != v201)
    {
LABEL_228:
      v205 = v200 - v201;
      v206 = &v195[v201 + 4];
      do
      {
        v207 = *v206++;
        v202 = v202 + v207;
        --v205;
      }

      while (v205);
    }
  }

  else
  {
    v202 = 0.0;
  }

  swift_beginAccess();
  v208 = v202 / v210[5];
  swift_beginAccess();
  *(v18 + 104) = v182;
  *(v18 + 112) = v188;
  *(v18 + 120) = v208;

  *(v18 + 96) = v169;
}