void *sub_1B4EDBD20(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1B4E78DA4(v6, v25);
}

uint64_t sub_1B4EDBEFC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v10 + 16 * v8 != v11 + 16 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  sub_1B4F68D74();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x1E69E7CC0];
  }

  v17 = v10 - result - 17;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 4);
  v6 = v8 + (v17 >> 4);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = *(result + 16);
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_1B4EDC140(v6, v5, 0);
    return v18;
  }

  return result;
}

unint64_t sub_1B4EDC05C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1B4EDC140(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t ActivityTrace.__allocating_init(identifier:dso:)(const char *a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  ActivityTrace.init(identifier:dso:)(a1, a2, a3, a4);
  return v8;
}

uint64_t ActivityTrace.deinit()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v5 = *(v1 + 24);
    os_activity_scope_leave(&v5);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));

  v3 = *MEMORY[0x1E69E9840];
  return v0;
}

Swift::Void __swiftcall ActivityTrace.end()()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v4 = *(v1 + 24);
    os_activity_scope_leave(&v4);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));
  v3 = *MEMORY[0x1E69E9840];
}

Swift::Void __swiftcall ActivityTrace.begin()()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = *(v1 + 16);
    v4 = 0;
    os_activity_scope_enter(v2, &v4);
    *(v1 + 16) = v2;
    *(v1 + 24) = v4;
    *(v1 + 40) = 1;
  }

  os_unfair_lock_unlock((v1 + 44));
  v3 = *MEMORY[0x1E69E9840];
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B4EDC4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B4EDC50C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t FitnessMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6157646572696170;
  }

  if (a1 == 1)
  {
    return 0x73656C6863746177;
  }

  return 0x615765746F6D6572;
}

uint64_t sub_1B4EDC5E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73656C6863746177;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x615765746F6D6572;
    v4 = 0xEB00000000686374;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6157646572696170;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000686374;
  }

  v7 = 0x73656C6863746177;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x615765746F6D6572;
    v8 = 0xEB00000000686374;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6157646572696170;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000686374;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

uint64_t sub_1B4EDC6E8()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4EDC794()
{
  *v0;
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4EDC82C()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4EDC8D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s13SeymourClient11FitnessModeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t _s13SeymourClient11FitnessModeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1B4F68C34();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B4EDC964()
{
  result = qword_1EB8F6558;
  if (!qword_1EB8F6558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6558);
  }

  return result;
}

unint64_t sub_1B4EDC9BC()
{
  result = qword_1EB8F6560;
  if (!qword_1EB8F6560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F6568, &qword_1B4F79B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6560);
  }

  return result;
}

uint64_t sub_1B4EDCA30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43656C706D6173;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C506D6F74737563;
    }

    else
    {
      v5 = 0x616E6168616BLL;
    }

    if (v4 == 2)
    {
      v6 = 0xED00003256736E61;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6568636F697262;
    }

    else
    {
      v5 = 0x6F43656C706D6173;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED0000746E65746ELL;
    }
  }

  v7 = 0x6C506D6F74737563;
  v8 = 0xED00003256736E61;
  if (a2 != 2)
  {
    v7 = 0x616E6168616BLL;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x6568636F697262;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4F68D54();
  }

  return v11 & 1;
}

const char *FitnessPlusFeatures.feature.getter()
{
  v1 = "Brioche";
  v2 = "CustomPlansV2";
  if (*v0 != 2)
  {
    v2 = "Kahana";
  }

  if (!*v0)
  {
    v1 = "SampleContent";
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

SeymourClient::FitnessPlusFeatures_optional __swiftcall FitnessPlusFeatures.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4F68C34();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FitnessPlusFeatures.rawValue.getter()
{
  v1 = 0x6F43656C706D6173;
  v2 = 0x6C506D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x616E6168616BLL;
  }

  if (*v0)
  {
    v1 = 0x6568636F697262;
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

unint64_t sub_1B4EDCCFC()
{
  result = qword_1EB8F6570;
  if (!qword_1EB8F6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6570);
  }

  return result;
}

uint64_t sub_1B4EDCD50()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

uint64_t sub_1B4EDCE28()
{
  *v0;
  *v0;
  *v0;
  sub_1B4F67FE4();
}

uint64_t sub_1B4EDCEEC()
{
  v1 = *v0;
  sub_1B4F68E84();
  sub_1B4F67FE4();

  return sub_1B4F68EC4();
}

void sub_1B4EDCFCC(uint64_t *a1@<X8>)
{
  v2 = 0xED0000746E65746ELL;
  v3 = 0x6F43656C706D6173;
  v4 = 0xED00003256736E61;
  v5 = 0x6C506D6F74737563;
  if (*v1 != 2)
  {
    v5 = 0x616E6168616BLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6568636F697262;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t MediaPlayerSyncCatchupRequested.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MediaPlayerSyncCatchupRequested.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65EF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for MediaPlayerSyncCatchupRequested()
{
  result = qword_1EDB6E430;
  if (!qword_1EDB6E430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4EDD220@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1B4EDD308@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1B4EDD430(uint64_t a1)
{
  v38 = sub_1B4F67124();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v38, v5);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v30 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v7, 0);
    v41 = v42;
    v9 = a1 + 56;
    v10 = -1 << *(a1 + 32);
    result = sub_1B4F688B4();
    v11 = result;
    v12 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v3;
    v34 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v14 = v11 >> 6;
      if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v11, v38);
      v40 = sub_1B4F67114();
      v18 = v17;
      result = (*(v3 + 8))(v15, v16);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1B4E257A4((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v9 = v34;
      v23 = *(v34 + 8 * v14);
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v41 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v27 = (v31 + 8 * v14);
        v3 = v33;
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1B4DF3104(v11, v39, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v11, v39, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v32)
      {
        return v41;
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
  }

  return result;
}

void sub_1B4EDD738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F679C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDDAE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67124();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EDDE98(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1B4F68E84();

    sub_1B4F67FE4();
    v17 = sub_1B4F68EC4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1B4F68D54() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4EDE050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F5750, MEMORY[0x1E69CC5E8]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDE400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67154();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F5728, MEMORY[0x1E69CCEC8]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EDE7B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v28 = v9;
  v29 = result;
  if (v8)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v12 = (v8 - 1) & v8;
LABEL_13:
      v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      v16 = *(a2 + 40);
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      v17 = sub_1B4F68EC4();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        return 0;
      }

      v30 = v12;
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + v19);
        v22 = sub_1B4F652E4();
        v24 = v23;
        if (v22 == sub_1B4F652E4() && v24 == v25)
        {
          break;
        }

        v27 = sub_1B4F68D54();

        if (v27)
        {
          goto LABEL_23;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_23:
      v9 = v28;
      v3 = v29;
      v8 = v30;
    }

    while (v30);
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4EDE9B8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v22 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v23 = v7;
  v24 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v25 = (v6 - 1) & v6;
LABEL_13:
      v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(a2 + 40);
      sub_1B4F68E84();
      sub_1B4E43934(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6618, &qword_1B4F79F00);
      sub_1B4DCF604();
      sub_1B4F65054();
      v17 = sub_1B4F68EC4();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      sub_1B4EEBFC4();
      sub_1B4EE69CC();
      while (1)
      {
        v21 = *(a2 + 48) + 24 * v19;
        v26 = *v21;
        v27 = *(v21 + 16);
        if (sub_1B4F65064())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_1B4DE5390(v13, v14, v15);
      v7 = v23;
      result = v24;
      v6 = v25;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1B4DE5390(v13, v14, v15);
    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v22 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1B4EDEC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F658C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F6608, MEMORY[0x1E69CB4A8]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F6610, MEMORY[0x1E69CB4A8]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDEFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F671A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F65F8, MEMORY[0x1E69CCF00]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F6600, MEMORY[0x1E69CCF00]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDF390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F57E8, MEMORY[0x1E69CB850]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDF740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDFAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F660C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F5778, MEMORY[0x1E69CBE40]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EDFEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F5788, MEMORY[0x1E69CCA00]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1B4EE0250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F670C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v38 - v12;
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v38 - v15;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v18 = 0;
    v19 = *(a1 + 56);
    v38 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v45 = v5 + 32;
    v47 = a2 + 56;
    v48 = v5 + 16;
    v24 = (v5 + 8);
    v39 = v23;
    v40 = &v38 - v15;
    v41 = v5;
    v42 = a1;
    if (v22)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_13:
        v28 = *(a1 + 48);
        v46 = *(v5 + 72);
        v29 = *(v5 + 16);
        v29(v17, v28 + v46 * (v25 | (v18 << 6)), v4, v16);
        (*(v5 + 32))(v49, v17, v4);
        v30 = *(a2 + 40);
        sub_1B4EEC148(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
        v31 = sub_1B4F67F14();
        v32 = -1 << *(a2 + 32);
        v33 = v31 & ~v32;
        if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          break;
        }

        v43 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v34 = a2;
        v35 = ~v32;
        while (1)
        {
          (v29)(v9, *(v34 + 48) + v33 * v46, v4);
          sub_1B4EEC148(&qword_1EB8F5798, MEMORY[0x1E69CCDC8]);
          v36 = sub_1B4F67F54();
          v37 = *v24;
          (*v24)(v9, v4);
          if (v36)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v47 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            v37(v49, v4);
            return;
          }
        }

        v37(v49, v4);
        a2 = v34;
        v5 = v41;
        a1 = v42;
        v23 = v39;
        v17 = v40;
        v22 = v44;
        if (!v44)
        {
          goto LABEL_8;
        }
      }

      (*v24)(v49, v4);
    }

    else
    {
LABEL_8:
      v26 = v18;
      while (1)
      {
        v18 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v18 >= v23)
        {
          return;
        }

        v27 = *(v38 + 8 * v18);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v44 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1B4EE0628(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1B4DD8804(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1B8C82290](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1B8C82290](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1B4F68764();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1B4F68764();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1B4F688F4();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1B4F688F4();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B4EE0890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65C64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v5 + 16);
  v19 = v5 + 16;
  v21 = (v19 - 8);
  v28 = *(v19 + 56);
  v29 = v20;
  while (1)
  {
    v22 = v29;
    result = (v29)(v14, v17, v4, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v9, v18, v4);
    sub_1B4EEC148(&qword_1EB8F65F0, MEMORY[0x1E69CB6B0]);
    v25 = sub_1B4F67F54();
    v26 = *v21;
    (*v21)(v9, v4);
    v26(v14, v4);
    if (v25)
    {
      v18 += v28;
      v17 += v28;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

void *RemoteBrowsingSource.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6580, &qword_1B4F79DE8);
  v12 = *(v11 + 52);
  v13 = (*(v11 + 48) + 3) & 0x1FFFFFFFCLL;
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B4EEC0E0(v8, v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16), MEMORY[0x1E69CC610]);
  v9[4] = a1;
  v9[5] = a2;
  v15 = MEMORY[0x1E69E7CC0];
  v9[2] = v14;
  v9[3] = v15;
  return v9;
}

void *RemoteBrowsingSource.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B4F66694();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6580, &qword_1B4F79DE8);
  v12 = *(v11 + 52);
  v13 = (*(v11 + 48) + 3) & 0x1FFFFFFFCLL;
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1B4EEC0E0(v9, v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16), MEMORY[0x1E69CC610]);
  v2[4] = a1;
  v2[5] = a2;
  v15 = MEMORY[0x1E69E7CC0];
  v2[2] = v14;
  v2[3] = v15;
  return v2;
}

