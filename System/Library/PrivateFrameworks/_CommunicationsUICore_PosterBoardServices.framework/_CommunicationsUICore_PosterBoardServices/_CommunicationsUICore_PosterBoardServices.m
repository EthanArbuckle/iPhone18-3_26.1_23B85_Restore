id sub_27525CE00()
{
  v1 = [*v0 contact];

  return v1;
}

id sub_27525CE38()
{
  v1 = [*v0 currentNickname];

  return v1;
}

id sub_27525CE70()
{
  v1 = [*v0 pendingNickname];

  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27525CFB0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27525CFD0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27525D030(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27525D050(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

id sub_27525D0A0()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [v0 updateContactAndNicknamesForAutoUpdateWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_27526D128();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_27525D160(uint64_t a1, id *a2)
{
  result = sub_27526D238();
  *a2 = 0;
  return result;
}

uint64_t sub_27525D1D8(uint64_t a1, id *a2)
{
  v3 = sub_27526D248();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_27525D258@<X0>(uint64_t *a1@<X8>)
{
  sub_27526D258();
  v2 = sub_27526D228();

  *a1 = v2;
  return result;
}

uint64_t sub_27525D29C()
{
  v0 = sub_27526D258();
  v1 = MEMORY[0x277C707C0](v0);

  return v1;
}

uint64_t sub_27525D2D8()
{
  sub_27526D258();
  sub_27526D288();
}

uint64_t sub_27525D32C()
{
  sub_27526D258();
  sub_27526D598();
  sub_27526D288();
  v0 = sub_27526D5B8();

  return v0;
}

uint64_t sub_27525D3A8()
{
  v0 = sub_27526D258();
  v2 = v1;
  if (v0 == sub_27526D258() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_27526D528();
  }

  return v5 & 1;
}

uint64_t sub_27525D43C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27526D228();

  *a1 = v2;
  return result;
}

uint64_t sub_27525D484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27526D258();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27525D4B0(uint64_t a1)
{
  v2 = sub_27525D610(&qword_2809B9238);
  v3 = sub_27525D610(&unk_2809B9240);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_27525D55C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_27525D610(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNWallpaperColorDescriptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PosterViewController.Model.__allocating_init(contact:contactStore:contactNameLayoutGuide:externalTextViewController:prefersHorizontalTextLayout:sensitiveContentWarningCenteringLayoutGuide:showContactNameInPoster:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 40) = a3;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 32) = a7;
  return result;
}

uint64_t PosterViewController.Model.init(contact:contactStore:contactNameLayoutGuide:externalTextViewController:prefersHorizontalTextLayout:sensitiveContentWarningCenteringLayoutGuide:showContactNameInPoster:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 40) = a3;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 32) = a7;
  return v7;
}

uint64_t PosterViewController.Model.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

id DimmingView.__allocating_init(values:)(Swift::OpaquePointer a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame_];
  DimmingView.updateGradients(with:)(a1);

  sub_27525DEF8();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  return v3;
}

Swift::Void __swiftcall DimmingView.updateGradients(with:)(Swift::OpaquePointer with)
{
  v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_dimmingGradients;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    goto LABEL_38;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v5)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C70990](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_35;
      }

      [v7 removeFromSuperlayer];

      ++v6;
    }

    while (v9 != v5);
  }

  v11 = v37;
  v10 = v38;
  v43 = *(with._rawValue + 2);
  if (v43)
  {
    v12 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_gradientLayer;
    v42 = with._rawValue + 32;
    v41 = *MEMORY[0x277CDA7B8];
    v13 = objc_opt_self();
    v39 = *&v38[v12];
    v40 = v13;
    v14 = 0;
    do
    {
      v15 = &v42[40 * v14];
      v16 = *(v15 + 4);
      v18 = v15[2];
      v17 = v15[3];
      v20 = *v15;
      v19 = v15[1];
      v21 = objc_allocWithZone(MEMORY[0x277CD9EB0]);

      with._rawValue = [v21 init];
      [with._rawValue setStartPoint_];
      [with._rawValue setEndPoint_];
      if (v16 >> 62)
      {
        v22 = sub_27526D4C8();
        if (v22)
        {
LABEL_16:
          v46 = MEMORY[0x277D84F90];
          sub_27525E474(0, v22 & ~(v22 >> 63), 0);
          if (v22 < 0)
          {
            goto LABEL_37;
          }

          v23 = 0;
          v24 = v46;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v25 = MEMORY[0x277C70990](v23, v16);
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_34:
                __break(1u);
LABEL_35:
                __break(1u);
LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
LABEL_38:
                v5 = sub_27526D4C8();
                goto LABEL_3;
              }

              if (v23 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v25 = *(v16 + 8 * v23 + 32);
            }

            v26 = v25;
            v27 = [v25 CGColor];
            type metadata accessor for CGColor(0);
            v45 = v28;

            *&v44 = v27;
            v46 = v24;
            v4 = *(v24 + 16);
            v29 = *(v24 + 24);
            if (v4 >= v29 >> 1)
            {
              sub_27525E474((v29 > 1), v4 + 1, 1);
              v24 = v46;
            }

            ++v23;
            *(v24 + 16) = v4 + 1;
            sub_27525E494(&v44, (v24 + 32 * v4 + 32));
            if (v22 == v23)
            {

              v11 = v37;
              v10 = v38;
              goto LABEL_29;
            }
          }
        }
      }

      else
      {
        v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      v30 = sub_27526D2D8();

      [with._rawValue setColors_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_27526E1D0;
      *(v31 + 32) = [v40 functionWithName_];
      sub_27525E82C(0, &qword_2809B93E8);
      v4 = sub_27526D2D8();

      [with._rawValue setInterpolations_];

      v32 = with._rawValue;
      [v32 setAnchorPoint_];
      [v10 bounds];
      [v32 setBounds_];

      swift_beginAccess();
      v33 = v32;
      MEMORY[0x277C707D0]();
      if (*((*(v10 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v10 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = v14;
        sub_27526D2F8();
      }

      ++v14;
      sub_27526D308();
      swift_endAccess();
      [v39 addSublayer_];
    }

    while (v14 != v43);
  }

  v34 = *(v10 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_gradientLayer);
  [v34 setAnchorPoint_];
  v35 = [v10 layer];
  [v35 setMask_];

  v36 = [v10 layer];
  [v36 setMasksToBounds_];
}

void sub_27525DEF8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v9[0] = xmmword_27526E1E0;
  v9[1] = xmmword_27526E1F0;
  v9[2] = xmmword_27526E200;
  v9[3] = xmmword_27526E210;
  v9[4] = xmmword_27526E220;
  v3 = [objc_opt_self() valueWithCAColorMatrix_];
  v4 = sub_27526D228();
  [v2 setValue:v3 forKey:v4];

  v5 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9408);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27526E230;
  *(v6 + 56) = sub_27525E82C(0, &qword_2809B9410);
  *(v6 + 32) = v2;
  v7 = v2;
  v8 = sub_27526D2D8();

  [v5 setFilters_];
}

Swift::Void __swiftcall DimmingView.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_dimmingGradients;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_27526D4C8())
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
        v5 = MEMORY[0x277C70990](v4, v2);
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

      [v0 bounds];
      [v6 setBounds_];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_12:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27526E1D0;
  v9 = *&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices11DimmingView_gradientLayer];
  *(inited + 32) = v9;
  v10 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x277C70990](0, inited);
    goto LABEL_15;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = v10;
LABEL_15:
    v12 = v11;
    [v0 bounds];
    [v12 setBounds_];

    swift_setDeallocating();
    swift_arrayDestroy();
    return;
  }

  __break(1u);
}

id DimmingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall DimmingView.GradientValues.init(startPoint:endPoint:colors:)(_CommunicationsUICore_PosterBoardServices::DimmingView::GradientValues *__return_ptr retstr, CGPoint startPoint, CGPoint endPoint, Swift::OpaquePointer colors)
{
  retstr->startPoint.x = startPoint.x;
  retstr->startPoint.y = startPoint.y;
  retstr->endPoint.x = endPoint.x;
  retstr->endPoint.y = endPoint.y;
  retstr->colors = colors;
}

char *sub_27525E474(char *a1, int64_t a2, char a3)
{
  result = sub_27525E5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_27525E494(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27525E524(uint64_t a1, int a2)
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

uint64_t sub_27525E56C(uint64_t result, int a2, int a3)
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

void *sub_27525E5C4(void *a1, int64_t a2, char a3)
{
  result = sub_27525E6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27525E5E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_27525E6F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27525E82C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_27525E8D8(void *a1)
{
  [*(v1 + 16) setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 addSubview_];
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27526E2F0;
  v5 = [*(v1 + 16) topAnchor];
  v6 = [a1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [*(v1 + 16) leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [*(v1 + 16) trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [*(v1 + 16) bottomAnchor];
  v15 = [a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_27525F828();
  v17 = sub_27526D2D8();

  [v3 activateConstraints_];
}

uint64_t sub_27525EB8C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  result = sub_27525F6F8(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 24) != result)
  {
    *(v8 + 24) = result;
    v10 = result;
    v11 = *(v8 + 16);
    v12 = sub_27525EC00(v10);
    DimmingView.updateGradients(with:)(v12);
  }

  return result;
}

uint64_t sub_27525EC00(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9420);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_27526E230;
      if (qword_2809B9170 != -1)
      {
        swift_once();
      }

      v7 = &xmmword_2809B9CB0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9420);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_27526E230;
      if (qword_2809B9178 != -1)
      {
        swift_once();
      }

      v7 = &xmmword_2809B9CE0;
    }

    goto LABEL_20;
  }

  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9420);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_27526E230;
    if (qword_2809B9188 != -1)
    {
      swift_once();
    }

    v7 = &xmmword_2809B9D40;
LABEL_20:
    v8 = *(v7 + 4);
    v9 = v7[1];
    *(v1 + 32) = *v7;
    *(v1 + 48) = v9;
    *(v1 + 64) = v8;
LABEL_21:

    return v1;
  }

  if (a1 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9420);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_27526E300;
    if (qword_2809B9180 != -1)
    {
      swift_once();
    }

    v2 = qword_2809B9D30;
    v3 = unk_2809B9D20;
    *(v1 + 32) = xmmword_2809B9D10;
    *(v1 + 48) = v3;
    *(v1 + 64) = v2;
    v4 = qword_2809B9188;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = qword_2809B9D60;
    v6 = *algn_2809B9D50;
    *(v1 + 72) = xmmword_2809B9D40;
    *(v1 + 88) = v6;
    *(v1 + 104) = v5;
    goto LABEL_21;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_27525EF0C()
{
  v1 = *v0;
  sub_27526D598();
  MEMORY[0x277C70AB0](v1);
  return sub_27526D5B8();
}

uint64_t sub_27525EF80()
{
  v1 = *v0;
  sub_27526D598();
  MEMORY[0x277C70AB0](v1);
  return sub_27526D5B8();
}

