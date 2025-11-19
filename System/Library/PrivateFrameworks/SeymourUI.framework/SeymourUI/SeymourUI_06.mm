unint64_t sub_20B5E5BD0()
{
  result = qword_27C7618A0;
  if (!qword_27C7618A0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7618A0);
  }

  return result;
}

unint64_t sub_20B5E5C28()
{
  result = qword_27C762910;
  if (!qword_27C762910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C762910);
  }

  return result;
}

void sub_20B5E5CC8()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_landscapeConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_portraitConstraints) = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_previousBounds);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_spinnerView;
  v5 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v4) = v5;
  v46 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_lookingLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = *MEMORY[0x277D76918];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74430];
  *(v12 + 32) = *MEMORY[0x277D74430];
  *(v12 + 40) = v8;
  v14 = v11;
  v15 = v13;
  v16 = sub_20B6B134C(v12);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v16;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v9 fontDescriptorByAddingAttributes_];

  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v18 size:0.0];

  [v6 setFont_];
  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v6 setTextColor_];

  [v6 setLineBreakMode_];
  [v6 setNumberOfLines_];
  [v6 setTextAlignment_];
  v22 = v6;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v46) = v22;
  v25 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_checkLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v27 = [v19 preferredFontForTextStyle_];
  [v26 setFont_];

  v28 = objc_opt_self();
  v29 = [v28 labelColor];
  [v26 setTextColor_];

  [v26 setTextAlignment_];
  v30 = v26;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:1 forAxis:v31];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v25) = v30;
  v32 = [v28 whiteColor];
  type metadata accessor for RoundedButton();
  v33 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v33 setTitle:0 forState:0];
  v34 = v33;
  v35 = [v34 titleLabel];
  if (v35)
  {
    v36 = v35;
    [v35 setAdjustsFontForContentSizeCategory_];
  }

  v37 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_startStandaloneButton;
  sub_20BD4F054(0, 0, 1, 0);
  [v34 setTintColor_];

  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v28 systemBackgroundColor];
  [v34 setTintColor_];

  *(v1 + v37) = v34;
  v39 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_imageView;
  v40 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  LODWORD(v41) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v40 setContentCompressionResistancePriority:1 forAxis:v42];
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v39) = v40;
  v43 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_connectingView;
  v44 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v43) = v44;
  v45 = OBJC_IVAR____TtC9SeymourUI30PhoneSessionWatchDiscoveryView_stackViewCenterYConstraint;
  *(v1 + v45) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B5E6378(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for ShelfDiffableItemIdentifier();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_20BB5D40C(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  while (1)
  {
    v13 = *v12++;
    v20 = v13;

    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_20BB5D40C(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_20B5E7874(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for ShelfDiffableItemIdentifier);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E6658(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v26 = a7;
  v27 = a1;
  v10 = v7;
  v28 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v24 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v24(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    sub_20B5E7874(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v26);
    v19 += v25;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E68CC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_20C135D04();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  sub_20BB5DAAC(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_20BB5DAAC(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E6A88(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_20BB5E398(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(&v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v10 = v18;
    v11 = BYTE4(v18);
    v19 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_20BB5E398((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v13 + 1;
    v14 = v6 + 8 * v13;
    *(v14 + 32) = v10;
    *(v14 + 36) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

size_t sub_20B5E6BB8(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v7 = type metadata accessor for ShelfItemX();
  v21 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = MEMORY[0x277D84F90];
  if (v10 == -1)
  {
    return v12;
  }

  v26 = MEMORY[0x277D84F90];
  result = sub_20BB5E57C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    v12 = v26;
    while (v14 < v11)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_20;
      }

      if (v15)
      {
        goto LABEL_26;
      }

      v17 = a3;
      v25 = a3;
      v23(&v25);
      if (v4)
      {
        goto LABEL_25;
      }

      v26 = v12;
      v18 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v18 >= v19 >> 1)
      {
        sub_20BB5E57C(v19 > 1, v18 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v18 + 1;
      result = sub_20B5E7874(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for ShelfItemX);
      v15 = a3 == v22;
      if (a3 == v22)
      {
        a3 = 0;
      }

      else
      {
        ++a3;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v14;
      if (v16 == v11)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20B5E6DF4(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (!v5)
    {
      return v6;
    }

    v23 = MEMORY[0x277D84F90];
    sub_20BB5E5C0(0, v5 & ~(v5 >> 63), 0);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v6 = v23;
      if (a4 <= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = a4;
      }

      v11 = a3 - v10;
      while (1)
      {
        v20 = a3 + v9;
        a1(v21, &v20);
        if (v4)
        {
          goto LABEL_23;
        }

        *&v19[10] = *&v22[10];
        v18 = v21[1];
        *v19 = *v22;
        v17 = v21[0];
        v23 = v6;
        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20BB5E5C0((v12 > 1), v13 + 1, 1);
          v6 = v23;
        }

        *(v6 + 16) = v13 + 1;
        v14 = (v6 + (v13 << 6));
        *(v14 + 74) = *&v19[10];
        v14[3] = v18;
        v14[4] = *v19;
        v14[2] = v17;
        if (a4 < a3)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        if (!(v11 + v9))
        {
          goto LABEL_19;
        }

        if (~a3 + a4 == v9)
        {
          return v6;
        }

        if (__OFADD__(++v9, 1))
        {
          goto LABEL_20;
        }
      }
    }
  }

  __break(1u);
LABEL_23:

  __break(1u);
  return result;
}

uint64_t sub_20B5E6F7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for MetadataEntry();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_20BB5E624(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_20BB5E624(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_20B5E7874(v9, v11 + v18 + v15 * v13, type metadata accessor for MetadataEntry);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E7178(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v12 = MEMORY[0x28223BE20](v25);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x277D84F90];
  v22 = a5;
  (a5)(0, v15, 0, v12);
  v16 = v28;
  v17 = *(a6(0) - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v11 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v25);
    v18 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E7398(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v27 = MEMORY[0x277D84F90];
  sub_20BB5E910(0, v4, 0);
  v5 = v27;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772270) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v20 = *(v7 + 72);
  while (1)
  {
    a1(&v22, v8);
    if (v3)
    {
      break;
    }

    v10 = v22;
    v9 = v23;
    v11 = v24;
    v13 = v25;
    v12 = v26;
    v27 = v5;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v26;
      v17 = v23;
      sub_20BB5E910((v14 > 1), v15 + 1, 1);
      v12 = v19;
      v9 = v17;
      v5 = v27;
    }

    *(v5 + 16) = v15 + 1;
    v16 = v5 + 40 * v15;
    *(v16 + 32) = v10;
    *(v16 + 40) = v9;
    *(v16 + 48) = v11;
    *(v16 + 56) = v13;
    *(v16 + 64) = v12;
    v8 += v20;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShowcaseLockupContent.applyingRemoteBrowsingEnvironment(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_20C135E24();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5E76F0(v3, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20C134A74();
      sub_20B5E7754();
      v12 = sub_20C13CC94();

      *a2 = v12;
    }

    else
    {
      v14 = sub_20C137654();
      (*(*(v14 - 8) + 32))(a2, v8, v14);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      return sub_20B5E76F0(v3, a2);
    }

    v10 = *v8;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *&v15[-16] = a1;
    v11 = sub_20B5E68CC(sub_20B5E784C, &v15[-32], v10);

    *a2 = v11;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20B5E76F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E24();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B5E7754()
{
  result = qword_27C7625D0;
  if (!qword_27C7625D0)
  {
    sub_20C134A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7625D0);
  }

  return result;
}

uint64_t sub_20B5E77AC()
{
  sub_20C135CE4();
  sub_20C135CF4();
  sub_20C134A74();
  sub_20B5E7754();
  sub_20C13CC94();

  return sub_20C135CD4();
}

uint64_t sub_20B5E7874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B5E78DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v96 = a2;
  v97 = a1;
  v107 = a3;
  v5 = sub_20C13BB84();
  v105 = *(v5 - 8);
  v106 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v92 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v92 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v92 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  MEMORY[0x28223BE20](v20);
  v101 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7625D8);
  MEMORY[0x28223BE20](v22 - 8);
  v99 = &v92 - v23;
  v24 = sub_20C135E74();
  v98 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v94 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v92 - v27;
  v28 = sub_20C132C14();
  v102 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v93 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  *&v34 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v103 = &v92 - v35;
  v95 = v4;
  v36 = [v4 contentPages];
  sub_20B51C88C(0, &qword_27C7625E0);
  v37 = sub_20C13CC74();

  if (!(v37 >> 62))
  {
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_42:

    sub_20C13B424();
    v80 = sub_20C13BB74();
    v81 = sub_20C13D1D4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_20B517000, v80, v81, "Banner message missing content page", v82, 2u);
      MEMORY[0x20F2F6A40](v82, -1, -1);
    }

    (*(v105 + 8))(v7, v106);
    goto LABEL_52;
  }

  if (!sub_20C13DB34())
  {
    goto LABEL_42;
  }

LABEL_3:
  if ((v37 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x20F2F5430](0, v37);
  }

  else
  {
    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v38 = *(v37 + 32);
  }

  v39 = v38;

  v104 = v39;
  v40 = [v39 images];
  if (!v40)
  {
LABEL_49:
    sub_20C13B424();
    v83 = sub_20C13BB74();
    v84 = sub_20C13D1D4();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_20B517000, v83, v84, "Banner message missing image", v85, 2u);
      MEMORY[0x20F2F6A40](v85, -1, -1);
    }

    (*(v105 + 8))(v10, v106);
    goto LABEL_52;
  }

  v37 = v40;
  sub_20B51C88C(0, &qword_27C7625E8);
  v7 = sub_20C13CC74();

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (!sub_20C13DB34())
  {
LABEL_48:

    goto LABEL_49;
  }

LABEL_9:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x20F2F5430](0, v7);
    v41 = v102;
  }

  else
  {
    v41 = v102;
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_56;
    }

    v42 = *(v7 + 32);
  }

  v43 = [v42 url];

  sub_20C132B94();
  v37 = v28;
  (*(v41 + 32))(v103, v32, v28);
  v44 = v104;
  v45 = [v104 title];
  if (!v45)
  {
    sub_20C13B424();
    v62 = sub_20C13BB74();
    v63 = sub_20C13D1D4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20B517000, v62, v63, "Banner message missing title", v64, 2u);
      MEMORY[0x20F2F6A40](v64, -1, -1);
    }

    (*(v105 + 8))(v13, v106);
    goto LABEL_32;
  }

  v46 = v45;
  sub_20C13C954();

  v47 = [v44 subtitle];
  if (!v47)
  {

    sub_20C13B424();
    v65 = sub_20C13BB74();
    v66 = sub_20C13D1D4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_20B517000, v65, v66, "Banner message missing subtitle", v67, 2u);
      MEMORY[0x20F2F6A40](v67, -1, -1);
    }

    (*(v105 + 8))(v16, v106);
LABEL_32:
    (*(v41 + 8))(v103, v28);
LABEL_52:
    v73 = 1;
    v71 = v107;
    goto LABEL_53;
  }

  v48 = v47;
  v49 = sub_20C13C954();

  v50 = [v44 contentParameters];
  if (!v50)
  {
    goto LABEL_33;
  }

  v92 = v49;
  v51 = v50;
  v52 = sub_20C13C754();

  v108 = sub_20C135594();
  v109 = v53;
  sub_20C13DC04();
  if (!*(v52 + 16) || (v54 = sub_20B65B190(v110), (v55 & 1) == 0))
  {

    sub_20B51D9C4(v110);
    goto LABEL_35;
  }

  sub_20B51F1D8(*(v52 + 56) + 32 * v54, v111);
  sub_20B51D9C4(v110);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:

LABEL_35:
    sub_20C13B424();
    v68 = sub_20C13BB74();
    v69 = sub_20C13D1D4();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v107;
    if (v70)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_20B517000, v68, v69, "Banner message missing content parameters", v72, 2u);
      MEMORY[0x20F2F6A40](v72, -1, -1);
    }

    (*(v105 + 8))(v19, v106);
    goto LABEL_38;
  }

  v32 = v108;
  v56 = [v104 actions];
  if (!v56)
  {

LABEL_59:
    v87 = v101;
    sub_20C13B424();
    v88 = sub_20C13BB74();
    v89 = sub_20C13D1D4();
    v90 = os_log_type_enabled(v88, v89);
    v71 = v107;
    if (v90)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_20B517000, v88, v89, "Banner message malformed action", v91, 2u);
      MEMORY[0x20F2F6A40](v91, -1, -1);
    }

    (*(v105 + 8))(v87, v106);
LABEL_38:
    (*(v41 + 8))(v103, v37);
    v73 = 1;
LABEL_53:
    v86 = sub_20C1362B4();
    return (*(*(v86 - 8) + 56))(v71, v73, 1, v86);
  }

  v57 = v56;
  sub_20B51C88C(0, &qword_27C7625F0);
  v41 = sub_20C13CC74();

  if (!(v41 >> 62))
  {
    result = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_21;
    }

LABEL_57:

LABEL_58:
    v41 = v102;
    goto LABEL_59;
  }

LABEL_56:
  result = sub_20C13DB34();
  if (!result)
  {
    goto LABEL_57;
  }

LABEL_21:
  if ((v41 & 0xC000000000000001) != 0)
  {
    v59 = MEMORY[0x20F2F5430](0, v41);
    goto LABEL_24;
  }

  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = *(v41 + 32);
LABEL_24:
    v60 = v59;

    v61 = v99;
    sub_20BB0C00C(v99);
    if ((*(v98 + 48))(v61, 1, v24) != 1)
    {
      v74 = v61;
      v106 = v32;
      v75 = v100;
      sub_20B5E8614(v74, v100);
      sub_20B5E8678(v75, v94);
      v76 = [v95 identifier];
      v105 = sub_20C13C954();
      v101 = v77;

      v78 = v102;
      v79 = v103;
      (*(v102 + 16))(v93, v103, v37);

      v71 = v107;
      sub_20C136274();

      sub_20B5E86DC(v100);
      (*(v78 + 8))(v79, v37);
      v73 = 0;
      goto LABEL_53;
    }

    sub_20B5E85AC(v61);
    goto LABEL_58;
  }

  __break(1u);
  return result;
}