uint64_t sub_1B4EE0DF4(uint64_t a1, uint64_t a2)
{
  v373 = type metadata accessor for AchievementEnvironmentCacheUpdated();
  v4 = *(*(v373 - 8) + 64);
  MEMORY[0x1EEE9AC00](v373, v5);
  v372 = &v343 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4F66F74();
  v393 = *(v7 - 8);
  v394 = v7;
  v8 = *(v393 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v392 = &v343 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v391 = &v343 - v13;
  v390 = sub_1B4F66604();
  v401 = *(v390 - 8);
  v14 = *(v401 + 64);
  MEMORY[0x1EEE9AC00](v390, v15);
  v350 = &v343 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6598, &qword_1B4F79E68);
  v17 = *(*(v389 - 8) + 64);
  MEMORY[0x1EEE9AC00](v389, v18);
  v406 = &v343 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v371 = &v343 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v399 = &v343 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v400 = &v343 - v29;
  v370 = type metadata accessor for PersonalizationPrivacyPreferenceUpdated();
  v30 = *(*(v370 - 8) + 64);
  MEMORY[0x1EEE9AC00](v370, v31);
  v369 = &v343 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = sub_1B4F673D4();
  v387 = *(v388 - 8);
  v33 = *(v387 + 64);
  MEMORY[0x1EEE9AC00](v388, v34);
  v386 = &v343 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v385 = &v343 - v38;
  v384 = sub_1B4F64ED4();
  v398 = *(v384 - 8);
  v39 = *(v398 + 64);
  MEMORY[0x1EEE9AC00](v384, v40);
  v349 = &v343 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65A0, &qword_1B4F79E78);
  v42 = *(*(v383 - 8) + 64);
  MEMORY[0x1EEE9AC00](v383, v43);
  v405 = &v343 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8, v47);
  v368 = &v343 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v404 = &v343 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v397 = &v343 - v54;
  v367 = type metadata accessor for PlaylistsUpdated();
  v55 = *(*(v367 - 8) + 64);
  MEMORY[0x1EEE9AC00](v367, v56);
  v365 = &v343 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = sub_1B4F65F44();
  v364 = *(v366 - 8);
  v58 = *(v364 + 64);
  MEMORY[0x1EEE9AC00](v366, v59);
  v363 = &v343 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = type metadata accessor for MindfulMinutesMetricUpdated();
  v61 = *(*(v352 - 8) + 64);
  MEMORY[0x1EEE9AC00](v352, v62);
  v351 = &v343 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  v64 = *(*(v362 - 8) + 64);
  MEMORY[0x1EEE9AC00](v362, v65);
  v375 = &v343 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8, v69);
  v348 = &v343 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71, v72);
  v395 = &v343 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v77 = &v343 - v76;
  MEMORY[0x1EEE9AC00](v78, v79);
  v380 = &v343 - v80;
  v81 = sub_1B4F66454();
  v402 = *(v81 - 8);
  v82 = *(v402 + 64);
  MEMORY[0x1EEE9AC00](v81, v83);
  v346 = &v343 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v381 = &v343 - v87;
  v379 = sub_1B4F66354();
  v396 = *(v379 - 1);
  v88 = *(v396 + 64);
  MEMORY[0x1EEE9AC00](v379, v89);
  v347 = &v343 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65A8, &qword_1B4F79E88);
  v91 = *(*(v378 - 8) + 64);
  MEMORY[0x1EEE9AC00](v378, v92);
  v403 = &v343 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5608, &qword_1B4F79E90);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94 - 8, v96);
  v98 = &v343 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99, v100);
  v102 = &v343 - v101;
  MEMORY[0x1EEE9AC00](v103, v104);
  v106 = &v343 - v105;
  v360 = type metadata accessor for BookmarksUpdated();
  v107 = *(*(v360 - 8) + 64);
  MEMORY[0x1EEE9AC00](v360, v108);
  v358 = &v343 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_1B4F65E64();
  v357 = *(v359 - 8);
  v110 = *(v357 + 64);
  MEMORY[0x1EEE9AC00](v359, v111);
  v356 = &v343 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v355 = sub_1B4F670E4();
  v354 = *(v355 - 8);
  v113 = *(v354 + 64);
  MEMORY[0x1EEE9AC00](v355, v114);
  v353 = &v343 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1B4F66CF4();
  v117 = sub_1B4F66CF4();
  v118 = sub_1B4EDE9B8(v116, v117);

  v407 = a1;
  v374 = v77;
  v408 = a2;
  v382 = v81;
  v361 = v98;
  v377 = v106;
  v376 = v102;
  if ((v118 & 1) == 0)
  {
    v119 = *(v409 + 40);
    v345 = *(v409 + 32);
    v344 = v119;
    v120 = sub_1B4F66CF4();
    KeyPath = swift_getKeyPath();
    v122 = 1 << *(v120 + 32);
    v123 = -1;
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    v124 = v123 & *(v120 + 56);
    v125 = (v122 + 63) >> 6;

    v126 = 0;
    v127 = MEMORY[0x1E69E7CC0];
    if (!v124)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v128 = __clz(__rbit64(v124));
        v124 &= v124 - 1;
        v129 = *(v120 + 48) + 24 * (v128 | (v126 << 6));
        v130 = *(v129 + 8);
        v132 = *(v129 + 16);
        v410 = *v129;
        v131 = v410;
        v411 = v130;
        v412 = v132;
        sub_1B4E43934(v410, v130, v132);
        swift_getAtKeyPath();
        sub_1B4DE5390(v131, v130, v132);
        LOBYTE(v102) = v413;
        if (v413 != 3)
        {
          break;
        }

        if (!v124)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_1B4E78958(0, *(v127 + 2) + 1, 1, v127);
      }

      v135 = *(v127 + 2);
      v134 = *(v127 + 3);
      if (v135 >= v134 >> 1)
      {
        v127 = sub_1B4E78958((v134 > 1), v135 + 1, 1, v127);
      }

      *(v127 + 2) = v135 + 1;
      v127[v135 + 32] = v102;
    }

    while (v124);
    while (1)
    {
LABEL_7:
      v133 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        __break(1u);
        goto LABEL_124;
      }

      if (v133 >= v125)
      {
        break;
      }

      v124 = *(v120 + 56 + 8 * v133);
      ++v126;
      if (v124)
      {
        v126 = v133;
        goto LABEL_5;
      }
    }

    v343 = sub_1B4DCF590(v127);

    v136 = sub_1B4F66CF4();
    KeyPath = swift_getKeyPath();
    v137 = 1 << *(v136 + 32);
    v138 = -1;
    if (v137 < 64)
    {
      v138 = ~(-1 << v137);
    }

    v124 = v138 & *(v136 + 56);
    v139 = (v137 + 63) >> 6;

    v126 = 0;
    v140 = MEMORY[0x1E69E7CC0];
    if (!v124)
    {
      goto LABEL_22;
    }

    do
    {
LABEL_20:
      while (1)
      {
        v141 = __clz(__rbit64(v124));
        v124 &= v124 - 1;
        v142 = *(v136 + 48) + 24 * (v141 | (v126 << 6));
        v143 = *(v142 + 8);
        v144 = *(v142 + 16);
        v410 = *v142;
        v102 = v410;
        v411 = v143;
        v412 = v144;
        sub_1B4E43934(v410, v143, v144);
        swift_getAtKeyPath();
        sub_1B4DE5390(v102, v143, v144);
        LOBYTE(v102) = v413;
        if (v413 != 3)
        {
          break;
        }

        if (!v124)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_1B4E78958(0, *(v140 + 2) + 1, 1, v140);
      }

      v147 = *(v140 + 2);
      v146 = *(v140 + 3);
      if (v147 >= v146 >> 1)
      {
        v140 = sub_1B4E78958((v146 > 1), v147 + 1, 1, v140);
      }

      *(v140 + 2) = v147 + 1;
      v140[v147 + 32] = v102;
    }

    while (v124);
LABEL_22:
    while (1)
    {
      v145 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        break;
      }

      if (v145 >= v139)
      {
        ObjectType = swift_getObjectType();

        sub_1B4DCF590(v140);

        v149 = v353;
        sub_1B4F670D4();
        v150 = v355;
        (*(v344 + 8))(v149, v355, &protocol witness table for AllowedContentRatingsUpdated, ObjectType);
        (*(v354 + 8))(v149, v150);
        v106 = v377;
        v102 = v376;
        goto LABEL_33;
      }

      v124 = *(v136 + 56 + 8 * v145);
      ++v126;
      if (v124)
      {
        v126 = v145;
        goto LABEL_20;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    swift_once();
    goto LABEL_105;
  }

