uint64_t sub_188DE9C1C()
{
  v1 = sub_18A4A3ED8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

unint64_t sub_188DE9D14()
{
  result = qword_1EA9301E0;
  if (!qword_1EA9301E0)
  {
    sub_18A4A3ED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9301E0);
  }

  return result;
}

uint64_t sub_188DE9D6C(char *a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v67 = a2;
  v80 = a1;
  v12 = sub_18A4A3BA8();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18A4A3CC8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_18A4A38A8();
  v17 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v65 - v20;
  v21 = sub_18A4A3A98();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v65 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v65 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = sub_18A4A3AD8();
  v71 = *(v36 - 8);
  v72 = v36;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v70 = &v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a3;
  v82 = a3;
  v78 = v15;
  v39 = *(v15 + 56);
  v39(v35, 1, 1, v14, v37);
  v79 = v14;
  (v39)(v32, 1, 1, v14);
  v40 = v67;
  v41 = [v67 role];
  if (v41 > 3)
  {
    v42 = MEMORY[0x1E69DBB68];
  }

  else
  {
    v42 = qword_1E70F1E88[v41];
  }

  (*(v22 + 104))(v24, *v42, v21);
  (*(v22 + 32))(v27, v24, v21);
  v43 = *(v17 + 104);
  v44 = v69;
  v43(v66, *MEMORY[0x1E69DBAB8], v69);
  v45 = v70;
  sub_18A4A3AB8();
  v46 = [v40 isEnabled];
  v47 = MEMORY[0x1E69DBAB0];
  if (!v46)
  {
    v47 = MEMORY[0x1E69DBAC0];
  }

  v43(v68, *v47, v44);
  sub_18A4A3A88();
  v48 = [v40 titleLabel];
  if (v48)
  {
    v49 = v48;
    v50 = v80;
  }

  else
  {
    v51 = [v40 subtitleLabel];
    v50 = v80;
    if (!v51)
    {
      goto LABEL_13;
    }

    v49 = v51;
  }

  v52 = [(UIView *)v40 _containsView:v49];
  if (v52)
  {
    MEMORY[0x1EEE9AC00](v52);
    *(&v65 - 10) = v40;
    *(&v65 - 9) = v49;
    *(&v65 - 8) = a4;
    *(&v65 - 7) = a5;
    *(&v65 - 6) = a6;
    *(&v65 - 5) = a7;
    *(&v65 - 4) = v50;
    *(&v65 - 3) = sub_188DE7D34;
    *(&v65 - 2) = v81;
    sub_18A4A33C8();
    sub_18A4A3AC8();
  }

LABEL_13:
  v53 = [v40 imageView];
  if (v53)
  {
    v54 = v53;
    v55 = [(UIView *)v40 _containsView:v53];
    if (v55)
    {
      MEMORY[0x1EEE9AC00](v55);
      *(&v65 - 10) = v40;
      *(&v65 - 9) = v54;
      *(&v65 - 8) = a4;
      *(&v65 - 7) = a5;
      *(&v65 - 6) = a6;
      *(&v65 - 5) = a7;
      *(&v65 - 4) = v50;
      *(&v65 - 3) = sub_188DE7D34;
      *(&v65 - 2) = v81;
      sub_18A4A33C8();
      sub_18A4A3AA8();
    }
  }

  MEMORY[0x1EEE9AC00](v53);
  *(&v65 - 8) = v40;
  *(&v65 - 7) = a4;
  *(&v65 - 6) = a5;
  *(&v65 - 5) = a6;
  *(&v65 - 4) = a7;
  *(&v65 - 3) = v50;
  *(&v65 - 2) = sub_188DE7D34;
  *(&v65 - 1) = v81;
  sub_18A4A33D8();
  [v40 bounds];
  (*(v73 + 16))(v73, v40);
  v57 = v71;
  v56 = v72;
  v58 = v74;
  (*(v71 + 16))(v74, v45, v72);
  (*(v75 + 104))(v58, *MEMORY[0x1E69DBBD8], v76);
  v59 = v77;
  sub_18A4A3748();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
  v60 = v78;
  v61 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_18A64BFB0;
  v63 = v79;
  (*(v60 + 16))(v62 + v61, v59, v79);
  sub_18A4A3438();

  (*(v60 + 8))(v59, v63);
  return (*(v57 + 8))(v45, v56);
}

uint64_t sub_188DEA6C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v21[4] = sub_188DFA1F8;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188DFA16C;
  v21[3] = &block_descriptor_81;
  v19 = _Block_copy(v21);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188DEA854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v21[4] = sub_188DFA228;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_188DFA16C;
  v21[3] = &block_descriptor_10_0;
  v19 = _Block_copy(v21);

  [a1 _intelligenceCollectElementFor_in_using_transformToRoot_];
  _Block_release(v19);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188DEA9D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_188DFA228;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188DFA16C;
  aBlock[3] = &block_descriptor_17_1;
  v17 = _Block_copy(aBlock);

  v19.receiver = a1;
  v19.super_class = UIButton;
  objc_msgSendSuper2(&v19, sel__intelligenceCollectSubelementsIn_using_transformToRoot_, a2, v17, a5, a6, a7, a8);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t _sSo7UILabelC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0I16ElementCollectorCtF_0(uint64_t a1)
{
  v38 = a1;
  v2 = sub_18A4A3BA8();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A3A28();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v32 = sub_18A4A3A48();
  v13 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18A4A2588();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  sub_188DFA2EC(&v31 - v21);
  (*(v17 + 16))(v19, v22, v16);
  v23 = sub_18A4A3A18();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = sub_18A4A3EE8();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  sub_18A4A39C8();
  v25 = [v1 numberOfLines];
  v26 = MEMORY[0x1E69DBB58];
  if (v25 != 1)
  {
    v26 = MEMORY[0x1E69DBB60];
  }

  (*(v34 + 104))(v33, *v26, v35);
  sub_18A4A3A38();
  v27 = v32;
  (*(v13 + 16))(v4, v15, v32);
  v29 = v36;
  v28 = v37;
  (*(v36 + 104))(v4, *MEMORY[0x1E69DBBC8], v37);
  sub_18A4A3418();
  (*(v29 + 8))(v4, v28);
  (*(v13 + 8))(v15, v27);
  return (*(v17 + 8))(v22, v16);
}

uint64_t sub_188DEB090()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_188DEBB54(void *a1)
{
  v2 = [a1 viewWithTag_];
  if (v2)
  {
    v8 = v2;
    type metadata accessor for _UILightBoxView();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility), *(v3 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility) = 0, v4))
    {
      v5 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_deactivationTransition;
      v6 = v3;
      swift_beginAccess();
      sub_188A3F29C(v6 + v5, v9, &qword_1EA93A978);
      v7 = v8;
      sub_188DECC80(0, v9);

      sub_188A3F5FC(v9, &qword_1EA93A978);
    }

    else
    {
    }
  }
}

uint64_t sub_188DEBC84(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);

  return sub_188DEBCCC(a1, v3);
}

uint64_t sub_188DEBCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _UILightEffectTransitionController.Handle();
  v18[3] = v4;
  v18[4] = &off_1EFADCFC0;
  v18[0] = a2;
  if (a1 == 1)
  {
    __swift_project_boxed_opaque_existential_0(v18, v4);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = objc_opt_self();

      if (([v7 _isInAnimationBlockWithAnimationsEnabled] & 1) == 0 && sub_188DD0CCC() || !swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_14;
      }

      v8 = *(v6 + 24);
      ObjectType = swift_getObjectType();
      v10.n128_u64[0] = 1.0;
      (*(v8 + 32))(v6, ObjectType, v8, v10);
LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:

      return __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    __swift_project_boxed_opaque_existential_0(v18, v4);
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = objc_opt_self();

      if (([v13 _isInAnimationBlockWithAnimationsEnabled] & 1) == 0 && sub_188DD0CCC() || !swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_14;
      }

      v14 = *(v12 + 24);
      v15 = swift_getObjectType();
      v16.n128_u64[0] = 0;
      (*(v14 + 32))(v12, v15, v14, v16);
      goto LABEL_13;
    }

LABEL_15:

    return __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  type metadata accessor for _UIVisibility(0);

  result = sub_18A4A8768();
  __break(1u);
  return result;
}

uint64_t sub_188DEBFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v10 = objc_opt_self();
  (*(v7 + 16))(v9, a1, a2);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = (v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v11, v9, a2);
  *(v13 + v12) = v3;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v21;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_188DEC2D0;
  *(v14 + 24) = v13;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_82;
  v15 = _Block_copy(aBlock);

  [v10 performWithoutAnimation_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v18 = v21;
    if (v21)
    {

      return v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_188DEC224()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_188DEC2D0()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_188DEC6A4(v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16), *(v0 + 24));
}

id sub_188DEC344()
{
  [v0 setHidden_];

  return [v0 setAlpha_];
}

unint64_t sub_188DEC38C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E48);
    v3 = sub_18A4A8488();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_188DD0D9C(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_188DEC4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_188DD0D94(a3, a4, a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_188FA5D64();
      v15 = v23;
      goto LABEL_8;
    }

    sub_188DEE1F8(v20, a6 & 1);
    v15 = sub_188DD0D94(a3, a4, a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = sub_18A4A87A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 16 * v15);
    *v26 = a1;
    v26[1] = a2;
  }

  else
  {
    sub_188DECAF4(v15, a3, a4, a5, a1, a2, v25);
  }
}

uint64_t sub_188DEC634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188DEC6A4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39[0] = a4;
  swift_getMetatypeMetadata();
  v9 = sub_18A4A72F8();
  v11 = v10;
  if (!sub_188DD0CCC() && swift_unknownObjectWeakLoadStrong())
  {
    v12 = a2[3];
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(a2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v14 = type metadata accessor for _UILightEffectTransitionController.Handle();
  v15 = swift_allocObject();
  swift_weakInit();
  v15[2] = a4;
  v15[3] = v9;
  v15[4] = v11;
  swift_weakAssign();
  *a3 = v15;

  swift_beginAccess();
  v16 = a2[5];
  if (*(v16 + 16))
  {

    v17 = sub_188DD0D94(a4, v9, v11);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 16 * v17);

      if (v19)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v20 = sub_188DEC38C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = a2[5];
  a2[5] = 0x8000000000000000;
  sub_188DEC4A4(0, v20, a4, v9, v11, isUniquelyReferenced_nonNull_native);

  a2[5] = v42;
  swift_endAccess();
  result = *a3;
  if (!*a3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v40 = v14;
  v41 = &off_1EFADCFA8;
  v39[0] = result;
  v23 = a5;
  v24 = *(a5 + 16);
  LOBYTE(a5) = a5 + 16;

  v24(v39, a4, v23);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v25 = *a3;
  if (*a3)
  {
    v26 = a2[4];

    v40 = v14;
    v41 = &off_1EFADCFC0;
    v39[0] = v25;
    (*(v23 + 24))(v26, v39, a4, v23);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
LABEL_12:
    swift_beginAccess();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v42 = a2[5];
    v28 = v42;
    a2[5] = 0x8000000000000000;
    result = sub_188DD0D94(a4, v9, v11);
    v30 = *(v28 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      __break(1u);
      goto LABEL_26;
    }

    LOBYTE(a5) = v29;
    if (*(v28 + 24) < v33)
    {
      sub_188DEE1F8(v33, v27);
      result = sub_188DD0D94(a4, v9, v11);
      if ((a5 & 1) == (v34 & 1))
      {
LABEL_17:
        if (a5)
        {
          while (1)
          {
            v35 = v42;
            v36 = (*(v42 + 56) + 16 * result);
            if (__OFADD__(*v36, 1))
            {
              break;
            }

            if (v36[1])
            {
              ++*v36;
            }

            else
            {
              a5 = result;
              sub_188F1664C(*(v42 + 48) + 24 * result);
              sub_188DD1DC4(a5, v35);
            }

            a2[5] = v35;
            result = swift_endAccess();
            if (!*(v35 + 16))
            {
              goto LABEL_27;
            }

            result = sub_188DD0D94(a4, v9, v11);
            if (v37)
            {
            }

LABEL_28:
            __break(1u);
LABEL_29:
            v38 = result;
            sub_188FA5D64();
            result = v38;
            if ((a5 & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      result = sub_18A4A87A8();
      __break(1u);
    }

    if ((v27 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_188DECAF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 24 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v8 = (a7[7] + 16 * result);
  *v8 = a5;
  v8[1] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

void sub_188DECB48(void *a1)
{
  v2 = [a1 viewWithTag_];
  if (v2)
  {
    v8 = v2;
    type metadata accessor for _UILightBoxView();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility), *(v3 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility) = 1, v4 != 1))
    {
      v5 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_activationTransition;
      v6 = v3;
      swift_beginAccess();
      sub_188A3F29C(v6 + v5, v9, &qword_1EA93A978);
      v7 = v8;
      sub_188DECC80(1, v9);

      sub_188A3F5FC(v9, &qword_1EA93A978);
    }

    else
    {
    }
  }
}

uint64_t sub_188DECC80(uint64_t result, uint64_t a2)
{
  if (*(v2 + 32) != result)
  {
    v3 = result;
    sub_188DEC634(a2, &aBlock);
    if (v19)
    {
      sub_188A5EBAC(&aBlock, v22);
      v4 = objc_opt_self();
      if ([v4 _isInAnimationBlockWithAnimationsEnabled])
      {
        v5 = v23;
        v6 = v24;
        v7 = __swift_project_boxed_opaque_existential_0(v22, v23);
        v8 = sub_188DEBFBC(v7, v5, v6);
        *(v2 + 32) = v3;
        v9 = v23;
        v10 = v24;
        __swift_project_boxed_opaque_existential_0(v22, v23);
        v19 = type metadata accessor for _UILightEffectTransitionController.Handle();
        v20 = &off_1EFADCFC0;
        *&aBlock = v8;
        v11 = *(v10 + 24);

        v11(v3, &aBlock, v9, v10);
        __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
        v20 = sub_188DD1378;
        v21 = v8;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v18 = sub_188ABD010;
        v19 = &block_descriptor_37_1;
        v12 = _Block_copy(&aBlock);

        [v4 _addOrPerformCompletion_];
        _Block_release(v12);

        return __swift_destroy_boxed_opaque_existential_0Tm(v22);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
      sub_188DECEFC(&aBlock);
    }

    v13 = *(v2 + 32);
    v14 = sub_188DD0CCC();
    *(v2 + 32) = v3;
    result = sub_188DD0CCC();
    if (v14 >= 1 && !result || !v14 && !result && v13 != v3)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v15 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 16))(v2, v3, ObjectType, v15);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_188DECEFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188DECF64(void *a1)
{
  v2 = [a1 subviews];
  sub_188AF7A44();
  v3 = sub_18A4A7548();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_188E49300(v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v9 = [a1 layer];
  [v9 setAllowsGroupBlending_];
}

uint64_t sub_188DED0E8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v3 = OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    if (!v7)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = v12 | (v10 << 6);
        if (!*(*(v4 + 56) + 16 * v13))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_7;
        }
      }

      v15 = *(*(v4 + 48) + 8 * v13);
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = v2;
      if ((result & 1) == 0)
      {
        result = sub_188DED640(0, v11[2] + 1, 1, v11);
        v11 = result;
      }

      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_188DED640((v16 > 1), v17 + 1, 1, v11);
        v11 = result;
      }

      v11[2] = v17 + 1;
      v11[v17 + 4] = v15;
      v2 = v36;
    }

    while (v7);
    while (1)
    {
LABEL_7:
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v14 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v14);
      ++v10;
      if (v7)
      {
        v10 = v14;
        goto LABEL_5;
      }
    }

    v18 = v11[2];
    if (v18)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

  v19 = OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v11 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_24:
    v23 = OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts;
    v24 = v11 + 4;
    do
    {
      while (1)
      {
        v25 = *v24++;
        swift_beginAccess();
        v26 = sub_188B85570(v25);
        if (v27)
        {
          break;
        }

        swift_endAccess();
        if (!--v18)
        {
          goto LABEL_30;
        }
      }

      v28 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *(v1 + v23);
      *(v1 + v23) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA3710();
      }

      v31 = v28;
      v32 = *(*(v30 + 56) + 16 * v28 + 8);
      sub_188DED478(v31, v30);
      *(v1 + v23) = v30;
      swift_endAccess();
      [v32 removeFromSuperview];

      --v18;
    }

    while (v18);
    goto LABEL_30;
  }

  v11 = sub_1890BA3CC(v21, 0);
  v22 = sub_1890B9DC0(&v37, v11 + 4, v21, v20);

  result = sub_188E036A4();
  if (v22 != v21)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v18 = v11[2];
  if (v18)
  {
    goto LABEL_24;
  }

LABEL_30:

  v33 = OBJC_IVAR____TtC5UIKitP33_FDF62CE22547DB2BF49759240B89F9C126_UISharedTextureController_sharingContexts;
  result = swift_beginAccess();
  if (!*(*(v1 + v33) + 16))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v34 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v34 + 24))(v1, ObjectType, v34);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_188DED478(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18A4A7ED8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v9);
      result = sub_18A4A88E8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_188DED60C()
{
  sub_188DED94C();

  return swift_deallocClassInstance();
}

void sub_188DED6C8()
{
  v1 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow);
  *(v0 + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow) = 0;
}

