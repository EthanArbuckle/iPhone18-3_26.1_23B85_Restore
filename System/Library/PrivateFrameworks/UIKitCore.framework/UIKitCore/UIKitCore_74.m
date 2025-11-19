uint64_t sub_189209A70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  LOBYTE(a3) = sub_1892093A0(a3);

  return a3 & 1;
}

id _UIComponentGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18A4A86A8();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

void sub_189209C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  sub_189209DF0();
}

id _UIComponentGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_189209CF0(uint64_t a1)
{
  sub_188A55B8C(*(a1 + qword_1EA940628));
}

unint64_t sub_189209D4C()
{
  result = qword_1EA940640;
  if (!qword_1EA940640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA940640);
  }

  return result;
}

unint64_t sub_189209D98()
{
  result = qword_1EA940648[0];
  if (!qword_1EA940648[0])
  {
    sub_18A4A6FD8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA940648);
  }

  return result;
}

double sub_189209ED4(float64x2_t *a1)
{
  v2 = vdivq_f64(vabdq_f64(*v1, *a1), vdupq_n_s64(0x3F847AE147AE147BuLL));
  result = vabdd_f64(v1[1].f64[0], a1[1].f64[0]) / 0.01;
  v4 = vabdd_f64(v1[1].f64[1], a1[1].f64[1]) / 0.01;
  v5 = v2.f64[1];
  if (v2.f64[0] > v2.f64[1])
  {
    v5 = v2.f64[0];
  }

  if (v5 > result)
  {
    result = v5;
  }

  if (result <= v4)
  {
    return v4;
  }

  return result;
}

void sub_189209F38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_188C52118(a1);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_189209F64@<X0>(uint64_t *a1@<X8>)
{
  sub_18A4A24D8();
  result = sub_18A4A39F8();
  *a1 = result;
  return result;
}

uint64_t sub_18920A000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_18A4A2668();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_18A4A2588();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  sub_18920A398(a1, a2, a3 & 1, &v24 - v15);
  if ((*(v11 + 48))(v16, 1, v10) != 1)
  {
    v13 = v16;
    return (*(v11 + 32))(a4, v13, v10);
  }

  v24 = a2;
  v25 = a4;
  sub_188A3F5FC(v16, &qword_1EA935C40);
  v17 = [v4 text];
  if (v17)
  {
    v18 = v17;
    sub_18A4A7288();

    if (a3)
    {
      goto LABEL_8;
    }
  }

  else if (a3)
  {
    goto LABEL_8;
  }

  sub_18A4A7908();
  if ((v19 & 1) == 0)
  {
    sub_18A4A7448();

    sub_18A4A2658();
    sub_18A4A25A8();
    goto LABEL_10;
  }

LABEL_8:
  sub_18A4A2658();
  sub_18A4A2598();
LABEL_10:
  v20 = [v4 font];
  if (v20)
  {
    v21 = v20;
    [v20 pointSize];
    v26 = v22;
    v27 = 0;
    sub_18A4A39D8();
    sub_18900C508(&qword_1EA92FA90, MEMORY[0x1E69DBB30]);
    sub_18A4A25D8();
  }

  a4 = v25;
  return (*(v11 + 32))(a4, v13, v10);
}

id sub_18920A398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_18A4A2588();
  v29 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v5 attributedText];
  if (result)
  {
    v18 = result;
    if ((a3 & 1) == 0)
    {
      if (__OFADD__(a1, a2))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

      if ([result length] >= a1 + a2)
      {
        v19 = [v18 attributedSubstringFromRange_];

        v18 = v19;
      }
    }

    swift_getKeyPath();
    sub_18A4A39F8();
    sub_18900C508(&qword_1EA92FA88, MEMORY[0x1E69DBB48]);
    v20 = v18;
    sub_18A4A25B8();
    v27 = *(v29 + 56);
    v27(v12, 0, 1, v13);
    (*(v29 + 32))(v16, v12, v13);
    v28 = *off_1E70EC918;
    v22 = [v20 length];
    v23 = swift_allocObject();
    *(v23 + 16) = v16;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_18920B848;
    *(v24 + 24) = v23;
    aBlock[4] = sub_188ECA51C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18914E7A8;
    aBlock[3] = &block_descriptor_154;
    v25 = _Block_copy(aBlock);

    [v20 enumerateAttribute:v28 inRange:0 options:v22 usingBlock:{0, v25}];
    _Block_release(v25);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      (*(v29 + 16))(a4, v16, v13);
      v27(a4, 0, 1, v13);
      (*(v29 + 8))(v16, v13);
    }

    goto LABEL_13;
  }

  v21 = *(v29 + 56);

  return v21(a4, 1, 1, v13);
}

uint64_t sub_18920A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a3;
  v7 = sub_18A4A2588();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - v16;
  sub_188A3F29C(a1, v28, &qword_1EA934050);
  if (v29)
  {
    sub_188A34624(0, &qword_1ED48C4A0);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v19 = v26;
    (*(v8 + 16))(v10, a5, v7);
    sub_18900C508(&qword_1EA92FAC0, MEMORY[0x1E6968848]);
    sub_18A4A78F8();
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      v20 = &qword_1EA939E80;
      v21 = v13;
    }

    else
    {
      sub_188A3F704(v13, v17, &qword_1EA939E88);
      [v19 pointSize];
      v23 = v22;
      sub_18900C4A4();
      v24 = sub_18A4A25E8();
      v26 = v23;
      v27 = 0;
      sub_18A4A39D8();
      sub_18900C508(&qword_1EA92FA90, MEMORY[0x1E69DBB30]);
      sub_18A4A26D8();
      v24(v28, 0);

      v21 = v17;
      v20 = &qword_1EA939E88;
    }
  }

  else
  {
    v20 = &qword_1EA934050;
    v21 = v28;
  }

  return sub_188A3F5FC(v21, v20);
}

unint64_t _sSo10UITextViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  v3 = sub_18A4A3BA8();
  v95 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_18A4A3A28();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v89 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78 - v8;
  v10 = sub_18A4A3A48();
  v91 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E78);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v87 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E80);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v78 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939E88);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v78 - v20;
  v21 = sub_18A4A4088();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_18A4A2588();
  v97 = *(v25 - 8);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v78 - v29;
  v31 = [v2 isSecureTextEntry];
  v101 = [v2 textContentType];
  v102 = v30;
  v85 = v31;
  v93 = v10;
  v94 = v5;
  if (v31)
  {
    goto LABEL_6;
  }

  result = [v2 textInputTraits];
  if (!result)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v33 = result;
  v34 = [result wasEverSecureTextEntry];

  v30 = v102;
  if ((v34 & 1) == 0)
  {
    if (!v101 || (v35 = v101, v36 = sub_188F64DEC(), v35, v30 = v102, (v36 & 1) == 0))
    {
      v56 = [v2 selectedRange];
      if ((v56 & 0x8000000000000000) == 0)
      {
        v58 = v56;
        v59 = v57;
        v60 = sub_18A4A2388();
        v61 = 0;
        if (v58 == v60)
        {
          v79 = 0;
        }

        else
        {
          v79 = 0;
          if (v59 < 0)
          {
            goto LABEL_29;
          }

          if (v59 == sub_18A4A2388())
          {
            goto LABEL_20;
          }

          if (__OFADD__(v58, v59))
          {
            v61 = 0;
          }

          else
          {
            v61 = v58;
          }

          if (__OFADD__(v58, v59))
          {
            v62 = 0;
          }

          else
          {
            v62 = v59;
          }

          v79 = v62;
        }

LABEL_29:
        v78 = v61;
        sub_18A4A3448();
        __swift_project_boxed_opaque_existential_0(v104, v104[3]);
        sub_18A4A3E88();
        v63 = sub_18A4A4028();
        (*(v22 + 8))(v24, v21);
        __swift_destroy_boxed_opaque_existential_0Tm(v104);
        if (v63)
        {
          v64 = [v2 _visibleRangeWithLayout_];
          v37 = v100;
          v66 = v79;
          if ((v64 & 0x8000000000000000) != 0)
          {
            goto LABEL_34;
          }

          v67 = v64;
          v68 = v65;
          v69 = sub_18A4A2388();
          result = 0;
          v70 = 0;
          if (v67 == v69 || v68 < 0)
          {
LABEL_35:
            if (!v66)
            {
              goto LABEL_45;
            }

LABEL_36:
            v71 = result + v70;
            if (__OFADD__(result, v70))
            {
              __break(1u);
            }

            else if (!__OFADD__(v78, v66))
            {
              if (v71 <= (v78 + v66))
              {
                v71 = v78 + v66;
              }

              if (result >= v78)
              {
                result = v78;
              }

              v70 = v71 - result;
              if (!__OFSUB__(v71, result))
              {
                v78 -= result;
                goto LABEL_45;
              }

              goto LABEL_60;
            }

            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (v68 == sub_18A4A2388())
          {
LABEL_34:
            result = 0;
            v70 = 0;
            goto LABEL_35;
          }

          if (__OFADD__(v67, v68))
          {
            result = 0;
          }

          else
          {
            result = v67;
          }

          if (__OFADD__(v67, v68))
          {
            v70 = 0;
          }

          else
          {
            v70 = v68;
          }

          if (v66)
          {
            goto LABEL_36;
          }
        }

        else
        {
          result = 0;
          v70 = 0;
          v37 = v100;
          v66 = v79;
        }

LABEL_45:
        v72 = v102;
        sub_18920A000(result, v70, (v63 & 1) == 0, v102);
        v30 = v72;
        if (v66)
        {
          (*(v97 + 16))(v96, v72, v98);
          sub_18900C508(&qword_1EA92FAC0, MEMORY[0x1E6968848]);
          v73 = v84;
          sub_18A4A78F8();
          if ((*(v82 + 48))(v73, 1, v83) == 1)
          {
            v74 = &qword_1EA939E80;
            v75 = v73;
          }

          else
          {
            v76 = v81;
            sub_188A3F704(v73, v81, &qword_1EA939E88);
            sub_18900C4A4();
            v77 = sub_18A4A25E8();
            v103 = 1;
            sub_18A4A39E8();
            sub_18900C508(&qword_1EA939E90, MEMORY[0x1E69DBB40]);
            sub_18A4A26D8();
            v30 = v102;
            v77(v104, 0);
            v37 = v100;
            v75 = v76;
            v74 = &qword_1EA939E88;
          }

          sub_188A3F5FC(v75, v74);
        }

        goto LABEL_7;
      }

LABEL_20:
      v61 = 0;
      v79 = 0;
      goto LABEL_29;
    }
  }

LABEL_6:
  sub_18A4A2578();
  v37 = v100;
LABEL_7:
  v38 = sub_18A4A3A18();
  v39 = *(*(v38 - 8) + 56);
  v39(v37, 1, 1, v38);
  if ([v2 isEditable])
  {
    v40 = [(UITextView *)v2 _attributedPlaceholder];
    v80 = v9;
    if (v40)
    {
      v41 = v40;
      v42 = [v40 string];

      sub_18A4A7288();
    }

    if (v101)
    {
      sub_18A4A7288();
    }

    [v2 isFirstResponder];
    v43 = v86;
    sub_18A4A3A08();
    v37 = v100;
    sub_188A3F5FC(v100, &qword_1EA939E78);
    v39(v43, 0, 1, v38);
    sub_188A3F704(v43, v37, &qword_1EA939E78);
    v9 = v80;
    v30 = v102;
  }

  v44 = v97;
  v45 = v95;
  v46 = v98;
  (*(v97 + 16))(v96, v30, v98);
  sub_188A3F29C(v37, v87, &qword_1EA939E78);
  v47 = sub_18A4A3EE8();
  (*(*(v47 - 8) + 56))(v9, 1, 1, v47);
  v48 = v88;
  sub_18A4A39C8();
  v49 = [v2 textContainer];
  v50 = v37;
  v51 = [v49 maximumNumberOfLines];

  v52 = MEMORY[0x1E69DBB58];
  if (v51 != 1)
  {
    v52 = MEMORY[0x1E69DBB60];
  }

  (*(v90 + 104))(v89, *v52, v92);
  sub_18A4A3A38();
  v53 = v91;
  v55 = v93;
  v54 = v94;
  (*(v91 + 16))(v94, v48, v93);
  (*(v45 + 104))(v54, *MEMORY[0x1E69DBBC8], v3);
  sub_18A4A3418();

  (*(v45 + 8))(v54, v3);
  (*(v53 + 8))(v48, v55);
  sub_188A3F5FC(v50, &qword_1EA939E78);
  return (*(v44 + 8))(v102, v46);
}

uint64_t sub_18920B87C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_188B9DE3C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18920BA44(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18920BBB4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_188C8D8B4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18920BD00(void *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 20));
  v6 = *(v5 + 19);
  os_unfair_lock_unlock((v5 + 20));
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_beginAccess();
    a1 = *(v2 + 408);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 408) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a1 = sub_188A32A24(0, a1[2] + 1, 1, a1);
  *(v2 + 408) = a1;
LABEL_3:
  v9 = a1[2];
  v8 = a1[3];
  if (v9 >= v8 >> 1)
  {
    a1 = sub_188A32A24((v8 > 1), v9 + 1, 1, a1);
  }

  a1[2] = v9 + 1;
  v10 = &a1[2 * v9];
  v10[4] = sub_188E3FE50;
  v10[5] = v5;
  *(v2 + 408) = a1;
  return swift_endAccess();
}

id sub_18920BE24(void *a1, char a2)
{
  if (qword_1EA932038 != -1)
  {
    swift_once();
  }

  if (byte_1EA9406D1)
  {
    if (qword_1ED48EFD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = qword_1EA9951B0;
    if (*(qword_1EA9951B0 + 16) && (v6 = sub_188E8B8AC(a1, a2 & 1), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      return sub_189212280(a1, a2 & 1, v2, a1, a2 & 1);
    }
  }

  else
  {
    if (qword_1ED48EFD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_189072710(v9);
    v8 = v10;

    if (!v8)
    {
      objc_opt_self();
      v11 = +[UIScreen _mainScreen];
      v8 = sub_189212280(v11, a2 & 1, v2, a1, a2 & 1);
    }
  }

  return v8;
}

uint64_t sub_18920BFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_189214A14(sub_18921564C, a1, a2, a3);
}

id sub_18920C05C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = sub_1890977D4();
  if (!Strong || (v2 = [Strong window]) == 0 || (v3 = v2, v4 = objc_msgSend(v2, sel_screen), v3, !v4))
  {
    objc_opt_self();
    v4 = +[UIScreen _mainScreen];
  }

  v5 = sub_18920BE24(v4, v1 & 1);

  return v5;
}

uint64_t sub_18920C138()
{
  v1 = v0;
  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A4378();
  __swift_project_value_buffer(v2, qword_1ED48F7C8);
  v3 = sub_18A4A4358();
  v4 = sub_18A4A7968();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v3, v4, "Canceling all animations immediately", v5, 2u);
    MEMORY[0x18CFEA5B0](v5, -1, -1);
  }

  signpost_c2_cancel();
  if (qword_1ED48EFF8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong invalidate];
  }

  swift_unknownObjectWeakAssign();
  signpost_c2_tick_enter_start();
  v8 = *(v1 + 264);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_188AA7238;
  *(v9 + 24) = v1;
  v20 = sub_188E3FE50;
  v21 = v9;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_188A4A968;
  v19 = &block_descriptor_61_5;
  v10 = _Block_copy(&v16);

  dispatch_sync(v8, v10);
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v1 + 272);
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = 1;
    *(v13 + 32) = sub_189215CEC;
    *(v13 + 40) = v1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    *(v13 + 64) = 0;
    *(v13 + 72) = signpost_c2_entryLock_start;
    *(v13 + 80) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_188AA7278;
    *(v14 + 24) = v13;
    v20 = sub_188E3FE50;
    v21 = v14;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_188A4A968;
    v19 = &block_descriptor_71_4;
    v15 = _Block_copy(&v16);

    dispatch_sync(v12, v15);
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      sub_18921138C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18920C4F0()
{
  v1 = v0;
  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A4378();
  __swift_project_value_buffer(v2, qword_1ED48F7C8);
  v3 = sub_18A4A4358();
  v4 = sub_18A4A7968();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v3, v4, "Application did enter background", v5, 2u);
    MEMORY[0x18CFEA5B0](v5, -1, -1);
  }

  *(v1 + 376) = 1;
  sub_18920DE24();

  return sub_18920C138();
}

uint64_t sub_18920C5EC()
{
  v1 = v0;
  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v2 = sub_18A4A4378();
  __swift_project_value_buffer(v2, qword_1ED48F7C8);
  v3 = sub_18A4A4358();
  v4 = sub_18A4A7968();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_188A29000, v3, v4, "Application did become active", v5, 2u);
    MEMORY[0x18CFEA5B0](v5, -1, -1);
  }

  *(v1 + 376) = 0;

  return sub_18920DE24();
}

id sub_18920C6DC(void *a1, int a2)
{
  v3 = v2;
  v44 = a2;
  v43 = a1;
  v53 = sub_18A4A7A58();
  v4 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A7A38();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_18A4A6E58();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940800);
  v9 = swift_allocObject();
  *(v9 + 16) = 16777218;
  *(v2 + 16) = v9;
  *(v2 + 24) = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  v10 = *(MEMORY[0x1E69792B8] + 8);
  *(v2 + 64) = *MEMORY[0x1E69792B8];
  *(v2 + 72) = v10;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_188ABB4E0(MEMORY[0x1E69E7CC0]);
  *(v3 + 80) = sub_188ABC430(v12);
  *(v3 + 88) = v11;
  *(v3 + 96) = v11;
  *(v3 + 104) = v11;
  *(v3 + 112) = v11;
  *(v3 + 120) = v11;
  *(v3 + 128) = v11;
  *(v3 + 136) = v11;
  *(v3 + 144) = sub_188C3F104(v11);
  *(v3 + 152) = sub_188C3F104(v11);
  *(v3 + 160) = sub_188C3F104(v11);
  v13 = sub_188ABB4E0(v11);
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = v13;
  *(v3 + 192) = 5;
  *(v3 + 232) = 0;
  *(v3 + 196) = 0;
  *(v3 + 212) = 0;
  *(v3 + 204) = 0;
  *(v3 + 220) = 0;
  swift_unknownObjectWeakInit();
  v52 = sub_188A34624(0, &qword_1ED490540);
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  v42 = "flushesWithTransaction";
  *(v3 + 240) = 0;
  sub_18A4A6E38();
  v54 = v11;
  v47 = sub_188A34024(&unk_1ED48FC20, 255, MEMORY[0x1E69E8030]);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93EAD8);
  v48 = sub_188A34360(&unk_1ED48FC38, qword_1EA93EAD8);
  v46 = v14;
  v50 = v7;
  sub_18A4A7EB8();
  v51 = *MEMORY[0x1E69E8090];
  v15 = v4 + 104;
  v16 = *(v4 + 104);
  v45 = v15;
  v17 = v53;
  v16(v6);
  v49 = v16;
  *(v3 + 264) = sub_18A4A7A98();
  v42 = "onManagerTickEntryQueue";
  sub_18A4A6E38();
  v54 = MEMORY[0x1E69E7CC0];
  sub_18A4A7EB8();
  (v16)(v6, v51, v17);
  *(v3 + 272) = sub_18A4A7A98();
  v42 = "onManagerTickQueue";
  sub_18A4A6E38();
  v54 = MEMORY[0x1E69E7CC0];
  sub_18A4A7EB8();
  v18 = v51;
  (v49)(v6, v51, v53);
  *(v3 + 280) = sub_18A4A7A98();
  v42 = "onManagerLockingQueue";
  sub_18A4A6E38();
  v54 = MEMORY[0x1E69E7CC0];
  sub_18A4A7EB8();
  v19 = v53;
  v20 = v49;
  (v49)(v6, v18, v53);
  *(v3 + 288) = sub_18A4A7A98();
  v42 = "onManagerDisplayLinkAccessQueue";
  sub_18A4A6E38();
  v54 = MEMORY[0x1E69E7CC0];
  sub_18A4A7EB8();
  (v20)(v6, v51, v19);
  v21 = v43;
  v22 = sub_18A4A7A98();
  *(v3 + 320) = 0;
  *(v3 + 296) = v22;
  *(v3 + 304) = 0;
  *(v3 + 311) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 352) = 0;
  *(v3 + 336) = 0;
  *(v3 + 344) = 0;
  v23 = MEMORY[0x1E69E7CC0];
  *(v3 + 360) = sub_188C3F354(MEMORY[0x1E69E7CC0]);
  *(v3 + 368) = 0;
  v24 = MEMORY[0x1E69E7CD0];
  *(v3 + 376) = 0;
  *(v3 + 384) = v24;
  *(v3 + 392) = 257;
  *(v3 + 400) = 0;
  *(v3 + 408) = v23;
  swift_unknownObjectWeakAssign();
  v25 = UIApp;
  if (UIApp)
  {
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v27 = v25;
    if ([ObjCClassFromObject _isSystemUIService] && (_UIApplicationIsExtension() & 1) == 0)
    {
      v28 = objc_opt_self();
      v29 = [v28 defaultCenter];
      [v29 addObserver:v3 selector:sel_applicationDidEnterBackground name:@"UIApplicationDidEnterBackgroundNotification" object:v27];

      v30 = [v28 defaultCenter];
      [v30 addObserver:v3 selector:sel_applicationBecameActive name:@"UIApplicationDidBecomeActiveNotification" object:v27];

      v31 = [v28 defaultCenter];
      [v31 addObserver:v3 selector:sel_screenBasedSceneWillAttachWindow_ name:@"_UIScreenBasedWindowSceneDidAttachWindowNotification" object:0];

      v27 = v31;
    }
  }

  sub_188A34624(0, &qword_1ED490230);
  objc_opt_self();
  v32 = +[UIScreen _mainScreen];
  v33 = sub_18A4A7C88();

  if (v33)
  {
    sub_18920D084();
  }

  sub_188C3EAB8((v44 & 1) << 8);
  v34 = *(v3 + 16);
  os_unfair_lock_lock((v34 + 20));
  v35 = *(v34 + 16);
  if (v35 != 2)
  {
    *(v34 + 18) = v35 & 1;
    *(v34 + 19) = HIBYTE(v35) & 1;
    *(v34 + 16) = 2;
  }

  os_unfair_lock_unlock((v34 + 20));
  if (qword_1EA932038 != -1)
  {
    swift_once();
  }

  if (byte_1EA9406D1 != 1)
  {
    v38 = [objc_opt_self() mainDisplay];
    if (!v38)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  result = [v21 displayConfiguration];
  if (result)
  {
    v37 = result;
    v38 = [result CADisplay];

    if (!v38)
    {
LABEL_15:

LABEL_18:
      v40 = *(v3 + 400);
      *(v3 + 400) = v38;

      return v3;
    }

LABEL_17:
    v54 = v38;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v39 = v38;
    v38 = sub_18A4A2868();

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_18920D084()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_18A4A6E18();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_18A4A6E58();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 37);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = v2;
  v28 = sub_189214D30;
  v29 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_18920DAC0;
  v27 = &block_descriptor_155;
  v12 = _Block_copy(&aBlock);

  swift_beginAccess();
  v21[1] = v10;
  v13 = notify_register_dispatch("com.apple.backboardd.backlight.changed", v1 + 84, v10, v12);
  swift_endAccess();
  _Block_release(v12);
  if (v13)
  {
    v21[0] = v4;
    if (qword_1ED48F7C0 != -1)
    {
      swift_once();
    }

    v14 = sub_18A4A4378();
    __swift_project_value_buffer(v14, qword_1ED48F7C8);
    v15 = sub_18A4A4358();
    v16 = sub_18A4A7978();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_188A29000, v15, v16, "Failed to register for backlight changes, status=%u", v17, 8u);
      MEMORY[0x18CFEA5B0](v17, -1, -1);
    }

    v4 = v21[0];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v2;
  v28 = sub_189214D30;
  v29 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_188A4A8F0;
  v27 = &block_descriptor_42_4;
  v19 = _Block_copy(&aBlock);

  sub_18A4A6E38();
  v23 = MEMORY[0x1E69E7CC0];
  sub_188A34024(&qword_1ED490560, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
  sub_188A34360(&qword_1ED490550, &unk_1EA935AC0);
  sub_18A4A7EB8();
  MEMORY[0x18CFE29D0](0, v9, v6, v19);
  _Block_release(v19);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v22);
}

