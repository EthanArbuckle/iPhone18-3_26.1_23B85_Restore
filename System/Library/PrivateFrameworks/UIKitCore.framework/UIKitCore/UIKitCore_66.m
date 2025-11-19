void sub_189153090(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a2;
  v91 = a3;
  v93 = a4;
  v6 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E578);
  v88 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E580);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v87 = &v81 - v12;
  v13 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v95 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v83 = &v81 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v86 = &v81 - v19;
  v94 = v4;
  v20 = *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
  v21 = [v20 textStorage];
  v22 = [v20 beginningOfDocument];
  v23 = [a1 start];
  v24 = [v20 offsetFromPosition:v22 toPosition:v23];

  v25 = [a1 start];
  v26 = [a1 end];
  v84 = v20;
  v27 = [v20 offsetFromPosition:v25 toPosition:v26];

  v107[0] = MEMORY[0x1E69E7CC8];
  v101[2] = v107;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_189162F28;
  *(v28 + 24) = v101;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1891673C4;
  *(v29 + 24) = v28;
  *&v112 = sub_1891673C8;
  *(&v112 + 1) = v29;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v111 = sub_18914E7A8;
  *(&v111 + 1) = &block_descriptor_33_5;
  v30 = _Block_copy(&aBlock);

  v92 = v21;
  v82 = @"UITextItemTagAttribute";
  v98 = v27;
  v99 = v24;
  [v21 enumerateAttribute:@"UITextItemTagAttribute" inRange:v24 options:v27 usingBlock:{0, v30}];
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
LABEL_31:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_32;
  }

  v31 = v107[0];
  v32 = v107[0] + 64;
  v33 = 1 << *(v107[0] + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v107[0] + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = &qword_1EA93E578;
  if (!v35)
  {
LABEL_6:
    while (1)
    {
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v40 >= v36)
      {

        v53 = v87;
        v52 = v88;
        v54 = *(v88 + 56);
        v55 = v87;
        v56 = 1;
        goto LABEL_17;
      }

      v35 = *(v32 + 8 * v40);
      ++v37;
      if (v35)
      {
        v39 = v38;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  while (1)
  {
    v39 = v38;
    v40 = v37;
LABEL_10:
    v41 = __clz(__rbit64(v35)) | (v40 << 6);
    v42 = v96;
    sub_189162F30(*(v31 + 48) + *(v95 + 72) * v41, v96, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v43 = v31;
    v44 = *(v31 + 56);
    v45 = v100;
    *(v42 + *(v100 + 48)) = *(v44 + 16 * v41);
    v46 = v42;
    v47 = v97;
    v38 = v39;
    sub_188A3F704(v46, v97, v39);
    v48 = (v47 + *(v45 + 48));
    v50 = *v48;
    v49 = v48[1];
    if (v50 == v99 && v49 == v98)
    {
      break;
    }

    v35 &= v35 - 1;
    sub_188A3F5FC(v47, v39);
    v37 = v40;
    v31 = v43;
    if (!v35)
    {
      goto LABEL_6;
    }
  }

  v53 = v87;
  sub_188A3F704(v47, v87, &qword_1EA93E578);
  v52 = v88;
  v54 = *(v88 + 56);
  v55 = v53;
  v56 = 0;
LABEL_17:
  v57 = v100;
  v54(v55, v56, 1, v100);

  if ((*(v52 + 48))(v53, 1, v57) == 1)
  {
    sub_188A3F5FC(v53, &unk_1EA93E580);
    v58 = v93;
    sub_18A4A29C8();
    v59 = v89;
    sub_189162F30(v58, v89, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v60 = v91;
    *(&v111 + 1) = v91;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&aBlock);
    (*(*(v60 - 8) + 16))(boxed_opaque_existential_0, v90, v60);
    v114 = 0;
    v62 = v94;
    swift_beginAccess();
    sub_188F292A4(&aBlock, v59);
    swift_endAccess();
    sub_18A4A2988();
    v63 = sub_18A4A7258();

    v64 = v92;
    [v92 addAttribute:v82 value:v63 range:{v99, v98}];

    v62[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
    v65 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
    swift_beginAccess();
    *&v62[v65] = MEMORY[0x1E69E7CC8];

    [v62 setNeedsLayout];
    sub_18915599C();
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A70B8();
    type metadata accessor for Key(0);
    sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
    v66 = sub_18A4A7088();

    [v84 setTypingAttributes_];

    return;
  }

  v67 = v83;
  sub_18916731C(v53, v83, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v68 = v86;
  sub_18916731C(v67, v86, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v69 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  v70 = v94;
  swift_beginAccess();
  v71 = *&v70[v69];
  v72 = v92;
  if (*(v71 + 16))
  {

    v73 = sub_188E8BEC0(v68);
    if (v74)
    {
      sub_188FA95D0(*(v71 + 56) + 72 * v73, &aBlock);

      goto LABEL_24;
    }
  }

  v112 = 0u;
  v113 = 0u;
  aBlock = 0u;
  v111 = 0u;
  v114 = -1;
LABEL_24:
  sub_188A3F29C(&aBlock, v107, &qword_1EA937080);
  if (v109 == 255)
  {
LABEL_32:
    sub_18A4A8398();
    __break(1u);
    return;
  }

  if (v109)
  {
    sub_188A55538(&v108, v106);
    v75 = v89;
    sub_189162F30(v68, v89, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v76 = v91;
    v103 = v91;
    v77 = __swift_allocate_boxed_opaque_existential_0(v102);
    (*(*(v76 - 8) + 16))(v77, v90, v76);
    sub_188A55598(v106, &v104);
    v105 = 1;
    swift_beginAccess();
    sub_188F292A4(v102, v75);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_0Tm(v106);
  }

  else
  {
    v78 = v89;
    sub_189162F30(v68, v89, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v79 = v91;
    v103 = v91;
    v80 = __swift_allocate_boxed_opaque_existential_0(v102);
    (*(*(v79 - 8) + 16))(v80, v90, v79);
    v105 = 0;
    swift_beginAccess();
    sub_188F292A4(v102, v78);
    swift_endAccess();
  }

  sub_188A3F5FC(&aBlock, &qword_1EA937080);
  __swift_destroy_boxed_opaque_existential_0Tm(v107);
  sub_18916731C(v68, v93, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
}

uint64_t sub_189153C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E590);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_189162F30(a1, &v7 - v3, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v5 = sub_188F9450C(v4);
  sub_189153D08(v5);
}

void sub_189153D08(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
    v12 = (v8 + 63) >> 6;

    v13 = 0;
    v35 = a1;
    while (v10)
    {
LABEL_12:
      v15 = *(a1 + 48);
      v16 = *(v36 + 72);
      sub_189162F30(v15 + v16 * (__clz(__rbit64(v10)) | (v13 << 6)), v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      swift_beginAccess();
      v17 = sub_188E8BEC0(v6);
      v19 = v18;
      sub_189163C68(v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      if (v19)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v2[v11];
        v37 = v21;
        *&v2[v11] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_188FA7190();
          v21 = v37;
        }

        sub_189163C68(*(v21 + 48) + v17 * v16, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v22 = *(v21 + 56) + 72 * v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 64);
        v42 = *(v22 + 48);
        v43 = v25;
        aBlock = *v22;
        v40 = v24;
        v41 = v23;
        sub_188F9EFCC(v17, v21);
        *&v2[v11] = v21;
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
        aBlock = 0u;
        v40 = 0u;
        v43 = -1;
      }

      v10 &= v10 - 1;
      sub_188A3F5FC(&aBlock, &qword_1EA937080);
      swift_endAccess();
      a1 = v35;
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v14 >= v12)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_12;
      }
    }

    v38 = a1;
    v26 = *&v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];

    v27 = [v26 textStorage];
    v28 = MEMORY[0x1EEE9AC00](v27);
    *(&v35 - 2) = &v38;
    *(&v35 - 1) = v29;
    v30 = [v29 length];
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1891672E4;
    *(v31 + 24) = &v35 - 4;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1891673C4;
    *(v32 + 24) = v31;
    *&v41 = sub_1891673C8;
    *(&v41 + 1) = v32;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v40 = sub_18914E7A8;
    *(&v40 + 1) = &block_descriptor_424_0;
    v33 = _Block_copy(&aBlock);

    [v27 enumerateAttribute:@"UITextItemTagAttribute" inRange:0 options:v30 usingBlock:{0, v33}];
    _Block_release(v33);
    LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

    if ((v30 & 1) == 0)
    {
      v2[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
      v34 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
      swift_beginAccess();
      *&v2[v34] = MEMORY[0x1E69E7CC8];

      [v2 setNeedsLayout];

      return;
    }

LABEL_20:
    __break(1u);
  }
}

uint64_t sub_1891541AC()
{
  swift_beginAccess();

  v1 = sub_188F998E4(v0);
  sub_189153D08(v1);
}

uint64_t sub_189154208(uint64_t a1)
{
  sub_189152C24(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_189154234()
{
  v1 = [*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) textStorage];
  v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v17 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v11 = v0;
  v12 = v3;
  v13 = &v17;
  v14 = &v16;

  v4 = [v1 length];
  v5 = swift_allocObject();
  *(v5 + 16) = sub_189167444;
  *(v5 + 24) = &v10;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1891673C4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1891673C8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18914E7A8;
  aBlock[3] = &block_descriptor_45_3;
  v7 = _Block_copy(aBlock);

  [v1 enumerateAttribute:@"UITextItemTagAttribute" inRange:0 options:v4 usingBlock:{0, v7}];

  _Block_release(v7);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v9 = v16;

    return v9;
  }

  return result;
}

void sub_189154454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  swift_beginAccess();
  v12 = *&v3[v11];
  if (*(v12 + 16))
  {

    v13 = sub_188E8BEC0(a1);
    if ((v14 & 1) == 0)
    {

      return;
    }

    sub_188FA95D0(*(v12 + 56) + 72 * v13, v29);

    v33[2] = v30;
    v33[3] = v31;
    v34 = v32;
    v33[0] = v29[0];
    v33[1] = v29[1];
    sub_189162F30(a1, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    sub_188FA95D0(v33, v27);
    if (v28[32])
    {
      sub_188A55538(v27, v29);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }

    else
    {
      sub_188A55538(v27, v29);
    }

    *(&v31 + 1) = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
    v32 = 1;
    swift_beginAccess();
    sub_188F292A4(v29, v10);
    swift_endAccess();
    v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
    v16 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
    swift_beginAccess();
    *&v4[v16] = MEMORY[0x1E69E7CC8];

    [v4 setNeedsLayout];
    v17 = *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
    v18 = [v17 interactionAssistant];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 linkInteraction];

      if (v20)
      {
        v21 = [v20 contextMenuInteraction];

        [v21 dismissMenu];
        v22 = [v17 interactionAssistant];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 linkInteraction];

          if (v24)
          {
            v25 = [v24 editMenuInteraction];

            [v25 dismissMenu];
            sub_189162F98(v33);
            return;
          }

LABEL_16:
          __break(1u);
          return;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_189154794@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  swift_beginAccess();
  v12 = *&v3[v11];
  if (*(v12 + 16))
  {

    v13 = sub_188E8BEC0(a1);
    if (v14)
    {
      sub_188FA95D0(*(v12 + 56) + 72 * v13, v30);

      goto LABEL_6;
    }
  }

  memset(v30, 0, sizeof(v30));
  v31 = -1;
LABEL_6:
  sub_188A3F29C(v30, &v26, &qword_1EA937080);
  if (v29 == 255)
  {
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    if (v29)
    {
      sub_188A55538(&v26, v25);
      sub_188A55538(&v28, a3);
      sub_189162F30(a1, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      sub_188A55598(v25, v24);
      v24[64] = 0;
      swift_beginAccess();
      sub_188F292A4(v24, v10);
      swift_endAccess();
      v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
      v15 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
      swift_beginAccess();
      *&v4[v15] = MEMORY[0x1E69E7CC8];

      [v4 setNeedsLayout];
      v16 = v25;
    }

    else
    {
      *a3 = 0u;
      a3[1] = 0u;
      v16 = &v26;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  sub_188A3F29C(a3, &v26, &qword_1EA934050);
  if (v27)
  {
    sub_188A3F5FC(&v26, &qword_1EA934050);
    if (a2)
    {
      v17 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 1);
        ObjectType = swift_getObjectType();
        (*(v18 + 24))(v4, a1, ObjectType, v18);
        swift_unknownObjectRelease();
      }
    }

    v20 = &qword_1EA937080;
    v21 = v30;
  }

  else
  {
    sub_188A3F5FC(v30, &qword_1EA937080);
    v20 = &qword_1EA934050;
    v21 = &v26;
  }

  return sub_188A3F5FC(v21, v20);
}

void sub_189154AAC()
{
  v1 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  [v11 resignFirstResponder];
  v31 = v11;
  v12 = [v11 textStorage];
  v13 = *(v2 + 56);
  v34 = v1;
  v13(v10, 1, 1, v1);
  v36 = v0;
  v37 = v10;
  v14 = [v12 length];
  v15 = swift_allocObject();
  *(v15 + 16) = sub_189162FC8;
  *(v15 + 24) = &v35;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1891673C4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1891673C8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18914E7A8;
  aBlock[3] = &block_descriptor_56_1;
  v17 = _Block_copy(aBlock);

  v33 = v12;
  [v12 enumerateAttribute:@"UITextItemTagAttribute" inRange:0 options:v14 usingBlock:{0, v17}];
  _Block_release(v17);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_188A3F29C(v10, v6, &qword_1EA9389F8);
  v18 = v10;
  if ((*(v2 + 48))(v6, 1, v34) == 1)
  {

    sub_188A3F5FC(v6, &qword_1EA9389F8);
LABEL_11:
    sub_188A3F5FC(v18, &qword_1EA9389F8);
    return;
  }

  v19 = v32;
  sub_18916731C(v6, v32, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  sub_18A4A2988();
  v20 = sub_18A4A7258();

  v21 = v31;
  v22 = [v31 _textInteractableItemForTag_];

  if (!v22)
  {
    sub_189163C68(v19, type metadata accessor for IntelligenceUI.PromptAmbiguityID);

    goto LABEL_11;
  }

  v23 = [v21 interactionAssistant];
  if (!v23)
  {
    goto LABEL_13;
  }

  v24 = v23;
  v25 = [v23 linkInteraction];

  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = [v25 contextMenuInteraction];

  [v22 setContextMenuInteraction_];
  v27 = [v21 interactionAssistant];
  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  v29 = [v27 linkInteraction];

  if (v29)
  {
    v30 = [v29 editMenuInteraction];

    [v22 setEditMenuInteraction_];
    [v22 invokeDefaultAction];

    sub_189163C68(v19, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_189154FF4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  result = swift_beginAccess();
  v12 = *(a5 + v10);
  if (*(v12 + 16))
  {

    v13 = sub_188E8BEC0(a1);
    if (v14)
    {
      sub_188FA95D0(*(v12 + 56) + 72 * v13, v16);

      if (v16[64])
      {
        return sub_189162F98(v16);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        sub_188A3F5FC(a6, &qword_1EA9389F8);
        sub_189162F30(a1, a6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
        v15 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
        result = (*(*(v15 - 8) + 56))(a6, 0, 1, v15);
        *a4 = 1;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_189155138()
{
  v1 = [*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) textStorage];
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v11 = v0;
  v12 = v2;
  v3 = [v1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = sub_189162FD0;
  *(v4 + 24) = &v10;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1891673C4;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1891673C8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18914E7A8;
  aBlock[3] = &block_descriptor_67_4;
  v6 = _Block_copy(aBlock);

  [v1 enumerateAttribute:@"UITextItemTagAttribute" inRange:0 options:v3 usingBlock:{2, v6}];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = [v2 string];
    v9 = sub_18A4A7288();

    return v9;
  }

  return result;
}

uint64_t sub_189155354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  result = swift_beginAccess();
  v13 = *(a5 + v11);
  if (*(v13 + 16))
  {

    v14 = sub_188E8BEC0(a1);
    if ((v15 & 1) == 0)
    {
    }

    sub_188FA95D0(*(v13 + 56) + 72 * v14, v25);

    v28[2] = v26[0];
    v28[3] = v26[1];
    v29 = v27;
    v28[0] = v25[0];
    v28[1] = v25[1];
    sub_188FA95D0(v28, v25);
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }

    sub_188A55538(v26, v24);
    sub_188A55598(v24, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E760);
    if (swift_dynamicCast())
    {
      sub_188A5EBAC(v19, v23);
      __swift_project_boxed_opaque_existential_0(v23, v23[3]);
      sub_18A4A8618();
      v16 = sub_18A4A7258();

      [a6 replaceCharactersInRange:a2 withString:{a3, v16}];

      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      sub_189162F98(v28);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      return __swift_destroy_boxed_opaque_existential_0Tm(v25);
    }

    v21 = 0;
    *v19 = 0u;
    v20 = 0u;
    sub_188A3F5FC(v19, &qword_1EA93E768);
    sub_188A55598(v24, v23);
    if (swift_dynamicCast())
    {
      v17 = sub_18A4A7258();

      [a6 replaceCharactersInRange:a2 withString:{a3, v17}];
    }

    else
    {
      sub_188A55598(v24, v23);
      sub_188A34624(0, &qword_1EA930C60);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_14:
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
LABEL_15:
        sub_189162F98(v28);
        return __swift_destroy_boxed_opaque_existential_0Tm(v25);
      }

      v18 = v19[0];
      v17 = [v19[0] string];
      if (!v17)
      {
        sub_18A4A7288();
        v17 = sub_18A4A7258();
      }

      [a6 replaceCharactersInRange:a2 withString:{a3, v17}];
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t static IntelligenceUI.PromptEntryView.defaultTypingAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E5A0);
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E5A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = sub_18A4A2668();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_18A4A2658();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC4708();
  sub_18A4A2628();

  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = [objc_opt_self() preferredFontForTextStyle_];
  v27 = v17;
  sub_18A4A2648();

  (*(v6 + 8))(v8, v5);
  v25 = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC47A8();
  sub_18A4A2628();

  v16(v15, v9);
  v18 = [objc_opt_self() labelColor];
  v27 = v18;
  v19 = v22;
  sub_18A4A2648();

  return (*(v23 + 8))(v4, v19);
}

uint64_t sub_18915599C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E5A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - v4;
  v6 = sub_18A4A2668();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IntelligenceUI.PromptEntryView.defaultTypingAttributes.getter(v9);
  v14[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC4708();
  sub_18A4A2628();

  (*(v7 + 8))(v9, v6);
  v10 = objc_opt_self();
  v11 = [v1 traitCollection];
  v12 = [v10 preferredFontForTextStyle:@"UICTFontTextStyleBody" compatibleWithTraitCollection:v11];

  v14[1] = v12;
  sub_18A4A2648();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_189155BD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E730);
  v1 = *(v0 - 8);
  v36 = v0;
  v37 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v35 = &v30 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E738);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E5A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_18A4A2668();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  __swift_allocate_value_buffer(v20, qword_1EA92FE10);
  v32 = __swift_project_value_buffer(v10, qword_1EA92FE10);
  sub_18A4A2658();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC47A8();
  sub_18A4A2628();

  v21 = *(v11 + 8);
  v21(v13, v10);
  v30 = objc_opt_self();
  v22 = [v30 labelColor];
  v23 = [v22 colorWithAlphaComponent_];

  v41 = v23;
  sub_18A4A2648();

  (*(v7 + 8))(v9, v6);
  v39 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1890782F0();
  v24 = v31;
  sub_18A4A2628();

  v21(v16, v10);
  v41 = 257;
  v25 = v33;
  sub_18A4A2648();
  (*(v34 + 8))(v24, v25);
  v38 = swift_getKeyPath();
  swift_getKeyPath();
  sub_189167290();
  v26 = v35;
  sub_18A4A2628();

  v21(v19, v10);
  v27 = [v30 tintColor];
  v41 = v27;
  v28 = v36;
  sub_18A4A2648();

  return (*(v37 + 8))(v26, v28);
}

uint64_t (*static IntelligenceUI.PromptEntryView.defaultAttributesForAmbiguity.modify())()
{
  if (qword_1EA92FE00 != -1)
  {
    swift_once();
  }

  v0 = sub_18A4A2668();
  __swift_project_value_buffer(v0, qword_1EA92FE10);
  swift_beginAccess();
  return sub_188C47BEC;
}

void sub_1891561D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93B0F0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - v2;
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_1EA92FDE8);
  v9 = __swift_project_value_buffer(v4, qword_1EA92FDE8);
  type metadata accessor for IntelligenceUI.PromptEntryView(0);
  static IntelligenceUI.PromptEntryView.defaultTypingAttributes.getter(v7);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A2618();
  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  sub_188CC4708();
  sub_18A4A2838();
  (*(v1 + 8))(v3, v0);
  v10 = v12;
  if (v12)
  {

    sub_189156434(v10, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_189156434@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E5A8);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E5A0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v8 = sub_18A4A2668();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  sub_18A4A2658();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC47A8();
  sub_18A4A2628();

  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = [objc_opt_self() tintColor];
  v39 = v16;
  sub_18A4A2648();

  (*(v5 + 8))(v7, v4);
  v37 = swift_getKeyPath();
  swift_getKeyPath();
  sub_188CC4708();
  sub_18A4A2628();

  v15(v14, v8);
  v17 = v33;
  v18 = [v33 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E700);
  inited = swift_initStackObject();
  v32 = xmmword_18A64BFB0;
  *(inited + 16) = xmmword_18A64BFB0;
  v20 = *off_1E70ECCC0;
  *(inited + 32) = *off_1E70ECCC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E708);
  v21 = swift_initStackObject();
  *(v21 + 16) = v32;
  v22 = *off_1E70ECD38;
  *(v21 + 32) = *off_1E70ECD38;
  *(v21 + 40) = *off_1E70ECD30;
  v23 = v20;
  v24 = v22;
  v25 = sub_188E8F510(v21);
  swift_setDeallocating();
  sub_188A3F5FC(v21 + 32, &qword_1EA93E710);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E718);
  *(inited + 40) = v25;
  sub_188E8F600(inited);
  swift_setDeallocating();
  sub_188A3F5FC(inited + 32, &unk_1EA93E720);
  type metadata accessor for AttributeName(0);
  sub_188BEB2E8(&unk_1EA92FD78, type metadata accessor for AttributeName);
  v26 = sub_18A4A7088();

  v27 = [v18 fontDescriptorByAddingAttributes_];

  [v17 pointSize];
  v29 = [objc_opt_self() fontWithDescriptor:v27 size:v28];

  v39 = v29;
  v30 = v34;
  sub_18A4A2648();

  return (*(v35 + 8))(v3, v30);
}

uint64_t sub_1891569B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_18A4A2668();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_189156A84(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_18A4A2668();
  v6 = __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v7 = *(v5 - 8);
  (*(v7 + 24))(v6, a1, v5);
  swift_endAccess();
  return (*(v7 + 8))(a1, v5);
}

uint64_t (*static IntelligenceUI.PromptEntryView.defaultAttributesForResolvedAmbiguity.modify())()
{
  if (qword_1EA92FDD8 != -1)
  {
    swift_once();
  }

  v0 = sub_18A4A2668();
  __swift_project_value_buffer(v0, qword_1EA92FDE8);
  swift_beginAccess();
  return sub_188C47BEC;
}

uint64_t sub_189156BF8@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_18A4A2668();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_189156CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v8 = sub_18A4A2668();
  v9 = __swift_project_value_buffer(v8, a6);
  swift_beginAccess();
  (*(*(v8 - 8) + 24))(v9, a1, v8);
  return swift_endAccess();
}

void sub_189156D58()
{
  v1 = *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  if ([v1 textInputSuggestionDelegate])
  {
    swift_unknownObjectRelease();
    v2 = [v1 textInputSuggestionDelegate];
    if (v2)
    {
      v3 = v2;
      sub_188A34624(0, &unk_1EA92EFE0);
      v4 = sub_18A4A7518();
      [v3 setSuggestions_];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_189156E40()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 dictationSearchFieldUIEnabled];

    if (v3 != *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty))
    {
      *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty) = v3;
      v4 = *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton);
      [v4 setNeedsUpdateConfiguration];

      [v4 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    __break(1u);
  }
}

id IntelligenceUI.PromptEntryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t IntelligenceUI.PromptEntryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_18A4A2668();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration];
  if (qword_1EA92FE50 != -1)
  {
    swift_once();
  }

  v13 = qword_1EA92FE60;
  v14 = unk_1EA92FE68;
  *v12 = qword_1EA92FE60;
  v12[1] = v14;
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView;
  _s15PromptEntryViewC19PromptEntryTextViewCMa();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = v13;
  v18 = v14;
  *&v4[v15] = [v16 initWithFrame_];
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView] = 0;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior] = 0;
  v19 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit];
  *v20 = 0;
  v20[8] = 1;
  v21 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton;
  *&v4[v21] = sub_18914FBD8();
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonVisible] = 1;
  v22 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton;
  *&v4[v22] = sub_18914FE70();
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible] = 1;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonHiddenWhenEmpty] = 1;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty] = 0;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle] = 0;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButtonToggleState] = 1;
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView] = 0;
  v23 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding];
  *v23 = xmmword_18A66A900;
  v23[1] = xmmword_18A66A900;
  v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled] = 0;
  v24 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForAmbiguity;
  if (qword_1EA92FE00 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_1EA92FE10);
  swift_beginAccess();
  v26 = *(v10 + 16);
  v26(&v4[v24], v25, v9);
  v27 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForResolvedAmbiguity;
  if (qword_1EA92FDD8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v9, qword_1EA92FDE8);
  swift_beginAccess();
  v26(&v4[v27], v28, v9);
  v29 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__privatePressGestureRecognizerDelegate;
  *&v4[v29] = [objc_allocWithZone(_s15PromptEntryViewC37PrivatePressGestureRecognizerDelegateCMa()) init];
  v30 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel;
  *&v4[v30] = [objc_allocWithZone(UILabel) initWithFrame_];
  v31 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessorySeparatorView;
  *&v4[v31] = [objc_allocWithZone(UIView) initWithFrame_];
  v32 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_containerScrollView;
  *&v4[v32] = [objc_allocWithZone(UIScrollView) initWithFrame_];
  v33 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_buttonContainerView;
  *&v4[v33] = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
  v34 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView;
  *&v4[v34] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView] = 0;
  v35 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_nonPonderingBackgroundStyle;
  v36 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  (*(*(v36 - 8) + 56))(&v4[v35], 1, 1, v36);
  v37 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_activePonderEffect;
  v38 = type metadata accessor for UITextEffectView.EffectID();
  (*(*(v38 - 8) + 56))(&v4[v37], 1, 1, v38);
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerView] = 0;
  *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerMaskView] = 0;
  v39 = [objc_opt_self() sharedInstance];
  if (v39)
  {
    v40 = v39;
    v41 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty;
    v42 = [v39 dictationSearchFieldUIEnabled];

    v4[v41] = v42;
    v43 = MEMORY[0x1E69E7CC8];
    *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID] = MEMORY[0x1E69E7CC8];
    *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_imageAttributeStates] = v43;
    *&v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations] = v43;
    v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 0;
    v44 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer;
    *&v4[v44] = [objc_allocWithZone(_UIPressGestureRecognizer) initWithTarget:0 action:0];
    v45 = &v4[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_backgroundCornerRadius];
    *v45 = 0;
    v45[8] = 1;
    v126.receiver = v4;
    v126.super_class = type metadata accessor for IntelligenceUI.PromptEntryView(0);
    v46 = objc_msgSendSuper2(&v126, sel_initWithFrame_, a1, a2, a3, a4);
    v47 = objc_opt_self();
    v48 = v46;
    v49 = [v47 clearColor];
    [v48 setBackgroundColor_];

    [v48 setClipsToBounds_];
    v50 = sub_18915184C();
    [v48 promptBackgroundViewDidUpdateConfiguration_];

    v51 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
    v52 = [*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView] superview];
    if (!v52 || (v53 = v52, sub_188A34624(0, &qword_1ED48F680), v54 = v48, v55 = sub_18A4A7C88(), v53, v54, (v55 & 1) == 0))
    {
      [v48 insertSubview:*&v48[v51] atIndex:0];
    }

    v56 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_containerScrollView;
    [*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_containerScrollView] setShowsVerticalScrollIndicator_];
    [*&v48[v56] setShowsHorizontalScrollIndicator_];
    [v48 addSubview_];
    v57 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView;
    LODWORD(v58) = 1144750080;
    [*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] setContentCompressionResistancePriority:1 forAxis:v58];
    [*&v48[v57] setIsSingleLineDocument_];
    v59 = *&v48[v57];
    v60 = [v47 clearColor];
    [v59 setBackgroundColor_];

    [*&v48[v57] setScrollEnabled_];
    [*&v48[v57] setDelegate_];
    v61 = *&v48[v57];
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = sub_189163040;
    v125 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_1891582E8;
    v123 = &block_descriptor_84_4;
    v63 = _Block_copy(&aBlock);
    v64 = v61;

    [v64 setAccessibilityLabelBlock_];
    _Block_release(v63);

    [*&v48[v56] addSubview_];
    v65 = *&v48[v57];
    sub_18915599C();
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    sub_18A4A70B8();
    type metadata accessor for Key(0);
    sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
    v66 = sub_18A4A7088();

    [v65 setTypingAttributes_];

    v67 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel;
    [*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel] setUserInteractionEnabled_];
    v68 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView;
    [*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView] setUserInteractionEnabled_];
    v69 = *&v48[v68];
    v70 = objc_opt_self();
    v71 = v69;
    v72 = [v70 effectWithStyle_];
    v73 = [objc_opt_self() effectForBlurEffect:v72 style:2];

    [v71 setEffect_];
    v74 = [*&v48[v68] contentView];
    [v74 &selRef:*&v48[v67] addLineToPoint:?];

    [*&v48[v57] &selRef:*&v48[v68] addLineToPoint:?];
    sub_18914E9A8();
    v119 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_buttonContainerView;
    [v48 &selRef:*&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_buttonContainerView] addLineToPoint:?];
    v75 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton;
    v76 = *&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton];
    v77 = [(UIView *)v76 _traitOverrides];
    v78 = [(_UITraitOverrides *)v77 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v78;
    aBlock = inited;
    sub_18914E5B8(0, &type metadata for UITraitLegibilityWeight, sub_188EB3468, sub_18901D818);
    v80 = aBlock;
    v81 = [(UIView *)v76 _traitOverrides];
    v82 = *(v80 + 16);

    [(_UITraitOverrides *)v81 _replaceWithOverrides:v82];

    v83 = *&v48[v75];
    v84 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = sub_189163048;
    v125 = v84;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_188BFF280;
    v123 = &block_descriptor_88_0;
    v85 = _Block_copy(&aBlock);
    v86 = v83;

    [v86 setConfigurationUpdateHandler_];
    _Block_release(v85);

    [*&v48[v119] addSubview_];
    v87 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton;
    v88 = *&v48[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton];
    v89 = [(UIView *)v88 _traitOverrides];
    v90 = [(_UITraitOverrides *)v89 _swiftImplCopy];

    v91 = swift_initStackObject();
    *(v91 + 16) = v90;
    aBlock = v91;
    sub_18914E5B8(0, &type metadata for UITraitLegibilityWeight, sub_188EB3468, sub_18901D818);
    v92 = aBlock;
    v93 = [(UIView *)v88 _traitOverrides];
    v94 = *(v92 + 16);

    [(_UITraitOverrides *)v93 _replaceWithOverrides:v94];

    v95 = *&v48[v87];
    v96 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = sub_189163078;
    v125 = v96;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_188BFF280;
    v123 = &block_descriptor_92_1;
    v97 = _Block_copy(&aBlock);
    v98 = v95;

    [v98 setConfigurationUpdateHandler_];
    _Block_release(v97);

    v99 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v100 = objc_allocWithZone(UIAction);
    v101 = v48;

    v102 = sub_18A4A7258();
    v124 = sub_1891630A8;
    v125 = v99;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_188BFF280;
    v123 = &block_descriptor_96_1;
    v103 = _Block_copy(&aBlock);

    v104 = [v100 initWithTitle:v102 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:v103];
    _Block_release(v103);

    v105 = v104;
    [v105 setSubtitle_];
    [v105 setSelectedImage_];

    [*&v48[v87] addAction:v105 forControlEvents:0x2000];
    [*&v48[v119] addSubview_];
    v106 = [objc_opt_self() defaultCenter];
    [v106 addObserver:v101 selector:sel_dictationAvailabilityDidChange name:@"UIKeyboardDictationAvailabilityDidChangeNotification" object:0];

    v107 = *&v101[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessorySeparatorView];
    v108 = objc_allocWithZone(UIColor);
    v124 = sub_189158E74;
    v125 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_188BC2240;
    v123 = &block_descriptor_99_4;
    v109 = _Block_copy(&aBlock);
    v110 = v107;
    v111 = [v108 initWithDynamicProvider_];
    _Block_release(v109);

    [v110 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
    v112 = swift_initStackObject();
    *(v112 + 16) = xmmword_18A64BFB0;
    *(v112 + 32) = &type metadata for UITraitPreferredContentSizeCategory;
    *(v112 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_188F4D8B4(v112, sub_189158EFC, 0);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    v113 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer;
    [*&v101[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer] setDelegate_];
    [v101 addGestureRecognizer_];
    v114 = *&v48[v87];
    v115 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v116 = v114;

    v124 = sub_1891630B0;
    v125 = v115;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_1891582E8;
    v123 = &block_descriptor_103_5;
    v117 = _Block_copy(&aBlock);

    [v116 setAccessibilityLabelBlock_];
    _Block_release(v117);

    return v101;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_1891581A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView;
  result = [*(Strong + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) text];
  if (result)
  {
    v4 = result;
    sub_18A4A7288();

    v5 = sub_18A4A7358();

    if (v5 <= 0)
    {
      v9 = &v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder];
      swift_beginAccess();
      v8 = *v9;
    }

    else
    {
      v6 = [*&v1[v2] text];
      if (v6)
      {
        v7 = v6;
        v8 = sub_18A4A7288();
      }

      else
      {

        return 0;
      }
    }

    return v8;
  }

  __break(1u);
  return result;
}

id sub_1891582E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_18A4A7258();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_18915836C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton);
  type metadata accessor for _UIIntelligenceButton();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = [a1 configuration];
    if (v7)
    {
      v8 = v7;
      [v7 imageReservation];
      if ((v9 & 1) == 0)
      {
        v10 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_style;
        swift_beginAccess();
        v5[v10] = 0;
        sub_18913AE28();

        return;
      }
    }

    v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle;
    swift_beginAccess();
    if (*(v1 + v11) == 1)
    {
      v12 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_isExpanded;
      swift_beginAccess();
      LOBYTE(v12) = v5[v12];
      v13 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButtonToggleState;
      swift_beginAccess();
      v14 = *(v1 + v13);
      LOBYTE(v12) = v12 ^ v14;
      sub_18913A39C(v14, v12 & 1);
      if (v12)
      {
        MEMORY[0x1EEE9AC00](v15);
        v27 = v5;
        v16 = objc_opt_self();
        v17 = swift_allocObject();
        *(v17 + 16) = sub_18913A618;
        *(v17 + 24) = v26;
        v33 = sub_188E3FE50;
        v34 = v17;
        aBlock = MEMORY[0x1E69E9820];
        v30 = 1107296256;
        v31 = sub_188A4A968;
        v32 = &block_descriptor_376_0;
        v18 = _Block_copy(&aBlock);

        [v16 animateWithSpringDuration:0 bounce:v18 initialSpringVelocity:0 delay:0.5 options:0.0 animations:0.0 completion:0.0];
        _Block_release(v18);
        LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

        if (v16)
        {
          goto LABEL_15;
        }
      }
    }

    v19 = [v5 configuration];
    if (v19)
    {
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      MEMORY[0x1EEE9AC00](v21);
      v27 = v5;
      v28 = v22;
      v23 = objc_opt_self();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_18916721C;
      *(v24 + 24) = v26;
      v33 = sub_188E3FE50;
      v34 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_188A4A968;
      v32 = &block_descriptor_369;
      v25 = _Block_copy(&aBlock);

      [v23 animateWithSpringDuration:0 bounce:v25 initialSpringVelocity:0 delay:0.5 options:0.0 animations:0.0 completion:0.0];
      _Block_release(v25);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if ((v23 & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }
}

void sub_1891587B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_189158824(id a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 configuration];
  if (v4)
  {
    v5 = v4;
    [v4 imageReservation];
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  v8 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonHiddenWhenEmpty;
  swift_beginAccess();
  v9 = &unk_1ED490000;
  if (v1[v8])
  {
    v10 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] text];
    if (!v10)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v11 = v10;
    sub_18A4A7288();

    v12 = sub_18A4A7358();

    if (v12 <= 0)
    {
      if (qword_1EA92FE30 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v13 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty;
  swift_beginAccess();
  if (v1[v13] != 1)
  {
    goto LABEL_10;
  }

  v14 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] text];
  if (!v14)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v15 = v14;
  sub_18A4A7288();

  v16 = sub_18A4A7358();

  if (v16 >= 1)
  {
    sub_18915B244(&v40);
    goto LABEL_14;
  }

LABEL_10:
  if (v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty] != 1)
  {
LABEL_13:
    v20 = [v1 traitCollection];
    sub_189150C10(v20, &v40);

    goto LABEL_14;
  }

  v17 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] text];
  if (!v17)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_18A4A7288();

  v19 = sub_18A4A7358();

  if (v19 > 0)
  {
    goto LABEL_13;
  }

  v31 = [v1 traitCollection];
  sub_18915AF48(v31, &v40);
  v32 = sub_18A4A7258();
  v33 = [objc_opt_self() systemImageNamed_];

  v34 = v40;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v35 = v34[2];
  }

  else
  {
    [v34[2] copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v35 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v36 = swift_allocObject();
    *(v36 + 16) = v38;

    v40 = v36;
  }

  [v35 setImage_];

LABEL_14:
  for (i = 1; ; i = 0)
  {
    v22 = v40;
    [a1 setConfiguration_];
    [a1 setUserInteractionEnabled_];
    if (*(v9[275] + v2) == 1)
    {
      v23 = [*(v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) text];
      if (!v23)
      {
        goto LABEL_33;
      }

      v24 = v23;
      sub_18A4A7288();

      v25 = sub_18A4A7358();

      if (v25 <= 0)
      {
        [a1 _setDisableDictationTouchCancellation_];
      }
    }

    v26 = *(v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton);
    _s15PromptEntryViewC19AnimatingButtonViewCMa();
    v27 = swift_dynamicCastClass();
    if (!v27)
    {
      break;
    }

    v9 = &v38;
    MEMORY[0x1EEE9AC00](v27);
    v37[2] = v28;
    v37[3] = v22;
    v29 = objc_opt_self();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1891673D8;
    *(v2 + 24) = v37;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_362_0;
    v30 = _Block_copy(aBlock);
    a1 = v26;

    [v29 animateWithSpringDuration:0 bounce:v30 initialSpringVelocity:0 delay:0.5 options:0.0 animations:0.0 completion:0.0];
    _Block_release(v30);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_25:
    v40 = off_1EA92FE40;
  }
}

