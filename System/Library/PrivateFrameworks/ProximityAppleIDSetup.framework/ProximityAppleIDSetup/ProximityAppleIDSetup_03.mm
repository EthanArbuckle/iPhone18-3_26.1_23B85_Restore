uint64_t PASAccountContextExtension.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] && *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice) == v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice])
      {
        v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
        v6 = *&v10[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext];
        if (!v5)
        {
          v9 = v6;

          if (!v6)
          {
            v3 = 1;
            return v3 & 1;
          }

          goto LABEL_10;
        }

        if (v6)
        {
          type metadata accessor for PASFlowStepAllSetContext();
          v7 = v6;
          v8 = v5;
          v3 = sub_2610BCE24();

          return v3 & 1;
        }
      }
    }
  }

  else
  {
    sub_260FAC3F0(v11);
  }

LABEL_10:
  v3 = 0;
  return v3 & 1;
}

uint64_t PASAccountContextExtension.hash.getter()
{
  sub_2610BD584();
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP);
  sub_2610BD534();
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair);
  sub_2610BD534();
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair);
  sub_2610BD534();
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice);
  sub_2610BD534();
  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice);
  sub_2610BD534();
  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  sub_2610BD534();
  if (v6)
  {
    v7 = v6;
    sub_2610BCE34();
  }

  return sub_2610BD564();
}

uint64_t static PASAccountContextExtension.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE647B0 = a1;
  return result;
}

Swift::Void __swiftcall PASAccountContextExtension.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP);
  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair);
  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair);
  v8 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice);
  v10 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice);
  v12 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  v14 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id PASAccountContextExtension.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FDEED8(a1);

  return v4;
}

id PASAccountContextExtension.init(coder:)(void *a1)
{
  v2 = sub_260FDEED8(a1);

  return v2;
}

id PASAccountContextExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASAccountContextExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_260FDE5C8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext);
  v2 = v1;
  return v1;
}

uint64_t sub_260FDE5FC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE640(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE6F0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE734(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE7E4()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE828(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE8D8()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDE91C(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_260FDE9CC()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_260FDEA10(char a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_260FDEAC0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_260FDEB20()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_260FDEB6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_260FDEC24()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair;
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair;
  swift_beginAccess();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice;
  swift_beginAccess();
  v8 = *(v0 + v7);
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext;
  swift_beginAccess();
  v12 = *(v0 + v11);
  v13 = type metadata accessor for PASAccountContextExtension();
  v14 = objc_allocWithZone(v13);
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] = v2;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] = v4;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] = v6;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] = v8;
  v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice] = v10;
  *&v14[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext] = v12;
  v17.receiver = v14;
  v17.super_class = v13;
  v15 = v12;
  return objc_msgSendSuper2(&v17, sel_init);
}

id PASAccountContextExtensionBuilder.init()()
{
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresCDP] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresManateeRepair] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_requiresFamilyRepair] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPrivacyDisclosureOnSourceDevice] = 0;
  v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_showPasscodeBiometricsRequestOnTargetDevice] = 0;
  *&v0[OBJC_IVAR____TtC21ProximityAppleIDSetup33PASAccountContextExtensionBuilder_flowStepAllSetContext] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASAccountContextExtensionBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PASAccountContextExtensionBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASAccountContextExtensionBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_260FDEED8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2610BC9D4();
  v6 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresCDP] = v6;
  v7 = sub_2610BC9D4();
  v8 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresManateeRepair] = v8;
  v9 = sub_2610BC9D4();
  v10 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_requiresFamilyRepair] = v10;
  v11 = sub_2610BC9D4();
  v12 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPrivacyDisclosureOnSourceDevice] = v12;
  v13 = sub_2610BC9D4();
  v14 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_showPasscodeBiometricsRequestOnTargetDevice] = v14;
  type metadata accessor for PASFlowStepAllSetContext();
  *&v2[OBJC_IVAR____TtC21ProximityAppleIDSetup26PASAccountContextExtension_flowStepAllSetContext] = sub_2610BCE14();
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_6Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_260FDF608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_260FA3F5C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_260FA6A84(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_260FA6A84(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_260FA6A84(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2610BCF04();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_260FA6A84(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_260FDF8D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_260FA6A84(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_260FA6A84(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2610BCF04();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_260FA6A84(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_260FDFB9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C0, &qword_2610BEDD8);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v35[0] = *v14;
    *(&v35[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_260FA6A84(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_260FA6A84(v34, v35);
    v19 = *(v2 + 40);
    result = sub_2610BCF04();
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v7 + 8 * (v21 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v7 + 8 * v22);
        if (v26 != -1)
        {
          v10 = __clz(__rbit64(~v26)) + (v22 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v21) & ~*(v7 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v27;
    *(v11 + 16) = v28;
    *(v11 + 32) = v29;
    result = sub_260FA6A84(v35, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_260FDFE64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63C28, &unk_2610C2CD0);
    v2 = sub_2610BD114();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
        swift_dynamicCast();
        sub_260FA6A84(&v25, v27);
        sub_260FA6A84(v27, v28);
        sub_260FA6A84(v28, &v26);
        result = sub_260FA5FBC(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_260FA6A84(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_260FA6A84(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t PASAuthResults.dsid.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x277CEFF88];
  v3 = sub_2610BCA04();
  v5 = sub_260FC8360(v3, v4, v1);

  return v5;
}

uint64_t PASCodableAuthResults.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5C4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_260FE4B78();
    sub_2610BD3B4();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
    sub_260FA9AB4(0, &qword_27FE64848, 0x277CBEAC0);
    v6 = sub_2610BCD94();
    if (v6 && (v19[0] = 0, v7 = v6, sub_2610BC904(), v7, (v8 = v19[0]) != 0))
    {
      v19[0] = sub_260FA8A9C(MEMORY[0x277D84F90]);

      sub_260FE4DD0(v9, v19, sub_260FE618C, 0, v8);
      swift_bridgeObjectRelease_n();
      v10 = sub_260FE0410(v19[0]);
      sub_260FAC46C(v17, v18);

      *a2 = v10;
    }

    else
    {
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v11 = sub_2610BC7B4();
      __swift_project_value_buffer(v11, qword_27FE65900);
      v12 = sub_2610BC794();
      v13 = sub_2610BCD64();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_260F97000, v12, v13, "PASAuthResults failed to init from decoder", v14, 2u);
        MEMORY[0x2666F8720](v14, -1, -1);
      }

      sub_260FE4BCC();
      swift_allocError();
      *v15 = 1;
      swift_willThrow();
      sub_260FAC46C(v17, v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FE0410(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_260FA3F5C(*(a1 + 56) + 32 * v12, v38);
    *&v37 = v15;
    *(&v37 + 1) = v14;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_260FA3F5C(&v35, v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    if (swift_dynamicCast())
    {
      v16 = v32;
      if (!v32)
      {
        goto LABEL_17;
      }

      v33[0] = v35;
      v33[1] = v36;
      v32 = v34;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_261097F74(v17 + 1, 1);
        v2 = v39;
      }

      v18 = v32;
      v19 = *(v2 + 40);
      sub_2610BD514();
      v40 = *(&v18 + 1);
      sub_2610BCA54();
      result = sub_2610BD574();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v21) >> 6;
        while (++v23 != v26 || (v25 & 1) == 0)
        {
          v27 = v23 == v26;
          if (v23 == v26)
          {
            v23 = 0;
          }

          v25 |= v27;
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v29 = (*(v2 + 48) + 16 * v24);
      v30 = v40;
      *v29 = v18;
      v29[1] = v30;
      *(*(v2 + 56) + 8 * v24) = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v33);
    }

    else
    {
      *&v32 = 0;
LABEL_17:
      result = sub_260FA9980(&v34, qword_27FE648E8, &qword_2610C2CF0);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t PASCodableAuthResults.encode(to:)(void *a1)
{
  v15[5] = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5E4();
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v5 = sub_2610BC8F4();
  v14[0] = 0;
  v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = sub_2610BC534();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_260FE50F4();
    sub_2610BD3E4();
    sub_260FAC46C(v8, v10);
  }

  else
  {
    v11 = v7;
    sub_2610BC4F4();

    swift_willThrow();
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v15);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static PASCodableAuthResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v4 = sub_2610BC8F4();
  v5 = sub_2610BC8F4();
  v6 = sub_2610BCE24();

  return v6 & 1;
}

uint64_t static PASAuthResults.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v4 = sub_2610BC8F4();
  v5 = sub_2610BC8F4();
  LOBYTE(v3) = sub_2610BCE24();

  return v3 & 1;
}

uint64_t PASCodableAuthResults.hashValue.getter()
{
  v1 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FE0AD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v4 = sub_2610BC8F4();
  v5 = sub_2610BC8F4();
  v6 = sub_2610BCE24();

  return v6 & 1;
}

uint64_t sub_260FE0BC4()
{
  v1 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FE0C44()
{
  v1 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t PASAuthResults.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = sub_260FA8A9C(MEMORY[0x277D84F90]);

  sub_260FE4DD0(v4, &v7, sub_260FE618C, 0, a1);
  swift_bridgeObjectRelease_n();
  v5 = sub_260FE0410(v7);

  *a2 = v5;
  return result;
}

uint64_t sub_260FE0D44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_260FA9708(a1, v7);
  if (swift_dynamicCast())
  {
    result = v5;
    v4 = v6;
  }

  else
  {
    result = sub_2610BCEF4();
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t PASAuthResults.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v9 << 6);
      v12 = (*(v1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v11);

      swift_unknownObjectRetain();
      sub_2610BCA54();
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_2610BCE34();
      swift_unknownObjectRelease();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

NSDictionary __swiftcall PASAuthResults.asAKAuthResults()()
{
  sub_260FDF8D0(*v0);
  v1 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v2 = sub_2610BC8F4();

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t PASAuthResults.acceptingTerms(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);

  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 141558274;
    *(v9 + 4) = 1752392040;
    *(v9 + 12) = 2080;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64868, &unk_2610C26F0);
    v11 = sub_2610BCA34();
    v13 = sub_260FA5970(v11, v12, &v21);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_260F97000, v7, v8, "PASAuthResults acceptingTerms %{mask.hash}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  v21 = v5;
  v14 = *MEMORY[0x277CEFF70];
  v15 = sub_2610BCA04();
  v17 = v16;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    if (swift_dynamicCast())
    {
      v18 = v20;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {

    v18 = 0;
  }

  result = sub_260FAD814(v18, v15, v17);
  *a2 = v21;
  return result;
}

uint64_t PASAuthResults.hashValue.getter()
{
  v2 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FE1230(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_260FA9AB4(0, &qword_27FE64CE0, 0x277D82BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
  v4 = sub_2610BC8F4();
  v5 = sub_2610BC8F4();
  LOBYTE(v3) = sub_2610BCE24();

  return v3 & 1;
}

uint64_t sub_260FE12F8()
{
  v2 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FE1348()
{
  v2 = *v0;
  sub_2610BD514();
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FE13B4(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = sub_2610BCA04();
  v6 = sub_260FC7FF8(v4, v5, v2);

  return v6;
}

uint64_t sub_260FE141C()
{
  v1 = *v0;
  v2 = *MEMORY[0x277CEFF88];
  v3 = sub_2610BCA04();
  v5 = sub_260FC8360(v3, v4, v1);

  return v5;
}

uint64_t sub_260FE148C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *v3;
  v5 = *a3;
  v6 = sub_2610BCA04();
  v8 = sub_260FC7FF8(v6, v7, v4);

  return v8;
}

uint64_t PASAuthResults.toParsable()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *a1 = v3;
}

uint64_t static PASAuthResults.parseObject(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_260FA3F5C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_260FE15BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_260FA3F5C(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_260FE163C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F90, &unk_2610BF4C0);
  *a1 = v3;
}

uint64_t AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = *(a4 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  *v10 = v4;
  v10[1] = sub_260FE17C0;

  return v12(a2, a3, a4);
}

uint64_t sub_260FE17C0(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_260FE18F4, 0, 0);
}

uint64_t sub_260FE18F4()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = sub_260FA9068(MEMORY[0x277D84F90]);
  }

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260FE196C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_260FE1990, 0, 0);
}

uint64_t sub_260FE1990()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260FE1AB8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648C8, &unk_2610C2CC0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260FE1BF8;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v1 authenticateWithContext:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260FE1AB8()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 144);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

uint64_t sub_260FE1BF8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
      v9 = sub_2610BC914();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_260FE1D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5264696C61766E69;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = 0x80000002610D18C0;
  }

  else
  {
    v5 = 0xEE0073746C757365;
  }

  if (*a2)
  {
    v6 = 0x5264696C61766E69;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = 0xEE0073746C757365;
  }

  else
  {
    v7 = 0x80000002610D18C0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2610BD384();
  }

  return v9 & 1;
}

uint64_t sub_260FE1DB8()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FE1E4C()
{
  *v0;
  sub_2610BCA54();
}

uint64_t sub_260FE1ECC()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_260FE1F5C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_260FE1FBC(unint64_t *a1@<X8>)
{
  v2 = 0x80000002610D18C0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x5264696C61766E69;
    v2 = 0xEE0073746C757365;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_260FE200C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v3 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v4;
  v5 = sub_2610B3F9C(v1);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v7;
}

uint64_t sub_260FE20D4(uint64_t a1)
{
  v2 = sub_260FE5F1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_260FE2110(uint64_t a1)
{
  v2 = sub_260FE5F1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

id static PASConstants.appProvidedContextDependentSetup.getter()
{
  if (qword_27FE637F0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FE64830;

  return v1;
}

uint64_t sub_260FE21DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  swift_beginAccess();
  sub_260FE609C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63C00, &qword_2610BEDD0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E668(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FE610C(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_260FE2308(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = a3(a1, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v14;
}

uint64_t sub_260FE2410(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[9] = a1;
  v4[10] = a3;
  v5 = *a2;
  v4[11] = v3;
  v4[12] = v5;
  return MEMORY[0x2822009F8](sub_260FE2438, v3, 0);
}

uint64_t sub_260FE2438()
{
  v72 = v0;
  v1 = *(v0 + 96);
  v2 = *MEMORY[0x277CEFFD8];
  v3 = sub_2610BCA04();
  sub_260FC7FF8(v3, v4, v1);
  v6 = v5;

  if (v6)
  {
    v7 = sub_2610BC9D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 96);
  [*(v0 + 80) setUsername_];

  v9 = *MEMORY[0x277CEFF78];
  v10 = sub_2610BCA04();
  sub_260FC7FF8(v10, v11, v8);
  v13 = v12;

  if (v13)
  {
    v14 = sub_2610BC9D4();
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 96);
  [*(v0 + 80) setAltDSID_];

  v16 = *MEMORY[0x277CEFFD0];
  v17 = sub_2610BCA04();
  sub_260FC7FF8(v17, v18, v15);
  v20 = v19;

  if (v20)
  {
    v21 = sub_2610BC9D4();
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 80);
  [v22 _setPassword_];

  [v22 setAuthenticationType_];
  [v22 setIsUsernameEditable_];
  [v22 setServiceType_];
  sub_260FE21DC(v0 + 16);
  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v23);
  v71 = 4;
  v25 = (*(v24 + 8))(&v71, v23, v24);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v25)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v26 = sub_2610BC7B4();
    __swift_project_value_buffer(v26, qword_27FE65900);
    v27 = sub_2610BC794();
    v28 = sub_2610BCD84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_260F97000, v27, v28, "Adding proto account context to bypass shielding, prox setups will bypass shielding", v29, 2u);
      MEMORY[0x2666F8720](v29, -1, -1);
    }

    v30 = *(v0 + 80);

    v31 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
    [v30 setProtoAccountContext_];
  }

  v32 = *(v0 + 96);
  v33 = *MEMORY[0x277CF0040];
  v34 = sub_2610BCA04();
  sub_260FC7FF8(v34, v35, v32);
  v37 = v36;

  if (v37)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v38 = sub_2610BC7B4();
    __swift_project_value_buffer(v38, qword_27FE65900);
    v39 = sub_2610BC794();
    v40 = sub_2610BCD84();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_260F97000, v39, v40, "Setting passwordlessToken on auth context.", v41, 2u);
      MEMORY[0x2666F8720](v41, -1, -1);
    }

    v42 = *(v0 + 80);

    v43 = sub_2610BC9D4();

    [v42 setPasswordlessToken_];
  }

  v44 = *(v0 + 96);
  v45 = *MEMORY[0x277CF0038];
  v46 = sub_2610BCA04();
  sub_260FC7FF8(v46, v47, v44);
  v49 = v48;

  if (v49)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v50 = sub_2610BC7B4();
    __swift_project_value_buffer(v50, qword_27FE65900);
    v51 = sub_2610BC794();
    v52 = sub_2610BCD84();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_260F97000, v51, v52, "Setting idmsDataToken on auth context.", v53, 2u);
      MEMORY[0x2666F8720](v53, -1, -1);
    }

    v54 = *(v0 + 80);

    v55 = sub_2610BC9D4();

    [v54 setIdmsDataToken_];
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v56 = *(v0 + 80);
  v57 = sub_2610BC7B4();
  *(v0 + 104) = __swift_project_value_buffer(v57, qword_27FE65900);
  v58 = v56;
  v59 = sub_2610BC794();
  v60 = sub_2610BCD84();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = *(v0 + 80);
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 141558274;
    *(v62 + 4) = 1752392040;
    *(v62 + 12) = 2112;
    *(v62 + 14) = v61;
    *v63 = v61;
    v64 = v61;
    _os_log_impl(&dword_260F97000, v59, v60, "PASAuthenticator authenticateDependentLocally with: %{mask.hash}@", v62, 0x16u);
    sub_260FA9980(v63, &qword_27FE63FF0, &unk_2610BFDA0);
    MEMORY[0x2666F8720](v63, -1, -1);
    MEMORY[0x2666F8720](v62, -1, -1);
  }

  v65 = *(v0 + 88);

  v67 = v65[19];
  v66 = v65[20];
  __swift_project_boxed_opaque_existential_1(v65 + 16, v67);
  v68 = swift_task_alloc();
  *(v0 + 112) = v68;
  *v68 = v0;
  v68[1] = sub_260FE2B28;
  v69 = *(v0 + 80);

  return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 56, v69, v67, v66);
}

uint64_t sub_260FE2B28()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_260FE2DD8;
  }

  else
  {
    v6 = sub_260FE2C54;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260FE2C54()
{
  v13 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 141558274;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2080;
    *(v0 + 64) = v2;

    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAuthenticator authenticateDependentLocally completed with: %{mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  **(v0 + 72) = v2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_260FE2DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = v7;
  *(v8 + 112) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  return MEMORY[0x2822009F8](sub_260FE2E20, v7, 0);
}

uint64_t sub_260FE2E20()
{
  v28 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 112);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = sub_2610BC9D4();
  [v5 setUsername_];

  [v5 setCompanionDevice_];
  [v5 setAnisetteDataProvider_];
  [v5 setIsUsernameEditable_];
  [v5 setShouldAllowAppleIDCreation_];
  [v5 setAuthenticationType_];
  [v5 setShouldUpdatePersistentServiceTokens_];
  [v5 setShouldOfferSecurityUpgrade_];
  [v5 _setProxyingForApp_];
  [v5 setAnticipateEscrowAttempt_];
  [v5 setServiceType_];
  if (v3 == 1)
  {
    [*(v0 + 56) setAppProvidedContext_];
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 56);
  v9 = sub_2610BC7B4();
  *(v0 + 88) = __swift_project_value_buffer(v9, qword_27FE65900);
  v10 = v8;
  v11 = sub_2610BC794();
  v12 = sub_2610BCD84();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 141558274;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    v16 = [v13 description];
    v17 = sub_2610BCA04();
    v19 = v18;

    v20 = sub_260FA5970(v17, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_260F97000, v11, v12, "PASAuthenticator authenticatePersonalAccountLocally with: %{mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x2666F8720](v15, -1, -1);
    MEMORY[0x2666F8720](v14, -1, -1);
  }

  v21 = *(v0 + 80);
  v23 = v21[19];
  v22 = v21[20];
  __swift_project_boxed_opaque_existential_1(v21 + 16, v23);
  v24 = swift_task_alloc();
  *(v0 + 96) = v24;
  *v24 = v0;
  v24[1] = sub_260FE3170;
  v25 = *(v0 + 56);

  return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 16, v25, v23, v22);
}

uint64_t sub_260FE3170()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_260FE3420;
  }

  else
  {
    v6 = sub_260FE329C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260FE329C()
{
  v13 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 141558274;
    *(v5 + 4) = 1752392040;
    *(v5 + 12) = 2080;
    *(v0 + 24) = v2;

    v7 = sub_2610BCA34();
    v9 = sub_260FA5970(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAuthenticator authenticatePersonalAccountLocally completed with: %{mask.hash}s", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2666F8720](v6, -1, -1);
    MEMORY[0x2666F8720](v5, -1, -1);
  }

  **(v0 + 32) = v2;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_260FE3438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_260FE3460, v4, 0);
}

