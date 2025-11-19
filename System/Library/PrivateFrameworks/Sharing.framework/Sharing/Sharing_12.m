uint64_t SFString.format(_:)()
{
  v3 = *v0;
  SFString.localized.getter();

  v1 = sub_1A9976830();

  return v1;
}

Swift::String __swiftcall IDSIdentifierFormatStyle.format(_:)(Swift::String a1)
{

  v1 = sub_1A98752D4(8);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x1AC589540](v1, v3, v5, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1A9874E2C(uint64_t a1)
{
  v2 = sub_1A9875370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9874E68(uint64_t a1)
{
  v2 = sub_1A9875370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IDSIdentifierFormatStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38C8, &qword_1A999C9A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9875370();
  sub_1A9977AA0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A987501C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  v5 = sub_1A98752D4(8);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x1AC589540](v5, v7, v9, v11);
  v14 = v13;

  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1A98750A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B38C8, &qword_1A999C9A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9875370();
  sub_1A9977AA0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1A98751BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1A9875220(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98752D4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A9976900();

    return sub_1A99769D0();
  }

  return result;
}

unint64_t sub_1A9875370()
{
  result = qword_1EB3B38D0;
  if (!qword_1EB3B38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38D0);
  }

  return result;
}

unint64_t sub_1A98753C8()
{
  result = qword_1EB3B38D8;
  if (!qword_1EB3B38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38D8);
  }

  return result;
}

unint64_t sub_1A9875420()
{
  result = qword_1EB3B38E0;
  if (!qword_1EB3B38E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38E0);
  }

  return result;
}

unint64_t sub_1A9875478()
{
  result = qword_1EB3B38E8;
  if (!qword_1EB3B38E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38E8);
  }

  return result;
}

unint64_t sub_1A98754D0()
{
  result = qword_1EB3B38F0;
  if (!qword_1EB3B38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38F0);
  }

  return result;
}

unint64_t sub_1A9875528()
{
  result = qword_1EB3B38F8;
  if (!qword_1EB3B38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B38F8);
  }

  return result;
}

unint64_t sub_1A98755B0()
{
  result = qword_1EB3B3900;
  if (!qword_1EB3B3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3900);
  }

  return result;
}

unint64_t sub_1A9875608()
{
  result = qword_1EB3B3908;
  if (!qword_1EB3B3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3908);
  }

  return result;
}

unint64_t SF_os_activity.Scope.enter(dso:)(void *dso)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v6 = *(v1 + 20);
  result = SF_os_activity.init(_:dso:options:)(dso, v3, v4, &v6, &activity);
  if (activity)
  {
    os_activity_scope_enter(activity, (v1 + 24));

    return swift_unknownObjectRelease();
  }

  return result;
}

void static SF_os_activity.initiate(_:dso:options:execute:)(unint64_t a1, int a2, char a3, void *a4, os_activity_flag_t *a5, void *aBlock)
{
  isEscapingClosureAtFileLocation = *a5;
  v10 = _Block_copy(aBlock);
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_20;
    }

    if (!a4)
    {
      goto LABEL_14;
    }

    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1A98766A4;
    *(v14 + 24) = v13;
    v31 = sub_1A984E098;
    v32 = v14;
    aBlocka = MEMORY[0x1E69E9820];
    v28 = 1107296256;
    v29 = sub_1A981E5CC;
    v30 = &block_descriptor_14_0;
    v15 = _Block_copy(&aBlocka);
    _Block_copy(v12);

    _os_activity_initiate(a4, a1, isEscapingClosureAtFileLocation, v15);
    _Block_release(v12);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v11 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = (a1 & 0x3F) << 8;
    v23 = (a1 >> 6) + v22 + 33217;
    v24 = (v22 | (a1 >> 6) & 0x3F) << 8;
    v25 = (a1 >> 18) + ((v24 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v26 = (a1 >> 12) + v24 + 8487393;
    if (v11)
    {
      v16 = v25;
    }

    else
    {
      v16 = v26;
    }

    if (a1 < 0x800)
    {
      v16 = v23;
    }

    goto LABEL_11;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return;
  }

  v11 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_21;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_22;
  }

  v16 = a1 + 1;
LABEL_11:
  *description = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v16) & 0x18)));
  if (!a4)
  {
    _Block_release(v10);
    return;
  }

  v17 = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A9875F30;
  *(v19 + 24) = v18;
  v31 = sub_1A981321C;
  v32 = v19;
  aBlocka = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1A981E5CC;
  v30 = &block_descriptor_7;
  v20 = _Block_copy(&aBlocka);
  _Block_copy(v17);

  _os_activity_initiate(a4, description, isEscapingClosureAtFileLocation, v20);
  _Block_release(v20);
  v21 = swift_isEscapingClosureAtFileLocation();

  _Block_release(v17);
  if ((v21 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_14:

  _Block_release(v10);
}

uint64_t sub_1A9875A98()
{
  qword_1EB3B3910 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

uint64_t sub_1A9875AD4()
{
  qword_1EB3ACE18 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t SF_os_activity.init(_:dso:options:)@<X0>(void *dso@<X3>, unint64_t result@<X0>, char a3@<W2>, os_activity_flag_t *a4@<X4>, unint64_t a5@<X8>)
{
  v6 = a5;
  v7 = *a4;
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      if (dso)
      {
        v8 = result;
        if (qword_1EB3ACE08 != -1)
        {
          v20 = *a4;
          v19 = dso;
          swift_once();
          dso = v19;
          v7 = v20;
        }

        v9 = qword_1EB3ACE18;
        v10 = dso;
        v11 = v8;
LABEL_16:
        result = _os_activity_create(v10, v11, v9, v7);
LABEL_18:
        *v6 = result;
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_20;
  }

  a5 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    a5 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v12 = result + 1;
        goto LABEL_12;
      }

LABEL_22:
      v13 = (result & 0x3F) << 8;
      v14 = (result >> 6) + v13 + 33217;
      v15 = (v13 | (result >> 6) & 0x3F) << 8;
      v16 = (result >> 18) + ((v15 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v17 = (result >> 12) + v15 + 8487393;
      if (a5)
      {
        v12 = v16;
      }

      else
      {
        v12 = v17;
      }

      if (result < 0x800)
      {
        v12 = v14;
      }

LABEL_12:
      *description = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v12) & 0x18)));
      if (dso)
      {
        if (qword_1EB3ACE08 != -1)
        {
          v21 = v7;
          v18 = dso;
          swift_once();
          dso = v18;
          v7 = v21;
        }

        v9 = qword_1EB3ACE18;
        v11 = description;
        v10 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = 0;
      goto LABEL_18;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t SF_os_activity.init(_:dso:parent:options:)@<X0>(os_activity_t dso@<X3>, unint64_t result@<X0>, char a3@<W2>, NSObject **a4@<X4>, os_activity_flag_t *a5@<X5>, os_activity_t *a6@<X8>)
{
  v8 = result;
  v9 = a6;
  v10 = *a4;
  v11 = *a5;
  if (*a4)
  {
    if ((a3 & 1) == 0)
    {
LABEL_3:
      if (v8)
      {
        if (dso)
        {
          v12 = dso;
          v13 = v8;
LABEL_16:
          dso = _os_activity_create(v12, v13, v10, v11);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1EB3ACE08 != -1)
    {
      swift_once();
    }

    v10 = qword_1EB3ACE18;
    result = swift_unknownObjectRetain();
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  a6 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    a6 = (v8 >> 16);
    if (v8 >> 16 <= 0x10)
    {
      if (v8 <= 0x7F)
      {
        v14 = v8 + 1;
        goto LABEL_14;
      }

LABEL_21:
      v15 = (v8 & 0x3F) << 8;
      v16 = (v8 >> 6) + v15 + 33217;
      v17 = (v15 | (v8 >> 6) & 0x3F) << 8;
      v18 = (v8 >> 18) + ((v17 | (v8 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (v8 >> 12) + v17 + 8487393;
      if (a6)
      {
        v14 = v18;
      }

      else
      {
        v14 = v19;
      }

      if (v8 < 0x800)
      {
        v14 = v16;
      }

LABEL_14:
      *description = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v14) & 0x18)));
      if (dso)
      {
        v13 = description;
        v12 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = swift_unknownObjectRelease();
      *v9 = dso;
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A9875EBC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;

  return swift_unknownObjectRetain();
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void SF_os_activity.apply(execute:)(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = v2;
  v4 = *v1;
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1A98766A4;
    *(v6 + 24) = v5;
    v9[4] = sub_1A984E098;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A981E5CC;
    v9[3] = &block_descriptor_25;
    v7 = _Block_copy(v9);

    os_activity_apply(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    _Block_release(v2);
  }
}

unint64_t static SF_os_activity.labelUserAction(_:dso:)@<X0>(unint64_t result@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X8>)
{
  if (a2)
  {
    a4 = HIDWORD(result);
    if (!HIDWORD(result))
    {
      if ((result & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_25;
      }

      a4 = result >> 16;
      if (result >> 16 <= 0x10)
      {
        if (result <= 0x7F)
        {
          v6 = result + 1;
LABEL_12:
          v12[1] = v4;
          v12[2] = v5;
          v12[0] = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
          if (a3)
          {
            return MEMORY[0x1AC58BD20](a3, v12);
          }

          return result;
        }

LABEL_18:
        v7 = (result & 0x3F) << 8;
        v8 = (result >> 6) + v7 + 33217;
        v9 = (v7 | (result >> 6) & 0x3F) << 8;
        v10 = (result >> 18) + ((v9 | (result >> 12) & 0x3F) << 8) - 2122219023;
        v11 = (result >> 12) + v9 + 8487393;
        if (a4)
        {
          v6 = v10;
        }

        else
        {
          v6 = v11;
        }

        if (result < 0x800)
        {
          v6 = v8;
        }

        goto LABEL_12;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3)
  {

LABEL_25:
    JUMPOUT(0x1AC58BD20);
  }

  return result;
}

BOOL sub_1A987626C(_DWORD *a1, int *a2)
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

_DWORD *sub_1A987629C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1A98762C8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_1A98763A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t SF_os_activity.Scope.description.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return result;
}

unint64_t sub_1A98763F8()
{
  result = qword_1EB3B3920;
  if (!qword_1EB3B3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3920);
  }

  return result;
}

unint64_t sub_1A9876450()
{
  result = qword_1EB3B3928;
  if (!qword_1EB3B3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3928);
  }

  return result;
}

unint64_t sub_1A98764A8()
{
  result = qword_1EB3B3930;
  if (!qword_1EB3B3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3930);
  }

  return result;
}

unint64_t sub_1A9876500()
{
  result = qword_1EB3B3938;
  if (!qword_1EB3B3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3938);
  }

  return result;
}

uint64_t sub_1A9876554(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1A98765B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t sub_1A9876634(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A9876654(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1A98766B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29[-1] - v13;
  v30[0] = a4;
  v30[1] = a5;
  sub_1A97C13A4(a3, &v29[-1] - v13, &qword_1EB3B29C0, &qword_1A9991A00);
  v15 = sub_1A9976C00();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);

  if (v17 == 1)
  {
    sub_1A97B06FC(v14, &qword_1EB3B29C0, &qword_1A9991A00);
  }

  else
  {
    sub_1A9976BF0();
    (*(v16 + 8))(v14, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v19)
  {
    swift_getObjectType();
    v20 = sub_1A9976B80();
    v22 = v21;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23 = sub_1A9976890();
      v24 = *(v23 + 16);
      sub_1A987E15C(v23 + 32, v30, a6, v29);

      v25 = v29[0];
      sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

      return v25;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
  v26 = swift_allocObject();
  v26[2] = a6;
  v26[3] = a4;
  v26[4] = a5;
  if (v22 | v20)
  {
    v29[1] = 0;
    v29[2] = 0;
    v29[3] = v20;
    v29[4] = v22;
  }

  return swift_task_create();
}

uint64_t Optional.tryUnwrap(_:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v22 = a1;
  v23 = a3;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v16, v15);
  v17 = *(a6 + 16);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v14, 1, v17) != 1)
  {
    return (*(v18 + 32))(a7, v14, v17);
  }

  (*(v11 + 8))(v14, a6);
  sub_1A97BCDE0();
  swift_allocError();
  v19 = v23;
  *v20 = v22;
  v20[1] = a2;
  v20[2] = v19;
  v20[3] = a4;
  v20[4] = v24;
  v20[10] = 0x2000000000000000;
  swift_willThrow();
}

uint64_t tryCast<A>(_:as:description:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a5;
  v33 = a7;
  v38 = a6;
  v34 = a4;
  v30[1] = a2;
  v31 = a3;
  v12 = sub_1A99770A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;
  sub_1A97AF7EC(a1, v37);
  v17 = swift_dynamicCast();
  v18 = *(*(a8 - 8) + 56);
  if (v17)
  {
    v19 = *(a8 - 8);
    v18(v16, 0, 1, a8);
    return (*(v19 + 32))(a9, v16, a8);
  }

  else
  {
    v18(v16, 1, 1, a8);
    (*(v13 + 8))(v16, v12);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1A9977400();
    v21 = v35;
    v22 = v36;
    v23 = sub_1A9977B00();
    v25 = v24;
    sub_1A97BCDE0();
    swift_allocError();
    *v26 = v21;
    v26[1] = v22;
    v26[2] = v23;
    v26[3] = v25;
    v27 = v32;
    v28 = v34;
    v26[4] = v31;
    v26[5] = v28;
    v29 = v38;
    v26[6] = v27;
    v26[7] = v29;
    v26[8] = v33;
    v26[10] = 0xA000000000000000;
    swift_willThrow();
  }
}

{
  v25 = a6;
  v26 = a7;
  v23 = a4;
  v24 = a5;
  v21 = a9;
  v22 = a3;
  v12 = sub_1A9977A00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v29[0] = a2;
  sub_1A99779C0();
  *&v27 = 0x2874736143797274;
  *(&v27 + 1) = 0xE800000000000000;
  v17 = sub_1A99779D0();
  MEMORY[0x1AC5895B0](v17);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  v18 = v27;
  sub_1A97C13A4(a1, &v27, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v28)
  {

    sub_1A967C4DC(&v27, v29);
    tryCast<A>(_:as:description:file:line:)(v29, a2, v22, v23, v24, v25, v26, a8, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {
    sub_1A97B06FC(&v27, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v19 = v18;
    *(v19 + 16) = 0xD000000000000046;
    *(v19 + 24) = 0x80000001A99E3080;
    *(v19 + 32) = 132;
    *(v19 + 80) = 0x2000000000000000;
    swift_willThrow();
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t Optional<A>.throwIfNotNil()(uint64_t result)
{
  if (result)
  {
    v1 = *(result + OBJC_IVAR____SFXPCError_domain + 8);
    v13 = *(result + OBJC_IVAR____SFXPCError_errorCode);
    v14 = *(result + OBJC_IVAR____SFXPCError_domain);
    v2 = *(result + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8);
    v12 = *(result + OBJC_IVAR____SFXPCError_internalLocalizedDescription);
    v3 = *(result + OBJC_IVAR____SFXPCError_internalDebugDescription + 8);
    v11 = *(result + OBJC_IVAR____SFXPCError_internalDebugDescription);
    v4 = *(result + OBJC_IVAR____SFXPCError_file + 8);
    v10 = *(result + OBJC_IVAR____SFXPCError_file);
    v5 = *(result + OBJC_IVAR____SFXPCError_line);
    v6 = *(result + OBJC_IVAR____SFXPCError_process);
    v7 = *(result + OBJC_IVAR____SFXPCError_process + 8);
    v8 = *(result + OBJC_IVAR____SFXPCError_line + 8);
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = v14;
    v9[1] = v1;
    v9[2] = v13;
    v9[3] = v12;
    v9[4] = v2;
    v9[5] = v11;
    v9[6] = v3;
    v9[7] = v10;
    v9[8] = v4;
    v9[9] = v5;
    v9[10] = v8 & 1 | 0xC000000000000000;
    v9[11] = v6;
    v9[12] = v7;
    swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Bool.throwIf(_:_:file:line:)(Swift::Bool _, Swift::String a2, Swift::String file, Swift::Int line)
{
  if (_ == (v4 & 1))
  {
    object = file._object;
    countAndFlagsBits = file._countAndFlagsBits;
    v8 = a2._object;
    v9 = a2._countAndFlagsBits;
    v10 = v4 & 1;
    sub_1A97BCDE0();
    swift_allocError();
    *v11 = v9;
    v11[1] = v8;
    v11[2] = v10;
    v11[3] = countAndFlagsBits;
    v11[4] = object;
    v11[5] = line;
    v11[10] = 0x8000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_1A98771D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1A97C13A4(a1, v23 - v11, &qword_1EB3B29C0, &qword_1A9991A00);
  v13 = sub_1A9976C00();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B29C0, &qword_1A9991A00);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1A9976B80();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A9976BF0();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t Optional<A>.throwIfNotNil()(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v4);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  (*(v2 + 16))(v6, v15, a1);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return (*(v2 + 8))(v6, a1);
  }

  v17 = *(v8 + 32);
  v17(v14, v6, v7);
  (*(v8 + 16))(v12, v14, v7);
  if (sub_1A99777A0())
  {
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    swift_allocError();
    v17(v18, v12, v7);
  }

  swift_willThrow();
  return (*(v8 + 8))(v14, v7);
}

uint64_t static SFError.xpcFailure(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    sub_1A97BCDE0();
    v1 = swift_allocError();
    a1 = 0;
    *v2 = xmmword_1A999CE80;
    *(v2 + 16) = 0xD000000000000046;
    *(v2 + 24) = 0x80000001A99E3080;
    *(v2 + 32) = 26;
    *(v2 + 80) = 0;
  }

  v3 = a1;
  return v1;
}

uint64_t SFError.errorDescription.getter()
{
  v1 = sub_1A9976020();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  v8 = *(v0 + 16);
  v9 = *(v0 + 17) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 32);
  v10 = v0[3];
  v11 = v0[4];
  v12 = *(v0 + 87) >> 5;
  if (v12 <= 3)
  {
    if (*(v0 + 87) >> 5 > 1u)
    {
      if (v12 == 2)
      {
        sub_1A9975FA0();
        v32 = sub_1A9975FB0();
        v34 = v33;
        (*(v2 + 8))(v5, v1);
        v78[0] = v32;
        v78[1] = v34;
        MEMORY[0x1AC5895B0](58, 0xE100000000000000);
        v77 = v11;
        v35 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v35);

        v17 = v78[0];
        v18 = v78[1];
        v78[0] = 0;
        v78[1] = 0xE000000000000000;
        sub_1A99772B0();

        v78[0] = 34;
        v78[1] = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v7, v6);
        v36 = 0xD000000000000016;
        v37 = 0x80000001A99E5A80;
      }

      else
      {
        sub_1A9975FA0();
        v53 = sub_1A9975FB0();
        v55 = v54;
        (*(v2 + 8))(v5, v1);
        v78[0] = v53;
        v78[1] = v55;
        MEMORY[0x1AC5895B0](58, 0xE100000000000000);
        v77 = v11;
        v56 = sub_1A9977730();
        MEMORY[0x1AC5895B0](v56);

        v17 = v78[0];
        v18 = v78[1];
        v78[0] = 0;
        v78[1] = 0xE000000000000000;
        sub_1A99772B0();

        v78[0] = 34;
        v78[1] = 0xE100000000000000;
        MEMORY[0x1AC5895B0](v7, v6);
        v36 = 0xD000000000000014;
        v37 = 0x80000001A99E5A60;
      }

      goto LABEL_26;
    }

    if (v12)
    {
      sub_1A9975FA0();
      v41 = sub_1A9975FB0();
      v43 = v42;
      (*(v2 + 8))(v5, v1);
      v78[0] = v41;
      v78[1] = v43;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v77 = v11;
      v44 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v44);

      v17 = v78[0];
      v18 = v78[1];
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_1A99772B0();

      v78[0] = 0xD00000000000001BLL;
      v78[1] = 0x80000001A99E5AA0;
      MEMORY[0x1AC5895B0](v7, v6);
      v36 = 5972002;
      v37 = 0xE300000000000000;
LABEL_26:
      MEMORY[0x1AC5895B0](v36, v37);
      v61 = v17;
LABEL_27:
      MEMORY[0x1AC5895B0](v61, v18);
      goto LABEL_28;
    }

    sub_1A9975FA0();
    v13 = sub_1A9975FB0();
    v15 = v14;
    (*(v2 + 8))(v5, v1);
    v78[0] = v13;
    v78[1] = v15;
    MEMORY[0x1AC5895B0](58, 0xE100000000000000);
    v77 = v11;
    v16 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v16);

    v17 = v78[0];
    v18 = v78[1];
    v78[0] = 0;
    v78[1] = 0xE000000000000000;
    sub_1A99772B0();

    v78[0] = 0xD000000000000010;
    v78[1] = 0x80000001A99E5AC0;
    v19 = v7;
    v20 = v6;
LABEL_25:
    MEMORY[0x1AC5895B0](v19, v20);
    v36 = 23328;
    v37 = 0xE200000000000000;
    goto LABEL_26;
  }

  v75 = *v0;
  v76 = v6;
  v21 = v0[7];
  v22 = v0[8];
  if (v12 > 5)
  {
    if (v12 != 6)
    {
      sub_1A9975FA0();
      v57 = sub_1A9975FB0();
      v59 = v58;
      (*(v2 + 8))(v5, v1);
      v78[0] = v57;
      v78[1] = v59;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v77 = v11;
      v60 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v60);

      v17 = v78[0];
      v18 = v78[1];
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_1A99772B0();

      v78[0] = 0x20676E697373694DLL;
      v78[1] = 0xEF203A65756C6176;
      v19 = v75;
      v20 = v76;
      goto LABEL_25;
    }

    v38 = v0[11];
    v39 = v0[12];
    v74 = v10;
    if (v22 && (v0[10] & 1) == 0)
    {
      v73 = v0[9];
      v78[0] = v38;
      v78[1] = v39;

      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      sub_1A9975FA0();
      v63 = sub_1A9975FB0();
      v65 = v64;
      (*(v2 + 8))(v5, v1);
      MEMORY[0x1AC5895B0](v63, v65);

      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v77 = v73;
      v66 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v66);

      v40 = v78[0];
      v39 = v78[1];
    }

    else
    {
      v40 = v38;
    }

    v68 = v75;
    v67 = v76;
    if (v11)
    {
      v78[0] = 0x202963707828;
      v78[1] = 0xE600000000000000;
      MEMORY[0x1AC5895B0](v74, v11);
      v69 = 23328;
      v70 = 0xE200000000000000;
    }

    else
    {
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_1A99772B0();

      strcpy(v78, "{xpc domain: ");
      HIWORD(v78[1]) = -4864;
      MEMORY[0x1AC5895B0](v68, v67);
      MEMORY[0x1AC5895B0](0x43726F727265202CLL, 0xED0000203A65646FLL);
      LOBYTE(v77) = v8;
      HIBYTE(v77) = BYTE6(v9);
      *(&v77 + 5) = WORD2(v9);
      *(&v77 + 1) = v9;
      v71 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v71);

      v69 = 5972093;
      v70 = 0xE300000000000000;
    }

    MEMORY[0x1AC5895B0](v69, v70);
    MEMORY[0x1AC5895B0](v40, v39);
  }

  else
  {
    v23 = v0[5];
    if (v12 != 4)
    {
      v74 = v10;
      v45 = v0[6];
      sub_1A9975FA0();
      v46 = sub_1A9975FB0();
      v48 = v47;
      (*(v2 + 8))(v5, v1);
      v78[0] = v46;
      v78[1] = v48;
      MEMORY[0x1AC5895B0](58, 0xE100000000000000);
      v77 = v22;
      v49 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v49);

      v50 = v78[0];
      v18 = v78[1];
      v78[0] = 0;
      v78[1] = 0xE000000000000000;
      sub_1A99772B0();

      v78[0] = 0xD000000000000010;
      v78[1] = 0x80000001A99E5A00;
      MEMORY[0x1AC5895B0](v75, v76);
      MEMORY[0x1AC5895B0](0x602073612060, 0xE600000000000000);
      MEMORY[0x1AC5895B0](v8 | (v9 << 8), v74);
      if (v23)
      {
        MEMORY[0x1AC5895B0](0x202D2D2060, 0xE500000000000000);
        MEMORY[0x1AC5895B0](v11, v23);
        v51 = 23328;
        v52 = 0xE200000000000000;
      }

      else
      {
        v51 = 5972064;
        v52 = 0xE300000000000000;
      }

      MEMORY[0x1AC5895B0](v51, v52);
      v61 = v50;
      goto LABEL_27;
    }

    sub_1A9975FA0();
    v24 = sub_1A9975FB0();
    v26 = v25;
    (*(v2 + 8))(v5, v1);
    v78[0] = v24;
    v78[1] = v26;
    MEMORY[0x1AC5895B0](58, 0xE100000000000000);
    v77 = v23;
    v27 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v27);

    v29 = v78[0];
    v28 = v78[1];
    v78[0] = 0;
    v78[1] = 0xE000000000000000;
    sub_1A99772B0();

    v78[0] = 0xD000000000000012;
    v78[1] = 0x80000001A99E5A20;
    MEMORY[0x1AC5895B0](v75, v76);
    MEMORY[0x1AC5895B0](0xD000000000000013, 0x80000001A99E5A40);
    if (v8)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v8)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    MEMORY[0x1AC5895B0](v30, v31);

    MEMORY[0x1AC5895B0](5972002, 0xE300000000000000);
    MEMORY[0x1AC5895B0](v29, v28);
  }