id sub_188DED94C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v21 = v0;
  v22 = *(v0 + 40);
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
LABEL_6:
  if (v7)
  {
    v11 = v10;
LABEL_11:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(v22 + 56) + ((v11 << 10) | (16 * v12)) + 8);
    v14 = 1 << *(v13 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    for (i = 0; v16; result = [*(*(v13 + 56) + ((v19 << 9) | (8 * v20))) removeFromSuperview])
    {
      v19 = i;
LABEL_20:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
    }

    while (1)
    {
      v19 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        result = swift_bridgeObjectRelease_n();
        v10 = v11;
        goto LABEL_6;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++i;
      if (v16)
      {
        i = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        sub_188B223B8(v21 + 16);

        return v21;
      }

      v7 = *(v3 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_188DEDDCC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result[OBJC_IVAR____UIIntelligenceSystemNoiseView_preferAudioReactivity];

    v2 = sub_188EBA480(v1, 0, 0);
    v3 = [objc_allocWithZone(MEMORY[0x1E698E5F0]) initWithInfo:v2 responder:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64B710;
    *(inited + 32) = v3;
    sub_188DBF8A0(inited);
    v6 = v5;
    swift_setDeallocating();
    swift_arrayDestroy();
    return v6;
  }

  return result;
}

id sub_188DEDF98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void sub_188DEDFE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_noiseView);
  swift_setAtReferenceWritableKeyPath();

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit29_UIIntelligenceNoisyLightView_lightView);
  swift_setAtReferenceWritableKeyPath();
}

double sub_188DEE1B0()
{
  v1 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow);
  if (!v1)
  {
    return 0.0;
  }

  [v1 bounds];
  return result;
}

uint64_t sub_188DEE1F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CA0);
  v36 = a2;
  result = sub_18A4A8468();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 24 * v21);
      v23 = v22[1];
      v24 = v22[2];
      v25 = (*(v5 + 56) + 16 * v21);
      v26 = v25[1];
      v37 = *v25;
      v38 = *v22;
      if ((v36 & 1) == 0)
      {
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v38);
      sub_18A4A7348();
      result = sub_18A4A88E8();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v38;
      v16[1] = v23;
      v16[2] = v24;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v37;
      v17[1] = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_188DEE4D0()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for _UILightEffectTransitionView();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset];
  v3 = [v0 subviews];
  sub_188AF7A44();
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
  {
    v6 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviews;
    v7 = v4 & 0xC000000000000001;
    swift_beginAccess();
    v8 = 0;
    v25 = v4 + 32;
    v26 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0.0)
    {
      v2 = -0.0;
    }

    else
    {
      v2 = -v2;
    }

    v23 = i;
    v24 = v4;
    v21 = v4 & 0xC000000000000001;
    v22 = v6;
    while (1)
    {
      if (v7)
      {
        v9 = sub_188E49300(v8, v4);
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v25 + 8 * v8);
      }

      v10 = v9;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v12 = *&v1[v6];
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = sub_18A4A7FC8();

        if (v13)
        {
          goto LABEL_17;
        }
      }

      else if (*(v12 + 16))
      {

        v14 = sub_18A4A7C78();
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        if ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = *(*(v12 + 48) + 8 * v16);
            v19 = sub_18A4A7C88();

            if (v19)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          i = v23;
          v4 = v24;
          v7 = v21;
          v6 = v22;
LABEL_17:
          [v1 bounds];
          CGRectInset(v28, v2, v2);
          goto LABEL_9;
        }

LABEL_7:

        i = v23;
        v4 = v24;
        v7 = v21;
        v6 = v22;
      }

      [v1 bounds];
LABEL_9:
      [v10 setFrame_];

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }
}

uint64_t sub_188DEE7D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C180);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v24 = *v22;
      v23 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v23;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v21);
      result = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v24;
      v16[1] = v23;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_188DEEB14(uint64_t a1, char a2)
{
  v4 = type metadata accessor for _UILightEffectTransitionController.Handle();
  v14[3] = v4;
  v14[4] = &off_1EFADCFA8;
  v14[0] = a1;
  type metadata accessor for _UIDirectionalMaskView();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v6 = [v5 init];
  v6[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode] = a2 & 1;
  sub_188DEF978();
  v7 = v6;
  [v7 setNeedsLayout];
  v8 = [v7 layer];

  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  [v8 setCompositingFilter_];

  v10 = *__swift_project_boxed_opaque_existential_0(v14, v4);
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC98);
    v11 = sub_18A4A72F8();
    sub_188DEFD74(v7, &type metadata for _UILightEffectDirectionalTransition.MaskKey, v11, v12, v10);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v14);
}

uint64_t sub_188DEED64(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);

  return sub_188DEF2F4(a1, v5, v4);
}

id sub_188DEEDB4()
{
  v28.receiver = v0;
  v28.super_class = type metadata accessor for _UIDirectionalMaskView();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v29);
  v2 = Width * 0.5 * (Width * 0.5);
  [v0 bounds];
  Height = CGRectGetHeight(v30);
  v4 = *&v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalOutset] + sqrt(v2 + Height * 0.5 * (Height * 0.5));
  v5 = OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode;
  v6 = 80.0;
  if (v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode])
  {
    v6 = 160.0;
  }

  v7 = v4 + v6;
  v8 = *&v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle];
  [v8 bounds];
  [v8 setBounds_];
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v10 = 0.1;
  if (v0[v5])
  {
    v10 = 0.7;
  }

  if (v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition + 4])
  {
    v10 = 1.0;
  }

  CGAffineTransformMakeScale(&v27, v10, v10);
  [v8 setTransform_];
  sub_188DEF0C4();
  v12 = v11;
  [v0 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition];
  v22 = v21[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA939ED0);
  if (v22 == 1)
  {
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    MidX = CGRectGetMidX(v31);
LABEL_9:
    v32.origin.x = v14;
    v32.origin.y = v16;
    v32.size.width = v18;
    v32.size.height = v20;
    MidY = CGRectGetMidY(v32);
    return [v8 setCenter_];
  }

  v26 = *v21;
  if (*v21 > 1)
  {
    if (v26 == 2)
    {
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MidX = v12 + CGRectGetMaxX(v34);
      goto LABEL_9;
    }

    if (v26 == 3)
    {
      v37.origin.x = v14;
      v37.origin.y = v16;
      v37.size.width = v18;
      v37.size.height = v20;
      MidX = CGRectGetMidX(v37);
      v38.origin.x = v14;
      v38.origin.y = v16;
      v38.size.width = v18;
      v38.size.height = v20;
      MidY = v12 + CGRectGetMaxY(v38);
      return [v8 setCenter_];
    }
  }

  else
  {
    if (!v26)
    {
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      MidX = CGRectGetMinX(v33) - v12;
      goto LABEL_9;
    }

    if (v26 == 1)
    {
      v35.origin.x = v14;
      v35.origin.y = v16;
      v35.size.width = v18;
      v35.size.height = v20;
      MidX = CGRectGetMidX(v35);
      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      MidY = CGRectGetMinY(v36) - v12;
      return [v8 setCenter_];
    }
  }

  result = sub_18A4A86B8();
  __break(1u);
  return result;
}

void sub_188DEF0C4()
{
  if ((v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition + 4] & 1) == 0)
  {
    [v0 bounds];
    CGRectGetWidth(v2);
    [v0 bounds];
    CGRectGetHeight(v3);
    v1 = v0[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalDistance + 8];
    if (v1 != 255 && (v1 & 1) != 0)
    {
      [v0 bounds];
      CGRectGetWidth(v4);
      [v0 bounds];
      CGRectGetHeight(v5);
    }
  }
}

uint64_t sub_188DEF2F4(uint64_t a1, uint64_t a2, int a3)
{
  v21 = type metadata accessor for _UILightEffectTransitionController.Handle();
  v22 = &off_1EFADCFC0;
  v20[0] = a2;
  __swift_project_boxed_opaque_existential_0(v20, v21);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_opt_self();

    if (([v8 _isInAnimationBlockWithAnimationsEnabled] & 1) != 0 || !sub_188DD0CCC())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v7 + 24);
        ObjectType = swift_getObjectType();
        (*(v9 + 32))(v7, ObjectType, v9, 1.0);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
  }

  v11 = *__swift_project_boxed_opaque_existential_0(v20, v21);
  if (!swift_weakLoadStrong())
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC98);
  v12 = sub_18A4A72F8();
  v14 = sub_188DEF51C(&type metadata for _UILightEffectDirectionalTransition.MaskKey, v12, v13, v11);

  if (!v14)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  type metadata accessor for _UIDirectionalMaskView();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
LABEL_16:

    return __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  if (a1 == 1)
  {
    a3 = 0;
    v16 = 1;
LABEL_15:
    v17 = &v15[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition];
    *v17 = a3;
    v17[4] = v16;
    v18 = v15;
    [v15 setNeedsLayout];
    [v18 layoutIfNeeded];
    goto LABEL_16;
  }

  if (!a1)
  {
    v16 = 0;
    goto LABEL_15;
  }

  type metadata accessor for _UIVisibility(0);
  result = sub_18A4A8768();
  __break(1u);
  return result;
}

void *sub_188DEF51C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a4[2];
  v8 = a4[3];
  v10 = a4[4];
  swift_beginAccess();
  v11 = *(v4 + 40);
  if (!*(v11 + 16))
  {
    goto LABEL_7;
  }

  v12 = sub_188DD0D94(v9, v8, v10);
  if ((v13 & 1) == 0)
  {

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v14 = *(*(v11 + 56) + 16 * v12 + 8);

  if (!*(v14 + 16))
  {
    goto LABEL_7;
  }

  v15 = sub_188DD0D94(a1, a2, a3);
  if ((v16 & 1) == 0)
  {
    goto LABEL_7;
  }

  v17 = *(*(v14 + 56) + 8 * v15);
  v18 = v17;
LABEL_8:

  return v17;
}

void sub_188DEF6B0(void *a1)
{
  v1 = [a1 viewWithTag_];
  if (v1)
  {
    v6 = v1;
    type metadata accessor for _UILightEffectTransitionView();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility), *(v2 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility) = 1, v3 != 1))
    {
      v4 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_activationTransition;
      v5 = v2;
      swift_beginAccess();
      sub_188DEC634(v5 + v4, v7);
      sub_188DECC80(1, v7);
      sub_188DECEFC(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_188DEF7B0(void *a1)
{
  v2 = *(v1 + 4);
  v3 = *__swift_project_boxed_opaque_existential_0(a1, a1[3]);

  return sub_188DEEB14(v3, v2);
}

char *sub_188DEF814(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode] = 0;
  v9 = &v4[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_maskPosition];
  *v9 = 0;
  v9[4] = 1;
  *&v4[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalOutset] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_additionalDistance];
  *v10 = 0x3FC999999999999ALL;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_blurRadius] = 0x4044000000000000;
  v11 = OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for _UIDirectionalMaskView();
  v12 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle;
  v14 = *&v12[OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle];
  v15 = v12;
  [v15 addSubview_];
  v16 = [*&v12[v13] layer];
  [v16 setCornerCurve_];

  sub_188DEF978();
  return v15;
}

void sub_188DEF978()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_mode);
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit22_UIDirectionalMaskView_circle);
  v3 = [v2 layer];
  GenericGray = CGColorCreateGenericGray(1.0, 0.0);
  [v3 setBackgroundColor_];

  v5 = [v2 layer];
  if (v1)
  {
    v6 = CGColorCreateGenericGray(1.0, 1.0);
    [v5 setBorderColor_];

    v7 = [v2 layer];
    [v7 setBorderWidth_];

    v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v8 setValue:v9 forKey:*MEMORY[0x1E6979BA8]];

    v10 = [v2 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18A64BFB0;
    *(v11 + 56) = sub_188B0F668();
    *(v11 + 32) = v8;
    v12 = v8;
    v13 = sub_18A4A7518();

    [v10 setFilters_];

    v24 = [v2 layer];
    [v24 setShadowOpacity_];
  }

  else
  {
    v14 = CGColorCreateGenericGray(1.0, 0.0);
    [v5 setBorderColor_];

    v15 = [v2 layer];
    [v15 setBorderWidth_];

    v16 = [v2 layer];
    v17 = sub_18A4A7518();
    [v16 setFilters_];

    v18 = [v2 layer];
    v19 = CGColorCreateGenericGray(1.0, 1.0);
    [v18 setShadowColor_];

    v20 = [v2 layer];
    LODWORD(v21) = 1.0;
    [v20 setShadowOpacity_];

    v22 = [v2 layer];
    [v22 setShadowOffset_];

    v23 = [v2 layer];
    [v23 setShadowRadius_];

    v24 = [v2 layer];
    [v24 setShadowPathIsBounds_];
  }
}

void sub_188DEFD74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = a5[2];
  v10 = a5[3];
  v11 = a5[4];
  swift_beginAccess();
  v12 = *(v5 + 40);
  if (*(v12 + 16))
  {

    v13 = sub_188DD0D94(v9, v10, v11);
    if ((v14 & 1) != 0 && (v15 = *(*(v12 + 56) + 16 * v13 + 8), , , *(v15 + 16)))
    {
      sub_188DD0D94(a2, a3, a4);
      v17 = v16;

      if (v17)
      {
        return;
      }
    }

    else
    {
    }
  }

  v18 = sub_188DD05DC();
  v20 = sub_188DD062C(v36, v9, v10, v11);
  if (*(v19 + 8))
  {
    v21 = v19;

    v22 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(v21 + 8);
    *(v21 + 8) = 0x8000000000000000;
    sub_188DF0308(v22, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *(v21 + 8) = v35;
  }

  (v20)(v36, 0);
  (v18)(v37, 0);
  v24 = *(v6 + 40);
  if (*(v24 + 16))
  {

    v25 = sub_188DD0D94(v9, v10, v11);
    if (v26 & 1) != 0 && (v27 = *(*(v24 + 56) + 16 * v25 + 8), , , *(v27 + 16)) && (v28 = sub_188DD0D94(a2, a3, a4), (v29))
    {
      v30 = *(*(v27 + 56) + 8 * v28);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v6 + 24);
        ObjectType = swift_getObjectType();
        (*(v31 + 24))(v30, v6, ObjectType, v31);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_188DEFFF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934E48);
  v35 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = v21[1];
      v36 = *v21;
      v23 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_18A4A8888();
      MEMORY[0x18CFE37E0](v36);
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v36;
      v16[1] = v22;
      v16[2] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_188DF02BC(uint64_t a1)
{
  [v1 addSubview_];

  return [v1 layoutIfNeeded];
}

void sub_188DF0308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_188DD0D94(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_188FA5BEC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_188DEFFF4(v18, a5 & 1);
    v13 = sub_188DD0D94(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      sub_18A4A87A8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v13);
    *(v24 + 8 * v13) = a1;
  }

  else
  {
    sub_188DF045C(v13, a2, a3, a4, a1, v23);
  }
}

unint64_t sub_188DF045C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 24 * result);
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

id UIFocusItem.isFocused.getter()
{
  sub_188A34624(0, &qword_1EA940A20);
  result = sub_188BA2D38(v0);
  if (result)
  {
    v2 = result;
    v3 = [result focusedItem];

    if (v3)
    {
      swift_unknownObjectRelease();
      return (v3 == v0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_188DF053C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void _UIIntelligenceContentLightEffect._update(_:for:usage:)(int a1, id a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a2 traitCollection];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = &v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  v10 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material];
  if (!v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40])
  {
    v24 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource];
    if (_UIIsCoreMaterialStyle(*&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material]))
    {
      v54 = 0xE90000000000002DLL;
      v51 = v10;
      v25 = sub_18A4A8618();
      MEMORY[0x18CFE22D0](v25);

      v26 = a2;
      v27 = sub_189087810(0x6C6169726574616DLL, 0xE90000000000002DLL, v24, v10, v26);

      goto LABEL_17;
    }

    v28 = v24;
    goto LABEL_16;
  }

  if (v3[OBJC_IVAR____UIIntelligenceContentLightEffect_material + 40] != 1)
  {
    v28 = *&v3[OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource];
LABEL_16:
    v27 = v28;
    goto LABEL_17;
  }

  v46 = a3;
  v11 = *(v9 + 3);
  v13 = *(v9 + 1);
  v12 = *(v9 + 2);
  v45 = *(v9 + 4);
  v14 = v45;

  v15 = [a2 traitCollection];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 userInterfaceStyle];

    if (v17 == 2)
    {
      v10 = v12;
      v13 = v11;
    }
  }

  v44 = *&v4[OBJC_IVAR____UIIntelligenceContentLightEffect_lightSource];
  if (v45 && (v18 = [v14 bundleIdentifier]) != 0)
  {
    v19 = v18;
    v20 = sub_18A4A7288();
    v22 = v21;

    v54 = v22;
    MEMORY[0x18CFE22D0](46, 0xE100000000000000);
    MEMORY[0x18CFE22D0](v10, v13);
    v23 = v20;
  }

  else
  {

    v23 = v10;
    v22 = v13;
  }

  v54 = 0xE90000000000002DLL;
  MEMORY[0x18CFE22D0](v23, v22);

  v29 = a2;

  v30 = v14;
  v27 = sub_189087CDC(0x6C6169726574616DLL, 0xE90000000000002DLL, v44, v10, v13, v45, v29);

  swift_bridgeObjectRelease_n();

  a3 = v46;