void sub_189158E20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18916315C();
  }
}

id sub_189158E74(void *a1)
{
  if ([a1 userInterfaceStyle] == 1)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithWhite:0.863 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() separatorColor];

    return v3;
  }
}

uint64_t sub_189158F20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18914F4C0(&v11);
    v2 = sub_18A4A7258();
    v3 = sub_18A4A7258();
    v4 = sub_18A4A7258();
    v9 = _UILocalizedString(v2, v3, v4);

    if (v9)
    {
      v8 = sub_18A4A7288();

      goto LABEL_7;
    }

    return 0;
  }

  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  v7 = sub_18A4A7258();
  v1 = _UILocalizedString(v5, v6, v7);

  if (!v1)
  {
    return 0;
  }

  v8 = sub_18A4A7288();
LABEL_7:

  return v8;
}

id sub_1891591C8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v11 = v5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding;
  swift_beginAccess();
  v12 = *(v11 + 8);
  v13 = *(v11 + 24);
  v14 = sub_18915F924();
  v18 = UIRectInset(0.0, 0.0, a4, a5, v14, v17, v16, v15);
  v22 = UIRectInset(v18, v19, v20, v21, 0.0, v13, 0.0, v12);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_18915AE10();
  v29 = *(v5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v32 = 1.79769313e308;
  if (v31 & 1 | (v30 != 1))
  {
    v32 = v26;
  }

  [*(v5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) sizeThatFits_];
  v53.origin.x = v22;
  v53.origin.y = v24;
  v53.size.width = v26;
  v53.size.height = v28;
  Width = CGRectGetWidth(v53);
  if (a3)
  {
    goto LABEL_12;
  }

  v34 = [v29 textLayoutManager];
  if (v34)
  {
    v35 = v34;
    v50 = a1;
    memset(&v52, 0, sizeof(v52));
    v36 = [v34 documentRange];
    v37 = [v36 location];

    v38 = [objc_allocWithZone(off_1E70ECBF0) initWithLocation_];
    swift_unknownObjectRelease();
    v39 = swift_allocObject();
    *(v39 + 16) = &v52;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1891630B8;
    *(v40 + 24) = v39;
    aBlock[4] = sub_189163130;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18914E888;
    aBlock[3] = &block_descriptor_112_2;
    v41 = _Block_copy(aBlock);

    [v35 enumerateTextSegmentsInRange:v38 type:1 options:0 usingBlock:v41];
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    [v29 textContainerInset];
    v54 = CGRectOffset(v52, 0.0, v44);
    x = v54.origin.x;
    y = v54.origin.y;
    v47 = v54.size.width;
    height = v54.size.height;

    a1 = v50;
    if (a2 <= 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    x = 0.0;
    y = 0.0;
    v47 = 0.0;
    height = 0.0;
    if (a2 < 1)
    {
      goto LABEL_10;
    }
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = v47;
  v55.size.height = height;
  CGRectGetMinY(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = v47;
  v56.size.height = height;
  CGRectGetHeight(v56);
LABEL_10:
  if (a1 >= 1)
  {
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v47;
    v57.size.height = height;
    CGRectGetMinY(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = v47;
    v58.size.height = height;
    CGRectGetHeight(v58);
  }

LABEL_12:
  v49 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  swift_beginAccess();
  result = *(v5 + v49);
  if (result)
  {
    return [result systemLayoutSizeFittingSize_];
  }

  return result;
}

id IntelligenceUI.PromptEntryView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_189159720()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView;
  v2 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for UITextEffectView());
    v5 = sub_189042C24(v0, v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1891597C0(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) initWithFrame_];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_18915983C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 traitCollection];
  sub_18915048C(v2, &v9);

  v3 = [*(v9 + 16) image];
  if (v3)
  {
    v4 = v3;
    v5 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton] imageView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _resolvedImageFromImage_];
      [v7 size];
    }
  }
}

