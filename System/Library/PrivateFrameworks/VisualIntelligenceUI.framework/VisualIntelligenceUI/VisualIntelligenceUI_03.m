uint64_t storeEnumTagSinglePayload for NewEntityModel.Prominence(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20VisualIntelligenceUI10CardLayoutO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21DF5FF28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 8))
  {
    return (*a1 + 2147483639);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF5FF80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

void *sub_21DF5FFD0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_21DF6002C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_21E1427B4();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_21DF5D17C(result);
    return sub_21DF60304(v6, v5, 1, v3, type metadata accessor for NewEntityModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF60120(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21E1427B4();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_21E1427B4();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21DF60224(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v2)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6)
  {
    v9 = sub_21E1427B4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (!v10)
  {
    sub_21DF5D238(result);
    return sub_21DF60120(v4, v2, 0, type metadata accessor for PillAnalytics);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF60304(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(0);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21E1427B4();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_21E1427B4();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_21DF60428(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_21E1427B4();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v12 = sub_21E1427B4();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (!v13)
  {
    sub_21DF5D238(result);
    return sub_21DF60304(v6, v5, 1, v3, type metadata accessor for NewActionModel);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_21DF6051C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF605A8()
{
  result = qword_27CEA77D0;
  if (!qword_27CEA77D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA77C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77D0);
  }

  return result;
}

uint64_t sub_21DF6060C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__unfilteredActions) = *(v0 + 24);
}

uint64_t sub_21DF60650()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__systemImage);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_21DF606B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21DF60700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__isThirdPartySearchAvailable;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_21DF60840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF60978();
  sub_21E13D3C4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_21DF608F4()
{
  swift_getKeyPath();
  sub_21DF60978();
  sub_21E13D3C4();

  swift_beginAccess();
  return *(v0 + 16);
}

unint64_t sub_21DF60978()
{
  result = qword_27CEA77F0;
  if (!qword_27CEA77F0)
  {
    type metadata accessor for SharedSuppressPostShutterAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77F0);
  }

  return result;
}

uint64_t type metadata accessor for SharedSuppressPostShutterAction()
{
  result = qword_280F69648;
  if (!qword_280F69648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DF60A1C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  return result;
}

uint64_t sub_21DF60B10(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

void (*sub_21DF60B7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_21DF60978();
  sub_21E13D3C4();

  *v4 = v1;
  swift_getKeyPath();
  sub_21E13D3E4();

  v4[7] = sub_21DF607EC();
  return sub_21DF60C84;
}

void sub_21DF60C84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_21E13D3D4();

  free(v1);
}

uint64_t SharedSuppressPostShutterAction.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_21E13D3F4();
  swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  else
  {
    *(v0 + 16) = 0;
  }

  return v0;
}

uint64_t SharedSuppressPostShutterAction.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  sub_21E13D3F4();
  swift_beginAccess();
  if (*v2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21DF60978();
    sub_21E13D3B4();
  }

  else
  {
    *v2 = 0;
  }

  return v1;
}

uint64_t sub_21DF60F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t SharedSuppressPostShutterAction.deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedSuppressPostShutterAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20VisualIntelligenceUI31SharedSuppressPostShutterAction___observationRegistrar;
  v2 = sub_21E13D404();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DF61088()
{
  result = sub_21E13D404();
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

unint64_t sub_21DF611E8()
{
  result = qword_27CEA77F8;
  if (!qword_27CEA77F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA77F8);
  }

  return result;
}

double sub_21DF6124C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetWidth(*&a2);
  sub_21E140B94();
  sub_21E140B04();
  v16 = v20;
  v17 = v21;
  v18 = v22;
  v14 = 0;
  v15 = 0;
  v23[0] = v20;
  v23[1] = v21;
  v24 = v22;
  sub_21DF616A8(v23, v13);
  sub_21E140B74();
  sub_21DF61704(&v20);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMidY(v26);
  sub_21E140B84();
  sub_21E140B84();
  sub_21DF61704(v19);
  v10 = v18;
  result = *&v16;
  v12 = v17;
  *a1 = v16;
  *(a1 + 16) = v12;
  *(a1 + 32) = v10;
  return result;
}

double sub_21DF613D8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_21DF6124C(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_21DF61440(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_21E13F304();
  return sub_21DF4F628;
}

uint64_t sub_21DF614C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DF61758();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_21DF6152C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DF61758();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_21DF61590(uint64_t a1)
{
  v2 = sub_21DF61758();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_21DF615E0()
{
  result = qword_27CEA7808;
  if (!qword_27CEA7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7808);
  }

  return result;
}

unint64_t sub_21DF61638()
{
  result = qword_27CEA7810;
  if (!qword_27CEA7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7810);
  }

  return result;
}

__n128 sub_21DF6168C(__n128 *a1)
{
  if (!a1[3].n128_u8[0])
  {
    result = *a1;
    **(v1 + 16) = *a1;
  }

  return result;
}

unint64_t sub_21DF61758()
{
  result = qword_27CEA7818;
  if (!qword_27CEA7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7818);
  }

  return result;
}

uint64_t type metadata accessor for WaypointButtonStyle()
{
  result = qword_27CEA7820;
  if (!qword_27CEA7820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DF61820()
{
  sub_21DF37A78();
  if (v0 <= 0x3F)
  {
    sub_21E13D834();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21DF618D8@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830);
  MEMORY[0x28223BE20](v2);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7838);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7840);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v37 = v34 - v11;
  sub_21E1405F4();
  v36 = type metadata accessor for WaypointButtonStyle();
  sub_21E141CC4();
  sub_21E13F664();
  v12 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7848) + 36)];
  v13 = v46;
  *v12 = v45;
  *(v12 + 1) = v13;
  *(v12 + 2) = v47;
  sub_21E141484();
  v14 = sub_21E141514();

  v15 = &v4[*(v2 + 36)];
  *v15 = v14;
  v15[1] = 0x4008000000000000;
  v15[2] = 0;
  v15[3] = 0;
  sub_21E141C84();
  v35 = v1;
  v40 = v1;
  v39 = v1;
  v34[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7858);
  v16 = sub_21DF62554();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7870);
  v18 = sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870);
  v41 = v2;
  v42 = v17;
  v43 = v16;
  v44 = v18;
  swift_getOpaqueTypeConformance2();
  sub_21DF6266C();
  sub_21E141354();
  sub_21DF62724(v4);
  v19 = &v8[*(v6 + 44)];
  *v19 = 0xC024000000000000;
  v19[8] = 0;
  v20 = *(v35 + *(v36 + 24));
  if (v20)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.8;
  }

  sub_21E141DE4();
  v23 = v22;
  v25 = v24;
  v26 = v8;
  v27 = v37;
  v28 = sub_21DF3DE9C(v26, v37, &qword_27CEA7838);
  v29 = v27 + *(v10 + 44);
  *v29 = v21;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  MEMORY[0x223D52580](v28, 0.3, 0.5, 0.0);
  v30 = sub_21E141D04();

  v31 = v38;
  sub_21DF3DE9C(v27, v38, &qword_27CEA7840);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7898);
  v33 = v31 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v20;
  return result;
}

uint64_t sub_21DF61D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v69 = a1;
  v4 = sub_21E141B64();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x28223BE20](v4);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E13F444();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_21E141BB4();
  v58 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_21E141C64();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E13D834();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E1419A4();
  v59 = *(v22 - 8);
  v60 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v57 = &v52 - v26;
  MEMORY[0x28223BE20](v27);
  v65 = &v52 - v28;
  v29 = type metadata accessor for WaypointButtonStyle();
  (*(v19 + 16))(v21, a2 + *(v29 + 20), v18);
  v30 = (*(v19 + 88))(v21, v18);
  LODWORD(a2) = *MEMORY[0x277D78DA8];
  (*(v19 + 8))(v21, v18);
  if (v30 == a2)
  {
    sub_21E141B84();
    v32 = v66;
    v31 = v67;
    v33 = v63;
    (*(v66 + 104))(v63, *MEMORY[0x277CDF150], v67);
    sub_21E141B74();
    (*(v32 + 8))(v33, v31);
    v34 = *(v58 + 8);
    v35 = v11;
    v36 = v64;
    v34(v35, v64);
    sub_21E141BE4();
    v34(v14, v36);
    sub_21E141984();
    (*(v61 + 8))(v17, v62);
    sub_21E141484();
    sub_21E141514();

    v37 = v57;
    sub_21E141994();

    v38 = v59;
    v39 = v60;
    (*(v59 + 8))(v24, v60);
    v40 = v38;
  }

  else
  {
    v41 = v53;
    sub_21E141B94();
    v42 = v54;
    sub_21E021DE8(v54);
    sub_21E141BA4();
    (*(v55 + 8))(v42, v56);
    v43 = *(v58 + 8);
    v44 = v64;
    v43(v41, v64);
    v46 = v66;
    v45 = v67;
    v47 = v63;
    (*(v66 + 104))(v63, *MEMORY[0x277CDF150], v67);
    sub_21E141B74();
    (*(v46 + 8))(v47, v45);
    v43(v11, v44);
    sub_21E141BE4();
    v43(v14, v44);
    v37 = v57;
    sub_21E141984();
    (*(v61 + 8))(v17, v62);
    v40 = v59;
    v39 = v60;
  }

  v48 = v65;
  (*(v40 + 32))(v65, v37, v39);
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v70 = xmmword_21E147A70;
  v71 = 0x3FF921FB54442D18;
  v72 = v49;
  v73 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7870);
  sub_21DF62554();
  sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870);
  sub_21E140E54();
  return (*(v40 + 8))(v48, v39);
}

uint64_t sub_21DF62478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7858) + 36);
  sub_21E141C04();
  _s20VisualIntelligenceUI17PinStyleProvidingPAAE6anchor05SwiftC09UnitPointVvg_0();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7890);
  v10 = v4 + *(v9 + 52);
  *v10 = xmmword_21E147A70;
  *(v10 + 16) = 0x3FF921FB54442D18;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v4 + *(v9 + 56)) = 256;

  return sub_21DF6278C(a1, a2);
}

unint64_t sub_21DF62554()
{
  result = qword_27CEA7860;
  if (!qword_27CEA7860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7830);
    sub_21DF625E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7860);
  }

  return result;
}

unint64_t sub_21DF625E0()
{
  result = qword_27CEA7868;
  if (!qword_27CEA7868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7848);
    sub_21DF4DD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7868);
  }

  return result;
}

unint64_t sub_21DF6266C()
{
  result = qword_27CEA7880;
  if (!qword_27CEA7880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7858);
    sub_21DF62554();
    sub_21DF23E5C(&qword_27CEA7888, &qword_27CEA7890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA7880);
  }

  return result;
}

uint64_t sub_21DF62724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DF6278C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DF627FC()
{
  result = qword_27CEA78A0;
  if (!qword_27CEA78A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7898);
    sub_21DF628B4();
    sub_21DF23E5C(&qword_280F68E70, &qword_27CEA7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78A0);
  }

  return result;
}

unint64_t sub_21DF628B4()
{
  result = qword_27CEA78A8;
  if (!qword_27CEA78A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7840);
    sub_21DF62940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78A8);
  }

  return result;
}

unint64_t sub_21DF62940()
{
  result = qword_27CEA78B0;
  if (!qword_27CEA78B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7858);
    sub_21DF62554();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7870);
    sub_21DF23E5C(&qword_27CEA7878, &qword_27CEA7870);
    swift_getOpaqueTypeConformance2();
    sub_21DF6266C();
    swift_getOpaqueTypeConformance2();
    sub_21DF23E5C(&qword_27CEA78B8, &qword_27CEA78C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78B0);
  }

  return result;
}

uint64_t sub_21DF62B14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v34 = v6;
  v35 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA78F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21E1460A0;
  v36.origin.x = v1;
  v36.origin.y = v2;
  v36.size.width = v3;
  v36.size.height = v4;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = v1;
  v37.origin.y = v2;
  v37.size.width = v3;
  v37.size.height = v4;
  v26 = v6 + CGRectGetMinY(v37);
  v38.origin.x = v1;
  v38.origin.y = v2;
  v38.size.width = v3;
  v38.size.height = v4;
  v8 = v5 + CGRectGetMinX(v38);
  v32 = v5;
  v39.origin.x = v1;
  v39.origin.y = v2;
  v39.size.width = v3;
  v39.size.height = v4;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = v1;
  v40.origin.y = v2;
  v40.size.width = v3;
  v40.size.height = v4;
  v10 = CGRectGetMinX(v40);
  v41.origin.x = v1;
  v41.origin.y = v2;
  v41.size.width = v3;
  v41.size.height = v4;
  v11 = CGRectGetMinY(v41);
  *(v7 + 32) = MinX;
  *(v7 + 40) = v26;
  *(v7 + 48) = v8;
  *(v7 + 56) = MinY;
  *(v7 + 64) = v10;
  *(v7 + 72) = v11;
  *(v7 + 80) = v35;
  v42.origin.x = v1;
  v42.origin.y = v2;
  v42.size.width = v3;
  v42.size.height = v4;
  v30 = CGRectGetMaxX(v42) - v5;
  v43.origin.x = v1;
  v43.origin.y = v2;
  v43.size.width = v3;
  v43.size.height = v4;
  v27 = CGRectGetMinY(v43);
  v44.origin.x = v1;
  v44.origin.y = v2;
  v44.size.width = v3;
  v44.size.height = v4;
  MaxX = CGRectGetMaxX(v44);
  v45.origin.x = v1;
  v45.origin.y = v2;
  v45.size.width = v3;
  v45.size.height = v4;
  v13 = v34 + CGRectGetMinY(v45);
  v46.origin.x = v1;
  v46.origin.y = v2;
  v46.size.width = v3;
  v46.size.height = v4;
  v14 = CGRectGetMaxX(v46);
  v47.origin.x = v1;
  v47.origin.y = v2;
  v47.size.width = v3;
  v47.size.height = v4;
  v15 = CGRectGetMinY(v47);
  *(v7 + 88) = v30;
  *(v7 + 96) = v27;
  *(v7 + 104) = MaxX;
  *(v7 + 112) = v13;
  *(v7 + 120) = v14;
  *(v7 + 128) = v15;
  *(v7 + 136) = v35;
  v48.origin.x = v1;
  v48.origin.y = v2;
  v48.size.width = v3;
  v48.size.height = v4;
  v31 = CGRectGetMaxX(v48);
  v49.origin.x = v1;
  v49.origin.y = v2;
  v49.size.width = v3;
  v49.size.height = v4;
  v28 = CGRectGetMaxY(v49) - v34;
  v50.origin.x = v1;
  v50.origin.y = v2;
  v50.size.width = v3;
  v50.size.height = v4;
  v25 = CGRectGetMaxX(v50) - v32;
  v51.origin.x = v1;
  v51.origin.y = v2;
  v51.size.width = v3;
  v51.size.height = v4;
  MaxY = CGRectGetMaxY(v51);
  v52.origin.x = v1;
  v52.origin.y = v2;
  v52.size.width = v3;
  v52.size.height = v4;
  v17 = CGRectGetMaxX(v52);
  v53.origin.x = v1;
  v53.origin.y = v2;
  v53.size.width = v3;
  v53.size.height = v4;
  v18 = CGRectGetMaxY(v53);
  *(v7 + 144) = v31;
  *(v7 + 152) = v28;
  *(v7 + 160) = v25;
  *(v7 + 168) = MaxY;
  *(v7 + 176) = v17;
  *(v7 + 184) = v18;
  *(v7 + 192) = v35;
  v54.origin.x = v1;
  v54.origin.y = v2;
  v54.size.width = v3;
  v54.size.height = v4;
  v33 = v32 + CGRectGetMinX(v54);
  v55.origin.x = v1;
  v55.origin.y = v2;
  v55.size.width = v3;
  v55.size.height = v4;
  v19 = CGRectGetMaxY(v55);
  v56.origin.x = v1;
  v56.origin.y = v2;
  v56.size.width = v3;
  v56.size.height = v4;
  v20 = CGRectGetMinX(v56);
  v57.origin.x = v1;
  v57.origin.y = v2;
  v57.size.width = v3;
  v57.size.height = v4;
  v21 = CGRectGetMaxY(v57) - v34;
  v58.origin.x = v1;
  v58.origin.y = v2;
  v58.size.width = v3;
  v58.size.height = v4;
  v22 = CGRectGetMinX(v58);
  v59.origin.x = v1;
  v59.origin.y = v2;
  v59.size.width = v3;
  v59.size.height = v4;
  v23 = CGRectGetMaxY(v59);
  *(v7 + 200) = v33;
  *(v7 + 208) = v19;
  *(v7 + 216) = v20;
  *(v7 + 224) = v21;
  *(v7 + 232) = v22;
  *(v7 + 240) = v23;
  *(v7 + 248) = v35;
  return v7;
}

double ReticleCorners.animatableData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v7.origin.x = *v0;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  MidX = CGRectGetMidX(v7);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetMidY(v8);
  v9.origin.x = v1;
  v9.origin.y = v2;
  v9.size.width = v3;
  v9.size.height = v4;
  CGRectGetWidth(v9);
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  CGRectGetHeight(v10);
  return MidX;
}

void sub_21DF62EFC(CGFloat *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v11.origin.x = *a1;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  MidY = CGRectGetMidY(v12);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  Height = CGRectGetHeight(v14);
  *a2 = MidX;
  a2[1] = MidY;
  a2[2] = Width;
  a2[3] = Height;
}

double ReticleCorners.animatableData.setter(double a1, double a2, double a3, double a4)
{
  result = a1 - a3 * 0.5;
  *v4 = result;
  v4[1] = a2 - a4 * 0.5;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

void (*ReticleCorners.animatableData.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v14.origin.x = *v1;
  v14.origin.y = v6;
  v14.size.width = v7;
  v14.size.height = v8;
  MidX = CGRectGetMidX(v14);
  v15.origin.x = v5;
  v15.origin.y = v6;
  v15.size.width = v7;
  v15.size.height = v8;
  MidY = CGRectGetMidY(v15);
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = v7;
  v16.size.height = v8;
  Width = CGRectGetWidth(v16);
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = v7;
  v17.size.height = v8;
  Height = CGRectGetHeight(v17);
  *v4 = MidX;
  v4[1] = MidY;
  v4[2] = Width;
  v4[3] = Height;
  return sub_21DF630C4;
}

void sub_21DF630C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  __asm { FMOV            V2.2D, #-0.5 }

  *v2 = vaddq_f64(*v1, vmulq_f64(v3, _Q2));
  v2[1] = v3;
  free(v1);
}

__n128 ReticleCorners.body.getter@<Q0>(_OWORD *a1@<X8>)
{
  sub_21E140BB4();
  sub_21E13F4E4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_21DF63184()
{
  v0 = sub_21DF62B14();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 40;
    do
    {
      sub_21E140B44();
      sub_21E140B54();
      sub_21E140B64();
      v2 += 56;
      --v1;
    }

    while (v1);
  }
}

void ReticleCorners.init(bounds:cornerRadius:cornerSize:lineWidth:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
  a1[6] = a8;
  a1[7] = a9;
}

uint64_t sub_21DF63294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DF63604();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_21DF63300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21DF63604();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

__n128 sub_21DF6336C@<Q0>(_OWORD *a1@<X8>)
{
  sub_21E140BB4();
  sub_21E13F4E4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void sub_21DF63450(CGFloat *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v11.origin.x = *v1;
  v11.origin.y = v4;
  v11.size.width = v5;
  v11.size.height = v6;
  MidX = CGRectGetMidX(v11);
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  MidY = CGRectGetMidY(v12);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v5;
  v13.size.height = v6;
  Width = CGRectGetWidth(v13);
  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  Height = CGRectGetHeight(v14);
  *a1 = MidX;
  a1[1] = MidY;
  a1[2] = Width;
  a1[3] = Height;
}

float64x2_t sub_21DF634FC(float64x2_t *a1)
{
  v2 = a1[1];
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(*a1, vmulq_f64(v2, _Q2));
  *v1 = result;
  v1[1] = v2;
  return result;
}

void (*sub_21DF63514(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ReticleCorners.animatableData.modify(v2);
  return sub_21DF4F628;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21DF63598(uint64_t a1, int a2)
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

uint64_t sub_21DF635B8(uint64_t result, int a2, int a3)
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

unint64_t sub_21DF63604()
{
  result = qword_27CEA78E8;
  if (!qword_27CEA78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEA78E8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_21DF63674(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DF63694(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

double sub_21DF636E0@<D0>(_OWORD *a1@<X8>)
{
  sub_21DF26814();
  sub_21E13FFA4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_21DF63730()
{
  sub_21DF26814();

  return sub_21E13FFB4();
}

uint64_t sub_21DF63790@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
  swift_beginAccess();
  return sub_21DF236C0(v3 + v4, a2, &qword_27CEA6CE8);
}

uint64_t sub_21DF63868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21DF236C0(a1, &v6 - v3, &qword_27CEA6CE8);
  return sub_21DF28A6C(v4);
}

CGFloat sub_21DF63914()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 0.9;
  qword_27CEB76D8 = *&result;
  return result;
}

uint64_t sub_21DF639AC()
{
  v0 = sub_21E140124();
  __swift_allocate_value_buffer(v0, qword_27CEA78F8);
  __swift_project_value_buffer(v0, qword_27CEA78F8);
  return sub_21E140104();
}

uint64_t sub_21DF63A04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21E13FF94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CardContainer();
  sub_21DF236C0(v1 + *(v10 + 20), v9, &qword_27CEACA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21E140894();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21E142574();
    v13 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_21DF63C0C()
{
  v1 = sub_21E13FF94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for CardContainer() + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_21E142574();
    v8 = sub_21E1408C4();
    sub_21E13F184();

    sub_21E13FF84();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_21DF63D60()
{
  v1 = sub_21E140124();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = type metadata accessor for CardContainer();
  v7 = (v0 + *(v6 + 48));
  v9 = *v7;
  v8 = v7[1];
  v29 = v9;
  v30 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
  sub_21E141714();
  v10 = *(v6 + 28);
  v24 = v0;
  v11 = *(v0 + v10);
  swift_getKeyPath();
  v29 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v13 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v29 = v11;
    sub_21E13D3C4();

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v13 = *(v11 + v14);
  }

  swift_getKeyPath();
  v28 = v13;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_getKeyPath();
  v28 = v11;
  sub_21E13D3C4();

  if (*(v11 + v12))
  {
    v15 = *(v11 + v12);
  }

  else
  {
    swift_getKeyPath();
    v28 = v11;
    sub_21E13D3C4();

    v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v15 = *(v11 + v16);
  }

  swift_getKeyPath();
  v27 = v15;

  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v18 = *(v15 + v17);
  sub_21DF5706C(v18);

  if (v18 == 6)
  {
    v19 = v23;
    sub_21E140104();
    sub_21E0E2440(v5, v19);
    v20 = v26;
    v21 = *(v25 + 8);
    v21(v5, v26);
    sub_21DF64180(v19);
    sub_21E0E2440(v5, v19);
    v21(v5, v20);
  }

  else
  {
    sub_21DF5AF24(v18);
  }

  return v31;
}

uint64_t sub_21DF64180@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v49 = sub_21E140124();
  v8 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CEA67C0 != -1)
  {
    swift_once();
  }

  v44 = v8;
  v11 = *&qword_27CEB76D8;
  v45 = v10;
  sub_21E140104();
  v42 = type metadata accessor for CardContainer();
  v12 = *(v42 + 28);
  v43 = v1;
  v13 = *(v1 + v12);
  swift_getKeyPath();
  v60 = v13;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v14 = *(v13 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v60 = v13;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v14 = *(v13 + v15);
  }

  swift_getKeyPath();
  v59 = v14;
  v16 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v47 = v16;
  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v18 = *(v14 + v17);

  swift_getKeyPath();
  v58 = v18;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v20 = *(v18 + v19);

  v21 = 1;
  v22 = v44;
  if (((1 << v20) & 0x13) == 0)
  {
    if (((1 << v20) & 0xC) == 0)
    {
      (*(v44 + 56))(v7);
      goto LABEL_12;
    }

    sub_21E140114();
    v21 = 0;
  }

  v23 = v49;
  (*(v22 + 56))(v4, v21, 1, v49);
  sub_21DF3DE9C(v4, v7, &qword_27CEA7A00);
  if ((*(v22 + 48))(v7, 1, v23) != 1)
  {
    (*(v22 + 8))(v45, v23);
    return (*(v22 + 32))(v46, v7, v23);
  }

LABEL_12:
  sub_21DF23614(v7, &qword_27CEA7A00);
  swift_getKeyPath();
  v57 = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v25 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v57 = v13;
    sub_21E13D3C4();

    v26 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v25 = *(v13 + v26);
  }

  swift_getKeyPath();
  v56 = v25;

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v55 = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v27 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v55 = v13;
    sub_21E13D3C4();

    v28 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v27 = *(v13 + v28);
  }

  swift_getKeyPath();
  v54[3] = v27;

  sub_21E13D3C4();

  v29 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v30 = *(v27 + v29);
  sub_21DF5706C(v30);

  v54[0] = v30;
  v31 = sub_21DF31604(v54);

  sub_21DF5AF24(v54[0]);
  if (v31)
  {
    return (*(v22 + 32))(v46, v45, v49);
  }

  swift_getKeyPath();
  v54[0] = v13;
  sub_21E13D3C4();

  if (*(v13 + v48))
  {
    v32 = *(v13 + v48);
  }

  else
  {
    swift_getKeyPath();
    v54[0] = v13;
    sub_21E13D3C4();

    v33 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v32 = *(v13 + v33);
  }

  swift_getKeyPath();
  v53 = v32;

  sub_21E13D3C4();

  v34 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v35 = *(v32 + v34);
  sub_21DF5706C(v35);

  sub_21DF5AF24(v35);
  if (v35 >= 9)
  {
    v39 = v49;
    if (qword_27CEA67C8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v39, qword_27CEA78F8);
    (*(v22 + 16))(v46, v40, v39);
    return (*(v22 + 8))(v45, v39);
  }

  else
  {
    v36 = (v43 + *(v42 + 36));
    v37 = *v36;
    v38 = v36[1];
    v51 = *v36;
    v52 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
    sub_21E141714();
    if (v50 <= 0.0)
    {
      return (*(v22 + 32))(v46, v45, v49);
    }

    v51 = v37;
    v52 = v38;
    sub_21E141714();
    if (v50 >= v11)
    {
      return (*(v22 + 32))(v46, v45, v49);
    }

    sub_21E140104();
    return (*(v22 + 8))(v45, v49);
  }
}

uint64_t sub_21DF64BA0()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v21 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v21 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v20 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v19 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v19 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v18[1] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v18[0] = v8;
  LOBYTE(v8) = sub_21DF31604(v18);

  sub_21DF5AF24(v18[0]);
  if ((v8 & 1) == 0)
  {
    return sub_21E140914();
  }

  v9 = sub_21DF64FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
  if (v9)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E147C80;
    v11 = sub_21E140944();
    *(inited + 32) = v11;
    v12 = sub_21E140964();
    *(inited + 33) = v12;
  }

  else
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_21E147C70;
    v15 = sub_21E140934();
    *(v14 + 32) = v15;
    v11 = sub_21E140944();
    *(v14 + 33) = v11;
    v12 = sub_21E140964();
    *(v14 + 34) = v12;
    v16 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() == v15)
    {
      goto LABEL_13;
    }
  }

  v16 = sub_21E140954();