LABEL_17:
  v31 = v27;
  v32 = sub_188DF1200(v8, [v4 activationTransitionDirection]);
  v33 = sub_188DF1FC4(v8, [v4 deactivationTransitionDirection]);
  if ((v32 & 0x100000000) != 0)
  {
    v34 = &type metadata for _UILightEffectAlphaTransition;
    v35 = sub_188DF1DD8();
    if ((v33 & 0x100000000) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = &type metadata for _UILightEffectDirectionalTransition;
    v35 = sub_188DF28B0();
    if ((v33 & 0x100000000) != 0)
    {
LABEL_19:
      v36 = &type metadata for _UILightEffectAlphaTransition;
      v37 = sub_188DF1DD8();
      goto LABEL_22;
    }
  }

  v36 = &type metadata for _UILightEffectDirectionalTransition;
  v37 = sub_188DF28B0();
LABEL_22:
  v53 = v31;
  LODWORD(v54) = v32;
  BYTE4(v54) = 0;
  v55 = v34;
  v56 = v35;
  v57 = v33;
  v58 = 0;
  v59 = v36;
  v60 = v37;
  v61 = 0;
  if (a3 == 2)
  {
    v50[3] = _s18_ContentProxyEntryCMa();
    v50[4] = &off_1EFAF4C00;
    sub_1891EB090(v50);
    sub_188A53994(v50, &v52);
    LOBYTE(v51) = 2;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v38 = sub_188DF12D4(&v53, 2);
    sub_1890A2584(&v51, v50);
    v39 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
    swift_beginAccess();
    v40 = *&v38[v39];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38[v39] = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = sub_188DF116C(0, v40[2] + 1, 1, v40);
      *&v38[v39] = v40;
    }

    v43 = v40[2];
    v42 = v40[3];
    if (v43 >= v42 >> 1)
    {
      v40 = sub_188DF116C((v42 > 1), v43 + 1, 1, v40);
    }

    v48 = &type metadata for _UILightEffectProxiedFillSurface;
    v49 = &off_1EFAE6368;
    *&v47 = swift_allocObject();
    sub_1890A2584(v50, v47 + 16);
    v40[2] = v43 + 1;
    sub_188A5EBAC(&v47, &v40[5 * v43 + 4]);
    *&v38[v39] = v40;
    swift_endAccess();

    sub_1890A25E0(&v51);
    sub_188DF0D5C(&v53);
    sub_1890A25E0(v50);
  }

  else
  {
    sub_188DF1C40(0, &v53);

    sub_188DF0D5C(&v53);
  }
}

uint64_t sub_188DF0BAC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_188DF0E08(void *a1)
{
  v1 = [a1 viewWithTag_];
  if (v1)
  {
    v6 = v1;
    type metadata accessor for _UILightEffectTransitionView();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = *(v2 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility), *(v2 + OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility) = 0, v3))
    {
      v4 = OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_deactivationTransition;
      v5 = v2;
      swift_beginAccess();
      sub_188DEC634(v5 + v4, v7);
      sub_188DECC80(0, v7);
      sub_188DECEFC(v7);
    }

    else
    {
    }
  }
}

unint64_t sub_188DF0EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938CA0);
    v3 = sub_18A4A8488();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_188DD0D9C(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

id sub_188DF1084(_DWORD *a1, double a2, double a3, double a4, double a5)
{
  v5 = [objc_allocWithZone(_UIIntelligenceSystemLightView) initWithFrame:*a1 & 1 preferringAudioReactivity:{a2, a3, a4, a5}];
  [v5 _setVisibilityExternallyManaged_];
  return v5;
}

uint64_t sub_188DF1190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A978);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_188DF1200(void *a1, uint64_t a2)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_2;
  }

  v7 = [a1 layoutDirection];
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      v4 = 1;
      return v4 | (v5 << 32);
    }

    if (a2 == 2)
    {
      v5 = 0;
      v4 = 3;
      return v4 | (v5 << 32);
    }

    if (a2 != 3)
    {
      goto LABEL_2;
    }

LABEL_17:
    v4 = 0;
    v5 = 0;
    return v4 | (v5 << 32);
  }

  switch(a2)
  {
    case 4:
LABEL_13:
      v5 = 0;
      v4 = 2;
      return v4 | (v5 << 32);
    case 6:
      if (v7 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 5:
      if (v7 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
  }

LABEL_2:
  v4 = 0;
  v5 = 1;
  return v4 | (v5 << 32);
}

id sub_188DF12D4(void *a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  v5 = [v2 *off_1E70F2570[a2]];
  sub_188A34624(0, &unk_1EA9300F0);
  v6 = sub_18A4A7548();

  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &qword_1EA93C000; v7; i = &qword_1EA93C000)
  {
    v31 = v4;
    v32 = v3;
    v4 = 0;
    v9 = v6 & 0xC000000000000001;
    v36 = v7;
    v37 = v6 & 0xFFFFFFFFFFFFFF8;
    v3 = &unk_18A666DE0;
    v35 = v6;
    while (1)
    {
      if (v9)
      {
        v10 = sub_188E49B54(v4, v6);
      }

      else
      {
        if (v4 >= *(v37 + 16))
        {
          goto LABEL_40;
        }

        v10 = *(v6 + 8 * v4 + 32);
      }

      v11 = v10;
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for _UISurfaceLightEffectEntry();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = v3;
        v16 = (v13 + i[426]);
        if (v16[11] == a1[11])
        {
          v17 = v9;
          sub_188A34624(0, &qword_1ED490230);
          if (sub_18A4A7C88())
          {
            if (v16[4] || a1[4])
            {
              sub_188A3F29C((v16 + 1), &v42, &qword_1EA93A978);
              if (!v43)
              {

                sub_188A3F5FC(&v42, &qword_1EA93A978);
LABEL_31:
                i = &qword_1EA93C000;
                v3 = v15;
                v6 = v35;
                v7 = v36;
                goto LABEL_5;
              }

              sub_188A5EBAC(&v42, v44);
              sub_188A3F29C((a1 + 1), &v39, &qword_1EA93A978);
              if (!v40)
              {

                sub_188A3F5FC(&v39, &qword_1EA93A978);
                __swift_destroy_boxed_opaque_existential_0Tm(v44);
                goto LABEL_31;
              }

              sub_188A5EBAC(&v39, &v42);
              v18 = v45;
              v33 = __swift_project_boxed_opaque_existential_0(v44, v45);
              v19 = v43;
              v20 = __swift_project_boxed_opaque_existential_0(&v42, v43);
              v40 = v19;
              boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
              v22 = v20;
              v9 = v17;
              (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v22, v19);
              LOBYTE(v19) = sub_1890F4B38(v33, &v39, v18);
              sub_188A3F5FC(&v39, &qword_1EA934050);
              __swift_destroy_boxed_opaque_existential_0Tm(&v42);
              __swift_destroy_boxed_opaque_existential_0Tm(v44);
              if ((v19 & 1) == 0)
              {

                i = &qword_1EA93C000;
                v6 = v35;
                v7 = v36;
                v3 = v15;
                goto LABEL_5;
              }
            }

            if (!v16[9] && !a1[9])
            {
LABEL_37:

              return v14;
            }

            v23 = (v16 + 6);
            v3 = v15;
            sub_188A3F29C(v23, &v42, &qword_1EA93A978);
            v6 = v35;
            if (!v43)
            {

              sub_188A3F5FC(&v42, &qword_1EA93A978);
LABEL_35:
              i = &qword_1EA93C000;
              v7 = v36;
              goto LABEL_5;
            }

            sub_188A5EBAC(&v42, v44);
            sub_188A3F29C((a1 + 6), &v39, &qword_1EA93A978);
            if (!v40)
            {

              sub_188A3F5FC(&v39, &qword_1EA93A978);
              __swift_destroy_boxed_opaque_existential_0Tm(v44);
              goto LABEL_35;
            }

            sub_188A5EBAC(&v39, &v42);
            v24 = v45;
            v34 = __swift_project_boxed_opaque_existential_0(v44, v45);
            v25 = v43;
            v26 = __swift_project_boxed_opaque_existential_0(&v42, v43);
            v40 = v25;
            v27 = __swift_allocate_boxed_opaque_existential_0(&v39);
            (*(*(v25 - 8) + 16))(v27, v26, v25);
            LOBYTE(v24) = sub_1890F4B38(v34, &v39, v24);
            sub_188A3F5FC(&v39, &qword_1EA934050);
            __swift_destroy_boxed_opaque_existential_0Tm(&v42);
            __swift_destroy_boxed_opaque_existential_0Tm(v44);
            if (v24)
            {
              goto LABEL_37;
            }

            i = &qword_1EA93C000;
          }

          else
          {
          }

          v9 = v17;
          v7 = v36;
        }

        else
        {
        }

        v3 = v15;
      }

      else
      {
      }

LABEL_5:
      ++v4;
      if (v12 == v7)
      {

        LOBYTE(v4) = v31;
        v3 = v32;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v7 = sub_18A4A7F68();
  }

LABEL_43:
  sub_188DF2878(a1, v44);
  v28 = type metadata accessor for _UISurfaceLightEffectEntry();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry__cachedLightBoxView] = 0;
  sub_188DF2878(v44, &v29[OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_configuration]);
  *&v29[OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces] = MEMORY[0x1E69E7CC0];
  sub_18A4A8888();
  sub_188DF18A8();
  *&v29[OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_tag] = sub_18A4A88E8();
  v41.receiver = v29;
  v41.super_class = v28;
  v14 = objc_msgSendSuper2(&v41, sel_init);
  sub_188DF0D5C(v44);
  if (v4)
  {
    if (v4 == 1)
    {
      [v3 addViewEffect_];
    }

    else
    {
      [v3 addOverlay_];
    }
  }

  else
  {
    [v3 addUnderlay_];
  }

  return v14;
}

uint64_t sub_188DF18A8()
{
  sub_18A4A7C98();
  sub_188A3F29C(v0 + 8, &v2, &qword_1EA93A978);
  if (v3)
  {
    sub_188A5EBAC(&v2, v4);
    __swift_project_boxed_opaque_existential_0(v4, v5);
    sub_18A4A71A8();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    sub_188A3F5FC(&v2, &qword_1EA93A978);
    v4[0] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD78);
    sub_18A4A71A8();
  }

  sub_188A3F29C(v0 + 48, &v2, &qword_1EA93A978);
  if (v3)
  {
    sub_188A5EBAC(&v2, v4);
    __swift_project_boxed_opaque_existential_0(v4, v5);
    sub_18A4A71A8();
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    sub_188A3F5FC(&v2, &qword_1EA93A978);
    v4[0] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93CD78);
    sub_18A4A71A8();
  }

  return MEMORY[0x18CFE37E0](*(v0 + 88));
}

void _UIIntelligenceRimHighlightEffect._update(_:for:usage:)(void *a1, void *a2, uint64_t a3)
{
  if (a3 == 1 && ([v3 activationTransitionDirection] || objc_msgSend(v3, sel_deactivationTransitionDirection)))
  {
    if (!a2)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (([a2 reducedMotion] & 1) == 0)
    {
      v6 = [a2 traitCollection];
      if (v6)
      {
        v7 = v6;
        v8 = sub_188DF1200(v6, [v3 activationTransitionDirection]);
        v9 = sub_188DF1FC4(v7, [v3 deactivationTransitionDirection]);
        if (a1)
        {
          v10 = v9;
          v11 = *&v3[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 16];
          v23 = *&v3[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config];
          v24 = v11;
          v25[0] = *&v3[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 32];
          *(v25 + 9) = *&v3[OBJC_IVAR____UIIntelligenceRimHighlightEffect_config + 41];
          v12 = type metadata accessor for _UIRimHighlightEffectViewEntry();
          v13 = objc_allocWithZone(v12);
          *&v13[OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry__cachedTransitionView] = 0;
          v14 = &v13[OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config];
          v15 = *(v25 + 9);
          v17 = v24;
          v16 = v25[0];
          *v14 = v23;
          *(v14 + 1) = v17;
          *(v14 + 2) = v16;
          *(v14 + 41) = v15;
          v18 = &v13[OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_activationOrigin];
          *v18 = v8;
          v18[4] = BYTE4(v8) & 1;
          v19 = &v13[OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_deactivationOrigin];
          *v19 = v10;
          v19[4] = BYTE4(v10) & 1;
          sub_188DF0BF8(&v23, v22);
          v21.receiver = v13;
          v21.super_class = v12;
          v20 = objc_msgSendSuper2(&v21, sel_init);
          [a1 addOverlay_];

          return;
        }

LABEL_11:
        __break(1u);
      }
    }
  }
}

void sub_188DF1C40(char a1, void *a2)
{
  v3 = sub_188DF12D4(a2, a1);
  v4 = OBJC_IVAR____TtC5UIKitP33_DE00D3934C8DD6B37DA91C2A6799985526_UISurfaceLightEffectEntry_surfaces;
  swift_beginAccess();
  v5 = *&v3[v4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v3[v4] = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_188DF116C(0, v5[2] + 1, 1, v5);
    *&v3[v4] = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_188DF116C((v7 > 1), v8 + 1, 1, v5);
  }

  v10 = &type metadata for _UILightEffectContainerFillSurface;
  v11 = &off_1EFAE64D0;
  LOBYTE(v9) = a1;
  v5[2] = v8 + 1;
  sub_188A5EBAC(&v9, &v5[5 * v8 + 4]);
  *&v3[v4] = v5;
  swift_endAccess();
}

unint64_t sub_188DF1DD8()
{
  result = qword_1EA930120;
  if (!qword_1EA930120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930120);
  }

  return result;
}

char *sub_188DF1E3C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  v16 = OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection;
  *&v7[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__connection] = 0;
  v17 = &v7[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__texture];
  *v17 = a1;
  *(v17 + 1) = a2;
  *(v17 + 2) = a3;
  *&v7[v16] = 0;
  v18 = objc_allocWithZone(_UIPortalView);

  v19 = [v18 init];
  *&v7[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal] = v19;
  v25.receiver = v7;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a4, a5, a6, a7);
  v21 = OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal;
  v22 = *&v20[OBJC_IVAR____TtC5UIKit24_UISharedTextureViewport__portal];
  v23 = v20;
  [v23 addSubview_];
  [*&v20[v21] setClipsToBounds_];

  return v23;
}

uint64_t sub_188DF1F6C()
{
  v1 = *(v0 + 4);
  sub_18A4A88B8();
  return MEMORY[0x18CFE37E0](v1);
}

uint64_t get_enum_tag_for_layout_string_5UIKit24_UILightEffectTransition_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_188DF1FC4(void *a1, uint64_t a2)
{
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    goto LABEL_2;
  }

  v7 = [a1 layoutDirection];
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      v5 = 0;
      v4 = 3;
      return v4 | (v5 << 32);
    }

    if (a2 == 2)
    {
      v5 = 0;
      v4 = 1;
      return v4 | (v5 << 32);
    }

    if (a2 != 3)
    {
      goto LABEL_2;
    }