uint64_t sub_18920D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18A4A6E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A6E58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(result + 296);
    v17 = v8;
    v16 = v13;

    aBlock[4] = sub_189215644;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_130_1;
    v14 = _Block_copy(aBlock);

    sub_18A4A6E38();
    v18 = MEMORY[0x1E69E7CC0];
    sub_188A34024(&qword_1ED490560, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
    sub_188A34360(&qword_1ED490550, &unk_1EA935AC0);
    sub_18A4A7EB8();
    v15 = v16;
    MEMORY[0x18CFE29D0](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v17);
  }

  return result;
}

uint64_t sub_18920D810()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_188C3E2B0();
  }

  return result;
}

uint64_t sub_18920D868()
{
  v1 = [objc_opt_self() defaultCenter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934470);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18A64C6E0;
  *(v2 + 32) = @"UIApplicationDidEnterBackgroundNotification";
  *(v2 + 40) = @"UIApplicationDidBecomeActiveNotification";
  *(v2 + 48) = @"UISceneDidDisconnectNotification";
  *(v2 + 56) = @"_UIScreenBasedWindowSceneDidAttachWindowNotification";
  type metadata accessor for Name(0);
  v3 = @"UIApplicationDidEnterBackgroundNotification";
  v4 = @"UIApplicationDidBecomeActiveNotification";
  v5 = @"UISceneDidDisconnectNotification";
  v6 = @"_UIScreenBasedWindowSceneDidAttachWindowNotification";
  v7 = sub_18A4A7518();

  [(NSNotificationCenter *)v1 _uiRemoveObserver:v0 names:v7];

  swift_beginAccess();
  notify_cancel(*(v0 + 336));

  MEMORY[0x18CFEA6E0](v0 + 32);
  MEMORY[0x18CFEA6E0](v0 + 40);
  MEMORY[0x18CFEA6E0](v0 + 48);

  sub_188B223B8(v0 + 224);

  MEMORY[0x18CFEA6E0](v0 + 328);

  return v0;
}

uint64_t sub_18920DA8C()
{
  sub_18920D868();

  return swift_deallocClassInstance();
}

uint64_t sub_18920DAC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_18920DB14()
{
  v1 = v0;
  sub_18A4A2438();
  if (v19)
  {
    sub_188A34624(0, &qword_1EA930220);
    if (swift_dynamicCast())
    {
      v2 = objc_opt_self();
      v3 = v14;
      v4 = [v3 screen];
      v5 = [v2 _unassociatedWindowSceneForScreen_create_];

      if (v5 && (v3 = v3, v6 = sub_18A4A7C88(), v5, v3, (v6 & 1) != 0) && ![v3 activationState])
      {
        swift_unknownObjectWeakInit();
        v17[0] = v3;
        swift_unknownObjectWeakAssign();

        swift_beginAccess();
        v7 = *(v1 + 384);

        v8 = sub_18907FDE0(v17, v7);

        if (v8)
        {
          sub_188E7DD4C(v17);
        }

        else
        {
          if (qword_1ED48F7C0 != -1)
          {
            swift_once();
          }

          v9 = sub_18A4A4378();
          __swift_project_value_buffer(v9, qword_1ED48F7C8);
          v10 = sub_18A4A4358();
          v11 = sub_18A4A7968();
          if (os_log_type_enabled(v10, v11))
          {
            v12 = swift_slowAlloc();
            *v12 = 0;
            _os_log_impl(&dword_188A29000, v10, v11, "Screen-based window scene was attached", v12, 2u);
            MEMORY[0x18CFEA5B0](v12, -1, -1);
          }

          sub_188E7DC94(v17, v15);
          swift_beginAccess();
          sub_188E72DAC(v16, v15);
          swift_endAccess();
          sub_188E7DD4C(v16);
          v13 = [objc_opt_self() defaultCenter];
          [v13 addObserver:v1 selector:sel_screenBasedSceneDidDisconnect_ name:@"UISceneDidDisconnectNotification" object:v3];

          sub_18920DE24();
          sub_188E7DD4C(v17);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_188A3F5FC(v18, &qword_1EA934050);
  }
}

uint64_t sub_18920DE24()
{
  v16 = *(v0 + 376);
  swift_beginAccess();
  v1 = *(v0 + 384);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v7 >= v5)
        {
          v4 = v16;
          goto LABEL_13;
        }

        v4 = *(v1 + 56 + 8 * v7);
        ++v6;
        if (v4)
        {
          v6 = v7;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_188E7DC94(*(v1 + 48) + ((v6 << 10) | (16 * v8)), v17);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_188E7DD4C(v17);
    if (Strong)
    {
      v10 = [Strong activationState];

      if (!v10)
      {
        break;
      }
    }
  }

  v4 = 0;
LABEL_13:

  if (qword_1ED48F7C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v11 = sub_18A4A4378();
  __swift_project_value_buffer(v11, qword_1ED48F7C8);
  v12 = sub_18A4A4358();
  v13 = sub_18A4A7968();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v4;
    _os_log_impl(&dword_188A29000, v12, v13, "Will update animation suspension for app state change, shouldSuspendAnimations=%{BOOL}d", v14, 8u);
    MEMORY[0x18CFEA5B0](v14, -1, -1);
  }

  return sub_18920E434(v4);
}

void sub_18920E048()
{
  v1 = v0;
  sub_18A4A2438();
  if (v13)
  {
    sub_188A34624(0, &qword_1EA930220);
    if (swift_dynamicCast())
    {
      swift_unknownObjectWeakInit();
      v11[0] = v9;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      v2 = *(v0 + 384);

      v3 = sub_18907FDE0(v11, v2);

      if (v3)
      {
        if (qword_1ED48F7C0 != -1)
        {
          swift_once();
        }

        v4 = sub_18A4A4378();
        __swift_project_value_buffer(v4, qword_1ED48F7C8);
        v5 = sub_18A4A4358();
        v6 = sub_18A4A7968();
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          *v7 = 0;
          _os_log_impl(&dword_188A29000, v5, v6, "Screen-based window scene was disconnected", v7, 2u);
          MEMORY[0x18CFEA5B0](v7, -1, -1);
        }

        swift_beginAccess();
        sub_18922286C(v11, v10);
        swift_endAccess();
        sub_188A3F5FC(v10, &qword_1EA940840);
        v8 = [objc_opt_self() defaultCenter];
        [v8 removeObserver:v1 name:@"UISceneDidDisconnectNotification" object:v9];

        sub_18920DE24();
        sub_188E7DD4C(v11);
      }

      else
      {
        sub_188E7DD4C(v11);
      }
    }
  }

  else
  {
    sub_188A3F5FC(v12, &qword_1EA934050);
  }
}

uint64_t sub_18920E2C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = sub_18A4A2458();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2418();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18920E3F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_18920E434(uint64_t result)
{
  if (*(v1 + 340) != (result & 1))
  {
    if (result)
    {
      v2 = *(v1 + 272);
      v3 = swift_allocObject();
      *(v3 + 16) = sub_189215B48;
      *(v3 + 24) = v1;
      v12 = sub_188E3FE50;
      v13 = v3;
      v8 = MEMORY[0x1E69E9820];
      v9 = 1107296256;
      v10 = sub_188A4A968;
      v11 = &block_descriptor_291;
      v4 = _Block_copy(&v8);

      dispatch_sync(v2, v4);
      _Block_release(v4);
      LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

      if ((v2 & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }

    sub_18920C138();
    v5 = *(v1 + 272);
    v6 = swift_allocObject();
    *(v6 + 16) = sub_189215B40;
    *(v6 + 24) = v1;
    v12 = sub_188E3FE50;
    v13 = v6;
    v8 = MEMORY[0x1E69E9820];
    v9 = 1107296256;
    v10 = sub_188A4A968;
    v11 = &block_descriptor_284_0;
    v7 = _Block_copy(&v8);

    dispatch_sync(v5, v7);
    _Block_release(v7);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18920E680(uint64_t a1)
{
  *(a1 + 340) = 1;
  if ((*(a1 + 314) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(a1 + 232);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  *(a1 + 232) = 0;
  result = swift_unknownObjectWeakAssign();
  *(a1 + 314) = 0;
  return result;
}

uint64_t sub_18920E704(char a1)
{
  v3 = v1;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v22 = 0;
  signpost_c2_tick_solver_start();
  v4 = *(v1 + 280);
  v5 = swift_allocObject();
  v5[2] = &v22;
  v5[3] = v3;
  v5[4] = &v23;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_189215638;
  *(v6 + 24) = v5;
  aBlock[4] = sub_188E3FE50;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_127_3;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v22 <= 0)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = 1.79769313e308;
    }

    result = swift_beginAccess();
    v6 = *(v3 + 96);
    if (!(v6 >> 62))
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_7;
      }

LABEL_23:
      v12 = MEMORY[0x1E69E7CC0];
LABEL_24:
      signpost_c2_tick_solver_end();

      return v12;
    }
  }

  result = sub_18A4A7F68();
  v9 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_7:
  if (v9 >= 1)
  {

    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = sub_188E4B2E4(v11, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v11 + 32);
      }

      v15 = *(v14 + 40);
      v16 = *(v3 + 248);

      LOBYTE(v15) = v15(a1 & 1, v16);
      v18 = v17;

      if (v15)
      {

        MEMORY[0x18CFE2450](v19);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();

        v12 = v24;
      }

      else
      {
        if (v2 <= v18)
        {
          v2 = v18;
        }

        v13 = *(v14 + 33);

        v10 |= v13;
      }

      ++v11;
    }

    while (v9 != v11);

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t sub_18920EA3C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 104);
  if (v6 >> 62)
  {
    v7 = sub_18A4A7F68();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = v7;
  swift_beginAccess();

  sub_188A32CD0(v8, sub_188AAA5A8, sub_188A33DD8);
  swift_endAccess();
  v9 = *(a2 + 96);
  if (v9 >> 62)
  {
    v10 = sub_18A4A7F68();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a3 = v10;
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_18920EB84()
{
  signpost_c2_tick_post_start();
  result = swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return signpost_c2_tick_post_end();
  }

  v4 = 0;
  v5 = 0.0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = __OFADD__(v4, v3);
    v4 += v3;
    if (v7)
    {
      break;
    }

    *(v0 + 112) = v6;
    v8 = v2 + 40;
    do
    {
      v9 = *(v8 - 8);

      v9(&v11, v10);

      if (v5 <= v11)
      {
        v5 = v11;
      }

      v8 += 16;
      --v3;
    }

    while (v3);

    v2 = *(v0 + 112);
    v3 = *(v2 + 16);
    if (!v3)
    {
      return signpost_c2_tick_post_end();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18920EC78(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 120);
  v4 = (v2 + 16);
  v3 = *(v2 + 2);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = *&v2[v5 + 32];

      LOBYTE(v7) = v7(0);

      if (v7)
      {
        break;
      }

      ++v6;
      v5 += 16;
      if (v3 == v6)
      {
        goto LABEL_5;
      }
    }

    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      v10 = *v4;
      while (v9 != v10)
      {
        if (v9 >= v10)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v11 = &v2[v5];
        v12 = *&v2[v5 + 48];

        LOBYTE(v12) = v12(0);

        if ((v12 & 1) == 0)
        {
          if (v9 != v6)
          {
            if (v6 < 0)
            {
              goto LABEL_24;
            }

            if (v6 >= *v4)
            {
              goto LABEL_25;
            }

            if (v9 >= *v4)
            {
              goto LABEL_26;
            }

            v14 = *(v11 + 6);
            v13 = *(v11 + 7);
            v17 = *&v2[16 * v6 + 32];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(a1 + 120) = v2;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v2 = sub_189212C28(v2);
              *(a1 + 120) = v2;
            }

            v16 = &v2[16 * v6];
            *(v16 + 4) = v14;
            *(v16 + 5) = v13;

            *(a1 + 120) = v2;
            if (v9 >= *(v2 + 2))
            {
              goto LABEL_27;
            }

            *&v2[v5 + 48] = v17;

            *(a1 + 120) = v2;
          }

          ++v6;
        }

        ++v9;
        v4 = (v2 + 16);
        v10 = *(v2 + 2);
        v5 += 16;
      }

      if (v9 >= v6)
      {
        goto LABEL_22;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v6 = *v4;
    v9 = *v4;
LABEL_22:
    sub_189014C94(v6, v9);
    return swift_endAccess();
  }

  return result;
}

void sub_18920EE70(unsigned __int8 a1, char a2, double a3)
{
  v4 = v3;
  if (v3[44] >= 1)
  {
    signpost_c2_tick_allocatedModifiers_start();
    v7 = [objc_opt_self() groupWithCapacity_];
    [v7 setUpdatesAsynchronously_];
    swift_beginAccess();
    swift_unknownObjectWeakInit();
    v29[8] = 0;
    sub_188AA7E64(v29, v7);
    swift_endAccess();
    swift_beginAccess();
    v8 = v3[17];
    v9 = *(v8 + 16);
    if (v9)
    {

      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);
        v34[0] = v7;

        v11(v34);

        v10 += 16;
        --v9;
      }

      while (v9);
    }

    v3[44] = 0;
    v3[17] = MEMORY[0x1E69E7CC0];

    signpost_c2_tick_allocatedModifiers_end();
  }

  if (a2)
  {
    swift_beginAccess();
    if (*(v3[45] + 16))
    {
      signpost_c2_tick_flush_start();
      v12 = v3[45];
      v13 = v4[45];
      v16 = *(v13 + 64);
      v15 = v13 + 64;
      v14 = v16;
      v17 = -1 << *(v12 + 32);
      if (-v17 < 64)
      {
        v18 = ~(-1 << -v17);
      }

      else
      {
        v18 = -1;
      }

      v19 = v18 & v14;
      v20 = (63 - v17) >> 6;

      v21 = 0;
      while (v19)
      {
        v22 = v21;
LABEL_24:
        v25 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        sub_189215258(*(v12 + 56) + ((v22 << 9) | (8 * v25)), &v32);
        v26 = 0;
LABEL_25:
        v33 = v26;
        sub_188A3F704(&v32, v31, &qword_1EA937048);
        if (v31[8])
        {
          sub_188E036A4();
          signpost_c2_tick_flush_end();
          return;
        }

        sub_188A3F704(v31, v30, &unk_1EA935760);
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_188A3F5FC(v30, &unk_1EA935760);
        if (Strong)
        {
          [Strong setUpdatesAsynchronously_];
          if (a1)
          {
            [Strong flushWithTransactionAndTargetTime_];
          }

          else
          {
            [Strong flush];
          }
        }
      }

      if (v20 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v20;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          v19 = 0;
          v32 = 0;
          v26 = 1;
          v21 = v24;
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v22);
        ++v21;
        if (v19)
        {
          v21 = v22;
          goto LABEL_24;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_18920F1D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakReferenceTable.WeakReference();
  v3 = sub_18A4A7128();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18CFE23E0](&v6, v3, WitnessTable);
  *(swift_allocObject() + 16) = a2;
  sub_18A4A8138();
  swift_getWitnessTable();
  sub_18A4A8508();

  sub_18A4A7D38();
  sub_18A4A82B8();
  swift_getWitnessTable();
  sub_18A4A8418();
  swift_getWitnessTable();
  sub_18A4A82B8();
  return sub_18A4A8298();
}

uint64_t sub_18920F3B4(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v22 = 0;
  signpost_c2_tick_exit_start();
  result = swift_beginAccess();
  v8 = v2[16];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v12 = __OFADD__(v10, v9);
      v10 += v9;
      if (v12)
      {
        break;
      }

      v2[16] = v11;
      v13 = v8 + 40;
      do
      {
        v14 = *(v13 - 8);

        v14(v15);

        v13 += 16;
        --v9;
      }

      while (v9);

      v8 = v2[16];
      v9 = *(v8 + 16);
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v16 = v2[35];
    v17 = swift_allocObject();
    *(v17 + 16) = &v22;
    *(v17 + 24) = a1;
    *(v17 + 32) = v3;
    *(v17 + 40) = a2;
    *(v17 + 48) = v6;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1892152C8;
    *(v18 + 24) = v17;
    v21[4] = sub_188E3FE50;
    v21[5] = v18;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_188A4A968;
    v21[3] = &block_descriptor_88_1;
    v19 = _Block_copy(v21);

    dispatch_sync(v16, v19);
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      signpost_c2_tick_exit_end();
    }
  }

  __break(1u);
  return result;
}

void sub_18920F600(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_18A4A6E18();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v243 = &v239 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_18A4A6E58();
  v242 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v241 = &v239 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_222;
  }

  v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  *a1 = v13;
  v14 = MEMORY[0x1E69E7CC0];
  v246 = v8;
  v245 = v9;
  if (!v13)
  {
    goto LABEL_15;
  }

  aBlock = MEMORY[0x1E69E7CC0];
  sub_188AAEE7C(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v240 = v12;
  *&v247 = a1;
  v9 = 0;
  v14 = aBlock;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E4B2E4(v9, a2);
      swift_unknownObjectRelease();
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        v13 = sub_18A4A7F68();
        goto LABEL_3;
      }

      if (v9 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_218;
      }

      v8 = *(a2 + 8 * v9 + 32);
    }

    aBlock = v14;
    v12 = *(v14 + 16);
    v15 = *(v14 + 24);
    a1 = v12 + 1;
    if (v12 >= v15 >> 1)
    {
      sub_188AAEE7C((v15 > 1), v12 + 1, 1);
      v14 = aBlock;
    }

    ++v9;
    *(v14 + 16) = a1;
    *(v14 + 8 * v12 + 32) = v8;
  }

  while (v13 != v9);
  a1 = v247;
  v12 = v240;
