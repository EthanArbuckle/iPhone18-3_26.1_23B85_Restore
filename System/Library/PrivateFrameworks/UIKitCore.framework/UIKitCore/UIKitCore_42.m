uint64_t sub_188F49818(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_18A4A86C8() & 1) == 0 || (MEMORY[0x18CFDD740](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return MEMORY[0x1EEDC33C8](a1 + v7, a2 + v7);
}

uint64_t UITextFormattingViewController.FormattingStyle.init(styleKey:title:attributeDictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for UITextFormattingViewController.FormattingStyle();
  sub_18A4A27E8();
  return sub_18A4A2698();
}

UITextFormattingViewControllerFormattingStyle __swiftcall UITextFormattingViewController.FormattingStyle._bridgeToObjectiveC()()
{
  v1 = sub_18A4A2668();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - v4;
  v6 = sub_18A4A2808();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v21[1] = *(v0 + 1);
  v21[2] = v10;
  v11 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  (*(v7 + 16))(v9, &v0[*(v11 + 20)], v6);
  v21[0] = sub_18A4A72E8();
  (*(v2 + 16))(v5, &v0[*(v11 + 24)], v1);
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A70C8();
  v12 = objc_allocWithZone(UITextFormattingViewControllerFormattingStyle);
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();

  type metadata accessor for Key(0);
  sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
  v15 = sub_18A4A7088();

  v16 = [v12 initWithStyleKey:v13 title:v14 attributes:v15];

  v20 = v16;
  result._attributes = v19;
  result._title = v18;
  result._styleKey = v17;
  result.super.isa = v20;
  return result;
}

uint64_t sub_188F49C3C@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

uint64_t static UITextFormattingViewController.FormattingStyle._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  if (a1)
  {
    v10 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12 = a1;
    if (_sSo30UITextFormattingViewControllerC5UIKitE0B5StyleV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(v12, v9))
    {
      sub_188F4C0D0(v9, v6);
      if ((*(v11 + 48))(v6, 1, v10) != 1)
      {
        sub_188A3F5FC(v9, &qword_1EA9377B0);

        return sub_188F4C140(v6, a2);
      }

      __break(1u);
    }
  }

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_18A4A80E8();

  v16 = 0xD000000000000011;
  v17 = 0x800000018A68EE10;
  sub_188F4C084();
  v14 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v14);

  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v15 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v15);

  result = sub_18A4A8398();
  __break(1u);
  return result;
}

void *UITextFormattingViewControllerConfiguration.formattingStyles.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v63 = &v44 - v3;
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_18A4A2808();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v59 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v44 - v17;
  v71 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v45 = *(v71 - 8);
  v18 = MEMORY[0x1EEE9AC00](v71);
  v60 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 formattingStyles];
  if (result)
  {
    v21 = result;
    sub_188F4C084();
    v22 = sub_18A4A7548();

    v23 = v22;
    v58 = v22;
    if (v22 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v23 = v58)
    {
      v25 = 0;
      v56 = v23 & 0xFFFFFFFFFFFFFF8;
      v57 = v23 & 0xC000000000000001;
      v70 = (v45 + 56);
      v50 = (v5 + 56);
      v46 = v5 + 48;
      v49 = (v5 + 32);
      v48 = (v8 + 4);
      v64 = MEMORY[0x1E69E7CC0];
      v47 = (v45 + 48);
      v8 = &selRef_applyViewGeometryToSettings_;
      v51 = i;
      v54 = v7;
      v55 = v4;
      v52 = v15;
      v53 = v10;
      while (1)
      {
        if (v57)
        {
          v28 = sub_188E4A2C0(v25, v23);
        }

        else
        {
          if (v25 >= *(v56 + 16))
          {
            goto LABEL_20;
          }

          v28 = *(v23 + 8 * v25 + 32);
        }

        v5 = v28;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v68 = v25 + 1;
        v69 = v25;
        v67 = *v70;
        v67(v15, 1, 1, v71);
        sub_188A3F5FC(v15, &qword_1EA9377B0);
        v29 = [v5 styleKey];
        v30 = sub_18A4A7288();
        v65 = v31;
        v66 = v30;

        v32 = [v5 title];
        sub_18A4A7288();

        sub_18A4A27E8();
        v33 = [v5 v8[271]];
        type metadata accessor for Key(0);
        sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
        sub_18A4A70A8();

        swift_getKeyPath();
        type metadata accessor for AttributeScopes.UIKitAttributes();
        v34 = v63;
        sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
        sub_18A4A2678();

        v4 = v55;
        (*v50)(v34, 0, 1, v55);
        v35 = v49;
        v7 = v54;
        (*v49)(v54, v34, v4);
        v15 = v52;
        v10 = v53;
        v5 = v61;
        v36 = v59;
        v37 = v65;
        *v59 = v66;
        *(v36 + 8) = v37;
        v38 = v71;
        (*v48)(v36 + *(v71 + 20), v10, v62);
        (*v35)(v36 + *(v38 + 24), v7, v4);
        v67(v36, 0, 1, v38);
        sub_188F4C1A4(v36, v15);
        sub_188F4C1A4(v15, v5);
        if ((*v47)(v5, 1, v38) == 1)
        {
          sub_188A3F5FC(v5, &qword_1EA9377B0);
          v8 = &selRef_applyViewGeometryToSettings_;
          v27 = v68;
          v26 = v69;
        }

        else
        {
          sub_188F4C140(v5, v60);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v68;
          v26 = v69;
          if (isUniquelyReferenced_nonNull_native)
          {
            v40 = v64;
          }

          else
          {
            v40 = sub_188E4BD88(0, v64[2] + 1, 1, v64);
          }

          v42 = v40[2];
          v41 = v40[3];
          v5 = (v42 + 1);
          if (v42 >= v41 >> 1)
          {
            v40 = sub_188E4BD88(v41 > 1, v42 + 1, 1, v40);
          }

          v40[2] = v5;
          v43 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v64 = v40;
          sub_188F4C140(v60, v40 + v43 + *(v45 + 72) * v42);
          v8 = &selRef_applyViewGeometryToSettings_;
        }

        v25 = v26 + 1;
        v23 = v58;
        if (v27 == v51)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      i = sub_18A4A7F68();
    }

    v64 = MEMORY[0x1E69E7CC0];
LABEL_23:

    return v64;
  }

  return result;
}

void UITextFormattingViewControllerConfiguration.formattingStyles.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v8;
  v37 = sub_18A4A2808();
  v9 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v11 = *(v35 - 8);
  v12 = MEMORY[0x1EEE9AC00](v35);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v15 = *(a1 + 16);
    if (v15)
    {
      v29 = v1;
      v44 = MEMORY[0x1E69E7CC0];
      sub_18A4A8208();
      v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v28 = a1;
      v17 = a1 + v16;
      v18 = *(v11 + 72);
      v32 = (v9 + 16);
      v33 = v18;
      v19 = (v5 + 16);
      v34 = v4;
      v31 = (v5 + 16);
      v39 = v14;
      do
      {
        v43 = v15;
        sub_188F4C214(v17, v14);
        v25 = *v14;
        v41 = v14[1];
        v42 = v25;
        v26 = v35;
        (*v32)(v36, v14 + *(v35 + 20), v37);
        v40 = sub_18A4A72E8();
        (*v19)(v38, v14 + *(v26 + 24), v4);
        swift_getKeyPath();
        type metadata accessor for AttributeScopes.UIKitAttributes();
        sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
        sub_18A4A70C8();
        v20 = v43;
        v21 = objc_allocWithZone(UITextFormattingViewControllerFormattingStyle);
        v22 = sub_18A4A7258();
        v23 = sub_18A4A7258();

        type metadata accessor for Key(0);
        sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
        v24 = sub_18A4A7088();

        [v21 initWithStyleKey:v22 title:v23 attributes:{v24, v28}];

        v14 = v39;
        sub_188F4C278(v39);
        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
        v4 = v34;
        v17 += v33;
        v15 = v20 - 1;
        v19 = v31;
      }

      while (v15);

      v2 = v29;
    }

    else
    {
    }

    sub_188F4C084();
    v27 = sub_18A4A7518();
  }

  else
  {
    v27 = 0;
  }

  [v2 setFormattingStyles_];
}

void (*UITextFormattingViewControllerConfiguration.formattingStyles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UITextFormattingViewControllerConfiguration.formattingStyles.getter();
  return sub_188F4AC6C;
}

void sub_188F4AC6C(uint64_t *a1, char a2)
{
  if (a2)
  {

    UITextFormattingViewControllerConfiguration.formattingStyles.setter(v2);
  }

  else
  {
    UITextFormattingViewControllerConfiguration.formattingStyles.setter(*a1);
  }
}

void *UITextFormattingViewControllerConfiguration._formattingStyles.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v45 - v3;
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_18A4A2808();
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v45 - v17;
  v72 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v46 = *(v72 - 8);
  v18 = MEMORY[0x1EEE9AC00](v72);
  v61 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [v1 formattingStyles];
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = v20;
  sub_188F4C084();
  v22 = sub_18A4A7548();

  v23 = v22;
  v59 = v22;
  if (v22 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v23 = v59)
  {
    v25 = 0;
    v57 = v23 & 0xFFFFFFFFFFFFFF8;
    v58 = v23 & 0xC000000000000001;
    v71 = (v46 + 56);
    v51 = (v5 + 56);
    v47 = v5 + 48;
    v50 = (v5 + 32);
    v49 = (v8 + 4);
    v65 = MEMORY[0x1E69E7CC0];
    v48 = (v46 + 48);
    v8 = &selRef_applyViewGeometryToSettings_;
    v52 = i;
    v55 = v7;
    v56 = v4;
    v53 = v15;
    v54 = v10;
    while (1)
    {
      if (v58)
      {
        v28 = sub_188E4A2C0(v25, v23);
      }

      else
      {
        if (v25 >= *(v57 + 16))
        {
          goto LABEL_21;
        }

        v28 = *(v23 + 8 * v25 + 32);
      }

      v5 = v28;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v69 = v25 + 1;
      v70 = v25;
      v68 = *v71;
      v68(v15, 1, 1, v72);
      sub_188A3F5FC(v15, &qword_1EA9377B0);
      v29 = [v5 styleKey];
      v30 = sub_18A4A7288();
      v66 = v31;
      v67 = v30;

      v32 = [v5 title];
      sub_18A4A7288();

      sub_18A4A27E8();
      v33 = [v5 v8[271]];
      type metadata accessor for Key(0);
      sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
      sub_18A4A70A8();

      swift_getKeyPath();
      type metadata accessor for AttributeScopes.UIKitAttributes();
      v34 = v64;
      sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
      sub_18A4A2678();

      v4 = v56;
      (*v51)(v34, 0, 1, v56);
      v35 = v50;
      v7 = v55;
      (*v50)(v55, v34, v4);
      v15 = v53;
      v10 = v54;
      v5 = v62;
      v36 = v60;
      v37 = v66;
      *v60 = v67;
      *(v36 + 8) = v37;
      v38 = v72;
      (*v49)(v36 + *(v72 + 20), v10, v63);
      (*v35)(v36 + *(v38 + 24), v7, v4);
      v68(v36, 0, 1, v38);
      sub_188F4C1A4(v36, v15);
      sub_188F4C1A4(v15, v5);
      if ((*v48)(v5, 1, v38) == 1)
      {
        sub_188A3F5FC(v5, &qword_1EA9377B0);
        v8 = &selRef_applyViewGeometryToSettings_;
        v27 = v69;
        v26 = v70;
      }

      else
      {
        sub_188F4C140(v5, v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v69;
        v26 = v70;
        if (isUniquelyReferenced_nonNull_native)
        {
          v40 = v65;
        }

        else
        {
          v40 = sub_188E4BD88(0, v65[2] + 1, 1, v65);
        }

        v42 = v40[2];
        v41 = v40[3];
        v5 = (v42 + 1);
        if (v42 >= v41 >> 1)
        {
          v40 = sub_188E4BD88(v41 > 1, v42 + 1, 1, v40);
        }

        v40[2] = v5;
        v43 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v65 = v40;
        sub_188F4C140(v61, v40 + v43 + *(v46 + 72) * v42);
        v8 = &selRef_applyViewGeometryToSettings_;
      }

      v25 = v26 + 1;
      v23 = v59;
      if (v27 == v52)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    i = sub_18A4A7F68();
  }

  v65 = MEMORY[0x1E69E7CC0];
LABEL_24:

  return v65;
}

void UITextFormattingViewControllerConfiguration._formattingStyles.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18A4A2668();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v26 - v8;
  v34 = sub_18A4A2808();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  v11 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v27 = v1;
    v41 = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v26[1] = a1;
    v16 = a1 + v15;
    v17 = *(v11 + 72);
    v29 = (v9 + 16);
    v30 = v17;
    v18 = (v5 + 16);
    v31 = v4;
    v36 = (v5 + 16);
    do
    {
      v40 = v14;
      sub_188F4C214(v16, v13);
      v23 = *v13;
      v38 = *(v13 + 1);
      v39 = v23;
      v24 = v32;
      (*v29)(v33, &v13[*(v32 + 20)], v34);
      v37 = sub_18A4A72E8();
      (*v18)(v35, &v13[*(v24 + 24)], v4);
      swift_getKeyPath();
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
      sub_18A4A70C8();
      v19 = objc_allocWithZone(UITextFormattingViewControllerFormattingStyle);
      v20 = sub_18A4A7258();
      v21 = sub_18A4A7258();

      type metadata accessor for Key(0);
      sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
      v22 = sub_18A4A7088();

      [v19 initWithStyleKey:v20 title:v21 attributes:v22];

      sub_188F4C278(v13);
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v4 = v31;
      v16 += v30;
      v14 = v40 - 1;
      v18 = v36;
    }

    while (v40 != 1);

    v2 = v27;
  }

  else
  {
  }

  sub_188F4C084();
  v25 = sub_18A4A7518();

  [v2 setFormattingStyles_];
}

void (*UITextFormattingViewControllerConfiguration._formattingStyles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = UITextFormattingViewControllerConfiguration._formattingStyles.getter();
  return sub_188F4BA48;
}

void sub_188F4BA48(uint64_t *a1, char a2)
{
  if (a2)
  {

    UITextFormattingViewControllerConfiguration._formattingStyles.setter(v2);
  }

  else
  {
    UITextFormattingViewControllerConfiguration._formattingStyles.setter(*a1);
  }
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE0B5StyleV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93E6E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_18A4A2668();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A2808();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v25 - v14);
  v31 = a2;
  sub_188A3F5FC(a2, &qword_1EA9377B0);
  v16 = [a1 styleKey];
  v17 = sub_18A4A7288();
  v25 = v18;
  v26 = v17;

  v19 = [a1 title];
  sub_18A4A7288();

  v28 = v12;
  sub_18A4A27E8();
  v20 = [a1 attributes];
  type metadata accessor for Key(0);
  sub_188BEB2A0(&qword_1ED48E360, type metadata accessor for Key);
  sub_18A4A70A8();

  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_188BEB2A0(&qword_1ED48BEC0, type metadata accessor for AttributeScopes.UIKitAttributes);
  sub_18A4A2678();
  (*(v8 + 56))(v6, 0, 1, v7);
  v21 = v27;
  (*(v8 + 32))(v27, v6, v7);
  v22 = v25;
  *v15 = v26;
  v15[1] = v22;
  v23 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  (*(v29 + 32))(v15 + *(v23 + 20), v28, v30);
  (*(v8 + 32))(v15 + *(v23 + 24), v21, v7);
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);
  sub_188F4C1A4(v15, v31);
  return 1;
}

uint64_t _sSo30UITextFormattingViewControllerC5UIKitE0B5StyleV26_forceBridgeFromObjectiveC_6resultySo0abcdbF0C_AESgztFZ_0(void *a1, uint64_t a2)
{
  result = _sSo30UITextFormattingViewControllerC5UIKitE0B5StyleV34_conditionallyBridgeFromObjectiveC_6resultSbSo0abcdbF0C_AESgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    sub_18A4A80E8();

    sub_188F4C084();
    v3 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v3);

    MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
    type metadata accessor for UITextFormattingViewController.FormattingStyle();
    v4 = sub_18A4A8AA8();
    MEMORY[0x18CFE22D0](v4);

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

unint64_t sub_188F4C084()
{
  result = qword_1EA934438;
  if (!qword_1EA934438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA934438);
  }

  return result;
}

uint64_t sub_188F4C0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F4C140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F4C1A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F4C214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F4C278(uint64_t a1)
{
  v2 = type metadata accessor for UITextFormattingViewController.FormattingStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_188F4C2FC()
{
  result = sub_18A4A2808();
  if (v1 <= 0x3F)
  {
    result = sub_18A4A2668();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_188F4C4CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____UIFlexInteractionLittleGlowView_glassInfo] = a1;
  v28.receiver = v1;
  v28.super_class = _s14LittleGlowViewCMa();

  v4 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setUserInteractionEnabled_];
  v5 = [v4 layer];
  v6 = sub_18A4A7258();
  [v5 setName_];

  v7 = [v4 layer];
  [v7 setAllowsHitTesting_];

  v8 = [v4 layer];
  [v8 setCornerRadius_];

  v9 = [v4 layer];
  [v9 setCornerCurve_];

  v10 = [v4 layer];
  [v10 setShadowPathIsBounds_];

  v11 = [v4 layer];
  [v11 setShadowOffset_];

  v12 = [v4 layer];
  LODWORD(v13) = 1.0;
  [v12 setShadowOpacity_];

  v14 = [v4 layer];
  [v4 frame];
  [v14 setShadowRadius_];

  v15 = [v4 layer];
  v16 = [objc_opt_self() whiteColor];
  v17 = [v16 CGColor];

  [v15 setShadowColor_];
  v18 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v19 = sub_18A4A7668();
  [v18 setValue:v19 forKey:*MEMORY[0x1E69799C0]];

  v20 = [v4 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18A64BFB0;
  *(v21 + 56) = sub_188B0F668();
  *(v21 + 32) = v18;
  v22 = v18;
  v23 = sub_18A4A7518();

  [v20 setFilters_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitUserInterfaceStyle;
  *(inited + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges<A>(_:handler:)(inited, sub_188F4D7E8, 0, ObjectType);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_18A64BFB0;
  *(v25 + 32) = &type metadata for MaterialBackdropContextTrait;
  *(v25 + 40) = &off_1ED48F1B8;
  v26 = swift_allocObject();
  *(v26 + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)(v25, sub_188F4D814, v26, ObjectType);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_188F4D00C(0, 1);

  return v4;
}

void sub_188F4C9BC(void *a1)
{
  v2 = sub_18A4A56B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v44[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v44[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44[-v19];
  v21 = sub_188E1AF8C();
  v52 = a1;
  v22 = [a1 traitCollection];
  v23 = sub_188E1AF8C();

  v24 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v54 = v21;
  sub_188C6AB28(&v21[v24], v20);
  v25 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v26 = *(v8 + 56);
  sub_188C6AB28(v20, v10);
  v53 = v23;
  sub_188C6AB28(v23 + v25, &v10[v26]);
  v27 = *(v3 + 48);
  if (v27(v10, 1, v2) == 1)
  {
    sub_188A3F5FC(v20, &qword_1EA935CD0);
    if (v27(&v10[v26], 1, v2) == 1)
    {

      sub_188A3F5FC(v10, &qword_1EA935CD0);
      return;
    }

    goto LABEL_6;
  }

  sub_188C6AB28(v10, v17);
  if (v27(&v10[v26], 1, v2) == 1)
  {
    sub_188A3F5FC(v20, &qword_1EA935CD0);
    (*(v3 + 8))(v17, v2);
LABEL_6:
    sub_188A3F5FC(v10, &unk_1EA934850);
    goto LABEL_7;
  }

  v40 = *(v3 + 32);
  v46 = v25;
  v41 = v48;
  v40(v48, &v10[v26], v2);
  sub_188F4D81C(&qword_1EA930AA0, 255, MEMORY[0x1E697FC78]);
  v45 = sub_18A4A7248();
  v47 = v3;
  v42 = *(v3 + 8);
  v43 = v41;
  v25 = v46;
  v42(v43, v2);
  sub_188A3F5FC(v20, &qword_1EA935CD0);
  v42(v17, v2);
  v3 = v47;
  sub_188A3F5FC(v10, &qword_1EA935CD0);
  if (v45)
  {

    return;
  }

LABEL_7:
  v28 = &v54[v24];
  v29 = v54;
  v30 = v50;
  sub_188C6AB28(v28, v50);
  v31 = v27(v30, 1, v2);
  v33 = v53;
  if (v31 == 1)
  {
    sub_188A3F5FC(v30, &qword_1EA935CD0);
  }

  else
  {
    sub_188F4D81C(&qword_1EA9311B8, v32, _s14LittleGlowViewCMa);
    sub_18A4A5678();
    (*(v3 + 8))(v30, v2);
  }

  v34 = v51;
  sub_188C6AB28(v33 + v25, v51);
  if (v27(v34, 1, v2) == 1)
  {

    sub_188A3F5FC(v34, &qword_1EA935CD0);
  }

  else
  {
    v35 = v49;
    (*(v3 + 32))(v49, v34, v2);
    sub_188F4D81C(&qword_1EA9311B8, v36, _s14LittleGlowViewCMa);
    sub_18A4A5668();
    v37 = sub_18A4A5688();
    v38 = BYTE4(v37) & 1;
    if ((v37 & 0x100000000) != 0)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *&v37;
    }

    sub_188F4D00C(*&v39, v38);

    (*(v3 + 8))(v35, v2);
  }
}

void sub_188F4D00C(uint64_t a1, int a2)
{
  v49 = a2;
  v48 = *&a1;
  v51 = sub_18A4A5318();
  v3 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18A4A5DA8();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - v14;
  v52 = v2;
  v16 = *&v2[OBJC_IVAR____UIFlexInteractionLittleGlowView_glassInfo];
  if (!v16)
  {
    goto LABEL_16;
  }

  sub_188B90950(v16 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_variant, v11);
  sub_188F4D784(v11, v15);
  if (qword_1ED48C6B8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v9, qword_1ED48C538);
  if (_s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(v15, v17))
  {
    goto LABEL_11;
  }

  if (qword_1ED48C360 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1ED48C370);
  if (_s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(v15, v18))
  {
    goto LABEL_11;
  }

  if (qword_1ED48C390 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_1ED48C3A0);
  if (_s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(v15, v19))
  {
LABEL_11:
    if (qword_1ED48C360 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v9, qword_1ED48C370);
    v21 = _s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(v15, v20);
    sub_188EA974C(v15);
    goto LABEL_20;
  }

  sub_188EA974C(v15);
  v22 = *(v16 + OBJC_IVAR____TtCE5UIKitCSo18_UIFlexInteraction9GlassInfo_tint);
  if (v22)
  {
    v23 = v22;
    [v23 _luminance];
    v25 = v24;

    v26 = pow(v25, 1.25);
    v27 = 0.7;
  }

  else
  {
LABEL_16:
    if (v49)
    {
      v28 = v52;
      v29 = [v52 traitCollection];
      [v29 userInterfaceStyle];

      v21 = 0;
      goto LABEL_21;
    }

    v26 = pow(v48, 1.25);
    v27 = 0.9;
  }

  _UILerp_2(v26, v27);
  v21 = 0;
LABEL_20:
  v28 = v52;
LABEL_21:
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v50);
  sub_18A4A5E58();
  sub_18A4A5308();
  sub_18A4A5D98();

  (*(v3 + 8))(v5, v51);
  v30 = sub_18A4A4588();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4578();
  sub_18A4A4568();
  (*(v31 + 8))(v33, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9377F8);
  v34 = *(sub_18A4A4598() - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18A64BFB0;
  v37 = v36 + v35;
  *(v37 + 16) = v62;
  *v37 = v61;
  (*(v34 + 104))();
  sub_18A4A45A8();

  *&v38 = v64;
  v39 = v70;
  if (v21)
  {
    v40 = 0.5;
  }

  else
  {
    v40 = v66;
  }

  if (v21)
  {
    v41 = 0.5;
  }

  else
  {
    v41 = v64;
  }

  if (v21)
  {
    v42 = 0.5;
  }

  else
  {
    v42 = v68;
  }

  v43 = [v28 layer];
  v44 = objc_opt_self();
  v53 = v63;
  v54 = v41;
  v55 = v65;
  v56 = v40;
  v57 = v67;
  v58 = v42;
  v59 = v69;
  v60 = v39;
  v45 = [v44 valueWithCAColorMatrix_];
  v46 = sub_18A4A7258();
  [v43 setValue:v45 forKeyPath:v46];
}

id sub_188F4D720(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F4D768(uint64_t a1)
{
  v1 = BYTE4(a1) & 1;
  if ((a1 & 0x100000000) != 0)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = *&a1;
  }

  sub_188F4D00C(*&v2, v1);
}

uint64_t sub_188F4D784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F4D81C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_188F4D8DC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, void (*a5)(void))
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9334C0);
  a5(0);
  swift_dynamicCast();
  a3(v8, a2);
}

uint64_t sub_188F4D97C(uint64_t a1)
{
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188F5231C(a1, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  return sub_188F4DAA8(v4);
}

uint64_t sub_188F4DA1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  return sub_188F5231C(v1 + v3, a1, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_188F4DAA8(uint64_t a1)
{
  v3 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  swift_beginAccess();
  sub_188F4E6A0(a1, v6);
  swift_endAccess();
  sub_188F5231C(v6, v5, type metadata accessor for UIPromptBackgroundView.Configuration);
  v7 = *(v6 + *(v3 + 56));
  if (*(v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) == v7 || (*(v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) = v7, (v7 & 1) == 0))
  {
    v8 = v5;
  }

  else
  {
    if (qword_1EA92FCB8 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v3, qword_1EA92FCC8);
  }

  sub_188F4E704(v8);
  sub_188F523D0(a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  return sub_188F523D0(v5, type metadata accessor for UIPromptBackgroundView.Configuration);
}

void (*sub_188F4DC1C(uint64_t *a1))(void **a1, char a2)
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
  v6 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  v5[5] = v8;
  v5[6] = v9;
  swift_beginAccess();
  return sub_188F4DCE0;
}

void sub_188F4DCE0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2)
  {
    v4 = v3[5];
  }

  else
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = v5 + v3[6];
    sub_188F5231C(v7, v3[5], type metadata accessor for UIPromptBackgroundView.Configuration);
    v8 = *(v7 + *(v6 + 56));
    if (*(v5 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) == v8 || (*(v5 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) = v8, (v8 & 1) == 0))
    {
      v4 = v3[5];
      v9 = v4;
    }

    else
    {
      if (qword_1EA92FCB8 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v3[4], qword_1EA92FCC8);
      v4 = v3[5];
    }

    sub_188F4E704(v9);
    sub_188F523D0(v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  }

  free(v4);

  free(v3);
}

uint64_t sub_188F4DDFC()
{
  v1 = v0 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight;
  swift_beginAccess();
  return *v1;
}

id sub_188F4DE48(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight];
  swift_beginAccess();
  *v5 = a1;
  v5[8] = a2 & 1;
  return [v2 setNeedsLayout];
}

