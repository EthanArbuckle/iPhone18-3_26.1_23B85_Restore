uint64_t FeatureProvider.init(biomeManager:timestamp:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  *(v4 + 88) = MEMORY[0x277D84F90];
  v20 = v9;
  sub_275B0E5B0(0, 55, 0);
  v10 = 0;
  do
  {
    v11 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v10 + 32));
    v14 = *(v20 + 16);
    v13 = *(v20 + 24);
    if (v14 >= v13 >> 1)
    {
      v18 = v12;
      v19 = v11;
      sub_275B0E5B0((v13 > 1), v14 + 1, 1);
      v12 = v18;
      v11 = v19;
    }

    ++v10;
    *(v20 + 16) = v14 + 1;
    v15 = v20 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  while (v10 != 55);
  v16 = sub_275B31714(v20);

  *(v4 + 104) = v16;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  sub_275B075DC(a1, v4 + 16);
  *(v4 + 56) = a2;
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 80) = 0;
  *(v4 + 96) = a4;
  return v4;
}

uint64_t FeatureProvider.init(biomeManager:timestamp:offsetMins:offsetTimeInterval:pushTimestamp:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x277D84F90];
  *(v5 + 88) = MEMORY[0x277D84F90];
  v22 = v10;
  sub_275B0E5B0(0, 55, 0);
  v11 = 0;
  do
  {
    v12 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v11 + 32));
    v15 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v13;
      v20 = v12;
      sub_275B0E5B0((v14 > 1), v15 + 1, 1);
      v13 = v19;
      v12 = v20;
    }

    ++v11;
    *(v22 + 16) = v15 + 1;
    v16 = v22 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v11 != 55);
  v17 = sub_275B31714(v22);

  *(v5 + 104) = v17;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  sub_275B075DC(a1, v5 + 16);
  *(v5 + 56) = a2;
  *(v5 + 80) = a3;
  *(v5 + 64) = sub_275B7AC0C();
  *(v5 + 72) = a4;
  *(v5 + 96) = a5;
  return v5;
}

Swift::Void __swiftcall FeatureProvider.setFeatureNamesToBuildFeatureArray(_:)(Swift::OpaquePointer a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t FeatureProvider.biomeNotificationFeatureProvider.getter()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    sub_275B19CD4(v0 + 16, v5);
    v4 = *(v0 + 56);
    v2 = *(v0 + 72);
    type metadata accessor for BiomeNotificationFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 256) = 0u;
    *(v1 + 272) = 0u;
    *(v1 + 288) = 0u;
    *(v1 + 304) = 0;
    sub_275B075DC(v5, v1 + 16);
    *(v1 + 56) = v4;
    *(v1 + 72) = v2;
    *(v0 + 112) = v1;
  }

  return v1;
}

void *FeatureProvider.biomeFocusFeatureProvider.getter()
{
  if (v0[15])
  {
    v1 = v0[15];
  }

  else
  {
    sub_275B19CD4((v0 + 2), v5);
    v2 = v0[7];
    v3 = v0[8];
    type metadata accessor for BiomeFocusFeatureProvider();
    v1 = swift_allocObject();
    v1[9] = 0;
    sub_275B075DC(v5, (v1 + 2));
    v1[7] = v2;
    v1[8] = v3;
    v0[15] = v1;
  }

  return v1;
}

uint64_t FeatureProvider.appLaunchFeatureProvier.getter()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    sub_275B19CD4(v0 + 16, v5);
    v4 = *(v0 + 56);
    v2 = *(v0 + 72);
    type metadata accessor for BiomeAppLaunchFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    sub_275B075DC(v5, v1 + 16);
    *(v1 + 56) = v4;
    *(v1 + 72) = v2;
    *(v0 + 128) = v1;
  }

  return v1;
}

uint64_t FeatureProvider.usageTrackingFeatureProvider.getter()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = *(v0 + 56);
    type metadata accessor for UsageTrackingFeatureProvider();
    v1 = swift_allocObject();
    *(v1 + 16) = v2;
    *(v0 + 136) = v1;
  }

  return v1;
}

void *FeatureProvider.simpleTimeFeatureProvider.getter()
{
  if (v0[18])
  {
    v1 = v0[18];
  }

  else
  {
    v2 = v0[7];
    v3 = v0[12];
    v4 = v0[10];
    type metadata accessor for SimpleTimeFeatureProvider();
    v1 = swift_allocObject();
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    v0[18] = v1;
  }

  return v1;
}