LABEL_13:
  sub_21E140954();
  if (sub_21E140954() != v11)
  {
    v16 = sub_21E140954();
  }

  sub_21E140954();
  if (sub_21E140954() != v12)
  {
    return sub_21E140954();
  }

  return v16;
}

uint64_t sub_21DF64FE4()
{
  v1 = type metadata accessor for CardContainer();
  v20[0] = *(v0 + *(v1 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  sub_21E141714();
  if (v19[0])
  {
    goto LABEL_2;
  }

  v3 = *(v0 + *(v1 + 28));
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v5 = *(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v20[0] = v3;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v3 + v6);
  }

  swift_getKeyPath();
  v19[0] = v5;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v8 = *(v5 + v7);

  swift_getKeyPath();
  v19[0] = v8;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v9 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
  v20[0] = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
  v20[1] = v9;
  v11 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
  v10 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
  v12 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
  v21 = *(v8 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
  v20[3] = v11;
  v20[4] = v10;
  v20[2] = v12;
  sub_21DF236C0(v20, v19, &qword_27CEA6D60);

  if (v21 == 255)
  {
LABEL_2:
    v2 = 0;
  }

  else
  {
    sub_21DF23614(v20, &qword_27CEA6D60);
    swift_getKeyPath();
    v19[0] = v3;
    sub_21E13D3C4();

    if (*(v3 + v4))
    {
      v13 = *(v3 + v4);
    }

    else
    {
      swift_getKeyPath();
      v19[0] = v3;
      sub_21E13D3C4();

      v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v13 = *(v3 + v14);
    }

    swift_getKeyPath();

    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v16 = *(v13 + v15);

    swift_getKeyPath();
    sub_21E13D3C4();

    v17 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v17) = *(v16 + v17);

    v2 = v17 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_21DF6545C@<X0>(void *a1@<X8>)
{
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  result = sub_21E141714();
  *a1 = v3;
  return result;
}

uint64_t sub_21DF654CC()
{
  type metadata accessor for CardContainer();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  sub_21E141724();
  return sub_21DF6553C();
}

uint64_t sub_21DF6553C()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    sub_21E13D3C4();

    v3 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v2 = *(v1 + v3);
  }

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v4 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v5 = *(v2 + v4);

  swift_getKeyPath();
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v6 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  LODWORD(v6) = *(v5 + v6);

  if (v6 != 1)
  {
    return sub_21DF7D6EC();
  }

  MEMORY[0x28223BE20](v7);
  sub_21E141D64();
  sub_21E13F864();
}

double CardContainer.init(model:sheetAssistant:feedbackController:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v9 = sub_21E140124();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v16 = type metadata accessor for CardContainer();
  v17 = v16[5];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v16[6];
  type metadata accessor for SharedSuppressPostShutterAction();
  sub_21DF8D698(&qword_27CEA77F0, type metadata accessor for SharedSuppressPostShutterAction);
  *v18 = sub_21E13F474();
  *(v18 + 8) = v19 & 1;
  v20 = (a6 + v16[9]);
  v40 = 0;
  sub_21E141704();
  v21 = *(&v42 + 1);
  *v20 = v42;
  v20[1] = v21;
  v22 = a6 + v16[10];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v23 = *(&v42 + 1);
  *v22 = v42;
  *(v22 + 8) = v23;
  sub_21E140104();
  (*(v10 + 16))(v12, v15, v9);
  sub_21E141704();
  (*(v10 + 8))(v15, v9);
  v24 = (a6 + v16[12]);
  v40 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7910);
  sub_21E141704();
  v25 = *(&v42 + 1);
  *v24 = v42;
  v24[1] = v25;
  v26 = a6 + v16[13];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v27 = *(&v42 + 1);
  *v26 = v42;
  *(v26 + 8) = v27;
  v28 = a6 + v16[14];
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_21E141704();
  v29 = v43;
  *v28 = v42;
  *(v28 + 16) = v29;
  v30 = v16[15];
  v40 = 0;
  sub_21E141704();
  v31 = a6 + v16[16];
  LOBYTE(v40) = 0;
  sub_21E141704();
  v32 = *(&v42 + 1);
  *v31 = v42;
  *(v31 + 8) = v32;
  v40 = 0;
  sub_21E141704();

  result = *&v42;
  *(a6 + v30) = v42;
  *(a6 + v16[7]) = a1;
  *(a6 + v16[8]) = a2;
  v34 = (a6 + v16[17]);
  v35 = v38;
  *v34 = v37;
  v34[1] = v35;
  v34[2] = v39;
  return result;
}

uint64_t type metadata accessor for CardContainer()
{
  result = qword_280F6BD48;
  if (!qword_280F6BD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CardContainer.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v164 = a1;
  v3 = sub_21E1407E4();
  v145 = *(v3 - 1);
  v146 = v3;
  MEMORY[0x28223BE20](v3);
  v144 = v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E140124();
  v174 = *(v5 - 8);
  v175 = v5;
  MEMORY[0x28223BE20](v5);
  v170 = v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21E140874();
  v142 = *(v7 - 8);
  v143 = v7;
  MEMORY[0x28223BE20](v7);
  v140 = v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7918);
  MEMORY[0x28223BE20](v9 - 8);
  v180 = v126 - v10;
  v177 = type metadata accessor for CardContainer();
  v11 = *(v177 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v177);
  v13 = v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7920);
  MEMORY[0x28223BE20](v168);
  v15 = v126 - v14;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7928);
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v167 = v126 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7930);
  v130 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v128 = v126 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7938);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v131 = v126 - v18;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7940);
  MEMORY[0x28223BE20](v138);
  v134 = v126 - v19;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7948);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v139 = v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7950);
  v148 = *(v21 - 8);
  v149 = v21;
  MEMORY[0x28223BE20](v21);
  v169 = v126 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7958);
  v151 = *(v23 - 8);
  v152 = v23;
  MEMORY[0x28223BE20](v23);
  v150 = v126 - v24;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7960);
  v154 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v153 = v126 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7968);
  v160 = *(v26 - 8);
  v161 = v26;
  MEMORY[0x28223BE20](v26);
  v158 = v126 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7970);
  v156 = *(v28 - 8);
  v157 = v28;
  MEMORY[0x28223BE20](v28);
  v155 = v126 - v29;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7978);
  MEMORY[0x28223BE20](v162);
  v163 = v126 - v30;
  *v15 = sub_21E1401C4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7980);
  sub_21DF6751C(v2, &v15[*(v31 + 44)]);
  sub_21DF8C7C8(v2, v13, type metadata accessor for CardContainer);
  v32 = *(v11 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = v33 + v12;
  v35 = swift_allocObject();
  sub_21DF8C494(v13, v35 + v33, type metadata accessor for CardContainer);
  v36 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7990) + 36)];
  *v36 = sub_21DF885EC;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_21DF8C7C8(v2, v13, type metadata accessor for CardContainer);
  v173 = v32;
  v178 = v34;
  v37 = swift_allocObject();
  v179 = v33;
  v176 = v13;
  sub_21DF8C494(v13, v37 + v33, type metadata accessor for CardContainer);
  v38 = &v15[v168[9]];
  *v38 = 0;
  *(v38 + 1) = 0;
  *(v38 + 2) = sub_21DF88604;
  *(v38 + 3) = v37;
  sub_21DF63D60();
  v39 = v177;
  v40 = v2 + v177[11];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
  v42 = v180;
  v136 = v41;
  v137 = v40;
  sub_21E141734();
  v43 = sub_21DF8861C();
  sub_21E141094();

  sub_21DF23614(v42, &qword_27CEA7918);
  sub_21DF23614(v15, &qword_27CEA7920);
  v44 = v39[7];
  v180 = v2;
  v45 = *(v2 + v44);
  swift_getKeyPath();
  v46 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v186 = v45;
  v47 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v172 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v45 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v48 = *(v45 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v186 = v45;
    sub_21E13D3C4();

    v49 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v48 = *(v45 + v49);
  }

  swift_getKeyPath();
  v186 = v48;
  v50 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v171 = v50;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v186 = v45;
  sub_21E13D3C4();

  v51 = *(v172 + v45);
  v165 = v47;
  v166 = v45;
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    swift_getKeyPath();
    v186 = v45;
    sub_21E13D3C4();

    v53 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v45 + v53);
  }

  swift_getKeyPath();
  v186 = v52;

  sub_21E13D3C4();

  v54 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v55 = *(v52 + v54);
  sub_21DF5706C(v55);

  v186 = v55;
  sub_21DF31604(&v186);

  sub_21DF5AF24(v186);
  v186 = v168;
  *&v187 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v128;
  v57 = v129;
  v59 = v167;
  sub_21E141194();
  (*(v127 + 8))(v59, v57);
  v60 = v170;
  sub_21E140104();
  v61 = v140;
  sub_21E140864();
  v62 = *(v174 + 1);
  v174 = (v174 + 8);
  v167 = v62;
  (v62)(v60, v175);
  v186 = v57;
  *&v187 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v64 = v131;
  v63 = v132;
  sub_21E1411C4();
  (*(v142 + 8))(v61, v143);
  (*(v130 + 8))(v58, v63);
  v65 = v177;
  v66 = v180;
  v67 = *(v180 + v177[8]);
  v68 = v138;
  v69 = v134;
  v70 = &v134[*(v138 + 36)];
  *v70 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEACA00);
  swift_storeEnumTagMultiPayload();
  *(v70 + *(type metadata accessor for PresentationSheetAssistantModifier() + 20)) = v67;
  (*(v133 + 32))(v69, v64, v135);
  v168 = v67;
  v71 = v144;
  sub_21E1407D4();
  v72 = sub_21DF88760();
  v73 = v139;
  sub_21E1411B4();
  (*(v145 + 1))(v71, v146);
  sub_21DF23614(v69, &qword_27CEA7940);
  v74 = (v66 + v65[9]);
  v75 = *v74;
  v76 = v74[1];
  v186 = v75;
  *&v187 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6E68);
  sub_21E141714();
  v77 = v176;
  sub_21DF8C7C8(v66, v176, type metadata accessor for CardContainer);
  v78 = swift_allocObject();
  sub_21DF8C494(v77, v78 + v179, type metadata accessor for CardContainer);
  v186 = v68;
  *&v187 = v72;
  v79 = swift_getOpaqueTypeConformance2();
  v80 = sub_21DF3D110();
  v81 = v147;
  sub_21E141334();

  (*(v141 + 8))(v73, v81);
  swift_getKeyPath();
  v82 = v166;
  v186 = v166;
  sub_21E13D3C4();

  v83 = *(v172 + v82);
  v126[1] = v46;
  if (v83)
  {
    v84 = v83;
  }

  else
  {
    swift_getKeyPath();
    v186 = v82;
    sub_21E13D3C4();

    v85 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v84 = *(v82 + v85);
  }

  swift_getKeyPath();
  v186 = v84;

  sub_21E13D3C4();

  v86 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v87 = *(v84 + v86);
  sub_21DF5706C(v87);

  v185 = v87;
  v146 = type metadata accessor for CardContainer;
  v88 = v176;
  sub_21DF8C7C8(v180, v176, type metadata accessor for CardContainer);
  v89 = swift_allocObject();
  v145 = type metadata accessor for CardContainer;
  sub_21DF8C494(v88, v89 + v179, type metadata accessor for CardContainer);
  v186 = v81;
  *&v187 = MEMORY[0x277D85048];
  *(&v187 + 1) = v79;
  v188 = v80;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = sub_21DF88970();
  v93 = v149;
  v92 = v150;
  v94 = v169;
  sub_21E141324();

  sub_21DF5AF24(v185);
  (*(v148 + 8))(v94, v93);
  v95 = v170;
  sub_21E141714();
  sub_21DF8C7C8(v180, v88, v146);
  v96 = swift_allocObject();
  sub_21DF8C494(v88, v96 + v179, v145);
  v186 = v93;
  *&v187 = &type metadata for CardLayout;
  *(&v187 + 1) = v90;
  v188 = v91;
  v97 = swift_getOpaqueTypeConformance2();
  v98 = sub_21DF8D698(&qword_27CEA79D0, MEMORY[0x277CDDE90]);
  v99 = v152;
  v100 = v153;
  v101 = v175;
  sub_21E141324();

  (v167)(v95, v101);
  (*(v151 + 8))(v92, v99);
  swift_getKeyPath();
  v102 = v166;
  v186 = v166;
  sub_21E13D3C4();

  if (*(v172 + v102))
  {
    v103 = *(v172 + v102);
  }

  else
  {
    swift_getKeyPath();
    v186 = v102;
    sub_21E13D3C4();

    v104 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v103 = *(v102 + v104);
  }

  swift_getKeyPath();
  v186 = v103;

  sub_21E13D3C4();

  v105 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v106 = *(v103 + v105);

  swift_getKeyPath();
  v186 = v106;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v107 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
  swift_beginAccess();
  LOBYTE(v107) = *(v106 + v107);

  v184 = v107;
  v174 = type metadata accessor for CardContainer;
  v108 = v176;
  sub_21DF8C7C8(v180, v176, type metadata accessor for CardContainer);
  v109 = swift_allocObject();
  v172 = type metadata accessor for CardContainer;
  sub_21DF8C494(v108, v109 + v179, type metadata accessor for CardContainer);
  v186 = v99;
  *&v187 = v175;
  *(&v187 + 1) = v97;
  v188 = v98;
  v175 = MEMORY[0x277CE0E30];
  v110 = swift_getOpaqueTypeConformance2();
  v111 = v158;
  v112 = v159;
  sub_21E141324();

  (*(v154 + 8))(v100, v112);
  v113 = *(v168 + OBJC_IVAR____TtC20VisualIntelligenceUI22SheetTrackingAssistant_sheetModel);
  swift_getKeyPath();
  v186 = v113;
  sub_21DF8D698(&qword_280F6C000, type metadata accessor for SheetModel);

  sub_21E13D3C4();

  swift_beginAccess();
  v114 = *(v113 + 32);

  LODWORD(v181) = v114;
  v115 = v180;
  sub_21DF8C7C8(v180, v108, v174);
  v116 = swift_allocObject();
  sub_21DF8C494(v108, v116 + v179, v172);
  v186 = v112;
  *&v187 = MEMORY[0x277D839B0];
  *(&v187 + 1) = v110;
  v188 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v117 = v155;
  v118 = v161;
  sub_21E141324();

  (*(v160 + 8))(v111, v118);
  v119 = v163;
  (*(v156 + 32))(v163, v117, v157);
  v120 = v115 + v177[17];
  v186 = *v120;
  v187 = *(v120 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
  sub_21E1419F4();
  v121 = v181;
  v122 = v182;
  v123 = v183;
  swift_getKeyPath();
  v186 = v121;
  *&v187 = v122;
  *(&v187 + 1) = v123;
  sub_21E1419E4();

  v124 = v183;

  sub_21DF88B44();
  sub_21E140CF4();

  return sub_21DF23614(v119, &qword_27CEA7978);
}

uint64_t sub_21DF6751C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A18);
  MEMORY[0x28223BE20](v102);
  v101 = v94 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A20);
  v96 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = v94 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A28);
  MEMORY[0x28223BE20](v111);
  v97 = v94 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A30);
  v99 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = v94 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A38);
  MEMORY[0x28223BE20](v103);
  v105 = v94 - v8;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A40);
  MEMORY[0x28223BE20](v104);
  v100 = v94 - v9;
  v10 = *(type metadata accessor for CardContainer() + 28);
  v110 = a1;
  v11 = *(a1 + v10);
  swift_getKeyPath();
  v112 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v109 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v11 + v13);
  }

  swift_getKeyPath();
  v112 = v12;
  v14 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v108 = v14;
  sub_21E13D3C4();

  v15 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v16 = *(v12 + v15);

  swift_getKeyPath();
  v112 = v16;
  v17 = sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v18 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LODWORD(v18) = *(v16 + v18);

  if (v18 == 5)
  {
    v100 = v4;
    v94[0] = v17;
    v94[1] = v94;
    MEMORY[0x28223BE20](v19);
    v93 = v110;
    sub_21E1408F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C40);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7C48);
    v21 = sub_21DF8A698();
    v112 = v20;
    v113 = v21;
    swift_getOpaqueTypeConformance2();
    v22 = v101;
    sub_21E13F3C4();
    v23 = sub_21E141CC4();
    v25 = v24;
    v26 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AC8) + 36)];
    sub_21DF7474C(v26);
    v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AE8) + 36));
    *v27 = v23;
    v27[1] = v25;
    v28 = sub_21E140924();
    sub_21E13F374();
    v29 = &v22[*(v102 + 9)];
    *v29 = v28;
    *(v29 + 1) = v30;
    *(v29 + 2) = v31;
    *(v29 + 3) = v32;
    *(v29 + 4) = v33;
    v29[40] = 0;
    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    if (*(v109 + v11))
    {
      v34 = *(v109 + v11);
    }

    else
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      v53 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v34 = *(v11 + v53);
    }

    swift_getKeyPath();
    v112 = v34;

    sub_21E13D3C4();

    swift_beginAccess();

    swift_getKeyPath();
    v112 = v11;
    sub_21E13D3C4();

    v54 = v100;
    if (*(v109 + v11))
    {
      v55 = *(v109 + v11);
    }

    else
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      v56 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v55 = *(v11 + v56);
    }

    swift_getKeyPath();
    v112 = v55;

    sub_21E13D3C4();

    v57 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v58 = *(v55 + v57);
    sub_21DF5706C(v58);

    v112 = v58;
    LOBYTE(v58) = sub_21DF31604(&v112);

    sub_21DF5AF24(v112);
    if (v58)
    {
      swift_getKeyPath();
      v112 = v11;
      sub_21E13D3C4();

      if (*(v109 + v11))
      {
        v59 = *(v109 + v11);
      }

      else
      {
        swift_getKeyPath();
        v112 = v11;
        sub_21E13D3C4();

        v60 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v59 = *(v11 + v60);
      }

      swift_getKeyPath();
      v112 = v59;

      sub_21E13D3C4();

      v61 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v62 = *(v59 + v61);

      swift_getKeyPath();
      v112 = v62;
      sub_21E13D3C4();

      swift_beginAccess();
    }

    sub_21DF89A28();
    v63 = v95;
    v64 = v101;
    sub_21E140F54();
    sub_21DF23614(v64, &qword_27CEA7A18);
    v65 = sub_21DF64BA0();
    v66 = sub_21E13FB64();
    v67 = v97;
    (*(v96 + 32))(v97, v63, v54);
    v68 = v67 + *(v111 + 36);
    *v68 = v66;
    *(v68 + 8) = v65;
    v69 = sub_21E141C84();
    v109 = v94;
    MEMORY[0x28223BE20](v69);
    v108 = v92;
    MEMORY[0x28223BE20](v70);
    v102 = v92;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA0);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA8);
    v71 = sub_21DF89960();
    v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF0);
    v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF8);
    v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B00);
    v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B08);
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B10);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B18);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B20);
    v77 = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &unk_21E1481F0, sub_21DF89B98);
    v78 = v111;
    v112 = v111;
    v113 = v76;
    v114 = v71;
    v115 = v77;
    v95 = v71;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v112 = v75;
    v113 = OpaqueTypeConformance2;
    v80 = swift_getOpaqueTypeConformance2();
    v112 = v74;
    v113 = v80;
    v81 = swift_getOpaqueTypeConformance2();
    v82 = sub_21DF8A22C();
    v112 = v72;
    v113 = v73;
    v114 = v81;
    v115 = v82;
    v83 = swift_getOpaqueTypeConformance2();
    v112 = v96;
    v113 = v83;
    v84 = swift_getOpaqueTypeConformance2();
    v112 = v100;
    v113 = v84;
    v85 = swift_getOpaqueTypeConformance2();
    v100 = v85;
    v86 = sub_21DF8A5D8();
    v93 = v86;
    v92[0] = MEMORY[0x277CE1340];
    v92[1] = v85;
    v87 = v101;
    v88 = v98;
    v89 = v110;
    sub_21E141354();
    sub_21DF23614(v67, &qword_27CEA7A28);
    v90 = v99;
    v91 = v106;
    (*(v99 + 16))(v105, v88, v106);
    swift_storeEnumTagMultiPayload();
    sub_21DF89684();
    v112 = v78;
    v113 = MEMORY[0x277CE1350];
    v114 = v89;
    v115 = v87;
    v116 = v95;
    v117 = MEMORY[0x277CE1340];
    v118 = v100;
    v119 = v86;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    return (*(v90 + 8))(v88, v91);
  }

  else
  {
    v35 = v100;
    sub_21DF68610(v100);
    sub_21DF236C0(v35, v105, &qword_27CEA7A40);
    swift_storeEnumTagMultiPayload();
    v110 = sub_21DF89684();
    v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AA0);
    v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AA8);
    v36 = sub_21DF89960();
    v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF0);
    v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7AF8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B00);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B08);
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B10);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B18);
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEA7B20);
    v42 = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &unk_21E1481F0, sub_21DF89B98);
    v43 = v111;
    v112 = v111;
    v113 = v41;
    v114 = v36;
    v115 = v42;
    v44 = swift_getOpaqueTypeConformance2();
    v112 = v40;
    v113 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v112 = v39;
    v113 = v45;
    v46 = swift_getOpaqueTypeConformance2();
    v47 = sub_21DF8A22C();
    v112 = v37;
    v113 = v38;
    v114 = v46;
    v115 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    v112 = v102;
    v113 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v112 = v103;
    v113 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v51 = sub_21DF8A5D8();
    v112 = v43;
    v113 = MEMORY[0x277CE1350];
    v114 = v109;
    v115 = v108;
    v116 = v36;
    v117 = MEMORY[0x277CE1340];
    v118 = v50;
    v119 = v51;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    return sub_21DF23614(v100, &qword_27CEA7A40);
  }
}