uint64_t sub_189159960()
{
  result = sub_18A4A7258();
  qword_1EA92F700 = result;
  return result;
}

uint64_t sub_189159998@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_backgroundCornerRadius;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1891599F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_backgroundCornerRadius;
  result = swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  return result;
}

uint64_t sub_189159B78(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration(0);
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v10 = __swift_project_value_buffer(v9, a4);
  return sub_189162F30(v10, v8, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_189159C44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_189162F30(v6, a3, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
}

uint64_t IntelligenceUI.PromptEntryView.BackgroundConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  UIPromptBackgroundView.Configuration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_189159CF4()
{
  sub_18A4A8888();
  UIPromptBackgroundView.Configuration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_189159D38()
{
  sub_18A4A8888();
  UIPromptBackgroundView.Configuration.hash(into:)();
  return sub_18A4A88E8();
}

void sub_189159D78(uint64_t a1@<X8>)
{
  v2 = sub_18915184C();
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  sub_189162F30(&v2[v3], a1, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_189159DF8(uint64_t a1)
{
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_189162F30(a1, v7, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
  v8 = sub_18915184C();
  sub_189162F30(v7, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F4DAA8(v4);

  return sub_189163C68(v7, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
}

uint64_t sub_189159F24(uint64_t a1)
{
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18915184C();
  sub_189162F30(a1, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F4DAA8(v4);

  return sub_189163C68(a1, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
}

void sub_189159FE4(uint64_t a1@<X8>)
{
  v2 = sub_18915184C();
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  sub_189162F30(&v2[v3], a1, type metadata accessor for UIPromptBackgroundView.Configuration);
}

void (*sub_18915A060(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for UIPromptBackgroundView.Configuration(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[4] = v7;
  v8 = *(*(type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration(0) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[6] = v9;
  v11 = sub_18915184C();
  v12 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  sub_189162F30(&v11[v12], v10, type metadata accessor for UIPromptBackgroundView.Configuration);

  return sub_18915A1B0;
}

void sub_18915A1B0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    sub_189162F30(*(*a1 + 48), v3, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
    v7 = *(v5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView);
    sub_189162F30(v3, v6, type metadata accessor for UIPromptBackgroundView.Configuration);
    v8 = v7;
    sub_188F4DAA8(v6);

    sub_189163C68(v3, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
  }

  else
  {
    v9 = *(v5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView);
    sub_189162F30(*(*a1 + 48), v6, type metadata accessor for UIPromptBackgroundView.Configuration);
    v10 = v9;
    sub_188F4DAA8(v6);
  }

  sub_189163C68(v4, type metadata accessor for IntelligenceUI.PromptEntryView.BackgroundConfiguration);
  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration.init(leadingImage:trailingImage:attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0) + 24);
  v7 = sub_18A4A2668();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

id sub_18915A624()
{
  v0 = [objc_opt_self() effectWithStyle_];
  v1 = [objc_opt_self() effectForBlurEffect:v0 style:2];

  result = [objc_opt_self() blackColor];
  qword_1EA92FE60 = v1;
  unk_1EA92FE68 = result;
  return result;
}

uint64_t IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(visualEffect:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id sub_18915A6F4()
{
  result = [objc_opt_self() placeholderTextColor];
  qword_1EA93E4B0 = 0;
  unk_1EA93E4B8 = result;
  return result;
}

uint64_t IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(textColor:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = result;
  return result;
}

id sub_18915A764@<X0>(void *a1@<X0>, void **a2@<X1>, id *a3@<X2>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
    swift_once();
    a2 = v8;
    a4 = v10;
    a3 = v9;
  }

  v4 = *a2;
  v11 = *a3;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  v6 = v4;

  return v11;
}

uint64_t IntelligenceUI.PromptEntryView.Delegate.promptEntryView(_:customAppearanceFor:resolved:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void __swiftcall IntelligenceUI.PromptEntryView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional *with)
{
  y = _.y;
  x = _.x;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for IntelligenceUI.PromptEntryView(0);
  v7 = [(UIView_optional *)&v12 hitTest:with withEvent:x, y];
  if (v7)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v8 = v3;
    v9 = v7;
    v10 = sub_18A4A7C88();

    if (v10)
    {

      v11 = *&v8[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
    }
  }
}

id sub_18915AB80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_18915AC5C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_18915ACF4()
{
  v1 = [*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton) configuration];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
  }

  else
  {
    v3 = 0;
  }

  result = [objc_opt_self() _emptyButtonConfiguration];
  if (result)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    *(swift_initStackObject() + 16) = v5;
    if (v3)
    {
      v6 = *(v3 + 16);

      v7 = [v6 isEqual_];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18915AE10()
{
  v1 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
  swift_beginAccess();
  if (!*(v1 + 24))
  {
    v3 = *(v1 + 16);
    v7 = *v1;
    v8 = v3;
    v9 = *(v1 + 32);
    if (*(&v3 + 1))
    {
      goto LABEL_3;
    }

    return 0;
  }

  sub_188A53994(v1, &v7);
  if (!*(&v8 + 1))
  {
    return 0;
  }

LABEL_3:
  sub_188A53994(&v7, v6);
  if (*(&v8 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  }

  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6F0);
  sub_18916710C();
  sub_18A4A74D8();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
  if (v4 == v5)
  {
    __break(1u);
  }

  else if (!__OFSUB__(v5, 1))
  {
    return v4;
  }

  __break(1u);
  return result;
}

void sub_18915AF48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() borderlessButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *a2 = v5;
  v6 = objc_opt_self();
  v7 = [v6 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleTitle3" compatibleWithTraitCollection:a1];
  v8 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v9 = [v6 preferredFontDescriptorWithTextStyle:@"UICTFontTextStyleTitle3" compatibleWithTraitCollection:v8];

  [v9 pointSize];
  v11 = v10;

  [v7 pointSize];
  if (v11 > v12)
  {
    if ((*&v12 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }

  v14 = [objc_opt_self() fontWithDescriptor:v7 size:v11];
  v15 = [objc_opt_self() configurationWithFont_];
  sub_188EB02D4(v15);

  [*(*a2 + 16) imageReservation];
  sub_18916286C(COERCE_DOUBLE(v16 | 1));
  v17 = [objc_opt_self() tertiaryLabelColor];
  sub_188EB0280(v17);
}

id sub_18915B174()
{
  result = [objc_opt_self() _emptyButtonConfiguration];
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    off_1EA92FE40 = v2;

    v3 = v1;
    [v3 imageReservation];
    v5 = v4;

    sub_18916286C(COERCE_DOUBLE(v5 | 1));
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_18915B244(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [v1 traitCollection];
  sub_18915AF48(v4, a1);

  v5 = [v1 traitCollection];
  v6 = _GetTextFieldClearButtonWithCustomColor(0, 0, 0, 0, v5);

  sub_188EB028C(v6);
  v7 = [objc_opt_self() labelColor];
  sub_188EB0280(v7);

  v8 = [objc_opt_self() preferredFontForTextStyle_];
  v9 = [v2 traitCollection];
  v10 = _UIImageConfigurationCappedSymbolImageScale(v9);

  v11 = [objc_opt_self() configurationWithFont:v8 scale:v10];
  sub_188EB02D4(v11);
}

void sub_18915B3DC(uint64_t a1, uint64_t a2)
{
  [*(a2 + 16) imageReservation];
  v4 = (v3 >> 1) & 3;
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 1;
  }

  v6 = OBJC_IVAR____TtC5UIKit21_UIIntelligenceButton_style;
  swift_beginAccess();
  *(a1 + v6) = v5;
  sub_18913AE28();
}

void sub_18915B494()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButtonToggleState;
    swift_beginAccess();
    v1[v2] = (v1[v2] & 1) == 0;
    [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton] setNeedsUpdateConfiguration];
    v3 = &v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 72))(v1, v1[v2], ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_18915B594(uint64_t a1)
{
  v3 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  sub_189162F30(a1 + v7, v6, type metadata accessor for UIPromptBackgroundView.Configuration);
  if (v6[*(v4 + 56)])
  {
    v8 = 13;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  if ([v9 keyboardAppearance] != v8)
  {
    [v9 setKeyboardAppearance_];
    [v9 reloadInputViews];
  }

  sub_18914E9A8();
  return sub_189163C68(v6, type metadata accessor for UIPromptBackgroundView.Configuration);
}

void sub_18915B738()
{
  sub_18A4A7288();
  v1 = sub_18A4A7258();

  v2 = [objc_opt_self() dictationInputModeOptionsWithInvocationSource_];

  v3 = [objc_opt_self() sharedInputModeController];
  if (v3)
  {
    v4 = v3;
    [v3 toggleDictationForResponder:*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) WithOptions:v2];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18915B810()
{
  v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    if (*(v0 + v1) != 1)
    {
      return 1;
    }

    sub_18915AE10();
    if (((v3 & 1) != 0 || v2 != 1) && ([*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer) modifierFlags] & 0xA0000) != 0)
    {
      return 1;
    }

    result = [objc_opt_self() activeInstance];
    if (result)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_18915AE10();
  if ((v6 & 1) == 0 && v5 == 1)
  {
    result = [objc_opt_self() activeInstance];
    if (result)
    {
      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  if (![*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) _isHardwareKeyboardBehaviorEnabled] || (objc_msgSend(*(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer), sel_modifierFlags) & 0xA0000) != 0)
  {
    return 1;
  }

  result = [objc_opt_self() activeInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:
  v7 = result;
  [result stopDictationIgnoreFinalizePhrases];

  v8 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 80))(v0, ObjectType, v9);
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

id sub_18915B9E8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
  result = [v2 textLayoutManager];
  if (result)
  {
    v4 = result;
    v5 = [v2 typingAttributes];
    type metadata accessor for Key(0);
    sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
    v6 = sub_18A4A70A8();

    if (*(v6 + 16) && (v7 = sub_188B00858(*off_1E70EC988), (v8 & 1) != 0))
    {
      sub_188A55598(*(v6 + 56) + 32 * v7, v27);

      sub_188A34624(0, &qword_1EA930B48);
      if (swift_dynamicCast())
      {
        v9 = v28[0];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {

      v9 = 0;
    }

    v10 = [v2 textStorage];
    v11 = [v10 _ui_resolvedTextAlignmentForParagraphStyle_];

    v12 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel];
    [v1 bounds];
    [v12 sizeThatFits_];
    v16 = v15;
    v28[0] = 0;
    v28[1] = 0;
    *&v28[2] = v15;
    v28[3] = v17;
    [v12 _firstBaselineOffsetFromTop];
    v19 = v18;
    if (v11 != 2)
    {
      v16 = 0.0;
    }

    v20 = [v4 documentRange];
    v21 = [v20 location];

    v22 = [objc_allocWithZone(off_1E70ECBF0) initWithLocation_];
    swift_unknownObjectRelease();
    v23 = swift_allocObject();
    *(v23 + 16) = v28;
    *(v23 + 24) = v16;
    *(v23 + 32) = v19;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_189167100;
    *(v24 + 24) = v23;
    v27[4] = sub_1891673E0;
    v27[5] = v24;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = sub_18914E888;
    v27[3] = &block_descriptor_356_0;
    v25 = _Block_copy(v27);

    [v4 enumerateTextSegmentsInRange:v22 type:1 options:0 usingBlock:v25];

    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18915BDBC(int a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, CGFloat *a10)
{
  [a2 textContainerOrigin];
  v19 = v18;
  v21 = v20;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  v25 = CGRectOffset(v24, v19, v21);
  y = v25.origin.y;
  *a10 = CGRectGetMinX(v25) - a8;
  a10[1] = a7 - a9 + y;
  return 1;
}

uint64_t sub_18915BE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v21 = a5;
  v9 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_18A4A29D8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188A3F29C(a1, v22, &qword_1EA934050);
  if (!v23)
  {
    return sub_188A3F5FC(v22, &qword_1EA934050);
  }

  result = swift_dynamicCast();
  if (result)
  {
    sub_18A4A2978();

    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      return sub_188A3F5FC(v14, &qword_1EA93A828);
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      (*(v16 + 16))(v11, v18, v15);
      v21(v11, a2, a3, a4);
      sub_189163C68(v11, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      return (*(v16 + 8))(v18, v15);
    }
  }

  return result;
}

uint64_t sub_18915C118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a5;
  *a5 = 0x8000000000000000;
  sub_188EA13D0(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v11;
}

uint64_t sub_18915C1A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = aBlock - v5;
  v7 = sub_18A4A2668();
  v8 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] textStorage];
  sub_18915599C();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  v9 = sub_18A4A70B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18A64C6E0;
  v11 = *off_1E70EC918;
  v12 = *off_1E70EC920;
  *(v10 + 32) = *off_1E70EC918;
  *(v10 + 40) = v12;
  v13 = *off_1E70ECAD0;
  v14 = *off_1E70ECAD8;
  *(v10 + 48) = *off_1E70ECAD0;
  *(v10 + 56) = v14;
  v30 = MEMORY[0x1E69E7CC0];
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = [v8 length];
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v9;
  v20[4] = a1;
  v20[5] = v1;
  v20[6] = &v30;
  v20[7] = v8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1891670A8;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1891670D8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18915E788;
  aBlock[3] = &block_descriptor_346_0;
  v22 = _Block_copy(aBlock);

  v23 = v1;
  v24 = v8;

  [v24 enumerateAttributesInRange:0 options:v19 usingBlock:{0, v22}];
  _Block_release(v22);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v25 = *(v30 + 16);
    if (v25)
    {
      v26 = v30 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v27 = *(v4 + 72);

      do
      {
        sub_188A3F29C(v26, v6, &qword_1EA934320);
        sub_18915C890(v6, v24);
        sub_188A3F5FC(v6, &qword_1EA934320);
        v26 += v27;
        --v25;
      }

      while (v25);
    }

    else
    {
    }

    v23[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 0;
  }

  return result;
}

uint64_t sub_18915C5D8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937078);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = *(v13 + 8);
  v16 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (!*(v17 + 16))
  {
    return swift_unknownObjectRelease();
  }

  v18 = sub_188E8BEC0(a1);
  if ((v19 & 1) == 0)
  {

    return swift_unknownObjectRelease();
  }

  sub_188FA95D0(*(v17 + 56) + 72 * v18, v22);

  v25[2] = v23[0];
  v25[3] = v23[1];
  v26 = v24;
  v25[0] = v22[0];
  v25[1] = v22[1];
  sub_188FA95D0(v25, v22);
  v20 = v24;
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  ObjectType = swift_getObjectType();
  (*(v15 + 64))(v2, a1, v20, ObjectType, v15);
  sub_189162F30(a1, v6, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  sub_188A3F29C(v12, v9, &qword_1EA937078);
  swift_beginAccess();
  sub_188F2939C(v9, v6);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_188A3F5FC(v12, &qword_1EA937078);
  return sub_189162F98(v25);
}

uint64_t sub_18915C890(uint64_t a1, void *a2)
{
  v3 = v2;
  v123 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937078);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v114 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v114 - v12;
  v14 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
  swift_beginAccess();
  v15 = *(v3 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_188E8BEC0(a1);
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = a1;
      v21 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
      v22 = *(v21 - 8);
      sub_189162F30(v19 + *(v22 + 72) * v18, v13, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);

      v23 = v21;
      a1 = v20;
      (*(v22 + 56))(v13, 0, 1, v23);
      goto LABEL_6;
    }
  }

  v24 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
LABEL_6:
  v25 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_imageAttributeStates;
  swift_beginAccess();
  v26 = *(v3 + v25);
  if (*(v26 + 16))
  {

    v27 = sub_188E8BEC0(a1);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 2 * v27);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = *(v3 + v25);
  if (*(v30 + 16))
  {

    v31 = sub_188E8BEC0(a1);
    if (v32)
    {
      LODWORD(v33) = *(*(v30 + 56) + 2 * v31 + 1);
    }

    else
    {
      LODWORD(v33) = 0;
    }
  }

  else
  {
    LODWORD(v33) = 0;
  }

  sub_188A3F29C(v13, v10, &qword_1EA937078);
  v34 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  v35 = (*(v34 - 8) + 48);
  v127 = *v35;
  v36 = v127(v10, 1, v34);
  v128 = a1;
  v126 = v13;
  if (v36 == 1)
  {
    sub_188A3F5FC(v10, &qword_1EA937078);
    v37 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320) + 28));
    v124 = v37;
    if (v29)
    {
LABEL_20:
      LODWORD(v125) = v33;
      v38 = *(v3 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
      v39 = [v37 start];
      v40 = [v38 positionFromPosition:v39 offset:-1];

      if (!v40)
      {
        v41 = 1;
        a1 = v128;
        v13 = v126;
        LOBYTE(v33) = v125;
        goto LABEL_43;
      }

      v41 = 1;
      v42 = [v38 positionFromPosition:v40 offset:1];
      if (v42)
      {
        v122 = v42;
        v43 = [v38 textRangeFromPosition:v40 toPosition:?];
        if (!v43)
        {
          v41 = 1;
          LOBYTE(v33) = v125;
          v49 = v122;
LABEL_41:

          goto LABEL_42;
        }

        v44 = v43;
        v45 = [v38 beginningOfDocument];
        v46 = [v44 &selRef_standardHUDTextColor];
        v121 = [v38 offsetFromPosition:v45 toPosition:v46];

        v47 = [v44 start];
        v48 = [v44 end];
        v33 = [v38 offsetFromPosition:v47 toPosition:v48];

        v49 = v44;
        [v123 deleteCharactersInRange_];
        v41 = 0;
        LOBYTE(v33) = v125;
        v50 = v122;
LABEL_40:

        goto LABEL_41;
      }

      LOBYTE(v33) = v125;
      goto LABEL_42;
    }

LABEL_28:
    v41 = 0;
    goto LABEL_43;
  }

  LODWORD(v125) = v33;
  v51 = *v10;
  v40 = *v10;
  sub_189163C68(v10, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
  v37 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320) + 28));
  if (!v51)
  {
    a1 = v128;
    v13 = v126;
    LODWORD(v33) = v125;
    v124 = v37;
    if (v29)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  v124 = v37;
  if ((v29 & 1) == 0)
  {
    v120 = v35;
    v52 = v40;
    v50 = [v37 start];
    v53 = *(v3 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
    v54 = [v53 positionFromPosition:v50 offset:1];
    LOBYTE(v33) = v125;
    if (v54)
    {
      v55 = v54;
      v121 = v52;
      v56 = [v53 textRangeFromPosition:v50 toPosition:v54];
      if (v56)
      {
        v119 = v56;
        v118 = v55;
        v40 = [objc_allocWithZone(off_1E70ECBA8) init];
        [v40 setImage_];
        v117 = v53;
        v57 = [v53 font];
        v122 = v50;
        if (v57)
        {
          v58 = v57;
          [v57 pointSize];
          v60 = v59;

          v61 = round(v60);
        }

        else
        {
          v61 = 15.0;
        }

        v62 = v121;
        [v121 size];
        v64 = v61 / v63;
        [v62 _baselineOffsetFromBottom];
        v66 = v65 * -0.5;
        [v62 size];
        v68 = v64 * v67;
        [v62 size];
        [v40 setBounds_];
        v116 = [objc_opt_self() attributedStringWithAttachment_];
        v70 = v117;
        v71 = [v117 beginningOfDocument];
        v72 = [v119 start];
        v115 = [v70 offsetFromPosition:v71 toPosition:v72];

        v73 = v119;
        v74 = [v119 start];
        v75 = [v73 end];
        [v70 offsetFromPosition:v74 toPosition:v75];

        v33 = v116;
        [v123 insertAttributedString:v116 atIndex:v115];

        v50 = v121;
        v41 = 1;
        v49 = v33;
        LOBYTE(v33) = v125;
      }

      else
      {

        v41 = 0;
        v50 = v55;
        v49 = v121;
        v40 = v121;
      }
    }

    else
    {
      v41 = 0;
      v40 = v52;
      v49 = v52;
    }

    goto LABEL_40;
  }

  v41 = 1;
  LOBYTE(v33) = v125;
LABEL_42:

  a1 = v128;
  v13 = v126;
LABEL_43:
  sub_188A3F29C(v13, v7, &qword_1EA937078);
  if (v127(v7, 1, v34) == 1)
  {
    sub_188A3F5FC(v7, &qword_1EA937078);
  }

  else
  {
    v76 = *(v7 + 1);
    v77 = v76;
    sub_189163C68(v7, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
    if (v76)
    {
      if (v33)
      {
        v78 = 256;
LABEL_68:

        goto LABEL_69;
      }

      v127 = v41;
      v84 = v77;
      v82 = [v124 end];
      v90 = *(v3 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
      v91 = [v90 positionFromPosition:v82 offset:1];
      if (v91)
      {
        v92 = v91;
        v93 = [v90 textRangeFromPosition:v82 toPosition:v91];
        if (v93)
        {
          v94 = v93;
          v77 = [objc_allocWithZone(off_1E70ECBA8) init];
          [v77 setImage_];
          v95 = [v90 font];
          if (v95)
          {
            v96 = v95;
            [v95 pointSize];
            v98 = v97;

            v99 = round(v98);
          }

          else
          {
            v99 = 15.0;
          }

          [v84 size];
          v101 = v99 / v100;
          [v84 _baselineOffsetFromBottom];
          v103 = v102 * -0.5;
          [v84 size];
          v105 = v101 * v104;
          [v84 size];
          [v77 setBounds_];
          v125 = [objc_opt_self() attributedStringWithAttachment_];
          v107 = [v90 beginningOfDocument];
          v108 = [v94 start];
          v124 = [v90 offsetFromPosition:v107 toPosition:v108];

          v109 = [v94 start];
          v110 = [v94 end];
          [v90 offsetFromPosition:v109 toPosition:v110];

          v111 = v125;
          [v123 insertAttributedString:v125 atIndex:v124];

          v78 = 256;
          v82 = v84;
          v84 = v111;
          v13 = v126;
        }

        else
        {

          v78 = 0;
          v82 = v92;
          v77 = v84;
        }
      }

      else
      {
        v78 = 0;
        v77 = v84;
      }

      goto LABEL_65;
    }
  }

  if (v33)
  {
    v79 = [v124 end];
    if (v79)
    {
      v77 = v79;
      v127 = v41;
      v80 = *(v3 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
      v81 = [v80 positionFromPosition:v79 offset:1];
      if (!v81)
      {
        v78 = 256;
LABEL_67:
        LOWORD(v41) = v127;
        goto LABEL_68;
      }

      v82 = v81;
      v83 = [v80 textRangeFromPosition:v77 toPosition:v81];
      if (!v83)
      {
        v78 = 256;
LABEL_66:

        goto LABEL_67;
      }

      v84 = v83;
      v85 = [v80 beginningOfDocument];
      v86 = [v84 start];
      v125 = [v80 offsetFromPosition:v85 toPosition:v86];

      v87 = [v84 start];
      v88 = [v84 end];
      v89 = [v80 offsetFromPosition:v87 toPosition:v88];

      [v123 deleteCharactersInRange_];
      v78 = 0;
LABEL_65:

      v82 = v84;
      a1 = v128;
      goto LABEL_66;
    }

    v78 = 256;
  }

  else
  {
    v78 = 0;
  }

LABEL_69:
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(v3 + v25);
  *(v3 + v25) = 0x8000000000000000;
  sub_188EA1248(v78 | v41, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + v25) = v129;
  swift_endAccess();
  return sub_188A3F5FC(v13, &qword_1EA937078);
}

uint64_t sub_18915D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937078);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  sub_18915C5D8(a1);
  v14 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_188E8BEC0(a1);
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
      v21 = *(v20 - 8);
      sub_189162F30(v19 + *(v21 + 72) * v18, v13, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);

      (*(v21 + 56))(v13, 0, 1, v20);
      goto LABEL_6;
    }
  }

  v20 = type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
LABEL_6:
  sub_188A3F29C(v13, v10, &qword_1EA937078);
  type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration(0);
  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    sub_188A3F5FC(v10, &qword_1EA937078);
    v22 = sub_18A4A2668();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v7, 1, 1, v22);
    sub_18A4A2658();
    sub_188A3F5FC(v13, &qword_1EA937078);
    result = (*(v23 + 48))(v7, 1, v22);
    if (result != 1)
    {
      return sub_188A3F5FC(v7, &unk_1EA93E6E0);
    }
  }

  else
  {
    sub_188A3F5FC(v13, &qword_1EA937078);
    v25 = *(v20 + 24);
    v26 = sub_18A4A2668();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v7, &v10[v25], v26);
    sub_189163C68(v10, type metadata accessor for IntelligenceUI.PromptEntryView.AmbiguityAppearanceConfiguration);
    (*(v27 + 56))(v7, 0, 1, v26);
    return (*(v27 + 32))(a2, v7, v26);
  }

  return result;
}

void sub_18915DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, char **a9, void *a10)
{
  v88 = a8;
  v95 = a3;
  v96 = a2;
  v85 = sub_18A4A2668();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v80 = v78 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v79 = v78 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320);
  v84 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v87 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = v78 - v21;
  v22 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v89 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v91 = v78 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v78 - v27;
  v93 = sub_18A4A29D8();
  v94 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v78 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a5 + 16);
  v90 = a7;
  if (v30)
  {
    v31 = (a5 + 32);

    v32 = a1;
    do
    {
      v33 = *v31;
      v34 = sub_188B00858(v33);
      if (v35)
      {
        v36 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = v32;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_188FA357C();
          v32 = *&v98[0];
        }

        sub_188A55538((*(v32 + 56) + 32 * v36), v102);
        sub_188F9E614(v36, v32);
      }

      else
      {

        memset(v102, 0, sizeof(v102));
      }

      sub_188A3F5FC(v102, &qword_1EA934050);
      ++v31;
      --v30;
    }

    while (v30);
  }

  else
  {

    v32 = a1;
  }

  v38 = swift_isUniquelyReferenced_nonNull_native();
  *&v102[0] = v32;
  sub_189163FA8(a6, sub_189038230, 0, v38, v102);

  v39 = *&v102[0];
  if (!*(a1 + 16) || (v40 = sub_188B00858(@"UITextItemTagAttribute"), (v41 & 1) == 0))
  {
    v43 = v95;
LABEL_16:
    v44 = v96;
    goto LABEL_17;
  }

  sub_188A55598(*(a1 + 56) + 32 * v40, v102);
  sub_188A55538(v102, &v103);
  sub_188A55598(&v103, v102);
  v42 = swift_dynamicCast();
  v43 = v95;
  v44 = v96;
  if ((v42 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);
    goto LABEL_17;
  }

  v45 = *(&v98[0] + 1);
  sub_18A4A2978();
  v46 = v94;
  v47 = v93;
  if ((*(v94 + 48))(v28, 1, v93) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);

    sub_188A3F5FC(v28, &qword_1EA93A828);
LABEL_17:
    type metadata accessor for Key(0);
    sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
    v48 = sub_18A4A7088();

    [a10 setAttributes:v48 range:{v44, v43}];

    return;
  }

  v78[1] = v45;
  v49 = v92;
  (*(v46 + 32))(v92, v28, v47);
  v50 = v91;
  (*(v46 + 16))(v91, v49, v47);
  v51 = v90;
  if (!*(v90 + 16) || (v52 = sub_188E8BEC0(v50), v46 = v94, (v53 & 1) == 0))
  {

    sub_189163C68(v50, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    (*(v46 + 8))(v92, v47);
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);
    goto LABEL_17;
  }

  sub_188FA95D0(*(v51 + 56) + 72 * v52, v102);
  sub_189162F30(v50, v89, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  v54 = v88;
  v55 = *&v88[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
  v56 = [v55 beginningOfDocument];
  v57 = &selRef_playsNicelyWithGestures;
  v58 = [v55 positionFromPosition:v56 offset:v44];
  if (!v58)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFADD__(v44, v43))
  {
    __break(1u);
LABEL_37:
    v54 = sub_188E4CB54(0, *(v54 + 2) + 1, 1, v54);
    *v57 = v54;
LABEL_33:
    v76 = *(v54 + 2);
    v75 = *(v54 + 3);
    if (v76 >= v75 >> 1)
    {
      *v57 = sub_188E4CB54(v75 > 1, v76 + 1, 1, v54);
    }

    sub_188A3F5FC(v46, &qword_1EA934320);
    sub_189162F98(v102);
    sub_189163C68(v91, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    (*(v94 + 8))(v92, v93);
    __swift_destroy_boxed_opaque_existential_0Tm(&v103);
    v77 = *v57;
    *(v77 + 2) = v76 + 1;
    sub_188A3F704(v28, &v77[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v76], &qword_1EA934320);
    goto LABEL_16;
  }

  v59 = v58;
  v60 = [v55 positionFromPosition:v56 offset:v44 + v43];
  if (!v60)
  {
    goto LABEL_39;
  }

  v61 = v60;
  v62 = [v55 textRangeFromPosition:v59 toPosition:v60];

  if (v62)
  {

    sub_188FA95D0(v102, v98);
    if (v100)
    {
      sub_188A55538(v98, &v101);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
    }

    else
    {
      sub_188A55538(v98, &v101);
    }

    v28 = v87;
    v46 = v86;
    sub_18916731C(v89, v86, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    v63 = v81;
    *(v46 + *(v81 + 28)) = v62;
    sub_188A55538(&v101, (v46 + *(v63 + 32)));
    sub_188FA95D0(v102, v98);
    v64 = (v82 + 16);
    if (v100)
    {
      v65 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForResolvedAmbiguity;
      swift_beginAccess();
      (*v64)(v80, &v54[v65], v85);
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
      v66 = sub_18A4A70B8();
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v39;
      sub_188EC9588(v66, sub_189038230, 0, v67, &v97);

      v68 = v97;
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
    }

    else
    {
      v69 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForAmbiguity;
      swift_beginAccess();
      (*v64)(v79, &v54[v69], v85);
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
      v70 = sub_18A4A70B8();
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v97 = v39;
      sub_188EC9588(v70, sub_189038230, 0, v71, &v97);

      v68 = v97;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    sub_18915D678(v46, v83);
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
    v72 = sub_18A4A70B8();
    v57 = a9;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *&v98[0] = v68;
    sub_188EC9588(v72, sub_189038230, 0, v73, v98);

    sub_188A3F29C(v46, v28, &qword_1EA934320);
    v54 = *a9;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    *a9 = v54;
    if (v74)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_40:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_18915E788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
  v9 = sub_18A4A70A8();
  v8(v9, a3, a4, a5);
}

id sub_18915E858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  sub_18922250C(&v15 - v10);
  v12 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_188A3F5FC(v11, &qword_1EA9389F8);
  if (v13 != 1)
  {
    return [a6 removeAttribute:@"UITextItemTagAttribute" range:{a2, a3}];
  }

  return result;
}

uint64_t sub_18915E980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, size_t *a7, size_t *a8)
{
  v50 = a8;
  v49 = a7;
  v51 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320);
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v47 = &v46 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v24 = *(a5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v25 = [(size_t *)v24 beginningOfDocument];
  v26 = [(size_t *)v24 positionFromPosition:v25 offset:a2];
  if (!v26)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(a2, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [(size_t *)v24 positionFromPosition:v25 offset:a2 + a3];
  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = v28;
  v30 = [(size_t *)v24 textRangeFromPosition:v27 toPosition:v28];

  if (!v30)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v31 = v51;
  if (a6[2] && (v32 = sub_188E8BEC0(v51), (v33 & 1) != 0))
  {
    sub_188FA95D0(a6[7] + 72 * v32, v57);
  }

  else
  {
    memset(v57, 0, sizeof(v57));
    v58 = -1;
  }

  sub_188A3F29C(v57, v54, &qword_1EA937080);
  if (v56 == 255)
  {
    goto LABEL_25;
  }

  if (v56)
  {
    sub_188A55538(&v55, v53);
    sub_189162F30(v31, v17, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    sub_188A55598(v53, &v17[*(v13 + 32)]);
    *&v17[*(v13 + 28)] = v30;
    v8 = v48;
    sub_188A3F29C(v17, v48, &qword_1EA934320);
    v24 = v50;
    a6 = *v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = a6;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      v36 = a6[2];
      v35 = a6[3];
      if (v36 >= v35 >> 1)
      {
        *v24 = sub_188E4CB54(v35 > 1, v36 + 1, 1, a6);
      }

      sub_188A3F5FC(v17, &qword_1EA934320);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      sub_188A3F5FC(v57, &qword_1EA937080);
      v37 = *v24;
      *(v37 + 16) = v36 + 1;
      sub_188A3F704(v8, v37 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v36, &qword_1EA934320);
      return __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

LABEL_21:
    a6 = sub_188E4CB54(0, a6[2] + 1, 1, a6);
    *v24 = a6;
    goto LABEL_12;
  }

  sub_188A55538(v54, v53);
  sub_189162F30(v31, v23, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  sub_188A55598(v53, &v23[*(v13 + 32)]);
  *&v23[*(v13 + 28)] = v30;
  v39 = v47;
  sub_188A3F29C(v23, v47, &qword_1EA934320);
  v40 = v49;
  v41 = *v49;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v41;
  if ((v42 & 1) == 0)
  {
    v41 = sub_188E4CB54(0, v41[2] + 1, 1, v41);
    *v40 = v41;
  }

  v44 = v41[2];
  v43 = v41[3];
  if (v44 >= v43 >> 1)
  {
    *v40 = sub_188E4CB54(v43 > 1, v44 + 1, 1, v41);
  }

  sub_188A3F5FC(v23, &qword_1EA934320);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  sub_188A3F5FC(v57, &qword_1EA937080);
  v45 = *v40;
  *(v45 + 16) = v44 + 1;
  return sub_188A3F704(v39, v45 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v44, &qword_1EA934320);
}

uint64_t sub_18915EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v57 = a7;
  v68 = a1;
  v13 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for IntelligenceUI.PromptAmbiguity();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v54 - v17;
  v62 = sub_18A4A7D38();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v60 = &v54 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v55 = &v54 - v29;
  v30 = *(a5 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v31 = [v30 beginningOfDocument];
  v32 = [v30 positionFromPosition:v31 offset:a2];
  if (!v32)
  {
    goto LABEL_20;
  }

  if (__OFADD__(a2, a3))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v33 = v32;
  v34 = [v30 positionFromPosition:v31 offset:a2 + a3];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = v34;
  v36 = [v30 textRangeFromPosition:v33 toPosition:v34];

  if (!v36)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v37 = v68;
  if (*(a6 + 16) && (v38 = sub_188E8BEC0(v68), (v39 & 1) != 0))
  {
    sub_188FA95D0(*(a6 + 56) + 72 * v38, v74);
  }

  else
  {
    memset(v74, 0, 64);
    v74[64] = -1;
  }

  sub_188A3F29C(v74, v71, &qword_1EA937080);
  if (v73 == 255)
  {
    goto LABEL_23;
  }

  if (v73)
  {
    sub_188A55538(&v72, v70);
    sub_188A55598(v70, v69);
    v40 = v59;
    if (swift_dynamicCast())
    {
      (*(v22 + 56))(v40, 0, 1, a9);
      v41 = v56;
      (*(v22 + 32))(v56, v40, a9);
      v42 = v63;
      sub_189162F30(v37, v63, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v43 = v60;
      (*(v22 + 16))(v60, v41, a9);
      v44 = v65;
      sub_189178EFC(v42, v36, v43, a9, v65);
      v45 = v66;
      v46 = v67;
      (*(v66 + 16))(v64, v44, v67);
      sub_18A4A7648();
      sub_18A4A7618();
      (*(v45 + 8))(v44, v46);
      (*(v22 + 8))(v41, a9);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      sub_188A3F5FC(v74, &qword_1EA937080);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      sub_188A3F5FC(v74, &qword_1EA937080);
      (*(v22 + 56))(v40, 1, 1, a9);
      (*(v61 + 8))(v40, v62);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v71);
  }

  else
  {
    sub_188A55538(v71, v70);
    sub_188A55598(v70, v69);
    if (swift_dynamicCast())
    {
      (*(v22 + 56))(v21, 0, 1, a9);
      v47 = v55;
      (*(v22 + 32))(v55, v21, a9);
      v48 = v63;
      sub_189162F30(v37, v63, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
      v49 = v60;
      (*(v22 + 16))(v60, v47, a9);
      v50 = v65;
      sub_189178EFC(v48, v36, v49, a9, v65);
      v51 = v66;
      v52 = v67;
      (*(v66 + 16))(v64, v50, v67);
      sub_18A4A7648();
      sub_18A4A7618();
      (*(v51 + 8))(v50, v52);
      (*(v22 + 8))(v47, a9);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      return sub_188A3F5FC(v74, &qword_1EA937080);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      sub_188A3F5FC(v74, &qword_1EA937080);
      (*(v22 + 56))(v21, 1, 1, a9);
      return (*(v61 + 8))(v21, v62);
    }
  }
}

double IntelligenceUI.PromptEntryView.intrinsicContentSize.getter()
{
  [v0 bounds];
  [v0 sizeThatFits_];
  return -1.0;
}

CGSize __swiftcall IntelligenceUI.PromptEntryView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v3 = sub_18915AE10();
  v6 = v5 & 1;

  sub_1891591C8(v3, v4, v6, width, height);
  result.height = v8;
  result.width = v7;
  return result;
}

CGSize __swiftcall IntelligenceUI.PromptEntryView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  [v1 sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

double sub_18915F924()
{
  swift_beginAccess();
  swift_beginAccess();
  sub_18915983C();
  sub_18915983C();
  v2 = v1 * 0.235;
  [v0 contentScaleFactor];
  return UIEdgeInsetsIntegralWithScale(0.0, v2, 0.0, v2, v3) + 0.0;
}

Swift::Void __swiftcall IntelligenceUI.PromptEntryView.layoutSubviews()()
{
  v1 = v0;
  v207.receiver = v0;
  v207.super_class = type metadata accessor for IntelligenceUI.PromptEntryView(0);
  objc_msgSendSuper2(&v207, sel_layoutSubviews);
  [v0 bounds];
  sub_1891591C8(0, 1, 0, v2, v3);
  v5 = v4;
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11)
  {
    [v11 systemLayoutSizeFittingSize_];
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v5 - v12;
  v14 = sub_18915184C();
  v15 = &v14[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight];
  swift_beginAccess();
  *v15 = v13;
  v15[8] = 0;
  [v14 setNeedsLayout];

  v16 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView;
  v17 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView];
  [v1 bounds];
  [v17 setFrame_];

  [v1 bounds];
  v20 = v19;
  v21 = *&v1[v10];
  v205 = v13;
  if (v21)
  {
    v22 = v21;
    v23 = sub_189159798();
    [v23 setHidden_];

    v24 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerView;
    v25 = [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerView] superview];
    if (!v25 || (v26 = v25, sub_188A34624(0, &qword_1ED48F680), v27 = v1, v28 = sub_18A4A7C88(), v26, v27, (v28 & 1) == 0))
    {
      [v1 addSubview_];
    }

    [v1 bounds];
    v31 = *&v1[v10];
    if (v31)
    {
      [v31 systemLayoutSizeFittingSize_];
      v33 = v32;
      v35 = v34;
    }

    else
    {
      v33 = 0.0;
      v35 = 0.0;
    }

    v38 = &selRef_setEnqueuedWillEnterForegroundActions_;
    [v1 bounds];
    Width = CGRectGetWidth(v208);
    if ((*&Width & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v33;
    }

    else
    {
      v40 = Width;
    }

    if ((~*&Width & 0x7FF0000000000000) != 0)
    {
      v41 = Width;
    }

    else
    {
      v41 = v40;
    }

    [*&v1[v24] setFrame_];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v1[v24] bounds];
    [v22 setFrame_];
    [v22 frame];
    MaxY = CGRectGetMaxY(v209);
    v42 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessorySeparatorView];
    v43 = [v42 superview];
    if (!v43 || (v44 = v43, sub_188A34624(0, &qword_1ED48F680), v45 = v1, v46 = sub_18A4A7C88(), v44, v45, (v46 & 1) == 0))
    {
      [v1 addSubview_];
    }

    [v42 setHidden_];
    [v1 bounds];
    [v42 setFrame_];
    [*&v1[v16] layoutIfNeeded];
    [*&v1[v16] _cornerRadius];
    v48 = v47;
    v49 = *&v1[v24];
    v50 = sub_1891597AC();
    [v49 setMaskView_];

    v51 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerMaskView;
    v52 = *&v1[v24];
    v53 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerMaskView];
    [v52 bounds];
    [v53 setBounds_];

    v54 = [*&v1[v51] shapeLayer];
    [v54 setAnchorPoint_];

    v55 = [*&v1[v51] shapeLayer];
    [*&v1[v24] bounds];
    v60 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:v56 cornerRadii:{v57, v58, v59, v48, v48}];
    v61 = [v60 CGPath];

    [v55 setPath_];
  }

  else
  {
    MaxY = v18;
    v37 = sub_189159798();
    [v37 setHidden_];

    [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessorySeparatorView] setHidden_];
    v38 = &selRef_setEnqueuedWillEnterForegroundActions_;
  }

  [v1 bounds];
  v62 = CGRectGetWidth(v211);
  [v1 bounds];
  v63 = CGRectGetHeight(v212) - MaxY;
  v64 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_containerScrollView];
  v65 = sub_18915F924();
  v203 = v63;
  [v64 v38[400]];
  [v1 bounds];
  v70 = v69;
  v72 = v71;
  v73 = &v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding];
  swift_beginAccess();
  v74 = v73[1];
  v75 = v73[3];
  v76 = sub_18915F924();
  v80 = UIRectInset(0.0, 0.0, v70, v72, v76, v79, v78, v77);
  v84 = UIRectInset(v80, v81, v82, v83, 0.0, v75, 0.0, v74);
  v86 = v85;
  v88 = v87;
  v90 = v89;
  sub_18915AE10();
  v92 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
  if ((v93 & 1) != 0 || v91 != 1)
  {
    [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] sizeThatFits_];
    v102 = v101;
    v97 = v103;
    v214.origin.x = v84;
    v214.origin.y = v86;
    v214.size.width = v88;
    v214.size.height = v90;
    v104 = CGRectGetWidth(v214);
    if ((*&v104 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v105 = v102;
    }

    else
    {
      v105 = v104;
    }

    if ((~*&v104 & 0x7FF0000000000000) != 0)
    {
      v100 = v104;
    }

    else
    {
      v100 = v105;
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] sizeThatFits_];
    v95 = v94;
    v97 = v96;
    v213.origin.x = v84;
    v213.origin.y = v86;
    v213.size.width = v88;
    v213.size.height = v90;
    v98 = CGRectGetWidth(v213);
    if ((*&v95 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = v95;
    }

    if ((~*&v95 & 0x7FF0000000000000) != 0)
    {
      v99 = v95;
    }

    if (v95 >= v98)
    {
      v100 = v99;
    }

    else
    {
      v100 = v98;
    }
  }

  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = v100;
  v215.size.height = v97;
  v216 = CGRectOffset(v215, v73[1], *v73);
  x = v216.origin.x;
  y = v216.origin.y;
  v108 = v216.size.width;
  height = v216.size.height;
  v110 = sub_18915AE10();
  v111 = v205;
  if ((v112 & 1) != 0 || v110 < 2)
  {
    v217.origin.x = 0.0;
    v217.origin.y = 0.0;
    v217.size.width = v62;
    v217.size.height = v203;
    if (v97 >= CGRectGetHeight(v217))
    {
      v113 = height;
    }

    else
    {
      [v92 _currentScreenScale];
      x = UIRectCenteredYInRectScale(x, y, v108, height, 0.0, 0.0, v62, v203, v115);
      y = v116;
      v108 = v117;
    }

    v114 = v62;
    v111 = v205;
  }

  else
  {
    v113 = height;
    v114 = v62;
  }

  v200 = v113;
  [v92 v38[400]];
  v118 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
  swift_beginAccess();
  if (v1[v118] == 1)
  {
    v119 = sub_189159720();
    v120 = [v119 superview];

    if (!v120 || (sub_188A34624(0, &qword_1ED48F680), v121 = v64, v122 = sub_18A4A7C88(), v120, v121, (v122 & 1) == 0))
    {
      [v64 addSubview_];
    }

    [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView] v38[400]];
  }

  v199 = v108;
  [v64 setContentSize_];
  sub_18915983C();
  rect = v123;
  sub_18915983C();
  v125 = v124;
  [v1 bounds];
  v126 = CGRectGetWidth(v218);
  [v1 bounds];
  v127 = CGRectGetHeight(v219) - v111;
  sub_18915AE10();
  v129 = 0.0;
  if ((v130 & 1) == 0 && v128 == 1)
  {
    v129 = UIRectCenteredRect(0.0, v127, v126, v111, 0.0, 0.0, v114);
    v127 = v131;
    v126 = v132;
    v111 = v133;
  }

  v134 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_buttonContainerView];
  [v134 v38[400]];
  v135 = [v1 traitCollection];
  v136 = [v135 layoutDirection];

  if (v136 == 1)
  {
    v137 = &OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton;
  }

  else
  {
    v137 = &OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton;
  }

  v206 = *&v1[*v137];
  v138 = [v1 traitCollection];
  v139 = [v138 layoutDirection];

  if (v139 == 1)
  {
    v140 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible;
  }

  else
  {
    v140 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonVisible;
  }

  v141 = &v1[v140];
  swift_beginAccess();
  v202 = x;
  v204 = y;
  if (*v141 == 1)
  {
    v142 = v206;
    [v142 setHidden_];
    sub_18915983C();
    v144 = v143 * 0.235;
    v220.origin.x = 0.0;
    v220.origin.y = 0.0;
    v220.size.width = rect;
    v220.size.height = v125;
    v221 = CGRectOffset(v220, v144, 0.0);
    v145 = v221.origin.x;
    v198 = v221.origin.y;
    v146 = v221.size.width;
    v147 = v221.size.height;
    [v134 bounds];
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v154 = v125;
    v156 = v155;
    [v134 _currentScreenScale];
    v157 = v156;
    v125 = v154;
    [v142 setFrame_];
  }

  else
  {
    [v206 setHidden_];
  }

  v159 = [v1 traitCollection];
  v160 = [v159 layoutDirection];

  if (v160 == 1)
  {
    v161 = &OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton;
  }

  else
  {
    v161 = &OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton;
  }

  v162 = *&v1[*v161];
  v163 = [v1 traitCollection];
  v164 = [v163 layoutDirection];

  if (v164 == 1)
  {
    v165 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonVisible;
  }

  else
  {
    v165 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible;
  }

  v166 = &v1[v165];
  swift_beginAccess();
  if (*v166 == 1)
  {
    v167 = v162;
    [v167 setHidden_];
    [v1 bounds];
    v168 = CGRectGetWidth(v222) - rect;
    sub_18915983C();
    v170 = v168 + v169 * -0.235;
    v223.origin.x = 0.0;
    v223.origin.y = 0.0;
    v223.size.width = rect;
    v223.size.height = v125;
    v224 = CGRectOffset(v223, v170, 0.0);
    v171 = v224.origin.x;
    v172 = v224.origin.y;
    v173 = v224.size.width;
    v174 = v224.size.height;
    [v134 bounds];
    v176 = v175;
    v178 = v177;
    v180 = v179;
    v182 = v181;
    [v134 _currentScreenScale];
    [v167 setFrame_];
  }

  else
  {
    [v162 setHidden_];
  }

  v184 = [v92 text];
  if (v184)
  {
    v185 = v184;
    sub_18A4A7288();

    v186 = sub_18A4A7358();

    v187 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView];
    if (v186 <= 0)
    {
      [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView] setHidden_];
      sub_18915B9E8();
      v188 = v225.origin.x;
      v189 = v225.origin.y;
      v190 = v225.size.width;
      v191 = v225.size.height;
      MaxX = CGRectGetMaxX(v225);
      v226.origin.x = v202;
      v226.origin.y = v204;
      v226.size.width = v199;
      v226.size.height = v200;
      if (CGRectGetMaxX(v226) < MaxX)
      {
        v227.origin.x = v188;
        v227.origin.y = v189;
        v227.size.width = v190;
        v227.size.height = v191;
        v193 = CGRectGetMaxX(v227);
        v228.origin.x = v202;
        v228.origin.y = v204;
        v228.size.width = v199;
        v228.size.height = v200;
        v190 = v190 - (v193 - CGRectGetMaxX(v228));
      }

      v229.origin.x = v188;
      v229.origin.y = v189;
      v229.size.width = v190;
      v229.size.height = v191;
      v194 = CGRectGetMaxY(v229);
      v230.origin.x = v202;
      v230.origin.y = v204;
      v230.size.width = v199;
      v230.size.height = v200;
      if (CGRectGetMaxY(v230) < v194)
      {
        v231.origin.x = v188;
        v231.origin.y = v189;
        v231.size.width = v190;
        v231.size.height = v191;
        v195 = CGRectGetMaxY(v231);
        v232.origin.x = v202;
        v232.origin.y = v204;
        v232.size.width = v199;
        v232.size.height = v200;
        v191 = v191 - (v195 - CGRectGetMaxY(v232));
      }

      [v187 setFrame_];
      v196 = *&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel];
      [v187 bounds];
      [v196 setFrame_];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView] setHidden_];
    }

    if (v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] == 1)
    {
      swift_beginAccess();

      sub_18915C1A8(v197);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall IntelligenceUI.PromptEntryView.textViewShouldBeginEditing(_:)(UITextView *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior;
  swift_beginAccess();
  if (*(v2 + v4))
  {
    if (*(v2 + v4) == 1)
    {
      v5 = 9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_18915AE10();
    if (v7 & 1 | (v6 != 1))
    {
      v5 = 0;
    }

    else
    {
      v5 = 9;
    }
  }

  [(UITextView *)a1 setReturnKeyType:v5];
  [(UITextView *)a1 setEnablesReturnKeyAutomatically:[(UITextView *)a1 returnKeyType]== 9];
  v8 = sub_18915184C();
  if (v8[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect] == 1)
  {
    if (qword_1EA92FCE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
    v10 = __swift_project_value_buffer(v9, qword_1EA92FCF0);
    sub_188F4E704(v10);
  }

  v11 = v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 32))(v2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

Swift::Void __swiftcall IntelligenceUI.PromptEntryView.textViewDidBeginEditing(_:)(UITextView *a1)
{
  v2 = v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 40))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall IntelligenceUI.PromptEntryView.textViewDidChange(_:)(UITextView *a1)
{
  sub_18914F8F4();
  v3 = &v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  [*&v1[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton] setNeedsUpdateConfiguration];
  [(UITextView *)a1 invalidateIntrinsicContentSize];
  [v1 invalidateIntrinsicContentSize];
  [v1 setNeedsLayout];
}

Swift::Bool __swiftcall IntelligenceUI.PromptEntryView.textView(_:shouldChangeTextIn:replacementText:)(UITextView *_, __C::_NSRange shouldChangeTextIn, Swift::String replacementText)
{
  object = replacementText._object;
  countAndFlagsBits = replacementText._countAndFlagsBits;
  length = shouldChangeTextIn.length;
  location = shouldChangeTextIn.location;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9389F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (countAndFlagsBits == 10 && object == 0xE100000000000000 || (sub_18A4A86C8()) && (sub_18915B810() & 1) == 0)
  {
    v41 = 0;
    goto LABEL_30;
  }

  v51 = v13;
  if (sub_18A4A7358() >= 1)
  {
    v16 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled;
    swift_beginAccess();
    if (v3[v16] == 1)
    {
      v3[v16] = 0;
      sub_189151EA0(0);
    }
  }

  v53 = _;
  v17 = [(UITextView *)_ text];
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = v17;
  v49 = v15;
  v50 = v12;
  sub_18A4A7288();

  v52 = length;
  LOBYTE(v17) = sub_18A4A7908();
  if (v19)
  {
LABEL_33:
    __break(1u);
    return v17;
  }

  v20 = sub_18A4A7448();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = sub_1891643B4(v20, v22, v24, v26, countAndFlagsBits, object);

  if (v27)
  {
LABEL_24:
    v41 = 1;
    goto LABEL_30;
  }

  v47 = v11;
  v28 = [(UITextView *)v53 textStorage];
  v48 = &v46;
  v59 = MEMORY[0x1E69E7CC8];
  MEMORY[0x1EEE9AC00](v28);
  *(&v46 - 2) = &v59;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_18916742C;
  *(v29 + 24) = &v46 - 4;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1891673C4;
  *(v30 + 24) = v29;
  v57 = sub_1891673C8;
  v58 = v30;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v55 = sub_18914E7A8;
  v56 = &block_descriptor_124_3;
  v31 = _Block_copy(&aBlock);

  [(NSTextStorage *)v28 enumerateAttribute:@"UITextItemTagAttribute" inRange:location options:v52 usingBlock:0, v31];

  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v33 = sub_188F998E4(v59);
  if (!*(v33 + 16))
  {

    goto LABEL_24;
  }

  v34 = [(UITextView *)v53 selectedTextRange];
  if (!v34)
  {
    goto LABEL_29;
  }

  v35 = v34;
  v36 = [(UITextRange *)v34 isEmpty];

  if (!v36)
  {
    goto LABEL_29;
  }

  v37 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v37 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v37 || v52 != 1 || *(v33 + 16) != 1)
  {
    goto LABEL_29;
  }

  v38 = v47;
  sub_189072940(v33, v47);
  if ((*(v51 + 48))(v38, 1, v50) == 1)
  {
    v39 = &qword_1EA9389F8;
    p_aBlock = v38;
LABEL_28:
    sub_188A3F5FC(p_aBlock, v39);
LABEL_29:
    sub_189153D08(v33);

    v41 = 1;
    v3[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
    v44 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
    swift_beginAccess();
    *&v3[v44] = MEMORY[0x1E69E7CC8];

    [v3 setNeedsLayout];
    goto LABEL_30;
  }

  v42 = v38;
  v43 = v49;
  sub_18916731C(v42, v49, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  sub_189154794(v43, 1, &aBlock);
  sub_189163C68(v43, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  if (!v56)
  {
    v39 = &qword_1EA934050;
    p_aBlock = &aBlock;
    goto LABEL_28;
  }

  sub_188A3F5FC(&aBlock, &qword_1EA934050);
  v41 = 0;
LABEL_30:
  LOBYTE(v17) = v41;
  return v17;
}

uint64_t IntelligenceUI.PromptEntryView.canGenerateTargetedPreviews()()
{
  sub_18A4A76A8();
  *(v0 + 16) = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18916174C, v2, v1);
}

uint64_t sub_18916174C()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_189161924(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_18A4A76A8();
  v1[4] = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_1891619C0, v3, v2);
}

uint64_t sub_1891619C0()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_189161A60, v3, v2);
}