uint64_t FeatureProvider.getFeatureByName(featureName:)(unsigned __int8 a1)
{
  if (a1 <= 0x17u)
  {
    if (a1 - 8 < 0x10)
    {
      FeatureProvider.appLaunchFeatureProvier.getter();
      v3 = BiomeAppLaunchFeatureProvider.getFeatureByName(_:)(a1);
LABEL_21:
      v5 = v3;

      return v5;
    }

    if (a1 - 2 >= 6)
    {
LABEL_20:
      FeatureProvider.simpleTimeFeatureProvider.getter();
      v3 = SimpleTimeFeatureProvider.getFeatureByName(_:)(a1);
      goto LABEL_21;
    }

    return _s33iCloudSubscriptionOptimizerDaemon23SnapshotFeatureProviderC03getF6ByNameyAA0F0CAA0fJ0OFZ_0(a1);
  }

  else
  {
    if (a1 <= 0x27u)
    {
      if (a1 - 24 >= 0xC)
      {
        FeatureProvider.biomeNotificationFeatureProvider.getter();
        v3 = BiomeNotificationFeatureProvider.getFeatureByNameICloudNotifications(_:)(a1);
      }

      else
      {
        FeatureProvider.biomeNotificationFeatureProvider.getter();
        v3 = BiomeNotificationFeatureProvider.getFeatureByNameAllNotifications(_:)(a1);
      }

      goto LABEL_21;
    }

    if (a1 < 0x31u)
    {
      FeatureProvider.biomeFocusFeatureProvider.getter();
      v3 = BiomeFocusFeatureProvider.getFeatureByName(_:)(a1);
      goto LABEL_21;
    }

    if (a1 > 0x33u)
    {
      if (a1 == 52)
      {

        return FeatureProvider.buildMultiArrayFeature()();
      }

      else
      {
        if (a1 == 53)
        {
          goto LABEL_20;
        }

        v11 = v1[5];
        v12 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
        (*(v12 + 144))(v1[7], v11, v12);
        type metadata accessor for Feature();
        v13 = swift_allocObject();
        *(v13 + 16) = 54;
        v14 = sub_275B7ACDC();

        v15 = [objc_opt_self() featureValueWithString_];

        result = v13;
        *(v13 + 24) = v15;
        *(v13 + 32) = 3;
      }
    }

    else
    {
      if (a1 != 49)
      {
        if (a1 == 50)
        {
          FeatureProvider.usageTrackingFeatureProvider.getter();
          v3 = UsageTrackingFeatureProvider.getFeatureByName(_:)(0x32u);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v6 = v1[5];
      v7 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v6);
      v8 = (*(v7 + 136))(v1[7], v6, v7);
      type metadata accessor for Feature();
      v9 = swift_allocObject();
      *(v9 + 16) = 49;
      v10 = [objc_opt_self() featureValueWithDouble_];
      result = v9;
      *(v9 + 24) = v10;
      *(v9 + 32) = 2;
    }
  }

  return result;
}

MLFeatureValue_optional __swiftcall FeatureProvider.featureValue(for:)(Swift::String a1)
{
  if (_s33iCloudSubscriptionOptimizerDaemon11FeatureNameO10fromStringyACSgSSFZ_0() == 55)
  {
    v3 = 0;
  }

  else
  {
    v4 = *((*(*v1 + 400))() + 24);

    v3 = v4;
  }

  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

uint64_t sub_275B30660(uint64_t result)
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

  result = sub_275B11170(result, v11, 1, v3);
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

uint64_t sub_275B30754(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_275B114E0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_275B30898(uint64_t result)
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

  result = sub_275B11064(result, v11, 1, v3);
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

void sub_275B3098C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_275B1160C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_275B30ACC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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
  v10 = *v3;
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
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_275B30C10(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_275B7B11C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_275B7B11C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_275B30D90(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_275B31598(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t *FeatureProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[15];

  v5 = v0[16];

  v6 = v0[17];

  v7 = v0[18];

  return v0;
}

uint64_t FeatureProvider.__deallocating_deinit()
{
  FeatureProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_275B30D90(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_275B7B11C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_275B7B0BC();
  *v1 = result;
  return result;
}

uint64_t sub_275B30E30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_275B7B26C();
  sub_275B7AD7C();
  v9 = sub_275B7B2AC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_275B7B1BC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_275B311E0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_275B30F80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  result = sub_275B7B07C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_275B7B26C();
      sub_275B7AD7C();
      result = sub_275B7B2AC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_275B311E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_275B30F80(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_275B5F4C0();
      goto LABEL_16;
    }

    sub_275B31360(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_275B7B26C();
  sub_275B7AD7C();
  result = sub_275B7B2AC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_275B7B1BC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_275B7B1FC();
  __break(1u);
  return result;
}

uint64_t sub_275B31360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33570, &unk_275B7D2D0);
  result = sub_275B7B07C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_275B7B26C();

      sub_275B7AD7C();
      result = sub_275B7B2AC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275B31598(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_275B7B11C();
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
      result = sub_275B7B11C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_275B319B4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33550, &qword_275B7D2B8);
            v9 = sub_275B4E4D4(v13, i, a3);
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
        type metadata accessor for FeatureProvider();
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

uint64_t sub_275B31714(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277C893F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_275B30E30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void *_s33iCloudSubscriptionOptimizerDaemon15FeatureProviderC019floatArrayToMLMultiH0ySo0jH0CSgSaySfGF_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33568, &qword_275B7D2E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_275B7D220;
  *(v3 + 32) = sub_275B7AF5C();
  *(v3 + 40) = sub_275B7AF5C();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_275B33DEC(v3, 65568);
  v7 = v5;
  if (v5)
  {
    if (v2)
    {
      v9 = 0;
      v10 = a1 + 32;
      do
      {
        v11 = v9 + 1;
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_275B7D220;
        *(v12 + 32) = sub_275B7AF5C();
        *(v12 + 40) = sub_275B7AF5C();
        v13 = *(v10 + 4 * v9);
        v14 = sub_275B7AEFC();
        sub_275B0F00C();
        v15 = sub_275B7AE6C();

        [v7 setObject:v14 forKeyedSubscript:v15];

        v9 = v11;
      }

      while (v2 != v11);
    }
  }

  else
  {
    if (qword_280A32CE8 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A33538);
    sub_275B7A95C();
    return 0;
  }

  return v7;
}

unint64_t sub_275B319B4()
{
  result = qword_280A33558;
  if (!qword_280A33558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A33550, &qword_275B7D2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33558);
  }

  return result;
}

uint64_t sub_275B31A18()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33578);
  __swift_project_value_buffer(v0, qword_280A33578);
  type metadata accessor for FeaturesAPI();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33598, &unk_275B7D300);
  return sub_275B7A97C();
}

uint64_t FeaturesAPI.__allocating_init(biomeManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v12 = *(a1 + 24);
  v3 = v12;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v12);
  v5 = *(v12 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4, v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  *(v2 + 40) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_1, v9, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t *FeaturesAPI.init(biomeManager:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5, v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_275B1B03C(v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t FeaturesAPI.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_275B33DEC(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_275B0F00C();
  v4 = sub_275B7AE6C();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_275B7944C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_275B33ED8()
{
  result = qword_280A33590;
  if (!qword_280A33590)
  {
    sub_275B79D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33590);
  }

  return result;
}

unint64_t sub_275B33F30(unint64_t result)
{
  v1 = *result;
  if (*(*result + 16))
  {
    v22 = MEMORY[0x277D84F90];
    sub_275B0E5B0(0, 55, 0);
    v2 = 0;
    v3 = v22;
    do
    {
      result = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v2 + 32));
      v22 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        v8 = result;
        v9 = v4;
        sub_275B0E5B0((v5 > 1), v6 + 1, 1);
        v4 = v9;
        result = v8;
        v3 = v22;
      }

      ++v2;
      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = result;
      *(v7 + 40) = v4;
    }

    while (v2 != 55);
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = (v1 + 40);
      while (v11 < *(v1 + 16))
      {
        v14 = *(v12 - 1);
        v13 = *v12;
        v22 = v14;
        v23 = v13;
        MEMORY[0x28223BE20](result, v4);
        v21[2] = &v22;

        if ((sub_275B0B5F0(sub_275B0F978, v21, v3) & 1) == 0)
        {
          v22 = 0;
          v23 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B82700);
          MEMORY[0x277C89240](v14, v13);

          MEMORY[0x277C89240](0xD00000000000001CLL, 0x8000000275B82720);
          v15 = MEMORY[0x277C89330](v3, MEMORY[0x277D837D0]);
          v17 = v16;

          MEMORY[0x277C89240](v15, v17);

          v18 = v22;
          v19 = v23;
          sub_275B2163C();
          swift_allocError();
          *v20 = v18;
          v20[1] = v19;
          return swift_willThrow();
        }

        ++v11;
        v12 += 2;
        if (v10 == v11)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_275B341A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79CBC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B3420C(uint64_t a1)
{
  v2 = sub_275B79CBC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B34268(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79CBC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B342F8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A335A0);
  __swift_project_value_buffer(v0, qword_280A335A0);
  type metadata accessor for FeatureUtils();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335D0, &unk_275B7D340);
  return sub_275B7A97C();
}

uint64_t static FeatureUtils.getUsedDiskBytes()()
{
  v0 = sub_275B34940(MEMORY[0x277CBEA50], MEMORY[0x277CC8CA8]);
  if (v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_275B34940(MEMORY[0x277CBEA00], MEMORY[0x277CC8CB0]);
  if (v4)
  {
    return 0;
  }

  v6 = __OFSUB__(v2, v3);
  result = v2 - v3;
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275B3446C()
{

  v0 = sub_275B7ADAC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_275B7ADAC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_275B7B1BC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_275B7ADAC();
      v3 = v5;
    }

    while (v5);
  }

  sub_275B7ADAC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC18getDeviceModelNameSSyFZ_0()
{
  v45 = *MEMORY[0x277D85DE8];
  v0 = sub_275B7B2DC();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(&v38, 0x500uLL);
  uname(&v38);
  v32 = *&v38.machine[16];
  v33 = *v38.machine;
  v30 = *&v38.machine[48];
  v31 = *&v38.machine[32];
  v35 = *&v38.machine[80];
  v36 = *&v38.machine[64];
  v34 = *&v38.machine[96];
  *(&v43 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335B8, &qword_275B7D320);
  v5 = swift_allocObject();
  *&v42 = v5;
  v6 = v32;
  v5[1] = v33;
  v5[2] = v6;
  v7 = v30;
  v5[3] = v31;
  v5[4] = v7;
  v8 = *&v38.machine[112];
  v9 = v35;
  v5[5] = v36;
  v5[6] = v9;
  v5[7] = v34;
  v5[8] = v8;
  v10 = *&v38.machine[144];
  v5[9] = *&v38.machine[128];
  v5[10] = v10;
  v11 = *&v38.machine[176];
  v5[11] = *&v38.machine[160];
  v5[12] = v11;
  v12 = *&v38.machine[208];
  v5[13] = *&v38.machine[192];
  v5[14] = v12;
  v13 = *&v38.machine[240];
  v5[15] = *&v38.machine[224];
  v5[16] = v13;
  sub_275B7B2BC();
  *&v36 = v4;
  *&v35 = sub_275B7B2CC();
  sub_275B7B0DC();
  sub_275B7B15C();
  if (*(&v44 + 1))
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    v16 = MEMORY[0x277D84F70];
    v17 = MEMORY[0x277D84900];
    do
    {
      v41[0] = v42;
      v41[1] = v43;
      v41[2] = v44;
      sub_275B35970(v41, &v39);

      if (swift_dynamicCast() && v37)
      {
        if ((v37 & 0x80) != 0)
        {
          __break(1u);
        }

        v39 = v37;
        v18 = sub_275B7AD6C();
        v19 = v14;
        v20 = v17;
        v21 = v16;
        v22 = v18;
        v24 = v23;
        v39 = v19;
        v40 = v15;

        v25 = v22;
        v16 = v21;
        v17 = v20;
        MEMORY[0x277C89240](v25, v24);

        v14 = v39;
        v15 = v40;
      }

      sub_275B359E0(v41);
      sub_275B7B15C();
    }

    while (*(&v44 + 1));
  }

  else
  {
    v14 = 0;
  }

  (*(v28 + 8))(v36, v29);
  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_275B34940(void **a1, uint64_t (*a2)(uint64_t))
{
  v24 = a2;
  v3 = sub_275B7942C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275B794EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = NSHomeDirectory();
  sub_275B7AD0C();

  sub_275B7947C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335C8, &unk_275B7D330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_275B7D0A0;
  *(inited + 32) = v15;
  v18 = v15;
  sub_275B7902C(inited);
  swift_setDeallocating();
  sub_275B35A48(inited + 32);
  sub_275B7946C();

  v20 = v24(v19);
  v22 = v21;
  (*(v4 + 8))(v8, v3);
  (*(v10 + 8))(v14, v9);
  if (v22)
  {
    return 0;
  }

  else
  {
    return v20 / 1000000000;
  }
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC33getSimplifiedStringForDeviceModelyS2SFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_275B3446C())
  {
    return 1684107369;
  }

  v5 = sub_275B3446C();

  if (v5)
  {
    goto LABEL_12;
  }

  v6 = sub_275B3446C();

  if (v6)
  {
    goto LABEL_12;
  }

  v7 = sub_275B3446C();

  if (v7)
  {
    goto LABEL_12;
  }

  v8 = sub_275B3446C();

  if (v8)
  {
    goto LABEL_12;
  }

  v9 = sub_275B3446C();

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = sub_275B3446C();

  if (v10)
  {
    goto LABEL_12;
  }

  v11 = sub_275B3446C();

  if (v11 & 1) != 0 || (, v12 = sub_275B3446C(), , (v12) || (, v13 = sub_275B3446C(), , (v13))
  {
LABEL_12:

    return 0x646F6D7265646C6FLL;
  }

  if (a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000312CLL || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000322CLL || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000342CLL || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000352CLL || (sub_275B7B1BC() & 1) != 0)
  {
    return 0x38656E6F687069;
  }

  v14 = 0x78656E6F687069;
  if (a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000332CLL || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3031656E6F685069 && a2 == 0xEA0000000000362CLL || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3131656E6F685069 && a2 == 0xEA0000000000322CLL)
  {
    return 0x78656E6F687069;
  }

  v15 = sub_275B7B1BC();
  v17 = a1 == 0x3131656E6F685069 && a2 == 0xEA0000000000342CLL;
  if ((v15 & 1) != 0 || v17)
  {
    return v14;
  }

  v18 = sub_275B7B1BC();
  v19 = a1 == 0x3131656E6F685069 && a2 == 0xEA0000000000362CLL;
  v20 = v19;
  if (v18 & 1) != 0 || v20 || (sub_275B7B1BC() & 1) != 0 || a1 == 0x3131656E6F685069 && a2 == 0xEA0000000000382CLL || (sub_275B7B1BC())
  {
    return v14;
  }

  v14 = 0x3131656E6F687069;
  if (a1 == 0x3231656E6F685069 && a2 == 0xEA0000000000312CLL)
  {
    return 0x3131656E6F687069;
  }

  v21 = sub_275B7B1BC();
  v22 = a1 == 0x3231656E6F685069 && a2 == 0xEA0000000000332CLL;
  v23 = v22;
  if (v21)
  {
    return v14;
  }

  result = 0x3131656E6F687069;
  if (!v23)
  {
    v24 = sub_275B7B1BC();
    v26 = a1 == 0x3231656E6F685069 && a2 == 0xEA0000000000352CLL;
    v27 = 0x3131656E6F687069;
    if (v24)
    {
      return v27;
    }

    result = 0x3131656E6F687069;
    if (v26)
    {
      return result;
    }

    v28 = sub_275B7B1BC();
    v29 = a1 == 0x3231656E6F685069 && a2 == 0xEA0000000000382CLL;
    v30 = v29;
    v27 = 0x3131656E6F687069;
    if (v28)
    {
      return v27;
    }

    result = 0x3131656E6F687069;
    if (!v30)
    {
      if (sub_275B7B1BC())
      {
        return 0x3131656E6F687069;
      }

      if (a1 == 0x3331656E6F685069 && a2 == 0xEA0000000000312CLL)
      {
        return 0x3231656E6F687069;
      }

      v31 = sub_275B7B1BC();
      v32 = a1 == 0x3331656E6F685069 && a2 == 0xEA0000000000322CLL;
      v33 = v32;
      if (v31)
      {
        return 0x3231656E6F687069;
      }

      result = 0x3231656E6F687069;
      if (!v33)
      {
        v34 = sub_275B7B1BC();
        v36 = a1 == 0x3331656E6F685069 && a2 == 0xEA0000000000332CLL;
        v27 = 0x3231656E6F687069;
        if ((v34 & 1) == 0)
        {
          result = 0x3231656E6F687069;
          if (v36)
          {
            return result;
          }

          v37 = sub_275B7B1BC();
          v38 = a1 == 0x3331656E6F685069 && a2 == 0xEA0000000000342CLL;
          v39 = v38;
          v27 = 0x3231656E6F687069;
          if ((v37 & 1) == 0)
          {
            result = 0x3231656E6F687069;
            if (!v39)
            {
              if (sub_275B7B1BC())
              {
                return 0x3231656E6F687069;
              }

              else
              {
                if (a1 == 0x3431656E6F685069 && a2 == 0xEA0000000000322CLL)
                {
                  return 0x3331656E6F687069;
                }

                v40 = sub_275B7B1BC();
                v41 = a1 == 0x3431656E6F685069 && a2 == 0xEA0000000000332CLL;
                v42 = v41;
                if ((v40 & 1) != 0 || v42)
                {
                  return 0x3331656E6F687069;
                }

                v43 = sub_275B7B1BC();
                v44 = a1 == 0x3431656E6F685069 && a2 == 0xEA0000000000342CLL;
                v45 = v44;
                if ((v43 & 1) != 0 || v45)
                {
                  return 0x3331656E6F687069;
                }

                v46 = sub_275B7B1BC();
                v47 = a1 == 0x3431656E6F685069 && a2 == 0xEA0000000000352CLL;
                v48 = v47;
                if ((v46 & 1) != 0 || v48)
                {
                  return 0x3331656E6F687069;
                }

                v49 = sub_275B7B1BC();
                v50 = a1 == 0x3431656E6F685069 && a2 == 0xEA0000000000362CLL;
                v51 = v50;
                if (v49)
                {
                  return 0x3331656E6F687069;
                }

                else
                {
                  result = 0x3331656E6F687069;
                  if (!v51)
                  {
                    if (sub_275B7B1BC())
                    {
                      return 0x3331656E6F687069;
                    }

                    else
                    {
                      return 0x73726568746FLL;
                    }
                  }
                }
              }
            }

            return result;
          }
        }

        return v27;
      }
    }
  }

  return result;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon12FeatureUtilsC13buildOHEArrayySaySSG5names_SaySfG6valuestAE_S2StFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v43 = MEMORY[0x277D84F90];
    sub_275B0E5B0(0, v6, 0);
    v7 = v43;
    v9 = (a1 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = sub_275B7AD2C();
      v44 = v7;
      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = v12;
        v19 = v13;
        sub_275B0E5B0((v14 > 1), v15 + 1, 1);
        v13 = v19;
        v12 = v18;
        v7 = v44;
      }

      *(v7 + 2) = v16;
      v17 = &v7[16 * v15];
      *(v17 + 4) = v12;
      *(v17 + 5) = v13;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v16 = *(MEMORY[0x277D84F90] + 16);
  }

  v20 = sub_275B7AEAC();
  v21 = v20;
  *(v20 + 16) = v16 + 1;
  *(v20 + 32) = 0;
  v22 = v20 + 32;
  if (v16)
  {
    bzero((v20 + 36), 4 * v16);
  }

  v23 = sub_275B7AD2C();
  v25 = v24;
  v26 = *(v7 + 2);
  if (v26)
  {
    v27 = v23;
    v28 = 0;
    v29 = v7 + 40;
    while (1)
    {
      v30 = *(v29 - 1) == v27 && *v29 == v25;
      if (v30 || (sub_275B7B1BC() & 1) != 0)
      {
        break;
      }

      ++v28;
      v29 += 2;
      if (v26 == v28)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:

    v28 = v16;
    if (v16 < *(v21 + 16))
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v28 >= *(v21 + 16))
  {
    __break(1u);
    return result;
  }

LABEL_21:
  *(v22 + 4 * v28) = 1065353216;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_275B11064(0, *(v7 + 2) + 1, 1, v7);
  }

  v33 = *(v7 + 2);
  v32 = *(v7 + 3);
  v34 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v7 = sub_275B11064((v32 > 1), v33 + 1, 1, v7);
  }

  *(v7 + 2) = v34;
  v35 = &v7[16 * v33];
  *(v35 + 4) = 0x73726568746FLL;
  *(v35 + 5) = 0xE600000000000000;
  v45 = MEMORY[0x277D84F90];
  sub_275B0E5B0(0, v34, 0);
  v36 = (v7 + 40);
  do
  {
    v37 = *(v36 - 1);
    v38 = *v36;

    MEMORY[0x277C89240](95, 0xE100000000000000);
    MEMORY[0x277C89240](v37, v38);

    v40 = *(v45 + 16);
    v39 = *(v45 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_275B0E5B0((v39 > 1), v40 + 1, 1);
    }

    *(v45 + 16) = v40 + 1;
    v41 = v45 + 16 * v40;
    *(v41 + 32) = a4;
    *(v41 + 40) = a5;
    v36 += 2;
    --v34;
  }

  while (v34);

  return v45;
}

uint64_t sub_275B35970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335C0, &qword_275B7D328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B359E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335C0, &qword_275B7D328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B35A48(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

iCloudSubscriptionOptimizerDaemon::FocusSemanticModeIdentifier_optional __swiftcall FocusSemanticModeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_275B7B17C();

  if (v1 == 1)
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_FocusSemanticModeIdentifier_drivingMode;
  }

  else
  {
    v2.value = iCloudSubscriptionOptimizerDaemon_FocusSemanticModeIdentifier_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275B35B24(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "isturb.mode.default";
  }

  else
  {
    v2 = "secondsSincePush";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "isturb.mode.default";
  }

  else
  {
    v4 = "secondsSincePush";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_275B7B1BC();
  }

  return v5 & 1;
}

unint64_t sub_275B35BCC()
{
  result = qword_280A335D8;
  if (!qword_280A335D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A335D8);
  }

  return result;
}

uint64_t sub_275B35C20()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B35C98()
{
  *v0;
  sub_275B7AD7C();
}

uint64_t sub_275B35CFC()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B35D70@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_275B7B17C();

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

void sub_275B35DD0(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "isturb.mode.default";
  }

  else
  {
    v2 = "secondsSincePush";
  }

  *a1 = 0xD000000000000023;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for SystemActivity.ActivityType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SystemActivity.ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static ICloudAccount.hashedAltDsid()()
{
  result = sub_275B35FF8(&selRef_aa_altDSID);
  if (v1)
  {
    v2 = sub_275B7A98C();

    return v2;
  }

  return result;
}

uint64_t sub_275B35FF8(SEL *a1)
{
  v2 = [objc_opt_self() defaultStore];
  if (!v2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  }

  v3 = v2;
  v4 = [v2 aa_primaryAppleAccount];

  if (!v4)
  {
    return 0;
  }

  v5 = [v4 *a1];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_275B7AD0C();

  return v6;
}