uint64_t sub_20B5E85AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7625D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5E8614(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E74();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E8678(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C135E74();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5E86DC(uint64_t a1)
{
  v2 = sub_20C135E74();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5E8738()
{
  v0 = sub_20C13A814();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  __swift_allocate_value_buffer(v4, qword_27C7625F8);
  __swift_project_value_buffer(v4, qword_27C7625F8);
  (*(v1 + 104))(v3, *MEMORY[0x277D4EEC0], v0);
  v6[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768830);
  sub_20B5EB060(&unk_27C76BB90);
  sub_20B5EB060(&unk_27C768840);
  return sub_20C13A384();
}

char *sub_20B5E88D0(int a1)
{
  v141 = a1;
  v2 = sub_20C13C554();
  v143 = *(v2 - 8);
  v144 = v2;
  MEMORY[0x28223BE20](v2);
  v142 = (&v139 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C132EE4();
  v157 = *(v4 - 8);
  v158 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v154 = &v139 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v146 = *(v9 - 8);
  v147 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v145 = &v139 - v13;
  v14 = sub_20C133154();
  v148 = *(v14 - 8);
  v149 = v14;
  MEMORY[0x28223BE20](v14);
  v150 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762648);
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v19 = &v139 - v18;
  v160 = v1;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
  if (v20)
  {

    v20(v21);
    sub_20B583ECC(v20);
  }

  v22 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_durations);
  v23 = MEMORY[0x277D84F90];
  if (v22 && *(v22 + 16))
  {
    v159 = *(v22 + 16);
    v24 = qword_27C760658;

    if (v24 != -1)
    {
      goto LABEL_119;
    }

LABEL_6:
    v25 = __swift_project_value_buffer(v16, qword_27C7625F8);
    (*(v17 + 16))(v19, v25, v16);
    sub_20C13A344();
    (*(v17 + 8))(v19, v16);
    if (v182 == 2 || (v182 & 1) == 0)
    {
      v26 = &unk_2822880F0;
    }

    else
    {
      v26 = &unk_282288090;
    }

    v52 = v26[2];
    v53 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
    v155 = v22;
    if (v52)
    {
      *&v182 = v23;
      sub_20BB5DAF0(0, v52, 0);
      v54 = v182;
      v152 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_workoutPlanStringBuilder);
      v153 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount;
      v55 = 4;
      v151 = xmmword_20C14F980;
      v156 = v26;
      do
      {
        v56 = v26[v55];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
        v57 = swift_allocObject();
        *(v57 + 16) = v151;
        *(v57 + 56) = MEMORY[0x277D83B88];
        *(v57 + 64) = MEMORY[0x277D83C10];
        *(v57 + 32) = v56;
        __swift_project_boxed_opaque_existential_1((v152 + 48), *(v152 + 72));
        v58 = sub_20B5E10B0();
        v60 = v59;

        if (*(v160 + v153) == v56)
        {
          v61 = 2;
        }

        else
        {
          v61 = 1;
        }

        *&v182 = v54;
        v63 = *(v54 + 16);
        v62 = *(v54 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_20BB5DAF0((v62 > 1), v63 + 1, 1);
          v54 = v182;
        }

        *(v54 + 16) = v63 + 1;
        v64 = v54 + 32 * v63;
        *(v64 + 32) = v58;
        *(v64 + 40) = v60;
        *(v64 + 48) = v56;
        *(v64 + 56) = v61;
        ++v55;
        --v52;
        v26 = v156;
      }

      while (v52);
      v152 = v54;

      v22 = v155;
      v53 = &OBJC_IVAR____TtC9SeymourUI36TVCatalogWorkoutDetailViewController_dependencies;
    }

    else
    {

      v152 = MEMORY[0x277D84F90];
    }

    v156 = *(v160 + v53[196]);
    v65 = MEMORY[0x277D84F90];
    v23 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime;
    v66 = 32;
    while (1)
    {
      v17 = *(v22 + v66);
      v67 = (v17 * 60) >> 64;
      if (v67 != (60 * v17) >> 63)
      {
        break;
      }

      __swift_project_boxed_opaque_existential_1(v156 + 6, v156[9]);
      v68 = sub_20C138CD4();
      if (v69)
      {
        v19 = v68;
      }

      else
      {
        v19 = 0;
      }

      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0xE000000000000000;
      }

      if (*(v23 + v160) == v17)
      {
        v71 = 2;
      }

      else
      {
        v71 = 1;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_20BC064B0(0, *(v65 + 2) + 1, 1, v65);
      }

      v73 = *(v65 + 2);
      v72 = *(v65 + 3);
      if (v73 >= v72 >> 1)
      {
        v65 = sub_20BC064B0((v72 > 1), v73 + 1, 1, v65);
      }

      *(v65 + 2) = v73 + 1;
      v74 = &v65[32 * v73];
      *(v74 + 4) = v19;
      *(v74 + 5) = v70;
      *(v74 + 6) = v17;
      v74[56] = v71;
      v66 += 8;
      --v159;
      v22 = v155;
      if (!v159)
      {

        sub_20C133014();
        v22 = *(sub_20C1330B4() + 16);

        v75 = MEMORY[0x277D84F90];
        if (!v22)
        {
LABEL_75:
          v91 = swift_allocObject();
          v92 = v156;
          __swift_project_boxed_opaque_existential_1(v156 + 6, v156[9]);
          *(v91 + 16) = sub_20B5E107C();
          *(v91 + 24) = v93;
          *(v91 + 32) = v152;
          __swift_project_boxed_opaque_existential_1(v92 + 6, v92[9]);
          *(v91 + 40) = sub_20B5E107C();
          *(v91 + 48) = v94;
          *(v91 + 56) = v65;
          *(v91 + 64) = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_20C14F980;
          *(v95 + 32) = v91 | 0x6000000000000004;
          v17 = "TOTAL_TIME_PER_DAY";
          __swift_project_boxed_opaque_existential_1(v92 + 6, v92[9]);

          v96 = sub_20B5E107C();
          v174 = 0uLL;
          LOBYTE(v175) = 1;
          *(&v175 + 1) = 0;
          *&v176 = 0;
          WORD4(v176) = 128;
          v177 = 0u;
          v178 = 0u;
          v179 = 0u;
          LOBYTE(v180) = 0;
          *(&v180 + 1) = v95;
          *v181 = MEMORY[0x277D84F90];
          *&v181[16] = 0;
          *&v181[8] = 0;
          *&v181[24] = v96;
          *&v181[32] = v97;
          *&v181[40] = xmmword_20C150190;
          nullsub_1(&v174);
          v23 = (v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
          v98 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
          v190 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
          v191 = v98;
          v192 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
          v99 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
          v186 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
          v187 = v99;
          v100 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
          v188 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
          v189 = v100;
          v101 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
          v182 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
          v183 = v101;
          v102 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
          v184 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
          v185 = v102;
          v103 = *&v181[32];
          *(v23 + 8) = *&v181[16];
          *(v23 + 9) = v103;
          v23[20] = *&v181[48];
          v104 = v179;
          *(v23 + 4) = v178;
          *(v23 + 5) = v104;
          v105 = *v181;
          *(v23 + 6) = v180;
          *(v23 + 7) = v105;
          v106 = v175;
          *v23 = v174;
          *(v23 + 1) = v106;
          v107 = v177;
          *(v23 + 2) = v176;
          *(v23 + 3) = v107;
          sub_20B520158(&v182, &qword_27C762340);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_78;
          }

          v109 = Strong;
          if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
          {
            swift_unknownObjectRelease();
LABEL_78:

LABEL_101:
            v127 = v148;
            v126 = v149;
            return (*(v127 + 1))(v150, v126);
          }

          if ([*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
            if (swift_dynamicCastClass())
            {
              v139 = v91;
              v140 = v109;
              v19 = v145;
              sub_20C13BFA4();
              swift_unknownObjectRelease();
              v110 = v147;
              v111 = sub_20C13BE74();
              (*(v146 + 8))(v19, v110);
              v156 = *(v111 + 16);
              if (v156)
              {
                v22 = 0;
                v152 = v111 + 32;
                v153 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
                *&v151 = v157 + 16;
                v155 = (v157 + 8);
                v16 = &qword_27C7641A0;
                v146 = v111;
                while (2)
                {
                  if (v22 >= *(v111 + 16))
                  {
                    goto LABEL_118;
                  }

                  v112 = (v152 + 24 * v22);
                  v17 = v112[1];
                  v147 = *v112;
                  v113 = v112[2];
                  ++v22;
                  (*v151)(v154, v160 + v153, v158);
                  v19 = *(v17 + 16);

                  v159 = v113;

                  v114 = 0;
                  do
                  {
                    if (v19 == v114)
                    {
                      (*v155)(v154, v158);

                      goto LABEL_84;
                    }

                    v115 = v114 + 1;
                    sub_20B5EAF44(&qword_27C7641A0, MEMORY[0x277CC95F0]);
                    v116 = sub_20C13C894();
                    v114 = v115;
                  }

                  while ((v116 & 1) == 0);
                  (*v155)(v154, v158);
                  v117 = *(v23 + 9);
                  v171 = *(v23 + 8);
                  v172 = v117;
                  v173 = v23[20];
                  v118 = *(v23 + 5);
                  v167 = *(v23 + 4);
                  v168 = v118;
                  v119 = *(v23 + 7);
                  v169 = *(v23 + 6);
                  v170 = v119;
                  v120 = *(v23 + 1);
                  v163 = *v23;
                  v164 = v120;
                  v121 = *(v23 + 3);
                  v165 = *(v23 + 2);
                  v166 = v121;
                  v122 = sub_20B5EAF8C(&v163);
                  if (v122 == 1)
                  {
                    v123 = 0;
                    v124 = 0;
                  }

                  else
                  {
                    v123 = *(&v171 + 1);
                    v124 = v172;
                  }

                  v125 = v159;
                  v162[0] = v123;
                  v162[1] = v124;
                  MEMORY[0x28223BE20](v122);
                  *(&v139 - 2) = v162;
                  v19 = sub_20B796758(sub_20B5EB0CC, (&v139 - 4), v125);

                  if ((v19 & 1) == 0)
                  {

                    v111 = v146;
LABEL_84:
                    if (v22 == v156)
                    {
                      goto LABEL_98;
                    }

                    continue;
                  }

                  break;
                }

                sub_20B5E2E18();
                v133 = sub_20C13D374();
                v135 = v142;
                v134 = v143;
                *v142 = v133;
                v136 = v144;
                (*(v134 + 104))(v135, *MEMORY[0x277D85200], v144);
                v137 = sub_20C13C584();
                result = (*(v134 + 8))(v135, v136);
                if ((v137 & 1) == 0)
                {
                  goto LABEL_121;
                }

                v127 = v148;
                v138 = v149;
                if ((v141 & 0x80) != 0)
                {
                  sub_20C10AB7C(v160, v147, v141 & 1, v140);
                }

                else
                {
                  sub_20B61EB50(v147, v17, v159, v160, v141 & 1, v140);
                }

                swift_unknownObjectRelease();

                v126 = v138;
                return (*(v127 + 1))(v150, v126);
              }

LABEL_98:
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }

          sub_20C0C2D50(0);

          swift_unknownObjectRelease();
          goto LABEL_101;
        }

        v159 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
        swift_beginAccess();
        v16 = 0;
        v153 = v22;
        while (1)
        {
          v77 = MEMORY[0x20F2EF6F0](v16);
          if (v77 != 7)
          {
            v78 = v77;
            v79 = sub_20C1330B4();
            v80 = sub_20C137F44();
            if ((v80 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_116:
              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              __break(1u);
LABEL_119:
              swift_once();
              goto LABEL_6;
            }

            if (v80 >= *(v79 + 16))
            {
              goto LABEL_116;
            }

            v81 = objc_allocWithZone(MEMORY[0x277CCA898]);
            v82 = sub_20C13C914();

            v23 = [v81 initWithString_];

            v83 = *(v160 + v159);
            if (*(v83 + 16))
            {
              sub_20C13E164();

              v84 = sub_20C137F94();
              MEMORY[0x20F2F58E0](v84);
              v85 = sub_20C13E1B4();
              v86 = -1 << *(v83 + 32);
              v87 = v85 & ~v86;
              if ((*(v83 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
              {
                v155 = v23;
                v88 = ~v86;
                while (1)
                {
                  v89 = sub_20C137F94();
                  if (v89 == sub_20C137F94())
                  {
                    break;
                  }

                  v87 = (v87 + 1) & v88;
                  if (((*(v83 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
                  {
                    v17 = 1;
                    goto LABEL_69;
                  }
                }

                v17 = 2;
LABEL_69:
                v23 = v155;
              }

              else
              {
                v17 = 1;
              }

              v22 = v153;
            }

            else
            {
              v17 = 1;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_20BC063A4(0, *(v75 + 2) + 1, 1, v75);
            }

            v19 = *(v75 + 2);
            v90 = *(v75 + 3);
            if (v19 >= v90 >> 1)
            {
              v75 = sub_20BC063A4((v90 > 1), v19 + 1, 1, v75);
            }

            *(v75 + 2) = v19 + 1;
            v76 = &v75[16 * v19];
            *(v76 + 4) = v23;
            v76[40] = v17;
            v76[41] = v78;
          }

          v16 = (v16 + 1);
          if (v16 == v22)
          {
            goto LABEL_75;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_111;
  }

  v174 = 0uLL;
  LOBYTE(v175) = 1;
  *(&v175 + 1) = 0;
  *&v176 = 0;
  WORD4(v176) = 128;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  LOBYTE(v180) = 0;
  *(&v180 + 1) = MEMORY[0x277D84F90];
  *v181 = MEMORY[0x277D84F90];
  memset(&v181[8], 0, 40);
  *&v181[48] = 2;
  nullsub_1(&v174);
  v22 = v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row;
  v27 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v190 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v191 = v27;
  v192 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v28 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v186 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v187 = v28;
  v29 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v188 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v189 = v29;
  v30 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v182 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v183 = v30;
  v31 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v184 = *(v160 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v185 = v31;
  v32 = *&v181[32];
  *(v22 + 128) = *&v181[16];
  *(v22 + 144) = v32;
  *(v22 + 160) = *&v181[48];
  v33 = v179;
  *(v22 + 64) = v178;
  *(v22 + 80) = v33;
  v34 = *v181;
  *(v22 + 96) = v180;
  *(v22 + 112) = v34;
  v35 = v175;
  *v22 = v174;
  *(v22 + 16) = v35;
  v36 = v177;
  *(v22 + 32) = v176;
  *(v22 + 48) = v36;
  sub_20B520158(&v182, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
    {
      v148 = result;
      if ([*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
        if (swift_dynamicCastClass())
        {
          sub_20C13BFA4();
          swift_unknownObjectRelease();
          v19 = v147;
          v38 = sub_20C13BE74();
          (*(v146 + 8))(v12, v19);
          v155 = *(v38 + 16);
          v156 = v38;
          if (v155)
          {
            v39 = 0;
            v153 = (v156 + 4);
            v154 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
            v152 = v157 + 16;
            *&v151 = v157 + 8;
            v23 = &qword_27C7641A0;
LABEL_17:
            if (v39 >= v156[2])
            {
              goto LABEL_117;
            }

            v40 = (v153 + 24 * v39);
            v16 = v40[1];
            v150 = *v40;
            v41 = v40[2];
            v39 = (v39 + 1);
            (*v152)(v7, &v154[v160], v158);
            v19 = v16[2];

            v159 = v41;

            v42 = 0;
            do
            {
              if (v19 == v42)
              {
                (*v151)(v7, v158);
LABEL_16:

                if (v39 == v155)
                {
                  goto LABEL_94;
                }

                goto LABEL_17;
              }

              v17 = v42 + 1;
              sub_20B5EAF44(&qword_27C7641A0, MEMORY[0x277CC95F0]);
              v43 = sub_20C13C894();
              v42 = v17;
            }

            while ((v43 & 1) == 0);
            (*v151)(v7, v158);
            v44 = *(v22 + 144);
            v171 = *(v22 + 128);
            v172 = v44;
            v173 = *(v22 + 160);
            v45 = *(v22 + 80);
            v167 = *(v22 + 64);
            v168 = v45;
            v46 = *(v22 + 112);
            v169 = *(v22 + 96);
            v170 = v46;
            v47 = *(v22 + 16);
            v163 = *v22;
            v164 = v47;
            v48 = *(v22 + 48);
            v165 = *(v22 + 32);
            v166 = v48;
            v49 = sub_20B5EAF8C(&v163);
            if (v49 == 1)
            {
              v50 = 0;
              v51 = 0;
            }

            else
            {
              v50 = *(&v171 + 1);
              v51 = v172;
            }

            v17 = v159;
            v149 = &v139;
            v161[0] = v50;
            v161[1] = v51;
            MEMORY[0x28223BE20](v49);
            *(&v139 - 2) = v161;
            v19 = sub_20B796758(sub_20B5EAFA4, (&v139 - 4), v17);

            if ((v19 & 1) == 0)
            {
              goto LABEL_16;
            }

            sub_20B5E2E18();
            v128 = sub_20C13D374();
            v130 = v142;
            v129 = v143;
            *v142 = v128;
            v131 = v144;
            (*(v129 + 104))(v130, *MEMORY[0x277D85200], v144);
            v132 = sub_20C13C584();
            result = (*(v129 + 8))(v130, v131);
            if (v132)
            {
              LOBYTE(v67) = v141;
              if ((v141 & 0x80) == 0)
              {
                sub_20B61EB50(v150, v16, v159, v160, v141 & 1, v148);
LABEL_112:

                return swift_unknownObjectRelease();
              }

LABEL_111:
              sub_20C10AB7C(v160, v150, v67 & 1, v148);
              goto LABEL_112;
            }

            __break(1u);
LABEL_121:
            __break(1u);
            return result;
          }

LABEL_94:
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_20C0C2D50(0);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B5E9D34()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  swift_unknownObjectRelease();

  sub_20B583ECC(*(v0 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated));

  v8 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return v0;
}

uint64_t sub_20B5E9E9C()
{
  sub_20B5E9D34();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanSurveySchedulePickerShelf()
{
  result = qword_27C762630;
  if (!qword_27C762630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B5E9F48()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B5EA070@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B5EA0E8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B5EA1D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[7];
  v7 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v7;
  *(v5 + 160) = v18;
  v8 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v8;
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v6;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf____lazy_storage___numberFormatter) = 0;
  v11 = (v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime) = 30;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount) = 4;
  v12 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
  *(v2 + v12) = sub_20C135BD4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_durations) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_eventHub) = v16;
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_workoutPlanStringBuilder) = v16;
  v13 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_metricPage;
  v14 = sub_20C1333A4();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

unint64_t sub_20B5EA38C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[0] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_20C1352E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C133154();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133014();
  v15 = sub_20C1330C4();
  (*(v12 + 8))(v14, v11);
  result = sub_20C137F44();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v15 + 16))
  {

    v18[1] = v3;
    (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
    v17 = sub_20C135ED4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf();
    sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf);
    sub_20C138D94();

    sub_20B520158(v6, &unk_27C7621D0);
    return (*(v8 + 8))(v10, v7);
  }

  __break(1u);
  return result;
}

void sub_20B5EA6A4(unint64_t a1, uint64_t a2)
{
  v5 = sub_20C13BB84();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v43 - v9;
  v45 = sub_20C1352E4();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20C134F24();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v15);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 10)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v28 = *(v17 + 2);

      *(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekCount) = v28;
      sub_20B5E88D0(128);
      return;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v19 = *(v17 + 2);
      v20 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime;
      if (*(v2 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedTime) == v19)
      {
      }

      else
      {
        v43[1] = *v17;
        v50 = v2;
        v35 = *MEMORY[0x277D51450];
        v36 = v46;
        v44 = v19;
        (*(v46 + 104))(v47, v35, v48);
        v37 = v11;
        (*(v11 + 104))(v13, *MEMORY[0x277D51768], v45);
        v38 = sub_20C135ED4();
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        type metadata accessor for WorkoutPlanSurveySchedulePickerShelf();
        sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf);
        v39 = v47;
        sub_20C138D94();
        sub_20B520158(v10, &unk_27C7621D0);
        (*(v37 + 8))(v13, v45);
        (*(v36 + 8))(v39, v48);

        *(v2 + v20) = v44;
        sub_20B5E88D0(128);
      }

      return;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 11)
  {
    v29 = *v17;
    v30 = v17[9];
    v31 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
    swift_beginAccess();
    v32 = *(v2 + v31);

    v33 = sub_20B8D7460(v30, v32);

    if (v33)
    {
      if (*(*(v2 + v31) + 16) < 2uLL)
      {
LABEL_20:
        sub_20B5E88D0(0);

        return;
      }

      swift_beginAccess();
      sub_20B6C9D3C();
      swift_endAccess();
      v34 = MEMORY[0x277D51440];
    }

    else
    {
      swift_beginAccess();
      sub_20B700680(&v49, v30);
      swift_endAccess();
      v34 = MEMORY[0x277D51450];
    }

    v41 = v46;
    v40 = v47;
    v42 = v48;
    (*(v46 + 104))(v47, *v34, v48);
    sub_20B5EA38C(v30, v40);
    (*(v41 + 8))(v40, v42);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 16)
  {
LABEL_10:
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20B517000, v25, v26, "[WorkoutPlanSurveySchedulePickerShelf] Unexpected shelf item action", v27, 2u);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    (*(v44 + 8))(v7, v5);
    sub_20B5E2760(v17);
    return;
  }

  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x34)
  {
    v50 = v2;
    v22 = v46;
    v21 = v47;
    (*(v46 + 104))(v47, *MEMORY[0x277D51450], v48);
    v23 = v45;
    (*(v11 + 104))(v13, *MEMORY[0x277D51768], v45);
    v24 = sub_20C135ED4();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf();
    sub_20B5EAF44(&qword_27C762640, type metadata accessor for WorkoutPlanSurveySchedulePickerShelf);
    sub_20C138D94();
    sub_20B520158(v10, &unk_27C7621D0);
    (*(v11 + 8))(v13, v23);
    (*(v22 + 8))(v21, v48);
  }
}

uint64_t sub_20B5EAE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5EAED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5EAF44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B5EAF8C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_20B5EB060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C768830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20B5EB17C(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for TintableShapeLayer();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

void sub_20B5EB248(void *a1, SEL *a2, SEL *a3, void *a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for TintableShapeLayer();
  objc_msgSendSuper2(&v10, *a2, a1);
  if (*&v4[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] != 2)
  {
    v9 = [v4 *a3];

    a1 = *&v4[*a4];
    *&v4[*a4] = v9;
  }
}

void sub_20B5EB2E4(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] = a1;
  if (a1 == 2)
  {
    v3 = [v1 borderColor];
    if (v3)
    {
      v4 = v3;
      v5 = sub_20C09BB98();
      [v2 setBorderColor_];
    }

    v6 = [v2 strokeColor];
    if (v6)
    {
      v7 = v6;
      v9 = sub_20C09BB98();
      [v2 setStrokeColor_];
    }
  }

  else
  {
    [v1 setBorderColor_];
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor];

    [v1 setStrokeColor_];
  }
}

id sub_20B5EB54C(void *a1)
{
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_tintAdjustmentMode] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedBorderColor] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI18TintableShapeLayer_undimmedStrokeColor] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TintableShapeLayer();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_20B5EB600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintableShapeLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B5EB6A4(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B5EB728(v3, v4, v1, v2);
  }

  return result;
}

uint64_t sub_20B5EB728(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v67 = a2;
  v64 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v9;
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v74 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x28223BE20](v12);
  v68 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = sub_20C136C64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v61 - v21;
  v22 = sub_20C13BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  sub_20C13B4A4();
  sub_20C13BB64();
  v62 = *(v23 + 8);
  v62(v28, v22);
  __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
  sub_20C13B174();
  v29 = v17;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_20B5EC5BC(v16);
    sub_20C13B4A4();
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20B517000, v30, v31, "Completed tip but no active environment, not updating", v32, 2u);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    return (v62)(v25, v22);
  }

  else
  {
    v34 = *(v18 + 32);
    v35 = v73;
    v36 = v29;
    v34(v73, v16, v29);
    __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
    sub_20C1398E4();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = v18;
    v39 = *(v18 + 16);
    v40 = v63;
    v41 = v35;
    v42 = v36;
    v61 = v36;
    v39(v63, v41, v36);
    v43 = v38;
    v44 = (*(v38 + 80) + 40) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v37;
    *(v45 + 24) = a4;
    *(v45 + 32) = a3;
    v34((v45 + v44), v40, v42);
    v46 = (v45 + ((v19 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
    v47 = v67;
    *v46 = v64;
    v46[1] = v47;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_20B5EC624;
    *(v48 + 24) = v45;
    v50 = v69;
    v49 = v70;
    v51 = v66;
    v52 = v74;
    (*(v69 + 16))(v66, v74, v70);
    v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v54 = (v65 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = swift_allocObject();
    (*(v50 + 32))(v55 + v53, v51, v49);
    v56 = (v55 + v54);
    *v56 = sub_20B58D058;
    v56[1] = v48;

    v57 = v68;
    sub_20C137C94();
    (*(v50 + 8))(v52, v49);
    v58 = v72;
    v59 = sub_20C137CB4();
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    v59(sub_20B52347C, v60);

    (*(v71 + 8))(v57, v58);
    return (*(v43 + 8))(v73, v61);
  }
}

uint64_t sub_20B5EBE30(double a1, double a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v64 = a6;
  v65 = a7;
  v62 = a5;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v57 - v14;
  v16 = sub_20C13B0C4();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v59 = (v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_20C132E94();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_20C137404();
  v66 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v63 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v57 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  if (a1 <= 0.0)
  {
    sub_20C13B534();
    v20 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (os_log_type_enabled(v20, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v20, v32, "[RemoteBrowsingCompletedTipObserver] invalid tip duration, not journaling", v33, 2u);
      MEMORY[0x20F2F6A40](v33, -1, -1);

      return v10[1](v12, v9);
    }

LABEL_11:

    return v10[1](v12, v9);
  }

  sub_20C1340C4();
  if (v28 <= a2 / a1)
  {
    v58 = v27;
    v34 = sub_20C136AA4();
    v35 = v65;

    v36 = v34;
    v37 = v68;
    v12 = sub_20B5EE244(v36, v64, v35);
    v10 = v37;

    v38 = *(v12 + 2);
    if (v38)
    {
      v39 = sub_20BEDE99C(*(v12 + 2), 0);
      v68 = sub_20BEE2114(v67, &v39[(*(v66 + 80) + 32) & ~*(v66 + 80)], v38, v12);
      v9 = v67[2];
      v62 = v67[3];
      v57[1] = v67[4];

      sub_20B583EDC();
      if (v68 != v38)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      v39 = MEMORY[0x277D84F90];
    }

    v67[0] = v39;
    sub_20B5EC6D8(v67);
    v68 = v37;
    if (!v37)
    {

      v40 = v67[0][2];
      v41 = v58;
      if (v40)
      {
        v42 = v66;
        (*(v66 + 16))(v25, v67[0] + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v66 + 72) * (v40 - 1), v21);

        v43 = sub_20C1373D4();
        (*(v42 + 8))(v25, v21);
        if (!__OFADD__(v43, 1))
        {
LABEL_19:

          sub_20C132E84();
          v44 = v63;
          sub_20C1373E4();
          v45 = v41[10];
          v65 = v41[11];
          __swift_project_boxed_opaque_existential_1(v41 + 7, v45);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762668);
          v46 = v66;
          v47 = (*(v66 + 80) + 32) & ~*(v66 + 80);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_20C14F980;
          (*(v46 + 16))(v48 + v47, v44, v21);
          v49 = sub_20BE8CE0C(v48);
          swift_setDeallocating();
          v50 = *(v46 + 8);
          v50(v48 + v47, v21);
          swift_deallocClassInstance();
          v51 = v59;
          *v59 = v49;
          v52 = *MEMORY[0x277D4F628];
          v53 = sub_20C13B254();
          (*(*(v53 - 8) + 104))(v51, v52, v53);
          v55 = v60;
          v54 = v61;
          (*(v60 + 104))(v51, *MEMORY[0x277D4F518], v61);
          sub_20C13B2A4();

          (*(v55 + 8))(v51, v54);
          return (v50)(v63, v21);
        }
      }

      else
      {

        if (!v56)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_20C13B534();
  v29 = sub_20C13BB74();
  v30 = sub_20C13D1F4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_20B517000, v29, v30, "[RemoteBrowsingCompletedTipObserver] percent complete does not meet threshold, not journaling", v31, 2u);
    MEMORY[0x20F2F6A40](v31, -1, -1);
  }

  else
  {
  }

  return v10[1](v15, v9);
}

uint64_t sub_20B5EC550()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_20B5EC5BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B5EC624(uint64_t a1)
{
  v3 = *(sub_20C136C64() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20B5EBE30(*(v1 + 24), *(v1 + 32), a1, *(v1 + 16), (v1 + v4), *v5, v5[1]);
}

void sub_20B5EC6D8(void **a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B5EC780(v5);
  *a1 = v3;
}

void sub_20B5EC780(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20B5ECC4C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B5EC8AC(0, v2, 1, a1);
  }
}

void sub_20B5EC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B5ECC4C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20B5ED84C(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20B5ED84C(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20B5ED84C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A08E8(&v75, &v74, &v73);
}

unint64_t *sub_20B5EDF28(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B5EDFCC(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void sub_20B5EDFCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  v35 = a5;
  v36 = a4;
  v29 = a1;
  v6 = sub_20C137404();
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v33 = v7;
  v34 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v32 = v7 + 16;
  v30 = 0;
  v31 = (v7 + 8);
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_12:
    v23 = v20 | (v11 << 6);
    (*(v33 + 16))(v10, *(v34 + 48) + *(v33 + 72) * v23, v6, v8);
    if (sub_20C1373F4() == v36 && v24 == v35)
    {

      (*v31)(v10, v6);
      goto LABEL_15;
    }

    v19 = sub_20C13DFF4();

    (*v31)(v10, v6);
    if (v19)
    {
LABEL_15:
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_18:
        v26 = v34;

        sub_20BC0F700(v29, v28, v30, v26);
        return;
      }
    }
  }

  v21 = v11;
  while (1)
  {
    v11 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v22 = *(v13 + 8 * v11);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v17 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20B5EE244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v37 = sub_20C137404();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;
  v35 = a3;

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v28 = v11;
    v29 = v4;
    v27 = &v27;
    MEMORY[0x28223BE20](v13);
    v30 = &v27 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v12);
    v14 = 0;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v11 = v16 & *(a1 + 56);
    v4 = (v15 + 63) >> 6;
    v33 = v7 + 16;
    v34 = v7;
    v31 = 0;
    v32 = (v7 + 8);
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v20 = v17 | (v14 << 6);
      v7 = a1;
      (*(v34 + 16))(v9, *(a1 + 48) + *(v34 + 72) * v20, v37);
      if (sub_20C1373F4() == v36 && v21 == v35)
      {

        (*v32)(v9, v37);
        goto LABEL_16;
      }

      v12 = sub_20C13DFF4();

      (*v32)(v9, v37);
      if (v12)
      {
LABEL_16:
        *&v30[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_19:
          v23 = sub_20BC0F700(v30, v28, v31, a1);

          return v23;
        }
      }
    }

    v18 = v14;
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v4)
      {
        goto LABEL_19;
      }

      v19 = *(a1 + 56 + 8 * v14);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v25 = swift_slowAlloc();
  v26 = v35;

  v23 = sub_20B5EDF28(v25, v11, a1, v36, v26);

  MEMORY[0x20F2F6A40](v25, -1, -1);

  return v23;
}

void sub_20B5EE614(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9SeymourUI19SessionDistanceView_presenter] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;

  v4 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = objc_allocWithZone(MEMORY[0x277D75348]);
  v6 = v4;
  v7 = [v5 initWithWhite:0.921568627 alpha:{1.0, v13.receiver, v13.super_class}];
  [*&v6[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel] setTextColor_];
  v8 = v6;

  v9 = [objc_opt_self() distanceColors];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 nonGradientTextColor];

    if (v11)
    {
      [*&v8[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel] setTextColor_];

      *(*&v8[OBJC_IVAR____TtC9SeymourUI19SessionDistanceView_presenter] + OBJC_IVAR____TtC9SeymourUI30SessionDistanceMetricPresenter_display + 8) = &off_2822D0928;
      swift_unknownObjectWeakAssign();
      v12 = v8;

      sub_20B78E8EC();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_20B5EE860()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20B5EE8CC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = _UISolariumEnabled();
  v12 = 0.0;
  if (v11)
  {
    v12 = 7.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout];
  *v13 = xmmword_20C1503F0;
  *(v13 + 1) = xmmword_20C150400;
  *(v13 + 2) = xmmword_20C150410;
  *(v13 + 3) = xmmword_20C150420;
  *(v13 + 4) = xmmword_20C150430;
  *(v13 + 10) = v12;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 8.0;
  }

  v16 = &v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  v17 = [v14 layer];
  [v17 setCornerRadius_];

  [v14 setClipsToBounds_];
  *v16 = v14;
  *(v16 + 1) = &off_2822B63E8;
  v18 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = *MEMORY[0x277D769A8];
  v242 = objc_opt_self();
  v22 = [v242 preferredFontDescriptorWithTextStyle:v21 compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel;
  v240 = objc_opt_self();
  v26 = [v240 fontWithDescriptor:v22 size:0.0];

  [v19 setFont_];
  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  [v19 setAllowsDefaultTighteningForTruncation_];
  v238 = objc_opt_self();
  v27 = [v238 whiteColor];
  [v19 setTextColor_];

  *&v4[v25] = v19;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setAdjustsFontForContentSizeCategory_];
  LODWORD(v29) = 1148846080;
  [v28 setContentCompressionResistancePriority:1 forAxis:v29];

  v244 = *MEMORY[0x277D76918];
  v30 = [v242 preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection_];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v33 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel;
  v34 = v240;
  v35 = [v240 fontWithDescriptor:v30 size:0.0];

  [v28 setFont_];
  [v28 setNumberOfLines_];
  [v28 setLineBreakMode_];
  [v28 setAllowsDefaultTighteningForTruncation_];
  v36 = v238;
  v37 = [v238 secondaryLabelColor];
  [v28 setTextColor_];

  *&v4[v33] = v28;
  v38 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  v39 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v39 &selRef_count + 2];
  [v39 setAdjustsFontForContentSizeCategory_];
  LODWORD(v40) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v40];

  v41 = [v34 preferredFontForTextStyle_];
  [v39 setFont_];

  [v39 setNumberOfLines_];
  [v39 setAllowsDefaultTighteningForTruncation_];
  v42 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v39 setTextColor_];

  *&v4[v38] = v39;
  v43 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  v44 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v44 &selRef_count + 2];
  [v44 setAdjustsFontForContentSizeCategory_];
  LODWORD(v45) = 1148846080;
  [v44 setContentCompressionResistancePriority:1 forAxis:v45];

  v46 = [v34 preferredFontForTextStyle_];
  [v44 setFont_];

  [v44 setNumberOfLines_];
  [v44 setLineBreakMode_];
  [v44 setAllowsDefaultTighteningForTruncation_];
  v47 = [v36 secondaryLabelColor];
  [v44 setTextColor_];

  *&v4[v43] = v44;
  v48 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v49 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v49 &selRef_count + 2];
  *&v4[v48] = v49;
  v50 = type metadata accessor for ActionButtonTemplateBuilder();
  v51 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v52 = swift_allocObject();
  v53 = qword_27C760AA0;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v55 = qword_27C76CF78;
  v254[3] = v50;
  v254[4] = &off_2822EEB00;
  v237 = v51;
  v254[0] = v51;
  v252 = &type metadata for ActionButtonViewFactory;
  v253 = &off_2822B2B20;
  v56 = type metadata accessor for ActionButtonContainerView();
  v57 = objc_allocWithZone(v56);
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v254, v50);
  MEMORY[0x28223BE20](v58);
  v60 = (&v228 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v61 + 16))(v60);
  __swift_mutable_project_boxed_opaque_existential_1(&v251, v252);
  v62 = *v60;
  v250[3] = v50;
  v250[4] = &off_2822EEB00;
  v250[0] = v62;
  v248 = &type metadata for ActionButtonViewFactory;
  v249 = &off_2822B2B20;
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v250, &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v63 = &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  v236 = v52;
  *v63 = v52;
  v63[1] = &off_28229AE20;
  sub_20B51CC64(v247, &v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v54;
  *&v57[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v55;
  v246.receiver = v57;
  v246.super_class = v56;
  v64 = objc_msgSendSuper2(&v246, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v247);
  __swift_destroy_boxed_opaque_existential_1(v250);
  v65 = v64;
  __swift_destroy_boxed_opaque_existential_1(&v251);
  __swift_destroy_boxed_opaque_existential_1(v254);
  [v65 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView] = v65;
  v66 = type metadata accessor for TabletWorkoutPlanBrickItemCell();
  v245.receiver = v4;
  v245.super_class = v66;
  v67 = objc_msgSendSuper2(&v245, sel_initWithFrame_, a1, a2, a3, a4);
  v68 = [v67 contentView];
  v229 = &v67[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  [v68 addSubview_];

  v69 = [v67 contentView];
  v231 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  [v69 &selRef_onDisplayDisconnected];

  v232 = v67;
  v70 = v67;
  v71 = [v70 contentView];
  v234 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  [v71 &selRef_onDisplayDisconnected];

  v72 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView;
  *(*&v70[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView] + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822968A8;
  swift_unknownObjectWeakAssign();

  v73 = [v70 contentView];
  v235 = v72;
  [v73 &selRef_onDisplayDisconnected];

  v74 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v75 = [v70 contentView];
  v241 = v74;
  [v75 addLayoutGuide_];

  v76 = [v70 contentView];
  v239 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  [v76 addLayoutGuide_];

  v77 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  [v77 setAxis_];
  [v77 setAlignment_];
  v78 = &v70[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout];
  [v77 setSpacing_];
  v79 = [v70 contentView];
  [v79 addSubview_];

  v80 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v80 setTranslatesAutoresizingMaskIntoConstraints_];
  [v80 setAxis_];
  v244 = v78;
  [v80 setSpacing_];
  v81 = v77;
  [v77 addArrangedSubview_];
  [v80 addArrangedSubview_];
  v82 = *&v70[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
  v233 = v80;
  [v80 addArrangedSubview_];
  v83 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  v84 = *&v70[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton];
  v85 = [v238 whiteColor];
  [v84 setTintColor_];

  v86 = [v242 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940] compatibleWithTraitCollection:0];
  v87 = [v86 fontDescriptorWithSymbolicTraits_];
  if (v87)
  {
    v88 = v87;

    v86 = v88;
  }

  v89 = [v240 fontWithDescriptor:v86 size:0.0];

  v90 = [objc_opt_self() configurationWithFont_];
  v91 = *&v70[v83];
  v92 = v90;
  v93 = sub_20C13C914();
  v94 = objc_opt_self();
  v240 = v92;
  v95 = [v94 systemImageNamed:v93 withConfiguration:v92];

  v96 = *&v91[OBJC_IVAR____TtC9SeymourUI10IconButton_image];
  *&v91[OBJC_IVAR____TtC9SeymourUI10IconButton_image] = v95;

  [v91 setNeedsUpdateConfiguration];
  [*&v70[v83] addTarget:v70 action:sel_swapButtonTapped_ forControlEvents:64];
  v97 = *&v70[v83];
  v243 = v81;
  [v81 addArrangedSubview_];
  v98 = v229;
  v99 = *v229;
  v100 = v229[1];
  ObjectType = swift_getObjectType();
  v102 = v244[10];
  v230 = v83;
  v103 = v244;
  v104 = v100[31];
  v105 = v99;
  v104(ObjectType, v100, v102, v102, v102, v102);

  v238 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_20C150440;
  v107 = [*v98 leadingAnchor];
  v108 = [v70 contentView];
  v109 = [v108 leadingAnchor];

  v110 = [v107 constraintEqualToAnchor_];
  *(v106 + 32) = v110;
  v111 = [*v98 topAnchor];
  v112 = [v70 contentView];
  v113 = [v112 &selRef_setLineBreakMode_];

  v114 = [v111 &selRef:v113 alertControllerReleasedDictationButton:? + 5];
  *(v106 + 40) = v114;
  v115 = [*v98 bottomAnchor];
  v116 = [v70 contentView];
  v117 = [v116 &selRef_secondaryLabel + 5];

  v118 = [v115 constraintLessThanOrEqualToAnchor:v117 constant:-v103[3]];
  type metadata accessor for UILayoutPriority(0);
  v120 = v119;
  v251 = 1148846080;
  LODWORD(v250[0]) = 1065353216;
  v242 = sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v121) = v254[0];
  [v118 setPriority_];
  *(v106 + 48) = v118;
  v122 = [*v98 &selRef_secondaryLabel + 5];
  v123 = [v70 contentView];
  v124 = [v123 &selRef_secondaryLabel + 5];

  v125 = [v122 constraintEqualToAnchor:v124 constant:-v103[3]];
  v251 = 1148846080;
  LODWORD(v250[0]) = 1065353216;
  v228 = v120;
  sub_20C13BBA4();
  LODWORD(v126) = v254[0];
  [v125 &selRef_meterUnit];
  *(v106 + 56) = v125;
  v127 = [*v98 widthAnchor];
  v128 = [v70 contentView];
  v129 = [v128 widthAnchor];

  v130 = [v127 constraintEqualToAnchor:v129 multiplier:v103[2]];
  *(v106 + 64) = v130;
  v131 = [*v98 heightAnchor];
  v132 = [*v98 widthAnchor];
  v133 = v103;
  v134 = [v131 constraintEqualToAnchor:v132 multiplier:*v103];

  *(v106 + 72) = v134;
  v135 = v241;
  v136 = [v241 leadingAnchor];
  v137 = [*v98 trailingAnchor];
  v138 = [v136 constraintEqualToAnchor_];

  *(v106 + 80) = v138;
  v139 = [v135 trailingAnchor];
  v140 = [v70 contentView];
  v141 = [v140 trailingAnchor];

  v142 = [v139 constraintEqualToAnchor_];
  *(v106 + 88) = v142;
  v143 = [v135 topAnchor];
  v144 = [v70 contentView];
  v145 = [v144 topAnchor];

  v146 = [v143 &selRef:v145 alertControllerReleasedDictationButton:? + 5];
  *(v106 + 96) = v146;
  v147 = [v135 bottomAnchor];
  v148 = [v70 contentView];

  v149 = [v148 bottomAnchor];
  v150 = [v147 &selRef:v149 alertControllerReleasedDictationButton:? + 5];

  *(v106 + 104) = v150;
  v151 = v239;
  v152 = [*&v70[v239] leadingAnchor];
  v153 = [v135 leadingAnchor];
  v154 = [v152 constraintEqualToAnchor:v153 constant:v133[1]];

  *(v106 + 112) = v154;
  v155 = [*&v70[v151] trailingAnchor];
  v156 = [v135 trailingAnchor];
  v157 = [v155 &selRef:v156 alertControllerReleasedDictationButton:? + 5];

  v251 = 1148846080;
  LODWORD(v250[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v158) = v254[0];
  [v157 setPriority_];
  *(v106 + 120) = v157;
  v159 = [*&v70[v151] topAnchor];
  v160 = [v135 topAnchor];
  v161 = [v159 constraintGreaterThanOrEqualToAnchor_];

  *(v106 + 128) = v161;
  v162 = [*&v70[v151] bottomAnchor];
  v163 = [v135 bottomAnchor];
  v164 = [v162 constraintLessThanOrEqualToAnchor_];

  *(v106 + 136) = v164;
  v165 = [*&v70[v151] centerYAnchor];
  v166 = [v135 centerYAnchor];
  v167 = [v165 constraintEqualToAnchor_];

  v251 = 1148846080;
  LODWORD(v250[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v168) = v254[0];
  [v167 setPriority_];
  *(v106 + 144) = v167;
  v169 = v232;
  v170 = v231;
  v171 = [*&v232[v231] leadingAnchor];
  v172 = [*&v70[v151] leadingAnchor];
  v173 = [v171 constraintEqualToAnchor_];

  *(v106 + 152) = v173;
  v174 = [*&v169[v170] topAnchor];
  v175 = [*&v70[v151] topAnchor];
  v176 = [v174 constraintEqualToAnchor_];

  *(v106 + 160) = v176;
  v177 = [*&v169[v170] trailingAnchor];
  v178 = [*&v70[v151] trailingAnchor];
  v179 = [v177 constraintEqualToAnchor_];

  *(v106 + 168) = v179;
  v180 = v243;
  v181 = [v243 &selRef_setLineBreakMode_];
  v182 = [*&v169[v170] bottomAnchor];
  v183 = v244;
  v184 = [v181 constraintEqualToAnchor:v182 constant:v244[4]];

  *(v106 + 176) = v184;
  v185 = [v180 leadingAnchor];
  v186 = [*&v70[v151] leadingAnchor];
  v187 = [v185 constraintEqualToAnchor_];

  *(v106 + 184) = v187;
  v188 = [v180 trailingAnchor];
  v189 = [*&v70[v151] trailingAnchor];
  v190 = [v188 constraintEqualToAnchor_];

  *(v106 + 192) = v190;
  v191 = v230;
  v192 = [*&v70[v230] widthAnchor];
  v193 = [v192 constraintEqualToConstant_];

  *(v106 + 200) = v193;
  v194 = [*&v70[v191] heightAnchor];
  v195 = [*&v70[v191] widthAnchor];
  v196 = [v194 constraintEqualToAnchor_];

  *(v106 + 208) = v196;
  v197 = v234;
  v198 = [*&v70[v234] leadingAnchor];
  v199 = [*&v70[v151] leadingAnchor];
  v200 = [v198 constraintEqualToAnchor_];

  *(v106 + 216) = v200;
  v201 = [*&v70[v197] topAnchor];
  v202 = v243;
  v203 = [v243 bottomAnchor];

  v204 = [v201 constraintEqualToAnchor:v203 constant:v183[6]];
  *(v106 + 224) = v204;
  v205 = [*&v70[v197] trailingAnchor];
  v206 = v239;
  v207 = [*&v70[v239] trailingAnchor];
  v208 = [v205 constraintEqualToAnchor_];

  *(v106 + 232) = v208;
  v209 = v235;
  v210 = [*&v70[v235] leadingAnchor];
  v211 = [*&v70[v206] leadingAnchor];
  v212 = [v210 constraintEqualToAnchor_];

  *(v106 + 240) = v212;
  v213 = [*&v70[v209] trailingAnchor];
  v214 = [*&v70[v206] trailingAnchor];
  v215 = [v213 constraintEqualToAnchor_];

  *(v106 + 248) = v215;
  v216 = [*&v70[v209] topAnchor];
  v217 = [*&v70[v197] bottomAnchor];
  v218 = v244;
  v219 = [v216 constraintEqualToAnchor:v217 constant:v244[5]];

  *(v106 + 256) = v219;
  v220 = [*&v70[v209] bottomAnchor];
  v221 = [*&v70[v206] bottomAnchor];
  v222 = [v220 constraintLessThanOrEqualToAnchor:v221 constant:-v218[3]];

  *(v106 + 264) = v222;
  v223 = [*&v70[v209] heightAnchor];
  v224 = [v223 constraintEqualToConstant_];

  LODWORD(v225) = 1132068864;
  [v224 setPriority_];
  *(v106 + 272) = v224;
  sub_20B51C88C(0, &qword_281100500);
  v226 = sub_20C13CC54();

  [v238 activateConstraints_];

  return v70;
}

uint64_t sub_20B5F0830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for TabletWorkoutPlanBrickItemCell();
  v12.receiver = v0;
  v12.super_class = v4;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
  v6 = [v5 layer];
  [v6 setBorderColor_];

  v7 = [v5 layer];
  [v7 setBorderWidth_];

  v8 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v3, &v0[v9]);
  return swift_endAccess();
}

void sub_20B5F0A34(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a3 == -1 || (sub_20B590B28(), sub_20B590B7C(), (sub_20C133C04() & 1) == 0))
  {
    v6 = *(v4 + *a4);
    v9 = [v6 layer];
    [v9 setBorderColor_];
    v10 = 0.0;
  }

  else
  {
    v6 = *(v4 + *a4);
    v7 = [v6 layer];
    v8 = [objc_opt_self() separatorColor];
    v9 = [v8 CGColor];

    [v7 setBorderColor_];
    v10 = 1.0;
  }

  v11 = [v6 layer];
  [v11 setBorderWidth_];
}