uint64_t sub_260FE3460()
{
  v1 = *(v0 + 64);
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_260FE3588;

  return v8(v2, v3);
}

uint64_t sub_260FE3588(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_260FE36D0, v7, 0);
}

uint64_t sub_260FE36D0()
{
  v28 = v0;
  v1 = *(v0 + 80);
  if (v1)
  {
    [*(v0 + 48) setLinkType_];
    if (qword_27FE637F0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    [v4 setAppProvidedContext_];
    [v4 setProxiedDevice_];
    v5 = [v1 aa_altDSID];
    [v4 setAltDSID_];

    [v4 setAnisetteDataProvider_];
    [v4 setNeedsNewChildAccount_];
    [v4 _setProxyingForApp_];
    [v4 setServiceType_];
    [v4 setIsUsernameEditable_];
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 40);
    v7 = sub_2610BC7B4();
    *(v0 + 88) = __swift_project_value_buffer(v7, qword_27FE65900);
    v8 = v6;
    v9 = sub_2610BC794();
    v10 = sub_2610BCD84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 40);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 141558274;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2080;
      v14 = [v11 description];
      v15 = sub_2610BCA04();
      v17 = v16;

      v18 = sub_260FA5970(v15, v17, &v27);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_260F97000, v9, v10, "PASAuthenticator createNewDependentAccount with: %{mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    v19 = *(v0 + 64);
    v21 = v19[19];
    v20 = v19[20];
    __swift_project_boxed_opaque_existential_1(v19 + 16, v21);
    v22 = swift_task_alloc();
    *(v0 + 96) = v22;
    *v22 = v0;
    v22[1] = sub_260FE3A84;
    v23 = *(v0 + 40);

    return AKAppleIDAuthenticationControllerProtocol.authenticationResult(with:)(v0 + 16, v23, v21, v20);
  }

  else
  {
    sub_260FE4BCC();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_260FE3A84()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_260FE3D54;
  }

  else
  {
    v6 = sub_260FE3BB0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_260FE3BB0()
{
  v15 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  v3 = sub_2610BC794();
  v4 = sub_2610BCD84();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 141558274;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2080;
    *(v0 + 24) = v2;

    v8 = sub_2610BCA34();
    v10 = sub_260FA5970(v8, v9, &v14);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_260F97000, v3, v4, "PASAuthenticator createNewDependentAccount completed with: %{mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 80);
  }

  **(v0 + 32) = v2;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_260FE3D54()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260FE3DD8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[11] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator repairLocalAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[10];

  v6 = v5[24];
  v7 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v6);
  v8 = *(v7 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_260FE3FC0;

  return v12(v6, v7);
}

uint64_t sub_260FE3FC0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    __asm { BRAA            X2, X16 }
  }

  v7 = *(v3 + 80);

  return MEMORY[0x2822009F8](sub_260FE410C, v7, 0);
}

uint64_t sub_260FE410C()
{
  v1 = v0[13];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64870, &qword_2610C2730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2610BF400;
    v3 = *MEMORY[0x277CB9088];
    *(inited + 32) = sub_2610BCA04();
    *(inited + 40) = v4;
    v5 = 0xE000000000000000;
    sub_2610BCF84();
    MEMORY[0x2666F7380](0x100000000000001ALL, 0x80000002610D2F40);
    v6 = [v1 username];
    if (v6)
    {
      v7 = v6;
      v8 = sub_2610BCA04();
      v5 = v9;
    }

    else
    {
      v8 = 0;
    }

    v13 = v0[10];
    MEMORY[0x2666F7380](v8, v5);

    MEMORY[0x2666F7380](0x100000000000002ELL, 0x80000002610D2F60);
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    v14 = sub_260FA9178(inited);
    swift_setDeallocating();
    sub_260FA9980(inited + 32, &qword_27FE64878, &qword_2610C2738);
    v15 = v13[24];
    v16 = v13[25];
    __swift_project_boxed_opaque_existential_1(v13 + 21, v15);
    v17 = sub_260FDFB9C(v14);
    v0[14] = v17;

    v18 = *(v16 + 24);
    v21 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    v0[15] = v20;
    *v20 = v0;
    v20[1] = sub_260FE4414;

    return v21(v1, v17, v15, v16);
  }

  else
  {
    sub_260FE4BCC();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0[1];

    return v11(0);
  }
}

uint64_t sub_260FE4414()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_260FE461C;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 80);

    v5 = sub_260FE453C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260FE453C()
{
  v1 = v0[11];
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAuthenticator repaired account", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[13];

  v6 = v0[1];

  return v6(1);
}

uint64_t sub_260FE461C()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[16];
  v4 = v0[1];

  return v4(0);
}

void *PASAuthenticator.deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PASAuthenticator.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[15];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 21);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_260FE4730(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_260FBF860;

  return sub_260FE2410(a1, a2, a3);
}

uint64_t sub_260FE47E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_260FB6DB4;

  return sub_260FE2DF0(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_260FE48CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_260FBF860;

  return sub_260FE3438(a1, a2, a3, a4);
}

uint64_t sub_260FE4990()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB727C;

  return sub_260FE3DB8();
}

uint64_t sub_260FE4A20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13);
  type metadata accessor for PASAuthenticator();
  v15 = swift_allocObject();
  (*(v8 + 16))(v12, v14, a4);
  v16 = sub_260FE4C20(a1, v12, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

unint64_t sub_260FE4B78()
{
  result = qword_27FE64838;
  if (!qword_27FE64838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64838);
  }

  return result;
}

unint64_t sub_260FE4BCC()
{
  result = qword_27FE64850;
  if (!qword_27FE64850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64850);
  }

  return result;
}

uint64_t sub_260FE4C20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a4;
  v19 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0;
  *(a3 + 112) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE648E0, &qword_2610BEEC0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(a3 + 120) = v11;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASAuthenticator init", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  sub_260F98E14(a1, a3 + 128);
  sub_260F98E14(&v17, a3 + 168);
  return a3;
}

uint64_t sub_260FE4DD0(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, _BYTE *), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = 0;

  while (v11)
  {
LABEL_12:
    sub_260FA9708(*(v7 + 48) + 40 * (__clz(__rbit64(v11)) | (v13 << 6)), v54);
    a3(&v52, v54);
    if (*(v5 + 16))
    {
      v15 = sub_260FA60B4(v54);
      if (v16)
      {
        sub_260FA3F5C(*(v5 + 56) + 32 * v15, v51);
        v17 = v52;
        v18 = v53;
        sub_260FA6A84(v51, v50);
        v19 = *v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = *v6;
        v21 = v55;
        v47 = v18;
        v23 = sub_260FA5FBC(v17, v18);
        v24 = v21[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_32;
        }

        v27 = v22;
        if (v21[3] >= v26)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v30 = v55;
            if ((v22 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_261098C00();
            v30 = v55;
            if ((v27 & 1) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_261097078(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_260FA5FBC(v17, v47);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_34;
          }

          v23 = v28;
          v30 = v55;
          if ((v27 & 1) == 0)
          {
LABEL_27:
            v30[(v23 >> 6) + 8] |= 1 << v23;
            v40 = (v30[6] + 16 * v23);
            *v40 = v17;
            v40[1] = v47;
            sub_260FA6A84(v50, (v30[7] + 32 * v23));
            v41 = v30[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_33;
            }

            v30[2] = v43;
            goto LABEL_29;
          }
        }

        v39 = (v30[7] + 32 * v23);
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        sub_260FA6A84(v50, v39);

LABEL_29:
        v6 = a2;
        v5 = a5;
        *a2 = v30;
        goto LABEL_6;
      }
    }

    v31 = *v6;
    v32 = sub_260FA5FBC(v52, v53);
    if (v33)
    {
      v34 = v32;
      v35 = *v6;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v6;
      *&v50[0] = *v6;
      if ((v36 & 1) == 0)
      {
        sub_261098C00();
        v37 = *&v50[0];
      }

      v38 = *(*(v37 + 48) + 16 * v34 + 8);

      sub_260FA6A84((*(v37 + 56) + 32 * v34), v51);
      sub_261098228(v34, v37);
      *v6 = v37;
    }

    else
    {
      memset(v51, 0, sizeof(v51));
    }

    sub_260FA9980(v51, &qword_27FE63830, &qword_2610BE8E0);
LABEL_6:
    v7 = v48;
    v11 &= v11 - 1;
    sub_260FA9764(v54);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_2610BD444();
  __break(1u);
  return result;
}

unint64_t sub_260FE50F4()
{
  result = qword_27FE64860;
  if (!qword_27FE64860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64860);
  }

  return result;
}

unint64_t sub_260FE514C()
{
  result = qword_27FE64880;
  if (!qword_27FE64880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64880);
  }

  return result;
}