LABEL_33:
  v151 = sub_1B4F66DB4();
  v152 = sub_1B4F66DB4();
  sub_1B4EDD738(v151, v152);
  v154 = v153;

  if ((v154 & 1) == 0)
  {
    v155 = sub_1B4F66DB4();
    v156 = sub_1B4F66DB4();
    if (*(v156 + 16) <= *(v155 + 16) >> 3)
    {
      v410 = v155;
      sub_1B4EE9000(v156, &qword_1EB8F65E0, &unk_1B4F79ED0, MEMORY[0x1E69CD2D8], sub_1B4E918DC);
    }

    else
    {
      sub_1B4EEA6E4(v156, v155);
    }

    v157 = sub_1B4F66DB4();
    v158 = sub_1B4F66DB4();
    if (*(v158 + 16) <= *(v157 + 16) >> 3)
    {
      v410 = v157;
      sub_1B4EE9000(v158, &qword_1EB8F65E0, &unk_1B4F79ED0, MEMORY[0x1E69CD2D8], sub_1B4E918DC);
    }

    else
    {
      sub_1B4EEA6E4(v158, v157);
    }

    v159 = v360;
    v160 = v359;
    v161 = v356;
    sub_1B4F65E54();
    v162 = *(v409 + 32);
    v163 = *(v409 + 40);
    v164 = swift_getObjectType();
    v165 = v357;
    v166 = v358;
    (*(v357 + 16))(v358, v161, v160);
    (*(v163 + 8))(v166, v159, &protocol witness table for BookmarksUpdated, v164, v163);
    sub_1B4EEC080(v166, type metadata accessor for BookmarksUpdated);
    (*(v165 + 8))(v161, v160);
  }

  v167 = sub_1B4F66BF4();
  v168 = sub_1B4F66BF4();
  sub_1B4EDEC30(v167, v168);
  v170 = v169;

  if ((v170 & 1) == 0)
  {
    v171 = *(v409 + 32);
    v172 = *(v409 + 40);
    v173 = swift_getObjectType();
    (*(v172 + 8))(v173, &type metadata for RecommendationsUpdated, &protocol witness table for RecommendationsUpdated, v173, v172);
  }

  sub_1B4F66CC4();
  sub_1B4F66CC4();
  v174 = *(v378 + 48);
  v175 = v403;
  sub_1B4E21A90(v106, v403, &qword_1EB8F5608, &qword_1B4F79E90);
  sub_1B4E21A90(v102, v175 + v174, &qword_1EB8F5608, &qword_1B4F79E90);
  v176 = *(v396 + 48);
  v177 = v379;
  if (v176(v175, 1, v379) == 1)
  {
    sub_1B4DD2BC4(v102, &qword_1EB8F5608, &qword_1B4F79E90);
    v178 = v403;
    sub_1B4DD2BC4(v106, &qword_1EB8F5608, &qword_1B4F79E90);
    v179 = v176(v178 + v174, 1, v177);
    v180 = v395;
    v181 = v382;
    if (v179 == 1)
    {
      sub_1B4DD2BC4(v178, &qword_1EB8F5608, &qword_1B4F79E90);
      v182 = v380;
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v183 = v361;
  sub_1B4E21A90(v175, v361, &qword_1EB8F5608, &qword_1B4F79E90);
  v184 = v177;
  if (v176(v175 + v174, 1, v177) == 1)
  {
    sub_1B4DD2BC4(v376, &qword_1EB8F5608, &qword_1B4F79E90);
    v178 = v403;
    sub_1B4DD2BC4(v377, &qword_1EB8F5608, &qword_1B4F79E90);
    (*(v396 + 8))(v183, v177);
    v180 = v395;
    v181 = v382;
LABEL_48:
    sub_1B4DD2BC4(v178, &qword_1EB8F65A8, &qword_1B4F79E88);
    v182 = v380;
LABEL_49:
    v186 = *(v409 + 32);
    v185 = *(v409 + 40);
    v187 = swift_getObjectType();
    (*(v185 + 8))(v187, &type metadata for ServiceSubscriptionUpdated, &protocol witness table for ServiceSubscriptionUpdated, v187, v185);
    goto LABEL_50;
  }

  v200 = v183;
  v201 = v396;
  v202 = v347;
  (*(v396 + 32))(v347, v175 + v174, v184);
  sub_1B4EEC148(&qword_1EB8F65D8, MEMORY[0x1E69CBFD8]);
  v203 = sub_1B4F67F54();
  v204 = *(v201 + 8);
  v204(v202, v184);
  sub_1B4DD2BC4(v376, &qword_1EB8F5608, &qword_1B4F79E90);
  sub_1B4DD2BC4(v377, &qword_1EB8F5608, &qword_1B4F79E90);
  v204(v200, v184);
  sub_1B4DD2BC4(v175, &qword_1EB8F5608, &qword_1B4F79E90);
  v180 = v395;
  v182 = v380;
  v181 = v382;
  if ((v203 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_50:
  sub_1B4F66CD4();
  v188 = v402;
  v189 = *(v402 + 48);
  if (v189(v182, 1, v181) != 1)
  {
    v190 = *(v188 + 32);
    v191 = v381;
    v380 = (v188 + 32);
    v379 = v190;
    (v190)(v381, v182, v181);
    v192 = v188 + 16;
    v193 = v374;
    v396 = *(v188 + 16);
    (v396)(v374, v191, v181);
    (*(v188 + 56))(v193, 0, 1, v181);
    sub_1B4F66CD4();
    v194 = *(v362 + 48);
    v195 = v375;
    sub_1B4E21A90(v193, v375, &qword_1EB8F40D0, &unk_1B4F78940);
    sub_1B4E21A90(v180, v195 + v194, &qword_1EB8F40D0, &unk_1B4F78940);
    v196 = v189(v195, 1, v181);
    v403 = v192;
    if (v196 == 1)
    {
      sub_1B4DD2BC4(v180, &qword_1EB8F40D0, &unk_1B4F78940);
      v197 = v375;
      sub_1B4DD2BC4(v193, &qword_1EB8F40D0, &unk_1B4F78940);
      v198 = v197 + v194;
      v199 = v181;
      if (v189(v198, 1, v181) == 1)
      {
        sub_1B4DD2BC4(v197, &qword_1EB8F40D0, &unk_1B4F78940);
        (*(v402 + 8))(v381, v181);
        goto LABEL_63;
      }
    }

    else
    {
      v205 = v348;
      sub_1B4E21A90(v195, v348, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v189(v195 + v194, 1, v181) != 1)
      {
        v211 = v346;
        (v379)(v346, v195 + v194, v181);
        sub_1B4EEC148(&qword_1EB8F5668, MEMORY[0x1E69CC1F8]);
        v212 = v195;
        v213 = sub_1B4F67F54();
        v214 = *(v402 + 8);
        v214(v211, v181);
        sub_1B4DD2BC4(v395, &qword_1EB8F40D0, &unk_1B4F78940);
        sub_1B4DD2BC4(v374, &qword_1EB8F40D0, &unk_1B4F78940);
        v199 = v181;
        v214(v205, v181);
        sub_1B4DD2BC4(v212, &qword_1EB8F40D0, &unk_1B4F78940);
        if (v213)
        {
          v214(v381, v181);
          goto LABEL_63;
        }

        goto LABEL_60;
      }

      sub_1B4DD2BC4(v395, &qword_1EB8F40D0, &unk_1B4F78940);
      v197 = v375;
      sub_1B4DD2BC4(v374, &qword_1EB8F40D0, &unk_1B4F78940);
      v199 = v181;
      (*(v402 + 8))(v205, v181);
    }

    sub_1B4DD2BC4(v197, &qword_1EB8F55B0, &qword_1B4F78E30);
LABEL_60:
    v207 = *(v409 + 32);
    v206 = *(v409 + 40);
    v208 = swift_getObjectType();
    v209 = v351;
    v210 = v381;
    (v396)(v351, v381, v199);
    (*(v206 + 8))(v209, v352, &protocol witness table for MindfulMinutesMetricUpdated, v208, v206);
    sub_1B4EEC080(v209, type metadata accessor for MindfulMinutesMetricUpdated);
    (*(v402 + 8))(v210, v199);
    goto LABEL_63;
  }

  sub_1B4DD2BC4(v182, &qword_1EB8F40D0, &unk_1B4F78940);
LABEL_63:
  v215 = sub_1B4F66D04();
  v216 = sub_1B4F66D04();
  sub_1B4EDDAE8(v215, v216);
  v218 = v217;

  v219 = sub_1B4F66C84();
  v220 = sub_1B4F66C84();
  sub_1B4EDEFE0(v219, v220);
  v222 = v221;

  v223 = sub_1B4F66C44();
  v224 = sub_1B4F66C44();
  sub_1B4EDF390(v223, v224);
  v226 = v225;

  v227 = v397;
  if ((v218 & 1) == 0 || (v222 & 1) == 0 || (v226 & 1) == 0)
  {
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v228 = sub_1B4F67C54();
    __swift_project_value_buffer(v228, qword_1EDB714D8);
    v229 = sub_1B4F67C34();
    v230 = sub_1B4F685E4();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      *v231 = 67109632;
      *(v231 + 4) = (v218 & 1) == 0;
      *(v231 + 8) = 1024;
      *(v231 + 10) = (v222 & 1) == 0;
      *(v231 + 14) = 1024;
      *(v231 + 16) = (v226 & 1) == 0;
      _os_log_impl(&dword_1B4DC2000, v229, v230, "isCompletedWorkoutCountsUpdated: %{BOOL}d, isProgramProgressionUpdated: %{BOOL}d, isResumableSessionUpdated: %{BOOL}d", v231, 0x14u);
      MEMORY[0x1B8C831D0](v231, -1, -1);
    }

    v232 = sub_1B4F66D04();
    v233 = sub_1B4F66D04();
    if (*(v233 + 16) <= *(v232 + 16) >> 3)
    {
      v410 = v232;
      sub_1B4EE9000(v233, &qword_1EB8F65E8, &unk_1B4F79EE0, MEMORY[0x1E69CCE28], sub_1B4E915CC);

      v234 = v410;
    }

    else
    {
      v234 = sub_1B4EE9C80(v233, v232);
    }

    v235 = sub_1B4EDD430(v234);

    v236 = *(v409 + 32);
    v237 = *(v409 + 40);
    v238 = swift_getObjectType();
    v239 = sub_1B4DF2208(v235);

    v410 = v239;
    (*(v237 + 8))(&v410, &type metadata for ArchivedSessionsUpdated, &protocol witness table for ArchivedSessionsUpdated, v238, v237);
  }

  v240 = sub_1B4F66C64();
  v241 = sub_1B4F66C64();
  sub_1B4EDDAE8(v240, v241);
  v243 = v242;

  if ((v243 & 1) == 0)
  {
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v244 = sub_1B4F67C54();
    __swift_project_value_buffer(v244, qword_1EDB714D8);
    v245 = sub_1B4F67C34();
    v246 = sub_1B4F685E4();
    if (os_log_type_enabled(v245, v246))
    {
      v247 = swift_slowAlloc();
      *v247 = 67109120;
      *(v247 + 4) = 1;
      _os_log_impl(&dword_1B4DC2000, v245, v246, "isCompletedTipCountsUpdated: %{BOOL}d", v247, 8u);
      MEMORY[0x1B8C831D0](v247, -1, -1);
    }

    v248 = sub_1B4F66C64();
    v249 = sub_1B4F66C64();
    if (*(v249 + 16) <= *(v248 + 16) >> 3)
    {
      v410 = v248;
      sub_1B4EE9000(v249, &qword_1EB8F65E8, &unk_1B4F79EE0, MEMORY[0x1E69CCE28], sub_1B4E915CC);

      v250 = v410;
    }

    else
    {
      v250 = sub_1B4EE9C80(v249, v248);
    }

    v251 = sub_1B4EDD430(v250);

    v252 = *(v409 + 32);
    v253 = *(v409 + 40);
    v254 = swift_getObjectType();
    v255 = sub_1B4DF2208(v251);

    v410 = v255;
    (*(v253 + 8))(&v410, &type metadata for CatalogTipJournalsUpdated, &protocol witness table for CatalogTipJournalsUpdated, v254, v253);
  }

  v256 = sub_1B4F66C14();
  v257 = sub_1B4F66C14();
  v258 = sub_1B4EE0890(v256, v257);

  if ((v258 & 1) == 0)
  {
    v260 = *(v409 + 32);
    v259 = *(v409 + 40);
    v261 = swift_getObjectType();
    (*(v259 + 8))(v261, &type metadata for UpNextQueueItemsUpdated, &protocol witness table for UpNextQueueItemsUpdated, v261, v259);
  }

  v262 = sub_1B4F66DC4();
  v263 = sub_1B4F66DC4();
  sub_1B4EDF740(v262, v263);
  v265 = v264;

  v266 = v404;
  if ((v265 & 1) == 0)
  {
    v267 = sub_1B4F66DC4();
    v268 = sub_1B4F66DC4();
    if (*(v268 + 16) <= *(v267 + 16) >> 3)
    {
      v410 = v267;
      sub_1B4EE9000(v268, &qword_1EB8F57D0, &unk_1B4F79EF0, MEMORY[0x1E69CD370], sub_1B4E912BC);
    }

    else
    {
      sub_1B4EE921C(v268, v267);
    }

    v269 = sub_1B4F66DC4();
    v270 = sub_1B4F66DC4();
    v271 = v227;
    if (*(v270 + 16) <= *(v269 + 16) >> 3)
    {
      v410 = v269;
      sub_1B4EE9000(v270, &qword_1EB8F57D0, &unk_1B4F79EF0, MEMORY[0x1E69CD370], sub_1B4E912BC);
    }

    else
    {
      sub_1B4EE921C(v270, v269);
      v266 = v404;
    }

    v272 = v363;
    sub_1B4F65F34();
    v274 = *(v409 + 32);
    v273 = *(v409 + 40);
    v275 = swift_getObjectType();
    v276 = v364;
    v277 = v365;
    v278 = v366;
    (*(v364 + 16))(v365, v272, v366);
    (*(v273 + 8))(v277, v367, &protocol witness table for PlaylistsUpdated, v275, v273);
    sub_1B4EEC080(v277, type metadata accessor for PlaylistsUpdated);
    (*(v276 + 8))(v272, v278);
    v227 = v271;
  }

  sub_1B4F66C24();
  sub_1B4F66C24();
  v279 = *(v383 + 48);
  v280 = v405;
  sub_1B4E21A90(v227, v405, &qword_1EB8F5618, &qword_1B4F79E80);
  sub_1B4E21A90(v266, v280 + v279, &qword_1EB8F5618, &qword_1B4F79E80);
  v281 = v266;
  v282 = *(v398 + 48);
  v283 = v384;
  if (v282(v280, 1, v384) != 1)
  {
    v285 = v368;
    sub_1B4E21A90(v280, v368, &qword_1EB8F5618, &qword_1B4F79E80);
    if (v282(v280 + v279, 1, v283) != 1)
    {
      v286 = v398;
      v287 = v280 + v279;
      v288 = v349;
      (*(v398 + 32))(v349, v287, v283);
      sub_1B4EEC148(&qword_1EB8F65D0, MEMORY[0x1E69CB0E0]);
      LOBYTE(v124) = sub_1B4F67F54();
      v289 = *(v286 + 8);
      v289(v288, v283);
      sub_1B4DD2BC4(v404, &qword_1EB8F5618, &qword_1B4F79E80);
      sub_1B4DD2BC4(v397, &qword_1EB8F5618, &qword_1B4F79E80);
      v289(v285, v283);
      sub_1B4DD2BC4(v280, &qword_1EB8F5618, &qword_1B4F79E80);
      v284 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
      goto LABEL_100;
    }

    sub_1B4DD2BC4(v404, &qword_1EB8F5618, &qword_1B4F79E80);
    v124 = v405;
    sub_1B4DD2BC4(v397, &qword_1EB8F5618, &qword_1B4F79E80);
    (*(v398 + 8))(v285, v283);
    v284 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
    goto LABEL_98;
  }

  sub_1B4DD2BC4(v281, &qword_1EB8F5618, &qword_1B4F79E80);
  v124 = v405;
  sub_1B4DD2BC4(v227, &qword_1EB8F5618, &qword_1B4F79E80);
  v284 = &OBJC_METACLASS____TtC13SeymourClient26StreamingKeyDeliveryClient;
  if (v282(v124 + v279, 1, v283) != 1)
  {
LABEL_98:
    sub_1B4DD2BC4(v124, &qword_1EB8F65A0, &qword_1B4F79E78);
    LOBYTE(v124) = 0;
    goto LABEL_100;
  }

  sub_1B4DD2BC4(v124, &qword_1EB8F5618, &qword_1B4F79E80);
  LOBYTE(v124) = 1;
LABEL_100:
  v126 = sub_1B4F66CE4();
  v290 = sub_1B4F66CE4();
  sub_1B4EDFAF0(v126, v290);
  KeyPath = v291;

  v102 = sub_1B4F66D44();
  v292 = sub_1B4F66D44();
  sub_1B4EDFEA0(v102, v292);
  LOBYTE(v126) = v293;

  v294 = sub_1B4F66D54();
  v295 = sub_1B4F66D54();
  sub_1B4EE0250(v294, v295);
  LOBYTE(v102) = v296;

  if (v124 & 1) != 0 && (KeyPath & 1) != 0 && (v126 & 1) != 0 && (v102)
  {
    goto LABEL_109;
  }

  if (v284[30].info != -1)
  {
    goto LABEL_125;
  }

LABEL_105:
  v297 = sub_1B4F67C54();
  __swift_project_value_buffer(v297, qword_1EDB714D8);
  v298 = sub_1B4F67C34();
  v299 = sub_1B4F685E4();
  if (os_log_type_enabled(v298, v299))
  {
    v300 = swift_slowAlloc();
    *v300 = 67109888;
    *(v300 + 4) = (v124 & 1) == 0;
    *(v300 + 8) = 1024;
    *(v300 + 10) = (KeyPath & 1) == 0;
    *(v300 + 14) = 1024;
    *(v300 + 16) = (v126 & 1) == 0;
    *(v300 + 20) = 1024;
    *(v300 + 22) = (v102 & 1) == 0;
    _os_log_impl(&dword_1B4DC2000, v298, v299, "workoutPlansUpdated: %{BOOL}d  %{BOOL}d  %{BOOL}d  %{BOOL}d", v300, 0x1Au);
    MEMORY[0x1B8C831D0](v300, -1, -1);
  }

  v301 = *(v409 + 32);
  v302 = *(v409 + 40);
  v303 = swift_getObjectType();
  v304 = *(v302 + 8);
  v305 = v304(v303, &type metadata for WorkoutPlansUpdated, &protocol witness table for WorkoutPlansUpdated, v303, v302);
  if ((v124 & 1) == 0)
  {
    v304(v305, &type metadata for ActiveWorkoutPlanUpdated, &protocol witness table for ActiveWorkoutPlanUpdated, v303, v302);
  }

LABEL_109:
  v306 = v385;
  sub_1B4F66D84();
  v307 = v386;
  sub_1B4F66D84();
  sub_1B4EEC148(&qword_1EB8F65B8, MEMORY[0x1E69CD068]);
  v308 = v388;
  v309 = sub_1B4F67F54();
  v310 = *(v387 + 8);
  v310(v307, v308);
  v310(v306, v308);
  v311 = v390;
  if ((v309 & 1) == 0)
  {
    v312 = *(v409 + 32);
    v313 = *(v409 + 40);
    v314 = swift_getObjectType();
    v315 = v369;
    sub_1B4F66D84();
    (*(v313 + 8))(v315, v370, &protocol witness table for PersonalizationPrivacyPreferenceUpdated, v314, v313);
    sub_1B4EEC080(v315, type metadata accessor for PersonalizationPrivacyPreferenceUpdated);
  }

  v316 = v400;
  sub_1B4F66D14();
  v317 = v399;
  sub_1B4F66D14();
  v318 = *(v389 + 48);
  v319 = v406;
  sub_1B4E21A90(v316, v406, &qword_1EB8F5610, &qword_1B4F79E70);
  sub_1B4E21A90(v317, v319 + v318, &qword_1EB8F5610, &qword_1B4F79E70);
  v320 = *(v401 + 48);
  if (v320(v319, 1, v311) == 1)
  {
    sub_1B4DD2BC4(v317, &qword_1EB8F5610, &qword_1B4F79E70);
    v321 = v406;
    sub_1B4DD2BC4(v316, &qword_1EB8F5610, &qword_1B4F79E70);
    v322 = v320(v321 + v318, 1, v311);
    v323 = v393;
    v324 = v392;
    if (v322 == 1)
    {
      sub_1B4DD2BC4(v321, &qword_1EB8F5610, &qword_1B4F79E70);
      v325 = v394;
      goto LABEL_118;
    }

    goto LABEL_116;
  }

  v326 = v371;
  sub_1B4E21A90(v319, v371, &qword_1EB8F5610, &qword_1B4F79E70);
  if (v320(v319 + v318, 1, v311) == 1)
  {
    sub_1B4DD2BC4(v399, &qword_1EB8F5610, &qword_1B4F79E70);
    v321 = v406;
    sub_1B4DD2BC4(v400, &qword_1EB8F5610, &qword_1B4F79E70);
    (*(v401 + 8))(v326, v311);
    v323 = v393;
    v324 = v392;
LABEL_116:
    sub_1B4DD2BC4(v321, &qword_1EB8F6598, &qword_1B4F79E68);
    v325 = v394;
LABEL_117:
    v328 = *(v409 + 32);
    v327 = *(v409 + 40);
    v329 = swift_getObjectType();
    (*(v327 + 8))(v329, &type metadata for OnboardingSurveyResultsUpdated, &protocol witness table for OnboardingSurveyResultsUpdated, v329, v327);
    goto LABEL_118;
  }

  v338 = v401;
  v339 = v319 + v318;
  v340 = v350;
  (*(v401 + 32))(v350, v339, v311);
  sub_1B4EEC148(&qword_1EB8F65C8, MEMORY[0x1E69CC528]);
  v341 = sub_1B4F67F54();
  v342 = *(v338 + 8);
  v342(v340, v311);
  sub_1B4DD2BC4(v399, &qword_1EB8F5610, &qword_1B4F79E70);
  sub_1B4DD2BC4(v400, &qword_1EB8F5610, &qword_1B4F79E70);
  v342(v326, v311);
  sub_1B4DD2BC4(v319, &qword_1EB8F5610, &qword_1B4F79E70);
  v323 = v393;
  v325 = v394;
  v324 = v392;
  if ((v341 & 1) == 0)
  {
    goto LABEL_117;
  }

LABEL_118:
  v330 = v391;
  sub_1B4F66BC4();
  sub_1B4F66BC4();
  sub_1B4EEC148(&qword_1EB8F65C0, MEMORY[0x1E69CCC70]);
  v331 = sub_1B4F67F54();
  v332 = *(v323 + 8);
  v332(v324, v325);
  result = (v332)(v330, v325);
  if ((v331 & 1) == 0)
  {
    v334 = *(v409 + 32);
    v335 = *(v409 + 40);
    v336 = swift_getObjectType();
    v337 = v372;
    sub_1B4F66BC4();
    (*(v335 + 8))(v337, v373, &protocol witness table for AchievementEnvironmentCacheUpdated, v336, v335);
    return sub_1B4EEC080(v337, type metadata accessor for AchievementEnvironmentCacheUpdated);
  }

  return result;
}

uint64_t sub_1B4EE395C@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6618, &qword_1B4F79F00);
  result = sub_1B4F65044();
  *a2 = v4;
  return result;
}