uint64_t ICloudNotifBiomeEvent.init(timestamp:notifTitle:notifId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ICloudNotifBiomeEvent.notifTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ICloudNotifBiomeEvent.notifTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ICloudNotifBiomeEvent.notifId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ICloudNotifBiomeEvent.notifId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_275B36228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s33iCloudSubscriptionOptimizerDaemon21ICloudNotifBiomeEventV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon21ICloudNotifBiomeEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if ((sub_275B7ABEC() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_275B7B1BC() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_275B7B1BC();
}

uint64_t sub_275B36308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275B36350(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_275B363A8()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A335E0);
  __swift_project_value_buffer(v0, qword_280A335E0);
  type metadata accessor for ICloudNotificationXpcClient();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33610, &qword_275B7D4F8);
  return sub_275B7A97C();
}

uint64_t sub_275B36424(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = *v4;
  v8 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v9 = sub_275B7ACDC();
  v10 = [v8 initWithMachServiceName:v9 options:0];

  v11 = [objc_opt_self() interfaceWithProtocol_];
  [v10 setRemoteObjectInterface_];

  [v10 resume];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v7;
  v27 = sub_275B36FD8;
  v28 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_275B36A24;
  v26 = &block_descriptor_4;
  v13 = _Block_copy(&aBlock);

  v14 = [v10 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_275B7B01C();
  swift_unknownObjectRelease();
  if (qword_280A32D00 != -1)
  {
    swift_once();
  }

  v15 = sub_275B7A96C();
  __swift_project_value_buffer(v15, qword_280A335E0);
  aBlock = 0;
  v24 = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000022, 0x8000000275B82830);
  sub_275B7B0EC();
  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A91C();

  sub_275B0C76C(v29, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A335F8, &unk_275B7D4E8);
  if (swift_dynamicCast())
  {
    aBlock = 0;
    v24 = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD000000000000038, 0x8000000275B82860);
    MEMORY[0x277C89240]();
    MEMORY[0x277C89240](93, 0xE100000000000000);
    sub_275B7A91C();

    sub_275B7AA9C();
    v16 = sub_275B7AA8C();
    v17 = sub_275B7ACDC();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = v7;
    v27 = sub_275B37050;
    v28 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_275B36E60;
    v26 = &block_descriptor_7;
    v19 = _Block_copy(&aBlock);

    [v22 displayDelayedOfferWithContext:v17 completion:v19];
    _Block_release(v19);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_275B36FFC();
    v20 = swift_allocError();
    a3();
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_275B368E4(uint64_t a1, void (*a2)(void))
{
  if (qword_280A32D00 != -1)
  {
    swift_once();
  }

  v3 = sub_275B7A96C();
  __swift_project_value_buffer(v3, qword_280A335E0);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD00000000000001ALL, 0x8000000275B82950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
  sub_275B7B0EC();
  MEMORY[0x277C89240](46, 0xE100000000000000);
  sub_275B7A95C();

  v4 = sub_275B7943C();
  a2();
}

void sub_275B36A24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_275B36A8C(void *a1, uint64_t a2, void (*a3)(void *))
{
  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, &v19);
  type metadata accessor for XpcCallToIndFinishedEvent();
  swift_allocObject();
  sub_275B19CD4(&v19, v18);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v17[0] = qword_28140F700;
  v17[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000014, 0x8000000275B7F540);
  sub_275B19CD4(v18, v17);
  v6 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  v7 = __swift_destroy_boxed_opaque_existential_1(&v19);
  (*(*a2 + 96))(v7);
  sub_275B7AB1C();
  sub_275B79B7C();

  if (a1)
  {
    v8 = a1;
    if (qword_280A32D00 != -1)
    {
      swift_once();
    }

    v9 = sub_275B7A96C();
    __swift_project_value_buffer(v9, qword_280A335E0);
    v19 = 0x5B3D726F727265;
    v20 = 0xE700000000000000;
    v18[0] = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33AC0, &unk_275B7C2A0);
    v11 = sub_275B7AD1C();
    MEMORY[0x277C89240](v11);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    v12 = v19;
    v13 = v20;
    v19 = 0xD000000000000034;
    v20 = 0x8000000275B82910;
    MEMORY[0x277C89240](v12, v13);

    sub_275B7A95C();

    sub_275B79B5C();
  }

  else
  {
    if (qword_280A32D00 != -1)
    {
      swift_once();
    }

    v15 = sub_275B7A96C();
    __swift_project_value_buffer(v15, qword_280A335E0);
    sub_275B7A91C();
    sub_275B79B5C();
  }

  (*(*v6 + 200))(v14);
  a3(a1);
}

void sub_275B36E60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_275B36ED4()
{
  sub_275B7B26C();
  MEMORY[0x277C89720](0);
  return sub_275B7B2AC();
}

uint64_t sub_275B36F40()
{
  sub_275B7B26C();
  MEMORY[0x277C89720](0);
  return sub_275B7B2AC();
}

void sub_275B36FD8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_275B368E4(a1, *(v1 + 16));
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275B36FFC()
{
  result = qword_280A33600;
  if (!qword_280A33600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33600);
  }

  return result;
}

uint64_t sub_275B37050(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_275B36A8C(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t getEnumTagSinglePayload for ModelType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ModelType(_WORD *result, int a2, int a3)
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

unint64_t sub_275B37140()
{
  result = qword_280A33618;
  if (!qword_280A33618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33618);
  }

  return result;
}

uint64_t sub_275B371D4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id static ISOPBSubscriptiondPetMessage.initWithVersions()()
{
  result = [objc_allocWithZone(MEMORY[0x277D7F8A8]) init];
  if (result)
  {
    v1 = result;
    [result setDaemonVersion_];
    return v1;
  }

  return result;
}

unint64_t KnownAppBundleId.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    v4 = 0x6E776F6E4B6E75;
    if (a1 == 6)
    {
      v4 = 0xD000000000000019;
    }

    v5 = 0xD000000000000013;
    if (a1 == 4)
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000016;
    if (a1 != 2)
    {
      v1 = 0xD000000000000015;
    }

    v2 = 0xD000000000000010;
    if (a1)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_275B37420(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE700000000000000;
    if (a1 == 6)
    {
      v10 = 0xD000000000000019;
    }

    else
    {
      v10 = 0x6E776F6E4B6E75;
    }

    if (a1 == 6)
    {
      v9 = 0x8000000275B7F610;
    }

    v11 = 0x8000000275B7F5D0;
    v12 = 0xD000000000000014;
    if (a1 != 4)
    {
      v12 = 0xD000000000000013;
      v11 = 0x8000000275B7F5F0;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x8000000275B7F400;
    v4 = 0xD000000000000016;
    if (a1 != 2)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000275B7F5B0;
    }

    v5 = 0x8000000275B7F3E0;
    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000019;
      v5 = 0x8000000275B7F3C0;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0x8000000275B7F400;
        if (v7 != 0xD000000000000016)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0x8000000275B7F5B0;
        if (v7 != 0xD000000000000015)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_47;
    }

    if (!a2)
    {
      v13 = 0x8000000275B7F3E0;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "com.apple.mobileslideshow";
LABEL_40:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000019)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v13 = 0x8000000275B7F5D0;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0x8000000275B7F5F0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_47;
  }

  if (a2 == 6)
  {
    v14 = "com.apple.iCloud.FollowUp";
    goto LABEL_40;
  }

  v13 = 0xE700000000000000;
  if (v7 != 0x6E776F6E4B6E75)
  {
LABEL_49:
    v15 = sub_275B7B1BC();
    goto LABEL_50;
  }

LABEL_47:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_275B37684()
{
  sub_275B7AD7C();
}

uint64_t sub_275B377C0()
{
  sub_275B7B26C();
  sub_275B7AD7C();

  return sub_275B7B2AC();
}

uint64_t sub_275B37948@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s33iCloudSubscriptionOptimizerDaemon16KnownAppBundleIdO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_275B37978(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0xE700000000000000;
    v9 = 0x6E776F6E4B6E75;
    if (v2 == 6)
    {
      v9 = 0xD000000000000019;
      v3 = 0x8000000275B7F610;
    }

    v5 = 0x8000000275B7F5D0;
    v10 = 0xD000000000000013;
    if (v2 == 4)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x8000000275B7F5F0;
    }

    v7 = *v1 <= 5u;
    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x8000000275B7F400;
    v4 = 0xD000000000000016;
    if (v2 != 2)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000275B7F5B0;
    }

    v5 = 0x8000000275B7F3E0;
    v6 = 0xD000000000000010;
    if (*v1)
    {
      v6 = 0xD000000000000019;
      v5 = 0x8000000275B7F3C0;
    }

    v7 = *v1 <= 1u;
    if (*v1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon16KnownAppBundleIdO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_275B7B17C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_275B37AE4()
{
  result = qword_280A33620;
  if (!qword_280A33620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33620);
  }

  return result;
}

unint64_t sub_275B37B3C()
{
  result = qword_280A33628;
  if (!qword_280A33628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A33630, &qword_275B7D870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33628);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KnownAppBundleId(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnownAppBundleId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 LabeledNotification.init(notification:action:timeDiff:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 32);
  result = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = result;
  *(a4 + 32) = v4;
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t LabeledNotification.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

__n128 LabeledNotification.notification.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_275B37E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s33iCloudSubscriptionOptimizerDaemon19LabeledNotificationV2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon19LabeledNotificationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  if ((sub_275B7ABEC() & 1) == 0)
  {
    return 0;
  }

  v14 = v5 == v10 && v6 == v11;
  if (!v14 && (sub_275B7B1BC() & 1) == 0)
  {
    return 0;
  }

  v15 = v7 == v12 && v8 == v13;
  if (!v15 && (sub_275B7B1BC() & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v16 = a1[6];
  v17 = a2[6];

  return MEMORY[0x2821E93A0](v16, v17);
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

uint64_t sub_275B37F90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275B37FD8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t MLDelayPerformanceEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F520);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MLDelayPerformanceEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F520);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MLDelayPerformanceEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t MLDelayPerformanceEvent.addPercentile(_:)()
{
  sub_275B79B4C();
}

uint64_t MLDelayPerformanceEvent.addChosenOffsetIndex(_:)()
{
  sub_275B79B7C();
}

uint64_t MLDelayPerformanceEvent.addLabel(_:)()
{
  sub_275B79B5C();
}

uint64_t sub_275B3859C()
{
  sub_275B79B4C();
}

uint64_t MLDelayPerformanceEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t MLDelayProvider.__allocating_init(withModelProvider:withDaemonStateManager:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_275B7989C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 48);
  v11 = *(v2 + 52);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  sub_275B3A540();

  sub_275B7968C();
  sub_275B3A598(v9, v12 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);

  return v12;
}

uint64_t sub_275B387EC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33638);
  __swift_project_value_buffer(v0, qword_280A33638);
  type metadata accessor for MLDelayProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33670, &qword_275B7DA38);
  return sub_275B7A97C();
}

uint64_t MLDelayProvider.init(withModelProvider:withDaemonStateManager:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_275B3A3F0(a1, a2);

  return v2;
}

uint64_t sub_275B388B4()
{
  sub_275B7985C();
  sub_275B7980C();
  sub_275B7987C();
  return sub_275B7983C();
}

uint64_t MLDelayProvider.__allocating_init(withModelProvider:withDaemonStateManager:litmusInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_275B3A598(a3, v9 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);
  return v9;
}

uint64_t MLDelayProvider.init(withModelProvider:withDaemonStateManager:litmusInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_275B3A598(a3, v3 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);
  return v3;
}

uint64_t MLDelayProvider.featureProviderInitializer(biomeManager:timestamp:offsetMins:offsetTimeInterval:pushTimestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_275B19CD4(a1, v22);
  type metadata accessor for FeatureProvider();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  *(v9 + 88) = MEMORY[0x277D84F90];
  v21 = v10;
  sub_275B0E5B0(0, 55, 0);
  v11 = 0;
  do
  {
    v12 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v11 + 32));
    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      v19 = v13;
      v20 = v12;
      sub_275B0E5B0((v14 > 1), v15 + 1, 1);
      v13 = v19;
      v12 = v20;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    v16 = v21 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
  }

  while (v11 != 55);
  v17 = sub_275B31714(v21);

  *(v9 + 104) = v17;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0;
  sub_275B075DC(v22, v9 + 16);
  *(v9 + 56) = a2;
  *(v9 + 80) = a3;
  *(v9 + 64) = sub_275B7AC0C();
  *(v9 + 72) = a4;
  *(v9 + 96) = a5;
  return v9;
}