unint64_t sub_260FE51A4()
{
  result = qword_27FE64888;
  if (!qword_27FE64888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64888);
  }

  return result;
}

unint64_t sub_260FE51F8(uint64_t a1)
{
  result = sub_260FE51A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FE5230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_260FE5278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of AKAppleIDAuthenticationControllerProtocol.authenticate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260FBD298;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.authenticateDependentLocally(with:authContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_260FBF860;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.personalAuth(withUsername:context:companionDevice:requireAppleMAID:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_260FBF860;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.createNewDependentAccount(authContext:proxiedDevice:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_260FBF860;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PASAuthenticatorProtocol.repairLocalAccount()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260FBF864;

  return v9(a1, a2);
}

uint64_t dispatch thunk of PASAuthenticator.authenticateDependentLocally(with:authContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_260FBF860;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of PASAuthenticator.personalAuth(withUsername:context:companionDevice:requireAppleMAID:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 152);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_260FB6DB4;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of PASAuthenticator.createNewDependentAccount(authContext:proxiedDevice:anisetteDataProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_260FBF860;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of PASAuthenticator.repairLocalAccount()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_260FBD298;

  return v6();
}

unint64_t sub_260FE5EE4(void *a1)
{
  a1[1] = sub_260FE5F1C();
  a1[2] = sub_260FE5F70();
  result = sub_260FE5FC4();
  a1[3] = result;
  return result;
}

unint64_t sub_260FE5F1C()
{
  result = qword_27FE64890;
  if (!qword_27FE64890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64890);
  }

  return result;
}

unint64_t sub_260FE5F70()
{
  result = qword_27FE64898;
  if (!qword_27FE64898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64898);
  }

  return result;
}

unint64_t sub_260FE5FC4()
{
  result = qword_27FE648A0;
  if (!qword_27FE648A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE648A0);
  }

  return result;
}

unint64_t sub_260FE601C()
{
  result = qword_27FE648A8;
  if (!qword_27FE648A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE648A8);
  }

  return result;
}

uint64_t sub_260FE609C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C00, &qword_2610BEDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260FE610C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63C00, &qword_2610BEDD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PASTimer.__allocating_init(named:startingAt:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PASTimer.init(named:startingAt:execute:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t PASTimer.init(named:startingAt:execute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = 0;
  *(v6 + 144) = 1;
  *(v6 + 168) = 0;
  sub_2610BC574();
  v13 = v12;
  v14 = sub_2610BC5D4();
  (*(*(v14 - 8) + 8))(a3, v14);
  *(v6 + 112) = v13;
  *(v6 + 120) = a1;
  *(v6 + 128) = a2;
  *(v6 + 152) = a4;
  *(v6 + 160) = a5;
  return v6;
}

uint64_t PASTimer.stop(withContext:at:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = a1;
  v3 = *v2;
  v4 = sub_2610BC5D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v3 + 80);
  v7 = sub_2610BCE64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = sub_2610BCC94();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, v25, v7);
  v17 = v4;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v4);
  v18 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v19 = (v9 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v27;
  *(v20 + 4) = v26;
  *(v20 + 5) = v21;
  (*(v8 + 32))(&v20[v18], v11, v7);
  (*(v5 + 32))(&v20[v19], v24, v17);

  sub_261042434(0, 0, v15, &unk_2610C2D00, v20);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_260FE67D0, v2, 0);
}

uint64_t sub_260FE659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_260FB6DB4;

  return PASTimer.stop(withContext:at:)(a5, a6);
}

uint64_t sub_260FE6648(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_2610BCE64() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_2610BC5D4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_260FB6DB4;

  return sub_260FE659C(a1, v11, v12, v13, v1 + v7, v1 + v10);
}

uint64_t sub_260FE67D0()
{
  v22 = v0;
  v2 = v0[3];
  v1 = v0[4];
  sub_2610BC574();
  if (*(v1 + 144) == 1)
  {
    v4 = v0[4];
    v5 = v3 - *(v4 + 112);
    *(v4 + 136) = v5;
    *(v1 + 144) = 0;
    v6 = *(v4 + 160);
    v20 = (*(v4 + 152) + **(v4 + 152));
    v7 = *(*(v4 + 152) + 4);
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_260FE6A50;
    v9 = v0[2];
    v10.n128_f64[0] = v5;

    return v20(v9, v10);
  }

  else
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v12 = v0[4];
    v13 = sub_2610BC7B4();
    __swift_project_value_buffer(v13, qword_27FE65900);

    v14 = sub_2610BC794();
    v15 = sub_2610BCD64();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[4];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_260FA5970(*(v16 + 120), *(v16 + 128), &v21);
      _os_log_impl(&dword_260F97000, v14, v15, "PASTimer %{public}s already stopped", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x2666F8720](v18, -1, -1);
      MEMORY[0x2666F8720](v17, -1, -1);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_260FE6A50()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *PASTimer.deinit()
{
  v1 = v0[16];

  v2 = v0[20];

  v3 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PASTimer.__deallocating_deinit()
{
  PASTimer.deinit();

  return MEMORY[0x282200960](v0);
}

void *sub_260FE6CA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 1;
  *a2 = *result == 1;
  *(a2 + 8) = v2;
  return result;
}

uint64_t PASFlowStepAllSetContext.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8);

  return v1;
}

uint64_t PASFlowStepAllSetContext.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8);

  return v1;
}

uint64_t PASFlowStepAllSetContext.systemImage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8);

  return v1;
}

uint64_t PASFlowStepAllSetContext.imageColor.getter()
{
  result = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8);
  return result;
}

uint64_t PASFlowStepAllSetContext.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0x656C746974207B20, 0xEB00000000203D20);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title);
  v11 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](0x746974627573202CLL, 0xED0000203D20656CLL);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle);
  v12 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8);

  v3 = sub_2610BCA34();
  MEMORY[0x2666F7380](v3);

  MEMORY[0x2666F7380](0xD000000000000010, 0x80000002610D3030);
  v9 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage);
  v13 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8);

  v4 = sub_2610BCA34();
  MEMORY[0x2666F7380](v4);

  MEMORY[0x2666F7380](0x436567616D69202CLL, 0xEF203D20726F6C6FLL);
  v10 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
  LOBYTE(v13) = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE649A0, &unk_2610C2E08);
  v5 = sub_2610BCA34();
  MEMORY[0x2666F7380](v5);

  MEMORY[0x2666F7380](1048387628, 0xE400000000000000);
  return 0;
}

uint64_t PASFlowStepAllSetContext.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v18);
  if (!v19)
  {
    sub_260FAC3F0(v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8);
  v4 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8];
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_30;
    }

    v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title] && v3 == v4;
    if (!v5 && (sub_2610BD384() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8);
  v7 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8];
  if (v6)
  {
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle] && v6 == v7;
    if (!v8 && (sub_2610BD384() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v7)
  {
    goto LABEL_30;
  }

  v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8);
  v10 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8];
  if (v9)
  {
    if (v10 && (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage) == *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage] && v9 == v10 || (sub_2610BD384() & 1) != 0))
    {
      goto LABEL_27;
    }

LABEL_30:

    return 0;
  }

  if (v10)
  {
    goto LABEL_30;
  }

LABEL_27:
  v11 = v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor;
  v12 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
  v13 = *(v11 + 8);
  v14 = *&v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  v15 = v17[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8];

  result = v15;
  if ((v13 & 1) == 0)
  {
    return (v12 == v14) & ~v15;
  }

  return result;
}

uint64_t PASFlowStepAllSetContext.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage);
    sub_2610BD534();
    sub_2610BCA54();
  }

  else
  {
    sub_2610BD534();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
    sub_2610BD534();
    MEMORY[0x2666F7E40](v4);
  }

  return sub_2610BD564();
}

uint64_t static PASFlowStepAllSetContext.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE64970 = a1;
  return result;
}

Swift::Void __swiftcall PASFlowStepAllSetContext.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title);
    v4 = sub_2610BC9D4();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle);
    v7 = sub_2610BC9D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage + 8))
  {
    v9 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage);
    v10 = sub_2610BC9D4();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor + 8))
  {
    v12 = 0;
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor);
    v12 = sub_2610BD364();
  }

  v13 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];
  swift_unknownObjectRelease();
}

id PASFlowStepAllSetContext.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FE7EE4(a1);

  return v4;
}

id PASFlowStepAllSetContext.init(coder:)(void *a1)
{
  v2 = sub_260FE7EE4(a1);

  return v2;
}

id PASFlowStepAllSetContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASFlowStepAllSetContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260FE7AC0()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor);
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_260FE7B0C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id sub_260FE7BCC()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_title);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_subtitle);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_systemImage);
  swift_beginAccess();
  v9 = *v7;
  v8 = v7[1];
  v10 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor);
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = type metadata accessor for PASFlowStepAllSetContext();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title];
  *v15 = v3;
  *(v15 + 1) = v2;
  v16 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle];
  *v16 = v6;
  *(v16 + 1) = v5;
  v17 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage];
  *v17 = v9;
  *(v17 + 1) = v8;
  v18 = &v14[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  *v18 = v11;
  v18[8] = v12;
  v20.receiver = v14;
  v20.super_class = v13;

  return objc_msgSendSuper2(&v20, sel_init);
}

id PASFlowStepAllSetContextBuilder.init()()
{
  v1 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_subtitle];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_systemImage];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC21ProximityAppleIDSetup31PASFlowStepAllSetContextBuilder_imageColor];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PASFlowStepAllSetContextBuilder();
  return objc_msgSendSuper2(&v6, sel_init);
}

id PASFlowStepAllSetContextBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASFlowStepAllSetContextBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_260FE7E78(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a3 + 8);

  v9 = *(a1 + *a4 + 8);

  v10 = *(a1 + *a5 + 8);
}

id sub_260FE7EE4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_260FE8484();
  v5 = sub_2610BCE14();
  sub_2610BC9F4();

  v6 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = sub_2610BCE14();
  sub_2610BC9F4();

  v8 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_subtitle];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = sub_2610BCE14();
  sub_2610BC9F4();

  v10 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_systemImage];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = sub_2610BC9D4();
  v12 = [a1 decodeIntegerForKey_];

  v13 = &v2[OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepAllSetContext_imageColor];
  *v13 = v12 == 1;
  v13[8] = v12 != 1;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init, 0, 0);
}

unint64_t sub_260FE8114()
{
  result = qword_27FE649D0;
  if (!qword_27FE649D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE649D0);
  }

  return result;
}

unint64_t sub_260FE8484()
{
  result = qword_27FE63F58;
  if (!qword_27FE63F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE63F58);
  }

  return result;
}

uint64_t PASPickerPresentable.__allocating_init(familyMember:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static PASPickerPresentable.createChildPresentable()()
{
  result = swift_allocObject();
  *(result + 16) = 0x8000000000000000;
  return result;
}

uint64_t PASPickerPresentable.__allocating_init(account:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1 | 0x4000000000000000;
  return result;
}

uint64_t PASPickerPresentable.altDSID.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 24);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.__allocating_init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PASFamilyMember();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  *(v6 + 16) = v7;
  return v6;
}

uint64_t PASPickerPresentable.init(familyMember:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PASFamilyMember();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  *(v3 + 16) = v7;
  return v3;
}

uint64_t PASPickerPresentable.__allocating_init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  type metadata accessor for PASAccountWithImage();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v6 + 16) = v7 | 0x4000000000000000;
  return v6;
}

uint64_t PASPickerPresentable.init(account:imageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PASAccountWithImage();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v3 + 16) = v7 | 0x4000000000000000;
  return v3;
}

uint64_t PASPickerPresentable.dsid.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.firstName.getter()
{
  v1 = sub_2610BC634();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2610BC9B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v0 + 16);
  if (v5 == 0x8000000000000000)
  {
    sub_2610BC9C4();
    type metadata accessor for PASSourceFlowController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_2610BC624();
    return sub_2610BCA24();
  }

  if (!(v5 >> 62))
  {
    v9 = type metadata accessor for PASFamilyMember();
    *(&v14 + 1) = v9;
    v10 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v15 = v10;
    goto LABEL_7;
  }

  if (v5 >> 62 == 1)
  {
    v9 = type metadata accessor for PASAccountWithImage();
    *(&v14 + 1) = v9;
    v10 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v15 = v10;
    v5 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_7:
    *&v13 = v5;
    __swift_project_boxed_opaque_existential_1(&v13, v9);
    v11 = *(v10 + 32);

    v12 = v11(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(&v13);
    return v12;
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  sub_260FEA13C(&v13);
  return 0;
}

uint64_t PASPickerPresentable.lastName.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 40);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.appleID.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 48);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.accountUsername.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 56);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.formattedUsername.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 64);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t PASPickerPresentable.memberTypeDescription.getter()
{
  v1 = sub_2610BC634();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2610BC9B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v0 + 16) >> 62;
  if (v5)
  {
    if (v5 == 1)
    {
      sub_2610BC9C4();
      type metadata accessor for PASSourceFlowController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
      sub_2610BC624();
      return sub_2610BCA24();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = *(v0 + 16);

    v10 = PASFamilyMember.memberTypeDescription.getter();

    return v10;
  }
}

uint64_t PASPickerPresentable.isMe.getter()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      v5 = 0;
      return v5 & 1;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 72);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5 & 1;
}