double sub_27525EFC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27526E310;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.3;
  xmmword_2809B9CB0 = xmmword_27526E320;
  unk_2809B9CC0 = xmmword_27526E330;
  qword_2809B9CD0 = v0;
  return result;
}

double sub_27525F0A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27526E310;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.7;
  xmmword_2809B9CE0 = xmmword_27526E340;
  *algn_2809B9CF0 = xmmword_27526E350;
  qword_2809B9D00 = v0;
  return result;
}

double sub_27525F184()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27526E310;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.5;
  xmmword_2809B9D10 = xmmword_27526E360;
  unk_2809B9D20 = xmmword_27526E370;
  qword_2809B9D30 = v0;
  return result;
}

double sub_27525F264()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27526E310;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent_];

  *(v0 + 32) = v3;
  *(v0 + 40) = [v1 blackColor];
  result = 0.5;
  xmmword_2809B9D40 = xmmword_27526E360;
  *algn_2809B9D50 = xmmword_27526E380;
  qword_2809B9D60 = v0;
  return result;
}

uint64_t sub_27525F344()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t getEnumTagSinglePayload for PosterDimmingLayerManager.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PosterDimmingLayerManager.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27525F514()
{
  result = qword_2809B9418;
  if (!qword_2809B9418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9418);
  }

  return result;
}

uint64_t sub_27525F568()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27526E230;
  if (qword_2809B9188 != -1)
  {
    swift_once();
  }

  v3 = qword_2809B9D60;
  v4 = *algn_2809B9D50;
  *(inited + 32) = xmmword_2809B9D40;
  *(inited + 48) = v4;
  *(inited + 64) = v3;
  v5 = objc_allocWithZone(type metadata accessor for DimmingView());

  v6 = [v5 initWithFrame_];
  DimmingView.updateGradients(with:)(inited);
  swift_setDeallocating();
  sub_27525F6A4(inited + 32);
  sub_27525DEF8();
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + 16) = v6;
  *(v1 + 24) = 4;
  return v1;
}

uint64_t sub_27525F6F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 0.0;
  v29.size.height = 0.0;
  if (!CGRectEqualToRect(*&a1, v29))
  {
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    MidX = CGRectGetMidX(v24);
    v25.origin.x = a5;
    v25.origin.y = a6;
    v25.size.width = a7;
    v25.size.height = a8;
    v17 = CGRectGetMidX(v25);
    v26.origin.x = a5;
    v26.origin.y = a6;
    v26.size.width = a7;
    v26.size.height = a8;
    v18 = CGRectGetWidth(v26) * 0.1 * 0.5;
    v19 = v17 - v18;
    v20 = v17 + v18;
    if (v19 > MidX || MidX > v20)
    {
      return MidX < v19;
    }
  }

  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  Height = CGRectGetHeight(v27);
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  if (Height / CGRectGetWidth(v28) < 1.33333333)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

unint64_t sub_27525F828()
{
  result = qword_2809B9428;
  if (!qword_2809B9428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B9428);
  }

  return result;
}

uint64_t PosterType.description.getter()
{
  v1 = 0x6F746F6870;
  v2 = 0x6D6172676F6E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x696A6F6D656DLL;
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

_CommunicationsUICore_PosterBoardServices::PosterType_optional __swiftcall PosterType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27526D518();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PosterType.rawValue.getter()
{
  v1 = 0xD00000000000002CLL;
  if (*v0 != 2)
  {
    v1 = 0;
  }

  v2 = 0xD00000000000002ELL;
  if (*v0)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_27525FA00()
{
  result = qword_2809B9430;
  if (!qword_2809B9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9430);
  }

  return result;
}

uint64_t sub_27525FA54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000028;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD00000000000002CLL;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 2)
    {
      v5 = 0x800000027526EB60;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000028;
    }

    else
    {
      v4 = 0xD00000000000002ELL;
    }

    if (v3)
    {
      v5 = 0x800000027526EB30;
    }

    else
    {
      v5 = 0x800000027526EB00;
    }
  }

  v6 = 0x800000027526EB60;
  v7 = 0xD00000000000002CLL;
  if (a2 != 2)
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = 0x800000027526EB30;
  if (!a2)
  {
    v2 = 0xD00000000000002ELL;
    v8 = 0x800000027526EB00;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_27526D528();
  }

  return v11 & 1;
}

uint64_t sub_27525FB70()
{
  sub_27526D598();
  sub_27526D288();

  return sub_27526D5B8();
}

uint64_t sub_27525FC30()
{
  sub_27526D288();
}

uint64_t sub_27525FCDC()
{
  sub_27526D598();
  sub_27526D288();

  return sub_27526D5B8();
}

