BOOL sub_265FBCDAC(void *a1, uint64_t *a2)
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

void sub_265FBCE10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_265FBCE64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265FBCEE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBCF28()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBCF60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBCFE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_265FC23C8();
  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_265FBD064()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_280054FB0, "ZP");
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_265FBD094()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055038, &qword_265FEEB28);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

id sub_265FBD0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferences];
  *a2 = result;
  return result;
}

uint64_t sub_265FBD170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265FBD1B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBD24C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD294()
{
  MEMORY[0x266776560](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD2CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBD330()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_265FBD370@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

uint64_t sub_265FBD484(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_265FE2FBC(v4);
}

id sub_265FBD4B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 priorityLevel];
  *a2 = result;
  return result;
}

uint64_t sub_265FBD4E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBD53C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD574()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBD5B0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  sub_265FC23C8();
  if (*(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));
  }

  v7 = *(v0 + 288);
  swift_unknownObjectRelease();
  v8 = *(v0 + 304);

  v9 = *(v0 + 312);

  v10 = *(v0 + 320);

  v11 = *(v0 + 328);

  v12 = *(v0 + 336);

  v13 = *(v0 + 344);

  v14 = *(v0 + 352);

  v15 = *(v0 + 360);

  if ((~*(v0 + 384) & 0xFEFE) != 0)
  {
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    sub_265FC23C8();
  }

  if ((~*(v0 + 408) & 0xFEFE) != 0)
  {
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    sub_265FC23C8();
  }

  return MEMORY[0x2821FE8E8](v0, 424, 7);
}

uint64_t sub_265FBD6A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD6E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_265FC23C8();
  v4 = *(v0 + 128);

  v5 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_265FBD750()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD800()
{
  MEMORY[0x266776560](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD838()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265FBD878()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265FBD8D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265FBD900(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_265FBDED8(uint64_t a1, int a2)
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

uint64_t sub_265FBDEF8(uint64_t result, int a2, int a3)
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

uint64_t sub_265FBDF50(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x2667758B0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_265FBDFA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_265FEC340();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_265FBDFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265FEC350();
  *a1 = result;
  return result;
}

void *sub_265FBE024@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_265FBE040()
{
  v2 = *v0;
  sub_265FBE148(&qword_280054860);
  sub_265FBE148(&qword_280054868);
  return sub_265FEC630();
}

uint64_t sub_265FBE148(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DisplayPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265FBE210(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FBE230(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_265FBE288(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FBE2A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_265FBE2E4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_265FBE34C()
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v1 = *(v0 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler);
  v2 = *(v0 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler + 8);

  return v1;
}

uint64_t sub_265FBE3D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v5 = *(v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler);
  v4 = *(v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_265FC238C;
  a2[1] = v6;
}

uint64_t sub_265FBE48C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_265FBFC04();

  sub_265FEBF30();
}

uint64_t sub_265FBE578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler);
  v4 = *(a1 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler + 8);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_265FBE5C0()
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();
}

uint64_t sub_265FBE628()
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v1 = (v0 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__requestedScenes);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];

  return v2;
}

uint64_t sub_265FBE6E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v4 = (v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__requestedScenes);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
}

uint64_t sub_265FBE794(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;

  return sub_265FBE7EC(v2, v3, v4);
}

uint64_t sub_265FBE7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__requestedScenes);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  if ((sub_265FC2030(v7[1], a2) & 1) == 0)
  {
    goto LABEL_4;
  }

  sub_265FC1F84(v10, a3);
  v12 = v11;

  if (v12)
  {
    v13 = *v7;
    v14 = v7[1];
    v15 = v7[2];
    *v7 = a1;
    v7[1] = a2;
    v7[2] = a3;
  }

  else
  {
LABEL_4:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_265FBFC04();
    sub_265FEBF30();
  }
}

uint64_t sub_265FBE988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__requestedScenes);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
}

char *sub_265FBEA38(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler];
  *v4 = nullsub_1;
  *(v4 + 1) = 0;
  v5 = sub_265FD1FB8(MEMORY[0x277D84F90]);
  v6 = &v1[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__requestedScenes];
  *v6 = v5;
  *(v6 + 1) = v7;
  *(v6 + 2) = v8;
  sub_265FEBF70();
  *&v1[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace];
  v12 = v10;
  [v11 setDelegate_];

  return v12;
}

uint64_t sub_265FBEB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *(a1 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace_fbWorkspace);
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_265FBFC5C;
  *(v17 + 24) = v16;
  v22[4] = sub_265FBFC6C;
  v22[5] = v17;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_265FBEFF4;
  v22[3] = &block_descriptor;
  v18 = _Block_copy(v22);

  v19 = a4;
  swift_unknownObjectRetain();

  v20 = [v15 createScene_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    *a8 = v20;
  }

  return result;
}

uint64_t sub_265FBECD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_265FEC0D0();
  [a1 setIdentifier_];

  [a1 setSpecification_];
  [a1 setClientIdentity_];
  result = [a1 respondsToSelector_];
  if (result)
  {
    MEMORY[0x28223BE20](result, v14);
    v17[2] = a6;
    v17[3] = a7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_265FBFCAC;
    *(v15 + 24) = v17;
    aBlock[4] = sub_265FC25CC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265FC25BC;
    aBlock[3] = &block_descriptor_11;
    v16 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [a1 configureParameters_];
    _Block_release(v16);

    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265FBEEAC(void *a1, void (*a2)(void))
{
  a2();
  v5[4] = sub_265FBEF90;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_265FC25BC;
  v5[3] = &block_descriptor_14;
  v3 = _Block_copy(v5);

  [a1 updateSettingsWithBlock_];
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

id sub_265FBEF90()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setInterfaceOrientationMode_];
  }

  return result;
}