uint64_t sub_20B5F0C80(void *a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v7);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    *v9 = a1;
    v12 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v12);
    *(&v17 - 4) = 0;
    *(&v17 - 24) = 1;
    *(&v17 - 2) = v9;
    *(&v17 - 1) = v11;
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    v14 = a1;
    v15 = [v13 indexPathForCell_];
    if (v15)
    {
      v16 = v15;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E2A84);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

id sub_20B5F0EF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletWorkoutPlanBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletWorkoutPlanBrickItemCell()
{
  result = qword_27C7626C0;
  if (!qword_27C7626C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B5F1060()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20B5F114C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B5F116C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_20B5F11BC(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v12);
    *(&v15 - 4) = 0;
    *(&v15 - 24) = 1;
    *(&v15 - 2) = v9;
    *(&v15 - 1) = v11;
    v13 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v13)
    {
      v14 = v13;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E275C);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5F6724(v9, type metadata accessor for ShelfItemAction);
  }

  return result;
}

double sub_20B5F13D0(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v4 = v3;
  swift_unknownObjectRelease();
  sub_20B755B8C(v9, v4);
  sub_20B5F320C(v9);
  v5 = *v9;
  [objc_msgSend(a2 container)];
  v7 = v6;
  swift_unknownObjectRelease();
  return v7 - v5 - v5;
}