LABEL_28:

  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v78[0];
}

uint64_t SFError.description.getter()
{
  result = SFError.errorDescription.getter();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t SFError.errorCode.getter()
{
  v1 = *(v0 + 80) >> 61;
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return *(v0 + 16);
      }

      else
      {
        return -1007;
      }
    }

    else if (v1 == 4)
    {
      return -1003;
    }

    else
    {
      return -1005;
    }
  }

  else
  {
    v2 = -1000;
    v3 = -1002;
    if (v1 != 2)
    {
      v3 = -1006;
    }

    if (v1)
    {
      v2 = -1001;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t SFError.errorUserInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2A78, &qword_1A99983F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9996D60;
  v1 = *MEMORY[0x1E696A278];
  *(inited + 32) = sub_1A9976820();
  *(inited + 40) = v2;
  v3 = SFError.errorDescription.getter();
  v5 = 0x6C616E7265746E49;
  if (v4)
  {
    v5 = v3;
  }

  v6 = 0xEF2E726F72726520;
  *(inited + 72) = MEMORY[0x1E69E6158];
  if (v4)
  {
    v6 = v4;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1A97BF23C(inited);
  swift_setDeallocating();
  sub_1A97B06FC(inited + 32, &qword_1EB3B16C8, &unk_1A999CE90);
  return v7;
}

uint64_t sub_1A9878278(uint64_t a1)
{
  v2 = sub_1A987F8E0();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A98782B4(uint64_t a1)
{
  v2 = sub_1A987F8E0();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A9878300()
{
  result = SFError.errorDescription.getter();
  if (!v1)
  {
    return 0x6C616E7265746E49;
  }

  return result;
}

uint64_t sub_1A9878368()
{
  v1 = *(v0 + 80) >> 61;
  if (v1 > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6)
      {
        return *(v0 + 16);
      }

      else
      {
        return -1007;
      }
    }

    else if (v1 == 4)
    {
      return -1003;
    }

    else
    {
      return -1005;
    }
  }

  else
  {
    v2 = -1000;
    v3 = -1002;
    if (v1 != 2)
    {
      v3 = -1006;
    }

    if (v1)
    {
      v2 = -1001;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t CodableError.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CodableError.localizedDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CodableError.debugDescription.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void CodableError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A9975F10();
  v5 = [v4 domain];
  v6 = sub_1A9976820();
  v45 = v7;
  v46 = v6;

  v44 = [v4 code];
  v8 = [v4 userInfo];
  v9 = sub_1A9976700();

  v10 = *MEMORY[0x1E696A578];
  v11 = sub_1A9976820();
  if (!*(v9 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_1A97BCEB8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:

    v17 = 0;
    v18 = 0;
    goto LABEL_11;
  }

  sub_1A97AF7EC(*(v9 + 56) + 32 * v13, &v50);

  v16 = swift_dynamicCast();
  if (v16)
  {
    v17 = v47;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v49;
  }

  else
  {
    v18 = 0;
  }

LABEL_11:
  v19 = [v4 userInfo];
  v20 = sub_1A9976700();

  v21 = *MEMORY[0x1E696A278];
  v22 = sub_1A9976820();
  if (*(v20 + 16))
  {
    v24 = v18;
    v25 = v17;
    v26 = sub_1A97BCEB8(v22, v23);
    v28 = v27;

    if (v28)
    {
      sub_1A97AF7EC(*(v20 + 56) + 32 * v26, &v50);

      if (swift_dynamicCast())
      {

        v29 = v47;
        v30 = v49;
        v17 = v25;
        v18 = v24;
        goto LABEL_25;
      }
    }

    else
    {
    }

    v17 = v25;
    v18 = v24;
  }

  else
  {
  }

  v31 = [v4 userInfo];
  v32 = sub_1A9976700();

  if (!*(v32 + 16) || (v33 = sub_1A97BCEB8(0xD000000000000015, 0x80000001A99E5AE0), (v34 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_1A97AF7EC(*(v32 + 56) + 32 * v33, &v50);

  sub_1A9812DE0(0, &unk_1EB3B5FE0, 0x1E695DF30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v50 = a1;
    v42 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v29 = sub_1A9976860();
    v30 = v43;

    goto LABEL_25;
  }

  v35 = v17;
  v36 = v47;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E5B00);
  v48 = [v47 name];
  type metadata accessor for NSExceptionName(0);
  sub_1A9977400();

  MEMORY[0x1AC5895B0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  v37 = [v36 reason];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1A9976820();
    v41 = v40;
  }

  else
  {
    v41 = 0xE500000000000000;
    v39 = 0x296C696E28;
  }

  MEMORY[0x1AC5895B0](v39, v41);

  v29 = v50;
  v30 = v51;
  v17 = v35;
LABEL_25:
  *a2 = v46;
  a2[1] = v45;
  a2[2] = v44;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v29;
  a2[6] = v30;
}

uint64_t CodableError.errorUserInfo.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = MEMORY[0x1E69E7CC8];
  v5 = MEMORY[0x1E69E6158];
  if (v1)
  {
    v6 = v0[3];
    v7 = *MEMORY[0x1E696A578];
    v8 = sub_1A9976820();
    v10 = v9;
    v20 = v5;
    *&v19 = v6;
    *(&v19 + 1) = v1;
    sub_1A967C4DC(&v19, v18);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3B2C(v18, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  if (v3)
  {
    v12 = *MEMORY[0x1E696A278];
    v13 = sub_1A9976820();
    v15 = v14;
    v20 = v5;
    *&v19 = v2;
    *(&v19 + 1) = v3;
    sub_1A967C4DC(&v19, v18);

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A97E3B2C(v18, v13, v15, v16);
  }

  return v4;
}

unint64_t CodableError.description.getter()
{
  if (v0[4])
  {
    v1 = v0[3];
  }

  else if (v0[6])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = *v0;
    v3 = v0[1];
    v4 = v0[2];
    sub_1A99772B0();

    MEMORY[0x1AC5895B0](v2, v3);
    MEMORY[0x1AC5895B0](0x203A65646F63202CLL, 0xE800000000000000);
    v5 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v5);

    MEMORY[0x1AC5895B0](125, 0xE100000000000000);
    v1 = 0xD000000000000015;
  }

  return v1;
}

unint64_t sub_1A9878B6C()
{
  v1 = 0x6E69616D6F64;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x646F43726F727265;
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

uint64_t sub_1A9878BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A987F714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9878C1C(uint64_t a1)
{
  v2 = sub_1A987E364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9878C58(uint64_t a1)
{
  v2 = sub_1A987E364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3948, &qword_1A999CEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v15[0] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987E364();
  sub_1A9977AA0();
  v19 = 0;
  v13 = v15[5];
  sub_1A9977690();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1A99776C0();
  v17 = 2;
  sub_1A9977650();
  v16 = 3;
  sub_1A9977650();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CodableError.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v4);
  if (!v6)
  {
    sub_1A99779A0();
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1A99779A0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v7)
  {
    return sub_1A99779A0();
  }

LABEL_3:
  sub_1A99779A0();

  return sub_1A99768D0();
}

uint64_t CodableError.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1A9977980();
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v4);
  if (!v6)
  {
    sub_1A99779A0();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A99779A0();
    return sub_1A99779B0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A99779A0();
  sub_1A99768D0();
  return sub_1A99779B0();
}

uint64_t CodableError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3958, &unk_1A999CEA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A987E364();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = 0;
  v11 = sub_1A99775A0();
  v13 = v12;
  v14 = v11;
  v30 = 1;
  v26 = sub_1A99775D0();
  v29 = 2;
  v15 = sub_1A9977550();
  v27 = v17;
  v25 = v15;
  v28 = 3;
  v18 = sub_1A9977550();
  v20 = v19;
  v21 = *(v6 + 8);
  v24 = v18;
  v21(v9, v5);
  *a2 = v14;
  a2[1] = v13;
  v22 = v25;
  a2[2] = v26;
  a2[3] = v22;
  v23 = v24;
  a2[4] = v27;
  a2[5] = v23;
  a2[6] = v20;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A98792E0(uint64_t a1)
{
  v2 = sub_1A987F88C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A987931C(uint64_t a1)
{
  v2 = sub_1A987F88C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A98793A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_1A9977980();
  sub_1A99768D0();
  MEMORY[0x1AC58A630](v4);
  if (!v6)
  {
    sub_1A99779A0();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1A99779A0();
    return sub_1A99779B0();
  }

  sub_1A99779A0();
  sub_1A99768D0();
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1A99779A0();
  sub_1A99768D0();
  return sub_1A99779B0();
}

CFTypeID NSDictionary.sf_optionalValue<A>(_:as:cfTypeID:file:line:)@<X0>(const void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v7 = v6;
  *&v27[0] = sub_1A9976820();
  *(&v27[0] + 1) = v14;
  v15 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v15)
  {
    return (*(*(a5 - 8) + 56))(a6, 1, 1, a5);
  }

  v26 = a2;
  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A967C4DC(v27, &v28);
  sub_1A97AF7EC(&v28, v27);
  if (swift_dynamicCast())
  {
    v16 = v30;
    swift_unknownObjectRetain();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(&v28, v29);
    v16 = sub_1A99777C0();
  }

  result = CFGetTypeID(v16);
  if (result == a1)
  {
    *&v27[0] = v16;
    v18 = *(a5 - 8);
    if (*(v18 + 64) == 8)
    {
      (*(v18 + 16))(a6, v27, a5);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v28);
      return (*(v18 + 56))(a6, 0, 1, a5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *&v27[0] = 0;
    *(&v27[0] + 1) = 0xE000000000000000;
    sub_1A9977400();
    v19 = v27[0];
    *&v27[0] = a1;
    v20 = sub_1A9977730();
    v22 = v21;
    *&v27[0] = 0x4449657079544643;
    *(&v27[0] + 1) = 0xEA0000000000203ALL;
    v30 = a1;
    v23 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v23);

    v24 = v27[0];
    sub_1A97BCDE0();
    swift_allocError();
    *v25 = v19;
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    *(v25 + 32) = v24;
    *(v25 + 48) = v26;
    *(v25 + 56) = a3;
    *(v25 + 64) = a4;
    *(v25 + 80) = 0xA000000000000000;
    swift_willThrow();

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v28);
  }

  return result;
}

uint64_t NSDictionary.sf_optionalValue<A>(_:as:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v20 = a5;
  v9 = v7;
  *&v18 = a1;
  *(&v18 + 1) = a2;

  v16 = [v9 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v16)
  {
    return (*(*(a6 - 8) + 56))(a7, 1, 1, a6);
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A967C4DC(&v18, v19);
  tryCast<A>(_:as:description:file:line:)(v19, a6, a1, a2, a3, a4, v20, a6, a7);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
  if (!v8)
  {
    return (*(*(a6 - 8) + 56))(a7, 0, 1, a6);
  }

  return result;
}

uint64_t sub_1A9879978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v8 = sub_1A9976820();
  a7(v8);
}

uint64_t NSDictionary.sf_value<A>(_:as:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *&v21[0] = a1;
  *(&v21[0] + 1) = a2;

  v15 = [v7 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  strcpy(&v19, "sf_value for ");
  HIWORD(v19) = -4864;
  MEMORY[0x1AC5895B0](a1, a2);
  v16 = v19;
  sub_1A97C13A4(v21, &v19, &qword_1EB3B0BA0, &unk_1A99923D0);
  if (v20)
  {

    sub_1A97B06FC(v21, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A967C4DC(&v19, v22);
    tryCast<A>(_:as:description:file:line:)(v22, a6, 0, 0, a3, a4, a5, a6, a7);
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  else
  {
    sub_1A97B06FC(&v19, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A97BCDE0();
    swift_allocError();
    *v18 = v16;
    *(v18 + 16) = 0xD000000000000046;
    *(v18 + 24) = 0x80000001A99E3080;
    *(v18 + 32) = 301;
    *(v18 + 80) = 0x2000000000000000;
    swift_willThrow();
    return sub_1A97B06FC(v21, &qword_1EB3B0BA0, &unk_1A99923D0);
  }
}

Swift::Void __swiftcall NSDictionary.sf_setValue(_:forKey:)(Swift::Bool _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = sub_1A99767E0();
  [v2 setValue:v3 forKey:v4];
}

Swift::Void __swiftcall NSDictionary.sf_setValue(_:forKey:)(Swift::Bool _, CFStringRef forKey)
{
  v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = forKey;
  v6 = [v5 initWithBool_];
  [v2 setValue:v6 forKey:v7];
}

uint64_t NSArray.tryCastElements<A>(as:)(uint64_t a1, char *a2)
{
  v7[2] = a2;
  v3 = sub_1A9812DE0(0, &qword_1EB3B3960, 0x1E695DEC8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v5 = sub_1A987E3D8();
  return sub_1A9879E6C(sub_1A987E3B8, v7, v3, a2, v4, v5, MEMORY[0x1E69E7288], &v8);
}

uint64_t sub_1A9879E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = tryCast<A>(_:as:description:file:line:)(a1, a2, 0, 0, 0xD000000000000046, 0x80000001A99E3080, 317, a2, a4);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_1A9879E6C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_1A99770A0();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1A9976A00();
  v70 = sub_1A99773B0();
  v65 = sub_1A99773C0();
  sub_1A9977370();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1A99769E0();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1A9977160();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_1A99773A0();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1A9977160();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_1A99773A0();
      sub_1A9977160();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t static Task<>.noThrow(priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  sub_1A97C13A4(a1, &v14 - v10, &qword_1EB3B29C0, &qword_1A9991A00);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a2;
  v12[6] = a3;

  return sub_1A98766B0(0, 0, v11, &unk_1A999CEC0, v12, a4);
}

uint64_t sub_1A987A668(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A97B2638;

  return v9(a1);
}

uint64_t concurrentRace<A>(priority:operation:against:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A987A78C, 0, 0);
}

uint64_t sub_1A987A78C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v2;
  v6 = *(MEMORY[0x1E69E88A0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1A987A88C;
  v8 = *(v0 + 64);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v9, v8, v8, 0, 0, &unk_1A999CED8, v3, v8);
}

uint64_t sub_1A987A88C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987A9C8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1A987A9C8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1A987AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_1A99770A0();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987AB08, 0, 0);
}

uint64_t sub_1A987AB08()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v6;
  v8[6] = v3;

  v0[14] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v9 = sub_1A9976D20();
  sub_1A98771D8(v5, &unk_1A999D6A8, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v4;
  v10[6] = v1;

  sub_1A98771D8(v5, &unk_1A999D6B8, v10, v9);
  v11 = *(MEMORY[0x1E69E8708] + 4);
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1A987ACAC;
  v13 = v0[13];
  v14 = v0[3];

  return MEMORY[0x1EEE6DAC8](v13, 0, 0, v9);
}

uint64_t sub_1A987ACAC()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1A987AF84;
  }

  else
  {
    v3 = sub_1A987ADC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A987ADC0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = **(v0 + 24);
  sub_1A9976D10();
  (*(v4 + 16))(v3, v2, v5);
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v3, 1, v6) == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    return sub_1A9977470();
  }

  else
  {
    v10 = *(v0 + 96);
    v11 = *(v0 + 72);
    v12 = *(v0 + 16);
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 80));
    (*(v8 + 32))(v12, v10, v11);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1A987AF84()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_1A987AFF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A97B2988;

  return v9(a1);
}

uint64_t withOperationTimeout<A>(_:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  v8 = sub_1A99773E0();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987B1B4, 0, 0);
}

uint64_t sub_1A987B1B4()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v0 + 40);
  sub_1A99778B0();
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  sub_1A987E5F8();
  *v2 = v0;
  v2[1] = sub_1A987B280;
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);

  return withOperationTimeout<A, B>(_:clock:priority:operation:)(v9, v0 + 16, v3, v8, v6, v7, v4, v5);
}