id (*sub_188F4DEB8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_188F4DF1C;
}

id sub_188F4DF1C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *UIPromptBackgroundView.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  if (qword_1EA92FDB0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1EA92FDC0);
  sub_188F5231C(v6, &v2[v4], type metadata accessor for UIPromptBackgroundView.Configuration);
  v7 = &v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight];
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView;
  *&v2[v8] = [objc_allocWithZone(UIVisualEffectView) init];
  v9 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView;
  v10 = objc_opt_self();
  LOBYTE(v27) = 0;
  *(&v27 + 1) = [v10 whiteColor];
  v28 = 0;
  v29 = [v10 whiteColor];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 2;
  v11 = objc_allocWithZone(type metadata accessor for _UISoftOutlineView());
  *&v2[v9] = _UISoftOutlineView.init(frame:configuration:)(&v27, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_latencyEffectView;
  *&v2[v12] = [objc_allocWithZone(UIVisualEffectView) init];
  v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect] = 0;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for UIPromptBackgroundView(0);
  v13 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v13 setUserInteractionEnabled_];
  v14 = [v13 layer];
  [v14 setHitTestsAsOpaque_];

  v15 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView;
  v16 = [*&v13[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView] layer];
  [v16 setAllowsHitTesting_];

  [v13 addSubview_];
  [v13 setClipsToBounds_];
  [v13 addSubview_];
  v17 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView;
  [*&v13[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView] setCompositingMode_];
  [v13 addSubview_];
  v18 = [v13 layer];
  [v18 setAllowsGroupBlending_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for UITraitActiveAppearance;
  *(inited + 40) = &protocol witness table for UITraitActiveAppearance;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_188AF3C24(inited, sub_188F51ED4, v20, &unk_1EFACEF48, sub_188C3B270, &block_descriptor_67);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  v21 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect;
  LODWORD(v15) = v13[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect];
  v22 = &v13[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration];
  swift_beginAccess();
  v23 = v22[*(v5 + 56)];
  v24 = a1;
  if (v15 != v23)
  {
    v13[v21] = v23;
    v24 = a1;
    if (v23)
    {
      if (qword_1EA92FCB8 != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v5, qword_1EA92FCC8);
    }
  }

  sub_188F4E704(v24);

  sub_188F523D0(a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  return v13;
}

uint64_t sub_188F4E434()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = result + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
    swift_beginAccess();
    sub_188F5231C(v5, v2, type metadata accessor for UIPromptBackgroundView.Configuration);
    v6 = *(v5 + *(v0 + 56));
    if (v4[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect] == v6 || (v4[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect] = v6, (v6 & 1) == 0))
    {
      v7 = v2;
    }

    else
    {
      if (qword_1EA92FCB8 != -1)
      {
        swift_once();
      }

      v7 = __swift_project_value_buffer(v0, qword_1EA92FCC8);
    }

    sub_188F4E704(v7);

    return sub_188F523D0(v2, type metadata accessor for UIPromptBackgroundView.Configuration);
  }

  return result;
}

id sub_188F4E5CC(id result)
{
  if (*(v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) == 1)
  {
    if (result)
    {
      if (qword_1EA92FCE0 != -1)
      {
        swift_once();
      }

      v2 = qword_1EA92FCF0;
    }

    else
    {
      if (qword_1EA92FCB8 != -1)
      {
        swift_once();
      }

      v2 = qword_1EA92FCC8;
    }

    v3 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
    v4 = __swift_project_value_buffer(v3, v2);

    return sub_188F4E704(v4);
  }

  return result;
}

uint64_t sub_188F4E6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_188F4E704(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v49 - v7;
  v8 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v49 - v12);
  v14 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v51 = v14[5];
  sub_188F5231C(a1 + v51, v13, type metadata accessor for UIPromptBackgroundView.FillStyle);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_188F523D0(v13, type metadata accessor for UIPromptBackgroundView.FillStyle);
    v15 = [objc_opt_self() clearColor];
  }

  else
  {
    v15 = *v13;
  }

  [v2 setBackgroundColor_];

  v16 = [v2 layer];
  v17 = [*(a1 + v14[6]) CGColor];
  [v16 setBorderColor_];

  v18 = [v2 layer];
  [v18 setBorderWidth_];

  v19 = [v2 layer];
  [v19 setShadowPathIsBounds_];

  v20 = [v2 layer];
  v21 = [*(a1 + v14[8]) CGColor];
  [v20 setShadowColor_];

  v22 = [v2 layer];
  [v22 setShadowRadius_];

  v23 = [v2 layer];
  LODWORD(v24) = *(a1 + v14[10]);
  [v23 setShadowOpacity_];

  v25 = [v2 layer];
  [v25 setShadowOffset_];

  v26 = *&v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView];
  v27 = [v2 traitCollection];
  v28 = [v27 userInterfaceStyle];

  sub_188F4EDD0(v28);
  sub_188A34624(0, &unk_1EA931120);
  v29 = sub_18A4A7518();

  [v26 setBackgroundEffects_];

  v30 = *&v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_latencyEffectView];
  if (*(a1 + v14[12]) == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18A64B710;
    *(v31 + 32) = [objc_allocWithZone(_UIIntelligenceLatencyEffect) initWithMode_];
  }

  v32 = sub_18A4A7518();

  [v30 setBackgroundEffects_];

  sub_188F5231C(a1 + v51, v10, type metadata accessor for UIPromptBackgroundView.FillStyle);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v33 = v50;
    sub_188B0D644(v10, v50, type metadata accessor for _Glass._GlassVariant);
    v34 = v49;
    sub_188F5231C(v33, v49, type metadata accessor for _Glass._GlassVariant);
    *(&v57 + 1) = type metadata accessor for _Glass(0);
    *&v58[0] = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v56);
    _Glass.init(_:smoothness:)(v34, boxed_opaque_existential_0, 0.0);
    UIView._background.setter(&v56);
    sub_188F523D0(v33, type metadata accessor for _Glass._GlassVariant);
  }

  else
  {
    sub_188F523D0(v10, type metadata accessor for UIPromptBackgroundView.FillStyle);
    *&v58[0] = 0;
    v56 = 0u;
    v57 = 0u;
    UIView._background.setter(&v56);
  }

  v36 = *&v2[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView];
  v37 = (a1 + v14[13]);
  v38 = v37[1];
  v53 = *v37;
  v54 = v38;
  v55[0] = v37[2];
  *(v55 + 9) = *(v37 + 41);
  v39 = (v36 + OBJC_IVAR____TtC5UIKit18_UISoftOutlineView_configuration);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  *(v58 + 9) = *(v39 + 41);
  v57 = v41;
  v58[0] = v42;
  v56 = v40;
  v43 = v53;
  v44 = v54;
  v45 = v55[0];
  *(v39 + 41) = *(v55 + 9);
  v39[1] = v44;
  v39[2] = v45;
  *v39 = v43;
  sub_188DF0BF8(&v53, v52);
  v46 = sub_188F52F24(&v56);
  (*((*MEMORY[0x1E69E7D40] & *v36) + 0x80))(v46);
  v47 = [v2 nextResponder];
  [v47 promptBackgroundViewDidUpdateConfiguration_];

  return [v2 setNeedsLayout];
}

id sub_188F4EDD0(id a1)
{
  v3 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v27 - v7);
  v9 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v10 = *(v9 + 20);
  sub_188F5231C(v1 + v10, v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
  LODWORD(v11) = swift_getEnumCaseMultiPayload();
  if (v11 > 1)
  {
    goto LABEL_5;
  }

  if (v11)
  {
    v13 = [objc_opt_self() effectWithStyle_];
LABEL_10:
    a1 = v13;
    goto LABEL_13;
  }

  sub_188F523D0(v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v11 = [objc_opt_self() emptyEffect];
  a1 = v11;
  if (!v11)
  {
    __break(1u);
LABEL_5:
    if (v11 == 2)
    {
      v12 = v8 + 1;
      if (a1 != 2)
      {
        v12 = v8;
      }

      v13 = [objc_opt_self() effectWithStyle_];
      goto LABEL_10;
    }

    result = [objc_opt_self() emptyEffect];
    if (!result)
    {
      __break(1u);
      return result;
    }

    a1 = result;
    sub_188F523D0(v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
  }

LABEL_13:
  v15 = *(v9 + 48);
  if (*(v1 + v15))
  {
    v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18A64E3F0;
    v17 = objc_opt_self();
    v18 = [v17 sharedLight];
    v19 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource_];
    [v19 setActivationTransitionDirection_];
    [v19 setDeactivationTransitionDirection_];

    *(v16 + 32) = v19;
    *(v16 + 40) = a1;
    v28 = v16;
    sub_188F5231C(v1 + v10, v5, type metadata accessor for UIPromptBackgroundView.FillStyle);
    LODWORD(v18) = swift_getEnumCaseMultiPayload();
    v20 = a1;
    if (v18 == 3)
    {

      sub_188F523D0(v5, type metadata accessor for UIPromptBackgroundView.FillStyle);
      v16 = MEMORY[0x1E69E7CC0];
      v28 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_188F523D0(v5, type metadata accessor for UIPromptBackgroundView.FillStyle);
    }

    v21 = &byte_1EFAB8D28;
    for (i = qword_1EFAB8D18; i; --i)
    {
      v23 = *v21++;
      if (v23 == *(v1 + v15))
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18A64B710;
        v25 = [v17 sharedShimmeringLight];
        v26 = [objc_allocWithZone(_UIIntelligenceEdgeLightEffect) initWithLightSource:v25 radius:1 region:8.0];
        [v26 setActivationTransitionDirection_];
        [v26 setDeactivationTransitionDirection_];

        *(inited + 32) = v26;
        sub_18920B9C0(inited);

        return v28;
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18A64B710;
    *(v16 + 32) = a1;
  }

  return v16;
}

id sub_188F4F2C8()
{
  v1 = [v0 layer];
  [v0 _cornerRadius];
  [v1 setCornerRadius_];

  v2 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView];
  [v0 _cornerRadius];
  [v2 _setContinuousCornerRadius_];
  v3 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView];
  [v0 _cornerRadius];
  [v3 _setContinuousCornerRadius_];
  v4 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_latencyEffectView];
  [v0 _cornerRadius];

  return [v4 _setContinuousCornerRadius_];
}

id sub_188F4F3A8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for UIPromptBackgroundView(0);
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_latencyEffectView];
  [v0 bounds];
  [v3 setFrame_];
  v4 = &v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration];
  swift_beginAccess();
  if (v4[8] == 1)
  {
    v5 = 0.0;
    if (!*v4)
    {
      v6 = &v0[OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight];
      swift_beginAccess();
      if (*(v6 + 8))
      {
        v7 = 50.0;
      }

      else
      {
        v7 = *v6;
      }

      [v0 bounds];
      Width = CGRectGetWidth(v11);
      if (v7 < Width)
      {
        Width = v7;
      }

      v5 = Width * 0.5;
    }
  }

  else
  {
    v5 = *v4;
  }

  return [v0 _setCornerRadius_];
}

id UIPromptBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UIPromptBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPromptBackgroundView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static UIPromptBackgroundView.CornerRadius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t UIPromptBackgroundView.CornerRadius.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x18CFE37E0](v2);
  }

  else
  {
    MEMORY[0x18CFE37E0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x18CFE3810](v3);
  }
}

uint64_t UIPromptBackgroundView.CornerRadius.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x18CFE37E0](v3);
  }

  else
  {
    MEMORY[0x18CFE37E0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFE3810](v4);
  }

  return sub_18A4A88E8();
}

uint64_t sub_188F4F814()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18A4A8888();
  if (v2 == 1)
  {
    if (v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x18CFE37E0](v3);
  }

  else
  {
    MEMORY[0x18CFE37E0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFE3810](v4);
  }

  return sub_18A4A88E8();
}

uint64_t sub_188F4F890(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t UIPromptBackgroundView.DynamicMaterial.init(light:dark:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t UIPromptBackgroundView.DynamicMaterial.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x18CFE37E0](*v0);
  return MEMORY[0x18CFE37E0](v1);
}

uint64_t UIPromptBackgroundView.DynamicMaterial.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_188F4F9B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

uint64_t sub_188F4FA0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  MEMORY[0x18CFE37E0](v2);
  return sub_18A4A88E8();
}

void UIPromptBackgroundView.FillStyle.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_188F5231C(v1, v7, type metadata accessor for UIPromptBackgroundView.FillStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *v7;
      v11 = v7[1];
      MEMORY[0x18CFE37E0](2);
      MEMORY[0x18CFE37E0](v10);
      MEMORY[0x18CFE37E0](v11);
    }

    else
    {
      sub_188B0D644(v7, v4, type metadata accessor for _Glass._GlassVariant);
      MEMORY[0x18CFE37E0](3);
      sub_18A4A2F58();
      sub_188F52384();
      sub_18A4A71A8();
      MEMORY[0x18CFE37E0](v4[v2[5]]);
      MEMORY[0x18CFE37E0](v4[v2[6]]);
      v12 = *&v4[v2[7]];
      sub_18A4A88A8();
      if (v12)
      {
        v13 = v12;
        sub_18A4A7C98();
      }

      sub_188F523D0(v4, type metadata accessor for _Glass._GlassVariant);
    }
  }

  else
  {
    v9 = *v7;
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x18CFE37E0](1);
      MEMORY[0x18CFE37E0](v9);
    }

    else
    {
      MEMORY[0x18CFE37E0](0);
      sub_18A4A7C98();
    }
  }
}

uint64_t UIPromptBackgroundView.CannedIntelligenceEffect.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

void UIPromptBackgroundView.Configuration.cornerRadius.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t UIPromptBackgroundView.Configuration.cornerRadius.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.fillStyle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);

  return sub_188F52430(a1, v3);
}

id UIPromptBackgroundView.Configuration.borderColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 24));

  return v1;
}

void UIPromptBackgroundView.Configuration.borderColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t UIPromptBackgroundView.Configuration.borderWidth.setter(double a1)
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

id UIPromptBackgroundView.Configuration.shadowColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 32));

  return v1;
}

void UIPromptBackgroundView.Configuration.shadowColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t UIPromptBackgroundView.Configuration.shadowRadius.setter(double a1)
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.shadowOpacity.setter(float a1)
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.shadowOffset.setter(double a1, double a2)
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v6 = (v2 + *(result + 44));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.intelligenceEffect.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.intelligenceEffect.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.init(cornerRadius:fillStyle:borderColor:borderWidth:shadowColor:shadowRadius:shadowOpacity:shadowOffset:shouldUseIntelligenceEffects:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, float a9@<S2>, double a10@<D3>, double a11@<D4>)
{
  v21 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v21;
  v22 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  sub_188F5231C(a2, a6 + v22[5], type metadata accessor for UIPromptBackgroundView.FillStyle);
  *(a6 + v22[6]) = a3;
  *(a6 + v22[7]) = a7;
  *(a6 + v22[8]) = a4;
  *(a6 + v22[9]) = a8;
  *(a6 + v22[10]) = a9;
  v23 = (a6 + v22[11]);
  *v23 = a10;
  v23[1] = a11;
  *(a6 + v22[12]) = a5;
  v24 = objc_opt_self();
  v25 = [v24 whiteColor];
  v26 = [v24 whiteColor];
  result = sub_188F523D0(a2, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v28 = a6 + v22[13];
  *v28 = 0;
  *(v28 + 8) = v25;
  *(v28 + 16) = 0;
  *(v28 + 24) = v26;
  *(v28 + 32) = 0;
  *(v28 + 40) = 0;
  *(v28 + 48) = 0;
  *(v28 + 56) = 2;
  *(a6 + v22[14]) = 0;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.init(cornerRadius:fillColor:borderColor:borderWidth:shadowColor:shadowRadius:shadowOpacity:shadowOffset:shouldUseIntelligenceEffects:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, float a9@<S2>, double a10@<D3>, double a11@<D4>)
{
  v22 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  *v24 = a2;
  swift_storeEnumTagMultiPayload();
  *a6 = v25;
  *(a6 + 8) = a1;
  v26 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  sub_188F5231C(v24, a6 + v26[5], type metadata accessor for UIPromptBackgroundView.FillStyle);
  *(a6 + v26[6]) = a3;
  *(a6 + v26[7]) = a7;
  *(a6 + v26[8]) = a4;
  *(a6 + v26[9]) = a8;
  *(a6 + v26[10]) = a9;
  v27 = (a6 + v26[11]);
  *v27 = a10;
  v27[1] = a11;
  *(a6 + v26[12]) = a5;
  v28 = objc_opt_self();
  v29 = a2;
  v30 = [v28 whiteColor];
  v31 = [v28 whiteColor];

  result = sub_188F523D0(v24, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v33 = a6 + v26[13];
  *v33 = 0;
  *(v33 + 8) = v30;
  *(v33 + 16) = 0;
  *(v33 + 24) = v31;
  *(v33 + 32) = 0;
  *(v33 + 40) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 2;
  *(a6 + v26[14]) = 0;
  return result;
}

id UIPromptBackgroundView.Configuration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v3 = v2[5];
  v4 = objc_opt_self();
  *(a1 + v3) = [v4 systemBackgroundColor];
  type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v2[6]) = [v4 clearColor];
  *(a1 + v2[7]) = 0x3FF0000000000000;
  *(a1 + v2[8]) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:1.0];
  *(a1 + v2[9]) = 0x4038000000000000;
  *(a1 + v2[10]) = 1047904911;
  v5 = (a1 + v2[11]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[12]) = 0;
  v6 = [v4 whiteColor];
  result = [v4 whiteColor];
  v8 = a1 + v2[13];
  *v8 = 0;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0;
  *(v8 + 24) = result;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 2;
  *(a1 + v2[14]) = 0;
  return result;
}