void *RemoteBrowsingSource.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteBrowsingSource.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void RemoteBrowsingSource.appendJournalEntry(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE3F90(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE3ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v6 = type metadata accessor for RemoteBrowsingJournalEntry();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v46 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4F66694();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4F66DD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v43 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v43 - v27;
  sub_1B4EEC018(a1, v14, MEMORY[0x1E69CC610]);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v29 - 8) + 48))(v14, 1, v29) == 1)
  {
    return sub_1B4EEC080(v14, MEMORY[0x1E69CC610]);
  }

  (*(v16 + 32))(v28, &v14[*(v29 + 48)], v15);
  v31 = sub_1B4F65F84();
  (*(*(v31 - 8) + 8))(v14, v31);
  if (qword_1EDB714D0 != -1)
  {
    swift_once();
  }

  v32 = sub_1B4F67C54();
  __swift_project_value_buffer(v32, qword_1EDB714D8);
  v33._countAndFlagsBits = 0xD000000000000028;
  v33._object = 0x80000001B4F83380;
  v34._object = 0x80000001B4F833F0;
  v34._countAndFlagsBits = 0xD000000000000016;
  Logger.trace(file:function:)(v33, v34);
  swift_beginAccess();
  v35 = *(a2 + 24);

  RemoteBrowsingEnvironment.applyingJournal(_:)(v36, v24);

  sub_1B4EEC018(v44, v46, type metadata accessor for RemoteBrowsingJournalEntry);
  swift_beginAccess();
  v37 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v37;
  v43[1] = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_1B4E78B78(0, v37[2] + 1, 1, v37);
    *(a2 + 24) = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_1B4E78B78(v39 > 1, v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  sub_1B4EEC0E0(v46, v37 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v40, type metadata accessor for RemoteBrowsingJournalEntry);
  *(a2 + 24) = v37;
  swift_endAccess();

  RemoteBrowsingEnvironment.applyingJournal(_:)(v41, v20);

  sub_1B4EE0DF4(v24, v20);
  v42 = *(v16 + 8);
  v42(v20, v15);
  v42(v24, v15);
  return (v42)(v28, v15);
}

void sub_1B4EE3FAC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1F0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void RemoteBrowsingSource.queryActiveParticipant()(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66694();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1B4EEC018(v8 + v9, v7, MEMORY[0x1E69CC610]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    v12 = sub_1B4F65F84();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v13 = *(v11 + 48);
    v14 = sub_1B4F65F84();
    v15 = *(v14 - 8);
    (*(v15 + 32))(a1, v7, v14);
    (*(v15 + 56))(a1, 0, 1, v14);
    v16 = sub_1B4F66DD4();
    (*(*(v16 - 8) + 8))(&v7[v13], v16);
  }

  os_unfair_lock_unlock((v8 + v10));
}

void RemoteBrowsingSource.queryActiveEnvironment()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4EE45BC(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B4EE434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B4F66DD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F66694();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4EEC018(a1, v16, MEMORY[0x1E69CC610]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    return (*(v7 + 56))(a3, 1, 1, v6);
  }

  (*(v7 + 32))(v11, &v16[*(v17 + 48)], v6);
  swift_beginAccess();
  v19 = *(a2 + 24);

  RemoteBrowsingEnvironment.applyingJournal(_:)(v20, a3);

  (*(v7 + 8))(v11, v6);
  (*(v7 + 56))(a3, 0, 1, v6);
  v21 = sub_1B4F65F84();
  return (*(*(v21 - 8) + 8))(v16, v21);
}

uint64_t RemoteBrowsingSource.remoteDeviceForSession()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE4670(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

void sub_1B4EE4670(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1B4F65F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v43[-v13];
  v15 = sub_1B4F66694();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v43[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4EEC018(a1, v19, MEMORY[0x1E69CC610]);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v21 = sub_1B4F67C54();
    __swift_project_value_buffer(v21, qword_1EDB72490);
    v22 = sub_1B4F67C34();
    v23 = sub_1B4F685C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = a2;
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1B4DC2000, v22, v23, "[RemoteBrowsingSource] Couldn't determine remote device while in anonymous state.", v25, 2u);
      v26 = v25;
      a2 = v24;
      MEMORY[0x1B8C831D0](v26, -1, -1);
    }

    *a2 = 3;
    return;
  }

  v49 = *(v20 + 48);
  (*(v6 + 32))(v14, v19, v5);
  v27 = sub_1B4F65F54();
  if (v27 != 4)
  {
    (*(v6 + 8))(v14, v5);
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v41 = 2;
      }

      else
      {
        v41 = 3;
      }
    }

    else
    {
      if (!v27)
      {
        *a2 = 0;
LABEL_22:
        v42 = sub_1B4F66DD4();
        (*(*(v42 - 8) + 8))(&v19[v49], v42);
        return;
      }

      v41 = 1;
    }

    *a2 = v41;
    goto LABEL_22;
  }

  v48 = v2;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v28 = sub_1B4F67C54();
  __swift_project_value_buffer(v28, qword_1EDB72490);
  (*(v6 + 16))(v10, v14, v5);
  v29 = sub_1B4F67C34();
  v30 = sub_1B4F685C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v45 = v31;
    v46 = swift_slowAlloc();
    v50 = v46;
    *v31 = 136315138;
    sub_1B4EEC148(&qword_1EB8F6638, MEMORY[0x1E69CBB90]);
    v32 = sub_1B4F68D04();
    v47 = a2;
    v34 = v33;
    v44 = v30;
    v35 = *(v6 + 8);
    v35(v10, v5);
    v36 = sub_1B4DC4F88(v32, v34, &v50);
    a2 = v47;

    v37 = v45;
    *(v45 + 1) = v36;
    _os_log_impl(&dword_1B4DC2000, v29, v44, "[RemoteBrowsingSource] Couldn't determine remote device with null device on participant %s", v37, 0xCu);
    v38 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x1B8C831D0](v38, -1, -1);
    MEMORY[0x1B8C831D0](v37, -1, -1);

    v35(v14, v5);
  }

  else
  {

    v39 = *(v6 + 8);
    v39(v10, v5);
    v39(v14, v5);
  }

  *a2 = 3;
  v40 = sub_1B4F66DD4();
  (*(*(v40 - 8) + 8))(&v19[v49], v40);
}

void sub_1B4EE4BE4(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66694();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 16);
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1B4EEC018(v8 + v9, v7, MEMORY[0x1E69CC610]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    v12 = sub_1B4F65F84();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    v13 = *(v11 + 48);
    v14 = sub_1B4F65F84();
    v15 = *(v14 - 8);
    (*(v15 + 32))(a1, v7, v14);
    (*(v15 + 56))(a1, 0, 1, v14);
    v16 = sub_1B4F66DD4();
    (*(*(v16 - 8) + 8))(&v7[v13], v16);
  }

  os_unfair_lock_unlock((v8 + v10));
}

void sub_1B4EE4E40(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B4EEC190(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t RemoteBrowsingSource.applyActiveEnvironment<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v24 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6588, &qword_1B4F79DF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_1B4F66DD4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v19 = *(*v18 + *MEMORY[0x1E69E6B68] + 16);
  v20 = (*(*v18 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v18 + v20));
  sub_1B4EEC190(v18 + v19, v11);
  os_unfair_lock_unlock((v18 + v20));
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B4DD2BC4(v11, &qword_1EB8F6588, &qword_1B4F79DF0);
    return (*(*(a2 - 8) + 16))(v23, v24, a2);
  }

  else
  {
    (*(v13 + 32))(v17, v11, v12);
    (*(a3 + 8))(v17, a2, a3);
    return (*(v13 + 8))(v17, v12);
  }
}

uint64_t sub_1B4EE5160()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE4670(v1 + v2, &v5);
  os_unfair_lock_unlock((v1 + v3));
  return v5;
}

Swift::Void __swiftcall RemoteBrowsingSource.publishActiveIdentityUpdated()()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE53A8(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE5298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingIdentityUpdated();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  sub_1B4EEC018(a1, v8, MEMORY[0x1E69CC610]);
  (*(v10 + 8))(v8, v4, &protocol witness table for RemoteBrowsingIdentityUpdated, ObjectType, v10);
  return sub_1B4EEC080(v8, type metadata accessor for RemoteBrowsingIdentityUpdated);
}

void RemoteBrowsingSource.updateActiveIdentity(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE56E0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE545C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RemoteBrowsingIdentityUpdated();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4F66694();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4EEC018(a1, v15, MEMORY[0x1E69CC610]);
  v16 = MEMORY[0x1B8C7FF30](a2, v15);
  result = sub_1B4EEC080(v15, MEMORY[0x1E69CC610]);
  if ((v16 & 1) == 0)
  {
    sub_1B4EEC080(a1, MEMORY[0x1E69CC610]);
    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1B4F67C54();
    __swift_project_value_buffer(v18, qword_1EDB714D8);
    v19._countAndFlagsBits = 0xD000000000000028;
    v19._object = 0x80000001B4F83380;
    v20._object = 0x80000001B4F833D0;
    v20._countAndFlagsBits = 0xD000000000000018;
    Logger.trace(file:function:)(v19, v20);
    v21 = MEMORY[0x1E69CC610];
    sub_1B4EEC018(a2, a1, MEMORY[0x1E69CC610]);
    swift_beginAccess();
    v22 = a3[3];
    a3[3] = MEMORY[0x1E69E7CC0];

    v24 = a3[4];
    v23 = a3[5];
    ObjectType = swift_getObjectType();
    sub_1B4EEC018(a2, v10, v21);
    (*(v23 + 8))(v10, v6, &protocol witness table for RemoteBrowsingIdentityUpdated, ObjectType, v23);
    return sub_1B4EEC080(v10, type metadata accessor for RemoteBrowsingIdentityUpdated);
  }

  return result;
}