void sub_27525FDA4(unint64_t *a1@<X8>)
{
  v2 = 0x800000027526EB60;
  v3 = 0xD00000000000002CLL;
  if (*v1 != 2)
  {
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  v4 = 0x800000027526EB00;
  v5 = 0xD00000000000002ELL;
  if (*v1)
  {
    v5 = 0xD000000000000028;
    v4 = 0x800000027526EB30;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for PosterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27525FF70()
{
  v0 = sub_27526D188();
  __swift_allocate_value_buffer(v0, qword_2809B9D68);
  __swift_project_value_buffer(v0, qword_2809B9D68);
  return sub_27526D178();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_275260080(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_27525E5C4(0, v1, 0);
  v2 = v30;
  v4 = v3 + 64;
  result = sub_27526D458();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = v3;
    v12 = *(*(v3 + 56) + 8 * v6);

    v13 = v12;
    v14 = sub_27526D228();

    v16 = *(v30 + 16);
    v15 = *(v30 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_27525E5C4((v15 > 1), v16 + 1, 1);
    }

    *(v30 + 16) = v16 + 1;
    v17 = v30 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v9 = 1 << *(v11 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v11;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_275262570(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_275262570(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_2752602EC(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9488);
  v4 = sub_27526D2D8();
  v5 = [v15 areKeysAvailable_];

  if (v5)
  {

    return v15;
  }

  else
  {
    v17 = a1;

    if ([v15 availableKeyDescriptor])
    {
      v7 = swift_unknownObjectRetain();
      MEMORY[0x277C707D0](v7);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27526D2F8();
      }

      sub_27526D308();
      swift_unknownObjectRelease();
    }

    v8 = [v15 identifier];
    if (!v8)
    {
      sub_27526D258();
      v8 = sub_27526D228();
    }

    v9 = sub_27526D2D8();
    v16 = 0;
    v10 = [a2 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v16];

    if (v10)
    {
      v11 = v16;
    }

    else
    {
      v12 = v16;
      v13 = sub_27526D128();

      swift_willThrow();
      v11 = v15;
      v10 = v15;
    }

    v14 = v11;

    return v10;
  }
}

void sub_27526053C(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((a2 & 1) == 0)
  {
    v12 = (*(v7 + 24))(v6, v7);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 wallpaper];

      if (v14)
      {
LABEL_10:
        v11 = [v14 wallpaperData];

        if (v11)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

LABEL_13:
      v20 = 0xF000000000000000;
      goto LABEL_14;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = (*(v7 + 8))(v6, v7);
  if (!v8 || (v9 = v8, v10 = [v8 wallpaper], v9, !v10))
  {
    v15 = a1[3];
    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = (*(v16 + 16))(v15, v16);
    if (v17)
    {
      v18 = v17;
      v14 = [v17 wallpaper];

      if (v14)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = [v10 posterArchiveData];

LABEL_11:
  v14 = sub_27526D148();
  v20 = v19;

LABEL_14:
  *a3 = v14;
  a3[1] = v20;
}

void sub_2752606F4(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  if ((a2 & 1) == 0)
  {
    v18 = (*(v7 + 24))(v6, v7);
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = v18;
    v10 = [v18 wallpaper];

    if (!v10)
    {
      goto LABEL_20;
    }

    v20 = [v10 metadata];
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v20;
    v22 = [v20 type];

    sub_27526D258();
    v23 = [v10 wallpaperData];
    if (v23)
    {
      v24 = v23;
      v14 = sub_27526D148();
      v16 = v25;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    v37 = sub_27526D518();

    if (v37 <= 1)
    {
      if (!v37)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

LABEL_33:
    if (v37 == 2)
    {
      goto LABEL_35;
    }

LABEL_34:
    v36 = 3;
    goto LABEL_21;
  }

  v8 = (*(v7 + 8))(v6, v7);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 wallpaper];

    if (v10)
    {
      v11 = [v10 extensionBundleID];
      if (v11)
      {
        v12 = v11;
        sub_27526D258();

        v13 = [v10 posterArchiveData];
        v14 = sub_27526D148();
        v16 = v15;

        v17 = sub_27526D518();

        if (v17 <= 1)
        {
          if (v17)
          {
            if (v17 != 1)
            {
              goto LABEL_34;
            }

            goto LABEL_28;
          }

LABEL_32:
          v36 = 0;
          goto LABEL_21;
        }

        if (v17 != 2)
        {
          v36 = 3;
          goto LABEL_21;
        }

LABEL_35:
        v36 = 2;
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = (*(v27 + 16))(v26, v27);
  if (!v28)
  {
    goto LABEL_20;
  }

  v29 = v28;
  v10 = [v28 wallpaper];

  if (!v10)
  {
    goto LABEL_20;
  }

  v30 = [v10 metadata];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 type];

    sub_27526D258();
    v33 = [v10 wallpaperData];
    if (v33)
    {
      v34 = v33;
      v14 = sub_27526D148();
      v16 = v35;
    }

    else
    {
      v14 = 0;
      v16 = 0xF000000000000000;
    }

    v37 = sub_27526D518();

    if (v37 <= 1)
    {
      if (!v37)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (v37 == 1)
      {
LABEL_28:
        v36 = 1;
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_19:

LABEL_20:
  v14 = 0;
  v36 = 4;
  v16 = 0xF000000000000000;
LABEL_21:
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v36;
}

_CommunicationsUICore_PosterBoardServices::PosterType_optional __swiftcall PosterDataService.posterType(for:)(_CommunicationsUICore_PosterBoardServices::PosterSlot a1)
{
  v3 = v1;
  v4 = *a1;
  os_unfair_lock_lock((v2 + 16));
  sub_2752606F4((v2 + 24), v4, v7);
  os_unfair_lock_unlock((v2 + 16));
  v6 = v8;
  if (v8 == 5 || (result.value = sub_275261F6C(v7[0], v7[1], v8), v6 == 4))
  {
    LOBYTE(v6) = 3;
  }

  *v3 = v6;
  return result;
}

UIColor_optional __swiftcall PosterDataService.posterBackgroundColor(for:)(_CommunicationsUICore_PosterBoardServices::PosterSlot a1)
{
  v2 = *a1;
  os_unfair_lock_lock((v1 + 16));
  sub_275260B78((v1 + 24), v2, &v5);
  os_unfair_lock_unlock((v1 + 16));
  v4 = v5;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_275260B78@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (a2)
  {
    v9 = (*(v8 + 8))(v7, v8);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 wallpaper];

      if (v11)
      {
        v12 = [v11 metadata];

        if (v12)
        {
          v13 = [v12 backgroundColorDescription];

          if (v13)
          {
            type metadata accessor for CNWallpaperColorDescriptionKey(0);
            sub_27525E82C(0, &qword_2809B9458);
            sub_275262518();
            v14 = sub_27526D218();

LABEL_20:
            v28 = sub_275260EC8(v14);

            *a3 = v28;
            return result;
          }
        }
      }
    }

    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    v20 = (*(v19 + 16))(v18, v19);
    if (v20)
    {
      v21 = v20;
      v22 = [v20 wallpaper];

      if (v22)
      {
        v14 = [v22 metadata];

        if (!v14)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }
    }

LABEL_16:
    v14 = 0;
    goto LABEL_20;
  }

  v15 = (*(v8 + 24))(v7, v8);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 wallpaper];

  if (!v17)
  {
    goto LABEL_16;
  }

  v14 = [v17 metadata];

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_14:
  v23 = [v14 backgroundColor];

  sub_27525E82C(0, &qword_2809B9458);
  v24 = sub_27526D218();

  v25 = sub_275260080(v24);

  if (*(v25 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9460);
    v26 = sub_27526D4F8();
  }

  else
  {
    v26 = MEMORY[0x277D84F98];
  }

  v30 = v26;

  sub_2752615FC(v27, 1, &v30);
  if (!v3)
  {

    v14 = v30;
    goto LABEL_20;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_275260EC8(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[2])
    {
      v2 = sub_27526BA98(*MEMORY[0x277CBDA18]);
      if (v3)
      {
        if (v1[2])
        {
          v4 = *MEMORY[0x277CBDA10];
          v5 = *(v1[7] + 8 * v2);
          v6 = sub_27526BA98(v4);
          if ((v7 & 1) != 0 && v1[2])
          {
            v8 = *MEMORY[0x277CBDA08];
            v9 = *(v1[7] + 8 * v6);
            v10 = sub_27526BA98(v8);
            if ((v11 & 1) != 0 && v1[2])
            {
              v12 = *MEMORY[0x277CBDA00];
              v13 = *(v1[7] + 8 * v10);
              v14 = sub_27526BA98(v12);
              if (v15)
              {
                v16 = *(v1[7] + 8 * v14);
                sub_27526D158();
                v18 = v17;
                sub_27526D158();
                v20 = v19;
                sub_27526D158();
                v22 = v21;
                sub_27526D158();
                v24 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v18 green:v20 blue:v22 alpha:v23];

                return v24;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_275261050(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 16));
  v3 = *(a2 + 48);
  v4 = *(a2 + 56);
  __swift_project_boxed_opaque_existential_1((a2 + 24), v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9450);
  sub_27526D338();
  os_unfair_lock_unlock((a2 + 16));
}

void PosterDataService.posterConfiguration(for:)(char *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  os_unfair_lock_lock((v1 + 64));
  os_unfair_lock_lock((v1 + 16));
  sub_27526053C((v1 + 24), v3, &v11);
  if (v2)
  {
    os_unfair_lock_unlock((v1 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v1 + 16));
    v4 = v12;
    if (v12 >> 60 == 15)
    {
LABEL_5:
      os_unfair_lock_unlock((v1 + 64));
      return;
    }

    v5 = v11;
    v6 = *(v1 + 72);
    v7 = sub_27526D138();
    v11 = 0;
    v8 = [v6 unarchiveConfigurationFromData:v7 format:-1 error:&v11];

    v9 = v11;
    if (v8)
    {
      sub_275261F80(v5, v4);
      goto LABEL_5;
    }

    v10 = v9;
    sub_27526D128();

    swift_willThrow();
    sub_275261F80(v5, v4);
    os_unfair_lock_unlock((v1 + 64));
  }
}

id sub_2752612D4(uint64_t a1, SEL *a2)
{
  v3 = sub_275261FE8(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a2];

  return v5;
}

BOOL PosterDataService.posterHasStylizedText(_:)(uint64_t a1)
{
  v1 = sub_275261FE8(a1);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t PosterDataService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return v0;
}

uint64_t PosterDataService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2752613E4()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2752614B8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2752614B8()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2752615E4;
  }

  else
  {
    v2 = sub_2752615CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2752615FC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_27526BA98(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_275261AC4(v16, v6 & 1);
    v11 = sub_27526BA98(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for CNWallpaperColorDescriptionKey(0);
    v11 = sub_27526D548();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_275261964();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9470);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_27526D478();
    MEMORY[0x277C707A0](0xD00000000000001BLL, 0x800000027526F1D0);
    type metadata accessor for CNWallpaperColorDescriptionKey(0);
    sub_27526D4A8();
    MEMORY[0x277C707A0](39, 0xE100000000000000);
    sub_27526D4B8();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_27526BA98(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_275261AC4(v32, 1);
        v28 = sub_27526BA98(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

id sub_275261964()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9460);
  v2 = *v0;
  v3 = sub_27526D4D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_275261AC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9460);
  v36 = a2;
  result = sub_27526D4E8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_27526D258();
      sub_27526D598();
      sub_27526D288();
      v25 = sub_27526D5B8();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_275261D88(uint64_t a1, void *a2, uint64_t a3)
{
  v10[3] = sub_27525E82C(0, &qword_2809B9480);
  v10[4] = &off_2883FF310;
  v10[0] = a1;
  *v9 = 0;
  memset(&v9[8], 0, 40);
  sub_27526257C(v10, &v9[8]);
  v6 = *&v9[16];
  *(a3 + 16) = *v9;
  *(a3 + 32) = v6;
  *(a3 + 48) = *&v9[32];
  v7 = a2;
  __swift_destroy_boxed_opaque_existential_1(v10);
  *(a3 + 64) = 0;
  *(a3 + 72) = v7;
  return a3;
}

uint64_t _s41_CommunicationsUICore_PosterBoardServices0C11DataServiceC7contact0H5StoreACSo9CNContactC_So0jI0CtcfC_0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_27526E600;
  v5 = [objc_opt_self() descriptorForRequiredKeys];
  v6 = *MEMORY[0x277CBD178];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = *MEMORY[0x277CBD170];
  *(v4 + 48) = *MEMORY[0x277CBD170];
  v8 = v6;
  v9 = v7;
  v10 = sub_2752602EC(v4, a2);

  v11 = [objc_allocWithZone(MEMORY[0x277CBDBA8]) initWithContact:v10 contactStore:a2];
  v12 = [objc_allocWithZone(MEMORY[0x277D3E960]) init];
  type metadata accessor for PosterDataService();
  v13 = swift_allocObject();
  v14 = sub_275261D88(v11, v12, v13);

  return v14;
}

uint64_t sub_275261F6C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 5)
  {
    return sub_275261F80(a1, a2);
  }

  return a1;
}

uint64_t sub_275261F80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_275261F94(a1, a2);
  }

  return a1;
}

uint64_t sub_275261F94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_275261FE8(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() titleStyleAttributesForConfiguration:a1 error:v6];
  v2 = v6[0];
  if (!v1)
  {
    v3 = v2;
    v4 = sub_27526D128();

    swift_willThrow();
    return 0;
  }

  return v1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_27526211C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275262234;

  return v7(a1, a2);
}

uint64_t sub_275262234()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_275262418()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9438);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_275262448()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9440);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2752624C4()
{
  result = qword_2809B9448;
  if (!qword_2809B9448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9448);
  }

  return result;
}

unint64_t sub_275262518()
{
  result = qword_2809B9238;
  if (!qword_2809B9238)
  {
    type metadata accessor for CNWallpaperColorDescriptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9238);
  }

  return result;
}

uint64_t sub_275262570(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_27526257C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_2752625E0()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer;
  v2 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275262654()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer;
  v2 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer);
  }

  else
  {
    type metadata accessor for TouchPassthroughView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id PosterViewController.__allocating_init(model:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_27526BE70(a1);

  return v4;
}

id PosterViewController.init(model:)(uint64_t a1)
{
  v1 = sub_27526BE70(a1);

  return v1;
}

id PosterViewController.__allocating_init(contact:contactStore:contactNameLayoutGuide:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PosterViewController.Model();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 40) = a3;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 32) = 0;
  v8 = objc_allocWithZone(v3);
  v9 = sub_27526BE70(v7);

  return v9;
}

Swift::Void __swiftcall PosterViewController.didMove(toParent:)(UIViewController_optional *toParent)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v10 didMoveToParentViewController:toParent];
  if (toParent)
  {
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 superview];

      if (v5)
      {

        sub_275262920();
      }

      else
      {
        if (qword_2809B9190 != -1)
        {
          swift_once();
        }

        v6 = sub_27526D188();
        __swift_project_value_buffer(v6, qword_2809B9D68);
        v7 = sub_27526D168();
        v8 = sub_27526D3A8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_27525B000, v7, v8, "Unable to apply constraints for sensitive content warning because PosterViewController does not have a superview. Client must add view as parent's subview before calling didMove(toParent:).", v9, 2u);
          MEMORY[0x277C71010](v9, -1, -1);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_275262920()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27526E2F0;
  v2 = sub_2752681BC();
  v3 = [v2 centerXAnchor];

  v4 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel;
  v5 = *(*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel] + 56);
  if (!v5 || (v6 = [v5 centerXAnchor]) == 0)
  {
    v7 = [v0 view];
    if (!v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = v7;
    v6 = [v7 centerXAnchor];
  }

  v9 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v9;
  v10 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton;
  v11 = [*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton] centerYAnchor];
  v12 = *(*&v0[v4] + 56);
  if (!v12 || (v13 = [v12 centerYAnchor]) == 0)
  {
    v14 = [v0 view];
    if (v14)
    {
      v15 = v14;
      v13 = [v14 centerYAnchor];

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    return;
  }

LABEL_9:
  v16 = objc_opt_self();
  v17 = [v11 constraintEqualToAnchor_];

  *(v1 + 40) = v17;
  v18 = sub_275267F38();
  v19 = [v18 centerXAnchor];

  v20 = [*&v0[v10] centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v1 + 48) = v21;
  v22 = [*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel] bottomAnchor];
  v23 = [*&v0[v10] topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-10.0];

  *(v1 + 56) = v24;
  sub_27525E82C(0, &qword_2809B9428);
  v25 = sub_27526D2D8();

  [v16 activateConstraints_];
}

Swift::Void __swiftcall PosterViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_viewDidLoad);
  sub_275262DE8();
  sub_275263164();
  v5 = sub_27526D388();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_27526D358();
  v6 = v0;
  v7 = sub_27526D348();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_2752652A0(0, 0, v4, &unk_27526E740, v8);
}