id sub_188F507F0()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_1EA92FDC0);
  v1 = __swift_project_value_buffer(v0, qword_1EA92FDC0);
  return UIPromptBackgroundView.Configuration.init()(v1);
}

uint64_t sub_188F5083C()
{
  v47 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v47);
  v1 = (&v47 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v49 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v47 - v23;
  __swift_allocate_value_buffer(v24, qword_1EA92FCC8);
  v48 = __swift_project_value_buffer(v2, qword_1EA92FCC8);
  if (qword_1EA92FDB0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v2, qword_1EA92FDC0);
  sub_188F5231C(v25, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F5231C(v4, v7, type metadata accessor for UIPromptBackgroundView.Configuration);
  v7[v2[12]] = 1;
  sub_188F523D0(v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  *v1 = xmmword_18A653370;
  swift_storeEnumTagMultiPayload();
  sub_188F5231C(v7, v10, type metadata accessor for UIPromptBackgroundView.Configuration);
  v26 = v2[5];
  sub_188F523D0(&v10[v26], type metadata accessor for UIPromptBackgroundView.FillStyle);
  sub_188B0D644(v1, &v10[v26], type metadata accessor for UIPromptBackgroundView.FillStyle);
  sub_188F523D0(v7, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F5231C(v10, v13, type metadata accessor for UIPromptBackgroundView.Configuration);
  *&v13[v2[11]] = xmmword_18A653380;
  sub_188F523D0(v10, type metadata accessor for UIPromptBackgroundView.Configuration);
  v27 = objc_opt_self();
  v28 = [v27 blackColor];
  v29 = [v28 colorWithAlphaComponent_];

  sub_188F5231C(v13, v16, type metadata accessor for UIPromptBackgroundView.Configuration);
  v30 = v2[8];

  *&v16[v30] = v29;
  sub_188F523D0(v13, type metadata accessor for UIPromptBackgroundView.Configuration);
  v31 = [v27 whiteColor];
  v32 = [v31 colorWithAlphaComponent_];

  v33 = [v27 whiteColor];
  v34 = [v33 colorWithAlphaComponent_];

  LOBYTE(v52) = 0;
  *(&v52 + 1) = v32;
  *&v53 = 0;
  *(&v53 + 1) = v34;
  __asm { FMOV            V0.2D, #2.0 }

  *v54 = _Q0;
  *&v54[16] = 0;
  v54[24] = 0;
  sub_188F5231C(v16, v19, type metadata accessor for UIPromptBackgroundView.Configuration);
  v40 = &v19[v2[13]];
  *&v56[9] = *(v40 + 41);
  v41 = *(v40 + 1);
  v55[0] = *v40;
  v55[1] = v41;
  *v56 = *(v40 + 2);
  sub_188DF0BF8(&v52, v51);
  sub_188F52F24(v55);
  sub_188F52F24(&v52);
  v42 = v53;
  *v40 = v52;
  *(v40 + 1) = v42;
  *(v40 + 2) = *v54;
  *(v40 + 41) = *&v54[9];
  sub_188F523D0(v16, type metadata accessor for UIPromptBackgroundView.Configuration);
  v43 = v49;
  sub_188F5231C(v19, v49, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v43 + v2[12]) = 0;
  sub_188F523D0(v19, type metadata accessor for UIPromptBackgroundView.Configuration);
  v44 = v50;
  sub_188F5231C(v43, v50, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v44 + v2[10]) = 1053609165;
  sub_188F523D0(v43, type metadata accessor for UIPromptBackgroundView.Configuration);
  v45 = v48;
  sub_188F5231C(v44, v48, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v45 + v2[9]) = 0x4026000000000000;
  return sub_188F523D0(v44, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t UIPromptBackgroundView.Configuration.intelligenceEffect(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(a2 + *(result + 48)) = v4;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.fillStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  v5 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);
  sub_188F523D0(a2 + v5, type metadata accessor for UIPromptBackgroundView.FillStyle);
  return sub_188F5231C(a1, a2 + v5, type metadata accessor for UIPromptBackgroundView.FillStyle);
}

uint64_t UIPromptBackgroundView.Configuration.shadowOffset(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_188F5231C(v3, a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v8 = (a1 + *(result + 44));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

void UIPromptBackgroundView.Configuration.shadowColor(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  v5 = (a2 + *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 32));

  objc_storeStrong(v5, a1);
}

uint64_t UIPromptBackgroundView.Configuration.shadowOpacity(_:)@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  sub_188F5231C(v2, a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(a1 + *(result + 40)) = a2;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.shadowRadius(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_188F5231C(v2, a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(a1 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_188F51020()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EA92FCF0);
  v4 = __swift_project_value_buffer(v0, qword_1EA92FCF0);
  if (qword_1EA92FCB8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA92FCC8);
  sub_188F5231C(v5, v2, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F5231C(v2, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v4 + *(v0 + 48)) = 2;
  return sub_188F523D0(v2, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_188F51170()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EA937808);
  v4 = __swift_project_value_buffer(v0, qword_1EA937808);
  if (qword_1EA92FCE0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA92FCF0);
  sub_188F5231C(v5, v2, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F5231C(v2, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v4 + *(v0 + 48)) = 3;
  return sub_188F523D0(v2, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_188F512C0()
{
  v0 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EA92F4B0);
  v4 = __swift_project_value_buffer(v0, qword_1EA92F4B0);
  if (qword_1EA92FCE0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA92FCF0);
  sub_188F5231C(v5, v2, type metadata accessor for UIPromptBackgroundView.Configuration);
  sub_188F5231C(v2, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  *(v4 + *(v0 + 56)) = 1;
  return sub_188F523D0(v2, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t sub_188F51410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_188F5231C(v6, a3, type metadata accessor for UIPromptBackgroundView.Configuration);
}

uint64_t UIPromptBackgroundView.Configuration.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x18CFE37E0](v2);
  }

  else
  {
    MEMORY[0x18CFE37E0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x18CFE3810](v3);
  }

  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  UIPromptBackgroundView.FillStyle.hash(into:)();
  sub_18A4A7C98();
  v5 = *(v0 + v4[7]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v5);
  sub_18A4A7C98();
  v6 = *(v0 + v4[9]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v6);
  sub_18A4A88B8();
  v7 = (v0 + v4[11]);
  v8 = *v7;
  if (*v7 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v8);
  v9 = v7[1];
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x18CFE3810](*&v9);
  MEMORY[0x18CFE37E0](*(v0 + v4[12]));
  return sub_18A4A88A8();
}

id UIPromptBackgroundView.Configuration.fillColor.getter()
{
  v1 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  sub_188F5231C(v0 + *(v4 + 20), v3, type metadata accessor for UIPromptBackgroundView.FillStyle);
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v3;
  }

  sub_188F523D0(v3, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v5 = [objc_opt_self() clearColor];

  return v5;
}

id sub_188F516E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  sub_188F5231C(a1 + *(v7 + 20), v6, type metadata accessor for UIPromptBackgroundView.FillStyle);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_188F523D0(v6, type metadata accessor for UIPromptBackgroundView.FillStyle);
    result = [objc_opt_self() clearColor];
  }

  else
  {
    result = *v6;
  }

  *a2 = result;
  return result;
}

uint64_t sub_188F517E8(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);
  v5 = v3;
  sub_188F523D0(a2 + v4, type metadata accessor for UIPromptBackgroundView.FillStyle);
  *(a2 + v4) = v5;
  type metadata accessor for UIPromptBackgroundView.FillStyle(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t UIPromptBackgroundView.Configuration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);
  sub_188F523D0(v1 + v3, type metadata accessor for UIPromptBackgroundView.FillStyle);
  *(v1 + v3) = a1;
  type metadata accessor for UIPromptBackgroundView.FillStyle(0);

  return swift_storeEnumTagMultiPayload();
}

void (*UIPromptBackgroundView.Configuration.fillColor.modify(uint64_t *a1))(void ***a1, char a2)
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
  *(v4 + 8) = v1;
  v6 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 24) = v8;
  v10 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);
  *(v5 + 32) = v10;
  sub_188F5231C(v1 + v10, v9, type metadata accessor for UIPromptBackgroundView.FillStyle);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_188F523D0(v9, type metadata accessor for UIPromptBackgroundView.FillStyle);
    v11 = [objc_opt_self() clearColor];
  }

  else
  {
    v11 = *v9;
  }

  *v5 = v11;
  return sub_188F51A28;
}

void sub_188F51A28(void ***a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = (*a1)[3];
  v5 = **a1;
  v6 = (*a1)[1];
  if (a2)
  {
    v7 = v5;
    sub_188F523D0(&v6[v3], type metadata accessor for UIPromptBackgroundView.FillStyle);
    *&v6[v3] = v7;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_188F523D0(&v6[v3], type metadata accessor for UIPromptBackgroundView.FillStyle);
    *&v6[v3] = v5;
    swift_storeEnumTagMultiPayload();
  }

  free(v4);

  free(v2);
}

uint64_t UIPromptBackgroundView.Configuration.cornerRadius(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  result = sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

void UIPromptBackgroundView.Configuration.borderColor(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  v5 = (a2 + *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 24));

  objc_storeStrong(v5, a1);
}

uint64_t UIPromptBackgroundView.Configuration.borderWidth(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_188F5231C(v2, a1, type metadata accessor for UIPromptBackgroundView.Configuration);
  result = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  *(a1 + *(result + 28)) = a2;
  return result;
}

uint64_t UIPromptBackgroundView.Configuration.fillColor(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a1;
  swift_storeEnumTagMultiPayload();
  sub_188F5231C(v2, a2, type metadata accessor for UIPromptBackgroundView.Configuration);
  v8 = *(type metadata accessor for UIPromptBackgroundView.Configuration(0) + 20);
  v9 = a1;
  sub_188F523D0(a2 + v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
  return sub_188B0D644(v7, a2 + v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
}

uint64_t sub_188F51D2C(void (*a1)(_BYTE *))
{
  sub_18A4A8888();
  a1(v3);
  return sub_18A4A88E8();
}

uint64_t sub_188F51D8C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_18A4A8888();
  a3(v5);
  return sub_18A4A88E8();
}

uint64_t sub_188F51DF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18A4A8888();
  a4(v6);
  return sub_18A4A88E8();
}

uint64_t _s5UIKit22UIPromptBackgroundViewC9FillStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v31 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v31 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v31 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9378C8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  v22 = (&v31 + *(v21 + 56) - v19);
  sub_188F5231C(a1, &v31 - v19, type metadata accessor for UIPromptBackgroundView.FillStyle);
  sub_188F5231C(a2, v22, type metadata accessor for UIPromptBackgroundView.FillStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_188F5231C(v20, v14, type metadata accessor for UIPromptBackgroundView.FillStyle);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      v26 = *v14 == *v22;
    }

    else
    {
      sub_188F5231C(v20, v17, type metadata accessor for UIPromptBackgroundView.FillStyle);
      v24 = *v17;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_15:
        sub_188F52EBC(v20);
LABEL_16:
        v26 = 0;
        return v26 & 1;
      }

      v29 = *v22;
      sub_188A34624(0, &qword_1ED490230);
      v26 = sub_18A4A7C88();
    }

LABEL_18:
    sub_188F523D0(v20, type metadata accessor for UIPromptBackgroundView.FillStyle);
    return v26 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_188F5231C(v20, v8, type metadata accessor for UIPromptBackgroundView.FillStyle);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_188F523D0(v8, type metadata accessor for _Glass._GlassVariant);
      goto LABEL_15;
    }

    v27 = v22;
    v28 = v32;
    sub_188B0D644(v27, v32, type metadata accessor for _Glass._GlassVariant);
    v26 = _s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(v8, v28);
    sub_188F523D0(v28, type metadata accessor for _Glass._GlassVariant);
    sub_188F523D0(v8, type metadata accessor for _Glass._GlassVariant);
    goto LABEL_18;
  }

  sub_188F5231C(v20, v11, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v25 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_15;
  }

  if (*v11 != *v22 || v25 != v22[1])
  {
    sub_188F523D0(v20, type metadata accessor for UIPromptBackgroundView.FillStyle);
    goto LABEL_16;
  }

  sub_188F523D0(v20, type metadata accessor for UIPromptBackgroundView.FillStyle);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_188F5231C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_188F52384()
{
  result = qword_1EA937828;
  if (!qword_1EA937828)
  {
    sub_18A4A2F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937828);
  }

  return result;
}

uint64_t sub_188F523D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_188F52430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptBackgroundView.FillStyle(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s5UIKit22UIPromptBackgroundViewC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if (v4 == 0.0)
    {
      if (v5 != 0.0)
      {
        LOBYTE(v6) = 0;
      }

      if ((v6 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v5 == 0.0)
      {
        v6 = 0;
      }

      if (v6 != 1)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (v4 != v5)
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      goto LABEL_27;
    }
  }

  v7 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  if ((_s5UIKit22UIPromptBackgroundViewC9FillStyleO2eeoiySbAE_AEtFZ_0(a1 + v7[5], a2 + v7[5]) & 1) == 0 || (sub_188A34624(0, &qword_1ED490230), (sub_18A4A7C88() & 1) == 0) || *(a1 + v7[7]) != *(a2 + v7[7]) || (sub_18A4A7C88() & 1) == 0 || *(a1 + v7[9]) != *(a2 + v7[9]) || *(a1 + v7[10]) != *(a2 + v7[10]) || ((v8 = v7[11], v9 = *(a1 + v8), v10 = *(a1 + v8 + 8), v11 = (a2 + v8), v9 == *v11) ? (v12 = v10 == v11[1]) : (v12 = 0), !v12 || *(a1 + v7[12]) != *(a2 + v7[12])))
  {
LABEL_27:
    v13 = 0;
    return v13 & 1;
  }

  v13 = *(a1 + v7[14]) ^ *(a2 + v7[14]) ^ 1;
  return v13 & 1;
}

unint64_t sub_188F52608()
{
  result = qword_1EA937830;
  if (!qword_1EA937830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937830);
  }

  return result;
}

unint64_t sub_188F52660()
{
  result = qword_1EA937838;
  if (!qword_1EA937838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937838);
  }

  return result;
}

unint64_t sub_188F52700()
{
  result = qword_1EA937848;
  if (!qword_1EA937848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937848);
  }

  return result;
}

uint64_t sub_188F5279C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188F527EC()
{
  result = type metadata accessor for UIPromptBackgroundView.Configuration(319);
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

void sub_188F52AA4()
{
  sub_188A34624(319, qword_1ED4913C0);
  if (v0 <= 0x3F)
  {
    _s3__C5StyleOMa_0(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for _Glass._GlassVariant(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_188F52B7C()
{
  type metadata accessor for UIPromptBackgroundView.FillStyle(319);
  if (v0 <= 0x3F)
  {
    sub_188A34624(319, qword_1ED4913C0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_188F52CCC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_configuration;
  if (qword_1EA92FDB0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  v4 = __swift_project_value_buffer(v3, qword_1EA92FDC0);
  sub_188F5231C(v4, v1 + v2, type metadata accessor for UIPromptBackgroundView.Configuration);
  v5 = v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_intrinsicHeight;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_effectView;
  *(v1 + v6) = [objc_allocWithZone(UIVisualEffectView) init];
  v7 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_fresnelView;
  v8 = objc_opt_self();
  LOBYTE(v11) = 0;
  *(&v11 + 1) = [v8 whiteColor];
  v12 = 0;
  v13 = [v8 whiteColor];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 2;
  v9 = objc_allocWithZone(type metadata accessor for _UISoftOutlineView());
  *(v1 + v7) = _UISoftOutlineView.init(frame:configuration:)(&v11, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_latencyEffectView;
  *(v1 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptBackgroundView_focusChangesEffect) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_188F52EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9378C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_188F52F90(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_188F53040();
}

void sub_188F530A0(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem;
  v4 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem];
  if (v4)
  {
    v5 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem];
  }

  else
  {
    v6 = [v1 tabBar];
    v5 = [v6 selectedItem];

    if (!v5)
    {
      goto LABEL_8;
    }

    v4 = 0;
  }

  v7 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  swift_beginAccess();
  v8 = *&v1[v7];

  v9 = v4;
  v10 = sub_18903AA14(v5, v8);

  if (v10)
  {
    [v10 setSelected_];
  }

LABEL_8:
  v11 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = a1;

  v13 = v12;
  if (a1 || (v14 = [v1 tabBar], v13 = objc_msgSend(v14, sel_selectedItem), v14, v13))
  {
    v15 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v16 = *&v1[v15];

    v17 = sub_18903AA14(v13, v16);

    if (v17)
    {
      [v17 setSelected_];
    }
  }
}

void sub_188F53254(unint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex;
  v4 = *(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex);
  v5 = *(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  if (a2)
  {
    if (v5)
    {
      return;
    }

    *(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint) = 0x3FE0000000000000;
    v6 = 0;
    goto LABEL_12;
  }

  if (v4 != a1)
  {
    LOBYTE(v5) = 1;
  }

  if (v5)
  {
    v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v9 = *(v2 + v8);
    if ((v9 & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v10 = *(v9 + 8 * a1 + 32);
LABEL_11:
        Strong = swift_unknownObjectWeakLoadStrong();

        v6 = Strong;
LABEL_12:
        sub_188F530A0(v6);
        sub_188B80AE8(1, 0);
        return;
      }

      __break(1u);
      return;
    }

    v10 = sub_188E49850(a1, v9);

    goto LABEL_11;
  }
}

void sub_188F53378(void *a1)
{
  v2 = v1;
  v4 = &selRef_convertPoint_toCoordinateSpace_;
  if (![v1 currentMorphTarget])
  {
    v5 = sub_188F53960(a1);
    if ((v6 & 1) == 0)
    {
      sub_188F53254(v5, 0);
    }
  }

  [a1 locationInView_];
  v8 = v7;
  v10 = v9;
  v11 = [a1 state];
  if (v11 > 3)
  {
    if ((v11 - 4) >= 2)
    {
      return;
    }

    v12 = &v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
    v13 = v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8];
    *v12 = 0;
    v12[8] = 1;
    if (v13)
    {
      return;
    }

    *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint] = 0x3FE0000000000000;
    sub_188F530A0(0);
    goto LABEL_27;
  }

  if (v11 == 1)
  {
    if ([v1 currentMorphTarget])
    {
      sub_188B80AE8(0, 0);
    }

    if (v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8])
    {
      goto LABEL_21;
    }

    v14 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
    v15 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v16 = *&v2[v15];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 8 * v14 + 32);
LABEL_20:
        [v17 frame];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v44.origin.x = v19;
        v44.origin.y = v21;
        v44.size.width = v23;
        v44.size.height = v25;
        v26 = v8 - CGRectGetMinX(v44);
        v45.origin.x = v19;
        v45.origin.y = v21;
        v45.size.width = v23;
        v45.size.height = v25;
        *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint] = v26 / CGRectGetWidth(v45);
        sub_188B80AE8(1, 0);
LABEL_21:
        v27 = &v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureInitialLocation];
        *v27 = v8;
        *(v27 + 1) = v10;
        v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_shouldReselectHighlightedItemOnLift] = 1;
        return;
      }

      __break(1u);
LABEL_64:
      v30 = sub_18A4A7F68();
      if (!v30)
      {
        goto LABEL_51;
      }

      goto LABEL_33;
    }

LABEL_61:

    v17 = sub_188E49850(v14, v16);

    goto LABEL_20;
  }

  if (v11 == 2)
  {
    if ([v1 currentMorphTarget])
    {
      v28 = [v1 tabBar];
      v29 = [(UITabBar *)v28 _updateMorphTargetBlock];

      if (v29)
      {
        v29[2](v29, 0);
        _Block_release(v29);
      }
    }

    if (vabdd_f64(v8, *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureInitialLocation]) >= 4.0)
    {
      v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_shouldReselectHighlightedItemOnLift] = 0;
    }

LABEL_27:

    sub_188B80AE8(1, 0);
    return;
  }

  if (v11 != 3)
  {
    return;
  }

  if ([v1 currentMorphTarget])
  {
    [v1 selectCollapseTabIfPossible];
    goto LABEL_56;
  }

  if (v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8])
  {
LABEL_56:
    v39 = &v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
    v40 = v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8];
    *v39 = 0;
    v39[8] = 1;
    if ((v40 & 1) == 0)
    {
      *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint] = 0x3FE0000000000000;
      sub_188F530A0(0);
      sub_188B80AE8(1, 0);
    }

    return;
  }

  v16 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
  v14 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v4 = *&v2[v14];
  if (v4 >> 62)
  {
    goto LABEL_64;
  }

  v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_51;
  }