uint64_t sub_21DF68610@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81B0);
  MEMORY[0x28223BE20](v68);
  v69 = &v62 - v2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A98);
  MEMORY[0x28223BE20](v78);
  v70 = (&v62 - v3);
  v65 = sub_21E13EF84();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA73A8);
  MEMORY[0x28223BE20](v67);
  v66 = &v62 - v5;
  v6 = type metadata accessor for CardContainer();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81B8);
  MEMORY[0x28223BE20](v75);
  v77 = &v62 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81C0);
  MEMORY[0x28223BE20](v71);
  v11 = &v62 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A58);
  MEMORY[0x28223BE20](v76);
  v73 = &v62 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A68);
  MEMORY[0x28223BE20](v72);
  v14 = (&v62 - v13);
  v15 = *(v6 + 28);
  v74 = v1;
  v16 = *(v1 + v15);
  swift_getKeyPath();
  v82[0] = v16;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v17 = *(v16 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v82[0] = v16;
    sub_21E13D3C4();

    v18 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v17 = *(v16 + v18);
  }

  swift_getKeyPath();
  v82[0] = v17;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v20 = *(v17 + v19);

  swift_getKeyPath();
  v82[0] = v20;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v21 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  v22 = *(v20 + v21);

  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v84 = v6;
      v85 = sub_21DF8D698(&qword_27CEA81C8, type metadata accessor for CardContainer);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      sub_21DF8C7C8(v74, boxed_opaque_existential_1, type metadata accessor for CardContainer);
      (*(v64 + 104))(v63, *MEMORY[0x277D0D7D0], v65);
      v56 = v66;
      sub_21E13EF24();
      v57 = sub_21E13FB64();
      v58 = sub_21E140914();
      v59 = v56 + *(v67 + 36);
      *v59 = v57;
      *(v59 + 8) = v58;
      v53 = &qword_27CEA73A8;
      sub_21DF236C0(v56, v69, &qword_27CEA73A8);
      swift_storeEnumTagMultiPayload();
      sub_21DF44860();
      v60 = v70;
      sub_21E1402F4();
      sub_21DF236C0(v60, v77, &qword_27CEA7A98);
      swift_storeEnumTagMultiPayload();
      sub_21DF89710();
      sub_21DF898D4();
      sub_21E1402F4();
      sub_21DF23614(v60, &qword_27CEA7A98);
      v45 = v56;
LABEL_13:
      v46 = v53;
      return sub_21DF23614(v45, v46);
    }

    if (v22 != 4)
    {
      swift_storeEnumTagMultiPayload();
      sub_21DF44860();
      v14 = v70;
      sub_21E1402F4();
      v53 = &qword_27CEA7A98;
      sub_21DF236C0(v14, v77, &qword_27CEA7A98);
      swift_storeEnumTagMultiPayload();
      sub_21DF89710();
      sub_21DF898D4();
      sub_21E1402F4();
      goto LABEL_12;
    }

LABEL_9:
    MEMORY[0x28223BE20](v23);
    *(&v62 - 2) = v74;
    sub_21E1408F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA81D0);
    sub_21DF8CC5C();
    sub_21E13F3C4();
    v47 = sub_21E141CC4();
    v49 = v48;
    v50 = sub_21E1414A4();
    sub_21E13F6B4();
    sub_21E13F694();
    v51 = sub_21E13F6C4();

    v52 = v14 + *(v72 + 36);
    *v52 = v50;
    *(v52 + 4) = 256;
    *(v52 + 2) = v51;
    *(v52 + 3) = v47;
    *(v52 + 4) = v49;
    v53 = &qword_27CEA7A68;
    sub_21DF236C0(v14, v11, &qword_27CEA7A68);
    swift_storeEnumTagMultiPayload();
    sub_21DF8979C();
    sub_21DF89880();
    v54 = v73;
    sub_21E1402F4();
    sub_21DF236C0(v54, v77, &qword_27CEA7A58);
    swift_storeEnumTagMultiPayload();
    sub_21DF89710();
    sub_21DF898D4();
    sub_21E1402F4();
    sub_21DF23614(v54, &qword_27CEA7A58);
LABEL_12:
    v45 = v14;
    goto LABEL_13;
  }

  if (v22 < 2)
  {
    goto LABEL_9;
  }

  v24 = v74;
  sub_21DF8C7C8(v74, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  sub_21E1423C4();
  v25 = sub_21E1423B4();
  v26 = *(v62 + 80);
  v27 = (v26 + 32) & ~v26;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v25;
  *(v28 + 24) = v29;
  v70 = type metadata accessor for CardContainer;
  sub_21DF8C494(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for CardContainer);
  sub_21DF8C7C8(v24, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v30 = sub_21E1423B4();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = MEMORY[0x277D85700];
  v32 = v31 + v27;
  v33 = v70;
  sub_21DF8C494(&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v70);
  sub_21E141A04();
  v34 = v82[0];
  v35 = v82[1];
  LOBYTE(v25) = v83;
  sub_21DF8C7C8(v24, &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v36 = swift_allocObject();
  sub_21DF8C494(v8, v36 + ((v26 + 16) & ~v26), v33);
  v81 = v25;
  v37 = type metadata accessor for SiriSetupViewController.Delegate();
  v38 = objc_allocWithZone(v37);
  v39 = &v38[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate__showSiriOnboarding];
  *v39 = v34;
  *(v39 + 1) = v35;
  v39[16] = v25;
  v40 = &v38[OBJC_IVAR____TtCV20VisualIntelligenceUI23SiriSetupViewControllerP33_22C67463BC5DB27F499695934EEC52688Delegate_completion];
  *v40 = sub_21DF8CC3C;
  v40[1] = v36;
  v80.receiver = v38;
  v80.super_class = v37;

  v41 = objc_msgSendSuper2(&v80, sel_init);
  v42 = v81;
  *v11 = v34;
  *(v11 + 1) = v35;
  v11[16] = v42;
  *(v11 + 3) = v41;
  *(v11 + 4) = sub_21DF8CC3C;
  *(v11 + 5) = v36;
  swift_storeEnumTagMultiPayload();
  sub_21DF8979C();
  sub_21DF89880();

  v43 = v41;

  v44 = v73;
  sub_21E1402F4();
  sub_21DF236C0(v44, v77, &qword_27CEA7A58);
  swift_storeEnumTagMultiPayload();
  sub_21DF89710();
  sub_21DF898D4();
  sub_21E1402F4();

  v45 = v44;
  v46 = &qword_27CEA7A58;
  return sub_21DF23614(v45, v46);
}

uint64_t sub_21DF69390(uint64_t a1)
{
  v2 = type metadata accessor for CardContainer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C48);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  *v7 = sub_21E1401C4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D98);
  sub_21DF695AC(a1, &v7[*(v8 + 44)]);
  v9 = sub_21E141CC4();
  v11 = v10;
  sub_21DF8C7C8(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardContainer);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21DF8C494(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CardContainer);
  v14 = &v7[*(v5 + 36)];
  *v14 = sub_21DF8AFC0;
  v14[1] = v13;
  v14[2] = v9;
  v14[3] = v11;
  sub_21E1408D4();
  sub_21E141CC4();
  sub_21DF8A698();
  sub_21E141144();
  return sub_21DF23614(v7, &qword_27CEA7C48);
}

uint64_t sub_21DF695AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v82 = a2;
  v85 = type metadata accessor for CardContainer();
  v79 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = v2;
  v84 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21E1403A4();
  v3 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = sub_21E1403C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DA0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v75 - v19;
  sub_21DF6A0E8(&v75 - v19);
  sub_21E140394();
  v21 = v90;
  (*(v3 + 16))(v5, v8, v90);
  sub_21E1403B4();
  (*(v3 + 8))(v8, v21);
  (*(v10 + 16))(v89, v14, v9);
  sub_21DF8D698(&qword_280F68E58, MEMORY[0x277CE0418]);
  v22 = sub_21E13F704();
  (*(v10 + 8))(v14, v9);
  v23 = *(v16 + 44);
  v87 = v20;
  *&v20[v23] = v22;
  v24 = *(v91 + *(v85 + 28));
  swift_getKeyPath();
  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  v99 = v24;
  v26 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v27 = *(v24 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v86 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    swift_getKeyPath();
    v99 = v24;
    sub_21E13D3C4();

    v29 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v28 = *(v24 + v29);
  }

  swift_getKeyPath();
  v99 = v28;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v99 = v24;
  sub_21E13D3C4();

  v30 = *(v24 + v86);
  v80 = v26;
  v81 = v25;
  v78 = v24;
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    swift_getKeyPath();
    v99 = v24;
    sub_21E13D3C4();

    v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v31 = *(v24 + v32);
  }

  swift_getKeyPath();
  v99 = v31;

  sub_21E13D3C4();

  v33 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v34 = *(v31 + v33);
  sub_21DF5706C(v34);

  v99 = v34;
  v35 = sub_21DF31604(&v99);

  sub_21DF5AF24(v99);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v90 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v35)
  {
    swift_getKeyPath();
    v48 = v78;
    v99 = v78;

    sub_21E13D3C4();

    v89 = *(v48 + v86);
    if (!v89)
    {
      swift_getKeyPath();
      v99 = v48;
      sub_21E13D3C4();

      v49 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v89 = *(v48 + v49);
    }

    v50 = v91;
    v51 = v91 + *(v85 + 68);
    v99 = *v51;
    v100 = *(v51 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
    sub_21E1419F4();
    v85 = *(&v92 + 1);
    v76 = v93;
    v77 = v92;
    v52 = v84;
    sub_21DF8C7C8(v50, v84, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v53 = sub_21E1423B4();
    v54 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v55 = swift_allocObject();
    v56 = MEMORY[0x277D85700];
    *(v55 + 16) = v53;
    *(v55 + 24) = v56;
    sub_21DF8C494(v52, v55 + v54, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v91, v52, type metadata accessor for CardContainer);
    v57 = sub_21E1423B4();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v52, v58 + v54, type metadata accessor for CardContainer);
    sub_21E141A04();
    v42 = v99;
    v90 = *(&v100 + 1);
    v43 = v100;
    LOBYTE(v92) = 0;
    sub_21E141704();
    v84 = v99;
    v79 = v100;
    LOBYTE(v92) = 0;
    sub_21E141704();
    v83 = v99;
    v91 = v100;
    swift_getKeyPath();
    v99 = v48;
    sub_21E13D3C4();

    v45 = *(v48 + v86);
    if (!v45)
    {
      swift_getKeyPath();
      v99 = v48;
      sub_21E13D3C4();

      v59 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v45 = *(v48 + v59);
    }

    v44 = v48;
    v36 = v89;
    v41 = v76;
    v39 = v77;
    v47 = v84;
    v40 = v85;
    v37 = v79;
    v38 = v91;
    v46 = v83;
  }

  v80 = v44;
  v81 = v45;
  v89 = v36;
  v85 = v40;
  v86 = v42;
  v60 = v88;
  v91 = v38;
  v61 = v45;
  v62 = v37;
  v63 = v46;
  v83 = v46;
  v84 = v47;
  sub_21DF236C0(v87, v88, &qword_27CEA7DA0);
  v64 = v60;
  v65 = v82;
  sub_21DF236C0(v64, v82, &qword_27CEA7DA0);
  v66 = (v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DA8) + 48));
  v67 = v89;
  *&v92 = v80;
  *(&v92 + 1) = v89;
  *&v93 = v47;
  *(&v93 + 1) = v62;
  *&v94 = v63;
  *(&v94 + 1) = v38;
  v68 = v85;
  *&v95 = v39;
  *(&v95 + 1) = v85;
  *&v96 = v41;
  *(&v96 + 1) = v86;
  *&v97 = v43;
  *(&v97 + 1) = v90;
  *&v98 = v80;
  *(&v98 + 1) = v61;
  v69 = v80;
  v70 = v93;
  *v66 = v92;
  v66[1] = v70;
  v71 = v95;
  v66[2] = v94;
  v66[3] = v71;
  v72 = v97;
  v66[4] = v96;
  v66[5] = v72;
  v66[6] = v98;
  v73 = v67;
  sub_21DF236C0(&v92, &v99, &qword_27CEA7DB0);
  sub_21DF23614(v87, &qword_27CEA7DA0);
  v99 = v69;
  *&v100 = v73;
  *(&v100 + 1) = v84;
  v101 = v62;
  v102 = v83;
  v103 = v91;
  v104 = v39;
  v105 = v68;
  v106 = v41;
  v107 = v86;
  v108 = v43;
  v109 = v90;
  v110 = v69;
  v111 = v81;
  sub_21DF23614(&v99, &qword_27CEA7DB0);
  return sub_21DF23614(v88, &qword_27CEA7DA0);
}