LABEL_15:
  v9 = sub_188A33FB0(v14);

  swift_beginAccess();

  v16 = 0;
  v8 = sub_1892152DC((a3 + 96), v9);

  v17 = *(a3 + 96);
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v8)
    {
      goto LABEL_17;
    }

LABEL_224:
    __break(1u);
LABEL_225:
    if (!sub_18A4A7F68())
    {
      goto LABEL_206;
    }

LABEL_208:
    if (*(a3 + 392) == 1 && *(a3 + 393) == 1 && a4 <= 0.0)
    {
      return;
    }

    v16 = swift_allocObject();
    sub_188AA8CD8();
    *(v16 + 16) = v208;
    *(v16 + 20) = v209;
    *(v16 + 24) = v210;
    v211 = *(a3 + 288);
    v212 = swift_allocObject();
    *(v212 + 16) = a3;
    *(v212 + 24) = a4;
    *(v212 + 32) = v16 + 16;
    v213 = swift_allocObject();
    *(v213 + 16) = sub_1892155B8;
    *(v213 + 24) = v212;
    v253 = sub_188E3FE50;
    v254 = v213;
    aBlock = MEMORY[0x1E69E9820];
    *&a4 = 1107296256;
    v250 = 1107296256;
    v251 = sub_188A4A968;
    v252 = &block_descriptor_101_1;
    v214 = _Block_copy(&aBlock);

    dispatch_sync(v211, v214);
    _Block_release(v214);
    LOBYTE(v211) = swift_isEscapingClosureAtFileLocation();

    if (v211)
    {
LABEL_228:
      __break(1u);
    }

    else if (qword_1EA932040 == -1)
    {
LABEL_213:
      if ((byte_1EA9951B8 & 1) == 0)
      {
        sub_188A34624(0, &qword_1ED490540);
        v215 = sub_18A4A7A68();
        v216 = swift_allocObject();
        *(v216 + 16) = a3;
        *(v216 + 24) = v16;
        v253 = sub_1892155C8;
        v254 = v216;
        aBlock = MEMORY[0x1E69E9820];
        v250 = *&a4;
        v251 = sub_188A4A8F0;
        v252 = &block_descriptor_107_1;
        v217 = _Block_copy(&aBlock);

        v218 = v241;
        sub_18A4A6E38();
        aBlock = MEMORY[0x1E69E7CC0];
        sub_188A34024(&qword_1ED490560, 255, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
        sub_188A34360(&qword_1ED490550, &unk_1EA935AC0);
        v219 = v243;
        v220 = v246;
        sub_18A4A7EB8();
        MEMORY[0x18CFE29D0](0, v218, v219, v217);
        _Block_release(v217);

        (*(v245 + 8))(v219, v220);
        (*(v242 + 8))(v218, v244);
      }

      return;
    }

    swift_once();
    goto LABEL_213;
  }

  v18 = sub_18A4A7F68();
  if (v18 < v8)
  {
    goto LABEL_224;
  }

LABEL_17:
  sub_188AAE308(v8, v18);
  swift_endAccess();

  if (*a1)
  {
    if (v12)
    {
      a1 = sub_18A4A7F68();
      if (!a1)
      {
        goto LABEL_204;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_204;
      }
    }

    if (a1 >= 1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        v12 = 1;
        *&v247 = a1;
        while (1)
        {
          v20 = sub_188E4B2E4(v19, a2);
          v21 = v20;
          if (*(v20 + 33) == 1)
          {
            v22 = *(a3 + 184);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v23)
            {
              goto LABEL_219;
            }

            *(a3 + 184) = v24;
          }

          v25 = *(v20 + 16);
          v26 = *(v20 + 20);
          if (sub_18A4A79C8())
          {
            swift_unknownObjectRelease();
          }

          else
          {
            swift_beginAccess();
            v27 = *(a3 + 144);
            if (*(v27 + 16))
            {
              v28 = sub_188AB103C(v25);
              if (v29)
              {
                v30 = *(*(v27 + 56) + 8 * v28);
                if (v30 < 2)
                {
                  v39 = sub_188AB103C(v25);
                  a1 = v247;
                  if (v40)
                  {
                    v8 = v39;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v42 = *(a3 + 144);
                    v248 = v42;
                    *(a3 + 144) = 0x8000000000000000;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_188FA253C();
                      v42 = v248;
                    }

                    sub_188C3A584(v8, v42);
                    *(a3 + 144) = v42;
                  }
                }

                else
                {
                  v8 = swift_isUniquelyReferenced_nonNull_native();
                  v248 = *(a3 + 144);
                  v31 = v248;
                  *(a3 + 144) = 0x8000000000000000;
                  v32 = sub_188AB103C(v25);
                  v34 = v31[2];
                  v35 = (v33 & 1) == 0;
                  v23 = __OFADD__(v34, v35);
                  v36 = v34 + v35;
                  if (v23)
                  {
                    goto LABEL_231;
                  }

                  v37 = v33;
                  if (v31[3] >= v36)
                  {
                    if ((v8 & 1) == 0)
                    {
                      v113 = v32;
                      sub_188FA253C();
                      v32 = v113;
                    }
                  }

                  else
                  {
                    sub_188D4A2CC(v36, v8);
                    v32 = sub_188AB103C(v25);
                    if ((v37 & 1) != (v38 & 1))
                    {
                      goto LABEL_284;
                    }
                  }

                  v43 = v30 - 1;
                  v44 = v248;
                  if (v37)
                  {
                    *(v248[7] + 8 * v32) = v43;
                    *(a3 + 144) = v44;
                    a1 = v247;
                  }

                  else
                  {
                    v248[(v32 >> 6) + 8] |= 1 << v32;
                    *(v44[6] + 4 * v32) = v25;
                    *(v44[7] + 8 * v32) = v43;
                    v45 = v44[2];
                    v23 = __OFADD__(v45, 1);
                    v46 = v45 + 1;
                    a1 = v247;
                    if (v23)
                    {
                      goto LABEL_269;
                    }

                    v44[2] = v46;
                    *(a3 + 144) = v44;
                  }
                }
              }
            }

            swift_endAccess();
            swift_beginAccess();
            v47 = *(a3 + 152);
            if (*(v47 + 16))
            {
              v48 = sub_188AB103C(v26);
              if (v49)
              {
                v50 = *(*(v47 + 56) + 8 * v48);
                if (v50 < 2)
                {
                  v59 = sub_188AB103C(v26);
                  a1 = v247;
                  if (v60)
                  {
                    v8 = v59;
                    v61 = swift_isUniquelyReferenced_nonNull_native();
                    v62 = *(a3 + 152);
                    v248 = v62;
                    *(a3 + 152) = 0x8000000000000000;
                    if (!v61)
                    {
                      sub_188FA253C();
                      v62 = v248;
                    }

                    sub_188C3A584(v8, v62);
                    *(a3 + 152) = v62;
                  }
                }

                else
                {
                  v8 = swift_isUniquelyReferenced_nonNull_native();
                  v248 = *(a3 + 152);
                  v51 = v248;
                  *(a3 + 152) = 0x8000000000000000;
                  v52 = sub_188AB103C(v26);
                  v54 = v51[2];
                  v55 = (v53 & 1) == 0;
                  v23 = __OFADD__(v54, v55);
                  v56 = v54 + v55;
                  if (v23)
                  {
                    goto LABEL_232;
                  }

                  v57 = v53;
                  if (v51[3] >= v56)
                  {
                    if ((v8 & 1) == 0)
                    {
                      v114 = v52;
                      sub_188FA253C();
                      v52 = v114;
                    }
                  }

                  else
                  {
                    sub_188D4A2CC(v56, v8);
                    v52 = sub_188AB103C(v26);
                    if ((v57 & 1) != (v58 & 1))
                    {
                      goto LABEL_284;
                    }
                  }

                  v63 = v50 - 1;
                  v64 = v248;
                  if (v57)
                  {
                    *(v248[7] + 8 * v52) = v63;
                    *(a3 + 152) = v64;
                    a1 = v247;
                  }

                  else
                  {
                    v248[(v52 >> 6) + 8] |= 1 << v52;
                    *(v64[6] + 4 * v52) = v26;
                    *(v64[7] + 8 * v52) = v63;
                    v65 = v64[2];
                    v23 = __OFADD__(v65, 1);
                    v66 = v65 + 1;
                    a1 = v247;
                    if (v23)
                    {
                      goto LABEL_270;
                    }

                    v64[2] = v66;
                    *(a3 + 152) = v64;
                  }
                }
              }
            }

            swift_endAccess();
            v67 = sub_18A4A79E8();
            if ((v67 & 0x100000000) == 0)
            {
              v68 = *&v67;
              swift_beginAccess();
              v69 = *(a3 + 160);
              if (*(v69 + 16))
              {
                v70 = sub_188AB103C(v68);
                if (v71)
                {
                  v72 = *(*(v69 + 56) + 8 * v70);
                  if (v72 < 2)
                  {
                    v81 = sub_188AB103C(v68);
                    if (v82)
                    {
                      v8 = v81;
                      v83 = swift_isUniquelyReferenced_nonNull_native();
                      v84 = *(a3 + 160);
                      v248 = v84;
                      if (!v83)
                      {
                        sub_188FA253C();
                        v84 = v248;
                      }

                      sub_188C3A584(v8, v84);
                      *(a3 + 160) = v84;
                    }
                  }

                  else
                  {
                    v73 = swift_isUniquelyReferenced_nonNull_native();
                    v248 = *(a3 + 160);
                    v74 = v248;
                    v75 = sub_188AB103C(v68);
                    v77 = v74[2];
                    v78 = (v76 & 1) == 0;
                    v23 = __OFADD__(v77, v78);
                    v79 = v77 + v78;
                    if (v23)
                    {
                      goto LABEL_268;
                    }

                    v8 = v76;
                    if (v74[3] >= v79)
                    {
                      if ((v73 & 1) == 0)
                      {
                        v115 = v75;
                        sub_188FA253C();
                        v75 = v115;
                      }
                    }

                    else
                    {
                      sub_188D4A2CC(v79, v73);
                      v75 = sub_188AB103C(v68);
                      if ((v8 & 1) != (v80 & 1))
                      {
                        goto LABEL_284;
                      }
                    }

                    a1 = v247;
                    v85 = v72 - 1;
                    v86 = v248;
                    if (v8)
                    {
                      *(v248[7] + 8 * v75) = v85;
                    }

                    else
                    {
                      v248[(v75 >> 6) + 8] |= 1 << v75;
                      *(v86[6] + 4 * v75) = v68;
                      *(v86[7] + 8 * v75) = v85;
                      v87 = v86[2];
                      v23 = __OFADD__(v87, 1);
                      v88 = v87 + 1;
                      if (v23)
                      {
                        goto LABEL_280;
                      }

                      v86[2] = v88;
                    }

                    *(a3 + 160) = v86;
                  }
                }
              }

              swift_endAccess();
            }

            v9 = *(v21 + 28);
            swift_beginAccess();
            v89 = *(a3 + 168);
            if (*(v89 + 16))
            {
              v90 = sub_188AB120C(v9);
              if (v91)
              {
                v92 = *(*(v89 + 56) + 8 * v90);
                if (v92 < 2)
                {
                  v102 = sub_188AB120C(v9);
                  if (v103)
                  {
                    v8 = v102;
                    v104 = swift_isUniquelyReferenced_nonNull_native();
                    v105 = *(a3 + 168);
                    v248 = v105;
                    *(a3 + 168) = 0x8000000000000000;
                    if (!v104)
                    {
                      sub_188FA2688();
                      v105 = v248;
                    }

                    sub_188B99AF4(v8, v105);
                    *(a3 + 168) = v105;
                  }
                }

                else
                {
                  v93 = swift_isUniquelyReferenced_nonNull_native();
                  v248 = *(a3 + 168);
                  v94 = v248;
                  *(a3 + 168) = 0x8000000000000000;
                  v96 = sub_188AB120C(v9);
                  v97 = v94[2];
                  v98 = (v95 & 1) == 0;
                  v99 = v97 + v98;
                  if (__OFADD__(v97, v98))
                  {
                    goto LABEL_233;
                  }

                  v8 = v95;
                  if (v94[3] >= v99)
                  {
                    if ((v93 & 1) == 0)
                    {
                      sub_188FA2688();
                    }
                  }

                  else
                  {
                    sub_188D4A540(v99, v93);
                    v100 = sub_188AB120C(v9);
                    if ((v8 & 1) != (v101 & 1))
                    {
                      goto LABEL_285;
                    }

                    v96 = v100;
                  }

                  v12 = 1;
                  v106 = v92 - 1;
                  v107 = v248;
                  if (v8)
                  {
                    *(v248[7] + 8 * v96) = v106;
                  }

                  else
                  {
                    v248[(v96 >> 6) + 8] |= 1 << v96;
                    *(v107[6] + 4 * v96) = v9;
                    *(v107[7] + 8 * v96) = v106;
                    v108 = v107[2];
                    v23 = __OFADD__(v108, 1);
                    v109 = v108 + 1;
                    if (v23)
                    {
                      goto LABEL_271;
                    }

                    v107[2] = v109;
                  }

                  *(a3 + 168) = v107;
                  a1 = v247;
                }
              }
            }

            swift_endAccess();
            if ((*(v21 + 32) & 1) == 0)
            {
              v110 = sub_18A4A79E8();
              v8 = sub_18A4A79E8();
              swift_unknownObjectRelease();
              if ((v110 & 0x100000000) != 0)
              {
                if ((v8 & 0x100000000) == 0)
                {
                  goto LABEL_110;
                }
              }

              else if ((v8 & 0x100000000) != 0 || *&v110 != *&v8)
              {
LABEL_110:
                v111 = *(a3 + 176);
                v23 = __OFSUB__(v111, 1);
                v112 = v111 - 1;
                if (v23)
                {
                  goto LABEL_221;
                }

                *(a3 + 176) = v112;
              }

              *(a3 + 392) = 0;
              goto LABEL_26;
            }

            swift_unknownObjectRelease();
            *(a3 + 392) = 0;
          }

LABEL_26:
          if (a1 == ++v19)
          {
            goto LABEL_204;
          }
        }
      }

      v12 = a2 + 32;
      while (2)
      {
        a2 = *v12;
        if (*(*v12 + 33) == 1)
        {
          v116 = *(a3 + 184);
          v23 = __OFSUB__(v116, 1);
          v117 = v116 - 1;
          if (v23)
          {
            goto LABEL_220;
          }

          *(a3 + 184) = v117;
        }

        v118 = *(a2 + 16);
        v119 = *(a2 + 20);

        if (sub_18A4A79C8())
        {
        }

        else
        {
          swift_beginAccess();
          v120 = *(a3 + 144);
          if (*(v120 + 16))
          {
            v121 = sub_188AB103C(v118);
            if (v122)
            {
              v16 = *(*(v120 + 56) + 8 * v121);
              if (v16 < 2)
              {
                v131 = sub_188AB103C(v118);
                if (v132)
                {
                  v8 = v131;
                  v133 = swift_isUniquelyReferenced_nonNull_native();
                  v134 = *(a3 + 144);
                  v248 = v134;
                  *(a3 + 144) = 0x8000000000000000;
                  if (!v133)
                  {
                    sub_188FA253C();
                    v134 = v248;
                  }

                  sub_188C3A584(v8, v134);
                  *(a3 + 144) = v134;
                }
              }

              else
              {
                v123 = swift_isUniquelyReferenced_nonNull_native();
                v248 = *(a3 + 144);
                v124 = v248;
                *(a3 + 144) = 0x8000000000000000;
                v125 = sub_188AB103C(v118);
                v127 = v124[2];
                v128 = (v126 & 1) == 0;
                v23 = __OFADD__(v127, v128);
                v129 = v127 + v128;
                if (v23)
                {
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
LABEL_271:
                  __break(1u);
LABEL_272:
                  __break(1u);
LABEL_273:
                  __break(1u);
LABEL_274:
                  __break(1u);
LABEL_275:
                  __break(1u);
LABEL_276:
                  __break(1u);
LABEL_277:
                  __break(1u);
LABEL_278:
                  __break(1u);
LABEL_279:
                  __break(1u);
LABEL_280:
                  __break(1u);
LABEL_281:
                  __break(1u);
LABEL_282:
                  __break(1u);
LABEL_283:
                  __break(1u);
LABEL_284:
                  sub_18A4A87A8();
                  __break(1u);
                  swift_endAccess();
                  __break(1u);
LABEL_285:
                  sub_18A4A87A8();
                  __break(1u);
                  return;
                }

                v8 = v126;
                if (v124[3] >= v129)
                {
                  if ((v123 & 1) == 0)
                  {
                    v202 = v125;
                    sub_188FA253C();
                    v125 = v202;
                  }
                }

                else
                {
                  sub_188D4A2CC(v129, v123);
                  v125 = sub_188AB103C(v118);
                  if ((v8 & 1) != (v130 & 1))
                  {
                    goto LABEL_284;
                  }
                }

                v135 = v16 - 1;
                v136 = v248;
                if (v8)
                {
                  *(v248[7] + 8 * v125) = v135;
                }

                else
                {
                  v248[(v125 >> 6) + 8] |= 1 << v125;
                  *(v136[6] + 4 * v125) = v118;
                  *(v136[7] + 8 * v125) = v135;
                  v137 = v136[2];
                  v23 = __OFADD__(v137, 1);
                  v138 = v137 + 1;
                  if (v23)
                  {
                    goto LABEL_273;
                  }

                  v136[2] = v138;
                }

                *(a3 + 144) = v136;
              }
            }
          }

          swift_endAccess();
          swift_beginAccess();
          v139 = *(a3 + 152);
          if (*(v139 + 16))
          {
            v140 = sub_188AB103C(v119);
            if (v141)
            {
              v16 = *(*(v139 + 56) + 8 * v140);
              if (v16 < 2)
              {
                v150 = sub_188AB103C(v119);
                if (v151)
                {
                  v8 = v150;
                  v152 = swift_isUniquelyReferenced_nonNull_native();
                  v153 = *(a3 + 152);
                  v248 = v153;
                  *(a3 + 152) = 0x8000000000000000;
                  if (!v152)
                  {
                    sub_188FA253C();
                    v153 = v248;
                  }

                  sub_188C3A584(v8, v153);
                  *(a3 + 152) = v153;
                }
              }

              else
              {
                v142 = swift_isUniquelyReferenced_nonNull_native();
                v248 = *(a3 + 152);
                v143 = v248;
                *(a3 + 152) = 0x8000000000000000;
                v144 = sub_188AB103C(v119);
                v146 = v143[2];
                v147 = (v145 & 1) == 0;
                v23 = __OFADD__(v146, v147);
                v148 = v146 + v147;
                if (v23)
                {
                  goto LABEL_266;
                }

                v8 = v145;
                if (v143[3] >= v148)
                {
                  if ((v142 & 1) == 0)
                  {
                    v203 = v144;
                    sub_188FA253C();
                    v144 = v203;
                  }
                }

                else
                {
                  sub_188D4A2CC(v148, v142);
                  v144 = sub_188AB103C(v119);
                  if ((v8 & 1) != (v149 & 1))
                  {
                    goto LABEL_284;
                  }
                }

                v154 = v16 - 1;
                v155 = v248;
                if (v8)
                {
                  *(v248[7] + 8 * v144) = v154;
                }

                else
                {
                  v248[(v144 >> 6) + 8] |= 1 << v144;
                  *(v155[6] + 4 * v144) = v119;
                  *(v155[7] + 8 * v144) = v154;
                  v156 = v155[2];
                  v23 = __OFADD__(v156, 1);
                  v157 = v156 + 1;
                  if (v23)
                  {
                    goto LABEL_274;
                  }

                  v155[2] = v157;
                }

                *(a3 + 152) = v155;
              }
            }
          }

          swift_endAccess();
          v158 = sub_18A4A79E8();
          if ((v158 & 0x100000000) == 0)
          {
            v159 = *&v158;
            swift_beginAccess();
            v160 = *(a3 + 160);
            if (*(v160 + 16))
            {
              v161 = sub_188AB103C(v159);
              if (v162)
              {
                v16 = *(*(v160 + 56) + 8 * v161);
                if (v16 < 2)
                {
                  v171 = sub_188AB103C(v159);
                  if (v172)
                  {
                    v8 = v171;
                    v173 = swift_isUniquelyReferenced_nonNull_native();
                    v174 = *(a3 + 160);
                    v248 = v174;
                    *(a3 + 160) = 0x8000000000000000;
                    if (!v173)
                    {
                      sub_188FA253C();
                      v174 = v248;
                    }

                    sub_188C3A584(v8, v174);
                    *(a3 + 160) = v174;
                  }
                }

                else
                {
                  v163 = swift_isUniquelyReferenced_nonNull_native();
                  v248 = *(a3 + 160);
                  v164 = v248;
                  *(a3 + 160) = 0x8000000000000000;
                  v165 = sub_188AB103C(v159);
                  v167 = v164[2];
                  v168 = (v166 & 1) == 0;
                  v23 = __OFADD__(v167, v168);
                  v169 = v167 + v168;
                  if (v23)
                  {
                    goto LABEL_272;
                  }

                  v8 = v166;
                  if (v164[3] >= v169)
                  {
                    if ((v163 & 1) == 0)
                    {
                      v205 = v165;
                      sub_188FA253C();
                      v165 = v205;
                    }
                  }

                  else
                  {
                    sub_188D4A2CC(v169, v163);
                    v165 = sub_188AB103C(v159);
                    if ((v8 & 1) != (v170 & 1))
                    {
                      goto LABEL_284;
                    }
                  }

                  v175 = v16 - 1;
                  v176 = v248;
                  if (v8)
                  {
                    *(v248[7] + 8 * v165) = v175;
                  }

                  else
                  {
                    v248[(v165 >> 6) + 8] |= 1 << v165;
                    *(v176[6] + 4 * v165) = v159;
                    *(v176[7] + 8 * v165) = v175;
                    v177 = v176[2];
                    v23 = __OFADD__(v177, 1);
                    v178 = v177 + 1;
                    if (v23)
                    {
                      goto LABEL_281;
                    }

                    v176[2] = v178;
                  }

                  *(a3 + 160) = v176;
                }
              }
            }

            swift_endAccess();
          }

          v9 = *(a2 + 28);
          swift_beginAccess();
          v179 = *(a3 + 168);
          if (*(v179 + 16))
          {
            v180 = sub_188AB120C(v9);
            if (v181)
            {
              v16 = *(*(v179 + 56) + 8 * v180);
              if (v16 < 2)
              {
                v191 = sub_188AB120C(v9);
                if (v192)
                {
                  v8 = v191;
                  v193 = swift_isUniquelyReferenced_nonNull_native();
                  v194 = *(a3 + 168);
                  v248 = v194;
                  *(a3 + 168) = 0x8000000000000000;
                  if (!v193)
                  {
                    sub_188FA2688();
                    v194 = v248;
                  }

                  sub_188B99AF4(v8, v194);
                  *(a3 + 168) = v194;
                }
              }

              else
              {
                v182 = a1;
                v183 = swift_isUniquelyReferenced_nonNull_native();
                v248 = *(a3 + 168);
                v184 = v248;
                *(a3 + 168) = 0x8000000000000000;
                v185 = sub_188AB120C(v9);
                v187 = v184[2];
                v188 = (v186 & 1) == 0;
                v23 = __OFADD__(v187, v188);
                v189 = v187 + v188;
                if (v23)
                {
                  goto LABEL_267;
                }

                v8 = v186;
                if (v184[3] >= v189)
                {
                  if ((v183 & 1) == 0)
                  {
                    v204 = v185;
                    sub_188FA2688();
                    v185 = v204;
                  }
                }

                else
                {
                  sub_188D4A540(v189, v183);
                  v185 = sub_188AB120C(v9);
                  if ((v8 & 1) != (v190 & 1))
                  {
                    goto LABEL_285;
                  }
                }

                a1 = v182;
                v195 = v16 - 1;
                v196 = v248;
                if (v8)
                {
                  *(v248[7] + 8 * v185) = v195;
                }

                else
                {
                  v248[(v185 >> 6) + 8] |= 1 << v185;
                  *(v196[6] + 4 * v185) = v9;
                  *(v196[7] + 8 * v185) = v195;
                  v197 = v196[2];
                  v23 = __OFADD__(v197, 1);
                  v198 = v197 + 1;
                  if (v23)
                  {
                    goto LABEL_275;
                  }

                  v196[2] = v198;
                }

                *(a3 + 168) = v196;
              }
            }
          }

          swift_endAccess();
          if (*(a2 + 32))
          {

            goto LABEL_203;
          }

          v199 = sub_18A4A79E8();
          v8 = sub_18A4A79E8();

          if ((v199 & 0x100000000) != 0)
          {
            if ((v8 & 0x100000000) == 0)
            {
              goto LABEL_201;
            }
          }

          else if ((v8 & 0x100000000) != 0 || *&v199 != *&v8)
          {
LABEL_201:
            v200 = *(a3 + 176);
            v23 = __OFSUB__(v200, 1);
            v201 = v200 - 1;
            if (v23)
            {
              __break(1u);
              goto LABEL_228;
            }

            *(a3 + 176) = v201;
          }

LABEL_203:
          *(a3 + 392) = 0;
        }

        v12 += 8;
        if (!--a1)
        {
          goto LABEL_204;
        }

        continue;
      }
    }

    goto LABEL_234;
  }