LABEL_33:
  v41 = v14;
  v42 = v16;

  v31 = 0;
  v16 = &selRef_secondaryRecipientIdentifiers;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v32 = sub_188E49850(v31, v4);
    }

    else
    {
      if (v31 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v32 = *(v4 + 8 * v31 + 32);
    }

    v33 = v32;
    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = [v2 tabBar];
    v35 = [v14 selectedItem];

    if (!Strong)
    {
      break;
    }

    if (!v35)
    {

      v35 = v33;
      goto LABEL_45;
    }

    sub_188A34624(0, &qword_1EA9306B0);
    v14 = sub_18A4A7C88();

    if (v14)
    {
      goto LABEL_49;
    }

LABEL_46:
    v36 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    ++v31;
    if (v36 == v30)
    {

      v14 = v41;
      v16 = v42;
      goto LABEL_51;
    }
  }

  if (v35)
  {
LABEL_45:

    goto LABEL_46;
  }

LABEL_49:

  v14 = v41;
  v16 = v42;
  if (v42 == v31 && v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_shouldReselectHighlightedItemOnLift] != 1)
  {
    goto LABEL_56;
  }

LABEL_51:
  v37 = *&v2[v14];
  if ((v37 & 0xC000000000000001) != 0)
  {

    v38 = sub_188E49850(v16, v37);

LABEL_55:
    [v38 performPrimaryAction];

    goto LABEL_56;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v38 = *(v37 + 8 * v16 + 32);
    goto LABEL_55;
  }

  __break(1u);
}

unint64_t sub_188F53960(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView];
  [a1 locationInView_];
  v4 = v3;
  [v2 bounds];
  MidY = CGRectGetMidY(v27);
  v6 = [v1 tabBar];
  v7 = [v6 selectedItem];

  if (v7)
  {
    v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v9 = *&v1[v8];

    v10 = sub_18903AA14(v7, v9);

    if (v10)
    {
      [v10 frame];
      v25.x = v4;
      v25.y = MidY;
      if (CGRectContainsPoint(v28, v25))
      {
        v11 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
        swift_beginAccess();
        v12 = *&v1[v11];

        v13 = sub_188FE3904(v10, v12);
        v15 = v14;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v13 = 0;
  v15 = 1;
LABEL_8:
  v16 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (v17 >> 62)
  {
LABEL_30:
    v18 = sub_18A4A7F68();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = 0;
LABEL_12:
    v24 = v13;
    v13 = v19;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_188E49850(v13, v17);
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v20 = *(v17 + 8 * v13 + 32);
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if (v15)
      {
        v21 = v20;
        [v20 frame];
        v26.x = v4;
        v26.y = MidY;
        v22 = CGRectContainsPoint(v29, v26);

        if (v22)
        {
          v15 = 0;
          if (v19 != v18)
          {
            goto LABEL_12;
          }

          break;
        }
      }

      else
      {
      }

      ++v13;
      if (v19 == v18)
      {
        v13 = v24;
        break;
      }
    }
  }

  return v13;
}

unsigned __int8 *sub_188F53BF8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 tabBar];
  objc_allocWithZone(type metadata accessor for _UITabButton());
  v9 = a1;
  sub_188B7FF08(a2, &aBlock);
  v10 = sub_189203EDC(v9, v31, a2, v8);
  *&aBlock = 0x7FEFFFFFFFFFFFFFLL;
  BYTE8(aBlock) = 0;
  v24 = 0x7FEFFFFFFFFFFFFFLL;
  LOBYTE(v25) = 0;
  v26 = 0x7FEFFFFFFFFFFFFFLL;
  LOBYTE(v27) = 0;
  v28 = 0x7FEFFFFFFFFFFFFFLL;
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v11 = v10;
  UIView.cornerConfiguration.setter(&aBlock);

  if ([v9 systemItem] == 8 && (v4[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch] & 1) == 0)
  {
    v16 = v11[OBJC_IVAR____UITabButton_overrideItemDisplayMode];
    v11[OBJC_IVAR____UITabButton_overrideItemDisplayMode] = 2;
    if (v16 != 2)
    {
      sub_1892060EC(1);
    }

    v17 = &v11[OBJC_IVAR____UITabButton_matchMoveIdentifierForImage];
    *v17 = 0xD000000000000026;
    *(v17 + 1) = 0x800000018A693CF0;

    sub_189202C38();
    v18 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = objc_allocWithZone(UIAction);

    v14 = sub_18A4A7258();
    v26 = sub_188F59E74;
    v27 = v18;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v15 = &block_descriptor_143;
  }

  else
  {
    v12 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v13 = objc_allocWithZone(UIAction);

    v14 = sub_18A4A7258();
    v26 = sub_188F59E6C;
    v27 = v12;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v15 = &block_descriptor_139_0;
  }

  v24 = sub_188BFF280;
  v25 = v15;
  v19 = _Block_copy(&aBlock);

  v20 = [v13 initWithTitle:v14 image:0 identifier:0 discoverabilityTitle:0 attributes:0 state:0 handler:{v19, aBlock, *(&aBlock + 1)}];
  _Block_release(v19);

  v21 = v20;
  [v21 setSubtitle_];
  [v21 setSelectedImage_];

  [v11 addAction:v21 forControlEvents:0x2000];
  if (a3)
  {
    [(UITabBarItem *)v9 _setTabBarButton:v11];
  }

  return v11;
}

void sub_188F53F88()
{
  v1 = v0;
  v2 = [v0 tabBar];
  v3 = [v2 traitCollection];

  if (!sub_188A84438())
  {
    goto LABEL_3;
  }

  v4 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction;
  if (*&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction])
  {
    goto LABEL_3;
  }

  v11 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  swift_beginAccess();
  v12 = *&v1[v11];
  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = sub_18A4A7F68();

    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_12:
    v14 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
    v15 = [v1 tabBar];
    v16 = v14;
    [v15 addInteraction_];

    v10 = *&v1[v4];
    *&v1[v4] = v16;
    goto LABEL_13;
  }

  if (*(v12 + 16))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (sub_188A84438())
  {

    return;
  }

  v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction;
  v6 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction];
  if (!v6)
  {

    return;
  }

  v7 = v6;
  v8 = [v1 tabBar];
  v9 = v7;
  [v8 removeInteraction_];

  v10 = *&v1[v5];
  *&v1[v5] = 0;
LABEL_13:
}

id sub_188F5416C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem, swift_beginAccess(), v4 = *(v0 + v3), , v5 = sub_18903AA14(v2, v4), v2, , (result = v5) == 0))
  {
    v7 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if (!(v8 >> 62))
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_5:
      v9 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return *(v8 + 8 * v9 + 32);
        }

        __break(1u);
        return result;
      }

      v10 = sub_188E49850(v9, v8);

      return v10;
    }

    result = sub_18A4A7F68();
    if (result)
    {
      goto LABEL_5;
    }
  }

  return result;
}

void sub_188F542AC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction);
  if (v2)
  {
    v3 = &v2[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_state];
    *v3 = 0;
    v3[8] = 2;
    v4 = floor(*&v2[OBJC_IVAR____TtC5UIKit24_UIScrollAwayInteraction_progress]);
    v5 = v2;
    sub_188F9133C(v4);
    sub_188F9133C(0.0);
  }

  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))() & 1) == 0 && [v1 currentMorphTarget] == 2)
  {
    v6 = [v1 tabBar];
    v7 = [(UITabBar *)v6 _updateMorphTargetBlock];

    if (v7)
    {
      v7[2](v7, 0);

      _Block_release(v7);
    }
  }
}

uint64_t sub_188F543F4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = 15.0;
  if (result < 5)
  {
    v3 = 24.0;
  }

  v4 = 0x4040000000000000;
  if ((result > 3) | a2 & 1)
  {
    v4 = 0;
  }

  v5 = 0.0;
  *a3 = v4;
  *(a3 + 8) = (result > 3) | a2 & 1;
  *(a3 + 16) = 0x4010000000000000;
  *(a3 + 24) = v3;
  *(a3 + 32) = 0x4010000000000000;
  if ((result > 3) | a2 & 1)
  {
    v5 = 12.0;
  }

  *(a3 + 40) = v3;
  *(a3 + 48) = v5;
  return result;
}

double sub_188F54448@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x4030000000000000;
  *(a1 + 8) = 0;
  result = 4.0;
  *(a1 + 16) = xmmword_18A6537B0;
  *(a1 + 32) = xmmword_18A6537B0;
  *(a1 + 48) = 0;
  return result;
}

id sub_188F54468()
{
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_188F545E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([*(Strong + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView) lifted] && v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex + 8] == 1)
    {
      v2 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition;
      [*&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition] value];
      v4 = v3;
      [*&v1[v2] presentationValue];
      if (CGFAbs(v4 - v5) < 8.0)
      {
        sub_188BF8BFC(0);
      }
    }
  }
}

uint64_t sub_188F546FC()
{
  sub_188F542AC();
  v1 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar] = 1;
  v2 = v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch];
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch] = 1;
  if ((v2 & 1) == 0)
  {
    v3 = [v0 tabBar];
    v4 = [v3 items];

    v5 = [v0 tabBar];
    v6 = [v5 selectedItem];

    [v0 changeItemsTo:v4 removingItems:0 selectedItem:v6 oldSelectedItem:v6 animate:1];
  }

  v7 = v0[v1];
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden] = v7;
  v8 = 1.0;
  if (v7)
  {
    v8 = 0.0;
  }

  [*&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView] setAlpha_];
  v9 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  result = swift_beginAccess();
  v11 = *&v0[v9];
  if (v11 >> 62)
  {
    result = sub_18A4A7F68();
    v12 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_188E49850(i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
      }

      v14[OBJC_IVAR____UITabButton_ignoresSelectedState] = (v0[v1] & 1) == 0;
    }
  }

  return result;
}

uint64_t sub_188F5493C()
{
  v1 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar] = 0;
  v2 = v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch];
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch] = 0;
  if (v2 == 1)
  {
    v3 = [v0 tabBar];
    v4 = [v3 items];

    v5 = [v0 tabBar];
    v6 = [v5 selectedItem];

    [v0 changeItemsTo:v4 removingItems:0 selectedItem:v6 oldSelectedItem:v6 animate:1];
  }

  v7 = v0[v1];
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden] = v7;
  v8 = 1.0;
  if (v7)
  {
    v8 = 0.0;
  }

  [*&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView] setAlpha_];
  v9 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  result = swift_beginAccess();
  v11 = *&v0[v9];
  if (v11 >> 62)
  {
    result = sub_18A4A7F68();
    v12 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return result;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_188E49850(i, v11);
      }

      else
      {
        v14 = *(v11 + 8 * i + 32);
      }

      v14[OBJC_IVAR____UITabButton_ignoresSelectedState] = (v0[v1] & 1) == 0;
    }
  }

  return result;
}

unint64_t sub_188F54B78(unint64_t result, int64_t a2, double *a3, id a4, void *a5)
{
  if (!(result >> 62))
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 - 1 >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = v6 - 1;
    }

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_15:
    v15 = *a3;
    [a4 bounds];
    Height = CGRectGetHeight(v23);
    v11 = 0.0;
    v13 = 0.0;
    goto LABEL_16;
  }

  v7 = a2;
  v18 = a3;
  v19 = a4;
  v20 = result;
  result = sub_18A4A7F68();
  if (__OFSUB__(result, 1))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  if ((result - 1) < v7)
  {
    v7 = result - 1;
  }

  v21 = sub_18A4A7F68();
  result = v20;
  a4 = v19;
  a3 = v18;
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_6:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = sub_188E49850(v7, result);
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v7 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = *(result + 8 * v7 + 32);
LABEL_10:
  v9 = v8;
  [v8 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  Height = v16;

LABEL_16:
  [a5 setFrame_];
  [a5 setAlpha_];

  return [a5 layoutIfNeeded];
}

void sub_188F54D08(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  swift_beginAccess();
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = v16;
    v18 = [a2 tabBar];
    v19 = v17;
    [v19 center];
    v21 = v20;
    v22 = [v18 _shouldReverseLayoutDirection];
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a8;
    if (v22)
    {
      MinX = CGRectGetMinX(*&v23);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v23);
    }

    [v19 setCenter_];
    [v19 setAlpha_];

    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    UIView._background.setter(&v43);
    v28 = *&v19[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView];
    if (v28)
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v29 = v28;
      UIView._background.setter(&v43);
    }
  }

  if (a3 >> 62)
  {
    v30 = sub_18A4A7F68();
    if (!v30)
    {
      return;
    }
  }

  else
  {
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
      return;
    }
  }

  if (v30 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v30; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v33 = sub_188E49850(i, a3);
      }

      else
      {
        v33 = *(a3 + 8 * i + 32);
      }

      v34 = v33;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_12;
      }

      v36 = Strong;
      swift_beginAccess();
      v37 = *(a4 + 16);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = v36;
        v39 = sub_18A4A8358();

        if (v39)
        {
          v46 = v39;
          type metadata accessor for _UITabButton();
          swift_dynamicCast();
          v39 = v47;
        }
      }

      else if (*(v37 + 16) && (v40 = sub_188B851F4(v36), (v41 & 1) != 0))
      {
        v39 = *(*(v37 + 56) + 8 * v40);
        v42 = v39;
      }

      else
      {
        v39 = 0;
      }

      swift_endAccess();

      if (v39)
      {

        v34 = v39;
      }

      else
      {
LABEL_12:
        [v34 setAlpha_];
        v32 = swift_unknownObjectWeakLoadStrong();
        [v32 setAlpha_];
      }
    }
  }
}

void sub_188F55020(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  [a1 layoutSubviews];
  v55 = a2;
  if (a2 >> 62)
  {
    goto LABEL_53;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v52 = a5 >> 62;
  v48 = a5;
  if (v7)
  {
    v8 = a5;
    v9 = 0;
    v10 = v55 & 0xC000000000000001;
    a5 = v55 & 0xFFFFFFFFFFFFFF8;
    v11 = v8 & 0xFFFFFFFFFFFFFF8;
    v49 = v8 + 32;
    v50 = v8 & 0xC000000000000001;
    v51 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v10)
      {
        v13 = sub_188E49850(v9, v55);
      }

      else
      {
        if (v9 >= *(a5 + 16))
        {
          goto LABEL_49;
        }

        v13 = *(v55 + 8 * v9 + 32);
      }

      v12 = v13;
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
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
        v7 = sub_18A4A7F68();
        goto LABEL_3;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_21;
      }

      v16 = Strong;
      swift_beginAccess();
      v17 = *(a3 + 16);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = v7;
        v19 = a5;
        v20 = v10;
        v21 = v16;
        v22 = sub_18A4A8358();

        if (v22)
        {
          type metadata accessor for _UITabButton();
          swift_dynamicCast();
          v22 = v56;
        }

        v10 = v20;
        a5 = v19;
        v7 = v18;
        v11 = v51;
      }

      else if (*(v17 + 16) && (v23 = sub_188B851F4(v16), (v24 & 1) != 0))
      {
        v22 = *(*(v17 + 56) + 8 * v23);
        v25 = v22;
      }

      else
      {
        v22 = 0;
      }

      swift_endAccess();

      if (v22)
      {

        v12 = v22;
      }

      else
      {
LABEL_21:
        v26 = *(a4 + 16);
        if (v26 && v12 == *(v26 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton))
        {
          goto LABEL_6;
        }

        if (v52)
        {
          if (!sub_18A4A7F68())
          {
            goto LABEL_6;
          }

          v40 = sub_18A4A7F68();
          v28 = v40 - 1;
          if (__OFSUB__(v40, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v27 = *(v11 + 16);
          if (!v27)
          {
            goto LABEL_6;
          }

          v28 = v27 - 1;
          if (__OFSUB__(v27, 1))
          {
            goto LABEL_50;
          }
        }

        if (v9 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v9;
        }

        if (v50)
        {
          v30 = sub_188E49850(v29, v48);
        }

        else
        {
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          if (v29 >= *(v11 + 16))
          {
            goto LABEL_52;
          }

          v30 = *(v49 + 8 * v29);
        }

        v31 = v30;
        [v30 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        [v12 setFrame_];
        [v12 layoutIfNeeded];
      }

LABEL_6:

      ++v9;
    }

    while (v14 != v7);
  }

  if (v52)
  {
    v41 = v48;
    v42 = sub_18A4A7F68();
    if (!v42)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v41 = v48;
    v42 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_55;
    }
  }

  if (v42 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v42; ++i)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v44 = sub_188E49850(i, v41);
    }

    else
    {
      v44 = *(v41 + 8 * i + 32);
    }

    v45 = v44;
    [v44 setAlpha_];
  }

LABEL_55:
  v46 = *&a1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView];
  if (v46)
  {
    [v46 setAlpha_];
  }
}

void sub_188F55418(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a3 + 16);
  v8 = &selRef_recordUIKitDragAndDropDistributionValue_forKey_;
  if (v7)
  {
    [v7 removeFromSuperview];
  }

  if (a4 >> 62)
  {
    v9 = sub_18A4A7F68();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = a4 & 0xC000000000000001;
    v12 = &OBJC_IVAR____UITabButton_item;
    do
    {
      if (v11)
      {
        v14 = sub_188E49850(v10, a4);
      }

      else
      {
        v14 = *(a4 + 8 * v10 + 32);
      }

      v13 = v14;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_22;
      }

      v16 = Strong;
      swift_beginAccess();
      v17 = *(a5 + 16);
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = v11;
        v19 = a4;
        v20 = v12;
        v21 = v8;
        v22 = v16;
        v23 = sub_18A4A8358();

        if (v23)
        {
          type metadata accessor for _UITabButton();
          swift_dynamicCast();
          v23 = v30;
        }

        v8 = v21;
        v12 = v20;
        a4 = v19;
        v11 = v18;
      }

      else if (*(v17 + 16) && (v24 = sub_188B851F4(v16), (v25 & 1) != 0))
      {
        v23 = *(*(v17 + 56) + 8 * v24);
        v26 = v23;
      }

      else
      {
        v23 = 0;
      }

      swift_endAccess();

      if (v23)
      {

        v13 = v23;
      }

      else
      {
LABEL_22:
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = v27;
          [v27 v8[464]];
        }

        [v13 v8[464]];
      }

      ++v10;
    }

    while (v9 != v10);
  }
}

uint64_t sub_188F5563C(uint64_t a1, id *a2)
{
  v3 = v2;
  v6 = [v2 tabBar];
  v7 = [v6 items];

  if (!v7)
  {
    goto LABEL_4;
  }

  sub_188A34624(0, &qword_1EA9306B0);
  v8 = sub_18A4A7548();

  v70 = v8;

  v9 = sub_188FE3930(a1, v8);
  v11 = v10;

  if (v11)
  {

LABEL_4:
    v12 = [v3 tabBar];
    v13 = [v12 items];

    if (v13)
    {
      sub_188A34624(0, &qword_1EA9306B0);
      v14 = sub_18A4A7548();

      return v14;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v16 = sub_188FE3930(a2, v8);
  if (v17)
  {
    if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x150))(v16))
    {
      sub_188B82DFC(v71);
      v18 = v77[5];
      v83 = v77[6];
      v84[0] = v78[0];
      *(v84 + 9) = *(v78 + 9);
      v79 = v77[2];
      v80 = v77[3];
      v19 = v77[4];
    }

    else
    {
      sub_188B82DFC(v71);
      v18 = v75;
      v83 = v76;
      v84[0] = v77[0];
      *(v84 + 9) = *(v77 + 9);
      v79 = v72;
      v80 = v73;
      v19 = v74;
    }

    v81 = v19;
    v82 = v18;
    sub_188B7FF08(&v79, v68);
    sub_188B82BE8(v71);
    v68[4] = v83;
    v69[0] = v84[0];
    *(v69 + 9) = *(v84 + 9);
    v68[0] = v79;
    v68[1] = v80;
    v68[2] = v81;
    v68[3] = v82;
    v84[0] = v69[0];
    *(v84 + 9) = *(v69 + 9);
    v21 = [(UITabBarItem *)a2 _tabBarButton];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for _UITabButton();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = v23;
        v25 = v22;
        goto LABEL_17;
      }
    }

    v24 = sub_188F53BF8(a2, &v79, 1);