uint64_t sub_20B5F1490(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B5F14DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20B5F1544(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B5F15A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5F165C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 168))(v5, a1, ObjectType, v7);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B5F6F04();
      v10 = swift_allocError();
      *(swift_allocObject() + 16) = v10;
      v11 = v10;
      sub_20B51C88C(0, &qword_27C7626E8);
      sub_20C137CA4();
      swift_unknownObjectRelease();
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v9, 1, v12);
}

void sub_20B5F1F68(void *a1, uint64_t a2, void *a3, int a4, void (*a5)(id), uint64_t a6, uint64_t *a7)
{
  v55 = a7;
  v56 = a3;
  v48[1] = a6;
  v49 = a1;
  v52 = a5;
  v51 = a4;
  v7 = sub_20C137C24();
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v50 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  MEMORY[0x28223BE20](v54);
  v10 = v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v48 - v17;
  v19 = sub_20C13C554();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v22 = sub_20C13D374();
  (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
  v23 = sub_20C13C584();
  (*(v20 + 8))(v22, v19);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = *v55;
    v55 = Strong;
    v26 = Strong + v25;
    v27 = *v26;
    v28 = *(v26 + 1);
    v48[0] = v26;
    v29 = v57;
    (*(v57 + 16))(v18, v56, v7);
    (*(v29 + 56))(v18, 0, 1, v7);
    ObjectType = swift_getObjectType();
    v31 = *(v28 + 8);
    v56 = v27;
    v31(ObjectType, v28);
    v32 = *(v54 + 48);
    sub_20B52F9E8(v18, v10, &unk_27C766680);
    sub_20B52F9E8(v16, &v10[v32], &unk_27C766680);
    v33 = *(v29 + 48);
    if (v33(v10, 1, v7) == 1)
    {
      sub_20B520158(v16, &unk_27C766680);
      sub_20B520158(v18, &unk_27C766680);
      if (v33(&v10[v32], 1, v7) == 1)
      {
        sub_20B520158(v10, &unk_27C766680);
LABEL_10:
        if ((v51 & 1) != 0 || ([v56 bounds], sub_20C13D504(), round(fabs(v47)) <= 1.0) && round(fabs(v46)) <= 1.0)
        {
          v39 = v48[0];
          v40 = *(v48[0] + 8);
          v41 = swift_getObjectType();
          v42 = *(v40 + 120);
          v43 = v49;
          v44 = v49;
          v42(v43, v41, v40);
          v45 = [*v39 setBackgroundColor_];
          if (v52)
          {
            v52(v45);
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v34 = v53;
      sub_20B52F9E8(v10, v53, &unk_27C766680);
      if (v33(&v10[v32], 1, v7) != 1)
      {
        v35 = v57;
        v36 = v50;
        (*(v57 + 32))(v50, &v10[v32], v7);
        sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
        v37 = sub_20C13C894();
        v38 = *(v35 + 8);
        v38(v36, v7);
        sub_20B520158(v16, &unk_27C766680);
        sub_20B520158(v18, &unk_27C766680);
        v38(v53, v7);
        sub_20B520158(v10, &unk_27C766680);
        if (v37)
        {
          goto LABEL_10;
        }

LABEL_15:

        return;
      }

      sub_20B520158(v16, &unk_27C766680);
      sub_20B520158(v18, &unk_27C766680);
      (*(v57 + 8))(v34, v7);
    }

    sub_20B520158(v10, &qword_27C7626D0);
    goto LABEL_15;
  }
}

void sub_20B5F2808(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(id), uint64_t a6, char *a7)
{
  v50 = a7;
  v51 = a3;
  v44 = a6;
  v45 = a1;
  v46 = a5;
  v47 = a4;
  v7 = sub_20C137C24();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  MEMORY[0x28223BE20](v49);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = sub_20C13C554();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v20 = sub_20C13D374();
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v21 = sub_20C13C584();
  (*(v18 + 8))(v20, v17);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = *v50;
    v50 = Strong;
    v42 = v23;
    v43 = v9;
    v24 = *&Strong[v23];
    v25 = v52;
    (*(v52 + 16))(v16, v51, v7);
    (*(v25 + 56))(v16, 0, 1, v7);
    v26 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
    swift_beginAccess();
    v27 = *(v49 + 12);
    sub_20B52F9E8(v16, v11, &unk_27C766680);
    sub_20B52F9E8(&v24[v26], &v11[v27], &unk_27C766680);
    v28 = *(v25 + 48);
    if (v28(v11, 1, v7) == 1)
    {
      v29 = v24;
      sub_20B520158(v16, &unk_27C766680);
      if (v28(&v11[v27], 1, v7) == 1)
      {
        sub_20B520158(v11, &unk_27C766680);
LABEL_10:
        if (v47)
        {

          v24 = v50;
          goto LABEL_12;
        }

        [v24 bounds];
        sub_20C13D504();
        v38 = v37;
        v40 = v39;

        if (round(fabs(v38)) <= 1.0)
        {
          v24 = v50;
          if (round(fabs(v40)) <= 1.0)
          {
LABEL_12:
            v35 = v42;
            [*&v24[v42] setStackImage_];
            v36 = [*&v24[v35] setBackgroundColor_];
            if (v46)
            {
              v46(v36);
            }
          }
        }

        else
        {
          v24 = v50;
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v30 = v48;
      sub_20B52F9E8(v11, v48, &unk_27C766680);
      if (v28(&v11[v27], 1, v7) != 1)
      {
        v32 = v52;
        v33 = v43;
        (*(v52 + 32))(v43, &v11[v27], v7);
        sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
        v49 = v24;
        LODWORD(v51) = sub_20C13C894();
        v34 = *(v32 + 8);
        v34(v33, v7);
        sub_20B520158(v16, &unk_27C766680);
        v34(v30, v7);
        sub_20B520158(v11, &unk_27C766680);
        if ((v51 & 1) == 0)
        {

          v24 = v49;
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      v31 = v24;
      sub_20B520158(v16, &unk_27C766680);
      (*(v52 + 8))(v30, v7);
    }

    sub_20B520158(v11, &qword_27C7626D0);

    goto LABEL_18;
  }
}

id sub_20B5F3284(unint64_t a1)
{
  v442 = sub_20C13BB84();
  v441 = *(v442 - 8);
  MEMORY[0x28223BE20](v442);
  v440 = (&v396 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v459 = type metadata accessor for ButtonAction(0);
  v456 = *(v459 - 8);
  MEMORY[0x28223BE20](v459);
  v458 = &v396 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  v438 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v439 = (&v396 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v457 = &v396 - v7;
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v424 = *(v425 - 8);
  v8 = MEMORY[0x28223BE20](v425);
  v421 = &v396 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v422 = &v396 - v11;
  v420 = v12;
  MEMORY[0x28223BE20](v10);
  v423 = &v396 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v426 = &v396 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v427 = &v396 - v17;
  v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v436 = *(v437 - 8);
  v18 = MEMORY[0x28223BE20](v437);
  v417 = &v396 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v419 = &v396 - v21;
  v418 = v22;
  MEMORY[0x28223BE20](v20);
  v428 = &v396 - v23;
  v434 = sub_20C1391C4();
  v433 = *(v434 - 8);
  MEMORY[0x28223BE20](v434);
  v435 = &v396 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_20C138A64();
  v430 = *(v431 - 8);
  v25 = MEMORY[0x28223BE20](v431);
  v27 = &v396 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v429 = &v396 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v29 - 8);
  v432 = &v396 - v30;
  v31 = sub_20C13C554();
  v451 = *(v31 - 8);
  v452 = v31;
  MEMORY[0x28223BE20](v31);
  v450 = (&v396 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_20C137C24();
  v453 = *(v33 - 8);
  v454 = v33;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v396 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v34);
  v444 = &v396 - v38;
  v443 = v39;
  MEMORY[0x28223BE20](v37);
  v445 = &v396 - v40;
  v41 = sub_20C136CD4();
  v446 = *(v41 - 8);
  v447 = v41;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v396 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v449 = &v396 - v45;
  v46 = sub_20C134E44();
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v49 = &v396 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v448 = &v396 - v50;
  v51 = sub_20C134014();
  v52 = *(v51 - 8);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = (&v396 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v53);
  v57 = (a1 >> 57) & 0x78 | a1 & 7;
  switch(v57)
  {
    case 'J':
      v457 = v49;
      v458 = v44;
      v416 = v36;
      v409 = v27;
      v97 = v51;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A70);
      v99 = swift_projectBox();
      v100 = *(v99 + v98[16]);
      v101 = v99 + v98[20];
      v102 = *v101;
      v103 = *(v101 + 8);
      v104 = *(v101 + 24);
      v456 = *(v101 + 16);
      v105 = *(v101 + 32);
      v106 = *(v101 + 40);
      LODWORD(v459) = *(v99 + v98[28]);
      LODWORD(v427) = *(v99 + v98[32]);
      LODWORD(v415) = *(v99 + v98[36]);
      v440 = v52;
      v107 = v52[2];
      v442 = v97;
      (v107)(v55, v99, v97);
      v108 = v455;
      v109 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v414 = v100;

      v110 = v102;
      v111 = v103;
      v429 = v456;
      v448 = v104;

      v445 = v105;

      v441 = v106;

      [v109 setText_];
      v112 = *&v108[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v439 = v110;
      [v112 setAttributedText_];
      v113 = *&v108[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      v438 = v111;
      [v113 setAttributedText_];
      v114 = objc_opt_self();
      v115 = [v114 clearColor];
      v116 = &off_277D9A000;
      v428 = v109;
      [v109 setBackgroundColor_];

      v117 = v55;
      v410 = v114;
      if (!v459)
      {
        v153 = [v114 systemBackgroundColor];
        [v112 setBackgroundColor_];

        v154 = [v114 systemBackgroundColor];
        v118 = v454;
        v119 = v451;
        v155 = v452;
        goto LABEL_34;
      }

      v118 = v454;
      v119 = v451;
      if (v459 == 1)
      {
        v120 = 0x27C760000uLL;
        if (qword_27C760D20 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_99;
      }

      v160 = [v114 clearColor];
      [v112 setBackgroundColor_];

      v122 = [v114 clearColor];
      goto LABEL_33;
    case '!':
      v82 = v455;
      v83 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v84 = sub_20C13C914();
      [v83 setText_];

      v85 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v86 = sub_20C13C914();
      [v85 setText_];

      v87 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      v88 = sub_20C13C914();
      [v87 setText_];

      v89 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel];
      v90 = sub_20C13C914();
      [v89 setText_];

      sub_20BA1DB48();
      v91 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      v92 = *&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      (*(v92 + 264))(0, ObjectType, v92);
      (*(v92 + 296))(0, 0, ObjectType, v92);
      v94 = [v91 layer];
      [v94 setBorderColor_];

      v95 = [v91 layer];
      [v95 setBorderWidth_];

      sub_20BC96528(MEMORY[0x277D84F90], 0, 1, 0, 0, 1, 0, 1);
      [*&v82[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
      [v83 setAlpha_];
      [v85 setAlpha_];
      [v87 setAlpha_];

      return [v89 setAlpha_];
    case ' ':
      v58 = &v396 - v56;
      v59 = v52;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
      v442 = v51;
      v61 = v60;
      v62 = swift_projectBox();
      v63 = v62 + v61[16];
      v65 = *v63;
      v64 = *(v63 + 8);
      v66 = v455;
      v67 = *(v63 + 16);
      v68 = *(v63 + 24);
      v70 = *(v63 + 32);
      v69 = *(v63 + 40);
      v417 = v70;
      v416 = v69;
      v71 = (v62 + v61[20]);
      v72 = *v71;
      v73 = v71[1];
      LODWORD(v414) = *(v62 + v61[28]);
      v74 = *(v62 + v61[32]);
      v440 = v59;
      v75 = v59[2];
      v426 = v58;
      (v75)(v58, v62, v442);
      v76 = v66;
      v441 = *&v66[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel];
      v409 = v68;
      v408 = v74;
      if (v73 >= 2)
      {
        v460[0] = v72;
        v460[1] = v73;
        sub_20B5F6EB0();
        v136 = v65;
        v78 = v64;
        v137 = v64;
        v138 = v67;

        sub_20C13D9E4();
        v81 = sub_20C13C914();
      }

      else
      {
        v77 = v65;
        v78 = v64;
        v79 = v64;
        v80 = v67;

        v81 = 0;
      }

      v139 = v65;
      v140 = v67;
      v116 = v439;
      [v441 setText_];

      v113 = v76;
      v141 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel];
      v112 = v139;
      [v141 setAttributedText_];
      v439 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel];
      [v439 setAttributedText_];
      v142 = *&v76[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel];
      v143 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v410 = v140;
      v144 = [v143 initWithAttributedString_];
      v145 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v145 setLineBreakMode_];
      v146 = v144;
      v147 = [v146 length];
      [v146 addAttribute:*MEMORY[0x277D74118] value:v145 range:{0, v147}];

      v415 = v142;
      [v142 setAttributedText_];

      v118 = &off_277D9A000;
      v411 = v78;
      if (v414)
      {
        v148 = v451;
        if (v414 == 1)
        {
          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v149 = qword_27C79D6D8;
          [v441 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v150 = qword_27C79D6D8;
          [v141 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v151 = qword_27C79D6D8;
          [v439 setBackgroundColor_];

          if (qword_27C760D20 != -1)
          {
            swift_once();
          }

          v152 = qword_27C79D6D8;
        }

        else
        {
          v236 = [objc_opt_self() clearColor];
          [v441 setBackgroundColor_];

          v237 = [objc_opt_self() clearColor];
          [v141 setBackgroundColor_];

          v238 = [objc_opt_self() clearColor];
          [v439 setBackgroundColor_];

          v152 = [objc_opt_self() clearColor];
        }

        v159 = v152;
      }

      else
      {
        v156 = [objc_opt_self() systemBackgroundColor];
        [v441 setBackgroundColor_];

        v157 = [objc_opt_self() systemBackgroundColor];
        [v141 setBackgroundColor_];

        v158 = [objc_opt_self() systemBackgroundColor];
        [v439 setBackgroundColor_];

        v159 = [objc_opt_self() systemBackgroundColor];
        v148 = v451;
      }

      [v415 setBackgroundColor_];

      sub_20C133F04();
      v406 = sub_20C138054();
      v414 = v239;
      sub_20C134E34();
      v240 = v445;
      sub_20C136CB4();
      v405 = sub_20C136CC4();
      v412 = v241;
      sub_20B51C88C(0, &qword_281100530);
      v242 = sub_20C13D374();
      v117 = v450;
      *v450 = v242;
      v120 = v452;
      (*(v148 + 104))(v117, *MEMORY[0x277D85200], v452);
      v243 = sub_20C13C584();
      v244 = *(v148 + 8);
      v119 = v148 + 8;
      v244(v117, v120);
      if (v243)
      {
        v407 = v112;
        v246 = *&v113[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
        v245 = *&v113[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
        v247 = swift_getObjectType();
        [v246 setContentMode_];
        v248 = sub_20BA66C54(v240, v246, v245, 0);
        v450 = v246;
        v451 = v247;
        v452 = v245;
        v413 = v141;
        if (v248)
        {
          v249 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v250 = v453;
          v251 = *(v453 + 16);
          v252 = v444;
          v398 = v453 + 16;
          v402 = v251;
          v251(v444, v240, v454);
          v253 = *(v250 + 80);
          v254 = (v253 + 24) & ~v253;
          v397 = v443 + 7;
          v255 = (v443 + 7 + v254) & 0xFFFFFFFFFFFFFFF8;
          v256 = (v255 + 23) & 0xFFFFFFFFFFFFFFF8;
          v257 = (v256 + 23) & 0xFFFFFFFFFFFFFFF8;
          v404 = (v257 + 15) & 0xFFFFFFFFFFFFFFF8;
          v403 = ((v257 + 31) & 0xFFFFFFFFFFFFFFF8);
          v401 = v253;
          v258 = swift_allocObject();
          *(v258 + 16) = v249;
          v259 = *(v250 + 32);
          v400 = v250 + 32;
          v399 = v259;
          v259(v258 + v254, v252, v454);
          v260 = (v258 + v255);
          v261 = v412;
          *v260 = v405;
          v260[1] = v261;
          v262 = (v258 + v256);
          v263 = v414;
          *v262 = v406;
          v262[1] = v263;
          *(v258 + v257) = 2;
          v264 = v258 + v404;
          *v264 = MEMORY[0x277D84F90];
          *(v264 + 8) = 0;
          v265 = v403 + v258;
          *v265 = 0;
          *(v265 + 1) = 0;
          v266 = v452;
          v267 = *(v452 + 152);

          v268 = v451;
          v267(sub_20B5F7780, v258, v451, v266);

          [v246 bounds];
          if (v269 <= 0.0 || (v271 = v270, v270 <= 0.0))
          {
          }

          else
          {
            v272 = v269;
            v404 = ~v401;
            (*(v266 + 120))(0, v268, v266);
            v273 = v268;
            v274 = v432;
            v275 = v445;
            v276 = v454;
            v402(v432, v445, v454);
            (*(v453 + 56))(v274, 0, 1, v276);
            (*(v266 + 16))(v274, v273, v266);
            sub_20B51C88C(0, &qword_27C762070);
            sub_20C137BC4();
            v277 = sub_20C13D5A4();
            [v246 setBackgroundColor_];

            (*(v266 + 176))(COERCE_DOUBLE(*&v272), COERCE_DOUBLE(*&v271), 0, v273, v266);
            v278 = swift_allocObject();
            v279 = v444;
            swift_unknownObjectWeakInit();
            v402(v279, v275, v276);
            v280 = (v401 + 16) & v404;
            v281 = (v397 + v280) & 0xFFFFFFFFFFFFFFF8;
            v282 = (v281 + 15) & 0xFFFFFFFFFFFFFFF8;
            v283 = swift_allocObject();
            v284 = v283 + v280;
            v285 = v454;
            v399(v284, v279, v454);
            *(v283 + v281) = v278;
            v286 = (v283 + v282);
            *v286 = v272;
            v286[1] = v271;
            v432 = v283;
            v287 = (v283 + ((v282 + 23) & 0xFFFFFFFFFFFFFFF8));
            v288 = v445;
            *v287 = 0;
            v287[1] = 0;
            v402(v279, v288, v285);
            (*(v433 + 104))(v435, *MEMORY[0x277D542A8], v434);

            v289 = v429;
            sub_20C138A54();
            v290 = v427;
            sub_20B5F165C(v289, v427);
            v291 = v436;
            v292 = v437;
            if ((*(v436 + 48))(v290, 1, v437) == 1)
            {
              sub_20B520158(v290, &unk_27C766670);
              sub_20BA1DB48();

              (*(v430 + 8))(v289, v431);
              v294 = v446;
              v293 = v447;
              v295 = v408;
              v240 = v288;
              goto LABEL_58;
            }

            v435 = *(v291 + 32);
            (v435)(v428, v290, v292);
            v367 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v368 = v454;
            v402(v279, v288, v454);
            v369 = (v401 + 40) & v404;
            v370 = v369 + v443;
            v371 = (v369 + v443) & 0xFFFFFFFFFFFFFFF8;
            v372 = swift_allocObject();
            *(v372 + 2) = v367;
            v372[3] = v272;
            v372[4] = v271;
            v399(v372 + v369, v279, v368);
            *(v372 + v370) = 0;
            v373 = v372 + v371;
            *(v373 + 1) = 0;
            *(v373 + 2) = 0;
            v374 = swift_allocObject();
            *(v374 + 16) = sub_20B5F7768;
            *(v374 + 24) = v372;
            v375 = v436;
            v376 = v419;
            (*(v436 + 16))(v419, v428, v292);
            v377 = (*(v375 + 80) + 16) & ~*(v375 + 80);
            v378 = (v418 + v377 + 7) & 0xFFFFFFFFFFFFFFF8;
            v379 = swift_allocObject();
            (v435)(v379 + v377, v376, v292);
            v380 = (v379 + v378);
            *v380 = sub_20B5F7760;
            v380[1] = v374;
            v381 = v422;
            sub_20C137C94();
            v382 = swift_allocObject();
            v383 = v432;
            *(v382 + 16) = sub_20B5F7784;
            *(v382 + 24) = v383;
            v384 = swift_allocObject();
            *(v384 + 16) = sub_20B5F7790;
            *(v384 + 24) = v382;
            v385 = v424;
            v386 = v421;
            v387 = v425;
            (*(v424 + 16))(v421, v381, v425);
            v388 = (*(v385 + 80) + 16) & ~*(v385 + 80);
            v389 = (v420 + v388 + 7) & 0xFFFFFFFFFFFFFFF8;
            v390 = swift_allocObject();
            (*(v385 + 32))(v390 + v388, v386, v387);
            v391 = (v390 + v389);
            *v391 = sub_20B5F7764;
            v391[1] = v384;

            v392 = v423;
            sub_20C137C94();
            v393 = *(v385 + 8);
            v393(v381, v387);
            v394 = sub_20C137CB4();
            v395 = swift_allocObject();
            *(v395 + 16) = 0;
            *(v395 + 24) = 0;
            v394(sub_20B5DF6DC, v395);

            v393(v392, v387);
            (*(v436 + 8))(v428, v437);
            (*(v430 + 8))(v429, v431);
          }

          v294 = v446;
          v293 = v447;
          v295 = v408;
          v240 = v445;
        }

        else
        {

          v294 = v446;
          v293 = v447;
          v295 = v408;
        }

LABEL_58:
        (*(v453 + 8))(v240, v454);
        (*(v294 + 8))(v449, v293);

        sub_20B5F6724(v448, MEMORY[0x277D51268]);
        v296 = sub_20C133EB4() > 0;
        v297 = v451;
        v298 = v452;
        (*(v452 + 264))(v296, v451, v452);
        v299 = sub_20C133E54();
        (*(v298 + 296))(v299);

        v300 = sub_20C133FF4();
        v302 = v301;
        v304 = v303;
        v305 = v455;
        sub_20B5F0A34(v300, v301, v303, &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
        sub_20B584078(v300, v302, v304);
        v306 = (*(v298 + 32))(v297, v298);
        if (v306)
        {
          v307 = v306;
          v308 = [objc_opt_self() whiteColor];
          [*&v307[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];
        }

        if (!v295[2])
        {
          v313 = MEMORY[0x277D84F90];
          v314 = MEMORY[0x277D84F90];
          v310 = v305;
          v311 = v413;
LABEL_77:

          v460[0] = v313;
          sub_20B8D9064(v314);
          v327 = sub_20BEF6570(v460[0]);

          v454 = *&v310[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_actionButtonContainerView];
          v328 = *(v327 + 16);
          if (v328)
          {
            v329 = *(v438 + 80);
            v453 = v327;
            v330 = v327 + ((v329 + 32) & ~v329);
            v331 = v438[9];
            v332 = (v456 + 48);
            v333 = MEMORY[0x277D84F90];
            do
            {
              v334 = v457;
              sub_20B52F9E8(v330, v457, &qword_27C770330);
              sub_20B5F67F0(v334, v116);
              if ((*v332)(v116, 1, v459) == 1)
              {
                sub_20B520158(v116, &qword_27C770330);
              }

              else
              {
                sub_20B5F6860(v116, v458);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v333 = sub_20BC05920(0, v333[2] + 1, 1, v333);
                }

                v336 = v333[2];
                v335 = v333[3];
                if (v336 >= v335 >> 1)
                {
                  v333 = sub_20BC05920(v335 > 1, v336 + 1, 1, v333);
                }

                v333[2] = v336 + 1;
                sub_20B5F6860(v458, v333 + ((v456[80] + 32) & ~v456[80]) + *(v456 + 9) * v336);
              }

              v330 += v331;
              --v328;
            }

            while (v328);

            v310 = v455;
            v337 = v411;
            v311 = v413;
          }

          else
          {

            v333 = MEMORY[0x277D84F90];
            v337 = v411;
          }

          sub_20BC96528(v333, 0, 1, 0, 0, 1, 0, 1);

          [*&v310[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
          [v441 setAlpha_];
          [v311 setAlpha_];
          [v439 setAlpha_];
          [v415 setAlpha_];
          (*(v452 + 280))(v451, 1.0);

          return v440[1](v426, v442);
        }

        v309 = sub_20B65CEBC(0);
        v310 = v305;
        v311 = v413;
        if (v312)
        {
          v313 = *(v295[7] + 8 * v309);

          if (!v295[2])
          {
            goto LABEL_76;
          }
        }

        else
        {
          v313 = MEMORY[0x277D84F90];
          if (!v295[2])
          {
            goto LABEL_76;
          }
        }

        v325 = sub_20B65CEBC(2);
        if (v326)
        {
          v314 = *(v295[7] + 8 * v325);

          goto LABEL_77;
        }

LABEL_76:
        v314 = MEMORY[0x277D84F90];
        goto LABEL_77;
      }

      while (1)
      {
        __break(1u);
LABEL_99:
        swift_once();
LABEL_12:
        v121 = qword_27C79D6D8;
        [v112 v116[81]];

        if (*(v120 + 3360) != -1)
        {
          swift_once();
        }

        v122 = qword_27C79D6D8;
LABEL_33:
        v154 = v122;
        v155 = v452;
LABEL_34:
        [v113 v116[81]];

        sub_20C133F04();
        v412 = sub_20C138054();
        v452 = v161;
        sub_20C134E34();
        v116 = v416;
        sub_20C136CB4();
        v411 = sub_20C136CC4();
        v449 = v162;
        sub_20B51C88C(0, &qword_281100530);
        v163 = sub_20C13D374();
        v164 = v450;
        *v450 = v163;
        (*(v119 + 104))(v164, *MEMORY[0x277D85200], v155);
        v120 = sub_20C13C584();
        v165 = *(v119 + 8);
        v119 += 8;
        v165(v164, v155);
        if (v120)
        {
          break;
        }

        __break(1u);
      }

      v413 = v113;
      v450 = v112;
      v167 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      v166 = *&v455[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView + 8];
      v168 = swift_getObjectType();
      [v167 setContentMode_];
      v451 = v166;
      v169 = sub_20BA66C54(v116, v167, v166, 0);
      v170 = v116;
      v456 = v167;
      v459 = v168;
      if (v169)
      {
        v408 = v117;
        v171 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v172 = v453;
        v173 = *(v453 + 16);
        v174 = v444;
        v405 = v453 + 16;
        v402 = v173;
        v173(v444, v170, v118);
        v175 = *(v172 + 80);
        v176 = (v175 + 24) & ~v175;
        v401 = v443 + 7;
        v177 = (v443 + 7 + v176) & 0xFFFFFFFFFFFFFFF8;
        v178 = (v177 + 23) & 0xFFFFFFFFFFFFFFF8;
        v179 = (v178 + 23) & 0xFFFFFFFFFFFFFFF8;
        v407 = (v179 + 15) & 0xFFFFFFFFFFFFFFF8;
        v406 = v175;
        v180 = swift_allocObject();
        *(v180 + 16) = v171;
        v181 = *(v172 + 32);
        v182 = v180 + v176;
        v118 = v454;
        v404 = v172 + 32;
        v403 = v181;
        (v181)(v182, v174, v454);
        v183 = (v180 + v177);
        v184 = v449;
        *v183 = v411;
        v183[1] = v184;
        v185 = (v180 + v178);
        v186 = v452;
        *v185 = v412;
        v185[1] = v186;
        *(v180 + v179) = 2;
        v187 = (v180 + v407);
        *v187 = MEMORY[0x277D84F90];
        v187[8] = 0;
        v188 = (v180 + ((v179 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v188 = 0;
        v188[1] = 0;
        v189 = v451;
        v190 = *(v451 + 152);

        v191 = v459;
        v190(sub_20B5F6784, v180, v459, v189);

        [v167 bounds];
        if (v192 <= 0.0 || (v194 = v193, v193 <= 0.0))
        {

          v215 = v446;
          v214 = v447;
          v117 = v408;
          v216 = v427;
          v170 = v416;
LABEL_43:
          v218 = v457;
          v217 = v458;
          v219 = v451;
          (*(v453 + 8))(v170, v118);
          (*(v215 + 8))(v217, v214);

          sub_20B5F6724(v218, MEMORY[0x277D51268]);
          v220 = sub_20C133EB4() > 0;
          v221 = *(v219 + 264);
          v221(v220, v459, v219);
          v222 = sub_20C133E54();
          (*(v219 + 296))(v222);

          v223 = v117;
          v224 = sub_20C133FF4();
          v226 = v225;
          v228 = v227;
          v229 = v455;
          sub_20B5F0A34(v224, v225, v227, &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
          sub_20B584078(v224, v226, v228);
          v230 = v229;
          if (*(v414 + 16))
          {
            v231 = v414;
            v232 = sub_20B65CEBC(0);
            if (v233)
            {
              v234 = *(*(v231 + 56) + 8 * v232);
            }

            else
            {
              v234 = MEMORY[0x277D84F90];
            }

            v235 = v450;
          }

          else
          {
            v234 = MEMORY[0x277D84F90];
            v235 = v450;
          }

          sub_20BC96528(v234, 0, 1, 0, 0, 1, 0, 1);

          [*&v230[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton] setHidden_];
          if (v216)
          {
            v315 = v459;
            v221(1, v459, v219);
            v316 = (*(v219 + 32))(v315, v219);
            v317 = v429;
            if (v316)
            {
              v318 = v316;
              v319 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
              v320 = 0.5;
              v321 = 0.3;
LABEL_72:
              v324 = v413;
              [*&v318[OBJC_IVAR____TtC9SeymourUI17CompletedIconView_imageView] setTintColor_];

LABEL_93:
              (*(v219 + 280))(v315, v219, v321);
              [v428 setAlpha_];
              [v235 setAlpha_];
              [v324 setAlpha_];
              [*&v230[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel] setAlpha_];

              return v440[1](v223, v442);
            }

            v320 = 0.5;
            v321 = 0.3;
          }

          else
          {
            v322 = sub_20C133EB4() > 0;
            v315 = v459;
            v221(v322, v459, v219);
            v323 = (*(v219 + 32))(v315, v219);
            v317 = v429;
            if (v323)
            {
              v318 = v323;
              v319 = [v410 whiteColor];
              v321 = 1.0;
              v320 = 1.0;
              goto LABEL_72;
            }

            v321 = 1.0;
            v320 = 1.0;
          }

          v324 = v413;
          goto LABEL_93;
        }

        v195 = v192;
        v407 = ~v406;
        v196 = v451;
        (*(v451 + 120))(0, v191, v451);
        v197 = v432;
        v198 = v416;
        v199 = v402;
        v402(v432, v416, v118);
        (*(v453 + 56))(v197, 0, 1, v118);
        (*(v196 + 16))(v197, v191, v196);
        sub_20B51C88C(0, &qword_27C762070);
        sub_20C137BC4();
        v200 = sub_20C13D5A4();
        [v167 setBackgroundColor_];

        (*(v196 + 176))(COERCE_DOUBLE(*&v195), COERCE_DOUBLE(*&v194), 0, v191, v196);
        v201 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v202 = v444;
        v199(v444, v198, v118);
        v203 = (v406 + 16) & v407;
        v204 = (v401 + v203) & 0xFFFFFFFFFFFFFFF8;
        v205 = (v204 + 15) & 0xFFFFFFFFFFFFFFF8;
        v206 = swift_allocObject();
        v403(v206 + v203, v202, v118);
        *(v206 + v204) = v201;
        v170 = v416;
        v207 = (v206 + v205);
        *v207 = v195;
        v207[1] = v194;
        v432 = v206;
        v208 = (v206 + ((v205 + 23) & 0xFFFFFFFFFFFFFFF8));
        v209 = v199;
        *v208 = 0;
        v208[1] = 0;
        v199(v202, v170, v118);
        (*(v433 + 104))(v435, *MEMORY[0x277D542A8], v434);

        v210 = v409;
        sub_20C138A54();
        v211 = v426;
        sub_20B5F165C(v210, v426);
        v212 = v436;
        v213 = v437;
        if ((*(v436 + 48))(v211, 1, v437) == 1)
        {
          sub_20B520158(v211, &unk_27C766670);
          sub_20BA1DB48();

          (*(v430 + 8))(v210, v431);
        }

        else
        {
          v449 = *(v212 + 32);
          v338 = v417;
          (v449)(v417, v211, v213);
          v339 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v209(v202, v170, v454);
          v340 = v213;
          v341 = (v406 + 40) & v407;
          v342 = v341 + v443;
          v343 = (v341 + v443) & 0xFFFFFFFFFFFFFFF8;
          v344 = swift_allocObject();
          *(v344 + 2) = v339;
          v344[3] = v195;
          v344[4] = v194;
          v403(v344 + v341, v202, v454);
          *(v344 + v342) = 0;
          v345 = v344 + v343;
          *(v345 + 1) = 0;
          *(v345 + 2) = 0;
          v346 = swift_allocObject();
          *(v346 + 16) = sub_20B5F678C;
          *(v346 + 24) = v344;
          v347 = v419;
          (*(v212 + 16))(v419, v338, v340);
          v348 = (*(v212 + 80) + 16) & ~*(v212 + 80);
          v349 = (v418 + v348 + 7) & 0xFFFFFFFFFFFFFFF8;
          v350 = swift_allocObject();
          (v449)(v350 + v348, v347, v340);
          v351 = (v350 + v349);
          *v351 = sub_20B5F67A4;
          v351[1] = v346;
          v352 = v422;
          sub_20C137C94();
          v353 = swift_allocObject();
          v354 = v432;
          *(v353 + 16) = sub_20B5F6788;
          *(v353 + 24) = v354;
          v355 = swift_allocObject();
          *(v355 + 16) = sub_20B5F67D4;
          *(v355 + 24) = v353;
          v356 = v424;
          v357 = v421;
          v358 = v425;
          (*(v424 + 16))(v421, v352, v425);
          v359 = (*(v356 + 80) + 16) & ~*(v356 + 80);
          v360 = (v420 + v359 + 7) & 0xFFFFFFFFFFFFFFF8;
          v361 = swift_allocObject();
          (*(v356 + 32))(v361 + v359, v357, v358);
          v362 = (v361 + v360);
          *v362 = sub_20B5DF204;
          v362[1] = v355;

          v363 = v423;
          sub_20C137C94();
          v364 = *(v356 + 8);
          v364(v352, v358);
          v365 = sub_20C137CB4();
          v366 = swift_allocObject();
          *(v366 + 16) = 0;
          *(v366 + 24) = 0;
          v365(sub_20B52347C, v366);

          v364(v363, v358);
          v170 = v416;
          v118 = v454;
          (*(v212 + 8))(v417, v437);
          (*(v430 + 8))(v409, v431);
        }

        v215 = v446;
        v214 = v447;
        v117 = v408;
      }

      else
      {

        v215 = v446;
        v214 = v447;
      }

      v216 = v427;
      goto LABEL_43;
    default:
      v123 = v440;
      sub_20C13B534();
      v124 = a1;

      v125 = v455;
      v126 = sub_20C13BB74();
      v127 = sub_20C13D1D4();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v460[0] = v130;
        *v128 = 138543618;
        *(v128 + 4) = v125;
        *v129 = v125;
        *(v128 + 12) = 2082;
        v460[2] = v124;
        v131 = sub_20B5F66D0();
        v132 = v125;
        v133 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v131);
        v135 = sub_20B51E694(v133, v134, v460);

        *(v128 + 14) = v135;
        _os_log_impl(&dword_20B517000, v126, v127, "Attempted to configure %{public}@ with item: %{public}s", v128, 0x16u);
        sub_20B520158(v129, &unk_27C762E30);
        MEMORY[0x20F2F6A40](v129, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v130);
        MEMORY[0x20F2F6A40](v130, -1, -1);
        MEMORY[0x20F2F6A40](v128, -1, -1);
      }

      return (*(v441 + 1))(v123, v442);
  }
}

unint64_t sub_20B5F66D0()
{
  result = qword_27C762CA0;
  if (!qword_27C762CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C762CA0);
  }

  return result;
}

uint64_t sub_20B5F6724(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B5F67F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B5F6860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_25Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_20B5F69F8()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5B6FC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_29Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

void sub_20B5F6B90(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA638F0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

uint64_t objectdestroy_33Tm()
{
  v1 = sub_20C137C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

void sub_20B5F6D2C(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F1F68(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), &OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
}

uint64_t sub_20B5F6DE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20B5F6EB0()
{
  result = qword_27C76A400;
  if (!qword_27C76A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A400);
  }

  return result;
}

unint64_t sub_20B5F6F04()
{
  result = qword_27C7626E0;
  if (!qword_27C7626E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7626E0);
  }

  return result;
}

void sub_20B5F6F58()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = _UISolariumEnabled();
  v4 = 0.0;
  if (v3)
  {
    v4 = 7.0;
  }

  v5 = v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_layout;
  *v5 = xmmword_20C1503F0;
  *(v5 + 16) = xmmword_20C150400;
  *(v5 + 32) = xmmword_20C150410;
  *(v5 + 48) = xmmword_20C150420;
  *(v5 + 64) = xmmword_20C150430;
  *(v5 + 80) = v4;
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v7 = 16.0;
  }

  else
  {
    v7 = 8.0;
  }

  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
  v9 = [v6 layer];
  [v9 setCornerRadius_];

  [v6 setClipsToBounds_];
  *v8 = v6;
  v8[1] = &off_2822B63E8;
  v10 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_contentGuide;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];

  v13 = *MEMORY[0x277D769A8];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:v13 compatibleWithTraitCollection:0];
  v16 = [v15 fontDescriptorWithSymbolicTraits_];
  if (v16)
  {
    v17 = v16;

    v15 = v17;
  }

  v18 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_titleLabel;
  v19 = objc_opt_self();
  v20 = [v19 fontWithDescriptor:v15 size:0.0];

  [v11 setFont_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v11 setTextColor_];

  *(v0 + v18) = v11;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  LODWORD(v24) = 1148846080;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];

  v43 = *MEMORY[0x277D76918];
  v25 = [v14 preferredFontDescriptorWithTextStyle_compatibleWithTraitCollection_];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_subtitleLabel;
  v29 = [v19 fontWithDescriptor:v25 size:0.0];

  [v23 setFont_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  [v23 setAllowsDefaultTighteningForTruncation_];
  v30 = [v21 secondaryLabelColor];
  [v23 setTextColor_];

  *(v0 + v28) = v23;
  v31 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_captionLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [v19 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setNumberOfLines_];
  [v32 setAllowsDefaultTighteningForTruncation_];
  v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v32 setTextColor_];

  *(v0 + v31) = v32;
  v36 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_detailLabel;
  v37 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  [v37 setAdjustsFontForContentSizeCategory_];
  LODWORD(v38) = 1148846080;
  [v37 setContentCompressionResistancePriority:1 forAxis:v38];

  v39 = [v19 preferredFontForTextStyle_];
  [v37 setFont_];

  [v37 setNumberOfLines_];
  [v37 setLineBreakMode_];
  [v37 setAllowsDefaultTighteningForTruncation_];
  v40 = [v21 secondaryLabelColor];
  [v37 setTextColor_];

  *(v0 + v36) = v37;
  v41 = OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v42 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v41) = v42;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B5F7718(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B5F77A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanBodyFocusPickerShelf()
{
  result = qword_27C762700;
  if (!qword_27C762700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B5F7920()
{
  result = sub_20C132EE4();
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

void sub_20B5F79FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;

    sub_20B614F94(0, 0, v3, &unk_20C1506D8, v5);
  }
}

uint64_t sub_20B5F7B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762740);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B5F7BF0, 0, 0);
}

uint64_t sub_20B5F7BF0()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient), *(v0[4] + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_catalogClient + 24));
  sub_20C13A024();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanBodyFocusPickerShelf.swift";
  *(v2 + 24) = 47;
  *(v2 + 32) = 2;
  *(v2 + 40) = 41;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762748);
  v0[10] = v4;
  *v3 = v0;
  v3[1] = sub_20B5F7D48;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B606768, v2, v4);
}

uint64_t sub_20B5F7D48()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {

    v3 = sub_20B5F7F90;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v2[12] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20B5F7EA8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B5F7EA8()
{
  v0[3] = v0[12];
  swift_getKeyPath();
  sub_20B606778();
  v1 = sub_20C13CBF4();

  sub_20B5F9E20(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20B5F7F90()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B5F8010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B5F8088@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B5F8178(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  v38 = xmmword_20C1505B0;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = a1;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v9;
  *v43 = v11;
  *&v43[8] = xmmword_20C150190;
  nullsub_1(&v34);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 128);
  v44[9] = v13;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 64);
  v44[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 96);
  v44[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row);
  v44[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanBodyFocusPickerShelf_row + 32);
  v44[3] = v17;
  v18 = *v43;
  *(v12 + 128) = v42;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v43[16];
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41;
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;

  sub_20B520158(v44, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61D280(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620A90(v28, v29, v30, v31, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20B5F85A4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

void sub_20B5F88B8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_20B6068D8(a3 + v14 + v15 * v12, v11);
      v16 = a1(v11);
      if (v3)
      {
        sub_20B60693C(v11);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_20B6069D4(v11, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5DB28(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_20BB5DB28(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_20B6069D4(v23, v13 + v14 + v19 * v15);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_20B60693C(v11);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_20B5F8B0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, uint64_t, uint64_t))
{
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = result;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    v14 = *(a3 + 16);
    v15 = result;
    while (v8 < *(a3 + 16))
    {
      v12 = *(a3 + v8 + 32);
      v16 = v12;
      result = v7(&v16);
      if (v4)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = a4(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = a4(v10 > 1, v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v6 = v14;
        v7 = v15;
      }

      if (v6 == ++v8)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_20B5F8C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_20B52F9E8(v2, &v22 - v11, &qword_27C762720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C762730);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v9, v16);
      v18 = v9;
      v19 = &qword_27C762730;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C762728);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v6, v16);
      v18 = v6;
      v19 = &qword_27C762728;
    }

    sub_20B520158(v18, v19);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762738);

    v20 = sub_20C1365F4();
    v21 = *(v20 - 8);
    (*(v21 + 32))(a1, v12, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762720);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9000@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_20B52F9E8(v2, &v22 - v11, &qword_27C7627C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C7627D8);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v9, v16);
      v18 = v9;
      v19 = &qword_27C7627D8;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C7627D0);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v6, v16);
      v18 = v6;
      v19 = &qword_27C7627D0;
    }

    sub_20B520158(v18, v19);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0);

    v20 = sub_20C1365F4();
    v21 = *(v20 - 8);
    (*(v21 + 32))(a1, v12, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    sub_20B520158(v12, &qword_27C7627C8);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9388@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_20B52F9E8(v2, &v22 - v11, &qword_27C7627F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C762808);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v9, v16);
      v18 = v9;
      v19 = &qword_27C762808;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C762800);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v6, v16);
      v18 = v6;
      v19 = &qword_27C762800;
    }

    sub_20B520158(v18, v19);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762810);

    v20 = sub_20C1365F4();
    v21 = *(v20 - 8);
    (*(v21 + 32))(a1, v12, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    sub_20B520158(v12, &qword_27C7627F8);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9710@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_20B52F9E8(v2, &v22 - v11, &qword_27C762768);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C762778);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v9, v16);
      v18 = v9;
      v19 = &qword_27C762778;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C762770);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v6, v16);
      v18 = v6;
      v19 = &qword_27C762770;
    }

    sub_20B520158(v18, v19);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762780);

    v20 = sub_20C1365F4();
    v21 = *(v20 - 8);
    (*(v21 + 32))(a1, v12, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762768);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9A98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  sub_20B52F9E8(v2, &v22 - v11, &qword_27C762798);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C7627A8);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v9, v16);
      v18 = v9;
      v19 = &qword_27C7627A8;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C7627A0);
      v16 = sub_20C1365F4();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a1, v6, v16);
      v18 = v6;
      v19 = &qword_27C7627A0;
    }

    sub_20B520158(v18, v19);
    return (*(v17 + 56))(a1, 0, 1, v16);
  }

  else if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B0);

    v20 = sub_20C1365F4();
    v21 = *(v20 - 8);
    (*(v21 + 32))(a1, v12, v20);
    return (*(v21 + 56))(a1, 0, 1, v20);
  }

  else
  {
    sub_20B520158(v12, &qword_27C762798);
    v14 = sub_20C1365F4();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_20B5F9E20(uint64_t a1)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720);
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762720);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762730);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v30, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762730);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720);
      swift_endAccess();
      sub_20B5FB798();
      v26 = v6;
      v27 = &qword_27C762730;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762728);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v30, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v30;
      }

      v28 = *(v29 + 36);

      *&v3[v28] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762728);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720);
      swift_endAccess();
      sub_20B602898();
      v26 = v3;
      v27 = &qword_27C762728;
    }

    return sub_20B520158(v26, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762738);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v30;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762720);
      *v9 = v30;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762720);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FA338(uint64_t a1)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768);
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762768);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762778);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v30, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762778);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768);
      swift_endAccess();
      sub_20B5FBDA0();
      v26 = v6;
      v27 = &qword_27C762778;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762770);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v30, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v30;
      }

      v28 = *(v29 + 36);

      *&v3[v28] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762770);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768);
      swift_endAccess();
      sub_20B603AEC();
      v26 = v3;
      v27 = &qword_27C762770;
    }

    return sub_20B520158(v26, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762780);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v30;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762768);
      *v9 = v30;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762768);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FA850(uint64_t a1)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798);
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C762798);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C7627A8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v30, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C7627A8);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798);
      swift_endAccess();
      sub_20B5FC3A8();
      v26 = v6;
      v27 = &qword_27C7627A8;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C7627A0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v30, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v30;
      }

      v28 = *(v29 + 36);

      *&v3[v28] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C7627A0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798);
      swift_endAccess();
      sub_20B604108();
      v26 = v3;
      v27 = &qword_27C7627A0;
    }

    return sub_20B520158(v26, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B0);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v30;
    }

    else
    {
      sub_20B520158(v12, &qword_27C762798);
      *v9 = v30;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C762798);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FAD68(uint64_t a1)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C7627C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C7627D8);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v30, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C7627D8);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8);
      swift_endAccess();
      sub_20B5FC988();
      v26 = v6;
      v27 = &qword_27C7627D8;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C7627D0);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v30, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v30;
      }

      v28 = *(v29 + 36);

      *&v3[v28] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C7627D0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8);
      swift_endAccess();
      sub_20B602EB4();
      v26 = v3;
      v27 = &qword_27C7627D0;
    }

    return sub_20B520158(v26, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v30;
    }

    else
    {
      sub_20B520158(v12, &qword_27C7627C8);
      *v9 = v30;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627C8);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FB280(uint64_t a1)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  MEMORY[0x28223BE20](v29);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = *(*v1 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v1 + v13, v12, &qword_27C7627F8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v6, &qword_27C762808);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = v1[3];
        ObjectType = swift_getObjectType();
        v17 = (*(v15 + 32))(v1, v30, v6, ObjectType, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
      }

      v25 = *(v4 + 36);

      *&v6[v25] = v17;
      sub_20B52F9E8(v6, v9, &qword_27C762808);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8);
      swift_endAccess();
      sub_20B5FCF90();
      v26 = v6;
      v27 = &qword_27C762808;
    }

    else
    {
      sub_20B5DF134(v12, v3, &qword_27C762800);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v22 = v1[3];
        v23 = swift_getObjectType();
        v24 = (*(v22 + 32))(v1, v30, v3, v23, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = v30;
      }

      v28 = *(v29 + 36);

      *&v3[v28] = v24;
      sub_20B52F9E8(v3, v9, &qword_27C762800);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8);
      swift_endAccess();
      sub_20B6034D0();
      v26 = v3;
      v27 = &qword_27C762800;
    }

    return sub_20B520158(v26, v27);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762810);

      v19 = *(v18 + 48);
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 32))(v9, v12, v20);
      *(v9 + v19) = v30;
    }

    else
    {
      sub_20B520158(v12, &qword_27C7627F8);
      *v9 = v30;
    }

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();

    sub_20B5DF2D4(v9, v1 + v13, &qword_27C7627F8);
    return swift_endAccess();
  }
}