uint64_t sub_189161A60()
{
  v1 = *(v0 + 40);

  v1[2](v1, 1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t IntelligenceUI.PromptEntryView.canGenerateTargetedPreviewForChunk(_:)()
{
  sub_18A4A76A8();
  *(v0 + 16) = sub_18A4A7698();
  v2 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_189167448, v2, v1);
}

uint64_t sub_189161CF8(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = sub_18A4A76A8();
  v2[4] = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_189161D94, v4, v3);
}

uint64_t sub_189161D94()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_1891673DC, v3, v2);
}

uint64_t IntelligenceUI.PromptEntryView.updatedTargetedPreviewGeometry(for:previous:)(double a1, double a2, double a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_18A4A76A8();
  *(v4 + 48) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903DE6C, v6, v5);
}

uint64_t sub_189162080(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 56) = sub_18A4A76A8();
  *(v6 + 64) = sub_18A4A7698();
  v8 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18903E128, v8, v7);
}

uint64_t IntelligenceUI.PromptEntryView.targetedPreview(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_188EC93B4;

  return sub_189164DAC();
}

uint64_t sub_18916234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_18A4A76A8();
  v3[5] = sub_18A4A7698();
  v5 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_1891623E8, v5, v4);
}

uint64_t sub_1891623E8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_188EC8338;

  return sub_189164DAC();
}