LABEL_204:
  v206 = *(a3 + 96);
  if (v206 >> 62)
  {
    goto LABEL_225;
  }

  if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_208;
  }

LABEL_206:
  swift_beginAccess();
  v207 = *(a3 + 104);
  if (!(v207 >> 62))
  {
    if (*((v207 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_208;
    }

    goto LABEL_236;
  }

LABEL_235:
  if (sub_18A4A7F68())
  {
    goto LABEL_208;
  }

LABEL_236:
  swift_beginAccess();
  v221 = *(a3 + 120);
  v223 = (v221 + 16);
  v222 = *(v221 + 2);
  if (v222)
  {
    v224 = 0;
    v225 = 0;
    while (1)
    {
      v226 = *&v221[v224 + 32];

      LOBYTE(v226) = v226(1);

      if (v226)
      {
        break;
      }

      ++v225;
      v224 += 16;
      if (v222 == v225)
      {
        goto LABEL_240;
      }
    }

    v227 = v225 + 1;
    if (__OFADD__(v225, 1))
    {
      goto LABEL_283;
    }

    v228 = *v223;
    while (v227 != v228)
    {
      if (v227 >= v228)
      {
        __break(1u);
        goto LABEL_265;
      }

      v229 = &v221[v224];
      v230 = *&v221[v224 + 48];

      LOBYTE(v230) = v230(1);

      if ((v230 & 1) == 0)
      {
        if (v227 != v225)
        {
          if (v225 < 0)
          {
            goto LABEL_276;
          }

          if (v225 >= *v223)
          {
            goto LABEL_277;
          }

          if (v227 >= *v223)
          {
            goto LABEL_278;
          }

          v232 = *(v229 + 6);
          v231 = *(v229 + 7);
          v247 = *&v221[16 * v225 + 32];

          v233 = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + 120) = v221;
          if ((v233 & 1) == 0)
          {
            v221 = sub_189212C28(v221);
            *(a3 + 120) = v221;
          }

          v234 = &v221[16 * v225];
          *(v234 + 4) = v232;
          *(v234 + 5) = v231;

          *(a3 + 120) = v221;
          if (v227 >= *(v221 + 2))
          {
            goto LABEL_279;
          }

          *&v221[v224 + 48] = v247;

          *(a3 + 120) = v221;
        }

        ++v225;
      }

      ++v227;
      v223 = (v221 + 16);
      v228 = *(v221 + 2);
      v224 += 16;
    }

    if (v227 < v225)
    {
      goto LABEL_282;
    }
  }

  else
  {
LABEL_240:
    v225 = *v223;
    v227 = *v223;
  }

  sub_189014C94(v225, v227);
  swift_endAccess();
  swift_beginAccess();
  *(a3 + 360) = MEMORY[0x1E69E7CC8];

  if ((*(a3 + 314) & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v235 = *(a3 + 232);
    ObjectType = swift_getObjectType();
    (*(v235 + 16))(ObjectType, v235);
    swift_unknownObjectRelease();
  }

  *(a3 + 232) = 0;
  swift_unknownObjectWeakAssign();
  *(a3 + 314) = 0;
  v237 = *(a3 + 16);
  os_unfair_lock_lock((v237 + 20));
  v238 = *(v237 + 16);
  if (v238 != 2)
  {
    *(v237 + 18) = v238 & 1;
    *(v237 + 19) = HIBYTE(v238) & 1;
    *(v237 + 16) = 2;
  }

  os_unfair_lock_unlock((v237 + 20));
}

void sub_189210E74(uint64_t a1, _DWORD *a2, double a3)
{
  v4 = *(a1 + 320);
  if (v4)
  {
    v28 = v4;
    if (a3 <= 0.0)
    {
      v19 = v4;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v8 = v28;
      if (Strong)
      {
        v12 = [Strong displayConfiguration];

        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = [v12 CADisplay];

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v16 = v14;
            [v14 scale];
            v18 = v17;

            *&v15 = v18;
          }

          else
          {
            LODWORD(v15) = 1.0;
          }

          v21 = a3;
          *&v15 = *&v15 * v21;
          [v13 preferredFrameRateRangeForMaximumVelocity_];
          if ((sub_18A4A79E8() & 0x100000000) != 0)
          {
          }

          else
          {
            sub_18A4A79E8();
            sub_18A4A79D8();
            v23 = v22;
            v25 = v24;
            v27 = v26;

            *a2 = v23;
            a2[1] = v25;
            a2[2] = v27;
          }
        }
      }
    }

    LODWORD(v9) = *a2;
    LODWORD(v10) = a2[1];
    LODWORD(v11) = a2[2];
    [v28 setPreferredFrameRateRange_];
    if ((*(a1 + 393) & 1) == 0)
    {
      v20 = sub_188AAE320();

      sub_188AAA27C(v29, v20);
    }
  }
}

uint64_t sub_189211064(uint64_t a1, float *a2)
{
  swift_beginAccess();
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  swift_beginAccess();
  _C2UpdateRequestSetRateRange((a1 + 192), v4, v5, v6);
  swift_endAccess();
  swift_beginAccess();
  _UIUpdateRequestChanged((a1 + 192));
  return swift_endAccess();
}

uint64_t sub_189211110()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v22 = v0;
  v23 = result;
  if (!v4)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v8 = v7;
LABEL_15:
      v11 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v12 = (v8 << 9) | (8 * v11);
      v13 = *(*(v23 + 48) + v12);
      sub_189215258(*(v23 + 56) + v12, v25);
      v26 = v13;
      sub_188A3F704(v25, &v27, &unk_1EA935760);
LABEL_16:
      sub_188A3F704(&v26, &v28, &qword_1EA940808);
      v14 = v28;
      if (!v28)
      {
      }

      sub_188A3F704(&v29, v25, &unk_1EA935760);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      result = sub_188A3F5FC(v25, &unk_1EA935760);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v16 = sub_188A403F4(v14);
    v18 = v17;
    if (v17)
    {
      v19 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v22;
      v24 = *v22;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_188FA8C1C();
        v21 = v24;
      }

      sub_188A3F704(*(v21 + 56) + 8 * v19, &v26, &unk_1EA935760);
      sub_188FA036C(v19, v21);
      sub_188A3F5FC(v25, &unk_1EA935760);
      *v22 = v21;
    }

    else
    {
      sub_188A3F5FC(v25, &unk_1EA935760);
      v26 = 0;
    }

    LOBYTE(v27) = (v18 & 1) == 0;
    result = sub_188A3F5FC(&v26, &qword_1EA937048);
  }

  while (v4);
LABEL_7:
  if (v5 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v4 = 0;
      v26 = 0;
      v27 = 0;
      v7 = v10;
      goto LABEL_16;
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18921138C()
{
  result = swift_beginAccess();
  v2 = *(v0 + 408);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      *(v0 + 408) = v4;
      v5 = v2 + 40;
      do
      {
        v6 = *(v5 - 8);

        v6(v7);

        v5 += 16;
        --v3;
      }

      while (v3);

      v2 = *(v0 + 408);
      v3 = *(v2 + 16);
    }

    while (v3);
  }

  return result;
}

unint64_t sub_189211438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v23 = v9;
  v10 = *(a2 + 24);
  v11 = sub_188FD2858(a1, v6, v10);
  if (__OFADD__(*(v9 + 16), (v12 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  sub_18A4A8328();
  result = sub_18A4A82F8();
  v16 = v23;
  if ((result & 1) == 0)
  {
LABEL_5:
    *v3 = v16;
    if ((v14 & 1) == 0)
    {
      v23 = 0;
      (*(v22 + 16))(v8, a1, v6);
      result = sub_18A4A8308();
    }

    v18 = *(v16 + 56);
    v19 = *(v18 + 8 * v13);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v18 + 8 * v13) = v21;
      return result;
    }

    goto LABEL_10;
  }

  result = sub_188FD2858(a1, v6, v10);
  if ((v14 & 1) == (v17 & 1))
  {
    v13 = result;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

id sub_18921163C(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  type metadata accessor for InProcessAnimationManager();
  if (!v1 || (v4 = [v1 window]) == 0 || (v5 = v4, v6 = objc_msgSend(v4, sel_screen), v5, !v6))
  {
    objc_opt_self();
    v6 = +[UIScreen _mainScreen];
  }

  v7 = sub_18920BE24(v6, v3 & 1);

  return v7;
}

uint64_t sub_189211704()
{
  inProcessAnimationManagerSetFixedPriority(53);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = [objc_opt_self() currentRunLoop];
    swift_unknownObjectWeakAssign();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = dispatch_semaphore_create(0);
    v4 = *(v2 + 56);
    *(v2 + 56) = v3;
  }

  sub_18A4A7B98();
  v5 = objc_opt_self();
  swift_beginAccess();
  v6 = [v5 currentRunLoop];
  for (i = v6; ; i = v6)
  {
    [v6 run];

    result = swift_weakLoadStrong();
    if (!result)
    {
      break;
    }

    v9 = *(result + 56);
    v10 = v9;

    if (!v9)
    {
      break;
    }

    sub_188AAC82C(v10);
    v6 = [v5 currentRunLoop];
  }

  return result;
}

void sub_189211888(uint64_t a1, float *a2, uint64_t *a3)
{
  *(a1 + 343) = 0;
  if (*(a1 + 320))
  {
    return;
  }

  v36[6] = v8;
  v36[7] = v7;
  v36[8] = v6;
  v36[9] = v5;
  v36[18] = v3;
  v36[19] = v4;
  if (qword_1EA932038 != -1)
  {
    swift_once();
  }

  if (byte_1EA9406D1 != 1)
  {
    if (qword_1ED48F540 != -1)
    {
      swift_once();
    }

    if (byte_1EA931238)
    {
      Strong = [objc_opt_self() _carScreen];
      if (Strong)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Strong = 0;
    }

LABEL_14:
    v14 = objc_opt_self();

    v13 = [v14 displayLinkWithTarget:a1 selector:sel_displayLinkFire_];

    goto LABEL_15;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

LABEL_11:
  v13 = [Strong displayLinkWithTarget:a1 selector:sel_displayLinkFire_];
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_15:

  v15 = *(a1 + 320);
  *(a1 + 320) = v13;
  v16 = v13;

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    v36[4] = sub_189215710;
    v36[5] = v21;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_188A4A8F0;
    v36[3] = &block_descriptor_237_3;
    v22 = _Block_copy(v36);
    v23 = v17;
    v24 = v16;
    v25 = v23;

    [v25 performBlock_];
    _Block_release(v22);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    v27 = v26;
    sub_18A4A7B98();
  }

  *&v18 = *a2;
  *&v19 = a2[1];
  *&v20 = a2[2];
  [v16 setPreferredFrameRateRange_];
  v28 = *a3;

  sub_188AAA27C(v16, v28);

  if (qword_1EA932040 != -1)
  {
    swift_once();
  }

  if ((byte_1EA9951B8 & 1) == 0)
  {
    v29 = *a2;
    v30 = a2[1];
    v31 = a2[2];
    swift_beginAccess();
    _C2UpdateRequestSetRateRange((a1 + 192), v29, v30, v31);
    swift_endAccess();
    swift_beginAccess();
    _UIUpdateRequestActivate((a1 + 192), 0x100036u);
    swift_endAccess();
  }

  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v32 = sub_18A4A4378();
  __swift_project_value_buffer(v32, qword_1ED48F7C8);
  v33 = sub_18A4A4358();
  v34 = sub_18A4A7968();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_188A29000, v33, v34, "Created CADisplayLink for persistent background thread", v35, 2u);
    MEMORY[0x18CFEA5B0](v35, -1, -1);
  }
}

void sub_189211CB4(uint64_t a1, float *a2, uint64_t *a3)
{
  *(a1 + 343) = 0;
  if (*(a1 + 320))
  {
    return;
  }

  if (qword_1EA932038 != -1)
  {
    swift_once();
  }

  if (byte_1EA9406D1 != 1)
  {
    if (qword_1ED48F540 != -1)
    {
      swift_once();
    }

    if (byte_1EA931238)
    {
      Strong = [objc_opt_self() _carScreen];
      if (Strong)
      {
        goto LABEL_11;
      }
    }

    else
    {
      Strong = 0;
    }

LABEL_14:
    v8 = objc_opt_self();

    v7 = [v8 displayLinkWithTarget:a1 selector:sel_displayLinkFire_];

    goto LABEL_15;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

LABEL_11:
  v7 = [Strong displayLinkWithTarget:a1 selector:sel_displayLinkFire_];
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:

  v9 = *(a1 + 320);
  *(a1 + 320) = v7;
  v10 = v7;

  v11 = objc_opt_self();
  v12 = [v11 mainRunLoop];
  [v10 addToRunLoop:v12 forMode:*MEMORY[0x1E695DA28]];

  v13 = [v11 mainRunLoop];
  [v10 addToRunLoop:v13 forMode:@"UITrackingRunLoopMode"];

  *&v14 = *a2;
  *&v15 = a2[1];
  *&v16 = a2[2];
  [v10 setPreferredFrameRateRange_];
  v17 = *a3;

  sub_188AAA27C(v10, v17);

  if (qword_1EA932040 != -1)
  {
    swift_once();
  }

  if ((byte_1EA9951B8 & 1) == 0)
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[2];
    swift_beginAccess();
    _C2UpdateRequestSetRateRange((a1 + 192), v18, v19, v20);
    swift_endAccess();
    swift_beginAccess();
    _UIUpdateRequestActivate((a1 + 192), 0x100036u);
    swift_endAccess();
  }

  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v21 = sub_18A4A4378();
  __swift_project_value_buffer(v21, qword_1ED48F7C8);
  v22 = sub_18A4A4358();
  v23 = sub_18A4A7968();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_188A29000, v22, v23, "Created CADisplayLink for main thread", v24, 2u);
    MEMORY[0x18CFEA5B0](v24, -1, -1);
  }
}

uint64_t sub_18921207C()
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*v0);
  return sub_18A4A88E8();
}

uint64_t sub_1892120C0()
{
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](*v0);
  return sub_18A4A88E8();
}

uint64_t sub_189212100(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_189212130()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = _UIMainBundleIdentifier();
    if (result)
    {
      v1 = result;
      sub_18A4A7288();

      LOBYTE(v1) = sub_18A4A73E8();

      v2 = v1 ^ 1;
    }

    else
    {
      v2 = 1;
    }
  }

  else
  {
    v2 = 0;
  }

  byte_1EA9406D1 = v2 & 1;
  return result;
}

void sub_1892121D0()
{
  if (qword_1EA932038 != -1)
  {
    swift_once();
  }

  if (byte_1EA9406D1 != 1)
  {
    v2 = 0;
    goto LABEL_7;
  }

  v0 = _UIKitUserDefaults();
  if (v0)
  {
    v1 = v0;
    v2 = sub_188AF8408(0xD000000000000029, 0x800000018A6B34F0, 1u);

LABEL_7:
    byte_1EA9951B8 = v2 & 1;
    return;
  }

  __break(1u);
}

id sub_189212280(void *a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for InProcessAnimationManager();
  swift_allocObject();
  v9 = sub_18920C6DC(a1, a2 & 1);
  if ((byte_1ED48EFD8 & 1) == 0)
  {
    v10 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9407F8);
    [v10 addObserver:sub_18A4A8778() selector:sel_handleScreenDisconnected_ name:@"UIScreenDidDisconnectNotification" object:0];

    swift_unknownObjectRelease();
    byte_1ED48EFD8 = 1;
  }

  if (qword_1ED48EFD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = qword_1EA9951B0;
  qword_1EA9951B0 = 0x8000000000000000;
  sub_188E9EA6C(v9, a4, a5 & 1, isUniquelyReferenced_nonNull_native);
  qword_1EA9951B0 = v13;
  swift_endAccess();
  return v9;
}

uint64_t getEnumTagSinglePayload for InProcessAnimationManager.AnimationTickResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for InProcessAnimationManager.AnimationTickResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1892125B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1892125F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_189212644()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_189212698()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for InProcessAnimationManager.ConfigurationState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InProcessAnimationManager.ConfigurationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_189212804()
{
  result = qword_1EA9407E8;
  if (!qword_1EA9407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9407E8);
  }

  return result;
}