unint64_t sub_21DF6A0E8@<X0>(uint64_t a1@<X8>)
{
  v1033 = a1;
  v985 = type metadata accessor for VIUIDeveloperMenu();
  MEMORY[0x28223BE20](v985);
  v974 = (v822 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v992 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DB8);
  MEMORY[0x28223BE20](v992);
  v984 = v822 - v3;
  v1032 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DC0);
  MEMORY[0x28223BE20](v1032);
  v993 = v822 - v4;
  v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DC8);
  MEMORY[0x28223BE20](v954);
  v957 = v822 - v5;
  v903 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DD0);
  MEMORY[0x28223BE20](v903);
  v909 = v822 - v6;
  v955 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DD8);
  MEMORY[0x28223BE20](v955);
  v906 = v822 - v7;
  v904 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DE0);
  MEMORY[0x28223BE20](v904);
  v858 = (v822 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CE8);
  MEMORY[0x28223BE20](v9 - 8);
  v973 = (v822 - v10);
  v991 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DE8);
  MEMORY[0x28223BE20](v991);
  v959 = v822 - v11;
  v956 = type metadata accessor for EventLookupPlaceholder();
  MEMORY[0x28223BE20](v956);
  v898 = (v822 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DF0);
  v900 = *(v958 - 8);
  MEMORY[0x28223BE20](v958);
  v899 = v822 - v13;
  v980 = sub_21E140614();
  v923 = *(v980 - 8);
  MEMORY[0x28223BE20](v980);
  v922 = v822 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v927 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7DF8);
  MEMORY[0x28223BE20](v927);
  v925 = v822 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v859 = v822 - v17;
  v982 = sub_21E13D8D4();
  v961 = *(v982 - 8);
  MEMORY[0x28223BE20](v982);
  v924 = v822 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v926 = v822 - v20;
  v951 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E00);
  MEMORY[0x28223BE20](v951);
  v953 = v822 - v21;
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E08);
  MEMORY[0x28223BE20](v901);
  v905 = v822 - v22;
  v952 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E10);
  MEMORY[0x28223BE20](v952);
  v907 = v822 - v23;
  v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E18);
  MEMORY[0x28223BE20](v902);
  v857 = (v822 - v24);
  v25 = type metadata accessor for EventExtractionResult(0);
  MEMORY[0x28223BE20](v25 - 8);
  v856 = v822 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC8);
  MEMORY[0x28223BE20](v27 - 8);
  v972 = v822 - v28;
  v1002 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E20);
  MEMORY[0x28223BE20](v1002);
  v978 = v822 - v29;
  v971 = sub_21E13D344();
  v970 = *(v971 - 8);
  MEMORY[0x28223BE20](v971);
  v969 = v822 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v999 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E28);
  MEMORY[0x28223BE20](v999);
  v1000 = v822 - v31;
  v1023 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E30);
  MEMORY[0x28223BE20](v1023);
  v1001 = v822 - v32;
  v944 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E38);
  MEMORY[0x28223BE20](v944);
  v947 = v822 - v33;
  v892 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E40);
  MEMORY[0x28223BE20](v892);
  v895 = v822 - v34;
  v945 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E48);
  MEMORY[0x28223BE20](v945);
  v897 = v822 - v35;
  v908 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E50);
  MEMORY[0x28223BE20](v908);
  v855 = (v822 - v36);
  v888 = sub_21E13DC14();
  v854 = *(v888 - 8);
  MEMORY[0x28223BE20](v888);
  v853 = v822 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD0);
  MEMORY[0x28223BE20](v38 - 8);
  v968 = (v822 - v39);
  v995 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E58);
  MEMORY[0x28223BE20](v995);
  v948 = v822 - v40;
  v942 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E60);
  MEMORY[0x28223BE20](v942);
  v946 = v822 - v41;
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E68);
  MEMORY[0x28223BE20](v891);
  v894 = (v822 - v42);
  v943 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E70);
  MEMORY[0x28223BE20](v943);
  v896 = v822 - v43;
  v893 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E78);
  MEMORY[0x28223BE20](v893);
  v851 = (v822 - v44);
  v45 = sub_21E13E614();
  v883 = *(v45 - 8);
  v884 = v45;
  MEMORY[0x28223BE20](v45);
  v850 = v822 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CD8);
  MEMORY[0x28223BE20](v47 - 8);
  v967 = (v822 - v48);
  v986 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E80);
  MEMORY[0x28223BE20](v986);
  v981 = v822 - v49;
  v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E88);
  MEMORY[0x28223BE20](v1014);
  v1021 = v822 - v50;
  v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E90);
  MEMORY[0x28223BE20](v996);
  v997 = v822 - v51;
  v1020 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7E98);
  MEMORY[0x28223BE20](v1020);
  v998 = v822 - v52;
  v1028 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EA0);
  MEMORY[0x28223BE20](v1028);
  v1022 = v822 - v53;
  v977 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EA8);
  MEMORY[0x28223BE20](v977);
  v949 = v822 - v54;
  v912 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EB0);
  MEMORY[0x28223BE20](v912);
  v913 = (v822 - v55);
  v976 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EB8);
  MEMORY[0x28223BE20](v976);
  v914 = v822 - v56;
  v994 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EC0);
  MEMORY[0x28223BE20](v994);
  v950 = v822 - v57;
  v1013 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EC8);
  MEMORY[0x28223BE20](v1013);
  v966 = v822 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v881 = v822 - v60;
  MEMORY[0x28223BE20](v61);
  v876 = v822 - v62;
  MEMORY[0x28223BE20](v63);
  v878 = v822 - v64;
  MEMORY[0x28223BE20](v65);
  v937 = v822 - v66;
  MEMORY[0x28223BE20](v67);
  v877 = v822 - v68;
  MEMORY[0x28223BE20](v69);
  v879 = v822 - v70;
  MEMORY[0x28223BE20](v71);
  v880 = v822 - v72;
  v1008 = sub_21E13F1B4();
  v73 = *(v1008 - 8);
  MEMORY[0x28223BE20](v1008);
  v938 = v822 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v852 = v822 - v76;
  MEMORY[0x28223BE20](v77);
  v890 = v822 - v78;
  MEMORY[0x28223BE20](v79);
  v935 = v822 - v80;
  MEMORY[0x28223BE20](v81);
  v848 = v822 - v82;
  MEMORY[0x28223BE20](v83);
  v934 = v822 - v84;
  MEMORY[0x28223BE20](v85);
  v849 = v822 - v86;
  MEMORY[0x28223BE20](v87);
  v930 = v822 - v88;
  MEMORY[0x28223BE20](v89);
  v936 = v822 - v90;
  MEMORY[0x28223BE20](v91);
  v882 = v822 - v92;
  v939 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7ED0);
  MEMORY[0x28223BE20](v939);
  v941 = v822 - v93;
  v886 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7ED8);
  MEMORY[0x28223BE20](v886);
  v887 = (v822 - v94);
  v940 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EE0);
  MEMORY[0x28223BE20](v940);
  v889 = v822 - v95;
  v96 = sub_21E13DBC4();
  v846 = *(v96 - 8);
  v847 = v96;
  MEMORY[0x28223BE20](v96);
  v845 = v822 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v844 = v822 - v99;
  v885 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EE8);
  MEMORY[0x28223BE20](v885);
  v875 = (v822 - v100);
  v842 = type metadata accessor for GeoLookupCardResult(0);
  MEMORY[0x28223BE20](v842);
  v921 = v822 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CC0);
  MEMORY[0x28223BE20](v102 - 8);
  v965 = (v822 - v103);
  v1006 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EF0);
  MEMORY[0x28223BE20](v1006);
  v975 = v822 - v104;
  v1004 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7EF8);
  MEMORY[0x28223BE20](v1004);
  v1005 = v822 - v105;
  v1015 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F00);
  MEMORY[0x28223BE20](v1015);
  v1007 = v822 - v106;
  v867 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F08);
  MEMORY[0x28223BE20](v867);
  v868 = v822 - v107;
  v835 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F10);
  MEMORY[0x28223BE20](v835);
  v836 = v822 - v108;
  v866 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F18);
  MEMORY[0x28223BE20](v866);
  v837 = v822 - v109;
  v918 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F20);
  MEMORY[0x28223BE20](v918);
  v869 = v822 - v110;
  v932 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F28);
  MEMORY[0x28223BE20](v932);
  v933 = v822 - v111;
  v915 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F30);
  MEMORY[0x28223BE20](v915);
  v916 = v822 - v112;
  v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F38);
  MEMORY[0x28223BE20](v931);
  v917 = v822 - v113;
  v1003 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F40);
  MEMORY[0x28223BE20](v1003);
  v960 = v822 - v114;
  v115 = sub_21E13D384();
  MEMORY[0x28223BE20](v115 - 8);
  v1011 = v822 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21E1420E4();
  MEMORY[0x28223BE20](v117 - 8);
  v873 = v822 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v119);
  v839 = v822 - v120;
  MEMORY[0x28223BE20](v121);
  v838 = v822 - v122;
  MEMORY[0x28223BE20](v123);
  v870 = v822 - v124;
  MEMORY[0x28223BE20](v125);
  v861 = v822 - v126;
  MEMORY[0x28223BE20](v127);
  v872 = v822 - v128;
  MEMORY[0x28223BE20](v129);
  v822[1] = v822 - v130;
  MEMORY[0x28223BE20](v131);
  v826 = v822 - v132;
  MEMORY[0x28223BE20](v133);
  v825 = v822 - v134;
  MEMORY[0x28223BE20](v135);
  v860 = v822 - v136;
  MEMORY[0x28223BE20](v137);
  v1010 = type metadata accessor for EmptyResultsView();
  MEMORY[0x28223BE20](v1010);
  v840 = (v822 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v139);
  v874 = (v822 - v140);
  MEMORY[0x28223BE20](v141);
  v841 = v822 - v142;
  MEMORY[0x28223BE20](v143);
  v928 = (v822 - v144);
  MEMORY[0x28223BE20](v145);
  v911 = (v822 - v146);
  MEMORY[0x28223BE20](v147);
  v831 = (v822 - v148);
  MEMORY[0x28223BE20](v149);
  v834 = (v822 - v150);
  MEMORY[0x28223BE20](v151);
  v833 = (v822 - v152);
  MEMORY[0x28223BE20](v153);
  v910 = (v822 - v154);
  MEMORY[0x28223BE20](v155);
  v990 = (v822 - v156);
  v1012 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F48);
  MEMORY[0x28223BE20](v1012);
  v920 = (v822 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v158);
  v843 = v822 - v159;
  MEMORY[0x28223BE20](v160);
  v929 = v822 - v161;
  MEMORY[0x28223BE20](v162);
  v871 = v822 - v163;
  MEMORY[0x28223BE20](v164);
  v863 = v822 - v165;
  MEMORY[0x28223BE20](v166);
  v865 = v822 - v167;
  MEMORY[0x28223BE20](v168);
  v823 = v822 - v169;
  MEMORY[0x28223BE20](v170);
  v824 = v822 - v171;
  MEMORY[0x28223BE20](v172);
  v828 = v822 - v173;
  MEMORY[0x28223BE20](v174);
  v829 = v822 - v175;
  MEMORY[0x28223BE20](v176);
  v827 = v822 - v177;
  MEMORY[0x28223BE20](v178);
  v830 = v822 - v179;
  MEMORY[0x28223BE20](v180);
  v832 = (v822 - v181);
  MEMORY[0x28223BE20](v182);
  v862 = v822 - v183;
  MEMORY[0x28223BE20](v184);
  v864 = v822 - v185;
  MEMORY[0x28223BE20](v186);
  v963 = v822 - v187;
  v989 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F50);
  MEMORY[0x28223BE20](v989);
  v962 = v822 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v189);
  v964 = v822 - v190;
  v1029 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F58);
  MEMORY[0x28223BE20](v1029);
  v1031 = v822 - v191;
  v1024 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F60);
  MEMORY[0x28223BE20](v1024);
  v1026 = v822 - v192;
  v1016 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F68);
  MEMORY[0x28223BE20](v1016);
  v1018 = v822 - v193;
  v987 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F70);
  MEMORY[0x28223BE20](v987);
  v195 = v822 - v194;
  v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F78);
  MEMORY[0x28223BE20](v1017);
  v988 = v822 - v196;
  v1025 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F80);
  MEMORY[0x28223BE20](v1025);
  v1019 = v822 - v197;
  v1030 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7F88);
  MEMORY[0x28223BE20](v1030);
  v1027 = v822 - v198;
  v919 = type metadata accessor for CardContainer();
  v199 = *(v919 + 28);
  v983 = v1;
  v200 = *(v1 + v199);
  swift_getKeyPath();
  v201 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v1040 = v200;
  v202 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v1036 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v203 = *(v200 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v1034 = v200;
  v1035 = v202;
  v1009 = v73;
  if (v203)
  {
    v204 = v201;
    v205 = v203;
  }

  else
  {
    swift_getKeyPath();
    *&v1040 = v200;
    v204 = v201;
    sub_21E13D3C4();

    v206 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v205 = *(v200 + v206);
  }

  swift_getKeyPath();
  *&v1040 = v205;
  v207 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v208 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v209 = *(v205 + v208);
  sub_21DF5706C(v209);

  if (v209 <= 3)
  {
    if (v209 > 1)
    {
      v218 = v1034;
      if (v209 != 2)
      {
        swift_getKeyPath();
        *&v1040 = v218;
        sub_21E13D3C4();

        if (*&v1036[v218])
        {
          v219 = *&v1036[v218];
        }

        else
        {
          swift_getKeyPath();
          *&v1040 = v218;
          sub_21E13D3C4();

          v261 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v219 = *(v218 + v261);
        }

        swift_getKeyPath();
        v1039[0] = v219;

        sub_21E13D3C4();

        v262 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v263 = *(v219 + v262);

        swift_getKeyPath();
        v1053 = v263;
        sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
        sub_21E13D3C4();

        v264 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__summarization;
        swift_beginAccess();
        v265 = v967;
        sub_21DF236C0(v263 + v264, v967, &qword_27CEA6CD8);

        v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C98);
        if ((*(*(v266 - 8) + 48))(v265, 1, v266) == 1)
        {
          sub_21DF8B37C();
          v1052 = 0uLL;
          sub_21E141164();
          sub_21E13EBE4();
          v267 = sub_21E13F1A4();
          v268 = sub_21E142544();
          if (os_log_type_enabled(v267, v268))
          {
            v269 = swift_slowAlloc();
            v270 = swift_slowAlloc();
            *&v1052 = v270;
            *v269 = 136315138;
            *(v269 + 4) = sub_21E0E08C0(0xD000000000000057, 0x800000021E15BC30, &v1052);
            _os_log_impl(&dword_21DF05000, v267, v268, "%s", v269, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v270);
            MEMORY[0x223D540B0](v270, -1, -1);
            MEMORY[0x223D540B0](v269, -1, -1);
          }

          v271 = v1009;
          v272 = v1008;
          v273 = v997;
          v274 = v937;
          v275 = v877;
          sub_21DF236C0(v937, v877, &qword_27CEA7EC8);
          (*(v271 + 8))(v934, v272);
          sub_21DF23614(v274, &qword_27CEA7EC8);
          sub_21DF236C0(v275, v946, &qword_27CEA7EC8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          v276 = v981;
          sub_21E1402F4();
          sub_21DF23614(v275, &qword_27CEA7EC8);
        }

        else if (swift_getEnumCaseMultiPayload() == 1)
        {
          v1019 = *v265;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v277 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v1018 = sub_21E142184();
          v1017 = v278;
          swift_getKeyPath();
          v279 = v1034;
          *&v1052 = v1034;
          sub_21E13D3C4();

          if (*&v1036[v279])
          {
            v280 = *&v1036[v279];
          }

          else
          {
            swift_getKeyPath();
            *&v1052 = v279;
            sub_21E13D3C4();

            v670 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v280 = *(v279 + v670);
          }

          swift_getKeyPath();
          v1051 = v280;

          sub_21E13D3C4();

          v671 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v672 = *(v280 + v671);

          v673 = *(v672 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1050 = v279;
          sub_21E13D3C4();

          if (*&v1036[v279])
          {
            v674 = *&v1036[v279];
          }

          else
          {
            swift_getKeyPath();
            v1050 = v279;
            sub_21E13D3C4();

            v675 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v674 = *(v279 + v675);
          }

          swift_getKeyPath();
          v1049[0] = v674;

          sub_21E13D3C4();

          v676 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v677 = *(v674 + v676);

          v678 = *(v677 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v679 = sub_21E140914();
          LOBYTE(v1046) = 0;
          v680 = v849;
          sub_21E13EBE4();
          v681 = sub_21E13F1A4();
          v682 = sub_21E142564();
          if (os_log_type_enabled(v681, v682))
          {
            v683 = swift_slowAlloc();
            v684 = swift_slowAlloc();
            v1047 = v684;
            *v683 = 136315138;
            *(v683 + 4) = sub_21E0E08C0(0xD000000000000035, 0x800000021E15BCC0, &v1047);
            _os_log_impl(&dword_21DF05000, v681, v682, "%s", v683, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v684);
            MEMORY[0x223D540B0](v684, -1, -1);
            MEMORY[0x223D540B0](v683, -1, -1);
          }

          v273 = v997;
          v276 = v981;
          (*(v1009 + 8))(v680, v1008);
          v685 = v894;
          v686 = v1017;
          *v894 = v1018;
          v685[1] = v686;
          *(v685 + 16) = v679;
          v685[3] = v673;
          v685[4] = 0;
          v685[5] = v678;
          v685[6] = 0;
          *(v685 + 56) = 0;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
          sub_21DF23E5C(&qword_27CEA8088, &qword_27CEA7E78);
          sub_21DF8BAA0();
          v687 = v896;
          sub_21E1402F4();
          sub_21DF236C0(v687, v946, &qword_27CEA7E70);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          sub_21E1402F4();

          sub_21DF23614(v687, &qword_27CEA7E70);
        }

        else
        {
          v496 = v850;
          (*(v883 + 32))(v850, v265, v884);
          v497 = sub_21E13E604();
          v499 = v498;
          v500 = sub_21E1401C4();
          v501 = v851;
          *v851 = v500;
          *(v501 + 8) = 0;
          *(v501 + 16) = 0;
          v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80F8);
          sub_21DF7F620(v496, v497, v499, v983, (v501 + *(v502 + 44)));

          sub_21DF236C0(v501, v894, &qword_27CEA7E78);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
          sub_21DF23E5C(&qword_27CEA8088, &qword_27CEA7E78);
          sub_21DF8BAA0();
          v503 = v896;
          sub_21E1402F4();
          sub_21DF236C0(v503, v946, &qword_27CEA7E70);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BE3C();
          sub_21DF8B2C0();
          sub_21E1402F4();
          sub_21DF23614(v503, &qword_27CEA7E70);
          v504 = v501;
          v276 = v981;
          sub_21DF23614(v504, &qword_27CEA7E78);
          (*(v883 + 8))(v496, v884);
          v273 = v997;
        }

        v214 = &qword_27CEA7E80;
        sub_21DF236C0(v276, v273, &qword_27CEA7E80);
        swift_storeEnumTagMultiPayload();
        sub_21DF8BC98();
        sub_21DF8BDB0();
        v688 = v998;
        sub_21E1402F4();
        v689 = &qword_27CEA7E98;
        sub_21DF236C0(v688, v1021, &qword_27CEA7E98);
        goto LABEL_197;
      }

      swift_getKeyPath();
      *&v1040 = v218;
      sub_21E13D3C4();

      if (*&v1036[v218])
      {
        v234 = *&v1036[v218];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v218;
        sub_21E13D3C4();

        v317 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v234 = *(v218 + v317);
      }

      swift_getKeyPath();
      v1039[0] = v234;

      sub_21E13D3C4();

      v318 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v319 = *(v234 + v318);

      swift_getKeyPath();
      v1053 = v319;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3C4();

      v321 = *(v319 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text);
      v320 = *(v319 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 8);
      v322 = *(v319 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16);
      sub_21DF3563C(v321, v320, *(v319 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__text + 16));

      if (v322 == 255)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v354 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v355 = sub_21E142184();
        v357 = v356;
        KeyPath = swift_getKeyPath();
        v359 = v928;
        *v928 = KeyPath;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v360 = v1010;
        v361 = (v359 + *(v1010 + 24));
        *v361 = v355;
        v361[1] = v357;
        v362 = (v359 + v360[7]);
        *v362 = 0;
        v362[1] = 0;
        v363 = (v359 + v360[8]);
        *v363 = 0;
        v363[1] = 0;
        *(v359 + v360[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v1053 = v218;
        sub_21E13D3C4();

        if (*&v1036[v218])
        {
          v364 = *&v1036[v218];
        }

        else
        {
          swift_getKeyPath();
          v1053 = v218;
          sub_21E13D3C4();

          v548 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v364 = *(v218 + v548);
        }

        swift_getKeyPath();
        *&v1052 = v364;

        sub_21E13D3C4();

        v549 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v550 = *(v364 + v549);

        v551 = *(v550 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1051 = v218;
        sub_21E13D3C4();

        if (*&v1036[v218])
        {
          v552 = *&v1036[v218];
        }

        else
        {
          swift_getKeyPath();
          v1051 = v218;
          sub_21E13D3C4();

          v553 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v552 = *(v218 + v553);
        }

        v554 = v997;
        swift_getKeyPath();
        v1050 = v552;

        sub_21E13D3C4();

        v555 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v556 = *(v552 + v555);

        v557 = *(v556 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v556) = sub_21E140914();
        v558 = v929;
        sub_21DF8C494(v928, v929, type metadata accessor for EmptyResultsView);
        v559 = v558 + *(v1012 + 36);
        *v559 = v556;
        *(v559 + 8) = v551;
        *(v559 + 16) = 0;
        *(v559 + 24) = v557;
        *(v559 + 32) = 0;
        *(v559 + 40) = 0;
        sub_21E13EBE4();
        v560 = sub_21E13F1A4();
        v561 = sub_21E142564();
        if (os_log_type_enabled(v560, v561))
        {
          v562 = swift_slowAlloc();
          v563 = swift_slowAlloc();
          v1049[0] = v563;
          *v562 = 136315138;
          *(v562 + 4) = sub_21E0E08C0(0xD000000000000030, 0x800000021E15BD30, v1049);
          _os_log_impl(&dword_21DF05000, v560, v561, "%s", v562, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v563);
          MEMORY[0x223D540B0](v563, -1, -1);
          MEMORY[0x223D540B0](v562, -1, -1);
        }

        v564 = v1009;
        v565 = v1008;
        v350 = v950;
        v566 = v949;
        v567 = v929;
        v568 = v871;
        sub_21DF236C0(v929, v871, &qword_27CEA7F48);
        (*(v564 + 8))(v930, v565);
        sub_21DF23614(v567, &qword_27CEA7F48);
        sub_21DF236C0(v568, v566, &qword_27CEA7F48);
        swift_storeEnumTagMultiPayload();
        sub_21DF8BD24();
        sub_21DF8B204();
        sub_21E1402F4();
        sub_21DF23614(v568, &qword_27CEA7F48);
      }

      else
      {
        v1018 = v320;
        v1019 = v321;
        if (v322)
        {
          v979 = v207;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v323 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v324 = sub_21E142184();
          v326 = v325;
          swift_getErrorValue();
          v327 = sub_21E142BC4();
          v329 = v328;
          v330 = swift_getKeyPath();
          v331 = v911;
          *v911 = v330;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
          swift_storeEnumTagMultiPayload();
          v332 = v1010;
          v333 = (v331 + *(v1010 + 24));
          *v333 = v324;
          v333[1] = v326;
          v334 = (v331 + v332[7]);
          *v334 = v327;
          v334[1] = v329;
          v335 = (v331 + v332[8]);
          *v335 = 0;
          v335[1] = 0;
          *(v331 + v332[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v336 = v1034;
          v1053 = v1034;
          sub_21E13D3C4();

          if (*&v1036[v336])
          {
            v337 = *&v1036[v336];
          }

          else
          {
            swift_getKeyPath();
            v1053 = v336;
            sub_21E13D3C4();

            v610 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v337 = *(v336 + v610);
          }

          swift_getKeyPath();
          *&v1052 = v337;

          sub_21E13D3C4();

          v611 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v612 = *(v337 + v611);

          v613 = *(v612 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1051 = v336;
          sub_21E13D3C4();

          if (*&v1036[v336])
          {
            v614 = *&v1036[v336];
          }

          else
          {
            swift_getKeyPath();
            v1051 = v336;
            sub_21E13D3C4();

            v620 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v614 = *(v336 + v620);
          }

          swift_getKeyPath();
          v1050 = v614;

          sub_21E13D3C4();

          v621 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v622 = *(v614 + v621);

          v623 = *(v622 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          LOBYTE(v622) = sub_21E140914();
          v624 = v863;
          sub_21DF8C494(v911, v863, type metadata accessor for EmptyResultsView);
          v625 = v624 + *(v1012 + 36);
          *v625 = v622;
          *(v625 + 8) = v613;
          *(v625 + 16) = 0;
          *(v625 + 24) = v623;
          *(v625 + 32) = 0;
          *(v625 + 40) = 0;
          v626 = v865;
          sub_21DF3DE9C(v624, v865, &qword_27CEA7F48);
          sub_21DF236C0(v626, v913, &qword_27CEA7F48);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
          sub_21DF8BAA0();
          sub_21DF8B204();
          v627 = v914;
          sub_21E1402F4();
          sub_21DF236C0(v627, v949, &qword_27CEA7EB8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BD24();
          v628 = v950;
          sub_21E1402F4();
          sub_21DF34730(v1019, v1018, v322);
          v350 = v628;
          sub_21DF23614(v627, &qword_27CEA7EB8);
          v629 = v626;
          v630 = &qword_27CEA7F48;
        }

        else
        {
          swift_getKeyPath();
          v1053 = v218;
          sub_21E13D3C4();

          if (*&v1036[v218])
          {
            v474 = *&v1036[v218];
          }

          else
          {
            swift_getKeyPath();
            v1053 = v218;
            sub_21E13D3C4();

            v615 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v474 = *(v218 + v615);
          }

          swift_getKeyPath();
          *&v1052 = v474;

          sub_21E13D3C4();

          v616 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v617 = *(v474 + v616);

          v618 = *(v617 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1051 = v218;
          sub_21E13D3C4();

          if (*&v1036[v218])
          {
            v619 = *&v1036[v218];
          }

          else
          {
            swift_getKeyPath();
            v1051 = v218;
            sub_21E13D3C4();

            v631 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v619 = *(v218 + v631);
          }

          swift_getKeyPath();
          v1050 = v619;

          sub_21E13D3C4();

          v632 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v633 = *(v619 + v632);

          v634 = *(v633 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v635 = sub_21E140914();
          LOBYTE(v1049[0]) = 0;
          v636 = v913;
          v637 = v1018;
          *v913 = v1019;
          v636[1] = v637;
          *(v636 + 16) = v635;
          v636[3] = v618;
          v636[4] = 0;
          v636[5] = v634;
          v636[6] = 0;
          *(v636 + 56) = 0;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
          sub_21DF8BAA0();
          sub_21DF8B204();
          v638 = v914;
          sub_21E1402F4();
          sub_21DF236C0(v638, v949, &qword_27CEA7EB8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8BD24();
          v350 = v950;
          sub_21E1402F4();
          v629 = v638;
          v630 = &qword_27CEA7EB8;
        }

        sub_21DF23614(v629, v630);
        v554 = v997;
      }

      v349 = &qword_27CEA7EC0;
      sub_21DF236C0(v350, v554, &qword_27CEA7EC0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8BC98();
      sub_21DF8BDB0();
      v524 = v998;
      sub_21E1402F4();
      v525 = &qword_27CEA7E98;
      sub_21DF236C0(v524, v1021, &qword_27CEA7E98);
      swift_storeEnumTagMultiPayload();
      sub_21DF8BC0C();
      sub_21DF8BEF4();
LABEL_158:
      v639 = v1022;
      sub_21E1402F4();
      sub_21DF23614(v524, v525);
      sub_21DF236C0(v639, v1026, &qword_27CEA7EA0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B45C();
      sub_21DF8BB80();
      v353 = v1027;
      sub_21E1402F4();
      sub_21DF23614(v639, &qword_27CEA7EA0);
LABEL_159:
      sub_21DF236C0(v353, v1031, &qword_27CEA7F88);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B3D0();
      sub_21DF8C3C4();
      sub_21E1402F4();
      sub_21DF23614(v353, &qword_27CEA7F88);
      v640 = v350;
LABEL_187:
      v715 = v349;
      return sub_21DF23614(v640, v715);
    }

    v216 = v1034;
    if (!v209)
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v222 = [objc_opt_self() mainBundle];
      }

      v979 = v207;
      sub_21E13D374();
      v223 = sub_21E142184();
      v225 = v224;
      v226 = swift_getKeyPath();
      v227 = v990;
      *v990 = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v228 = v1010;
      v229 = (v227 + *(v1010 + 24));
      *v229 = v223;
      v229[1] = v225;
      v230 = (v227 + v228[7]);
      *v230 = 0;
      v230[1] = 0;
      v231 = (v227 + v228[8]);
      *v231 = 0;
      v231[1] = 0;
      *(v227 + v228[5]) = 0x402C000000000000;
      swift_getKeyPath();
      v232 = v1034;
      *&v1040 = v1034;
      sub_21E13D3C4();

      if (*&v1036[v232])
      {
        v233 = *&v1036[v232];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v232;
        sub_21E13D3C4();

        v313 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v233 = *(v232 + v313);
      }

      swift_getKeyPath();
      *&v1040 = v233;

      sub_21E13D3C4();

      v314 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v315 = *(v233 + v314);

      v1023 = *(v315 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      *&v1040 = v232;
      sub_21E13D3C4();

      if (*&v1036[v232])
      {
        v316 = *&v1036[v232];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v232;
        sub_21E13D3C4();

        v338 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v316 = *(v232 + v338);
      }

      v339 = v989;
      swift_getKeyPath();
      *&v1040 = v316;

      sub_21E13D3C4();

      v340 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v341 = *(v316 + v340);

      v342 = *(v341 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      LOBYTE(v341) = sub_21E140914();
      v343 = v963;
      sub_21DF8C494(v990, v963, type metadata accessor for EmptyResultsView);
      v344 = v343 + *(v1012 + 36);
      *v344 = v341;
      *(v344 + 8) = v1023;
      *(v344 + 16) = 0;
      *(v344 + 24) = v342;
      *(v344 + 32) = 0;
      *(v344 + 40) = 0;
      sub_21E141CB4();
      sub_21E13F664();
      v345 = v343;
      v346 = v962;
      sub_21DF3DE9C(v345, v962, &qword_27CEA7F48);
      v347 = (v346 + *(v339 + 36));
      v348 = v1041;
      *v347 = v1040;
      v347[1] = v348;
      v347[2] = v1042;
      v349 = &qword_27CEA7F50;
      v350 = v964;
      sub_21DF3DE9C(v346, v964, &qword_27CEA7F50);
      sub_21DF236C0(v350, v195, &qword_27CEA7F50);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B574();
      v351 = v988;
      sub_21E1402F4();
      sub_21DF236C0(v351, v1018, &qword_27CEA7F78);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B4E8();
      sub_21DF8B600();
      v352 = v1019;
      sub_21E1402F4();
      sub_21DF23614(v351, &qword_27CEA7F78);
      sub_21DF236C0(v352, v1026, &qword_27CEA7F80);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B45C();
      sub_21DF8BB80();
      v353 = v1027;
      sub_21E1402F4();
      sub_21DF23614(v352, &qword_27CEA7F80);
      goto LABEL_159;
    }

    if (v209 != 1)
    {
      goto LABEL_33;
    }

    swift_getKeyPath();
    *&v1040 = v216;
    sub_21E13D3C4();

    if (*&v1036[v216])
    {
      v217 = *&v1036[v216];
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v216;
      sub_21E13D3C4();

      v242 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v217 = *(v216 + v242);
    }

    swift_getKeyPath();
    *&v1040 = v217;

    sub_21E13D3C4();

    v243 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v244 = *(v217 + v243);

    swift_getKeyPath();
    *&v1040 = v244;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v245 = *(v244 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback);
    v246 = *(v244 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8);
    sub_21DF355B8(v245, *(v244 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__feedback + 8));

    v979 = v207;
    if (v246 != 255)
    {
      if (v246)
      {
        v1023 = v245;
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v247 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v248 = sub_21E142184();
        v250 = v249;
        swift_getErrorValue();
        v251 = sub_21E142BC4();
        v253 = v252;
        v254 = swift_getKeyPath();
        v255 = v910;
        *v910 = v254;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v256 = v1010;
        v257 = (v255 + *(v1010 + 24));
        *v257 = v248;
        v257[1] = v250;
        v258 = (v255 + v256[7]);
        *v258 = v251;
        v258[1] = v253;
        v259 = (v255 + v256[8]);
        *v259 = 0;
        v259[1] = 0;
        *(v255 + v256[5]) = 0x402C000000000000;
        swift_getKeyPath();
        *&v1040 = v216;
        sub_21E13D3C4();

        if (*&v1036[v216])
        {
          v260 = *&v1036[v216];
        }

        else
        {
          swift_getKeyPath();
          *&v1040 = v216;
          sub_21E13D3C4();

          v593 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v260 = *(v216 + v593);
        }

        swift_getKeyPath();
        v1039[0] = v260;

        sub_21E13D3C4();

        v594 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v595 = *(v260 + v594);

        v596 = *(v595 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1051 = v216;
        sub_21E13D3C4();

        if (*&v1036[v216])
        {
          v597 = *&v1036[v216];
        }

        else
        {
          swift_getKeyPath();
          v1051 = v216;
          sub_21E13D3C4();

          v598 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v597 = *(v216 + v598);
        }

        v599 = v910;
        swift_getKeyPath();
        v1050 = v597;

        sub_21E13D3C4();

        v600 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v601 = *(v597 + v600);

        v602 = *(v601 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v601) = sub_21E140914();
        v603 = v599;
        v604 = v862;
        sub_21DF8C494(v603, v862, type metadata accessor for EmptyResultsView);
        v605 = v604 + *(v1012 + 36);
        *v605 = v601;
        *(v605 + 8) = v596;
        *(v605 + 16) = 0;
        *(v605 + 24) = v602;
        *(v605 + 32) = 0;
        *(v605 + 40) = 0;
        v606 = v864;
        sub_21DF3DE9C(v604, v864, &qword_27CEA7F48);
        sub_21DF236C0(v606, v916, &qword_27CEA7F48);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B204();
        sub_21DF8B84C();
        v607 = v917;
        sub_21E1402F4();
        sub_21DF236C0(v607, v933, &qword_27CEA7F38);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B7C0();
        v608 = v960;
        sub_21E1402F4();
        sub_21DF34758(v1023, v246);
        sub_21DF23614(v607, &qword_27CEA7F38);
        v609 = v606;
LABEL_228:
        sub_21DF23614(v609, &qword_27CEA7F48);
        v819 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008);
        (*(*(v819 - 8) + 56))(v608, 0, 1, v819);
        goto LABEL_229;
      }

      sub_21DF34758(v245, v246);
    }

    swift_getKeyPath();
    *&v1040 = v216;
    sub_21E13D3C4();

    v472 = *&v1036[v216];
    v822[0] = v204;
    if (v472)
    {
      v473 = v472;
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v216;
      sub_21E13D3C4();

      v475 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v473 = *(v216 + v475);
    }

    swift_getKeyPath();
    *&v1040 = v473;

    sub_21E13D3C4();

    v476 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v477 = *(v473 + v476);

    swift_getKeyPath();
    *&v1040 = v477;
    sub_21E13D3C4();

    v478 = *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme);
    v479 = *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 8);
    v481 = *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 16);
    v480 = *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 24);
    v482 = *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32);
    sub_21DF356CC(v478, v479, v481, v480, *(v477 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__acme + 32));

    if (v482 >> 8 <= 0xFE && (v482 & 0x100) != 0)
    {
      v1023 = v478;
      v1022 = v481;
      v1021 = v479;
      if (v482)
      {
        if (v482 == 1)
        {
          *&v1040 = v478;
          *(&v1040 + 1) = v479;
          *&v1041 = v481;
          *(&v1041 + 1) = v480;
          LOBYTE(v1042) = 1;
          sub_21DF34830();
          v483 = sub_21E142BC4();
          v485 = v484;
          v486 = swift_getKeyPath();
          v487 = v832;
          *v832 = v486;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
          swift_storeEnumTagMultiPayload();
          v488 = v1010;
          v489 = (v487 + *(v1010 + 24));
          *v489 = v483;
          v489[1] = v485;
          v490 = (v487 + v488[7]);
          *v490 = v481;
          v490[1] = v480;
          v491 = (v487 + v488[8]);
          *v491 = 0;
          v491[1] = 0;
          *(v487 + v488[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v492 = v1034;
          *&v1040 = v1034;
          v1020 = v480;

          sub_21E13D3C4();

          if (*&v1036[v492])
          {
            v493 = *&v1036[v492];
          }

          else
          {
            swift_getKeyPath();
            *&v1040 = v492;
            sub_21E13D3C4();

            v763 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v493 = *(v492 + v763);
          }

          swift_getKeyPath();
          v1039[0] = v493;

          sub_21E13D3C4();

          v764 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v765 = *(v493 + v764);

          v766 = *(v765 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1049[0] = v492;
          sub_21E13D3C4();

          if (*&v1036[v492])
          {
            v767 = *&v1036[v492];
          }

          else
          {
            swift_getKeyPath();
            v1049[0] = v492;
            sub_21E13D3C4();

            v768 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v767 = *(v492 + v768);
          }

          v769 = v1007;
          swift_getKeyPath();
          v1047 = v767;

          sub_21E13D3C4();

          v770 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v771 = *(v767 + v770);

          v772 = *(v771 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          v773 = sub_21E140914();
          v774 = v832;
          v775 = v832 + *(v1012 + 36);
          *v775 = v773;
          *(v775 + 1) = v766;
          *(v775 + 2) = 0;
          *(v775 + 3) = v772;
          *(v775 + 4) = 0;
          v775[40] = 0;
          sub_21DF236C0(v774, v836, &qword_27CEA7F48);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B204();
          v776 = v837;
          sub_21E1402F4();
          sub_21DF236C0(v776, v868, &qword_27CEA7F18);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B8D8();
          v777 = v869;
          sub_21E1402F4();
          sub_21DF346A0(v1023, v1021, v1022, v1020, v482);
          sub_21DF23614(v776, &qword_27CEA7F18);
          v778 = v774;
        }

        else
        {
          LODWORD(v1014) = v482;
          sub_21E142084();
          sub_21DF23B80();
          if (!sub_21E1426B4())
          {
            v655 = [objc_opt_self() mainBundle];
          }

          sub_21E13D374();
          v656 = sub_21E142184();
          v658 = v657;
          v659 = swift_getKeyPath();
          v660 = v834;
          *v834 = v659;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
          swift_storeEnumTagMultiPayload();
          v661 = v1010;
          v662 = (v660 + *(v1010 + 24));
          *v662 = v656;
          v662[1] = v658;
          v663 = (v660 + v661[7]);
          v664 = v1023;
          *v663 = v1023;
          v663[1] = v479;
          v665 = (v660 + v661[8]);
          *v665 = 0;
          v665[1] = 0;
          *(v660 + v661[5]) = 0x402C000000000000;
          swift_getKeyPath();
          v666 = v479;
          v667 = v1034;
          *&v1040 = v1034;
          sub_21DF356E4(v664, v666, v481, v480, 2, 1);
          sub_21E13D3C4();

          if (*&v1036[v667])
          {
            v668 = *&v1036[v667];
          }

          else
          {
            swift_getKeyPath();
            *&v1040 = v667;
            sub_21E13D3C4();

            v793 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v668 = *(v667 + v793);
          }

          swift_getKeyPath();
          v1039[0] = v668;

          sub_21E13D3C4();

          v794 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v795 = *(v668 + v794);

          v796 = *(v795 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

          swift_getKeyPath();
          v1049[0] = v667;
          sub_21E13D3C4();

          if (*&v1036[v667])
          {
            v797 = *&v1036[v667];
          }

          else
          {
            swift_getKeyPath();
            v1049[0] = v667;
            sub_21E13D3C4();

            v798 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
            swift_beginAccess();
            v797 = *(v667 + v798);
          }

          v769 = v1007;
          swift_getKeyPath();
          v1047 = v797;

          sub_21E13D3C4();

          v799 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
          swift_beginAccess();
          v800 = *(v797 + v799);

          v801 = *(v800 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

          LOBYTE(v800) = sub_21E140914();
          v802 = v828;
          sub_21DF8C494(v834, v828, type metadata accessor for EmptyResultsView);
          v803 = v802 + *(v1012 + 36);
          *v803 = v800;
          *(v803 + 8) = v796;
          *(v803 + 16) = 0;
          *(v803 + 24) = v801;
          *(v803 + 32) = 0;
          *(v803 + 40) = 0;
          v804 = v829;
          sub_21DF3DE9C(v802, v829, &qword_27CEA7F48);
          sub_21DF236C0(v804, v868, &qword_27CEA7F48);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B8D8();
          sub_21DF8B204();
          v777 = v869;
          sub_21E1402F4();
          sub_21DF346A0(v1023, v1021, v1022, v480, v1014);
          v778 = v804;
        }
      }

      else
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v641 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v642 = sub_21E142184();
        v644 = v643;
        v645 = swift_getKeyPath();
        v646 = v833;
        *v833 = v645;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v647 = v1010;
        v648 = (v646 + *(v1010 + 24));
        *v648 = v642;
        v648[1] = v644;
        v649 = (v646 + v647[7]);
        v650 = v1023;
        *v649 = v1023;
        v649[1] = v479;
        v651 = (v646 + v647[8]);
        *v651 = 0;
        v651[1] = 0;
        *(v646 + v647[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v652 = v479;
        v653 = v1034;
        *&v1040 = v1034;
        v1020 = v480;
        sub_21DF356E4(v650, v652, v481, v480, 0, 1);
        sub_21E13D3C4();

        if (*&v1036[v653])
        {
          v654 = *&v1036[v653];
        }

        else
        {
          swift_getKeyPath();
          *&v1040 = v653;
          sub_21E13D3C4();

          v779 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v654 = *(v653 + v779);
        }

        swift_getKeyPath();
        v1039[0] = v654;

        sub_21E13D3C4();

        v780 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v781 = *(v654 + v780);

        v782 = *(v781 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1049[0] = v653;
        sub_21E13D3C4();

        v783 = *&v1036[v653];
        LODWORD(v1014) = v482;
        if (v783)
        {
          v784 = v783;
        }

        else
        {
          swift_getKeyPath();
          v1049[0] = v653;
          sub_21E13D3C4();

          v785 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v784 = *(v653 + v785);
        }

        v769 = v1007;
        swift_getKeyPath();
        v1047 = v784;

        sub_21E13D3C4();

        v786 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v787 = *(v784 + v786);

        v788 = *(v787 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v787) = sub_21E140914();
        v789 = v827;
        sub_21DF8C494(v833, v827, type metadata accessor for EmptyResultsView);
        v790 = v789 + *(v1012 + 36);
        *v790 = v787;
        *(v790 + 8) = v782;
        *(v790 + 16) = 0;
        *(v790 + 24) = v788;
        *(v790 + 32) = 0;
        *(v790 + 40) = 0;
        v791 = v830;
        sub_21DF3DE9C(v789, v830, &qword_27CEA7F48);
        sub_21DF236C0(v791, v836, &qword_27CEA7F48);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B204();
        v792 = v837;
        sub_21E1402F4();
        sub_21DF236C0(v792, v868, &qword_27CEA7F18);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B8D8();
        v777 = v869;
        sub_21E1402F4();
        sub_21DF346A0(v1023, v1021, v1022, v1020, v1014);
        sub_21DF23614(v792, &qword_27CEA7F18);
        v778 = v791;
      }

      sub_21DF23614(v778, &qword_27CEA7F48);
      sub_21DF236C0(v777, v916, &qword_27CEA7F20);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B204();
      sub_21DF8B84C();
      v805 = v917;
      sub_21E1402F4();
      sub_21DF236C0(v805, v933, &qword_27CEA7F38);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B7C0();
      v608 = v960;
      sub_21E1402F4();
      sub_21DF23614(v805, &qword_27CEA7F38);
      sub_21DF23614(v777, &qword_27CEA7F20);
      v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008);
      (*(*(v806 - 8) + 56))(v608, 0, 1, v806);
      goto LABEL_230;
    }

    swift_getKeyPath();
    v494 = v1034;
    *&v1040 = v1034;
    sub_21E13D3C4();

    if (*&v1036[v494])
    {
      v495 = *&v1036[v494];
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v494;
      sub_21E13D3C4();

      v569 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v495 = *(v494 + v569);
    }

    swift_getKeyPath();
    v1039[0] = v495;

    sub_21E13D3C4();

    v570 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v571 = *(v495 + v570);

    swift_getKeyPath();
    v1039[0] = v571;
    sub_21E13D3C4();

    v572 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
    v1040 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
    v1041 = v572;
    v574 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
    v573 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
    v575 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
    v1042 = *(v571 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
    v1045 = v575;
    v1044 = v573;
    v1043 = v574;
    sub_21DF236C0(&v1040, v1039, &qword_27CEA6D60);

    if (v1045 != 255)
    {
      if (v1045)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v576 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        v577 = sub_21E142184();
        v579 = v578;
        swift_getErrorValue();
        v580 = sub_21E142BC4();
        v582 = v581;
        v583 = swift_getKeyPath();
        v584 = v831;
        *v831 = v583;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v585 = v1010;
        v586 = (v584 + *(v1010 + 24));
        *v586 = v577;
        v586[1] = v579;
        v587 = (v584 + v585[7]);
        *v587 = v580;
        v587[1] = v582;
        v588 = (v584 + v585[8]);
        *v588 = 0;
        v588[1] = 0;
        *(v584 + v585[5]) = 0x402C000000000000;
        swift_getKeyPath();
        v1039[0] = v494;
        sub_21E13D3C4();

        v589 = *&v1036[v494];
        v590 = v494;
        v591 = v1012;
        if (v589)
        {
          v592 = v589;
        }

        else
        {
          swift_getKeyPath();
          v1039[0] = v590;
          sub_21E13D3C4();

          v807 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v592 = *(v590 + v807);
        }

        swift_getKeyPath();
        v1046 = v592;

        sub_21E13D3C4();

        v808 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v809 = *(v592 + v808);

        v810 = *(v809 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1038 = v590;
        sub_21E13D3C4();

        if (*&v1036[v590])
        {
          v811 = *&v1036[v590];
        }

        else
        {
          swift_getKeyPath();
          v1038 = v590;
          sub_21E13D3C4();

          v812 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v811 = *(v590 + v812);
        }

        swift_getKeyPath();
        v1037 = v811;

        sub_21E13D3C4();

        v813 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v814 = *(v811 + v813);

        v815 = *(v814 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        LOBYTE(v814) = sub_21E140914();
        v816 = v823;
        sub_21DF8C494(v831, v823, type metadata accessor for EmptyResultsView);
        v817 = v816 + *(v591 + 36);
        *v817 = v814;
        *(v817 + 8) = v810;
        *(v817 + 16) = 0;
        *(v817 + 24) = v815;
        *(v817 + 32) = 0;
        *(v817 + 40) = 0;
        v818 = v824;
        sub_21DF3DE9C(v816, v824, &qword_27CEA7F48);
        sub_21DF236C0(v818, v933, &qword_27CEA7F48);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B7C0();
        sub_21DF8B204();
        v608 = v960;
        sub_21E1402F4();
        sub_21DF23614(&v1040, &qword_27CEA6D60);
        v609 = v818;
        goto LABEL_228;
      }

      sub_21DF23614(&v1040, &qword_27CEA6D60);
    }

    v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8008);
    v608 = v960;
    (*(*(v669 - 8) + 56))(v960, 1, 1, v669);
LABEL_229:
    v769 = v1007;
LABEL_230:
    sub_21DF236C0(v608, v1005, &qword_27CEA7F40);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B6B8(&qword_27CEA7FF8, &qword_27CEA7F40, &unk_21E148628, sub_21DF8B734);
    sub_21DF8B95C();
    sub_21E1402F4();
    sub_21DF236C0(v769, v1018, &qword_27CEA7F00);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B4E8();
    sub_21DF8B600();
    v820 = v1019;
    sub_21E1402F4();
    sub_21DF23614(v769, &qword_27CEA7F00);
    sub_21DF236C0(v820, v1026, &qword_27CEA7F80);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v821 = v1027;
    sub_21E1402F4();
    sub_21DF23614(v820, &qword_27CEA7F80);
    sub_21DF236C0(v821, v1031, &qword_27CEA7F88);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v821, &qword_27CEA7F88);
    v640 = v608;
    v715 = &qword_27CEA7F40;
    return sub_21DF23614(v640, v715);
  }

  if (v209 <= 5)
  {
    v220 = v1034;
    if (v209 != 4)
    {
      v979 = v207;
      swift_getKeyPath();
      *&v1040 = v220;
      sub_21E13D3C4();

      if (*&v1036[v220])
      {
        v221 = *&v1036[v220];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v220;
        sub_21E13D3C4();

        v281 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v221 = *(v220 + v281);
      }

      v282 = v966;
      swift_getKeyPath();
      *&v1040 = v221;

      sub_21E13D3C4();

      v283 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v284 = *(v221 + v283);

      swift_getKeyPath();
      *&v1040 = v284;
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3C4();

      v285 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__visualLookup;
      swift_beginAccess();
      v286 = v973;
      sub_21DF236C0(v284 + v285, v973, &qword_27CEA6CE8);

      v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6C88);
      if ((*(*(v287 - 8) + 48))(v286, 1, v287) == 1)
      {
        sub_21E142084();
        sub_21DF23B80();
        if (!sub_21E1426B4())
        {
          v288 = [objc_opt_self() mainBundle];
        }

        sub_21E13D374();
        *&v1040 = sub_21E142184();
        *(&v1040 + 1) = v289;
        sub_21DF8B37C();
        sub_21E141164();

        sub_21E13EBE4();
        v290 = sub_21E13F1A4();
        v291 = sub_21E142564();
        if (os_log_type_enabled(v290, v291))
        {
          v292 = swift_slowAlloc();
          v293 = swift_slowAlloc();
          *&v1040 = v293;
          *v292 = 136315138;
          *(v292 + 4) = sub_21E0E08C0(0xD000000000000045, 0x800000021E15BA10, &v1040);
          _os_log_impl(&dword_21DF05000, v290, v291, "%s", v292, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v293);
          MEMORY[0x223D540B0](v293, -1, -1);
          MEMORY[0x223D540B0](v292, -1, -1);
        }

        v294 = v1009;
        v295 = v1008;
        v296 = v993;
        v297 = v881;
        sub_21DF236C0(v282, v881, &qword_27CEA7EC8);
        (*(v294 + 8))(v938, v295);
        sub_21DF23614(v282, &qword_27CEA7EC8);
        sub_21DF236C0(v297, v957, &qword_27CEA7EC8);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B14C();
        sub_21DF8B2C0();
        v298 = v959;
        sub_21E1402F4();
        sub_21DF23614(v297, &qword_27CEA7EC8);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v505 = *v286;
          v506 = sub_21E1401C4();
          v507 = v858;
          *v858 = v506;
          *(v507 + 8) = 0;
          *(v507 + 16) = 0;
          v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80E0);
          sub_21DF82784(v505, v983, v507 + *(v508 + 44));

          sub_21DF236C0(v507, v909, &qword_27CEA7DE0);
          swift_storeEnumTagMultiPayload();
          sub_21DF23E5C(&qword_27CEA7FA0, &qword_27CEA7DE0);
          sub_21DF8B204();
          v509 = v906;
          sub_21E1402F4();
          sub_21DF236C0(v509, v957, &qword_27CEA7DD8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B14C();
          sub_21DF8B2C0();
          v510 = v959;
          sub_21E1402F4();
          v298 = v510;
          sub_21DF23614(v509, &qword_27CEA7DD8);
          sub_21DF23614(v507, &qword_27CEA7DE0);
          v296 = v993;
          v511 = v984;
LABEL_186:
          v349 = &qword_27CEA7DE8;
          sub_21DF236C0(v298, v511, &qword_27CEA7DE8);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B0C0();
          sub_21DF8D698(&qword_27CEA7FC8, type metadata accessor for VIUIDeveloperMenu);
          sub_21E1402F4();
          sub_21DF236C0(v296, v1031, &qword_27CEA7DC0);
          swift_storeEnumTagMultiPayload();
          sub_21DF8B3D0();
          sub_21DF8C3C4();
          sub_21E1402F4();
          sub_21DF23614(v296, &qword_27CEA7DC0);
          v640 = v298;
          goto LABEL_187;
        }

        (*(v961 + 32))(v924, v286, v982);
        *&v1040 = sub_21E13D8B4();
        *(&v1040 + 1) = v299;
        sub_21DF34830();
        v1041 = 0uLL;
        LOBYTE(v1042) = 0;
        v300 = sub_21E142BC4();
        v302 = v301;

        v303 = sub_21E13D8C4();
        v305 = v304;
        v306 = swift_getKeyPath();
        v307 = v920;
        *v920 = v306;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
        swift_storeEnumTagMultiPayload();
        v308 = v1010;
        v309 = (v307 + *(v1010 + 24));
        *v309 = v300;
        v309[1] = v302;
        v310 = (v307 + v308[7]);
        *v310 = v303;
        v310[1] = v305;
        v311 = (v307 + v308[8]);
        *v311 = 0;
        v311[1] = 0;
        *(v307 + v308[5]) = 0x402C000000000000;
        swift_getKeyPath();
        *&v1040 = v220;
        sub_21E13D3C4();

        if (*&v1036[v220])
        {
          v312 = *&v1036[v220];
        }

        else
        {
          swift_getKeyPath();
          *&v1040 = v220;
          sub_21E13D3C4();

          v690 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v312 = *(v220 + v690);
        }

        swift_getKeyPath();
        v1051 = v312;

        sub_21E13D3C4();

        v691 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v692 = *(v312 + v691);

        v693 = *(v692 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

        swift_getKeyPath();
        v1050 = v220;
        sub_21E13D3C4();

        if (*&v1036[v220])
        {
          v694 = *&v1036[v220];
        }

        else
        {
          swift_getKeyPath();
          v1050 = v220;
          sub_21E13D3C4();

          v695 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
          swift_beginAccess();
          v694 = *(v220 + v695);
        }

        swift_getKeyPath();
        v1049[0] = v694;

        sub_21E13D3C4();

        v696 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
        swift_beginAccess();
        v697 = *(v694 + v696);

        v698 = *(v697 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

        v699 = sub_21E140914();
        v700 = v920 + *(v1012 + 36);
        *v700 = v699;
        *(v700 + 1) = v693;
        *(v700 + 2) = 0;
        *(v700 + 3) = v698;
        *(v700 + 4) = 0;
        v700[40] = 0;
        v1047 = 0;
        v1048 = 0xE000000000000000;
        sub_21E142884();
        MEMORY[0x223D52A60](0xD000000000000047, 0x800000021E15BA60);
        sub_21DF8D698(&qword_27CEA6D90, MEMORY[0x277D78EF0]);
        v701 = sub_21E142BC4();
        MEMORY[0x223D52A60](v701);

        v703 = v1047;
        v702 = v1048;
        v704 = v852;
        sub_21E13EBE4();

        v705 = sub_21E13F1A4();
        v706 = sub_21E142564();

        if (os_log_type_enabled(v705, v706))
        {
          v707 = swift_slowAlloc();
          v708 = swift_slowAlloc();
          v1047 = v708;
          *v707 = 136315138;
          *(v707 + 4) = sub_21E0E08C0(v703, v702, &v1047);
          _os_log_impl(&dword_21DF05000, v705, v706, "%s", v707, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v708);
          MEMORY[0x223D540B0](v708, -1, -1);
          MEMORY[0x223D540B0](v707, -1, -1);
        }

        v709 = v1009;
        v710 = v1008;
        v296 = v993;
        v711 = v909;
        v712 = v920;
        v713 = v843;
        sub_21DF236C0(v920, v843, &qword_27CEA7F48);

        (*(v709 + 8))(v704, v710);
        sub_21DF23614(v712, &qword_27CEA7F48);
        sub_21DF236C0(v713, v711, &qword_27CEA7F48);
        swift_storeEnumTagMultiPayload();
        sub_21DF23E5C(&qword_27CEA7FA0, &qword_27CEA7DE0);
        sub_21DF8B204();
        v714 = v906;
        sub_21E1402F4();
        sub_21DF236C0(v714, v957, &qword_27CEA7DD8);
        swift_storeEnumTagMultiPayload();
        sub_21DF8B14C();
        sub_21DF8B2C0();
        v298 = v959;
        sub_21E1402F4();
        sub_21DF23614(v714, &qword_27CEA7DD8);
        sub_21DF23614(v713, &qword_27CEA7F48);
        (*(v961 + 8))(v924, v982);
      }

      v511 = v984;
      goto LABEL_186;
    }

    swift_getKeyPath();
    *&v1040 = v220;
    sub_21E13D3C4();

    if (*&v1036[v220])
    {
      v236 = *&v1036[v220];
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v220;
      sub_21E13D3C4();

      v408 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v236 = *(v220 + v408);
    }

    swift_getKeyPath();
    v1039[0] = v236;

    sub_21E13D3C4();

    v409 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v410 = *(v236 + v409);

    swift_getKeyPath();
    v1053 = v410;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v411 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__readAloud;
    swift_beginAccess();
    v412 = v968;
    sub_21DF236C0(v410 + v411, v968, &qword_27CEA6CD0);

    v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA0);
    if ((*(*(v413 - 8) + 48))(v412, 1, v413) == 1)
    {
      v1052 = xmmword_21E147C90;
      sub_21DF8B37C();
      v414 = v876;
      sub_21E141164();
      sub_21E13EBE4();
      v415 = sub_21E13F1A4();
      v416 = sub_21E142544();
      if (os_log_type_enabled(v415, v416))
      {
        v417 = swift_slowAlloc();
        v418 = swift_slowAlloc();
        *&v1052 = v418;
        *v417 = 136315138;
        *(v417 + 4) = sub_21E0E08C0(0xD000000000000054, 0x800000021E15BB30, &v1052);
        _os_log_impl(&dword_21DF05000, v415, v416, "%s", v417, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v418);
        MEMORY[0x223D540B0](v418, -1, -1);
        MEMORY[0x223D540B0](v417, -1, -1);
      }

      v419 = v1009;
      v420 = v1008;
      v421 = v948;
      v422 = v878;
      sub_21DF236C0(v414, v878, &qword_27CEA7EC8);
      (*(v419 + 8))(v935, v420);
      sub_21DF23614(v414, &qword_27CEA7EC8);
      sub_21DF236C0(v422, v947, &qword_27CEA7EC8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      sub_21E1402F4();
      sub_21DF23614(v422, &qword_27CEA7EC8);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v423 = *v412;
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v424 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      v425 = sub_21E142184();
      v427 = v426;
      swift_getErrorValue();
      v428 = sub_21E142BC4();
      v430 = v429;
      v431 = swift_getKeyPath();
      v432 = v874;
      *v874 = v431;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v433 = v1010;
      v434 = (v432 + *(v1010 + 24));
      *v434 = v425;
      v434[1] = v427;
      v435 = (v432 + v433[7]);
      *v435 = v428;
      v435[1] = v430;
      v436 = (v432 + v433[8]);
      *v436 = 0;
      v436[1] = 0;
      *(v432 + v433[5]) = 0x402C000000000000;
      *&v1052 = 0;
      *(&v1052 + 1) = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD00000000000004ELL, 0x800000021E15BBC0);
      v1036 = v423;
      swift_getErrorValue();
      v437 = sub_21E142BC4();
      MEMORY[0x223D52A60](v437);

      v438 = v1052;
      v439 = v848;
      sub_21E13EBE4();

      v440 = sub_21E13F1A4();
      v441 = sub_21E142564();

      if (os_log_type_enabled(v440, v441))
      {
        v442 = swift_slowAlloc();
        v443 = swift_slowAlloc();
        *&v1052 = v443;
        *v442 = 136315138;
        *(v442 + 4) = sub_21E0E08C0(v438, *(&v438 + 1), &v1052);
        _os_log_impl(&dword_21DF05000, v440, v441, "%s", v442, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v443);
        MEMORY[0x223D540B0](v443, -1, -1);
        MEMORY[0x223D540B0](v442, -1, -1);
      }

      v444 = v1009;
      v445 = v1008;
      v446 = v874;
      v447 = v841;
      sub_21DF8C7C8(v874, v841, type metadata accessor for EmptyResultsView);

      (*(v444 + 8))(v439, v445);
      sub_21DF8C830(v446, type metadata accessor for EmptyResultsView);
      sub_21DF8C7C8(v447, v895, type metadata accessor for EmptyResultsView);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80A8, &qword_27CEA7E50);
      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
      v448 = v897;
      sub_21E1402F4();
      sub_21DF236C0(v448, v947, &qword_27CEA7E48);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      v421 = v948;
      sub_21E1402F4();

      sub_21DF23614(v448, &qword_27CEA7E48);
      sub_21DF8C830(v447, type metadata accessor for EmptyResultsView);
    }

    else
    {
      v519 = v853;
      v518 = v854;
      (*(v854 + 32))(v853, v412, v888);
      v520 = sub_21E1401C4();
      v521 = v855;
      *v855 = v520;
      *(v521 + 8) = 0;
      *(v521 + 16) = 1;
      v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80F0);
      sub_21DF800CC(v519, v983, v521 + *(v522 + 44));
      sub_21DF236C0(v521, v895, &qword_27CEA7E50);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80A8, &qword_27CEA7E50);
      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
      v523 = v897;
      sub_21E1402F4();
      sub_21DF236C0(v523, v947, &qword_27CEA7E48);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C00C();
      sub_21DF8B2C0();
      v421 = v948;
      sub_21E1402F4();
      sub_21DF23614(v523, &qword_27CEA7E48);
      sub_21DF23614(v521, &qword_27CEA7E50);
      (*(v518 + 8))(v519, v888);
    }

    v349 = &qword_27CEA7E58;
    sub_21DF236C0(v421, v1000, &qword_27CEA7E58);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BF80();
    sub_21DF8C0F4();
    v524 = v1001;
    sub_21E1402F4();
    v525 = &qword_27CEA7E30;
    sub_21DF236C0(v524, v1021, &qword_27CEA7E30);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BC0C();
    sub_21DF8BEF4();
    v350 = v421;
    goto LABEL_158;
  }

  v210 = v1034;
  if (v209 == 6)
  {
    *&v1040 = 0x6974636172747865;
    *(&v1040 + 1) = 0xEB000000002D6E6FLL;
    swift_getKeyPath();
    v1039[0] = v210;
    sub_21E13D3C4();

    if (*&v1036[v210])
    {
      v235 = *&v1036[v210];
    }

    else
    {
      swift_getKeyPath();
      v1039[0] = v210;
      sub_21E13D3C4();

      v365 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v235 = *(v210 + v365);
    }

    v366 = v204;
    v367 = v970;
    v368 = v969;
    v369 = v971;
    (*(v970 + 16))(v969, v235 + OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel_id, v971);

    sub_21DF8D698(&qword_27CEA6CF0, MEMORY[0x277CC95F0]);
    v370 = sub_21E142AB4();
    MEMORY[0x223D52A60](v370);

    (*(v367 + 8))(v368, v369);
    v371 = v1040;
    swift_getKeyPath();
    *&v1040 = v210;
    sub_21E13D3C4();

    v372 = *&v1036[v210];
    v979 = v207;
    v822[0] = v366;
    if (v372)
    {
      v373 = v372;
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v210;
      sub_21E13D3C4();

      v374 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v373 = *(v210 + v374);
    }

    swift_getKeyPath();
    *&v1040 = v373;

    sub_21E13D3C4();

    v375 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v376 = *(v373 + v375);

    swift_getKeyPath();
    *&v1040 = v376;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v377 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__eventExtraction;
    swift_beginAccess();
    v378 = v972;
    sub_21DF236C0(v376 + v377, v972, &qword_27CEA6CC8);

    v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CA8);
    if ((*(*(v379 - 8) + 48))(v378, 1, v379) == 1)
    {
      v380 = v898;
      sub_21DF41DAC(v898);
      v1040 = v371;
      v381 = v922;
      sub_21E140334();

      v382 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder);
      v383 = v899;
      v384 = v956;
      v385 = v980;
      sub_21E1410F4();
      (*(v923 + 8))(v381, v385);
      sub_21DF8C830(v380, type metadata accessor for EventLookupPlaceholder);
      v386 = v900;
      v387 = v958;
      (*(v900 + 16))(v953, v383, v958);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      *&v1040 = v384;
      *(&v1040 + 1) = v385;
      *&v1041 = v382;
      *(&v1041 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      v388 = v978;
      sub_21E1402F4();
      (*(v386 + 8))(v383, v387);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v961 + 32))(v926, v378, v982);
      *&v1040 = sub_21E13D8B4();
      *(&v1040 + 1) = v389;
      sub_21DF34830();
      v1041 = 0uLL;
      LOBYTE(v1042) = 0;
      v1018 = sub_21E142BC4();
      v391 = v390;

      v392 = sub_21E13D8C4();
      v1019 = v371;
      v394 = v393;
      v395 = sub_21E13D8A4();
      v397 = v396;
      v398 = swift_getKeyPath();
      v399 = v840;
      *v840 = v398;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v400 = v1010;
      v401 = (v399 + *(v1010 + 24));
      *v401 = v1018;
      v401[1] = v391;
      v402 = (v399 + v400[7]);
      *v402 = v392;
      v402[1] = v394;
      v403 = (v399 + v400[8]);
      *v403 = v395;
      v403[1] = v397;
      *(v399 + v400[5]) = 0x402C000000000000;
      *&v1040 = v1019;
      *(&v1040 + 1) = *(&v371 + 1);
      v404 = v922;
      sub_21E140334();

      sub_21DF8D698(&qword_27CEA7FB0, type metadata accessor for EmptyResultsView);
      v405 = v980;
      sub_21E1410F4();
      (*(v923 + 8))(v404, v405);
      sub_21DF8C830(v399, type metadata accessor for EmptyResultsView);
      swift_getKeyPath();
      v406 = v1034;
      *&v1040 = v1034;
      sub_21E13D3C4();

      if (*&v1036[v406])
      {
        v407 = *&v1036[v406];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v406;
        sub_21E13D3C4();

        v716 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v407 = *(v406 + v716);
      }

      swift_getKeyPath();
      *&v1040 = v407;

      sub_21E13D3C4();

      v717 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v718 = *(v407 + v717);

      v719 = *(v718 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      *&v1040 = v406;
      sub_21E13D3C4();

      if (*&v1036[v406])
      {
        v720 = *&v1036[v406];
      }

      else
      {
        swift_getKeyPath();
        *&v1040 = v406;
        sub_21E13D3C4();

        v721 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v720 = *(v406 + v721);
      }

      swift_getKeyPath();
      *&v1040 = v720;

      sub_21E13D3C4();

      v722 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v723 = *(v720 + v722);

      v724 = *(v723 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      v725 = sub_21E140914();
      v726 = v925 + *(v927 + 36);
      *v726 = v725;
      *(v726 + 8) = v719;
      *(v726 + 16) = 0;
      *(v726 + 24) = v724;
      *(v726 + 32) = 0;
      *(v726 + 40) = 0;
      *&v1040 = 0;
      *(&v1040 + 1) = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD000000000000052, 0x800000021E15BAB0);
      sub_21DF8D698(&qword_27CEA6D90, MEMORY[0x277D78EF0]);
      v727 = sub_21E142BC4();
      MEMORY[0x223D52A60](v727);

      v728 = v1040;
      sub_21E13EBE4();

      v729 = sub_21E13F1A4();
      v730 = sub_21E142564();

      if (os_log_type_enabled(v729, v730))
      {
        v731 = swift_slowAlloc();
        v732 = swift_slowAlloc();
        *&v1040 = v732;
        *v731 = 136315138;
        *(v731 + 4) = sub_21E0E08C0(v728, *(&v728 + 1), &v1040);
        _os_log_impl(&dword_21DF05000, v729, v730, "%s", v731, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v732);
        MEMORY[0x223D540B0](v732, -1, -1);
        MEMORY[0x223D540B0](v731, -1, -1);
      }

      v733 = v1009;
      v734 = v1008;
      v388 = v978;
      v735 = v925;
      v736 = v859;
      sub_21DF236C0(v925, v859, &qword_27CEA7DF8);

      (*(v733 + 8))(v890, v734);
      sub_21DF23614(v735, &qword_27CEA7DF8);
      sub_21DF236C0(v736, v905, &qword_27CEA7DF8);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80C0, &qword_27CEA7E18);
      sub_21DF8C2B8();
      v737 = v907;
      sub_21E1402F4();
      sub_21DF236C0(v737, v953, &qword_27CEA7E10);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      v738 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder);
      *&v1040 = v956;
      *(&v1040 + 1) = v980;
      *&v1041 = v738;
      *(&v1041 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      sub_21E1402F4();
      sub_21DF23614(v737, &qword_27CEA7E10);
      sub_21DF23614(v736, &qword_27CEA7DF8);
      (*(v961 + 8))(v926, v982);
    }

    else
    {
      v512 = v856;
      sub_21DF8C494(v378, v856, type metadata accessor for EventExtractionResult);
      v513 = sub_21E1401C4();
      v514 = v857;
      *v857 = v513;
      *(v514 + 8) = 0;
      *(v514 + 16) = 1;
      v515 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA80E8);
      sub_21DF808D4(v512, v983, v371, *(&v371 + 1), v514 + *(v515 + 44));

      sub_21DF236C0(v514, v905, &qword_27CEA7E18);
      swift_storeEnumTagMultiPayload();
      sub_21DF23E5C(&qword_27CEA80C0, &qword_27CEA7E18);
      sub_21DF8C2B8();
      v516 = v907;
      sub_21E1402F4();
      sub_21DF236C0(v516, v953, &qword_27CEA7E10);
      swift_storeEnumTagMultiPayload();
      sub_21DF8C200();
      v517 = sub_21DF8D698(&qword_27CEA80D0, type metadata accessor for EventLookupPlaceholder);
      *&v1040 = v956;
      *(&v1040 + 1) = v980;
      *&v1041 = v517;
      *(&v1041 + 1) = MEMORY[0x277CDE2B8];
      swift_getOpaqueTypeConformance2();
      v388 = v978;
      sub_21E1402F4();
      sub_21DF23614(v516, &qword_27CEA7E10);
      sub_21DF23614(v514, &qword_27CEA7E18);
      sub_21DF8C830(v512, type metadata accessor for EventExtractionResult);
    }

    v214 = &qword_27CEA7E20;
    sub_21DF236C0(v388, v1000, &qword_27CEA7E20);
    swift_storeEnumTagMultiPayload();
    sub_21DF8BF80();
    sub_21DF8C0F4();
    v276 = v388;
    v688 = v1001;
    sub_21E1402F4();
    v689 = &qword_27CEA7E30;
    sub_21DF236C0(v688, v1021, &qword_27CEA7E30);
LABEL_197:
    swift_storeEnumTagMultiPayload();
    sub_21DF8BC0C();
    sub_21DF8BEF4();
    v739 = v1022;
    sub_21E1402F4();
    sub_21DF23614(v688, v689);
    sub_21DF236C0(v739, v1026, &qword_27CEA7EA0);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v740 = v1027;
    sub_21E1402F4();
    sub_21DF23614(v739, &qword_27CEA7EA0);
    sub_21DF236C0(v740, v1031, &qword_27CEA7F88);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v740, &qword_27CEA7F88);
    v215 = v276;
    return sub_21DF23614(v215, v214);
  }

  if (v209 == 7)
  {
    swift_getKeyPath();
    *&v1040 = v210;
    sub_21E13D3C4();

    if (*&v1036[v210])
    {
      v237 = *&v1036[v210];
    }

    else
    {
      swift_getKeyPath();
      *&v1040 = v210;
      sub_21E13D3C4();

      v449 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v237 = *(v210 + v449);
    }

    swift_getKeyPath();
    v1039[0] = v237;

    sub_21E13D3C4();

    v450 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v451 = *(v237 + v450);

    swift_getKeyPath();
    v1053 = v451;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v452 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__geoLookup;
    swift_beginAccess();
    v453 = v965;
    sub_21DF236C0(v451 + v452, v965, &qword_27CEA6CC0);

    v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6CB0);
    if ((*(*(v454 - 8) + 48))(v453, 1, v454) == 1)
    {
      sub_21E142084();
      sub_21DF23B80();
      if (!sub_21E1426B4())
      {
        v455 = [objc_opt_self() mainBundle];
      }

      sub_21E13D374();
      *&v1052 = sub_21E142184();
      *(&v1052 + 1) = v456;
      sub_21DF8B37C();
      v457 = v879;
      sub_21E141164();

      sub_21E13EBE4();
      v458 = sub_21E13F1A4();
      v459 = sub_21E142544();
      v460 = os_log_type_enabled(v458, v459);
      v461 = v1007;
      v462 = v975;
      if (v460)
      {
        v463 = swift_slowAlloc();
        v464 = swift_slowAlloc();
        *&v1052 = v464;
        *v463 = 136315138;
        *(v463 + 4) = sub_21E0E08C0(0xD000000000000054, 0x800000021E15BD90, &v1052);
        _os_log_impl(&dword_21DF05000, v458, v459, "%s", v463, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v464);
        MEMORY[0x223D540B0](v464, -1, -1);
        MEMORY[0x223D540B0](v463, -1, -1);
      }

      v465 = v1009;
      v466 = v1008;
      v467 = v880;
      sub_21DF236C0(v457, v880, &qword_27CEA7EC8);
      (*(v465 + 8))(v936, v466);
      sub_21DF23614(v457, &qword_27CEA7EC8);
      sub_21DF236C0(v467, v941, &qword_27CEA7EC8);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      sub_21E1402F4();
      sub_21DF23614(v467, &qword_27CEA7EC8);
    }

    else if (swift_getEnumCaseMultiPayload() == 1)
    {
      v1023 = *v453;
      swift_getErrorValue();
      v1022 = sub_21E142BC4();
      v1021 = v468;
      swift_getKeyPath();
      v469 = v1034;
      *&v1052 = v1034;
      sub_21E13D3C4();

      v470 = *&v1036[v469];
      v979 = v207;
      if (v470)
      {
        v471 = v470;
      }

      else
      {
        swift_getKeyPath();
        *&v1052 = v469;
        sub_21E13D3C4();

        v741 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v471 = *(v469 + v741);
      }

      swift_getKeyPath();
      v1051 = v471;

      sub_21E13D3C4();

      v742 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v743 = *(v471 + v742);

      v1020 = *(v743 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardTopPadding);

      swift_getKeyPath();
      v1050 = v469;
      sub_21E13D3C4();

      if (*&v1036[v469])
      {
        v744 = *&v1036[v469];
      }

      else
      {
        swift_getKeyPath();
        v1050 = v469;
        sub_21E13D3C4();

        v745 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v744 = *(v469 + v745);
      }

      swift_getKeyPath();
      v1049[0] = v744;

      sub_21E13D3C4();

      v746 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v747 = *(v744 + v746);

      v748 = *(v747 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel_cardBottomPadding);

      v749 = sub_21E140914();
      LOBYTE(v1046) = 0;
      v1047 = 0;
      v1048 = 0xE000000000000000;
      sub_21E142884();
      MEMORY[0x223D52A60](0xD00000000000004ELL, 0x800000021E15BDF0);
      swift_getErrorValue();
      v750 = sub_21E142BC4();
      MEMORY[0x223D52A60](v750);

      v752 = v1047;
      v751 = v1048;
      sub_21E13EBE4();

      v753 = sub_21E13F1A4();
      v754 = sub_21E142564();

      if (os_log_type_enabled(v753, v754))
      {
        v755 = swift_slowAlloc();
        v756 = swift_slowAlloc();
        v1047 = v756;
        *v755 = 136315138;
        *(v755 + 4) = sub_21E0E08C0(v752, v751, &v1047);
        _os_log_impl(&dword_21DF05000, v753, v754, "%s", v755, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v756);
        MEMORY[0x223D540B0](v756, -1, -1);
        MEMORY[0x223D540B0](v755, -1, -1);
      }

      v461 = v1007;
      v462 = v975;
      (*(v1009 + 8))(v882, v1008);
      v757 = v887;
      v758 = v1021;
      *v887 = v1022;
      v757[1] = v758;
      *(v757 + 16) = v749;
      v757[3] = v1020;
      v757[4] = 0;
      v757[5] = v748;
      v757[6] = 0;
      *(v757 + 56) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
      sub_21DF23E5C(&qword_27CEA8038, &qword_27CEA7EE8);
      sub_21DF8BAA0();
      v759 = v889;
      sub_21E1402F4();
      sub_21DF236C0(v759, v941, &qword_27CEA7EE0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      sub_21E1402F4();

      sub_21DF23614(v759, &qword_27CEA7EE0);
    }

    else
    {
      v526 = v921;
      sub_21DF8C494(v453, v921, type metadata accessor for GeoLookupCardResult);
      v527 = sub_21E1401C4();
      v528 = v875;
      *v875 = v527;
      v528[1] = 0;
      *(v528 + 16) = 1;
      v529 = v528 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8100) + 44);
      v530 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA6D30);
      v531 = v530[12];
      v532 = v530[16];
      v533 = v530[20];
      v534 = v530[24];
      v535 = sub_21E13E144();
      v536 = v844;
      (*(*(v535 - 8) + 16))(v844, v526, v535);
      v537 = v842;
      v1035 = *(v526 + *(v842 + 20));
      *&v536[v531] = v1035;
      *&v536[v532] = *(v526 + v537[6]);
      *&v536[v533] = *(v526 + v537[7]);
      v1036 = *(v526 + v537[8]);
      *&v536[v534] = v1036;
      v539 = v846;
      v538 = v847;
      (*(v846 + 104))(v536, *MEMORY[0x277D79100], v847);
      v540 = *(v539 + 16);
      v541 = v845;
      v540(v845, v536, v538);
      v540(v529, v541, v538);
      v542 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8108);
      v543 = &v529[v542[9]];
      *v543 = 0;
      *(v543 + 1) = 0;
      v529[v542[10]] = 0;
      v544 = v542[11];

      sub_21DF7EF90(v921, v983, &v529[v544]);
      v545 = *(v539 + 8);
      v545(v541, v538);
      v545(v536, v538);
      v546 = v875;
      sub_21DF236C0(v875, v887, &qword_27CEA7EE8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA8048);
      sub_21DF23E5C(&qword_27CEA8038, &qword_27CEA7EE8);
      sub_21DF8BAA0();
      v547 = v889;
      sub_21E1402F4();
      sub_21DF236C0(v547, v941, &qword_27CEA7EE0);
      swift_storeEnumTagMultiPayload();
      sub_21DF8B9E8();
      sub_21DF8B2C0();
      v462 = v975;
      sub_21E1402F4();
      sub_21DF23614(v547, &qword_27CEA7EE0);
      sub_21DF23614(v546, &qword_27CEA7EE8);
      sub_21DF8C830(v921, type metadata accessor for GeoLookupCardResult);
      v461 = v1007;
    }

    sub_21DF236C0(v462, v1005, &qword_27CEA7EF0);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B6B8(&qword_27CEA7FF8, &qword_27CEA7F40, &unk_21E148628, sub_21DF8B734);
    sub_21DF8B95C();
    sub_21E1402F4();
    v760 = v462;
    sub_21DF236C0(v461, v1018, &qword_27CEA7F00);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B4E8();
    sub_21DF8B600();
    v761 = v1019;
    sub_21E1402F4();
    sub_21DF23614(v461, &qword_27CEA7F00);
    sub_21DF236C0(v761, v1026, &qword_27CEA7F80);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B45C();
    sub_21DF8BB80();
    v762 = v1027;
    sub_21E1402F4();
    sub_21DF23614(v761, &qword_27CEA7F80);
    sub_21DF236C0(v762, v1031, &qword_27CEA7F88);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v762, &qword_27CEA7F88);
    v640 = v760;
    v715 = &qword_27CEA7EF0;
    return sub_21DF23614(v640, v715);
  }

  if (v209 != 8)
  {
LABEL_33:
    v238 = *(v209 + 16);
    v239 = v974;
    *v974 = v238;
    sub_21DF5706C(v238);
    type metadata accessor for NewSaliencyModel();

    sub_21E141AD4();
    sub_21DF8C7C8(v239, v984, type metadata accessor for VIUIDeveloperMenu);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B0C0();
    sub_21DF8D698(&qword_27CEA7FC8, type metadata accessor for VIUIDeveloperMenu);
    v240 = v993;
    sub_21E1402F4();
    sub_21DF236C0(v240, v1031, &qword_27CEA7DC0);
    swift_storeEnumTagMultiPayload();
    sub_21DF8B3D0();
    sub_21DF8C3C4();
    sub_21E1402F4();
    sub_21DF23614(v240, &qword_27CEA7DC0);
    sub_21DF8C830(v239, type metadata accessor for VIUIDeveloperMenu);
    return sub_21DF5AF24(v209);
  }

  swift_storeEnumTagMultiPayload();
  sub_21DF8B574();
  v211 = v988;
  sub_21E1402F4();
  sub_21DF236C0(v211, v1018, &qword_27CEA7F78);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B4E8();
  sub_21DF8B600();
  v212 = v1019;
  sub_21E1402F4();
  sub_21DF23614(v211, &qword_27CEA7F78);
  sub_21DF236C0(v212, v1026, &qword_27CEA7F80);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B45C();
  sub_21DF8BB80();
  v213 = v1027;
  sub_21E1402F4();
  sub_21DF23614(v212, &qword_27CEA7F80);
  v214 = &qword_27CEA7F88;
  sub_21DF236C0(v213, v1031, &qword_27CEA7F88);
  swift_storeEnumTagMultiPayload();
  sub_21DF8B3D0();
  sub_21DF8C3C4();
  sub_21E1402F4();
  v215 = v213;
  return sub_21DF23614(v215, v214);
}

uint64_t sub_21DF744CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v6 = sub_21E13F734();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CardContainer();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E1414A4();
  v20 = type metadata accessor for CardContainer;
  sub_21DF8C7C8(a2, v13, type metadata accessor for CardContainer);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = (v14 + v12 + *(v7 + 80)) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_21DF8C494(v13, v16 + v14, type metadata accessor for CardContainer);
  (*(v7 + 32))(v16 + v15, v9, v19);
  sub_21DF8C7C8(v21, v13, v20);
  v17 = swift_allocObject();
  result = sub_21DF8C494(v13, v17 + v14, type metadata accessor for CardContainer);
  *a3 = v22;
  a3[1] = sub_21DF8DAEC;
  a3[2] = v16;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = sub_21DF8DB20;
  a3[6] = 0;
  a3[7] = sub_21DF8DB04;
  a3[8] = v17;
  return result;
}