uint64_t sub_1A987B280()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *v1;
  v6[15] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987B428, 0, 0);
  }

  else
  {
    v7 = v6[13];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1A987B428()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t withOperationTimeout<A, B>(_:clock:priority:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[11] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[12] = v11;
  v8[13] = *(v11 + 64);
  v8[14] = swift_task_alloc();
  v12 = *(a8 - 8);
  v8[15] = v12;
  v8[16] = *(v12 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987B5E0, 0, 0);
}

uint64_t sub_1A987B5E0()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v24 = v0[16];
  v25 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v23 = v5;
  v7 = v0[8];
  v6 = v0[9];
  v21 = v1;
  v22 = v7;
  v8 = v0[7];
  v26 = v0[14];
  v18 = v0[6];
  v19 = v0[4];
  v20 = v0[3];
  v9 = swift_allocObject();
  v0[18] = v9;
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v18;
  v9[6] = v8;
  (*(v2 + 16))(v1, v19, v6);
  (*(v3 + 16))(v26, v20, v4);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = (v24 + *(v3 + 80) + v10) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[19] = v12;
  *(v12 + 2) = v22;
  *(v12 + 3) = v6;
  *(v12 + 4) = v23;
  (*(v2 + 32))(&v12[v10], v21, v6);
  (*(v3 + 32))(&v12[v11], v26, v4);

  v13 = swift_task_alloc();
  v0[20] = v13;
  v14 = type metadata accessor for OperationTimeoutResult();
  *v13 = v0;
  v13[1] = sub_1A987B808;
  v15 = v0[5];
  v16 = v0[2];

  return concurrentRace<A>(priority:operation:against:)(v16, v15, &unk_1A999CEF8, v9, &unk_1A999CF08, v12, v14);
}

uint64_t sub_1A987B808()
{
  v2 = *(*v1 + 160);
  v3 = *v1;
  v3[21] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987B974, 0, 0);
  }

  else
  {
    v5 = v3[18];
    v4 = v3[19];
    v6 = v3[17];
    v7 = v3[14];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1A987B974()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[14];

  v5 = v0[1];
  v6 = v0[21];

  return v5();
}

uint64_t sub_1A987BA00(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(a4 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v4[5] = v8;
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1A987BB54;

  return v12(v8);
}

uint64_t sub_1A987BB54()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1A987BD1C;
  }

  else
  {
    v3 = sub_1A987BC68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A987BC68()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  (*(v1 + 32))(v3, v0[5], v2);
  (*(v1 + 56))(v3, 0, 2, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A987BD1C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1A987BD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = swift_getAssociatedTypeWitness();
  v7 = sub_1A99770A0();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[12] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987BF00, 0, 0);
}

uint64_t sub_1A987BF00()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v19 = v0[11];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  sub_1A9977890();
  swift_getAssociatedConformanceWitness();
  sub_1A99773F0();
  v10 = *(v4 + 8);
  v0[16] = v10;
  v0[17] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  (*(*(v5 - 8) + 56))(v19, 1, 1, v5);
  v11 = *(MEMORY[0x1E69E8938] + 4);
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_1A987C084;
  v13 = v0[15];
  v14 = v0[11];
  v15 = v0[6];
  v16 = v0[7];
  v17 = v0[3];

  return MEMORY[0x1EEE6DE58](v13, v14, v15, v16);
}