uint64_t sub_20B5FB798()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = (&v39 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720);
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762730);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762720);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762730);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C138244();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v44 = v22;
      v45 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v42 = v23 + 56;
      v43 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v31 = *v27;
        v40 = *(v27 + 1);
        v41 = v31;
        v32 = *(v0 + *(*v0 + 112));

        v33 = v48;
        sub_20B600BFC(v32, v48);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v0[3];
          ObjectType = swift_getObjectType();
          v43 = &v39;
          v34 = *v33;
          MEMORY[0x28223BE20](ObjectType);
          *(&v39 - 2) = v33;

          sub_20B5F85A4(sub_20B606C90, (&v39 - 4), v34, MEMORY[0x277D53E10], sub_20BB5D648);
          v35 = v47;
          (*(v44 + 40))(v0, v41, v40, v28, v36, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v48, &qword_27C762718);
        }

        else
        {
          sub_20B520158(v33, &qword_27C762718);
          v35 = v47;
          v43(v47, 1, 1, v44);
        }

        sub_20B5DF2D4(v35, &v7[v45], &qword_27C762710);
      }

      else
      {
      }

      v37 = v49;
      sub_20B52F9E8(v7, v49, &qword_27C762728);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v37, v0 + v16, &qword_27C762720);
      swift_endAccess();
      sub_20B602898();
      sub_20B520158(v15, &qword_27C762730);
      v30 = v7;
      v29 = &qword_27C762728;
    }

    else
    {
      v29 = &qword_27C762730;
      v30 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762720;
    v30 = v12;
  }

  return sub_20B520158(v30, v29);
}