uint64_t IntelligenceUI.PromptEntryView.updateTextChunkVisibilityForAnimation(_:visible:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_188C482B4;

  return (sub_189164FD0)(a2);
}

uint64_t sub_1891626F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_18A4A76A8();
  *(v4 + 40) = sub_18A4A7698();
  v6 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_189162794, v6, v5);
}

uint64_t sub_189162794()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_188EC8BA4;
  v7 = *(v0 + 64);

  return sub_189164FD0(v7);
}

id sub_18916286C(double a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    [*(v4 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v5 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v6 = swift_allocObject();
    *(v6 + 16) = v8;

    *v1 = v6;
  }

  return [v5 setImageReservation_];
}

uint64_t sub_189162964(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_188C48500;

  return v6();
}

uint64_t sub_189162A4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_188C48500;

  return v7();
}

uint64_t sub_189162B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934728);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_188A3F29C(a3, v23 - v10, &qword_1EA934728);
  v12 = sub_18A4A76C8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_188A3F5FC(v11, &qword_1EA934728);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_18A4A76B8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_18A4A7678();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_18A4A7318() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_188A3F5FC(a3, &qword_1EA934728);

    return v21;
  }

LABEL_8:
  sub_188A3F5FC(a3, &qword_1EA934728);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_189162E30(void *a1)
{
  v3 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = sub_189159798();
    [v7 addSubview_];
  }

  return [v1 invalidateIntrinsicContentSize];
}

uint64_t sub_189162F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1891630B8(int a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *(v6 + 16);
  [a2 textContainerOrigin];
  v13 = v12;
  v15 = v14;
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  *v11 = CGRectOffset(v17, v13, v15);
  return 1;
}

void sub_18916315C()
{
  if ((sub_18915ACF4() & 1) == 0)
  {
    v1 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible;
    swift_beginAccess();
    if (v0[v1] == 1)
    {
      if (v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty] == 1)
      {
        v2 = [*&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView] text];
        if (!v2)
        {
          __break(1u);
          goto LABEL_15;
        }

        v3 = v2;
        sub_18A4A7288();

        v4 = sub_18A4A7358();

        if (v4 <= 0)
        {
          sub_18915B738();
          return;
        }
      }

      v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty;
      swift_beginAccess();
      if (v0[v5] != 1)
      {
LABEL_10:
        v11 = &v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 1);
          ObjectType = swift_getObjectType();
          (*(v12 + 80))(v0, ObjectType, v12);
          swift_unknownObjectRelease();
        }

        return;
      }

      v6 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
      v7 = [v6 text];
      if (v7)
      {
        v8 = v7;
        sub_18A4A7288();

        v9 = sub_18A4A7358();

        if (v9 >= 1)
        {
          v10 = sub_18A4A7258();
          [v6 setText_];

          [v0 textViewDidChange_];
          return;
        }

        goto LABEL_10;
      }

LABEL_15:
      __break(1u);
    }
  }
}

id sub_189163364()
{
  swift_getObjectType();
  v1 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView];
  sub_18915599C();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2E8(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A70B8();
  type metadata accessor for Key(0);
  sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
  v3 = sub_18A4A7088();

  [v2 setTypingAttributes_];

  v4 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton];
  v5 = [v4 configuration];
  if (v5)
  {
    v6 = v5;
    [v5 imageReservation];
    if (v7)
    {
      v8 = [v0 traitCollection];
      sub_18915048C(v8, v18);

      v9 = *(v18[0] + 16);
      [v4 setConfiguration_];
    }
  }

  v10 = *&v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton];
  v11 = [v10 configuration];
  if (v11)
  {
    v12 = v11;
    [v11 imageReservation];
    if (v13)
    {
      v14 = [v0 traitCollection];
      sub_189150C10(v14, v18);

      v15 = *(v18[0] + 16);
      [v10 setConfiguration_];
    }
  }

  sub_18914E9A8();
  swift_beginAccess();

  sub_18915C1A8(v16);

  [v2 invalidateIntrinsicContentSize];
  [v0 invalidateIntrinsicContentSize];
  return [v0 setNeedsLayout];
}