uint64_t MLDelayProvider.setLitmusInfo(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo;
  swift_beginAccess();
  sub_275B3A6E8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MLDelayProvider.getModel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275B7989C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (MLDelayProvider.shouldUseExperimentModel()())
  {
    v9 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo;
    swift_beginAccess();
    sub_275B3A7B4(v2 + v9, v8);
    v10 = _s33iCloudSubscriptionOptimizerDaemon15MLDelayProviderC12getModelName14fromLitmusInfoSS01iabC4Core0kL0V_tFZ_0();
    v12 = v11;
    sub_275B3A818(v8);
    v13 = *(**(v2 + 16) + 96);

    v13(&v27, v10, v12);

    if (v28)
    {
      sub_275B075DC(&v27, a1);
      if (qword_280A32D08 != -1)
      {
        swift_once();
      }

      v14 = sub_275B7A96C();
      __swift_project_value_buffer(v14, qword_280A33638);
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000034, 0x8000000275B82AC0);
      MEMORY[0x277C89240](v10, v12);

      MEMORY[0x277C89240](93, 0xE100000000000000);
LABEL_13:
      sub_275B7A91C();
    }

    sub_275B3A74C(&v27);
  }

  v15 = *(v2 + 16);
  v16 = qword_280A32DC8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName;
  v18 = *algn_280A35BD8;
  (*(*v15 + 96))(&v27, static OTANotificationDelayModel.kDefaultOTANotificationDelayModelName, *algn_280A35BD8);

  if (v28)
  {
    sub_275B075DC(&v27, a1);
    if (qword_280A32D08 != -1)
    {
      swift_once();
    }

    v19 = sub_275B7A96C();
    __swift_project_value_buffer(v19, qword_280A33638);
    *&v27 = 91;
    *(&v27 + 1) = 0xE100000000000000;
    MEMORY[0x277C89240](v17, v18);
    MEMORY[0x277C89240](93, 0xE100000000000000);
    v20 = v27;
    *&v27 = 0xD000000000000030;
    *(&v27 + 1) = 0x8000000275B82A80;
    MEMORY[0x277C89240](v20, *(&v20 + 1));

    goto LABEL_13;
  }

  sub_275B3A74C(&v27);
  v22 = *(**(v2 + 16) + 112);

  v22(&v27, v23);

  if (v28)
  {
    sub_275B075DC(&v27, a1);
    if (qword_280A32D08 != -1)
    {
      swift_once();
    }

    v24 = sub_275B7A96C();
    __swift_project_value_buffer(v24, qword_280A33638);
    return sub_275B7A91C();
  }

  else
  {
    sub_275B3A74C(&v27);
    sub_275B1814C();
    swift_allocError();
    *v25 = 0xD00000000000003DLL;
    v25[1] = 0x8000000275B82A20;
    return swift_willThrow();
  }
}

Swift::Bool __swiftcall MLDelayProvider.shouldUseExperimentModel()()
{
  swift_beginAccess();
  v0 = sub_275B7984C();
  swift_endAccess();
  if (v0 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v1 = sub_275B797FC();
  swift_endAccess();
  if (v1 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  v2 = sub_275B7986C();
  swift_endAccess();
  if (v2 < 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_275B7982C();
  swift_endAccess();
  v3 = sub_275B7981C();
  v4 = sub_275B7981C();
  result = 1;
  if (v3 != v4)
  {
    swift_beginAccess();
    sub_275B7982C();
    swift_endAccess();
    v6 = sub_275B7981C();
    return v6 == sub_275B7981C();
  }

  return result;
}

int64_t MLDelayProvider.getDelayDecision(biomeManager:inferenceTimestamp:maxDelayTimestamp:pushTimestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  sub_275B7AA9C();
  v8 = sub_275B7AA8C();
  if (qword_280A32D10 != -1)
  {
LABEL_39:
    swift_once();
  }

  sub_275B7A9CC();
  MLDelayProvider.getModel()(v66);
  if (v5)
  {
  }

  strcpy(v65, "Model used: ");
  BYTE5(v65[1]) = 0;
  HIWORD(v65[1]) = -5120;
  v11 = v67;
  v10 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v12 = (*(*(v10 + 8) + 16))(v11);
  MEMORY[0x277C89240](v12);

  sub_275B7A9CC();

  if ((sub_275B7ABFC() & 1) == 0 || (v13 = v67, v14 = v68, __swift_project_boxed_opaque_existential_1(v66, v67), ((*(v14 + 48))(v13, v14) & 1) == 0))
  {
    v61 = a3;
    v62 = v8;
    v23 = v67;
    v24 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    LOBYTE(v23) = (*(v24 + 48))(v23, v24);
    v25 = v67;
    v26 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    v8 = (*(v26 + 24))(v25, v26);
    v27 = v67;
    a3 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    (*(a3 + 16))(v27, a3);
    if (v23)
    {
      sub_275B7ABCC();
      v28 = sub_275B7AB1C();
      result = sub_275B7AB1C();
      if (result + 0x4000000000000000 < 0)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (v28 >= 2 * result)
      {
        if (!result)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v28 == 0x8000000000000000 && result == -1)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v8 >= v28 / result)
        {
          v8 = v28 / result;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      sub_275B7A9CC();
    }

    v29 = v67;
    v30 = v68;
    __swift_project_boxed_opaque_existential_1(v66, v67);
    result = (*(v30 + 16))(v29, v30);
    v65[0] = MEMORY[0x277D84F90];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v5 = sub_275B7AB1C();
      v31 = 0;
      v32 = *(*v6 + 168);
      v6 = *v6 + 168;
      while (1)
      {
        if ((v31 * v5) >> 64 != (v31 * v5) >> 63)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v32(a1, a2);

        MEMORY[0x277C89300](v33);
        a3 = *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a3 >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_275B7AE9C();
        }

        sub_275B7AEBC();

        if (v8 == v31)
        {
          break;
        }

        v34 = __OFADD__(v31++, 1);
        if (v34)
        {
          goto LABEL_38;
        }
      }

      v35 = v67;
      v36 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v37 = NotificationDelayModel.batchPrediction(fromFeatureProviderList:)(v65[0], v35, v36);

      v65[0] = 0;
      v65[1] = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000036, 0x8000000275B82B80);
      v38 = MEMORY[0x277C89330](v37, MEMORY[0x277D83A90]);
      MEMORY[0x277C89240](v38);

      sub_275B7A9CC();

      v39 = v67;
      v40 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v41 = (*(v40 + 32))(v39, v40);
      v20 = _s33iCloudSubscriptionOptimizerDaemon15MLDelayProviderC17chooseOffsetIndex12propensities018percentileToChooseH0SiSaySfG_SitFZ_0(v37, v41);

      sub_275B7B09C();

      strcpy(v65, "Offset index [");
      v69 = v20;
      v42 = sub_275B7B19C();
      MEMORY[0x277C89240](v42);

      MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B82BC0);
      sub_275B7B09C();

      v69 = v41;
      v43 = sub_275B7B19C();
      MEMORY[0x277C89240](v43);

      MEMORY[0x277C89240](0x746E656372657020, 0xEC0000002E656C69);
      v44 = strcpy(v65, " above ");

      MEMORY[0x277C89240](v44, 0xE700000000000000);

      sub_275B7A9CC();

      sub_275B7A9CC();
      sub_275B7B09C();

      v65[0] = 0xD000000000000016;
      v65[1] = 0x8000000275B82BE0;
      v69 = v20;
      v45 = sub_275B7B19C();
      MEMORY[0x277C89240](v45);

      sub_275B7A9CC();

      if (!v20)
      {
        sub_275B7A9CC();
        v54 = v67;
        v55 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v17 = (*(*(v55 + 8) + 16))(v54);
        v19 = v56;
        MLDelayProvider.publishMLDelayProviderEvent(_:_:)(v62, v66);
        v21 = 0;
        v22 = 1;
        a3 = v61;
        goto LABEL_36;
      }

      v46 = v67;
      v47 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v48 = (*(v47 + 40))(v46, v47);
      a3 = v61;
      if ((v49 & 1) == 0)
      {
        v21 = v48;
        sub_275B7B09C();

        v65[0] = 0xD00000000000001ALL;
        v65[1] = 0x8000000275B82C00;
        goto LABEL_35;
      }

      v50 = v67;
      v51 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      (*(v51 + 16))(v50, v51);
      result = sub_275B7AB1C();
      v52 = v20 * result;
      if ((v20 * result) >> 64 != (v20 * result) >> 63)
      {
        goto LABEL_44;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        if (!result)
        {
          goto LABEL_46;
        }

        v53 = sub_275B3A364(result);
        v34 = __OFADD__(v52, v53);
        result = v52 + v53;
        if (!v34)
        {
          v21 = sub_275B7AB2C();
          sub_275B7B09C();

          strcpy(v65, "   DelayTime: ");
          HIBYTE(v65[1]) = -18;
LABEL_35:
          v69 = sub_275B7AB1C();
          v57 = sub_275B7B19C();
          MEMORY[0x277C89240](v57);

          MEMORY[0x277C89240](0x73646E6F63657320, 0xE90000000000000ALL);
          sub_275B7A9CC();

          v58 = v67;
          v59 = v68;
          __swift_project_boxed_opaque_existential_1(v66, v67);
          v17 = (*(*(v59 + 8) + 16))(v58);
          v19 = v60;
          MLDelayProvider.publishMLDelayProviderEvent(_:_:)(v62, v66);
          v22 = 0;
          goto LABEL_36;
        }

        goto LABEL_47;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  sub_275B7A9CC();
  v15 = v67;
  v16 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  v17 = (*(*(v16 + 8) + 16))(v15);
  v19 = v18;
  MLDelayProvider.publishMLDelayProviderEvent(_:_:)(v8, v66);
  v20 = 0;
  v21 = 0;
  v22 = 1;
LABEL_36:

  result = __swift_destroy_boxed_opaque_existential_1(v66);
  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v17;
  *(a3 + 32) = v19;
  return result;
}

uint64_t static MLDelayProvider.getNumOffsets(_:_:_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    if (qword_280A32D10 == -1)
    {
LABEL_6:
      sub_275B7A9CC();
      return a4;
    }

LABEL_14:
    swift_once();
    goto LABEL_6;
  }

  sub_275B7ABCC();
  v5 = sub_275B7AB1C();
  result = sub_275B7AB1C();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 2 * result)
  {
    return 0;
  }

  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v5 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_16;
  }

  if (v5 / result >= a4)
  {
    return a4;
  }

  else
  {
    return v5 / result;
  }
}

int64_t static MLDelayProvider.calculateDelay(offsetIndex:offsetTimeInterval:)(uint64_t a1)
{
  result = sub_275B7AB1C();
  v3 = a1 * result;
  if ((a1 * result) >> 64 != (a1 * result) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_275B3A364(result);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return sub_275B7AB2C();
}

uint64_t MLDelayProvider.getBatchFeatureProvider(_:_:_:_:pushTimestamp:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = MEMORY[0x277D84F90];
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = result;
    result = sub_275B7AB1C();
    v6 = result;
    v7 = 0;
    v8 = *(*v3 + 168);
    while ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8(v5, a2);

      MEMORY[0x277C89300](v9);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_275B7AE9C();
      }

      sub_275B7AEBC();

      if (a3 == v7)
      {
        return v13;
      }

      if (__OFADD__(v7++, 1))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MLDelayProvider.publishMLDelayProviderEvent(_:_:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_275B7989C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(**(*(v2 + 16) + 16) + 112);

  v11(v12);

  v13 = sub_275B79CFC();
  v15 = *v13;
  v14 = v13[1];
  type metadata accessor for DaemonStateManager();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_275B7AB2C();
  sub_275B7AB2C();
  type metadata accessor for MobileAssetDaemonStateHelper();
  *(swift_initStackObject() + 16) = v16;

  v24[1] = MobileAssetDaemonStateHelper.getTimeSinceLastMACatalogDownload()();

  if (qword_28140F5C0 != -1)
  {
    swift_once();
  }

  sub_275B19CD4(qword_28140F5C8 + 16, v27);
  type metadata accessor for MlDelayProviderEvent();
  swift_allocObject();
  sub_275B19CD4(v27, v26);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v25[0] = qword_28140F700;
  v25[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x5079616C65446C6DLL, 0xEF72656469766F72);
  sub_275B19CD4(v26, v25);
  v17 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v26);
  v18 = __swift_destroy_boxed_opaque_existential_1(v27);
  (*(*a1 + 96))(v18);
  sub_275B7AB1C();

  sub_275B79B7C();

  v20 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  (*(*(v19 + 8) + 16))(v20);
  sub_275B79B4C();

  v21 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo;
  swift_beginAccess();
  sub_275B3A7B4(v3 + v21, v10);
  sub_275B3A540();
  sub_275B7965C();
  sub_275B3A818(v10);
  sub_275B79B4C();

  sub_275B79B4C();

  sub_275B7AB1C();
  sub_275B79B7C();

  (*(*v17 + 200))(v22);
}

uint64_t MLDelayProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_275B3A818(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);
  return v0;
}

uint64_t MLDelayProvider.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_275B3A818(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_275B3A364(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x277C89DC0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x277C89DC0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275B3A3F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_275B7989C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_275B3A540();

  sub_275B7968C();
  sub_275B3A598(v10, v3 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon15MLDelayProvider_litmusInfo);
  return v3;
}

unint64_t sub_275B3A540()
{
  result = qword_280A33438;
  if (!qword_280A33438)
  {
    sub_275B7989C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33438);
  }

  return result;
}