uint64_t sub_20B5FBDA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = (&v39 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768);
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762778);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762768);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762778);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1334D4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v44 = v22;
      v45 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v42 = v23 + 56;
      v43 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v31 = *v27;
        v40 = *(v27 + 1);
        v41 = v31;
        v32 = *(v0 + *(*v0 + 112));

        v33 = v48;
        sub_20B601DA8(v32, v48);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v0[3];
          ObjectType = swift_getObjectType();
          v43 = &v39;
          v34 = *v33;
          MEMORY[0x28223BE20](ObjectType);
          *(&v39 - 2) = v33;

          sub_20B5F85A4(sub_20B606CE4, (&v39 - 4), v34, MEMORY[0x277D4FF18], sub_20BB5D714);
          v35 = v47;
          (*(v44 + 40))(v0, v41, v40, v28, v36, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v48, &qword_27C762760);
        }

        else
        {
          sub_20B520158(v33, &qword_27C762760);
          v35 = v47;
          v43(v47, 1, 1, v44);
        }

        sub_20B5DF2D4(v35, &v7[v45], &qword_27C762758);
      }

      else
      {
      }

      v37 = v49;
      sub_20B52F9E8(v7, v49, &qword_27C762770);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v37, v0 + v16, &qword_27C762768);
      swift_endAccess();
      sub_20B603AEC();
      sub_20B520158(v15, &qword_27C762778);
      v30 = v7;
      v29 = &qword_27C762770;
    }

    else
    {
      v29 = &qword_27C762778;
      v30 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762768;
    v30 = v12;
  }

  return sub_20B520158(v30, v29);
}