void _s5UIKit14IntelligenceUIO15PromptEntryViewC5coderAESgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholder);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderConfiguration);
  if (qword_1EA92FE50 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v3 = qword_1EA92FE60;
    v4 = unk_1EA92FE68;
    *v2 = qword_1EA92FE60;
    *(v2 + 1) = v4;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView;
    _s15PromptEntryViewC19PromptEntryTextViewCMa();
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v7 = v3;
    v8 = v4;
    *(v0 + v5) = [v6 initWithFrame_];
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessoryView) = 0;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_returnBehavior) = 0;
    v9 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_visibleLineLimit;
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v10 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_characterLimit;
    *v10 = 0;
    *(v10 + 8) = 1;
    v11 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButton;
    *(v0 + v11) = sub_18914FBD8();
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonVisible) = 1;
    v12 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButton;
    *(v0 + v12) = sub_18914FE70();
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isTrailingButtonVisible) = 1;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonHiddenWhenEmpty) = 1;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_trailingButtonShowsClearButtonWhenNotEmpty) = 0;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isLeadingButtonConfiguredAsToggle) = 0;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_leadingButtonToggleState) = 1;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___backgroundView) = 0;
    v13 = (v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textViewPadding);
    *v13 = xmmword_18A66A900;
    v13[1] = xmmword_18A66A900;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_isPonderingEffectEnabled) = 0;
    v14 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForAmbiguity;
    if (qword_1EA92FE00 != -1)
    {
      swift_once();
    }

    v15 = sub_18A4A2668();
    v16 = __swift_project_value_buffer(v15, qword_1EA92FE10);
    swift_beginAccess();
    v17 = *(*(v15 - 8) + 16);
    v17(v0 + v14, v16, v15);
    v18 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_styleAttributesForResolvedAmbiguity;
    if (qword_1EA92FDD8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v15, qword_1EA92FDE8);
    swift_beginAccess();
    v17(v0 + v18, v19, v15);
    v20 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__privatePressGestureRecognizerDelegate;
    *(v0 + v20) = [objc_allocWithZone(_s15PromptEntryViewC37PrivatePressGestureRecognizerDelegateCMa()) init];
    v21 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderLabel;
    *(v0 + v21) = [objc_allocWithZone(UILabel) initWithFrame_];
    v22 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_accessorySeparatorView;
    *(v0 + v22) = [objc_allocWithZone(UIView) initWithFrame_];
    v23 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_containerScrollView;
    *(v0 + v23) = [objc_allocWithZone(UIScrollView) initWithFrame_];
    v24 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_buttonContainerView;
    *(v0 + v24) = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
    v25 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_placeholderEffectView;
    *(v0 + v25) = [objc_allocWithZone(UIVisualEffectView) init];
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___ponderingEffectView) = 0;
    v26 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_nonPonderingBackgroundStyle;
    v27 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
    (*(*(v27 - 8) + 56))(v0 + v26, 1, 1, v27);
    v2 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_activePonderEffect;
    v28 = type metadata accessor for UITextEffectView.EffectID();
    (*(*(v28 - 8) + 56))(&v2[v0], 1, 1, v28);
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerView) = 0;
    *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView____lazy_storage___accessoryContainerMaskView) = 0;
    v29 = [objc_opt_self() sharedInstance];
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

  v30 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView__trailingButtonActivatesDictationWhenEmpty;
  v31 = v29;
  v32 = [v29 dictationSearchFieldUIEnabled];

  *(v0 + v30) = v32;
  v33 = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_imageAttributeStates) = v33;
  *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations) = v33;
  *(v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate) = 0;
  v34 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_modifierKeyRecognizer;
  *(v0 + v34) = [objc_allocWithZone(_UIPressGestureRecognizer) initWithTarget:0 action:0];
  v35 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_backgroundCornerRadius;
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_189163C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s5UIKit14IntelligenceUIO15PromptEntryViewC8DelegatePAAE06prompteF0_6insertyAE_So16UITextSuggestionCtF_0(uint64_t a1, id a2)
{
  v4 = [a2 inputText];
  if (!v4)
  {
    return;
  }

  v26 = v4;
  v5 = [a2 searchText];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = sub_18A4A7288();
  v9 = v8;

  v10 = *(a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v11 = [v10 selectedTextRange];
  if (!v11)
  {

LABEL_18:
    [*(a1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView) insertText_];
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 end];
  v14 = sub_18A4A7358();
  if (__OFSUB__(0, v14))
  {
    __break(1u);
    return;
  }

  v15 = [v10 positionFromPosition:v13 offset:-v14];

  if (!v15)
  {
    v16 = [v10 beginningOfDocument];
    if (!v16)
    {

      goto LABEL_19;
    }

    v15 = v16;
  }

  v17 = [v12 end];
  v18 = [v10 textRangeFromPosition:v15 toPosition:v17];

  if (v18)
  {
    v19 = [v10 textInRange_];
    if (v19)
    {
      v20 = v19;
      v21 = sub_18A4A7288();
      v23 = v22;

      if (v7 == v21 && v9 == v23)
      {

LABEL_26:
        [v10 replaceRange:v18 withText:v26];

        goto LABEL_19;
      }

      v25 = sub_18A4A86C8();

      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_19:
}

unint64_t sub_189163FA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_189037C84(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  sub_188A55538(v44, v42);
  v13 = *a5;
  result = sub_188B00858(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_188B334E0(v19, a4 & 1);
    result = sub_188B00858(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for Key(0);
    result = sub_18A4A87A8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_188FA357C();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_188A55598(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);

    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm(v24 + v23);
    sub_188A55538(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_188A55538(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_189037C84(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        sub_188A55538(v44, v42);
        v32 = *a5;
        result = sub_188B00858(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_188B334E0(v36, 1);
          result = sub_188B00858(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_188A55598(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);

          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm(v31 + v30);
          sub_188A55538(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_188A55538(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_189037C84(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    sub_188E036A4();
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF13DidEndEditingyySo06UITextF0CF_0()
{
  v1 = v0 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = sub_18915184C();
  if (v4[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect] == 1)
  {
    if (qword_1EA92FCB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
    v6 = __swift_project_value_buffer(v5, qword_1EA92FCC8);
    sub_188F4E704(v6);
  }
}

uint64_t sub_1891643B4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_18A4A8608() & 1;
  }
}

id _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF18DidChangeSelectionyySo06UITextF0CF_0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v0[OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_needsStyleUpdate] = 1;
  v5 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_customConfigurations;
  swift_beginAccess();
  *&v1[v5] = MEMORY[0x1E69E7CC8];

  return [v1 setNeedsLayout];
}

id _s5UIKit14IntelligenceUIO15PromptEntryViewC04textF0_20menuConfigurationFor11defaultMenuSo010UITextItemlI0CSgSo0mF0C_So0mN0CSo6UIMenuCtF_0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93E6C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v50 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934320);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v50 - v7;
  v8 = type metadata accessor for IntelligenceUI.PromptAmbiguityID();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v50 - v14;
  v59 = sub_18A4A29D8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UITextItem.Content();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2;
  v21 = v2 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v23 = *(v21 + 8);
  UITextItem.content.getter(v19);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    swift_unknownObjectRelease();
    sub_189163C68(v19, type metadata accessor for UITextItem.Content);
    return 0;
  }

  sub_18A4A2978();

  v24 = v58;
  v25 = v59;
  if ((*(v58 + 48))(v15, 1, v59) == 1)
  {
    swift_unknownObjectRelease();
    sub_188A3F5FC(v15, &qword_1EA93A828);
    return 0;
  }

  v51 = v23;
  (*(v24 + 32))(v57, v15, v25);
  v26 = [a2 range];
  v28 = v27;
  v29 = [a1 beginningOfDocument];
  result = [a1 positionFromPosition:v29 offset:v26];
  if (!result)
  {
    goto LABEL_25;
  }

  if (__OFADD__(v26, v28))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = result;
  result = [a1 positionFromPosition:v29 offset:&v26[v28]];
  v31 = v59;
  if (!result)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = [a1 textRangeFromPosition:v30 toPosition:result];

  v34 = v56;
  if (!v33)
  {
    (*(v58 + 8))(v57, v31);
    swift_unknownObjectRelease();
    return 0;
  }

  v35 = v58;
  (*(v58 + 16))(v56, v57, v31);
  v36 = OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_ambiguitiesByID;
  swift_beginAccess();
  v37 = *(v20 + v36);
  if (!*(v37 + 16))
  {
LABEL_18:
    swift_unknownObjectRelease();

    sub_189163C68(v34, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    (*(v35 + 8))(v57, v31);
    return 0;
  }

  v38 = sub_188E8BEC0(v34);
  if ((v39 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_188FA95D0(*(v37 + 56) + 72 * v38, v61);

  v64[2] = v62[0];
  v64[3] = v62[1];
  v65 = v63;
  v64[0] = v61[0];
  v64[1] = v61[1];
  sub_189162F30(v34, v10, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  sub_188FA95D0(v64, v61);
  if (v63)
  {
    sub_188A55538(v61, v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  else
  {
    sub_188A55538(v61, v60);
  }

  v40 = v55;
  v41 = v54;
  v42 = v53;
  sub_18916731C(v10, v54, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  *(v41 + *(v42 + 28)) = v33;
  sub_188A55538(v60, (v41 + *(v42 + 32)));
  sub_188FA95D0(v64, v61);
  if (v63 == 1)
  {
    sub_188A55538(v62, v60);
    sub_189162F30(v34, v40, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
    *(v40 + *(v42 + 28)) = v33;
    sub_188A55538(v60, (v40 + *(v42 + 32)));
    (*(v52 + 56))(v40, 0, 1, v42);
    v43 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
  }

  else
  {
    (*(v52 + 56))(v40, 1, 1, v42);
    sub_189162F98(v61);
  }

  ObjectType = swift_getObjectType();
  v45 = (*(v51 + 56))(v20, v41, v40, ObjectType);
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 defaultPreview];
  v49 = [objc_opt_self() configurationWithPreview:v48 menu:v47];

  [v49 set:1 preferredElementDisplayMode:?];
  [v49 set:2 preferredExpression:?];

  swift_unknownObjectRelease();
  sub_188A3F5FC(v40, &qword_1EA93E6C8);
  sub_188A3F5FC(v41, &qword_1EA934320);
  sub_189162F98(v64);
  sub_189163C68(v34, type metadata accessor for IntelligenceUI.PromptAmbiguityID);
  (*(v58 + 8))(v57, v59);
  return v49;
}

uint64_t sub_189164DAC()
{
  *(v1 + 16) = v0;
  sub_18A4A76A8();
  *(v1 + 24) = sub_18A4A7698();
  v3 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_189164E44, v3, v2);
}

void sub_189164E44()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  if (v4)
  {

    sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Key(0);
    sub_188BEB2E8(&qword_1ED48E360, type metadata accessor for Key);
    v5 = sub_18A4A7088();

    v6 = [v1 _targetedPreviewForRange_withRenderingAttributes_];

    v7 = *(v0 + 8);

    v7(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_189164FD0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  sub_18A4A76A8();
  *(v2 + 24) = sub_18A4A7698();
  v4 = sub_18A4A7678();

  return MEMORY[0x1EEE6DFA0](sub_18916506C, v4, v3);
}

uint64_t sub_18916506C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);

  v3 = *(v1 + OBJC_IVAR____TtCO5UIKit14IntelligenceUI15PromptEntryView_textView);
  [v3 setHidden_];
  if ((v2 & 1) == 0)
  {
    v4 = [v3 beginningOfDocument];
    v5 = [v3 endOfDocument];
    v6 = [v3 textRangeFromPosition:v4 toPosition:v5];

    [v3 setSelectedTextRange_];
  }

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_1891651C4()
{
  result = qword_1EA93E5C0;
  if (!qword_1EA93E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E5C0);
  }

  return result;
}

unint64_t sub_18916521C()
{
  result = qword_1EA93E5C8;
  if (!qword_1EA93E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E5C8);
  }

  return result;
}

id keypath_set_141Tm(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v6[v7] = v5;
  return [v6 setNeedsLayout];
}

id keypath_set_147Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  swift_beginAccess();
  *(v8 + v9) = v7;
  return [*(v8 + *a6) setNeedsUpdateConfiguration];
}

uint64_t keypath_get_138Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

void sub_189165398()
{
  sub_18A4A2668();
  if (v0 <= 0x3F)
  {
    sub_1891667A8(319, qword_1ED491058, type metadata accessor for UIPromptBackgroundView.Configuration);
    if (v1 <= 0x3F)
    {
      sub_1891667A8(319, &qword_1ED490880, type metadata accessor for UITextEffectView.EffectID);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1891667A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18A4A7D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_189166824()
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1891668D8()
{
  sub_1890573A4();
  if (v0 <= 0x3F)
  {
    sub_18A4A2668();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_189166AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_189166AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_189166B4C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_189166B84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_188C48500;

  return sub_1891626F4(v2, v3, v5, v4);
}

uint64_t sub_189166C48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C48500;

  return sub_188C48048(a1, v4);
}

uint64_t sub_189166D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_188C482B4;

  return sub_188C48048(a1, v4);
}

uint64_t sub_189166DB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_188C482B4;

  return sub_18916234C(v2, v3, v4);
}

uint64_t sub_189166E6C()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_188C48500;

  return sub_189162080(v3, v4, v5, v6, v2, v7);
}

uint64_t sub_189166F48()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_188C48500;

  return sub_189161CF8(v2, v3);
}

uint64_t sub_189166FFC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_188C48500;

  return sub_189161924(v2);
}

unint64_t sub_18916710C()
{
  result = qword_1EA92FBF8;
  if (!qword_1EA92FBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA93E6F0);
    sub_188FF3C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FBF8);
  }

  return result;
}

uint64_t _UIImageConfigurationCappedSymbolImageScale(void *a1)
{
  v1 = a1;
  v2 = [v1 preferredContentSizeCategory];
  if (!UIContentSizeCategoryIsAccessibilityCategory(v2))
  {
    goto LABEL_5;
  }

  if (!_UIContentSizeCategoryGreaterThanOrEqualTo(v2, &cfstr_Uictcontentsiz_11.isa))
  {
    _UIContentSizeCategoryGreaterThanOrEqualTo(v2, &cfstr_Uictcontentsiz_9.isa);
LABEL_5:
    v3 = 2;
    goto LABEL_6;
  }

  v3 = 1;
LABEL_6:

  return v3;
}

unint64_t sub_189167290()
{
  result = qword_1EA92FE78;
  if (!qword_1EA92FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FE78);
  }

  return result;
}

uint64_t sub_18916731C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_18916744C()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void *sub_189167474()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *sub_18916749C()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *sub_1891674C4()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

id sub_1891674EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 48);
  *a2 = v2;
  return v2;
}

void sub_1891674FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B3A658(v1);
}

void *sub_18916752C()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

id sub_189167554@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 120);
  *a2 = v2;
  return v2;
}

void sub_189167564(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B39D20(v1);
}

id sub_189167594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 80);
  *a2 = v2;
  return v2;
}

void sub_1891675A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188B38550(v1);
}

void *sub_1891675D4()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