void RemoteBrowsingSource.updateActiveEnvironment(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EE5D34(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B4EE5794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v6 = sub_1B4F66694();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4F66DD4();
  v66 = *(v11 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v63 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  v22 = sub_1B4F65F84();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_1B4EEC018(a1, v10, MEMORY[0x1E69CC610]);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6578, &qword_1B4F79DE0);
  v60 = *(v28 - 8);
  if ((*(v60 + 48))(v10, 1, v28) == 1)
  {
    return sub_1B4EEC080(v10, MEMORY[0x1E69CC610]);
  }

  v65 = v3;
  v30 = *(v28 + 48);
  (*(v23 + 32))(v27, v10, v22);
  (*(v66 + 32))(v21, &v10[v30], v11);
  sub_1B4EEC148(&qword_1EB8F6590, MEMORY[0x1E69CCB10]);
  if (sub_1B4F67F54())
  {
    (*(v66 + 8))(v21, v11);
    return (*(v23 + 8))(v27, v22);
  }

  else
  {
    v58 = v11;
    v59 = v21;
    v31 = v66;
    v32 = v61;
    sub_1B4EEC080(v61, MEMORY[0x1E69CC610]);
    v33 = v64;
    v34 = swift_beginAccess();
    v55 = &v55;
    v35 = *(v33 + 24);
    MEMORY[0x1EEE9AC00](v34, v36);
    *(&v55 - 2) = a2;

    v37 = v35;
    v38 = v65;
    sub_1B4E6F21C(sub_1B4EE69AC, (&v55 - 4), v37);
    v65 = v38;
    v39 = *(v33 + 24);
    *(v33 + 24) = v40;

    if (qword_1EDB714D0 != -1)
    {
      swift_once();
    }

    v41 = sub_1B4F67C54();
    __swift_project_value_buffer(v41, qword_1EDB714D8);
    v42._countAndFlagsBits = 0xD000000000000028;
    v42._object = 0x80000001B4F83380;
    v43._object = 0x80000001B4F833B0;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    Logger.trace(file:function:)(v42, v43);
    v44 = *(v28 + 48);
    v45 = *(v23 + 16);
    v56 = v22;
    v57 = v27;
    v45(v32, v27, v22);
    v46 = v58;
    (*(v31 + 16))(v32 + v44, a2, v58);
    (*(v60 + 56))(v32, 0, 1, v28);
    v47 = *(v33 + 24);

    v49 = v62;
    v50 = v59;
    RemoteBrowsingEnvironment.applyingJournal(_:)(v48, v62);

    v51 = *(v33 + 24);

    v53 = v63;
    RemoteBrowsingEnvironment.applyingJournal(_:)(v52, v63);

    sub_1B4EE0DF4(v49, v53);
    v54 = *(v31 + 8);
    v54(v53, v46);
    v54(v49, v46);
    v54(v50, v46);
    return (*(v23 + 8))(v57, v56);
  }
}

uint64_t sub_1B4EE5D50(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6628, &qword_1B4F79F08);
  v3 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93, v4);
  v94 = &v88 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v92 = &v88 - v9;
  v10 = sub_1B4F666C4();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6630, &unk_1B4F79F10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v90 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v95 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v99 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v88 - v27;
  v29 = sub_1B4F649A4();
  v100 = *(v29 - 8);
  v101 = v29;
  v30 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v89 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v98 = &v88 - v35;
  v36 = type metadata accessor for RemoteBrowsingJournalEntry();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v40 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for RemoteBrowsingJournalProperty();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v88 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v88 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8, v52);
  v54 = &v88 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v88 - v57;
  sub_1B4EEC018(a1, v40, type metadata accessor for RemoteBrowsingJournalEntry);
  sub_1B4EEC0E0(v40, v45, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4EEC0E0(v45, v49, type metadata accessor for RemoteBrowsingJournalProperty);
  if (swift_getEnumCaseMultiPayload() == 27)
  {
    sub_1B4E340C4(v49, v58);
    sub_1B4E21A90(v58, v54, &qword_1EB8F4898, &qword_1B4F6E548);
    v59 = sub_1B4F67074();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v54, 1, v59) == 1)
    {
      sub_1B4DD2BC4(v58, &qword_1EB8F4898, &qword_1B4F6E548);
      sub_1B4DD2BC4(v54, &qword_1EB8F4898, &qword_1B4F6E548);
      (*(v100 + 56))(v28, 1, 1, v101);
LABEL_8:
      v64 = &qword_1EB8F6630;
      v65 = &unk_1B4F79F10;
      v66 = v28;
LABEL_9:
      sub_1B4DD2BC4(v66, v64, v65);
      v61 = 0;
      return v61 & 1;
    }

    sub_1B4F67054();
    (*(v60 + 8))(v54, v59);
    sub_1B4F666A4();
    (*(v96 + 8))(v14, v97);
    v63 = v100;
    v62 = v101;
    v97 = *(v100 + 48);
    if (v97(v28, 1, v101) == 1)
    {
      sub_1B4DD2BC4(v58, &qword_1EB8F4898, &qword_1B4F6E548);
      goto LABEL_8;
    }

    v68 = *(v63 + 32);
    v69 = v98;
    v96 = v63 + 32;
    v88 = v68;
    v68(v98, v28, v62);
    v70 = v99;
    (*(v63 + 16))(v99, v69, v62);
    v71 = *(v63 + 56);
    v71(v70, 0, 1, v62);
    v72 = v92;
    sub_1B4F66C24();
    v73 = sub_1B4F64ED4();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1B4DD2BC4(v72, &qword_1EB8F5618, &qword_1B4F79E80);
      v75 = 1;
      v76 = v95;
    }

    else
    {
      v76 = v95;
      sub_1B4F64E54();
      (*(v74 + 8))(v72, v73);
      v75 = 0;
    }

    v77 = v101;
    v71(v76, v75, 1, v101);
    v78 = v94;
    v79 = *(v93 + 48);
    v80 = v99;
    sub_1B4E21A90(v99, v94, &qword_1EB8F6630, &unk_1B4F79F10);
    sub_1B4E21A90(v76, v78 + v79, &qword_1EB8F6630, &unk_1B4F79F10);
    v81 = v97;
    if (v97(v78, 1, v77) == 1)
    {
      sub_1B4DD2BC4(v76, &qword_1EB8F6630, &unk_1B4F79F10);
      sub_1B4DD2BC4(v80, &qword_1EB8F6630, &unk_1B4F79F10);
      (*(v100 + 8))(v98, v77);
      sub_1B4DD2BC4(v58, &qword_1EB8F4898, &qword_1B4F6E548);
      if (v97((v78 + v79), 1, v77) == 1)
      {
        sub_1B4DD2BC4(v78, &qword_1EB8F6630, &unk_1B4F79F10);
        goto LABEL_5;
      }
    }

    else
    {
      v82 = v90;
      sub_1B4E21A90(v78, v90, &qword_1EB8F6630, &unk_1B4F79F10);
      if (v81(v78 + v79, 1, v77) != 1)
      {
        v85 = v89;
        v88(v89, v78 + v79, v77);
        sub_1B4EEC148(&qword_1EB8F4650, MEMORY[0x1E69695A8]);
        v86 = v77;
        v61 = sub_1B4F67F54();
        v87 = *(v100 + 8);
        v87(v85, v86);
        sub_1B4DD2BC4(v95, &qword_1EB8F6630, &unk_1B4F79F10);
        sub_1B4DD2BC4(v99, &qword_1EB8F6630, &unk_1B4F79F10);
        v87(v98, v86);
        sub_1B4DD2BC4(v58, &qword_1EB8F4898, &qword_1B4F6E548);
        v87(v82, v86);
        sub_1B4DD2BC4(v78, &qword_1EB8F6630, &unk_1B4F79F10);
        return v61 & 1;
      }

      v83 = v77;
      sub_1B4DD2BC4(v95, &qword_1EB8F6630, &unk_1B4F79F10);
      sub_1B4DD2BC4(v99, &qword_1EB8F6630, &unk_1B4F79F10);
      v84 = *(v100 + 8);
      v84(v98, v83);
      sub_1B4DD2BC4(v58, &qword_1EB8F4898, &qword_1B4F6E548);
      v84(v82, v83);
    }

    v64 = &qword_1EB8F6628;
    v65 = &qword_1B4F79F08;
    v66 = v78;
    goto LABEL_9;
  }

  sub_1B4EEC080(v49, type metadata accessor for RemoteBrowsingJournalProperty);
LABEL_5:
  v61 = 1;
  return v61 & 1;
}