uint64_t sub_20B5FC3A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = (&v39 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798);
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C762798);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C7627A8);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v44 = v22;
      v45 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v42 = v23 + 56;
      v43 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v31 = *v27;
        v40 = *(v27 + 1);
        v41 = v31;
        v32 = *(v0 + *(*v0 + 112));

        v33 = v48;
        sub_20B60238C(v32, v48);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v0[3];
          ObjectType = swift_getObjectType();
          v43 = &v39;
          v34 = *v33;
          MEMORY[0x28223BE20](ObjectType);
          *(&v39 - 2) = v33;

          sub_20B5F88B8(sub_20B606D1C, (&v39 - 4), v34);
          v35 = v47;
          (*(v44 + 40))(v0, v41, v40, v28, v36, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v48, &qword_27C762790);
        }

        else
        {
          sub_20B520158(v33, &qword_27C762790);
          v35 = v47;
          v43(v47, 1, 1, v44);
        }

        sub_20B5DF2D4(v35, &v7[v45], &qword_27C762788);
      }

      else
      {
      }

      v37 = v49;
      sub_20B52F9E8(v7, v49, &qword_27C7627A0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v37, v0 + v16, &qword_27C762798);
      swift_endAccess();
      sub_20B604108();
      sub_20B520158(v15, &qword_27C7627A8);
      v30 = v7;
      v29 = &qword_27C7627A0;
    }

    else
    {
      v29 = &qword_27C7627A8;
      v30 = v15;
    }
  }

  else
  {
    v29 = &qword_27C762798;
    v30 = v12;
  }

  return sub_20B520158(v30, v29);
}

uint64_t sub_20B5FC988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = (&v39 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C7627C8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C7627D8);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1341A4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v44 = v22;
      v45 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v42 = v23 + 56;
      v43 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v31 = *v27;
        v40 = *(v27 + 1);
        v41 = v31;
        v32 = *(v0 + *(*v0 + 112));

        v33 = v48;
        sub_20B6011E0(v32, v48);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v0[3];
          ObjectType = swift_getObjectType();
          v43 = &v39;
          v34 = *v33;
          MEMORY[0x28223BE20](ObjectType);
          *(&v39 - 2) = v33;

          sub_20B5F85A4(sub_20B606D54, (&v39 - 4), v34, MEMORY[0x277D50618], sub_20BB5D57C);
          v35 = v47;
          (*(v44 + 40))(v0, v41, v40, v28, v36, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v48, &qword_27C7627C0);
        }

        else
        {
          sub_20B520158(v33, &qword_27C7627C0);
          v35 = v47;
          v43(v47, 1, 1, v44);
        }

        sub_20B5DF2D4(v35, &v7[v45], &qword_27C7627B8);
      }

      else
      {
      }

      v37 = v49;
      sub_20B52F9E8(v7, v49, &qword_27C7627D0);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v37, v0 + v16, &qword_27C7627C8);
      swift_endAccess();
      sub_20B602EB4();
      sub_20B520158(v15, &qword_27C7627D8);
      v30 = v7;
      v29 = &qword_27C7627D0;
    }

    else
    {
      v29 = &qword_27C7627D8;
      v30 = v15;
    }
  }

  else
  {
    v29 = &qword_27C7627C8;
    v30 = v12;
  }

  return sub_20B520158(v30, v29);
}

uint64_t sub_20B5FCF90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = (&v39 - v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8);
  MEMORY[0x28223BE20](v8);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762808);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v12, &qword_27C7627F8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20B5DF134(v12, v15, &qword_27C762808);
    v17 = *&v15[v13[9]];
    if (v17 && (v18 = *&v15[v13[10]]) != 0 && (v19 = *&v15[v13[11]]) != 0)
    {
      v20 = sub_20C1365F4();
      (*(*(v20 - 8) + 16))(v7, v15, v20);
      ObjectType = v19;
      v21 = v5[12];
      v22 = sub_20C1382B4();
      v23 = *(v22 - 8);
      v24 = *(v23 + 56);
      v44 = v22;
      v45 = v21;
      v25 = &v7[v21];
      v26 = ObjectType;
      v42 = v23 + 56;
      v43 = v24;
      (v24)(v25, 1, 1);
      *&v7[v5[9]] = v17;
      *&v7[v5[10]] = v18;
      *&v7[v5[11]] = v26;
      v27 = &v15[v13[12]];
      v28 = v27[16];
      if (v28 <= 0xFB)
      {
        v31 = *v27;
        v40 = *(v27 + 1);
        v41 = v31;
        v32 = *(v0 + *(*v0 + 112));

        v33 = v48;
        sub_20B6017C4(v32, v48);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v44 = v0[3];
          ObjectType = swift_getObjectType();
          v43 = &v39;
          v34 = *v33;
          MEMORY[0x28223BE20](ObjectType);
          *(&v39 - 2) = v33;

          sub_20B5F85A4(sub_20B606D8C, (&v39 - 4), v34, MEMORY[0x277D53E88], sub_20BB5D68C);
          v35 = v47;
          (*(v44 + 40))(v0, v41, v40, v28, v36, ObjectType);
          swift_unknownObjectRelease();

          sub_20B520158(v48, &qword_27C7627F0);
        }

        else
        {
          sub_20B520158(v33, &qword_27C7627F0);
          v35 = v47;
          v43(v47, 1, 1, v44);
        }

        sub_20B5DF2D4(v35, &v7[v45], &qword_27C7627E8);
      }

      else
      {
      }

      v37 = v49;
      sub_20B52F9E8(v7, v49, &qword_27C762800);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_20B5DF2D4(v37, v0 + v16, &qword_27C7627F8);
      swift_endAccess();
      sub_20B6034D0();
      sub_20B520158(v15, &qword_27C762808);
      v30 = v7;
      v29 = &qword_27C762800;
    }

    else
    {
      v29 = &qword_27C762808;
      v30 = v15;
    }
  }

  else
  {
    v29 = &qword_27C7627F8;
    v30 = v12;
  }

  return sub_20B520158(v30, v29);
}

char *sub_20B5FD598(uint64_t a1)
{
  v98 = a1;
  v2 = sub_20C13BB84();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C138244();
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718);
  MEMORY[0x28223BE20](v97);
  v15 = (&v81 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762720);
  MEMORY[0x28223BE20](v16);
  v88 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  MEMORY[0x28223BE20](v85);
  v22 = &v81 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v86 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762720);
  v87 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C762720;
    v55 = v20;
    return sub_20B520158(v55, v54);
  }

  sub_20B5DF134(v20, v22, &qword_27C762728);
  v24 = *(*v1 + 112);
  v82 = v1;
  v25 = *(v1 + v24);
  v83 = v22;
  v26 = sub_20B600BFC(v25, v15);
  v94 = v15;
  v27 = *v15;
  MEMORY[0x28223BE20](v26);
  *(&v81 - 2) = v94;

  v28 = MEMORY[0x277D53E10];
  sub_20B5F85A4(sub_20B604B94, (&v81 - 4), v27, MEMORY[0x277D53E10], sub_20BB5D648);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v90 = v13;
  *(&v81 - 2) = v94;

  v31 = v90;
  sub_20B5F85A4(sub_20B604CD4, (&v81 - 4), v27, v28, sub_20BB5D648);
  v33 = v32;
  v34 = v94;
  sub_20B52F9E8(v94 + *(v97 + 44), v31, &qword_27C762710);
  if (v98 < 0 || *(v30 + 16) <= v98)
  {

    v56 = v93;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1D4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    (*(v95 + 8))(v56, v96);
    goto LABEL_15;
  }

  v93 = 0;
  v35 = v91;
  v36 = *(v91 + 16);
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v96 = *(v91 + 72);
  v97 = v36;
  v38 = v30 + v37 + v96 * v98;
  v39 = v100;
  v98 = v91 + 16;
  v36(v92, v38, v100);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v61 = v92;
    v101[0] = sub_20C1362C4();
    v101[1] = v62;
    MEMORY[0x28223BE20](v101[0]);
    *(&v81 - 2) = v101;
    v63 = sub_20B79692C(sub_20B606650, (&v81 - 4), v43);

    if (v63)
    {
      v64 = sub_20C1362C4();
      v66 = v65;
      v67 = v84;
      sub_20B52F9E8(v31, v84, &qword_27C762710);
      if ((*(v35 + 48))(v67, 1, v39) == 1)
      {
        sub_20B520158(v67, &qword_27C762710);

        v68 = v82;
LABEL_22:
        v69 = v89;
        (v97)(v89, v61, v39);
        v70 = 0;
LABEL_30:
        v75 = v88;
        (*(v35 + 56))(v69, v70, 1, v39);
        v76 = v83;
        sub_20B606B6C(v69, &v83[*(v85 + 48)], &qword_27C762710);
        sub_20B52F9E8(v76, v75, &qword_27C762728);
        swift_storeEnumTagMultiPayload();
        v77 = v86;
        swift_beginAccess();
        sub_20B5DF2D4(v75, v68 + v77, &qword_27C762720);
        swift_endAccess();
        sub_20B602898();
        v78 = v82;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v79 = *(v78 + 24);
          ObjectType = swift_getObjectType();
          (*(v79 + 48))(v78, v61, ObjectType, v79);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v69, &qword_27C762710);
        (*(v35 + 8))(v61, v39);
        v60 = v31;
        goto LABEL_16;
      }

      v71 = sub_20C1362C4();
      v73 = v72;
      (*(v35 + 8))(v67, v39);
      if (v64 == v71 && v66 == v73)
      {

        v70 = 1;
        v68 = v82;
      }

      else
      {
        v74 = sub_20C13DFF4();

        v68 = v82;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

        v70 = 1;
      }

      v69 = v89;
      goto LABEL_30;
    }

    (*(v35 + 8))(v61, v39);
LABEL_15:
    v60 = v31;
LABEL_16:
    sub_20B520158(v60, &qword_27C762710);
    sub_20B520158(v34, &qword_27C762718);
    v54 = &qword_27C762728;
    v55 = v83;
    return sub_20B520158(v55, v54);
  }

  v101[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v101[0];
  v44 = v33 + v37;
  v95 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v99;
    v47 = v100;
    (v97)(v99, v44, v100);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v95)(v46, v47);
    v101[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v101[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v96;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v94;
      v31 = v90;
      v35 = v91;
      v39 = v100;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FE094(uint64_t a1)
{
  v98 = a1;
  v2 = sub_20C13BB84();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C1341A4();
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0);
  MEMORY[0x28223BE20](v97);
  v15 = (&v81 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v16);
  v88 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v85);
  v22 = &v81 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v86 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C7627C8);
  v87 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C7627C8;
    v55 = v20;
    return sub_20B520158(v55, v54);
  }

  sub_20B5DF134(v20, v22, &qword_27C7627D0);
  v24 = *(*v1 + 112);
  v82 = v1;
  v25 = *(v1 + v24);
  v83 = v22;
  v26 = sub_20B6011E0(v25, v15);
  v94 = v15;
  v27 = *v15;
  MEMORY[0x28223BE20](v26);
  *(&v81 - 2) = v94;

  v28 = MEMORY[0x277D50618];
  sub_20B5F85A4(sub_20B606A38, (&v81 - 4), v27, MEMORY[0x277D50618], sub_20BB5D57C);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v90 = v13;
  *(&v81 - 2) = v94;

  v31 = v90;
  sub_20B5F85A4(sub_20B606A74, (&v81 - 4), v27, v28, sub_20BB5D57C);
  v33 = v32;
  v34 = v94;
  sub_20B52F9E8(v94 + *(v97 + 44), v31, &qword_27C7627B8);
  if (v98 < 0 || *(v30 + 16) <= v98)
  {

    v56 = v93;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1D4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    (*(v95 + 8))(v56, v96);
    goto LABEL_15;
  }

  v93 = 0;
  v35 = v91;
  v36 = *(v91 + 16);
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v96 = *(v91 + 72);
  v97 = v36;
  v38 = v30 + v37 + v96 * v98;
  v39 = v100;
  v98 = v91 + 16;
  v36(v92, v38, v100);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v61 = v92;
    v101[0] = sub_20C1362C4();
    v101[1] = v62;
    MEMORY[0x28223BE20](v101[0]);
    *(&v81 - 2) = v101;
    v63 = sub_20B79692C(sub_20B606CAC, (&v81 - 4), v43);

    if (v63)
    {
      v64 = sub_20C1362C4();
      v66 = v65;
      v67 = v84;
      sub_20B52F9E8(v31, v84, &qword_27C7627B8);
      if ((*(v35 + 48))(v67, 1, v39) == 1)
      {
        sub_20B520158(v67, &qword_27C7627B8);

        v68 = v82;
LABEL_22:
        v69 = v89;
        (v97)(v89, v61, v39);
        v70 = 0;
LABEL_30:
        v75 = v88;
        (*(v35 + 56))(v69, v70, 1, v39);
        v76 = v83;
        sub_20B606B6C(v69, &v83[*(v85 + 48)], &qword_27C7627B8);
        sub_20B52F9E8(v76, v75, &qword_27C7627D0);
        swift_storeEnumTagMultiPayload();
        v77 = v86;
        swift_beginAccess();
        sub_20B5DF2D4(v75, v68 + v77, &qword_27C7627C8);
        swift_endAccess();
        sub_20B602EB4();
        v78 = v82;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v79 = *(v78 + 24);
          ObjectType = swift_getObjectType();
          (*(v79 + 48))(v78, v61, ObjectType, v79);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v69, &qword_27C7627B8);
        (*(v35 + 8))(v61, v39);
        v60 = v31;
        goto LABEL_16;
      }

      v71 = sub_20C1362C4();
      v73 = v72;
      (*(v35 + 8))(v67, v39);
      if (v64 == v71 && v66 == v73)
      {

        v70 = 1;
        v68 = v82;
      }

      else
      {
        v74 = sub_20C13DFF4();

        v68 = v82;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

        v70 = 1;
      }

      v69 = v89;
      goto LABEL_30;
    }

    (*(v35 + 8))(v61, v39);
LABEL_15:
    v60 = v31;