uint64_t sub_189212858(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v5 = sub_18A4A75C8();
  v6 = sub_188FD2A3C(v5, a1, v4, a2);

  return v6;
}

uint64_t sub_1892128D4@<X0>(void *a1@<X8>)
{
  sub_1890FABE8(*v1, a1);
}

uint64_t sub_189212914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_189214DFC(a1, *(a2 + 16));

  *a3 = v4;
  return result;
}

uint64_t sub_18921295C(uint64_t a1)
{
  sub_18920F1D0(*v1, *(a1 + 16));
}

unint64_t sub_1892129A0()
{
  result = qword_1EA9407F0;
  if (!qword_1EA9407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9407F0);
  }

  return result;
}

unint64_t sub_189212A3C()
{
  result = qword_1EA92F2F8;
  if (!qword_1EA92F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F2F8);
  }

  return result;
}

uint64_t sub_189212C3C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA9408C0, &qword_1EA9408B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9408B8);
            v9 = sub_188E4CFEC(v13, i, a3);
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
        type metadata accessor for _UITabButton();
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

uint64_t sub_189212DE0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA9408B0, qword_1EA93E338);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA93E338);
            v9 = sub_188E4D130(v13, i, a3);
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
        type metadata accessor for CGColor(0);
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

uint64_t sub_189212F84(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940850, &qword_1EA940848);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940848);
            v9 = sub_188E4D28C(v13, i, a3);
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
        sub_188A34624(0, &qword_1ED48FC30);
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

uint64_t sub_189213138(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940888, &qword_1EA940880);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940880);
            v9 = sub_188BB4740(v13, i, a3);
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
        sub_188A34624(0, &qword_1ED48F680);
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

uint64_t sub_1892132EC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA9408E0, &qword_1EA9408D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9408D8);
            v9 = sub_188E4D3B4(v13, i, a3);
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
        sub_188A34624(0, &unk_1EA931120);
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

uint64_t sub_1892134A0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA9408A8, &qword_1EA9408A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9408A0);
            v9 = sub_188E4D448(v13, i, a3);
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
        sub_188A34624(0, &qword_1EA9342A8);
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

uint64_t sub_189213654(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940898, &qword_1EA940890);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940890);
            v9 = sub_188E4D588(v13, i, a3);
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
        sub_188A34624(0, &qword_1ED48CFF0);
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

uint64_t sub_189213808(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA939998, &qword_1EA939990);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939990);
            v9 = sub_188E4D320(v13, i, a3);
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
        sub_188A34624(0, &qword_1ED48D5A0);
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

uint64_t sub_1892139BC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA9408D0, &qword_1EA9408C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9408C8);
            v9 = sub_188E4D61C(v13, i, a3);
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
        sub_188A34624(0, &unk_1EA92FD90);
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

uint64_t sub_189213B70(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940870, &qword_1EA940868);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940868);
            v9 = sub_188E4D1DC(v13, i, a3);
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
        _s11GroupLayoutCMa();
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

uint64_t sub_189213D14(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940878, &qword_1EA93BD20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93BD20);
            v9 = sub_188E4D6B0(v13, i, a3);
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
        _s4ItemCMa();
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

uint64_t sub_189213EB8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_188A34360(&qword_1EA940860, &qword_1EA940858);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940858);
            v9 = sub_188E4D750(v13, i, a3);
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
        sub_188A34624(0, &qword_1EA930340);
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

uint64_t sub_18921406C()
{
LABEL_3:
  if (qword_1ED48EFE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  v1 = off_1ED48EFF0;
  v2 = *(off_1ED48EFF0 + 2);
  if (!v2)
  {
    return result;
  }

  v67 = MEMORY[0x1E69E7CD0];

  v3 = v1 + 56;
  do
  {
    v4 = *(v3 - 3);
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);

    v8 = v6(v7);

    sub_188AA6CD0(&aBlock, v8);

    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    swift_beginAccess();
    v10 = *(v8 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 88) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_188AA77C0(0, v10[2] + 1, 1, v10);
      *(v8 + 88) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_188AA77C0((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_188AA727C;
    v14[5] = v9;
    *(v8 + 88) = v10;
    swift_endAccess();

    v3 += 32;
    --v2;
  }

  while (v2);

  off_1ED48EFF0 = MEMORY[0x1E69E7CC0];

  result = signpost_c2_compose();
  v15 = v67;
  if ((v67 & 0xC000000000000001) != 0)
  {
    sub_18A4A7F18();
    type metadata accessor for InProcessAnimationManager();
    sub_188A34024(&qword_1EA940820, v16, type metadata accessor for InProcessAnimationManager);
    result = sub_18A4A77D8();
    v15 = v68;
    v17 = v69;
    v18 = v70;
    v19 = v71;
    v20 = v72;
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(v67 + 32);
    v17 = v67 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(v67 + 56);
  }

  v24 = (v18 + 64) >> 6;
  v58 = v24;
  v59 = v17;
  while (v15 < 0)
  {
    if (!sub_18A4A7FB8() || (type metadata accessor for InProcessAnimationManager(), swift_dynamicCast(), v28 = aBlock, v27 = v19, v60 = v20, !aBlock))
    {
LABEL_2:
      sub_188E036A4();
      goto LABEL_3;
    }

LABEL_29:
    *(v28 + 312) = 1;
    v29 = 0.0;
    if (*(v28 + 24))
    {
      v30 = 0.0;
      goto LABEL_47;
    }

    v31 = *(v28 + 240);
    v32 = *(v28 + 256);
    if (v32 != 0.0)
    {
      v30 = v31 + v32 * 0.25;
LABEL_39:
      v38 = *(v28 + 240);
      if (v32 == 0.0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          objc_opt_self();
          Strong = +[UIScreen _mainScreen];
        }

        objc_opt_self();
        v40 = +[UIScreen _mainScreen];
        v41 = [v40 maximumFramesPerSecond];

        if (v41 < 1)
        {

          v43 = 60.06;
        }

        else
        {
          v42 = [Strong maximumFramesPerSecond];

          v43 = v42 * 1.001;
        }

        v32 = 1.0 / v43;
        *(v28 + 256) = v32;
      }

      v29 = v38 + v32;
      goto LABEL_47;
    }

    v33 = swift_unknownObjectWeakLoadStrong();
    if (!v33)
    {
      objc_opt_self();
      v33 = +[UIScreen _mainScreen];
    }

    objc_opt_self();
    v34 = +[UIScreen _mainScreen];
    v35 = [v34 maximumFramesPerSecond];

    if (v35 < 1)
    {

      v37 = 60.06;
    }

    else
    {
      v36 = [v33 maximumFramesPerSecond];

      v37 = v36 * 1.001;
    }

    v32 = 1.0 / v37;
    *(v28 + 256) = v32;
    v30 = v31 + v32 * 0.25;
    if ((*(v28 + 24) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    v44 = v15;
    signpost_c2_tick_enter_start();
    v45 = *(v28 + 264);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_189215CF0;
    *(v46 + 24) = v28;
    v65 = sub_188E3FE50;
    v66 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_188A4A968;
    v64 = &block_descriptor_150_3;
    v47 = _Block_copy(&aBlock);

    dispatch_sync(v45, v47);
    _Block_release(v47);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      goto LABEL_56;
    }

    v48 = *(v28 + 272);
    v49 = swift_allocObject();
    *(v49 + 16) = v28;
    *(v49 + 24) = 1;
    *(v49 + 32) = sub_188AA91BC;
    *(v49 + 40) = v28;
    *(v49 + 48) = v30;
    *(v49 + 56) = 0;
    *(v49 + 64) = v29;
    *(v49 + 72) = sub_188ABC958;
    *(v49 + 80) = v28;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_189215CF4;
    *(v50 + 24) = v49;
    v65 = sub_188E3FE50;
    v66 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v62 = 1107296256;
    v63 = sub_188A4A968;
    v64 = &block_descriptor_161_2;
    v51 = _Block_copy(&aBlock);

    dispatch_sync(v48, v51);
    _Block_release(v51);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      goto LABEL_57;
    }

    swift_beginAccess();
    v52 = *(v28 + 408);
    v53 = *(v52 + 16);
    for (i = MEMORY[0x1E69E7CC0]; v53; v53 = *(v52 + 16))
    {
      *(v28 + 408) = i;
      v55 = v52 + 40;
      do
      {
        v56 = *(v55 - 8);

        v56(v57);

        v55 += 16;
        --v53;
      }

      while (v53);

      v52 = *(v28 + 408);
    }

    *(v28 + 312) = 0;

    v19 = v27;
    v15 = v44;
    v17 = v59;
    v20 = v60;
    v24 = v58;
  }

  v25 = v19;
  v26 = v20;
  v27 = v19;
  if (v20)
  {
LABEL_25:
    v60 = (v26 - 1) & v26;
    v28 = *(*(v15 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));

    if (!v28)
    {
      goto LABEL_2;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      goto LABEL_2;
    }

    v26 = *(v17 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1892148B0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v5 = sub_18A4A7F68();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = a2 + 56;
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v9 = *(a1 + 32 + 8 * v6);

    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_4:

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_19;
    }
  }

  v9 = sub_188E4B2E4(v6, a1);
  if (!*(a2 + 16))
  {
    goto LABEL_4;
  }

LABEL_9:
  v10 = sub_18A4A8878();
  v11 = -1 << *(a2 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = ~v11;
  while (*(*(a2 + 48) + 8 * v12) != v9)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v7 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return v6;
}

void sub_189214A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_1ED48EFE8;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_1ED48EFF0;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1ED48EFF0 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_188A668E8(0, *(v10 + 2) + 1, 1, v10);
    off_1ED48EFF0 = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_188A668E8((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[32 * v13];
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  *(v14 + 6) = sub_189215694;
  *(v14 + 7) = v8;
  off_1ED48EFF0 = v10;
  swift_endAccess();
  if (qword_1ED48EFF8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = [objc_opt_self() currentPhase];
    v17 = objc_opt_self();
    if (v16 == -1)
    {
      v24 = sub_18921406C;
      v25 = 0;
      v20 = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_188A4A8F0;
      v23 = &block_descriptor_139_1;
      v18 = _Block_copy(&v20);

      v19 = [v17 scheduledPreCommitFuture_];
    }

    else
    {
      v24 = sub_18921406C;
      v25 = 0;
      v20 = MEMORY[0x1E69E9820];
      v21 = 1107296256;
      v22 = sub_188A4A8F0;
      v23 = &block_descriptor_136_1;
      v18 = _Block_copy(&v20);

      v19 = [v17 scheduledPostCommitFuture_];
    }

    Strong = v19;
    _Block_release(v18);
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_189214D38(uint64_t a1, char a2)
{
  if (qword_1ED48EFD0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EA9951B0;
  if (*(qword_1EA9951B0 + 16) && (v5 = sub_188E8B8AC(a1, a2 & 1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_endAccess();
  return v7;
}

uint64_t sub_189214DFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_189212858(v7, v8);
  v18 = v9;
  if (sub_18A4A7608())
  {
    v16 = v5;
    for (i = 0; ; ++i)
    {
      v11 = sub_18A4A75E8();
      sub_18A4A7578();
      if (v11)
      {
        (*(v4 + 16))(v6, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, a2);
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_18A4A8158();
        if (v16 != 8)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        (*(v4 + 16))(v6, &v17, a2);
        swift_unknownObjectRelease();
        v12 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_10:
          __break(1u);
          return v18;
        }
      }

      v13 = type metadata accessor for CountedSet();
      sub_189211438(v6, v13);
      (*(v4 + 8))(v6, a2);
      if (v12 == sub_18A4A7608())
      {
        return v18;
      }
    }
  }

  return v9;
}

void sub_189215004(uint64_t a1)
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  state = notify_get_state(*(a1 + 336), state64);
  if (!state)
  {
    v8 = state64[0] == 0;
    if (*(a1 + 344) == v8)
    {
      return;
    }

    goto LABEL_9;
  }

  v3 = state;
  if (qword_1ED48F7C0 != -1)
  {
    swift_once();
  }

  v4 = sub_18A4A4378();
  __swift_project_value_buffer(v4, qword_1ED48F7C8);
  v5 = sub_18A4A4358();
  v6 = sub_18A4A7978();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_188A29000, v5, v6, "Failed to read backlight level, status=%u", v7, 8u);
    MEMORY[0x18CFEA5B0](v7, -1, -1);
  }

  state64[0] = 1;
  if (*(a1 + 344))
  {
    v8 = 0;
LABEL_9:
    if (qword_1ED48F7C0 != -1)
    {
      swift_once();
    }

    v9 = sub_18A4A4378();
    __swift_project_value_buffer(v9, qword_1ED48F7C8);
    v10 = sub_18A4A4358();
    v11 = sub_18A4A7968();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v8;
      _os_log_impl(&dword_188A29000, v10, v11, "Backlight changed, screenIsOff=%{BOOL}d", v12, 8u);
      MEMORY[0x18CFEA5B0](v12, -1, -1);
    }

    *(a1 + 344) = v8;
    sub_188C3E2B0();
  }
}

uint64_t sub_189215258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1892152DC(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1892148B0(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_18A4A7F68();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v10 = a2 + 56;
  v22 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_18A4A7F68())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v12 = sub_188E4B2E4(v9, v5);
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v5 + 8 * v9 + 32);

    if (!*(a2 + 16))
    {
      goto LABEL_20;
    }

LABEL_16:
    v13 = sub_18A4A8878();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if ((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      while (*(*(a2 + 48) + 8 * v15) != v12)
      {
        v15 = (v15 + 1) & v16;
        if (((*(v10 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_49;
      }
    }

    else
    {
LABEL_20:

      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = sub_188E4B2E4(v8, v5);
          v18 = sub_188E4B2E4(v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v19)
          {
            goto LABEL_53;
          }

          if (v9 >= v19)
          {
            goto LABEL_54;
          }

          v17 = *(v5 + 32 + 8 * v8);
          v18 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_188B8AC98(v5);
          v20 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v20)
        {
          v5 = sub_188B8AC98(v5);
          v21 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v9 >= *(v21 + 16))
        {
          goto LABEL_51;
        }

        *(v21 + 8 * v9 + 32) = v17;

        *v22 = v5;
      }

      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_50;
      }

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_49;
      }
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return sub_18A4A7F68();
}

uint64_t sub_1892155D0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1892155F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18A4A7B78();
  *a1 = result & 1;
  return result;
}

void sub_18921562C()
{
  v1 = *(v0 + 304);
  *(v0 + 304) = 0;
}

uint64_t sub_18921564C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1890977D4();
  return Strong;
}

uint64_t objectdestroy_80Tm_0(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

id sub_189215710()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return [*(v0 + 16) addToRunLoop:v1 forMode:*MEMORY[0x1E695DA28]];
  }

  __break(1u);
  return result;
}

uint64_t sub_189215738()
{
  sub_18A4A2438();
  if (!v23)
  {
    return sub_188A3F5FC(aBlock, &qword_1EA934050);
  }

  sub_188A34624(0, &qword_1ED48EE70);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v26;
    if (qword_1ED48EFD0 != -1)
    {
LABEL_19:
      swift_once();
    }

    v1 = 0;
    v2 = 0;
    v3 = 0;
    v19 = &v22;
    do
    {
      v4 = v2;
      v5 = *(&unk_1EFAB93A0 + v3 + 32);
      swift_beginAccess();
      v6 = qword_1EA9951B0;
      if (*(qword_1EA9951B0 + 16) && (v7 = sub_188E8B8AC(v20, v5), (v8 & 1) != 0))
      {
        v9 = *(*(v6 + 56) + 8 * v7);
        swift_endAccess();
        *(v9 + 344) = 1;
        v10 = *(v9 + 296);
        swift_retain_n();
        sub_188A55B8C(v1);
        v11 = swift_allocObject();
        *(v11 + 16) = sub_189215AE0;
        *(v11 + 24) = v9;
        v24 = sub_188E3FE50;
        v25 = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v22 = sub_188A4A968;
        v23 = &block_descriptor_245;
        v12 = _Block_copy(aBlock);

        dispatch_sync(v10, v12);
        _Block_release(v12);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          __break(1u);
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940838);
        sub_18A4A7A78();
        v13 = aBlock[0];
        [aBlock[0] invalidate];

        swift_beginAccess();
        v14 = sub_188E8B8AC(v20, v5);
        if (v15)
        {
          v16 = v14;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v18 = qword_1EA9951B0;
          v26 = qword_1EA9951B0;
          qword_1EA9951B0 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_188FA27D4();
            v18 = v26;
          }

          sub_188F9D734(v16, v18);
          qword_1EA9951B0 = v18;
        }

        swift_endAccess();

        v1 = sub_189215AE0;
      }

      else
      {
        swift_endAccess();
      }

      v2 = 1;
      v3 = 1u;
    }

    while ((v4 & 1) == 0);

    return sub_188A55B8C(v1);
  }

  return result;
}

void sub_189215AE4(void *a1@<X8>)
{
  v2 = *(v1 + 320);
  *(v1 + 320) = 0;
  *a1 = v2;
}

uint64_t objectdestroy_217Tm_0(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_189215B50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_189215B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InProcessAnimationManager.Key(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_189215C30()
{
  result = qword_1EA9408E8;
  if (!qword_1EA9408E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9408E8);
  }

  return result;
}

uint64_t sub_189215D50(char a1, uint64_t a2)
{
  v6 = a1;
  v5[2] = a2;
  v5[3] = &v6;
  if (!*(*v2 + 16))
  {
  }

  v3 = sub_1892186AC(*v2, sub_18921867C, v5);

  *v2 = v3;
  return result;
}

uint64_t sub_189215DE0(__int128 *a1, uint64_t a2)
{
  *(v11 + 9) = *(a1 + 41);
  v3 = a1[2];
  v10 = a1[1];
  v11[0] = v3;
  v9 = *a1;
  v6[2] = a2;
  v6[3] = &v9;
  if (*(*v2 + 16))
  {
    v4 = sub_1892186AC(*v2, sub_18921886C, v6);

    *v2 = v4;
  }

  else
  {
  }

  v7[0] = v9;
  v7[1] = v10;
  v8[0] = v11[0];
  *(v8 + 9) = *(v11 + 9);
  return sub_188A3F5FC(v7, &qword_1EA934C40);
}

uint64_t UIHoverStyle.shape.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 16);
  v7[0] = *(v1 + OBJC_IVAR___UIHoverStyle__shape);
  v7[1] = v2;
  v8[0] = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 32);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_188A3F29C(v7, &v6, &qword_1EA934C40);
}

uint64_t UIHoverStyle.shape.setter(_OWORD *a1)
{
  v2 = (v1 + OBJC_IVAR___UIHoverStyle__shape);
  v3 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 16);
  v9 = *(v1 + OBJC_IVAR___UIHoverStyle__shape);
  v10 = v3;
  v11[0] = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 32);
  v4 = v11[0];
  *(v11 + 9) = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 41);
  v12[0] = v9;
  v12[1] = v3;
  v13[0] = v4;
  *(v13 + 9) = *(v11 + 9);
  v5 = a1[2];
  v2[1] = a1[1];
  v2[2] = v5;
  *(v2 + 41) = *(a1 + 41);
  *v2 = *a1;
  sub_188A3F29C(&v9, v7, &qword_1EA934C40);
  sub_188A3F5FC(v12, &qword_1EA934C40);
  v7[0] = v9;
  v7[1] = v10;
  v8[0] = v11[0];
  *(v8 + 9) = *(v11 + 9);
  sub_1892162C4(v7);
  return sub_188A3F5FC(&v9, &qword_1EA934C40);
}

uint64_t UIHoverStyle.effect.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  return sub_188A53994(v1 + v3, a1);
}