LABEL_17:
    Strong = swift_unknownObjectWeakLoadStrong();

    v27 = Strong;
    if (!Strong)
    {
      v28 = sub_188F53BF8(a2, &v79, 0);
      v29 = &v28[OBJC_IVAR____UITabButton_overrideItemState];
      v30 = *&v28[OBJC_IVAR____UITabButton_overrideItemState];
      v31 = v28[OBJC_IVAR____UITabButton_overrideItemState + 8];
      *v29 = 2;
      v29[8] = 0;
      if ((v31 & 1) != 0 || v30 != 2)
      {
        sub_189205B48();
      }

      v24[OBJC_IVAR____UITabButton_ignoresSelectedState] = 1;
      v24[OBJC_IVAR____UITabButton_synchronizeAppearanceAndLayoutChangesToLinkedButton] = 1;
      swift_unknownObjectWeakAssign();
      v27 = v28;
    }

    v66 = a1;
    v32 = Strong;
    v33 = [v24 superview];
    v34 = *(v3 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
    v35 = OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView;
    if (!v33 || (v36 = v33, v65 = a2, v37 = v9, v38 = v27, v39 = *(v34 + OBJC_IVAR____TtC5UIKit20_UITabBarPlatterView_contentView), sub_188A34624(0, &qword_1ED48F680), v40 = v39, v41 = sub_18A4A7C88(), v36, v40, v27 = v38, v9 = v37, a2 = v65, (v41 & 1) == 0))
    {
      [*(v34 + v35) addSubview_];
    }

    v42 = v27;
    v43 = [v27 superview];
    v44 = *(v3 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView);
    if (!v43 || (v45 = v43, sub_188A34624(0, &qword_1ED48F680), v46 = v44, v47 = sub_18A4A7C88(), v45, v46, (v47 & 1) == 0))
    {
      [v44 addSubview_];
    }

    v48 = v42;

    v49 = a2;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result || (v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
    {
      result = sub_188B8AD14(v8);
      v8 = result;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v49;

      v51 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
      swift_beginAccess();
      v52 = *(v3 + v51);
      v53 = v24;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v3 + v51) = v52;
      if (!result || v52 < 0 || (v52 & 0x4000000000000000) != 0)
      {
        result = sub_188B8AD14(v52);
        v52 = result;
        *(v3 + v51) = result;
      }

      if (v9 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
        *((v52 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v53;
        *(v3 + v51) = v52;
        v55 = v53;
        swift_endAccess();

        v56 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
        swift_beginAccess();
        v57 = *(v3 + v56);
        if ((v57 & 0xC000000000000001) == 0)
        {
          v59 = v66;
          goto LABEL_46;
        }

        if (v57 < 0)
        {
          v58 = *(v3 + v56);
        }

        else
        {
          v58 = v57 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_18A4A7F68();
        v59 = v66;
        if (!__OFADD__(result, 1))
        {
          *(v3 + v56) = sub_18907BE68(v58, result + 1);
LABEL_46:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67 = *(v3 + v56);
          sub_188E9F55C(v55, v49, isUniquelyReferenced_nonNull_native);
          *(v3 + v56) = v67;
          swift_endAccess();

          v61 = sub_18903AA14(v59, v67);

          if (v61)
          {
            [v61 removeFromSuperview];
            v62 = swift_unknownObjectWeakLoadStrong();
            if (v62)
            {
              v63 = v62;
              [v62 removeFromSuperview];
            }

            swift_beginAccess();
            v64 = sub_1891E9B28(v59);
            swift_endAccess();
          }

          [v55 setAlpha_];

          sub_188B7FF64(v68);
          return v8;
        }

LABEL_56:
        __break(1u);
        return result;
      }

LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_55;
  }

  v20 = v16;
  sub_188F55DB8(v9, v16, sub_188E49884, sub_188B8AD14);
  swift_beginAccess();
  sub_188F55DB8(v9, v20, sub_188E49850, sub_188B8AD14);
  swift_endAccess();
  return v70;
}

void sub_188F55DB8(unint64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, unint64_t), uint64_t (*a4)(unint64_t))
{
  if (a1 != a2)
  {
    v9 = *v4;
    if ((*v4 & 0xC000000000000001) != 0)
    {
      v5 = a3(a1, *v4);
      v12 = a3(a2, v9);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 > a1)
      {
        if (v10 > a2)
        {
          v11 = *(v9 + 32 + 8 * a2);
          v5 = *(v9 + 32 + 8 * a1);
          v12 = v11;
LABEL_7:
          v13 = v12;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
          {
            v9 = a4(v9);
            v14 = (v9 >> 62) & 1;
          }

          else
          {
            LODWORD(v14) = 0;
          }

          v15 = v9 & 0xFFFFFFFFFFFFFF8;
          v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
          *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v13;

          if ((v9 & 0x8000000000000000) == 0 && !v14)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v9 = a4(v9);
          v15 = v9 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v15 + 16) > a2)
            {
              v17 = v15 + 8 * a2;
              v18 = *(v17 + 32);
              *(v17 + 32) = v5;

              *v4 = v9;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_188F56050(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    result = sub_18A4A7F68();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_188E49850(i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setSemanticContentAttribute_];
    }
  }

  return result;
}

void sub_188F561A0()
{
  v1 = [v0 tabBar];
  v2 = [v1 _effectiveUnselectedTintColor];

  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    v5 = sub_18A4A7F68();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = v4 & 0xC000000000000001;

    v7 = 0;
    v8 = &OBJC_IVAR____TtCE5UIKitCSo25_UIVisualEffectDescriptorP33_9E0247CB797043A00E8812C565E7AD8F18_ContentProxyEntry_contentView;
    v23 = v4;
    while (1)
    {
      if (v6)
      {
        v10 = sub_188E49850(v7, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v8[161];
      swift_beginAccess();
      v13 = *&v11[v12];
      if (*(v13 + 16) && (v14 = sub_188B85570(0), (v15 & 1) != 0))
      {
        if (v2)
        {
          v16 = v5;
          v17 = v6;
          v18 = v8;
          v19 = *(*(v13 + 56) + 8 * v14);
          sub_188A34624(0, qword_1ED4913C0);
          v9 = v2;
          v20 = v19;
          v21 = sub_18A4A7C88();

          v8 = v18;
          v6 = v17;
          v5 = v16;
          v4 = v23;
          if (v21)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        if (!v2)
        {
          goto LABEL_7;
        }

        v22 = v2;
      }

      swift_beginAccess();
      v9 = v2;
      sub_188B854B0(v2, 0);
      swift_endAccess();
      sub_189205B48();
LABEL_6:

LABEL_7:
      ++v7;

      if (v5 == v7)
      {

        return;
      }
    }
  }

  __break(1u);
}

void sub_188F56408(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v2 setOverrideUserInterfaceStyle_];
    v3 = [(UIView *)v2 _traitOverrides];
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
    v12 = sub_18901BD20(&type metadata for _UITraitColorMaterialRenderingMode, 0);
    os_unfair_lock_unlock(v11[2]);
    [(_UITraitOverrides *)v10 _removeTraitToken:v12];

    swift_unknownObjectRelease();
    v13 = [(UIView *)v2 _traitOverrides];
    v14 = *(inited + 16);

    [(_UITraitOverrides *)v13 _replaceWithOverrides:v14];
  }

  sub_188B7C4C4();
  v15 = [v1 tabBar];
  v16 = [(UITabBar *)v15 _glassGroupContainer];

  if (!v16)
  {
    v16 = [v1 tabBar];
  }

  v17 = [(UIView *)v16 _traitOverrides];
  v18 = [(_UITraitOverrides *)v17 _swiftImplCopy];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
  v19 = swift_initStackObject();
  *(v19 + 16) = v18;
  v22 = v19;
  sub_18914E584(2);
  v20 = [(UIView *)v16 _traitOverrides];
  v21 = *(v22 + 16);

  [(_UITraitOverrides *)v20 _replaceWithOverrides:v21];
}

void *sub_188F566EC(void *a1)
{
  if ([v1 currentMorphTarget])
  {
    v3 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton];
    if (v3)
    {
      v4 = v3;
    }
  }

  else
  {
    v5 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v6 = *&v1[v5];

    v3 = sub_18903AA14(a1, v6);
  }

  return v3;
}

void sub_188F56930(uint64_t a1)
{
  v3 = type metadata accessor for _UITabBarVisualProvider_Floating();
  v7.receiver = v1;
  v7.super_class = v3;
  v4 = objc_msgSendSuper2(&v7, sel_currentMorphTarget);
  v6.receiver = v1;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_setCurrentMorphTarget_, a1);
  if ([v1 currentMorphTarget] != v4)
  {
    if (![v1 currentMorphTarget])
    {
      sub_188F542AC();
    }

    v5 = [v1 tabBar];
    [v5 setNeedsLayout];
  }
}

uint64_t sub_188F56AC0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  switch(a1)
  {
    case 2:
      v9 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
      v27[4] = v9;
      v10 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedPlatterView);
        v12 = v11;
        if (!v11)
        {
          v12 = *(v10 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView);
          v13 = v12;
        }

        v28 = v12;
        v14 = v11;
      }

      else
      {
        v28 = 0;
      }

      v26 = v2;
      v15 = v9;
      for (i = 0; i != 2; ++i)
      {
        v17 = v27[i + 4];
        if (v17)
        {
          v18 = v17;
          MEMORY[0x18CFE2450]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
          }

          sub_18A4A75F8();
          v2 = v26;
        }
      }

      goto LABEL_29;
    case 1:
      v25 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
      v26 = MEMORY[0x1E69E7CC0];
      v7 = v25;
      if (v25)
      {
        v8 = v7;
        MEMORY[0x18CFE2450]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v2 = v26;
      }

      sub_188A3F5FC(&v25, &qword_1EA937AA8);
      break;
    case 0:
      v3 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView);
      v24[4] = v3;
      v4 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_primaryPlatterView);
        v6 = v5;
      }

      else
      {
        v5 = 0;
      }

      v24[5] = v5;
      v26 = v2;
      v19 = v3;
      for (j = 0; j != 2; ++j)
      {
        v21 = v24[j + 4];
        if (v21)
        {
          v22 = v21;
          MEMORY[0x18CFE2450]();
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_18A4A7588();
          }

          sub_18A4A75F8();
          v2 = v26;
        }
      }

LABEL_29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937AA0);
      swift_arrayDestroy();
      break;
  }

  return v2;
}

void sub_188F56DEC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isAnimatingCollapsedState) = 0;
  v2 = [v0 currentMorphTarget];
  v3 = (v2 < 3) & (6u >> (v2 & 7));
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView);
  if (v4)
  {
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (((v2 < 3) & (v2 ^ 1)) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v4[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState] = v6;
    v7 = v4;
    sub_188E94954();
  }

  v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView;
  v9 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView);
  if (v9)
  {
    [v9 setHidden_];
  }

  [*(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView) setHidden_];
  v10 = *(v1 + v8);
  if (v10)
  {
    v13 = v10;
    if ([v1 hostedElements] & 2) != 0 || ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))())
    {
      v11 = v13;
    }

    else
    {
      [v13 removeFromSuperview];

      v12 = *(v1 + v8);
      *(v1 + v8) = 0;

      v11 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton);
      *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton) = 0;
    }
  }
}

uint64_t sub_188F56FE8()
{
  v1 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_18A4A7F68())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E49850(v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isFocused])
      {

        Strong = swift_unknownObjectWeakLoadStrong();

        return Strong;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

char *sub_188F57168()
{
  v1 = v0;
  v2 = [v0 tabBar];
  v3 = [v2 _shouldReverseLayoutDirection];

  v4 = [v0 tabBar];
  v5 = [v4 _preferredFocusHeading];

  v6 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E7CC0];
  v7 = &qword_1EA937000;
  if (v3)
  {
    if (v5 != 4)
    {
      if (v5 != 8)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v5 == 4)
  {
LABEL_16:
    v14 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v10 = *(v1 + v14);
    if (v10 >> 62)
    {
      result = sub_18A4A7F68();
      if (!result)
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v10 + 32);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_63;
      }

      goto LABEL_59;
    }

    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_26:
    MEMORY[0x18CFE2450](result);
    if (*(v38 + 16) >= *(v38 + 24) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v15 = v38;
    goto LABEL_29;
  }

  if (v5 == 8)
  {
LABEL_7:
    v8 = *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView);
    MEMORY[0x18CFE2450]();
    if (*(v38 + 16) >= *(v38 + 24) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v9 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10 >> 62)
    {
      result = sub_18A4A7F68();
      if (!result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_26;
      }
    }

    v12 = (result - 1);
    if (!__OFSUB__(result, 1))
    {
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          if (v12 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v10 + 8 * v12 + 32);
LABEL_21:
            result = v13;
            goto LABEL_26;
          }

LABEL_64:
          __break(1u);
          return result;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v32 = v12;
LABEL_61:
      sub_188E49850(v32, v10);

      goto LABEL_26;
    }

    __break(1u);
LABEL_59:

    v32 = 0;
    goto LABEL_61;
  }

LABEL_22:
  v15 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v16 = [v1 tabBar];
  v17 = [v16 selectedItem];

  if (v17)
  {
    v18 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
    swift_beginAccess();
    v19 = *(v1 + v18);

    v20 = sub_18903AA14(v17, v19);

    v37 = v20;
    MEMORY[0x1EEE9AC00](v21);
    v34 = &v37;
    LOBYTE(v19) = sub_18919A2A8(sub_188F59DF4, v33, v15);

    if ((v19 & 1) == 0)
    {
      v22 = *(v1 + v18);

      sub_18903AA14(v17, v22);

      MEMORY[0x18CFE2450](v23);
      if (*(v38 + 16) >= *(v38 + 24) >> 1)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    }
  }

  while (1)
  {
    v24 = v7[297];
    swift_beginAccess();
    v17 = *(v1 + v24);
    if (v17 >> 62)
    {
LABEL_53:
      if (!sub_18A4A7F68())
      {
        goto LABEL_44;
      }
    }

    else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v17 + 32);
      v26 = v25;
      goto LABEL_39;
    }

    __break(1u);
LABEL_57:
    sub_18A4A7588();
LABEL_33:
    sub_18A4A75F8();

    v15 = v38;
  }

  v26 = sub_188E49850(0, v17);

LABEL_39:
  v7 = &v35;
  v27 = *(v1 + v24);
  v36 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v34 = &v36;

  v28 = sub_18919A278(sub_188F59D9C, v33, v27);

  if (v28)
  {
  }

  else
  {
    v29 = v26;
    MEMORY[0x18CFE2450]();
    if (*(v38 + 16) >= *(v38 + 24) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();

    v15 = v38;
  }

LABEL_44:
  v1 = 0;
  v36 = v6;
  v17 = *(v15 + 16);
  while (v17 != v1)
  {
    if (v1 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_53;
    }

    v30 = *(v15 + 8 * v1++ + 32);
    if (v30)
    {
      v31 = v30;
      MEMORY[0x18CFE2450]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      v6 = v36;
    }
  }

  return v6;
}

id sub_188F5784C(uint64_t a1, double *a2)
{
  swift_beginAccess();
  v4 = a2[2];
  v5 = a2[3];
  width = a2[4];
  height = a2[5];
  v8 = (a1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame);
  *v8 = v4;
  v8[1] = v5;
  v8[2] = width;
  v8[3] = height;
  v9 = *(a1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView);
  if ([v9 lifted])
  {
    v11.origin.x = v4;
    v11.origin.y = v5;
    v11.size.width = width;
    v11.size.height = height;
    v12 = CGRectInset(v11, -8.0, -8.0);
    width = v12.size.width;
    height = v12.size.height;
  }

  return [v9 setBounds_];
}

void sub_188F57984(void *a1)
{
  if ([a1 sender])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (!*(&v19 + 1))
  {
    sub_188A3F5FC(v20, &qword_1EA934050);
    return;
  }

  type metadata accessor for _UITabButton();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = [Strong tabBar];

  v3 = [v2 selectedItem];
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = v4;
  if (!v3)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_15;
  }

  sub_188A34624(0, &qword_1EA9306B0);
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = [v7 hostedElements];

  if ((v8 & 2) == 0)
  {
LABEL_16:
    v9 = swift_unknownObjectUnownedLoadStrong();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = [v9 tabBar];
      [v12 _didSelectButtonForItem_];
    }
  }

  v13 = [(UITabBar *)v2 _updateMorphTargetBlock];
  if (v13)
  {
    v14 = v13;
    v15 = swift_unknownObjectUnownedLoadStrong();
    v16 = [v15 hostedElements];

    if ((v16 & 2) != 0)
    {
      v14[2](v14, 1);
    }

    _Block_release(v14);
  }

  else
  {
  }
}

void sub_188F57BE8(void *a1)
{
  if ([a1 sender])
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    type metadata accessor for _UITabButton();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectUnownedLoadStrong();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;
        v4 = [Strong tabBar];
        [v4 _didSelectButtonForItem_];
      }
    }
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA934050);
  }
}

void sub_188F57D10()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong tabBar];

  v2 = [(UITabBar *)v1 _currentMorphTarget];
  if (v2)
  {
    v3 = swift_unknownObjectUnownedLoadStrong();
    v4 = [v3 tabBar];

    v5 = [(UITabBar *)v4 _updateMorphTargetBlock];
    if (v5)
    {
      v5[2](v5, 0);
      _Block_release(v5);
    }
  }

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();

  if (v7)
  {
    v8 = swift_unknownObjectUnownedLoadStrong();
    v15 = v7;
    v9 = [v8 tabBar];

    v10 = [v9 selectedItem];
    if (v10)
    {
      sub_188A34624(0, &qword_1EA9306B0);
      v11 = sub_18A4A7C88();

      if (v11)
      {
        v12 = v15;
LABEL_11:

        return;
      }
    }

    else
    {
    }

    v13 = swift_unknownObjectUnownedLoadStrong();
    v14 = [v13 tabBar];

    [v14 _didSelectButtonForItem_];
    v12 = v14;
    goto LABEL_11;
  }
}

id sub_188F57F08()
{
  v1 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating____lazy_storage___configuration;
  sub_188B7A644(__src);
  memcpy(&v0[v1], __src, 0x178uLL);
  v2 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView;
  type metadata accessor for _UITabBarPlatterView();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView;
  v4 = [objc_allocWithZone(_UITabSelectionView) init];
  v5 = [objc_allocWithZone(_UILiquidLensView) initWithRestingBackground_];

  *&v0[v3] = v5;
  v6 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewTargetPosition;
  *&v0[v6] = [objc_allocWithZone(UIViewFloatAnimatableProperty) init];
  v7 = &v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensViewFrame];
  *v7 = 0u;
  v7[1] = 0u;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden] = 0;
  v8 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectedContentView;
  type metadata accessor for _UITabBarVisualProvider_Floating.SelectedContentView();
  *&v0[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView] = 0;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_suppressAuxiliarySearch] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_accessoryView] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollAwayInteraction] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_scrollPocketInteraction] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtonsForItem;
  *&v0[v10] = sub_188E8E744(v9);
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isAnimatingCollapsedState] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureRecognizer] = 0;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating__backgroundTransitionProgress] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItem] = 0;
  v11 = &v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightedItemIndex];
  *v11 = 0;
  v11[8] = 1;
  __asm { FMOV            V0.2D, #0.5 }

  *&v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_highlightAnchorPoint] = _Q0;
  v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_shouldReselectHighlightedItemOnLift] = 1;
  v17 = &v0[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_selectionGestureInitialLocation];
  v18 = type metadata accessor for _UITabBarVisualProvider_Floating();
  *v17 = 0;
  v17[1] = 0;
  v20.receiver = v0;
  v20.super_class = v18;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_188F5818C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_188F581E8(void *a1)
{
  if (v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar])
  {
    return 0;
  }

  if ([v1 currentMorphTarget])
  {
    v4 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView];
    if (v4)
    {
      Strong = v4;
      [a1 locationInView_];
      v7 = v6;
      v9 = v8;
      [Strong bounds];
      v18.x = v7;
      v18.y = v9;
      v10 = CGRectContainsPoint(v19, v18);
LABEL_13:
      v17 = v10;

      return v17;
    }

    return 0;
  }

  v11 = sub_188F53960(a1);
  if (v12)
  {
    return 0;
  }

  v13 = v11;
  v14 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  result = swift_beginAccess();
  v15 = *&v1[v14];
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = sub_188E49850(v13, v15);

LABEL_11:
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v10 = [Strong isEnabled];
      goto LABEL_13;
    }

    return 0;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 8 * v13 + 32);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_188F583B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton);
  if (!v1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (v3)
    {
      goto LABEL_11;
    }

    v6 = v1;
LABEL_9:
    sub_189205920();
    v3 = v1;
    goto LABEL_11;
  }

  if (!v3)
  {
    v3 = Strong;
    goto LABEL_11;
  }

  v7 = v3;
  sub_188A34624(0, &qword_1EA9306B0);
  v4 = v1;
  v5 = sub_18A4A7C88();

  if (v5)
  {
    goto LABEL_9;
  }

  v3 = v4;
LABEL_11:
}

void sub_188F584B0(void *a1, void *a2)
{
  v2 = [a1 layer];
  [v2 setSublayerTransform_];
}

void sub_188F586BC(uint64_t a1, double a2)
{
  v3 = [*(a1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView) restingBackgroundView];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];
  }
}

void sub_188F58768(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();
  v16 = a1;
  sub_188F59B98(v15, a5, a6, a7, a8);

  swift_unknownObjectRelease();
}

unint64_t sub_188F5883C()
{
  result = qword_1EA937A60;
  if (!qword_1EA937A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937A60);
  }

  return result;
}

BOOL sub_188F58890(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    sub_188A34624(0, &qword_1ED48F680);
    v6 = v2;
    v7 = v3;
    v8 = sub_18A4A7C88();

    return v8 & 1;
  }

  return result;
}