uint64_t PASPickerPresentable.imageData.getter()
{
  v1 = *(v0 + 16);
  if (v1 != 0x8000000000000000)
  {
    if (!(v1 >> 62))
    {
      v2 = type metadata accessor for PASFamilyMember();
      *(&v8 + 1) = v2;
      v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
      v9 = v3;
      goto LABEL_6;
    }

    if (v1 >> 62 == 1)
    {
      v2 = type metadata accessor for PASAccountWithImage();
      *(&v8 + 1) = v2;
      v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
      v9 = v3;
      v1 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_6:
      *&v7 = v1;
      __swift_project_boxed_opaque_existential_1(&v7, v2);
      v4 = *(v3 + 80);

      v5 = v4(v2, v3);
      __swift_destroy_boxed_opaque_existential_0Tm(&v7);
      return v5;
    }

    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_260FEA13C(&v7);
  }

  return 0;
}

uint64_t PASPickerPresentable.description.getter()
{
  v1 = *(v0 + 16) >> 62;
  v2 = 0x6C616E6F73726570;
  if (v1 != 1)
  {
    v2 = 0x646C696843646461;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E65646E65706564;
  }
}

uint64_t PASPickerPresentable.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PASPickerPresentable.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_260FE9744()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE98A8()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 24);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9A3C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 40);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9BAC()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 48);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9D1C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 56);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FE9E8C()
{
  v1 = *(*v0 + 16);
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      sub_260FEA13C(&v7);
      return 0;
    }

    v2 = type metadata accessor for PASAccountWithImage();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE65010, 255, type metadata accessor for PASAccountWithImage);
    v9 = v3;
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v2 = type metadata accessor for PASFamilyMember();
    *(&v8 + 1) = v2;
    v3 = sub_260FEA1FC(&unk_27FE64210, 255, type metadata accessor for PASFamilyMember);
    v9 = v3;
  }

  *&v7 = v1;
  __swift_project_boxed_opaque_existential_1(&v7, v2);
  v4 = *(v3 + 64);

  v5 = v4(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  return v5;
}

uint64_t sub_260FEA048@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2610BCF94();
  *a1 = result;
  return result;
}

uint64_t sub_260FEA074(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return _s21ProximityAppleIDSetup20PASPickerPresentableC2eeoiySbAC_ACtFZ_0();
}

uint64_t _s21ProximityAppleIDSetup20PASPickerPresentableC2eeoiySbAC_ACtFZ_0()
{
  v0 = PASPickerPresentable.altDSID.getter();
  v2 = v1;
  v3 = PASPickerPresentable.altDSID.getter();
  if (v2)
  {
    if (v4)
    {
      if (v0 == v3 && v2 == v4)
      {

        v5 = 1;
      }

      else
      {
        v5 = sub_2610BD384();
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_260FEA13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656B0, &unk_2610BFCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260FEA1A4(uint64_t a1, uint64_t a2)
{
  result = sub_260FEA1FC(&qword_27FE649D8, a2, type metadata accessor for PASPickerPresentable);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FEA1FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup20PASPickerPresentableC14RepresentationO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_260FEA2F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_260FEA354(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_260FEA3B4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_260FEA400@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider);
  swift_beginAccess();
  sub_260FC8F7C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63C70, &unk_2610C0780);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9D258(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63C70, &unk_2610C0780);
  swift_endAccess();
}

uint64_t PASFlowStepManateeRepair.__allocating_init(delegate:familyMemberSelection:shouldSignInForSelf:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_260FEB8A0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v11;
}

uint64_t PASFlowStepManateeRepair.init(delegate:familyMemberSelection:shouldSignInForSelf:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = sub_260FEB8A0(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t PASFlowStepManateeRepair.prepareForPresentation()()
{
  v1[17] = v0;
  v1[18] = sub_2610BCC74();
  v1[19] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[20] = v2;
  *v2 = v1;
  v2[1] = sub_260FEA684;

  return sub_26104582C();
}

uint64_t sub_260FEA684()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  v6 = *(v3 + 152);
  v7 = *(v3 + 144);
  v9 = sub_2610BCBF4();
  if (v2)
  {
    v10 = sub_260FEA998;
  }

  else
  {
    v10 = sub_260FEA7DC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_260FEA7DC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  sub_260FEA400(v0 + 56);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
  (*(v4 + 16))(v3, v4);
  if (!*(v0 + 120))
  {
    sub_260FA9980(v0 + 96, &unk_27FE641F0, qword_2610C0210);
    v7 = (v0 + 56);
    goto LABEL_5;
  }

  sub_260F98E14((v0 + 96), v0 + 16);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  if ((*(v6 + 16))(v5, v6))
  {
    v7 = (v0 + 16);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    v8 = *(v0 + 8);
    goto LABEL_7;
  }

  v9 = *(v0 + 136);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_260FC3450();
  swift_allocError();
  *v11 = 0xD000000000000042;
  *(v11 + 8) = 0x80000002610D31A0;
  *(v11 + 16) = &unk_2610C30E8;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v8 = *(v0 + 8);
LABEL_7:

  return v8();
}

uint64_t sub_260FEA998()
{
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t sub_260FEA9FC(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_2610BCC74();
  *(v1 + 48) = sub_2610BCC64();
  v3 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAA94, v3, v2);
}

uint64_t sub_260FEAA94()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
    v5 = *(Strong + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result);
    *v4 = 1;
    v6 = *(v4 + 8);
    *(v4 + 8) = 0;
    sub_260FEBBC8(v5, v6);
    sub_2610439BC();
  }

  v7 = v0[1];

  return v7();
}

uint64_t PASFlowStepManateeRepair.repairManatee(withSecurityUpgradeContext:manateeHelperProvider:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_260FEAB6C, 0, 0);
}

uint64_t sub_260FEAB6C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepManateeRepair repairManatee", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 144);

  sub_260FA99E0(v5, v0 + 16);
  v7 = type metadata accessor for PASManateeRepairController();
  swift_allocObject();
  v8 = sub_2610AA964((v0 + 16), sub_2610AA928, 0);
  *(v0 + 160) = v8;
  *(v0 + 80) = v7;
  *(v0 + 88) = &protocol witness table for PASManateeRepairController;
  *(v0 + 56) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController;
  swift_beginAccess();

  sub_260FC3844(v0 + 56, v6 + v9, &qword_27FE649E8, &unk_2610C30F8);
  swift_endAccess();
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_260FEAD88;
  v11 = *(v0 + 128);

  return PASManateeRepairController.repair(featureName:securityUpgradeContext:)(0xD000000000000025, 0x80000002610D31F0, v11);
}

uint64_t sub_260FEAD88()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_260FEB028;
  }

  else
  {
    v3 = sub_260FEAE9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260FEAE9C()
{
  v1 = *(v0 + 144) + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  v2 = *v1;
  *v1 = 1;
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  sub_260FEBBC8(v2, v3);
  sub_2610BCC74();
  *(v0 + 184) = sub_2610BCC64();
  v5 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAF58, v5, v4);
}

uint64_t sub_260FEAF58()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  sub_2610439BC();

  return MEMORY[0x2822009F8](sub_260FEAFC8, 0, 0);
}

uint64_t sub_260FEAFC8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260FEB028()
{
  v20 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v0[15] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepManateeRepair failed with error %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v13 = v0[18] + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  v14 = *v13;
  *v13 = v0[22];
  v15 = *(v13 + 8);
  *(v13 + 8) = 1;
  sub_260FEBBC8(v14, v15);
  sub_2610BCC74();
  v0[23] = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FEAF58, v17, v16);
}

NSObject *PASFlowStepManateeRepair.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8);
  if (v2 != 255)
  {
    if (v2)
    {
      v3 = *v1;
      sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
      sub_260FEBC04(v3, 1);
      if (qword_27FE63808 != -1)
      {
        swift_once();
      }

      v4 = sub_2610BC7B4();
      __swift_project_value_buffer(v4, qword_27FE65900);
      sub_260FEBC04(v3, 1);
      v5 = sub_2610BC794();
      v6 = sub_2610BCD64();
      sub_260FEBBC8(v3, v2);
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v33 = v8;
        *v7 = 136446210;
        v36 = v3;
        sub_260FEBC04(v3, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
        v9 = sub_2610BCA34();
        v11 = sub_260FA5970(v9, v10, &v33);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepManateeRepair failed with error:\n%{public}s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v8);
        MEMORY[0x2666F8720](v8, -1, -1);
        MEMORY[0x2666F8720](v7, -1, -1);
      }

      swift_willThrow();
      sub_260FEBBC8(v3, v2);
      return v5;
    }

    if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf) == 1)
    {
      sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection, &v33);
      if (v35 == 2)
      {
        v17 = v33;
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v18 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v20 = *(v18 + 8);
        v21 = type metadata accessor for PASFlowStepSendPersonalAccount();
        v22 = *(v21 + 48);
        v23 = *(v21 + 52);
        swift_allocObject();
        v5 = sub_260FC3608(v17, Strong, v20);
        swift_unknownObjectRelease();
        v24 = &qword_27FE64068;
        v25 = type metadata accessor for PASFlowStepSendPersonalAccount;
LABEL_18:
        sub_260FEBC54(v24, v25);
        return v5;
      }

      sub_260FDD4F8(&v33);
    }

    v26 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    v28 = *(v26 + 8);
    sub_260FDD49C(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection, &v33);
    v29 = type metadata accessor for PASFlowStepPasscodeBiometricsRequest();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v5 = sub_2610571A8(v27, v28, &v33);
    swift_unknownObjectRelease();
    v24 = &unk_27FE65BA0;
    v25 = type metadata accessor for PASFlowStepPasscodeBiometricsRequest;
    goto LABEL_18;
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v12 = sub_2610BC7B4();
  __swift_project_value_buffer(v12, qword_27FE65900);
  v13 = sub_2610BC794();
  v14 = sub_2610BCD74();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260F97000, v13, v14, "PASFlowStepManateeRepair result is nil", v15, 2u);
    MEMORY[0x2666F8720](v15, -1, -1);
  }

  v5 = 0x80000002610D3220;
  sub_260FC3450();
  swift_allocError();
  *v16 = 0xD000000000000026;
  *(v16 + 8) = 0x80000002610D3220;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  swift_willThrow();
  return v5;
}

uint64_t sub_260FEB694()
{
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__authenticator);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider);
}

uint64_t PASFlowStepManateeRepair.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  sub_260FDD4F8(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__authenticator);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider);

  return v0;
}

uint64_t PASFlowStepManateeRepair.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection;

  sub_260FDD4F8(v2 + v1);
  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController, &qword_27FE649E8, &unk_2610C30F8);
  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result + 8));
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__authenticator);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_260FEB8A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_manateeRepairController;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v4 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_result;
  *v11 = 0;
  *(v11 + 8) = -1;
  v12 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__authenticator;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE65030, &qword_2610C4080);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0;
  *(v5 + v12) = v13;
  v14 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair__accountProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65760, &qword_2610BE940);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0;
  *(v5 + v14) = v15;
  v16 = qword_27FE63808;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_2610BC7B4();
  __swift_project_value_buffer(v17, qword_27FE65900);
  v18 = sub_2610BC794();
  v19 = sub_2610BCD54();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_260F97000, v18, v19, "PASFlowStepManateeRepair init", v20, 2u);
    MEMORY[0x2666F8720](v20, -1, -1);
  }

  sub_260FDD49C(a3, v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_familyMemberSelection);
  v21 = OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf;
  *(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup24PASFlowStepManateeRepair_shouldSignInForSelf) = a4 & 1;

  v22 = sub_2610BC794();
  v23 = sub_2610BCD84();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67240192;
    v25 = *(v5 + v21);

    *(v24 + 4) = v25;

    _os_log_impl(&dword_260F97000, v22, v23, "PASFlowStepManateeRepair shouldSignInForSelf: %{BOOL,public}d", v24, 8u);
    MEMORY[0x2666F8720](v24, -1, -1);
  }

  else
  {
  }

  v26 = sub_26104DC44(a1, a2);
  sub_260FDD4F8(a3);
  return v26;
}

uint64_t sub_260FEBB38()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_260FB6DB4;

  return sub_260FEA9FC(v0);
}

void sub_260FEBBC8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_260FEBBE0(a1, a2 & 1);
  }
}

void sub_260FEBBE0(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_260FEBBEC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_260FEBC04(result, a2 & 1);
  }

  return result;
}

id sub_260FEBC04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_260FEBC10(uint64_t a1)
{
  result = sub_260FEBC54(&qword_27FE64A10, type metadata accessor for PASFlowStepManateeRepair);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FEBC54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepManateeRepair()
{
  result = qword_27FE64A18;
  if (!qword_27FE64A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PASExtensionDevicePair.sourceDeviceBiometryType.getter()
{
  result = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8);
  return result;
}

id PASExtensionDevicePair.__allocating_init(targetDeviceType:sourceDeviceBiometryType:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v8 = a1;
  v8[4] = BYTE4(a1) & 1;
  v9 = &v7[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = a2;
  v9[8] = a3 & 1;
  v11.receiver = v7;
  v11.super_class = v3;
  return objc_msgSendSuper2(&v11, sel_init);
}

id PASExtensionDevicePair.init(targetDeviceType:sourceDeviceBiometryType:)(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v8 = a1;
  v8[4] = BYTE4(a1) & 1;
  v9 = &v3[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = a2;
  v9[8] = a3 & 1;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t PASExtensionDevicePair.description.getter()
{
  sub_2610BCF84();
  MEMORY[0x2666F7380](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](v1);

  MEMORY[0x2666F7380](8250, 0xE200000000000000);
  sub_2610BD0A4();
  MEMORY[0x2666F7380](0xD00000000000001ELL, 0x80000002610D3330);
  v5 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A48, &qword_2610C31E0);
  v2 = sub_2610BCA34();
  MEMORY[0x2666F7380](v2);

  MEMORY[0x2666F7380](0xD000000000000025, 0x80000002610D3350);
  v6 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A50, qword_2610C31E8);
  v3 = sub_2610BCA34();
  MEMORY[0x2666F7380](v3);

  MEMORY[0x2666F7380](4095264, 0xE300000000000000);
  return 0;
}

uint64_t PASExtensionDevicePair.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_260FAC380(a1, v10);
  if (!v11)
  {
    sub_260FAC3F0(v10);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4];
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4))
  {
    if ((v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4] & 1) == 0)
    {
LABEL_11:

      return 0;
    }
  }

  else if ((v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4] & 1) != 0 || *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType) != *&v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType])
  {
    goto LABEL_11;
  }

  v4 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
  v5 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8);
  v6 = *&v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  v7 = v9[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8];

  result = v7;
  if ((v5 & 1) == 0)
  {
    return (v4 == v6) & ~v7;
  }

  return result;
}