uint64_t UIHoverStyle.effect.setter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  sub_189218580(v8, v1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

id UIView.hoverStyle.getter()
{
  v1 = [(UIView *)v0 _hoverStyleStorage];

  return v1;
}

uint64_t sub_189216168(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(v2 + v4, &v9);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_0(&v9, v10);
  LOBYTE(a1) = sub_189063F94(a1, v5, v6);
  result = __swift_destroy_boxed_opaque_existential_0Tm(&v9);
  if ((a1 & 1) == 0)
  {
    *(v2 + OBJC_IVAR___UIHoverStyle__cachedBridgedEffect) = 0;
    swift_unknownObjectRelease();
    sub_188A53994(v2 + v4, &v9);
    v8 = swift_allocObject();
    sub_188A5EBAC(&v9, v8 + 16);
    sub_188BE0090(0, sub_18921885C, v8);
  }

  return result;
}

uint64_t sub_189216274(uint64_t *a1, uint64_t a2)
{
  sub_188A53994(a2, v4);
  __swift_assign_boxed_opaque_existential_1(a1, v4);
  sub_1890552D4();
  return __swift_destroy_boxed_opaque_existential_0Tm(v4);
}

uint64_t sub_1892162C4(__int128 *a1)
{
  v2 = a1[1];
  v49[0] = *a1;
  v49[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  *v50 = a1[2];
  *&v50[9] = *(a1 + 41);
  v5 = (v1 + OBJC_IVAR___UIHoverStyle__shape);
  v6 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 16);
  v51[0] = *(v1 + OBJC_IVAR___UIHoverStyle__shape);
  v51[1] = v6;
  v8 = *(v1 + OBJC_IVAR___UIHoverStyle__shape);
  v7 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 16);
  *v52 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 32);
  *&v52[9] = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 41);
  v43 = v8;
  v44 = v7;
  v45 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 32);
  *&v42[7] = v4;
  v46 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 48);
  v9 = v52[24];
  *&v42[23] = v3;
  *&v42[39] = a1[2];
  *&v42[55] = *(a1 + 6);
  v10 = v50[24];
  if (v52[24] == 255)
  {
    if (v50[24] == 255)
    {
      v12 = v5[1];
      v35 = *v5;
      v36 = v12;
      *v37 = v5[2];
      *&v37[16] = *(v5 + 6);
      v37[24] = -1;
      sub_188A3F29C(v51, v47, &qword_1EA934C40);
      sub_188A3F29C(v49, v47, &qword_1EA934C40);
      v13 = &v35;
      return sub_188A3F5FC(v13, &qword_1EA934C40);
    }

    sub_188A3F29C(v51, &v35, &qword_1EA934C40);
    sub_188A3F29C(v49, &v35, &qword_1EA934C40);
    goto LABEL_9;
  }

  v11 = v5[2];
  v33 = v5[1];
  *v34 = v11;
  *&v34[16] = *(v5 + 6);
  v32 = *v5;
  v34[24] = v52[24];
  v29 = v32;
  v30 = v33;
  v31[0] = v11;
  *(v31 + 9) = *&v34[9];
  if (v50[24] == 255)
  {
    v35 = v32;
    v36 = v33;
    *v37 = *v34;
    *&v37[9] = *&v34[9];
    sub_188A3F29C(v51, v47, &qword_1EA934C40);
    sub_188A3F29C(v49, v47, &qword_1EA934C40);
    sub_188A3F29C(&v32, v47, &qword_1EA934C40);
    sub_188B2040C(&v35);
LABEL_9:
    v35 = v43;
    v36 = v44;
    *v37 = v45;
    v38 = *v42;
    *&v37[16] = v46;
    v37[24] = v9;
    v39 = *&v42[16];
    *v40 = *&v42[32];
    *&v40[15] = *&v42[47];
    v41 = v10;
    sub_188A3F5FC(&v35, &qword_1EA934C48);
    goto LABEL_10;
  }

  v14 = a1[2];
  v27 = a1[1];
  *v28 = v14;
  *&v28[16] = *(a1 + 6);
  v26 = *a1;
  v28[24] = v50[24];
  v35 = v26;
  v36 = v27;
  *v37 = v14;
  *&v37[9] = *&v28[9];
  *(v48 + 9) = *&v34[9];
  v47[1] = v33;
  v48[0] = *v34;
  v47[0] = v32;
  sub_188A3F29C(v51, v23, &qword_1EA934C40);
  sub_188A3F29C(v51, v23, &qword_1EA934C40);
  sub_188A3F29C(v49, v23, &qword_1EA934C40);
  sub_188A3F29C(&v32, v23, &qword_1EA934C40);
  v15 = sub_188E80BB4(v47, &v35);
  sub_188A3F5FC(v51, &qword_1EA934C40);
  sub_188A3F5FC(&v26, &qword_1EA934C40);
  v21[0] = v29;
  v21[1] = v30;
  v22[0] = v31[0];
  *(v22 + 9) = *(v31 + 9);
  sub_188B2040C(v21);
  v23[0] = v43;
  v23[1] = v44;
  v23[2] = v45;
  v24 = v46;
  v25 = v9;
  result = sub_188A3F5FC(v23, &qword_1EA934C40);
  if ((v15 & 1) == 0)
  {
LABEL_10:
    v17 = *(v1 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape);
    *(v1 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape) = 0;

    v18 = v5[1];
    *v42 = *v5;
    *&v42[16] = v18;
    *&v42[32] = v5[2];
    *&v42[41] = *(v5 + 41);
    v19 = swift_allocObject();
    v20 = v5[1];
    v19[1] = *v5;
    v19[2] = v20;
    v19[3] = v5[2];
    *(v19 + 57) = *(v5 + 41);
    sub_188A3F29C(v42, &v32, &qword_1EA934C40);
    sub_188A3F29C(v42, &v32, &qword_1EA934C40);
    sub_188BE0090(0, sub_189218864, v19);

    v13 = v42;
    return sub_188A3F5FC(v13, &qword_1EA934C40);
  }

  return result;
}

uint64_t sub_189216728(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = *(a1 + 96);
  sub_188A3F29C(a2, &v14, &qword_1EA934C40);
  sub_188CAFA50(v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 56) = v12;
  *(a1 + 72) = a2[2];
  *(a1 + 81) = *(a2 + 41);
  return sub_18905546C();
}

uint64_t sub_1892167E8(uint64_t a1, char a2)
{
  *(a1 + 128) = a2;
  v3 = *(a1 + 136);
  *(v3 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_isEnabled) = a2;
  v4 = *(v3 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v4)
  {
    [v4 setEnabled_];
  }

  KeyPath = swift_getKeyPath();
  return sub_189215D50(a2 & 1, KeyPath);
}

uint64_t sub_1892168A4()
{
  v1 = OBJC_IVAR___UIHoverStyle__cachedBridgedEffect;
  if (*(v0 + OBJC_IVAR___UIHoverStyle__cachedBridgedEffect))
  {
    v2 = *(v0 + OBJC_IVAR___UIHoverStyle__cachedBridgedEffect);
  }

  else
  {
    v3 = OBJC_IVAR___UIHoverStyle__effect;
    swift_beginAccess();
    sub_188A53994(v0 + v3, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v2 = (*(v5 + 16))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1892169DC(uint64_t a1)
{
  *(v1 + OBJC_IVAR___UIHoverStyle__cachedBridgedEffect) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16[1] = v16;
    v7 = *(AssociatedTypeWitness - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = (*(v4 + 24))(ObjectType, v4, v9);
    v16[0] = v16;
    v12 = MEMORY[0x1EEE9AC00](v11);
    (*(v7 + 16))(v16 - v10, v16 - v10, AssociatedTypeWitness, v12);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_189218580(v16 - v10, v1, AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    return (*(v7 + 8))(v16 - v10, AssociatedTypeWitness);
  }

  else
  {
    v20 = &type metadata for UIHoverAutomaticEffect;
    v21 = &protocol witness table for UIHoverAutomaticEffect;
    sub_188A53994(v19, v18);
    v15 = OBJC_IVAR___UIHoverStyle__effect;
    swift_beginAccess();
    sub_188A53994(v1 + v15, v17);
    swift_beginAccess();
    __swift_assign_boxed_opaque_existential_1((v1 + v15), v18);
    swift_endAccess();
    sub_189216168(v17);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }
}

char *sub_189216CD4()
{
  v1 = OBJC_IVAR___UIHoverStyle__cachedBridgedShape;
  v2 = *(v0 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape);
  v3 = v2;
  if (!v2)
  {
    v4 = (v0 + OBJC_IVAR___UIHoverStyle__shape);
    v5 = *(v0 + OBJC_IVAR___UIHoverStyle__shape + 16);
    v26 = *(v0 + OBJC_IVAR___UIHoverStyle__shape);
    v27 = v5;
    v28 = *(v0 + OBJC_IVAR___UIHoverStyle__shape + 32);
    v29 = *(v0 + OBJC_IVAR___UIHoverStyle__shape + 48);
    v6 = *(v0 + OBJC_IVAR___UIHoverStyle__shape + 56);
    if (v6 == 255)
    {
      v13 = 0;
      v3 = 0;
    }

    else
    {
      v17 = *v4;
      v18 = v4[1];
      v19 = v4[2];
      v20 = *(v4 + 6);
      v7 = objc_allocWithZone(UIShape);
      v21[0] = v26;
      v21[1] = v27;
      v21[2] = v28;
      v22 = v29;
      v23 = v6;
      sub_188B20550(v21, v24);
      v8 = [v7 init];
      v9 = &v8[OBJC_IVAR___UIShape_value];
      v10 = *&v8[OBJC_IVAR___UIShape_value];
      v11 = *&v8[OBJC_IVAR___UIShape_value + 16];
      v12 = *&v8[OBJC_IVAR___UIShape_value + 32];
      *&v25[9] = *&v8[OBJC_IVAR___UIShape_value + 41];
      v24[1] = v11;
      *v25 = v12;
      v24[0] = v10;
      *(v9 + 1) = v18;
      *(v9 + 2) = v19;
      *(v9 + 6) = v20;
      *v9 = v17;
      v9[56] = v6;
      v3 = v8;
      sub_188B2040C(v24);

      v13 = *(v0 + v1);
    }

    *(v0 + v1) = v3;
    v14 = v3;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_189216E84(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape);
  *(v1 + OBJC_IVAR___UIHoverStyle__cachedBridgedShape) = a1;
  v4 = a1;

  if (v2)
  {
    v5 = *&v4[OBJC_IVAR___UIShape_value + 41];
    v7 = *&v4[OBJC_IVAR___UIShape_value + 16];
    v6 = *&v4[OBJC_IVAR___UIShape_value + 32];
    v24 = *&v4[OBJC_IVAR___UIShape_value];
    v25 = v7;
    *v26 = v6;
    *&v26[9] = v5;
    v17 = v7;
    v18 = v24;
    v16 = *v26;
    v2 = v5 >> 56;
    v8 = HIBYTE(v5);
    sub_188B20550(&v24, &v21);
    v10 = v16;
    v9 = v17;
    v11 = v18;
  }

  else
  {
    v11 = 0uLL;
    v8 = -1;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v12 = v1 + OBJC_IVAR___UIHoverStyle__shape;
  v13 = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 16);
  v21 = *(v1 + OBJC_IVAR___UIHoverStyle__shape);
  v22 = v13;
  v23[0] = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 32);
  v14 = v23[0];
  *(v23 + 9) = *(v1 + OBJC_IVAR___UIHoverStyle__shape + 41);
  v24 = v21;
  v25 = v13;
  *v26 = v14;
  *&v26[9] = *(v23 + 9);
  *v12 = v11;
  *(v12 + 16) = v9;
  *(v12 + 32) = v10;
  *(v12 + 48) = v2;
  *(v12 + 56) = v8;
  sub_188A3F29C(&v21, v19, &qword_1EA934C40);
  sub_188A3F5FC(&v24, &qword_1EA934C40);
  v19[0] = v21;
  v19[1] = v22;
  v20[0] = v23[0];
  *(v20 + 9) = *(v23 + 9);
  sub_1892162C4(v19);

  return sub_188A3F5FC(&v21, &qword_1EA934C40);
}

uint64_t UIHoverStyle.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  sub_188A3F29C(a1, &v50, &qword_1EA934050);
  if (!*(&v51 + 1))
  {
    v29 = &qword_1EA934050;
LABEL_8:
    sub_188A3F5FC(&v50, v29);
    return 0;
  }

  type metadata accessor for UIHoverStyle();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *v57;
  v4 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(&v3[v4], &v50);
  v5 = *(&v51 + 1);
  v6 = *v52;
  __swift_project_boxed_opaque_existential_0(&v50, *(&v51 + 1));
  v7 = swift_unknownObjectWeakInit();
  BYTE8(v66[0]) = 1;
  (*(v6 + 8))(v57, v7, v5, v6);
  sub_189065604(v66);
  v8 = *v57;
  v9 = v57[10];
  v10 = *&v57[8];
  v11 = *&v57[8] | (v57[10] << 16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v50);
  v12 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(&v2[v12], &v50);
  v13 = *(&v51 + 1);
  v14 = *v52;
  __swift_project_boxed_opaque_existential_0(&v50, *(&v51 + 1));
  v15 = swift_unknownObjectWeakInit();
  BYTE8(v66[0]) = 1;
  (*(v14 + 8))(v57, v15, v13, v14);
  sub_189065604(v66);
  v16 = *v57;
  LOBYTE(v14) = v57[10];
  v17 = *&v57[8];
  v18 = *&v57[8] | (v57[10] << 16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v50);
  *&v50 = v16;
  BYTE10(v50) = v14;
  WORD4(v50) = v17;
  *v57 = v8;
  v57[10] = v9;
  *&v57[8] = v10;
  if ((sub_189065280(&v50, v57) & 1) == 0)
  {
    sub_1890655E0(v16, v18);
    v30 = v8;
    v31 = v11;
    goto LABEL_10;
  }

  v19 = &v2[OBJC_IVAR___UIHoverStyle__shape];
  v20 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 16];
  v62[0] = *&v2[OBJC_IVAR___UIHoverStyle__shape];
  v62[1] = v20;
  v22 = *&v2[OBJC_IVAR___UIHoverStyle__shape];
  v21 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 16];
  *v63 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 32];
  *&v63[9] = *&v2[OBJC_IVAR___UIHoverStyle__shape + 41];
  v23 = *&v3[OBJC_IVAR___UIHoverStyle__shape + 41];
  v25 = *&v3[OBJC_IVAR___UIHoverStyle__shape + 16];
  v24 = *&v3[OBJC_IVAR___UIHoverStyle__shape + 32];
  v64[0] = *&v3[OBJC_IVAR___UIHoverStyle__shape];
  v64[1] = v25;
  *v65 = v24;
  *&v65[9] = v23;
  v58 = v22;
  v59 = v21;
  v60 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 32];
  v61 = *&v2[OBJC_IVAR___UIHoverStyle__shape + 48];
  v26 = v63[24];
  *&v57[7] = *&v3[OBJC_IVAR___UIHoverStyle__shape];
  *&v57[23] = *&v3[OBJC_IVAR___UIHoverStyle__shape + 16];
  *&v57[39] = *&v3[OBJC_IVAR___UIHoverStyle__shape + 32];
  *&v57[55] = *&v3[OBJC_IVAR___UIHoverStyle__shape + 48];
  v27 = HIBYTE(v23);
  if (v63[24] != 255)
  {
    v28 = *(v19 + 2);
    v48 = *(v19 + 1);
    *v49 = v28;
    *&v49[16] = *(v19 + 6);
    v47 = *v19;
    v49[24] = v63[24];
    v44 = v47;
    v45 = v48;
    v46[0] = v28;
    *(v46 + 9) = *&v49[9];
    if (v27 == 255)
    {
      sub_188A3F29C(v62, &v50, &qword_1EA934C40);
      sub_188A3F29C(v64, &v50, &qword_1EA934C40);
      sub_188A3F29C(v62, &v50, &qword_1EA934C40);
      sub_188A3F29C(v64, &v50, &qword_1EA934C40);
      sub_188A3F29C(&v47, &v50, &qword_1EA934C40);
      sub_1890655E0(v16, v18);
      sub_1890655E0(v8, v11);

      sub_188A3F5FC(v64, &qword_1EA934C40);
      sub_188A3F5FC(v62, &qword_1EA934C40);
      v50 = v44;
      v51 = v45;
      *v52 = v46[0];
      *&v52[9] = *(v46 + 9);
      sub_188B2040C(&v50);
LABEL_17:
      v50 = v58;
      v51 = v59;
      *v52 = v60;
      v53 = *v57;
      *&v52[16] = v61;
      v52[24] = v26;
      v54 = *&v57[16];
      *v55 = *&v57[32];
      *&v55[15] = *&v57[47];
      v56 = v27;
      v29 = &qword_1EA934C48;
      goto LABEL_8;
    }

    *&v43[16] = *&v57[55];
    v42[0] = *&v57[7];
    v42[1] = *&v57[23];
    *v43 = *&v57[39];
    v43[24] = v27;
    v50 = *&v57[7];
    v51 = *&v57[23];
    *v52 = *&v57[39];
    *&v52[9] = *&v43[9];
    *(v67 + 9) = *&v49[9];
    v66[1] = v48;
    v67[0] = *v49;
    v66[0] = v47;
    sub_188A3F29C(v62, v39, &qword_1EA934C40);
    sub_188A3F29C(v64, v39, &qword_1EA934C40);
    sub_188A3F29C(v62, v39, &qword_1EA934C40);
    sub_188A3F29C(v64, v39, &qword_1EA934C40);
    sub_188A3F29C(&v47, v39, &qword_1EA934C40);
    v34 = sub_188E80BB4(v66, &v50);
    sub_188A3F5FC(v64, &qword_1EA934C40);
    sub_188A3F5FC(v62, &qword_1EA934C40);
    sub_188A3F5FC(v42, &qword_1EA934C40);
    v37[0] = v44;
    v37[1] = v45;
    v38[0] = v46[0];
    *(v38 + 9) = *(v46 + 9);
    sub_188B2040C(v37);
    v39[0] = v58;
    v39[1] = v59;
    v39[2] = v60;
    v40 = v61;
    v41 = v26;
    sub_188A3F5FC(v39, &qword_1EA934C40);
    if (v34)
    {
      goto LABEL_15;
    }

    sub_1890655E0(v16, v18);
    v30 = v8;
    v31 = v11;
LABEL_10:
    sub_1890655E0(v30, v31);

    return 0;
  }

  if (HIBYTE(v23) != 255)
  {
    sub_188A3F29C(v62, &v50, &qword_1EA934C40);
    sub_188A3F29C(v64, &v50, &qword_1EA934C40);
    sub_1890655E0(v16, v18);
    sub_1890655E0(v8, v11);

    goto LABEL_17;
  }

  v33 = *(v19 + 1);
  v50 = *v19;
  v51 = v33;
  *v52 = *(v19 + 2);
  *&v52[16] = *(v19 + 6);
  v52[24] = -1;
  sub_188A3F29C(v62, v66, &qword_1EA934C40);
  sub_188A3F29C(v64, v66, &qword_1EA934C40);
  sub_188A3F5FC(&v50, &qword_1EA934C40);
LABEL_15:
  v35 = [v2 isEnabled];
  v36 = [v3 isEnabled];
  sub_1890655E0(v16, v18);
  sub_1890655E0(v8, v11);

  return v35 ^ v36 ^ 1;
}

uint64_t UIHoverStyle.description.getter()
{
  v1 = v0;
  *&v20[0] = 0;
  *(&v20[0] + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  v19 = v20[0];
  v18.receiver = v0;
  v18.super_class = UIHoverStyle;
  v2 = objc_msgSendSuper2(&v18, sel_description);
  v3 = sub_18A4A7288();
  v5 = v4;

  MEMORY[0x18CFE22D0](v3, v5);

  MEMORY[0x18CFE22D0](0x746365666665203BLL, 0xEA0000000000203ALL);
  v6 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(&v1[v6], v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA940908);
  sub_18A4A82D8();
  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  MEMORY[0x18CFE22D0](0x3A6570616873202CLL, 0xE900000000000020);
  v7 = *&v1[OBJC_IVAR___UIHoverStyle__shape + 16];
  v20[0] = *&v1[OBJC_IVAR___UIHoverStyle__shape];
  v20[1] = v7;
  v9 = *&v1[OBJC_IVAR___UIHoverStyle__shape];
  v8 = *&v1[OBJC_IVAR___UIHoverStyle__shape + 16];
  v21[0] = *&v1[OBJC_IVAR___UIHoverStyle__shape + 32];
  *(v21 + 9) = *&v1[OBJC_IVAR___UIHoverStyle__shape + 41];
  v16[4] = v9;
  v16[5] = v8;
  v17[0] = *&v1[OBJC_IVAR___UIHoverStyle__shape + 32];
  *(v17 + 9) = *&v1[OBJC_IVAR___UIHoverStyle__shape + 41];
  sub_188A3F29C(v20, v16, &qword_1EA934C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934C40);
  v10 = sub_18A4A72F8();
  MEMORY[0x18CFE22D0](v10);

  MEMORY[0x18CFE22D0](0x656C62616E65202CLL, 0xEB00000000203A64);
  v11 = [v1 isEnabled];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x18CFE22D0](v13, v14);

  return v19;
}

uint64_t sub_189217C08(uint64_t a1, uint64_t *a2)
{
  sub_188A53994(a1, v13);
  v3 = *a2;
  v4 = v14;
  v5 = v15;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v10 + 16))(v9, v7);
  sub_189218580(v9, v3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

void (*UIHoverStyle.effect.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(v1 + v5, v4);
  return sub_189217D90;
}

void sub_189217D90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  if (a2)
  {
    sub_188A53994(*a1, (v2 + 5));
    v4 = v2[8];
    v5 = v2[9];
    v6 = __swift_mutable_project_boxed_opaque_existential_1((v2 + 5), v4);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    sub_189218580(v9, v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 5));
  }

  else
  {
    v11 = v2[3];
    v12 = v2[4];
    v13 = __swift_mutable_project_boxed_opaque_existential_1(*a1, v11);
    v14 = MEMORY[0x1EEE9AC00](v13);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    sub_189218580(v16, v3, v11, v12);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  free(v2);
}