void *sub_1891675FC()
{
  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

void *sub_189167624()
{
  v1 = *(v0 + 144);
  v2 = v1;
  return v1;
}

void sub_18916764C()
{
  swift_beginAccess();
  v1 = *(v0 + 376);
  if (v1)
  {
    if (v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] == 1)
    {
      v2 = v1;
      sub_188B4C524();

      return;
    }

    v3 = qword_18A66B7A0[v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order]];
  }

  else
  {
    v3 = 90;
  }

  swift_beginAccess();
  v4 = *(v0 + 400);
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_33:
    v18 = v1;
    goto LABEL_34;
  }

  while (1)
  {
    v6 = v4 & 0xC000000000000001;
    v19 = (v4 + 32);
    v7 = v1;

    if ((v4 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *v19;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v5 = sub_18A4A7F68();
    if (!v5)
    {
      goto LABEL_33;
    }
  }

  v8 = sub_188E4A488(0, v4);
LABEL_11:
  v9 = v8[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v3 >= qword_18A66B7A0[v9])
  {

    v5 = 0;
LABEL_34:

    CGRectMake();
    return;
  }

  if (v5 == 1)
  {
    v10 = 0;
    if (!v6)
    {
      goto LABEL_28;
    }

LABEL_37:
    v16 = sub_188E4A488(v10, v4);
LABEL_30:
    v17 = v16;

    v5 = v17;
    sub_1891698A4();

    goto LABEL_34;
  }

  v10 = 0;
  while (1)
  {
    v11 = v10 + 1;
    if (!v6)
    {
      break;
    }

    v12 = sub_188E4A488(v10 + 1, v4);
    v13 = __OFADD__(v11, 1);
    v14 = (v10 + 2);
    if (v13)
    {
      goto LABEL_25;
    }

LABEL_20:
    v15 = v12[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v3 < qword_18A66B7A0[v15])
    {
      ++v10;
      if (v14 != v5)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  v12 = *(v4 + 8 * v10 + 40);
  v13 = __OFADD__(v11, 1);
  v14 = (v10 + 2);
  if (!v13)
  {
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  if (v6)
  {
    goto LABEL_37;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_28:
  if (v10 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = v19[v10];
    goto LABEL_30;
  }

  __break(1u);
}

void sub_1891678E4(uint64_t a1, void *a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = 0;
  KeyPath = swift_getKeyPath();
  v7 = a2;
  sub_18916825C(KeyPath, v5, v2, a1);

  v8 = swift_getKeyPath();
  sub_18916825C(v8, v5, v2, a1);

  v9 = swift_getKeyPath();
  sub_18916825C(v9, v5, v2, a1);

  v10 = swift_getKeyPath();
  sub_18916825C(v10, v5, v2, a1);

  v11 = swift_getKeyPath();
  sub_18916825C(v11, v5, v2, a1);

  v12 = swift_getKeyPath();
  sub_18916825C(v12, v5, v2, a1);

  v13 = *(v2 + 72);
  if (v13)
  {
    v14 = *(v2 + 72);
    goto LABEL_5;
  }

  v15 = *(v2 + 56);
  if (v15)
  {
    v14 = v15;
    v13 = 0;
LABEL_5:
    swift_beginAccess();
    v16 = *(v5 + 24);
    v17 = v13;
    [v7 insertSubview:v14 atIndex:v16];

    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v5 + 24) = v16 + 1;
    v18 = *(a1 + 72);
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  swift_beginAccess();
  v18 = *(a1 + 72);
  if (v18)
  {
LABEL_7:
    v19 = v18;
    v20 = v18;
    goto LABEL_11;
  }

LABEL_9:
  v20 = *(a1 + 56);
  if (v20)
  {
    v19 = v20;
    v18 = 0;
LABEL_11:
    v21 = *(v5 + 24);
    v22 = v18;
    [v7 insertSubview:v19 atIndex:v21];

    if (!__OFADD__(v21, 1))
    {
      *(v5 + 24) = v21 + 1;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_13:
  swift_endAccess();

  v23 = swift_getKeyPath();
  sub_18916825C(v23, v5, v2, a1);

  v24 = swift_getKeyPath();
  sub_18916825C(v24, v5, v2, a1);

  v25 = *(v2 + 56);
  if (!v25)
  {
    swift_beginAccess();
    v26 = 0;
    goto LABEL_18;
  }

  v26 = [*(v25 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant) previewContainer];
  swift_beginAccess();
  if (!v26)
  {
LABEL_18:
    swift_endAccess();

    return;
  }

  v27 = *(v5 + 24);
  [v7 insertSubview:v26 atIndex:v27];
  if (!__OFADD__(v27, 1))
  {
    *(v5 + 24) = v27 + 1;
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
}

void sub_189167C38(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (v4)
  {
    v5 = v4;
    sub_188B34264();
    sub_188B34820();
    sub_188EBCAEC();
    sub_188B339FC();
    sub_188B33F24();
    sub_188B337B0();
    v6 = *&v5[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
      if (v7)
      {
        [v7 _contentDidChange];
      }
    }

    sub_188AEAB44();
    swift_unknownObjectWeakAssign();
    sub_188EBC308();
  }

  v8 = *(v2 + 80);
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView);

    [v9 recordToStateForTransition_];
  }
}

void *sub_189167D20()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

void sub_189167D48(char *a1, char a2)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order;
    if (qword_18A66B7A0[a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order]] != qword_18A66B7A0[a2] && a1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] == 1)
    {
      swift_beginAccess();
      v7 = a1;
      v8 = a1;
      v9 = sub_188C12D08(v2 + 50, v8);
      v10 = v2[50];
      if (v10 >> 62)
      {
        v19 = v9;
        v11 = sub_18A4A7F68();
        v9 = v19;
        if (v11 >= v19)
        {
LABEL_6:
          v3 = v2;
          sub_188C13030(v9, v11);
          swift_endAccess();
          v7[v5] = a2;
          type metadata accessor for NavigationBarLayout.InsertLayoutData();

          v2 = sub_18A4A7518();

          v12 = v3[50];
          if (!(v12 >> 62))
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_8;
          }

LABEL_16:
          v13 = sub_18A4A7F68();
LABEL_8:
          aBlock[4] = sub_188B32B70;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_188B32A00;
          aBlock[3] = &block_descriptor_38_4;
          v14 = _Block_copy(aBlock);
          v15 = v8;

          v16 = [v2 indexOfObject:v15 inSortedRange:0 options:v13 usingComparator:{1024, v14}];

          _Block_release(v14);
          if (swift_isEscapingClosureAtFileLocation())
          {
            __break(1u);
          }

          else
          {
            swift_beginAccess();
            v17 = v3[50];
            if (!(v17 >> 62))
            {
              if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16)
              {
                goto LABEL_11;
              }

              goto LABEL_19;
            }
          }

          if (sub_18A4A7F68() >= v16)
          {
LABEL_11:
            if ((v16 & 0x8000000000000000) == 0)
            {
              v18 = v15;
              sub_188B380B0(v16, v16, v18);
              swift_endAccess();

              *(v3 + 40) = 0;
              return;
            }

LABEL_20:
            __break(1u);
            swift_endAccess();
            __break(1u);
            return;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v11 >= v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

void sub_189168020(void *a1, char a2)
{
  if (a2)
  {
    v3 = [(UIView *)a1 _traitOverrides];
    v4 = [(_UITraitOverrides *)v3 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(inited + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = [(_UITraitOverrides *)*(inited + 16) _swiftImplCopy];
      v8 = swift_allocObject();
      *(v8 + 16) = v7;

      inited = v8;
    }

    v9 = qword_1ED491B40;
    v10 = v7;
    if (v9 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v11 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    v12 = sub_188A78A74(&type metadata for ScrollPocketContainerModelTrait, 0);
    os_unfair_lock_unlock(v11[2]);
    [(_UITraitOverrides *)v10 _removeTraitToken:v12];

    swift_unknownObjectRelease();
    v13 = [(UIView *)a1 _traitOverrides];
  }

  else
  {
    v14 = [(UIView *)a1 _traitOverrides];
    v15 = [(_UITraitOverrides *)v14 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    v16 = swift_initStackObject();
    *(v16 + 16) = v15;
    v19 = v16;
    sub_188AF8D18(0);
    inited = v19;
    v13 = [(UIView *)a1 _traitOverrides];
  }

  v17 = v13;
  v18 = *(inited + 16);

  [(_UITraitOverrides *)v17 _replaceWithOverrides:v18];
}

void sub_18916825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getAtKeyPath();

  swift_beginAccess();
  if (v9)
  {
    v6 = *(a2 + 24);
    [*(a2 + 16) insertSubview:v9 atIndex:{v6, a3}];
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_9;
    }

    *(a2 + 24) = v6 + 1;
  }

  swift_endAccess();

  swift_getAtKeyPath();

  swift_beginAccess();
  if (!v9)
  {
LABEL_7:
    swift_endAccess();

    return;
  }

  v7 = *(a2 + 24);
  [*(a2 + 16) insertSubview:v9 atIndex:{v7, a4}];
  if (!__OFADD__(v7, 1))
  {
    *(a2 + 24) = v7 + 1;
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

char *sub_189168384(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_30:
    v3 = 0;
    v5 = 0.0;
    goto LABEL_31;
  }

LABEL_29:
  v2 = sub_18A4A7F68();
  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    while (2)
    {
      v6 = v4;
      while (1)
      {
        v7 = sub_188E4A488(v6, a1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_27;
        }

        if (*(v7 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) == 1)
        {
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        v8 = *(v7 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
        v9 = *(v7 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
        swift_unknownObjectRelease();
        if (v8 < v9)
        {
          break;
        }

        v5 = v5 + v9;
        ++v6;
        if (v4 == v2)
        {
          goto LABEL_31;
        }
      }

      v5 = v5 + v8;
LABEL_13:
      v3 = 1;
      if (v4 != v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v3 = 0;
    v10 = 0;
    v5 = 0.0;
    while (2)
    {
      v11 = v10;
      while (1)
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v12 = *(a1 + 32 + 8 * v11);
        if (*(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) == 1)
        {
          break;
        }

        v13 = *(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
        v14 = *(v12 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
        if (v13 < v14)
        {
          v5 = v5 + v13;
          break;
        }

        v5 = v5 + v14;
        ++v11;
        if (v10 == v2)
        {
          goto LABEL_31;
        }
      }

      v3 = 1;
      if (v10 != v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  result = sub_188D7EDB0(0, *(MEMORY[0x1E69E7CC0] + 16) + 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = result;
  v18 = *(result + 2);
  v17 = *(result + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_188D7EDB0((v17 > 1), v18 + 1, 1, result);
    v16 = result;
  }

  *(v16 + 2) = v18 + 1;
  *&v16[8 * v18 + 32] = v5;
  if (v2 == 0 || (v3 & 1) == 0)
  {
    return v16;
  }

  if (v2 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        v20 = sub_188E4A488(i, a1);
        v21 = *(v20 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight);
        if ((*(v20 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) & 1) == 0)
        {
          v21 = v21 - *(v20 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight);
        }

        if (v21 <= 0.0)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_188D7EDB0((v22 > 1), v23 + 1, 1, v16);
          }

          v5 = v5 + v21;
          swift_unknownObjectRelease();
          *(v16 + 2) = v23 + 1;
          *&v16[8 * v23 + 32] = v5;
        }
      }
    }

    else
    {
      v24 = (a1 + 32);
      v25 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight;
      v26 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible;
      do
      {
        v27 = *v24;
        v28 = *(*v24 + v25);
        if ((*(*v24 + v26) & 1) == 0)
        {
          v28 = v28 - *&v27[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
        }

        if (v28 > 0.0)
        {
          v29 = *(v16 + 2);
          v30 = *(v16 + 3);
          v31 = v27;
          if (v29 >= v30 >> 1)
          {
            v32 = v30 > 1;
            v33 = v31;
            v16 = sub_188D7EDB0(v32, v29 + 1, 1, v16);
            v31 = v33;
          }

          v5 = v5 + v28;

          *(v16 + 2) = v29 + 1;
          *&v16[8 * v29 + 32] = v5;
          v25 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight;
          v26 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible;
        }

        ++v24;
        --v2;
      }

      while (v2);
    }

    return v16;
  }

  __break(1u);
  return result;
}

double sub_18916870C()
{
  if ((v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin + 8] & 1) == 0)
  {
    return *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
  }

  sub_18A4A80E8();

  v1 = [v0 description];
  v2 = sub_18A4A7288();
  v4 = v3;

  MEMORY[0x18CFE22D0](v2, v4);

  v5 = sub_18A4A7258();

  __UIKIT_SOFT_ASSERT_FAIL(v5);

  return 0.0;
}

_BYTE *sub_1891687FC(uint64_t a1)
{
  v2 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        swift_beginAccess();
        v3 = 384;
        goto LABEL_20;
      }

      if (a1 == 8)
      {
        swift_beginAccess();
        v3 = 352;
        goto LABEL_20;
      }

      return v2;
    }

    if (a1 != 5)
    {
      swift_beginAccess();
      v3 = 376;
      goto LABEL_20;
    }

    swift_beginAccess();
    v2 = *(v1 + 368);
    if (v2 && (v2[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active] & 1) != 0)
    {
      goto LABEL_21;
    }

LABEL_17:
    v3 = 360;
    goto LABEL_20;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      swift_beginAccess();
      v3 = 328;
      goto LABEL_20;
    }

    swift_beginAccess();
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    swift_beginAccess();
    v3 = 336;
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    swift_beginAccess();
    v3 = 344;
LABEL_20:
    v2 = *(v1 + v3);
LABEL_21:
    v4 = v2;
  }

  return v2;
}

uint64_t sub_189168978()
{
  v1 = v0;
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6ACA30);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  v134 = v129[0];
  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x5374756F79616C20, 0xEC0000003D657A69);
  v133 = *(v0 + 224);
  type metadata accessor for CGSize(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x7469726F69727020, 0xEA00000000003D79);
  swift_beginAccess();
  inserted = type metadata accessor for NavigationBarLayout.InsertLayoutData();

  v4 = MEMORY[0x18CFE24A0](v3, inserted);
  v6 = v5;

  MEMORY[0x18CFE22D0](v4, v6);

  MEMORY[0x18CFE22D0](0x3D726564726F20, 0xE700000000000000);
  swift_beginAccess();

  v8 = MEMORY[0x18CFE24A0](v7, inserted);
  v10 = v9;

  MEMORY[0x18CFE22D0](v8, v10);

  MEMORY[0x18CFE22D0](0, 0xE000000000000000);

  v11 = *(v0 + 48);
  if (v11)
  {
    v12 = v11;
    sub_18A4A80E8();

    strcpy(v129, " prompt{view=");
    HIWORD(v129[0]) = -4864;
    v13 = [v12 description];
    v14 = sub_18A4A7288();
    v16 = v15;

    MEMORY[0x18CFE22D0](v14, v16);

    MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
    result = swift_beginAccess();
    v18 = *(v1 + 328);
    if (!v18)
    {
      __break(1u);
      goto LABEL_49;
    }

    v19 = v18;
    v20 = [v19 description];
    v21 = sub_18A4A7288();
    v23 = v22;

    MEMORY[0x18CFE22D0](v21, v23);

    MEMORY[0x18CFE22D0](125, 0xE100000000000000);
    MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));
  }

  v24 = *(v1 + 56);
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;
  sub_18A4A80E8();

  strcpy(v129, " content{view=");
  HIBYTE(v129[0]) = -18;
  v26 = [v25 description];
  v27 = sub_18A4A7288();
  v29 = v28;

  MEMORY[0x18CFE22D0](v27, v29);

  MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
  result = swift_beginAccess();
  v30 = *(v1 + 336);
  if (!v30)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v31 = v30;
  v32 = [v31 description];
  v33 = sub_18A4A7288();
  v35 = v34;

  MEMORY[0x18CFE22D0](v33, v35);

  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));

  if (*(v1 + 72))
  {
    MEMORY[0x18CFE22D0](0x44455050494C435BLL, 0xE90000000000005DLL);
  }

LABEL_9:
  v36 = *(v1 + 128);
  if (!v36)
  {
    goto LABEL_12;
  }

  v37 = v36;
  sub_18A4A80E8();

  *&v129[0] = 0xD000000000000015;
  *(&v129[0] + 1) = 0x800000018A6ACB70;
  v38 = [v37 description];
  v39 = sub_18A4A7288();
  v41 = v40;

  MEMORY[0x18CFE22D0](v39, v41);

  MEMORY[0x18CFE22D0](0x3D74756F79616C20, 0xE800000000000000);
  result = swift_beginAccess();
  v42 = *(v1 + 352);
  if (!v42)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v43 = v42;
  v44 = [v43 description];
  v45 = sub_18A4A7288();
  v47 = v46;

  MEMORY[0x18CFE22D0](v45, v47);

  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));

LABEL_12:
  v48 = *(v1 + 80);
  if (!v48)
  {
    goto LABEL_16;
  }

  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  v49 = v48;
  sub_18A4A80E8();
  v130 = v129[0];
  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A6ACB50);
  v50 = [v49 description];
  v51 = sub_18A4A7288();
  v53 = v52;

  MEMORY[0x18CFE22D0](v51, v53);

  MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
  result = swift_beginAccess();
  v54 = *(v1 + 344);
  if (!v54)
  {
    goto LABEL_51;
  }

  v55 = v54;
  v56 = [v55 description];
  v57 = sub_18A4A7288();
  v59 = v58;

  MEMORY[0x18CFE22D0](v57, v59);

  result = MEMORY[0x18CFE22D0](0x3D74756F79616C20, 0xE800000000000000);
  v60 = *(v1 + 88);
  if (!v60)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v61 = v60;
  v62 = [v61 description];
  v63 = sub_18A4A7288();
  v65 = v64;

  MEMORY[0x18CFE22D0](v63, v65);

  MEMORY[0x18CFE22D0](0x7275736F70786520, 0xEA00000000003D65);
  v66 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v66);

  MEMORY[0x18CFE22D0](0x736572676F727020, 0xEA00000000003D73);
  v67 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v67);

  MEMORY[0x18CFE22D0](0x3D737465736E6920, 0xE800000000000000);
  v68 = *(v1 + 192);
  v129[0] = *(v1 + 176);
  v129[1] = v68;
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  MEMORY[0x18CFE22D0](v130, *(&v130 + 1));

LABEL_16:
  v69 = *(v1 + 136);
  if (!v69)
  {
    goto LABEL_26;
  }

  v70 = v69;
  sub_18A4A80E8();

  *&v129[0] = 0xD000000000000010;
  *(&v129[0] + 1) = 0x800000018A6ACB10;
  v71 = [v70 description];
  v72 = sub_18A4A7288();
  v74 = v73;

  MEMORY[0x18CFE22D0](v72, v74);

  MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
  result = swift_beginAccess();
  v75 = *(v1 + 360);
  if (!v75)
  {
    goto LABEL_53;
  }

  v76 = v75;
  v77 = [v76 description];
  v78 = sub_18A4A7288();
  v80 = v79;

  MEMORY[0x18CFE22D0](v78, v80);

  if (*(v1 + 217))
  {
    v81 = 0xD000000000000013;
  }

  else
  {
    v81 = 0;
  }

  if (*(v1 + 217))
  {
    v82 = 0x800000018A6ACB30;
  }

  else
  {
    v82 = 0xE000000000000000;
  }

  MEMORY[0x18CFE22D0](v81, v82);

  result = MEMORY[0x18CFE22D0](0x614265706F637320, 0xEE003D6174614472);
  v83 = *(v1 + 368);
  if (!v83)
  {
    goto LABEL_54;
  }

  v84 = v83;
  v85 = [v84 description];
  v86 = sub_18A4A7288();
  v88 = v87;

  MEMORY[0x18CFE22D0](v86, v88);

  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));

LABEL_26:
  v89 = *(v1 + 96);
  if (v89)
  {
    v90 = v89;
    sub_18A4A80E8();

    *&v129[0] = 0xD000000000000011;
    *(&v129[0] + 1) = 0x800000018A6ACAD0;
    v91 = [v90 description];
    v92 = sub_18A4A7288();
    v94 = v93;

    MEMORY[0x18CFE22D0](v92, v94);

    MEMORY[0x18CFE22D0](0x69736E6574786520, 0xEB000000003D6E6FLL);
    v95 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v95);

    if (*(v1 + 216))
    {
      v96 = 0xD000000000000012;
    }

    else
    {
      v96 = 0;
    }

    if (*(v1 + 216))
    {
      v97 = 0x800000018A6ACAF0;
    }

    else
    {
      v97 = 0xE000000000000000;
    }

    MEMORY[0x18CFE22D0](v96, v97);

    MEMORY[0x18CFE22D0](125, 0xE100000000000000);
    MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));
  }

  v98 = *(v1 + 120);
  if (v98)
  {
    v99 = v98;
    sub_18A4A80E8();

    strcpy(v129, " weeTitleView=");
    HIBYTE(v129[0]) = -18;
    v100 = [v99 description];
    v101 = sub_18A4A7288();
    v103 = v102;

    MEMORY[0x18CFE22D0](v101, v103);

    MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));
  }

  v104 = *(v1 + 152);
  if (!v104)
  {
    goto LABEL_39;
  }

  v105 = v104;
  sub_18A4A80E8();

  *&v129[0] = 0xD000000000000011;
  *(&v129[0] + 1) = 0x800000018A6ACAB0;
  v106 = [v105 description];
  v107 = sub_18A4A7288();
  v109 = v108;

  MEMORY[0x18CFE22D0](v107, v109);

  MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
  result = swift_beginAccess();
  v110 = *(v1 + 376);
  if (!v110)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v111 = v110;
  v112 = [v111 description];
  v113 = sub_18A4A7288();
  v115 = v114;

  MEMORY[0x18CFE22D0](v113, v115);

  MEMORY[0x18CFE22D0](125, 0xE100000000000000);
  MEMORY[0x18CFE22D0](*&v129[0], *(&v129[0] + 1));

LABEL_39:
  v116 = *(v1 + 160);
  if (!v116)
  {
    goto LABEL_42;
  }

  *&v129[0] = 0;
  *(&v129[0] + 1) = 0xE000000000000000;
  v117 = v116;
  sub_18A4A80E8();

  v131 = 0xD000000000000014;
  v132 = 0x800000018A6ACA90;
  v118 = [v117 description];
  v119 = sub_18A4A7288();
  v121 = v120;

  MEMORY[0x18CFE22D0](v119, v121);

  MEMORY[0x18CFE22D0](0x3D6174616420, 0xE600000000000000);
  result = swift_beginAccess();
  v122 = *(v1 + 384);
  if (v122)
  {
    v123 = v122;
    v124 = [v123 description];
    v125 = sub_18A4A7288();
    v127 = v126;

    MEMORY[0x18CFE22D0](v125, v127);

    MEMORY[0x18CFE22D0](125, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v131, v132);

LABEL_42:
    if (*(v1 + 240) == 1)
    {
      sub_18A4A80E8();

      v131 = 0xD00000000000001ALL;
      v132 = 0x800000018A6ACA70;
    }

    else
    {
      if (!*(v1 + 80))
      {
        return v134;
      }

      sub_18A4A80E8();

      v131 = 0xD00000000000001ELL;
      v132 = 0x800000018A6ACA50;
    }

    v128 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v128);

    MEMORY[0x18CFE22D0](v131, v132);

    return v134;
  }

LABEL_56:
  __break(1u);
  return result;
}

double sub_1891698A4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin + 8])
  {
    sub_18A4A80E8();

    v2 = [v0 description];
    v3 = sub_18A4A7288();
    v5 = v4;

    MEMORY[0x18CFE22D0](v3, v5);

    v6 = sub_18A4A7258();

    __UIKIT_SOFT_ASSERT_FAIL(v6);

    v7 = 0.0;
  }

  else
  {
    v7 = *&v0[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
  }

  return v7 + *&v1[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];
}

uint64_t sub_189169A5C()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6ACB90);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  v2 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier);
  v1 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_identifier + 8);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    MEMORY[0x18CFE22D0](v2, v1);

    MEMORY[0x18CFE22D0](32, 0xE100000000000000);
  }

  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x6D756D696E696D20, 0xEF3D746867696548);
  v4 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight;
  v5 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v5);

  MEMORY[0x18CFE22D0](0xD000000000000011, 0x800000018A6ACBB0);
  v6 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight;
  v7 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v7);

  MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A6ACBD0);
  v8 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_assignedHeight;
  v9 = sub_18A4A76F8();
  MEMORY[0x18CFE22D0](v9);

  MEMORY[0x18CFE22D0](0, 0xE000000000000000);

  v10 = OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible;
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight) >= *(v0 + v8))
    {
      MEMORY[0x18CFE22D0](0x7370616C6C6F6320, 0xEC000000656C6269);
    }

    else
    {
      sub_18A4A80E8();

      v11 = sub_18A4A76F8();
      MEMORY[0x18CFE22D0](v11);

      MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6ACC80);
    }
  }

  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded) == 1 && (*(v0 + v4) < *(v0 + v6) || *(v0 + v10) == 1))
  {
    MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A6ACC60);
  }

  if ((*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin + 8) & 1) == 0)
  {
    sub_18A4A80E8();

    v12 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v12);

    MEMORY[0x18CFE22D0](0xD000000000000010, 0x800000018A6ACC40);
  }

  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress) > 0.0)
  {
    sub_18A4A80E8();

    v13 = sub_18A4A76F8();
    MEMORY[0x18CFE22D0](v13);

    MEMORY[0x18CFE22D0](0xD000000000000022, 0x800000018A6ACC10);
  }

  BYTE8(v15) = 0;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0x7469726F69727020, 0xEA00000000003D79);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x3D726564726F20, 0xE700000000000000);
  *&v15 = *(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](*(&v15 + 1), 0xE000000000000000);

  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_ignoredForCollapsingBehaviors) == 1)
  {
    MEMORY[0x18CFE22D0](0xD00000000000001ELL, 0x800000018A6ACBF0);
  }

  if ((*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) & 1) == 0)
  {
    MEMORY[0x18CFE22D0](0x76697463616E6920, 0xE900000000000065);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for NavigationBarLayout.InsertLayoutData.Priority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationBarLayout.InsertLayoutData.Priority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18916A12C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18916A188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_18916A228(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[113])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18916A27C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18916A2F0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18916A34C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_18916A3F0()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](qword_18A66B720[v1]);
  return sub_18A4A88E8();
}

uint64_t sub_18916A478()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](qword_18A66B720[v1]);
  return sub_18A4A88E8();
}

uint64_t sub_18916A4C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18916A78C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_18916A50C()
{
  result = qword_1EA93E8A0;
  if (!qword_1EA93E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E8A0);
  }

  return result;
}

uint64_t sub_18916A584()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](qword_18A66B7A0[v1]);
  return sub_18A4A88E8();
}