void sub_188F58924(char a1, double a2)
{
  if ([v2 currentMorphTarget] == 1 || (*(v2 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isAnimatingCollapsedState) & 1) != 0 || ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))() & 1) == 0 || (v5 = objc_msgSend(v2, sel_tabBar), v6 = objc_msgSend(v5, sel_window), v5, !v6))
  {

    sub_188F542AC();
  }

  else
  {

    type metadata accessor for _UITabBarAnimationSettingsDomain();
    v27.receiver = swift_getObjCClassFromMetadata();
    v27.super_class = &OBJC_METACLASS____TtC5UIKit32_UITabBarAnimationSettingsDomain;
    v7 = objc_msgSendSuper2(&v27, sel_rootSettings);
    if (v7)
    {
      v8 = v7;
      type metadata accessor for _UITabBarAnimationSettings();
      v9 = swift_dynamicCastClassUnconditional();
      v10 = 1.0;
      v11 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayHintResetSpring;
      if (a2 != 0.0 && a2 != 1.0)
      {
        v10 = 1.0 - *(v9 + OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressMultiplier) * a2;
        v11 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayProgressSpring;
        if (a1)
        {
          v11 = &OBJC_IVAR____TtC5UIKit26_UITabBarAnimationSettings_scrollAwayTrackingProgressSpring;
        }
      }

      v12 = *(v9 + *v11);
      CATransform3DMakeScale(&v28, v10, v10, 1.0);
      v13 = [v2 tabBar];
      v14 = [(UITabBar *)v13 _glassGroupContainer];

      if (!v14)
      {
        v14 = [v2 tabBar];
      }

      v15 = objc_opt_self();
      v16 = swift_allocObject();
      v17 = *&v28.m33;
      *(v16 + 88) = *&v28.m31;
      *(v16 + 104) = v17;
      v18 = *&v28.m43;
      *(v16 + 120) = *&v28.m41;
      *(v16 + 136) = v18;
      v19 = *&v28.m13;
      *(v16 + 24) = *&v28.m11;
      *(v16 + 40) = v19;
      v20 = *&v28.m23;
      *(v16 + 56) = *&v28.m21;
      *(v16 + 16) = v14;
      *(v16 + 72) = v20;
      v26[4] = sub_188F59D90;
      v26[5] = v16;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1107296256;
      v26[2] = sub_188A4A8F0;
      v26[3] = &block_descriptor_90;
      v21 = _Block_copy(v26);
      v22 = v14;

      [v15 _animateUsingSpringBehavior_tracking_animations_completion_];
      _Block_release(v21);

      if (a2 == 0.0 && [v2 currentMorphTarget])
      {
        v23 = [v2 tabBar];
        v24 = [(UITabBar *)v23 _updateMorphTargetBlock];

        if (v24)
        {
          v24[2](v24, 0);
LABEL_24:

          _Block_release(v24);
          return;
        }
      }

      else
      {
        if (a2 != 1.0 || [v2 currentMorphTarget] == 2)
        {

LABEL_26:
          return;
        }

        v25 = [v2 tabBar];
        v24 = [(UITabBar *)v25 _updateMorphTargetBlock];

        if (v24)
        {
          v24[2](v24, 2);
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    __break(1u);
  }
}

uint64_t sub_188F58D5C(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView];
  if (v2)
  {
    v3 = v2;
    if (([v3 isHidden] & 1) == 0)
    {
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = [v1 tabBar];
      [a1 location];
      [v12 convertPoint:v3 toCoordinateSpace:?];
      v14 = v13;
      v16 = v15;

      v147.origin.x = v5;
      v147.origin.y = v7;
      v147.size.width = v9;
      v147.size.height = v11;
      v144.x = v14;
      v144.y = v16;
      if (CGRectContainsPoint(v147, v144))
      {
        if (v3[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_displayState] == 2 || (v17 = *&v3[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_minimizedTabButton]) == 0)
        {
          v17 = *&v3[OBJC_IVAR____TtC5UIKit22_UITabBarAuxiliaryView_tabBarButton];
        }

        v18 = v17;
        [v3 bounds];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = [v1 tabBar];
        [v3 convertRect:v27 toCoordinateSpace:{v20, v22, v24, v26}];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v136[0] = v18;
        type metadata accessor for _UITabButton();
        sub_188F59D38();
        v36 = v18;
        sub_18A4A8048();
        sub_188A3F29C(&v138, v136, &unk_1EA937A80);
        if (!v137)
        {
          v66 = 0;
          goto LABEL_31;
        }

LABEL_15:
        v66 = sub_18A4A7FF8();
        sub_188BBA15C(v136);
LABEL_31:
        v88 = [objc_opt_self() regionWithRect:v66 identifier:{v29, v31, v33, v35}];

        swift_unknownObjectRelease();
        v89 = &v138;
LABEL_32:
        sub_188A3F5FC(v89, &unk_1EA937A80);
        return v88;
      }
    }
  }

  v37 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapsePlatterView];
  if (v37)
  {
    v38 = *&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton];
    if (v38)
    {
      v3 = v37;
      v39 = v38;
      if (([v3 isHidden] & 1) == 0)
      {
        [v3 bounds];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v48 = [v1 tabBar];
        [a1 location];
        [v48 convertPoint:v3 toCoordinateSpace:?];
        v50 = v49;
        v52 = v51;

        v148.origin.x = v41;
        v148.origin.y = v43;
        v148.size.width = v45;
        v148.size.height = v47;
        v145.x = v50;
        v145.y = v52;
        if (CGRectContainsPoint(v148, v145))
        {
          [v3 bounds];
          v54 = v53;
          v56 = v55;
          v58 = v57;
          v60 = v59;

          v61 = [v1 tabBar];
          [v3 convertRect:v61 toCoordinateSpace:{v54, v56, v58, v60}];
          v29 = v62;
          v31 = v63;
          v33 = v64;
          v35 = v65;

          v136[0] = v39;
          type metadata accessor for _UITabButton();
          sub_188F59D38();
          v36 = v39;
          sub_18A4A8048();
          sub_188A3F29C(&v138, v136, &unk_1EA937A80);
          if (!v137)
          {
            v66 = 0;
            goto LABEL_31;
          }

          goto LABEL_15;
        }
      }
    }
  }

  if ([v1 currentMorphTarget])
  {
    return 0;
  }

  sub_188B78EF8(&v138);
  if ((v139 & 1) == 0)
  {
    height = v138 * 0.5;
    goto LABEL_40;
  }

  v67 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
  swift_beginAccess();
  v68 = *&v1[v67];
  if (v68 >> 62)
  {
    v69 = sub_18A4A7F68();
  }

  else
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  height = 0.0;
  if (v69 < 2)
  {
LABEL_40:
    v93 = OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_tabBarButtons;
    swift_beginAccess();
    v94 = *&v1[v93];
    if (v94 >> 62)
    {
LABEL_67:
      v95 = sub_18A4A7F68();
    }

    else
    {
      v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v95)
    {
      v96 = 0;
      v97 = -height;
      while (1)
      {
        if ((v94 & 0xC000000000000001) != 0)
        {
          v98 = sub_188E49850(v96, v94);
        }

        else
        {
          if (v96 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v98 = *(v94 + 8 * v96 + 32);
        }

        v99 = v98;
        v100 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        [v98 bounds];
        v102 = v101;
        v104 = v103;
        v106 = v105;
        v108 = v107;
        v109 = [v1 tabBar];
        [v99 convertRect:v109 toCoordinateSpace:{v102, v104, v106, v108}];
        v111 = v110;
        v113 = v112;
        v115 = v114;
        v117 = v116;

        v151.origin.x = v111;
        v151.origin.y = v113;
        v151.size.width = v115;
        v151.size.height = v117;
        v152 = CGRectInset(v151, v97, 0.0);
        x = v152.origin.x;
        y = v152.origin.y;
        width = v152.size.width;
        height = v152.size.height;
        [a1 location];
        v146.x = v121;
        v146.y = v122;
        v153.origin.x = x;
        v153.origin.y = y;
        v153.size.width = width;
        v153.size.height = height;
        if (CGRectContainsPoint(v153, v146))
        {
          break;
        }

        ++v96;
        if (v100 == v95)
        {
          goto LABEL_52;
        }
      }

      if ([v99 isSelected])
      {
        if (*(v99 + OBJC_IVAR____UITabButton_ignoresSelectedState) == 1)
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v134[0] = Strong;
            v124 = Strong;
            type metadata accessor for _UITabButton();
            sub_188F59D38();
            v125 = v124;
            sub_18A4A8048();
            sub_188A3F29C(v136, v134, &unk_1EA937A80);
            if (v135)
            {
              v126 = sub_18A4A7FF8();
              sub_188BBA15C(v134);
            }

            else
            {
              v126 = 0;
            }

            v88 = [objc_opt_self() regionWithRect:v126 identifier:{x, y, width, height}];

            swift_unknownObjectRelease();
            v89 = v136;
            goto LABEL_32;
          }
        }
      }

      v134[0] = v99;
      type metadata accessor for _UITabButton();
      sub_188F59D38();
      v127 = v99;
      sub_18A4A8048();
      sub_188A3F29C(v136, v134, &unk_1EA937A80);
      if (v135)
      {
        v128 = sub_18A4A7FF8();
        sub_188BBA15C(v134);
      }

      else
      {
        v128 = 0;
      }

      v129 = [objc_opt_self() regionWithRect:v128 identifier:{x, y, width, height}];

      swift_unknownObjectRelease();
      sub_188A3F5FC(v136, &unk_1EA937A80);
      return v129;
    }

LABEL_52:

    return 0;
  }

  [*&v1[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_platterView] bounds];
  v149.origin.x = UIRectInset(v71, v72, v73, v74, v140, v143, v142, v141);
  v75 = CGRectGetWidth(v149);
  v76 = *&v1[v67];
  if (v76 >> 62)
  {
    result = sub_18A4A7F68();
    if (result)
    {
      goto LABEL_24;
    }

LABEL_35:
    v87 = 0.0;
    goto LABEL_36;
  }

  result = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v76 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v78 = *(v76 + 32);
    while (1)
    {
      [v78 bounds];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v150.origin.x = v80;
      v150.origin.y = v82;
      v150.size.width = v84;
      v150.size.height = v86;
      v87 = CGRectGetWidth(v150);
LABEL_36:
      v90 = *&v1[v67];
      if (!(v90 >> 62))
      {
        break;
      }

      v130 = v87;
      v131 = sub_18A4A7F68();
      v87 = v130;
      v76 = v131;
      v90 = *&v1[v67];
      if (!(v90 >> 62))
      {
        goto LABEL_38;
      }

      v132 = sub_18A4A7F68();
      v87 = v130;
      v92 = v132 - 1;
      if (!__OFSUB__(v132, 1))
      {
LABEL_39:
        height = (v75 - v87 * v76) / v92;
        goto LABEL_40;
      }

LABEL_71:
      __break(1u);
LABEL_72:

      v78 = sub_188E49850(0, v76);
    }

    v76 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:
    v91 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v91 - 1;
    if (!__OFSUB__(v91, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

  __break(1u);
  return result;
}

id sub_188F5977C(void *a1)
{
  v2 = v1;
  if (![a1 identifier])
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937A70);
  swift_dynamicCast();
  v3 = sub_18A4A7FF8();
  sub_188BBA15C(v51);
  type metadata accessor for _UITabButton();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  v6 = v3;
  [v5 bounds];
  Center = UIRectGetCenter(v7, v8, v9);
  v12 = v11;
  v13 = [v1 tabBar];
  [v5 convertPoint:v13 toCoordinateSpace:{Center, v12}];
  v15 = v14;
  v17 = v16;

  v18 = [objc_allocWithZone(UIPreviewParameters) init];
  v19 = [v2 tabBar];
  v20 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v19 center:{v15, v17}];

  v21 = [objc_allocWithZone(UITargetedPreview) initWithView:v5 parameters:v18 target:v20];
  sub_188B82DFC(v51);
  sub_188B82BE8(v51);
  v22 = v52;
  Strong = swift_unknownObjectWeakLoadStrong();
  v24 = Strong;
  if (*&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_auxiliaryView])
  {
    v25 = swift_unknownObjectWeakLoadStrong();
    v26 = v25;
    if (v24)
    {
      if (v25)
      {
        sub_188A34624(0, &qword_1EA9306B0);
        v27 = sub_18A4A7C88();

        if (v27)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v24 = v25;
      if (!v25)
      {
        goto LABEL_16;
      }
    }
  }

  else if (!Strong)
  {
    goto LABEL_16;
  }

LABEL_14:
  v29 = *&v2[OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_collapseButton];
  if (!v29 || (v30 = v6, v31 = v29, v32 = sub_18A4A7C88(), v31, v30, (v32 & 1) == 0))
  {
    [v5 bounds];
    goto LABEL_18;
  }

LABEL_16:
  [v5 bounds];
  v54 = CGRectInset(v53, v22, v22);
LABEL_18:
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  v37 = CGRectGetHeight(v54) * 0.5;
  v38 = [v2 tabBar];
  [v5 convertRect:v38 toCoordinateSpace:{x, y, width, height}];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v47 = objc_opt_self();
  v48 = [objc_opt_self() effectWithPreview_];
  v49 = [objc_opt_self() shapeWithRoundedRect:v40 cornerRadius:{v42, v44, v46, v37}];
  v50 = [v47 styleWithEffect:v48 shape:v49];

  return v50;
}

void sub_188F59B98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = [a1 identifier];
  if (v10)
  {
    aBlock[6] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937A70);
    swift_dynamicCast();
    v11 = sub_18A4A7FF8();
    sub_188BBA15C(aBlock);
    type metadata accessor for _UITabButton();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      if ([v12 isSelected])
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v8;
        aBlock[4] = a4;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_188A4A8F0;
        aBlock[3] = a5;
        v14 = _Block_copy(aBlock);
        v15 = v8;

        [a2 addAnimations_];
        _Block_release(v14);
      }
    }
  }
}

unint64_t sub_188F59D38()
{
  result = qword_1EA937A78;
  if (!qword_1EA937A78)
  {
    type metadata accessor for _UITabButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937A78);
  }

  return result;
}

id sub_188F59E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isLensViewHidden) = v2;
  v3 = 0.0;
  if ((v2 & 1) == 0)
  {
    v3 = 1.0;
    if (*(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_isCustomizingTabBar))
    {
      v3 = 0.0;
    }
  }

  return [*(v1 + OBJC_IVAR____TtC5UIKit32_UITabBarVisualProvider_Floating_lensView) setAlpha_];
}

uint64_t objectdestroy_163Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_188F59F38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_188F59F80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_188F5A04C()
{
  v25.super_class = _UIEditMenuPlatformMetrics_Floating;
  v0 = objc_msgSendSuper2(&v25, sel_init);
  [v0 setMenuBackgroundEffect_];
  [v0 setHorizontalMenuCornerRadius_];
  [v0 setHorizontalMenuMaximumWidth_];
  [v0 setDerivesAutomaticArrowDirectionsFromAvailableSpace_];
  [v0 setPrefersHorizontalLayoutForLargeContentSize_];
  [v0 setMenuHighlightBackgroundEffect_];
  v1 = objc_opt_self();
  v2 = [v1 tertiarySystemFillColor];
  [v0 setMenuHighlightBackgroundColor_];

  [v0 setSectionInsets_];
  [v0 setShadowOpacity_];
  [v0 setShadowRadius_];
  [v0 setArrowSize_];
  [v0 setArrowTipRadius_];
  [v0 setArrowSideRadius_];
  [v0 setSourceRectMargins_];
  [v0 setSeparatorEffect_];
  v3 = [v1 separatorColor];
  [v0 setSeparatorEffectColor_];

  [v0 setUseThinSeparators_];
  [v0 setAdditionalSeparatorInsets_];
  v23 = sub_188F5A790;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_188BFF280;
  v22 = &block_descriptor_38;
  v4 = _Block_copy(&aBlock);
  [v0 setMenuBackgroundConfigurator_];
  _Block_release(v4);
  v23 = sub_188F5A9D4;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_188F5A9E8;
  v22 = &block_descriptor_3_0;
  v5 = _Block_copy(&aBlock);
  [v0 setMenuItemMarginsProvider_];
  _Block_release(v5);
  v23 = sub_188F5AA60;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_188F5AAD0;
  v22 = &block_descriptor_6_1;
  v6 = _Block_copy(&aBlock);
  [v0 setCellBackgroundShapeProvider_];
  _Block_release(v6);
  v7 = [objc_opt_self() grayButtonConfiguration];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
  inited = swift_initStackObject();
  *(inited + 16) = v7;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v9 = v18;
    v10 = swift_allocObject();
    *(v10 + 16) = v18;

    inited = v10;
  }

  [v9 setCornerStyle_];
  v11 = [v1 labelColor];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *(inited + 16);
  }

  else
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v12 = v18;
    v13 = swift_allocObject();
    *(v13 + 16) = v18;

    inited = v13;
  }

  [v12 setBaseForegroundColor_];

  v14 = [v1 quaternarySystemFillColor];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v15 = swift_allocObject();
    *(v15 + 16) = v18;

    inited = v15;
  }

  [*(inited + 16) setBaseBackgroundColor_];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    [*(inited + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v16 = swift_allocObject();
    *(v16 + 16) = v18;

    inited = v16;
  }

  [*(inited + 16) setContentInsets_];
  [v0 setPageButtonConfiguration_];
  [v0 setPageButtonSymbolScale_];
  [v0 setPageButtonHasInlineAppearance_];
  [v0 setPageButtonAlignmentOffset_];
  [v0 setPageButtonOverlapAmount_];
  [v0 setPageButtonVisibilityMultiplier_];

  return v0;
}

uint64_t sub_188F5A790()
{
  v0 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED48E920 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1ED48E930);
  sub_188AD8C44(v6, v2, type metadata accessor for _Glass._GlassVariant);
  v7 = sub_18A4A2F58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2F38();
  (*(v8 + 40))(v2, v10, v7);
  _Glass.init(_:smoothness:)(v2, v5, 0.0);
  v14[3] = v3;
  v14[4] = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  sub_188AD8C44(v5, boxed_opaque_existential_0, type metadata accessor for _Glass);
  *(boxed_opaque_existential_0 + *(v3 + 52)) = 1;
  sub_188B7533C(v5);
  return UIView._background.setter(v14);
}

double sub_188F5A9E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

id sub_188F5AA60()
{
  v0 = [objc_opt_self() capsuleShape];
  v1 = [v0 shapeByApplyingInsets_];

  return v1;
}

id sub_188F5AAD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = v3(a2);

  return v4;
}

id _UIEditMenuPlatformMetrics_Floating.init(instance:)(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v4 = *(v1 - 8);
    v5 = MEMORY[0x1EEE9AC00](v3);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = sub_18A4A86A8();
    (*(v4 + 8))(v7, v1);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithInstance_];
  swift_unknownObjectRelease();
  return v9;
}

void sub_188F5B1B4()
{
  v1 = v0;
  v77.receiver = v0;
  v77.super_class = type metadata accessor for _UIMorphAnimationSettings();
  objc_msgSendSuper2(&v77, sel_setDefaultValues);
  v2 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph;
  [*(*&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setDampingRatio_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setResponse_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setTrackingDampingRatio_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setTrackingResponse_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setSmoothingAndProjectionEnabled_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setInertialProjectionDeceleration_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setInertialTargetSmoothingRatio_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setRetargetImpulse_];
  [*(*&v0[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) response];
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_secondStepDelay] = v3 * 0.1;
  v4 = *&v0[v2];
  v5 = *(v4 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v6 = *(v4 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX);
  v7 = v5;
  sub_188F5B7E4(v7);

  v8 = *&v1[v2];
  v9 = *(v8 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v10 = *(v8 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY);
  v11 = v9;
  sub_188F5B7E4(v11);

  v12 = *&v1[v2];
  v13 = *(v12 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v14 = *(v12 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width);
  v15 = v13;
  sub_188F5B7E4(v15);

  v16 = *&v1[v2];
  v17 = *(v16 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v18 = *(v16 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height);
  v19 = v17;
  sub_188F5B7E4(v19);

  v20 = *&v1[v2];
  v21 = *(v20 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v22 = *(v20 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  v23 = v21;
  sub_188F5B7E4(v23);

  v24 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink;
  v25 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v26 = *(*&v1[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v27 = v25;
  sub_188F5B7E4(v27);

  [*(*&v1[v24] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setDampingRatio_];
  v28 = *&v1[v24];
  v29 = *(v28 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v30 = *(v28 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX);
  v31 = v29;
  sub_188F5B7E4(v31);

  v32 = *&v1[v24];
  v33 = *(v32 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v34 = *(v32 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY);
  v35 = v33;
  sub_188F5B7E4(v35);

  v36 = *&v1[v24];
  v37 = *(v36 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v38 = *(v36 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width);
  v39 = v37;
  sub_188F5B7E4(v39);

  v40 = *&v1[v24];
  v41 = *(v40 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v42 = *(v40 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height);
  v43 = v41;
  sub_188F5B7E4(v43);

  v44 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  v45 = *(*&v1[v24] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  v46 = v44;
  sub_188F5B7E4(v46);

  v47 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion;
  v48 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v49 = *(*&v1[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v50 = v48;
  sub_188F5B7E4(v50);

  [*(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setDampingRatio_];
  [*(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setResponse_];
  [*(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setRetargetImpulse_];
  [*(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setInertialTargetSmoothingRatio_];
  [*(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph) setInertialProjectionDeceleration_];
  v51 = *&v1[v47];
  v52 = *(v51 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v53 = *(v51 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX);
  v54 = v52;
  sub_188F5B7E4(v54);

  v55 = *&v1[v47];
  v56 = *(v55 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v57 = *(v55 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY);
  v58 = v56;
  sub_188F5B7E4(v58);

  v59 = *&v1[v47];
  v60 = *(v59 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v61 = *(v59 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width);
  v62 = v60;
  sub_188F5B7E4(v62);

  v63 = *&v1[v47];
  v64 = *(v63 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v65 = *(v63 + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height);
  v66 = v64;
  sub_188F5B7E4(v66);

  v67 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v68 = *(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform);
  v69 = v67;
  sub_188F5B7E4(v69);

  v70 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v71 = *(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick);
  v72 = v70;
  sub_188F5B7E4(v72);

  v73 = *(*&v1[v47] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle);
  v74 = *(*&v1[v2] + OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph);
  v75 = v73;
  v76 = v74;
  sub_188F5B7E4(v76);
}

id sub_188F5B7E4(void *a1)
{
  [a1 dampingRatio];
  [v1 setDampingRatio_];
  [a1 response];
  [v1 setResponse_];
  [a1 trackingDampingRatio];
  [v1 setTrackingDampingRatio_];
  [a1 trackingResponse];
  [v1 setTrackingResponse_];
  [v1 setSmoothingAndProjectionEnabled_];
  [a1 inertialProjectionDeceleration];
  [v1 setInertialProjectionDeceleration_];
  [a1 inertialTargetSmoothingRatio];
  [v1 setInertialTargetSmoothingRatio_];
  [v1 retargetImpulse];

  return [v1 setRetargetImpulse_];
}

id sub_188F5B980()
{
  v1 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph;
  type metadata accessor for _UIMorphAnimationSpec();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v0[v1] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v3 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphShrink;
  *&v0[v3] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion;
  *&v0[v4] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_secondStepDelay] = 0x3FB999999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_growingIntermediateShapeRatio] = 0x3FD0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_shrinkingIntermediateShapeRatio] = 0x3FECCCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jWidthRatio] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_jHeightRatio] = 0x3FE999999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_maxJHeight] = 0x4069000000000000;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_morphV2Enabled] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_speed] = 0x3FE199999999999ALL;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieScale] = 0x3FD999999999999ALL;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_showMeshes] = 0;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_showBoundingBoxes] = 0;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_amplifyDelays] = 0;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieEnabled] = 1;
  v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_lensingEnabled] = 1;
  *&v0[OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieSubdivisions] = 0x4000000000000000;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for _UIMorphAnimationSettings();
  return objc_msgSendSuper2(&v6, sel_initWithDefaultValues);
}

id sub_188F5BEA0()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _UIMorphAnimationSpec();
  objc_msgSendSuper2(&v10, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setInertialTargetSmoothingRatio_];
  [*&v0[v1] setInertialProjectionDeceleration_];
  v2 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX] setDampingRatio_];
  [*&v0[v2] setResponse_];
  [*&v0[v2] setInertialTargetSmoothingRatio_];
  [*&v0[v2] setInertialProjectionDeceleration_];
  v3 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY] setDampingRatio_];
  [*&v0[v3] setResponse_];
  [*&v0[v3] setInertialTargetSmoothingRatio_];
  [*&v0[v3] setInertialProjectionDeceleration_];
  v4 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width] setDampingRatio_];
  [*&v0[v4] setResponse_];
  [*&v0[v4] setInertialTargetSmoothingRatio_];
  [*&v0[v4] setInertialProjectionDeceleration_];
  v5 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height] setDampingRatio_];
  [*&v0[v5] setResponse_];
  [*&v0[v5] setInertialTargetSmoothingRatio_];
  [*&v0[v5] setInertialProjectionDeceleration_];
  v6 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform] setDampingRatio_];
  [*&v0[v6] setResponse_];
  [*&v0[v6] setInertialTargetSmoothingRatio_];
  [*&v0[v6] setInertialProjectionDeceleration_];
  v7 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick] setDampingRatio_];
  [*&v0[v7] setResponse_];
  [*&v0[v7] setInertialTargetSmoothingRatio_];
  [*&v0[v7] setInertialProjectionDeceleration_];
  v8 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle;
  [*&v0[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle] setDampingRatio_];
  [*&v0[v8] setResponse_];
  [*&v0[v8] setInertialTargetSmoothingRatio_];
  return [*&v0[v8] setInertialProjectionDeceleration_];
}