void sub_1B4EE6784()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1D8(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B4EE6820()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1C0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1B4EE68BC()
{
  v1 = *(*v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1B4EEC1A8(v1 + v2);

  os_unfair_lock_unlock((v1 + v3));
}

unint64_t sub_1B4EE69CC()
{
  result = qword_1EB8F65B0;
  if (!qword_1EB8F65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F65B0);
  }

  return result;
}

uint64_t sub_1B4EE6A20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F66674();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE6D48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F670C4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE7070(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F660C4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE7398(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F65DE4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE76C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F66BA4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE79E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F66A54();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4DF0, MEMORY[0x1E69CC938]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE7D10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F669F4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE8038(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F658C4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6640, &unk_1B4F79F20);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F6608, MEMORY[0x1E69CB4A8]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE8360(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F67124();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE8688(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F679C4();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE89B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F65E04();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4EE8CD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1B4F67A94();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  result = sub_1B4F68994();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
    result = sub_1B4F67F14();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1B4EE9000(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void, double), void (*a5)(char *))
{
  v29 = a3;
  v30 = a5;
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = v27 - v12;
  v14 = a4(0, v11);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v27 - v18;
  if (*(*v5 + 16))
  {
    v20 = 1 << *(a1 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(a1 + 56);
    v23 = (v20 + 63) >> 6;
    v27[1] = v15 + 8;
    v27[2] = v15 + 16;

    v24 = 0;
    while (v22)
    {
      v25 = v24;
LABEL_10:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v15 + 16))(v19, *(a1 + 48) + *(v15 + 72) * (v26 | (v25 << 6)), v14);
      v30(v19);
      (*(v15 + 8))(v19, v14);
      sub_1B4DD2BC4(v13, v28, v29);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        return;
      }

      v22 = *(a1 + 56 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B4EE921C(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v76 - v12);
  v14 = sub_1B4F67A94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v96 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v76 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = (&v76 - v25);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v77 = v13;
  v79 = v9;
  v27 = a1 + 56;
  v26 = *(a1 + 56);
  v28 = -1 << *(a1 + 32);
  v90 = ~v28;
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v98 = (v29 & v26);
  v83 = (63 - v28) >> 6;
  v97 = v24 + 16;
  v88 = (v24 + 48);
  v89 = (v24 + 56);
  v87 = (v24 + 32);
  v93 = (a2 + 56);
  v78 = v24;
  v99 = (v24 + 8);

  v31 = 0;
  v80 = a1;
  for (i = a1 + 56; ; v27 = i)
  {
    v32 = v98;
    v33 = v31;
    if (v98)
    {
LABEL_14:
      v2 = (v32 - 1) & v32;
      v37 = v77;
      (*(v78 + 16))(v77, *(a1 + 48) + *(v78 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
      v38 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v83 <= (v31 + 1) ? v31 + 1 : v83;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }

        if (v33 >= v83)
        {
          break;
        }

        v32 = *(v27 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v38 = 1;
      v37 = v77;
    }

    v85 = *v89;
    v85(v37, v38, 1, v14);
    v100 = a1;
    v101 = v27;
    v102 = v90;
    v103 = v35;
    v104 = v2;
    v84 = *v88;
    if (v84(v37, 1, v14) == 1)
    {
      sub_1B4DD2BC4(v37, &qword_1EB8F57D0, &unk_1B4F79EF0);
      goto LABEL_52;
    }

    v82 = *v87;
    v82(v91, v37, v14);
    v39 = *(a2 + 40);
    v81 = sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
    v40 = sub_1B4F67F14();
    v41 = -1 << *(a2 + 32);
    v31 = v40 & ~v41;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) != 0)
    {
      break;
    }

    (*v99)(v91, v14);
LABEL_22:
    v31 = v35;
    v98 = v2;
  }

  v76 = v99 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v92 = ~v41;
  v42 = *(v78 + 72);
  v94 = *(v78 + 16);
  v95 = v42;
  while (1)
  {
    v94(v21, *(a2 + 48) + v95 * v31, v14);
    v43 = sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
    v44 = sub_1B4F67F54();
    v98 = *v99;
    v98(v21, v14);
    if (v44)
    {
      break;
    }

    v31 = (v31 + 1) & v92;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) == 0)
    {
      a1 = v80;
      v98(v91, v14);
      goto LABEL_22;
    }
  }

  v92 = v43;
  v45 = (v98)(v91, v14);
  v47 = *(a2 + 32);
  v76 = ((1 << v47) + 63) >> 6;
  v30 = 8 * v76;
  a1 = v80;
  if ((v47 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v77 = &v76;
    MEMORY[0x1EEE9AC00](v45, v46);
    v49 = &v76 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v49, v93, v48);
    v50 = *&v49[8 * v33] & ~v27;
    v51 = *(a2 + 16);
    v91 = v49;
    *&v49[8 * v33] = v50;
    v52 = v51 - 1;
    v31 = v79;
    v53 = i;
    v54 = v83;
LABEL_26:
    v78 = v52;
    while (v2)
    {
      v55 = v35;
LABEL_38:
      v58 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v94(v31, *(a1 + 48) + (v58 | (v55 << 6)) * v95, v14);
      v59 = 0;
LABEL_39:
      v85(v31, v59, 1, v14);
      v100 = a1;
      v101 = v53;
      v102 = v90;
      v103 = v35;
      v104 = v2;
      if (v84(v31, 1, v14) == 1)
      {
        sub_1B4DD2BC4(v31, &qword_1EB8F57D0, &unk_1B4F79EF0);
        a2 = sub_1B4EE8CD8(v91, v76, v78, a2);
        goto LABEL_52;
      }

      v82(v96, v31, v14);
      v60 = *(a2 + 40);
      v61 = sub_1B4F67F14();
      v62 = a2;
      v63 = -1 << *(a2 + 32);
      v64 = v61 & ~v63;
      v33 = v64 >> 6;
      v27 = 1 << v64;
      if (((1 << v64) & v93[v64 >> 6]) != 0)
      {
        v94(v21, *(v62 + 48) + v64 * v95, v14);
        v65 = sub_1B4F67F54();
        v98(v21, v14);
        if ((v65 & 1) == 0)
        {
          v66 = ~v63;
          do
          {
            v64 = (v64 + 1) & v66;
            v33 = v64 >> 6;
            v27 = 1 << v64;
            if (((1 << v64) & v93[v64 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v94(v21, *(v62 + 48) + v64 * v95, v14);
            v67 = sub_1B4F67F54();
            v98(v21, v14);
          }

          while ((v67 & 1) == 0);
        }

        v98(v96, v14);
        v68 = v91[v33];
        v91[v33] = v68 & ~v27;
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
        if ((v68 & v27) != 0)
        {
          v52 = v78 - 1;
          if (__OFSUB__(v78, 1))
          {
            __break(1u);
          }

          if (v78 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v98(v96, v14);
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
      }
    }

    if (v54 <= (v35 + 1))
    {
      v56 = v35 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v35 = v57;
        goto LABEL_39;
      }

      v2 = *(v53 + 8 * v55);
      ++v35;
      if (v2)
      {
        v35 = v55;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v71 = v30;

    v91 = a2;
    v72 = v71;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v73 = v91;

      a2 = v73;
      continue;
    }

    break;
  }

  v74 = swift_slowAlloc();
  memcpy(v74, v93, v72);
  sub_1B4EEB148(v74, v76, v91, v31, &v100);
  a2 = v75;

  MEMORY[0x1B8C831D0](v74, -1, -1);
LABEL_52:
  sub_1B4E632A0();
LABEL_54:
  v69 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1B4EE9C80(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E8, &unk_1B4F79EE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v76 - v12);
  v14 = sub_1B4F67124();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v96 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v76 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = (&v76 - v25);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v77 = v13;
  v79 = v9;
  v27 = a1 + 56;
  v26 = *(a1 + 56);
  v28 = -1 << *(a1 + 32);
  v90 = ~v28;
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v98 = (v29 & v26);
  v83 = (63 - v28) >> 6;
  v97 = v24 + 16;
  v88 = (v24 + 48);
  v89 = (v24 + 56);
  v87 = (v24 + 32);
  v93 = (a2 + 56);
  v78 = v24;
  v99 = (v24 + 8);

  v31 = 0;
  v80 = a1;
  for (i = a1 + 56; ; v27 = i)
  {
    v32 = v98;
    v33 = v31;
    if (v98)
    {
LABEL_14:
      v2 = (v32 - 1) & v32;
      v37 = v77;
      (*(v78 + 16))(v77, *(a1 + 48) + *(v78 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
      v38 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v83 <= (v31 + 1) ? v31 + 1 : v83;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }

        if (v33 >= v83)
        {
          break;
        }

        v32 = *(v27 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v38 = 1;
      v37 = v77;
    }

    v85 = *v89;
    v85(v37, v38, 1, v14);
    v100 = a1;
    v101 = v27;
    v102 = v90;
    v103 = v35;
    v104 = v2;
    v84 = *v88;
    if (v84(v37, 1, v14) == 1)
    {
      sub_1B4DD2BC4(v37, &qword_1EB8F65E8, &unk_1B4F79EE0);
      goto LABEL_52;
    }

    v82 = *v87;
    v82(v91, v37, v14);
    v39 = *(a2 + 40);
    v81 = sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
    v40 = sub_1B4F67F14();
    v41 = -1 << *(a2 + 32);
    v31 = v40 & ~v41;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) != 0)
    {
      break;
    }

    (*v99)(v91, v14);
LABEL_22:
    v31 = v35;
    v98 = v2;
  }

  v76 = v99 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v92 = ~v41;
  v42 = *(v78 + 72);
  v94 = *(v78 + 16);
  v95 = v42;
  while (1)
  {
    v94(v21, *(a2 + 48) + v95 * v31, v14);
    v43 = sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
    v44 = sub_1B4F67F54();
    v98 = *v99;
    v98(v21, v14);
    if (v44)
    {
      break;
    }

    v31 = (v31 + 1) & v92;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) == 0)
    {
      a1 = v80;
      v98(v91, v14);
      goto LABEL_22;
    }
  }

  v92 = v43;
  v45 = (v98)(v91, v14);
  v47 = *(a2 + 32);
  v76 = ((1 << v47) + 63) >> 6;
  v30 = 8 * v76;
  a1 = v80;
  if ((v47 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v77 = &v76;
    MEMORY[0x1EEE9AC00](v45, v46);
    v49 = &v76 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v49, v93, v48);
    v50 = *&v49[8 * v33] & ~v27;
    v51 = *(a2 + 16);
    v91 = v49;
    *&v49[8 * v33] = v50;
    v52 = v51 - 1;
    v31 = v79;
    v53 = i;
    v54 = v83;
LABEL_26:
    v78 = v52;
    while (v2)
    {
      v55 = v35;
LABEL_38:
      v58 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v94(v31, *(a1 + 48) + (v58 | (v55 << 6)) * v95, v14);
      v59 = 0;
LABEL_39:
      v85(v31, v59, 1, v14);
      v100 = a1;
      v101 = v53;
      v102 = v90;
      v103 = v35;
      v104 = v2;
      if (v84(v31, 1, v14) == 1)
      {
        sub_1B4DD2BC4(v31, &qword_1EB8F65E8, &unk_1B4F79EE0);
        a2 = sub_1B4EE8360(v91, v76, v78, a2);
        goto LABEL_52;
      }

      v82(v96, v31, v14);
      v60 = *(a2 + 40);
      v61 = sub_1B4F67F14();
      v62 = a2;
      v63 = -1 << *(a2 + 32);
      v64 = v61 & ~v63;
      v33 = v64 >> 6;
      v27 = 1 << v64;
      if (((1 << v64) & v93[v64 >> 6]) != 0)
      {
        v94(v21, *(v62 + 48) + v64 * v95, v14);
        v65 = sub_1B4F67F54();
        v98(v21, v14);
        if ((v65 & 1) == 0)
        {
          v66 = ~v63;
          do
          {
            v64 = (v64 + 1) & v66;
            v33 = v64 >> 6;
            v27 = 1 << v64;
            if (((1 << v64) & v93[v64 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v94(v21, *(v62 + 48) + v64 * v95, v14);
            v67 = sub_1B4F67F54();
            v98(v21, v14);
          }

          while ((v67 & 1) == 0);
        }

        v98(v96, v14);
        v68 = v91[v33];
        v91[v33] = v68 & ~v27;
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
        if ((v68 & v27) != 0)
        {
          v52 = v78 - 1;
          if (__OFSUB__(v78, 1))
          {
            __break(1u);
          }

          if (v78 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v98(v96, v14);
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
      }
    }

    if (v54 <= (v35 + 1))
    {
      v56 = v35 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v35 = v57;
        goto LABEL_39;
      }

      v2 = *(v53 + 8 * v55);
      ++v35;
      if (v2)
      {
        v35 = v55;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v71 = v30;

    v91 = a2;
    v72 = v71;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v73 = v91;

      a2 = v73;
      continue;
    }

    break;
  }

  v74 = swift_slowAlloc();
  memcpy(v74, v93, v72);
  sub_1B4EEB61C(v74, v76, v91, v31, &v100);
  a2 = v75;

  MEMORY[0x1B8C831D0](v74, -1, -1);
LABEL_52:
  sub_1B4E632A0();
LABEL_54:
  v69 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1B4EEA6E4(uint64_t a1, uint64_t a2)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E0, &unk_1B4F79ED0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v76 - v12);
  v14 = sub_1B4F679C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v96 = (&v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v76 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v91 = (&v76 - v25);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v77 = v13;
  v79 = v9;
  v27 = a1 + 56;
  v26 = *(a1 + 56);
  v28 = -1 << *(a1 + 32);
  v90 = ~v28;
  if (-v28 < 64)
  {
    v29 = ~(-1 << -v28);
  }

  else
  {
    v29 = -1;
  }

  v98 = (v29 & v26);
  v83 = (63 - v28) >> 6;
  v97 = v24 + 16;
  v88 = (v24 + 48);
  v89 = (v24 + 56);
  v87 = (v24 + 32);
  v93 = (a2 + 56);
  v78 = v24;
  v99 = (v24 + 8);

  v31 = 0;
  v80 = a1;
  for (i = a1 + 56; ; v27 = i)
  {
    v32 = v98;
    v33 = v31;
    if (v98)
    {
LABEL_14:
      v2 = (v32 - 1) & v32;
      v37 = v77;
      (*(v78 + 16))(v77, *(a1 + 48) + *(v78 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14);
      v38 = 0;
      v35 = v33;
    }

    else
    {
      v34 = v83 <= (v31 + 1) ? v31 + 1 : v83;
      v35 = v34 - 1;
      v36 = v31;
      while (1)
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_57;
        }

        if (v33 >= v83)
        {
          break;
        }

        v32 = *(v27 + 8 * v33);
        ++v36;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v38 = 1;
      v37 = v77;
    }

    v85 = *v89;
    v85(v37, v38, 1, v14);
    v100 = a1;
    v101 = v27;
    v102 = v90;
    v103 = v35;
    v104 = v2;
    v84 = *v88;
    if (v84(v37, 1, v14) == 1)
    {
      sub_1B4DD2BC4(v37, &qword_1EB8F65E0, &unk_1B4F79ED0);
      goto LABEL_52;
    }

    v82 = *v87;
    v82(v91, v37, v14);
    v39 = *(a2 + 40);
    v81 = sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
    v40 = sub_1B4F67F14();
    v41 = -1 << *(a2 + 32);
    v31 = v40 & ~v41;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) != 0)
    {
      break;
    }

    (*v99)(v91, v14);
LABEL_22:
    v31 = v35;
    v98 = v2;
  }

  v76 = v99 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v92 = ~v41;
  v42 = *(v78 + 72);
  v94 = *(v78 + 16);
  v95 = v42;
  while (1)
  {
    v94(v21, *(a2 + 48) + v95 * v31, v14);
    v43 = sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
    v44 = sub_1B4F67F54();
    v98 = *v99;
    v98(v21, v14);
    if (v44)
    {
      break;
    }

    v31 = (v31 + 1) & v92;
    v33 = v31 >> 6;
    v27 = 1 << v31;
    if (((1 << v31) & v93[v31 >> 6]) == 0)
    {
      a1 = v80;
      v98(v91, v14);
      goto LABEL_22;
    }
  }

  v92 = v43;
  v45 = (v98)(v91, v14);
  v47 = *(a2 + 32);
  v76 = ((1 << v47) + 63) >> 6;
  v30 = 8 * v76;
  a1 = v80;
  if ((v47 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v77 = &v76;
    MEMORY[0x1EEE9AC00](v45, v46);
    v49 = &v76 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v49, v93, v48);
    v50 = *&v49[8 * v33] & ~v27;
    v51 = *(a2 + 16);
    v91 = v49;
    *&v49[8 * v33] = v50;
    v52 = v51 - 1;
    v31 = v79;
    v53 = i;
    v54 = v83;
LABEL_26:
    v78 = v52;
    while (v2)
    {
      v55 = v35;
LABEL_38:
      v58 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v94(v31, *(a1 + 48) + (v58 | (v55 << 6)) * v95, v14);
      v59 = 0;
LABEL_39:
      v85(v31, v59, 1, v14);
      v100 = a1;
      v101 = v53;
      v102 = v90;
      v103 = v35;
      v104 = v2;
      if (v84(v31, 1, v14) == 1)
      {
        sub_1B4DD2BC4(v31, &qword_1EB8F65E0, &unk_1B4F79ED0);
        a2 = sub_1B4EE8688(v91, v76, v78, a2);
        goto LABEL_52;
      }

      v82(v96, v31, v14);
      v60 = *(a2 + 40);
      v61 = sub_1B4F67F14();
      v62 = a2;
      v63 = -1 << *(a2 + 32);
      v64 = v61 & ~v63;
      v33 = v64 >> 6;
      v27 = 1 << v64;
      if (((1 << v64) & v93[v64 >> 6]) != 0)
      {
        v94(v21, *(v62 + 48) + v64 * v95, v14);
        v65 = sub_1B4F67F54();
        v98(v21, v14);
        if ((v65 & 1) == 0)
        {
          v66 = ~v63;
          do
          {
            v64 = (v64 + 1) & v66;
            v33 = v64 >> 6;
            v27 = 1 << v64;
            if (((1 << v64) & v93[v64 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v94(v21, *(v62 + 48) + v64 * v95, v14);
            v67 = sub_1B4F67F54();
            v98(v21, v14);
          }

          while ((v67 & 1) == 0);
        }

        v98(v96, v14);
        v68 = v91[v33];
        v91[v33] = v68 & ~v27;
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
        if ((v68 & v27) != 0)
        {
          v52 = v78 - 1;
          if (__OFSUB__(v78, 1))
          {
            __break(1u);
          }

          if (v78 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v98(v96, v14);
        a2 = v62;
        a1 = v80;
        v31 = v79;
        v53 = i;
        v54 = v83;
      }
    }

    if (v54 <= (v35 + 1))
    {
      v56 = v35 + 1;
    }

    else
    {
      v56 = v54;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v55 >= v54)
      {
        v2 = 0;
        v59 = 1;
        v35 = v57;
        goto LABEL_39;
      }

      v2 = *(v53 + 8 * v55);
      ++v35;
      if (v2)
      {
        v35 = v55;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v71 = v30;

    v91 = a2;
    v72 = v71;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v73 = v91;

      a2 = v73;
      continue;
    }

    break;
  }

  v74 = swift_slowAlloc();
  memcpy(v74, v93, v72);
  sub_1B4EEBAF0(v74, v76, v91, v31, &v100);
  a2 = v75;

  MEMORY[0x1B8C831D0](v74, -1, -1);
LABEL_52:
  sub_1B4E632A0();
LABEL_54:
  v69 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1B4EEB148(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_1B4F67A94();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v19);
  v69 = &v52 - v21;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23);
  v55 = a1;
  v56 = v13;
  *(a1 + v23) = v24 & ((-1 << a4) - 1);
  v25 = v22 - 1;
  v66 = v26 + 16;
  v67 = a3;
  v60 = (v26 + 48);
  v61 = (v26 + 56);
  v59 = (v26 + 32);
  v65 = a3 + 56;
  v62 = v26;
  v68 = (v26 + 8);
  v57 = a5;
  while (2)
  {
    v54 = v25;
    do
    {
      while (1)
      {
        v28 = *a5;
        v29 = a5[1];
        v31 = a5[2];
        v30 = a5[3];
        v32 = a5[4];
        if (!v32)
        {
          v34 = (v31 + 64) >> 6;
          if (v34 <= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = (v31 + 64) >> 6;
          }

          v36 = v35 - 1;
          while (1)
          {
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v33 >= v34)
            {
              v37 = 0;
              v38 = 1;
              goto LABEL_15;
            }

            v32 = *(v29 + 8 * v33);
            ++v30;
            if (v32)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v33 = a5[3];
LABEL_14:
        v37 = (v32 - 1) & v32;
        (*(v62 + 16))(v13, *(v28 + 48) + *(v62 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14, v20);
        v38 = 0;
        v36 = v33;
LABEL_15:
        (*v61)(v13, v38, 1, v14);
        *a5 = v28;
        a5[1] = v29;
        a5[2] = v31;
        a5[3] = v36;
        a5[4] = v37;
        if ((*v60)(v13, 1, v14) == 1)
        {
          sub_1B4DD2BC4(v13, &qword_1EB8F57D0, &unk_1B4F79EF0);
          v51 = v67;

          sub_1B4EE8CD8(v55, v53, v54, v51);
          return;
        }

        (*v59)(v69, v13, v14);
        v39 = v67;
        v40 = *(v67 + 40);
        sub_1B4EEC148(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
        v41 = sub_1B4F67F14();
        v42 = -1 << *(v39 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

        v27 = *v68;
LABEL_4:
        v27(v69, v14);
      }

      v58 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = ~v42;
      v46 = *(v62 + 72);
      v47 = *(v62 + 16);
      while (1)
      {
        v48 = v63;
        v47(v63, *(v67 + 48) + v46 * v43, v14);
        sub_1B4EEC148(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
        v49 = sub_1B4F67F54();
        v27 = *v68;
        (*v68)(v48, v14);
        if (v49)
        {
          break;
        }

        v43 = (v43 + 1) & v64;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) == 0)
        {
          v13 = v56;
          a5 = v57;
          goto LABEL_4;
        }
      }

      v27(v69, v14);
      v13 = v56;
      v50 = v55[v44];
      v55[v44] = v50 & ~v45;
      a5 = v57;
    }

    while ((v50 & v45) == 0);
    v25 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v54 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1B4EEB61C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E8, &unk_1B4F79EE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_1B4F67124();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v19);
  v69 = &v52 - v21;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23);
  v55 = a1;
  v56 = v13;
  *(a1 + v23) = v24 & ((-1 << a4) - 1);
  v25 = v22 - 1;
  v66 = v26 + 16;
  v67 = a3;
  v60 = (v26 + 48);
  v61 = (v26 + 56);
  v59 = (v26 + 32);
  v65 = a3 + 56;
  v62 = v26;
  v68 = (v26 + 8);
  v57 = a5;
  while (2)
  {
    v54 = v25;
    do
    {
      while (1)
      {
        v28 = *a5;
        v29 = a5[1];
        v31 = a5[2];
        v30 = a5[3];
        v32 = a5[4];
        if (!v32)
        {
          v34 = (v31 + 64) >> 6;
          if (v34 <= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = (v31 + 64) >> 6;
          }

          v36 = v35 - 1;
          while (1)
          {
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v33 >= v34)
            {
              v37 = 0;
              v38 = 1;
              goto LABEL_15;
            }

            v32 = *(v29 + 8 * v33);
            ++v30;
            if (v32)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v33 = a5[3];
LABEL_14:
        v37 = (v32 - 1) & v32;
        (*(v62 + 16))(v13, *(v28 + 48) + *(v62 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14, v20);
        v38 = 0;
        v36 = v33;
LABEL_15:
        (*v61)(v13, v38, 1, v14);
        *a5 = v28;
        a5[1] = v29;
        a5[2] = v31;
        a5[3] = v36;
        a5[4] = v37;
        if ((*v60)(v13, 1, v14) == 1)
        {
          sub_1B4DD2BC4(v13, &qword_1EB8F65E8, &unk_1B4F79EE0);
          v51 = v67;

          sub_1B4EE8360(v55, v53, v54, v51);
          return;
        }

        (*v59)(v69, v13, v14);
        v39 = v67;
        v40 = *(v67 + 40);
        sub_1B4EEC148(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
        v41 = sub_1B4F67F14();
        v42 = -1 << *(v39 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

        v27 = *v68;
LABEL_4:
        v27(v69, v14);
      }

      v58 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = ~v42;
      v46 = *(v62 + 72);
      v47 = *(v62 + 16);
      while (1)
      {
        v48 = v63;
        v47(v63, *(v67 + 48) + v46 * v43, v14);
        sub_1B4EEC148(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
        v49 = sub_1B4F67F54();
        v27 = *v68;
        (*v68)(v48, v14);
        if (v49)
        {
          break;
        }

        v43 = (v43 + 1) & v64;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) == 0)
        {
          v13 = v56;
          a5 = v57;
          goto LABEL_4;
        }
      }

      v27(v69, v14);
      v13 = v56;
      v50 = v55[v44];
      v55[v44] = v50 & ~v45;
      a5 = v57;
    }

    while ((v50 & v45) == 0);
    v25 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v54 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1B4EEBAF0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v53 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F65E0, &unk_1B4F79ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v52 - v12;
  v14 = sub_1B4F679C4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v63 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v19);
  v69 = &v52 - v21;
  v22 = *(a3 + 16);
  v23 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v24 = *(a1 + v23);
  v55 = a1;
  v56 = v13;
  *(a1 + v23) = v24 & ((-1 << a4) - 1);
  v25 = v22 - 1;
  v66 = v26 + 16;
  v67 = a3;
  v60 = (v26 + 48);
  v61 = (v26 + 56);
  v59 = (v26 + 32);
  v65 = a3 + 56;
  v62 = v26;
  v68 = (v26 + 8);
  v57 = a5;
  while (2)
  {
    v54 = v25;
    do
    {
      while (1)
      {
        v28 = *a5;
        v29 = a5[1];
        v31 = a5[2];
        v30 = a5[3];
        v32 = a5[4];
        if (!v32)
        {
          v34 = (v31 + 64) >> 6;
          if (v34 <= v30 + 1)
          {
            v35 = v30 + 1;
          }

          else
          {
            v35 = (v31 + 64) >> 6;
          }

          v36 = v35 - 1;
          while (1)
          {
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v33 >= v34)
            {
              v37 = 0;
              v38 = 1;
              goto LABEL_15;
            }

            v32 = *(v29 + 8 * v33);
            ++v30;
            if (v32)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v33 = a5[3];
LABEL_14:
        v37 = (v32 - 1) & v32;
        (*(v62 + 16))(v13, *(v28 + 48) + *(v62 + 72) * (__clz(__rbit64(v32)) | (v33 << 6)), v14, v20);
        v38 = 0;
        v36 = v33;
LABEL_15:
        (*v61)(v13, v38, 1, v14);
        *a5 = v28;
        a5[1] = v29;
        a5[2] = v31;
        a5[3] = v36;
        a5[4] = v37;
        if ((*v60)(v13, 1, v14) == 1)
        {
          sub_1B4DD2BC4(v13, &qword_1EB8F65E0, &unk_1B4F79ED0);
          v51 = v67;

          sub_1B4EE8688(v55, v53, v54, v51);
          return;
        }

        (*v59)(v69, v13, v14);
        v39 = v67;
        v40 = *(v67 + 40);
        sub_1B4EEC148(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
        v41 = sub_1B4F67F14();
        v42 = -1 << *(v39 + 32);
        v43 = v41 & ~v42;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) != 0)
        {
          break;
        }

        v27 = *v68;
LABEL_4:
        v27(v69, v14);
      }

      v58 = v68 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v64 = ~v42;
      v46 = *(v62 + 72);
      v47 = *(v62 + 16);
      while (1)
      {
        v48 = v63;
        v47(v63, *(v67 + 48) + v46 * v43, v14);
        sub_1B4EEC148(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
        v49 = sub_1B4F67F54();
        v27 = *v68;
        (*v68)(v48, v14);
        if (v49)
        {
          break;
        }

        v43 = (v43 + 1) & v64;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if (((1 << v43) & *(v65 + 8 * (v43 >> 6))) == 0)
        {
          v13 = v56;
          a5 = v57;
          goto LABEL_4;
        }
      }

      v27(v69, v14);
      v13 = v56;
      v50 = v55[v44];
      v55[v44] = v50 & ~v45;
      a5 = v57;
    }

    while ((v50 & v45) == 0);
    v25 = v54 - 1;
    if (__OFSUB__(v54, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v54 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_1B4EEBFC4()
{
  result = qword_1EB8F6620;
  if (!qword_1EB8F6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F6620);
  }

  return result;
}

uint64_t sub_1B4EEC018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EEC080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4EEC0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4EEC148(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int __swiftcall CatalogProgram.indexOfWorkout(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B4F655A4();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 40);
    while (1)
    {
      v7 = *(v6 - 1) == countAndFlagsBits && *v6 == object;
      if (v7 || (sub_1B4F68D54() & 1) != 0)
      {
        break;
      }

      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    sub_1B4F655A4();

    sub_1B4F655A4();

    result = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
    }
  }

  else
  {
LABEL_9:

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4F67C54();
    __swift_project_value_buffer(v8, qword_1EDB72490);
    v9 = sub_1B4F67C34();
    v10 = sub_1B4F685C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4DC2000, v9, v10, "Next workout was not present in program workout list", v11, 2u);
      MEMORY[0x1B8C831D0](v11, -1, -1);
    }

    return 0;
  }

  return result;
}

void *WorkoutPlanClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4EF4D40(v10, a1, a2, v12);

  return v13;
}

uint64_t WorkoutPlanClient.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t WorkoutPlanClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanClient.createWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v27;
  *(v9 + 96) = v8;
  *(v9 + 226) = v26;
  *(v9 + 72) = a8;
  *(v9 + 80) = v25;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  v11 = *(v10 - 8);
  *(v9 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v13 = sub_1B4F66364();
  *(v9 + 128) = v13;
  v14 = *(v13 - 8);
  *(v9 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v17 = sub_1B4F649A4();
  *(v9 + 160) = v17;
  v18 = *(v17 - 8);
  *(v9 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v20 = sub_1B4F660A4();
  *(v9 + 184) = v20;
  v21 = *(v20 - 8);
  *(v9 + 192) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EEC768, 0, 0);
}

uint64_t sub_1B4EEC768()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 200);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v4 = *(v0 + 112);
  v30 = *(v0 + 104);
  v34 = *(v0 + 96);
  v32 = *(v0 + 88);
  v29 = *(v0 + 226);
  v33 = *(v0 + 80);
  v25 = *(v0 + 72);
  v5 = *(v0 + 56);
  v22 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v31 = *(v0 + 32);
  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB71500);
  v10._object = 0x80000001B4F83410;
  v11._countAndFlagsBits = 0xD000000000000080;
  v11._object = 0x80000001B4F83440;
  v10._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v10, v11);
  (*(v2 + 16))(v1, v6, v23);
  sub_1B4EF4F38(v5, v24);
  (*(v3 + 16))(v26, v22, v27);
  (*(v4 + 16))(v28, v25, v30);

  sub_1B4F66094();
  v13 = *(v34 + 16);
  v12 = *(v34 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 315;
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  v16 = sub_1B4F64ED4();
  *v15 = v0;
  v15[1] = sub_1B4EECA20;
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 16);
  v20 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v19, (v0 + 224), v17, ObjectType, v18, v16, v12, v20);
}

uint64_t sub_1B4EECA20()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1B4EF5D78;
  }

  else
  {
    v3 = sub_1B4EF5D64;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.replaceWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v27;
  *(v9 + 96) = v8;
  *(v9 + 226) = v26;
  *(v9 + 72) = a8;
  *(v9 + 80) = v25;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  v11 = *(v10 - 8);
  *(v9 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v13 = sub_1B4F66364();
  *(v9 + 128) = v13;
  v14 = *(v13 - 8);
  *(v9 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v17 = sub_1B4F649A4();
  *(v9 + 160) = v17;
  v18 = *(v17 - 8);
  *(v9 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v20 = sub_1B4F660A4();
  *(v9 + 184) = v20;
  v21 = *(v20 - 8);
  *(v9 + 192) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EECD68, 0, 0);
}

uint64_t sub_1B4EECD68()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 200);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v4 = *(v0 + 112);
  v30 = *(v0 + 104);
  v34 = *(v0 + 96);
  v32 = *(v0 + 88);
  v29 = *(v0 + 226);
  v33 = *(v0 + 80);
  v25 = *(v0 + 72);
  v5 = *(v0 + 56);
  v22 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v31 = *(v0 + 32);
  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB71500);
  v10._object = 0x80000001B4F83410;
  v11._countAndFlagsBits = 0xD000000000000081;
  v11._object = 0x80000001B4F834D0;
  v10._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v10, v11);
  (*(v2 + 16))(v1, v6, v23);
  sub_1B4EF4F38(v5, v24);
  (*(v3 + 16))(v26, v22, v27);
  (*(v4 + 16))(v28, v25, v30);

  sub_1B4F66094();
  v13 = *(v34 + 16);
  v12 = *(v34 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 358;
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  v16 = sub_1B4F64ED4();
  *v15 = v0;
  v15[1] = sub_1B4EECA20;
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 16);
  v20 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v19, (v0 + 224), v17, ObjectType, v18, v16, v12, v20);
}

uint64_t WorkoutPlanClient.createUnsavedWorkoutPlan(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v27;
  *(v9 + 96) = v8;
  *(v9 + 226) = v26;
  *(v9 + 72) = a8;
  *(v9 + 80) = v25;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = sub_1B4F64B44();
  *(v9 + 104) = v10;
  v11 = *(v10 - 8);
  *(v9 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  v13 = sub_1B4F66364();
  *(v9 + 128) = v13;
  v14 = *(v13 - 8);
  *(v9 + 136) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 144) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6648, &qword_1B4F79F78) - 8) + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  v17 = sub_1B4F649A4();
  *(v9 + 160) = v17;
  v18 = *(v17 - 8);
  *(v9 + 168) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v20 = sub_1B4F660A4();
  *(v9 + 184) = v20;
  v21 = *(v20 - 8);
  *(v9 + 192) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EED254, 0, 0);
}

uint64_t sub_1B4EED254()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 200);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v23 = *(v0 + 160);
  v24 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 144);
  v27 = *(v0 + 128);
  v28 = *(v0 + 120);
  v4 = *(v0 + 112);
  v30 = *(v0 + 104);
  v34 = *(v0 + 96);
  v32 = *(v0 + 88);
  v29 = *(v0 + 226);
  v33 = *(v0 + 80);
  v25 = *(v0 + 72);
  v5 = *(v0 + 56);
  v22 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 24);
  v31 = *(v0 + 32);
  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB71500);
  v10._object = 0x80000001B4F83410;
  v11._countAndFlagsBits = 0xD000000000000087;
  v11._object = 0x80000001B4F83560;
  v10._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v10, v11);
  (*(v2 + 16))(v1, v6, v23);
  sub_1B4EF4F38(v5, v24);
  (*(v3 + 16))(v26, v22, v27);
  (*(v4 + 16))(v28, v25, v30);

  sub_1B4F66094();
  v13 = *(v34 + 16);
  v12 = *(v34 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 224) = 348;
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  v16 = sub_1B4F64ED4();
  *v15 = v0;
  v15[1] = sub_1B4EED50C;
  v17 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 16);
  v20 = MEMORY[0x1E69CBE10];

  return TransportClient.sendRequest<A, B>(_:payload:)(v19, (v0 + 224), v17, ObjectType, v18, v16, v12, v20);
}