uint64_t sub_265FBEFF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id _s13ShellSceneKit25DefaultDisplayTransformerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SceneWorkspace()
{
  result = qword_280054A30;
  if (!qword_280054A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265FBF1C4()
{
  result = sub_265FEBF80();
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

void sub_265FBF288(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v8 + 16);
  if (*v3)
  {
    v10 = *v3;

    v11 = sub_265FC0848(a2, a3, v8 + 32, v9, (v7 + 16));
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {

      if (!a1)
      {
        goto LABEL_25;
      }

LABEL_19:
      v22 = v3[2];
      v20 = v3 + 2;
      v21 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_265FBCEC4(v21);
        *v20 = v21;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *(v21 + 16))
      {
        v24 = v21 + 8 * v11;
        v25 = *(v24 + 32);
        *(v24 + 32) = a1;

        sub_265FEC590();
        return;
      }

      __break(1u);
      return;
    }
  }

  else if (v9)
  {
    v11 = 0;
    v16 = (v8 + 40);
    while (1)
    {
      v17 = *(v16 - 1) == a2 && *v16 == a3;
      if (v17 || (sub_265FEC6C0() & 1) != 0)
      {
        break;
      }

      ++v11;
      v16 += 2;
      if (v9 == v11)
      {
        goto LABEL_13;
      }
    }

    if (!a1)
    {
      v15 = 0;
LABEL_25:
      sub_265FC0B90(v11, v15);

      v19 = sub_265FC0E84(v11);
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_13:
  if (a1)
  {
    sub_265FBFCD0(a2, a3);

    v26 = a1;
    sub_265FEC580();
    v18 = *(v3[2] + 16);
    sub_265FEC5B0();
    sub_265FEC5C0();
    sub_265FEC590();
    v19 = v26;
LABEL_26:

    return;
  }
}

uint64_t sub_265FBF4AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  v10 = v4[1];
  v11 = *(v10 + 16);
  if (*v4)
  {
    v12 = *v4;

    v13 = sub_265FC0994(a2, a3, a4, v10 + 32, v11, (v9 + 16));
    v15 = v14;
    v17 = v16;

    sub_265FC23D0(a1, &v46);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = sub_265FE46EC(a2, a3, a4, v10 + 32, *(v10 + 16));
    v20 = v19;
    sub_265FC23D0(a1, &v46);
    v17 = 0;
    if (v20)
    {
LABEL_3:
      if (v54 == 1)
      {
        sub_265FC2440(a1);
        return sub_265FC23C8();
      }

      else
      {
        v43 = v52;
        v44 = v53;
        v45 = v54;
        v39 = v48;
        v40 = v49;
        v41 = v50;
        v42 = v51;
        v37 = v46;
        v38 = v47;
        sub_265FBFE5C(a2, a3, a4);
        sub_265FC23C8();
        sub_265FC24A8(&v37, v36);
        v23 = v4[2];
        v21 = v4 + 2;
        v22 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v21 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_265FC0038(0, *(v22 + 16) + 1, 1);
          v22 = *v21;
        }

        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_265FC0038((v25 > 1), v26 + 1, 1);
        }

        sub_265FC2440(a1);
        result = sub_265FC2504(&v37);
        v27 = *v21;
        *(v27 + 16) = v26 + 1;
        v28 = (v27 + 144 * v26);
        v28[2] = v36[0];
        v29 = v36[4];
        v31 = v36[1];
        v30 = v36[2];
        v28[5] = v36[3];
        v28[6] = v29;
        v28[3] = v31;
        v28[4] = v30;
        v32 = v36[8];
        v34 = v36[5];
        v33 = v36[6];
        v28[9] = v36[7];
        v28[10] = v32;
        v28[7] = v34;
        v28[8] = v33;
        *v21 = v27;
      }

      return result;
    }
  }

  sub_265FC23C8();
  if (v54 == 1)
  {
    sub_265FC0D0C(v13, v17, &v37);
    sub_265FC23C8();
    sub_265FC1030(v13, &v37);
    sub_265FC2440(a1);
    return sub_265FC2504(&v37);
  }

  v43 = v52;
  v44 = v53;
  v45 = v54;
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v37 = v46;
  v38 = v47;
  v35 = v4[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_265FC110C(v35);
  }

  result = sub_265FC2440(a1);
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v35 + 2))
  {
    result = sub_265FC2558(&v37, &v35[144 * v13 + 32]);
    v4[2] = v35;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_265FBF8F0(int a1, id a2)
{
  v2 = [a2 identifier];
  v3 = sub_265FEC0E0();
  v5 = v4;

  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  swift_getKeyPath();
  sub_265FEBF60();

  swift_beginAccess();
  v6 = sub_265FBFA50(v3, v5);
  swift_endAccess();

  swift_getKeyPath();
  sub_265FEBF50();
}

uint64_t sub_265FBFA50(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v6 + 16);
  if (!*v2)
  {
    if (v7)
    {
      v9 = 0;
      for (i = (v6 + 40); ; i += 2)
      {
        v15 = *(i - 1) == a1 && *i == a2;
        if (v15 || (sub_265FEC6C0() & 1) != 0)
        {
          break;
        }

        if (v7 == ++v9)
        {
          return 0;
        }
      }

      v13 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  v8 = *v2;

  v9 = sub_265FC0848(a1, a2, v6 + 32, v7, (v5 + 16));
  v11 = v10;
  v13 = v12;

  if (v11)
  {
    return 0;
  }

LABEL_14:
  sub_265FC0B90(v9, v13);

  return sub_265FC0E84(v9);
}

unint64_t sub_265FBFC04()
{
  result = qword_280054B00;
  if (!qword_280054B00)
  {
    type metadata accessor for SceneWorkspace();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054B00);
  }

  return result;
}

uint64_t sub_265FBFC6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265FBFCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_265FBFFF8(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_265FBFFF8((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x266775570](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_265FEC010();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_265FEBFB0();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_265FC03A8(sub_265FC0568);
}

uint64_t sub_265FBFE5C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;
  sub_265FC23C0();
  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = sub_265FC0018(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_265FC0018((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 24 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  v4[1] = v9;
  v15 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x266775570](*(v15 + 16) & 0x3FLL) > v13)
    {
      v16 = *v4;
      result = swift_isUniquelyReferenced_native();
      v17 = *v4;
      if ((result & 1) == 0)
      {
        if (!v17)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v18 = *v4;
        v19 = sub_265FEC010();

        *v4 = v19;
        v17 = v19;
      }

      if (v17)
      {
        v20 = *(v17 + 16);
        v21 = *(*v8 + 16) + ~(*(v17 + 24) >> 6);
        return sub_265FEBFB0();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return result;
  }

  return sub_265FC03A8(sub_265FC0698);
}

char *sub_265FBFFF8(char *a1, int64_t a2, char a3)
{
  result = sub_265FC0058(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265FC0018(char *a1, int64_t a2, char a3)
{
  result = sub_265FC0164(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265FC0038(char *a1, int64_t a2, char a3)
{
  result = sub_265FC0280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265FC0058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054BC8, &qword_265FEE1A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265FC0164(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055700, &qword_265FF0400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265FC0280(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055740, qword_265FEE9A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_265FC03A8(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x2667755A0](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_265FC0488(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_265FC0488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x2667755A0](v8);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x2667755B0](v10, a4);
    sub_265FC0510(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_265FC0568(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_265FEC780();

        sub_265FEC130();
        result = sub_265FEC7B0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_265FEBF90();

        if (v10)
        {
          while (1)
          {
            sub_265FEBFE0();
          }
        }

        result = sub_265FEBFD0();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265FC0698(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v11 + 24 * v4;
        v7 = *v5;
        v6 = *(v5 + 8);
        v8 = *(v5 + 16);
        v9 = *a3;
        sub_265FEC780();
        if (v8 < 0)
        {
          MEMORY[0x266775D10](1);
          sub_265FC23C0();
          sub_265FEC130();
          sub_265FEC7A0();
          sub_265FEC7A0();
        }

        else
        {
          MEMORY[0x266775D10](0);
          sub_265FC23C0();
          sub_265FEC130();
        }

        result = sub_265FEC7B0();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_265FEBF90();
        sub_265FC23C8();
        if (v10)
        {
          while (1)
          {
            sub_265FEBFE0();
          }
        }

        result = sub_265FEBFD0();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265FC0848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_265FEC780();
  sub_265FEC130();
  result = sub_265FEC7B0();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_265FEBF90();
    result = sub_265FEBFC0();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_265FEC6C0())
          {
            break;
          }

          sub_265FEBFE0();
          result = sub_265FEBFC0();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

uint64_t sub_265FC0994(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = *a6;
  sub_265FEC780();
  if ((a3 & 0x8000) != 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  result = sub_265FEC7B0();
  if (__OFSUB__(1 << *a6, 1))
  {
    __break(1u);
  }

  else
  {
    sub_265FEBF90();
    result = sub_265FEBFC0();
    if ((v13 & 1) == 0)
    {
      do
      {
        v15 = (a4 + 24 * result);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v15 + 8);
        if ((v18 & 0x80000000) != 0)
        {
          if ((a3 & 0x8000) != 0)
          {
            if (v17 == a1 && v16 == a2)
            {
              if (((a3 ^ v18) & 1) == 0 && (((a3 ^ v18) >> 8) & 1) == 0)
              {
                return result;
              }
            }

            else
            {
              v23 = result;
              v24 = *v15;
              if ((sub_265FEC6C0() & 1) != 0 && ((a3 ^ v18) & 1) == 0 && (((a3 ^ v18) >> 8) & 1) == 0)
              {
                return v23;
              }
            }
          }
        }

        else if ((a3 & 0x8000) == 0)
        {
          if (v17 == a1 && v16 == a2)
          {
            return result;
          }

          v20 = result;
          v21 = *v15;
          if (sub_265FEC6C0())
          {
            return v20;
          }
        }

        sub_265FEBFE0();
        result = sub_265FEBFC0();
      }

      while ((v14 & 1) == 0);
    }
  }

  return result;
}

unint64_t sub_265FC0B90(int64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v5 = *(v4 + 16);
  v6 = *v2;
  if (!*v2)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

    return sub_265FC0F10(a1);
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 0x3FLL) == (*(v6 + 24) & 0x3FLL))
  {
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else if (v5 <= MEMORY[0x266775580]())
  {
LABEL_16:
    v13 = sub_265FC0F10(a1);
    sub_265FC03A8(sub_265FC0568);
    return v13;
  }

  v8 = *v2;
  result = swift_isUniquelyReferenced_native();
  v10 = *v2;
  if ((result & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v2;
    v12 = sub_265FEC010();

    *v2 = v12;
    v10 = v12;
  }

  if (v10)
  {

    result = sub_265FC1120(a2, (v10 + 16), v10 + 32, v2);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_265FC157C(a1, a1 + 1, v4, (v10 + 16));

      return sub_265FC0F10(a1);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_265FC0D0C@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_265FC0F98(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x266775580]())
  {
LABEL_16:
    sub_265FC0F98(a1, a3);
    return sub_265FC03A8(sub_265FC0698);
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_265FEC010();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {

    result = sub_265FC1318(a2, (v12 + 16), v12 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_265FC1A34(a1, a1 + 1, v6, (v12 + 16));

      return sub_265FC0F98(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_265FC0E84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_265FBCEC4(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    sub_265FEC590();
    return v8;
  }

  return result;
}

uint64_t sub_265FC0F10(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265FC10E4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_265FC0F98@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265FC10F8(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    result = memmove(v9, (v9 + 24), 24 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_265FC1030@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265FC110C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 144 * a1);
    v9 = v8[9];
    v10 = v7 - 1;
    a2[6] = v8[8];
    a2[7] = v9;
    a2[8] = v8[10];
    v11 = v8[5];
    a2[2] = v8[4];
    a2[3] = v11;
    v12 = v8[7];
    a2[4] = v8[6];
    a2[5] = v12;
    v13 = v8[3];
    *a2 = v8[2];
    a2[1] = v13;
    result = memmove(v8 + 2, v8 + 11, 144 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_265FC1120(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v23 = sub_265FEBF90();
  sub_265FEBFE0();
  if (v23)
  {
    v7 = sub_265FEBFA0();
    while (1)
    {
      result = sub_265FEBFC0();
      if (v10)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_21;
      }

      v12 = *a2;
      v13 = v11 + 16 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      sub_265FEC780();

      sub_265FEC130();
      v16 = sub_265FEC7B0();

      v17 = 1 << *a2;
      v18 = v17 - 1;
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_22;
      }

      v19 = v18 & v16;
      if (v6 >= v7)
      {
        break;
      }

      if (v19 < v7)
      {
        goto LABEL_14;
      }

LABEL_15:
      v20 = sub_265FEBFC0();
      if ((v21 & 1) == 0)
      {
        v8 = ((v18 & ((v20 - (a2[1] >> 6)) >> 63)) + v20 - (a2[1] >> 6)) ^ v18;
      }

      v6 = a1;
      sub_265FEBFB0();
LABEL_5:
      sub_265FEBFE0();
    }

    if (v19 < v7)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v6 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  return sub_265FEBFB0();
}

unint64_t sub_265FC1318(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v24 = sub_265FEBF90();
  sub_265FEBFE0();
  if (v24)
  {
    v7 = sub_265FEBFA0();
    while (1)
    {
      result = sub_265FEBFC0();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v11 = *(a4 + 8);
      if (result >= *(v11 + 16))
      {
        goto LABEL_24;
      }

      v12 = *a2;
      v13 = v11 + 24 * result;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *(v13 + 48);
      sub_265FEC780();
      if (v16 < 0)
      {
        MEMORY[0x266775D10](1);
        sub_265FC23C0();
        sub_265FEC130();
        sub_265FEC7A0();
        sub_265FEC7A0();
      }

      else
      {
        MEMORY[0x266775D10](0);
        sub_265FC23C0();
        sub_265FEC130();
      }

      v17 = sub_265FEC7B0();
      result = sub_265FC23C8();
      v18 = 1 << *a2;
      v19 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_25;
      }

      v20 = v19 & v17;
      if (v6 >= v7)
      {
        break;
      }

      if (v20 < v7)
      {
        goto LABEL_17;
      }

LABEL_18:
      v21 = sub_265FEBFC0();
      if ((v22 & 1) == 0)
      {
        v8 = ((v19 & ((v21 - (a2[1] >> 6)) >> 63)) + v21 - (a2[1] >> 6)) ^ v19;
      }

      v6 = a1;
      sub_265FEBFB0();
LABEL_5:
      sub_265FEBFE0();
    }

    if (v20 < v7)
    {
      goto LABEL_5;
    }

LABEL_17:
    if (v6 < v20)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  return sub_265FEBFB0();
}

uint64_t sub_265FC157C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_58;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x266775570](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v9 < v8)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v10 = a3;

        if (v8)
        {
          v11 = 0;
          while (1)
          {
            v12 = (v10 + 32 + 16 * v11);
            v13 = *v12;
            v14 = v12[1];
            v15 = *a4;
            sub_265FEC780();

            sub_265FEC130();
            result = sub_265FEC7B0();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_265FEBF90())
            {
              while (1)
              {
                v16 = sub_265FEBFC0();
                if ((v17 & 1) == 0 && v16 == v11)
                {
                  break;
                }

                sub_265FEBFE0();
              }
            }

            result = v11 + v5;
            if (__OFADD__(v11, v5))
            {
              goto LABEL_55;
            }

            ++v11;
            sub_265FEBFD0();

            if (v11 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

LABEL_17:

        goto LABEL_18;
      }

      sub_265FEBF90();
      v24 = sub_265FEBFC0();
      if ((v25 & 1) != 0 || v24 >= v8)
      {
LABEL_33:
        result = sub_265FEBFE0();
LABEL_18:
        v18 = a4[1];
        if (__OFSUB__(v18 >> 6, v5))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v19 = 1 << *a4;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v22 = (v21 & (((v18 >> 6) - v5) >> 63)) + (v18 >> 6) - v5;
        if (v22 < v21)
        {
          v21 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v22 - v21) << 6);
        return result;
      }

      if (!__OFADD__(v24, v5))
      {
        sub_265FEBFD0();
        goto LABEL_33;
      }

      __break(1u);
LABEL_39:
      sub_265FEBF90();
      v26 = sub_265FEBFC0();
      if ((v27 & 1) == 0 && v26 >= v4)
      {
        v20 = __OFSUB__(v26, v5);
        result = v26 - v5;
        if (v20)
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        sub_265FEBFD0();
      }

      return sub_265FEBFE0();
    }

    v4 = a2;
    v23 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    result = MEMORY[0x266775570](*a4 & 0x3F);
    if (v23 >= result / 3)
    {
      goto LABEL_39;
    }

    if (v9 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v4 < 0)
    {
LABEL_65:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v28 = (a3 + 32 + 16 * v4);
        v29 = *v28;
        v30 = v28[1];
        v31 = *a4;
        sub_265FEC780();

        sub_265FEC130();
        result = sub_265FEC7B0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_57;
        }

        if (sub_265FEBF90())
        {
          while (1)
          {
            v32 = sub_265FEBFC0();
            if ((v33 & 1) == 0 && v32 == v4)
            {
              break;
            }

            sub_265FEBFE0();
          }
        }

        sub_265FEBFD0();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265FC1A34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_64;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if (result < (v9 - v5) / 2)
    {
      result = MEMORY[0x266775570](*a4 & 0x3F);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        if (v9 < v8)
        {
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        if (v8)
        {
          v10 = 0;
          v11 = a3 + 32;
          while (1)
          {
            v12 = (v11 + 24 * v10);
            v13 = *v12;
            v14 = v12[1];
            v15 = *(v12 + 8);
            v16 = *a4;
            sub_265FEC780();
            if (v15 < 0)
            {
              MEMORY[0x266775D10](1);
              sub_265FC23C0();
              sub_265FEC130();
              sub_265FEC7A0();
              sub_265FEC7A0();
            }

            else
            {
              MEMORY[0x266775D10](0);
              sub_265FC23C0();
              sub_265FEC130();
            }

            result = sub_265FEC7B0();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_265FEBF90())
            {
              while (1)
              {
                v17 = sub_265FEBFC0();
                if ((v18 & 1) == 0 && v17 == v10)
                {
                  break;
                }

                sub_265FEBFE0();
              }
            }

            result = v10 + v5;
            if (__OFADD__(v10, v5))
            {
              goto LABEL_61;
            }

            ++v10;
            sub_265FEBFD0();
            sub_265FC23C8();
            if (v10 == v8)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_20:

        goto LABEL_21;
      }

      sub_265FEBF90();
      v25 = sub_265FEBFC0();
      if ((v26 & 1) != 0 || v25 >= v8)
      {
LABEL_36:
        result = sub_265FEBFE0();
LABEL_21:
        v19 = a4[1];
        if (__OFSUB__(v19 >> 6, v5))
        {
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v20 = 1 << *a4;
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v21)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v23 = (v22 & (((v19 >> 6) - v5) >> 63)) + (v19 >> 6) - v5;
        if (v23 < v22)
        {
          v22 = 0;
        }

        a4[1] = a4[1] & 0x3F | ((v23 - v22) << 6);
        return result;
      }

      if (!__OFADD__(v25, v5))
      {
        sub_265FEBFD0();
        goto LABEL_36;
      }

      __break(1u);
LABEL_42:
      sub_265FEBF90();
      v27 = sub_265FEBFC0();
      if ((v28 & 1) == 0 && v27 >= v4)
      {
        v21 = __OFSUB__(v27, v5);
        result = v27 - v5;
        if (v21)
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        sub_265FEBFD0();
      }

      return sub_265FEBFE0();
    }

    v4 = a2;
    v24 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    result = MEMORY[0x266775570](*a4 & 0x3F);
    if (v24 >= result / 3)
    {
      goto LABEL_42;
    }

    if (v9 < v4)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if (v4 < 0)
    {
LABEL_71:
      __break(1u);
      return result;
    }

    if (v9 != v4)
    {
      do
      {
        v29 = a3 + 32 + 24 * v4;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        v33 = *a4;
        sub_265FEC780();
        if (v32 < 0)
        {
          MEMORY[0x266775D10](1);
          sub_265FC23C0();
          sub_265FEC130();
          sub_265FEC7A0();
          sub_265FEC7A0();
        }

        else
        {
          MEMORY[0x266775D10](0);
          sub_265FC23C0();
          sub_265FEC130();
        }

        result = sub_265FEC7B0();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_63;
        }

        if (sub_265FEBF90())
        {
          while (1)
          {
            v34 = sub_265FEBFC0();
            if ((v35 & 1) == 0 && v34 == v4)
            {
              break;
            }

            sub_265FEBFE0();
          }
        }

        sub_265FEBFD0();
        sub_265FC23C8();
      }

      while (++v4 != v9);
    }
  }

  return result;
}

void sub_265FC1F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_265FC20E0();
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = sub_265FEC420();

      if ((v9 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_265FC2030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_265FEC6C0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t sub_265FC20E0()
{
  result = qword_280054BD0;
  if (!qword_280054BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280054BD0);
  }

  return result;
}

id sub_265FC212C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_265FBFC04();
  sub_265FEBF40();

  v8 = *(v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler);
  v7 = *(v3 + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler + 8);

  v8(a1, a2, a3);

  result = [a1 isValid];
  if (result)
  {
    v10 = [a1 identifier];
    v11 = sub_265FEC0E0();
    v13 = v12;

    swift_getKeyPath();
    v14 = a1;
    sub_265FEBF40();

    swift_getKeyPath();
    sub_265FEBF60();

    swift_beginAccess();
    sub_265FBF288(a1, v11, v13);
    swift_endAccess();
    swift_getKeyPath();
    sub_265FEBF50();
  }

  return result;
}

uint64_t sub_265FC22FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = a2;
  v9 = a1;
  v7 = a3;
  return v4(&v9, &v8, &v7);
}

uint64_t sub_265FC2340()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC13ShellSceneKit14SceneWorkspace__sceneRequestHandler);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_265FC238C(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_265FC23D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054BE0, &qword_265FF0390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265FC2440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054BE0, &qword_265FF0390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_265FC25D0(void *a1)
{
  v1 = a1;
  v2 = [v1 _FBSScene];
  v3 = [v2 profileActivation];

  return v3;
}

id UIScene.profileActivation.getter()
{
  v1 = [v0 _FBSScene];
  v2 = [v1 profileActivation];

  return v2;
}

uint64_t sub_265FC283C(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = a2[2];
  v7 = a3[1];
  v9[0] = *a3;
  v9[1] = v7;
  v9[2] = a3[2];
  return v5(a1, v10, v9);
}

id sub_265FC2894(void *a1)
{
  v1 = a1;
  v2 = sub_265FC29EC(type metadata accessor for ProfileActivationSceneExtension, type metadata accessor for ProfileActivationSceneExtension.ClientComponent, &unk_280054CD0, qword_265FEE258);
  if (v2)
  {
    v3 = v2;
    v4 = sub_265FE7FAC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t FBSScene.profileActivation.getter()
{
  v0 = sub_265FC29EC(type metadata accessor for ProfileActivationSceneExtension, type metadata accessor for ProfileActivationSceneExtension.ClientComponent, &unk_280054CD0, qword_265FEE258);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_265FE7FAC();

  return v2;
}

id sub_265FC29EC(void (*a1)(void), void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  a1(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a2(0);
  result = [v4 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054CC0, &qword_265FEE248);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    swift_dynamicCast();
    return v10;
  }

  return result;
}

void sub_265FC2AE0(uint64_t a1, SEL *a2)
{
  v4 = sub_265FC29EC(type metadata accessor for ProfileActivationSceneExtension, type metadata accessor for ProfileActivationSceneExtension.ClientComponent, &unk_280054CD0, qword_265FEE258);
  if (v4)
  {
    v5 = v4;
    [*&v4[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers] *a2];
  }
}

void sub_265FC2BA8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_unknownObjectRetain();
  v10 = a1;
  v7 = sub_265FC29EC(type metadata accessor for ProfileActivationSceneExtension, type metadata accessor for ProfileActivationSceneExtension.ClientComponent, &unk_280054CD0, qword_265FEE258);
  if (v7)
  {
    v8 = v7;
    v9 = *&v7[OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension15ClientComponent_activationObservers];
    [v9 *a4];
  }

  swift_unknownObjectRelease();
}

uint64_t _s13ShellSceneKit7DisplayV20OverscanCompensationV2eeoiySbAE_AEtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F43656C616373;
  v4 = 0xEC000000746E6574;
  if (v2 != 1)
  {
    v3 = 0x756F427465736E69;
    v4 = 0xEB0000000073646ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6E6F43656C616373;
  v8 = 0xEC000000746E6574;
  if (*a2 != 1)
  {
    v7 = 0x756F427465736E69;
    v8 = 0xEB0000000073646ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_265FEC6C0();
  }

  return v11 & 1;
}

uint64_t sub_265FC2E04()
{
  v1 = *v0;
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

uint64_t sub_265FC2EB0()
{
  *v0;
  *v0;
  sub_265FEC130();
}

uint64_t sub_265FC2F48()
{
  v1 = *v0;
  sub_265FEC780();
  sub_265FEC130();

  return sub_265FEC7B0();
}

uint64_t sub_265FC2FF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_265FC3178();
  *a2 = result;
  return result;
}

void sub_265FC3020(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC000000746E6574;
  v5 = 0x6E6F43656C616373;
  if (v2 != 1)
  {
    v5 = 0x756F427465736E69;
    v4 = 0xEB0000000073646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Display.OverscanCompensation.description.getter()
{
  v1 = 0x6E6F43656C616373;
  if (*v0 != 1)
  {
    v1 = 0x756F427465736E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_265FC3110()
{
  v1 = 0x6E6F43656C616373;
  if (*v0 != 1)
  {
    v1 = 0x756F427465736E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_265FC3178()
{
  v0 = sub_265FEC640();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_265FC31E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_265FC3270(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265FC3334()
{
  result = qword_280054CE0;
  if (!qword_280054CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054CE0);
  }

  return result;
}

uint64_t ProfileActivation.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier + 8);

  return v1;
}

id ProfileActivation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileActivation.init(bsxpcCoder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_265FEC0D0();
  v5 = [a1 decodeStringForKey_];

  if (v5)
  {
    v6 = sub_265FEC0E0();
    v8 = v7;

    v9 = &v1[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier];
    *v9 = v6;
    v9[1] = v8;
    v10 = sub_265FEC0D0();
    LOBYTE(v6) = [a1 decodeBoolForKey_];

    v1[OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl] = v6;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v11;
}

void ProfileActivation.encode(withBSXPCCoder:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier);
  v4 = *(v1 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier + 8);
  v5 = sub_265FEC0D0();
  v6 = sub_265FEC0D0();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl);
  v8 = sub_265FEC0D0();
  [a1 encodeBool:v7 forKey:v8];
}

id ProfileActivation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ProfileActivation.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

uint64_t ProfileActivation.description.getter()
{
  sub_265FEC550();

  swift_getObjectType();
  v1 = sub_265FEC800();
  MEMORY[0x2667756D0](v1);

  MEMORY[0x2667756D0](32, 0xE100000000000000);
  MEMORY[0x2667756D0](*(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier), *(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_identifier + 8));
  MEMORY[0x2667756D0](0x746E6F436E69203ALL, 0xED0000203A6C6F72);
  if (*(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC13ShellSceneKit17ProfileActivation_inControl))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2667756D0](v2, v3);

  MEMORY[0x2667756D0](62, 0xE100000000000000);
  return 60;
}

void register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2800547C0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_280054D68);
  sub_265FC3CA4(&byte_280054D6C, a1, a2, a3);

  os_unfair_lock_unlock(&dword_280054D68);
}

double sub_265FC3CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v8)
  {
    *v8 = 0;
    v13 = v10;
    v14 = v9;
    v15 = [objc_opt_self() sharedInstance];
    (*(v6 + 16))(v12, v14, a3);
    sub_265FC7F78(v15, v12, sub_265FC3E04, 0, a3, a4, v13);
  }

  else
  {
    *(v10 + 45) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
  }

  return result;
}

void sub_265FC3E04()
{
  if (qword_2800547C0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_280054D68);
  if (byte_280054D6C)
  {
    sub_265FEC5E0();
    __break(1u);
  }

  else
  {
    byte_280054D6C = 1;

    os_unfair_lock_unlock(&dword_280054D68);
  }
}

uint64_t sub_265FC3EDC()
{
  result = sub_265FEBF80();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_265FC3F7C()
{
  v1 = qword_280054D70;
  v2 = sub_265FEBF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_265FC4030()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265FC4084(uint64_t *a1, int a2)
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

uint64_t sub_265FC40CC(uint64_t result, int a2, int a3)
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

id sub_265FC4154(void *a1)
{
  v1 = a1;
  v2 = sub_265FC29B0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_265FDCC64();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

id FBSScene.context.getter()
{
  result = sub_265FC29B0();
  if (result)
  {
    v1 = result;
    v2 = sub_265FDCC64();

    return v2;
  }

  return result;
}

id sub_265FC41FC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *(a1 + 32);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = *(a1 + 8);
  v12 = *(a1 + 72);
  v13 = *(a1 + 73);
  v14 = [objc_allocWithZone(MEMORY[0x277CD9E60]) init];
  v15 = [*(v1 + 16) immutableCopy];
  if (v3)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v14 setPointScale_];
    if (v9)
    {
LABEL_3:
      if (v13 <= 1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  [v14 setLogicalScale_];
  if (v13 <= 1)
  {
LABEL_4:
    v16 = MEMORY[0x277CDA180];
    if (v13)
    {
      v16 = MEMORY[0x277CDA1A0];
    }

    goto LABEL_11;
  }

LABEL_9:
  if (v13 != 2)
  {
    goto LABEL_12;
  }

  v16 = MEMORY[0x277CDA158];
LABEL_11:
  v17 = *v16;
  sub_265FEC0E0();
  v18 = sub_265FEC0D0();

  [v14 setOverscanAdjustment_];

LABEL_12:
  [v14 setConnectionSeed_];
  v19 = [objc_allocWithZone(MEMORY[0x277CD9E50]) init];
  v20 = v19;
  if ((v6 & 1) == 0)
  {
    [v19 setResolution_];
  }

  if (v10 <= 1)
  {
    v21 = MEMORY[0x277CDA178];
    if (v10)
    {
      v21 = MEMORY[0x277CDA168];
    }

    goto LABEL_22;
  }

  if (v10 == 2)
  {
    v21 = MEMORY[0x277CDA170];
    goto LABEL_22;
  }

  if (v10 == 3)
  {
    v21 = MEMORY[0x277CDA160];
LABEL_22:
    v22 = *v21;
    sub_265FEC0E0();
    v23 = sub_265FEC0D0();

    [v20 setHdrMode_];
  }

  if (v12 != 3)
  {
    [v20 setRefreshRate_];
    if (v12 != 2)
    {
      [v20 setDisableFrameDoubling_];
    }
  }

  v24 = [v15 preferredModeWithCriteria_];
  if (!v24)
  {
    v24 = [v15 currentMode];
  }

  [v14 setCurrentMode_];

  return v14;
}

BOOL sub_265FC44C4(void *a1)
{
  v3 = [*(v1 + 16) immutableCopy];
  [v3 logicalScale];
  v5 = v4;
  v7 = v6;
  [a1 logicalScale];
  if (v5 != v9)
  {
    goto LABEL_29;
  }

  if (v7 != v8)
  {
    goto LABEL_29;
  }

  v10 = [v3 pointScale];
  if (v10 != [a1 pointScale])
  {
    goto LABEL_29;
  }

  v11 = [v3 overscanAdjustment];
  if (v11)
  {
    v12 = v11;
    v13 = sub_265FEC0E0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a1 overscanAdjustment];
  if (!v16)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v17 = v16;
  v18 = sub_265FEC0E0();
  v20 = v19;

  if (!v15)
  {
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_29:

    return 0;
  }

  if (!v20)
  {
LABEL_14:

    return 0;
  }

  if (v13 == v18 && v15 == v20)
  {

    goto LABEL_18;
  }

  v21 = sub_265FEC6C0();

  if ((v21 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v22 = [v3 currentMode];
  v23 = [a1 currentMode];
  v24 = [v22 hdrMode];
  v25 = sub_265FEC0E0();
  v27 = v26;

  if (!v23)
  {

    goto LABEL_29;
  }

  v28 = [v23 hdrMode];
  v29 = sub_265FEC0E0();
  v31 = v30;

  if (v25 == v29 && v27 == v31)
  {

    goto LABEL_24;
  }

  v32 = sub_265FEC6C0();

  if ((v32 & 1) == 0)
  {

    goto LABEL_29;
  }

LABEL_24:
  [v22 refreshRate];
  v34 = v33;
  [v23 refreshRate];
  if (v34 == v35)
  {
    v36 = [v22 width];
    if (v36 == [v23 width])
    {
      v37 = [v22 height];
      v38 = [v23 height];

      return v37 == v38;
    }
  }

  return 0;
}

uint64_t sub_265FC47F4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_265FC48A8(uint64_t a1)
{
  result = sub_265FC48D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_265FC48D0()
{
  result = qword_280054E78;
  if (!qword_280054E78)
  {
    type metadata accessor for CADisplayHardware();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054E78);
  }

  return result;
}

uint64_t sub_265FC4924@<X0>(char *a1@<X8>)
{
  v3 = [v1 transportType];
  v4 = sub_265FEC0E0();
  v6 = v5;

  v7 = *MEMORY[0x277CDA1B0];
  if (sub_265FEC0E0() == v4 && v8 == v6)
  {
    v11 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v10 = sub_265FEC6C0();

  if ((v10 & 1) == 0)
  {
    v13 = *MEMORY[0x277CDA1B8];
    if (sub_265FEC0E0() == v4 && v14 == v6)
    {
      v11 = 1;
    }

    else
    {
      v16 = sub_265FEC6C0();

      if (v16)
      {
        v11 = 1;
        goto LABEL_9;
      }

      v17 = *MEMORY[0x277CDA1C0];
      if (sub_265FEC0E0() == v4 && v18 == v6)
      {
        v11 = 2;
      }

      else
      {
        v19 = sub_265FEC6C0();

        if (v19)
        {
          v11 = 2;
          goto LABEL_9;
        }

        v20 = *MEMORY[0x277CDA1C8];
        if (sub_265FEC0E0() == v4 && v21 == v6)
        {
          v11 = 3;
        }

        else
        {
          v22 = sub_265FEC6C0();

          if (v22)
          {
            v11 = 3;
            goto LABEL_9;
          }

          v23 = *MEMORY[0x277CDA1D8];
          if (sub_265FEC0E0() == v4 && v24 == v6)
          {
            v11 = 4;
          }

          else
          {
            v25 = sub_265FEC6C0();

            if (v25)
            {
              v11 = 4;
              goto LABEL_9;
            }

            v26 = *MEMORY[0x277CDA1D0];
            if (sub_265FEC0E0() != v4 || v27 != v6)
            {
              sub_265FEC6C0();
            }

            v11 = 5;
          }
        }
      }
    }

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  *a1 = v11;
  return result;
}

void sub_265FC4B84(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration);
  *(v1 + OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration) = a1;
  v4 = a1;

  v5 = OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window;
  v6 = *(v2 + OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window);
  if (v6)
  {
    v30 = v6;
    v7 = [v30 screen];
    v8 = [v7 displayConfiguration];

    if (v8)
    {
      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [v4 bounds];
      v33.origin.x = v17;
      v33.origin.y = v18;
      v33.size.width = v19;
      v33.size.height = v20;
      v32.origin.x = v10;
      v32.origin.y = v12;
      v32.size.width = v14;
      v32.size.height = v16;
      if (CGRectEqualToRect(v32, v33))
      {
        v21 = v30;
      }

      else
      {
        if (qword_2800547C8 != -1)
        {
          swift_once();
        }

        v22 = sub_265FEC060();
        __swift_project_value_buffer(v22, qword_280054E80);
        v23 = v4;
        v24 = sub_265FEC040();
        v25 = sub_265FEC390();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          *v26 = 138543362;
          v28 = [v23 identity];
          *(v26 + 4) = v28;
          *v27 = v28;
          _os_log_impl(&dword_265FBB000, v24, v25, "[%{public}@] recreating blanking window", v26, 0xCu);
          sub_265FC588C(v27);
          MEMORY[0x2667764A0](v27, -1, -1);
          MEMORY[0x2667764A0](v26, -1, -1);
        }

        v29 = [objc_allocWithZone(type metadata accessor for RootBlankingWindow()) initWithDisplay_];
        if (*(v2 + v5))
        {
          sub_265FC534C();
        }

        else
        {
          sub_265FC5360();
        }

        v21 = *(v2 + v5);
        *(v2 + v5) = v29;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_265FC4E30()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_280054E80);
  __swift_project_value_buffer(v0, qword_280054E80);
  return sub_265FEC050();
}

void sub_265FC4F54()
{
  if (qword_2800547C8 != -1)
  {
    swift_once();
  }

  v1 = sub_265FEC060();
  __swift_project_value_buffer(v1, qword_280054E80);
  v2 = v0;
  v3 = sub_265FEC040();
  v4 = sub_265FEC390();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 138412546;
    v8 = [*&v2[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration] identity];
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2080;
    v9 = sub_265FEC100();
    v11 = sub_265FEB534(v9, v10, &v14);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_265FBB000, v3, v4, "[%@] %s: blank", v5, 0x16u);
    sub_265FC588C(v6);
    MEMORY[0x2667764A0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2667764A0](v7, -1, -1);
    MEMORY[0x2667764A0](v5, -1, -1);
  }

  v12 = [objc_allocWithZone(type metadata accessor for RootBlankingWindow()) initWithDisplay_];
  sub_265FC534C();
  v13 = *&v2[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window];
  *&v2[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window] = v12;
}

void sub_265FC5158()
{
  v1 = OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window;
  v2 = *&v0[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window];
  if (v2)
  {
    v3 = v0;
    v4 = qword_2800547C8;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_265FEC060();
    __swift_project_value_buffer(v6, qword_280054E80);
    v7 = v3;
    v8 = sub_265FEC040();
    v9 = sub_265FEC390();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v10 = 138412546;
      v13 = [*&v7[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration] identity];
      *(v10 + 4) = v13;
      *v11 = v13;
      *(v10 + 12) = 2080;
      v14 = sub_265FEC100();
      v16 = sub_265FEB534(v14, v15, &v18);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_265FBB000, v8, v9, "[%@] %s: unblank", v10, 0x16u);
      sub_265FC588C(v11);
      MEMORY[0x2667764A0](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2667764A0](v12, -1, -1);
      MEMORY[0x2667764A0](v10, -1, -1);
    }

    sub_265FC5360();
    v17 = *&v3[v1];
    *&v3[v1] = 0;
  }
}

id sub_265FC5374(const char *a1, double a2)
{
  if (qword_2800547C8 != -1)
  {
    swift_once();
  }

  v5 = sub_265FEC060();
  __swift_project_value_buffer(v5, qword_280054E80);
  v6 = v2;
  v7 = sub_265FEC040();
  v8 = sub_265FEC390();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    v11 = sub_265FEC100();
    v13 = sub_265FEB534(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_265FBB000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2667764A0](v10, -1, -1);
    MEMORY[0x2667764A0](v9, -1, -1);
  }

  return [v6 setWindowLevel_];
}

id sub_265FC54F4(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RootBlankingWindow();
  result = objc_msgSendSuper2(&v15, sel_initWithDisplay_, a1);
  if (result)
  {
    v4 = result;
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 blackColor];
    [v6 setBackgroundColor_];

    [v6 setHidden_];
    [v6 setOpaque_];

    sub_265FC5360();
    [a1 bounds];
    v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v13 = [v5 blackColor];
    [v12 setBackgroundColor_];

    [v12 setOpaque_];
    [v12 setAutoresizingMask_];
    v14 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    [v14 setView_];
    [v6 setRootViewController_];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_265FC57F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootBlankingWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265FC588C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055370, &qword_265FEEF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_265FC5A14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return v0;
}

uint64_t sub_265FC5A6C()
{
  sub_265FC5A14();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

void sub_265FC5AB8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v44[3] = a5;
  v44[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v12 = MEMORY[0x277D84F90];
  a4[8] = sub_265FDAD48(MEMORY[0x277D84F90]);
  a4[9] = sub_265FDAE58(v12);
  a4[10] = sub_265FDAFE0(v12);
  a4[11] = sub_265FDB0E4(v12);
  a4[12] = sub_265FDB21C(v12);
  sub_265FC5EB0(v44, (a4 + 3));
  a4[2] = a1;
  a4[13] = a2;
  v13 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  swift_beginAccess();
  v14 = *(a1 + v13);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = a2;

  v20 = 0;
  while (v17)
  {
    v21 = v20;
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = (*(v14 + 56) + ((v21 << 10) | (16 * v22)));
    v24 = *v23;
    v25 = v23[1];

    v26 = v25;
    sub_265FDEAB0(v24, v26, 0);
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      __swift_destroy_boxed_opaque_existential_0(v44);
      v27 = a4[2];
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = sub_265FC5F14;
      *(v29 + 24) = v28;
      v30 = &v27[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect];
      v31 = *&v27[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect + 8];
      *v30 = sub_265FC5F1C;
      v30[1] = v29;
      v32 = v27;

      v33 = a4[2];
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = swift_allocObject();
      *(v35 + 16) = sub_265FC5F24;
      *(v35 + 24) = v34;
      v36 = (v33 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate);
      v37 = *(v33 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate + 8);
      *v36 = sub_265FC5F34;
      v36[1] = v35;

      v38 = a4[2];
      v39 = swift_allocObject();
      swift_weakInit();
      v40 = v38;

      v41 = swift_allocObject();
      *(v41 + 16) = sub_265FC5F2C;
      *(v41 + 24) = v39;
      v42 = &v40[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect];
      v43 = *&v40[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect + 8];
      *v42 = sub_265FC5F1C;
      v42[1] = v41;

      return;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
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

uint64_t sub_265FC5EB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_265FC5FB0(void (*a1)(void), void (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  a1(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a2(0);
  result = [v4 componentForExtension:ObjCClassFromMetadata ofClass:swift_getObjCClassFromMetadata()];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054F30, &unk_265FF03E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    swift_dynamicCast();
    return v10;
  }

  return result;
}

id sub_265FC6080(void *a1)
{
  v1 = a1;
  v2 = FBScene.profileActivation.getter();

  return v2;
}

uint64_t FBScene.profileActivation.getter()
{
  result = sub_265FC5FB0(type metadata accessor for ProfileActivationSceneExtension, type metadata accessor for ProfileActivationSceneExtension.HostComponent, &unk_280054F40, &qword_265FEE6F8);
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtCC13ShellSceneKit31ProfileActivationSceneExtension13HostComponent_scene);
    if (v2)
    {
      v3 = v2;
      v4 = [v3 settings];
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = [v5 profileActivation];

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      result = sub_265FEC5E0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265FC6234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265FC66D0;

  return v11(a1, a2, a3);
}

uint64_t sub_265FC6474(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 128);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265FC658C;

  return v9(a1, a2);
}

uint64_t sub_265FC658C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Display.productName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Display.hardwareIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Display.physicalSize.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return result;
}

double Display.nativeResolution.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

double Display.minimumLogicalScale.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

double Display.maximumLogicalScale.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

void Display.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 109);
  *(a1 + 4) = *(v1 + 108);
  *a1 = v2;
  *(a1 + 5) = v3;
}

uint64_t _s13ShellSceneKit7DisplayV10ConnectionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_265FEC780();
  MEMORY[0x266775D10](v1);
  return sub_265FEC7B0();
}

uint64_t sub_265FC6828()
{
  v1 = *v0;
  sub_265FEC780();
  MEMORY[0x266775D10](v1);
  return sub_265FEC7B0();
}

BOOL _s13ShellSceneKit7DisplayV4KindO2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1 | (*(a1 + 4) << 32);
  v3 = *a2 | (*(a2 + 4) << 32);
  v4 = *(a2 + 5);
  if (*(a1 + 5) != 1)
  {
    if ((*(a2 + 5) & 1) == 0)
    {
      if ((v2 & 0x100000000) != 0)
      {
        if ((v3 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((v3 & 0x100000000) == 0)
      {
        *(a2 + 4);
        *(a1 + 4);
        if (*a1 == *a2)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v5 = v2 & 0xFFFFFFFFFFLL;
  if (v5 > 1)
  {
    v6 = v3 & 0xFFFFFFFFFFLL;
    if (v5 == 2)
    {
      if (v6 == 2)
      {
        v10 = *(a2 + 5);
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (v5 == 3)
      {
        if (v6 == 3)
        {
          v7 = *(a2 + 5);
        }

        else
        {
          v7 = 0;
        }

        return (v7 & 1) != 0;
      }

      if (v6 > 3)
      {
        v11 = *(a2 + 5);
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!v5)
  {
    if ((v3 & 0xFFFFFFFFFFLL) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a2 + 5);
    }

    return (v9 & 1) != 0;
  }

  if ((v3 & 0xFFFFFFFFFFLL) == 1)
  {
    v12 = *(a2 + 5);
  }

  else
  {
    v12 = 0;
  }

  return (v12 & 1) != 0;
}

unint64_t sub_265FC6960()
{
  result = qword_280054F50;
  if (!qword_280054F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054F50);
  }

  return result;
}

unint64_t sub_265FC69B8()
{
  result = qword_280054F58;
  if (!qword_280054F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280054F58);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_265FC6A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_265FC6A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Display.Kind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Display.Kind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_265FC6B4C(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265FC6B68(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Display.Connection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Display.Connection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Display.Transport(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Display.Transport(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ProfileListBuilder.buildExpression(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_265FC7084(v3, v1, v2);
}

uint64_t static ProfileListBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055740, qword_265FEE9A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265FEE990;
  sub_265FC24A8(a1, v2 + 32);
  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static ProfileListBuilder.buildPartialBlock(accumulated:next:)()
{

  sub_265FC6F8C(v0);
}

uint64_t static ProfileListBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_265FC6F8C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_265FE4290(result, v11, 1, v3);
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

uint64_t sub_265FC7084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[3] = a2;
  v33[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  sub_265FC5EB0(v33, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F60, &unk_265FF0440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055730, &unk_265FEE9E0);
  if (swift_dynamicCast())
  {
    sub_265FBD900(v29, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055740, qword_265FEE9A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_265FEE990;
    v7 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    v25 = *v7;
    v8 = *(v7 + 1);
    v9 = *(v7 + 2);
    v10 = *(v7 + 4);
    *&v26[32] = *(v7 + 3);
    *&v26[48] = v10;
    *v26 = v8;
    *&v26[16] = v9;
    v11 = *(v7 + 5);
    v12 = *(v7 + 6);
    v13 = *(v7 + 7);
    v28 = v7[16];
    *&v26[80] = v12;
    v27 = v13;
    *&v26[64] = v11;
    v14 = v25;
    v15 = v26[2];
    *(v6 + 152) = 0u;
    *(v6 + 168) = 0;
    *(v6 + 136) = 0u;
    *(v6 + 32) = v14;
    *(v6 + 48) = *v26;
    *(v6 + 50) = v15;
    *(v6 + 72) = *&v26[24];
    *(v6 + 88) = *&v26[40];
    *(v6 + 104) = *&v26[56];
    *(v6 + 114) = *&v26[66];
    *(v6 + 56) = *&v26[8];
    v24[3] = &type metadata for ManagedProfile;
    v24[4] = &off_2877AF870;
    v16 = swift_allocObject();
    v24[0] = v16;
    v17 = v27;
    *(v16 + 112) = *&v26[80];
    *(v16 + 128) = v17;
    *(v16 + 144) = v28;
    v18 = *&v26[32];
    *(v16 + 48) = *&v26[16];
    *(v16 + 64) = v18;
    v19 = *&v26[64];
    *(v16 + 80) = *&v26[48];
    *(v16 + 96) = v19;
    v20 = *v26;
    *(v16 + 16) = v25;
    *(v16 + 32) = v20;
    sub_265FC23C0();
    sub_265FC7634(&v25, &v23);
    sub_265FC7690(v24, v6 + 136);
    __swift_destroy_boxed_opaque_existential_0(v32);
    __swift_destroy_boxed_opaque_existential_0(v33);
    return v6;
  }

  else
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_265FC75CC(v29);
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_265FEC550();

    sub_265FC5EB0(v33, &v25);
    v22 = sub_265FEC100();
    MEMORY[0x2667756D0](v22);

    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t _s13ShellSceneKit18ProfileListBuilderV10buildArrayySayAA0D0VGSayAGGFZ_0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = result + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 16);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = *v2;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 24) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_265FE4290(result, v9, 1, v3);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 16);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 16) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ProfileListBuilder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ProfileListBuilder(_WORD *result, int a2, int a3)
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

uint64_t sub_265FC75CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F68, &unk_265FF0450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265FC7690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F70, &qword_265FEE9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Display.Preferences.pointScale.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t Display.Preferences.pointScale.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Display.Preferences.resolution.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t Display.Preferences.resolution.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t Display.Preferences.logicalScale.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  return result;
}

uint64_t Display.Preferences.logicalScale.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

void Display.Preferences.refreshRateCriteria.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Display.Preferences.refreshRateCriteria.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Display.Preferences.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 56);
  v20 = v0[8];
  v18 = *(v0 + 57);
  v19 = *(v0 + 72);
  v21 = *(v0 + 73);
  sub_265FEC550();
  MEMORY[0x2667756D0](0x616353746E696F70, 0xEC000000203A656CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F78, &qword_265FEE9F8);
  v10 = sub_265FEC100();
  MEMORY[0x2667756D0](v10);

  MEMORY[0x2667756D0](0x676E696E6F6C630ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F80, &qword_265FEEA00);
  v11 = sub_265FEC100();
  MEMORY[0x2667756D0](v11);

  MEMORY[0x2667756D0](0x74756C6F7365720ALL, 0xED0000203A6E6F69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F88, &qword_265FEEA08);
  v12 = sub_265FEC100();
  MEMORY[0x2667756D0](v12);

  MEMORY[0x2667756D0](0x6C616369676F6C0ALL, 0xEF203A656C616353);
  v13 = sub_265FEC100();
  MEMORY[0x2667756D0](v13);

  MEMORY[0x2667756D0](0x65646F4D5244480ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F90, &qword_265FEEA10);
  v14 = sub_265FEC100();
  MEMORY[0x2667756D0](v14);

  MEMORY[0x2667756D0](0xD000000000000016, 0x8000000265FF10E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280054F98, &qword_265FEEA18);
  v15 = sub_265FEC100();
  MEMORY[0x2667756D0](v15);

  MEMORY[0x2667756D0](0x6163737265766F0ALL, 0xEB00000000203A6ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280054FA0, &qword_265FEEA20);
  v16 = sub_265FEC100();
  MEMORY[0x2667756D0](v16);

  return 0;
}

uint64_t _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 73);
  v14 = *(a2 + 8);
  v15 = *(a2 + 9);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = *(a2 + 32);
  v20 = *(a2 + 40);
  v19 = *(a2 + 48);
  v21 = *(a2 + 56);
  v22 = *(a2 + 57);
  v23 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 73);
  if (*(a1 + 8))
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v26 = v14;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  if (v3 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v15 == 2 || ((v15 ^ v3) & 1) != 0)
    {
      return result;
    }
  }

  if (v6)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v18)
    {
      return 0;
    }

    result = 0;
    if (v5 != v17 || v4 != v16)
    {
      return result;
    }
  }

  if (v9)
  {
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v21)
    {
      return 0;
    }

    result = 0;
    if (v8 != v20 || v7 != v19)
    {
      return result;
    }
  }

  if (v10 == 4)
  {
    if (v22 != 4)
    {
      return 0;
    }
  }

  else if (v22 == 4 || (sub_265FD88B8(v10, v22) & 1) == 0)
  {
    return 0;
  }

  if (v12 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }

    goto LABEL_32;
  }

  result = 0;
  if (v24 != 3 && v11 == v23)
  {
    if (v12 == 2)
    {
      if (v24 != 2)
      {
        return 0;
      }

LABEL_32:
      if (v13 == 3)
      {
        if (v25 == 3)
        {
          return 1;
        }
      }

      else if (v25 != 3)
      {
        v28 = 1701736302;
        if (v13)
        {
          if (v13 == 1)
          {
            v29 = 0x6E6F43656C616373;
            v30 = 0xEC000000746E6574;
          }

          else
          {
            v29 = 0x756F427465736E69;
            v30 = 0xEB0000000073646ELL;
          }
        }

        else
        {
          v30 = 0xE400000000000000;
          v29 = 1701736302;
        }

        if (v25)
        {
          if (v25 == 1)
          {
            v28 = 0x6E6F43656C616373;
            v31 = 0xEC000000746E6574;
          }

          else
          {
            v28 = 0x756F427465736E69;
            v31 = 0xEB0000000073646ELL;
          }
        }

        else
        {
          v31 = 0xE400000000000000;
        }

        if (v29 == v28 && v30 == v31)
        {
        }

        else
        {
          v32 = sub_265FEC6C0();

          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      return 0;
    }

    result = 0;
    if (v24 != 2 && ((v24 ^ v12) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_265FC7EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 74))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_265FC7F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_265FC7F78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v63 = a6;
  v64 = a4;
  v56 = a3;
  v61 = a2;
  v11 = sub_265FEBF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a5 - 8);
  v18 = v58;
  v19 = *(v58 + 64);
  v21 = MEMORY[0x28223BE20](v15, v20);
  v62 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v55 - v24;
  v57 = &v55 - v24;
  v26 = objc_allocWithZone(type metadata accessor for FBSHardwareSource());
  v60 = a1;
  v59 = sub_265FC9D84(v60);
  v27 = *(v18 + 16);
  v27(v25, a2, a5);
  *(a7 + 48) = 0;
  *(a7 + 52) = 0;
  v28 = v64;
  *(a7 + 8) = v56;
  *(a7 + 16) = v28;
  *(a7 + 32) = nullsub_1;
  *(a7 + 40) = 0;
  v68 = 0;
  v69 = 0xE000000000000000;

  sub_265FEC550();

  v68 = 0xD00000000000002FLL;
  v69 = 0x8000000265FF1170;
  sub_265FEBEF0();
  v29 = sub_265FEBEE0();
  v31 = v30;
  (*(v12 + 8))(v17, v11);
  v33 = sub_265FDACAC(6, v29, v31, v32);
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = MEMORY[0x2667756A0](v33, v35, v37, v39);
  v42 = v41;

  MEMORY[0x2667756D0](v40, v42);

  v43 = objc_allocWithZone(MEMORY[0x277D0AAE8]);
  v44 = sub_265FEC0D0();

  v45 = [v43 initWithIdentifier_];

  *(a7 + 24) = v45;
  v46 = objc_allocWithZone(type metadata accessor for SceneWorkspace());
  v47 = sub_265FBEA38(v45);
  swift_getKeyPath();
  v65 = v47;
  v66 = nullsub_1;
  v67 = 0;
  v68 = v47;
  sub_265FBFC04();
  sub_265FEBF30();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055040, &qword_265FEEB58);
  v48 = swift_allocObject();
  v49 = v62;
  v50 = v57;
  v27(v62, v57, a5);
  sub_265FC5AB8(v59, v47, v49, v48, a5, v63);
  v52 = v51;

  v53 = *(v58 + 8);
  v53(v61, a5);
  result = (v53)(v50, a5);
  *a7 = v52;
  return result;
}

id sub_265FC83A8()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 80);

  for (i = 0; ; result = [*(*(v1 + 56) + ((i << 9) | (8 * v9))) invalidate])
  {
    v10 = i;
    if (!v4)
    {
      break;
    }

LABEL_4:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    i = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (i >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * i);
    ++v10;
    if (v4)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall Registration.invalidate()()
{
  os_unfair_lock_lock((v0 + 48));
  sub_265FC84DC((v0 + 52), v0);
  os_unfair_lock_unlock((v0 + 48));
}

void sub_265FC84DC(_BYTE *a1, uint64_t a2)
{
  *a1 = 1;
  v3 = *(a2 + 24);
  v4 = [v3 allScenes];
  sub_265FC20E0();
  v5 = sub_265FEC1F0();

  if (v5 >> 62)
  {
    v6 = sub_265FEC4A0();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    goto LABEL_13;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x266775AE0](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    [v8 invalidate];
  }

LABEL_10:

  [v3 invalidate];
  if (*a2)
  {
    v10 = sub_265FC83A8();
    v11 = *(a2 + 16);
    (*(a2 + 8))(v10);
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_265FC8624()
{
  os_unfair_lock_lock(v0 + 12);
  if (LOBYTE(v0[13]._os_unfair_lock_opaque) == 1)
  {
    os_unfair_lock_unlock(v0 + 12);
    v1 = *&v0->_os_unfair_lock_opaque;

    v2 = *&v0[4]._os_unfair_lock_opaque;

    v3 = *&v0[10]._os_unfair_lock_opaque;
  }

  else
  {
    result = sub_265FEC5E0();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t *sub_265FC8708(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  *a1 = *a2;
  v5 = a1[2];

  v6 = a1[3];
  *(a1 + 1) = a2[1];

  v7 = a1[5];
  *(a1 + 2) = a2[2];

  return a1;
}

uint64_t sub_265FC8768(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_265FC87B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265FC884C()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_280055050);
  __swift_project_value_buffer(v0, qword_280055050);
  return sub_265FEC050();
}

uint64_t logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800547D0 != -1)
  {
    swift_once();
  }

  v2 = sub_265FEC060();
  v3 = __swift_project_value_buffer(v2, qword_280055050);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265FC8978(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_265FEC780();
  if (a3 < 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  return sub_265FEC7B0();
}

uint64_t sub_265FC8A24(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 8);
  if (v6 < 0)
  {
    if (v9 < 0)
    {
      if (v4 == v7 && v5 == v8)
      {
        if ((v6 ^ v9))
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_265FEC6C0();
        result = 0;
        if (v13 & 1) == 0 || ((v6 ^ v9))
        {
          return result;
        }
      }

      return ((v9 & 0x100) == 0) ^ ((v6 & 0x100) >> 8);
    }

    return 0;
  }

  if (v9 < 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_265FEC6C0();
}

uint64_t Profile.DisplayIdentity.init(rootWithIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t Profile.DisplayIdentity.init(identifier:isMainLike:supportsSecureRendering:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5 & 0xFFFE | a3 & 1 | 0x8000;
  return result;
}

uint64_t Profile.DisplayIdentity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    return sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);

    return sub_265FEC130();
  }
}

uint64_t Profile.DisplayIdentity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_265FEC780();
  if (v3 < 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  return sub_265FEC7B0();
}

uint64_t sub_265FC8C5C()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    return sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);

    return sub_265FEC130();
  }
}

uint64_t sub_265FC8D00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  sub_265FEC780();
  if (v3 < 0)
  {
    MEMORY[0x266775D10](1);
    sub_265FEC130();
    sub_265FEC7A0();
    sub_265FEC7A0();
  }

  else
  {
    MEMORY[0x266775D10](0);
    sub_265FEC130();
  }

  return sub_265FEC7B0();
}

uint64_t Profile.DisplayIdentity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  if (v3 < 0)
  {
    sub_265FEC550();

    v9 = 0x6576697265642E5BLL;
    MEMORY[0x2667756D0](v1, v2);
    MEMORY[0x2667756D0](8236, 0xE200000000000000);
    if (v3)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x2667756D0](v4, v5);

    MEMORY[0x2667756D0](8236, 0xE200000000000000);
    if ((v3 & 0x100) != 0)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if ((v3 & 0x100) != 0)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x2667756D0](v6, v7);
  }

  else
  {
    v9 = 0x20746F6F722E5BLL;
    MEMORY[0x2667756D0](v1, v2);
  }

  MEMORY[0x2667756D0](93, 0xE100000000000000);
  return v9;
}

uint64_t _s13ShellSceneKit7ProfileV15DisplayIdentityV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 8);
  if ((v6 & 0x80000000) == 0)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_265FEC6C0() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v9 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v4 == v7 && v5 == v8)
  {
    if ((v6 ^ v9) & 1) != 0 || (((v6 ^ v9) >> 8))
    {
      return 0;
    }
  }

  else if (sub_265FEC6C0() & 1) == 0 || ((v6 ^ v9) & 1) != 0 || (((v6 ^ v9) >> 8))
  {
    return 0;
  }

  return 1;
}

uint64_t _s13ShellSceneKit7ProfileV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 8);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      v8 = v2 == v5 && v3 == v6;
      if (v8 || (v9 = a1, v10 = *a1, v11 = a2, v12 = sub_265FEC6C0(), a2 = v11, v13 = v12, a1 = v9, (v13 & 1) != 0))
      {
LABEL_20:
        if (*(a1 + 18) == *(a2 + 18))
        {
          v21 = *(a1 + 5);
          v22 = *(a1 + 9);
          v27[2] = *(a1 + 7);
          v28[0] = v22;
          *(v28 + 10) = *(a1 + 82);
          v27[0] = *(a1 + 3);
          v27[1] = v21;
          v23 = *(a2 + 5);
          v24 = *(a2 + 9);
          v25[2] = *(a2 + 7);
          v26[0] = v24;
          *(v26 + 10) = *(a2 + 82);
          v25[0] = *(a2 + 3);
          v25[1] = v23;
          v19 = _s13ShellSceneKit7DisplayV11PreferencesV2eeoiySbAE_AEtFZ_0(v27, v25);
          return v19 & 1;
        }
      }
    }

LABEL_21:
    v19 = 0;
    return v19 & 1;
  }

  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  if (v2 == v5 && v3 == v6)
  {
    v19 = 0;
    if (((v4 ^ v7) & 1) == 0 && (((v4 ^ v7) >> 8) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = a1;
    v16 = a2;
    v17 = *a1;
    v18 = sub_265FEC6C0();
    v19 = 0;
    if ((v18 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
    {
      a2 = v16;
      a1 = v15;
      if ((((v4 ^ v7) >> 8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  return v19 & 1;
}

unint64_t sub_265FC90E8()
{
  result = qword_280055068;
  if (!qword_280055068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055068);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13ShellSceneKit21ProfileStateProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_265FC918C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_265FC91E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
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
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 128) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_265FC9294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 18))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_265FC92FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_265FC93A0()
{
  result = qword_280055070;
  if (!qword_280055070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055070);
  }

  return result;
}

uint64_t sub_265FC9414()
{
  if (qword_2800547D8 != -1)
  {
    swift_once();
  }

  return sub_265FEC400();
}

uint64_t sub_265FC946C()
{
  type metadata accessor for CADisplayActor();

  return swift_initStaticObject();
}

uint64_t sub_265FC949C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CADisplayActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_265FC94D4()
{
  v0 = sub_265FEC3D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265FEC3E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_265FEC080();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  sub_265FC9940();
  sub_265FEC070();
  v13[1] = MEMORY[0x277D84F90];
  sub_265FC998C(&qword_280055090, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055098, &qword_265FEEEE8);
  sub_265FC99D4();
  sub_265FEC460();
  (*(v1 + 104))(v5, *MEMORY[0x277D85268], v0);
  result = sub_265FEC3F0();
  qword_280055078 = result;
  return result;
}

id static CADisplayQueue.queue.getter()
{
  if (qword_2800547D8 != -1)
  {
    swift_once();
  }

  v1 = qword_280055078;

  return v1;
}

id CADisplayQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CADisplayQueue.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CADisplayQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_265FC9940()
{
  result = qword_280055088;
  if (!qword_280055088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280055088);
  }

  return result;
}

uint64_t sub_265FC998C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_265FC99D4()
{
  result = qword_2800550A0;
  if (!qword_2800550A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280055098, &qword_265FEEEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800550A0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_265FC9A80(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    result = sub_265FCE898(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    result = sub_265FDA660(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_265FCDE38();
        v16 = v20;
      }

      v17 = *(v16 + 56) + 16 * v13;
      v18 = *v17;

      result = sub_265FCD3B0(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_265FC9B5C(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = *v2;
    v8 = sub_265FDA61C(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_265FCDCDC();
        v13 = v16;
      }

      sub_265FCD224(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }

  else
  {
    v4 = a1;
    v5 = *v2;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_265FCE734(v4, a2, v6);

    *v2 = v15;
  }
}

uint64_t sub_265FC9C54()
{
  v0 = sub_265FEC060();
  __swift_allocate_value_buffer(v0, qword_2800550B0);
  __swift_project_value_buffer(v0, qword_2800550B0);
  MEMORY[0x2667756D0](46, 0xE100000000000000);
  MEMORY[0x2667756D0](0x79616C70736964, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055198, qword_265FEEF68);
  sub_265FCF438(&qword_2800551A0, &qword_280055198, qword_265FEEF68);
  sub_265FEC6E0();
  return sub_265FEC050();
}

uint64_t sub_265FC9D84(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect];
  *v3 = nullsub_1;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate];
  *v4 = nullsub_1;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect];
  *v5 = nullsub_1;
  *(v5 + 1) = 0;
  v6 = MEMORY[0x277D84F90];
  v68 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  *&v1[v68] = sub_265FDAA90(MEMORY[0x277D84F90]);
  v70 = v1;
  v67 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_configIdentityToHardwareIdentity;
  *&v1[v67] = sub_265FDABBC(v6);
  v7 = [a1 connectedIdentities];
  sub_265FCF0EC(0, &unk_280055180, 0x277D0ACF0);
  sub_265FCF3C8();
  v8 = sub_265FEC2E0();

  if ((v8 & 0xC000000000000001) != 0)
  {
    sub_265FEC490();
    sub_265FEC2F0();
    v8 = v78;
    v9 = v79;
    v10 = v80;
    v11 = v81;
    v12 = v82;
  }

  else
  {
    v11 = 0;
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = (v15 & *(v8 + 56));
  }

  v16 = (v10 + 64) >> 6;
  v71 = v8;
  while (v8 < 0)
  {
    if (!sub_265FEC4C0() || (swift_dynamicCast(), v21 = v75, v20 = v12, !v75))
    {
LABEL_38:
      sub_265FCF430();
      *&v70[OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_displayMonitor] = a1;
      v77.receiver = v70;
      v77.super_class = ObjectType;
      v53 = a1;
      v54 = objc_msgSendSuper2(&v77, sel_init);
      [v53 addObserver_];

      return v54;
    }

LABEL_19:
    v72 = v20;
    if (([v21 isMusicOnlyDisplay] & 1) != 0 || (objc_msgSend(v21, sel_isiPodOnlyDisplay) & 1) != 0 || !objc_msgSend(v21, sel_isRootIdentity) || (v22 = objc_msgSend(a1, sel_configurationForIdentity_, v21)) == 0)
    {
      if (qword_2800547E0 != -1)
      {
        swift_once();
      }

      v48 = sub_265FEC060();
      __swift_project_value_buffer(v48, qword_2800550B0);
      v47 = v21;
      v17 = sub_265FEC040();
      v49 = sub_265FEC390();
      if (os_log_type_enabled(v17, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 67109634;
        v52 = ([v47 isMusicOnlyDisplay]& 1) == 0 && ![v47 isiPodOnlyDisplay];
        *(v50 + 4) = v52;
        *(v50 + 8) = 1024;
        *(v50 + 10) = [v47 isRootIdentity];

        *(v50 + 14) = 2112;
        *(v50 + 16) = v47;
        *v51 = v21;
        v47 = v47;
        _os_log_impl(&dword_265FBB000, v17, v49, "Ignoring connected display. isUsable: %{BOOL}d; isRootIdentity: %{BOOL}d; %@", v50, 0x18u);
        sub_265FC588C(v51);
        MEMORY[0x2667764A0](v51, -1, -1);
        MEMORY[0x2667764A0](v50, -1, -1);
        v8 = v71;
      }

      else
      {

        v17 = v47;
      }
    }

    else
    {
      v12 = v22;
      v66 = a1;
      v23 = [v22 CADisplay];
      if (!v23)
      {
        goto LABEL_40;
      }

      v24 = v23;
      v25 = type metadata accessor for DisplayBlanker();
      v26 = objc_allocWithZone(v25);
      *&v26[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window] = 0;
      *&v26[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration] = v12;
      v76.receiver = v26;
      v76.super_class = v25;
      v60 = v12;
      v61 = v12;
      v64 = objc_msgSendSuper2(&v76, sel_init);
      log = [v24 displayId];
      type metadata accessor for CADisplayHardware();
      v27 = swift_allocObject();
      v27[2] = v24;
      v27[3] = v64;
      KeyPath = swift_getKeyPath();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055720, &qword_265FEEFA8);
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      v32 = swift_allocObject();
      v33 = v24;
      v65 = v64;

      sub_265FEBF70();
      v75 = v33;

      v34 = sub_265FEBED0();

      v27[4] = v33;
      v27[5] = KeyPath;
      v27[6] = v34;
      v27[7] = v32;
      swift_beginAccess();
      v35 = v61;
      v36 = *&v70[v68];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = *&v70[v68];
      *&v70[v68] = 0x8000000000000000;
      sub_265FCE898(v27, v35, log, isUniquelyReferenced_nonNull_native);
      *&v70[v68] = v73;
      swift_endAccess();
      v38 = [v35 identity];
      LODWORD(v27) = [v33 displayId];
      swift_beginAccess();
      v39 = *&v70[v67];
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v74 = *&v70[v67];
      *&v70[v67] = 0x8000000000000000;
      sub_265FCE734(v27, v38, v40);

      *&v70[v67] = v74;
      swift_endAccess();
      if (qword_2800547E0 != -1)
      {
        swift_once();
      }

      v41 = sub_265FEC060();
      __swift_project_value_buffer(v41, qword_2800550B0);
      v42 = v35;
      v17 = v33;
      v43 = sub_265FEC040();
      v44 = sub_265FEC390();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        loga = v43;
        v46 = swift_slowAlloc();
        *v45 = 67109378;
        *(v45 + 4) = [v17 displayId];

        *(v45 + 8) = 2112;
        *(v45 + 10) = v42;
        *v46 = v60;
        v47 = v42;
        _os_log_impl(&dword_265FBB000, loga, v44, "Tracking connected display. hardwareIdentity: %u;   configuration: %@", v45, 0x12u);
        sub_265FC588C(v46);
        MEMORY[0x2667764A0](v46, -1, -1);
        MEMORY[0x2667764A0](v45, -1, -1);
      }

      else
      {

        v47 = v17;
      }

      a1 = v66;
      v8 = v71;
    }

    v12 = v72;
  }

  v18 = v11;
  v19 = v12;
  if (v12)
  {
LABEL_15:
    v20 = (v19 - 1) & v19;
    v21 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_38;
    }

    v19 = *(v9 + 8 * v11);
    ++v18;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  sub_265FEC550();

  v56 = [v12 description];
  v57 = sub_265FEC0E0();
  v59 = v58;

  MEMORY[0x2667756D0](v57, v59);

  result = sub_265FEC5E0();
  __break(1u);
  return result;
}

void sub_265FCA7C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = [v5 displayId];
  v7 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (!*(v8 + 16) || (v9 = sub_265FDA660(v6), (v10 & 1) == 0))
  {
    swift_endAccess();
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_265FEC550();
    MEMORY[0x2667756D0](0xD000000000000033, 0x8000000265FF1440);
    v65 = [v5 displayId];
    v56 = sub_265FEC6B0();
    MEMORY[0x2667756D0](v56);

    MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF13C0);
    v57 = *(v3 + v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055178, &unk_265FEEF50);
    v58 = sub_265FEC090();
    v60 = v59;

    MEMORY[0x2667756D0](v58, v60);

    sub_265FEC5E0();
    __break(1u);
    return;
  }

  v11 = (*(v8 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];
  swift_endAccess();
  v14 = *(v13 + 16);

  v15 = v12;
  v16 = v14;
  [v16 minimumLogicalScale];
  v18 = v17;
  [v16 minimumLogicalScale];
  v20 = v19;
  [v16 maximumLogicalScale];
  v22 = v21;
  [v16 maximumLogicalScale];
  v24 = v23;
  [v16 physicalSize];
  v27 = v26 == 0.0 && v25 == 0.0;
  v28 = 0;
  v29 = 0;
  if (!v27)
  {
    [v16 physicalSize];
    v28 = v30;
    v29 = v31;
  }

  v32 = [v16 productName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_265FEC0E0();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = [v16 uniqueId];
  if (v37)
  {
    v38 = v37;
    v39 = sub_265FEC0E0();
    v62 = v40;
  }

  else
  {
    v39 = 0;
    v62 = 0;
  }

  [v16 nativeSize];
  v42 = v41;
  v44 = v43;
  v45 = [v15 identity];
  v46 = [v45 type];
  v64 = v27;
  v63 = v39;
  if (v46 <= 3)
  {
    if (v46 > 0)
    {
      if (v46 == 1)
      {
        v47 = v34;
        v61 = v15;
        v55 = [v45 pid];

        v48 = 0;
        v49 = v55;
        v15 = v61;
        goto LABEL_32;
      }

      v47 = v34;
      if (v46 == 3)
      {

        v49 = 1;
        v48 = 1;
        goto LABEL_32;
      }
    }

    else
    {
      if (v46 == -1)
      {
        goto LABEL_30;
      }

      v47 = v34;
      if (!v46)
      {

        v49 = 0;
        v48 = 1;
        goto LABEL_32;
      }
    }

LABEL_31:

    v48 = 1;
    v49 = 4;
    goto LABEL_32;
  }

  if (v46 <= 5)
  {
    if (v46 != 4)
    {
      v47 = v34;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v46 == 6)
  {
    v47 = v34;

    v48 = 1;
    v49 = 2;
    goto LABEL_32;
  }

  if (v46 == 7)
  {
LABEL_30:
    v47 = v34;
    goto LABEL_31;
  }

  v47 = v34;
  if (v46 != 8)
  {
    goto LABEL_31;
  }

  v48 = 1;
  v49 = 3;
LABEL_32:
  v50 = [v15 identity];
  v51 = v15;
  v52 = [v50 connectionType];

  if (v52 + 1 >= 5)
  {
    v53 = 3;
  }

  else
  {
    v53 = 0x302010003uLL >> (8 * (v52 + 1));
  }

  sub_265FC4924(&v65 + 4);

  v54 = BYTE4(v65);
  *a2 = v47;
  *(a2 + 8) = v36;
  *(a2 + 16) = v63;
  *(a2 + 24) = v62;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v64;
  *(a2 + 56) = v42;
  *(a2 + 64) = v44;
  *(a2 + 72) = v18;
  *(a2 + 80) = v20;
  *(a2 + 88) = v22;
  *(a2 + 96) = v24;
  *(a2 + 108) = 0;
  *(a2 + 104) = v49;
  *(a2 + 109) = v48;
  *(a2 + 110) = v53;
  *(a2 + 111) = v54;
  *(a2 + 112) = v51;
}

void sub_265FCACE0(void *a1, void *a2, uint64_t a3)
{
  if (([a1 isMusicOnlyDisplay] & 1) != 0 || (objc_msgSend(a1, sel_isiPodOnlyDisplay) & 1) != 0 || !objc_msgSend(a1, sel_isRootIdentity))
  {
    if (qword_2800547E0 != -1)
    {
      swift_once();
    }

    v34 = sub_265FEC060();
    __swift_project_value_buffer(v34, qword_2800550B0);
    v35 = a1;
    v36 = sub_265FEC040();
    v37 = sub_265FEC390();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 67109634;
      v40 = ([v35 isMusicOnlyDisplay] & 1) == 0 && !objc_msgSend(v35, sel_isiPodOnlyDisplay);
      *(v38 + 4) = v40;
      *(v38 + 8) = 1024;
      *(v38 + 10) = [v35 isRootIdentity];

      *(v38 + 14) = 2112;
      *(v38 + 16) = v35;
      *v39 = v35;
      v41 = v35;
      _os_log_impl(&dword_265FBB000, v36, v37, "Ignoring connecting display. isUsable: %{BOOL}d; isRootIdentity: %{BOOL}d; %@", v38, 0x18u);
      sub_265FC588C(v39);
      MEMORY[0x2667764A0](v39, -1, -1);
      MEMORY[0x2667764A0](v38, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v6 = sub_265FD0790();
    v7 = type metadata accessor for DisplayBlanker();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_window] = 0;
    *&v8[OBJC_IVAR____TtC13ShellSceneKit14DisplayBlanker_displayConfiguration] = a2;
    v46.receiver = v8;
    v46.super_class = v7;
    v44 = a2;
    v9 = objc_msgSendSuper2(&v46, sel_init);
    type metadata accessor for CADisplayHardware();
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v9;
    KeyPath = swift_getKeyPath();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280055720, &qword_265FEEFA8);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = v6;
    v45 = v9;

    sub_265FEBF70();

    v17 = sub_265FEBED0();

    v10[4] = v16;
    v10[5] = KeyPath;
    v10[6] = v17;
    v10[7] = v15;
    LODWORD(KeyPath) = [v16 displayId];
    v18 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
    swift_beginAccess();
    v19 = v44;

    v20 = *(a3 + v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a3 + v18);
    *(a3 + v18) = 0x8000000000000000;
    sub_265FCE898(v10, v19, KeyPath, isUniquelyReferenced_nonNull_native);
    *(a3 + v18) = v47;
    swift_endAccess();
    v22 = [v19 identity];
    LODWORD(v18) = [v16 displayId];
    v23 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_configIdentityToHardwareIdentity;
    swift_beginAccess();
    v24 = *(a3 + v23);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(a3 + v23);
    *(a3 + v23) = 0x8000000000000000;
    sub_265FCE734(v18, v22, v25);

    *(a3 + v23) = v47;
    swift_endAccess();
    if (qword_2800547E0 != -1)
    {
      swift_once();
    }

    v26 = sub_265FEC060();
    __swift_project_value_buffer(v26, qword_2800550B0);
    v27 = v19;
    v28 = v16;
    v29 = sub_265FEC040();
    v30 = sub_265FEC390();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 67109378;
      *(v31 + 4) = [v28 displayId];

      *(v31 + 8) = 2112;
      *(v31 + 10) = v27;
      *v32 = v27;
      v33 = v27;
      _os_log_impl(&dword_265FBB000, v29, v30, "Tracking connecting display. hardwareIdentity: %u;   configuration: %@", v31, 0x12u);
      sub_265FC588C(v32);
      MEMORY[0x2667764A0](v32, -1, -1);
      MEMORY[0x2667764A0](v31, -1, -1);
    }

    else
    {

      v29 = v28;
    }

    v43 = *(a3 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect);
    v42 = *(a3 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onConnect + 8);

    v43(v10, v27);
  }
}

uint64_t sub_265FCB2A8(void *a1, void *a2, uint64_t a3)
{
  result = [a1 isMusicOnlyDisplay];
  if ((result & 1) == 0)
  {
    result = [a1 isiPodOnlyDisplay];
    if ((result & 1) == 0)
    {
      result = [a1 isRootIdentity];
      if (result)
      {
        v7 = sub_265FD0790();
        v8 = [v7 displayId];

        v9 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
        swift_beginAccess();
        v10 = *(a3 + v9);
        if (*(v10 + 16) && (v11 = sub_265FDA660(v8), (v12 & 1) != 0))
        {
          v13 = *(*(v10 + 56) + 16 * v11);
          swift_endAccess();
          v14 = *(v13 + 24);

          sub_265FC4B84(a2);
          swift_beginAccess();

          v15 = a2;
          v16 = *(a3 + v9);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = *(a3 + v9);
          *(a3 + v9) = 0x8000000000000000;
          sub_265FCE898(v13, v15, v8, isUniquelyReferenced_nonNull_native);
          *(a3 + v9) = v34;
          swift_endAccess();
          v19 = *(a3 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate);
          v18 = *(a3 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onUpdate + 8);

          v19(v13, v15);
        }

        else
        {
          swift_endAccess();
          sub_265FEC550();
          MEMORY[0x2667756D0](0xD00000000000002CLL, 0x8000000265FF1370);
          v20 = [a1 description];
          v21 = sub_265FEC0E0();
          v23 = v22;

          MEMORY[0x2667756D0](v21, v23);

          MEMORY[0x2667756D0](0xD000000000000014, 0x8000000265FF13A0);
          v24 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_configIdentityToHardwareIdentity;
          swift_beginAccess();
          v25 = *(a3 + v24);
          if (*(v25 + 16))
          {
            v26 = sub_265FDA61C(a1);
            if (v27)
            {
              v28 = *(*(v25 + 56) + 4 * v26);
            }
          }

          swift_endAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055170, &qword_265FEEF48);
          v29 = sub_265FEC100();
          MEMORY[0x2667756D0](v29);

          MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF13C0);
          v30 = *(a3 + v9);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055178, &unk_265FEEF50);
          v31 = sub_265FEC090();
          v33 = v32;

          MEMORY[0x2667756D0](v31, v33);

          result = sub_265FEC5E0();
          __break(1u);
        }
      }
    }
  }

  return result;
}

void sub_265FCB658(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  sub_265FEC250();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a1;
  v10 = a4;
  v11 = a5;
  v12 = a1;
  sub_265FE2014(a6, v13);
}

void sub_265FCB708(void *a1, uint64_t a2)
{
  if (([a1 isMusicOnlyDisplay] & 1) != 0 || (objc_msgSend(a1, sel_isiPodOnlyDisplay) & 1) != 0 || !objc_msgSend(a1, sel_isRootIdentity))
  {
    if (qword_2800547E0 != -1)
    {
      swift_once();
    }

    v24 = sub_265FEC060();
    __swift_project_value_buffer(v24, qword_2800550B0);
    v25 = a1;
    v26 = sub_265FEC040();
    v27 = sub_265FEC390();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 67109634;
      v30 = ([v25 isMusicOnlyDisplay] & 1) == 0 && !objc_msgSend(v25, sel_isiPodOnlyDisplay);
      *(v28 + 4) = v30;
      *(v28 + 8) = 1024;
      *(v28 + 10) = [v25 isRootIdentity];

      *(v28 + 14) = 2112;
      *(v28 + 16) = v25;
      *v29 = v25;
      v31 = v25;
      _os_log_impl(&dword_265FBB000, v26, v27, "Ignoring disconnecting display. isUsable: %{BOOL}d; isRootIdentity: %{BOOL}d; %@", v28, 0x18u);
      sub_265FC588C(v29);
      MEMORY[0x2667764A0](v29, -1, -1);
      MEMORY[0x2667764A0](v28, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v4 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_configIdentityToHardwareIdentity;
    swift_beginAccess();
    v5 = *(a2 + v4);
    if (*(v5 + 16) && (v6 = sub_265FDA61C(a1), (v7 & 1) != 0) && (v8 = *(*(v5 + 56) + 4 * v6), swift_endAccess(), v9 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware, swift_beginAccess(), v10 = *(a2 + v9), *(v10 + 16)) && (v11 = sub_265FDA660(v8), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 16 * v11);
      swift_endAccess();
      swift_beginAccess();

      sub_265FC9A80(0, 0, v8);
      swift_endAccess();
      swift_beginAccess();
      v14 = a1;
      sub_265FC9B5C(0x100000000, v14);
      swift_endAccess();
      if (qword_2800547E0 != -1)
      {
        swift_once();
      }

      v15 = sub_265FEC060();
      __swift_project_value_buffer(v15, qword_2800550B0);
      v16 = v14;
      v17 = sub_265FEC040();
      v18 = sub_265FEC390();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 67109378;
        *(v19 + 4) = v8;
        *(v19 + 8) = 2112;
        *(v19 + 10) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_265FBB000, v17, v18, "Stopped tracking disconnecting display. hardwareIdentity: %u; identity: %@", v19, 0x12u);
        sub_265FC588C(v20);
        MEMORY[0x2667764A0](v20, -1, -1);
        MEMORY[0x2667764A0](v19, -1, -1);
      }

      v23 = *(a2 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect);
      v22 = *(a2 + OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_onDisconnect + 8);

      v23(v13, v16);
    }

    else
    {
      swift_endAccess();
      sub_265FEC550();
      MEMORY[0x2667756D0](0xD00000000000002CLL, 0x8000000265FF1370);
      v32 = [a1 description];
      v33 = sub_265FEC0E0();
      v35 = v34;

      MEMORY[0x2667756D0](v33, v35);

      MEMORY[0x2667756D0](0xD000000000000014, 0x8000000265FF13A0);
      swift_beginAccess();
      v36 = *(a2 + v4);
      if (*(v36 + 16))
      {
        v37 = sub_265FDA61C(a1);
        if (v38)
        {
          v39 = *(*(v36 + 56) + 4 * v37);
        }
      }

      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055170, &qword_265FEEF48);
      v40 = sub_265FEC100();
      MEMORY[0x2667756D0](v40);

      MEMORY[0x2667756D0](0xD000000000000015, 0x8000000265FF13C0);
      v41 = OBJC_IVAR____TtC13ShellSceneKit17FBSHardwareSource_connectedHardware;
      swift_beginAccess();
      v42 = *(a2 + v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055178, &unk_265FEEF50);
      v43 = sub_265FEC090();
      v45 = v44;

      MEMORY[0x2667756D0](v43, v45);

      sub_265FEC5E0();
      __break(1u);
    }
  }
}

unint64_t sub_265FCBDF4()
{
  result = qword_280055160;
  if (!qword_280055160)
  {
    type metadata accessor for CADisplayHardware();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280055160);
  }

  return result;
}