LABEL_17:
    v5 = 0;
    v4 = 2;
    return v4 | (v5 << 32);
  }

  switch(a2)
  {
    case 4:
LABEL_13:
      v4 = 0;
      v5 = 0;
      return v4 | (v5 << 32);
    case 6:
      if (v7 == 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 5:
      if (v7 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
  }

LABEL_2:
  v4 = 0;
  v5 = 1;
  return v4 | (v5 << 32);
}

char *sub_188DF2098(void *a1)
{
  v2 = OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry__cachedTransitionView;
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry__cachedTransitionView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry__cachedTransitionView);
  }

  else
  {
    v5 = v1;
    [a1 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if (*(v1 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_activationOrigin + 4))
    {
      v15 = 0;
      v16 = 0;
      memset(v52, 0, 24);
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_activationOrigin);
      v16 = sub_188DF28B0();
      LODWORD(v52[0]) = v17;
      BYTE4(v52[0]) = 1;
      v15 = &type metadata for _UILightEffectDirectionalTransition;
    }

    v52[3] = v15;
    v52[4] = v16;
    if (*(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_deactivationOrigin + 4))
    {
      v18 = 0;
      v19 = 0;
      memset(v51, 0, 24);
    }

    else
    {
      v20 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_deactivationOrigin);
      v19 = sub_188DF28B0();
      LODWORD(v51[0]) = v20;
      BYTE4(v51[0]) = 1;
      v18 = &type metadata for _UILightEffectDirectionalTransition;
    }

    v51[3] = v18;
    v51[4] = v19;
    v21 = type metadata accessor for _UILightEffectTransitionView();
    v22 = objc_allocWithZone(v21);
    v23 = &v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_activationTransition];
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v24 = &v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_deactivationTransition];
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0;
    *&v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_visibility] = 0;
    swift_beginAccess();
    sub_188DF1190(v52, v23);
    swift_endAccess();
    swift_beginAccess();
    sub_188DF1190(v51, v24);
    swift_endAccess();
    type metadata accessor for _UILightEffectTransitionController();
    v25 = swift_allocObject();
    v25[3] = 0;
    swift_unknownObjectWeakInit();
    v26 = MEMORY[0x1E69E7CC0];
    v25[5] = sub_188DF0EF8(MEMORY[0x1E69E7CC0]);
    v25[3] = 0;
    swift_unknownObjectWeakAssign();
    v25[4] = 0;
    *&v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionController] = v25;
    if (v26 >> 62 && sub_18A4A7F68())
    {
      sub_188FBFE24(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CD0];
    }

    *&v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviews] = v27;
    *&v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset] = 0;
    v22[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_hidesWhenIdle] = 1;
    v47.receiver = v22;
    v47.super_class = v21;
    v28 = objc_msgSendSuper2(&v47, sel_initWithFrame_, v8, v10, v12, v14);
    *(*&v28[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionController] + 24) = &off_1EFAEB4A8;
    swift_unknownObjectWeakAssign();
    v29 = v28;
    [v29 setHidden_];
    sub_188DECEFC(v51);
    sub_188DECEFC(v52);
    v30 = (v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config);
    v31 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 16);
    v48 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config);
    v49 = v31;
    v33 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config);
    v32 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 16);
    *v50 = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 32);
    *(&v50[1] + 1) = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 41);
    v45[0] = v33;
    v45[1] = v32;
    v46[0] = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 32);
    *(v46 + 9) = *(v5 + OBJC_IVAR____TtC5UIKit30_UIRimHighlightEffectViewEntry_config + 41);
    v34 = objc_allocWithZone(type metadata accessor for _UISoftOutlineView());
    sub_188DF0BF8(&v48, &v44);
    v35 = 0.0;
    v36 = _UISoftOutlineView.init(frame:configuration:)(v45, 0.0, 0.0, 0.0, 0.0);
    [v29 addSubview_];
    if (v30[56])
    {
      v37 = *&v49;
      if (v30[56] != 2)
      {
        v38 = *v30;
        if (v38 == 2)
        {
          v37 = *&v49 * 0.5;
        }

        else if (v38 != 1)
        {
          v37 = 0.0;
        }
      }

      v35 = v37 + v50[0] * 2.8 + v50[1];
    }

    *&v29[OBJC_IVAR____TtC5UIKit28_UILightEffectTransitionView_transitionSubviewOutset] = v35;
    [v29 setNeedsLayout];
    [v29 setTag_];
    [a1 bounds];
    [v29 setFrame_];
    [v29 setAutoresizingMask_];
    [v29 setCompositingMode_];
    v39 = [v29 layer];
    [v39 setAllowsLimitedHeadroom_];

    v40 = [v29 layer];
    [v40 setContentsMaximumDesiredEDR_];

    v41 = *(v5 + v2);
    *(v5 + v2) = v28;
    v4 = v29;

    v3 = 0;
  }

  v42 = v3;
  return v4;
}

id sub_188DF2654()
{
  type metadata accessor for _UILightEffectContainerFillSurface.SurfaceView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_188DF268C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  sub_18A4A88F8();
  MEMORY[0x18CFE37E0](a1);
  MEMORY[0x18CFE37E0](a2);
  v15 = sub_18A4A88D8();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = objc_allocWithZone(type metadata accessor for _UISharedTextureViewport());
  return sub_188DF1E3C(v15, a8, v16, a3, a4, a5, a6);
}

id sub_188DF2768(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v11 = v9(v10, a2, a3, a4, a5);

  return v11;
}

unint64_t sub_188DF28B0()
{
  result = qword_1EA92F860;
  if (!qword_1EA92F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F860);
  }

  return result;
}

id _UIBadgeGetTabBarVisualStyle(uint64_t a1, uint64_t a2)
{
  if (a1 || !a2)
  {
    if (a1 == 1 && a2)
    {
      v2 = &qword_1ED4991B8;
      v3 = qword_1ED4991B8;
      if (qword_1ED4991B8)
      {
        goto LABEL_18;
      }
    }

    else if (a1 == 2 || a1 == 8)
    {
      v2 = &qword_1ED4991A0;
      v3 = qword_1ED4991A0;
      if (qword_1ED4991A0)
      {
        goto LABEL_18;
      }
    }

    else if (a1 == 3)
    {
      v2 = &_MergedGlobals_1_1;
      v3 = _MergedGlobals_1_1;
      if (_MergedGlobals_1_1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v2 = &qword_1ED4991A8;
      v3 = qword_1ED4991A8;
      if (qword_1ED4991A8)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v2 = &qword_1ED4991B0;
    v3 = qword_1ED4991B0;
    if (qword_1ED4991B0)
    {
      goto LABEL_18;
    }
  }

  v4 = objc_opt_new();
  v5 = *v2;
  *v2 = v4;

  v3 = *v2;
LABEL_18:
  v6 = v3;

  return v6;
}

void sub_188DF31D0(uint64_t a1)
{
  sub_188DF3838();
  if (!v1)
  {
    v4 = v3;
    [v3 addSubview_];
  }
}

void sub_188DF3218()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for _UILightEffectContainerFillSurface.SurfaceView();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v2 = [v0 traitCollection];
  v3 = sub_188DC8974();
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    v6 = *&v3;
    v7 = [v1 layer];
    [v7 setCornerRadius_];
  }

  v8 = [v1 traitCollection];
  v9 = sub_188DC8E18();

  if (v9)
  {
    v10 = [v1 layer];
    [v10 setCornerCurve_];
  }

  v11 = [v1 traitCollection];
  sub_188DC9358();
  v13 = v12;
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    v16 = [v1 layer];
    [v16 setMaskedCorners_];
  }
}

void sub_188DF33D8()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for _UIShadowEdgeMask();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v2 = [v0 traitCollection];
  *&v3 = COERCE_DOUBLE(sub_188DC8974());
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    v6 = *&v3;
    v7 = [v1 traitCollection];
    [v7 displayScale];
    v9 = v8;

    if (*&v1[OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_region])
    {
      v10 = 1.0 / v9;
    }

    else
    {
      v10 = -(1.0 / v9);
    }

    v11 = [v1 layer];
    [v11 setCornerRadius_];
  }

  v12 = [v1 traitCollection];
  v13 = sub_188DC8E18();

  if (v13)
  {
    v14 = [v1 layer];
    [v14 setCornerCurve_];
  }

  v15 = [v1 traitCollection];
  sub_188DC9358();
  v17 = v16;
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    v20 = [v1 layer];
    [v20 setMaskedCorners_];
  }

  v21 = [v1 layer];
  v22 = [v1 traitCollection];
  [v22 displayScale];
  v24 = v23;

  [v21 setContentsScale_];
  v25 = [v1 layer];
  v26 = [objc_opt_self() blackColor];
  v27 = [v26 CGColor];

  [v25 setShadowColor_];
  v28 = [v1 layer];
  [v28 setShadowRadius_];

  v29 = [v1 layer];
  LODWORD(v30) = 1.0;
  [v29 setShadowOpacity_];

  v31 = [v1 layer];
  [v31 setShadowOffset_];

  v32 = [v1 layer];
  [v32 setShadowPathIsBounds_];

  v33 = [v1 layer];
  v34 = OBJC_IVAR____TtC5UIKit17_UIShadowEdgeMask_region;
  [v33 setPunchoutShadow_];

  v35 = [v1 layer];
  [v35 setInvertsShadow_];

  v36 = [v1 layer];
  [v36 setMasksToBounds_];
}