uint64_t sub_1B4EED50C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1B4EED6D8;
  }

  else
  {
    v3 = sub_1B4EED620;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EED620()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B4EED6D8()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  (*(v0[24] + 8))(v0[25], v0[23]);

  v5 = v0[1];
  v6 = v0[27];

  return v5();
}

uint64_t WorkoutPlanClient.repeatWorkoutPlan(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EED7B4, 0, 0);
}

uint64_t sub_1B4EED7B4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F835F0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 325;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F64A24();
  v10 = sub_1B4F64ED4();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CAE78];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t sub_1B4EED954()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D70, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t WorkoutPlanClient.makeWorkoutPlanSchedule(request:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDAAC, 0, 0);
}

uint64_t sub_1B4EEDAAC()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83610;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 319;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F66EF4();
  v10 = sub_1B4F66364();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CCC40];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t WorkoutPlanClient.updateWorkoutPlan(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDC70, 0, 0);
}

uint64_t sub_1B4EEDC70()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83640;
  v4._countAndFlagsBits = 0xD000000000000015;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 342;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F64ED4();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CB0C8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v10, (v0 + 56), v11, ObjectType, v9, v9, v5, v12);
}

uint64_t sub_1B4EEDDF0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EEDF24, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t WorkoutPlanClient.queryActiveWorkoutPlanProgressSnapshot()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEDF5C, 0, 0);
}