uint64_t sub_21DF7474C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D48);
  MEMORY[0x28223BE20](v33);
  v3 = &v32 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D50);
  MEMORY[0x28223BE20](v34);
  v5 = &v32 - v4;
  v6 = sub_21E13D834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v39 = v10;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__entryPoint;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  LOBYTE(v11) = sub_21E13D7F4();
  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
    v13 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
    v32 = v5;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      swift_getKeyPath();
      v38 = v10;
      sub_21E13D3C4();

      v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v14 = *(v10 + v15);
    }

    swift_getKeyPath();
    v38 = v14;
    sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

    sub_21E13D3C4();

    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    if (*(v10 + v12))
    {
      v16 = *(v10 + v12);
    }

    else
    {
      swift_getKeyPath();
      v38 = v10;
      sub_21E13D3C4();

      v17 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v16 = *(v10 + v17);
    }

    v18 = v32;
    swift_getKeyPath();
    v38 = v16;

    sub_21E13D3C4();

    v19 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v20 = *(v16 + v19);
    sub_21DF5706C(v20);

    if (v20 == 6)
    {
      v21 = sub_21E1414A4();
      v22 = v18 + *(v34 + 36);
      sub_21E141C04();
      v23 = sub_21E140914();
      v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D70) + 36)] = v23;
      *v18 = v21;
      sub_21DF236C0(v18, v3, &qword_27CEA7D50);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D58);
      sub_21DF8AD70();
      sub_21DF8AE28();
      sub_21E1402F4();
      return sub_21DF23614(v18, &qword_27CEA7D50);
    }

    sub_21DF5AF24(v20);
  }

  v25 = sub_21E1414A4();
  swift_getKeyPath();
  v38 = v10;
  sub_21E13D3C4();

  if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v26 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v38 = v10;
    sub_21E13D3C4();

    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v26 = *(v10 + v27);
  }

  swift_getKeyPath();
  v37 = v26;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v28 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
  swift_beginAccess();
  v29 = *(v26 + v28);

  swift_getKeyPath();
  v36 = v29;
  sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
  sub_21E13D3C4();

  v30 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__onboardingExperience;
  swift_beginAccess();
  LODWORD(v30) = *(v29 + v30);

  sub_21E13F6B4();
  sub_21E13F694();
  v31 = sub_21E13F6C4();

  *v3 = v25;
  v3[8] = (v30 < 6) & (0x2Cu >> v30);
  v3[9] = 1;
  *(v3 + 2) = v31;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D58);
  sub_21DF8AD70();
  sub_21DF8AE28();
  return sub_21E1402F4();
}