id sub_275262DE8()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27526E1D0;
  v8 = sub_2752625E0();
  *(inited + 32) = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  for (i = v8; ; i = MEMORY[0x277C70990](0, inited))
  {
    v10 = i;
    v2 = 0x27A647000uLL;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = 0x27A647000uLL;
    result = [v0 view];
    if (!result)
    {
      break;
    }

    v12 = result;
    v4 = 0x27A647000uLL;
    [result addSubview_];

    swift_setDeallocating();
    swift_arrayDestroy();
    v13 = *&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager];
    swift_unknownObjectRetain();
    result = [v0 view];
    if (!result)
    {
      goto LABEL_32;
    }

    v14 = result;
    [v13 addDimmingLayerTo_];
    swift_unknownObjectRelease();

    v6 = swift_initStackObject();
    *(v6 + 16) = xmmword_27526E2F0;
    *(v6 + 32) = sub_275262654();
    inited = v6 + 32;
    *(v6 + 40) = sub_275267E84();
    *(v6 + 48) = sub_2752681BC();
    *(v6 + 56) = sub_275267F38();
    v5 = v6 & 0xFFFFFFFFFFFFFF8;
    v1 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
LABEL_26:
      v15 = MEMORY[0x277C70990](0, v6);
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v15 = *inited;
    }

    v16 = v15;
    [v15 *(v2 + 2328)];
    result = [v0 *(v3 + 2736)];
    if (!result)
    {
      goto LABEL_30;
    }

    v17 = result;
    [result *(v4 + 2520)];

    if (v1)
    {
      v18 = MEMORY[0x277C70990](1, v6);
    }

    else
    {
      if (*(v5 + 16) < 2uLL)
      {
        goto LABEL_23;
      }

      v18 = *(v6 + 40);
    }

    v19 = v18;
    [v18 *(v2 + 2328)];
    result = [v0 *(v3 + 2736)];
    if (!result)
    {
      goto LABEL_30;
    }

    v20 = result;
    [result *(v4 + 2520)];

    if (v1)
    {
      v21 = MEMORY[0x277C70990](2, v6);
    }

    else
    {
      if (*(v5 + 16) < 3uLL)
      {
        goto LABEL_23;
      }

      v21 = *(v6 + 48);
    }

    v22 = v21;
    [v21 *(v2 + 2328)];
    result = [v0 *(v3 + 2736)];
    if (!result)
    {
      goto LABEL_30;
    }

    v23 = result;
    [result *(v4 + 2520)];

    if (v1)
    {
      v24 = MEMORY[0x277C70990](3, v6);
LABEL_21:
      v25 = v24;
      [v24 *(v2 + 2328)];
      result = [v0 *(v3 + 2736)];
      if (result)
      {
        v26 = result;
        [result *(v4 + 2520)];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

LABEL_30:
      __break(1u);
      break;
    }

    if (*(v5 + 16) >= 4uLL)
    {
      v24 = *(v6 + 56);
      goto LABEL_21;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_275263164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27526E6F0;
  v2 = sub_2752625E0();
  v3 = [v2 topAnchor];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v7;
  v8 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer;
  v9 = [*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer] leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v1 + 40) = v13;
  v14 = [*&v0[v8] trailingAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [v15 trailingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 48) = v18;
  v19 = [*&v0[v8] bottomAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 bottomAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v1 + 56) = v23;
  v24 = sub_275267E84();
  v25 = [v24 topAnchor];

  v26 = [v0 view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v1 + 64) = v29;
  v30 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur;
  v31 = [*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur] leadingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = [v31 constraintEqualToAnchor_];
  *(v1 + 72) = v35;
  v36 = [*&v0[v30] trailingAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v38 = v37;
  v39 = [v37 trailingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v1 + 80) = v40;
  v41 = [*&v0[v30] bottomAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v42;
  v44 = [v42 bottomAnchor];

  v45 = [v41 constraintEqualToAnchor_];
  *(v1 + 88) = v45;
  v46 = sub_275262654();
  v47 = [v46 topAnchor];

  v48 = [v0 view];
  if (!v48)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = v48;
  v50 = [v48 topAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v1 + 96) = v51;
  v52 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer;
  v53 = [*&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer] leadingAnchor];
  v54 = [v0 view];
  if (!v54)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = [v53 constraintEqualToAnchor_];
  *(v1 + 104) = v57;
  v58 = [*&v0[v52] trailingAnchor];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v60 = v59;
  v61 = [v59 trailingAnchor];

  v62 = [v58 constraintEqualToAnchor_];
  *(v1 + 112) = v62;
  v63 = [*&v0[v52] bottomAnchor];
  v64 = [v0 view];
  if (!v64)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v65 = v64;
  v66 = objc_opt_self();
  v67 = [v65 bottomAnchor];

  v68 = [v63 constraintEqualToAnchor_];
  *(v1 + 120) = v68;
  sub_27525E82C(0, &qword_2809B9428);
  v69 = sub_27526D2D8();

  [v66 activateConstraints_];
}

uint64_t sub_27526383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 80) = a4;
  *(v4 + 88) = sub_27526D358();
  *(v4 + 96) = sub_27526D348();
  *(v4 + 128) = 1;
  v5 = swift_task_alloc();
  *(v4 + 104) = v5;
  *v5 = v4;
  v5[1] = sub_275263900;

  return sub_275264230((v4 + 128), 0);
}

uint64_t sub_275263900(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  v5 = sub_27526D318();
  if (v1)
  {
    v6 = sub_275264058;
  }

  else
  {
    v6 = sub_275263A44;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

void sub_275263A44()
{
  v64 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v2 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController);
  *(v2 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController) = v1;
  v4 = v1;

  if (qword_2809B9190 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v5 = sub_27526D188();
    __swift_project_value_buffer(v5, qword_2809B9D68);
    v6 = sub_27526D168();
    v7 = sub_27526D3B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_27525B000, v6, v7, "Has current poster. Adding poster as child.", v8, 2u);
      MEMORY[0x277C71010](v8, -1, -1);
    }

    v9 = *(v0 + 112);

    sub_275264E0C(v9);
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v11 = *(v0 + 80);
    if (v10)
    {
      v12 = *(*(v11 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel) + 40);
      if (v12)
      {
        v13 = *(v11 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper);
        if (v13)
        {
          v14 = v10;
          v15 = *(v0 + 112);
          v16 = v12;
          v17 = v13;
          sub_275265F30(v17, v14, v16);

          v11 = *(v0 + 80);
        }
      }
    }

    v18 = *(v0 + 120);
    v19 = (v11 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service);
    v20 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
    os_unfair_lock_lock((v20 + 16));
    sub_2752606F4((v20 + 24), 1, v62);
    os_unfair_lock_unlock((v20 + 16));
    if (v18)
    {
      break;
    }

    v21 = v63;
    if (v63 == 5 || (sub_275261F6C(v62[0], v62[1], v63), v21 == 4))
    {
      LOBYTE(v21) = 3;
    }

    v22 = *(v0 + 80);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 129) = v21;
    v23 = v22;
    sub_27526D1E8();
    v24 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
    os_unfair_lock_lock((v24 + 16));
    v25 = *(v24 + 48);
    v26 = *(v24 + 56);
    __swift_project_boxed_opaque_existential_1((v24 + 24), v25);
    v27 = (*(v26 + 8))(v25, v26);
    if (v27 && (v28 = v27, v29 = [v27 wallpaper], v28, v29) || (v30 = *(v24 + 48), v31 = *(v24 + 56), __swift_project_boxed_opaque_existential_1((v24 + 24), v30), (v32 = (*(v31 + 16))(v30, v31)) != 0) && (v33 = v32, v29 = objc_msgSend(v32, sel_wallpaper), v33, v29))
    {
      v34 = [v29 contentIsSensitive];
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v0 + 80);
    os_unfair_lock_unlock((v24 + 16));
    v36 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring;
    v35[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring] = v34;
    v37 = [v35 view];
    if (!v37)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      return;
    }

    v38 = v37;
    v39 = *(v0 + 80);
    [v37 setNeedsLayout];

    v40 = [v39 view];
    if (!v40)
    {
      goto LABEL_47;
    }

    v41 = v40;

    [v41 layoutIfNeeded];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_27526E600;
    *(inited + 32) = sub_275267E84();
    *(inited + 40) = sub_275267F38();
    *(inited + 48) = sub_2752681BC();
    v43 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x277C70990](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v44 = *(inited + 32);
    }

    v45 = v44;
    v46 = 0.0;
    if (v35[v36])
    {
      v46 = 1.0;
    }

    [v44 setAlpha_];

    if (v43)
    {
      v47 = MEMORY[0x277C70990](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_41;
      }

      v47 = *(inited + 40);
    }

    v48 = v47;
    v49 = 0.0;
    if (v35[v36])
    {
      v49 = 1.0;
    }

    [v47 setAlpha_];

    if (v43)
    {
      v50 = MEMORY[0x277C70990](2, inited);
      goto LABEL_33;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v50 = *(inited + 48);
LABEL_33:
      v51 = v50;
      v52 = *(v0 + 80);
      v53 = 0.0;
      if (v35[v36])
      {
        v53 = 1.0;
      }

      [v50 setAlpha_];

      swift_setDeallocating();
      swift_arrayDestroy();
      v54 = v52;
      v55 = sub_27526D168();
      v56 = sub_27526D3B8();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 112);
      v59 = *(v0 + 80);
      if (v57)
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = v35[v36];

        _os_log_impl(&dword_27525B000, v55, v56, "Is *current* poster content sensitive? - %{BOOL}d", v60, 8u);
        MEMORY[0x277C71010](v60, -1, -1);
      }

      else
      {
      }

      v61 = *(v0 + 8);

      v61();
      return;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }
}

uint64_t sub_275264058()
{
  v17 = v0;

  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_27526D188();
  __swift_project_value_buffer(v2, qword_2809B9D68);
  v3 = v1;
  v4 = sub_27526D168();
  v5 = sub_27526D3A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[9] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9470);
    v11 = sub_27526D268();
    v13 = sub_27526B4F0(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_27525B000, v4, v5, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x277C71010](v9, -1, -1);
    MEMORY[0x277C71010](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_275264230(_BYTE *a1, uint64_t a2)
{
  *(v3 + 72) = a2;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 152) = *a1;
  *(v3 + 96) = sub_27526D358();
  *(v3 + 104) = sub_27526D348();
  v6 = sub_27526D318();
  *(v3 + 112) = v6;
  *(v3 + 120) = v5;

  return MEMORY[0x2822009F8](sub_275264310, v6, v5);
}