uint64_t sub_189217F68(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v16[0] = *a1;
  v16[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = (*a2 + OBJC_IVAR___UIHoverStyle__shape);
  v7 = v5[1];
  v6 = v5[2];
  v8 = *v5;
  *(v20 + 9) = *(v5 + 41);
  v19 = v7;
  v20[0] = v6;
  v18 = v8;
  v9 = *(v5 + 41);
  v11 = v5[1];
  v10 = v5[2];
  v21[0] = *v5;
  v21[1] = v11;
  v22[0] = v10;
  *(v22 + 9) = v9;
  *(v5 + 41) = *(a1 + 41);
  v12 = a1[2];
  v5[1] = v3;
  v5[2] = v12;
  *v5 = v4;
  sub_188A3F29C(v16, v14, &qword_1EA934C40);
  sub_188A3F29C(&v18, v14, &qword_1EA934C40);
  sub_188A3F5FC(v21, &qword_1EA934C40);
  v14[0] = v18;
  v14[1] = v19;
  v15[0] = v20[0];
  *(v15 + 9) = *(v20 + 9);
  sub_1892162C4(v14);
  return sub_188A3F5FC(&v18, &qword_1EA934C40);
}

void (*UIHoverStyle.shape.modify(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1D0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___UIHoverStyle__shape;
  *(v3 + 448) = v1;
  *(v3 + 456) = v4;
  v5 = (v1 + v4);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  *(v3 + 41) = *(v5 + 41);
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *v3 = v6;
  v9 = *(v5 + 41);
  v11 = v5[1];
  v10 = v5[2];
  *(v3 + 64) = *v5;
  *(v3 + 80) = v11;
  *(v3 + 96) = v10;
  *(v3 + 105) = v9;
  sub_188A3F29C(v3, v3 + 128, &qword_1EA934C40);
  return sub_18921814C;
}

void sub_18921814C(void *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 256);
  v4 = (*(v2 + 448) + *(v2 + 456));
  if (a2)
  {
    v5 = *(v2 + 80);
    *(v2 + 320) = *(v2 + 64);
    *(v2 + 336) = v5;
    v7 = *(v2 + 64);
    v6 = *(v2 + 80);
    *(v2 + 352) = *(v2 + 96);
    *(v2 + 361) = *(v2 + 105);
    v9 = v4[1];
    v8 = v4[2];
    v10 = *v4;
    *(v3 + 41) = *(v4 + 41);
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v10;
    v11 = *(v4 + 41);
    v13 = v4[1];
    v12 = v4[2];
    *(v2 + 192) = *v4;
    *(v2 + 208) = v13;
    *(v2 + 224) = v12;
    *(v2 + 233) = v11;
    v14 = *(v2 + 96);
    *(v4 + 41) = *(v2 + 105);
    v4[1] = v6;
    v4[2] = v14;
    *v4 = v7;
    sub_188A3F29C(v2 + 320, v2 + 384, &qword_1EA934C40);
    sub_188A3F29C(v3, v2 + 384, &qword_1EA934C40);
    sub_188A3F5FC(v2 + 192, &qword_1EA934C40);
    v15 = v3[1];
    v28 = *v3;
    v29 = v15;
    v30[0] = v3[2];
    *(v30 + 9) = *(v3 + 41);
    sub_1892162C4(&v28);
    sub_188A3F5FC(v3, &qword_1EA934C40);
    v16 = *(v2 + 80);
    *(v2 + 128) = *(v2 + 64);
    *(v2 + 144) = v16;
    *(v2 + 160) = *(v2 + 96);
    *(v2 + 169) = *(v2 + 105);
    v17 = v2 + 128;
  }

  else
  {
    v19 = v4[1];
    v18 = v4[2];
    v20 = *v4;
    *(v2 + 233) = *(v4 + 41);
    *(v2 + 208) = v19;
    *(v2 + 224) = v18;
    *(v2 + 192) = v20;
    v22 = v4[1];
    v21 = v4[2];
    v23 = *v4;
    *(v2 + 169) = *(v4 + 41);
    *(v2 + 144) = v22;
    *(v2 + 160) = v21;
    *(v2 + 128) = v23;
    v24 = *(v2 + 64);
    v25 = *(v2 + 80);
    v26 = *(v2 + 96);
    *(v4 + 41) = *(v2 + 105);
    v4[1] = v25;
    v4[2] = v26;
    *v4 = v24;
    sub_188A3F29C(v2 + 192, v3, &qword_1EA934C40);
    sub_188A3F5FC(v2 + 128, &qword_1EA934C40);
    v27 = *(v2 + 208);
    v28 = *(v2 + 192);
    v29 = v27;
    v30[0] = *(v2 + 224);
    *(v30 + 9) = *(v2 + 233);
    sub_1892162C4(&v28);
    v17 = v2 + 192;
  }

  sub_188A3F5FC(v17, &qword_1EA934C40);

  free(v2);
}

id sub_189218370(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_18A4A7258();

  return v5;
}

uint64_t sub_1892183E0()
{
  v1 = v0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v2 = OBJC_IVAR___UIHoverStyle_driverCoordinator;
  swift_beginAccess();
  sub_188A3F29C(v1 + v2, v8, &qword_1EA940940);
  if (v9)
  {
    sub_188BE0600(v8, &v10);
    sub_18A4A8788();
    sub_188BE0808(v8);
    sub_188BE0808(&v10);
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA940940);
    v12 = 0x296C696E28;
    v13 = 0xE500000000000000;
  }

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_18A4A80E8();
  v3 = [v1 description];
  v4 = sub_18A4A7288();
  v6 = v5;

  v10 = v4;
  v11 = v6;
  MEMORY[0x18CFE22D0](0x5372657669726420, 0xEE00203A65746174);
  MEMORY[0x18CFE22D0](v12, v13);

  return v10;
}