uint64_t sub_18916A60C()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](qword_18A66B7A0[v1]);
  return sub_18A4A88E8();
}

uint64_t sub_18916A658@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18916A6F4();
  *a1 = result;
  return result;
}

unint64_t sub_18916A6A0()
{
  result = qword_1EA93E8A8;
  if (!qword_1EA93E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93E8A8);
  }

  return result;
}

uint64_t sub_18916A78C(uint64_t a1)
{
  if (a1 <= 1700)
  {
    if (a1 > 999)
    {
      if (a1 > 1599)
      {
        if (a1 == 1600)
        {
          return 5;
        }

        if (a1 == 1700)
        {
          return 4;
        }
      }

      else
      {
        if (a1 == 1000)
        {
          return 7;
        }

        if (a1 == 1500)
        {
          return 6;
        }
      }
    }

    else if (a1 > 799)
    {
      if (a1 == 800)
      {
        return 9;
      }

      if (a1 == 900)
      {
        return 8;
      }
    }

    else
    {
      if (!a1)
      {
        return 15;
      }

      if (a1 == 700)
      {
        return 10;
      }
    }

    return 16;
  }

  if (a1 > 1801)
  {
    if (a1 > 1999)
    {
      if (a1 == 2000)
      {
        return 1;
      }

      if (a1 == 2100)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 1802)
      {
        return 14;
      }

      if (a1 == 1900)
      {
        return 2;
      }
    }

    return 16;
  }

  if (a1 <= 1799)
  {
    if (a1 == 1701)
    {
      return 11;
    }

    if (a1 == 1702)
    {
      return 12;
    }

    return 16;
  }

  if (a1 == 1800)
  {
    return 3;
  }

  else
  {
    return 13;
  }
}

uint64_t sub_18916A8C8()
{
  result = *(v0 + 32);
  if (!result)
  {
    swift_beginAccess();

    v3 = sub_189168384(v2);

    *(v0 + 32) = v3;

    result = *(v0 + 32);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _sSo8UIWindowC5UIKitE19DidBecomeKeyMessageV04makeF0yAESg10Foundation12NotificationVFZ_0@<X0>(void *a1@<X8>)
{
  sub_18A4A2438();
  if (!v6)
  {
    result = sub_188A553EC(v5);
    goto LABEL_5;
  }

  sub_188E3FED0();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

uint64_t sub_18916AB54(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_188E3FED0();
  v4 = v2;
  v5 = v3;
  return sub_18A4A2428();
}

uint64_t sub_18916ABD0(void **a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *a1;
  v5 = *a4;
  sub_188E3FED0();
  v6 = v4;
  v7 = v5;
  return sub_18A4A2428();
}

void __swiftcall CGAffineTransform.concat(other:)(CGAffineTransform *__return_ptr retstr, CGAffineTransform *other)
{
  v4 = v2[1];
  *&t1.a = *v2;
  *&t1.c = v4;
  *&t1.tx = v2[2];
  v5 = *&other->c;
  *&t2.a = *&other->a;
  *&t2.c = v5;
  *&t2.tx = *&other->tx;
  CGAffineTransformConcat(&v8, &t1, &t2);
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *&retstr->a = *&v8.a;
  *&retstr->c = v6;
  *&retstr->tx = v7;
}

double sub_18916AD14@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

CGFloat sub_18916AD28@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *&t1.a = *v2;
  *&t1.c = v4;
  *&t1.tx = v2[2];
  v5 = a1[1];
  *&t2.a = *a1;
  *&t2.c = v5;
  *&t2.tx = a1[2];
  CGAffineTransformConcat(&v9, &t1, &t2);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a2 = *&v9.a;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

CGSize __swiftcall CGSize.concat(other:)(CGSize other)
{
  v3 = other.width + v1;
  v4 = other.height + v2;
  result.height = v4;
  result.width = v3;
  return result;
}

__C::CGRect __swiftcall CGRect.concat(other:)(__C::CGRect other)
{
  v5 = other.origin.x + v1;
  v6 = other.origin.y + v2;
  v7 = other.size.width + v3;
  v8 = other.size.height + v4;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

float64x2_t sub_18916ADB0@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = vaddq_f64(*a1, *v2);
  v4 = vaddq_f64(a1[1], v2[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_18916B280()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIFluidParallaxTransitionSettings();
  objc_msgSendSuper2(&v4, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_rubberBandExtent] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_edgeFlickVelocityBoostFactor] = 0x4011000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_edgeFlickBoostThreshold] = 0x3FF8000000000000;
  v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring] = 0;
  v1 = OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring] setDefaultCriticallyDampedValues];
  [*&v0[v1] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setRetargetImpulse_];
  v2 = OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring] setDefaultCriticallyDampedValues];
  [*&v0[v2] setDampingRatio_];
  [*&v0[v2] setResponse_];
  [*&v0[v2] setTrackingDampingRatio_];
  return [*&v0[v2] setTrackingResponse_];
}

id sub_18916B450()
{
  v1 = OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_noninteractiveSpring;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v2 = OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_interactiveSpring;
  *&v0[v2] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_rubberBandExtent] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_edgeFlickVelocityBoostFactor] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_edgeFlickBoostThreshold] = 0;
  v0[OBJC_IVAR____TtC5UIKit34_UIFluidParallaxTransitionSettings_tracksImmediatelyWithoutSpring] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIFluidParallaxTransitionSettings();
  return objc_msgSendSuper2(&v4, sel_initWithDefaultValues);
}

id sub_18916B540(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_18916B5E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFB0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = [objc_opt_self() rowWithTitle:v2 childSettingsKeyPath:v3];

  if (v4)
  {
    v5 = objc_opt_self();
    *(v1 + 56) = sub_188A34624(0, &qword_1EA934BA8);
    *(v1 + 32) = v4;
    v6 = sub_18A4A7518();

    v7 = [v5 sectionWithRows_];

    if (v7)
    {
      *(v0 + 56) = sub_188A34624(0, &qword_1EA934B98);
      *(v0 + 32) = v7;
      v8 = sub_18A4A7258();
      v9 = sub_18A4A7518();

      [v5 moduleWithTitle:v8 contents:v9];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_18916B7F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6539E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = [v5 between:0.0 and:1.0];

  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A55538(&v40, (v1 + 32));
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 valueKeyPath:v8];

  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = [v9 between:0.1 and:10.0];

  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A55538(&v39, (v1 + 64));
  v11 = sub_18A4A7258();
  v12 = sub_18A4A7258();
  v13 = [v4 rowWithTitle:v11 valueKeyPath:v12];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 between:0.0 and:10.0];

  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A55538(&v38, (v1 + 96));
  v15 = sub_18A4A7258();
  v16 = sub_18A4A7258();
  v17 = [objc_opt_self() rowWithTitle:v15 valueKeyPath:v16];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v1 + 152) = sub_188A34624(0, &unk_1EA936980);
  *(v1 + 128) = v17;
  v18 = sub_18A4A7258();
  v19 = sub_18A4A7258();
  v20 = objc_opt_self();
  v21 = [v20 rowWithTitle:v18 childSettingsKeyPath:v19];

  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 184) = v22;
  *(v1 + 160) = v21;
  v23 = sub_18A4A7258();
  v24 = sub_18A4A7258();
  v25 = [v20 rowWithTitle:v23 childSettingsKeyPath:v24];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = objc_opt_self();
  *(v1 + 216) = v22;
  *(v1 + 192) = v25;
  v27 = sub_18A4A7518();

  v28 = [v26 sectionWithRows_];

  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v29;
  *(v0 + 32) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_18A64BFB0;
  v31 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v32 = sub_18A4A7258();
  v33 = [objc_opt_self() rowWithTitle:v32 action:v31];

  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v30 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v30 + 32) = v33;
  v34 = sub_18A4A7518();

  v35 = [v26 sectionWithRows_];

  if (v35)
  {
    *(v0 + 88) = v29;
    *(v0 + 64) = v35;
    v36 = sub_18A4A7258();
    v37 = sub_18A4A7518();

    [v26 moduleWithTitle:v36 contents:v37];

    return;
  }

LABEL_25:
  __break(1u);
}

id sub_18916BE48()
{
  v1 = OBJC_IVAR____UITabMorphTransition____lazy_storage___geometryTrackingUpdateLink;
  v2 = *(v0 + OBJC_IVAR____UITabMorphTransition____lazy_storage___geometryTrackingUpdateLink);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____UITabMorphTransition____lazy_storage___geometryTrackingUpdateLink);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____UITabMorphTransition_hostingContainerView);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_18916F5F4;
    v12[5] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_188CF2214;
    v12[3] = &block_descriptor_98_0;
    v6 = _Block_copy(v12);
    v7 = objc_opt_self();

    v8 = [v7 updateLinkForView:v4 actionHandler:v6];
    _Block_release(v6);

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_18916BFA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_18916BFF4();
  }
}

void sub_18916BFF4()
{
  v1 = *(v0 + OBJC_IVAR____UITabMorphTransition_magicMorphView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____UITabMorphTransition_activeViewContext);
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____UITabMorphTransition_activeViewContext + 8);
      v4 = *(v0 + OBJC_IVAR____UITabMorphTransition_hostingContainerView);
      v5 = *(v0 + OBJC_IVAR____UITabMorphTransition_groupCompletion);
      v48 = v2;
      v6 = v1;
      sub_18916F5FC(v48, v3);
      [v48 center];
      v8 = v7;
      v10 = v9;
      v11 = [v48 superview];
      [v4 convertPoint:v11 fromView:{v8, v10}];
      v13 = v12;
      v46 = v14;

      v15 = [v48 contentView];
      [v15 bounds];
      v44 = v17;
      v45 = v16;
      v19 = v18;
      v21 = v20;

      v22 = v6;
      [v22 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      rect2 = v29;
      [v22 center];
      v31 = v30;
      v33 = v32;

      v34 = v13 == v31 && v46 == v33;
      if (v34 && (v56.origin.x = v45, v56.origin.y = v19, v56.size.width = v21, v56.size.height = v44, v57.origin.x = v24, v57.origin.y = v26, v57.size.width = v28, v57.size.height = rect2, CGRectEqualToRect(v56, v57)))
      {
      }

      else
      {
        [v5 increment];
        v35 = [v48 morphTargetSpringBehavior];
        v36 = objc_opt_self();
        v37 = swift_allocObject();
        *(v37 + 16) = v22;
        *(v37 + 24) = v13;
        *(v37 + 32) = v46;
        *(v37 + 40) = v45;
        *(v37 + 48) = v19;
        *(v37 + 56) = v21;
        *(v37 + 64) = v44;
        *(v37 + 72) = v24;
        *(v37 + 80) = v26;
        *(v37 + 88) = v28;
        *(v37 + 96) = rect2;
        v53 = sub_18916F63C;
        v54 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_188A4A8F0;
        v52 = &block_descriptor_104_0;
        v38 = _Block_copy(&aBlock);
        v39 = v22;
        v40 = v35;

        v41 = swift_allocObject();
        *(v41 + 16) = v5;
        v53 = sub_18912B980;
        v54 = v41;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_188C3DD6C;
        v52 = &block_descriptor_110_1;
        v42 = _Block_copy(&aBlock);
        v43 = v5;

        [v36 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v42);
        _Block_release(v38);
      }
    }
  }
}

id sub_18916C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____UITabMorphTransition_activeViewContext];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____UITabMorphTransition_activeViewContexts;
  *&v4[v10] = sub_188E8FB38(MEMORY[0x1E69E7CC0]);
  *&v4[OBJC_IVAR____UITabMorphTransition_currentRopeAnimation] = 0;
  *&v4[OBJC_IVAR____UITabMorphTransition_magicMorphView] = 0;
  *&v4[OBJC_IVAR____UITabMorphTransition_intermediateShapeView] = 0;
  *&v4[OBJC_IVAR____UITabMorphTransition____lazy_storage___geometryTrackingUpdateLink] = 0;
  *&v4[OBJC_IVAR____UITabMorphTransition_hostingContainerView] = a1;
  *&v4[OBJC_IVAR____UITabMorphTransition_groupCompletion] = a2;
  v11 = &v4[OBJC_IVAR____UITabMorphTransition_contentAlongsideAnimation];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v4;
  v13.super_class = _UITabMorphTransition;
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_18916C538(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *&v1[OBJC_IVAR____UITabMorphTransition_groupCompletion];
  v5 = *&v1[OBJC_IVAR____UITabMorphTransition_hostingContainerView];
  v6 = OBJC_IVAR____UITabMorphTransition_magicMorphView;
  v7 = *&v2[OBJC_IVAR____UITabMorphTransition_magicMorphView];
  if (v7)
  {
    v115 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v2;
    v9[4] = v4;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_18916E3E4;
    *(v10 + 24) = v9;
    v120 = sub_188A4B574;
    v121 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_188A4A968;
    v119 = &block_descriptor_131;
    v11 = _Block_copy(&aBlock);
    v12 = v5;
    v13 = v2;
    v14 = v4;

    [v8 performWithoutAnimation_];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = *&v2[v6];
    v115 = sub_18916E3E4;
    if (!v7)
    {
      v39 = sub_18916E3E4;
      return sub_188A55B8C(v39);
    }

    v3 = a1;
  }

  v16 = *&v7[OBJC_IVAR____UIMagicMorphView_backgroundView];
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v114 = v7;
      [v5 bringSubviewToFront_];
      v20 = &v2[OBJC_IVAR____UITabMorphTransition_activeViewContext];
      v21 = *&v2[OBJC_IVAR____UITabMorphTransition_activeViewContext];
      if (!v21)
      {
        v56 = objc_opt_self();
        v57 = swift_allocObject();
        v57[2] = v3;
        v57[3] = v2;
        v53 = v3;
        v57[4] = v114;
        v57[5] = v5;
        v57[6] = v18;
        v23 = swift_allocObject();
        v23[2] = sub_18916E3F0;
        v23[3] = v57;
        v120 = sub_188E3FE50;
        v121 = v23;
        aBlock = MEMORY[0x1E69E9820];
        v117 = 1107296256;
        v118 = sub_188A4A968;
        v119 = &block_descriptor_14_8;
        v58 = _Block_copy(&aBlock);
        v4 = v121;
        v59 = v5;
        v60 = v2;
        v61 = v19;
        v2 = v114;
        v62 = v3;

        [v56 performWithoutAnimation_];

        _Block_release(v58);
        LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

        sub_188A55B8C(v115);

        if ((v61 & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_20;
      }

      v109 = v19;
      v22 = *(v20 + 1);
      v23 = v21;
      v112 = v22;
      v24 = [v3 componentKey];
      v25 = sub_18A4A7288();
      v27 = v26;

      v28 = OBJC_IVAR____UITabMorphTransition_activeViewContexts;
      swift_beginAccess();
      v29 = *&v2[v28];
      if (*(v29 + 16))
      {
        v30 = sub_188B0944C(v25, v27);
        if (v31)
        {
          v32 = *(v29 + 56) + 16 * v30;
          v33 = *v32;
          v34 = *(v32 + 8);
          swift_endAccess();
          v35 = v33;
          v36 = v34;
          v37 = v35;
          v38 = v36;
          v108 = 0;
          goto LABEL_15;
        }
      }

      v106 = v23;
      v111 = v4;
      swift_endAccess();
      v40 = sub_18916EFBC(v3);
      v42 = v41;
      v43 = objc_opt_self();
      v44 = swift_allocObject();
      v44[2] = v2;
      v44[3] = v40;
      v44[4] = v42;
      v44[5] = v114;
      v45 = swift_allocObject();
      v108 = sub_18916F090;
      *(v45 + 16) = sub_18916F090;
      *(v45 + 24) = v44;
      v120 = sub_188E3FE50;
      v121 = v45;
      aBlock = MEMORY[0x1E69E9820];
      v117 = 1107296256;
      v118 = sub_188A4A968;
      v119 = &block_descriptor_24_5;
      v46 = _Block_copy(&aBlock);
      v47 = v40;
      v48 = v42;
      v49 = v2;
      v50 = v114;
      v37 = v47;
      v38 = v48;

      [v43 performWithoutAnimation_];
      _Block_release(v46);
      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if ((v43 & 1) == 0)
      {
        v4 = v111;
        v23 = v106;
LABEL_15:
        v51 = *v20;
        v52 = *(v20 + 1);
        *v20 = v37;
        *(v20 + 1) = v38;
        v19 = v37;
        sub_18916F0C0(v51, v52);
        v53 = OBJC_IVAR____UITabMorphTransition_currentRopeAnimation;
        v54 = *&v2[OBJC_IVAR____UITabMorphTransition_currentRopeAnimation];
        v110 = v38;
        if (v54)
        {
          [v54 invalidate];
          v55 = *&v2[v53];
          goto LABEL_21;
        }

LABEL_20:
        v55 = 0;
LABEL_21:
        *&v2[v53] = 0;

        v63 = [objc_allocWithZone(_UIRopeAnimation) init];
        v64 = *&v2[OBJC_IVAR____UITabMorphTransition_contentAlongsideAnimation];
        v105 = *&v2[OBJC_IVAR____UITabMorphTransition_contentAlongsideAnimation + 8];
        v107 = v63;
        [v23 frame];
        Width = CGRectGetWidth(v122);
        [v23 frame];
        Height = CGRectGetHeight(v123);
        v67 = v23;
        v68 = sub_18916D710(v67, v19);

        v69 = sub_18916BE48();
        [v69 setEnabled_];

        v103 = v67;
        v104 = v19;
        if (v68)
        {
          v101 = Width / Height > 2.0;
          v70 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v71 = swift_allocObject();
          *(v71 + 16) = v70;
          *(v71 + 24) = v67;
          *(v71 + 32) = v112;
          *(v71 + 40) = v19;
          *(v71 + 48) = v110;
          *(v71 + 56) = v101;
          *(v71 + 64) = v64;
          *(v71 + 72) = v105;
          v120 = sub_18916F120;
          v121 = v71;
          aBlock = MEMORY[0x1E69E9820];
          v117 = 1107296256;
          v100 = &v118;
          v118 = sub_188A4A8F0;
          v119 = &block_descriptor_47_2;
          v102 = v53;
          v72 = _Block_copy(&aBlock);
          v73 = v19;
          v74 = v110;
          v99 = v73;
          v75 = v67;
          v76 = v4;
          v77 = v74;
          v78 = v112;

          [v107 addAnimation_];
          _Block_release(v72);
          v79 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v80 = swift_allocObject();
          *(v80 + 16) = v79;
          *(v80 + 24) = v76;
          *(v80 + 32) = v75;
          *(v80 + 40) = v78;
          *(v80 + 48) = v99;
          *(v80 + 56) = v77;
          v4 = v76;
          *(v80 + 64) = v101;
          *(v80 + 72) = v64;
          *(v80 + 80) = v105;
          v120 = sub_18916F138;
          v121 = v80;
          aBlock = MEMORY[0x1E69E9820];
          v117 = 1107296256;
          v118 = sub_188A4A8F0;
          v119 = &block_descriptor_54_3;
          v81 = _Block_copy(&aBlock);
          v82 = v76;
          v83 = v75;
          v84 = v78;

          v85 = v110;
          v53 = v102;
        }

        else
        {
          v86 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v87 = swift_allocObject();
          v87[2] = v86;
          v87[3] = v67;
          v85 = v110;
          v87[4] = v112;
          v87[5] = v19;
          v87[6] = v110;
          v87[7] = v64;
          v87[8] = v105;
          v120 = sub_18916F100;
          v121 = v87;
          aBlock = MEMORY[0x1E69E9820];
          v117 = 1107296256;
          v118 = sub_188A4A8F0;
          v119 = &block_descriptor_33_6;
          v81 = _Block_copy(&aBlock);
          v88 = v19;
          v89 = v67;
          v90 = v110;

          v91 = v112;
        }

        [v107 addAnimation_];
        _Block_release(v81);
        [v4 increment];
        result = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.3];
        if (result)
        {
          v92 = result;

          v93 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v94 = swift_allocObject();
          v94[2] = v4;
          v94[3] = v93;
          v94[4] = v107;
          v120 = sub_18916F114;
          v121 = v94;
          aBlock = MEMORY[0x1E69E9820];
          v117 = 1107296256;
          v118 = sub_188C3DD6C;
          v119 = &block_descriptor_40_4;
          v95 = _Block_copy(&aBlock);
          v96 = v4;
          v97 = v107;

          [v97 beginUsingSpringBehavior:v92 completion:v95];

          _Block_release(v95);
          v98 = *&v2[v53];
          *&v2[v53] = v97;

          sub_188A55B8C(v115);
          v39 = v108;
          return sub_188A55B8C(v39);
        }

LABEL_30:
        __break(1u);
        return result;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  v39 = v115;
  return sub_188A55B8C(v39);
}