void sub_265FCBE90(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_265FCBF04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055640, &unk_265FEFC90);
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_265FEC410();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265FCC168(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280055190, &qword_265FEEF60);
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {

        v22 = *(&v32 + 1);
      }

      result = MEMORY[0x266775CE0](*(v8 + 40), v21, 4);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265FCC3EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D0, &unk_265FEFC60);
  v43 = a2;
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 24 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v23 + 8 * v22);
      if ((v43 & 1) == 0)
      {
        v29 = *v24;
        v30 = *(v24 + 8);
        v31 = *(v24 + 16);
        sub_265FC23C0();
      }

      v32 = *(v8 + 40);
      sub_265FEC780();
      if (v27 < 0)
      {
        MEMORY[0x266775D10](1);
        sub_265FEC130();
        sub_265FEC7A0();
        sub_265FEC7A0();
      }

      else
      {
        MEMORY[0x266775D10](0);
        sub_265FEC130();
      }

      result = sub_265FEC7B0();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v17 = v28;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v17 = v28;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 24 * v16;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_38;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_265FCC6FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551C8, &unk_265FEEFD0);
  v38 = a2;
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v39 = *(v22 + 16 * v21);
      if ((v38 & 1) == 0)
      {
        sub_265FC23C0();
        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_265FEC780();
      if (v26 < 0)
      {
        MEMORY[0x266775D10](1);
        sub_265FEC130();
        sub_265FEC7A0();
        sub_265FEC7A0();
      }

      else
      {
        MEMORY[0x266775D10](0);
        sub_265FEC130();
      }

      result = sub_265FEC7B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_38;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_265FCCA0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551D8, &unk_265FEEFE0);
  v41 = a2;
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      if (v41)
      {
        v24 = *v23;
        v42 = *(v23 + 8);
        v25 = *(v23 + 24);
        v26 = *(v23 + 32);
        v27 = *(v23 + 48);
        v43 = v25;
        v44 = *(v23 + 40);
        v46 = *(v23 + 56);
        v45 = *(v23 + 72);
      }

      else
      {
        v28 = *(v23 + 16);
        v29 = *(v23 + 32);
        v30 = *(v23 + 48);
        *&v50[10] = *(v23 + 58);
        v49 = v29;
        *v50 = v30;
        *&v48[16] = v28;
        *v48 = *v23;
        v46 = *&v50[8];
        v45 = *&v50[24];
        v27 = v30;
        v26 = v29;
        v43 = *(&v28 + 1);
        v44 = *(&v29 + 1);
        v24 = *v48;
        v42 = *&v48[8];
        sub_265FCF134(v48, v47);
      }

      result = MEMORY[0x266775CE0](*(v8 + 40), v22, 4);
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v24;
      *(v17 + 8) = v42;
      *(v17 + 24) = v43;
      *(v17 + 32) = v26;
      *(v17 + 40) = v44;
      *(v17 + 48) = v27;
      *(v17 + 56) = v46;
      *(v17 + 72) = v45;
      ++*(v8 + 16);
      v5 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v41)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265FCCD44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E0, &unk_265FEFC70);
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      result = MEMORY[0x266775CE0](*(v8 + 40), v21, 4);
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_265FCCFB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800551E8, &qword_265FEEFF0);
  result = sub_265FEC610();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x266775CE0](*(v8 + 40), v22, 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_265FCD224(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_265FEC410();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 4 * v3);
          v20 = (v18 + 4 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_265FCD3B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x266775CE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265FCD524(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v8;
      v10 = 24 * v6;
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = *(v2 + 48) + 24 * v6;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_265FEC780();
      if (v16 < 0)
      {
        MEMORY[0x266775D10](1);
        sub_265FC23C0();
        sub_265FEC130();
        sub_265FEC7A0();
        sub_265FEC7A0();
      }

      else
      {
        MEMORY[0x266775D10](0);
        sub_265FC23C0();
        sub_265FEC130();
      }

      v17 = sub_265FEC7B0();
      result = sub_265FC23C8();
      v18 = v17 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v29;
        v2 = v12;
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        v2 = v12;
        if (v18 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v18)
      {
LABEL_13:
        v19 = *(v2 + 48);
        v20 = v19 + 24 * v3;
        v21 = (v19 + v10);
        if (24 * v3 < v10 || v20 >= v21 + 24 || v3 != v6)
        {
          v22 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_265FCD780(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    v29 = v4;
    do
    {
      v9 = v8;
      v10 = 24 * v6;
      v11 = *(v2 + 40);
      v12 = v2;
      v13 = *(v2 + 48) + 24 * v6;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_265FEC780();
      if (v16 < 0)
      {
        MEMORY[0x266775D10](1);
        sub_265FC23C0();
        sub_265FEC130();
        sub_265FEC7A0();
        sub_265FEC7A0();
      }

      else
      {
        MEMORY[0x266775D10](0);
        sub_265FC23C0();
        sub_265FEC130();
      }

      v17 = sub_265FEC7B0();
      result = sub_265FC23C8();
      v18 = v17 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v29;
        v2 = v12;
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        v2 = v12;
        if (v18 >= v8)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v18)
      {
LABEL_13:
        v19 = *(v2 + 48);
        v20 = v19 + 24 * v3;
        v21 = (v19 + v10);
        if (24 * v3 < v10 || v20 >= v21 + 24 || v3 != v6)
        {
          v22 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 16 * v3);
        v25 = (v23 + 16 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_265FCD9DC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265FEC470() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x266775CE0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 80 * v3;
          v16 = (v15 + 80 * v6);
          if (80 * v3 < (80 * v6) || result >= v16 + 80 || v3 != v6)
          {
            result = memmove(result, v16, 0x50uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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