LABEL_16:
    sub_20B520158(v60, &qword_27C7627B8);
    sub_20B520158(v34, &qword_27C7627C0);
    v54 = &qword_27C7627D0;
    v55 = v83;
    return sub_20B520158(v55, v54);
  }

  v101[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v101[0];
  v44 = v33 + v37;
  v95 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v99;
    v47 = v100;
    (v97)(v99, v44, v100);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v95)(v46, v47);
    v101[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v101[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v96;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v94;
      v31 = v90;
      v35 = v91;
      v39 = v100;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FEB90(uint64_t a1)
{
  v98 = a1;
  v2 = sub_20C13BB84();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C1382B4();
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F0);
  MEMORY[0x28223BE20](v97);
  v15 = (&v81 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627F8);
  MEMORY[0x28223BE20](v16);
  v88 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762800);
  MEMORY[0x28223BE20](v85);
  v22 = &v81 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v86 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C7627F8);
  v87 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C7627F8;
    v55 = v20;
    return sub_20B520158(v55, v54);
  }

  sub_20B5DF134(v20, v22, &qword_27C762800);
  v24 = *(*v1 + 112);
  v82 = v1;
  v25 = *(v1 + v24);
  v83 = v22;
  v26 = sub_20B6017C4(v25, v15);
  v94 = v15;
  v27 = *v15;
  MEMORY[0x28223BE20](v26);
  *(&v81 - 2) = v94;

  v28 = MEMORY[0x277D53E88];
  sub_20B5F85A4(sub_20B606AF4, (&v81 - 4), v27, MEMORY[0x277D53E88], sub_20BB5D68C);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v90 = v13;
  *(&v81 - 2) = v94;

  v31 = v90;
  sub_20B5F85A4(sub_20B606B30, (&v81 - 4), v27, v28, sub_20BB5D68C);
  v33 = v32;
  v34 = v94;
  sub_20B52F9E8(v94 + *(v97 + 44), v31, &qword_27C7627E8);
  if (v98 < 0 || *(v30 + 16) <= v98)
  {

    v56 = v93;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1D4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    (*(v95 + 8))(v56, v96);
    goto LABEL_15;
  }

  v93 = 0;
  v35 = v91;
  v36 = *(v91 + 16);
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v96 = *(v91 + 72);
  v97 = v36;
  v38 = v30 + v37 + v96 * v98;
  v39 = v100;
  v98 = v91 + 16;
  v36(v92, v38, v100);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v61 = v92;
    v101[0] = sub_20C1362C4();
    v101[1] = v62;
    MEMORY[0x28223BE20](v101[0]);
    *(&v81 - 2) = v101;
    v63 = sub_20B79692C(sub_20B606CAC, (&v81 - 4), v43);

    if (v63)
    {
      v64 = sub_20C1362C4();
      v66 = v65;
      v67 = v84;
      sub_20B52F9E8(v31, v84, &qword_27C7627E8);
      if ((*(v35 + 48))(v67, 1, v39) == 1)
      {
        sub_20B520158(v67, &qword_27C7627E8);

        v68 = v82;
LABEL_22:
        v69 = v89;
        (v97)(v89, v61, v39);
        v70 = 0;
LABEL_30:
        v75 = v88;
        (*(v35 + 56))(v69, v70, 1, v39);
        v76 = v83;
        sub_20B606B6C(v69, &v83[*(v85 + 48)], &qword_27C7627E8);
        sub_20B52F9E8(v76, v75, &qword_27C762800);
        swift_storeEnumTagMultiPayload();
        v77 = v86;
        swift_beginAccess();
        sub_20B5DF2D4(v75, v68 + v77, &qword_27C7627F8);
        swift_endAccess();
        sub_20B6034D0();
        v78 = v82;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v79 = *(v78 + 24);
          ObjectType = swift_getObjectType();
          (*(v79 + 48))(v78, v61, ObjectType, v79);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v69, &qword_27C7627E8);
        (*(v35 + 8))(v61, v39);
        v60 = v31;
        goto LABEL_16;
      }

      v71 = sub_20C1362C4();
      v73 = v72;
      (*(v35 + 8))(v67, v39);
      if (v64 == v71 && v66 == v73)
      {

        v70 = 1;
        v68 = v82;
      }

      else
      {
        v74 = sub_20C13DFF4();

        v68 = v82;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

        v70 = 1;
      }

      v69 = v89;
      goto LABEL_30;
    }

    (*(v35 + 8))(v61, v39);
LABEL_15:
    v60 = v31;
LABEL_16:
    sub_20B520158(v60, &qword_27C7627E8);
    sub_20B520158(v34, &qword_27C7627F0);
    v54 = &qword_27C762800;
    v55 = v83;
    return sub_20B520158(v55, v54);
  }

  v101[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v101[0];
  v44 = v33 + v37;
  v95 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v99;
    v47 = v100;
    (v97)(v99, v44, v100);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v95)(v46, v47);
    v101[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v101[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v96;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v94;
      v31 = v90;
      v35 = v91;
      v39 = v100;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B5FF68C(uint64_t a1)
{
  v98 = a1;
  v2 = sub_20C13BB84();
  v95 = *(v2 - 8);
  v96 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C1334D4();
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v81 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v81 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762760);
  MEMORY[0x28223BE20](v97);
  v15 = (&v81 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762768);
  MEMORY[0x28223BE20](v16);
  v88 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762770);
  MEMORY[0x28223BE20](v85);
  v22 = &v81 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v86 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762768);
  v87 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v54 = &qword_27C762768;
    v55 = v20;
    return sub_20B520158(v55, v54);
  }

  sub_20B5DF134(v20, v22, &qword_27C762770);
  v24 = *(*v1 + 112);
  v82 = v1;
  v25 = *(v1 + v24);
  v83 = v22;
  v26 = sub_20B601DA8(v25, v15);
  v94 = v15;
  v27 = *v15;
  MEMORY[0x28223BE20](v26);
  *(&v81 - 2) = v94;

  v28 = MEMORY[0x277D4FF18];
  sub_20B5F85A4(sub_20B6067DC, (&v81 - 4), v27, MEMORY[0x277D4FF18], sub_20BB5D714);
  v30 = v29;
  MEMORY[0x28223BE20](v29);
  v90 = v13;
  *(&v81 - 2) = v94;

  v31 = v90;
  sub_20B5F85A4(sub_20B606818, (&v81 - 4), v27, v28, sub_20BB5D714);
  v33 = v32;
  v34 = v94;
  sub_20B52F9E8(v94 + *(v97 + 44), v31, &qword_27C762758);
  if (v98 < 0 || *(v30 + 16) <= v98)
  {

    v56 = v93;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1D4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    (*(v95 + 8))(v56, v96);
    goto LABEL_15;
  }

  v93 = 0;
  v35 = v91;
  v36 = *(v91 + 16);
  v37 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v96 = *(v91 + 72);
  v97 = v36;
  v38 = v30 + v37 + v96 * v98;
  v39 = v100;
  v98 = v91 + 16;
  v36(v92, v38, v100);

  v40 = *(v33 + 16);
  if (!v40)
  {

    v43 = MEMORY[0x277D84F90];
LABEL_19:
    v61 = v92;
    v101[0] = sub_20C1362C4();
    v101[1] = v62;
    MEMORY[0x28223BE20](v101[0]);
    *(&v81 - 2) = v101;
    v63 = sub_20B79692C(sub_20B606CAC, (&v81 - 4), v43);

    if (v63)
    {
      v64 = sub_20C1362C4();
      v66 = v65;
      v67 = v84;
      sub_20B52F9E8(v31, v84, &qword_27C762758);
      if ((*(v35 + 48))(v67, 1, v39) == 1)
      {
        sub_20B520158(v67, &qword_27C762758);

        v68 = v82;
LABEL_22:
        v69 = v89;
        (v97)(v89, v61, v39);
        v70 = 0;
LABEL_30:
        v75 = v88;
        (*(v35 + 56))(v69, v70, 1, v39);
        v76 = v83;
        sub_20B606B6C(v69, &v83[*(v85 + 48)], &qword_27C762758);
        sub_20B52F9E8(v76, v75, &qword_27C762770);
        swift_storeEnumTagMultiPayload();
        v77 = v86;
        swift_beginAccess();
        sub_20B5DF2D4(v75, v68 + v77, &qword_27C762768);
        swift_endAccess();
        sub_20B603AEC();
        v78 = v82;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v79 = *(v78 + 24);
          ObjectType = swift_getObjectType();
          (*(v79 + 48))(v78, v61, ObjectType, v79);
          swift_unknownObjectRelease();
        }

        sub_20B520158(v69, &qword_27C762758);
        (*(v35 + 8))(v61, v39);
        v60 = v31;
        goto LABEL_16;
      }

      v71 = sub_20C1362C4();
      v73 = v72;
      (*(v35 + 8))(v67, v39);
      if (v64 == v71 && v66 == v73)
      {

        v70 = 1;
        v68 = v82;
      }

      else
      {
        v74 = sub_20C13DFF4();

        v68 = v82;
        if ((v74 & 1) == 0)
        {
          goto LABEL_22;
        }

        v70 = 1;
      }

      v69 = v89;
      goto LABEL_30;
    }

    (*(v35 + 8))(v61, v39);
LABEL_15:
    v60 = v31;
LABEL_16:
    sub_20B520158(v60, &qword_27C762758);
    sub_20B520158(v34, &qword_27C762760);
    v54 = &qword_27C762770;
    v55 = v83;
    return sub_20B520158(v55, v54);
  }

  v101[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v40, 0);
  v42 = 0;
  v43 = v101[0];
  v44 = v33 + v37;
  v95 = v35 + 8;
  while (v42 < *(v33 + 16))
  {
    v45 = v40;
    v46 = v99;
    v47 = v100;
    (v97)(v99, v44, v100);
    v48 = sub_20C1362C4();
    v50 = v49;
    result = (*v95)(v46, v47);
    v101[0] = v43;
    v52 = *(v43 + 16);
    v51 = *(v43 + 24);
    if (v52 >= v51 >> 1)
    {
      result = sub_20B526D44((v51 > 1), v52 + 1, 1);
      v43 = v101[0];
    }

    ++v42;
    *(v43 + 16) = v52 + 1;
    v53 = v43 + 16 * v52;
    *(v53 + 32) = v48;
    *(v53 + 40) = v50;
    v44 += v96;
    v40 = v45;
    if (v45 == v42)
    {

      v34 = v94;
      v31 = v90;
      v35 = v91;
      v39 = v100;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B600188(uint64_t a1)
{
  v89 = a1;
  v2 = sub_20C13BB84();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for WorkoutPlanCatalogThemePickerOption();
  v85 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762788);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = &v76 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762790);
  MEMORY[0x28223BE20](v88);
  v15 = (&v76 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762798);
  MEMORY[0x28223BE20](v16);
  v82 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627A0);
  MEMORY[0x28223BE20](v79);
  v22 = &v76 - v21;
  v23 = *(*v1 + 104);
  swift_beginAccess();
  v80 = v23;
  sub_20B52F9E8(v1 + v23, v20, &qword_27C762798);
  v81 = v16;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v49 = &qword_27C762798;
    v50 = v20;
    return sub_20B520158(v50, v49);
  }

  sub_20B5DF134(v20, v22, &qword_27C7627A0);
  v24 = *(*v1 + 112);
  v76 = v1;
  v25 = *(v1 + v24);
  v77 = v22;
  v26 = sub_20B60238C(v25, v15);
  v90 = v15;
  v27 = *v15;
  MEMORY[0x28223BE20](v26);
  *(&v76 - 2) = v90;

  sub_20B5F88B8(sub_20B606898, (&v76 - 4), v27);
  v29 = v28;
  MEMORY[0x28223BE20](v28);
  *(&v76 - 2) = v90;

  sub_20B5F88B8(sub_20B6068B8, (&v76 - 4), v27);
  v31 = v30;
  sub_20B52F9E8(v90 + *(v88 + 11), v13, &qword_27C762788);
  if (v89 < 0)
  {

    v32 = v91;
LABEL_14:
    sub_20C13B534();
    v51 = sub_20C13BB74();
    v52 = sub_20C13D1D4();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v77;
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_20B517000, v51, v52, "[WorkoutPlanFilterOptionCoordinator] item selected out of range", v55, 2u);
      MEMORY[0x20F2F6A40](v55, -1, -1);
    }

    (*(v86 + 8))(v32, v87);
    v56 = v13;
    goto LABEL_17;
  }

  v32 = v91;
  if (*(v29 + 16) <= v89)
  {

    goto LABEL_14;
  }

  v88 = v13;
  v33 = v84;
  v34 = (*(v85 + 80) + 32) & ~*(v85 + 80);
  v91 = *(v85 + 72);
  sub_20B6068D8(v29 + v34 + v91 * v89, v84);

  v35 = *(v31 + 16);
  if (!v35)
  {

    v38 = MEMORY[0x277D84F90];
    v48 = v93;
LABEL_20:
    v94[0] = sub_20C133A34();
    v94[1] = v57;
    MEMORY[0x28223BE20](v94[0]);
    *(&v76 - 2) = v94;
    v58 = sub_20B79692C(sub_20B606CAC, (&v76 - 4), v38);

    if ((v58 & 1) == 0)
    {
      sub_20B60693C(v33);
      sub_20B520158(v88, &qword_27C762788);
      sub_20B520158(v90, &qword_27C762790);
      v49 = &qword_27C7627A0;
      v50 = v77;
      return sub_20B520158(v50, v49);
    }

    v59 = sub_20C133A34();
    v61 = v60;
    v62 = v88;
    v63 = v78;
    sub_20B52F9E8(v88, v78, &qword_27C762788);
    if ((*(v85 + 48))(v63, 1, v48) == 1)
    {
      sub_20B520158(v63, &qword_27C762788);

      v64 = v76;
      v65 = v83;
    }

    else
    {
      v67 = sub_20C133A34();
      v69 = v68;
      sub_20B60693C(v63);
      v65 = v83;
      if (v59 == v67 && v61 == v69)
      {

        v66 = 1;
        v64 = v76;
        goto LABEL_30;
      }

      v70 = sub_20C13DFF4();

      v64 = v76;
      if (v70)
      {
        v66 = 1;
        goto LABEL_30;
      }
    }

    sub_20B6068D8(v33, v65);
    v66 = 0;
LABEL_30:
    v54 = v77;
    v71 = v82;
    (*(v85 + 56))(v65, v66, 1, v48);
    sub_20B606B6C(v65, v54 + *(v79 + 48), &qword_27C762788);
    sub_20B52F9E8(v54, v71, &qword_27C7627A0);
    swift_storeEnumTagMultiPayload();
    v72 = v80;
    swift_beginAccess();
    sub_20B5DF2D4(v71, v64 + v72, &qword_27C762798);
    swift_endAccess();
    sub_20B604108();
    v73 = v76;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v74 = *(v73 + 24);
      ObjectType = swift_getObjectType();
      (*(v74 + 48))(v73, v33, ObjectType, v74);
      swift_unknownObjectRelease();
    }

    sub_20B520158(v65, &qword_27C762788);
    sub_20B60693C(v33);
    v56 = v62;
LABEL_17:
    sub_20B520158(v56, &qword_27C762788);
    sub_20B520158(v90, &qword_27C762790);
    v49 = &qword_27C7627A0;
    v50 = v54;
    return sub_20B520158(v50, v49);
  }

  v89 = 0;
  v94[0] = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v35, 0);
  v37 = 0;
  v38 = v94[0];
  v39 = v31 + v34;
  while (v37 < *(v31 + 16))
  {
    v40 = v31;
    v41 = v92;
    sub_20B6068D8(v39, v92);
    v42 = sub_20C133A34();
    v44 = v43;
    result = sub_20B60693C(v41);
    v94[0] = v38;
    v46 = *(v38 + 16);
    v45 = *(v38 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_20B526D44((v45 > 1), v46 + 1, 1);
      v38 = v94[0];
    }

    ++v37;
    *(v38 + 16) = v46 + 1;
    v47 = v38 + 16 * v46;
    *(v47 + 32) = v42;
    *(v47 + 40) = v44;
    v39 += v91;
    v48 = v93;
    v31 = v40;
    if (v35 == v37)
    {

      v33 = v84;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

char *sub_20B600BFC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = sub_20C138244();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v47 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762728);
  v15 = *(v3 + v53[9]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  v58 = v11;
  if (!v16)
  {
LABEL_8:
    v29 = sub_20B527580(v17);

    if (v50)
    {
      v31 = v52;
      v30 = v53;
    }

    else
    {
      v30 = v53;
      v29 = sub_20B604F74(*(v3 + v53[10]), v29, sub_20B605F68, sub_20B605F68);
      v31 = v52;
    }

    v32 = v51;
    sub_20B52F9E8(v3 + v30[12], v51, &qword_27C762710);
    if ((*(v11 + 48))(v32, 1, v10) == 1)
    {
      sub_20B520158(v32, &qword_27C762710);
    }

    else
    {
      (*(v11 + 32))(v31, v32, v10);
      v33 = v11;
      v34 = sub_20C1362C4();
      v36 = sub_20B8D7150(v34, v35, v29);

      if (v36)
      {
        v37 = *(v3 + v53[11]);
        v38 = sub_20C1362C4();
        LOBYTE(v37) = sub_20B8D7150(v38, v39, v37);

        if (v37)
        {
          v40 = v58;
          (*(v58 + 16))(v9, v31, v10);
          (*(v40 + 56))(v9, 0, 1, v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C14F980;
          *(inited + 32) = sub_20C1362C4();
          *(inited + 40) = v42;
          v43 = sub_20BE8C2E8(inited);
          swift_setDeallocating();
          sub_20B5D9804(inited + 32);
          (*(v40 + 8))(v31, v10);
          v44 = v43;
LABEL_20:
          *a2 = v15;
          a2[1] = v29;
          a2[2] = v44;
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762718);
          sub_20B5DF134(v9, a2 + *(v46 + 44), &qword_27C762710);
        }

        v11 = v58;
        (*(v58 + 8))(v31, v10);
      }

      else
      {
        (*(v33 + 8))(v31, v10);
        v11 = v33;
      }

      v30 = v53;
    }

    (*(v11 + 56))(v9, 1, 1, v10);
    v45 = *(v3 + v30[11]);

    v44 = sub_20B604F74(v45, v29, sub_20B605F68, sub_20B605F68);
    goto LABEL_20;
  }

  v47 = v3;
  v48 = v9;
  v49 = a2;
  v59 = MEMORY[0x277D84F90];
  result = sub_20B526D44(0, v16, 0);
  v11 = v58;
  v19 = 0;
  v17 = v59;
  v56 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v54 = v58 + 8;
  v55 = v58 + 16;
  while (v19 < *(v15 + 16))
  {
    v20 = v15;
    v21 = v57;
    (*(v11 + 16))(v57, v56 + *(v11 + 72) * v19, v10);
    v22 = sub_20C1362C4();
    v11 = v58;
    v23 = v22;
    v25 = v24;
    result = (*(v58 + 8))(v21, v10);
    v59 = v17;
    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    if (v27 >= v26 >> 1)
    {
      result = sub_20B526D44((v26 > 1), v27 + 1, 1);
      v11 = v58;
      v17 = v59;
    }

    ++v19;
    *(v17 + 16) = v27 + 1;
    v28 = v17 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
    v15 = v20;
    if (v16 == v19)
    {
      v9 = v48;
      a2 = v49;
      v3 = v47;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}