id sub_188F5C214()
{
  v1 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v2 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX;
  *&v0[v2] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v3 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY;
  *&v0[v3] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v4 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width;
  *&v0[v4] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v5 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height;
  *&v0[v5] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v6 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform;
  *&v0[v6] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v7 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_kick;
  *&v0[v7] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v8 = OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_settle;
  *&v0[v8] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for _UIMorphAnimationSpec();
  return objc_msgSendSuper2(&v10, sel_initWithDefaultValues);
}

id sub_188F5C37C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_188F5C484(void *a1)
{
  v3 = [v1 init];
  v4 = *&v3[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph];
  *&v3[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph] = a1;
  v5 = v3;
  v6 = a1;

  v7 = *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width] = v6;
  v8 = v6;

  v9 = *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height] = v8;
  v10 = v8;

  v11 = *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX] = v10;
  v12 = v10;

  v13 = *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY] = v12;
  v14 = v12;

  v15 = *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform];
  *&v5[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform] = v14;
  v16 = v14;

  return v5;
}

void sub_188F5C570()
{
  v0 = sub_18A4A7258();
  v1 = sub_18A4A7258();
  v2 = objc_opt_self();
  v3 = [v2 rowWithTitle:v0 valueKeyPath:v1];

  if (!v3)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v3 setPrecision_];
  [v3 setMinValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18A6510E0;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18A64BFA0;
  v6 = sub_18A4A7258();
  v7 = sub_18A4A7258();
  v8 = objc_opt_self();
  v9 = [v8 rowWithTitle:v6 childSettingsKeyPath:v7];

  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = sub_188A34624(0, &qword_1EA934BA8);
  *(v5 + 56) = v10;
  *(v5 + 32) = v9;
  v11 = sub_18A4A7258();
  v12 = sub_18A4A7258();
  v13 = [v8 rowWithTitle:v11 childSettingsKeyPath:v12];

  if (!v13)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v14 = objc_opt_self();
  *(v5 + 88) = v10;
  *(v5 + 64) = v13;
  v15 = sub_18A4A7518();

  v16 = sub_18A4A7258();
  v84 = v14;
  v17 = [v14 sectionWithRows:v15 title:v16];

  if (!v17)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v85 = sub_188A34624(0, &qword_1EA934B98);
  *(v4 + 56) = v85;
  *(v4 + 32) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18A6539E0;
  v19 = sub_18A4A7258();
  v20 = sub_18A4A7258();
  v21 = [v2 rowWithTitle:v19 valueKeyPath:v20];

  if (!v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = sub_188A34624(0, &qword_1EA934B90);
  *(v18 + 56) = v22;
  *(v18 + 32) = v21;
  v23 = sub_18A4A7258();
  v24 = sub_18A4A7258();
  v25 = [v2 rowWithTitle:v23 valueKeyPath:v24];

  if (!v25)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v18 + 88) = v22;
  *(v18 + 64) = v25;
  v26 = sub_18A4A7258();
  v27 = sub_18A4A7258();
  v28 = [v2 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v18 + 120) = v22;
  *(v18 + 96) = v28;
  v29 = sub_18A4A7258();
  v30 = sub_18A4A7258();
  v31 = [v2 rowWithTitle:v29 valueKeyPath:v30];

  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v18 + 152) = v22;
  *(v18 + 128) = v31;
  v32 = sub_18A4A7258();
  v33 = sub_18A4A7258();
  v34 = [v2 rowWithTitle:v32 valueKeyPath:v33];

  if (!v34)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v18 + 184) = v22;
  *(v18 + 160) = v34;
  v35 = sub_18A4A7258();
  v36 = sub_18A4A7258();
  v37 = [v2 rowWithTitle:v35 valueKeyPath:v36];

  if (!v37)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v18 + 216) = v22;
  *(v18 + 192) = v37;
  v38 = sub_18A4A7518();

  v39 = sub_18A4A7258();
  v40 = [v14 sectionWithRows:v38 title:v39];

  if (!v40)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v4 + 88) = v85;
  *(v4 + 64) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_18A64C6E0;
  v42 = sub_18A4A7258();
  v43 = sub_18A4A7258();
  v44 = objc_opt_self();
  v45 = [v44 rowWithTitle:v42 valueKeyPath:v43];

  if (!v45)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v46 = sub_188A34624(0, &unk_1EA936980);
  *(v41 + 56) = v46;
  *(v41 + 32) = v45;
  v47 = sub_18A4A7258();
  v48 = sub_18A4A7258();
  v49 = [v2 rowWithTitle:v47 valueKeyPath:v48];

  if (!v49)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v41 + 88) = v22;
  *(v41 + 64) = v49;
  v50 = sub_18A4A7258();
  v51 = sub_18A4A7258();
  v52 = [v2 rowWithTitle:v50 valueKeyPath:v51];

  if (!v52)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v41 + 96) = v52;
  *(v41 + 152) = v22;
  *(v41 + 120) = v22;
  *(v41 + 128) = v3;
  v53 = v3;
  v54 = sub_18A4A7518();

  v55 = sub_18A4A7258();
  v56 = [v84 sectionWithRows:v54 title:v55];

  if (!v56)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v4 + 120) = v85;
  *(v4 + 96) = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_18A6510E0;
  v58 = sub_18A4A7258();
  v59 = sub_18A4A7258();
  v60 = [v44 rowWithTitle:v58 valueKeyPath:v59];

  if (!v60)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v57 + 56) = v46;
  *(v57 + 32) = v60;
  v61 = sub_18A4A7258();
  v62 = sub_18A4A7258();
  v63 = [v44 rowWithTitle:v61 valueKeyPath:v62];

  if (!v63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v57 + 88) = v46;
  *(v57 + 64) = v63;
  v64 = sub_18A4A7258();
  v65 = sub_18A4A7258();
  v66 = [v44 rowWithTitle:v64 valueKeyPath:v65];

  if (!v66)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v57 + 120) = v46;
  *(v57 + 96) = v66;
  v67 = sub_18A4A7258();
  v68 = sub_18A4A7258();
  v69 = [v44 rowWithTitle:v67 valueKeyPath:v68];

  if (!v69)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v57 + 152) = v46;
  *(v57 + 128) = v69;
  v70 = sub_18A4A7258();
  v71 = sub_18A4A7258();
  v72 = [v44 rowWithTitle:v70 valueKeyPath:v71];

  if (!v72)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v57 + 184) = v46;
  *(v57 + 160) = v72;
  v73 = sub_18A4A7518();

  v74 = sub_18A4A7258();
  v75 = [v84 sectionWithRows:v73 title:v74];

  if (!v75)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v4 + 152) = v85;
  *(v4 + 128) = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_18A64BFB0;
  v77 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v78 = sub_18A4A7258();
  v79 = [objc_opt_self() rowWithTitle:v78 action:v77];

  if (!v79)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v76 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v76 + 32) = v79;
  v80 = sub_18A4A7518();

  v81 = [v84 sectionWithRows_];

  if (v81)
  {
    *(v4 + 184) = v85;
    *(v4 + 160) = v81;
    v82 = sub_18A4A7258();
    v83 = sub_18A4A7518();

    [v84 moduleWithTitle:v82 contents:v83];

    return;
  }

LABEL_47:
  __break(1u);
}

void sub_188F5D304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFA0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6539E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [v4 rowWithTitle:v16 childSettingsKeyPath:v17];

  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v1 + 184) = v6;
  *(v1 + 160) = v18;
  v19 = sub_18A4A7258();
  v20 = sub_18A4A7258();
  v21 = [v4 rowWithTitle:v19 childSettingsKeyPath:v20];

  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v22 = objc_opt_self();
  *(v1 + 216) = v6;
  *(v1 + 192) = v21;
  v23 = sub_18A4A7518();

  v24 = sub_18A4A7258();
  v25 = [v22 sectionWithRows:v23 title:v24];

  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v26;
  *(v0 + 32) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64BFB0;
  v28 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v29 = sub_18A4A7258();
  v30 = [objc_opt_self() rowWithTitle:v29 action:v28];

  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v27 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v27 + 32) = v30;
  v31 = sub_18A4A7518();

  v32 = [v22 sectionWithRows_];

  if (v32)
  {
    *(v0 + 88) = v26;
    *(v0 + 64) = v32;
    v33 = sub_18A4A7258();
    v34 = sub_18A4A7518();

    [v22 moduleWithTitle:v33 contents:v34];

    return;
  }

LABEL_19:
  __break(1u);
}

id static UISheetPresentationControllerDetent.custom(identifier:resolver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = sub_188CED3C4;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_188CED360;
  v11[3] = &block_descriptor_39;
  v8 = _Block_copy(v11);

  v9 = [ObjCClassFromMetadata customDetentWithIdentifier:a1 resolver:v8];
  _Block_release(v8);
  return v9;
}

double sub_188F5D980(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = COERCE_DOUBLE(a2());
  result = 1.79769313e308;
  if ((v4 & 1) == 0)
  {
    return v2;
  }

  return result;
}

id UISheetPresentationController.preferredCornerRadius.setter(uint64_t a1, char a2)
{
  v3 = 1.79769313e308;
  if ((a2 & 1) == 0)
  {
    v3 = *&a1;
  }

  return [v2 setPreferredCornerRadius_];
}

id (*UISheetPresentationController.preferredCornerRadius.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  [v1 preferredCornerRadius];
  *(a1 + 24) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = v3;
  if (v3 == 1.79769313e308)
  {
    v4 = 0.0;
  }

  *a1 = v4;
  *(a1 + 8) = v3 == 1.79769313e308;
  return sub_188F5DAE4;
}

id sub_188F5DAE4(uint64_t a1)
{
  v1 = (a1 + 24);
  if (!*(a1 + 8))
  {
    v1 = a1;
  }

  return [*(a1 + 16) setPreferredCornerRadius_];
}

uint64_t sub_188F5DB0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    result = sub_18A4A2B58();
    *a1 = result;
  }

  return result;
}

uint64_t sub_188F5DB4C(uint64_t *a1)
{
  v1 = *a1;
  result = sub_18A4A2B28();
  if (result >= 1)
  {
    return MEMORY[0x18CFDDAB0](v1, 0);
  }

  __break(1u);
  return result;
}

void IndexPath.section.setter()
{
  if (sub_18A4A2B28() < 1)
  {
    __break(1u);
  }

  JUMPOUT(0x18CFDDAB0);
}

uint64_t IndexPath.section.modify(uint64_t *a1)
{
  a1[1] = v1;
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    *a1 = sub_18A4A2B58();
    return sub_188F5DC30;
  }

  return result;
}

uint64_t sub_188F5DC30(uint64_t *a1, char a2)
{
  v3 = *a1;
  result = sub_18A4A2B28();
  if (a2)
  {
    if (result >= 1)
    {
      return MEMORY[0x18CFDDAB0](v3, 0);
    }

    __break(1u);
  }

  if (result >= 1)
  {
    return MEMORY[0x18CFDDAB0](v3, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_188F5DC84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A2B28();
  if (result == 2)
  {
    result = sub_18A4A2B58();
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*IndexPath.row.modify(uint64_t *a1))()
{
  a1[1] = v1;
  result = sub_18A4A2B28();
  if (result == 2)
  {
    *a1 = sub_18A4A2B58();
    return sub_188F5DD24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188F5DD28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    if (sub_18A4A2B28() < 2)
    {
      result = sub_18A4A2388();
    }

    else
    {
      result = sub_18A4A2B58();
    }

    *a1 = result;
  }

  return result;
}

uint64_t sub_188F5DD7C(uint64_t *a1)
{
  v1 = *a1;
  result = sub_18A4A2B28();
  if (result == 2)
  {
    return MEMORY[0x18CFDDAB0](v1, 1);
  }

  __break(1u);
  return result;
}

void _s10Foundation9IndexPathV5UIKitE3rowSivs_0()
{
  if (sub_18A4A2B28() == 2)
  {
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x18CFDDAB0);
}

uint64_t IndexPath.item.modify(uint64_t *a1)
{
  a1[1] = v1;
  result = sub_18A4A2B28();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    if (sub_18A4A2B28() < 2)
    {
      v4 = sub_18A4A2388();
    }

    else
    {
      v4 = sub_18A4A2B58();
    }

    *a1 = v4;
    return sub_188F5EACC;
  }

  return result;
}

uint64_t sub_188F5DE74(uint64_t *a1, char a2)
{
  v3 = *a1;
  result = sub_18A4A2B28();
  if (a2)
  {
    if (result == 2)
    {
      return MEMORY[0x18CFDDAB0](v3, 1);
    }

    __break(1u);
  }

  if (result != 2)
  {
    __break(1u);
    return result;
  }

  return MEMORY[0x18CFDDAB0](v3, 1);
}

uint64_t URLResourceValues.thumbnailDictionary.getter()
{
  v0 = sub_18A4A2608();
  if (*(v0 + 16) && (v1 = sub_188B00858(*MEMORY[0x1E695DC50]), (v2 & 1) != 0))
  {
    sub_188A55598(*(v0 + 56) + 32 * v1, v5);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

NSValue __swiftcall UIEdgeInsets._bridgeToObjectiveC()()
{

  return sub_188F5E1EC(type metadata accessor for UIEdgeInsets, "{UIEdgeInsets=dddd}", v0, v1, v2, v3);
}

id static UIEdgeInsets._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for UIEdgeInsets(0);
  result = strcmp(v4, "{UIEdgeInsets=dddd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;

    return [a1 getValue:a2 size:32];
  }

  return result;
}

id sub_188F5E084(uint64_t a1, uint64_t a2)
{

  return sub_188F5E370(a1, a2, "{UIEdgeInsets=dddd}");
}

id sub_188F5E0E4(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{UIEdgeInsets=dddd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;

    return [a1 getValue:a2 size:32];
  }

  return result;
}

NSValue __swiftcall NSDirectionalEdgeInsets._bridgeToObjectiveC()()
{

  return sub_188F5E1EC(type metadata accessor for NSDirectionalEdgeInsets, "{NSDirectionalEdgeInsets=dddd}", v0, v1, v2, v3);
}

id sub_188F5E1EC(void (*a1)(void), uint64_t a2, double a3, double a4, double a5, double a6)
{
  v8[4] = *MEMORY[0x1E69E9840];
  *v8 = a3;
  *&v8[1] = a4;
  *&v8[2] = a5;
  *&v8[3] = a6;
  a1(0);
  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:v8 objCType:a2];
}

id static NSDirectionalEdgeInsets._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for NSDirectionalEdgeInsets(0);
  result = strcmp(v4, "{NSDirectionalEdgeInsets=dddd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;

    return [a1 getValue:a2 size:32];
  }

  return result;
}

id sub_188F5E310(uint64_t a1, uint64_t a2)
{

  return sub_188F5E370(a1, a2, "{NSDirectionalEdgeInsets=dddd}");
}

id sub_188F5E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:v6 objCType:a3];
}

id sub_188F5E3EC(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{NSDirectionalEdgeInsets=dddd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;

    return [a1 getValue:a2 size:32];
  }

  return result;
}

void sub_188F5E480(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

NSValue __swiftcall UIOffset._bridgeToObjectiveC()()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = v0;
  v4 = v1;
  type metadata accessor for UIOffset(0);
  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v3 objCType:"{UIOffset=dd}"];
}

id static UIOffset._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for UIOffset(0);
  result = strcmp(v4, "{UIOffset=dd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    return [a1 getValue:a2 size:16];
  }

  return result;
}

id sub_188F5E5BC()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  return [objc_allocWithZone(MEMORY[0x1E696B098]) initWithBytes:&v2 objCType:"{UIOffset=dd}"];
}

id sub_188F5E630(void *a1, uint64_t a2)
{
  result = strcmp([a1 objCType], "{UIOffset=dd}");
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;

    return [a1 getValue:a2 size:16];
  }

  return result;
}

BOOL _sSo12UIEdgeInsetsV5UIKitE34_conditionallyBridgeFromObjectiveC_6resultSbSo7NSValueC_ABSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for UIEdgeInsets(0);
  v5 = strcmp(v4, "{UIEdgeInsets=dddd}");
  if (v5)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    [a1 getValue:a2 size:32];
  }

  return v5 == 0;
}

double _sSo12UIEdgeInsetsV5UIKitE36_unconditionallyBridgeFromObjectiveCyABSo7NSValueCSgFZ_0(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  v2 = [a1 objCType];
  type metadata accessor for UIEdgeInsets(0);
  if (strcmp(v2, "{UIEdgeInsets=dddd}"))
  {
    __break(1u);
    goto LABEL_5;
  }

  memset(v4, 0, sizeof(v4));
  [a1 getValue:v4 size:32];
  return *v4;
}

BOOL _sSo23NSDirectionalEdgeInsetsV5UIKitE34_conditionallyBridgeFromObjectiveC_6resultSbSo7NSValueC_ABSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for NSDirectionalEdgeInsets(0);
  v5 = strcmp(v4, "{NSDirectionalEdgeInsets=dddd}");
  if (v5)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    [a1 getValue:a2 size:32];
  }

  return v5 == 0;
}

double _sSo23NSDirectionalEdgeInsetsV5UIKitE36_unconditionallyBridgeFromObjectiveCyABSo7NSValueCSgFZ_0(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  v2 = [a1 objCType];
  type metadata accessor for NSDirectionalEdgeInsets(0);
  if (strcmp(v2, "{NSDirectionalEdgeInsets=dddd}"))
  {
    __break(1u);
    goto LABEL_5;
  }

  memset(v4, 0, sizeof(v4));
  [a1 getValue:v4 size:32];
  return *v4;
}

BOOL _sSo8UIOffsetV5UIKitE34_conditionallyBridgeFromObjectiveC_6resultSbSo7NSValueC_ABSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for UIOffset(0);
  v5 = strcmp(v4, "{UIOffset=dd}");
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v5)
  {
    *(a2 + 16) = 1;
  }

  else
  {
    *(a2 + 16) = 0;
    [a1 getValue:a2 size:16];
  }

  return v5 == 0;
}

double _sSo8UIOffsetV5UIKitE36_unconditionallyBridgeFromObjectiveCyABSo7NSValueCSgFZ_0(void *a1)
{
  v4[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  v2 = [a1 objCType];
  type metadata accessor for UIOffset(0);
  if (strcmp(v2, "{UIOffset=dd}"))
  {
    __break(1u);
    goto LABEL_5;
  }

  v4[0] = 0;
  v4[1] = 0;
  [a1 getValue:v4 size:16];
  return *v4;
}

uint64_t sub_188F5EAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = 1;
  v3 = *(v2 + 152);
  if (!v3)
  {
    goto LABEL_4;
  }

  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v2;
  v7 = swift_allocObject();
  v8 = sub_188F5F5E0;
  *(v7 + 16) = sub_188F5F5E0;
  *(v7 + 24) = v6;
  v12[4] = sub_188C3B270;
  v12[5] = v7;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_188F5ED98;
  v12[3] = &block_descriptor_40;
  v9 = _Block_copy(v12);
  v10 = v3;

  [v10 _performUpdateWithoutActivation_];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
LABEL_4:
    v8 = 0;
  }

  *(v2 + 160) = 0;
  return sub_188A55B8C(v8);
}