uint64_t sub_1A987C084()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 80);
  v9 = *(*v1 + 72);
  v12 = *v1;
  *(*v1 + 152) = v0;

  (*(v8 + 8))(v7, v9);
  v4(v5, v6);
  if (v0)
  {
    v10 = sub_1A987C31C;
  }

  else
  {
    v10 = sub_1A987C260;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1A987C260()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  (*(*(v0[5] - 8) + 56))(v0[2], 1, 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A987C31C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  (*(*(*(v0 + 40) - 8) + 56))(*(v0 + 16), 2, 2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A987C3E0@<X0>(char *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v67 = a1;
  v73 = a4;
  v5 = *(a3 + 24);
  v65 = *(a3 + 16);
  v66 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A99770A0();
  v68 = *(v7 - 8);
  v69 = v7;
  v8 = *(v68 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v58 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v58 - v16;
  v72 = *(AssociatedTypeWitness - 8);
  v18 = *(v72 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v58 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v58 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v58 - v29;
  v31 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v71, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return (*(v72 + 32))(v73, v33, AssociatedTypeWitness);
    }

    else
    {
      v49 = *(v33 + 1);
      (*v33)(v67, v70);
    }
  }

  else
  {
    v59 = v24;
    v62 = v11;
    v63 = v21;
    v67 = v27;
    v37 = v69;
    v38 = *(swift_getTupleTypeMetadata2() + 48);
    v39 = v72;
    v40 = v72 + 32;
    v71 = *(v72 + 32);
    v71(v30, v33, AssociatedTypeWitness);
    v41 = v68;
    (*(v68 + 32))(v17, &v33[v38], v37);
    v42 = v70;
    v70 = *(v41 + 16);
    v70(v14, v42, v37);
    v60 = *(v39 + 48);
    v43 = v60(v14, 1, AssociatedTypeWitness);
    v44 = v41;
    v45 = v17;
    v64 = v30;
    v61 = v40;
    if (v43 == 1)
    {
      v46 = v69;
      (*(v44 + 8))(v14, v69);
      v47 = v72;
      v48 = v67;
      (*(v72 + 16))(v67, v30, AssociatedTypeWitness);
    }

    else
    {
      v50 = v59;
      v71(v59, v14, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v48 = v67;
      sub_1A9977420();
      v47 = v72;
      (*(v72 + 8))(v50, AssociatedTypeWitness);
      v46 = v69;
    }

    v51 = v62;
    v70(v62, v45, v46);
    v52 = v60(v51, 1, AssociatedTypeWitness);
    v53 = v63;
    if (v52 == 1)
    {
      v54 = v51;
      v55 = *(v68 + 8);
      v55(v45, v46);
      (*(v47 + 8))(v64, AssociatedTypeWitness);
      v55(v54, v46);
      return (v71)(v73, v48, AssociatedTypeWitness);
    }

    else
    {
      v71(v63, v51, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v56 = *(swift_getAssociatedConformanceWitness() + 16);
      sub_1A9977860();
      v57 = *(v47 + 8);
      v57(v53, AssociatedTypeWitness);
      v57(v48, AssociatedTypeWitness);
      (*(v68 + 8))(v45, v46);
      return (v57)(v64, AssociatedTypeWitness);
    }
  }
}

uint64_t withAutomaticRetry<A, B>(limit:clock:backoffStrategy:shouldRetry:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v18;
  *(v8 + 88) = v19;
  *(v8 + 64) = a8;
  *(v8 + 72) = v17;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 240) = a3;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 96) = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v12 = sub_1A99770A0();
  *(v8 + 120) = v12;
  v13 = *(v12 - 8);
  *(v8 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987CBC8, 0, 0);
}

uint64_t sub_1A987CBC8()
{
  v1 = v0[18];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 56);
  v0[19] = v4;
  v0[20] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[21] = 1;
  v10 = (v0[8] + *v0[8]);
  v5 = *(v0[8] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1A987CCF4;
  v7 = v0[9];
  v8 = v0[2];

  return v10(v8, 1);
}

uint64_t sub_1A987CCF4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1A987CFE4;
  }

  else
  {
    v3 = sub_1A987CE08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A987CE08()
{
  v1 = v0[17];
  v2 = v0[14];
  (*(v0[16] + 8))(v0[18], v0[15]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A987CEA4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  result = (*(v3 + 8))(v2, v4);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 168) = v1 + 1;
    v10 = (*(v0 + 64) + **(v0 + 64));
    v6 = *(*(v0 + 64) + 4);
    v7 = swift_task_alloc();
    *(v0 + 176) = v7;
    *v7 = v0;
    v7[1] = sub_1A987CCF4;
    v8 = *(v0 + 72);
    v9 = *(v0 + 16);

    return v10(v9, v1 + 1);
  }

  return result;
}

uint64_t sub_1A987CFE4()
{
  if ((*(v0 + 240) & 1) != 0 || *(v0 + 168) < *(v0 + 24))
  {
    v13 = (*(v0 + 48) + **(v0 + 48));
    v8 = *(*(v0 + 48) + 4);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_1A987D180;
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);
    v12 = *(v0 + 56);

    return v13(v11, v10);
  }

  else
  {
    v1 = *(v0 + 184);
    v2 = *(v0 + 128);
    swift_willThrow();
    v3 = *(v0 + 184);
    v4 = *(v0 + 136);
    v5 = *(v0 + 112);
    (*(v2 + 8))(*(v0 + 144), *(v0 + 120));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A987D180(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_1A987D628;
  }

  else
  {
    *(v4 + 241) = a1 & 1;
    v7 = sub_1A987D2AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1A987D2AC()
{
  if (*(v0 + 241) == 1)
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 128);
    v27 = *(v0 + 160);
    v28 = *(v0 + 136);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v0 + 40);
    v12 = type metadata accessor for BackoffStrategy();
    sub_1A987C3E0(v1, v2, v12, v6);
    v13 = *(v4 + 8);
    *(v0 + 208) = v13;
    *(v0 + 216) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v2, v5);
    (*(v8 + 16))(v2, v6, v7);
    v3(v2, 0, 1, v7);
    v3(v28, 1, 1, v7);
    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v14[1] = sub_1A987D4B8;
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v19 = *(v0 + 32);

    return sub_1A987D78C(v16, v15, v17, v18);
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 128);
    swift_willThrow();
    v23 = *(v0 + 184);
    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    (*(v22 + 8))(*(v0 + 144), *(v0 + 120));

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1A987D4B8()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 216);
  (*(v2 + 208))(*(v2 + 136), *(v2 + 120));
  if (v0)
  {
    v6 = sub_1A987D6D4;
  }

  else
  {
    v6 = sub_1A987CEA4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A987D628()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 200);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  (*(v1 + 8))(*(v0 + 144), *(v0 + 120));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A987D6D4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  (*(v0 + 208))(*(v0 + 144), *(v0 + 120));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1A987D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A987D878, 0, 0);
}

uint64_t sub_1A987D878()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];
  sub_1A9977890();
  swift_getAssociatedConformanceWitness();
  sub_1A99773F0();
  v9 = *(v4 + 8);
  v0[11] = v9;
  v0[12] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v10 = *(MEMORY[0x1E69E8938] + 4);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_1A987D9B0;
  v12 = v0[10];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[3];
  v16 = v0[4];

  return MEMORY[0x1EEE6DE58](v12, v15, v16, v13);
}

uint64_t sub_1A987D9B0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 56);
  v7 = *v1;
  v7[14] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987DB6C, 0, 0);
  }

  else
  {
    v9 = v7[9];
    v8 = v7[10];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1A987DB6C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t withAutomaticRetry<A>(limit:backoffStrategy:shouldRetry:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = a8;
  *(v8 + 104) = v16;
  *(v8 + 80) = a6;
  *(v8 + 88) = a7;
  *(v8 + 64) = a2;
  *(v8 + 72) = a5;
  *(v8 + 50) = a3;
  *(v8 + 56) = a1;
  v10 = sub_1A99773E0();
  *(v8 + 112) = v10;
  v11 = *(v10 - 8);
  *(v8 + 120) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v13 = *(a4 + 16);
  *(v8 + 136) = *a4;
  *(v8 + 152) = v13;
  *(v8 + 51) = *(a4 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A987DCC8, 0, 0);
}

uint64_t sub_1A987DCC8()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 128);
  v3 = *(v0 + 50);
  v12 = *(v0 + 152);
  v13 = *(v0 + 136);
  sub_1A99778B0();
  *(v0 + 32) = v12;
  *(v0 + 16) = v13;
  *(v0 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  sub_1A987E5F8();
  *v4 = v0;
  v4[1] = sub_1A987DDC0;
  v5 = *(v0 + 128);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  v10 = *(v0 + 56);

  return withAutomaticRetry<A, B>(limit:clock:backoffStrategy:shouldRetry:body:)(v10, v9, v3 & 1, v5, v0 + 16, v7, v8, v6);
}

uint64_t sub_1A987DDC0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *v1;
  v6[22] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A987DF68, 0, 0);
  }

  else
  {
    v7 = v6[16];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1A987DF68()
{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

BOOL sub_1A987E03C(void *a1, uint64_t *a2)
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

void *sub_1A987E06C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1A987E098@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1A987E15C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v8)
    {
      return 0;
    }

LABEL_7:
    if (v4)
    {
      if (!v10 || (v3 != v7 || v4 != v10) && (sub_1A99777E0() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    if (v6)
    {
      return v11 && (v5 == v9 && v6 == v11 || (sub_1A99777E0() & 1) != 0);
    }

    return !v11;
  }

  v12 = sub_1A99777E0();
  result = 0;
  if ((v12 & 1) != 0 && v2 == v8)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1A987E364()
{
  result = qword_1EB3B3950;
  if (!qword_1EB3B3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3950);
  }

  return result;
}

unint64_t sub_1A987E3D8()
{
  result = qword_1EB3B3968;
  if (!qword_1EB3B3968)
  {
    sub_1A9812DE0(255, &qword_1EB3B3960, 0x1E695DEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3968);
  }

  return result;
}

uint64_t sub_1A987E440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A987A668(a1, v4, v5, v7);
}

uint64_t sub_1A987E51C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1A97B2638;

  return sub_1A987AA2C(a1, a2, v7, v8, v9, v11, v10, v6);
}

unint64_t sub_1A987E5F8()
{
  result = qword_1EB3AB608;
  if (!qword_1EB3AB608)
  {
    sub_1A99773E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AB608);
  }

  return result;
}

uint64_t sub_1A987E650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A987BA00(a1, v7, v8, v4);
}

uint64_t sub_1A987E718(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = v8 + *(*(v6 - 8) + 64);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1A97B2988;

  return sub_1A987BD80(a1, v1 + v8, v1 + v11, v5, v6, v7);
}

unint64_t sub_1A987E8BC()
{
  result = qword_1EB3B3970;
  if (!qword_1EB3B3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3970);
  }

  return result;
}

unint64_t sub_1A987E914()
{
  result = qword_1EB3B3978;
  if (!qword_1EB3B3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3978);
  }

  return result;
}

unint64_t sub_1A987E96C()
{
  result = qword_1EB3B3980;
  if (!qword_1EB3B3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3980);
  }

  return result;
}

unint64_t sub_1A987E9C4()
{
  result = qword_1EB3B3988[0];
  if (!qword_1EB3B3988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3988);
  }

  return result;
}

unint64_t sub_1A987EA1C()
{
  result = qword_1EB3AC838;
  if (!qword_1EB3AC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC838);
  }

  return result;
}

unint64_t sub_1A987EA74()
{
  result = qword_1EB3AC830;
  if (!qword_1EB3AC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC830);
  }

  return result;
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

uint64_t sub_1A987EB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A987EB50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 104) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a1 + 80) = 2 * -a2;
      return result;
    }

    *(a1 + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1A987EC10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A987EC58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A987ECBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1A987ED18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1A987EEEC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

unint64_t sub_1A987F15C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  sub_1A99770A0();
  result = swift_getTupleTypeMetadata2();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      result = sub_1A97C0020();
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A987F234(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = (v9 + *(v8 + 80)) & ~*(v8 + 80);
  if (*(v8 + 84))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = v11 + v10;
  if (v9 <= v12)
  {
    v9 = v12;
  }

  v13 = 16;
  if (v9 > 0x10)
  {
    v13 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v14 = v13 + 1;
  v15 = 8 * (v13 + 1);
  if ((v13 + 1) <= 3)
  {
    v18 = ((a2 + ~(-1 << v15) - 253) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v18 < 2)
    {
LABEL_30:
      v20 = *(a1 + v13);
      if (v20 >= 3)
      {
        return (v20 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_30;
  }

LABEL_19:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return (v14 | v19) + 254;
}

void sub_1A987F3D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  v11 = (v10 + *(v9 + 80)) & ~*(v9 + 80);
  if (*(v9 + 84))
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  v13 = v12 + v11;
  if (v10 <= v13)
  {
    v10 = v13;
  }

  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v14 = v10 + 1;
  if (a3 < 0xFE)
  {
    v15 = 0;
  }

  else if (v14 <= 3)
  {
    v18 = ((a3 + ~(-1 << (8 * v14)) - 253) >> (8 * v14)) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (a2 > 0xFD)
  {
    v16 = a2 - 254;
    if (v14 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v17 = (v16 >> (8 * v14)) + 1;
    if (v10 != -1)
    {
      v20 = v16 & ~(-1 << (8 * v14));
      bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          *a1 = v20;
          if (v15 > 1)
          {
LABEL_44:
            if (v15 == 2)
            {
              *&a1[v14] = v17;
            }

            else
            {
              *&a1[v14] = v17;
            }

            return;
          }
        }

        else
        {
          *a1 = v16;
          if (v15 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v15)
        {
          a1[v14] = v17;
        }

        return;
      }

      *a1 = v20;
      a1[2] = BYTE2(v20);
    }

    if (v15 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v15 <= 1)
  {
    if (v15)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v10] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v15 == 2)
  {
    *&a1[v14] = 0;
    goto LABEL_29;
  }

  *&a1[v14] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

unint64_t sub_1A987F610()
{
  result = qword_1EB3B3A90;
  if (!qword_1EB3B3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3A90);
  }

  return result;
}

unint64_t sub_1A987F668()
{
  result = qword_1EB3B3A98;
  if (!qword_1EB3B3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3A98);
  }

  return result;
}

unint64_t sub_1A987F6C0()
{
  result = qword_1EB3B3AA0;
  if (!qword_1EB3B3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AA0);
  }

  return result;
}

uint64_t sub_1A987F714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E5B60 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E5B80 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1A987F88C()
{
  result = qword_1EB3B3AA8;
  if (!qword_1EB3B3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AA8);
  }

  return result;
}

unint64_t sub_1A987F8E0()
{
  result = qword_1EB3B3AB0;
  if (!qword_1EB3B3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AB0);
  }

  return result;
}

uint64_t sub_1A987F934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A987AFF0(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1A987FA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A987A668(a1, v4, v5, v7);
}

uint64_t sub_1A987FB04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v5);
}

uint64_t UTType.init(identifier:allowUndeclared:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_1A9976420();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A99767E0();

  v12 = [objc_opt_self() _typeWithIdentifier_allowUndeclared_];

  v13 = *(v7 + 56);
  if (v12 && (v13(v5, 1, 1, v6), sub_1A987FDEC(), sub_1A9977500(), v12, (*(v7 + 48))(v5, 1, v6) != 1))
  {
    v16 = *(v7 + 32);
    v16(v10, v5, v6);
    v16(a1, v10, v6);
    v14 = a1;
    v15 = 0;
  }

  else
  {
    v14 = a1;
    v15 = 1;
  }

  return (v13)(v14, v15, 1, v6);
}

unint64_t sub_1A987FDEC()
{
  result = qword_1EB3B3AD8;
  if (!qword_1EB3B3AD8)
  {
    sub_1A9976420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AD8);
  }

  return result;
}

uint64_t UTType.init(systemIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;

  UTType.init(identifier:allowUndeclared:)(v9);
  v10 = sub_1A9976420();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A987FFF8(v9);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1A99772B0();

    v13 = 0xD00000000000002ELL;
    v14 = 0x80000001A99E5C50;
    MEMORY[0x1AC5895B0](a1, a2);
    result = sub_1A9977470();
    __break(1u);
  }

  else
  {

    return (*(v11 + 32))(a3, v9, v10);
  }

  return result;
}

uint64_t sub_1A987FFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9880060()
{
  v0 = sub_1A9976420();
  __swift_allocate_value_buffer(v0, qword_1EB3B3AB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B3AB8);
  return UTType.init(systemIdentifier:)(0xD00000000000001BLL, 0x80000001A99E5C80, v1);
}

uint64_t static UTType.livePhotoBundle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3B0B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1A9976420();
  v3 = __swift_project_value_buffer(v2, qword_1EB3B3AB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SFAirDrop.DisplayPriority.description.getter()
{
  if (*v0)
  {
    result = 0x6C616D726F6ELL;
  }

  else
  {
    result = 1751607656;
  }

  *v0;
  return result;
}

uint64_t sub_1A98801B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A988028C(uint64_t a1)
{
  v2 = sub_1A98806A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98802C8(uint64_t a1)
{
  v2 = sub_1A98806A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9880304(uint64_t a1)
{
  v2 = sub_1A988074C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9880340(uint64_t a1)
{
  v2 = sub_1A988074C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988037C(uint64_t a1)
{
  v2 = sub_1A98806F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98803B8(uint64_t a1)
{
  v2 = sub_1A98806F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.DisplayPriority.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AE0, &qword_1A999D6E0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AE8, &qword_1A999D6E8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AF0, &qword_1A999D6F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98806A4();
  sub_1A9977AA0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1A98806F8();
    v18 = v22;
    sub_1A9977640();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1A988074C();
    sub_1A9977640();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1A98806A4()
{
  result = qword_1EB3B3AF8;
  if (!qword_1EB3B3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AF8);
  }

  return result;
}

unint64_t sub_1A98806F8()
{
  result = qword_1EB3B3B00;
  if (!qword_1EB3B3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B00);
  }

  return result;
}

unint64_t sub_1A988074C()
{
  result = qword_1EB3B3B08;
  if (!qword_1EB3B3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B08);
  }

  return result;
}

uint64_t SFAirDrop.DisplayPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.DisplayPriority.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B10, &qword_1A999D6F8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B18, &qword_1A999D700);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B20, &unk_1A999D708);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98806A4();
  v16 = v36;
  sub_1A9977A70();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1A9977620();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1A97B2970();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1A9977300();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v26 = &type metadata for SFAirDrop.DisplayPriority;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1A98806F8();
        sub_1A9977530();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1A988074C();
        sub_1A9977530();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

unint64_t sub_1A9880CD4()
{
  result = qword_1EB3B3B28;
  if (!qword_1EB3B3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B28);
  }

  return result;
}

unint64_t sub_1A9880D9C()
{
  result = qword_1EB3B3B30;
  if (!qword_1EB3B3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B30);
  }

  return result;
}