uint64_t sub_21DF74F68@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a2;
  v90 = a1;
  v94 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v73 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B18);
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v73 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B10);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v11 = &v73 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B00);
  v86 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v73 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AF8);
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = &v73 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AF0);
  v91 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v95 = &v73 - v14;
  v99 = a2;
  sub_21E1401C4();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A28);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B20);
  *&v71 = sub_21DF89960();
  *(&v71 + 1) = sub_21DF8B6B8(&qword_27CEA7B28, &qword_27CEA7B20, &unk_21E1481F0, sub_21DF89B98);
  sub_21E140E24();
  sub_21E140354();
  v17 = sub_21E140424();
  v18 = *(v17 - 8);
  v80 = *(v18 + 56);
  v81 = v17;
  v79 = v18 + 56;
  v80(v6, 0, 1);
  v19 = sub_21E140924();
  *&v103 = v15;
  *(&v103 + 1) = v16;
  v104 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v11;
  v21 = v97;
  v77 = OpaqueTypeConformance2;
  MEMORY[0x223D51970](v6, v19, v97);
  v90 = v6;
  sub_21DF23614(v6, &qword_27CEA7D10);
  (*(v96 + 8))(v9, v21);
  v78 = type metadata accessor for CardContainer();
  v22 = *(v98 + *(v78 + 28));
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v103 = v22;
  v24 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v25 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v26 = *(v22 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v103 = v22;
    sub_21E13D3C4();

    v27 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v26 = *(v22 + v27);
  }

  swift_getKeyPath();
  *&v103 = v26;
  v28 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v96 = v28;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v103 = v22;
  sub_21E13D3C4();

  v29 = *(v22 + v25);
  v75 = v23;
  v76 = v24;
  v73 = v22;
  v74 = v25;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    swift_getKeyPath();
    *&v103 = v22;
    sub_21E13D3C4();

    v31 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v30 = *(v22 + v31);
  }

  swift_getKeyPath();
  *&v103 = v30;

  sub_21E13D3C4();

  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v33 = *(v30 + v32);
  sub_21DF5706C(v33);

  *&v103 = v33;
  LOBYTE(v33) = sub_21DF31604(&v103);

  sub_21DF5AF24(v103);
  v34 = sub_21E140924();
  *&v103 = v97;
  *(&v103 + 1) = v77;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = (v33 & 1) == 0;
  v38 = v84;
  v37 = v85;
  v39 = v82;
  MEMORY[0x223D51990](v36, v34, v85, v35);
  v40 = (*(v83 + 8))(v39, v37);
  MEMORY[0x28223BE20](v40);
  v41 = v98;
  sub_21E1401C4();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B08);
  *&v103 = v37;
  *(&v103 + 1) = v35;
  *&v72 = swift_getOpaqueTypeConformance2();
  *(&v72 + 1) = sub_21DF8A22C();
  v43 = v87;
  v44 = v88;
  sub_21E140E24();
  (*(v86 + 8))(v38, v44);
  v45 = v90;
  sub_21E140354();
  (v80)(v45, 0, 1, v81);
  v46 = sub_21E140934();
  *&v103 = v44;
  *(&v103 + 1) = v42;
  v104 = v72;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v95;
  v49 = v92;
  MEMORY[0x223D51970](v45, v46, v92, v47);
  sub_21DF23614(v45, &qword_27CEA7D10);
  v50 = v43;
  v51 = 1;
  (*(v89 + 8))(v50, v49);
  v103 = *(v41 + *(v78 + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7090);
  sub_21E141714();
  if (!v102[0])
  {
    swift_getKeyPath();
    v52 = v73;
    *&v103 = v73;
    sub_21E13D3C4();

    v53 = v74;
    if (*(v52 + v74))
    {
      v54 = *(v52 + v74);
    }

    else
    {
      swift_getKeyPath();
      *&v103 = v52;
      sub_21E13D3C4();

      v55 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v54 = *(v52 + v55);
    }

    swift_getKeyPath();
    v102[0] = v54;

    sub_21E13D3C4();

    v56 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v57 = *(v54 + v56);

    swift_getKeyPath();
    v102[0] = v57;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v58 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 16);
    v103 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch);
    v104 = v58;
    v60 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 48);
    v59 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 64);
    v61 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 32);
    v108 = *(v57 + OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__imageSearch + 80);
    v106 = v60;
    v107 = v59;
    v105 = v61;
    sub_21DF236C0(&v103, v102, &qword_27CEA6D60);

    if (v108 == 255)
    {
      v51 = 1;
    }

    else
    {
      sub_21DF23614(&v103, &qword_27CEA6D60);
      swift_getKeyPath();
      v102[0] = v52;
      sub_21E13D3C4();

      if (*(v52 + v53))
      {
        v62 = *(v52 + v53);
      }

      else
      {
        swift_getKeyPath();
        v102[0] = v52;
        sub_21E13D3C4();

        v63 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
        swift_beginAccess();
        v62 = *(v52 + v63);
      }

      swift_getKeyPath();
      v101 = v62;

      sub_21E13D3C4();

      v64 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
      swift_beginAccess();
      v65 = *(v62 + v64);

      swift_getKeyPath();
      v100 = v65;
      sub_21E13D3C4();

      v66 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
      swift_beginAccess();
      v51 = *(v65 + v66);
    }

    v48 = v95;
  }

  v67 = sub_21E140934();
  *&v103 = v49;
  *(&v103 + 1) = v47;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v93;
  MEMORY[0x223D51990](v51, v67, v93, v68);
  return (*(v91 + 8))(v48, v69);
}