void sub_188DF3838()
{
  v1 = OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow;
  v2 = *(v0 + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow);
  if (v2)
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v5 = Strong;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_10:
    sub_188F1558C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    return;
  }

  v7 = [objc_allocWithZone(type metadata accessor for _UISharedTextureWindow()) initWithWindowScene_];
  [v7 setWindowLevel_];
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  [v9 setBackgroundColor_];

  [v9 setHidden_];
  v11 = [v9 layer];
  [v11 setAllowsHitTesting_];

  [v9 setUserInteractionEnabled_];
  v12 = [objc_allocWithZone(UIViewController) init];
  [v9 setRootViewController_];

  v13 = [v9 rootViewController];
  if (!v13)
  {
LABEL_8:

    v15 = *(v0 + v1);
    *(v0 + v1) = v9;
    v9;

    v2 = 0;
LABEL_2:
    v3 = v2;
    return;
  }

  v14 = [v13 view];

  if (v14)
  {
    [v14 setHidden_];

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_188DF3AD0(uint64_t a1)
{
  v2 = sub_18A4A4088();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _UIIntelligencePrewarmCollection();
  sub_18A4A40B8();
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  sub_18A4A3E88();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  if (sub_18A4A3FB8())
  {
    sub_188DF3C0C(a1);
  }

  if (sub_18A4A3FA8())
  {
    sub_18917FD48();
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_188DF3C0C(uint64_t a1)
{
  v2 = sub_18A4A4308();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE70);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v119 - v6;
  v149 = sub_18A4A3BA8();
  v173 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_18A4A3B28();
  v8 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_18A4A3AF8();
  v11 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v147 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v119 - v14;
  v156 = sub_18A4A3AE8();
  v15 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v146 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v155 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v160 = &v119 - v20;
  v21 = sub_18A4A3CC8();
  v174 = *(v21 - 8);
  v175 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v151 = &v119 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v119 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v122 = &v119 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v119 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v119 - v32;
  v169 = a1;
  sub_18A4A40B8();
  v33 = objc_allocWithZone(sub_18A4A3468());
  v165 = sub_18A4A3458();
  v124 = mach_continuous_time();
  v176 = sub_188DF4F4C(MEMORY[0x1E69E7CC0]);
  v34 = [objc_opt_self() _scenesIncludingInternal_];
  sub_188A34624(0, qword_1ED490250);
  v35 = sub_18A4A7548();

  v123 = v35 >> 62;
  if (v35 >> 62)
  {
    goto LABEL_67;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v170 = v35;
  v143 = v2;
  v142 = v3;
  v144 = v5;
  if (v36)
  {
    if (v36 >= 1)
    {
      v153 = v10;
      v164 = 0;
      v37 = 0;
      v161 = 0;
      v5 = 0;
      v3 = 0;
      v38 = v35 & 0xC000000000000001;
      v162 = (v174 + 48);
      v154 = (v174 + 32);
      v152 = v174 + 16;
      v150 = v174 + 8;
      v139 = *MEMORY[0x1E69DBB78];
      v138 = (v15 + 104);
      v137 = *MEMORY[0x1E69DBB70];
      v136 = *MEMORY[0x1E69DBB88];
      v135 = (v11 + 13);
      v134 = *MEMORY[0x1E69DBB80];
      v133 = (v15 + 16);
      v132 = (v11 + 2);
      v131 = (v8 + 16);
      v130 = v173 + 104;
      v121 = *MEMORY[0x1E696A508];
      v129 = (v8 + 8);
      v128 = (v11 + 1);
      v127 = *MEMORY[0x1E69DBBE8];
      v126 = (v15 + 8);
      v11 = &selRef__windowServerHitTestWindow;
      v125 = xmmword_18A64BFB0;
      v2 = v160;
      v171 = v35 & 0xC000000000000001;
      v172 = v36;
      while (1)
      {
        if (v38)
        {
          v39 = sub_188E4B2B0(v3, v35);
        }

        else
        {
          v39 = *(v35 + 8 * v3 + 32);
        }

        v8 = v39;
        if ([v39 v11[426]] > 1)
        {
        }

        else
        {
          v40 = [v8 _windowHostingScene];
          if (v40)
          {
            v11 = v40;
            v41 = [v8 _intelligenceComponent];
            if (v41 && (v42 = v41, v43 = -[_UISceneIntelligenceSupportClientComponent collectAsRemoteElement](v41), v42, (v43 & 1) != 0) || (v44 = [v8 systemProtectionManager]) != 0 && (v45 = v44, v46 = objc_msgSend(v44, sel_isUserAuthenticationEnabled), v45, v46))
            {
            }

            else
            {
              v15 = [(SEL *)v11 _screen];
              sub_188DF5394(v11, v15, v165, v2);
              v47 = v175;
              if ((*v162)(v2, 1, v175) == 1)
              {

                sub_188A3F5FC(v2, &unk_1EA934040);
              }

              else
              {
                v173 = v15;
                v35 = *v154;
                (*v154)(v168, v2, v47);
                v10 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  v36 = sub_18A4A7F68();
                  goto LABEL_3;
                }

                v48 = *(sub_18A4A3788() + 16);

                v164 = &v161[v48];
                if (__OFADD__(v161, v48))
                {
                  goto LABEL_66;
                }

                v49 = v176;
                v50 = *(v176 + 16);
                v51 = v173;
                v163 = v10;
                if (v50 && (v52 = sub_188DE8E80(v173), (v53 & 1) != 0))
                {
                  v54 = *(v49 + 56);
                  v120 = *(v174 + 72);
                  v55 = *(v174 + 16);
                  v56 = v122;
                  v57 = v175;
                  v55(v122, v54 + v120 * v52, v175);
                  (v35)(v140, v56, v57);
                  v161 = v55;
                  v55(v141, v168, v57);
                  v58 = sub_18A4A3778();
                  v60 = v59;
                  v61 = *v59;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v60 = v61;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v61 = sub_188DFA260(0, v61[2] + 1, 1, v61);
                    *v60 = v61;
                  }

                  v64 = v61[2];
                  v63 = v61[3];
                  if (v64 >= v63 >> 1)
                  {
                    v61 = sub_188DFA260(v63 > 1, v64 + 1, 1, v61);
                    *v60 = v61;
                  }

                  v61[2] = v64 + 1;
                  v66 = v174;
                  v65 = v175;
                  (v35)(v61 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + v64 * v120, v141, v175);
                  v58(&v177, 0);
                  v67 = v151;
                  v68 = v140;
                  (v161)(v151, v140, v65);
                  v69 = v176;
                  v70 = swift_isUniquelyReferenced_nonNull_native();
                  v177 = v69;
                  v71 = v173;
                  sub_188DE8D00(v67, v173, v70);

                  v176 = v177;
                  v72 = *(v66 + 8);
                  v72(v68, v65);
                  v73 = v168;
                  v74 = v65;
                }

                else
                {
                  v176 = v49;
                  v75 = [v51 _displayID];
                  if (v75)
                  {
                    v76 = v75;
                    sub_18A4A7288();
                  }

                  if ([v51 _userInterfaceIdiom] == 3)
                  {
                    v77 = v137;
                  }

                  else
                  {
                    v77 = v139;
                  }

                  v78 = v155;
                  v79 = v156;
                  (*v138)(v155, v77, v156);
                  if ([v173 _isEmbeddedScreen])
                  {
                    v80 = v134;
                  }

                  else
                  {
                    v80 = v136;
                  }

                  v81 = v157;
                  v82 = v158;
                  (*v135)(v157, v80, v158);
                  (*v133)(v146, v78, v79);
                  (*v132)(v147, v81, v82);
                  v178 = 0u;
                  v179 = 0u;
                  v180 = 1;
                  v83 = v153;
                  v84 = v173;
                  sub_18A4A3B18();
                  v85 = [v84 displayIdentity];
                  if (v85)
                  {
                    v86 = v85;
                    v87 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
                    [v87 encodeObject:v86 forKey:v121];
                    v88 = [v87 encodedData];
                    sub_18A4A2928();

                    v84 = v173;
                    sub_18A4A3B08();
                  }

                  [v84 bounds];
                  v89 = v148;
                  (*v131)(v148, v83, v159);
                  (*v130)(v89, v127, v149);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C150);
                  v90 = v174;
                  v91 = (*(v174 + 80) + 32) & ~*(v174 + 80);
                  v92 = swift_allocObject();
                  *(v92 + 16) = v125;
                  v93 = *(v90 + 16);
                  v94 = v175;
                  v93(v92 + v91, v168, v175);
                  v95 = v151;
                  sub_18A4A3748();
                  v96 = v145;
                  v93(v145, v95, v94);
                  v97 = v176;
                  v98 = swift_isUniquelyReferenced_nonNull_native();
                  v177 = v97;
                  v99 = v96;
                  v100 = v173;
                  sub_188DE8D00(v99, v173, v98);

                  v176 = v177;
                  v72 = *(v90 + 8);
                  v72(v95, v94);
                  (*v129)(v153, v159);
                  (*v128)(v157, v158);
                  (*v126)(v155, v156);
                  v73 = v168;
                  v74 = v94;
                }

                v72(v73, v74);
                v161 = v164;
                v37 = v163;
                v5 = v163;
                v35 = v170;
                v2 = v160;
              }
            }

            v38 = v171;
            v36 = v172;
          }

          else
          {
          }

          v11 = &selRef__windowServerHitTestWindow;
        }

        if (v36 == ++v3)
        {
          goto LABEL_45;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v164 = 0;
    v37 = 0;
LABEL_45:
    v163 = v37;
    v101 = v176 + 64;
    v102 = 1 << *(v176 + 32);
    v103 = -1;
    if (v102 < 64)
    {
      v103 = ~(-1 << v102);
    }

    v8 = v103 & *(v176 + 64);
    v2 = (v102 + 63) >> 6;
    v15 = (v174 + 16);
    swift_bridgeObjectRetain_n();
    v5 = 0;
    v3 = &unk_1EA93EE70;
    v10 = &unk_18A66CB00;
    if (v8)
    {
      while (1)
      {
        v104 = v5;
LABEL_53:
        v105 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v106 = v105 | (v104 << 6);
        v107 = *(*(v176 + 48) + 8 * v106);
        v11 = *(v167 + 48);
        v108 = v166;
        (*(v174 + 16))(v11 + v166, *(v176 + 56) + *(v174 + 72) * v106, v175);
        *v108 = v107;
        v109 = v107;
        sub_18A4A4098();
        sub_188A3F5FC(v108, &unk_1EA93EE70);
        v35 = v170;
        if (!v8)
        {
          goto LABEL_49;
        }
      }
    }

    while (1)
    {
LABEL_49:
      v104 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v104 >= v2)
      {
        break;
      }

      v8 = *(v101 + 8 * v104);
      ++v5;
      if (v8)
      {
        v5 = v104;
        goto LABEL_53;
      }
    }

    v110 = v176;

    if (qword_1EA9301B8 != -1)
    {
      swift_once();
    }

    v111 = sub_18A4A4338();
    __swift_project_value_buffer(v111, qword_1EA9301C8);
    sub_18A4A4328();

    v112 = v144;
    sub_18A4A42E8();
    sub_189180138();
    sub_18917D714();
    sub_188A55B8C(v113);

    v114 = sub_18A4A4328();
    v115 = sub_18A4A7B28();
    if (sub_18A4A7CF8())
    {
      v116 = swift_slowAlloc();
      *v116 = 134219008;
      *(v116 + 4) = v124;
      *(v116 + 12) = 2050;
      if (v123)
      {
        v117 = sub_18A4A7F68();
      }

      else
      {
        v117 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v116 + 14) = v117;

      *(v116 + 22) = 2050;
      *(v116 + 24) = *(v110 + 16);
      *(v116 + 32) = 2050;
      *(v116 + 34) = v163;
      *(v116 + 42) = 2050;
      *(v116 + 44) = v164;
      v118 = sub_18A4A42F8();
      _os_signpost_emit_with_name_impl(&dword_188A29000, v114, v115, v118, "CollectElements", "%{public, signpost.description:begin_time}llu candidateScenes=%{public}ld screens=%{public}ld scenes=%{public}ld windows=%{public}ld", v116, 0x34u);
      MEMORY[0x18CFEA5B0](v116, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v142 + 8))(v112, v143);
  }
}

unint64_t sub_188DF4F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934D98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C1C0);
    v7 = sub_18A4A8488();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_188A3F29C(v9, v5, &qword_1EA934D98);
      v11 = *v5;
      result = sub_188DE8E80(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_18A4A3CC8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void _UIIntelligencePrewarmCollection()
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___UIIntelligencePrewarmCollection_block_invoke;
  v7[3] = &unk_1E7120A58;
  v7[4] = &v16;
  v7[5] = &v12;
  v7[6] = &v8;
  [UIScreen _enumerateScreensWithBlock:v7];
  v0 = *(v9 + 24);
  if (*(v17 + 24) == 1)
  {
    v1 = *(v13 + 24) ^ 1;
    if (v9[3])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = 0;
    if (v9[3])
    {
LABEL_6:
      v2 = v1 & 1;
      v3 = dispatch_get_global_queue(25, 0);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = ___UIIntelligencePrewarmCollection_block_invoke_2;
      v4[3] = &__block_descriptor_34_e5_v8__0l;
      v5 = v0;
      v6 = v2;
      dispatch_async(v3, v4);

      goto LABEL_7;
    }
  }

  if (v1)
  {
    goto LABEL_6;
  }

LABEL_7:
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
}

void sub_188DF52E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_188DF5394@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v203 = a1;
  v179 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9340A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v174 = &v166 - v7;
  v8 = sub_18A4A3CC8();
  v187 = *(v8 - 8);
  v188 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v178 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v181 = &v166 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93EE80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v169 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v166 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v197 = &v166 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v177 = &v166 - v19;
  v20 = sub_18A4A3BA8();
  v193 = *(v20 - 8);
  v194 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v186 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v180 = &v166 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C110);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v173 = &v166 - v25;
  v195 = sub_18A4A3EB8();
  v202 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v191 = &v166 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EE90);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v167 = &v166 - v30;
  v31 = sub_18A4A4198();
  v32 = *(v31 - 8);
  v198 = v31;
  v199 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v166 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_18A4A41B8();
  v171 = *(v34 - 8);
  v172 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v170 = &v166 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v175 = &v166 - v37;
  v38 = sub_18A4A3ED8();
  v185 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v184 = &v166 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v183 = &v166 - v41;
  v42 = sub_18A4A3B78();
  v189 = *(v42 - 8);
  v190 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v207 = &v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18A4A4088();
  v205 = v44;
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = a3;
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v214, *(&v215 + 1));
  sub_18A4A3E88();
  v48 = sub_18A4A4028();
  v204 = *(v45 + 8);
  v204(v47, v44);
  v49 = v203;
  v50 = sub_188DF6A6C(v48 & 1);
  __swift_destroy_boxed_opaque_existential_0Tm(&v214);
  sub_188DF7724(v50, a2, a3);
  v196 = v51;
  v52 = [v49 _coordinateSpace];
  [objc_msgSend(v49 _coordinateSpace)];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  swift_unknownObjectRelease();
  v168 = a2;
  [v52 convertRect:objc_msgSend(a2 toCoordinateSpace:{sel_coordinateSpace), v54, v56, v58, v60}];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v69 = [v49 _FBSScene];
  v70 = [v69 identifier];

  sub_18A4A7288();
  v72 = v71;

  v182 = v50;
  sub_188DF7D38(v49, v50);

  sub_18A4A3B38();
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(&v214, *(&v215 + 1));
  sub_18A4A3E88();
  v73 = v183;
  sub_18A4A4008();
  v200 = v47;
  v201 = v45 + 8;
  v204(v47, v205);
  v75 = v184;
  v74 = v185;
  (*(v185 + 13))(v184, *MEMORY[0x1E69DBCD8], v38);
  sub_188B022DC(&qword_1EA9301E0, MEMORY[0x1E69DBCE8]);
  LOBYTE(v69) = sub_18A4A7248();
  v76 = *(v74 + 1);
  v76(v75, v38);
  v76(v73, v38);
  __swift_destroy_boxed_opaque_existential_0Tm(&v214);
  if ((v69 & 1) == 0)
  {
    v185 = v72;
    v78 = v182;
    v77 = v203;
    v79 = [v203 _effectiveUISettings];
    if (!v79)
    {

      goto LABEL_36;
    }

    v80 = v79;
    v81 = v206;
    if (v78 >> 62)
    {
      result = sub_18A4A7F68();
      if (result)
      {
LABEL_6:
        if ((v78 & 0xC000000000000001) != 0)
        {
          v83 = sub_188E4B29C(0, v78);
        }

        else
        {
          if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v83 = *(v78 + 32);
        }

        v84 = v83;
        [v83 _currentScreenScale];

        v85 = [v80 hostContextIdentifierForSnapshotting];
        v184 = v80;
        if (v85 && [v80 scenePresenterRenderIdentifierForSnapshotting])
        {
          [v80 hostContextIdentifierForSnapshotting];
          [v80 scenePresenterRenderIdentifierForSnapshotting];
          sub_18A4A41A8();
          v86 = *(MEMORY[0x1E69792E8] + 80);
          v208[4] = *(MEMORY[0x1E69792E8] + 64);
          v208[5] = v86;
          v87 = *(MEMORY[0x1E69792E8] + 112);
          v208[6] = *(MEMORY[0x1E69792E8] + 96);
          v208[7] = v87;
          v88 = *(MEMORY[0x1E69792E8] + 16);
          v208[0] = *MEMORY[0x1E69792E8];
          v208[1] = v88;
          v89 = *(MEMORY[0x1E69792E8] + 48);
          v208[2] = *(MEMORY[0x1E69792E8] + 32);
          v208[3] = v89;
          goto LABEL_27;
        }

        if (v78 >> 62)
        {
          v90 = sub_18A4A7F68();
        }

        else
        {
          v90 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v91 = v166;
        if (!v90)
        {
LABEL_26:
          sub_18A4A4178();

          v102 = [v77 _interfaceOrientation];
          v103 = [v77 _interfaceOrientation];
          v104.n128_u64[0] = v66;
          v105.n128_u64[0] = v68;
          _UISnapshotContainerTransform(v102, v103, 1, v208, v62, v64, v104, v105);
LABEL_27:
          v106 = v168;
          result = UIApp;
          if (UIApp)
          {
            if (([UIApp _isSpringBoard] & 1) != 0 || (v107 = objc_msgSend(objc_opt_self(), sel_bundleRecordForCurrentProcess)) == 0)
            {
              sub_18A4A3E18();
            }

            else
            {
              v108 = v107;
              v109 = [v107 localizedName];

              sub_18A4A7288();
              sub_18A4A3E08();
            }

            (*(v171 + 16))(v170, v175, v172);
            result = [v106 _name];
            if (result)
            {
              v110 = result;

              sub_18A4A7288();

              v111 = [(UIScreen *)v106 _snapshotDisplaySystemIdentifier];
              if (v111)
              {
                v112 = v111;
                sub_18A4A7288();
              }

              v113 = v167;
              sub_18A4A41C8();
              v114 = sub_18A4A41D8();
              (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
              sub_18A4A3B48();

              (*(v171 + 8))(v175, v172);
              goto LABEL_36;
            }

LABEL_60:
            __break(1u);
            return result;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v212[0] = MEMORY[0x1E69E7CC0];
        result = sub_188E6D47C(0, v90 & ~(v90 >> 63), 0);
        if ((v90 & 0x8000000000000000) == 0)
        {
          v92 = 0;
          v93 = v212[0];
          v94 = *(MEMORY[0x1E69792E8] + 80);
          v218 = *(MEMORY[0x1E69792E8] + 64);
          v219 = v94;
          v95 = *(MEMORY[0x1E69792E8] + 112);
          v220 = *(MEMORY[0x1E69792E8] + 96);
          v221 = v95;
          v96 = *(MEMORY[0x1E69792E8] + 16);
          v214 = *MEMORY[0x1E69792E8];
          v215 = v96;
          v97 = *(MEMORY[0x1E69792E8] + 48);
          v216 = *(MEMORY[0x1E69792E8] + 32);
          v217 = v97;
          do
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v98 = sub_188E4B29C(v92, v78);
            }

            else
            {
              v98 = *(v78 + 8 * v92 + 32);
            }

            v99 = v98;
            [v98 _contextId];
            sub_18A4A4188();

            v212[0] = v93;
            v101 = *(v93 + 16);
            v100 = *(v93 + 24);
            if (v101 >= v100 >> 1)
            {
              sub_188E6D47C(v100 > 1, v101 + 1, 1);
              v93 = v212[0];
            }

            ++v92;
            *(v93 + 16) = v101 + 1;
            (*(v199 + 32))(v93 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v101, v91, v198);
          }

          while (v90 != v92);
          v77 = v203;
          goto LABEL_26;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_37;
  }

  v77 = v203;
LABEL_36:
  v81 = v206;
LABEL_37:
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(v212, v213);
  v115 = v200;
  sub_18A4A3E88();
  v116 = v191;
  sub_18A4A3F88();
  v204(v115, v205);
  v117 = *MEMORY[0x1E69DBCC0];
  v118 = v202;
  v119 = v192;
  v120 = v195;
  v198 = *(v202 + 104);
  v199 = v202 + 104;
  v198(v192, v117, v195);
  sub_188B022DC(&unk_1EA9301F0, MEMORY[0x1E69DBCC8]);
  v121 = sub_18A4A7248();
  v122 = *(v118 + 8);
  v122(v119, v120);
  v202 = v118 + 8;
  v185 = v122;
  v122(v116, v120);
  v123 = __swift_destroy_boxed_opaque_existential_0Tm(v212);
  v124 = v194;
  if ((v121 & 1) == 0)
  {
    sub_18A4A3448();
    __swift_project_boxed_opaque_existential_0(&v210, v211);
    v125 = v200;
    sub_18A4A3E88();
    v126 = sub_18A4A6E88();
    v127 = v173;
    (*(*(v126 - 8) + 56))(v173, 1, 1, v126);
    v128 = sub_18A4A3B68();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93EE98);
    sub_18A4A3838();
    sub_188A3F5FC(v127, &unk_1EA93C110);
    v204(v125, v205);
    v128(&v209, 0);
    __swift_destroy_boxed_opaque_existential_0Tm(&v210);
    sub_188A53994(v212, &v210);
    v129 = swift_allocObject();
    sub_188A5EBAC(&v210, v129 + 16);
    sub_18A4A3CE8();

    v123 = __swift_destroy_boxed_opaque_existential_0Tm(v212);
  }

  MEMORY[0x1EEE9AC00](v123);
  v130 = v77;
  *(&v166 - 2) = v77;
  *(&v166 - 1) = v81;
  v131 = v197;
  sub_18A4A33F8();
  v132 = v176;
  sub_188A3F29C(v131, v176, &unk_1EA93EE80);
  v133 = *(v193 + 48);
  LODWORD(v131) = v133(v132, 1, v124);
  sub_188A3F5FC(v132, &unk_1EA93EE80);
  if (v131 == 1)
  {
    objc_opt_self();
    v134 = swift_dynamicCastObjCClass();
    if (v134)
    {
      v135 = v134;
      v136 = v130;
      v137 = [v135 activityItemsConfigurationSource];
      if (v137)
      {
        MEMORY[0x1EEE9AC00](v137);
        v138 = v206;
        *(&v166 - 2) = v139;
        *(&v166 - 1) = v138;
        v140 = v169;
        sub_18A4A33F8();
        swift_unknownObjectRelease();

        v141 = v197;
        sub_188A3F5FC(v197, &unk_1EA93EE80);
        sub_188A3F704(v140, v141, &unk_1EA93EE80);
      }

      else
      {
      }
    }
  }

  v142 = v177;
  sub_188A3F704(v197, v177, &unk_1EA93EE80);
  if (v133(v142, 1, v124) == 1)
  {
    v143 = v200;
    sub_188A3F5FC(v142, &unk_1EA93EE80);
    v144 = v193;
  }

  else
  {
    v145 = v193;
    v146 = v180;
    (*(v193 + 32))(v180, v142, v124);
    (*(v145 + 16))(v186, v146, v124);
    sub_18A4A3748();
    v147 = v196;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v187;
    v150 = v188;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v147 = sub_188DFA260(0, v147[2] + 1, 1, v147);
    }

    v152 = v147[2];
    v151 = v147[3];
    v143 = v200;
    if (v152 >= v151 >> 1)
    {
      v147 = sub_188DFA260(v151 > 1, v152 + 1, 1, v147);
    }

    v196 = v147;
    (*(v145 + 8))(v180, v124);
    v147[2] = v152 + 1;
    (*(v149 + 32))(v147 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v152, v181, v150);
    v144 = v145;
  }

  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(v212, v213);
  sub_18A4A3E88();
  v153 = v207;
  sub_188DE8878(v207, v143);
  v154 = v204;
  v155 = v205;
  v204(v143, v205);
  __swift_destroy_boxed_opaque_existential_0Tm(v212);
  v156 = v186;
  (*(v189 + 16))(v186, v153, v190);
  (*(v144 + 104))(v156, *MEMORY[0x1E69DBBF0], v194);
  v157 = v178;
  sub_18A4A3748();
  sub_18A4A3448();
  __swift_project_boxed_opaque_existential_0(v212, v213);
  sub_18A4A3E88();
  v158 = v191;
  sub_18A4A3F88();
  v154(v143, v155);
  v159 = v192;
  v160 = v195;
  v198(v192, *MEMORY[0x1E69DBCB8], v195);
  LOBYTE(v156) = sub_18A4A3EA8();
  v161 = v185;
  v185(v159, v160);
  v161(v158, v160);
  __swift_destroy_boxed_opaque_existential_0Tm(v212);
  if (v156)
  {
    v162 = [v203 userActivity];
    sub_18A4A3D08();
    sub_18A4A37D8();
  }

  (*(v189 + 8))(v207, v190);
  v163 = v187;
  v164 = v188;
  v165 = v179;
  (*(v187 + 32))(v179, v157, v188);
  return (*(v163 + 56))(v165, 0, 1, v164);
}

uint64_t sub_188DF6A34()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_188DF6A6C(int a1)
{
  v2 = v1;
  v86 = a1;
  v85 = sub_18A4A2D08();
  v3 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v71 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v70 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v70 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v84 = &v70 - v17;
  v87 = v2;
  v18 = [v2 _allWindowsIncludingInternalWindows_onlyVisibleWindows_];
  sub_188A34624(0, &qword_1EA930850);
  sub_18A4A7548();

  v89 = sub_188DF725C(v19);
  sub_188DF74E0(&v89);

  v20 = v89;
  v89 = MEMORY[0x1E69E7CC0];
  v21 = v3[7];
  v73 = v3 + 7;
  v72 = v21;
  v21(v84, 1, 1, v85);
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  for (i = *(v20 + 16); i; i = sub_18A4A7F68())
  {
    v23 = v20 & 0xC000000000000001;
    v88 = v20 + 32;
    v82 = (v3 + 6);
    v77 = (v3 + 4);
    v76 = (v3 + 1);
    v70 = (v3 + 2);
    v24 = &selRef_isHandwritingInputMode;
    v25 = &selRef_adjustAffinityOfPosition_isStart_;
    v3 = &qword_1EA939CC0;
    v26 = &unk_18A66CBB0;
    v81 = v20;
    while (!__OFSUB__(i--, 1))
    {
      if (v23)
      {
        v28 = sub_188E4B29C(i, v20);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_32;
        }

        if (i >= *(v20 + 16))
        {
          goto LABEL_33;
        }

        v28 = *(v88 + 8 * i);
      }

      v29 = v28;
      if ([v29 v24[8]] || (objc_msgSend(v29, v25[345]), _UIViewIsFullyTransparentGivenAlpha(v30)))
      {

LABEL_16:
        goto LABEL_6;
      }

      v31 = v3;
      [v29 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v3 = [v87 _coordinateSpace];
      [v29 convertRect:v3 toCoordinateSpace:{v33, v35, v37, v39}];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      swift_unknownObjectRelease();
      v90.origin.x = v41;
      v90.origin.y = v43;
      v90.size.width = v45;
      v90.size.height = v47;
      v91 = CGRectInset(v90, 1.0, 1.0);
      if (!CGRectIsEmpty(v91))
      {
        if (v86)
        {
          v3 = v31;
          v48 = v83;
          sub_188A3F29C(v84, v83, v31);
          if ((*v82)(v48, 1, v85) == 1)
          {
            sub_188A3F5FC(v83, v31);
            v20 = v81;
          }

          else
          {
            v49 = v75;
            v50 = v85;
            (*v77)(v75, v83, v85);
            v51 = v78;
            sub_18A4A2D18();
            v80 = sub_18A4A2C88();
            v52 = *v76;
            (*v76)(v51, v50);
            v53 = v49;
            v3 = v31;
            v54 = v50;
            v25 = &selRef_adjustAffinityOfPosition_isStart_;
            v52(v53, v54);
            v24 = &selRef_isHandwritingInputMode;
            v20 = v81;
            if (v80)
            {
              goto LABEL_16;
            }
          }
        }

        if (v89 >> 62 && sub_18A4A7F68() < 0)
        {
          __break(1u);
          break;
        }

        v29 = v29;
        sub_188DE3968(0, 0, v29);

        if (v86 & 1) != 0 && (sub_188DE397C())
        {
          v55 = v79;
          v3 = v31;
          v56 = v26;
          sub_188A3F29C(v84, v79, v31);
          if ((*v82)(v55, 1, v85) == 1)
          {
            sub_188A3F5FC(v79, v31);
            v57 = v74;
            sub_18A4A2D18();

            v58 = v84;
            sub_188A3F5FC(v84, v3);
            v72(v57, 0, 1, v85);
            v59 = v57;
            v60 = v58;
            v61 = v3;
          }

          else
          {
            v62 = v71;
            v63 = v85;
            (*v77)(v71, v79, v85);
            v64 = v74;
            (*v70)(v74, v62, v63);
            v65 = v78;
            sub_18A4A2D18();
            sub_18A4A2CF8();

            v66 = *v76;
            v67 = v65;
            v20 = v81;
            (*v76)(v67, v63);
            v68 = v62;
            v24 = &selRef_isHandwritingInputMode;
            v66(v68, v63);
            v3 = v31;
            sub_188A3F5FC(v84, v31);
            v72(v64, 0, 1, v63);
            v59 = v64;
            v60 = v84;
            v61 = v31;
          }

          sub_188A3F704(v59, v60, v61);
          v25 = &selRef_adjustAffinityOfPosition_isStart_;
          v26 = v56;
          goto LABEL_6;
        }
      }

      v3 = v31;
LABEL_6:
      if (!i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  sub_188A3F5FC(v84, &qword_1EA939CC0);
  return v89;
}

uint64_t sub_188DF7288(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_18A4A7F68();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_188DF732C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18A4A7F68();
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
      result = sub_18A4A7F68();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_188A34360(&qword_1EA930228, &qword_1EA940830);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940830);
            v9 = sub_188E4D7E4(v13, i, a3);
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
        sub_188A34624(0, &qword_1EA930850);
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

uint64_t sub_188DF74E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_188DF755C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_188DF7570(v6);
  return sub_18A4A81E8();
}

char *sub_188DF7570(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_18A4A85F8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_188A34624(0, &qword_1EA930850);
        v6 = sub_18A4A75D8();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_18917E730(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_188DF9030(0, v2, 1, a1);
  }

  return result;
}

void sub_188DF7724(unint64_t a1, void *a2, uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  v61 = sub_18A4A4308();
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_18A4A3CC8();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - v15;
  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_27:
    v73 = MEMORY[0x1E69E7CC0];
    return;
  }

  v54 = v13;
  v17 = sub_18A4A7F68();
  v13 = v54;
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v17 < 1)
  {
    __break(1u);
  }

  else
  {
    v72 = v13;
    v18 = 0;
    v19 = (v65 + 48);
    v67 = (v65 + 32);
    v68 = v9;
    v58 = (v65 + 16);
    v59 = (v4 + 8);
    v56 = v6;
    v57 = v65 + 8;
    v73 = MEMORY[0x1E69E7CC0];
    v20 = &selRef_isHandwritingInputMode;
    v21 = &selRef_adjustAffinityOfPosition_isStart_;
    *&v14 = 134217984;
    v55 = v14;
    v64 = v16;
    v60 = (v65 + 48);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v22 = sub_188E4B29C(v18, a1);
      }

      else
      {
        v22 = *(a1 + 8 * v18 + 32);
      }

      v23 = v22;
      if ([v23 v20[8]] || (objc_msgSend(v23, v21[345]), _UIViewIsFullyTransparentGivenAlpha(v24)))
      {
      }

      else
      {
        v25 = [v23 layer];
        v26 = [v25 disableUpdateMask];

        if ((v26 & 0x10) != 0)
        {
        }

        else
        {
          v66 = mach_continuous_time();
          [v23 convertPoint:objc_msgSend(v71 toCoordinateSpace:{sel_coordinateSpace), 0.0, 0.0}];
          v28 = v27;
          v30 = v29;
          swift_unknownObjectRelease();
          v31 = v23;
          [v31 _intelligenceVisibleBounds];
          v32 = v68;
          sub_188DE54F8(v70, v31, v31, v68, v33, v34, v35, v36, v28, v30);
          v37 = v72;
          if ((*v19)(v32, 1, v72) == 1)
          {

            sub_188A3F5FC(v32, &unk_1EA934040);
          }

          else
          {
            v63 = *v67;
            v63(v16, v32, v37);
            if (qword_1EA9301B8 != -1)
            {
              swift_once();
            }

            v38 = sub_18A4A4338();
            __swift_project_value_buffer(v38, qword_1EA9301C8);
            v39 = v31;
            sub_18A4A4328();
            v40 = v56;
            v62 = v39;
            sub_18A4A42E8();
            sub_189180138();
            sub_18917D714();
            sub_188A55B8C(v41);
            v42 = sub_18A4A4328();
            v43 = sub_18A4A7B28();
            if (sub_18A4A7CF8())
            {
              v44 = swift_slowAlloc();
              *v44 = v55;
              *(v44 + 4) = v66;
              v45 = sub_18A4A42F8();
              _os_signpost_emit_with_name_impl(&dword_188A29000, v42, v43, v45, "CollectUIWindow", "%{public, signpost.description:begin_time}llu", v44, 0xCu);
              v46 = v44;
              v16 = v64;
              MEMORY[0x18CFEA5B0](v46, -1, -1);
            }

            (*v59)(v40, v61);
            (*v58)(v69, v16, v72);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_188DFA260(0, v73[2] + 1, 1, v73);
            }

            v48 = v73[2];
            v47 = v73[3];
            if (v48 >= v47 >> 1)
            {
              v73 = sub_188DFA260(v47 > 1, v48 + 1, 1, v73);
            }

            v49 = v65;
            v50 = v16;
            v51 = v72;
            (*(v65 + 8))(v50, v72);
            v52 = v73;
            v73[2] = v48 + 1;
            v53 = v51;
            v16 = v64;
            v63(&v52[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48], v69, v53);
            v19 = v60;
          }
        }

        v20 = &selRef_isHandwritingInputMode;
        v21 = &selRef_adjustAffinityOfPosition_isStart_;
      }

      ++v18;
    }

    while (v17 != v18);
  }
}