uint64_t sub_275264310()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    v47 = *(v0 + 88);
    v48 = *(v0 + 152);
    v49 = *(v0 + 80);
    sub_27526D368();
    v50 = sub_27526D388();
    (*(*(v50 - 8) + 56))(v47, 0, 1, v50);
    v51 = v49;
    v52 = sub_27526D348();
    v53 = swift_allocObject();
    v54 = MEMORY[0x277D85700];
    *(v53 + 16) = v52;
    *(v53 + 24) = v54;
    *(v53 + 32) = v51;
    *(v53 + 40) = v48;
    v55 = sub_275266B7C(0, 0, v47, &unk_27526E928, v53);
    *(v0 + 128) = v55;
    v56 = swift_task_alloc();
    *(v0 + 136) = v56;
    v57 = sub_27525E82C(0, &qword_2809B9580);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9470);
    *v56 = v0;
    v56[1] = sub_275264870;
    v21 = MEMORY[0x277D84950];
    v17 = (v0 + 64);
    v18 = v55;
    v19 = v57;

    return MEMORY[0x282200430](v17, v18, v19, v20, v21);
  }

  v2 = v1;

  v3 = *(v0 + 80);
  v4 = objc_allocWithZone(MEMORY[0x277D3EA90]);
  v5 = v2;
  v6 = sub_27526D228();
  v7 = [v4 initWithTitleString:v6 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:0.0 personalPoster:{10.0, 200.0, 50.0, 0.0, 10.0, 200.0, 50.0}];

  v59 = v7;
  v58 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v5 context:v7 boundingShape:2];
  v60 = v5;

  v8 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  v61 = v0;
  swift_beginAccess();
  v9 = *(v3 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9588);
  v10 = sub_27526D4D8();
  v11 = v10;
  v12 = v9 + 64;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v9 + 64);
  v16 = (v13 + 63) >> 6;
  v62 = v10 + 64;
  v63 = v9;

  v22 = 0;
  if (v15)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_11:
      v26 = v23 | (v22 << 6);
      v27 = (*(v63 + 48) + 16 * v26);
      v28 = *v27;
      v29 = v27[1];
      v30 = (*(v63 + 56) + 32 * v26);
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v34 = v30[3];
      v35 = objc_opt_self();

      v17 = [v35 valueWithCGRect_];
      *(v62 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v36 = (v11[6] + 16 * v26);
      *v36 = v28;
      v36[1] = v29;
      *(v11[7] + 8 * v26) = v17;
      v37 = v11[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      v11[2] = v39;
      if (!v15)
      {
        goto LABEL_6;
      }
    }

LABEL_21:
    __break(1u);
    return MEMORY[0x282200430](v17, v18, v19, v20, v21);
  }

LABEL_6:
  v24 = v22;
  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v22 >= v16)
    {
      break;
    }

    v25 = *(v12 + 8 * v22);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v15 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  v40 = *(v61 + 80);

  v41 = objc_allocWithZone(MEMORY[0x277D3ED70]);
  sub_27525E82C(0, &qword_2809B9590);
  v42 = sub_27526D208();

  v43 = [v41 initWithNameToRectMap_];

  [v58 setContentOcclusionRectangles_];
  v44 = (v40 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect);
  swift_beginAccess();
  [v58 setSalientContentRectangle_];

  v45 = *(v61 + 8);

  return v45(v58);
}

uint64_t sub_275264870()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_275264D9C;
  }

  else
  {
    v5 = sub_2752649C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_2752649C8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 80);
  v3 = MEMORY[0x277D3EA90];
  v4 = *(v0 + 64);
  v5 = objc_allocWithZone(v3);
  v6 = v1;
  v7 = sub_27526D228();
  v8 = [v5 initWithTitleString:v7 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:0.0 personalPoster:{10.0, 200.0, 50.0, 0.0, 10.0, 200.0, 50.0}];

  v44 = v8;
  v43 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v4 context:v8 boundingShape:2];
  v45 = v4;

  v9 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  v46 = v0;
  swift_beginAccess();
  v10 = *(v2 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9588);
  v11 = sub_27526D4D8();
  v12 = v11;
  v13 = v10 + 64;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v10 + 64);
  v17 = (v14 + 63) >> 6;
  v47 = v11 + 64;
  v48 = v10;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v23 = v20 | (v19 << 6);
      v24 = (*(v48 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v48 + 56) + 32 * v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      v32 = objc_opt_self();

      result = [v32 valueWithCGRect_];
      *(v47 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v33 = (v12[6] + 16 * v23);
      *v33 = v25;
      v33[1] = v26;
      *(v12[7] + 8 * v23) = result;
      v34 = v12[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v12[2] = v36;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v21 = v19;
    while (1)
    {
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v19 >= v17)
      {
        break;
      }

      v22 = *(v13 + 8 * v19);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    v37 = *(v46 + 80);

    v38 = objc_allocWithZone(MEMORY[0x277D3ED70]);
    sub_27525E82C(0, &qword_2809B9590);
    v39 = sub_27526D208();

    v40 = [v38 initWithNameToRectMap_];

    [v43 setContentOcclusionRectangles_];
    v41 = (v37 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect);
    swift_beginAccess();
    [v43 setSalientContentRectangle_];

    v42 = *(v46 + 8);

    return v42(v43);
  }

  return result;
}

uint64_t sub_275264D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_275264E0C(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController];
  *&v1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController] = a1;

  v4 = a1;
  [v1 addChildViewController_];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v4 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v6 addSubview_];

  v9 = [v4 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_2752625E0();
  [v11 addSubview_];

  [v4 didMoveToParentViewController_];
  v12 = [v4 view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = [v4 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  [v14 setClipsToBounds_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_27526E2F0;
  v17 = [v4 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer;
  v21 = [*&v1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer] topAnchor];
  v22 = [v19 constraintEqualToAnchor_];

  *(v16 + 32) = v22;
  v23 = [v4 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [*&v1[v20] leadingAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v16 + 40) = v27;
  v28 = [v4 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [*&v1[v20] trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v16 + 48) = v32;
  v33 = [v4 view];
  if (!v33)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = objc_opt_self();
  v36 = [v34 bottomAnchor];

  v37 = [*&v1[v20] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v16 + 56) = v38;
  sub_27525E82C(0, &qword_2809B9428);
  v39 = sub_27526D2D8();

  [v35 activateConstraints_];
}

uint64_t PosterViewController.currentPosterType.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_27526D1E8();
}

uint64_t sub_2752652A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_27526CBA8(a3, v25 - v10, &qword_2809B9490);
  v12 = sub_27526D388();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_27526CC10(v11, &qword_2809B9490);
  }

  else
  {
    sub_27526D378();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_27526D318();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_27526D278() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_27526CC10(a3, &qword_2809B9490);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27526CC10(a3, &qword_2809B9490);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall PosterViewController.viewDidLayoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager];
  v2 = &v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect];
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  swift_unknownObjectRetain();
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v1 updateDimmingAreaWithOccludingRect:v3 parentViewBound:{v4, v5, v6, v10, v12, v14, v16}];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void PosterViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v16 = sub_27526C244;
  v17 = v8;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_275265CA8;
  v15 = &block_descriptor;
  v9 = _Block_copy(&v12);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_27526C268;
  v17 = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_275265CA8;
  v15 = &block_descriptor_13;
  v11 = _Block_copy(&v12);

  [a1 animateAlongsideTransition:v9 completion:v11];
  _Block_release(v11);
  _Block_release(v9);
}

void sub_275265A2C(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  aBlock[4] = sub_27526CC78;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275265C64;
  aBlock[3] = &block_descriptor_91;
  v8 = _Block_copy(aBlock);

  [v4 animateWithDuration:v8 animations:0.3];
  _Block_release(v8);
}

void sub_275265B74(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager;
    v6 = Strong;
    v7 = [*(Strong + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager) view];
    [v7 setAlpha_];

    v8 = *&v6[v5];
    v9 = &v6[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect];
    swift_beginAccess();
    [v8 updateDimmingAreaWithOccludingRect:*v9 parentViewBound:{v9[1], v9[2], v9[3], 0.0, 0.0, a1, a2}];
  }
}

uint64_t sub_275265C64(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_275265CA8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_275265D08()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_27526CC70;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275265C64;
  aBlock[3] = &block_descriptor_84;
  v3 = _Block_copy(aBlock);

  [v0 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_275265E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager) view];
    [v2 setAlpha_];
  }
}

void sub_275265F30(void *a1, id a2, void *a3)
{
  v4 = a2;
  v6 = [a2 contentViewCoordinator];
  v7 = [a1 viewController];
  [v7 willMoveToParentViewController_];
  [v4 addChildViewController_];
  v8 = [v6 vibrantObscurableContentView];
  v9 = [v7 view];
  if (v9)
  {
    v10 = v9;
    [v8 addSubview_];

    [v7 didMoveToParentViewController_];
    [v4 registerPosterAppearanceObserver_];
    v11 = [v7 view];
    v12 = MEMORY[0x277D84F90];
    v13 = 0x27A647000uLL;
    v75 = v6;
    v76 = v7;
    v77 = a1;
    if (v11)
    {
      v14 = v11;
      v73 = v4;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = 0.0;
      if (*(*&v3[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel] + 32))
      {
        v15 = 1.0;
      }

      [v14 setAlpha_];
      v79 = v12;
      v16 = v3;
      v17 = [a3 bottomAnchor];
      v18 = [v14 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor_];

      v20 = *&v16[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_textBottomConstraint];
      v74 = v16;
      *&v16[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_textBottomConstraint] = v19;
      v21 = v19;

      if (v21)
      {
        v22 = v21;
        MEMORY[0x277C707D0]();
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_44;
        }

        goto LABEL_7;
      }

LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_27526E600;
      v24 = [v14 topAnchor];
      v25 = [a3 topAnchor];
      v26 = [v24 *(v13 + 2536)];

      *(inited + 32) = v26;
      v27 = [v14 leadingAnchor];
      v28 = [a3 leadingAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:60.0];

      *(inited + 40) = v29;
      v30 = [v14 trailingAnchor];
      v31 = [a3 trailingAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:-60.0];

      *(inited + 48) = v32;
      v22 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        v13 = 0;
        v6 = (inited & 0xC000000000000001);
        while (1)
        {
          if (v6)
          {
            v33 = MEMORY[0x277C70990](v13, inited);
          }

          else
          {
            if (v13 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_43:
              __break(1u);
LABEL_44:
              sub_27526D2F8();
LABEL_7:
              sub_27526D308();

              goto LABEL_8;
            }

            v33 = *(inited + 8 * v13 + 32);
          }

          v34 = v33;
          MEMORY[0x277C707D0]();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_27526D2F8();
          }

          ++v13;
          sub_27526D308();

          if (v22 == v13)
          {
            v6 = v75;
            break;
          }
        }
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v35 = objc_opt_self();
      sub_27525E82C(0, &qword_2809B9428);
      v36 = sub_27526D2D8();
      [v35 activateConstraints_];

      v7 = v76;
      a1 = v77;
      v4 = v73;
      v3 = v74;
    }

    v37 = [a1 emojiViewController];
    v38 = v37;
    v39 = 0x27A647000uLL;
    if (!v37)
    {
      goto LABEL_41;
    }

    v74 = v37;
    v40 = v37;
    [v40 willMoveToParentViewController_];
    [v4 addChildViewController_];
    v41 = v6;
    v42 = v40;
    v43 = [v41 obscurableOverlayView];
    v44 = [v40 view];
    if (v44)
    {
      v45 = v44;
      [v43 addSubview_];

      [v42 didMoveToParentViewController_];
      v46 = [v42 view];
      v47 = v42;
      if (v46)
      {
        v6 = v46;
        v73 = v47;
        [v46 setTranslatesAutoresizingMaskIntoConstraints_];
        v48 = 0.0;
        if (*(*&v3[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel] + 32))
        {
          v48 = 1.0;
        }

        [v6 setAlpha_];
        v79 = v12;
        v49 = [v7 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v6 bottomAnchor];
          v52 = [v50 bottomAnchor];
          v53 = [v51 constraintEqualToAnchor_];

          MEMORY[0x277C707D0]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_27526D2F8();
          }

          sub_27526D308();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
        v13 = swift_initStackObject();
        *(v13 + 16) = xmmword_27526E600;
        v54 = [v6 leadingAnchor];
        v14 = a3;
        v55 = [a3 leadingAnchor];
        v56 = [v54 constraintEqualToAnchor:v55 constant:60.0];

        *(v13 + 32) = v56;
        v57 = [v6 trailingAnchor];
        v58 = [a3 trailingAnchor];
        v59 = [v57 constraintEqualToAnchor:v58 constant:-60.0];

        *(v13 + 40) = v59;
        v60 = [v6 topAnchor];
        v61 = [a3 topAnchor];
        v62 = [v60 0x27A647F65];

        *(v13 + 48) = v62;
        v63 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v63)
        {
          v64 = 0;
          v22 = (v13 & 0xC000000000000001);
          do
          {
            if (v22)
            {
              v65 = MEMORY[0x277C70990](v64, v13);
            }

            else
            {
              if (v64 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v65 = *(v13 + 8 * v64 + 32);
            }

            v66 = v65;
            MEMORY[0x277C707D0]();
            if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_27526D2F8();
            }

            ++v64;
            sub_27526D308();
            v12 = v79;
          }

          while (v63 != v64);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v67 = objc_opt_self();
        sub_27525E82C(0, &qword_2809B9428);
        v68 = sub_27526D2D8();
        [v67 activateConstraints_];

        v6 = v75;
        v7 = v76;
        a1 = v77;
      }

      else
      {

        v6 = v75;
      }

      v38 = v74;
      v39 = 0x1FC44C000;