char *sub_21DF75D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v230 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v193 = (&v184 - v4);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BB8);
  MEMORY[0x28223BE20](v225);
  v194 = &v184 - v5;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D20);
  v210 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v208 = &v184 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D28);
  MEMORY[0x28223BE20](v7);
  v9 = &v184 - v8;
  v10 = sub_21E13F9D4();
  v196 = *(v10 - 8);
  v197 = v10;
  MEMORY[0x28223BE20](v10);
  v195 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C80);
  v205 = *(v12 - 8);
  v206 = v12;
  MEMORY[0x28223BE20](v12);
  v200 = &v184 - v13;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA0);
  MEMORY[0x28223BE20](v198);
  v201 = &v184 - v14;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B90);
  MEMORY[0x28223BE20](v199);
  v204 = &v184 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B80);
  MEMORY[0x28223BE20](v203);
  v202 = &v184 - v16;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B68);
  MEMORY[0x28223BE20](v216);
  v207 = &v184 - v17;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D30);
  v232 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v209 = &v184 - v18;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D38);
  MEMORY[0x28223BE20](v213);
  v215 = &v184 - v19;
  v20 = sub_21E140174();
  v221 = *(v20 - 8);
  v222 = v20;
  MEMORY[0x28223BE20](v20);
  v220 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CardContainer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v188 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScrollableSegmentedControl();
  MEMORY[0x28223BE20](v25 - 8);
  v189 = (&v184 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B50);
  MEMORY[0x28223BE20](v211);
  v185 = &v184 - v27;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D40);
  v191 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v190 = &v184 - v28;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B48);
  MEMORY[0x28223BE20](v223);
  v214 = &v184 - v29;
  v192 = v22;
  v30 = *(v22 + 28);
  v219 = a1;
  v31 = *(a1 + v30);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v257 = v31;
  v33 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v231 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v34 = *(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v218 = v7;
  v186 = v23;
  v187 = v24;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v31;
    sub_21E13D3C4();

    v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v35 = *(v31 + v36);
  }

  swift_getKeyPath();
  *&v257 = v35;
  v37 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v227 = v37;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v257 = v31;
  sub_21E13D3C4();

  v38 = *(v31 + v231);
  v228 = v33;
  v229 = v31;
  v224 = v9;
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v31;
    sub_21E13D3C4();

    v40 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v39 = *(v31 + v40);
  }

  swift_getKeyPath();
  *&v257 = v39;

  sub_21E13D3C4();

  v41 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v42 = *(v39 + v41);
  sub_21DF5706C(v42);

  *&v257 = v42;
  LOBYTE(v42) = sub_21DF31604(&v257);

  sub_21DF5AF24(v257);
  swift_getKeyPath();
  if ((v42 & 1) == 0)
  {
    v45 = v229;
    *&v257 = v229;
    sub_21E13D3C4();

    if (*(v45 + v231))
    {
      v46 = *(v45 + v231);
    }

    else
    {
      swift_getKeyPath();
      *&v257 = v45;
      sub_21E13D3C4();

      v110 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v46 = *(v45 + v110);
    }

    swift_getKeyPath();
    *&v240 = v46;

    sub_21E13D3C4();

    v111 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v112 = *(v46 + v111);
    sub_21DF5706C(v112);

    if (v112 < 9)
    {
      sub_21DF5AF24(v112);
      v113 = 1;
LABEL_56:
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B38);
      return (*(*(v183 - 8) + 56))(v230, v113, 1, v183);
    }

    v114 = *(v112 + 16);
    sub_21DF5706C(v114);
    sub_21DF5AF24(v112);
    v115 = sub_21E140004();
    v116 = v193;
    *v193 = v115;
    v116[1] = 0;
    *(v116 + 16) = 1;
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB8);
    sub_21DF7A18C(v219, v114, &unk_282F3DFA8, sub_21DF8ACEC, sub_21DF77A38, v116 + *(v117 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
    v118 = swift_allocObject();
    *(v118 + 16) = xmmword_21E147C70;
    v119 = sub_21E140924();
    *(v118 + 32) = v119;
    v120 = sub_21E140944();
    *(v118 + 33) = v120;
    v121 = sub_21E140964();
    *(v118 + 34) = v121;
    v122 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v119)
    {
      v122 = sub_21E140954();
    }

    sub_21E140954();
    if (sub_21E140954() != v120)
    {
      v122 = sub_21E140954();
    }

    v124 = v224;
    v123 = v225;

    sub_21E140954();
    if (sub_21E140954() != v121)
    {
      v122 = sub_21E140954();
    }

    v125 = v226;
    v126 = v116;
    v127 = v194;
    sub_21DF3DE9C(v126, v194, &qword_27CEA7BD0);
    v128 = v127 + *(v123 + 36);
    *v128 = v122;
    *(v128 + 8) = 0u;
    *(v128 + 24) = 0u;
    *(v128 + 40) = 1;
    v129 = v220;
    sub_21E140164();
    v130 = sub_21DF8A174();
    v131 = v208;
    sub_21E141044();
    (*(v221 + 8))(v129, v222);
    sub_21DF23614(v127, &qword_27CEA7BB8);
    v132 = v210;
    (*(v210 + 16))(v124, v131, v125);
    swift_storeEnumTagMultiPayload();
    sub_21DF89C68();
    *&v250 = v123;
    *(&v250 + 1) = v130;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    sub_21DF5AF24(v114);
    (*(v132 + 8))(v131, v125);
LABEL_55:
    v113 = 0;
    goto LABEL_56;
  }

  v43 = v229;
  *&v257 = v229;
  sub_21E13D3C4();

  if (*(v43 + v231))
  {
    v44 = *(v43 + v231);
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v43;
    sub_21E13D3C4();

    v47 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v44 = *(v43 + v47);
  }

  swift_getKeyPath();
  *&v257 = v44;

  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v49 = *(v44 + v48);

  if (v49 >> 62)
  {
    v50 = sub_21E1427B4();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 < 2)
  {
    v53 = (v219 + *(v192 + 56));
    v54 = *v53;
    v55 = *(v53 + 2);
    v257 = v54;
    *&v258 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79F8);
    sub_21E141714();
    v257 = v240;
    sub_21DF252E0();
    v56 = sub_21E140C94();
    v58 = v57;
    v60 = v59;
    LODWORD(v257) = sub_21E1404A4();
    v61 = sub_21E140C24();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_21DF8C480(v56, v58, v60 & 1, MEMORY[0x277D85008]);

    sub_21E141CC4();
    sub_21E13FCE4();
    LOBYTE(v235) = v65 & 1;
    v68 = sub_21E140AC4();
    KeyPath = swift_getKeyPath();
    v245 = v253;
    v246 = v254;
    v247 = v255;
    v248 = v256;
    v242 = v250;
    *&v240 = v61;
    *(&v240 + 1) = v63;
    LOBYTE(v241) = v65 & 1;
    *(&v241 + 1) = v67;
    v243 = v251;
    v244 = v252;
    *&v249 = KeyPath;
    *(&v249 + 1) = v68;
    v70 = v195;
    v71 = v196;
    v72 = v197;
    (*(v196 + 104))(v195, *MEMORY[0x277CDF9D8], v197);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA8);
    sub_21DF8A0BC();
    v73 = v200;
    sub_21E140F64();
    (*(v71 + 8))(v70, v72);
    v263 = v246;
    v264 = v247;
    v265 = v248;
    v266 = v249;
    v259 = v242;
    v260 = v243;
    v261 = v244;
    v262 = v245;
    v257 = v240;
    v258 = v241;
    sub_21DF23614(&v257, &qword_27CEA7BA8);
    v74 = swift_getKeyPath();
    v75 = v201;
    (*(v205 + 32))(v201, v73, v206);
    v76 = &v75[*(v198 + 36)];
    *v76 = v74;
    v76[8] = 1;
    LOBYTE(v74) = sub_21E140924();
    sub_21E13F374();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = v75;
    v86 = v204;
    sub_21DF3DE9C(v85, v204, &qword_27CEA7BA0);
    v87 = v86 + *(v199 + 36);
    *v87 = v74;
    *(v87 + 8) = v78;
    *(v87 + 16) = v80;
    *(v87 + 24) = v82;
    *(v87 + 32) = v84;
    *(v87 + 40) = 0;
    LOBYTE(v74) = sub_21E140934();
    sub_21E13F374();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v86;
    v97 = v202;
    sub_21DF3DE9C(v96, v202, &qword_27CEA7B90);
    v98 = v97 + *(v203 + 36);
    *v98 = v74;
    *(v98 + 8) = v89;
    *(v98 + 16) = v91;
    *(v98 + 24) = v93;
    *(v98 + 32) = v95;
    *(v98 + 40) = 0;
    v99 = v207;
    sub_21DF3DE9C(v97, v207, &qword_27CEA7B80);
    v100 = v216;
    *(v99 + *(v216 + 36)) = 256;
    v101 = v220;
    sub_21E140164();
    v102 = sub_21DF89E24();
    v103 = v209;
    sub_21E141044();
    (*(v221 + 8))(v101, v222);
    sub_21DF23614(v99, &qword_27CEA7B68);
    v104 = v232;
    v105 = v217;
    (v232[2])(v215, v103, v217);
    swift_storeEnumTagMultiPayload();
    v106 = sub_21DF89D68();
    *&v240 = v211;
    *(&v240 + 1) = v106;
    swift_getOpaqueTypeConformance2();
    *&v240 = v100;
    *(&v240 + 1) = v102;
    swift_getOpaqueTypeConformance2();
    v107 = v214;
    sub_21E1402F4();
    v104[1](v103, v105);
    v108 = v225;
    v109 = v224;
LABEL_54:
    sub_21DF236C0(v107, v109, &qword_27CEA7B48);
    swift_storeEnumTagMultiPayload();
    sub_21DF89C68();
    v182 = sub_21DF8A174();
    v238 = v108;
    v239 = v182;
    swift_getOpaqueTypeConformance2();
    sub_21E1402F4();
    sub_21DF23614(v107, &qword_27CEA7B48);
    goto LABEL_55;
  }

  swift_getKeyPath();
  v51 = v229;
  *&v257 = v229;
  sub_21E13D3C4();

  if (*(v51 + v231))
  {
    v52 = *(v51 + v231);
  }

  else
  {
    swift_getKeyPath();
    *&v257 = v51;
    sub_21E13D3C4();

    v133 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v51 + v133);
  }

  v210 = v32;
  swift_getKeyPath();
  *&v240 = v52;

  sub_21E13D3C4();

  v134 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v135 = *(v52 + v134);

  if (!(v135 >> 62))
  {
    v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v136)
    {
      goto LABEL_32;
    }

LABEL_43:

    v139 = MEMORY[0x277D84F90];
LABEL_44:
    v232 = type metadata accessor for CardContainer;
    v147 = v219;
    v148 = v188;
    sub_21DF8C7C8(v219, v188, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v149 = sub_21E1423B4();
    v150 = (*(v186 + 80) + 32) & ~*(v186 + 80);
    v151 = swift_allocObject();
    v152 = MEMORY[0x277D85700];
    *(v151 + 16) = v149;
    *(v151 + 24) = v152;
    sub_21DF8C494(v148, v151 + v150, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v147, v148, v232);
    v153 = sub_21E1423B4();
    v154 = swift_allocObject();
    *(v154 + 16) = v153;
    *(v154 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v148, v154 + v150, type metadata accessor for CardContainer);
    sub_21E141A04();
    v155 = v235;
    v156 = v236;
    v157 = v237;
    swift_getKeyPath();
    v158 = v229;
    v235 = v229;
    sub_21E13D3C4();

    if (*(v158 + v231))
    {
      v159 = *(v158 + v231);
    }

    else
    {
      swift_getKeyPath();
      v235 = v158;
      sub_21E13D3C4();

      v160 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v159 = *(v158 + v160);
    }

    v161 = v191;
    swift_getKeyPath();
    v234 = v159;

    sub_21E13D3C4();

    v162 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v163 = *(v159 + v162);

    swift_getKeyPath();
    v233 = v163;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v164 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v164) = *(v163 + v164);

    v165 = v189;
    sub_21DF3CA40(v139, v155, v156, v157, v164, v189);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
    v166 = swift_allocObject();
    *(v166 + 16) = xmmword_21E147C70;
    v167 = sub_21E140924();
    *(v166 + 32) = v167;
    v168 = sub_21E140944();
    *(v166 + 33) = v168;
    v169 = sub_21E140964();
    *(v166 + 34) = v169;
    v170 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v167)
    {
      v170 = sub_21E140954();
    }

    sub_21E140954();
    v171 = sub_21E140954();
    v109 = v224;
    if (v171 != v168)
    {
      v170 = sub_21E140954();
    }

    v172 = v185;

    sub_21E140954();
    if (sub_21E140954() != v169)
    {
      v170 = sub_21E140954();
    }

    sub_21DF8C494(v165, v172, type metadata accessor for ScrollableSegmentedControl);
    v173 = v211;
    v174 = v172 + *(v211 + 36);
    *v174 = v170;
    *(v174 + 8) = 0u;
    *(v174 + 24) = 0u;
    *(v174 + 40) = 1;
    v175 = v220;
    sub_21E140164();
    v176 = sub_21DF89D68();
    v177 = v190;
    sub_21E141044();
    (*(v221 + 8))(v175, v222);
    sub_21DF23614(v172, &qword_27CEA7B50);
    v178 = *(v161 + 16);
    v179 = v161;
    v180 = v212;
    v178(v215, v177, v212);
    swift_storeEnumTagMultiPayload();
    v238 = v173;
    v239 = v176;
    swift_getOpaqueTypeConformance2();
    v181 = sub_21DF89E24();
    v238 = v216;
    v239 = v181;
    swift_getOpaqueTypeConformance2();
    v107 = v214;
    sub_21E1402F4();
    (*(v179 + 8))(v177, v180);
    v108 = v225;
    goto LABEL_54;
  }

  v136 = sub_21E1427B4();
  if (!v136)
  {
    goto LABEL_43;
  }

LABEL_32:
  v235 = MEMORY[0x277D84F90];
  result = sub_21DF5BFAC(0, v136 & ~(v136 >> 63), 0);
  if ((v136 & 0x8000000000000000) == 0)
  {
    v138 = 0;
    v139 = v235;
    v140 = v135;
    v232 = (v135 & 0xC000000000000001);
    do
    {
      if (v232)
      {
        v141 = MEMORY[0x223D530F0](v138, v140);
      }

      else
      {
        v141 = *(v140 + 8 * v138 + 32);
      }

      swift_getKeyPath();
      v234 = v141;
      sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v143 = *(v141 + 56);
      v142 = *(v141 + 64);

      v235 = v139;
      v145 = *(v139 + 16);
      v144 = *(v139 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_21DF5BFAC((v144 > 1), v145 + 1, 1);
        v139 = v235;
      }

      ++v138;
      *(v139 + 16) = v145 + 1;
      v146 = v139 + 16 * v145;
      *(v146 + 32) = v143;
      *(v146 + 40) = v142;
      v140 = v135;
    }

    while (v136 != v138);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF77A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v100 = sub_21E140174();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21E1403A4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v73 - v6;
  v97 = sub_21E1403C4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v73 - v9;
  v84 = sub_21E13D344();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v73 - v12;
  v104 = sub_21E13D994();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C08);
  MEMORY[0x28223BE20](v86);
  v85 = (&v73 - v14);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BE0);
  MEMORY[0x28223BE20](v88);
  v89 = &v73 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D18);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v87 = &v73 - v16;
  *&v80 = type metadata accessor for CardContainer();
  v17 = *(v80 + 28);
  v101 = a1;
  v18 = *(a1 + v17);
  swift_getKeyPath();
  *&v111[0] = v18;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v19 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v20 = *(v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    *&v111[0] = v18;
    sub_21E13D3C4();

    v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v20 = *(v18 + v21);
  }

  swift_getKeyPath();
  *&v111[0] = v20;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v111[0] = v18;
  sub_21E13D3C4();

  if (*(v18 + v19))
  {
    v22 = *(v18 + v19);
  }

  else
  {
    swift_getKeyPath();
    *&v111[0] = v18;
    sub_21E13D3C4();

    v23 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v22 = *(v18 + v23);
  }

  swift_getKeyPath();
  *&v111[0] = v22;

  sub_21E13D3C4();

  v24 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v25 = *(v22 + v24);
  sub_21DF5706C(v25);

  *&v111[0] = v25;
  LOBYTE(v25) = sub_21DF31604(v111);

  sub_21DF5AF24(*&v111[0]);
  if (v25)
  {
    v26 = v101;
    v27 = sub_21DF64FE4();
    v28 = 1;
    if (v27)
    {
      (*(v103 + 104))(v102, *MEMORY[0x277D78F28], v104);
      v29 = v26 + *(v80 + 68);
      *&v111[0] = *v29;
      *(v111 + 8) = *(v29 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79D8);
      sub_21E1419F4();
      v101 = v109;
      v80 = v110;
      swift_getKeyPath();
      *&v111[0] = v18;
      sub_21E13D3C4();

      v30 = (v18 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__viuiConfiguration);
      swift_beginAccess();
      v79 = *v30;
      v78 = v30[1];
      v77 = v30[2];
      v31 = *(v30 + 2);
      v76 = *(v30 + 1);
      v74 = v31;
      KeyPath = swift_getKeyPath();
      v33 = v85;
      *v85 = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD070);
      swift_storeEnumTagMultiPayload();
      v34 = type metadata accessor for FeedbackControlBar(0);
      v35 = v34[9];
      v75 = v34[8];
      v36 = v33 + v35;
      v108 = 0;

      sub_21E141704();
      v37 = *(&v111[0] + 1);
      *v36 = v111[0];
      *(v36 + 8) = v37;
      v38 = v81;
      _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
      v39 = v83;
      v40 = *(v83 + 16);
      v41 = v82;
      v42 = v84;
      v40(v82, v38, v84);
      sub_21E141704();
      v43 = *(v39 + 8);
      v43(v38, v42);
      _s20VisualIntelligenceUI9CardModelC2id14cardTopPadding0g6BottomI013executeActionAC10Foundation4UUIDV_12CoreGraphics7CGFloatVAMyAA03NewlE0CcSgtcfcfA__0();
      v40(v41, v38, v42);
      sub_21E141704();
      v43(v38, v42);
      v44 = v34[7];
      v45 = sub_21E13DF64();
      (*(*(v45 - 8) + 56))(v33 + v44, 1, 1, v45);
      v46 = v34[5];
      v47 = v103;
      v48 = v104;
      (*(v103 + 32))(v33 + v46, v102, v104);
      (*(v47 + 56))(v33 + v46, 0, 1, v48);
      v49 = (v33 + v34[6]);
      *v49 = 0;
      v49[1] = 0;
      v50 = v33 + v34[12];
      *v50 = v101;
      *(v50 + 8) = v80;
      v51 = v33 + v34[13];
      *v51 = v79;
      *(v51 + 1) = v78;
      *(v51 + 2) = v77;
      v52 = v74;
      *(v51 + 8) = v76;
      *(v51 + 16) = v52;
      *(v33 + v75) = 0;
      LOBYTE(v34) = sub_21E140924();
      sub_21E13F374();
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v61 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C18) + 36);
      *v61 = v34;
      *(v61 + 8) = v54;
      *(v61 + 16) = v56;
      *(v61 + 24) = v58;
      *(v61 + 32) = v60;
      *(v61 + 40) = 0;
      sub_21E140934();
      memset(v111, 0, sizeof(v111));
      v112 = 1;
      sub_21E1405A4();
      sub_21DF8A460();
      v62 = v89;
      sub_21E141074();
      sub_21DF23614(v33, &qword_27CEA7C08);
      v63 = v90;
      sub_21E140394();
      v64 = v94;
      v65 = v95;
      (*(v94 + 16))(v91, v63, v95);
      v66 = v93;
      sub_21E1403B4();
      (*(v64 + 8))(v63, v65);
      v67 = v96;
      v68 = v97;
      (*(v96 + 16))(v92, v66, v97);
      sub_21DF8D698(&qword_280F68E58, MEMORY[0x277CE0418]);
      v69 = sub_21E13F704();
      (*(v67 + 8))(v66, v68);
      *(v62 + *(v88 + 36)) = v69;
      v70 = v98;
      sub_21E140164();
      sub_21DF8A2EC();
      v71 = v87;
      sub_21E141044();
      (*(v99 + 8))(v70, v100);
      sub_21DF23614(v62, &qword_27CEA7BE0);
      (*(v105 + 32))(v107, v71, v106);
      v28 = 0;
    }
  }

  else
  {
    v28 = 1;
  }

  return (*(v105 + 56))(v107, v28, 1, v106);
}