uint64_t sub_188DF7D38(void *a1, unint64_t a2)
{
  if ([a1 activationState])
  {
    return 0;
  }

  v5 = [a1 _traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 3)
  {
    return 1;
  }

  result = [a1 _isTargetOfKeyboardEventDeferringEnvironment];
  if (result)
  {
    v7 = [objc_opt_self() sharedEvaluator];
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18A4A7F68())
    {
      v9 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = sub_188E4B29C(v9, a2);
        }

        else
        {
          if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v10 = *(a2 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 traitCollection];
        v14 = [v13 userInterfaceIdiom];

        v15 = [(_UIKeyWindowEvaluator *)v7 keyWindowForUserInterfaceIdiom:v14];
        if (v15)
        {
          v16 = v15;

          if (v11 == v16)
          {
            ShouldBeInactive = _UIIntelligenceSceneShouldBeInactive(a1);

            return !ShouldBeInactive;
          }
        }

        else
        {
        }

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:

    return 0;
  }

  return result;
}

void sub_188DF801C(char a1, float a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v6 = Strong, [Strong value], v8 = v7, v6, v8 != a2))
  {
    v9 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data;
    v10 = *&v2[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
    if (v10)
    {
      v27 = v10;
      [v27 minimumValue];
      v12 = v11;
      [v27 maximumValue];
      v14 = v13 - v12;
      v15 = 0.0;
      if (v14 > 0.0)
      {
        v15 = (a2 - v12) / v14;
      }

      v16 = sub_188BFFEB8(1, v15);
      *&v17 = v12 + (v14 * v16);
      if ((v18 & 1) == 0)
      {
        *&v17 = a2;
      }

      [*&v2[v9] setValue_];
      if (a1)
      {
        v19 = *&v2[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction];
        if (v19)
        {
          v20 = v19;
          [v20 setValue_];
        }
      }

      else
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v2;
        *(v22 + 24) = v16;
        v23 = swift_allocObject();
        *(v23 + 16) = sub_188E9CF64;
        *(v23 + 24) = v22;
        aBlock[4] = sub_188E3FE50;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A968;
        aBlock[3] = &block_descriptor_363_0;
        v24 = _Block_copy(aBlock);
        v25 = v2;

        [v21 performWithoutAnimation_];

        _Block_release(v24);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_188DF82B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

id sub_188DF83AC()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_fluidInteraction);
  if (result)
  {
    return [result setValue_];
  }

  return result;
}

void UITableViewAlertForForcedLayout(void *a1)
{
  v1 = a1;
  if ((_UIInternalPreferenceUsesDefault(&_UIInternalPreference_UITableViewEnableAlertForForcedLayout, @"UITableViewEnableAlertForForcedLayout", _UIInternalPreferenceUpdateBool) & 1) == 0 && byte_1EA95E714 && dyld_program_sdk_at_least() && ([objc_opt_class() _isInternalTableView] & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __UITableViewAlertForForcedLayout_block_invoke;
    block[3] = &unk_1E70F3590;
    v3 = v1;
    if (UITableViewAlertForForcedLayout_once != -1)
    {
      dispatch_once(&UITableViewAlertForForcedLayout_once, block);
    }
  }
}

id sub_188DF86B4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = sub_188DF870C(v6, a4);

  return v8;
}

id _UIFocusEnvironmentPreferredNodeToFocusedItem(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [UIFocusSystem focusSystemForEnvironment:v3];
  v6 = [v5 focusedItem];

  if (v6)
  {
    v7 = v6 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__81;
    v21 = __Block_byref_object_dispose__81;
    v22 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = __Block_byref_object_copy__81;
    v15[4] = __Block_byref_object_dispose__81;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___UIFocusEnvironmentPreferredNodeToFocusedItem_block_invoke;
    v10[3] = &unk_1E7108100;
    v11 = v3;
    v13 = &v17;
    v14 = v15;
    v12 = v4;
    _UIFocusEnvironmentEnumerateAncestorEnvironments(v6, v10);
    v8 = v18[5];

    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v17, 8);
  }

  return v8;
}

void sub_188DF8A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id _colorByReducingAlphaInLightAddingWhiteWithAlphaInDark(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if ([v8 userInterfaceStyle] == 2)
  {
    v9 = v7;
    v10 = [v9 resolvedColorWithTraitCollection:v8];

    v11 = [UIColor colorWithWhite:1.0 alpha:a4];
    v12 = [v9 _colorBlendedWithColor:v11 compositingFilter:0];

    v8 = v10;
  }

  else
  {
    v12 = _colorByReducingAlpha(v7, v8, a3);
  }

  return v12;
}

void *_annotationValueToReportToDelegateForPayload(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = [a1 valueForKey:@"UIApplicationLaunchOptionsAnnotationKey"];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    if (v1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = v1;
        v3 = [v2 valueForKey:@"UIApplicationOpenURLOptionsAnnotationKey"];

        v1 = v2;
        if (!v3)
        {
          v6 = @"UIApplicationOpenURLOptionsAnnotationKey";
          v7[0] = v2;
          v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
        }
      }
    }
  }

  v4 = v1;

  return v1;
}

char *sub_188DF9030(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = &result[-a3];
LABEL_5:
    result = *(v6 + 8 * v4);
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = _UIWindowCompareWindowsUsingLevel(result, *v10);
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
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

      v11 = *v10;
      result = *(v10 + 8);
      *v10 = result;
      *(v10 + 8) = v11;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_188DF90E0()
{
  result = qword_1EA930328;
  if (!qword_1EA930328)
  {
    sub_18A4A3BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930328);
  }

  return result;
}

uint64_t sub_188DF9194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_18A4A3CC8();
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