uint64_t sub_1B4EEDF5C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD000000000000028;
  v4._object = 0x80000001B4F83680;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 355;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F67044();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CCD50];
  v12 = MEMORY[0x1E69CCD58];

  return TransportClient.sendRequest<A>(_:)(v10, (v0 + 48), ObjectType, v9, v5, v11, v12);
}

uint64_t sub_1B4EEE0CC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EF5D74, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t WorkoutPlanClient.queryWorkoutPlanSummary(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE224, 0, 0);
}

uint64_t sub_1B4EEE224()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F836B0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 324;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F649A4();
  v10 = sub_1B4F660C4();
  *v8 = v0;
  v8[1] = sub_1B4EED954;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t WorkoutPlanClient.queryPendingWorkoutPlanSummary()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE3E4, 0, 0);
}

uint64_t sub_1B4EEE3E4()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F836D0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 345;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F660C4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CBE28];
  v12 = MEMORY[0x1E69CBE30];

  return TransportClient.sendRequest<A>(_:)(v10, (v0 + 48), ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanSummaries(request:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEE578, 0, 0);
}

uint64_t sub_1B4EEE578()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83700;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 356;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F66994();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6650, &qword_1B4F79FD0);
  sub_1B4E2F2A0(&qword_1EB8F6658, &qword_1EB8F6650, &qword_1B4F79FD0);
  sub_1B4EF4FA8();
  *v8 = v0;
  v8[1] = sub_1B4EEE754;
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CC7F8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v11, ObjectType, v9, v10, v5, v12);
}

uint64_t sub_1B4EEE754()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B4EF5D70;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EEE888()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83730;
  v4._countAndFlagsBits = 0xD000000000000021;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 346;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6670, &qword_1B4F79FE0);
  v10 = sub_1B4EF505C();
  v11 = sub_1B4EF50E0();
  *v8 = v0;
  v8[1] = sub_1B4EEEA14;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t sub_1B4EEEA14()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B4EF5D74;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.insertCompletedWorkoutPlanSummary(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEEB48, 0, 0);
}

uint64_t sub_1B4EEEB48()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83760;
  v3._countAndFlagsBits = 0xD000000000000025;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 317;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = sub_1B4F66AF4();
  *v8 = v0;
  v8[1] = sub_1B4EEE0CC;
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69CC9E8];
  v12 = MEMORY[0x1E69CC9F0];

  return TransportClient.sendRequest<A>(_:payload:)((v0 + 48), v10, ObjectType, v9, v5, v11, v12);
}

uint64_t WorkoutPlanClient.requestWorkoutPlans(state:)(uint64_t a1, char a2)
{
  *(v3 + 25) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEECD8, 0, 0);
}

uint64_t sub_1B4EEECD8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 25);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB71500);
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F83410;
  v6._object = 0x80000001B4F83790;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 26) = 326;
  *(v0 + 16) = v3;
  *(v0 + 24) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6690, &qword_1B4F79FF8);
  sub_1B4F65024();
  *(v0 + 48) = *(v0 + 40);
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6698, &qword_1B4F7A000);
  sub_1B4EF5194();
  sub_1B4EF5218();
  *v10 = v0;
  v10[1] = sub_1B4EEEEC4;
  v12 = MEMORY[0x1E69E6530];
  v13 = MEMORY[0x1E69CD4A0];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 32, (v0 + 26), v0 + 48, ObjectType, v12, v11, v8, v13);
}

uint64_t sub_1B4EEEEC4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B4EEEFF4;
  }

  else
  {
    v3 = sub_1B4EEEFD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.queryDailyNotificationSchedule(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEF02C, 0, 0);
}

uint64_t sub_1B4EEF02C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F837B0;
  v4._countAndFlagsBits = 0xD000000000000024;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 323;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F64964();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66B8, &qword_1B4F7A010);
  sub_1B4E2F2A0(&qword_1EDB6DBB0, &qword_1EB8F66B8, &qword_1B4F7A010);
  sub_1B4EF52CC();
  *v8 = v0;
  v8[1] = sub_1B4EEE754;
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE50];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v11, ObjectType, v9, v10, v5, v12);
}

uint64_t WorkoutPlanClient.queryNextIncompleteWorkoutReference(after:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEF22C, 0, 0);
}

uint64_t sub_1B4EEF22C()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001B4F837E0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 340;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F64964();
  v10 = sub_1B4F66484();
  *v8 = v0;
  v8[1] = sub_1B4E409B8;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = MEMORY[0x1E69CAE50];

  return TransportClient.sendRequest<A, B>(_:payload:)(v11, (v0 + 56), v12, ObjectType, v9, v10, v5, v13);
}

uint64_t WorkoutPlanClient.queryIncompleteMatchingWorkoutReferences(plan:workout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1B4F649A4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_1B4F67544();
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EEF4EC, 0, 0);
}

uint64_t sub_1B4EEF4EC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 24), *(v0 + 56));

  sub_1B4F67534();
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = 351;
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66C0, &qword_1B4F7A028);
  sub_1B4EF5380();
  sub_1B4EF5404();
  *v8 = v0;
  v8[1] = sub_1B4EEF654;
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = MEMORY[0x1E69CD1D8];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 120), v10, ObjectType, v11, v9, v5, v12);
}

uint64_t sub_1B4EEF654()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B4EEF800;
  }

  else
  {
    v3 = sub_1B4EEF768;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EEF768()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1B4EEF800()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_1B4EEF8A8()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83810;
  v3._countAndFlagsBits = 0xD000000000000025;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 40) = 347;
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1B4EEF9E8;

  return TransportClient.sendRequest(_:)((v0 + 40), ObjectType, v5);
}

uint64_t sub_1B4EEF9E8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B4EEFB1C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B4EEFB54()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F83410;
  v4._object = 0x80000001B4F83840;
  v4._countAndFlagsBits = 0xD000000000000023;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 48) = 321;
  v8 = swift_task_alloc();
  *(v0 + 32) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66E0, &qword_1B4F7A040);
  v10 = sub_1B4EF54B8();
  v11 = sub_1B4EF553C();
  *v8 = v0;
  v8[1] = sub_1B4EEFCE0;

  return TransportClient.sendRequest<A>(_:)(v0 + 16, (v0 + 48), ObjectType, v9, v5, v10, v11);
}

uint64_t sub_1B4EEFCE0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B4EEDF24;
  }

  else
  {
    v3 = sub_1B4EEFDF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.queryWorkoutPlanItemMetrics(planIdentifier:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EEFE30, 0, 0);
}

uint64_t sub_1B4EEFE30()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001B4F83870;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 56) = 350;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  v9 = sub_1B4F649A4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F66E0, &qword_1B4F7A040);
  sub_1B4EF54B8();
  sub_1B4EF553C();
  *v8 = v0;
  v8[1] = sub_1B4EEFFE4;
  v11 = *(v0 + 24);
  v12 = MEMORY[0x1E69CAE60];

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 56), v11, ObjectType, v9, v10, v5, v12);
}

uint64_t sub_1B4EEFFE4()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1B4E40AEC;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.requestWorkoutPlanAlternatives(workoutIdentifier:workoutPlan:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1B4F64ED4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_1B4F672A4();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6700, &qword_1B4F7A058) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_1B4F66384();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF02B0, 0, 0);
}

uint64_t sub_1B4EF02B0()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB71500);
  v3._object = 0x80000001B4F83410;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  v4._object = 0x80000001B4F838A0;
  v3._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6708, &qword_1B4F7A060);
  v5 = sub_1B4F649A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B4F6CF50;
  sub_1B4F64E84();
  v10 = sub_1B4E2C118(v9);
  v0[17] = v10;
  swift_setDeallocating();
  (*(v6 + 8))(v9 + v8, v5);
  swift_deallocClassInstance();
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_1B4EF04B8;
  v12 = v0[6];

  return WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(v10);
}

uint64_t sub_1B4EF04B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = sub_1B4EF0AAC;
  }

  else
  {
    v8 = *(v4 + 136);

    *(v4 + 160) = a1;
    v7 = sub_1B4EF05E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B4EF05E8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  sub_1B4E24518(*(v0 + 160), v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4EF55F0(*(v0 + 104));
    v4 = sub_1B4F65E24();
    sub_1B4EF5C70(&qword_1EB8F6710, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB8F0], v4);
    swift_willThrow();
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = *(v0 + 24);
    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    (*(v14 + 16))(v13, v17, v15);

    sub_1B4F66374();
    sub_1B4F67294();
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    ObjectType = swift_getObjectType();
    *(v0 + 184) = 328;
    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    v24 = sub_1B4F66974();
    *v23 = v0;
    v23[1] = sub_1B4EF08D0;
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = *(v0 + 16);
    v28 = MEMORY[0x1E69CCF90];

    return TransportClient.sendRequest<A, B>(_:payload:)(v27, (v0 + 184), v25, ObjectType, v26, v24, v20, v28);
  }
}

uint64_t sub_1B4EF08D0()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1B4EF0B40;
  }

  else
  {
    v3 = sub_1B4EF09E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EF09E4()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B4EF0AAC()
{
  v1 = v0[17];

  v2 = v0[19];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B4EF0B40()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t WorkoutPlanClient.queryWorkoutPlanTemplates(identifiers:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B4EF0C24, 0, 0);
}

uint64_t sub_1B4EF0C24()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB71500);
  v4._object = 0x80000001B4F83410;
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x80000001B4F838E0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 16);
  v14 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 64) = 335;
  *(v0 + 24) = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6718, &qword_1B4F7A070);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6720, &qword_1B4F7A078);
  v10 = sub_1B4EF5658();
  sub_1B4EF56DC();
  sub_1B4EF5790();
  sub_1B4EF5814();
  *v7 = v0;
  v7[1] = sub_1B4EF0DFC;

  return TransportClient.sendRequest<A, B>(_:payload:)(v0 + 16, (v0 + 64), v0 + 24, ObjectType, v8, v9, v14, v10);
}

uint64_t sub_1B4EF0DFC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1B4EF5D60;
  }

  else
  {
    v3 = sub_1B4EF5D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t WorkoutPlanClient.updateWorkoutPlanAlternatives(planIdentifier:reference:workoutIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1B4F66484();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1B4F649A4();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = sub_1B4F67224();
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4EF1090, 0, 0);
}

uint64_t sub_1B4EF1090()
{
  if (qword_1EDB714F8 != -1)
  {
    swift_once();
  }

  v26 = *(v0 + 128);
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  v22 = *(v0 + 88);
  v23 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 32);
  v24 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9 = sub_1B4F67C54();
  __swift_project_value_buffer(v9, qword_1EDB71500);
  v10._object = 0x80000001B4F83410;
  v11._countAndFlagsBits = 0xD00000000000004ALL;
  v11._object = 0x80000001B4F83910;
  v10._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v10, v11);
  (*(v2 + 16))(v1, v8, v22);
  (*(v4 + 16))(v3, v7, v23);

  sub_1B4F67214();
  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  ObjectType = swift_getObjectType();
  *(v0 + 152) = 330;
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  v16 = sub_1B4F64ED4();
  *v15 = v0;
  v15[1] = sub_1B4EF12B4;
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  v19 = *(v0 + 16);
  v20 = MEMORY[0x1E69CCF18];

  return TransportClient.sendRequest<A, B>(_:payload:)(v19, (v0 + 152), v17, ObjectType, v18, v16, v12, v20);
}

uint64_t sub_1B4EF12B4()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1B4EF1464;
  }

  else
  {
    v3 = sub_1B4EF13C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4EF13C8()
{
  v1 = v0[13];
  v2 = v0[10];
  (*(v0[15] + 8))(v0[16], v0[14]);

  v3 = v0[1];

  return v3();
}