LABEL_41:
      v69 = [v6 vibrantObscurableContentView];
      [v69 setNeedsLayout];

      v70 = [v6 vibrantObscurableContentView];
      [v70 layoutIfNeeded];

      v71 = [v6 (v39 + 1133)];
      [v71 setNeedsLayout];

      v72 = [v6 (v39 + 1133)];
      [v72 layoutIfNeeded];

      [a1 tightFrame];
      [v6 setPrimaryContentTightFrame_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2752669EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  sub_27526D358();
  *(v5 + 32) = sub_27526D348();
  v7 = sub_27526D318();

  return MEMORY[0x2822009F8](sub_275266A88, v7, v6);
}

uint64_t sub_275266A88()
{
  v8 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service), *(v2 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service + 24));
  v7[0] = v1 & 1;
  PosterDataService.posterConfiguration(for:)(v7);
  if (v3)
  {
    **(v0 + 16) = v3;
  }

  else
  {
    sub_2752624C4();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_275266B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_27526CBA8(a3, v22 - v9, &qword_2809B9490);
  v11 = sub_27526D388();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_27526CC10(v10, &qword_2809B9490);
  }

  else
  {
    sub_27526D378();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_27526D318();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_27526D278() + 32;
      sub_27525E82C(0, &qword_2809B9580);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_27526CC10(a3, &qword_2809B9490);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_27526CC10(a3, &qword_2809B9490);
  sub_27525E82C(0, &qword_2809B9580);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_275266E9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  swift_beginAccess();
  *(v3 + v4) = v2;

  sub_275266F64();
}

void PosterViewController.occlusionRects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_275266F64();
}

void sub_275266F64()
{
  v1 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController);
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v35 = v2;
      v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
      swift_beginAccess();
      v4 = *(v0 + v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9588);
      v5 = sub_27526D4D8();
      v6 = v5;
      v7 = v4 + 64;
      v8 = 1 << *(v4 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v4 + 64);
      v11 = (v8 + 63) >> 6;
      v36 = v5 + 64;
      v38 = v4;

      v34 = v1;
      v12 = 0;
      v37 = v6;
      if (v10)
      {
        while (1)
        {
          v13 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
LABEL_12:
          v16 = v13 | (v12 << 6);
          v17 = (*(v38 + 48) + 16 * v16);
          v18 = *v17;
          v19 = v17[1];
          v20 = (*(v38 + 56) + 32 * v16);
          v21 = *v20;
          v22 = v20[1];
          v23 = v20[2];
          v24 = v20[3];
          v25 = objc_opt_self();

          v26 = [v25 valueWithCGRect_];
          *(v36 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          v27 = (v37[6] + 16 * v16);
          *v27 = v18;
          v27[1] = v19;
          *(v37[7] + 8 * v16) = v26;
          v28 = v37[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            break;
          }

          v37[2] = v30;
          if (!v10)
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v14 = v12;
        while (1)
        {
          v12 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v12 >= v11)
          {

            v31 = objc_allocWithZone(MEMORY[0x277D3ED70]);
            sub_27525E82C(0, &qword_2809B9590);
            v32 = sub_27526D208();

            v33 = [v31 initWithNameToRectMap_];

            [v35 setContentOcclusionRectangles_];
            return;
          }

          v15 = *(v7 + 8 * v12);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v10 = (v15 - 1) & v15;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

void (*PosterViewController.occlusionRects.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_27526727C;
}

void sub_27526727C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_275266F64();
  }
}

double PosterViewController.saliencyRect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect;
  swift_beginAccess();
  return *v1;
}

id sub_2752672FC(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = (*a2 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect);
  result = swift_beginAccess();
  *v7 = v2;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v5;
  if (*(v6 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [result setSalientContentRectangle_];
    }
  }

  return result;
}

id PosterViewController.saliencyRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  if (*(v4 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return [result setSalientContentRectangle_];
    }
  }

  return result;
}

void (*PosterViewController.saliencyRect.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2752674E8;
}

void sub_2752674E8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    if (*(v3[3] + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController))
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = (v3[3] + v3[4]);
        [v4 setSalientContentRectangle_];
      }
    }
  }

  free(v3);
}

uint64_t PosterViewController.currentPosterType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27526D1D8();
}

uint64_t sub_275267608@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27526D1D8();

  *a1 = v3;
  return result;
}

uint64_t sub_275267688(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_27526D1E8();
}

void (*PosterViewController.currentPosterType.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_27526D1C8();
  return sub_27526779C;
}

void sub_27526779C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PosterViewController.$currentPosterType.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  sub_27526D1A8();
  return swift_endAccess();
}

uint64_t sub_275267878()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  sub_27526D1A8();
  return swift_endAccess();
}

uint64_t sub_2752678F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  sub_27526D1B8();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t PosterViewController.$currentPosterType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  sub_27526D1B8();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PosterViewController.$currentPosterType.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController__currentPosterType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  sub_27526D1A8();
  swift_endAccess();
  return sub_275267D1C;
}

void sub_275267D1C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_27526D1B8();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_27526D1B8();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id sub_275267E84()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur;
  v2 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for TouchPassthroughView()) initWithEffect_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAlpha_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275267F38()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel;
  v2 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_275267FA0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_275267FA0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_27526D118();

  v3 = sub_27526D228();

  [v0 setText_];

  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  v5 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  [v0 setPreferredVibrancy_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setAlpha_];

  return v0;
}

id sub_2752681BC()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton;
  v2 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton);
  }

  else
  {
    swift_getObjectType();
    v4 = sub_27526822C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_27526822C(uint64_t a1)
{
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9560);
  v1 = (MEMORY[0x28223BE20])();
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v30 = &v29 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = sub_27526D418();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  sub_27525E82C(0, &qword_2809B9568);
  sub_27526D408();
  v15 = sub_27526D428();
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setUserInteractionEnabled_];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_27526D118();

  v18 = sub_27526D228();

  [v15 setTitle:v18 forState:0];

  v19 = [v15 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setPreferredVibrancy_];
  }

  v21 = objc_opt_self();
  v22 = sub_27526D228();
  v23 = [v21 __systemImageNamedSwift_];

  [v15 setImage:v23 forState:0];
  sub_27526D438();
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13))
  {
    sub_27526CBA8(v12, v10, &qword_2809B9560);
    sub_27526D448();
    sub_27526CC10(v12, &qword_2809B9560);
  }

  else
  {
    sub_27526D3F8();
    sub_27526D448();
  }

  sub_27526D438();
  if (v24(v7, 1, v13))
  {
    sub_27526CBA8(v7, v10, &qword_2809B9560);
    sub_27526D448();
    sub_27526CC10(v7, &qword_2809B9560);
  }

  else
  {
    v25 = [objc_opt_self() configurationWithScale_];
    sub_27526D3C8();
    sub_27526D448();
  }

  v26 = v30;
  sub_27526D438();
  if (v24(v26, 1, v13))
  {
    sub_27526CBA8(v26, v10, &qword_2809B9560);
    sub_27526D448();
    sub_27526CC10(v26, &qword_2809B9560);
  }

  else
  {
    sub_27526D3D8();
    sub_27526D448();
  }

  v27 = v31;
  sub_27526D438();
  if (v24(v27, 1, v13))
  {
    sub_27526CBA8(v27, v10, &qword_2809B9560);
    sub_27526D448();
    sub_27526CC10(v27, &qword_2809B9560);
  }

  else
  {
    sub_27526D3E8();
    sub_27526D448();
  }

  [v15 addTarget:v32 action:sel_revealSensitivePoster forControlEvents:64];
  [v15 setAlpha_];

  return v15;
}

id sub_275268824()
{
  v1 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring;
  v0[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring] = 0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  [result setNeedsLayout];

  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v4 = result;
  [result layoutIfNeeded];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27526E600;
  *(inited + 32) = sub_275267E84();
  *(inited + 40) = sub_275267F38();
  *(inited + 48) = sub_2752681BC();
  v6 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x277C70990](0, inited))
  {
    v8 = i;
    v9 = 0.0;
    if (v0[v1])
    {
      v9 = 1.0;
    }

    [i setAlpha_];

    if (v6)
    {
      v10 = MEMORY[0x277C70990](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_19;
      }

      v10 = *(inited + 40);
    }

    v11 = v10;
    v12 = 0.0;
    if (v0[v1])
    {
      v12 = 1.0;
    }

    [v10 setAlpha_];

    if (v6)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v13 = MEMORY[0x277C70990](2, inited);
LABEL_16:
  v14 = v13;
  v15 = 0.0;
  if (v0[v1])
  {
    v15 = 1.0;
  }

  [v13 setAlpha_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_275268A70()
{
  v1 = (v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service);
  v2 = *__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service), *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service + 24));
  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v3);
  v5 = (*(v4 + 40))(v3, v4);
  os_unfair_lock_unlock((v2 + 16));
  if ((v5 & 1) == 0)
  {
    if (qword_2809B9190 != -1)
    {
      swift_once();
    }

    v10 = sub_27526D188();
    __swift_project_value_buffer(v10, qword_2809B9D68);
    v11 = sub_27526D168();
    v12 = sub_27526D3B8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_13;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Cannot transition to new poster. Reason: Should not automatically update poster for contact.";
    goto LABEL_12;
  }

  v6 = *__swift_project_boxed_opaque_existential_1(v1, v1[3]);
  os_unfair_lock_lock((v6 + 16));
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  __swift_project_boxed_opaque_existential_1((v6 + 24), v7);
  LOBYTE(v7) = (*(v8 + 32))(v7, v8);
  os_unfair_lock_unlock((v6 + 16));
  if (v7)
  {
    return 1;
  }

  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v15 = sub_27526D188();
  __swift_project_value_buffer(v15, qword_2809B9D68);
  v11 = sub_27526D168();
  v12 = sub_27526D3B8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Cannot transition to new poster. Reason: Contact has no pending poster configuration.";