uint64_t PASExtensionDevicePair.hash.getter()
{
  sub_2610BD584();
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType);
    sub_2610BD534();
    sub_2610BD544();
  }

  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8) == 1)
  {
    sub_2610BD534();
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
    sub_2610BD534();
    MEMORY[0x2666F7E40](v2);
  }

  return sub_2610BD564();
}

uint64_t static PASExtensionDevicePair.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE64A30 = a1;
  return result;
}

Swift::Void __swiftcall PASExtensionDevicePair.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType + 4))
  {
    v3 = 0;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType);
    v3 = sub_2610BD364();
  }

  v4 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType + 8))
  {
    v5 = 0;
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType);
    v5 = sub_2610BD364();
  }

  v6 = sub_2610BC9D4();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id PASExtensionDevicePair.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_260FEC7F0(a1);

  return v4;
}

id PASExtensionDevicePair.init(coder:)(void *a1)
{
  v2 = sub_260FEC7F0(a1);

  return v2;
}

id PASExtensionDevicePair.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASExtensionDevicePair.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_260FEC7F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2610BC9D4();
  v5 = [a1 decodeInt32ForKey_];

  v6 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_targetDeviceType];
  *v6 = v5;
  v6[4] = 0;
  v7 = sub_2610BC9D4();
  v8 = [a1 decodeIntegerForKey_];

  v9 = &v1[OBJC_IVAR____TtC21ProximityAppleIDSetup22PASExtensionDevicePair_sourceDeviceBiometryType];
  *v9 = v8;
  v9[8] = 0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_260FEC968()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9F58C();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t PASFlowStepSendAuthResults.sendAuthResults()()
{
  *(v1 + 48) = v0;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_260FECADC;

  return sub_260FED0AC(v1 + 16, v0);
}

uint64_t sub_260FECADC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_260FECE1C;
  }

  else
  {
    v3 = sub_260FECBF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260FECBF0()
{
  v20 = v0;
  v1 = *(v0 + 64) != 0;
  v2 = *(v0 + 48) + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
  v3 = *v2;
  *v2 = *(v0 + 16);
  v4 = *(v2 + 8);
  *(v2 + 8) = v1;
  sub_260FEBBC8(v3, v4);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 48);
  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);

  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v11 = *v2;
    v12 = *(v2 + 8);
    *(v0 + 32) = *v2;
    *(v0 + 40) = v12;
    sub_260FEBBEC(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A60, &qword_2610C3250);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSendAuthResults sendAuthResults result: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  sub_2610BCC74();
  *(v0 + 72) = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FED044, v17, v16);
}

uint64_t sub_260FECE1C()
{
  v20 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48) + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result;
  v3 = *v2;
  *v2 = v1;
  v4 = *(v2 + 8);
  *(v2 + 8) = v1 != 0;
  sub_260FEBBC8(v3, v4);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 48);
  v6 = sub_2610BC7B4();
  __swift_project_value_buffer(v6, qword_27FE65900);

  v7 = sub_2610BC794();
  v8 = sub_2610BCD84();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v11 = *v2;
    v12 = *(v2 + 8);
    *(v0 + 32) = *v2;
    *(v0 + 40) = v12;
    sub_260FEBBEC(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A60, &qword_2610C3250);
    v13 = sub_2610BCA34();
    v15 = sub_260FA5970(v13, v14, &v19);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSendAuthResults sendAuthResults result: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2666F8720](v10, -1, -1);
    MEMORY[0x2666F8720](v9, -1, -1);
  }

  sub_2610BCC74();
  *(v0 + 72) = sub_2610BCC64();
  v17 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FED044, v17, v16);
}

uint64_t sub_260FED044()
{
  v1 = v0[9];
  v2 = v0[6];

  sub_2610439BC();
  v3 = v0[1];

  return v3();
}

uint64_t sub_260FED0AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return MEMORY[0x2822009F8](sub_260FED0CC, 0, 0);
}

uint64_t sub_260FED0CC()
{
  v1 = *(v0 + 80);
  v2 = sub_260FEC968();
  v4 = v3;
  *(v0 + 88) = v2;
  *(v0 + 56) = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults);
  sub_260FA99E0(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account, v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66860, &qword_2610BFBA0);
  type metadata accessor for PASFamilyMember();
  v5 = swift_dynamicCast();
  *(v0 + 120) = v5;
  v6 = *(v0 + 64);
  *(v0 + 96) = v6;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  ObjectType = swift_getObjectType();
  v9 = *(v4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_260FED28C;

  return v13(v0 + 56, v7, ObjectType, v4);
}

uint64_t sub_260FED28C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v16 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 120);
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = *(v4 + 56);

    swift_unknownObjectRelease();

    v10 = sub_260FED428;
  }

  else
  {
    v11 = *(v4 + 120);
    v12 = *(v4 + 88);
    v13 = *(v4 + 96);
    *(v4 + 121) = a1 & 1;
    v14 = *(v4 + 56);

    swift_unknownObjectRelease();

    v10 = sub_260FED404;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

NSObject *PASFlowStepSendAuthResults.nextStep()()
{
  v1 = (v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result);
  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8);
  if (v2 == 255)
  {
    v5 = 0x80000002610D3430;
    sub_260FC3450();
    swift_allocError();
    *v12 = 0xD000000000000028;
    *(v12 + 8) = 0x80000002610D3430;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 1;
    swift_willThrow();
  }

  else if (v2)
  {
    v3 = *v1;
    sub_260FEBBEC(*v1, *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));
    sub_260FEBC04(v3, 1);
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v4 = sub_2610BC7B4();
    __swift_project_value_buffer(v4, qword_27FE65900);
    sub_260FEBC04(v3, 1);
    v5 = sub_2610BC794();
    v6 = sub_2610BCD64();
    sub_260FEBBC8(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24[0] = v8;
      *v7 = 136446210;
      v24[3] = v3;
      sub_260FEBC04(v3, 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
      v9 = sub_2610BCA34();
      v11 = sub_260FA5970(v9, v10, v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepSendAuthResults failed with error:\n%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x2666F8720](v8, -1, -1);
      MEMORY[0x2666F8720](v7, -1, -1);
    }

    swift_willThrow();
    sub_260FEBBC8(v3, v2);
  }

  else
  {
    v13 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = *(v13 + 8);
    v16 = type metadata accessor for PASFlowStepSignInResult();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    v19 = swift_allocObject();
    v20 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE656F0, &qword_2610BFCF0);
    v21 = swift_allocObject();
    *(v19 + v20) = v21;
    *(v21 + 16) = 0;
    v22 = (v19 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepSignInResult__nextStep);
    *v22 = 0;
    v22[1] = 0;
    v5 = sub_26104DC44(Strong, v15);
    swift_unknownObjectRelease();
    sub_260FED960(&qword_27FE64040, type metadata accessor for PASFlowStepSignInResult);
  }

  return v5;
}

void sub_260FED774()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger);

  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result);
  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8);

  sub_260FEBBC8(v3, v4);
}

uint64_t PASFlowStepSendAuthResults.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account));
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults);

  v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));
  return v0;
}

uint64_t PASFlowStepSendAuthResults.__deallocating_deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_account;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_proxiedAuthResults);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults__sourceAppleIDExchanger);

  sub_260FEBBC8(*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result), *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup26PASFlowStepSendAuthResults_result + 8));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_260FED91C(uint64_t a1)
{
  result = sub_260FED960(&qword_27FE65710, type metadata accessor for PASFlowStepSendAuthResults);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_260FED960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for PASFlowStepSendAuthResults()
{
  result = qword_27FE64A80;
  if (!qword_27FE64A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HandshakeCommand.Request.init(isKeepAlive:minSupportedVersion:maxSupportedVersion:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v10[10] = a1[10];
  v10[11] = v3;
  v10[12] = a1[12];
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[9];
  v10[8] = a1[8];
  v10[9] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = a1[5];
  v10[4] = a1[4];
  v10[5] = v7;
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = sub_260FEDBAC(v10);
  *(a2 + 2) = 0;
  *a2 = 2;
  return result;
}

__n128 HandshakeCommand.Request.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  LOBYTE(v10[0]) = *v1;
  *(v10 + 1) = v3;
  sub_260F99F8C(v10);
  v21 = v10[10];
  v22 = v10[11];
  v23 = v10[12];
  v17 = v10[6];
  v18 = v10[7];
  v19 = v10[8];
  v20 = v10[9];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v11 = v10[0];
  v12 = v10[1];
  sub_260FEDCB8(&v11);
  v4 = v22;
  *(a1 + 160) = v21;
  *(a1 + 176) = v4;
  *(a1 + 192) = v23;
  v5 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v5;
  v6 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v6;
  v7 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v7;
  v8 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v8;
  result = v12;
  *a1 = v11;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEDCB8(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260FEDD0C()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6C417065654B7369;
  }
}

uint64_t sub_260FEDD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260FEFD28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260FEDDA0(uint64_t a1)
{
  v2 = sub_260FEDFD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FEDDDC(uint64_t a1)
{
  v2 = sub_260FEDFD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Request.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64A90, &qword_2610C3300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[6] = v1[1];
  v12[3] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEDFD4();
  sub_2610BD5F4();
  v15 = 0;
  sub_2610BD284();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_2610BD2B4();
  v13 = 2;
  sub_2610BD2B4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_260FEDFD4()
{
  result = qword_27FE64A98;
  if (!qword_27FE64A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64A98);
  }

  return result;
}

uint64_t HandshakeCommand.Request.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD534();
}

uint64_t HandshakeCommand.Request.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AA0, &qword_2610C3308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEDFD4();
  sub_2610BD5D4();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2610BD1C4();
    v17 = 1;
    v15 = sub_2610BD1F4();
    v16 = 2;
    v13 = sub_2610BD1F4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v15;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FEE2B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[11];
  v10[10] = a1[10];
  v10[11] = v3;
  v10[12] = a1[12];
  v4 = a1[7];
  v10[6] = a1[6];
  v10[7] = v4;
  v5 = a1[9];
  v10[8] = a1[8];
  v10[9] = v5;
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v7 = a1[5];
  v10[4] = a1[4];
  v10[5] = v7;
  v8 = a1[1];
  v10[0] = *a1;
  v10[1] = v8;
  result = sub_260FEDBAC(v10);
  *(a2 + 2) = 0;
  *a2 = 2;
  return result;
}

__n128 sub_260FEE328@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  LOBYTE(v10[0]) = *v1;
  *(v10 + 1) = v3;
  sub_260F99F8C(v10);
  v21 = v10[10];
  v22 = v10[11];
  v23 = v10[12];
  v17 = v10[6];
  v18 = v10[7];
  v19 = v10[8];
  v20 = v10[9];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  v16 = v10[5];
  v11 = v10[0];
  v12 = v10[1];
  sub_260FEDCB8(&v11);
  v4 = v22;
  *(a1 + 160) = v21;
  *(a1 + 176) = v4;
  *(a1 + 192) = v23;
  v5 = v18;
  *(a1 + 96) = v17;
  *(a1 + 112) = v5;
  v6 = v20;
  *(a1 + 128) = v19;
  *(a1 + 144) = v6;
  v7 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v7;
  v8 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v8;
  result = v12;
  *a1 = v11;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEE448()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t sub_260FEE4B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD534();
}

uint64_t sub_260FEE504()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Response.selectedVersion.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 3) = BYTE1(result) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.init(isKeepAlive:isAccepted:rejectionReason:selectedVersion:)@<X0>(char a1@<W0>, char a2@<W1>, __int16 a3@<W4>, _BYTE *a4@<X8>)
{

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = HIBYTE(a3) & 1;
  return result;
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(_OWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) != 1)
  {
    goto LABEL_3;
  }

  v15 = sub_260F9C524(v40);
  v16 = *(v15 + 48);
  v18 = *v15;
  v17 = *(v15 + 16);
  v26[2] = *(v15 + 32);
  v26[3] = v16;
  v26[0] = v18;
  v26[1] = v17;
  v19 = *(v15 + 112);
  v21 = *(v15 + 64);
  v20 = *(v15 + 80);
  v26[6] = *(v15 + 96);
  v26[7] = v19;
  v26[4] = v21;
  v26[5] = v20;
  v23 = *(v15 + 144);
  v22 = *(v15 + 160);
  v24 = *(v15 + 128);
  v27 = *(v15 + 176);
  v26[9] = v23;
  v26[10] = v22;
  v26[8] = v24;
  if (!get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26))
  {
    result = sub_260F9C514(v26);
  }

  else
  {
LABEL_3:
    result = sub_260FEDBAC(v28);
  }

  *a2 = 2;
  return result;
}

__n128 HandshakeCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  LOBYTE(v12[0]) = *v1;
  BYTE1(v12[0]) = v3;
  BYTE2(v12[0]) = v4;
  BYTE3(v12[0]) = v5;
  sub_260F99F8C(v12);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v12[10];
  *&v25 = v13;
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  sub_260FEE86C(&v14);
  v6 = v25;
  *(a1 + 160) = v24;
  *(a1 + 176) = v6;
  *(a1 + 192) = v26;
  v7 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v7;
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEE86C(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003 | 0x1000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

uint64_t sub_260FEE890()
{
  v1 = 0x7470656363417369;
  if (*v0 != 1)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C417065654B7369;
  }
}