uint64_t sub_189218580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = a3;
  v12[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  sub_188A53994(v12, v11);
  v8 = OBJC_IVAR___UIHoverStyle__effect;
  swift_beginAccess();
  sub_188A53994(a2 + v8, v10);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a2 + v8), v11);
  swift_endAccess();
  sub_189216168(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_1892186AC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA938D50);
  result = sub_18A4A8458();
  v5 = result;
  v6 = 0;
  v23 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v22 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v23 + 48) + 8 * v17);
      sub_188A53994(*(v23 + 56) + 40 * v17, v26);
      sub_188A53994(v26, v25);
      a2(v25);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      *(v22 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v5[6] + 8 * v17) = v18;
      result = sub_188A5EBAC(v25, v5[7] + 40 * v17);
      v19 = v5[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v5[2] = v21;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18921886C()
{
  v1 = *(v0 + 24);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *&v12[9] = *(v1 + 41);
  v11[1] = v3;
  *v12 = v4;
  v11[0] = v2;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  *&v10[9] = *(v1 + 41);
  v9[5] = v6;
  *v10 = v7;
  v9[4] = v5;
  sub_188A3F29C(v11, v9, &qword_1EA934C40);
  return swift_setAtWritableKeyPath();
}

void sub_1892188FC(uint64_t a1, id a2, uint64_t a3, char a4)
{
  v137 = *a1;
  v138 = *(a1 + 8);
  v139 = *(a1 + 16);
  v140 = *(a1 + 24);
  v6 = *(a1 + 32);
  v151[0] = *(a1 + 33);
  *(v151 + 3) = *(a1 + 36);
  v135 = *(a1 + 48);
  v136 = *(a1 + 40);
  v134 = *(a1 + 56);
  v133 = *(a1 + 72);
  v131 = *(a1 + 64);
  v132 = *(a1 + 88);
  v130 = *(a1 + 96);
  v128 = *(a1 + 104);
  v129 = *(a1 + 80);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  v9 = *(a1 + 128);
  v10 = *(a1 + 136);
  v11 = *(a1 + 144);
  v126 = *(a1 + 152);
  v127 = *(a1 + 168);
  v124 = *(a1 + 184);
  v125 = *(a1 + 192);
  v12 = *(a1 + 200);
  v152[0] = *(a1 + 201);
  *(v152 + 3) = *(a1 + 204);
  v122 = *(a1 + 216);
  v123 = *(a1 + 208);
  v120 = *(a1 + 224);
  v121 = v12;
  [a2 alpha];
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_189219F00;
  *(v16 + 24) = v15;
  *(v16 + 32) = v7;
  *(v16 + 40) = v8;
  *(v16 + 48) = v9;
  *(v16 + 56) = v10;
  *(v16 + 64) = v11;
  *(v16 + 72) = v14;
  v142 = a4;
  if ((a4 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v11)
  {
    v33 = *(a3 + 40);
    v18 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v18)
    {
      *(a3 + 40) = v34;
      v35 = objc_opt_self();
      v36 = a2;

      v37 = [v35 behaviorWithDampingRatio:v9 response:v10];
      v38 = objc_opt_self();
      *&aBlock.tx = sub_189219FB4;
      *&aBlock.ty = v16;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188A4A8F0;
      *&aBlock.d = &block_descriptor_80_6;
      v39 = _Block_copy(&aBlock);
      v40 = v37;

      *&aBlock.tx = sub_18921A178;
      *&aBlock.ty = a3;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188C3DD6C;
      *&aBlock.d = &block_descriptor_83_1;
      v41 = _Block_copy(&aBlock);

      [v38 _animateUsingSpringBehavior_tracking_animations_completion_];

      v42 = v41;
      v28 = *&a3;
      _Block_release(v42);
      _Block_release(v39);

      goto LABEL_14;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v11 != 1)
  {
LABEL_6:
    if (v8)
    {
      v29 = v8 == 1;
      v28 = *&a3;
      v31 = v139;
      v30 = v140;
      v32 = v138;
      if (v29)
      {
        v14 = v7;
      }
    }

    else
    {
      v14 = v14 + v7;
      v28 = *&a3;
      v31 = v139;
      v30 = v140;
      v32 = v138;
    }

    [a2 setAlpha_];

    goto LABEL_15;
  }

  v17 = *(a3 + 40);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_53;
  }

  *(a3 + 40) = v19;
  v20 = objc_opt_self();
  v21 = a2;

  v22 = [v20 behaviorWithDampingRatio:v9 response:v10];
  v23 = objc_opt_self();
  *&aBlock.tx = sub_189219FB4;
  *&aBlock.ty = v16;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188A4A8F0;
  *&aBlock.d = &block_descriptor_73_1;
  v24 = _Block_copy(&aBlock);

  v25 = v22;

  *&aBlock.tx = sub_18921A178;
  *&aBlock.ty = a3;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188C3DD6C;
  *&aBlock.d = &block_descriptor_76_0;
  v26 = _Block_copy(&aBlock);

  [v23 _animateUsingSpringBehavior_tracking_animations_completion_];

  v27 = v26;
  v28 = *&a3;
  _Block_release(v27);
  _Block_release(v24);

LABEL_14:
  a4 = v142;
  v31 = v139;
  v30 = v140;
  v32 = v138;
LABEL_15:
  [a2 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = a2;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_18921A014;
  *(v52 + 24) = v51;
  *(v52 + 32) = v137;
  *(v52 + 40) = v32;
  *(v52 + 48) = v31;
  *(v52 + 56) = v30;
  *(v52 + 64) = v6;
  *(v52 + 65) = v151[0];
  *(v52 + 68) = *(v151 + 3);
  *(v52 + 72) = v136;
  *(v52 + 80) = v135;
  *(v52 + 88) = v134;
  *(v52 + 96) = v44;
  *(v52 + 104) = v46;
  *(v52 + 112) = v48;
  *(v52 + 120) = v50;
  if ((a4 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (!v134)
  {
    v62 = *(*&v28 + 40);
    v18 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (!v18)
    {
      *(*&v28 + 40) = v63;
      v64 = objc_opt_self();
      v141 = a2;

      v65 = [v64 behaviorWithDampingRatio:v136 response:v135];
      v66 = objc_opt_self();
      *&aBlock.tx = sub_18921A030;
      *&aBlock.ty = v52;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188A4A8F0;
      *&aBlock.d = &block_descriptor_66_5;
      v58 = _Block_copy(&aBlock);
      v59 = v65;

      *&aBlock.tx = sub_18921A178;
      *&aBlock.ty = a3;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188C3DD6C;
      *&aBlock.d = &block_descriptor_69_3;
      v60 = _Block_copy(&aBlock);

      [v66 _animateUsingSpringBehavior_tracking_animations_completion_];
      goto LABEL_27;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v134 != 1)
  {
LABEL_20:
    if (v6)
    {
      if (v6 == 1)
      {
        v44 = v137;
        v46 = v32;
        v48 = v31;
        v50 = v30;
      }
    }

    else
    {
      v44 = v44 + v137;
      v46 = v46 + v32;
      v48 = v48 + v31;
      v50 = v50 + v30;
    }

    v61 = v133;
    [a2 setBounds_];

    goto LABEL_28;
  }

  v53 = *(*&v28 + 40);
  v18 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *(*&v28 + 40) = v54;
  v55 = objc_opt_self();
  v141 = a2;

  v56 = [v55 behaviorWithDampingRatio:v136 response:v135];
  v57 = objc_opt_self();
  *&aBlock.tx = sub_18921A030;
  *&aBlock.ty = v52;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188A4A8F0;
  *&aBlock.d = &block_descriptor_59_2;
  v58 = _Block_copy(&aBlock);

  v59 = v56;

  *&aBlock.tx = sub_18921A178;
  *&aBlock.ty = a3;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188C3DD6C;
  *&aBlock.d = &block_descriptor_62_5;
  v60 = _Block_copy(&aBlock);

  [v57 _animateUsingSpringBehavior_tracking_animations_completion_];
LABEL_27:

  _Block_release(v60);
  v67 = v58;
  v28 = *&a3;
  _Block_release(v67);

  a4 = v142;
  v61 = v133;
LABEL_28:
  [a2 center];
  v69 = v68;
  v71 = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = a2;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_18921A078;
  *(v73 + 24) = v72;
  *(v73 + 32) = v131;
  *(v73 + 40) = v61;
  *(v73 + 48) = v129;
  *(v73 + 56) = v132;
  *(v73 + 64) = v130;
  *(v73 + 72) = v128;
  *(v73 + 80) = v69;
  *(v73 + 88) = v71;
  if ((a4 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (!v128)
  {
    v101 = *(*&v28 + 40);
    v18 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (!v18)
    {
      *(*&v28 + 40) = v102;
      v103 = objc_opt_self();
      v104 = a2;

      v105 = [v103 behaviorWithDampingRatio:v132 response:v130];
      v106 = objc_opt_self();
      *&aBlock.tx = sub_18921A090;
      *&aBlock.ty = v73;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188A4A8F0;
      *&aBlock.d = &block_descriptor_52_3;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      *&aBlock.tx = sub_18921A178;
      *&aBlock.ty = a3;
      *&aBlock.a = MEMORY[0x1E69E9820];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_188C3DD6C;
      *&aBlock.d = &block_descriptor_55_6;
      v109 = _Block_copy(&aBlock);

      [v106 _animateUsingSpringBehavior_tracking_animations_completion_];

      v110 = v109;
      v28 = *&a3;
      _Block_release(v110);
      _Block_release(v107);

      a4 = v142;
      goto LABEL_38;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (v128 != 1)
  {
LABEL_33:
    if (v129)
    {
      if (v129 == 1)
      {
        v69 = v131;
        v71 = v61;
      }
    }

    else
    {
      v69 = v69 + v131;
      v71 = v71 + v61;
    }

    [a2 setCenter_];

    goto LABEL_38;
  }

  v74 = *(*&v28 + 40);
  v18 = __OFADD__(v74, 1);
  v75 = v74 + 1;
  if (v18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *(*&v28 + 40) = v75;
  v76 = objc_opt_self();
  v77 = a2;

  v78 = [v76 behaviorWithDampingRatio:v132 response:v130];
  v79 = objc_opt_self();
  *&aBlock.tx = sub_18921A090;
  *&aBlock.ty = v73;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188A4A8F0;
  *&aBlock.d = &block_descriptor_45_5;
  v80 = _Block_copy(&aBlock);

  v81 = v78;

  *&aBlock.tx = sub_18921A178;
  *&aBlock.ty = a3;
  *&aBlock.a = MEMORY[0x1E69E9820];
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_188C3DD6C;
  *&aBlock.d = &block_descriptor_48_4;
  v82 = _Block_copy(&aBlock);

  [v79 _animateUsingSpringBehavior_tracking_animations_completion_];

  v83 = v82;
  v28 = *&a3;
  _Block_release(v83);
  _Block_release(v80);

  a4 = v142;
LABEL_38:
  [a2 transform];
  v143 = *&aBlock.a;
  v146 = *&aBlock.c;
  tx = aBlock.tx;
  ty = aBlock.ty;
  v86 = swift_allocObject();
  *(v86 + 16) = a2;
  v87 = swift_allocObject();
  v89 = v143;
  v88 = v146;
  v90 = *&v87;
  *(v87 + 16) = sub_18921A0F0;
  *(v87 + 24) = v86;
  *(v87 + 32) = v126;
  *(v87 + 48) = v127;
  *(v87 + 64) = v124;
  *(v87 + 72) = v125;
  *(v87 + 80) = v121;
  *(v87 + 81) = v152[0];
  *(v87 + 84) = *(v152 + 3);
  *(v87 + 88) = v123;
  *(v87 + 96) = v122;
  *(v87 + 104) = v120;
  *(v87 + 112) = v143;
  *(v87 + 128) = v146;
  *(v87 + 144) = tx;
  *(v87 + 152) = ty;
  if (a4)
  {
    if (!v120)
    {
      v111 = *(*&v28 + 40);
      v18 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (!v18)
      {
        *(*&v28 + 40) = v112;
        v113 = objc_opt_self();
        v114 = a2;

        v115 = [v113 behaviorWithDampingRatio:v123 response:v122];
        v116 = objc_opt_self();
        *&aBlock.tx = sub_18921A134;
        aBlock.ty = v90;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_188A4A8F0;
        *&aBlock.d = &block_descriptor_38_6;
        v117 = _Block_copy(&aBlock);
        v118 = v115;

        *&aBlock.tx = sub_18921A178;
        aBlock.ty = v28;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_188C3DD6C;
        *&aBlock.d = &block_descriptor_41_5;
        v119 = _Block_copy(&aBlock);

        [v116 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v119);
        _Block_release(v117);

        return;
      }

      goto LABEL_59;
    }

    if (v120 == 1)
    {
      v91 = *(*&v28 + 40);
      v18 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (!v18)
      {
        *(*&v28 + 40) = v92;
        v93 = objc_opt_self();
        v94 = a2;

        v95 = [v93 behaviorWithDampingRatio:v123 response:v122];
        v96 = objc_opt_self();
        *&aBlock.tx = sub_18921A134;
        aBlock.ty = v90;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_188A4A8F0;
        *&aBlock.d = &block_descriptor_156;
        v97 = _Block_copy(&aBlock);

        v98 = v95;

        *&aBlock.tx = sub_18921A144;
        aBlock.ty = v28;
        *&aBlock.a = MEMORY[0x1E69E9820];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_188C3DD6C;
        *&aBlock.d = &block_descriptor_34_0;
        v99 = _Block_copy(&aBlock);

        [v96 _animateUsingSpringBehavior_tracking_animations_completion_];

        _Block_release(v99);
        _Block_release(v97);

        return;
      }

      goto LABEL_58;
    }
  }

  if (v121)
  {
    if (v121 == 1)
    {
      tx = v124;
      ty = v125;
      v89 = v126;
      v88 = v127;
    }
  }

  else
  {
    *&aBlock.a = v143;
    *&aBlock.c = v146;
    aBlock.tx = tx;
    aBlock.ty = ty;
    *&t2.a = v126;
    *&t2.c = v127;
    t2.tx = v124;
    t2.ty = v125;
    CGAffineTransformConcat(&v148, &aBlock, &t2);
    v89 = *&v148.a;
    v88 = *&v148.c;
    tx = v148.tx;
    ty = v148.ty;
  }

  v144 = v89;
  v147 = v88;
  v100 = a2;
  *&aBlock.a = v144;
  *&aBlock.c = v147;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v100 setTransform_];
}

unint64_t UIViewDisplayID.debugDescription.getter()
{
  sub_18A4A80E8();

  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_189219CDC()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](v1);
  return sub_18A4A88E8();
}

uint64_t sub_189219D24()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE3810](v1);
  return sub_18A4A88E8();
}

unint64_t sub_189219D6C()
{
  result = qword_1EA940950;
  if (!qword_1EA940950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940950);
  }

  return result;
}

unint64_t sub_189219DC4()
{
  result = qword_1EA940958;
  if (!qword_1EA940958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940958);
  }

  return result;
}

unint64_t sub_189219E1C()
{
  result = qword_1EA940960;
  if (!qword_1EA940960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA940960);
  }

  return result;
}

uint64_t sub_189219E94(uint64_t (*a1)(_OWORD *), __n128 a2, double a3, float64x2_t a4, float64_t a5, uint64_t a6, uint64_t a7)
{
  a2.n128_f64[1] = a3;
  a4.f64[1] = a5;
  if (*(a7 + 32))
  {
    if (*(a7 + 32) == 1)
    {
      a2 = *a7;
      a4 = *(a7 + 16);
    }
  }

  else
  {
    a2 = vaddq_f64(a2, *a7);
    a4 = vaddq_f64(a4, *(a7 + 16));
  }

  v11 = v7;
  v12 = v8;
  v10[0] = a2;
  v10[1] = a4;
  return a1(v10);
}

uint64_t sub_189219F18(uint64_t (*a1)(CGAffineTransform *), uint64_t a2, double *a3, double *a4)
{
  v6 = a3[4];
  v5 = a3[5];
  v8 = *a3;
  v7 = *(a3 + 1);
  v10 = *a4;
  v9 = *(a4 + 1);
  tx = a4[4];
  ty = a4[5];
  if (*(a3 + 48))
  {
    if (*(a3 + 48) == 1)
    {
      tx = a3[4];
      ty = a3[5];
      v10 = *a3;
      v9 = *(a3 + 1);
    }
  }

  else
  {
    *&t1.a = *a4;
    *&t1.c = v9;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v8;
    *&t2.c = v7;
    t2.tx = v6;
    t2.ty = v5;
    CGAffineTransformConcat(&v14, &t1, &t2);
    v10 = *&v14.a;
    v9 = *&v14.c;
    tx = v14.tx;
    ty = v14.ty;
  }

  *&t1.a = v10;
  *&t1.c = v9;
  t1.tx = tx;
  t1.ty = ty;
  return a1(&t1);
}

uint64_t sub_189219FB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  v3 = v2 + *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    v2 = *(v0 + 32);
  }

  if (!*(v0 + 40))
  {
    v2 = v3;
  }

  v5 = v2;
  return v1(&v5);
}

uint64_t sub_18921A030(double a1, double a2, float64x2_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  v9[0] = *(v3 + 32);
  v9[1] = v6;
  v10[0] = *(v3 + 64);
  *(v10 + 9) = *(v3 + 73);
  v7.n128_u64[1] = *(&v10[1] + 1);
  v7.n128_u64[0] = *(v3 + 96);
  a3.f64[0] = *(v3 + 112);
  return sub_189219E94(v4, v7, *(v3 + 104), a3, *(v3 + 120), v5, v9);
}

uint64_t sub_18921A090()
{
  v1 = v0[1].n128_u64[0];
  v2 = v0[2];
  v3 = v0[5];
  if (v0[3].n128_u8[0])
  {
    if (v0[3].n128_u8[0] == 1)
    {
      v3 = v0[2];
    }
  }

  else
  {
    v3 = vaddq_f64(v3, v2);
  }

  v5 = v3;
  return v1(&v5, v3, v2);
}

id sub_18921A0F0(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return [v2 setTransform_];
}

uint64_t sub_18921A1C4@<X0>(unint64_t *a1@<X2>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  v6 = v3;
  [v6 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, a1);
  swift_dynamicCast();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = swift_allocObject();
  *(result + 16) = v9;
  *a3 = result;
  return result;
}

id sub_18921A498()
{
  if (([v0 sourcePreviewMorphsToMenu] & 1) != 0 || (result = objc_msgSend(v0, sel_sourcePreview)) == 0)
  {
    v2 = [v0 uiController];
    v3 = [v2 menuConfiguration];

    v4 = [v3 sourcePreview];
    return v4;
  }

  return result;
}

id sub_18921A544(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = Strong;
  if ((a2 & 1) == 0)
  {
    v8 = [Strong _secondaryDismissalPreviewFor_];
LABEL_15:
    v11 = v8;

    return v11;
  }

  v6 = [Strong stashedDismissalPreview];

  if (v6)
  {
    v7 = [v6 view];
  }

  else
  {
    v7 = 0;
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = [v9 contentPlatterView];

  if (v7)
  {
    if (v10)
    {

      swift_unknownObjectRelease();
      if (v10 == v7)
      {
        return 0;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  if (v10)
  {

LABEL_14:
    v5 = swift_unknownObjectUnownedLoadStrong();
    v8 = [v5 stashedDismissalPreview];
    goto LABEL_15;
  }

  return 0;
}

id sub_18921A678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_18921A7F8(uint64_t a1)
{
  swift_beginAccess();
  result = *(a1 + 16);
  if (result)
  {
    return [result performAllAnimations];
  }

  return result;
}

id sub_18921A848(char a1, id a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    [a2 removeFromSuperview];
  }

  swift_beginAccess();
  result = *(a3 + 16);
  if (result)
  {
    return [result performAllCompletions];
  }

  return result;
}

void sub_18921A8B0(uint64_t a1)
{
  v3 = [v1 morphAnimation];
  if (v3)
  {
    v9 = v3;
    if ([v1 isDismissTransition] && !a1)
    {
      v4 = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.2];
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 16) = v9;
      aBlock[4] = sub_18921C368;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_188A4A8F0;
      aBlock[3] = &block_descriptor_31;
      v7 = _Block_copy(aBlock);
      v8 = v9;

      [v5 _animateUsingSpringBehavior_tracking_animations_completion_];

      _Block_release(v7);
    }

    else
    {
    }
  }
}

void sub_18921AA54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_18A4A8338() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v5 = ~v8;
    v4 = v3 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v3 + 64);
    v7 = v3;
  }

  v11 = 0;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v11;
    v13 = v6;
    v14 = v11;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v7 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_1891D7EE8();
      return;
    }

    while (1)
    {
      [v16 setAlpha_];

      v11 = v14;
      v6 = v15;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18A4A8378())
      {
        swift_unknownObjectRelease();
        type metadata accessor for _UIReparentingView();
        swift_dynamicCast();
        v16 = v17;
        v14 = v11;
        v15 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_18921AC94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = [v3 morphAnimation];
  if (result)
  {
    v7 = result;
    v8 = *(result + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion);

    v10[4] = a1;
    v10[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_188A4A8F0;
    v10[3] = &block_descriptor_25_7;
    v9 = _Block_copy(v10);

    [v8 addNonIncrementingCompletion_];
    _Block_release(v9);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_18921B028@<Q0>(uint64_t a1@<X8>)
{
  v3 = [v1 presentedLayout];
  [v3 menu];
  v29 = *&v31.a;
  v30 = *&v31.c;
  tx = v31.tx;
  ty = v31.ty;
  v6 = v32;
  v7 = v33;
  v8 = v34;

  if (_UIContextMenuReduceMotionEnabled_0())
  {
    v28 = xmmword_18A64B720;
    v27 = xmmword_18A64B730;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v31, 0.2, 0.2);
    v27 = *&v31.a;
    v28 = *&v31.c;
    v9 = v31.tx;
    v10 = v31.ty;
  }

  v11 = [v1 presentedLayout];
  v12 = [v11 type];

  if (v12 != 3)
  {
    v13 = [v1 presentedLayout];
    [v13 preview];

    v35.origin.x = _UIContextMenuItemFrameFromLayout(&v31);
    v23 = ty;
    v24 = v6;
    x = v35.origin.x;
    v26 = v7;
    y = v35.origin.y;
    width = v35.size.width;
    v25 = v9;
    height = v35.size.height;
    MinX = CGRectGetMinX(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    tx = _UIClamp_0(MinX, tx, MaxX);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MinY = CGRectGetMinY(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v7 = v26;
    v38.size.width = width;
    v38.size.height = height;
    v6 = v24;
    v9 = v25;
    MaxY = CGRectGetMaxY(v38);
    ty = _UIClamp_0(MinY, v23, MaxY);
  }

  *a1 = v29;
  *(a1 + 16) = v30;
  *(a1 + 32) = tx;
  *(a1 + 40) = ty;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  result = v28;
  *(a1 + 72) = v27;
  *(a1 + 88) = v28;
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  *(a1 + 120) = 0;
  return result;
}

void sub_18921B2D4()
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v1 = [v0 uiController];
  v2 = [v1 dismissalPreviewForStyle:objc_msgSend(v0 clientReturnedPreview:{sel_dismissalStyle), &v48}];

  if (!v2)
  {
    if (v48)
    {
      goto LABEL_13;
    }

    v5 = [v0 sourcePreview];
    if (!v5)
    {
      goto LABEL_13;
    }

    v3 = v5;
    if ([v5 _sourceViewIsInViewHierarchy])
    {
      v6 = [v3 view];
      v7 = [v6 _window];

      if (v7)
      {

        if ([v3 _isVisible])
        {
          v8 = [v3 view];
          v9 = [v8 layer];

          v10 = [v9 presentationLayer];
          if (!v10)
          {
            v11 = [v3 view];
            v10 = [v11 layer];
          }

          [v10 transform];
          CATransform3DGetAffineTransform(&v46, &aBlock);
          tx = v46.tx;
          ty = v46.ty;
          v44 = *&v46.c;
          v45 = *&v46.a;
          v14 = [v3 target];
          v15 = [v14 container];

          v16 = [v3 target];
          [v16 center];
          v18 = v17;
          v20 = v19;

          v21 = objc_allocWithZone(UIPreviewTarget);
          *&aBlock.m13 = v44;
          *&aBlock.m11 = v45;
          aBlock.m21 = tx;
          aBlock.m22 = ty;
          v22 = [v21 initWithContainer:v15 center:&aBlock transform:{v18, v20}];

          v23 = [v3 retargetedPreviewWithTarget_];
          v4 = 0;
LABEL_22:

          v3 = v23;
          goto LABEL_23;
        }
      }
    }

LABEL_12:

LABEL_13:
    v24 = [v0 contentPlatterView];
    if (v24)
    {
      v25 = v24;
      [v24 setHidesCollapsedSourceView_];
    }

    else
    {
      v26 = [v0 uiController];
      v25 = [v26 menuView];

      if (v25)
      {
        v27 = v25;
      }
    }

    v28 = [v0 uiController];
    v29 = [v28 platterTransitionView];

    if (!v25)
    {
      __break(1u);
      return;
    }

    [v25 frame];
    Center = UIRectGetCenter(v30, v31, v32);
    v35 = v34;
    v36 = [objc_allocWithZone(UIView) initWithFrame_];
    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_18921C35C;
    *(v39 + 24) = v38;
    *&aBlock.m21 = sub_188A4B574;
    *&aBlock.m22 = v39;
    *&aBlock.m11 = MEMORY[0x1E69E9820];
    *&aBlock.m12 = 1107296256;
    *&aBlock.m13 = sub_188A4A968;
    *&aBlock.m14 = &block_descriptor_19_9;
    v40 = _Block_copy(&aBlock);
    v10 = v36;

    [v37 performWithoutAnimation_];
    _Block_release(v40);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    v22 = [objc_allocWithZone(UIPreviewParameters) init];
    v41 = [v25 backgroundColor];
    if (!v41)
    {
      v41 = [objc_opt_self() clearColor];
    }

    [v22 setBackgroundColor_];

    v3 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v29 center:{Center, v35}];
    v23 = [objc_allocWithZone(UITargetedPreview) initWithView:v10 parameters:v22 target:v3];

    v4 = sub_18921C35C;
    goto LABEL_22;
  }

  v3 = v2;
  if (([v3 _isVisible] & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = 0;
LABEL_23:
  if ([v0 sourcePreviewMorphsToMenu])
  {
    [v0 setStashedDismissalPivot_];
    v42 = [v3 _resolvedMorphablePreview];

    v3 = v42;
  }

  v43 = [v3 view];
  [v43 _bringAncestorControlledCollectionSubviewToFrontAmongCoplanarPeers];

  [v0 setStashedDismissalPreview_];
  sub_188A55B8C(v4);
}

void sub_18921B9A4(void *a1)
{
  v1 = [a1 layer];
  [v1 setCornerRadius_];
}

void sub_18921B9FC(void *a1, char a2)
{
  v3 = [a1 _accessoryViews];
  sub_188A34624(0, &qword_1EA930348);
  v4 = sub_18A4A7548();

  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_188E4B4C4(i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 setVisible:a2 & 1 animated:1];
  }

LABEL_10:
}

void sub_18921BB18(void *a1)
{
  v2 = v1;
  v4 = [v1 uiController];
  v5 = [v4 platterContainerView];

  v6 = [v2 uiController];
  v7 = [v6 menuConfiguration];

  v69 = [v7 sourcePreview];
  v8 = [v69 target];
  v9 = [v8 container];

  v10 = [v9 _window];
  if (v10)
  {
    v11 = [a1 location];
    v12 = 0.0;
    if (v11 == 2)
    {
      v50 = [v2 uiController];
      v45 = [v50 menuView];

      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      if (v45)
      {
        [v45 frame];
        goto LABEL_10;
      }
    }

    else
    {
      if (v11 != 1)
      {
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        if (!v11)
        {
          v16 = v10;
          [v16 bounds];
          v21 = _UIContextMenuProjectFrameFromViewToView(v16, v5, v17, v18, v19, v20);
          v23 = v22;
          v25 = v24;
          v27 = v26;
          [v16 safeAreaInsets];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = _UIContextMenuMinContainerInsets(v16);
          v37 = UIEdgeInsetsMax(15, v29, v31, v33, v35, v36);
          v12 = UIRectInset(v21, v23, v25, v27, v37, v40, v39, v38);
          v13 = v41;
          v14 = v42;
          v15 = v43;
        }

        goto LABEL_11;
      }

      v44 = [v2 contentPlatterView];
      v13 = 0.0;
      v14 = 0.0;
      v15 = 0.0;
      if (v44)
      {
        v45 = v44;
        [v44 frame];
LABEL_10:
        v12 = v46;
        v13 = v47;
        v14 = v48;
        v15 = v49;
      }
    }

LABEL_11:
    v51 = [v2 _currentPlatformMetrics];
    [v51 baseMenuOffset];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    [a1 anchor];
    v67 = _UIContextMenuAttachmentPoint(&v70);
    v68 = v58;
    [a1 attachmentOffsetWithReferenceFrame_];
    v60 = v53 + v59;
    v62 = v55 + v61;
    [a1 setOffset_];
    v63 = [a1 layer];
    [v63 setZPosition_];

    v72.origin.x = v12;
    v72.origin.y = v13;
    v72.size.width = v14;
    v72.size.height = v15;
    MinX = CGRectGetMinX(v72);
    v73.origin.x = v12;
    v73.origin.y = v13;
    v73.size.width = v14;
    v73.size.height = v15;
    v65 = v60 + MinX + v67 * CGRectGetWidth(v73);
    v74.origin.x = v12;
    v74.origin.y = v13;
    v74.size.width = v14;
    v74.size.height = v15;
    MinY = CGRectGetMinY(v74);
    v75.origin.x = v12;
    v75.origin.y = v13;
    v75.size.width = v14;
    v75.size.height = v15;
    [a1 setCenter_];

    v5 = v69;
    v69 = v51;
  }
}

id _UIContextMenuLiquidMorphPresentationAnimation.init(uiController:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUIController_];

  return v2;
}

id _UIContextMenuLiquidMorphPresentationAnimation.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double _UIContextMenuAttachmentPoint(void *a1)
{
  v1 = *a1 - 1;
  v2 = 0.5;
  if (v1 <= 7)
  {
    v2 = dbl_18A675D98[v1];
  }

  v3 = a1[1];
  if (v3 == 8)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 == 4)
  {
    v4 = v2;
  }

  if (v3 == 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  if (v3 == 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v3 <= 3)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

double _UIContextMenuMinContainerInsets(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  [v3 minimumContainerInsets];
  v5 = v4;

  return v5;
}

double _UIContextMenuActionsAnchorPoint(void *a1)
{
  v1 = *a1 - 1;
  v2 = 0.5;
  if (v1 <= 7)
  {
    v2 = dbl_18A675E18[v1];
  }

  v3 = a1[1];
  if (v3 == 8)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 == 4)
  {
    v4 = v2;
  }

  if (v3 == 2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  if (v3 == 1)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (v3 <= 3)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t objectdestroy_36Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_18921C3EC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) _targetedPreviewForDismissalAnimation];
  v3 = *v1;
  *v1 = v2;
}

void _UIContextMenuGetFromPreview(void *a1, void *a2, double *a3, _OWORD *a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  [v9 size];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = v11;
  a2[3] = v12;
  v13 = [v9 target];
  [v13 center];
  v15 = v14;
  v17 = v16;
  v18 = [v9 target];
  v19 = [v18 container];
  v20 = v10;
  v21 = v19;
  v22 = v20;
  v23 = [v21 traitCollection];
  v24 = _UIContextMenuGetPlatformMetrics([v23 userInterfaceIdiom]);
  v25 = [v24 convertPoint3DBetweenViews];

  if (v25)
  {
    v26 = (v25)[2](v25, v21, v22, v15, v17, 0.0);
    v28 = v27;
    goto LABEL_27;
  }

  v87 = v13;
  v29 = [v21 traitCollection];
  v30 = _UIContextMenuGetPlatformMetrics([v29 userInterfaceIdiom]);
  v31 = [v30 convertPointBetweenViews];

  v32 = v31;
  if (!v31)
  {
    v79 = v18;
    v34 = v21;
    v35 = v22;
    v84 = v34;
    v36 = [v34 layer];
    v83 = v35;
    v37 = [v35 layer];
    v85 = v36;
    v38 = [v36 presentationLayer];
    v80 = v37;
    if (v38)
    {
      v39 = v38;
      v40 = [v37 presentationLayer];
      if (!v40 || (v41 = v37, (_UILayerAncestorsHaveAllBeenCommitted(v85) & 1) == 0))
      {

        v43 = v85;
        goto LABEL_11;
      }

      HaveAllBeenCommitted = _UILayerAncestorsHaveAllBeenCommitted(v37);

      if (HaveAllBeenCommitted)
      {
        v40 = v41;
        v43 = [v85 presentationLayer];

        v80 = [v41 presentationLayer];
LABEL_11:

        v32 = 0;
LABEL_14:
        v44 = [v84 _window];
        v45 = [v83 _window];
        v82 = [v44 windowScene];
        v46 = [v45 windowScene];
        v81 = v45;
        v47 = v44 == v45;
        v13 = v87;
        v77 = v46;
        v78 = v44;
        if (v47)
        {
          v59 = v80;
          [v43 convertPoint:v80 toLayer:{v15, v17}];
          v26 = v60;
          v28 = v61;
        }

        else
        {
          v86 = v43;
          if (v46 && v82 && v82 != v46)
          {
            v48 = v46;
            v49 = [v82 screen];
            v50 = [v49 fixedCoordinateSpace];
            [v50 convertPoint:v84 fromCoordinateSpace:{v15, v17}];
            v52 = v51;
            v54 = v53;

            v55 = [v48 screen];
            v56 = [v55 fixedCoordinateSpace];
            [v83 convertPoint:v56 fromCoordinateSpace:{v52, v54}];
            v26 = v57;
            v28 = v58;

            v32 = 0;
            v13 = v87;

            v59 = v80;
          }

          else
          {
            v62 = [v44 layer];
            v63 = [v81 layer];
            v75 = v62;
            v64 = [v62 presentationLayer];
            v74 = v63;
            if (v64 && (v65 = v64, [v63 presentationLayer], v66 = objc_claimAutoreleasedReturnValue(), v66, v65, v66))
            {
              v73 = [v75 presentationLayer];

              v67 = [v74 presentationLayer];

              v74 = v67;
              v68 = v73;
            }

            else
            {
              v68 = v75;
            }

            v76 = v68;
            v43 = v86;
            [v86 convertPoint:v15 toLayer:{v17, v73}];
            v59 = v80;
            [v80 convertPoint:v74 fromLayer:?];
            v26 = v69;
            v28 = v70;
          }
        }

        v18 = v79;
        goto LABEL_26;
      }

      v32 = 0;
    }

    v43 = v85;
    goto LABEL_14;
  }

  v26 = (*(v31 + 16))(v31, v21, v22, v15, v17);
  v28 = v33;
  v13 = v87;
LABEL_26:

LABEL_27:
  *a3 = v26;
  *(a3 + 1) = v28;
  a3[2] = 0.0;
  v71 = [v9 target];
  v72 = v71;
  if (v71)
  {
    [v71 transform];
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v88 = 0u;
  }

  *a4 = v88;
  a4[1] = v89;
  a4[2] = v90;
}