LABEL_12:
    _os_log_impl(&dword_27525B000, v11, v12, v14, v13, 2u);
    MEMORY[0x277C71010](v13, -1, -1);
  }

LABEL_13:

  return 0;
}

Swift::Void __swiftcall PosterViewController.acceptAndTransitionToNewPoster()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9490);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_27526D368();
  v4 = sub_27526D388();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_2752652A0(0, 0, v3, &unk_27526E7A8, v5);
}

uint64_t sub_275268DD4()
{
  if (sub_275268A70())
  {
    *(v0 + 33) = 0;
    *(v0 + 56) = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_pendingPosterConfig;
    *(v0 + 64) = sub_27526D358();
    *(v0 + 72) = sub_27526D348();
    v2 = sub_27526D318();

    return MEMORY[0x2822009F8](sub_275268EB8, v2, v1);
  }

  else
  {
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_275268EB8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  v3 = *(v1 + v2);
  *(v0 + 80) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_275268F78;

  return sub_275264230((v0 + 33), v3);
}

uint64_t sub_275268F78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_275269490;
  }

  else
  {

    v4 = sub_275269094;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_275269094()
{
  *(v0 + 112) = sub_27526D348();
  v2 = sub_27526D318();

  return MEMORY[0x2822009F8](sub_275269120, v2, v1);
}

void sub_275269120()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[6];

  sub_275269BD8(v3, v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2752691D0, 0, 0);
  }
}

uint64_t sub_2752691D0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 48) + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service), *(*(v0 + 48) + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service + 24));
  v1 = off_2883FF6F0;
  v2 = type metadata accessor for PosterDataService();
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_27526931C;

  return (v5)(v2, &off_2883FF6D8);
}

uint64_t sub_27526931C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_275269834;
  }

  else
  {
    v2 = sub_275269430;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_275269430()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275269490()
{
  v21 = v0;

  v1 = *(v0 + 104);
  *(v0 + 40) = v1;
  v2 = (v0 + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9470);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    if (v6 == 3)
    {
      if (!(v4 | v5))
      {

        if (qword_2809B9190 != -1)
        {
          swift_once();
        }

        v19 = sub_27526D188();
        __swift_project_value_buffer(v19, qword_2809B9D68);
        v8 = sub_27526D168();
        v9 = sub_27526D3A8();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_23;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_27526B4F0(0xD000000000000018, 0x800000027526F7A0, &v20);
        v12 = "Failed to accept pending poster. Reason: %s";
        goto LABEL_22;
      }

      if (!(v4 ^ 2 | v5))
      {

        if (qword_2809B9190 != -1)
        {
          swift_once();
        }

        v7 = sub_27526D188();
        __swift_project_value_buffer(v7, qword_2809B9D68);
        v8 = sub_27526D168();
        v9 = sub_27526D3A8();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_23;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_27526B4F0(0xD000000000000020, 0x800000027526F7C0, &v20);
        v12 = "%s";
LABEL_22:
        _os_log_impl(&dword_27525B000, v8, v9, v12, v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x277C71010](v11, -1, -1);
        MEMORY[0x277C71010](v10, -1, -1);
LABEL_23:

        goto LABEL_15;
      }
    }

    sub_27526C8CC(v4, v5, v6);
  }

  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v13 = sub_27526D188();
  __swift_project_value_buffer(v13, qword_2809B9D68);
  v14 = sub_27526D168();
  v15 = sub_27526D3A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_27525B000, v14, v15, "Failed to accept pending poster. Reason undefined.", v16, 2u);
    MEMORY[0x277C71010](v16, -1, -1);
  }

LABEL_15:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_275269834()
{
  v21 = v0;

  v1 = *(v0 + 128);
  *(v0 + 40) = v1;
  v2 = (v0 + 40);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809B9470);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    v6 = *(v0 + 32);
    if (v6 == 3)
    {
      if (!(v4 | v5))
      {

        if (qword_2809B9190 != -1)
        {
          swift_once();
        }

        v19 = sub_27526D188();
        __swift_project_value_buffer(v19, qword_2809B9D68);
        v8 = sub_27526D168();
        v9 = sub_27526D3A8();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_23;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_27526B4F0(0xD000000000000018, 0x800000027526F7A0, &v20);
        v12 = "Failed to accept pending poster. Reason: %s";
        goto LABEL_22;
      }

      if (!(v4 ^ 2 | v5))
      {

        if (qword_2809B9190 != -1)
        {
          swift_once();
        }

        v7 = sub_27526D188();
        __swift_project_value_buffer(v7, qword_2809B9D68);
        v8 = sub_27526D168();
        v9 = sub_27526D3A8();
        if (!os_log_type_enabled(v8, v9))
        {
          goto LABEL_23;
        }

        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        *(v10 + 4) = sub_27526B4F0(0xD000000000000020, 0x800000027526F7C0, &v20);
        v12 = "%s";
LABEL_22:
        _os_log_impl(&dword_27525B000, v8, v9, v12, v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x277C71010](v11, -1, -1);
        MEMORY[0x277C71010](v10, -1, -1);
LABEL_23:

        goto LABEL_15;
      }
    }

    sub_27526C8CC(v4, v5, v6);
  }

  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v13 = sub_27526D188();
  __swift_project_value_buffer(v13, qword_2809B9D68);
  v14 = sub_27526D168();
  v15 = sub_27526D3A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_27525B000, v14, v15, "Failed to accept pending poster. Reason undefined.", v16, 2u);
    MEMORY[0x277C71010](v16, -1, -1);
  }

LABEL_15:
  v17 = *(v0 + 8);

  return v17();
}

void sub_275269BD8(char *a1, void *a2)
{
  v5 = *&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_pendingPosterConfig];
  *&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_pendingPosterConfig] = 0;

  sub_27526A0B4(a2);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = *(*&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel] + 40);
    if (v7)
    {
      v8 = *&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper];
      if (v8)
      {
        v9 = v6;
        v10 = a2;
        v11 = v7;
        v12 = v8;
        sub_275265F30(v12, v9, v11);
      }
    }
  }

  v13 = &a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service];
  v14 = *__swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service], *&a1[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service + 24]);
  os_unfair_lock_lock(v14 + 4);
  sub_2752606F4(&v14[6]._os_unfair_lock_opaque, 0, v44);
  if (v2)
  {
    goto LABEL_42;
  }

  os_unfair_lock_unlock(v14 + 4);
  v15 = v45;
  if (v45 == 5 || (sub_275261F6C(v44[0], v44[1], v45), v15 == 4))
  {
    LOBYTE(v15) = 3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44[0]) = v15;
  v14 = a1;
  sub_27526D1E8();
  v16 = *__swift_project_boxed_opaque_existential_1(v13, *(v13 + 3));
  os_unfair_lock_lock((v16 + 16));
  v17 = *(v16 + 48);
  v18 = *(v16 + 56);
  __swift_project_boxed_opaque_existential_1((v16 + 24), v17);
  v19 = (*(v18 + 24))(v17, v18);
  if (v19 && (v20 = v19, v21 = [v19 wallpaper], v20, v21))
  {
    v22 = [v21 contentIsSensitive];
  }

  else
  {
    v22 = 0;
  }

  os_unfair_lock_unlock((v16 + 16));
  v23 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring;
  *(&v14->_os_unfair_lock_opaque + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring) = v22;
  v24 = [(os_unfair_lock_s *)v14 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_41;
  }

  v25 = v24;
  [v24 setNeedsLayout];

  v26 = [(os_unfair_lock_s *)v14 view];
  if (!v26)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    os_unfair_lock_unlock(v14 + 4);
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 layoutIfNeeded];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B93E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27526E600;
  *(inited + 32) = sub_275267E84();
  *(inited + 40) = sub_275267F38();
  *(inited + 48) = sub_2752681BC();
  v29 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x277C70990](0, inited))
  {
    v31 = i;
    v32 = 0.0;
    if (*(&v14->_os_unfair_lock_opaque + v23))
    {
      v32 = 1.0;
    }

    [i setAlpha_];

    if (v29)
    {
      v33 = MEMORY[0x277C70990](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_36;
      }

      v33 = *(inited + 40);
    }

    v34 = v33;
    v35 = 0.0;
    if (*(&v14->_os_unfair_lock_opaque + v23))
    {
      v35 = 1.0;
    }

    [v33 setAlpha_];

    if (v29)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v36 = *(inited + 48);
      goto LABEL_28;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v36 = MEMORY[0x277C70990](2, inited);
LABEL_28:
  v37 = v36;
  v38 = 0.0;
  if (*(&v14->_os_unfair_lock_opaque + v23))
  {
    v38 = 1.0;
  }

  [v36 setAlpha_];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v39 = sub_27526D188();
  __swift_project_value_buffer(v39, qword_2809B9D68);
  v40 = v14;
  v41 = sub_27526D168();
  v42 = sub_27526D3B8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    *(v43 + 4) = *(&v14->_os_unfair_lock_opaque + v23);

    _os_log_impl(&dword_27525B000, v41, v42, "Is *pending* poster content sensitive? - %{BOOL}d", v43, 8u);
    MEMORY[0x277C71010](v43, -1, -1);
  }

  else
  {

    v41 = v40;
  }
}