id UIView._intelligenceCollectSubelements(in:using:transformToRoot:)(void (**a1)(char *, char *, uint64_t), void (**a2)(char *, char *, uint64_t), void (**a3)(char *, char *, uint64_t), CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = v7;
  v116 = a2;
  v117 = a3;
  v123 = a1;
  v115 = sub_18A4A4088();
  v13 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934038);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v88 - v16;
  v18 = sub_18A4A2D08();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - v22;
  v24 = sub_18A4A3CC8();
  v109 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v121 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v120 = &v88 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939CC0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v91 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v88 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v103 = &v88 - v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v39 = v19[7];
  v108 = &v88 - v40;
  v107 = v18;
  v90 = v19 + 7;
  v89 = v39;
  v39(v38);
  v125 = a4;
  v126 = a5;
  v127 = a6;
  v128 = a7;
  v122 = v8;
  result = [v8 _allSubviews];
  if (result)
  {
    v42 = result;
    sub_188A34624(0, &qword_1ED48F680);
    v43 = sub_18A4A7548();

    v44 = v43;
    if (v43 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v44 = v87)
    {
      v46 = i - 1;
      if (__OFSUB__(i, 1))
      {
LABEL_37:
        __break(1u);
        break;
      }

      v113 = v44 & 0xC000000000000001;
      v97 = v44 & 0xFFFFFFFFFFFFFF8;
      v96 = v44 + 32;
      v111 = (v109 + 48);
      v100 = (v109 + 32);
      v99 = (v19 + 6);
      v94 = (v19 + 4);
      v88 = (v19 + 2);
      v93 = (v19 + 1);
      v98 = (v109 + 8);
      v110 = (v13 + 8);
      v19 = MEMORY[0x1E69E7CC0];
      v119 = v17;
      v95 = v23;
      v104 = v34;
      v112 = v44;
      v102 = v24;
      v101 = (v109 + 16);
      while (1)
      {
        if (v113)
        {
          v47 = sub_188E48DB4(v46, v44, &qword_1ED48F680);
          v48 = v47;
          v23 = v118;
          goto LABEL_11;
        }

        v23 = v118;
        if ((v46 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v46 >= *(v97 + 16))
        {
          goto LABEL_40;
        }

        v47 = *(v96 + 8 * v46);
        v48 = v47;
LABEL_11:
        MEMORY[0x1EEE9AC00](v47);
        v49 = v123;
        *(&v88 - 6) = v122;
        *(&v88 - 5) = v48;
        *(&v88 - 4) = &v125;
        *(&v88 - 3) = v49;
        v50 = v117;
        *(&v88 - 2) = v116;
        *(&v88 - 1) = v50;
        v51 = v120;
        sub_18A4A33C8();
        v52 = v51;
        v53 = v121;
        v34 = &unk_1EA934040;
        sub_188A3F29C(v52, v121, &unk_1EA934040);
        if ((*v111)(v53, 1, v24) == 1)
        {
          sub_188A3F5FC(v121, &unk_1EA934040);
          goto LABEL_30;
        }

        v105 = v48;
        v106 = v19;
        (*v100)(v23, v121, v24);
        v54 = v103;
        sub_188A3F29C(v108, v103, &qword_1EA939CC0);
        v55 = *v99;
        v56 = v107;
        v57 = (*v99)(v54, 1, v107);
        v58 = v104;
        if (v57 == 1)
        {
          sub_188A3F5FC(v54, &qword_1EA939CC0);
          v24 = v102;
          v59 = v101;
          v19 = v106;
          v60 = v17;
        }

        else
        {
          v61 = *v94;
          v62 = v23;
          v63 = v95;
          (*v94)(v95, v54, v56);
          sub_18A4A3858();
          v64 = v107;
          if (v55(v58, 1, v107) == 1)
          {
            (*v93)(v63, v64);
            sub_188A3F5FC(v58, &qword_1EA939CC0);
          }

          else
          {
            v65 = v92;
            v61(v92, v104, v64);
            v66 = v91;
            (*v88)(v91, v65, v64);
            sub_18A4A2CF8();
            (v89)(v66, 0, 1, v64);
            sub_18A4A3868();
            v67 = *v93;
            (*v93)(v65, v64);
            v67(v63, v64);
          }

          v60 = v119;
          v23 = v62;
          v24 = v102;
          v59 = v101;
          v19 = v106;
        }

        v48 = v105;
        v68 = *v59;
        (*v59)(v60, v23, v24);
        v69 = v19[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = &unk_1EA934040;
        if (!isUniquelyReferenced_nonNull_native || v69 >= v19[3] >> 1)
        {
          v19 = sub_188B221DC(isUniquelyReferenced_nonNull_native, v69 + 1, 1, v19, &unk_1EA93C150, &unk_18A66CB10, MEMORY[0x1E69DBC20]);
        }

        v71 = v19 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        v72 = *(v109 + 72);
        swift_arrayDestroy();
        v73 = v19[2];
        if ((v72 & 0x8000000000000000) == 0 && v72 < v73 * v72)
        {
          if (!v72)
          {
            v19[2] = v73 + 1;
            v74 = v119;
            goto LABEL_29;
          }

          swift_arrayInitWithTakeBackToFront();
          ++v19[2];
          v74 = v119;
LABEL_27:
          v68(v71, v74, v24);
          goto LABEL_29;
        }

        swift_arrayInitWithTakeFrontToBack();
        ++v19[2];
        v75 = v72 <= 0;
        v74 = v119;
        if (!v75)
        {
          goto LABEL_27;
        }

LABEL_29:
        sub_188A3F5FC(v74, &qword_1EA934038);
        (*v98)(v23, v24);
LABEL_30:
        v76 = sub_188DE8030(v48, v125, v126, v127, v128);
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v125 = v76;
        v126 = v77;
        v127 = v79;
        v128 = v81;
        sub_18A4A3448();
        __swift_project_boxed_opaque_existential_0(v124, v124[3]);
        v83 = v114;
        sub_18A4A3E88();
        v13 = v83;
        v84 = sub_18A4A4028();
        (*v110)(v83, v115);
        if (v84)
        {
          v129.origin.x = v76;
          v129.origin.y = v78;
          v129.size.width = v80;
          v129.size.height = v82;
          IsEmpty = CGRectIsEmpty(v129);

          sub_188A3F5FC(v120, &unk_1EA934040);
          __swift_destroy_boxed_opaque_existential_0Tm(v124);
          if (IsEmpty)
          {
            goto LABEL_38;
          }

          v44 = v112;
          if (!v46)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_188A3F5FC(v120, &unk_1EA934040);

          __swift_destroy_boxed_opaque_existential_0Tm(v124);
          v44 = v112;
          if (!v46)
          {
            goto LABEL_38;
          }
        }

        v86 = __OFSUB__(v46--, 1);
        v17 = v119;
        if (v86)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v87 = v44;
      i = sub_18A4A7F68();
    }

LABEL_38:

    sub_18A4A3438();

    return sub_188A3F5FC(v108, &qword_1EA939CC0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188DF9EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934040);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v33[-v17];
  v19 = sub_18A4A3CC8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v33[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = a4;
  [a1 _intelligenceVisibleBounds];
  x = v24;
  y = v26;
  width = v28;
  height = v30;
  if (([a1 _safeAreaInsetsFrozen] & 1) == 0)
  {
    v35.origin.x = [(UIView *)a3 _convertRect:a1 toViewInSameWindow:a5, a6, a7, a8];
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v36 = CGRectIntersection(v35, v37);
    x = v36.origin.x;
    y = v36.origin.y;
    width = v36.size.width;
    height = v36.size.height;
  }

  sub_188E46C04(a2, sub_188DE7D34, v33, v18, x, y, width, height);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_188A3F5FC(v18, &unk_1EA934040);
  }

  (*(v20 + 32))(v23, v18, v19);
  sub_18A4A3428();
  return (*(v20 + 8))(v23, v19);
}

double sub_188DFA16C(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v10 = *(a1 + 32);
  v11 = a2;
  v12 = v10(a3, a4, a5, a6);

  return v12;
}

id sub_188DFA2EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A2588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v40 - v18;
  result = [v2 _content];
  if (result)
  {
    v21 = result;
    v22 = [result isAttributed];

    if (!v22 || (v23 = [v2 _synthesizedAttributedText]) == 0)
    {
      (*(v8 + 56))(v19, 1, 1, v7);
LABEL_6:
      sub_188A3F5FC(v19, &qword_1EA935C40);
      v26 = [v2 text];
      if (v26)
      {
        v27 = v26;
        sub_18A4A7288();
      }

      sub_18A4A2658();
      sub_18A4A2598();
      result = [v2 font];
      if (result)
      {
        v28 = result;
        [result pointSize];
        v30 = v29;

        aBlock = v30;
        LOBYTE(v49) = 0;
        sub_18A4A39D8();
        sub_188DFA980(&qword_1EA92FA90, MEMORY[0x1E69DBB30]);
        sub_18A4A25D8();
        return (*(v8 + 32))(a1, v10, v7);
      }

      goto LABEL_15;
    }

    v24 = v23;
    v44 = v2;
    v45 = v6;
    v46 = a1;
    swift_getKeyPath();
    sub_18A4A39F8();
    sub_188DFA980(&qword_1EA92FA88, MEMORY[0x1E69DBB48]);
    v25 = v24;
    sub_18A4A25B8();
    v31 = *(v8 + 56);
    v40[2] = v8 + 56;
    v41 = v31;
    v31(v15, 0, 1, v7);
    v32 = v47;
    v40[0] = *(v8 + 32);
    v40[1] = v8 + 32;
    (v40[0])(v47, v15, v7);
    v43 = *off_1E70EC918;
    v33 = v25;
    v34 = [v25 length];
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1891ED9D8;
    *(v36 + 24) = v35;
    v42 = v35;
    v52 = sub_188ECA51C;
    v53 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_18914E7A8;
    v51 = &block_descriptor_150;
    v37 = _Block_copy(&aBlock);

    [v33 enumerateAttribute:v43 inRange:0 options:v34 usingBlock:{0, v37}];

    _Block_release(v37);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      (*(v8 + 16))(v19, v32, v7);
      v41(v19, 0, 1, v7);
      (*(v8 + 8))(v32, v7);

      v39 = (*(v8 + 48))(v19, 1, v7);
      a1 = v46;
      v2 = v44;
      if (v39 != 1)
      {
        return (v40[0])(v46, v19, v7);
      }

      goto LABEL_6;
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_188DFA980(unint64_t *a1, void (*a2)(uint64_t))
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

void __destroy_helper_block_e8_56n7_8_s0_s8(uint64_t a1)
{
  v2 = *(a1 + 64);
}

id _sessionsAvailableForAddingItems()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = +[_UIDragSessionImpl activeSessions];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 _canAddItems])
        {
          [v0 addObject:v6];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  return v0;
}

__n128 _UITabBarAdjustBadgePositionForStyleAndScene(uint64_t a1, void *a2, float64_t a3, float64_t a4)
{
  v5 = a2;
  v7.f64[0] = a3;
  v6 = v5;
  v7.f64[1] = a4;
  if (a1 <= 2)
  {
    if ((a1 - 1) >= 2)
    {
      if (a1)
      {
LABEL_12:
        v29 = v7;
        goto LABEL_23;
      }

      v10 = xmmword_18A682F50;
LABEL_11:
      v7 = vaddq_f64(v7, v10);
      goto LABEL_12;
    }

    v29 = v7;
    v8 = [v5 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      v10 = xmmword_18A682F40;
LABEL_8:
      v7 = v29;
      goto LABEL_11;
    }

    v19 = [v6 screen];
    v20 = [v19 fixedCoordinateSpace];
    [v20 bounds];
    v22 = v21;
    v24 = v23;

    _ZF = v24 == 568.0 && v22 == 320.0;
    v14 = 5.0;
    if (_ZF)
    {
      v14 = 4.0;
    }

    __asm { FMOV            V1.2D, #2.0 }

LABEL_22:
    _Q1.f64[0] = v14;
    v29 = vaddq_f64(v29, _Q1);
    goto LABEL_23;
  }

  v29 = v7;
  if (a1 == 3)
  {
    v11 = [v5 screen];
    [v11 scale];
    v13 = v12;

    v14 = 5.0;
    if (v13 > 1.0)
    {
      v14 = 1.0 / v13 + 4.0;
    }

    __asm { FMOV            V1.2D, #3.0 }

    goto LABEL_22;
  }

  if (a1 == 4)
  {
    v10 = xmmword_18A682F30;
    goto LABEL_8;
  }

LABEL_23:

  return v29;
}

void sub_188DFB43C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = [Strong _sliderConfiguration];

  if (!v3)
  {
    return;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 disableAllSliderVisuals];
    if (v6 == *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_usingSliderStyling))
    {
      goto LABEL_25;
    }

    v7 = [v5 minimumTrackEffect];
    v8 = v7;
    if (v7)
    {
    }

    if ((v8 == 0) != (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_barEffectView) == 0))
    {
      goto LABEL_25;
    }

    v9 = [v5 maximumTrackEffect];
    v10 = v9;
    if (v9)
    {
    }

    if ((v10 == 0) != (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_leftTrackEffectView) == 0))
    {
      goto LABEL_25;
    }

    v11 = [v5 maximumTrackEffect];
    v12 = v11;
    if (v11)
    {
    }

    if ((v12 == 0) != (*(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_rightTrackEffectView) == 0))
    {
      goto LABEL_25;
    }

    v13 = [v5 minimumValueView];
    v14 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView);
    if (v13)
    {
      v15 = v13;
      if (!v14)
      {
        goto LABEL_23;
      }

      sub_188A34624(0, &qword_1ED48F680);
      v16 = v14;
      v17 = sub_18A4A7C88();

      if ((v17 & 1) == 0)
      {
LABEL_25:
        v22 = objc_opt_self();
        v23 = swift_allocObject();
        *(v23 + 16) = v0;
        v24 = swift_allocObject();
        *(v24 + 16) = sub_188E9CCFC;
        *(v24 + 24) = v23;
        v28[4] = sub_188A4B574;
        v28[5] = v24;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 1107296256;
        v28[2] = sub_188A4A968;
        v28[3] = &block_descriptor_342;
        v25 = _Block_copy(v28);
        v26 = v0;

        [v22 performWithoutAnimation_];
        swift_unknownObjectRelease();
        _Block_release(v25);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
        }

        return;
      }
    }

    else if (v14)
    {
      goto LABEL_25;
    }

    v18 = [v5 maximumValueView];
    v19 = *(v0 + OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView);
    if (!v18)
    {
      if (v19)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v15 = v18;
    if (v19)
    {
      sub_188A34624(0, &qword_1ED48F680);
      v20 = v19;
      v21 = sub_18A4A7C88();

      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_27:
      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x418))();
      sub_188DFB8E4();
      sub_188BFB3D4(0);
      sub_188BFB9E4();
      goto LABEL_28;
    }

LABEL_23:

    goto LABEL_25;
  }

LABEL_28:

  swift_unknownObjectRelease();
}

uint64_t sub_188DFB884()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188DFB8E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong _sliderConfiguration];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 minimumValueView];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView;
          v7 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView];
          if (v7)
          {
            v8 = v0;
            sub_188A34624(0, &qword_1ED48F680);
            v9 = v5;
            v10 = v7;
            v11 = sub_18A4A7C88();

            if (v11)
            {

              v5 = v9;
              v0 = v8;
LABEL_21:

              goto LABEL_22;
            }

            v0 = v8;
            v24 = *&v8[v6];
          }

          else
          {
            v23 = v5;
            v24 = 0;
          }

          [v24 removeFromSuperview];
          v25 = *&v0[v6];
          *&v0[v6] = v5;

          [v0 addSubview_];
          goto LABEL_21;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v12 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (v12)
  {
    v13 = [v12 minimumValueImage];
    if (v13)
    {
      v5 = v13;
      v14 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView;
      v15 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView];
      if (v15 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
      {
        v17 = v16;
        v18 = v15;
        [v17 setImage_];
      }

      else
      {
        [v15 removeFromSuperview];
        v21 = [objc_allocWithZone(UIImageView) initWithImage_];
        v22 = *&v0[v14];
        *&v0[v14] = v21;
        v18 = v21;

        [v0 addSubview_];
      }

      goto LABEL_21;
    }
  }

  v19 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView;
  v20 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_minimumView];
  if (v20)
  {
    [v20 removeFromSuperview];
    v5 = *&v0[v19];
    *&v0[v19] = 0;
    goto LABEL_21;
  }

LABEL_22:
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = [v26 _sliderConfiguration];

    if (v28)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v51 = [v29 maximumValueView];
        swift_unknownObjectRelease();
        if (v51)
        {
          v30 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView;
          v31 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView];
          if (v31)
          {
            v32 = v0;
            sub_188A34624(0, &qword_1ED48F680);
            v33 = v51;
            v34 = v31;
            v35 = sub_18A4A7C88();

            if (v35)
            {

              v36 = v33;
              goto LABEL_44;
            }

            v0 = v32;
            v49 = *&v32[v30];
          }

          else
          {
            v48 = v51;
            v49 = 0;
          }

          [v49 removeFromSuperview];
          v50 = *&v0[v30];
          *&v0[v30] = v51;

          [v0 addSubview_];
LABEL_43:
          v36 = v51;
          goto LABEL_44;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v37 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_data];
  if (v37)
  {
    v38 = [v37 maximumValueImage];
    if (v38)
    {
      v51 = v38;
      v39 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView;
      v40 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView];
      if (v40 && (objc_opt_self(), (v41 = swift_dynamicCastObjCClass()) != 0))
      {
        v42 = v41;
        v43 = v40;
        [v42 setImage_];
      }

      else
      {
        [v40 removeFromSuperview];
        v46 = [objc_allocWithZone(UIImageView) initWithImage_];
        v47 = *&v0[v39];
        *&v0[v39] = v46;
        v43 = v46;

        [v0 addSubview_];
      }

      goto LABEL_43;
    }
  }

  v44 = OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView;
  v45 = *&v0[OBJC_IVAR____TtC5UIKit27_UISliderFluidVisualElement_maximumView];
  if (!v45)
  {
    return;
  }

  [v45 removeFromSuperview];
  v36 = *&v0[v44];
  *&v0[v44] = 0;
LABEL_44:
}