unint64_t sub_1A9880DF4()
{
  result = qword_1EB3B3B38;
  if (!qword_1EB3B3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B38);
  }

  return result;
}

unint64_t sub_1A9880E4C()
{
  result = qword_1EB3B3B40;
  if (!qword_1EB3B3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B40);
  }

  return result;
}

unint64_t sub_1A9880EA4()
{
  result = qword_1EB3B3B48;
  if (!qword_1EB3B3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B48);
  }

  return result;
}

unint64_t sub_1A9880EFC()
{
  result = qword_1EB3B3B50;
  if (!qword_1EB3B3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B50);
  }

  return result;
}

unint64_t sub_1A9880F54()
{
  result = qword_1EB3B3B58;
  if (!qword_1EB3B3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B58);
  }

  return result;
}

unint64_t sub_1A9880FAC()
{
  result = qword_1EB3B3B60;
  if (!qword_1EB3B3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B60);
  }

  return result;
}

uint64_t SFAirDropSend.Request.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropSend.Request() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1A9867B38(v4, v5, v6);
}

uint64_t type metadata accessor for SFAirDropSend.Request()
{
  result = qword_1EB3AC6C0;
  if (!qword_1EB3AC6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SFAirDropSend.Request.urls.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Request() + 24));
}

uint64_t SFAirDropSend.Request.endpointID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Request() + 28);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Request.urlsMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Request() + 36));
}

uint64_t SFAirDropSend.Request.customPayload.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropSend.Request() + 40);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDropSend.Request.itemPreviewData.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropSend.Request() + 44);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDropSend.Request.itemPreviewData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDropSend.Request() + 44);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDropSend.Request.itemDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Request() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropSend.Request.itemDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDropSend.Request() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDropSend.Request.requestSource.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Request() + 52));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropSend.Request.requestSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDropSend.Request() + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urls:endpointID:itemPreviewData:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  v19 = type metadata accessor for SFAirDropSend.Request();
  v20 = a9 + v19[11];
  *v20 = xmmword_1A999DA90;
  v21 = (a9 + v19[12]);
  v22 = (a9 + v19[13]);
  sub_1A988369C(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v23 = a9 + v19[5];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v18;
  *(a9 + v19[6]) = a3;
  v24 = v19[7];
  v25 = sub_1A99762C0();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = v19[8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  *(a9 + v19[9]) = 0;
  v28 = (a9 + v19[10]);
  *v28 = a12;
  v28[1] = a13;
  result = sub_1A97D8688(*v20, *(v20 + 8));
  *v20 = a5;
  *(v20 + 8) = a6;
  *v21 = a7;
  v21[1] = a8;
  *v22 = a10;
  v22[1] = a11;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urlsPromise:urlsMetadata:endpointID:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a2;
  v19 = a2[1];
  v20 = *(a2 + 16);
  v21 = type metadata accessor for SFAirDropSend.Request();
  v51 = a9 + v21[11];
  v52 = a1;
  *v51 = xmmword_1A999DA90;
  sub_1A98838BC(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v22 = a9 + v21[5];
  *v22 = v18;
  *(v22 + 8) = v19;
  *(v22 + 16) = v20;
  *(a9 + v21[6]) = 0;
  v23 = v21[7];
  v24 = sub_1A99762C0();
  v47 = *(v24 - 8);
  v48 = v24;
  v49 = a5;
  (*(v47 + 16))(a9 + v23, a5);
  v25 = v21[8];
  v50 = a3;
  v26 = a3;
  v27 = a8;
  sub_1A97C13A4(v26, a9 + v25, &qword_1EB3B24E0, &qword_1A999FE90);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v28 - 8) + 56))(a9 + v25, 0, 1, v28);
  *(a9 + v21[9]) = a4;
  v29 = (a9 + v21[10]);
  *v29 = a11;
  v29[1] = a12;
  v30 = *(a4 + 16);

  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 136;