uint64_t sub_21DF78870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21E1401C4();
  v7 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7AA8) + 36);
  sub_21DF78940(a2, v7);
  v8 = sub_21E13F5B4();
  LOBYTE(a2) = MEMORY[0x223D511C0]((2 * v8));
  v9 = sub_21E13FB74();
  v10 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C38) + 36);
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 1;
  *(v10 + 17) = a2;
  *(v10 + 24) = v6;
  return sub_21DF236C0(a1, a3, &qword_27CEA7A28);
}

char *sub_21DF78940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BD0);
  MEMORY[0x28223BE20](v3 - 8);
  v191 = (v154 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BB8);
  MEMORY[0x28223BE20](v5);
  v165 = v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v154 - v8;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C78);
  MEMORY[0x28223BE20](v184);
  v11 = v154 - v10;
  v166 = sub_21E13F9D4();
  v164 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C80);
  v173 = *(v13 - 8);
  v174 = v13;
  MEMORY[0x28223BE20](v13);
  v169 = v154 - v14;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C88);
  MEMORY[0x28223BE20](v168);
  v172 = v154 - v15;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C90);
  MEMORY[0x28223BE20](v171);
  v170 = v154 - v16;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7C98);
  MEMORY[0x28223BE20](v181);
  v167 = v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v175 = v154 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CA0);
  MEMORY[0x28223BE20](v179);
  v180 = v154 - v20;
  v21 = type metadata accessor for CardContainer();
  v156 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v157 = v22;
  v158 = v154 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ScrollableSegmentedControl();
  MEMORY[0x28223BE20](v23 - 8);
  v160 = (v154 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7B50);
  MEMORY[0x28223BE20](v177);
  v159 = v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v161 = v154 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CA8);
  MEMORY[0x28223BE20](v28);
  v178 = v154 - v29;
  v162 = v21;
  v30 = *(v21 + 28);
  v182 = a1;
  v31 = *(a1 + v30);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel___observationRegistrar;
  *&v214 = v31;
  v33 = sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v189 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  v34 = *(v31 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  v185 = v11;
  v186 = v5;
  v183 = v28;
  v176 = v9;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    swift_getKeyPath();
    *&v214 = v31;
    sub_21E13D3C4();

    v36 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v35 = *(v31 + v36);
  }

  swift_getKeyPath();
  *&v214 = v35;
  v37 = sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  v190 = v37;
  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  *&v214 = v31;
  sub_21E13D3C4();

  v38 = *(v31 + v189);
  v188 = v33;
  if (v38)
  {
    v39 = v31;
    v40 = v38;
  }

  else
  {
    swift_getKeyPath();
    *&v214 = v31;
    sub_21E13D3C4();

    v41 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v39 = v31;
    v40 = *(v31 + v41);
  }

  swift_getKeyPath();
  *&v214 = v40;

  sub_21E13D3C4();

  v42 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v43 = *(v40 + v42);
  sub_21DF5706C(v43);

  *&v214 = v43;
  LOBYTE(v43) = sub_21DF31604(&v214);

  sub_21DF5AF24(v214);
  swift_getKeyPath();
  if ((v43 & 1) == 0)
  {
    *&v214 = v39;
    sub_21E13D3C4();

    v45 = v187;
    if (*(v39 + v189))
    {
      v46 = *(v39 + v189);
    }

    else
    {
      swift_getKeyPath();
      *&v214 = v39;
      sub_21E13D3C4();

      v98 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v46 = *(v39 + v98);
    }

    swift_getKeyPath();
    *&v197 = v46;

    sub_21E13D3C4();

    v99 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
    swift_beginAccess();
    v100 = *(v46 + v99);
    sub_21DF5706C(v100);

    if (v100 < 9)
    {
      sub_21DF5AF24(v100);
      v101 = 1;
      v102 = v45;
LABEL_50:
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB0);
      return (*(*(v153 - 8) + 56))(v102, v101, 1, v153);
    }

    v103 = *(v100 + 16);
    sub_21DF5706C(v103);
    sub_21DF5AF24(v100);
    v104 = sub_21E140004();
    v105 = v191;
    *v191 = v104;
    *(v105 + 1) = 0;
    *(v105 + 16) = 1;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CB8);
    sub_21DF7A18C(v182, v103, &unk_282F3DF30, sub_21DF8DAE8, sub_21DF77A38, v105 + *(v106 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD3E0);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_21E147C70;
    v108 = sub_21E140924();
    *(v107 + 32) = v108;
    v109 = sub_21E140944();
    *(v107 + 33) = v109;
    v110 = sub_21E140964();
    *(v107 + 34) = v110;
    v111 = sub_21E140954();
    sub_21E140954();
    if (sub_21E140954() != v108)
    {
      v111 = sub_21E140954();
    }

    sub_21E140954();
    if (sub_21E140954() != v109)
    {
      v111 = sub_21E140954();
    }

    v102 = v45;
    v112 = v186;

    sub_21E140954();
    if (sub_21E140954() != v110)
    {
      v111 = sub_21E140954();
    }

    v113 = v165;
    sub_21DF3DE9C(v191, v165, &qword_27CEA7BD0);
    v114 = v113 + *(v112 + 36);
    *v114 = v111;
    *(v114 + 8) = 0u;
    *(v114 + 24) = 0u;
    *(v114 + 40) = 1;
    v115 = v176;
    sub_21DF3DE9C(v113, v176, &qword_27CEA7BB8);
    sub_21DF236C0(v115, v185, &qword_27CEA7BB8);
    swift_storeEnumTagMultiPayload();
    sub_21DF8A78C();
    sub_21DF8A174();
    sub_21E1402F4();
    sub_21DF5AF24(v103);
    v116 = v115;
    v117 = &qword_27CEA7BB8;
LABEL_49:
    sub_21DF23614(v116, v117);
    v101 = 0;
    goto LABEL_50;
  }

  *&v214 = v39;
  sub_21E13D3C4();

  if (*(v39 + v189))
  {
    v44 = *(v39 + v189);
  }

  else
  {
    swift_getKeyPath();
    *&v214 = v39;
    sub_21E13D3C4();

    v47 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v44 = *(v39 + v47);
  }

  swift_getKeyPath();
  *&v214 = v44;

  sub_21E13D3C4();

  v48 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v49 = *(v44 + v48);

  if (v49 >> 62)
  {
    v50 = sub_21E1427B4();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 < 2)
  {
    v53 = (v182 + *(v162 + 56));
    v54 = *v53;
    v55 = *(v53 + 2);
    v214 = v54;
    *&v215 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA79F8);
    sub_21E141714();
    v214 = v197;
    sub_21DF252E0();
    v56 = sub_21E140C94();
    v58 = v57;
    v60 = v59;
    LODWORD(v214) = sub_21E1404A4();
    v61 = sub_21E140C24();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_21DF8C480(v56, v58, v60 & 1, MEMORY[0x277D85008]);

    sub_21E141CC4();
    sub_21E13FCE4();
    LOBYTE(v194) = v65 & 1;
    v68 = sub_21E140AC4();
    KeyPath = swift_getKeyPath();
    *&v197 = v61;
    *(&v197 + 1) = v63;
    LOBYTE(v198) = v65 & 1;
    *(&v198 + 1) = v67;
    v203 = v211;
    v204 = v212;
    v205 = v213;
    v199 = v207;
    v200 = v208;
    v201 = v209;
    v202 = v210;
    *&v206 = KeyPath;
    *(&v206 + 1) = v68;
    v71 = v163;
    v70 = v164;
    v72 = v166;
    (*(v164 + 104))(v163, *MEMORY[0x277CDF9D8], v166);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7BA8);
    sub_21DF8A0BC();
    v73 = v169;
    sub_21E140F64();
    (*(v70 + 8))(v71, v72);
    v220 = v203;
    v221 = v204;
    v222 = v205;
    v223 = v206;
    v216 = v199;
    v217 = v200;
    v218 = v201;
    v219 = v202;
    v214 = v197;
    v215 = v198;
    sub_21DF23614(&v214, &qword_27CEA7BA8);
    LOBYTE(v61) = sub_21E140924();
    sub_21E13F374();
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v82 = v172;
    (*(v173 + 32))(v172, v73, v174);
    v83 = &v82[*(v168 + 36)];
    *v83 = v61;
    *(v83 + 1) = v75;
    *(v83 + 2) = v77;
    *(v83 + 3) = v79;
    *(v83 + 4) = v81;
    v83[40] = 0;
    LOBYTE(v61) = sub_21E140934();
    sub_21E13F374();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = v82;
    v93 = v170;
    sub_21DF3DE9C(v92, v170, &qword_27CEA7C88);
    v94 = v93 + *(v171 + 36);
    *v94 = v61;
    *(v94 + 8) = v85;
    *(v94 + 16) = v87;
    *(v94 + 24) = v89;
    *(v94 + 32) = v91;
    *(v94 + 40) = 0;
    v95 = v167;
    sub_21DF3DE9C(v93, v167, &qword_27CEA7C90);
    *(v95 + *(v181 + 36)) = 256;
    v96 = v175;
    sub_21DF3DE9C(v95, v175, &qword_27CEA7C98);
    sub_21DF236C0(v96, v180, &qword_27CEA7C98);
    swift_storeEnumTagMultiPayload();
    sub_21DF89D68();
    sub_21DF8A818();
    v97 = v178;
    sub_21E1402F4();
    sub_21DF23614(v96, &qword_27CEA7C98);
LABEL_48:
    sub_21DF236C0(v97, v185, &qword_27CEA7CA8);
    swift_storeEnumTagMultiPayload();
    sub_21DF8A78C();
    sub_21DF8A174();
    v102 = v187;
    sub_21E1402F4();
    v116 = v97;
    v117 = &qword_27CEA7CA8;
    goto LABEL_49;
  }

  swift_getKeyPath();
  *&v214 = v39;
  sub_21E13D3C4();

  v51 = *(v39 + v189);
  v154[1] = v32;
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    swift_getKeyPath();
    *&v214 = v39;
    sub_21E13D3C4();

    v118 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v52 = *(v39 + v118);
  }

  swift_getKeyPath();
  *&v197 = v52;

  sub_21E13D3C4();

  v119 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__visualSearchActions;
  swift_beginAccess();
  v120 = *(v52 + v119);

  if (!(v120 >> 62))
  {
    v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v155 = v39;
    if (v121)
    {
      goto LABEL_32;
    }

LABEL_43:

    v124 = MEMORY[0x277D84F90];
LABEL_44:
    v191 = type metadata accessor for CardContainer;
    v132 = v182;
    v133 = v158;
    sub_21DF8C7C8(v182, v158, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v134 = sub_21E1423B4();
    v135 = (*(v156 + 80) + 32) & ~*(v156 + 80);
    v136 = swift_allocObject();
    v137 = MEMORY[0x277D85700];
    *(v136 + 16) = v134;
    *(v136 + 24) = v137;
    sub_21DF8C494(v133, v136 + v135, type metadata accessor for CardContainer);
    sub_21DF8C7C8(v132, v133, v191);
    v138 = sub_21E1423B4();
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = MEMORY[0x277D85700];
    sub_21DF8C494(v133, v139 + v135, type metadata accessor for CardContainer);
    sub_21E141A04();
    v140 = v194;
    v141 = v195;
    v142 = v196;
    swift_getKeyPath();
    v143 = v155;
    v194 = v155;
    sub_21E13D3C4();

    if (*(v143 + v189))
    {
      v144 = *(v143 + v189);
    }

    else
    {
      swift_getKeyPath();
      v194 = v143;
      sub_21E13D3C4();

      v145 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v144 = *(v143 + v145);
    }

    v146 = v161;
    swift_getKeyPath();
    v193 = v144;

    sub_21E13D3C4();

    v147 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v148 = *(v144 + v147);

    swift_getKeyPath();
    v192 = v148;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v149 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LOBYTE(v149) = *(v148 + v149);

    v150 = v160;
    sub_21DF3CA40(v124, v140, v141, v142, v149, v160);
    LOBYTE(v149) = sub_21E140914();
    v151 = v159;
    sub_21DF8C494(v150, v159, type metadata accessor for ScrollableSegmentedControl);
    v152 = v151 + *(v177 + 36);
    *v152 = v149;
    *(v152 + 8) = 0u;
    *(v152 + 24) = 0u;
    *(v152 + 40) = 1;
    sub_21DF3DE9C(v151, v146, &qword_27CEA7B50);
    sub_21DF236C0(v146, v180, &qword_27CEA7B50);
    swift_storeEnumTagMultiPayload();
    sub_21DF89D68();
    sub_21DF8A818();
    v97 = v178;
    sub_21E1402F4();
    sub_21DF23614(v146, &qword_27CEA7B50);
    goto LABEL_48;
  }

  v121 = sub_21E1427B4();
  v155 = v39;
  if (!v121)
  {
    goto LABEL_43;
  }

LABEL_32:
  v194 = MEMORY[0x277D84F90];
  result = sub_21DF5BFAC(0, v121 & ~(v121 >> 63), 0);
  if ((v121 & 0x8000000000000000) == 0)
  {
    v123 = 0;
    v124 = v194;
    v125 = v120;
    v191 = (v120 & 0xC000000000000001);
    do
    {
      if (v191)
      {
        v126 = MEMORY[0x223D530F0](v123, v125);
      }

      else
      {
        v126 = *(v125 + 8 * v123 + 32);
      }

      swift_getKeyPath();
      v193 = v126;
      sub_21DF8D698(&qword_280F6B830, type metadata accessor for NewActionModel);
      sub_21E13D3C4();

      swift_beginAccess();
      v127 = *(v126 + 56);
      v128 = *(v126 + 64);

      v194 = v124;
      v130 = *(v124 + 16);
      v129 = *(v124 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_21DF5BFAC((v129 > 1), v130 + 1, 1);
        v124 = v194;
      }

      ++v123;
      *(v124 + 16) = v130 + 1;
      v131 = v124 + 16 * v130;
      *(v131 + 32) = v127;
      *(v131 + 40) = v128;
      v125 = v120;
    }

    while (v121 != v123);

    goto LABEL_44;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DF7A18C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v32 = a2;
  v36 = a6;
  v7 = type metadata accessor for CardContainer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE0);
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CE8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  sub_21DF8C7C8(a1, v10, type metadata accessor for CardContainer);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_21DF8C494(v10, v23 + v21, type metadata accessor for CardContainer);
  v24 = v32;
  *(v23 + v22) = v32;
  sub_21DF5706C(v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7CF0);
  sub_21DF23E5C(&qword_280F68D98, &qword_27CEA7CF0);
  sub_21E141764();
  sub_21DF23E5C(&qword_27CEA7CF8, &qword_27CEA7CE0);
  sub_21DF8AA1C();
  v25 = v33;
  sub_21E140DD4();
  (*(v11 + 8))(v13, v25);
  v26 = *(v15 + 16);
  v26(v17, v20, v14);
  v27 = v36;
  v26(v36, v17, v14);
  v28 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7D08) + 48)];
  *v28 = 0;
  v28[8] = 1;
  v29 = *(v15 + 8);
  v29(v20, v14);
  return (v29)(v17, v14);
}

uint64_t sub_21DF7A554(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v5 = v3;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v3 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v5 = a2;

    sub_21DF5706C(a2);
    NewEntityModel.cardLayout.setter(&v5);
  }

  return result;
}

unint64_t sub_21DF7A638(uint64_t a1)
{
  v33 = sub_21E140124();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - v4;
  v5 = sub_21DF7ACB4();
  v6 = type metadata accessor for CardContainer();
  v7 = (a1 + *(v6 + 48));
  v9 = *v7;
  v8 = v7[1];
  v39 = v9;
  v40 = v8;
  v38 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
  sub_21E141724();
  v28 = v6;
  v10 = *(v6 + 28);
  v32 = a1;
  v11 = *(a1 + v10);
  swift_getKeyPath();
  v39 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v12 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v13 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v39 = v11;
    sub_21E13D3C4();

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v13 = *(v11 + v14);
  }

  swift_getKeyPath();
  v38 = v13;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v37 = v11;
  sub_21E13D3C4();

  if (*(v11 + v12))
  {
    v15 = *(v11 + v12);
  }

  else
  {
    swift_getKeyPath();
    v37 = v11;
    sub_21E13D3C4();

    v16 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v15 = *(v11 + v16);
  }

  swift_getKeyPath();
  v36[3] = v15;

  sub_21E13D3C4();

  v17 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v18 = *(v15 + v17);
  sub_21DF5706C(v18);

  v36[0] = v18;
  LOBYTE(v18) = sub_21DF31604(v36);

  result = sub_21DF5AF24(v36[0]);
  if (v18)
  {
    swift_getKeyPath();
    v36[0] = v11;
    sub_21E13D3C4();

    if (*(v11 + v12))
    {
      v20 = *(v11 + v12);
    }

    else
    {
      swift_getKeyPath();
      v36[0] = v11;
      sub_21E13D3C4();

      v21 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v20 = *(v11 + v21);
    }

    swift_getKeyPath();
    v35 = v20;

    sub_21E13D3C4();

    v22 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v23 = *(v20 + v22);

    swift_getKeyPath();
    v34 = v23;
    sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
    sub_21E13D3C4();

    v24 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    LODWORD(v24) = *(v23 + v24);

    v25 = v29;
    if (v24 == 1)
    {
      sub_21E140104();
    }

    else
    {
      sub_21DF64180(v29);
    }

    v26 = v31;
    v27 = v33;
    (*(v31 + 16))(v30, v25, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
    sub_21E141724();
    return (*(v26 + 8))(v25, v27);
  }

  return result;
}

uint64_t sub_21DF7ACB4()
{
  v1 = *(v0 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v20 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v20 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v19 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v18 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v18 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v17[1] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v17[0] = v8;
  v9 = sub_21DF31604(v17);

  sub_21DF5AF24(v17[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A10);
  v10 = sub_21E140124();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  if (v9)
  {
    *(v14 + 16) = xmmword_21E147C80;
    sub_21E140104();
    sub_21DF64180(v14 + v13 + v12);
    v15 = sub_21E0E8978(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    *(v14 + 16) = xmmword_21E145380;
    sub_21DF64180(v14 + v13);
    v15 = sub_21E0E8978(v14);
    swift_setDeallocating();
    (*(v11 + 8))(v14 + v13, v10);
  }

  swift_deallocClassInstance();
  return v15;
}

unint64_t sub_21DF7B110(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v19 = v1;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v2 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v19 = v1;
    sub_21E13D3C4();

    v4 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v3 = *(v1 + v4);
  }

  swift_getKeyPath();
  v18 = v3;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v17 = v1;
  sub_21E13D3C4();

  if (*(v1 + v2))
  {
    v5 = *(v1 + v2);
  }

  else
  {
    swift_getKeyPath();
    v17 = v1;
    sub_21E13D3C4();

    v6 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v5 = *(v1 + v6);
  }

  swift_getKeyPath();
  v16[3] = v5;

  sub_21E13D3C4();

  v7 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v8 = *(v5 + v7);
  sub_21DF5706C(v8);

  v16[0] = v8;
  LOBYTE(v8) = sub_21DF31604(v16);

  result = sub_21DF5AF24(v16[0]);
  if (v8)
  {
    swift_getKeyPath();
    v16[0] = v1;
    sub_21E13D3C4();

    if (*(v1 + v2))
    {
      v10 = *(v1 + v2);
    }

    else
    {
      swift_getKeyPath();
      v16[0] = v1;
      sub_21E13D3C4();

      v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
      swift_beginAccess();
      v10 = *(v1 + v11);
    }

    swift_getKeyPath();

    sub_21E13D3C4();

    v12 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardModel;
    swift_beginAccess();
    v13 = *(v10 + v12);

    v14 = OBJC_IVAR____TtC20VisualIntelligenceUI9CardModel__isSearchCollapsed;
    swift_beginAccess();
    if (*(v13 + v14) == 1)
    {
      *(v13 + v14) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21DF8D698(&qword_280F69240, type metadata accessor for CardModel);
      sub_21E13D3B4();
    }
  }

  return result;
}

unint64_t sub_21DF7B63C(uint64_t a1)
{
  v2 = type metadata accessor for CardContainer();
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = v3;
  v43 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEAD980);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v34 - v5;
  v38 = sub_21E140124();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  v44 = v2;
  v9 = *(v2 + 28);
  v39 = a1;
  v10 = *(a1 + v9);
  swift_getKeyPath();
  v51 = v10;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  v11 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity;
  if (*(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v10 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v51 = v10;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v10 + v13);
  }

  swift_getKeyPath();
  v50 = v12;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  swift_beginAccess();

  swift_getKeyPath();
  v49 = v10;
  sub_21E13D3C4();

  if (*(v10 + v11))
  {
    v14 = *(v10 + v11);
  }

  else
  {
    swift_getKeyPath();
    v49 = v10;
    sub_21E13D3C4();

    v15 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v14 = *(v10 + v15);
  }

  swift_getKeyPath();
  v48[3] = v14;

  sub_21E13D3C4();

  v16 = OBJC_IVAR____TtC20VisualIntelligenceUI14NewEntityModel__cardLayout;
  swift_beginAccess();
  v17 = *(v14 + v16);
  sub_21DF5706C(v17);

  v48[0] = v17;
  LOBYTE(v17) = sub_21DF31604(v48);

  result = sub_21DF5AF24(v48[0]);
  if ((v17 & 1) == 0)
  {
    v19 = v35;
    v20 = v39;
    sub_21DF64180(v35);
    v21 = (v20 + *(v44 + 48));
    v23 = v21[1];
    v48[0] = *v21;
    v22 = v48[0];
    v48[1] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7A08);
    sub_21E141714();
    v24 = v37;
    sub_21E0E2440(v37, v19);
    v25 = v36;
    v34 = *(v36 + 8);
    v26 = v38;
    v34(v24, v38);
    v46 = v22;
    v47 = v23;
    v45 = v48[2];
    sub_21E141724();

    sub_21DF64180(v24);
    (*(v25 + 16))(v19, v24, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEA7988);
    sub_21E141724();
    v34(v24, v26);
    v27 = sub_21E1423F4();
    v28 = v41;
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
    v29 = v43;
    sub_21DF8C7C8(v20, v43, type metadata accessor for CardContainer);
    sub_21E1423C4();
    v30 = sub_21E1423B4();
    v31 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    *(v32 + 16) = v30;
    *(v32 + 24) = v33;
    sub_21DF8C494(v29, v32 + v31, type metadata accessor for CardContainer);
    sub_21E0C2E04(0, 0, v28, &unk_21E148130, v32);
  }

  return result;
}

uint64_t sub_21DF7BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_21E1423C4();
  *(v4 + 48) = sub_21E1423B4();
  v6 = sub_21E142364();

  return MEMORY[0x2822009F8](sub_21DF8DAE4, v6, v5);
}

uint64_t sub_21DF7BDC8(int64_t *a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_21E140894();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v10 = *a2;
  v11 = *(a3 + *(type metadata accessor for CardContainer() + 28));
  swift_getKeyPath();
  v19 = v11;
  sub_21DF8D698(&qword_280F6B250, type metadata accessor for NewSaliencyModel);
  sub_21E13D3C4();

  if (*(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity))
  {
    v12 = *(v11 + OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__presentedEntity);
  }

  else
  {
    swift_getKeyPath();
    v19 = v11;
    sub_21E13D3C4();

    v13 = OBJC_IVAR____TtC20VisualIntelligenceUI16NewSaliencyModel__targetEntity;
    swift_beginAccess();
    v12 = *(v11 + v13);
  }

  swift_getKeyPath();
  v18 = v12;
  sub_21DF8D698(&qword_280F6B6A0, type metadata accessor for NewEntityModel);

  sub_21E13D3C4();

  v14 = sub_21DF63A04(v9);
  MEMORY[0x28223BE20](v14);
  *(&v16 - 16) = v10 - 5 < 0xFFFFFFFFFFFFFFFELL;
  sub_21E140884();
  (*(v7 + 8))(v9, v6);
  v17 = v10;
  v18 = v16;
  return sub_21DF7C160(&v18, &v17);
}