id UITraitCollection.replacing<A>(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  v9 = [v5 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v9;
}

{
  swift_getAssociatedTypeWitness();
  v15[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v15);
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  sub_188A55598(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934050);
  swift_dynamicCast();
  v13[0] = v13[2];
  v13[1] = v14;
  v9 = *(&v14 + 1);
  sub_188A3F5FC(v13, &qword_1EA934050);
  if (v9)
  {
    v10 = sub_18A4A86A8();
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  v11 = [v5 _traitCollectionByReplacingObject_forTraitToken_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  v9 = [v5 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v9;
}

{
  swift_getAssociatedTypeWitness();
  sub_18A4A74E8();
  v9 = [v5 _traitCollectionByReplacingCGFloatValue_forTraitToken_];
  swift_unknownObjectRelease();
  return v9;
}

void UpdateSystemSoundActiveStatus()
{
  if (qword_1ED49E8A8 != -1)
  {
    dispatch_once(&qword_1ED49E8A8, &__block_literal_global_520);
  }

  v0 = IsSystemSoundEnabled() && ([UIApp isSuspended] & 1) == 0 && (objc_msgSend(UIApp, "isSuspendedEventsOnly") & 1) == 0 && qword_1ED49E7A0 && CFArrayGetCount(qword_1ED49E7A0) > 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __UpdateSystemSoundActiveStatus_block_invoke_2;
  aBlock[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = v0;
  v1 = _Block_copy(aBlock);
  if (([UIApp isSuspended] & 1) != 0 || objc_msgSend(UIApp, "isSuspendedEventsOnly"))
  {
    dispatch_sync(qword_1ED49E8A0, v1);
  }

  else
  {
    dispatch_async(qword_1ED49E8A0, v1);
  }
}

BOOL IsSystemSoundEnabled()
{
  if (IsSystemSoundEnabled_onceToken != -1)
  {
    dispatch_once(&IsSystemSoundEnabled_onceToken, &__block_literal_global_528);
  }

  v0 = __systemSoundEnabled;
  if (__systemSoundEnabled == 255)
  {
    CFPreferencesAppSynchronize(@"com.apple.preferences.sounds");
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"keyboard-audio", @"com.apple.preferences.sounds", &keyExistsAndHasValidFormat))
    {
      v1 = 1;
    }

    else
    {
      v1 = keyExistsAndHasValidFormat == 0;
    }

    v2 = v1;
    __systemSoundEnabled = v2;
    UpdateSystemSoundActiveStatus();
    v0 = __systemSoundEnabled;
  }

  return v0 != 0;
}

void __UpdateSystemSoundActiveStatus_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (byte_1ED49E75A != v1)
  {
    byte_1ED49E75A = *(a1 + 32);
    v7 = v1;
    v6 = 1104;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v2 = off_1ED49E8B0;
    v16 = off_1ED49E8B0;
    if (!off_1ED49E8B0)
    {
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __getAudioServicesSetPropertySymbolLoc_block_invoke_0;
      v11 = &unk_1E70F2F20;
      v12 = &v13;
      v3 = AudioToolboxLibrary_1();
      v14[3] = dlsym(v3, "AudioServicesSetProperty");
      off_1ED49E8B0 = *(v12[1] + 24);
      v2 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (v2)
    {
      v2(1633907745, 4, &v6, 4, &v7);
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus __AudioServicesSetProperty(AudioServicesPropertyID, UInt32, const void *, UInt32, const void *)"}];
      [v4 handleFailureInFunction:v5 file:@"UIDevice.m" lineNumber:94 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

void _removeEntriesFromCollectionIfConstraintContainsItem(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 copy];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        v12 = [v11 firstItem];
        v13 = v12;
        if (v12 == v3)
        {
        }

        else
        {
          v14 = [v11 secondItem];

          if (v14 != v3)
          {
            goto LABEL_11;
          }
        }

        _UILACleanUpConstraintForItemInCollection(v10, v4);
LABEL_11:
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

id _constraintGroupNamesForAlignmentOptions(__int16 a1, uint64_t a2)
{
  v4 = ~a1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__236;
  v15 = __Block_byref_object_dispose__236;
  v16 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___constraintGroupNamesForAlignmentOptions_block_invoke;
  aBlock[3] = &unk_1E71291C0;
  aBlock[4] = &v11;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if ((v4 & 0x18) != 0 && (a1 & 0x60) != 0x60)
  {
    (*(v5 + 2))(v5, @"Ambiguity Suppression");
  }

  if (a2)
  {
    if ((a1 & 0x20) != 0)
    {
      (v6)[2](v6, @"Leading");
    }

    if ((a1 & 0x40) != 0)
    {
      (v6)[2](v6, @"Trailing");
    }

    if ((a1 & 0x200) != 0)
    {
      v7 = @"CenterX";
LABEL_17:
      (v6)[2](v6, v7);
    }
  }

  else
  {
    if ((a1 & 0x1008) != 0)
    {
      (v6)[2](v6, @"Top");
    }

    if ((a1 & 0x810) != 0)
    {
      (v6)[2](v6, @"Bottom");
    }

    if ((a1 & 0x400) != 0)
    {
      v7 = @"CenterY";
      goto LABEL_17;
    }
  }

  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_188DFC66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___constraintGroupNamesForAlignmentOptions_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

void _UIButtonBarClearOwnedItems(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v8++) _relinquishOwnership:v4];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_188DFE70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _addInteractiveLayouts(void *a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ([v11 isGroupLayout])
        {
          v12 = [v11 subLayouts];
          _addInteractiveLayouts(v12, v6, a3);
LABEL_8:

          goto LABEL_10;
        }

        if (([v11 isSpaceLayout] & 1) == 0)
        {
          v12 = [v11 barButtonItem];
          if (a3)
          {
            [v6 insertObject:v12 atIndex:0];
          }

          else
          {
            [v6 addObject:v12];
          }

          goto LABEL_8;
        }

LABEL_10:
        ++v10;
      }

      while (v8 != v10);
      v13 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = v13;
    }

    while (v13);
  }
}

void _configureInsets(void *a1, double a2, double a3)
{
  v10 = a1;
  [v10 frame];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v9 = -fmax(fmin(CGRectGetMinX(v12) - a2, 22.0), 0.0);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  [v10 setHitTestInsets:{0.0, v9, 0.0, -fmax(fmin(a3 - CGRectGetMaxX(v13), 22.0), 0.0)}];
}

id _UIStatusBar_Log()
{
  if (qword_1ED499CF0 != -1)
  {
    dispatch_once(&qword_1ED499CF0, &__block_literal_global_537);
  }

  v1 = _MergedGlobals_9_9;

  return v1;
}

uint64_t _checkControlStateArgumentAdjustIfNecessary(uint64_t a1)
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && a1 && a1 != 2)
  {
    if (a1 != 4)
    {
      NSLog(&cfstr_ButtonTextAttr.isa, a1);
    }

    return 4;
  }

  return a1;
}

void _logApplicationLifecycleMemoryMetricApplicationWillBeSuspended()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _applicationLifecycleMemoryMetricLogHandle();
  if (os_signpost_enabled(v0))
  {
    v1 = 138543362;
    v2 = _MXSignpostMetricsSnapshot();
    _os_signpost_emit_with_name_impl(&dword_188A29000, v0, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ApplicationWillBeSuspended", "\n%{public, signpost:metrics}@", &v1, 0xCu);
  }
}

BOOL sub_188E0208C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_188E020BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_188E020E8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_188E02294()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x18CFE3810](*&v1);
}

__n128 sub_188E022F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E02458(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188E02478(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_188E025B4()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E025F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E02628()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E02660()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E026A0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E026E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_188E0272C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_188E02794()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E027E4()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0281C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E02860()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E02898()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02928(uint64_t a1)
{
  v2 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v2;
  v7 = *(a1 + 64);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  sub_188E41F80(v6, v5);
  return UIView.cornerConfiguration.setter(a1);
}

__n128 sub_188E02A2C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E02A38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits.tabAccessoryEnvironment.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_188E02AA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E02AB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02AEC()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02B24()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E02B6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E02BA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02CEC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 128);

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_188E02D4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E02D9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02DD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_188E02E14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E02E4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_188E02E84()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);
  }

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);
  }

  return MEMORY[0x1EEE6BDD0](v0, 208, 7);
}

uint64_t sub_188E02EEC()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);
  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 72);
  }

  if (*(v0 + 136))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);
  }

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_188E02F54()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 56);
  }

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 96);
  }

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_188E02FBC()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  }

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);
  }

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_188E03040()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);
  if (*(v0 + 104))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 80);
  }

  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 120);
  }

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_188E030B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E030F0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 15));

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_188E03168()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 136);

  return MEMORY[0x1EEE6BDD0](v0, 224, 7);
}

uint64_t sub_188E031DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03214()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03254(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_18A4A4BE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_18A4A4A88();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_18A4A4B78();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_18A4A4C78();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_188E033DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_18A4A4BE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_18A4A4A88();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_18A4A4B78();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_18A4A4C78();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_188E036AC(uint64_t a1)
{
  v1 = *(a1 + 88);
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

uint64_t sub_188E036C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E03700()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_188E0378C@<X0>(uint64_t *a1@<X8>)
{
  result = UICollectionViewListCell.accessories.getter();
  *a1 = result;
  return result;
}

id sub_188E037E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return v2;
}

void sub_188E037F0(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *a1;

  *(a2 + 32) = v3;
}

id sub_188E0382C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  *a2 = v2;
  return v2;
}

void sub_188E03838(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *a1;

  *(a2 + 32) = v3;
}

uint64_t sub_188E03884()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E038E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_188E80BB4(v5, v7) & 1;
}

uint64_t sub_188E039A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E039F8()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E03A34()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E03ACC()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

char *sub_188E03B30@<X0>(char **a1@<X8>)
{
  result = UITextField._selectedRanges.getter();
  *a1 = result;
  return result;
}

uint64_t sub_188E03BAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03BFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03CB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E03CE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E03D2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03D64()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E03D9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E03DD8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E03E20()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E03E5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_188E03EA4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E03EDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = UIButton.Configuration.background.getter(v4);
  *a2 = v4[0];
  return result;
}

void sub_188E03F20(uint64_t *a1)
{
  v1 = *a1;

  UIButton.Configuration.background.setter(&v1);
}

void sub_188E03FE0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setBaseForegroundColor_);
}

void sub_188E04044(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setBaseBackgroundColor_);
}

void sub_188E040A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setImage_);
}

void sub_188E04138(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setPreferredSymbolConfigurationForImage_);
}

id sub_188E04190@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) showsActivityIndicator];
  *a2 = result;
  return result;
}

id sub_188E04400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) contentInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_188E04468@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imagePlacement];
  *a2 = result;
  return result;
}

id sub_188E044C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imagePadding];
  *a2 = v4;
  return result;
}

id sub_188E04528@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) titlePadding];
  *a2 = v4;
  return result;
}

id sub_188E045B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) automaticallyUpdateForSelection];
  *a2 = result;
  return result;
}

id sub_188E0461C(uint64_t a1, id *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return [*a2 setConfiguration_];
}

id sub_188E04640@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) titleLineBreakMode];
  *a2 = result;
  return result;
}

id sub_188E046A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) subtitleLineBreakMode];
  *a2 = result;
  return result;
}

id sub_188E04700@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imageReservation];
  *a2 = v4;
  return result;
}

void sub_188E04828(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setAttributedTitle_);
}

void sub_188E04894(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188BC6788(v1, &selRef_setAttributedSubtitle_);
}

uint64_t sub_188E0498C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E04A18()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E04A60@<X0>(void *a1@<X8>)
{
  sub_188C6AAD4();
  result = sub_18A4A5328();
  *a1 = v3;
  return result;
}

uint64_t sub_188E04AB4@<X0>(void *a1@<X8>)
{
  sub_188EB631C();
  result = sub_18A4A5328();
  *a1 = v3;
  return result;
}

uint64_t sub_188E04B30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = UIMutableTraits._headroomUsage.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

__n128 sub_188E04BA0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_188E04BAC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = [*a1 interfaceOrientations];
  v5 = result;
  if (result)
  {
    result = [v3 interfaceOrientations];
  }

  *a2 = result;
  *(a2 + 8) = v5 == 0;
  return result;
}

id sub_188E04C0C(uint64_t *a1, id *a2)
{
  if (*(a1 + 8))
  {
    v2 = 0;
  }

  else
  {
    v2 = *a1;
  }

  return [*a2 setInterfaceOrientations_];
}

id sub_188E04C30(uint64_t a1, id *a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695F050];
  }

  else
  {
    v2 = a1;
  }

  return [*a2 setSystemFrame_];
}

uint64_t sub_188E04C60()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E04C98()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E04CD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E04D4C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E04D98()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E04DE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E04E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E04E5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E04ECC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E04F2C()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E04F7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E04FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, ((((((((((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 35) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_188E05130()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 304);

  return MEMORY[0x1EEE6BDD0](v0, 448, 7);
}

uint64_t sub_188E051A0()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 72))
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 256, 7);
}

uint64_t sub_188E05244()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 160);

  return MEMORY[0x1EEE6BDD0](v0, 304, 7);
}

uint64_t sub_188E052AC()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 192);

  return MEMORY[0x1EEE6BDD0](v0, 336, 7);
}

uint64_t sub_188E05324()
{

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_188E0536C()
{
  if (*(v0 + 16) != 1)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E053BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 160, 7);
}

uint64_t sub_188E053F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E05444()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E05484()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 53, 7);
}

uint64_t sub_188E054D4()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 72))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 109, 7);
}

uint64_t sub_188E05544()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E0557C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E055C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E0560C()
{

  return MEMORY[0x1EEE6BDD0](v0, 297, 7);
}

uint64_t sub_188E05644()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E05684()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_188E059B8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_18A4A28E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_188E05A64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18A4A28E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_188E05B08()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E05B40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E05B88()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E05BC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E05C9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E05CE0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E05D18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

id sub_188E05D74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

uint64_t sub_188E05DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_id;
  swift_beginAccess();
  return sub_188ECA980(v3 + v4, a2);
}

uint64_t sub_188E05E30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_188E05E88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_lineAnimationEnabled;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_188E05EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC5UIKit16UITextEffectView21ReplacementTextEffect_washInColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_188E05F68()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E05FA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E0603C()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E06074()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_188E06198(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  UINavigationItem.renameDelegate.setter(v2, v1);
}

uint64_t sub_188E061FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_188E06258(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_188E062BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A46F8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_188E06348(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_safeAreaRegions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  return sub_188F2461C(v5);
}

id sub_188E06430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_traitCollectionOverride;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_188E064AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit17UIHostingViewBase_isHiddenForReuse;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void *sub_188E0652C@<X0>(uint64_t a1@<X8>)
{
  result = UIHostingViewBase.sceneActivationState.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_188E06560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC5UIKit17UIHostingViewBase__sceneActivationState;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_188E0659C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18A4A4808();
  *a1 = result & 1;
  return result;
}

uint64_t sub_188E065DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E06754()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0678C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E067C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E06808()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E06840()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E06878()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E068B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E068EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_188E06944()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_188E06984()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E069CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E06AC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_188E06B08()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_188E06BC4()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E06C44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_188E06CFC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F476EC(v1);
}

void sub_188E06D58(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F477DC(v1);
}

id sub_188E06DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) cornerRadius];
  *a2 = v4;
  return result;
}

id sub_188E06E9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) accessibilityIgnoresInvertColors];
  *a2 = result;
  return result;
}

void sub_188E06F08(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F478D4(v1);
}

id sub_188E06F84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) strokeWidth];
  *a2 = v4;
  return result;
}

id sub_188E06FE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) _monochromaticTreatment];
  *a2 = result;
  return result;
}

id sub_188E07044@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) font];
  *a2 = result;
  return result;
}

void sub_188E07084(id *a1)
{
  v1 = *a1;
  sub_188F479C4(v1);
}

id sub_188E070D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) color];
  *a2 = result;
  return result;
}

void sub_188E07110(id *a1)
{
  v1 = *a1;
  sub_188F47AB4(v1);
}

id sub_188E07184(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = sub_188CA0300(&qword_1EA930C48, off_1E70EA118, &unk_1EA937500);

  return [v2 setAlignment_];
}

id sub_188E071EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) lineBreakMode];
  *a2 = result;
  return result;
}

id sub_188E0724C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) numberOfLines];
  *a2 = result;
  return result;
}

id sub_188E072AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) adjustsFontSizeToFitWidth];
  *a2 = result;
  return result;
}

id sub_188E0730C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) minimumScaleFactor];
  *a2 = v4;
  return result;
}

id sub_188E0736C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) allowsDefaultTighteningForTruncation];
  *a2 = result;
  return result;
}

id sub_188E073CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) adjustsFontForContentSizeCategory];
  *a2 = result;
  return result;
}

id sub_188E0742C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) showsExpansionTextWhenTruncated];
  *a2 = result;
  return result;
}

void sub_188E074E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F47BA4(v1);
}

void sub_188E075B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F47C94(v1);
}

void sub_188E0767C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F47D84(v1);
}

id sub_188E076FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) axesPreservingSuperviewLayoutMargins];
  *a2 = result;
  return result;
}

id sub_188E0775C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) directionalLayoutMargins];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_188E077C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) prefersSideBySideTextAndSecondaryText];
  *a2 = result;
  return result;
}

id sub_188E07824@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) imageToTextPadding];
  *a2 = v4;
  return result;
}

id sub_188E07884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) textToSecondaryTextHorizontalPadding];
  *a2 = v4;
  return result;
}

id sub_188E078E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) textToSecondaryTextVerticalPadding];
  *a2 = v4;
  return result;
}

id sub_188E07944@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) alpha];
  *a2 = v4;
  return result;
}

id sub_188E079A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) _enforcesMinimumHeight];
  *a2 = result;
  return result;
}

void sub_188E07A10(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F47E74(v1);
}

id sub_188E07A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) _strokeWidth];
  *a2 = v4;
  return result;
}

uint64_t sub_188E07B24@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

void *sub_188E07B50@<X0>(void *a1@<X8>)
{
  result = UITextFormattingViewControllerConfiguration.formattingStyles.getter();
  *a1 = result;
  return result;
}

void *sub_188E07BA8@<X0>(void *a1@<X8>)
{
  result = UITextFormattingViewControllerConfiguration._formattingStyles.getter();
  *a1 = result;
  return result;
}

uint64_t sub_188E07C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18A4A2808();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_18A4A2668();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_188E07D24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_18A4A2808();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_18A4A2668();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_188E07E58()
{
  MEMORY[0x18CFEA6E0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E07E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  return sub_188F5231C(v3 + v4, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_188E07F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

id sub_188E07F60(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  return [v4 setNeedsLayout];
}

uint64_t sub_188E07FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_188E08098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_188E08164()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_188E081A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_188E081D8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  result = [*a1 preferredCornerRadius];
  v5 = v4;
  if (v4 == 1.79769313e308)
  {
    v5 = 0.0;
  }

  *a2 = v5;
  *(a2 + 8) = v4 == 1.79769313e308;
  return result;
}

id sub_188E0822C(uint64_t a1, id *a2)
{
  if (*(a1 + 8))
  {
    v2 = &UISheetPresentationControllerAutomaticDimension;
  }

  else
  {
    v2 = a1;
  }

  return [*a2 setPreferredCornerRadius_];
}

uint64_t sub_188E08284()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E082EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_188F61BB8(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_188E9CED8(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_188E08350()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_188E0838C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 56);
  *a2 = v2;
  return v2;
}

void sub_188E0839C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188CD95D8(v1);
}

uint64_t sub_188E08414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _Glass(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_188E084D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _Glass(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_188E08588(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A3048();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_188E085F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18A4A3048();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_188E086B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_188F6EFD8(v1);
}

uint64_t sub_188E087C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E087F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E08830()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_188E0889C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E088D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_188E0890C()
{

  return MEMORY[0x1EEE6BDD0](v0, 27, 7);
}

uint64_t sub_188E08954()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188E0898C()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_188E089C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_188E089FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_188E08A3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_188E08A84()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_188E08B48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188F86A74();
  *a1 = result;
  return result;
}

__n128 sub_188E08BB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_188E08BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_188F86AB0();
  *a1 = result;
  return result;
}

uint64_t sub_188E08C24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_188F86BB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_188E08C88()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_188E08D94()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}