uint64_t sub_260FEE904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260FEFE54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260FEE92C(uint64_t a1)
{
  v2 = sub_260FEF1C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FEE968(uint64_t a1)
{
  v2 = sub_260FEF1C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandshakeCommand.Response.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AA8, &qword_2610C3310);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v13[6] = v1[1];
  v10 = v1[2];
  v13[2] = v1[3];
  v13[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEF1C0();
  sub_2610BD5F4();
  v16 = 0;
  sub_2610BD284();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_2610BD284();
  v14 = 2;
  sub_2610BD264();
  return (*(v5 + 8))(v8, v4);
}

uint64_t HandshakeCommand.Response.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2610BD534();
  sub_2610BD534();
  if ((v4 & 1) == 0)
  {
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t HandshakeCommand.Response.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  if ((v4 & 1) == 0)
  {
    sub_2610BD534();
  }

  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t HandshakeCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64AB8, &qword_2610C3318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FEF1C0();
  sub_2610BD5D4();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_2610BD1C4();
    v17 = 1;
    v12 = sub_2610BD1C4();
    v16 = 2;
    v14 = sub_2610BD1A4();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v12 & 1;
    a2[2] = v14;
    a2[3] = HIBYTE(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_260FEEE3C@<X0>(_OWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v37 = a1[10];
  v38 = v4;
  v5 = a1[11];
  v39 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v33 = a1[6];
  v34 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v35 = a1[8];
  v36 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v29 = a1[2];
  v30 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v28[0] = *a1;
  v28[1] = v14;
  v40[10] = v37;
  v40[11] = v5;
  v40[12] = a1[12];
  v40[6] = v33;
  v40[7] = v8;
  v40[8] = v35;
  v40[9] = v3;
  v40[2] = v29;
  v40[3] = v12;
  v40[4] = v31;
  v40[5] = v6;
  v40[0] = v28[0];
  v40[1] = v10;
  if (sub_260FEE778(v40) != 1)
  {
    goto LABEL_3;
  }

  v15 = sub_260F9C524(v40);
  v16 = *(v15 + 48);
  v18 = *v15;
  v17 = *(v15 + 16);
  v26[2] = *(v15 + 32);
  v26[3] = v16;
  v26[0] = v18;
  v26[1] = v17;
  v19 = *(v15 + 112);
  v21 = *(v15 + 64);
  v20 = *(v15 + 80);
  v26[6] = *(v15 + 96);
  v26[7] = v19;
  v26[4] = v21;
  v26[5] = v20;
  v23 = *(v15 + 144);
  v22 = *(v15 + 160);
  v24 = *(v15 + 128);
  v27 = *(v15 + 176);
  v26[9] = v23;
  v26[10] = v22;
  v26[8] = v24;
  if (!get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v26))
  {
    result = sub_260F9C514(v26);
  }

  else
  {
LABEL_3:
    result = sub_260FEDBAC(v28);
  }

  *a2 = 2;
  return result;
}

__n128 sub_260FEEF4C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  LOBYTE(v12[0]) = *v1;
  BYTE1(v12[0]) = v3;
  BYTE2(v12[0]) = v4;
  BYTE3(v12[0]) = v5;
  sub_260F99F8C(v12);
  v22 = v12[8];
  v23 = v12[9];
  v24 = v12[10];
  *&v25 = v13;
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v14 = v12[0];
  v15 = v12[1];
  v16 = v12[2];
  v17 = v12[3];
  sub_260FEE86C(&v14);
  v6 = v25;
  *(a1 + 160) = v24;
  *(a1 + 176) = v6;
  *(a1 + 192) = v26;
  v7 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v7;
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  v9 = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = v9;
  v10 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v10;
  result = v15;
  *a1 = v14;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FEF06C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2610BD534();
  sub_2610BD534();
  if ((v4 & 1) == 0)
  {
    sub_2610BD534();
  }

  return sub_2610BD534();
}

uint64_t sub_260FEF0D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2610BD514();
  sub_2610BD534();
  sub_2610BD534();
  if ((v4 & 1) == 0)
  {
    sub_2610BD534();
  }

  sub_2610BD534();
  return sub_2610BD574();
}

uint64_t _s21ProximityAppleIDSetup16HandshakeCommandO8ResponseV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = a2[3];
    if (a1[3])
    {
      if ((a2[3] & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (a1[2] == a2[2])
      {
        v5 = a2[3];
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t sub_260FEF1C0()
{
  result = qword_27FE64AB0;
  if (!qword_27FE64AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AB0);
  }

  return result;
}

unint64_t sub_260FEF214()
{
  result = qword_27FE64AC0;
  if (!qword_27FE64AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AC0);
  }

  return result;
}

unint64_t sub_260FEF268(uint64_t a1)
{
  result = sub_260FEF290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF290()
{
  result = qword_27FE64AC8;
  if (!qword_27FE64AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AC8);
  }

  return result;
}

unint64_t sub_260FEF2E4()
{
  result = qword_27FE64AD0;
  if (!qword_27FE64AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AD0);
  }

  return result;
}

unint64_t sub_260FEF338(uint64_t a1)
{
  result = sub_260FEF360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF360()
{
  result = qword_27FE64AD8;
  if (!qword_27FE64AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AD8);
  }

  return result;
}

unint64_t sub_260FEF3F4()
{
  result = qword_27FE64AE0;
  if (!qword_27FE64AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AE0);
  }

  return result;
}

unint64_t sub_260FEF448()
{
  result = qword_27FE64AE8;
  if (!qword_27FE64AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AE8);
  }

  return result;
}

unint64_t sub_260FEF49C()
{
  result = qword_27FE64AF0;
  if (!qword_27FE64AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AF0);
  }

  return result;
}

unint64_t sub_260FEF4F4()
{
  result = qword_27FE64AF8;
  if (!qword_27FE64AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64AF8);
  }

  return result;
}

unint64_t sub_260FEF548(uint64_t a1)
{
  result = sub_260FEF570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF570()
{
  result = qword_27FE64B00;
  if (!qword_27FE64B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B00);
  }

  return result;
}

unint64_t sub_260FEF5C4(uint64_t a1)
{
  result = sub_260FEF5EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FEF5EC()
{
  result = qword_27FE64B08;
  if (!qword_27FE64B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B08);
  }

  return result;
}

uint64_t sub_260FEF680(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_260FEF6D4()
{
  result = qword_27FE64B10;
  if (!qword_27FE64B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B10);
  }

  return result;
}

unint64_t sub_260FEF728()
{
  result = qword_27FE64B18;
  if (!qword_27FE64B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B18);
  }

  return result;
}

unint64_t sub_260FEF77C()
{
  result = qword_27FE64B20;
  if (!qword_27FE64B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B20);
  }

  return result;
}

unint64_t sub_260FEF7D4()
{
  result = qword_27FE64B28;
  if (!qword_27FE64B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B28);
  }

  return result;
}

unint64_t sub_260FEF82C()
{
  result = qword_27FE64B30;
  if (!qword_27FE64B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B30);
  }

  return result;
}

unint64_t sub_260FEF884()
{
  result = qword_27FE64B38;
  if (!qword_27FE64B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B38);
  }

  return result;
}

unint64_t sub_260FEF8D8(uint64_t a1)
{
  result = sub_260FEF2E4();
  *(a1 + 8) = result;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeCommand.Request(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for HandshakeCommand.Request(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeCommand.Response(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for HandshakeCommand.Response(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_260FEFB1C()
{
  result = qword_27FE64B40;
  if (!qword_27FE64B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B40);
  }

  return result;
}

unint64_t sub_260FEFB74()
{
  result = qword_27FE64B48;
  if (!qword_27FE64B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B48);
  }

  return result;
}

unint64_t sub_260FEFBCC()
{
  result = qword_27FE64B50;
  if (!qword_27FE64B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B50);
  }

  return result;
}

unint64_t sub_260FEFC24()
{
  result = qword_27FE64B58;
  if (!qword_27FE64B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B58);
  }

  return result;
}

unint64_t sub_260FEFC7C()
{
  result = qword_27FE64B60;
  if (!qword_27FE64B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B60);
  }

  return result;
}

unint64_t sub_260FEFCD4()
{
  result = qword_27FE64B68;
  if (!qword_27FE64B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B68);
  }

  return result;
}

uint64_t sub_260FEFD28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002610D3500 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002610D3520 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260FEFE54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C417065654B7369 && a2 == 0xEB00000000657669;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470656363417369 && a2 == 0xEA00000000006465 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t SignInCommand.Request.account.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26[0] = v3;
  *(v26 + 9) = *(v1 + 153);
  v4 = v1[3];
  v5 = v1[5];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v23 = v1[6];
  v9 = v23;
  v24 = v8;
  v10 = v1[1];
  v18[0] = *v1;
  v18[1] = v10;
  v11 = v1[3];
  v13 = *v1;
  v12 = v1[1];
  v19 = v1[2];
  v14 = v19;
  v20 = v11;
  v15 = v1[9];
  a1[8] = v25;
  a1[9] = v15;
  *(a1 + 153) = *(v1 + 153);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v9;
  a1[7] = v2;
  *a1 = v13;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v4;
  return sub_260FD2DF8(v18, &v17);
}

__n128 SignInCommand.Request.account.setter(uint64_t a1)
{
  v3 = v1[9];
  v13[8] = v1[8];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 153);
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  sub_260FD2E30(v13);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  *(v1 + 153) = *(a1 + 153);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t SignInCommand.Request.authResults.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 176);

  *(v1 + 176) = v2;
  return result;
}

__n128 SignInCommand.Request.init(account:authResults:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v4;
  *(a3 + 153) = *(a1 + 153);
  v5 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v5;
  v6 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v6;
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 176) = v3;
  return result;
}

double SignInCommand.Request.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v55 = a1[10];
  v56 = v4;
  v5 = a1[11];
  v57 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v51 = a1[6];
  v52 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v53 = a1[8];
  v54 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v47 = a1[2];
  v48 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v49 = a1[4];
  v50 = v13;
  v14 = a1[1];
  v46[0] = *a1;
  v46[1] = v14;
  v58[10] = v55;
  v58[11] = v5;
  v58[12] = a1[12];
  v58[6] = v51;
  v58[7] = v8;
  v58[8] = v53;
  v58[9] = v3;
  v58[2] = v47;
  v58[3] = v12;
  v58[4] = v49;
  v58[5] = v6;
  v58[0] = v46[0];
  v58[1] = v10;
  if (sub_260FEE778(v58))
  {
    goto LABEL_4;
  }

  v15 = sub_260F9C524(v58);
  v33 = *v15;
  v16 = v15[4];
  v18 = v15[1];
  v17 = v15[2];
  v36 = v15[3];
  v37 = v16;
  v34 = v18;
  v35 = v17;
  v19 = v15[8];
  v21 = v15[5];
  v20 = v15[6];
  v40 = v15[7];
  v41 = v19;
  v38 = v21;
  v39 = v20;
  v22 = v15[12];
  v24 = v15[9];
  v23 = v15[10];
  v44 = v15[11];
  v45 = v22;
  v42 = v24;
  v43 = v23;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v33) != 1)
  {
LABEL_4:
    sub_260FEDBAC(v46);
  }

  else
  {
    v25 = sub_260F9C514(&v33);
    sub_260FD2E30(v25);
    v26 = *(v25 + 176);
  }

  sub_260F99FB0(&v33);
  v27 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v27;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v28 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v28;
  v29 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v29;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  result = *&v35;
  v32 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v32;
  return result;
}

__n128 SignInCommand.Request.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  *&v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  sub_260FEDCB8(&v27);
  v8 = v38;
  *(a1 + 160) = v37;
  *(a1 + 176) = v8;
  *(a1 + 192) = v39;
  v9 = v34;
  *(a1 + 96) = v33;
  *(a1 + 112) = v9;
  v10 = v36;
  *(a1 + 128) = v35;
  *(a1 + 144) = v10;
  v11 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v11;
  v12 = v32;
  *(a1 + 64) = v31;
  *(a1 + 80) = v12;
  result = v28;
  *a1 = v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF03AC()
{
  if (*v0)
  {
    result = 0x7573655268747561;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_260FF03F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7573655268747561 && a2 == 0xEB0000000073746CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_260FF04D0(uint64_t a1)
{
  v2 = sub_260FF246C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FF050C(uint64_t a1)
{
  v2 = sub_260FF246C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Request.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64B70, &qword_2610C3830);
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v43 = v1[7];
  v44 = v7;
  v45[0] = v8;
  *(v45 + 9) = *(v1 + 153);
  v10 = v1[5];
  v40 = v1[4];
  v41 = v10;
  v42 = v9;
  v11 = v1[1];
  v36 = *v1;
  v37 = v11;
  v12 = v1[3];
  v38 = v1[2];
  v39 = v12;
  v20[0] = *(v1 + 22);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_260FD2DF8(&v36, &v26);
  sub_260FF246C();
  sub_2610BD5F4();
  v33 = v43;
  v34 = v44;
  v35[0] = v45[0];
  *(v35 + 9) = *(v45 + 9);
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v25 = 0;
  sub_260FD3CFC();
  v18 = v20[1];
  sub_2610BD2A4();
  v23[8] = v34;
  *v24 = v35[0];
  *&v24[9] = *(v35 + 9);
  v23[4] = v30;
  v23[5] = v31;
  v23[6] = v32;
  v23[7] = v33;
  v23[0] = v26;
  v23[1] = v27;
  v23[2] = v28;
  v23[3] = v29;
  sub_260FD2E30(v23);
  if (!v18)
  {
    v22 = v20[0];
    v21 = 1;
    sub_260FF24C0();

    sub_2610BD2A4();
  }

  return (*(v46 + 8))(v6, v17);
}

uint64_t SignInCommand.Request.hash(into:)(__int128 *a1)
{
  v12 = v1[8];
  *v13 = v1[9];
  *&v13[9] = *(v1 + 153);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v2 = *(v1 + 22);
  IdMSAccount.hash(into:)(a1);
  return PASAuthResults.hash(into:)();
}

uint64_t SignInCommand.Request.hashValue.getter()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t SignInCommand.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE64B90, &qword_2610C3838);
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FF246C();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  v35 = 0;
  sub_260FD3CA8();
  v11 = v56;
  sub_2610BD1E4();
  v54 = v44;
  v55[0] = v45[0];
  *(v55 + 9) = *(v45 + 9);
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  v33 = 1;
  sub_260FF2514();
  sub_2610BD1E4();
  (*(v10 + 8))(v8, v11);
  v12 = v34;
  v27 = v54;
  v28 = v55[0];
  v29 = v55[1];
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v26 = v53;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  v22 = v49;
  v30 = v34;
  *(a2 + 176) = v34;
  v13 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v13;
  *(a2 + 160) = v29;
  v14 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v14;
  v15 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v15;
  v16 = v20;
  *a2 = v19;
  *(a2 + 16) = v16;
  v17 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v17;
  sub_260FF2568(&v19, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v31[8] = v54;
  v31[9] = v55[0];
  v31[10] = v55[1];
  v31[4] = v50;
  v31[5] = v51;
  v31[6] = v52;
  v31[7] = v53;
  v31[0] = v46;
  v31[1] = v47;
  v31[2] = v48;
  v31[3] = v49;
  v32 = v12;
  return sub_260FF25A0(v31);
}

double sub_260FF0C28@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v55 = a1[10];
  v56 = v4;
  v5 = a1[11];
  v57 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v51 = a1[6];
  v52 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v53 = a1[8];
  v54 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v47 = a1[2];
  v48 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v49 = a1[4];
  v50 = v13;
  v14 = a1[1];
  v46[0] = *a1;
  v46[1] = v14;
  v58[10] = v55;
  v58[11] = v5;
  v58[12] = a1[12];
  v58[6] = v51;
  v58[7] = v8;
  v58[8] = v53;
  v58[9] = v3;
  v58[2] = v47;
  v58[3] = v12;
  v58[4] = v49;
  v58[5] = v6;
  v58[0] = v46[0];
  v58[1] = v10;
  if (sub_260FEE778(v58))
  {
    goto LABEL_4;
  }

  v15 = sub_260F9C524(v58);
  v33 = *v15;
  v16 = v15[4];
  v18 = v15[1];
  v17 = v15[2];
  v36 = v15[3];
  v37 = v16;
  v34 = v18;
  v35 = v17;
  v19 = v15[8];
  v21 = v15[5];
  v20 = v15[6];
  v40 = v15[7];
  v41 = v19;
  v38 = v21;
  v39 = v20;
  v22 = v15[12];
  v24 = v15[9];
  v23 = v15[10];
  v44 = v15[11];
  v45 = v22;
  v42 = v24;
  v43 = v23;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v33) != 1)
  {
LABEL_4:
    sub_260FEDBAC(v46);
  }

  else
  {
    v25 = sub_260F9C514(&v33);
    sub_260FD2E30(v25);
    v26 = *(v25 + 176);
  }

  sub_260F99FB0(&v33);
  v27 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v27;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v28 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v28;
  v29 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v29;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  result = *&v35;
  v32 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v32;
  return result;
}