LABEL_2:
  v35 = v34 + 120 * v32;
  while (v30 != v32)
  {
    if (v32 >= *(a4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v32;
    v36 = v35 + 120;
    v37 = *(a4 + v35);
    v35 += 120;
    if (v37 >> 60 != 15)
    {
      v55 = v34;
      v38 = *(a4 + v36 - 128);
      sub_1A97B40FC(v38, v37);
      result = swift_isUniquelyReferenced_nonNull_native();
      v46 = v27;
      if ((result & 1) == 0)
      {
        result = sub_1A97AED8C(0, *(v33 + 16) + 1, 1, v33);
        v33 = result;
      }

      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1A97AED8C((v39 > 1), v40 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      v27 = v46;
      v34 = v55;
      goto LABEL_2;
    }
  }

  if (*(v33 + 16))
  {
    v42 = *(v33 + 32);
    v43 = *(v33 + 40);
    sub_1A97B40FC(v42, v43);
  }

  else
  {
    v42 = 0;
    v43 = 0xF000000000000000;
  }

  v44 = (a9 + v21[12]);
  v45 = (a9 + v21[13]);
  (*(v47 + 8))(v49, v48);
  sub_1A97B06FC(v50, &qword_1EB3B24E0, &qword_1A999FE90);
  sub_1A9883924(v52, type metadata accessor for SFAirDrop.TransferIdentifier);
  result = sub_1A97D8688(*v51, *(v51 + 8));
  *v51 = v42;
  *(v51 + 8) = v43;
  *v44 = a6;
  v44[1] = a7;
  *v45 = v27;
  v45[1] = a10;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urlsMetadata:endpointID:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for SFAirDropSend.Request();
  *(a9 + v17[11]) = xmmword_1A999DA90;
  v18 = (a9 + v17[12]);
  v19 = (a9 + v17[13]);
  sub_1A988369C(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v20 = a9 + v17[5];
  *v20 = v14;
  *(v20 + 8) = v15;
  *(v20 + 16) = v16;
  *(a9 + v17[6]) = 0;
  v21 = v17[7];
  v22 = sub_1A99762C0();
  (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v23 = v17[8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  result = (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  *(a9 + v17[9]) = a3;
  v26 = (a9 + v17[10]);
  *v26 = a10;
  v26[1] = a11;
  *v18 = a5;
  v18[1] = a6;
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t SFAirDropSend.Request.requestWithType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropSend.Request();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v149 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1A99762C0();
  v9 = *(v151 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v12 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v131 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v131 - v26;
  v29 = *a1;
  v28 = *(a1 + 8);
  v30 = *(a1 + 16);
  v31 = *(v3 + v6[6]);
  LODWORD(v150) = v30;
  if (v31)
  {
    v32 = v29;
    v33 = v28;
    sub_1A98838BC(v3, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
    (*(v9 + 16))(a2 + v6[7], v3 + v6[7], v151);
    v35 = v6[10];
    v34 = v6[11];
    v36 = *(v3 + v34);
    v144 = *(v3 + v34 + 8);
    v145 = v36;
    v37 = v6[13];
    v38 = (v3 + v6[12]);
    v40 = *v38;
    v39 = v38[1];
    v151 = v40;
    v146 = v39;
    v41 = *(v3 + v37 + 8);
    v149 = *(v3 + v37);
    v143 = v41;
    v42 = (v3 + v35);
    v43 = v42[1];
    v142 = *v42;
    v44 = (a2 + v34);
    *(a2 + v34) = xmmword_1A999DA90;
    v45 = v6[13];
    v147 = (a2 + v6[12]);
    v148 = (a2 + v45);
    v46 = a2 + v6[5];
    v47 = v32;
    *v46 = v32;
    *(v46 + 8) = v33;
    LOBYTE(v32) = v150;
    *(v46 + 16) = v150;
    *(a2 + v6[6]) = v31;
    (*(v22 + 56))(a2 + v6[8], 1, 1, v21);
    *(a2 + v6[9]) = 0;
    v48 = (a2 + v6[10]);
    v49 = v142;
    *v48 = v142;
    v48[1] = v43;
    v50 = *v44;
    v51 = v44[1];

    sub_1A9867B38(v47, v33, v32);
    v53 = v144;
    v52 = v145;
    sub_1A97C1554(v145, v144);
    v54 = v143;

    v55 = v146;

    sub_1A97C1554(v49, v43);
    result = sub_1A97D8688(v50, v51);
    *v44 = v52;
    v44[1] = v53;
    v58 = v147;
    v57 = v148;
    *v147 = v151;
    v58[1] = v55;
    *v57 = v149;
    v57[1] = v54;
    return result;
  }

  v144 = v27;
  v145 = v25;
  v146 = a2;
  v147 = v29;
  v141 = v28;
  v148 = v9;
  sub_1A97C13A4(v3 + v6[8], v20, &qword_1EB3B3B68, &qword_1A999DAA0);
  v59 = (*(v22 + 48))(v20, 1, v21);
  v139 = v22;
  v140 = v21;
  if (v59 == 1)
  {
    v60 = &qword_1EB3B3B68;
    v61 = &qword_1A999DAA0;
    v62 = v20;
LABEL_19:
    sub_1A97B06FC(v62, v60, v61);
    v102 = (v3 + v6[10]);
    v149 = v102[1];
    v103 = v148;
    v104 = v146;
    v105 = v151;
    if (v149 >> 60 == 15 || !*(v3 + v6[9]))
    {
LABEL_25:
      v130 = 0;
      result = sub_1A9977470();
      __break(1u);
    }

    else
    {
      v106 = *(v3 + v6[9]);
      v145 = *v102;
      sub_1A98838BC(v3, v146, type metadata accessor for SFAirDrop.TransferIdentifier);
      (v103[2])(v104 + v6[7], v3 + v6[7], v105);
      v107 = v6[11];
      v108 = (v3 + v6[12]);
      v109 = v108[1];
      v151 = *v108;
      v110 = (v3 + v6[13]);
      v111 = v110[1];
      v148 = *v110;
      *(v104 + v107) = xmmword_1A999DA90;
      v112 = (v104 + v6[12]);
      v113 = (v104 + v6[13]);
      v114 = v104 + v6[5];
      v115 = v147;
      v116 = v140;
      v117 = v141;
      *v114 = v147;
      *(v114 + 8) = v117;
      v118 = v150;
      *(v114 + 16) = v150;
      *(v104 + v6[6]) = 0;
      (*(v139 + 56))(v104 + v6[8], 1, 1, v116);
      *(v104 + v6[9]) = v106;
      v119 = (v104 + v6[10]);
      v120 = v145;
      v121 = v149;
      *v119 = v145;
      v119[1] = v121;
      *v112 = v151;
      v112[1] = v109;
      *v113 = v148;
      v113[1] = v111;
      sub_1A9867B38(v115, v117, v118);
      sub_1A97C1554(v120, v121);
    }

    return result;
  }

  v63 = v144;
  sub_1A97D8380(v20, v144, &qword_1EB3B24E0, &qword_1A999FE90);
  v64 = *(v3 + v6[9]);
  v65 = v141;
  if (!v64)
  {
    v60 = &qword_1EB3B24E0;
    v61 = &qword_1A999FE90;
    v62 = v63;
    goto LABEL_19;
  }

  v138 = type metadata accessor for SFAirDrop.TransferIdentifier;
  sub_1A98838BC(v3, v16, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97C13A4(v63, v145, &qword_1EB3B24E0, &qword_1A999FE90);
  v66 = v6[7];
  v67 = v16;
  v136 = v148[2];
  v68 = v151;
  v136(v12, v3 + v66, v151);
  v69 = (v3 + v6[12]);
  v70 = *v69;
  v71 = v69[1];
  v72 = (v3 + v6[13]);
  v74 = *v72;
  v73 = v72[1];
  v133 = v74;
  v134 = v70;
  v142 = v71;
  v143 = v73;
  v75 = v6[11];
  v76 = (v3 + v6[10]);
  v77 = *v76;
  v137 = v76[1];
  v78 = v149;
  v132 = (v149 + v75);
  *v132 = xmmword_1A999DA90;
  v135 = v67;
  sub_1A98838BC(v67, v78, v138);
  v79 = v78 + v6[5];
  v80 = v147;
  *v79 = v147;
  *(v79 + 8) = v65;
  v81 = v150;
  *(v79 + 16) = v150;
  *(v78 + v6[6]) = 0;
  v82 = v78 + v6[7];
  v138 = v12;
  v136(v82, v12, v68);
  v83 = v6[8];
  sub_1A97C13A4(v145, v78 + v83, &qword_1EB3B24E0, &qword_1A999FE90);
  (*(v139 + 56))(v78 + v83, 0, 1, v140);
  *(v78 + v6[9]) = v64;
  v84 = (v78 + v6[10]);
  v85 = v137;
  *v84 = v77;
  v84[1] = v85;
  v86 = *(v64 + 16);
  sub_1A9867B38(v80, v141, v81);

  v87 = v142;

  sub_1A97C1554(v77, v85);

  v88 = 0;
  v89 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v90 = (v64 + 136 + 120 * v88);
  while (v86 != v88)
  {
    if (v88 >= *(v64 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    ++v88;
    v91 = v90 + 15;
    v92 = *v90;
    v93 = *v90 >> 60;
    v90 += 15;
    if (v93 <= 0xE)
    {
      v94 = *(v91 - 16);
      sub_1A97B40FC(v94, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_1A97AED8C(0, *(v89 + 2) + 1, 1, v89);
      }

      v96 = *(v89 + 2);
      v95 = *(v89 + 3);
      v97 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v150 = v96 + 1;
        v99 = sub_1A97AED8C((v95 > 1), v96 + 1, 1, v89);
        v97 = v150;
        v89 = v99;
      }

      *(v89 + 2) = v97;
      v98 = &v89[16 * v96];
      *(v98 + 4) = v94;
      *(v98 + 5) = v92;
      goto LABEL_7;
    }
  }

  if (*(v89 + 2))
  {
    v100 = *(v89 + 4);
    v101 = *(v89 + 5);
    sub_1A97B40FC(v100, v101);
  }

  else
  {
    v100 = 0;
    v101 = 0xF000000000000000;
  }

  v122 = v148;
  v123 = v134;
  v124 = v87;

  v125 = v149;
  v126 = (v149 + v6[12]);
  v127 = (v149 + v6[13]);
  (v122[1])(v138, v151);
  sub_1A97B06FC(v145, &qword_1EB3B24E0, &qword_1A999FE90);
  sub_1A9883924(v135, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97B06FC(v144, &qword_1EB3B24E0, &qword_1A999FE90);
  v128 = v132;
  sub_1A97D8688(*v132, *(v132 + 1));
  *v128 = v100;
  v128[1] = v101;
  *v126 = v123;
  *(v126 + 1) = v124;
  v129 = v143;
  *v127 = v133;
  *(v127 + 1) = v129;
  return sub_1A988369C(v125, v146, type metadata accessor for SFAirDropSend.Request);
}

uint64_t sub_1A9882500(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x766572506D657469;
    v6 = 0x637365446D657469;
    if (a1 != 8)
    {
      v6 = 0x5374736575716572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174654D736C7275;
    if (a1 != 5)
    {
      v7 = 0x61506D6F74737563;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1936487029;
    v3 = 0x746E696F70646E65;
    if (a1 != 3)
    {
      v3 = 0x6D6F7250736C7275;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A988266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9883E54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9882694(uint64_t a1)
{
  v2 = sub_1A9883704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98826D0(uint64_t a1)
{
  v2 = sub_1A9883704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B70, &qword_1A999DAA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9883704();
  sub_1A9977AA0();
  LOBYTE(v29) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1A98839CC(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDropSend.Request();
    v12 = v3 + v11[5];
    v13 = *(v12 + 8);
    v14 = *(v12 + 16);
    v29 = *v12;
    v30 = v13;
    v31 = v14;
    HIBYTE(v28) = 1;
    sub_1A9867B38(v29, v13, v14);
    sub_1A986DAF8();
    sub_1A99776E0();
    sub_1A984D578(v29, v30, v31);
    v29 = *(v3 + v11[6]);
    HIBYTE(v28) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    sub_1A98837D0(&qword_1EB3B3B88, &qword_1EB3B24B8);
    sub_1A9977680();
    v15 = v11[7];
    LOBYTE(v29) = 3;
    sub_1A99762C0();
    sub_1A98839CC(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
    sub_1A99776E0();
    v16 = v11[8];
    LOBYTE(v29) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
    sub_1A988386C(&qword_1EB3B3B90);
    sub_1A9977680();
    v29 = *(v3 + v11[9]);
    HIBYTE(v28) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    sub_1A9883758(&qword_1EB3B3BA0, sub_1A980B980);
    sub_1A9977680();
    v17 = (v3 + v11[10]);
    v18 = v17[1];
    v29 = *v17;
    v30 = v18;
    HIBYTE(v28) = 6;
    sub_1A97C1554(v29, v18);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v29, v30);
    v19 = (v3 + v11[11]);
    v20 = v19[1];
    v29 = *v19;
    v30 = v20;
    HIBYTE(v28) = 7;
    sub_1A97C1554(v29, v20);
    sub_1A9977680();
    sub_1A97D8688(v29, v30);
    v21 = (v3 + v11[12]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v29) = 8;
    sub_1A9977650();
    v24 = (v3 + v11[13]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v29) = 9;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropSend.Request.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v43 - v5;
  v6 = sub_1A99762C0();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BA8, &qword_1A999DAC0);
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v15 = &v43 - v14;
  v16 = type metadata accessor for SFAirDropSend.Request();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &v20[*(v18 + 44)];
  *v54 = xmmword_1A999DA90;
  v21 = a1[3];
  v22 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1A9883704();
  v51 = v15;
  v23 = v53;
  sub_1A9977A70();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    sub_1A97D8688(*v54, *(v54 + 1));
  }

  else
  {
    v24 = v9;
    v25 = v48;
    v43 = v6;
    v44 = v16;
    v53 = v20;
    LOBYTE(v55) = 0;
    sub_1A98839CC(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier);
    v26 = v49;
    sub_1A99775F0();
    v27 = v53;
    sub_1A988369C(v26, v53, type metadata accessor for SFAirDrop.TransferIdentifier);
    v57 = 1;
    sub_1A986DC5C();
    sub_1A99775F0();
    v28 = v56;
    v29 = v27 + v44[5];
    *v29 = v55;
    *(v29 + 16) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    v57 = 2;
    sub_1A98837D0(&qword_1EB3B3BB0, &qword_1EB3B24D0);
    sub_1A9977590();
    *(v27 + v44[6]) = v55;
    LOBYTE(v55) = 3;
    sub_1A98839CC(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    v30 = v43;
    sub_1A99775F0();
    v49 = 0;
    (*(v47 + 32))(v27 + v44[7], v24, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
    LOBYTE(v55) = 4;
    sub_1A988386C(&qword_1EB3B3BB8);
    v31 = v46;
    sub_1A9977590();
    sub_1A97D8380(v31, v27 + v44[8], &qword_1EB3B3B68, &qword_1A999DAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    v57 = 5;
    sub_1A9883758(&qword_1EB3B3BC0, sub_1A980B9D4);
    sub_1A9977590();
    *(v27 + v44[9]) = v55;
    v57 = 6;
    sub_1A97B446C();
    sub_1A9977590();
    *(v27 + v44[10]) = v55;
    v57 = 7;
    sub_1A9977590();
    v32 = v55;
    v33 = v54;
    sub_1A97D8688(*v54, *(v54 + 1));
    *v33 = v32;
    LOBYTE(v55) = 8;
    v34 = sub_1A9977550();
    v35 = &v53[v44[12]];
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v55) = 9;
    v37 = sub_1A9977550();
    v39 = v38;
    v40 = v53;
    v41 = &v53[v44[13]];
    (*(v25 + 8))(v51, v50);
    *v41 = v37;
    v41[1] = v39;
    sub_1A98838BC(v40, v45, type metadata accessor for SFAirDropSend.Request);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    return sub_1A9883924(v40, type metadata accessor for SFAirDropSend.Request);
  }
}

BOOL SFAirDropSend.Request.supportsPipelining.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Request() + 20));
  v2 = *(v1 + 16);
  result = 1;
  if (v2 != 1)
  {
    if (v2 != 3)
    {
      return 0;
    }

    v4 = *v1;
    v3 = v1[1];
    if (v4 == 2 && v3 == 0)
    {
      return 0;
    }

    if (v4 != 1 || v3 != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A988369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9883704()
{
  result = qword_1EB3B3B78;
  if (!qword_1EB3B3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B78);
  }

  return result;
}

uint64_t sub_1A9883758(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98837D0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    sub_1A98839CC(a2, type metadata accessor for SFSecurityScopedURL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A988386C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B24E0, &qword_1A999FE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98838BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9883924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98839CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A9883A3C()
{
  type metadata accessor for SFAirDrop.TransferIdentifier();
  if (v0 <= 0x3F)
  {
    sub_1A9883BA8(319, &qword_1EB3AB6F8, &qword_1EB3B3B80, &qword_1A999DAB0);
    if (v1 <= 0x3F)
    {
      sub_1A99762C0();
      if (v2 <= 0x3F)
      {
        sub_1A9883BA8(319, qword_1EB3AC7A0, &qword_1EB3B24E0, &qword_1A999FE90);
        if (v3 <= 0x3F)
        {
          sub_1A9883BA8(319, &qword_1EB3AB700, &qword_1EB3B3B98, &qword_1A999DAB8);
          if (v4 <= 0x3F)
          {
            sub_1A97D8914(319, &qword_1EB3AC8A8);
            if (v5 <= 0x3F)
            {
              sub_1A97D8914(319, &qword_1EB3AB718);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A9883BA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1A99770A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7RequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7RequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A9883D50()
{
  result = qword_1EB3B3BC8;
  if (!qword_1EB3B3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BC8);
  }

  return result;
}

unint64_t sub_1A9883DA8()
{
  result = qword_1EB3B3BD0;
  if (!qword_1EB3B3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BD0);
  }

  return result;
}

unint64_t sub_1A9883E00()
{
  result = qword_1EB3B3BD8;
  if (!qword_1EB3B3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BD8);
  }

  return result;
}

uint64_t sub_1A9883E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEA00000000004449 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6F7250736C7275 && a2 == 0xEB00000000657369 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174654D736C7275 && a2 == 0xEC00000061746164 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x766572506D657469 && a2 == 0xEF61746144776569 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xED0000656372756FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

BOOL SFAirDrop.TransferType.isFiles.getter()
{
  v1 = *(v0 + 16);
  result = 1;
  if (v1 != 1)
  {
    if (v1 != 3)
    {
      return 0;
    }

    if (*(v0 + 8) || *v0 != 1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SFAirDrop.TransferType.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    sub_1A99772B0();

    v3 = 0xD000000000000019;
LABEL_5:
    v6 = v3;
    MEMORY[0x1AC5895B0](v2, v1);
    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    return v6;
  }

  if (*(v0 + 16) == 2)
  {
    sub_1A99772B0();

    v3 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (v2 ^ 1 | v1)
  {
    v5 = 0x796150726565702ELL;
  }

  else
  {
    v5 = 0x73656C69662ELL;
  }

  if (v2 | v1)
  {
    return v5;
  }

  else
  {
    return 0x736B6E696C2ELL;
  }
}

uint64_t SFAirDrop.TransferType.exchangeType.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  sub_1A9867B38(v2, *(v3 + 8), v1);
  return v2;
}

double static SFAirDrop.TransferType.transferType(for:shouldExchangeContacts:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropSend.Request();
  v5 = (a1 + *(v4 + 20));
  v6 = *(v5 + 16);
  if (v6 == 3 && ((v7 = *v5, !*(a1 + *(v4 + 20) + 8)) ? (v8 = v7 == 2) : (v8 = 0), v8))
  {
    *&result = 2;
    *a2 = xmmword_1A999DCC0;
    *(a2 + 16) = 3;
  }

  else
  {
    v9 = *(a1 + *(v4 + 24));

    static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v9, v6 == 2, a2);
  }

  return result;
}

uint64_t static SFAirDrop.TransferType.transferType(for:onlyExchange:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFSecurityScopedURL(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v29 - v13;
  if (a2)
  {
    v15 = 2;
    v16 = 0xE300000000000000;
    v17 = 6710134;
    goto LABEL_21;
  }

  if (!a1)
  {
    v16 = 0;
    v15 = 3;
    v17 = 1;
    goto LABEL_21;
  }

  v18 = *(a1 + 16);
  v30 = v18;
  v31 = a3;
  if (v18)
  {
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = *(v12 + 72);
    v21 = a1 + v19;
    v22 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1A9886678(v21, v14);
      if ((sub_1A9975F70() & 1) == 0)
      {
        goto LABEL_13;
      }

      if (sub_1A9975F90() == 0x636F6C626577 && v23 == 0xE600000000000000)
      {
        break;
      }

      v24 = sub_1A99777E0();

      if (v24)
      {
        goto LABEL_13;
      }

      sub_1A9886740(v14);
LABEL_7:
      v21 += v20;
      if (!--v18)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    sub_1A98866DC(v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A97BDBC0(0, *(v22 + 16) + 1, 1);
      v22 = v32;
    }

    v27 = *(v22 + 16);
    v26 = *(v22 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1A97BDBC0(v26 > 1, v27 + 1, 1);
      v22 = v32;
    }

    *(v22 + 16) = v27 + 1;
    sub_1A98866DC(v10, v22 + v19 + v27 * v20);
    goto LABEL_7;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v28 = *(v22 + 16);

  v16 = 0;
  v17 = v28 != v30;
  v15 = 3;
  a3 = v31;
LABEL_21:
  *a3 = v17;
  *(a3 + 8) = v16;
  *(a3 + 16) = v15;
  return result;
}

uint64_t static SFAirDrop.TransferType.transferType(for:onlyExchange:shouldExchangeContacts:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X8>)
{
  HIDWORD(v33) = a2;
  v34 = a3;
  v36 = sub_1A9976420();
  v4 = *(*(v36 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v36);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v35 = (v6 + 8);
    for (i = v9 - 1; ; --i)
    {
      v12 = v10[7];
      v43 = v10[6];
      v44[0] = v12;
      *(v44 + 9) = *(v10 + 121);
      v13 = v10[3];
      v39 = v10[2];
      v40 = v13;
      v14 = v10[5];
      v41 = v10[4];
      v42 = v14;
      v15 = v10[1];
      v38[0] = *v10;
      v38[1] = v15;
      if (v13)
      {
        v16 = *(&v39 + 1);
      }

      else
      {
        v16 = 0;
      }

      if (v13)
      {
        v17 = v40;
      }

      else
      {
        v17 = 0xE000000000000000;
      }

      sub_1A980C124(v38, &v37);

      v18 = sub_1A99767E0();
      v19 = [v18 pathExtension];

      v20 = sub_1A9976820();
      v22 = v21;

      if (qword_1EB3B0B70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v36, qword_1EB3EAFB8);
      if (v16 == sub_1A99763D0() && v17 == v23)
      {

LABEL_29:

LABEL_30:

        result = sub_1A980C15C(v38);
LABEL_31:
        v32 = xmmword_1A999DCC0;
LABEL_32:
        v30 = v34;
        *v34 = v32;
        v31 = 3;
        goto LABEL_33;
      }

      v24 = sub_1A99777E0();

      if (v24)
      {
        goto LABEL_29;
      }

      sub_1A99763F0();
      v25 = sub_1A99763D0();
      v27 = v26;
      (*v35)(v8, v36);
      if (v16 == v25 && v17 == v27)
      {
      }

      else
      {
        v28 = sub_1A99777E0();

        if ((v28 & 1) == 0)
        {

          result = sub_1A980C15C(v38);
          if (!i)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      if (v20 == 0x6170726565706B70 && v22 == 0xED0000746E656D79)
      {
        goto LABEL_30;
      }

      v29 = sub_1A99777E0();

      result = sub_1A980C15C(v38);
      if (v29)
      {
        goto LABEL_31;
      }

      if (!i)
      {
        break;
      }

LABEL_24:
      v10 += 9;
    }
  }

  if ((v33 & 0x100000000) == 0)
  {
    v32 = xmmword_1A999DCD0;
    goto LABEL_32;
  }

  v30 = v34;
  *v34 = xmmword_1A999DCE0;
  v31 = 2;
LABEL_33:
  *(v30 + 16) = v31;
  return result;
}

unint64_t sub_1A9884A98()
{
  v1 = *v0;
  v2 = 0x736B6E696CLL;
  v3 = 0xD000000000000011;
  v4 = 0x65676E6168637865;
  if (v1 != 4)
  {
    v4 = 0x6D79615072656570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x73656C6966;
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

uint64_t sub_1A9884B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98871B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9884B84(uint64_t a1)
{
  v2 = sub_1A988679C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884BC0(uint64_t a1)
{
  v2 = sub_1A988679C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884C0C(uint64_t a1)
{
  v2 = sub_1A9886844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884C48(uint64_t a1)
{
  v2 = sub_1A9886844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884C84(uint64_t a1)
{
  v2 = sub_1A98868EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884CC0(uint64_t a1)
{
  v2 = sub_1A98868EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884CFC(uint64_t a1)
{
  v2 = sub_1A9886898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884D38(uint64_t a1)
{
  v2 = sub_1A9886898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884D74(uint64_t a1)
{
  v2 = sub_1A9886994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884DB0(uint64_t a1)
{
  v2 = sub_1A9886994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9884E74(uint64_t a1)
{
  v2 = sub_1A9886940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884EB0(uint64_t a1)
{
  v2 = sub_1A9886940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884EEC(uint64_t a1)
{
  v2 = sub_1A98867F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884F28(uint64_t a1)
{
  v2 = sub_1A98867F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.TransferType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BE0, &qword_1A999DCF0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BE8, &qword_1A999DCF8);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BF0, &qword_1A999DD00);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BF8, &qword_1A999DD08);
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C00, &qword_1A999DD10);
  v49 = *(v15 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C08, &qword_1A999DD18);
  v41 = *(v19 - 8);
  v42 = v19;
  v20 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C10, &qword_1A999DD20);
  v57 = *(v23 - 8);
  v58 = v23;
  v24 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v40 - v25;
  v27 = *(v1 + 8);
  *&v56 = *v1;
  *(&v56 + 1) = v27;
  v28 = *(v1 + 16);
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988679C();
  sub_1A9977AA0();
  if (v28 <= 1)
  {
    if (!v28)
    {
      v60 = 1;
      sub_1A9886940();
      v30 = v58;
      sub_1A9977640();
      sub_1A9977690();
      (*(v49 + 8))(v18, v15);
      return (*(v57 + 8))(v26, v30);
    }

    v62 = 3;
    sub_1A9886898();
    v31 = v50;
    v30 = v58;
    sub_1A9977640();
    v32 = v52;
    sub_1A9977690();
    v33 = v51;
LABEL_7:
    (*(v33 + 8))(v31, v32);
    return (*(v57 + 8))(v26, v30);
  }

  if (v28 == 2)
  {
    v63 = 4;
    sub_1A9886844();
    v31 = v53;
    v30 = v58;
    sub_1A9977640();
    v32 = v55;
    sub_1A9977690();
    v33 = v54;
    goto LABEL_7;
  }

  if (v56 == 0)
  {
    v59 = 0;
    sub_1A9886994();
    v39 = v58;
    sub_1A9977640();
    (*(v41 + 8))(v22, v42);
    return (*(v57 + 8))(v26, v39);
  }

  else
  {
    if (v56 ^ 1 | *(&v56 + 1))
    {
      v64 = 5;
      sub_1A98867F0();
      v35 = v46;
      v36 = v58;
      sub_1A9977640();
      v38 = v47;
      v37 = v48;
    }

    else
    {
      v61 = 2;
      sub_1A98868EC();
      v35 = v43;
      v36 = v58;
      sub_1A9977640();
      v38 = v44;
      v37 = v45;
    }

    (*(v38 + 8))(v35, v37);
    return (*(v57 + 8))(v26, v36);
  }
}

uint64_t SFAirDrop.TransferType.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

LABEL_7:
    MEMORY[0x1AC58A630](v3);

    return sub_1A99768D0();
  }

  if (*(v0 + 16) == 2)
  {
    v3 = 4;
    goto LABEL_7;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1AC58A630](v5);
}

uint64_t SFAirDrop.TransferType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1A9977980();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = 4;
LABEL_7:
    MEMORY[0x1AC58A630](v4);
    sub_1A99768D0();
    return sub_1A99779B0();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1AC58A630](v5);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.TransferType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C50, &qword_1A999DD28);
  v70 = *(v72 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v59 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C58, &qword_1A999DD30);
  v71 = *(v69 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v75 = &v59 - v6;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C60, &qword_1A999DD38);
  v68 = *(v63 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v74 = &v59 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C68, &qword_1A999DD40);
  v65 = *(v67 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v73 = &v59 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C70, &qword_1A999DD48);
  v64 = *(v66 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C78, &qword_1A999DD50);
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C80, &unk_1A999DD58);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1A988679C();
  v25 = v78;
  sub_1A9977A70();
  if (!v25)
  {
    v26 = v17;
    v59 = v14;
    v60 = v13;
    v28 = v74;
    v27 = v75;
    v29 = v76;
    v61 = v19;
    v30 = v77;
    v78 = v22;
    v31 = sub_1A9977620();
    v32 = (2 * *(v31 + 16)) | 1;
    v80 = v31;
    v81 = v31 + 32;
    v82 = 0;
    v83 = v32;
    v33 = sub_1A97B2984();
    if (v33 == 6 || v82 != v83 >> 1)
    {
      v36 = sub_1A9977300();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v38 = &type metadata for SFAirDrop.TransferType;
      v40 = v78;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v61 + 8))(v40, v18);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33 > 2u)
      {
        v42 = v61;
        if (v33 == 3)
        {
          v84 = 3;
          sub_1A9886898();
          v47 = v28;
          v48 = v78;
          sub_1A9977530();
          v49 = v63;
          v54 = sub_1A99775A0();
          v50 = v47;
          v56 = v53;
          (*(v68 + 8))(v50, v49);
          (*(v42 + 8))(v48, v18);
          swift_unknownObjectRelease();
          v57 = 1;
        }

        else
        {
          v43 = v78;
          if (v33 == 4)
          {
            v84 = 4;
            sub_1A9886844();
            v44 = v27;
            sub_1A9977530();
            v45 = v69;
            v54 = sub_1A99775A0();
            v56 = v58;
            (*(v71 + 8))(v44, v45);
            (*(v42 + 8))(v43, v18);
            swift_unknownObjectRelease();
            v57 = 2;
          }

          else
          {
            v84 = 5;
            sub_1A98867F0();
            sub_1A9977530();
            (*(v70 + 8))(v29, v72);
            (*(v42 + 8))(v43, v18);
            swift_unknownObjectRelease();
            v56 = 0;
            v57 = 3;
            v54 = 2;
          }
        }
      }

      else if (v33)
      {
        if (v33 == 1)
        {
          v84 = 1;
          sub_1A9886940();
          v34 = v60;
          sub_1A9977530();
          v35 = v66;
          v54 = sub_1A99775A0();
          v56 = v55;
          (*(v64 + 8))(v34, v35);
          (*(v61 + 8))(v78, v18);
          swift_unknownObjectRelease();
          v57 = 0;
        }

        else
        {
          v84 = 2;
          sub_1A98868EC();
          v51 = v73;
          v52 = v78;
          sub_1A9977530();
          (*(v65 + 8))(v51, v67);
          (*(v61 + 8))(v52, v18);
          swift_unknownObjectRelease();
          v56 = 0;
          v57 = 3;
          v54 = 1;
        }
      }

      else
      {
        v84 = 0;
        sub_1A9886994();
        v46 = v78;
        sub_1A9977530();
        (*(v62 + 8))(v26, v59);
        (*(v61 + 8))(v46, v18);
        swift_unknownObjectRelease();
        v54 = 0;
        v56 = 0;
        v57 = 3;
      }

      *v30 = v54;
      *(v30 + 8) = v56;
      *(v30 + 16) = v57;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v79);
}

uint64_t sub_1A988619C()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

LABEL_7:
    MEMORY[0x1AC58A630](v3);

    return sub_1A99768D0();
  }

  if (*(v0 + 16) == 2)
  {
    v3 = 4;
    goto LABEL_7;
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1AC58A630](v5);
}

uint64_t sub_1A9886258()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1A9977980();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = 4;
LABEL_7:
    MEMORY[0x1AC58A630](v4);
    sub_1A99768D0();
    return sub_1A99779B0();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1AC58A630](v5);
  return sub_1A99779B0();
}

uint64_t _s7Sharing9SFAirDropO12TransferTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1A99777E0();
          sub_1A9867B38(v6, v5, 2u);
          sub_1A9867B38(v3, v2, 2u);
          sub_1A984D578(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        sub_1A9867B38(v14, v2, 2u);
        sub_1A9867B38(v3, v2, 2u);
        sub_1A984D578(v3, v2, 2u);
        v21 = v3;
        v22 = v2;
        v23 = 2;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 == 3 && v6 == 1 && !v5)
        {
          sub_1A984D578(*a1, v2, 3u);
          v19 = 1;
          sub_1A984D578(1, 0, 3u);
          return v19;
        }

LABEL_40:
        sub_1A9867B38(*a2, *(a2 + 8), v7);
        sub_1A9867B38(v3, v2, v4);
        sub_1A984D578(v3, v2, v4);
        sub_1A984D578(v6, v5, v7);
        return 0;
      }

      if (v7 != 3 || v6 != 2 || v5)
      {
        goto LABEL_40;
      }

      sub_1A984D578(*a1, v2, 3u);
      v21 = 2;
    }

    else
    {
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_40;
      }

      sub_1A984D578(*a1, v2, 3u);
      v21 = 0;
    }

    v22 = 0;
    v23 = 3;
LABEL_44:
    sub_1A984D578(v21, v22, v23);
    return 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1A99777E0();
        sub_1A9867B38(v6, v5, 0);
        sub_1A9867B38(v3, v2, 0);
        sub_1A984D578(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_22:
        sub_1A984D578(v11, v12, v13);
        return v10 & 1;
      }

      sub_1A9867B38(v8, v2, 0);
      sub_1A9867B38(v3, v2, 0);
      sub_1A984D578(v3, v2, 0);
      v21 = v3;
      v22 = v2;
      v23 = 0;
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (v7 != 1)
  {
    goto LABEL_40;
  }

  if (v3 != v6 || v2 != v5)
  {
    v17 = *a1;
    v10 = sub_1A99777E0();
    sub_1A9867B38(v6, v5, 1u);
    sub_1A9867B38(v3, v2, 1u);
    sub_1A984D578(v3, v2, 1u);
    v11 = v6;
    v12 = v5;
    v13 = 1;
    goto LABEL_22;
  }

  v19 = 1;
  sub_1A9867B38(*a1, v2, 1u);
  sub_1A9867B38(v3, v2, 1u);
  sub_1A984D578(v3, v2, 1u);
  sub_1A984D578(v3, v2, 1u);
  return v19;
}

uint64_t sub_1A9886678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98866DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9886740(uint64_t a1)
{
  v2 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A988679C()
{
  result = qword_1EB3B3C18;
  if (!qword_1EB3B3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C18);
  }

  return result;
}

unint64_t sub_1A98867F0()
{
  result = qword_1EB3B3C20;
  if (!qword_1EB3B3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C20);
  }

  return result;
}

unint64_t sub_1A9886844()
{
  result = qword_1EB3B3C28;
  if (!qword_1EB3B3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C28);
  }

  return result;
}

unint64_t sub_1A9886898()
{
  result = qword_1EB3B3C30;
  if (!qword_1EB3B3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C30);
  }

  return result;
}

unint64_t sub_1A98868EC()
{
  result = qword_1EB3B3C38;
  if (!qword_1EB3B3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C38);
  }

  return result;
}

unint64_t sub_1A9886940()
{
  result = qword_1EB3B3C40;
  if (!qword_1EB3B3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C40);
  }

  return result;
}

unint64_t sub_1A9886994()
{
  result = qword_1EB3B3C48;
  if (!qword_1EB3B3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C48);
  }

  return result;
}

unint64_t sub_1A98869EC()
{
  result = qword_1EB3B3C88;
  if (!qword_1EB3B3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO12TransferTypeO(uint64_t a1)
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

uint64_t sub_1A9886A5C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A9886AA4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A9886AE8(uint64_t result, unsigned int a2)
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

unint64_t sub_1A9886B84()
{
  result = qword_1EB3B3C90;
  if (!qword_1EB3B3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C90);
  }

  return result;
}

unint64_t sub_1A9886BDC()
{
  result = qword_1EB3B3C98;
  if (!qword_1EB3B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C98);
  }

  return result;
}

unint64_t sub_1A9886C34()
{
  result = qword_1EB3B3CA0;
  if (!qword_1EB3B3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CA0);
  }

  return result;
}

unint64_t sub_1A9886C8C()
{
  result = qword_1EB3B3CA8;
  if (!qword_1EB3B3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CA8);
  }

  return result;
}

unint64_t sub_1A9886CE4()
{
  result = qword_1EB3B3CB0;
  if (!qword_1EB3B3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CB0);
  }

  return result;
}

unint64_t sub_1A9886D3C()
{
  result = qword_1EB3B3CB8;
  if (!qword_1EB3B3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CB8);
  }

  return result;
}

unint64_t sub_1A9886D94()
{
  result = qword_1EB3B3CC0;
  if (!qword_1EB3B3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CC0);
  }

  return result;
}

unint64_t sub_1A9886DEC()
{
  result = qword_1EB3B3CC8;
  if (!qword_1EB3B3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CC8);
  }

  return result;
}

unint64_t sub_1A9886E44()
{
  result = qword_1EB3B3CD0;
  if (!qword_1EB3B3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CD0);
  }

  return result;
}

unint64_t sub_1A9886E9C()
{
  result = qword_1EB3B3CD8;
  if (!qword_1EB3B3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CD8);
  }

  return result;
}

unint64_t sub_1A9886EF4()
{
  result = qword_1EB3B3CE0;
  if (!qword_1EB3B3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CE0);
  }

  return result;
}

unint64_t sub_1A9886F4C()
{
  result = qword_1EB3B3CE8;
  if (!qword_1EB3B3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CE8);
  }

  return result;
}

unint64_t sub_1A9886FA4()
{
  result = qword_1EB3B3CF0;
  if (!qword_1EB3B3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CF0);
  }

  return result;
}

unint64_t sub_1A9886FFC()
{
  result = qword_1EB3B3CF8;
  if (!qword_1EB3B3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CF8);
  }

  return result;
}

unint64_t sub_1A9887054()
{
  result = qword_1EB3B3D00;
  if (!qword_1EB3B3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D00);
  }

  return result;
}

unint64_t sub_1A98870AC()
{
  result = qword_1EB3B3D08;
  if (!qword_1EB3B3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D08);
  }

  return result;
}