id sub_188F5EC68(id a1)
{
  if ((*(v1 + 56) & 1) == 0)
  {
    [a1 setFrame_];
  }

  if ((*(v1 + 120) & 1) == 0)
  {
    [a1 setInterfaceOrientation_];
  }

  result = [a1 isUISubclass];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClassUnconditional();
    v4 = result;
    if (*(v1 + 96))
    {
      if (*(v1 + 136))
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = [result setSafeAreaInsetsPortrait_];
      if (*(v1 + 136))
      {
LABEL_8:
        if (!*(v1 + 144))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    result = [v4 setInterfaceOrientationMode_];
    if (!*(v1 + 144))
    {
LABEL_10:
      if (*(v1 + 104))
      {

        return [v4 setCornerRadiusConfiguration_];
      }

      return result;
    }

LABEL_9:
    result = [v4 setInterfaceOrientationMapResolver_];
    goto LABEL_10;
  }

  return result;
}

void sub_188F5ED98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, a3);
}

uint64_t sub_188F5EE04(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 24) = *result;
  *(v1 + 40) = v2;
  *(v1 + 56) = *(result + 32);
  if ((*(v1 + 160) & 1) == 0)
  {
    v3 = *(v1 + 152);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = sub_188F5F680;
      *(v4 + 24) = v1;
      v7[4] = sub_188EB96AC;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_188FDF218;
      v7[3] = &block_descriptor_43_1;
      v5 = _Block_copy(v7);
      v6 = v3;

      [v6 updateSettingsWithBlock_];

      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_188F5EF6C(uint64_t result)
{
  v2 = *(result + 16);
  *(v1 + 64) = *result;
  *(v1 + 80) = v2;
  *(v1 + 96) = *(result + 32);
  if ((*(v1 + 160) & 1) == 0)
  {
    v3 = *(v1 + 152);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = sub_188F5F680;
      *(v4 + 24) = v1;
      v7[4] = sub_188EB96AC;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_188FDF218;
      v7[3] = &block_descriptor_27_1;
      v5 = _Block_copy(v7);
      v6 = v3;

      [v6 updateSettingsWithBlock_];

      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_188F5F0D0(void *a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
  v7 = a1;

  if ((*(v1 + 160) & 1) != 0 || (v3 = *(v1 + 152)) == 0)
  {
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188F5F62C;
    *(v4 + 24) = v1;
    aBlock[4] = sub_188A86D40;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188FDF218;
    aBlock[3] = &block_descriptor_11;
    v5 = _Block_copy(aBlock);
    v6 = v3;

    [v6 updateSettingsWithBlock_];

    _Block_release(v5);
    LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }
}

uint64_t sub_188F5F26C(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  if ((*(v2 + 160) & 1) == 0)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = sub_188F5F680;
      *(v4 + 24) = v2;
      v7[4] = sub_188EB96AC;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_188FDF218;
      v7[3] = &block_descriptor_35_1;
      v5 = _Block_copy(v7);
      v6 = v3;

      [v6 updateSettingsWithBlock_];

      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_188F5F3CC(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  if ((*(v2 + 160) & 1) == 0)
  {
    v3 = *(v2 + 152);
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = sub_188F5F680;
      *(v4 + 24) = v2;
      v7[4] = sub_188EB96AC;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_188FDF218;
      v7[3] = &block_descriptor_19_2;
      v5 = _Block_copy(v7);
      v6 = v3;

      [v6 updateSettingsWithBlock_];

      _Block_release(v5);
      LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

      if (v5)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t _UISceneHostGeometryHandle.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t _UISceneHostGeometryHandle.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_188F5F630()
{
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  return result;
}

CGFloat sub_188F5F684(CGFloat a1, CGFloat a2)
{
  v5 = *v2;
  v6 = *(v2 + 272);
  if (*(v2 + 272) != 0xFF)
  {
    v7 = *(v2 + 256);
    v8 = *(v2 + 264);
    v9 = *(v2 + 280);
    if (*(v2 + 272))
    {
      if (*(v2 + 272) == 1)
      {
        v10 = *(v2 + 256);
LABEL_8:
        v22.origin.y = 0.0;
        v22.origin.x = a2;
        v22.size.width = a1;
        v22.size.height = v5;
        Width = CGRectGetWidth(v22);
        sub_188C5F320(v7, v8, v6);
        if (Width >= v10)
        {
          v16 = v10;
        }

        else
        {
          v16 = Width;
        }

        if (v16 < v9)
        {
          a1 = v9;
        }

        else
        {
          a1 = v16;
        }

        goto LABEL_14;
      }

      v14 = sub_188C57860(*(v2 + 256), *(v2 + 264), 2);
      (v7)(v14, a1, v5, 1000.0, 1000.0);
    }

    else
    {
      sub_188C57860(*(v2 + 256), *(v2 + 264), 0);
      LODWORD(v11) = 1148846080;
      LODWORD(v12) = 1148846080;
      [v7 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:v5 verticalFittingPriority:{v11, v12}];
    }

    v10 = v13;
    goto LABEL_8;
  }

LABEL_14:
  v17 = *(v2 + 64);
  v18 = *(v2 + 72);
  v19 = *(v2 + 80);
  v20 = *(v2 + 88);
  if (*(v2 + 161))
  {
    if (*(v2 + 161) == 1)
    {
      CGRectGetMidY(*&v17);
    }

    else
    {
      CGRectGetMaxY(*&v17);
    }

    v23.origin.y = 0.0;
    v23.origin.x = a2;
    v23.size.width = a1;
    v23.size.height = v5;
    CGRectGetHeight(v23);
  }

  else
  {
    CGRectGetMinY(*&v17);
  }

  return a2;
}

CGFloat sub_188F5F840(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v82.origin.x = *v4;
  v9 = v4[1];
  rect = *v4;
  v10 = v4[2];
  v11 = v4[3];
  v82.origin.y = v9;
  v82.size.width = v10;
  v82.size.height = v11;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = a1;
  v83.origin.y = a2;
  rect_16 = a3;
  v83.size.width = a3;
  v83.size.height = a4;
  v13 = MinX - CGRectGetMinX(v83);
  v84.origin.x = a1;
  v84.origin.y = a2;
  v84.size.width = a3;
  v84.size.height = a4;
  v14 = CGRectGetMaxX(v84) - v13;
  v85.origin.x = rect;
  v85.origin.y = v9;
  v85.size.width = v10;
  v85.size.height = v11;
  *v4 = v14 - CGRectGetWidth(v85);
  v4[1] = v9;
  v4[2] = v10;
  v4[3] = v11;
  v86.origin.x = v4[4];
  v15 = v4[5];
  recta = v86.origin.x;
  v16 = v4[6];
  v17 = v4[7];
  v86.origin.y = v15;
  v86.size.width = v16;
  v86.size.height = v17;
  v18 = CGRectGetMinX(v86);
  v87.origin.x = a1;
  v87.origin.y = a2;
  v87.size.width = rect_16;
  v87.size.height = a4;
  v19 = v18 - CGRectGetMinX(v87);
  v88.origin.x = a1;
  v88.origin.y = a2;
  v88.size.width = rect_16;
  v88.size.height = a4;
  v20 = CGRectGetMaxX(v88) - v19;
  v89.origin.x = recta;
  v89.origin.y = v15;
  v89.size.width = v16;
  v89.size.height = v17;
  v4[4] = v20 - CGRectGetWidth(v89);
  v4[5] = v15;
  v4[6] = v16;
  v4[7] = v17;
  v90.origin.x = v4[8];
  v21 = v4[9];
  rectb = v90.origin.x;
  v22 = v4[10];
  v23 = v4[11];
  v90.origin.y = v21;
  v90.size.width = v22;
  v90.size.height = v23;
  v24 = CGRectGetMinX(v90);
  v91.origin.x = a1;
  v91.origin.y = a2;
  v91.size.width = rect_16;
  v91.size.height = a4;
  v25 = v24 - CGRectGetMinX(v91);
  v92.origin.x = a1;
  v92.origin.y = a2;
  v92.size.width = rect_16;
  v92.size.height = a4;
  v26 = CGRectGetMaxX(v92) - v25;
  v93.origin.x = rectb;
  v93.origin.y = v21;
  v93.size.width = v22;
  v93.size.height = v23;
  v4[8] = v26 - CGRectGetWidth(v93);
  v4[9] = v21;
  v4[10] = v22;
  v4[11] = v23;
  v94.origin.x = v4[12];
  v27 = v4[13];
  rectc = v94.origin.x;
  v28 = v4[14];
  v29 = v4[15];
  v94.origin.y = v27;
  v94.size.width = v28;
  v94.size.height = v29;
  v30 = CGRectGetMinX(v94);
  v95.origin.x = a1;
  v95.origin.y = a2;
  v95.size.width = rect_16;
  v95.size.height = a4;
  v31 = v30 - CGRectGetMinX(v95);
  v96.origin.x = a1;
  v96.origin.y = a2;
  v96.size.width = rect_16;
  v96.size.height = a4;
  v32 = CGRectGetMaxX(v96) - v31;
  v97.origin.x = rectc;
  v97.origin.y = v27;
  v97.size.width = v28;
  v97.size.height = v29;
  v4[12] = v32 - CGRectGetWidth(v97);
  v4[13] = v27;
  v4[14] = v28;
  v4[15] = v29;
  v98.origin.x = v4[16];
  v33 = v4[17];
  rectd = v98.origin.x;
  v34 = v4[18];
  v35 = v4[19];
  v98.origin.y = v33;
  v98.size.width = v34;
  v98.size.height = v35;
  v36 = CGRectGetMinX(v98);
  v99.origin.x = a1;
  v99.origin.y = a2;
  v99.size.width = rect_16;
  v99.size.height = a4;
  v37 = v36 - CGRectGetMinX(v99);
  v100.origin.x = a1;
  v100.origin.y = a2;
  v100.size.width = rect_16;
  v100.size.height = a4;
  v38 = CGRectGetMaxX(v100) - v37;
  v101.origin.x = rectd;
  v101.origin.y = v33;
  v101.size.width = v34;
  v101.size.height = v35;
  v4[16] = v38 - CGRectGetWidth(v101);
  v4[17] = v33;
  v4[18] = v34;
  v4[19] = v35;
  v102.origin.x = v4[20];
  v39 = v4[21];
  recte = v102.origin.x;
  v40 = v4[22];
  v41 = v4[23];
  v102.origin.y = v39;
  v102.size.width = v40;
  v102.size.height = v41;
  v42 = CGRectGetMinX(v102);
  v103.origin.x = a1;
  v103.origin.y = a2;
  v103.size.width = rect_16;
  v103.size.height = a4;
  v43 = v42 - CGRectGetMinX(v103);
  v104.origin.x = a1;
  v104.origin.y = a2;
  v104.size.width = rect_16;
  v104.size.height = a4;
  v44 = CGRectGetMaxX(v104) - v43;
  v105.origin.x = recte;
  v105.origin.y = v39;
  v105.size.width = v40;
  v105.size.height = v41;
  v4[20] = v44 - CGRectGetWidth(v105);
  v4[21] = v39;
  v4[22] = v40;
  v4[23] = v41;
  v106.origin.x = v4[24];
  v45 = v4[25];
  rectf = v106.origin.x;
  v46 = v4[26];
  v47 = v4[27];
  v106.origin.y = v45;
  v106.size.width = v46;
  v106.size.height = v47;
  v48 = CGRectGetMinX(v106);
  v107.origin.x = a1;
  v107.origin.y = a2;
  v107.size.width = rect_16;
  v107.size.height = a4;
  v49 = v48 - CGRectGetMinX(v107);
  v108.origin.x = a1;
  v108.origin.y = a2;
  v108.size.width = rect_16;
  v108.size.height = a4;
  v50 = CGRectGetMaxX(v108) - v49;
  v109.origin.x = rectf;
  v109.origin.y = v45;
  v109.size.width = v46;
  v109.size.height = v47;
  v4[24] = v50 - CGRectGetWidth(v109);
  v4[25] = v45;
  v4[26] = v46;
  v4[27] = v47;
  v110.origin.x = v4[28];
  v51 = v4[29];
  rectg = v110.origin.x;
  v52 = v4[30];
  v53 = v4[31];
  v110.origin.y = v51;
  v110.size.width = v52;
  v110.size.height = v53;
  v54 = CGRectGetMinX(v110);
  v111.origin.x = a1;
  v111.origin.y = a2;
  v111.size.width = rect_16;
  v111.size.height = a4;
  v55 = v54 - CGRectGetMinX(v111);
  v112.origin.x = a1;
  v112.origin.y = a2;
  v112.size.width = rect_16;
  v112.size.height = a4;
  v56 = CGRectGetMaxX(v112) - v55;
  v113.origin.x = rectg;
  v113.origin.y = v51;
  v113.size.width = v52;
  v113.size.height = v53;
  v4[28] = v56 - CGRectGetWidth(v113);
  v4[29] = v51;
  v4[30] = v52;
  v4[31] = v53;
  v114.origin.x = v4[32];
  v57 = v4[33];
  recth = v114.origin.x;
  v58 = v4[34];
  v59 = v4[35];
  v114.origin.y = v57;
  v114.size.width = v58;
  v114.size.height = v59;
  v60 = CGRectGetMinX(v114);
  v115.origin.x = a1;
  v115.origin.y = a2;
  v115.size.width = rect_16;
  v115.size.height = a4;
  v61 = v60 - CGRectGetMinX(v115);
  v116.origin.x = a1;
  v116.origin.y = a2;
  v116.size.width = rect_16;
  v116.size.height = a4;
  v62 = CGRectGetMaxX(v116) - v61;
  v117.origin.x = recth;
  v117.origin.y = v57;
  v117.size.width = v58;
  v117.size.height = v59;
  v4[32] = v62 - CGRectGetWidth(v117);
  v4[33] = v57;
  v4[34] = v58;
  v4[35] = v59;
  v118.origin.x = v4[36];
  v63 = v4[37];
  recti = v118.origin.x;
  v64 = v4[38];
  v65 = v4[39];
  v118.origin.y = v63;
  v118.size.width = v64;
  v118.size.height = v65;
  v66 = CGRectGetMinX(v118);
  v119.origin.x = a1;
  v119.origin.y = a2;
  v119.size.width = rect_16;
  v119.size.height = a4;
  v67 = v66 - CGRectGetMinX(v119);
  v120.origin.x = a1;
  v120.origin.y = a2;
  v120.size.width = rect_16;
  v120.size.height = a4;
  v68 = CGRectGetMaxX(v120) - v67;
  v121.origin.x = recti;
  v121.origin.y = v63;
  v121.size.width = v64;
  v121.size.height = v65;
  result = v68 - CGRectGetWidth(v121);
  v4[36] = result;
  v4[37] = v63;
  v4[38] = v64;
  v4[39] = v65;
  return result;
}

void sub_188F5FD7C(char a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  if (a1 != 2)
  {
    sub_188C5F334(a3, a4, a5);
  }
}

char *sub_188F5FD9C(char a1)
{
  LOBYTE(v9) = a1;
  v10 = v1[1];
  if (v10)
  {
    v5 = *v1;
    v4 = v1[3];
    v2 = v1[5];
    LODWORD(v6) = *(v1 + 8);
    v8 = v1[2];

    v11 = sub_188B419A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v11 + 2);
    v12 = *(v11 + 3);
    v3 = v7 + 1;
    if (v7 >= v12 >> 1)
    {
      goto LABEL_46;
    }

    goto LABEL_3;
  }

  v11 = MEMORY[0x1E69E7CC0];
  v14 = v1[7];
  if (v14)
  {
    goto LABEL_6;
  }

LABEL_11:
  v17 = v1[13];
  if (v17)
  {
    v5 = v1[12];
    v4 = v1[15];
    v2 = v1[17];
    LODWORD(v6) = *(v1 + 32);
    v8 = v1[14];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_188B419A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v7 = *(v11 + 2);
    v18 = *(v11 + 3);
    v3 = v7 + 1;
    if (v7 >= v18 >> 1)
    {
      v11 = sub_188B419A8((v18 > 1), v7 + 1, 1, v11);
    }

    *(v11 + 2) = v3;
    v19 = &v11[48 * v7];
    *(v19 + 4) = v5;
    *(v19 + 5) = v17;
    *(v19 + 6) = v8;
    *(v19 + 7) = v4;
    v19[64] = v6 & 1;
    *(v19 + 9) = v2;
  }

  v20 = v1[19];
  if (v20)
  {
    v5 = v1[18];
    v4 = v1[21];
    v2 = v1[23];
    LODWORD(v6) = *(v1 + 44);
    v8 = v1[20];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_188B419A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v7 = *(v11 + 2);
    v21 = *(v11 + 3);
    v3 = v7 + 1;
    if (v7 >= v21 >> 1)
    {
      v11 = sub_188B419A8((v21 > 1), v7 + 1, 1, v11);
    }

    *(v11 + 2) = v3;
    v22 = &v11[48 * v7];
    *(v22 + 4) = v5;
    *(v22 + 5) = v20;
    *(v22 + 6) = v8;
    *(v22 + 7) = v4;
    v22[64] = v6 & 1;
    *(v22 + 9) = v2;
  }

  v23 = v1[31];
  if (v23)
  {
    v5 = v1[30];
    v4 = v1[33];
    v2 = v1[35];
    LODWORD(v6) = *(v1 + 68);
    v8 = v1[32];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_188B419A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v7 = *(v11 + 2);
    v24 = *(v11 + 3);
    v3 = v7 + 1;
    if (v7 >= v24 >> 1)
    {
      v11 = sub_188B419A8((v24 > 1), v7 + 1, 1, v11);
    }

    *(v11 + 2) = v3;
    v25 = &v11[48 * v7];
    *(v25 + 4) = v5;
    *(v25 + 5) = v23;
    *(v25 + 6) = v8;
    *(v25 + 7) = v4;
    v25[64] = v6 & 1;
    *(v25 + 9) = v2;
  }

  v10 = v1[25];
  if (v10 && (v9 & 1) != 0)
  {
    v4 = v1[24];
    v3 = v1[27];
    v26 = v1[29];
    v5 = *(v1 + 56);
    v8 = v1[26];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_188B419A8(0, *(v11 + 2) + 1, 1, v11);
    }

    v6 = *(v11 + 2);
    v27 = *(v11 + 3);
    v2 = v6 + 1;
    if (v6 >= v27 >> 1)
    {
      v11 = sub_188B419A8((v27 > 1), v6 + 1, 1, v11);
    }

    *(v11 + 2) = v2;
    v28 = &v11[48 * v6];
    *(v28 + 4) = v4;
    *(v28 + 5) = v10;
    *(v28 + 6) = v8;
    *(v28 + 7) = v3;
    v28[64] = v5 & 1;
    *(v28 + 9) = v26;
  }

  v9 = *(v11 + 2);
  if (v9)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_189212B9C(v11);
    }

    v12 = 0;
    v29 = *(v11 + 2);
    v30 = 48;
    do
    {
      if (v29 - 1 != v12)
      {
        if (v12 >= v29)
        {
          __break(1u);
LABEL_46:
          v11 = sub_188B419A8((v12 > 1), v3, 1, v11);
LABEL_3:
          *(v11 + 2) = v3;
          v13 = &v11[48 * v7];
          *(v13 + 4) = v5;
          *(v13 + 5) = v10;
          *(v13 + 6) = v8;
          *(v13 + 7) = v4;
          v13[64] = v6 & 1;
          *(v13 + 9) = v2;
          v14 = v1[7];
          if (!v14)
          {
            goto LABEL_11;
          }

LABEL_6:
          v5 = v1[6];
          v4 = v1[9];
          v2 = v1[11];
          LODWORD(v6) = *(v1 + 20);
          v8 = v1[8];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_188B419A8(0, *(v11 + 2) + 1, 1, v11);
          }

          v7 = *(v11 + 2);
          v15 = *(v11 + 3);
          v3 = v7 + 1;
          if (v7 >= v15 >> 1)
          {
            v11 = sub_188B419A8((v15 > 1), v7 + 1, 1, v11);
          }

          *(v11 + 2) = v3;
          v16 = &v11[48 * v7];
          *(v16 + 4) = v5;
          *(v16 + 5) = v14;
          *(v16 + 6) = v8;
          *(v16 + 7) = v4;
          v16[64] = v6 & 1;
          *(v16 + 9) = v2;
          goto LABEL_11;
        }

        *&v11[v30] = v1[48];
      }

      ++v12;
      v30 += 48;
    }

    while (v9 != v12);
  }

  return v11;
}

char *sub_188F60260()
{
  v1 = *(v0 + 296);
  if (v1)
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 312);
    v4 = *(v0 + 328);
    v5 = *(v0 + 320);
    v6 = *(v0 + 304);

    v7 = sub_188B419A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_188B419A8((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[48 * v9];
    *(v10 + 4) = v2;
    *(v10 + 5) = v1;
    *(v10 + 6) = v6;
    *(v10 + 7) = v3;
    v10[64] = v5 & 1;
    *(v10 + 9) = v4;
    v11 = *(v0 + 344);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v11 = *(v0 + 344);
    if (v11)
    {
LABEL_5:
      v12 = *(v0 + 336);
      v13 = *(v0 + 360);
      v14 = *(v0 + 376);
      v15 = *(v0 + 368);
      v16 = *(v0 + 352);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_188B419A8(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v7 = sub_188B419A8((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v19;
      v20 = &v7[48 * v18];
      *(v20 + 4) = v12;
      *(v20 + 5) = v11;
      *(v20 + 6) = v16;
      *(v20 + 7) = v13;
      v20[64] = v15 & 1;
      *(v20 + 9) = v14;
LABEL_12:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_20;
      }

      while (1)
      {
        v21 = 0;
        v22 = *(v7 + 2);
        v23 = 48;
        while (v22 - 1 == v21)
        {
LABEL_14:
          ++v21;
          v23 += 48;
          if (v19 == v21)
          {
            return v7;
          }
        }

        if (v21 < v22)
        {
          break;
        }

        __break(1u);
LABEL_20:
        v7 = sub_189212B9C(v7);
      }

      *&v7[v23] = *(v0 + 384);
      goto LABEL_14;
    }
  }

  v19 = *(v7 + 2);
  if (v19)
  {
    goto LABEL_12;
  }

  return v7;
}