__n128 sub_260FF0D88@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  *&v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v27 = v14;
  v28 = v15;
  sub_260FEDCB8(&v27);
  v8 = v38;
  *(a1 + 160) = v37;
  *(a1 + 176) = v8;
  *(a1 + 192) = v39;
  v9 = v34;
  *(a1 + 96) = v33;
  *(a1 + 112) = v9;
  v10 = v36;
  *(a1 + 128) = v35;
  *(a1 + 144) = v10;
  v11 = v30;
  *(a1 + 32) = v29;
  *(a1 + 48) = v11;
  v12 = v32;
  *(a1 + 64) = v31;
  *(a1 + 80) = v12;
  result = v28;
  *a1 = v27;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF0E9C()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t sub_260FF0F2C(__int128 *a1)
{
  v12 = v1[8];
  *v13 = v1[9];
  *&v13[9] = *(v1 + 153);
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v2 = *(v1 + 22);
  IdMSAccount.hash(into:)(a1);
  return PASAuthResults.hash(into:)();
}

uint64_t sub_260FF0FA8()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  PASAuthResults.hash(into:)();
  return sub_2610BD574();
}

uint64_t SignInCommand.Response.resultsByService.setter(uint64_t a1)
{
  v3 = *(v1 + 176);

  *(v1 + 176) = a1;
  return result;
}

__n128 SignInCommand.Response.init(account:resultsByService:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v3;
  *(a3 + 153) = *(a1 + 153);
  v4 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v4;
  v5 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v5;
  v6 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v6;
  result = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = result;
  *(a3 + 176) = a2;
  return result;
}

double SignInCommand.Response.init(from:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v54 = a1[10];
  v55 = v4;
  v5 = a1[11];
  v56 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v50 = a1[6];
  v51 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v52 = a1[8];
  v53 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v48 = a1[4];
  v49 = v13;
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v57[10] = v54;
  v57[11] = v5;
  v57[12] = a1[12];
  v57[6] = v50;
  v57[7] = v8;
  v57[8] = v52;
  v57[9] = v3;
  v57[2] = v46;
  v57[3] = v12;
  v57[4] = v48;
  v57[5] = v6;
  v57[0] = v45[0];
  v57[1] = v10;
  if (sub_260FEE778(v57) != 1)
  {
    goto LABEL_4;
  }

  v15 = sub_260F9C524(v57);
  v16 = *(v15 + 48);
  v18 = *v15;
  v17 = *(v15 + 16);
  v35 = *(v15 + 32);
  v36 = v16;
  v33 = v18;
  v34 = v17;
  v19 = *(v15 + 112);
  v21 = *(v15 + 64);
  v20 = *(v15 + 80);
  v39 = *(v15 + 96);
  v40 = v19;
  v37 = v21;
  v38 = v20;
  v23 = *(v15 + 144);
  v22 = *(v15 + 160);
  v24 = *(v15 + 128);
  v44 = *(v15 + 176);
  v42 = v23;
  v43 = v22;
  v41 = v24;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v33) == 1)
  {
    v25 = sub_260F9C514(&v33);
    sub_260FD2E30(v25);
    v26 = *(v25 + 176);
  }

  else
  {
LABEL_4:
    sub_260FEDBAC(v45);
  }

  sub_260F99FB0(&v33);
  v27 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v27;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v28 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v28;
  v29 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v29;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  result = *&v35;
  v32 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v32;
  return result;
}

__n128 SignInCommand.Response.into()@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  *&v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  sub_260FEE86C(&v26);
  v8 = v37;
  *(a1 + 160) = v36;
  *(a1 + 176) = v8;
  *(a1 + 192) = v38;
  v9 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v9;
  v10 = v35;
  *(a1 + 128) = v34;
  *(a1 + 144) = v10;
  v11 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v11;
  v12 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v12;
  result = v27;
  *a1 = v26;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_260FF1328()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x746E756F636361;
  }

  *v0;
  return result;
}

uint64_t sub_260FF1368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_2610BD384() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002610D3540 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2610BD384();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_260FF144C(uint64_t a1)
{
  v2 = sub_260FF279C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260FF1488(uint64_t a1)
{
  v2 = sub_260FF279C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Response.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BA8, &qword_2610C3840);
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[6];
  v43 = v1[7];
  v44 = v7;
  v45[0] = v8;
  *(v45 + 9) = *(v1 + 153);
  v10 = v1[5];
  v40 = v1[4];
  v41 = v10;
  v42 = v9;
  v11 = v1[1];
  v36 = *v1;
  v37 = v11;
  v12 = v1[3];
  v38 = v1[2];
  v39 = v12;
  v20[0] = *(v1 + 22);
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v13);
  sub_260FD2DF8(&v36, &v26);
  sub_260FF279C();
  sub_2610BD5F4();
  v33 = v43;
  v34 = v44;
  v35[0] = v45[0];
  *(v35 + 9) = *(v45 + 9);
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v25 = 0;
  sub_260FD3CFC();
  v18 = v20[1];
  sub_2610BD2A4();
  v23[8] = v34;
  *v24 = v35[0];
  *&v24[9] = *(v35 + 9);
  v23[4] = v30;
  v23[5] = v31;
  v23[6] = v32;
  v23[7] = v33;
  v23[0] = v26;
  v23[1] = v27;
  v23[2] = v28;
  v23[3] = v29;
  sub_260FD2E30(v23);
  if (!v18)
  {
    v22 = v20[0];
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FF27F0();
    sub_2610BD2A4();
  }

  return (*(v46 + 8))(v6, v17);
}

uint64_t SignInCommand.Response.hash(into:)(__int128 *a1)
{
  v13 = v1[8];
  *v14 = v1[9];
  *&v14[9] = *(v1 + 153);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v3 = *(v1 + 22);
  IdMSAccount.hash(into:)(a1);

  return sub_260FF1FCC(a1, v3);
}

uint64_t SignInCommand.Response.hashValue.getter()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  sub_260FF1FCC(v13, v1);
  return sub_2610BD574();
}

uint64_t SignInCommand.Response.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BE8, &qword_2610C3858);
  v5 = *(v56 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v56);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260FF279C();
  sub_2610BD5D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  v35 = 0;
  sub_260FD3CA8();
  v11 = v56;
  sub_2610BD1E4();
  v54 = v44;
  v55[0] = v45[0];
  *(v55 + 9) = *(v45 + 9);
  v50 = v40;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v49 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BB8, &qword_2610C3848);
  v33 = 1;
  sub_260FF2924();
  sub_2610BD1E4();
  (*(v10 + 8))(v8, v11);
  v12 = v34;
  v27 = v54;
  v28 = v55[0];
  v29 = v55[1];
  v23 = v50;
  v24 = v51;
  v25 = v52;
  v26 = v53;
  v19 = v46;
  v20 = v47;
  v21 = v48;
  v22 = v49;
  v30 = v34;
  *(a2 + 176) = v34;
  v13 = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v13;
  *(a2 + 160) = v29;
  v14 = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v14;
  v15 = v26;
  *(a2 + 96) = v25;
  *(a2 + 112) = v15;
  v16 = v20;
  *a2 = v19;
  *(a2 + 16) = v16;
  v17 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v17;
  sub_260FF2ADC(&v19, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v31[8] = v54;
  v31[9] = v55[0];
  v31[10] = v55[1];
  v31[4] = v50;
  v31[5] = v51;
  v31[6] = v52;
  v31[7] = v53;
  v31[0] = v46;
  v31[1] = v47;
  v31[2] = v48;
  v31[3] = v49;
  v32 = v12;
  return sub_260FF2B14(v31);
}

double sub_260FF1BBC@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[9];
  v4 = a1[11];
  v54 = a1[10];
  v55 = v4;
  v5 = a1[11];
  v56 = a1[12];
  v6 = a1[5];
  v7 = a1[7];
  v50 = a1[6];
  v51 = v7;
  v8 = a1[7];
  v9 = a1[9];
  v52 = a1[8];
  v53 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v46 = a1[2];
  v47 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v48 = a1[4];
  v49 = v13;
  v14 = a1[1];
  v45[0] = *a1;
  v45[1] = v14;
  v57[10] = v54;
  v57[11] = v5;
  v57[12] = a1[12];
  v57[6] = v50;
  v57[7] = v8;
  v57[8] = v52;
  v57[9] = v3;
  v57[2] = v46;
  v57[3] = v12;
  v57[4] = v48;
  v57[5] = v6;
  v57[0] = v45[0];
  v57[1] = v10;
  if (sub_260FEE778(v57) != 1)
  {
    goto LABEL_4;
  }

  v15 = sub_260F9C524(v57);
  v16 = *(v15 + 48);
  v18 = *v15;
  v17 = *(v15 + 16);
  v35 = *(v15 + 32);
  v36 = v16;
  v33 = v18;
  v34 = v17;
  v19 = *(v15 + 112);
  v21 = *(v15 + 64);
  v20 = *(v15 + 80);
  v39 = *(v15 + 96);
  v40 = v19;
  v37 = v21;
  v38 = v20;
  v23 = *(v15 + 144);
  v22 = *(v15 + 160);
  v24 = *(v15 + 128);
  v44 = *(v15 + 176);
  v42 = v23;
  v43 = v22;
  v41 = v24;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v33) == 1)
  {
    v25 = sub_260F9C514(&v33);
    sub_260FD2E30(v25);
    v26 = *(v25 + 176);
  }

  else
  {
LABEL_4:
    sub_260FEDBAC(v45);
  }

  sub_260F99FB0(&v33);
  v27 = v42;
  *(a2 + 128) = v41;
  *(a2 + 144) = v27;
  *(a2 + 160) = v43;
  *(a2 + 176) = v44;
  v28 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v28;
  v29 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v29;
  v30 = v34;
  *a2 = v33;
  *(a2 + 16) = v30;
  result = *&v35;
  v32 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v32;
  return result;
}

__n128 sub_260FF1D20@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v22 = v1[8];
  v23 = v3;
  v24 = v1[10];
  v25 = *(v1 + 22);
  v4 = v1[5];
  v18 = v1[4];
  v19 = v4;
  v5 = v1[7];
  v20 = v1[6];
  v21 = v5;
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v7 = v1[3];
  v16 = v1[2];
  v17 = v7;
  sub_260F99FD4(&v14);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  *&v37 = v25;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  sub_260FEE86C(&v26);
  v8 = v37;
  *(a1 + 160) = v36;
  *(a1 + 176) = v8;
  *(a1 + 192) = v38;
  v9 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v9;
  v10 = v35;
  *(a1 + 128) = v34;
  *(a1 + 144) = v10;
  v11 = v29;
  *(a1 + 32) = v28;
  *(a1 + 48) = v11;
  v12 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v12;
  result = v27;
  *a1 = v26;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_260FF1E34()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  sub_260FF1FCC(v13, v1);
  return sub_2610BD574();
}

uint64_t sub_260FF1EC0(__int128 *a1)
{
  v13 = v1[8];
  *v14 = v1[9];
  *&v14[9] = *(v1 + 153);
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v3 = *(v1 + 22);
  IdMSAccount.hash(into:)(a1);

  return sub_260FF1FCC(a1, v3);
}

uint64_t sub_260FF1F44()
{
  v11 = v0[8];
  *v12 = v0[9];
  *&v12[9] = *(v0 + 153);
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[7];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v1 = *(v0 + 22);
  sub_2610BD514();
  IdMSAccount.hash(into:)(v13);
  sub_260FF1FCC(v13, v1);
  return sub_2610BD574();
}