unint64_t sub_1A9887104()
{
  result = qword_1EB3B3D10;
  if (!qword_1EB3B3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D10);
  }

  return result;
}

unint64_t sub_1A988715C()
{
  result = qword_1EB3B3D18;
  if (!qword_1EB3B3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D18);
  }

  return result;
}

uint64_t sub_1A98871B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B6E696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5D90 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C6966 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5DB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D79615072656570 && a2 == 0xEB00000000746E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void SFAirDropSend.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {

    sub_1A9887528(v7, a2);
  }

  else
  {

    CodableError.init(_:)(a1, v13);
    v9 = v13[1];
    v10 = v16;
    *a2 = v13[0];
    *(a2 + 8) = v9;
    v11 = v15;
    *(a2 + 16) = v14;
    *(a2 + 32) = v11;
    *(a2 + 48) = v10;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t type metadata accessor for SFAirDropSend.Failure()
{
  result = qword_1EB3AC6D0;
  if (!qword_1EB3AC6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A9887528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropSend.Failure.errorDescription.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98878C8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x656C6C65636E6163;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (*v4)
      {
        v8 = 0x72756F6A6E6F622DLL;
      }

      else
      {
        v8 = 0;
      }

      if (*v4)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0xE000000000000000;
      }

      strcpy(v17, "resolveFailure");
      HIBYTE(v17[1]) = -18;
      MEMORY[0x1AC5895B0](v8, v9);
      goto LABEL_16;
    case 2:
      v11 = *v4;
      v10 = *(v4 + 1);
      v12 = *(v4 + 2);
      v13 = *(v4 + 4);
      v14 = *(v4 + 6);
      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      sub_1A99772B0();

      strcpy(v17, "unexpected-");
      HIDWORD(v17[1]) = -352321536;

      MEMORY[0x1AC5895B0](v11, v10);

      MEMORY[0x1AC5895B0](45, 0xE100000000000000);
      v16[1] = v12;
      v15 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v15);

LABEL_16:

      return v17[0];
    case 3:
      return 0xD000000000000010;
    case 4:
      return result;
    case 5:
      return 0xD000000000000015;
    case 6:
      return 0x6575716552646162;
    case 7:
      return 0x6F70736552646162;
    case 8:
      return 0xD000000000000018;
    case 9:
      v7 = 0x6D6165727473;
      goto LABEL_7;
    case 10:
      return 0xD000000000000011;
    case 11:
      return 0xD000000000000011;
    case 12:
      v7 = 0x726576726573;
LABEL_7:
      result = v7 & 0xFFFFFFFFFFFFLL | 0x7245000000000000;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      sub_1A988792C(v4);
      result = 0x45676E697373696DLL;
      break;
  }

  return result;
}