void sub_27526A0B4(void *a1)
{
  v2 = v1;
  if (qword_2809B9190 != -1)
  {
    swift_once();
  }

  v4 = sub_27526D188();
  __swift_project_value_buffer(v4, qword_2809B9D68);
  v5 = sub_27526D168();
  v6 = sub_27526D3B8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_27525B000, v5, v6, "Swapping view controllers.", v7, 2u);
    MEMORY[0x277C71010](v7, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController];
  if (v8)
  {
    v9 = v8;
    [v9 willMoveToParentViewController_];
    sub_275264E0C(a1);
    v10 = [objc_opt_self() effectWithStyle_];
    v11 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      [v11 setFrame_];
      v22 = sub_275262654();
      v23 = [v22 contentView];

      [v23 addSubview_];
      v24 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v11;
      *(v25 + 24) = v10;
      v41 = sub_27526C930;
      v42 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_275265C64;
      v40 = &block_descriptor_48;
      v26 = _Block_copy(&aBlock);
      v27 = v11;
      v28 = v10;

      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_27526E700;
      *(v29 + 32) = v27;
      v41 = sub_27526C978;
      v42 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_27526A5F0;
      v40 = &block_descriptor_54;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v24 animateWithDuration:0 delay:v26 usingSpringWithDamping:v30 initialSpringVelocity:0.25 options:0.0 animations:0.5 completion:0.0];

      _Block_release(v30);
      _Block_release(v26);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      v33[2] = v32;
      v33[3] = v9;
      v33[4] = a1;
      v41 = sub_27526C9CC;
      v42 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v38 = 1107296256;
      v39 = sub_27526A5F0;
      v40 = &block_descriptor_61;
      v34 = _Block_copy(&aBlock);
      v35 = v9;
      v36 = a1;

      [v2 transitionFromViewController:v35 toViewController:v36 duration:5242880 options:0 animations:v34 completion:0.5];
      _Block_release(v34);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_27526A554(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [a3 removeFromParentViewController];
    [a4 didMoveToParentViewController_];
    v8 = *&v7[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController];
    *&v7[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController] = a4;

    v9 = a4;
  }
}

uint64_t sub_27526A5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_27526A644(double a1, double a2, uint64_t a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v18 = sub_27526CA10;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_275265C64;
  v17 = &block_descriptor_67;
  v9 = _Block_copy(&v14);
  v10 = a4;

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v18 = sub_27526CA24;
  v19 = v11;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_27526A5F0;
  v17 = &block_descriptor_73;
  v12 = _Block_copy(&v14);
  v13 = v10;

  [v7 animateWithDuration:0 delay:v9 usingSpringWithDamping:v12 initialSpringVelocity:a1 options:a2 animations:0.5 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

id sub_27526A7EC(void *a1, uint64_t a2, void *a3)
{

  v7 = sub_27526D228();

  v8 = *(a2 + OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_callIsActive);
  if (a1)
  {
    v9 = [a1 handles];
    v10 = sub_27526D2E8();

    if (*(v10 + 16))
    {

      v11 = sub_27526D228();

      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = [objc_opt_self() appropriateCallerNameViewForContact:a1 callStatus:v7 callIsActive:v8 optionalBackupName:v11];

  if (a3)
  {
    v13 = a3;
    v14 = [v13 titleFont];
    [v12 setTextFontUsingDefaultFontSizes_];

    [v12 setPreferredAlignment_];
    [v12 setMarqueeRunning_];
    if (*(*(v3 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel) + 48) == 1)
    {
      [v12 overrideTitleLayoutWith_];
    }
  }

  return v12;
}

id PosterViewController.PosterStatusTextModel.__allocating_init(status:callIsActive:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_status];
  *v8 = a1;
  v8[1] = a2;
  v7[OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_callIsActive] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PosterViewController.PosterStatusTextModel.init(status:callIsActive:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_status];
  *v4 = a1;
  v4[1] = a2;
  v3[OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_callIsActive] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PosterViewController.PosterStatusTextModel();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PosterViewController.PosterStatusTextModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PosterViewController.updateCallerNameAndStatus(model:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper;
  v4 = *(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper);
  if (v4 || (v6 = v1, v7 = (v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service), __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service), *(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service + 24)), v18 = 1, PosterDataService.posterConfiguration(for:)(&v18), v8 && (v9 = v8, v10 = sub_275261FE8(v8), v11 = *__swift_project_boxed_opaque_existential_1(v7, v7[3]), os_unfair_lock_lock((v11 + 16)), v12 = *(v11 + 48), v13 = *(v11 + 56), __swift_project_boxed_opaque_existential_1((v11 + 24), v12), v14 = (*(v13 + 8))(v12, v13), os_unfair_lock_unlock((v11 + 16)), v15 = sub_27526A7EC(v14, a1, v10), v9, v10, v14, v16 = *(v6 + v3), *(v6 + v3) = v15, v16, (v4 = *(v6 + v3)) != 0)))
  {
    v17 = v4;

    v5 = sub_27526D228();

    [v17 setStatusText_];

    if (*(a1 + OBJC_IVAR____TtCC41_CommunicationsUICore_PosterBoardServices20PosterViewController21PosterStatusTextModel_callIsActive) == 1)
    {
      [v17 transitionCallToActiveStateAnimated_];
    }
  }
}

Swift::Void __swiftcall PosterViewController.showTextInPoster(_:)(Swift::Bool a1)
{
  *(*(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel) + 32) = a1;
  v3 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper;
  v4 = *(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper);
  if (v4)
  {
    v5 = [v4 viewController];
    v6 = [v5 view];

    if (!v6)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v6 setAlpha_];

    v8 = *(v1 + v3);
    if (v8)
    {
      v9 = [v8 emojiViewController];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 view];

        if (v11)
        {
          [v11 setAlpha_];

          goto LABEL_10;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }
  }

LABEL_10:
  v12 = *(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_textBottomConstraint);
  if (v12)
  {

    [v12 setActive_];
  }
}

Swift::Void __swiftcall PosterViewController.activatePoster(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(v1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController))
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {

      [v3 setRenderingMode_];
    }
  }
}

void PosterViewController.isPosterNameVisible.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper);
  if (v1)
  {
    v2 = [v1 viewController];
    v3 = [v2 view];

    if (v3)
    {
      [v3 isHidden];
    }

    else
    {
      __break(1u);
    }
  }
}

id PosterViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27526D228();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PosterViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27526B2C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27526B300(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27526B3F8;

  return v6(a1);
}

uint64_t sub_27526B3F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_27526B4F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_27526B5BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_27526CA34(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_27526B5BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_27526B6C8(a5, a6);
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
    result = sub_27526D498();
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

uint64_t sub_27526B6C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_27526B714(a1, a2);
  sub_27526B844(&unk_2883FF2E8);
  return v3;
}

uint64_t sub_27526B714(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_27526B930(v5, 0);
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

  result = sub_27526D498();
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
        v10 = sub_27526D2A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_27526B930(v10, 0);
        result = sub_27526D468();
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

uint64_t sub_27526B844(uint64_t result)
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

  result = sub_27526B9A4(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_27526B930(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9578);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_27526B9A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_27526BA98(uint64_t a1)
{
  sub_27526D258();
  sub_27526D598();
  sub_27526D288();
  v2 = sub_27526D5B8();

  return sub_27526BBA4(a1, v2);
}

unint64_t sub_27526BB2C(uint64_t a1, uint64_t a2)
{
  sub_27526D598();
  sub_27526D288();
  v4 = sub_27526D5B8();

  return sub_27526BCA8(a1, a2, v4);
}

unint64_t sub_27526BBA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_27526D258();
      v8 = v7;
      if (v6 == sub_27526D258() && v8 == v9)
      {
        break;
      }

      v11 = sub_27526D528();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_27526BCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_27526D528())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_27526BD60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9570);
    v3 = sub_27526D4F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_27526BB2C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_27526BE70(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20]();
  v8 = &v18 - v7;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_pendingPosterConfig] = 0;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController] = 0;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer] = 0;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer] = 0;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper] = 0;
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_textBottomConstraint] = 0;
  v9 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  *&v2[v9] = sub_27526BD60(MEMORY[0x277D84F90]);
  v10 = &v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect];
  *v10 = 0u;
  v10[1] = 0u;
  v11 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController__currentPosterType;
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9558);
  sub_27526D198();
  (*(v6 + 32))(&v2[v11], v8, v5);
  *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur] = 0;
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_sensitiveBlurEffect] = result;
    *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel] = 0;
    *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton] = 0;
    v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring] = 0;
    v13 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager;
    type metadata accessor for PosterDimmingLayerManager();
    swift_allocObject();
    *&v2[v13] = sub_27525F568();
    *&v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_viewControllerModel] = a1;
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);

    v16 = _s41_CommunicationsUICore_PosterBoardServices0C11DataServiceC7contact0H5StoreACSo9CNContactC_So0jI0CtcfC_0(v14, v15);
    v17 = &v2[OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_service];
    v17[3] = type metadata accessor for PosterDataService();
    v17[4] = &off_2883FF6D8;
    *v17 = v16;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27526C118(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27526CDA8;

  return sub_27526383C(a1, v4, v5, v6);
}

uint64_t sub_27526C1D4()
{
  MEMORY[0x277C71090](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27526C20C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27526C270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_275262234;

  return sub_275268DB4(a1, v4, v5, v6);
}

uint64_t sub_27526C348@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

__n128 sub_27526C3A8@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t type metadata accessor for PosterViewController()
{
  result = qword_2809B9540;
  if (!qword_2809B9540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27526C45C()
{
  sub_27526C580();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27526C580()
{
  if (!qword_2809B9550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809B9558);
    v0 = sub_27526D1F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809B9550);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_27526C67C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B94C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10[-v3];
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_pendingPosterConfig) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_currentPosterViewController) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterContainer) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___posterSwappingBlurContainer) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_wrapper) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_textBottomConstraint) = 0;
  v5 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_occlusionRects;
  *(v0 + v5) = sub_27526BD60(MEMORY[0x277D84F90]);
  v6 = (v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_saliencyRect);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController__currentPosterType;
  v10[15] = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9558);
  sub_27526D198();
  (*(v2 + 32))(v0 + v7, v4, v1);
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitiveContentBlur) = 0;
  v8 = [objc_opt_self() effectWithBlurRadius_];
  if (!v8)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_sensitiveBlurEffect) = v8;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___sensitivePosterWarningLabel) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController____lazy_storage___revealSensitivePosterButton) = 0;
  *(v0 + OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_posterNeedsBlurring) = 0;
  v9 = OBJC_IVAR____TtC41_CommunicationsUICore_PosterBoardServices20PosterViewController_dimmingViewManager;
  type metadata accessor for PosterDimmingLayerManager();
  swift_allocObject();
  *(v0 + v9) = sub_27525F568();
  sub_27526D4B8();
  __break(1u);
}

uint64_t sub_27526C8CC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  result = a2;
  if (a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_27526C8F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27526C940()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27526C984()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27526C9D8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27526CA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27526CAE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_275262234;

  return sub_2752669EC(a1, v4, v5, v6, v7);
}

uint64_t sub_27526CBA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27526CC10(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27526CC84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27526CCBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27526CDA8;

  return sub_27526B300(a1, v4);
}

uint64_t PosterSlot.hashValue.getter()
{
  v1 = *v0;
  sub_27526D598();
  MEMORY[0x277C70AB0](v1);
  return sub_27526D5B8();
}

unint64_t sub_27526CE74()
{
  result = qword_2809B9598;
  if (!qword_2809B9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B9598);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PosterSlot(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterSlot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_41_CommunicationsUICore_PosterBoardServices0C5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_27526D064(uint64_t a1, unsigned int a2)
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

uint64_t sub_27526D0AC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27526D0F0(uint64_t result, unsigned int a2)
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