uint64_t sub_260FF1FCC(__int128 *a1, uint64_t a2)
{
  v23 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v19 = (v2 + 63) >> 6;

  v22 = 0;
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = *(*(a2 + 48) + 8 * v8);
      v10 = *(a2 + 56) + 48 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 41);
      v18 = v9;
      sub_260FF3588(v11, v12, v14, v13, v15, v16, v17);
      if (!v18)
      {
        break;
      }

      v4 &= v4 - 1;
      v26 = a1[2];
      v27 = a1[3];
      v28 = *(a1 + 8);
      v24 = *a1;
      v25 = a1[1];
      sub_2610BCA04();
      sub_2610BCA54();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64BD8, &qword_2610C3850);
      sub_260FF35F4();
      sub_2610BD5A4();
      sub_260FF3648(v11, v12, v14, v13, v15, v16, v17);
      result = sub_2610BD574();
      v22 ^= result;
      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x2666F7E40](v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v19)
      {
        goto LABEL_11;
      }

      v4 = *(v23 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v58 = a1[8];
  v59[0] = v3;
  *(v59 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v54 = a1[4];
  v55 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v56 = a1[6];
  v57 = v7;
  v8 = a1[1];
  v51[0] = *a1;
  v51[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v52 = a1[2];
  v53 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v67 = a2[8];
  v68[0] = v13;
  *(v68 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v63 = a2[4];
  v64 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v65 = a2[6];
  v66 = v17;
  v18 = a2[1];
  v60[0] = *a2;
  v60[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v61 = a2[2];
  v62 = v19;
  v22 = a1[9];
  v49 = v58;
  v50[0] = v22;
  *(v50 + 9) = *(a1 + 153);
  v45 = v54;
  v46 = v6;
  v47 = v56;
  v48 = v2;
  v41 = v11;
  v42 = v10;
  v43 = v52;
  v44 = v4;
  v23 = a2[9];
  v39 = v67;
  v40[0] = v23;
  *(v40 + 9) = *(a2 + 153);
  v35 = v63;
  v36 = v16;
  v37 = v65;
  v38 = v12;
  v31 = v21;
  v32 = v20;
  v24 = *(a1 + 22);
  v25 = *(a2 + 22);
  v33 = v61;
  v34 = v14;
  sub_260FD2DF8(v51, v71);
  sub_260FD2DF8(v60, v71);
  v26 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v41, &v31);
  v69[8] = v39;
  v70[0] = v40[0];
  *(v70 + 9) = *(v40 + 9);
  v69[4] = v35;
  v69[5] = v36;
  v69[6] = v37;
  v69[7] = v38;
  v69[0] = v31;
  v69[1] = v32;
  v69[2] = v33;
  v69[3] = v34;
  sub_260FD2E30(v69);
  v71[8] = v49;
  v72[0] = v50[0];
  *(v72 + 9) = *(v50 + 9);
  v71[4] = v45;
  v71[5] = v46;
  v71[6] = v47;
  v71[7] = v48;
  v71[0] = v41;
  v71[1] = v42;
  v71[2] = v43;
  v71[3] = v44;
  sub_260FD2E30(v71);
  if (v26)
  {
    sub_260FF36B4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64290, &unk_2610C0770);
    v27 = sub_2610BC8F4();
    v28 = sub_2610BC8F4();
    v29 = sub_2610BCE24();
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

unint64_t sub_260FF246C()
{
  result = qword_27FE64B78;
  if (!qword_27FE64B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B78);
  }

  return result;
}

unint64_t sub_260FF24C0()
{
  result = qword_27FE64B88;
  if (!qword_27FE64B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64B88);
  }

  return result;
}

unint64_t sub_260FF2514()
{
  result = qword_27FE64BA0;
  if (!qword_27FE64BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BA0);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup13SignInCommandV8ResponseV2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v56 = a1[8];
  v57[0] = v3;
  *(v57 + 9) = *(a1 + 153);
  v4 = a1[3];
  v5 = a1[5];
  v52 = a1[4];
  v53 = v5;
  v6 = a1[5];
  v7 = a1[7];
  v54 = a1[6];
  v55 = v7;
  v8 = a1[1];
  v49[0] = *a1;
  v49[1] = v8;
  v9 = a1[3];
  v11 = *a1;
  v10 = a1[1];
  v50 = a1[2];
  v51 = v9;
  v12 = a2[7];
  v13 = a2[9];
  v65 = a2[8];
  v66[0] = v13;
  *(v66 + 9) = *(a2 + 153);
  v14 = a2[3];
  v15 = a2[5];
  v61 = a2[4];
  v62 = v15;
  v16 = a2[5];
  v17 = a2[7];
  v63 = a2[6];
  v64 = v17;
  v18 = a2[1];
  v58[0] = *a2;
  v58[1] = v18;
  v19 = a2[3];
  v21 = *a2;
  v20 = a2[1];
  v59 = a2[2];
  v60 = v19;
  v22 = a1[9];
  v47 = v56;
  v48[0] = v22;
  *(v48 + 9) = *(a1 + 153);
  v43 = v52;
  v44 = v6;
  v45 = v54;
  v46 = v2;
  v39 = v11;
  v40 = v10;
  v41 = v50;
  v42 = v4;
  v23 = a2[9];
  v37 = v65;
  v38[0] = v23;
  *(v38 + 9) = *(a2 + 153);
  v33 = v61;
  v34 = v16;
  v35 = v63;
  v36 = v12;
  v29 = v21;
  v30 = v20;
  v24 = *(a1 + 22);
  v25 = *(a2 + 22);
  v31 = v59;
  v32 = v14;
  sub_260FD2DF8(v49, v69);
  sub_260FD2DF8(v58, v69);
  v26 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v39, &v29);
  v67[8] = v37;
  v68[0] = v38[0];
  *(v68 + 9) = *(v38 + 9);
  v67[4] = v33;
  v67[5] = v34;
  v67[6] = v35;
  v67[7] = v36;
  v67[0] = v29;
  v67[1] = v30;
  v67[2] = v31;
  v67[3] = v32;
  sub_260FD2E30(v67);
  v69[8] = v47;
  v70[0] = v48[0];
  *(v70 + 9) = *(v48 + 9);
  v69[4] = v43;
  v69[5] = v44;
  v69[6] = v45;
  v69[7] = v46;
  v69[0] = v39;
  v69[1] = v40;
  v69[2] = v41;
  v69[3] = v42;
  sub_260FD2E30(v69);
  if (v26)
  {
    v27 = sub_261058754(v24, v25);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

unint64_t sub_260FF279C()
{
  result = qword_27FE64BB0;
  if (!qword_27FE64BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BB0);
  }

  return result;
}

unint64_t sub_260FF27F0()
{
  result = qword_27FE64BC0;
  if (!qword_27FE64BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FD5CF8(&qword_27FE642F8);
    sub_260FF2A04(&qword_27FE64BD0, sub_260FF28D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BC0);
  }

  return result;
}

unint64_t sub_260FF28D0()
{
  result = qword_27FE64BE0;
  if (!qword_27FE64BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BE0);
  }

  return result;
}

unint64_t sub_260FF2924()
{
  result = qword_27FE64BF0;
  if (!qword_27FE64BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BB8, &qword_2610C3848);
    sub_260FD5CF8(&qword_27FE64328);
    sub_260FF2A04(&qword_27FE64C00, sub_260FF2A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64BF0);
  }

  return result;
}

uint64_t sub_260FF2A04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE64BD8, &qword_2610C3850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260FF2A88()
{
  result = qword_27FE64C08;
  if (!qword_27FE64C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C08);
  }

  return result;
}

unint64_t sub_260FF2B44()
{
  result = qword_27FE64C10;
  if (!qword_27FE64C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C10);
  }

  return result;
}

unint64_t sub_260FF2B98(uint64_t a1)
{
  result = sub_260FF2BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2BC0()
{
  result = qword_27FE64C20;
  if (!qword_27FE64C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C20);
  }

  return result;
}

unint64_t sub_260FF2C14()
{
  result = qword_27FE64C28;
  if (!qword_27FE64C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C28);
  }

  return result;
}

unint64_t sub_260FF2C68(uint64_t a1)
{
  result = sub_260FF2C90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2C90()
{
  result = qword_27FE64C30;
  if (!qword_27FE64C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C30);
  }

  return result;
}

unint64_t sub_260FF2D24()
{
  result = qword_27FE64C38;
  if (!qword_27FE64C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C38);
  }

  return result;
}

unint64_t sub_260FF2D78()
{
  result = qword_27FE64C40;
  if (!qword_27FE64C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C40);
  }

  return result;
}

unint64_t sub_260FF2DCC()
{
  result = qword_27FE64C48;
  if (!qword_27FE64C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C48);
  }

  return result;
}

unint64_t sub_260FF2E24()
{
  result = qword_27FE64C50;
  if (!qword_27FE64C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C50);
  }

  return result;
}

unint64_t sub_260FF2E78(uint64_t a1)
{
  result = sub_260FF2EA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2EA0()
{
  result = qword_27FE64C60;
  if (!qword_27FE64C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C60);
  }

  return result;
}

unint64_t sub_260FF2EF4(uint64_t a1)
{
  result = sub_260FF2F1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_260FF2F1C()
{
  result = qword_27FE64C68;
  if (!qword_27FE64C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C68);
  }

  return result;
}

uint64_t sub_260FF2FB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_260FF3004()
{
  result = qword_27FE64C70;
  if (!qword_27FE64C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C70);
  }

  return result;
}

unint64_t sub_260FF3058()
{
  result = qword_27FE64C78;
  if (!qword_27FE64C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C78);
  }

  return result;
}

unint64_t sub_260FF30AC()
{
  result = qword_27FE64C80;
  if (!qword_27FE64C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C80);
  }

  return result;
}

unint64_t sub_260FF3104()
{
  result = qword_27FE64C88;
  if (!qword_27FE64C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C88);
  }

  return result;
}

unint64_t sub_260FF315C()
{
  result = qword_27FE64C90;
  if (!qword_27FE64C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C90);
  }

  return result;
}

unint64_t sub_260FF31B4()
{
  result = qword_27FE64C98;
  if (!qword_27FE64C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64C98);
  }

  return result;
}

unint64_t sub_260FF3208(uint64_t a1)
{
  result = sub_260FF2C14();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_260FF3294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_260FF32DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_260FF337C()
{
  result = qword_27FE64CA8;
  if (!qword_27FE64CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CA8);
  }

  return result;
}

unint64_t sub_260FF33D4()
{
  result = qword_27FE64CB0;
  if (!qword_27FE64CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CB0);
  }

  return result;
}

unint64_t sub_260FF342C()
{
  result = qword_27FE64CB8;
  if (!qword_27FE64CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CB8);
  }

  return result;
}

unint64_t sub_260FF3484()
{
  result = qword_27FE64CC0;
  if (!qword_27FE64CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CC0);
  }

  return result;
}

unint64_t sub_260FF34DC()
{
  result = qword_27FE64CC8;
  if (!qword_27FE64CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CC8);
  }

  return result;
}

unint64_t sub_260FF3534()
{
  result = qword_27FE64CD0;
  if (!qword_27FE64CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CD0);
  }

  return result;
}

uint64_t sub_260FF3588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3594(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_260FF3594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {
  }

  return result;
}

unint64_t sub_260FF35F4()
{
  result = qword_27FE64CD8;
  if (!qword_27FE64CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE64CD8);
  }

  return result;
}

uint64_t sub_260FF3648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3654(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_260FF3654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 1)
  {
  }

  else if (!a6)
  {
  }

  return result;
}

unint64_t sub_260FF36B4()
{
  result = qword_27FE64CE0;
  if (!qword_27FE64CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE64CE0);
  }

  return result;
}

uint64_t PASFlowStepSendSelectedAccount.__allocating_init(delegate:familyMemberSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v12 = swift_allocObject();
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v10 + v11) = v12;
  v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v10 + v13) = v14;
  *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(a3, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  v15 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  sub_260FDD4F8(a3);
  return v15;
}

uint64_t sub_260FF382C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider);
  swift_beginAccess();
  sub_260FF518C(v3 + 16, &v6);
  if (v7)
  {
    return sub_260FA9F80(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63CB0, &unk_2610BFDB0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9E15C(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260FA9F80(&v6, v5);
  swift_beginAccess();
  sub_260FF51FC(v5, v3 + 16);
  swift_endAccess();
}

uint64_t sub_260FF3948()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9D764();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_260FF3A20()
{
  sub_260FF3948();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(v7, ObjectType, v1);
  swift_unknownObjectRelease();
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    strcpy(v6, "signInForSelf");
    v6[7] = -4864;
    LOBYTE(v3) = (*(v4 + 24))(v6, v3, v4);

    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    sub_260FA9980(v7, &qword_27FE63850, qword_2610CC240);
  }

  return v3 & 1;
}

uint64_t PASFlowStepSendSelectedAccount.init(delegate:familyMemberSelection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v3 + v7) = v8;
  v9 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v3 + v9) = v10;
  *(v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
  sub_260FDD49C(a3, v3 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
  v11 = sub_26104DC44(a1, a2);
  swift_unknownObjectRelease();
  sub_260FDD4F8(a3);
  return v11;
}

uint64_t PASFlowStepSendSelectedAccount.prepareForPresentation()()
{
  v1[2] = v0;
  v1[3] = sub_2610BCC74();
  v1[4] = sub_2610BCC64();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_260FF3CA8;

  return sub_26104582C();
}

uint64_t sub_260FF3CA8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v7 = sub_2610BCBF4();

    return MEMORY[0x2822009F8](sub_260FC97F4, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[7] = v8;
    *v8 = v3;
    v8[1] = sub_260FC9654;
    v9 = v3[2];

    return sub_260FF3E2C();
  }
}

uint64_t sub_260FF3E4C()
{
  v26 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepSendSelectedAccount sendSelectedAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 240);

  sub_260FDD49C(v5 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection, v0 + 88);
  v6 = *(v0 + 136);
  if (v6 <= 1)
  {
    if (*(v0 + 136))
    {
      v14 = [*(*(v0 + 88) + 16) dictionary];
      if (v14)
      {
        v15 = v14;
        v11 = sub_2610BC914();
      }

      else
      {
        v11 = sub_260FA8BCC(MEMORY[0x277D84F90]);
      }

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      goto LABEL_20;
    }
  }

  else
  {
    if (v6 == 2)
    {
      v12 = *(v0 + 88);

      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
      v11 = 0;
      v13 = 1;
      goto LABEL_21;
    }

    if (v6 != 3)
    {
      v7 = sub_2610BC794();
      v8 = sub_2610BCD74();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_260F97000, v7, v8, "PASFlowStepSendSelectedAccount sendSelectedAccount with noSelection", v9, 2u);
        MEMORY[0x2666F8720](v9, -1, -1);
      }

      v10 = *(v0 + 8);

      __asm { BRAA            X1, X16 }
    }
  }

  sub_260FDD4F8(v0 + 88);
  v11 = 0;
LABEL_20:
  v13 = 0;
LABEL_21:
  v16 = sub_2610BC794();
  v17 = sub_2610BCD84();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = v13;
    _os_log_impl(&dword_260F97000, v16, v17, "PASFlowStepSendSelectedAccount sendSelectedAccount accountType: %{public}ld", v18, 0xCu);
    MEMORY[0x2666F8720](v18, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66540, &unk_2610C4040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 1;
  v20 = inited + 32;
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 40) = v13;
  v21 = sub_260FA8D08(inited);
  swift_setDeallocating();
  sub_260FA9980(v20, &qword_27FE63C20, &unk_2610BEDF0);
  *(v0 + 224) = v21;
  if (v11)
  {
    v25[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F70, &qword_2610BF440);
    v25[0] = v11;
    sub_260FAD618(v25, 3);
  }

  *(v0 + 256) = sub_2610BCC74();
  *(v0 + 264) = sub_2610BCC64();
  v23 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_260FF4244, v23, v22);
}