uint64_t sub_1A98878C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A988792C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Failure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A988798C(char a1)
{
  result = 0x656C6C65636E6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x45676E697373696DLL;
      break;
    case 4:
      result = 0x4665766C6F736572;
      break;
    case 5:
      result = 0x6575716552646162;
      break;
    case 6:
      result = 0x6F70736552646162;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 0x6D6165727473;
      goto LABEL_16;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 0x726576726573;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7245000000000000;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7463657078656E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1A9887B4C(uint64_t a1)
{
  v2 = sub_1A988B0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887B88(uint64_t a1)
{
  v2 = sub_1A988B0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887BC4(uint64_t a1)
{
  v2 = sub_1A988B088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887C00(uint64_t a1)
{
  v2 = sub_1A988B088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887C3C(uint64_t a1)
{
  v2 = sub_1A988B22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887C78(uint64_t a1)
{
  v2 = sub_1A988B22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A988C1B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9887CF0(uint64_t a1)
{
  v2 = sub_1A988AD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887D2C(uint64_t a1)
{
  v2 = sub_1A988AD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887D68(uint64_t a1)
{
  v2 = sub_1A988AE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887DA4(uint64_t a1)
{
  v2 = sub_1A988AE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887DE0(uint64_t a1)
{
  v2 = sub_1A988B034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887E1C(uint64_t a1)
{
  v2 = sub_1A988B034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887E58(uint64_t a1)
{
  v2 = sub_1A988B184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887E94(uint64_t a1)
{
  v2 = sub_1A988B184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887ED0(uint64_t a1)
{
  v2 = sub_1A988AF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887F0C(uint64_t a1)
{
  v2 = sub_1A988AF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887F48(uint64_t a1)
{
  v2 = sub_1A988AF38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887F84(uint64_t a1)
{
  v2 = sub_1A988AF38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887FC0(uint64_t a1)
{
  v2 = sub_1A988B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887FFC(uint64_t a1)
{
  v2 = sub_1A988B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98880D8(uint64_t a1)
{
  v2 = sub_1A988B130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9888114(uint64_t a1)
{
  v2 = sub_1A988B130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888150(uint64_t a1)
{
  v2 = sub_1A988AEE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988818C(uint64_t a1)
{
  v2 = sub_1A988AEE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98881C8(uint64_t a1)
{
  v2 = sub_1A988AFE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9888204(uint64_t a1)
{
  v2 = sub_1A988AFE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888240(uint64_t a1)
{
  v2 = sub_1A988ADE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988827C(uint64_t a1)
{
  v2 = sub_1A988ADE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98882B8(uint64_t a1)
{
  v2 = sub_1A988B1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98882F4(uint64_t a1)
{
  v2 = sub_1A988B1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Failure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D20, &qword_1A999E5A8);
  v124 = *(v2 - 8);
  v125 = v2;
  v3 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v123 = &v84 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D28, &qword_1A999E5B0);
  v121 = *(v5 - 8);
  *&v122 = v5;
  v6 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v120 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D30, &qword_1A999E5B8);
  v118 = *(v8 - 8);
  v119 = v8;
  v9 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v84 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D38, &qword_1A999E5C0);
  v115 = *(v116 - 8);
  v11 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v84 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D40, &qword_1A999E5C8);
  v112 = *(v113 - 8);
  v13 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v84 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D48, &qword_1A999E5D0);
  v109 = *(v110 - 8);
  v15 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v84 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D50, &qword_1A999E5D8);
  v106 = *(v107 - 8);
  v17 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v84 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D58, &qword_1A999E5E0);
  v103 = *(v104 - 8);
  v19 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v84 - v20;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D60, &qword_1A999E5E8);
  v100 = *(v101 - 8);
  v21 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v84 - v22;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D68, &qword_1A999E5F0);
  v95 = *(v99 - 8);
  v23 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v84 - v24;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D70, &qword_1A999E5F8);
  v96 = *(v98 - 8);
  v25 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v84 - v26;
  v94 = sub_1A99762C0();
  v93 = *(v94 - 8);
  v27 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D78, &qword_1A999E600);
  v88 = *(v89 - 8);
  v29 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v84 - v30;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D80, &qword_1A999E608);
  v85 = *(v86 - 8);
  v31 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v33 = &v84 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D88, &qword_1A999E610);
  v84 = *(v34 - 8);
  v35 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v84 - v36;
  v38 = type metadata accessor for SFAirDropSend.Failure();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v84 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D90, &qword_1A999E618);
  v43 = *(v42 - 8);
  v127 = v42;
  v128 = v43;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v84 - v45;
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988AD94();
  v126 = v46;
  sub_1A9977AA0();
  sub_1A98878C8(v129, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v77 = *v41;
      LOBYTE(v130) = 4;
      sub_1A988B130();
      v78 = v92;
      v53 = v126;
      v52 = v127;
      sub_1A9977640();
      v79 = v99;
      sub_1A99776A0();
      (*(v95 + 8))(v78, v79);
      goto LABEL_11;
    case 2u:
      v66 = *v41;
      v65 = *(v41 + 1);
      v67 = *(v41 + 6);
      LOBYTE(v130) = 13;
      sub_1A988ADE8();
      v68 = *(v41 + 2);
      v122 = *(v41 + 1);
      v129 = v68;
      v69 = v123;
      v71 = v126;
      v70 = v127;
      sub_1A9977640();
      v130 = v66;
      v131 = v65;
      v132 = v122;
      v133 = v129;
      v134 = v67;
      sub_1A988AE3C();
      v72 = v125;
      sub_1A99776E0();
      (*(v124 + 8))(v69, v72);
      (*(v128 + 8))(v71, v70);

    case 3u:
      LOBYTE(v130) = 0;
      sub_1A988B280();
      v74 = v126;
      v75 = v127;
      sub_1A9977640();
      (*(v84 + 8))(v37, v34);
      return (*(v128 + 8))(v74, v75);
    case 4u:
      LOBYTE(v130) = 1;
      sub_1A988B22C();
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v85 + 8);
      v59 = v33;
      v60 = &v118;
      goto LABEL_18;
    case 5u:
      LOBYTE(v130) = 2;
      sub_1A988B1D8();
      v80 = v87;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v88 + 8);
      v59 = v80;
      v60 = &v121;
      goto LABEL_18;
    case 6u:
      LOBYTE(v130) = 5;
      sub_1A988B0DC();
      v81 = v97;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v100 + 8);
      v59 = v81;
      v60 = &v131;
      goto LABEL_18;
    case 7u:
      LOBYTE(v130) = 6;
      sub_1A988B088();
      v76 = v102;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v103 + 8);
      v59 = v76;
      v60 = &v133;
      goto LABEL_18;
    case 8u:
      LOBYTE(v130) = 7;
      sub_1A988B034();
      v83 = v105;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v106 + 8);
      v59 = v83;
      v60 = &v135;
      goto LABEL_18;
    case 9u:
      LOBYTE(v130) = 8;
      sub_1A988AFE0();
      v64 = v108;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v109 + 8);
      v59 = v64;
      v60 = &v136;
      goto LABEL_18;
    case 0xAu:
      LOBYTE(v130) = 9;
      sub_1A988AF8C();
      v82 = v111;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v112 + 8);
      v59 = v82;
      v60 = &v137;
      goto LABEL_18;
    case 0xBu:
      LOBYTE(v130) = 10;
      sub_1A988AF38();
      v55 = v114;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v58 = *(v115 + 8);
      v59 = v55;
      v60 = &v138;
LABEL_18:
      v58(v59, *(v60 - 32));
      goto LABEL_19;
    case 0xCu:
      LOBYTE(v130) = 11;
      sub_1A988AEE4();
      v61 = v117;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v63 = v118;
      v62 = v119;
      goto LABEL_14;
    case 0xDu:
      LOBYTE(v130) = 12;
      sub_1A988AE90();
      v61 = v120;
      v57 = v126;
      v56 = v127;
      sub_1A9977640();
      v63 = v121;
      v62 = v122;
LABEL_14:
      (*(v63 + 8))(v61, v62);
LABEL_19:
      result = (*(v128 + 8))(v57, v56);
      break;
    default:
      v48 = v93;
      v49 = v90;
      v50 = v94;
      (*(v93 + 32))(v90, v41, v94);
      LOBYTE(v130) = 3;
      sub_1A988B184();
      v51 = v91;
      v53 = v126;
      v52 = v127;
      sub_1A9977640();
      sub_1A97C10E0(&unk_1EB3ACFC0);
      v54 = v98;
      sub_1A99776E0();
      (*(v96 + 8))(v51, v54);
      (*(v48 + 8))(v49, v50);
LABEL_11:
      result = (*(v128 + 8))(v53, v52);
      break;
  }

  return result;
}

uint64_t SFAirDropSend.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E18, &qword_1A999E620);
  v160 = *(v140 - 8);
  v3 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v152 = &v113 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E20, &qword_1A999E628);
  v155 = *(v5 - 8);
  v156 = v5;
  v6 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v151 = &v113 - v7;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E28, &qword_1A999E630);
  v139 = *(v154 - 8);
  v8 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v150 = &v113 - v9;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E30, &qword_1A999E638);
  v137 = *(v138 - 8);
  v10 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v149 = &v113 - v11;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E38, &qword_1A999E640);
  v135 = *(v136 - 8);
  v12 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v148 = &v113 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E40, &qword_1A999E648);
  v133 = *(v134 - 8);
  v14 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v147 = &v113 - v15;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E48, &qword_1A999E650);
  v131 = *(v132 - 8);
  v16 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v146 = &v113 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E50, &qword_1A999E658);
  v129 = *(v130 - 8);
  v18 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v145 = &v113 - v19;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E58, &qword_1A999E660);
  v128 = *(v127 - 8);
  v20 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v144 = &v113 - v21;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E60, &qword_1A999E668);
  v126 = *(v123 - 8);
  v22 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v143 = &v113 - v23;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E68, &qword_1A999E670);
  v124 = *(v125 - 8);
  v24 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v142 = &v113 - v25;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E70, &qword_1A999E678);
  v121 = *(v122 - 8);
  v26 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v159 = &v113 - v27;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E78, &qword_1A999E680);
  v120 = *(v119 - 8);
  v28 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v157 = &v113 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E80, &qword_1A999E688);
  v117 = *(v118 - 8);
  v30 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v141 = &v113 - v31;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E88, &unk_1A999E690);
  v161 = *(v158 - 8);
  v32 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v34 = &v113 - v33;
  v35 = type metadata accessor for SFAirDropSend.Failure();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v113 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v113 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v113 - v46;
  v48 = a1[3];
  v49 = a1[4];
  v172 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1A988AD94();
  v50 = v162;
  sub_1A9977A70();
  if (v50)
  {
LABEL_8:
    v68 = v172;
    return __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  v113 = v42;
  v115 = v45;
  v114 = v39;
  v51 = v157;
  v162 = 0;
  v52 = v159;
  v53 = v160;
  v116 = v47;
  v54 = v158;
  v55 = sub_1A9977620();
  v56 = (2 * *(v55 + 16)) | 1;
  v168 = v55;
  v169 = v55 + 32;
  v170 = 0;
  v171 = v56;
  v57 = sub_1A97B2980();
  v58 = v34;
  if (v170 != v171 >> 1)
  {
LABEL_6:
    v64 = sub_1A9977300();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
    *v66 = v35;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
LABEL_7:
    (*(v161 + 8))(v58, v54);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v35 = v155;
  v59 = v156;
  v60 = v154;
  switch(v57)
  {
    case 0:
      LOBYTE(v163) = 0;
      sub_1A988B280();
      v61 = v141;
      v62 = v162;
      sub_1A9977530();
      if (v62)
      {
        goto LABEL_7;
      }

      (*(v117 + 8))(v61, v118);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 1:
      LOBYTE(v163) = 1;
      sub_1A988B22C();
      v89 = v162;
      sub_1A9977530();
      if (v89)
      {
        goto LABEL_7;
      }

      (*(v120 + 8))(v51, v119);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 2:
      LOBYTE(v163) = 2;
      sub_1A988B1D8();
      v82 = v162;
      sub_1A9977530();
      if (v82)
      {
        goto LABEL_7;
      }

      (*(v121 + 8))(v52, v122);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 3:
      LOBYTE(v163) = 3;
      sub_1A988B184();
      v83 = v142;
      v84 = v162;
      sub_1A9977530();
      if (v84)
      {
        goto LABEL_7;
      }

      sub_1A99762C0();
      sub_1A97C10E0(&qword_1EB3AD060);
      v85 = v115;
      v86 = v125;
      sub_1A99775F0();
      (*(v124 + 8))(v83, v86);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v107 = v85;
      goto LABEL_40;
    case 4:
      LOBYTE(v163) = 4;
      sub_1A988B130();
      v72 = v143;
      v73 = v162;
      sub_1A9977530();
      if (v73)
      {
        goto LABEL_7;
      }

      v74 = v58;
      v75 = v123;
      v76 = sub_1A99775B0();
      v77 = v161;
      v104 = v76;
      (*(v126 + 8))(v72, v75);
      (*(v77 + 8))(v74, v54);
      swift_unknownObjectRelease();
      v105 = v104 & 1;
      v106 = v113;
      *v113 = v105;
      swift_storeEnumTagMultiPayload();
      v107 = v106;
LABEL_40:
      v63 = v116;
      sub_1A9887528(v107, v116);
      goto LABEL_37;
    case 5:
      LOBYTE(v163) = 5;
      sub_1A988B0DC();
      v90 = v144;
      v91 = v162;
      sub_1A9977530();
      if (v91)
      {
        goto LABEL_7;
      }

      (*(v128 + 8))(v90, v127);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 6:
      LOBYTE(v163) = 6;
      sub_1A988B088();
      v94 = v145;
      v95 = v162;
      sub_1A9977530();
      if (v95)
      {
        goto LABEL_7;
      }

      (*(v129 + 8))(v94, v130);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 7:
      LOBYTE(v163) = 7;
      sub_1A988B034();
      v87 = v146;
      v88 = v162;
      sub_1A9977530();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v131 + 8))(v87, v132);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 8:
      LOBYTE(v163) = 8;
      sub_1A988AFE0();
      v98 = v147;
      v99 = v162;
      sub_1A9977530();
      if (v99)
      {
        goto LABEL_7;
      }

      (*(v133 + 8))(v98, v134);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 9:
      LOBYTE(v163) = 9;
      sub_1A988AF8C();
      v80 = v148;
      v81 = v162;
      sub_1A9977530();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v135 + 8))(v80, v136);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 10:
      LOBYTE(v163) = 10;
      sub_1A988AF38();
      v96 = v149;
      v97 = v162;
      sub_1A9977530();
      if (v97)
      {
        goto LABEL_7;
      }

      (*(v137 + 8))(v96, v138);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 11:
      LOBYTE(v163) = 11;
      sub_1A988AEE4();
      v70 = v150;
      v71 = v162;
      sub_1A9977530();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v139 + 8))(v70, v60);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
      goto LABEL_36;
    case 12:
      LOBYTE(v163) = 12;
      sub_1A988AE90();
      v78 = v151;
      v79 = v162;
      sub_1A9977530();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v35 + 8))(v78, v59);
      (*(v161 + 8))(v58, v54);
      swift_unknownObjectRelease();
      v63 = v116;
LABEL_36:
      swift_storeEnumTagMultiPayload();
LABEL_37:
      v100 = v172;
      goto LABEL_38;
    case 13:
      LOBYTE(v163) = 13;
      sub_1A988ADE8();
      v92 = v152;
      v93 = v162;
      sub_1A9977530();
      if (v93)
      {
        (*(v161 + 8))(v58, v54);
        swift_unknownObjectRelease();
        v68 = v172;
      }

      else
      {
        v101 = v58;
        sub_1A988B2D4();
        v102 = v140;
        sub_1A99775F0();
        v100 = v172;
        v103 = v161;
        v162 = 0;
        (*(v53 + 8))(v92, v102);
        (*(v103 + 8))(v101, v54);
        swift_unknownObjectRelease();
        v108 = v164;
        v109 = v167;
        v110 = v114;
        *v114 = v163;
        v110[1] = v108;
        v111 = v166;
        *(v110 + 1) = v165;
        *(v110 + 2) = v111;
        v110[6] = v109;
        swift_storeEnumTagMultiPayload();
        v112 = v110;
        v63 = v116;
        sub_1A9887528(v112, v116);
LABEL_38:
        sub_1A9887528(v63, v153);
        v68 = v100;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v68);
}