uint64_t sub_275B3A598(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7989C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon15MLDelayProviderC12getModelName14fromLitmusInfoSS01iabC4Core0kL0V_tFZ_0()
{
  sub_275B7984C();
  v3 = sub_275B7B19C();
  MEMORY[0x277C89240](95, 0xE100000000000000);
  sub_275B797FC();
  v0 = sub_275B7B19C();
  MEMORY[0x277C89240](v0);

  MEMORY[0x277C89240](95, 0xE100000000000000);
  sub_275B7986C();
  v1 = sub_275B7B19C();
  MEMORY[0x277C89240](v1);

  return v3;
}

uint64_t sub_275B3A6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7989C();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B3A74C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33658, &qword_275B7DA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B3A7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B7989C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B3A818(uint64_t a1)
{
  v2 = sub_275B7989C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon15MLDelayProviderC17chooseOffsetIndex12propensities018percentileToChooseH0SiSaySfG_SitFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v14 = a1;

  sub_275B3CD0C(&v14);
  v5 = *(v14 + 2);
  v6 = v5 * a2;
  if ((v5 * a2) >> 64 == (v5 * a2) >> 63)
  {
    v7 = v6 / 100;
    if (v6 < -99 || v7 >= v5)
    {
      goto LABEL_14;
    }

    v9 = *&v14[4 * v7 + 32];

    v10 = 0;
    while (v2 != v10)
    {
      v11 = v10 + 1;
      v12 = *(a1 + 32 + 4 * v10++);
      if (v9 <= v12)
      {
        return v11 - 1;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for MLDelayProvider()
{
  result = qword_280A33660;
  if (!qword_280A33660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275B3A9C0()
{
  result = sub_275B7989C();
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

uint64_t MlDelayProviderEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x5079616C65446C6DLL, 0xEF72656469766F72);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MlDelayProviderEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0x5079616C65446C6DLL, 0xEF72656469766F72);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MlDelayProviderEvent.addDuration(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t MlDelayProviderEvent.addCurrentAssetVersion(_:)()
{
  sub_275B79B4C();
}

uint64_t MlDelayProviderEvent.addTimeSinceLastMACatalogDownload(_:)()
{
  sub_275B7AB1C();
  sub_275B79B7C();
}

uint64_t MlDelayProviderEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_275B3AF0C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33678);
  __swift_project_value_buffer(v0, qword_280A33678);
  type metadata accessor for MLEvaluationProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336A8, &qword_275B7DB68);
  return sub_275B7A97C();
}

uint64_t MLEvaluationProvider.percentileToChooseOffsetList.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t MLEvaluationProvider.percentileToChooseOffsetList.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t MLEvaluationProvider.__allocating_init(biomeManager:modelProvider:shadowModeModels:numOffsets:displayTimestamp:binaryLabel:labelAnnotation:trialSet:percentiles:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D84F90];
  *(v22 + 32) = MEMORY[0x277D84F90];
  *(v22 + 16) = v23;
  *(v22 + 24) = v23;
  *(v22 + 40) = v23;
  *(v22 + 48) = v23;
  *(v22 + 56) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = v23;
  *(v22 + 80) = sub_275B7AB2C();
  sub_275B075DC(a1, v22 + 88);
  *(v22 + 56) = a3;
  *(v22 + 128) = a4;
  *(v22 + 136) = a5;
  *(v22 + 144) = a9;
  *(v22 + 152) = a2;
  *(v22 + 160) = a6;
  *(v22 + 168) = a7;
  sub_275B3D5F8(a8, v22 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
  swift_beginAccess();
  *(v22 + 32) = a10;
  return v22;
}

uint64_t MLEvaluationProvider.init(biomeManager:modelProvider:shadowModeModels:numOffsets:displayTimestamp:binaryLabel:labelAnnotation:trialSet:percentiles:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10)
{
  v20 = MEMORY[0x277D84F90];
  *(v10 + 32) = MEMORY[0x277D84F90];
  *(v10 + 16) = v20;
  *(v10 + 24) = v20;
  *(v10 + 40) = v20;
  *(v10 + 48) = v20;
  *(v10 + 56) = v20;
  *(v10 + 64) = v20;
  *(v10 + 72) = v20;
  *(v10 + 80) = sub_275B7AB2C();
  sub_275B075DC(a1, v10 + 88);
  *(v10 + 56) = a3;
  *(v10 + 128) = a4;
  *(v10 + 136) = a5;
  *(v10 + 144) = a9;
  *(v10 + 152) = a2;
  *(v10 + 160) = a6;
  *(v10 + 168) = a7;
  sub_275B3D5F8(a8, v10 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
  swift_beginAccess();
  *(v10 + 32) = a10;
  return v10;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLEvaluationProvider.calculateMetrics()()
{
  v42 = type metadata accessor for ShadowModel();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42, v4);
  v6 = (v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*(v0 + 56) + 16))
  {
    MLEvaluationProvider.prepareBatchFeatureProvider()();
    v7 = *(v0 + 56);
    v8 = *(v7 + 16);
    if (v8)
    {
      v32[1] = v1;
      v43 = v0;
      v9 = **(v0 + 152);
      v41 = *(v0 + 152);
      v10 = *(v9 + 104);
      v39 = v9 + 104;
      v40 = v10;
      v11 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v38 = *(v2 + 72);
      v35 = 0x8000000275B82DF0;
      v36 = 0x8000000275B82DD0;
      v34 = 0x8000000275B82DB0;
      v32[0] = v7;

      v33 = 0xD000000000000015;
      v37 = 0xD000000000000012;
      while (1)
      {
        sub_275B3D590(v11, v6, type metadata accessor for ShadowModel);
        v13 = *v6;
        v12 = v6[1];
        v40(&v44, *v6, v12, v6 + *(v42 + 20));
        if (!v45)
        {
          break;
        }

        sub_275B075DC(&v44, &v46);
        v14 = v48;
        v15 = v49;
        __swift_project_boxed_opaque_existential_1(&v46, v48);
        v16 = (*(v15 + 56))(v14, v15);
        if (v17)
        {
          v18 = v16;
          v19 = v17;
          if (*(v43 + 160) == v37 && v36 == *(v43 + 168) || (sub_275B7B1BC() & 1) != 0)
          {
            if (v18 == 0xD000000000000017 && v19 == v35)
            {
            }

            else
            {
              v21 = sub_275B7B1BC();

              if ((v21 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            if (v18 == 0xD000000000000017 && v19 == v35)
            {

LABEL_32:
              __swift_destroy_boxed_opaque_existential_1(&v46);
              goto LABEL_6;
            }

            v31 = sub_275B7B1BC();

            if (v31)
            {
              goto LABEL_32;
            }
          }
        }

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v23 = MLEvaluationProvider.getBatchPropensities(modelName:modelUrl:)(v13, v12);
        if (v23)
        {
          v25 = v23;
          v26._rawValue = v24;
          v27 = *(v43 + 144);
          v28._countAndFlagsBits = v13;
          v28._object = v12;
          MLEvaluationProvider.calculateEvalMetricSet(batchPropensities:binaryLabel:modelName:)(v23, v27, v28);
          if (*(v25 + 2))
          {
            v29._countAndFlagsBits = v13;
            v29._object = v12;
            MLEvaluationProvider.calculateDelayMetricSet(propensityAtOffset0:batchPropensitiesToFuture:binaryLabel:modelName:)(*(v25 + 8), v26, v27, v29);
          }

LABEL_5:
        }

LABEL_6:
        sub_275B3D660(v6, type metadata accessor for ShadowModel);
        v11 += v38;
        if (!--v8)
        {

          return;
        }
      }

      sub_275B29CD4(&v44, &qword_280A33658, &qword_275B7DA00);
      if (qword_280A32D18 != -1)
      {
        swift_once();
      }

      v22 = sub_275B7A96C();
      __swift_project_value_buffer(v22, qword_280A33678);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_275B7B09C();

      v46 = v33;
      v47 = v34;
      MEMORY[0x277C89240](v13, v12);
      MEMORY[0x277C89240](0x6564206D6F726620, 0xED00002E65636976);
      sub_275B7A91C();
      goto LABEL_5;
    }
  }
}

uint64_t MLEvaluationProvider.getModelPerformanceMetricsList()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t MLEvaluationProvider.getDelayPerformanceMetricsList()()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

Swift::Void __swiftcall MLEvaluationProvider.prepareBatchFeatureProvider()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v54 = &v51 - v5;
  if (qword_280A32C88 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = static DaemonMLConstants.kDefaultOffsetTimeInterval;
    v60 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v53 = v1[16];
    if (v53 < 0)
    {
      break;
    }

    v55 = sub_275B7AB1C();
    v56 = v6;
    v7 = 0;
    v52 = v1[17];
    while (1)
    {
      v8 = v7 * v55;
      if ((v7 * v55) >> 64 != (v7 * v55) >> 63)
      {
        break;
      }

      v9 = v1[8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[8] = v9;
      v59 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_275B1160C(0, *(v9 + 2) + 1, 1, v9);
        v1[8] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_275B1160C((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      *&v9[8 * v12 + 32] = v8;
      v1[8] = v9;
      v13 = sub_275B7AC4C();
      v14 = sub_275B7961C();
      v15 = v54;
      (*(*(v14 - 8) + 56))(v54, 1, 1, v14);
      v58 = v13;
      v16 = sub_275B7AC6C();
      sub_275B29CD4(v15, &qword_280A33128, &unk_275B7C3B0);
      v17 = v1[9];
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v1[9] = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_275B1160C(0, *(v17 + 2) + 1, 1, v17);
        v1[9] = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_275B1160C((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      *&v17[8 * v20 + 32] = v16;
      v1[9] = v17;
      sub_275B19CD4((v1 + 11), v62);
      v57 = type metadata accessor for FeatureProvider();
      v21 = swift_allocObject();
      v22 = MEMORY[0x277D84F90];
      *(v21 + 88) = MEMORY[0x277D84F90];
      v61 = v22;
      sub_275B0E5B0(0, 55, 0);
      v23 = 0;
      v24 = v61;
      do
      {
        v25 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v23 + 32));
        v27 = v26;
        v61 = v24;
        v29 = *(v24 + 16);
        v28 = *(v24 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_275B0E5B0((v28 > 1), v29 + 1, 1);
          v24 = v61;
        }

        ++v23;
        *(v24 + 16) = v29 + 1;
        v30 = v24 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
      }

      while (v23 != 55);
      v31 = sub_275B31714(v24);

      *(v21 + 104) = v31;
      *(v21 + 112) = 0u;
      *(v21 + 128) = 0u;
      *(v21 + 144) = 0;
      sub_275B075DC(v62, v21 + 16);
      *(v21 + 56) = v58;
      *(v21 + 80) = v8;
      v32 = sub_275B7AC0C();
      v33 = v56;
      *(v21 + 64) = v32;
      *(v21 + 72) = v33;
      *(v21 + 96) = v60;
      sub_275B19CD4((v1 + 11), v62);
      v34 = swift_allocObject();
      v35 = MEMORY[0x277D84F90];
      *(v34 + 88) = MEMORY[0x277D84F90];
      v61 = v35;
      sub_275B0E5B0(0, 55, 0);
      v36 = 0;
      v37 = v61;
      do
      {
        v38 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v36 + 32));
        v61 = v37;
        v41 = *(v37 + 16);
        v40 = *(v37 + 24);
        if (v41 >= v40 >> 1)
        {
          v58 = v38;
          v43 = v39;
          sub_275B0E5B0((v40 > 1), v41 + 1, 1);
          v39 = v43;
          v33 = v56;
          v38 = v58;
          v37 = v61;
        }

        ++v36;
        *(v37 + 16) = v41 + 1;
        v42 = v37 + 16 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v39;
      }

      while (v36 != 55);
      v44 = sub_275B31714(v37);

      *(v34 + 104) = v44;
      *(v34 + 112) = 0u;
      *(v34 + 128) = 0u;
      *(v34 + 144) = 0;
      sub_275B075DC(v62, v34 + 16);
      *(v34 + 56) = v52;
      *(v34 + 80) = v8;
      *(v34 + 64) = sub_275B7AC0C();
      *(v34 + 72) = v33;
      *(v34 + 96) = v60;
      swift_beginAccess();

      MEMORY[0x277C89300](v45);
      if (*((v1[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v49 = *((v1[5] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_275B7AE9C();
      }

      sub_275B7AEBC();
      swift_endAccess();
      v46 = v59;
      if (v59)
      {
        swift_beginAccess();

        MEMORY[0x277C89300](v47);
        if (*((v1[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v50 = *((v1[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_275B7AE9C();
        }

        sub_275B7AEBC();
        swift_endAccess();
      }

      if (v46 == v53)
      {
        return;
      }

      v48 = __OFADD__(v46, 1);
      v7 = v46 + 1;
      if (v48)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  __break(1u);
}

uint64_t MLEvaluationProvider.getFeatureProviderList()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v0 + 48);

  sub_275B30C10(v3);
  return v1;
}

char *MLEvaluationProvider.getBatchPropensities(modelName:modelUrl:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(**(v2 + 152) + 104))(&v38);
  if (!v39)
  {
    sub_275B29CD4(&v38, &qword_280A33658, &qword_275B7DA00);
    if (qword_280A32D18 != -1)
    {
      swift_once();
    }

    v11 = sub_275B7A96C();
    __swift_project_value_buffer(v11, qword_280A33678);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_275B7B09C();

    v40 = 0xD000000000000015;
    v41 = 0x8000000275B82DB0;
    MEMORY[0x277C89240](a1, a2);
    MEMORY[0x277C89240](0x6564206D6F726620, 0xED00002E65636976);
    sub_275B7A91C();

    return 0;
  }

  sub_275B075DC(&v38, &v40);
  if (qword_280A32D18 != -1)
  {
    swift_once();
  }

  v6 = sub_275B7A96C();
  __swift_project_value_buffer(v6, qword_280A33678);
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_275B7B09C();

  *&v38 = 0xD000000000000018;
  *(&v38 + 1) = 0x8000000275B82E10;
  MEMORY[0x277C89240](a1, a2);
  sub_275B7A91C();

  v7 = v42;
  v8 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  swift_beginAccess();
  v9 = v3[5];

  v37 = NotificationDelayModel.batchPrediction(fromFeatureProviderList:)(v10, v7, v8);

  swift_beginAccess();
  v13 = v3[6];
  if (!(v13 >> 62))
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v13 < 0)
  {
    v21 = v3[6];
  }

  if (sub_275B7B11C())
  {
LABEL_10:
    sub_275B7AA9C();
    v14 = sub_275B7AA8C();
    v15 = v42;
    v16 = v43;
    __swift_project_boxed_opaque_existential_1(&v40, v42);
    v17 = v3[6];

    NotificationDelayModel.batchPrediction(fromFeatureProviderList:)(v18, v15, v16);

    v20 = (*(*v14 + 96))(v19);

    v3[10] = v20;
  }

LABEL_14:
  swift_beginAccess();
  v22 = v3[4];
  v23 = v42;
  v24 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  v25 = *(v24 + 32);

  v26 = v25(v23, v24);
  v27 = *(v22 + 16);
  v28 = 32;
  while (v27)
  {
    v29 = *(v22 + v28);
    v28 += 8;
    --v27;
    if (v29 == v26)
    {

      goto LABEL_23;
    }
  }

  v30 = v42;
  v31 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, v42);
  v32 = (*(v31 + 32))(v30, v31);
  v33 = v3[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[4] = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_275B11050(0, *(v33 + 2) + 1, 1, v33);
    v3[4] = v33;
  }

  v36 = *(v33 + 2);
  v35 = *(v33 + 3);
  if (v36 >= v35 >> 1)
  {
    v33 = sub_275B11050((v35 > 1), v36 + 1, 1, v33);
  }

  *(v33 + 2) = v36 + 1;
  *&v33[8 * v36 + 32] = v32;
  v3[4] = v33;
LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v37;
}

Swift::Void __swiftcall MLEvaluationProvider.calculateEvalMetricSet(batchPropensities:binaryLabel:modelName:)(Swift::OpaquePointer batchPropensities, Swift::Float binaryLabel, Swift::String modelName)
{
  v4 = v3;
  v35 = modelName;
  v6 = sub_275B7AA6C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B7A6DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v30 - v19;
  v32 = v4[16];
  if ((v32 & 0x8000000000000000) == 0)
  {
    v30 = *(batchPropensities._rawValue + 2);
    if (v30)
    {
      v21 = 0;
      v31 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet;
      v22 = v4[20];
      v23 = v4[21];
      v33 = batchPropensities._rawValue + 32;
      v34 = v22;
      while (1)
      {
        v24 = *&v33[4 * v21];
        logf(v24 + 0.0000001);
        logf((1.0 - v24) + 0.0000001);
        sub_275B7A6CC();

        sub_275B7A6BC();
        sub_275B7A5EC();
        sub_275B7A66C();
        sub_275B7A5CC();
        sub_275B7A60C();

        sub_275B7A62C();
        v25 = v4[8];
        if (v21 >= *(v25 + 16))
        {
          break;
        }

        v36 = *(v25 + 8 * v21 + 32);
        sub_275B7B19C();
        sub_275B7A64C();
        sub_275B3D590(v4 + v31, v10, MEMORY[0x277D7F888]);
        sub_275B7A69C();
        sub_275B3D590(v20, v16, MEMORY[0x277D7F7C0]);
        swift_beginAccess();
        v26 = v4[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4[2] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_275B1171C(0, v26[2] + 1, 1, v26);
          v4[2] = v26;
        }

        v29 = v26[2];
        v28 = v26[3];
        if (v29 >= v28 >> 1)
        {
          v26 = sub_275B1171C(v28 > 1, v29 + 1, 1, v26);
        }

        v26[2] = v29 + 1;
        sub_275B3D5F8(v16, v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, MEMORY[0x277D7F7C0]);
        v4[2] = v26;
        swift_endAccess();
        sub_275B3D660(v20, MEMORY[0x277D7F7C0]);
        if (v32 == v21)
        {
          return;
        }

        if (v30 == ++v21)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall MLEvaluationProvider.calculateDelayMetricSet(propensityAtOffset0:batchPropensitiesToFuture:binaryLabel:modelName:)(Swift::Float propensityAtOffset0, Swift::OpaquePointer batchPropensitiesToFuture, Swift::Float binaryLabel, Swift::String modelName)
{
  v5 = v4;
  v46 = modelName;
  v7 = sub_275B7AA6C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275B7A54C();
  v44 = *(v11 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v39 - v18;
  v20 = sub_275B114E0(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    *(v20 + 2) = v23;
    *&v20[4 * v22 + 32] = propensityAtOffset0;
    v48 = v20;
    if (v5[16] >= 1)
    {

      sub_275B30754(v24);
      v20 = v48;
    }

    swift_beginAccess();
    v25 = v5[4];
    v43 = *(v25 + 16);
    if (!v43)
    {
      break;
    }

    v26 = v5[21];
    v39[2] = v5[20];
    v40 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet;
    v39[0] = v25;
    v39[1] = v26;
    v42 = v25 + 32;

    v27 = 0;
    v41 = v15;
    while (1)
    {
      v15 = *(v42 + 8 * v27);
      v23 = *(v20 + 2);
      if (!v23)
      {
        goto LABEL_16;
      }

      v47 = v20;

      sub_275B3CD0C(&v47);
      v21 = *(v47 + 2);
      v28 = v21 * v15;
      if ((v21 * v15) >> 64 != (v21 * v15) >> 63)
      {
        break;
      }

      v29 = v28 / 100;
      if (v28 < -99 || v29 >= v21)
      {
        goto LABEL_24;
      }

      propensityAtOffset0 = *&v47[4 * v29 + 32];

      v31 = 0;
      do
      {
        if (v23 == v31)
        {
          break;
        }

        v32 = *&v20[4 * v31++ + 32];
      }

      while (propensityAtOffset0 > v32);
LABEL_16:
      sub_275B7A53C();

      sub_275B7A52C();
      v47 = v15;
      sub_275B7B19C();
      sub_275B7A4EC();
      sub_275B7A4CC();
      sub_275B7A48C();

      sub_275B7A4AC();
      v33 = v5[10];
      sub_275B7AB1C();
      sub_275B7A46C();
      sub_275B3D590(v5 + v40, v45, MEMORY[0x277D7F888]);
      sub_275B7A50C();
      v34 = v41;
      sub_275B3D590(v19, v41, MEMORY[0x277D7F7A0]);
      swift_beginAccess();
      v35 = v5[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[3] = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_275B11744(0, v35[2] + 1, 1, v35);
        v5[3] = v35;
      }

      v38 = v35[2];
      v37 = v35[3];
      v22 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v35 = sub_275B11744(v37 > 1, v38 + 1, 1, v35);
      }

      ++v27;
      v35[2] = v22;
      sub_275B3D5F8(v34, v35 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, MEMORY[0x277D7F7A0]);
      v5[3] = v35;
      swift_endAccess();
      sub_275B3D660(v19, MEMORY[0x277D7F7A0]);
      if (v27 == v43)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = sub_275B114E0((v21 > 1), v23, 1, v20);
  }

LABEL_22:
}

void *MLEvaluationProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v9 = v0[19];

  v10 = v0[21];

  sub_275B3D660(v0 + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerDaemon20MLEvaluationProvider_trialSet, MEMORY[0x277D7F888]);
  return v0;
}

uint64_t MLEvaluationProvider.__deallocating_deinit()
{
  MLEvaluationProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_275B3CD0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A2A8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_275B7B18C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_275B7AEAC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_275B3CE40(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_275B3CE40(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_275B5A1B4(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_275B3D39C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275B10F4C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_275B10F4C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_275B3D39C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_275B3D39C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_275B3D590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B3D5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B3D660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MLEvaluationProvider()
{
  result = qword_280A33698;
  if (!qword_280A33698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275B3D714()
{
  result = sub_275B7AA6C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

BOOL sub_275B3D800(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = FeatureName.rawValue.getter(*v4);
    v9 = v8;
    if (v7 == FeatureName.rawValue.getter(a1) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_275B7B1BC();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t MLModel.orderedFeatureNamesIfFeatureArray()()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptionsByName];

  sub_275B40748(0, &qword_280A33320, 0x277CBFEE0);
  v4 = sub_275B7AC8C();

  if (!*(v4 + 16))
  {

    return MEMORY[0x277D84F90];
  }

  sub_275B180D4(0x4165727574616566, 0xEC00000079617272);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7._countAndFlagsBits = 0x7365727574616566;
  v7._object = 0xE800000000000000;
  v8 = MLModel.getMetadataStringValueFor(_:)(v7);
  if (v8.value._object)
  {
    v9 = sub_275B405D8(v8.value._countAndFlagsBits, v8.value._object);

    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    sub_275B1814C();
    swift_allocError();
    *v11 = 0xD00000000000003ELL;
    v11[1] = 0x8000000275B80B70;
    return swift_willThrow();
  }

  return result;
}

uint64_t MLModel.getOffsetTimeIntervalOrDefault()()
{
  v0._object = 0x8000000275B82FF0;
  v0._countAndFlagsBits = 0xD000000000000016;
  v2 = MLModel.getMetadataStringValueFor(_:)(v0);
  result = v2.value._countAndFlagsBits;
  if (v2.value._object)
  {
    v3 = (v2.value._object >> 56) & 0xF;
    v4 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v2.value._object & 0x2000000000000000) != 0)
    {
      v5 = (v2.value._object >> 56) & 0xF;
    }

    else
    {
      v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {
      goto LABEL_64;
    }

    if ((v2.value._object & 0x1000000000000000) != 0)
    {
      v8 = sub_275B3FB64(v2.value._countAndFlagsBits, v2.value._object, 10);
      result = v2.value._countAndFlagsBits;
      if (v31)
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }

    if ((v2.value._object & 0x2000000000000000) != 0)
    {
      countAndFlagsBits = v2.value._countAndFlagsBits;
      v35 = v2.value._object & 0xFFFFFFFFFFFFFFLL;
      if (LOBYTE(v2.value._countAndFlagsBits) == 43)
      {
        if (!v3)
        {
LABEL_81:
          __break(1u);
          return result;
        }

        if (--v3)
        {
          v8 = 0;
          v19 = &countAndFlagsBits + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }
      }

      else if (LOBYTE(v2.value._countAndFlagsBits) == 45)
      {
        if (!v3)
        {
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (--v3)
        {
          v8 = 0;
          v12 = &countAndFlagsBits + 1;
          while (1)
          {
            v13 = *v12 - 48;
            if (v13 > 9)
            {
              break;
            }

            v14 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v12;
            if (!--v3)
            {
              goto LABEL_63;
            }
          }
        }
      }

      else if (v3)
      {
        v8 = 0;
        p_countAndFlagsBits = &countAndFlagsBits;
        while (1)
        {
          v25 = *p_countAndFlagsBits - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          p_countAndFlagsBits = (p_countAndFlagsBits + 1);
          if (!--v3)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else
    {
      if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v3 = (v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v3 = sub_275B7B0CC();
        result = v2.value._countAndFlagsBits;
      }

      v6 = *v3;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v15 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (!v3)
            {
              goto LABEL_63;
            }

            v16 = (v3 + 1);
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v15)
              {
LABEL_54:
                LOBYTE(v3) = 0;
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        goto LABEL_80;
      }

      if (v6 == 45)
      {
        if (v4 >= 1)
        {
          v7 = v4 - 1;
          if (v4 != 1)
          {
            v8 = 0;
            if (!v3)
            {
              goto LABEL_63;
            }

            v9 = (v3 + 1);
            while (1)
            {
              v10 = *v9 - 48;
              if (v10 > 9)
              {
                break;
              }

              v11 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                break;
              }

              v8 = v11 - v10;
              if (__OFSUB__(v11, v10))
              {
                break;
              }

              ++v9;
              if (!--v7)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_62;
        }

        __break(1u);
        goto LABEL_79;
      }

      if (v4)
      {
        v8 = 0;
        if (!v3)
        {
          goto LABEL_63;
        }

        while (1)
        {
          v22 = *v3 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v3;
          if (!--v4)
          {
            goto LABEL_54;
          }
        }
      }
    }

LABEL_62:
    v8 = 0;
    LOBYTE(v3) = 1;
LABEL_63:
    v36 = v3;
    if (v3)
    {
LABEL_64:
      v27 = result;
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v28 = sub_275B7A96C();
      __swift_project_value_buffer(v28, qword_280A336B0);
      countAndFlagsBits = 0;
      v35 = 0xE000000000000000;
      sub_275B7B09C();

      countAndFlagsBits = 0xD00000000000002ELL;
      v35 = 0x8000000275B83010;
      MEMORY[0x277C89240](v27, v2.value._object);

      MEMORY[0x277C89240](8231, 0xE200000000000000);
      v29 = "offsetTimeIntervalMins value '";

      v30 = 0xD00000000000002ALL;
LABEL_73:
      MEMORY[0x277C89240](v30, v29 | 0x8000000000000000);

      sub_275B7A95C();

      goto LABEL_74;
    }

LABEL_68:
    if (v8 >= 1)
    {

      return sub_275B7AB2C();
    }

    v32 = result;
    if (qword_280A32D20 != -1)
    {
      swift_once();
    }

    v33 = sub_275B7A96C();
    __swift_project_value_buffer(v33, qword_280A336B0);
    countAndFlagsBits = 0;
    v35 = 0xE000000000000000;
    sub_275B7B09C();

    countAndFlagsBits = 0xD000000000000027;
    v35 = 0x8000000275B83070;
    MEMORY[0x277C89240](v32, v2.value._object);

    MEMORY[0x277C89240](2108967, 0xE300000000000000);
    v29 = "meIntervalMins value: '";

    v30 = 0xD000000000000020;
    goto LABEL_73;
  }

LABEL_74:
  if (qword_280A32C88 != -1)
  {
    swift_once();
  }

  return static DaemonMLConstants.kDefaultOffsetTimeInterval;
}

Swift::Int __swiftcall MLModel.getPercentileToChooseOffsetOrDefault()()
{
  v0._object = 0x8000000275B80C10;
  v0._countAndFlagsBits = 0xD000000000000018;
  v2 = MLModel.getMetadataStringValueFor(_:)(v0);
  result = v2.value._countAndFlagsBits;
  if (!v2.value._object)
  {
    return 75;
  }

  v3 = (v2.value._object >> 56) & 0xF;
  v4 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v2.value._object & 0x2000000000000000) != 0)
  {
    v5 = (v2.value._object >> 56) & 0xF;
  }

  else
  {
    v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_64;
  }

  if ((v2.value._object & 0x1000000000000000) != 0)
  {
    v8 = sub_275B3FB64(v2.value._countAndFlagsBits, v2.value._object, 10);
    result = v2.value._countAndFlagsBits;
    if (v31)
    {
      goto LABEL_64;
    }

    goto LABEL_68;
  }

  if ((v2.value._object & 0x2000000000000000) == 0)
  {
    if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v3 = (v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = sub_275B7B0CC();
      result = v2.value._countAndFlagsBits;
    }

    v6 = *v3;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v15 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_63;
          }

          v16 = (v3 + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v18 + v17;
            if (__OFADD__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v15)
            {
LABEL_54:
              LOBYTE(v3) = 0;
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_79;
    }

    if (v6 == 45)
    {
      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_63;
          }

          v9 = (v3 + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              break;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              break;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_78;
    }

    if (v4)
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v22 = *v3 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v3;
        if (!--v4)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_62;
  }

  countAndFlagsBits = v2.value._countAndFlagsBits;
  v35 = v2.value._object & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v2.value._countAndFlagsBits) != 43)
  {
    if (LOBYTE(v2.value._countAndFlagsBits) == 45)
    {
      if (!v3)
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (--v3)
      {
        v8 = 0;
        v12 = &countAndFlagsBits + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v3)
    {
      v8 = 0;
      p_countAndFlagsBits = &countAndFlagsBits;
      while (1)
      {
        v25 = *p_countAndFlagsBits - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        p_countAndFlagsBits = (p_countAndFlagsBits + 1);
        if (!--v3)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v8 = 0;
    LOBYTE(v3) = 1;
LABEL_63:
    v36 = v3;
    if (v3)
    {
LABEL_64:
      v27 = result;
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v28 = sub_275B7A96C();
      __swift_project_value_buffer(v28, qword_280A336B0);
      countAndFlagsBits = 0;
      v35 = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD000000000000030, 0x8000000275B830D0);
      MEMORY[0x277C89240](v27, v2.value._object);

      MEMORY[0x277C89240](8231, 0xE200000000000000);
      v29 = "seOffset value '";

      v30 = 0xD000000000000028;
LABEL_72:
      MEMORY[0x277C89240](v30, v29 | 0x8000000000000000);

      sub_275B7A95C();

      return 75;
    }

LABEL_68:
    if (v8 <= 0x64)
    {

      return v8;
    }

    v32 = result;
    if (qword_280A32D20 != -1)
    {
      swift_once();
    }

    v33 = sub_275B7A96C();
    __swift_project_value_buffer(v33, qword_280A336B0);
    countAndFlagsBits = 0;
    v35 = 0xE000000000000000;
    sub_275B7B09C();

    countAndFlagsBits = 0xD000000000000029;
    v35 = 0x8000000275B83140;
    MEMORY[0x277C89240](v32, v2.value._object);

    MEMORY[0x277C89240](2108967, 0xE300000000000000);
    v29 = "leToChooseOffset value: '";

    v30 = 0xD000000000000020;
    goto LABEL_72;
  }

  if (v3)
  {
    if (--v3)
    {
      v8 = 0;
      v19 = &countAndFlagsBits + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v3)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_80:
  __break(1u);
  return result;
}

Swift::Int64 __swiftcall MLModel.getNumOffsetsOrDefault()()
{
  v1._countAndFlagsBits = 0x657366664F6D756ELL;
  v1._object = 0xEA00000000007374;
  v3 = MLModel.getMetadataStringValueFor(_:)(v1);
  countAndFlagsBits = v3.value._countAndFlagsBits;
  if (!v3.value._object)
  {
    return 23;
  }

  v4 = (v3.value._object >> 56) & 0xF;
  v5 = v3.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v3.value._object & 0x2000000000000000) != 0)
  {
    v6 = (v3.value._object >> 56) & 0xF;
  }

  else
  {
    v6 = v3.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_64;
  }

  if ((v3.value._object & 0x1000000000000000) != 0)
  {
    v9 = sub_275B3FB64(v3.value._countAndFlagsBits, v3.value._object, 10);
    countAndFlagsBits = v3.value._countAndFlagsBits;
    if (v32)
    {
      goto LABEL_64;
    }

    goto LABEL_68;
  }

  if ((v3.value._object & 0x2000000000000000) == 0)
  {
    if ((v3.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v4 = (v3.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v4 = sub_275B7B0CC();
      countAndFlagsBits = v3.value._countAndFlagsBits;
    }

    v7 = *v4;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v16 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_63;
          }

          v17 = (v4 + 1);
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v19 + v18;
            if (__OFADD__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v16)
            {
LABEL_54:
              LOBYTE(v4) = 0;
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_82;
    }

    if (v7 == 45)
    {
      if (v5 >= 1)
      {
        v8 = v5 - 1;
        if (v5 != 1)
        {
          v9 = 0;
          if (!v4)
          {
            goto LABEL_63;
          }

          v10 = (v4 + 1);
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v8)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v5)
    {
      v9 = 0;
      if (!v4)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v23 = *v4 - 48;
        if (v23 > 9)
        {
          break;
        }

        v24 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          break;
        }

        ++v4;
        if (!--v5)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_62;
  }

  v37 = v3.value._countAndFlagsBits;
  v38 = v3.value._object & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v3.value._countAndFlagsBits) != 43)
  {
    if (LOBYTE(v3.value._countAndFlagsBits) == 45)
    {
      if (!v4)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (--v4)
      {
        v9 = 0;
        v13 = &v37 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v4)
    {
      v9 = 0;
      v25 = &v37;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        v25 = (v25 + 1);
        if (!--v4)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v9 = 0;
    LOBYTE(v4) = 1;
LABEL_63:
    v39 = v4;
    if (v4)
    {
LABEL_64:
      v28 = countAndFlagsBits;
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v29 = sub_275B7A96C();
      __swift_project_value_buffer(v29, qword_280A336B0);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_275B7B09C();

      v37 = 0xD000000000000022;
      v38 = 0x8000000275B831A0;
      MEMORY[0x277C89240](v28, v3.value._object);

      MEMORY[0x277C89240](8231, 0xE200000000000000);
      v30 = "seOffset value '";

      v31 = 0xD000000000000028;
      goto LABEL_75;
    }

LABEL_68:
    if (v9 <= 0)
    {
      v34 = countAndFlagsBits;
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v35 = sub_275B7A96C();
      __swift_project_value_buffer(v35, qword_280A336B0);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_275B7B09C();

      v37 = 0xD00000000000001BLL;
      v38 = 0x8000000275B831D0;
      MEMORY[0x277C89240](v34, v3.value._object);

      MEMORY[0x277C89240](2108967, 0xE300000000000000);
      v30 = "meIntervalMins value: '";

      v31 = 0xD000000000000020;
      goto LABEL_75;
    }

    if (v9 <= 0x3E8)
    {

      return v9;
    }

    v0 = countAndFlagsBits;
    if (qword_280A32D20 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_84;
  }

  if (v4)
  {
    if (--v4)
    {
      v9 = 0;
      v20 = &v37 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v4)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  swift_once();
LABEL_71:
  v33 = sub_275B7A96C();
  __swift_project_value_buffer(v33, qword_280A336B0);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_275B7B09C();

  v37 = 0xD00000000000001BLL;
  v38 = 0x8000000275B831D0;
  MEMORY[0x277C89240](v0, v3.value._object);

  MEMORY[0x277C89240](2108967, 0xE300000000000000);
  v30 = "Invalid numOffsets value: '";

  v31 = 0xD000000000000011;
LABEL_75:
  MEMORY[0x277C89240](v31, v30 | 0x8000000000000000);

  sub_275B7A95C();

  return 23;
}

uint64_t MLModel.getOverwriteDelayOrDefault()()
{
  v0._object = 0x8000000275B83210;
  v0._countAndFlagsBits = 0xD000000000000012;
  v2 = MLModel.getMetadataStringValueFor(_:)(v0);
  result = v2.value._countAndFlagsBits;
  if (!v2.value._object)
  {
    return 0;
  }

  v3 = (v2.value._object >> 56) & 0xF;
  v4 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v2.value._object & 0x2000000000000000) != 0)
  {
    v5 = (v2.value._object >> 56) & 0xF;
  }

  else
  {
    v5 = v2.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_64;
  }

  if ((v2.value._object & 0x1000000000000000) != 0)
  {
    v8 = sub_275B3FB64(v2.value._countAndFlagsBits, v2.value._object, 10);
    result = v2.value._countAndFlagsBits;
    if (v31)
    {
      goto LABEL_64;
    }

    goto LABEL_68;
  }

  if ((v2.value._object & 0x2000000000000000) == 0)
  {
    if ((v2.value._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      v3 = (v2.value._object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = sub_275B7B0CC();
      result = v2.value._countAndFlagsBits;
    }

    v6 = *v3;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v15 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_63;
          }

          v16 = (v3 + 1);
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v18 + v17;
            if (__OFADD__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v15)
            {
LABEL_54:
              LOBYTE(v3) = 0;
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      goto LABEL_78;
    }

    if (v6 == 45)
    {
      if (v4 >= 1)
      {
        v7 = v4 - 1;
        if (v4 != 1)
        {
          v8 = 0;
          if (!v3)
          {
            goto LABEL_63;
          }

          v9 = (v3 + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              break;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              break;
            }

            ++v9;
            if (!--v7)
            {
              goto LABEL_54;
            }
          }
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_77;
    }

    if (v4)
    {
      v8 = 0;
      if (!v3)
      {
        goto LABEL_63;
      }

      while (1)
      {
        v22 = *v3 - 48;
        if (v22 > 9)
        {
          break;
        }

        v23 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          break;
        }

        ++v3;
        if (!--v4)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_62;
  }

  countAndFlagsBits = v2.value._countAndFlagsBits;
  v35 = v2.value._object & 0xFFFFFFFFFFFFFFLL;
  if (LOBYTE(v2.value._countAndFlagsBits) != 43)
  {
    if (LOBYTE(v2.value._countAndFlagsBits) == 45)
    {
      if (!v3)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (--v3)
      {
        v8 = 0;
        v12 = &countAndFlagsBits + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v3)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v3)
    {
      v8 = 0;
      p_countAndFlagsBits = &countAndFlagsBits;
      while (1)
      {
        v25 = *p_countAndFlagsBits - 48;
        if (v25 > 9)
        {
          break;
        }

        v26 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v26 + v25;
        if (__OFADD__(v26, v25))
        {
          break;
        }

        p_countAndFlagsBits = (p_countAndFlagsBits + 1);
        if (!--v3)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v8 = 0;
    LOBYTE(v3) = 1;
LABEL_63:
    v36 = v3;
    if (v3)
    {
LABEL_64:
      v27 = result;
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v28 = sub_275B7A96C();
      __swift_project_value_buffer(v28, qword_280A336B0);
      countAndFlagsBits = 0;
      v35 = 0xE000000000000000;
      sub_275B7B09C();

      countAndFlagsBits = 0xD00000000000002ALL;
      v35 = 0x8000000275B83230;
      MEMORY[0x277C89240](v27, v2.value._object);

      MEMORY[0x277C89240](8231, 0xE200000000000000);
      v29 = "seOffset value '";

      v30 = 0xD000000000000028;
LABEL_73:
      MEMORY[0x277C89240](v30, v29 | 0x8000000000000000);

      sub_275B7A95C();

      return 0;
    }

LABEL_68:
    if (v8 >= 1)
    {

      return sub_275B7AB2C();
    }

    v32 = result;
    if (qword_280A32D20 != -1)
    {
      swift_once();
    }

    v33 = sub_275B7A96C();
    __swift_project_value_buffer(v33, qword_280A336B0);
    countAndFlagsBits = 0;
    v35 = 0xE000000000000000;
    sub_275B7B09C();

    countAndFlagsBits = 0xD000000000000023;
    v35 = 0x8000000275B83260;
    MEMORY[0x277C89240](v32, v2.value._object);

    MEMORY[0x277C89240](2108967, 0xE300000000000000);
    v29 = "meIntervalMins value: '";

    v30 = 0xD000000000000020;
    goto LABEL_73;
  }

  if (v3)
  {
    if (--v3)
    {
      v8 = 0;
      v19 = &countAndFlagsBits + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v3)
        {
          goto LABEL_63;
        }
      }
    }

    goto LABEL_62;
  }

LABEL_79:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall MLModel.getUseMaxDelayTimestampOrDefault()()
{
  v0._object = 0x8000000275B80C70;
  v0._countAndFlagsBits = 0xD000000000000014;
  v1 = MLModel.getMetadataStringValueFor(_:)(v0);
  if (!v1.value._object)
  {
    return 1;
  }

  v2 = v1.value._countAndFlagsBits == 1702195828 && v1.value._object == 0xE400000000000000;
  if (v2 || (sub_275B7B1BC() & 1) != 0)
  {
LABEL_7:

    return 1;
  }

  if ((v1.value._countAndFlagsBits != 0x65736C6166 || v1.value._object != 0xE500000000000000) && (sub_275B7B1BC() & 1) == 0)
  {
    if (qword_280A32D20 != -1)
    {
      swift_once();
    }

    v4 = sub_275B7A96C();
    __swift_project_value_buffer(v4, qword_280A336B0);
    sub_275B7B09C();

    MEMORY[0x277C89240](v1.value._countAndFlagsBits, v1.value._object);

    MEMORY[0x277C89240](8231, 0xE200000000000000);

    MEMORY[0x277C89240](0xD000000000000028, 0x8000000275B832C0);

    sub_275B7A95C();
    goto LABEL_7;
  }

  return 0;
}

Swift::String_optional __swiftcall MLModel.getNotificationDataSource()()
{
  v0._object = 0x8000000275B80C90;
  v0._countAndFlagsBits = 0xD000000000000016;
  v1 = MLModel.getMetadataStringValueFor(_:)(v0);
  countAndFlagsBits = v1.value._countAndFlagsBits;
  object = v1.value._object;
  if (v1.value._object)
  {
    v4 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDataSourcesC12getAllvaluesSaySSGyFZ_0();
    v18 = v1;
    MEMORY[0x28223BE20](v4, v5);
    v17[2] = &v18;
    if ((sub_275B0B5F0(sub_275B0F978, v17, v4) & 1) == 0)
    {
      if (qword_280A32D20 != -1)
      {
        swift_once();
      }

      v6 = sub_275B7A96C();
      __swift_project_value_buffer(v6, qword_280A336B0);
      v18.value._countAndFlagsBits = 0;
      v18.value._object = 0xE000000000000000;
      sub_275B7B09C();

      v18.value._countAndFlagsBits = 0xD000000000000020;
      v18.value._object = 0x8000000275B832F0;
      MEMORY[0x277C89240](v1.value._countAndFlagsBits, v1.value._object);

      MEMORY[0x277C89240](46, 0xE100000000000000);
      v8 = v18.value._countAndFlagsBits;
      v7 = v18.value._object;
      v18.value._countAndFlagsBits = 0;
      v18.value._object = 0xE000000000000000;
      sub_275B7B09C();

      v18.value._countAndFlagsBits = 0xD000000000000016;
      v18.value._object = 0x8000000275B83320;
      v9 = MEMORY[0x277C89330](v4, MEMORY[0x277D837D0]);
      v11 = v10;

      MEMORY[0x277C89240](v9, v11);

      v12 = v18.value._countAndFlagsBits;
      v13 = v18.value._object;
      v18.value._countAndFlagsBits = v8;
      v18.value._object = v7;

      MEMORY[0x277C89240](v12, v13);

      sub_275B7A95C();
      countAndFlagsBits = 0;
      object = 0;
    }
  }

  v14 = countAndFlagsBits;
  v15 = object;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t sub_275B3F35C()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A336B0);
  __swift_project_value_buffer(v0, qword_280A336B0);
  sub_275B40748(0, &qword_280A336D8, 0x277CBFF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336E0, &unk_275B7DB80);
  return sub_275B7A97C();
}

Swift::Bool __swiftcall MLModel.hasFeatureArray()()
{
  v1 = [v0 modelDescription];
  v2 = [v1 inputDescriptionsByName];

  sub_275B40748(0, &qword_280A33320, 0x277CBFEE0);
  v3 = sub_275B7AC8C();

  if (*(v3 + 16))
  {
    sub_275B180D4(0x4165727574616566, 0xEC00000079617272);
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

Swift::String_optional __swiftcall MLModel.getMetadataStringValueFor(_:)(Swift::String a1)
{
  v2 = [v1 modelDescription];
  v3 = [v2 metadata];

  type metadata accessor for MLModelMetadataKey(0);
  sub_275B406F0();
  v4 = sub_275B7AC8C();

  if (!*(v4 + 16))
  {
    goto LABEL_8;
  }

  v5 = sub_275B1820C(*MEMORY[0x277CBFE90]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_275B0C76C(*(v4 + 56) + 32 * v5, v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336C8, &qword_275B7DB70);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v15 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v7 = sub_275B7ACDC();
  v8 = v7;
  if (!*(v17 + 16) || (v9 = sub_275B1820C(v7), (v10 & 1) == 0))
  {

LABEL_8:

    goto LABEL_9;
  }

  v11 = (*(v17 + 56) + 16 * v9);
  v13 = *v11;
  v12 = v11[1];

  v14 = v12;
  v15 = v13;
LABEL_10:
  result.value._object = v14;
  result.value._countAndFlagsBits = v15;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLModel.validateStringFeaturesInArray(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    if (qword_280A32D80 != -1)
    {
LABEL_20:
      swift_once();
    }

    v1 = static OHEVocabulary.kStringFeatureVocabMap;
    v2 = static OHEVocabulary.kStringFeatureVocabMap + 64;
    v3 = 1 << *(static OHEVocabulary.kStringFeatureVocabMap + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(static OHEVocabulary.kStringFeatureVocabMap + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (1)
    {
      if (!v5)
      {
        while (1)
        {
          v8 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v8 >= v6)
          {
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v8);
          ++v7;
          if (v5)
          {
            v7 = v8;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_12:
      v9 = __clz(__rbit64(v5)) | (v7 << 6);
      v10 = *(*(v1 + 48) + v9);
      v11._rawValue = *(*(v1 + 56) + 8 * v9);

      if (sub_275B3D800(v10, a1._rawValue))
      {
        MLModel.validateStringFeatureVocab(featureName:vocab:)(v10, v11);
        if (v12)
        {
          break;
        }
      }

      v5 &= v5 - 1;
    }

LABEL_15:
  }

  else
  {
    if (qword_280A32D20 != -1)
    {
      swift_once();
    }

    v13 = sub_275B7A96C();
    __swift_project_value_buffer(v13, qword_280A336B0);
    sub_275B7A91C();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLModel.validateStringFeatureVocab(featureName:vocab:)(iCloudSubscriptionOptimizerDaemon::FeatureName featureName, Swift::OpaquePointer vocab)
{
  v3._countAndFlagsBits = FeatureName.rawValue.getter(featureName);
  countAndFlagsBits = v3._countAndFlagsBits;
  object = v3._object;
  if (MLModel.getMetadataStringValueFor(_:)(v3).value._object)
  {
    sub_275B2AA24();
    v6 = sub_275B7AFEC();

    v7 = sub_275B3FA24(vocab._rawValue, v6);

    if (v7)
    {

      return;
    }

    sub_275B7B09C();

    MEMORY[0x277C89240](0xD000000000000023, 0x8000000275B83430);
    v8 = countAndFlagsBits;
    v11 = 0xD00000000000003ELL;
    v12 = 0x8000000275B833F0;
    v9 = object;
  }

  else
  {
    sub_275B7B09C();

    v11 = 0xD000000000000013;
    v12 = 0x8000000275B83380;
    MEMORY[0x277C89240](countAndFlagsBits, object);

    MEMORY[0x277C89240](0xD000000000000010, 0x8000000275B833A0);

    v8 = 0xD000000000000026;
    v9 = 0x8000000275B833C0;
  }

  MEMORY[0x277C89240](v8, v9);

  sub_275B1814C();
  swift_allocError();
  *v10 = v11;
  v10[1] = v12;
  swift_willThrow();
}

uint64_t sub_275B3FA24(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v8 = 0;
      v9 = 0;
      v2 = v3;
      goto LABEL_11;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_24;
    }

    v10 = (v5 + 16 * v2);
    v9 = *v10;
    v8 = v10[1];

    if (!v4)
    {
      if (v8)
      {
        goto LABEL_20;
      }

      return 1;
    }

    ++v2;
LABEL_11:
    v12 = *(i - 1);
    v11 = *i;

    if (!v8)
    {
      if (v11)
      {
LABEL_20:

        return 0;
      }

      return 1;
    }

    if (!v11)
    {
      goto LABEL_20;
    }

    if (v9 == v12 && v8 == v11)
    {
    }

    else
    {
      v7 = sub_275B7B1BC();

      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unsigned __int8 *sub_275B3FB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_275B7AE3C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_275B400F0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_275B7B0CC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_275B400F0()
{
  v0 = sub_275B7AE4C();
  v4 = sub_275B40170(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_275B40170(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_275B7AD6C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_275B7AFDC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_275B402C8(v9, 0);
  v12 = sub_275B4033C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_275B7AD6C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_275B7B0CC();
LABEL_4:

  return sub_275B7AD6C();
}

void *sub_275B402C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336D0, &qword_275B7DB78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_275B4033C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_275B4055C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_275B7ADDC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_275B7B0CC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_275B4055C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_275B7ADBC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_275B4055C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_275B7ADEC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C89270](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

char *sub_275B405D8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    sub_275B1814C();
    swift_allocError();
    v6 = "a for featureArray description";
    v4 = 0xD000000000000064;
    goto LABEL_7;
  }

  sub_275B2AA24();
  v3 = sub_275B7AFEC();
  v4 = _s33iCloudSubscriptionOptimizerDaemon11FeatureNameO14fromStringListySayACGSgSaySSGFZ_0(v3);

  if (!v4)
  {
    v4 = 0xD00000000000003ELL;
    sub_275B1814C();
    swift_allocError();
    v6 = "with serving vocab.";
LABEL_7:
    *v5 = v4;
    v5[1] = (v6 | 0x8000000000000000);
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_275B406F0()
{
  result = qword_280A32F18;
  if (!qword_280A32F18)
  {
    type metadata accessor for MLModelMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A32F18);
  }

  return result;
}

uint64_t sub_275B40748(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MLModelPerformanceEvent.__allocating_init(withSink:)(uint64_t *a1)
{
  swift_allocObject();
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F500);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MLModelPerformanceEvent.init(withSink:)(uint64_t *a1)
{
  sub_275B19CD4(a1, v5);
  if (qword_28140F6F8 != -1)
  {
    swift_once();
  }

  v4[0] = qword_28140F700;
  v4[1] = unk_28140F708;

  MEMORY[0x277C89240](46, 0xE100000000000000);
  MEMORY[0x277C89240](0xD000000000000012, 0x8000000275B7F500);
  sub_275B19CD4(v5, v4);
  v2 = sub_275B79B9C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t MLModelPerformanceEvent.addNormalizedEntropy(_:)()
{
  sub_275B79B6C();
}

uint64_t sub_275B40BF4()
{
  sub_275B79B6C();
}

uint64_t MLModelPerformanceEvent.addLabel(_:)()
{
  sub_275B79B5C();
}

uint64_t MLModelPerformanceEvent.addLocalHour(_:)()
{
  sub_275B79B7C();
}

uint64_t MLModelPerformanceEvent.__deallocating_deinit()
{
  _s33iCloudSubscriptionOptimizerDaemon0D5EventCfd_0();

  return swift_deallocClassInstance();
}

void *MobileAssetDaemonStateHelper.__allocating_init(withDaemonStateManager:withCatalogDownloadMinInterval:withAssetRefreshMinInterval:withDownloadActivityRunMinInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_275B40E50()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_28140FB90);
  __swift_project_value_buffer(v0, qword_28140FB90);
  type metadata accessor for MobileAssetDaemonStateHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A336E8, &qword_275B7DC90);
  return sub_275B7A97C();
}

void *MobileAssetDaemonStateHelper.init(withDaemonStateManager:withCatalogDownloadMinInterval:withAssetRefreshMinInterval:withDownloadActivityRunMinInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t MobileAssetDaemonStateHelper.isCatalogDownloadNeeded(_:)()
{
  if (qword_28140FB88 != -1)
  {
    swift_once();
  }

  v1 = sub_275B7A96C();
  __swift_project_value_buffer(v1, qword_28140FB90);
  sub_275B79ABC();
  sub_275B1E108();
  v2 = sub_275B7965C();
  MEMORY[0x277C89240](v2);

  sub_275B7A91C();

  if (sub_275B79A4C())
  {
    sub_275B79A2C();
    sub_275B7AB6C();
    _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    sub_275B7ABCC();
    v3 = *(v0 + 24);
    if (sub_275B7AADC())
    {
      sub_275B7B09C();

      sub_275B7AB1C();
      v4 = sub_275B7B19C();
      MEMORY[0x277C89240](v4);

      MEMORY[0x277C89240](0x61207372756F6820, 0xEA00000000006F67);
      MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B83670);

      sub_275B7A91C();

      return 0;
    }

    sub_275B7B09C();

    sub_275B7AB1C();
    v6 = sub_275B7B19C();
    MEMORY[0x277C89240](v6);

    MEMORY[0x277C89240](0x61207372756F6820, 0xEA00000000006F67);
    MEMORY[0x277C89240](0xD000000000000017, 0x8000000275B83670);

    sub_275B7A91C();
  }

  else
  {
    sub_275B7A91C();
  }

  return 1;
}

uint64_t MobileAssetDaemonStateHelper.isAssetRefreshNeeded(_:)()
{
  if ((sub_275B7991C() & 1) == 0)
  {
    return 1;
  }

  sub_275B798FC();
  sub_275B7AB6C();
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7ABCC();
  v1 = *(v0 + 32);
  if ((sub_275B7AADC() & 1) == 0)
  {
    return 1;
  }

  if (qword_28140FB88 != -1)
  {
    swift_once();
  }

  v2 = sub_275B7A96C();
  __swift_project_value_buffer(v2, qword_28140FB90);
  sub_275B7B09C();
  MEMORY[0x277C89240](0xD000000000000030, 0x8000000275B836C0);
  sub_275B7AB1C();
  v3 = sub_275B7B19C();
  MEMORY[0x277C89240](v3);

  MEMORY[0x277C89240](0x61207372756F6820, 0xEA00000000006F67);
  sub_275B7A91C();

  return 0;
}

uint64_t MobileAssetDaemonStateHelper.getTimeSinceLastMACatalogDownload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - v8;
  v10 = sub_275B7AB2C();
  v11 = *(v0 + 16);
  v12 = sub_275B79ABC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 56))(v6, 1, 1, v12);
  if (qword_28140F988 != -1)
  {
    v14 = swift_once();
  }

  v16 = off_28140F990;
  MEMORY[0x28223BE20](v14, v15);
  *(&v19 - 2) = v6;
  *(&v19 - 1) = v11;
  (*(*v16 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8);
  sub_275B0952C(v6, v9);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_275B094C4(v9);
  }

  else
  {
    v17 = sub_275B79A2C();
    sub_275B09600(v9);
    if (v17)
    {
      _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
      sub_275B7AB6C();
      return sub_275B7ABCC();
    }
  }

  return v10;
}

Swift::Bool __swiftcall MobileAssetDaemonStateHelper.lastMADownloadActivityRunIsOldEnough()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v11 = *(v0 + 16);
  v12 = sub_275B79ABC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 56))(v6, 1, 1, v12);
  if (qword_28140F988 != -1)
  {
    v14 = swift_once();
  }

  v16 = off_28140F990;
  v17 = MEMORY[0x28223BE20](v14, v15);
  *(&v21 - 2) = v6;
  *(&v21 - 1) = v11;
  (*(*v16 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B1E2A0, v17);
  sub_275B0952C(v6, v10);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_275B094C4(v10);
    return 1;
  }

  sub_275B79A5C();
  sub_275B09600(v10);
  _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
  sub_275B7AB6C();
  sub_275B7ABCC();
  v18 = *(v1 + 40);
  if ((sub_275B7AADC() & 1) == 0)
  {
    return 1;
  }

  if (qword_28140FB88 != -1)
  {
    swift_once();
  }

  v19 = sub_275B7A96C();
  __swift_project_value_buffer(v19, qword_28140FB90);
  sub_275B7A91C();
  return 0;
}