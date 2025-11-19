void sub_1B1AB483C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B1A9547C(a1);
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = 0;
    v21 = v4;
    v22 = MEMORY[0x1E69E7CC0];
    v20 = *(&unk_1F28BA540 + v5 + 32);
    if (v20)
    {
      v7 = 0x656372756F736572;
    }

    else
    {
      v7 = 0x6563696F76;
    }

    if (*(&unk_1F28BA540 + v5 + 32))
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    while (v3 != v6)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B2738A20](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
      if (qword_1ED9A9960 != -1)
      {
        swift_once();
      }

      v11 = qword_1ED9A9968;
      v12 = sub_1B1C2D248();

      if (v12)
      {
        v13 = 0x656372756F736572;
      }

      else
      {
        v13 = 0x6563696F76;
      }

      if (v12)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      if (v13 == v7 && v14 == v8)
      {
      }

      else
      {
        v16 = sub_1B1C2D7A8();

        if ((v16 & 1) == 0)
        {

          goto LABEL_29;
        }
      }

      sub_1B1C2D588();
      v17 = *(v22 + 16);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      sub_1B1C2D598();
LABEL_29:
      ++v6;
    }

    if (sub_1B1A9547C(v22))
    {
      v18 = sub_1B1AB2AB8(v20, v22, a2);
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1B1AB4AD0(v18);
    v4 = 1;
    v5 = 1u;
  }

  while ((v21 & 1) == 0);
}

uint64_t sub_1B1AB4AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1C2D468();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_43_0();
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return OUTLINED_FUNCTION_43_0();
    }
  }

  if (v5)
  {
    result = sub_1B1A9547C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for TTSAsset();
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_43_0();
      }

      if (v7 >= 1)
      {
        sub_1B1B9A440(&qword_1EB762648, &qword_1EB762640, &qword_1B1C383E8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762640, &qword_1B1C383E8);
          v9 = sub_1B1B37C88(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_43_0();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B1AB4C6C(uint64_t a1)
{
  v2 = sub_1B1A9547C(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = OUTLINED_FUNCTION_33_2();
      v4 = MEMORY[0x1B2738A20](v6);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    sub_1B1AA0BC0();
  }
}

void sub_1B1AB4D04()
{
  OUTLINED_FUNCTION_25();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F00, &qword_1B1C36480);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43[-v5];
  v7 = sub_1B1C2C1C8();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43[-v19];
  v21 = (v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
  os_unfair_lock_lock(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
  sub_1B1AA101C(v21 + *(v22 + 28), v6, &unk_1EB761F00, &qword_1B1C36480);
  os_unfair_lock_unlock(v21);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1B1A90C20(v6, &unk_1EB761F00, &qword_1B1C36480);
  }

  else
  {
    (*(v10 + 32))(v20, v6, v7);
    sub_1B1A8E474(0, &qword_1ED9A9810, 0x1E696AAE8);
    v23 = *(v10 + 16);
    v23(v18, v20, v7);
    if (sub_1B1AB30DC(v18))
    {
      v24 = *(v10 + 8);
      v25 = OUTLINED_FUNCTION_72();
      v26(v25);
    }

    else
    {
      v27 = sub_1B1C2D0B8();
      if (qword_1ED9A99B8 != -1)
      {
        OUTLINED_FUNCTION_0_12();
      }

      v28 = qword_1ED9AA668;
      v23(v15, v20, v7);
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136446210;
        OUTLINED_FUNCTION_12_8();
        sub_1B1AADE74(v31, v32);
        v44 = v27;
        v33 = sub_1B1C2D778();
        v35 = v34;
        v36 = *(v10 + 8);
        v37 = OUTLINED_FUNCTION_33_2();
        v36(v37);
        v38 = sub_1B1A930E4(v33, v35, &v45);

        *(v29 + 4) = v38;
        _os_log_impl(&dword_1B1A8A000, v28, v44, "Unable to initialize asset bundle from path: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_11();
        v39 = OUTLINED_FUNCTION_72();
        v36(v39);
      }

      else
      {
        v40 = *(v10 + 8);
        v41 = OUTLINED_FUNCTION_33_2();
        v40(v41);
        v42 = OUTLINED_FUNCTION_72();
        v40(v42);
      }
    }
  }

  OUTLINED_FUNCTION_26_1();
}

BOOL sub_1B1AB50AC()
{
  v1 = OUTLINED_FUNCTION_92();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = (v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_path);
  os_unfair_lock_lock(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762728, &unk_1B1C38940);
  sub_1B1AA101C(v9 + *(v10 + 28), v8, &unk_1EB761F00, &qword_1B1C36480);
  v11 = sub_1B1C2C1C8();
  v12 = __swift_getEnumTagSinglePayload(v8, 1, v11) != 1;
  v13 = OUTLINED_FUNCTION_33_2();
  sub_1B1A90C20(v13, v14, &qword_1B1C36480);
  os_unfair_lock_unlock(v9);
  return v12;
}

void sub_1B1AB51D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1B1A9EEE0(a1, v19);
    v5 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_8();
    sub_1B1AB92E8();
    *v2 = v18;
  }

  else
  {
    sub_1B1A90C78(a1, &qword_1EB761DE0, &qword_1B1C352C0);
    v6 = *v2;
    sub_1B1AB2878(a2);
    if (v7)
    {
      v8 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_39_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
      v9 = OUTLINED_FUNCTION_48_5();
      OUTLINED_FUNCTION_46_3(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19[0]);
      type metadata accessor for TTSAssetProperty(0);
      sub_1B1B37E44();
      OUTLINED_FUNCTION_36();
      sub_1B1C2D648();
      *v3 = v6;
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    sub_1B1A90C78(v19, &qword_1EB761DE0, &qword_1B1C352C0);
  }
}

uint64_t static TTSAsset.bestAsset(ofTypes:matching:)(uint64_t a1, uint64_t a2)
{
  v2 = static TTSAsset.listAssets(ofTypes:matching:)(a1, a2);
  result = sub_1B1A9547C(v2);
  if (!result)
  {

    return 0;
  }

  v4 = result;
  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v6 = MEMORY[0x1B2738A20](0, v2);
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_5:
    for (i = 1; v4 != i; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1B2738A20](i, v2);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (i >= *(v5 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (static TTSAsset.isBetterAsset(_:_:)(v8))
      {

        v6 = v9;
      }

      else
      {
      }
    }

    return v6;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v2 + 32);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

{
  sub_1B1C0054C(a2);
  v4 = sub_1B1C00184(v3);

  v5 = static TTSAsset.bestAsset(ofTypes:matching:)(a1, v4);

  return v5;
}

void sub_1B1AB540C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4);
  *(v7 + 8 * v5) = v6;
  sub_1B1A9EEE0(v9, (*(v8 + 56) + 32 * v5));
  OUTLINED_FUNCTION_38_2();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

uint64_t sub_1B1AB5454(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v15 = 0;
  v16 = 0xE000000000000000;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; i = v9)
  {
    v9 = i;
LABEL_8:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(a1 + 48) + 8 * v10);
    sub_1B1A93378(*(a1 + 56) + 32 * v10, v14);
    v13 = v11;
    sub_1B1AB5604(&v15, &v13);
    v6 &= v6 - 1;
    sub_1B1A90C78(&v13, &qword_1EB764318, &qword_1B1C41660);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v13 = 91;
      v14[0] = 0xE100000000000000;
      MEMORY[0x1B27381B0](v15, v16);

      MEMORY[0x1B27381B0](93, 0xE100000000000000);

      return v13;
    }

    v6 = *(v3 + 8 * v9);
    ++i;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1B1A90C78(&v13, &qword_1EB764318, &qword_1B1C41660);

  __break(1u);
  return result;
}

uint64_t sub_1B1AB5604(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  if (v5)
  {
    v2 = a1;
    MEMORY[0x1B27381B0](8236, 0xE200000000000000);
  }

  sub_1B1AB57B4(a2, &v11);
  if (v11 > 8)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v6 = &unk_1F28B9028 + 16 * v11;
  v7 = *(v6 + 5);
  v13 = *(v6 + 4);
  v14 = v7;

  __swift_destroy_boxed_opaque_existential_0(v12);
  MEMORY[0x1B27381B0](8250, 0xE200000000000000);
  MEMORY[0x1B27381B0](v13, v14);

  sub_1B1AB57B4(a2, &v11);
  type metadata accessor for TTSAssetVoiceGender(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    v12[0] = 0xE000000000000000;
    sub_1B1C2D618();
    MEMORY[0x1B27381B0](v11, v12[0]);
  }

  v2 = v13;
  if (qword_1ED9A4F40 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v8 = sub_1B1B2A2C0(v2, qword_1ED9AA460);
  if (!v9)
  {
    goto LABEL_10;
  }

  MEMORY[0x1B27381B0](v8);
}

uint64_t sub_1B1AB57B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB764318, &qword_1B1C41660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VoiceBrand.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6669636570736E75;
    case 2:
      return 0x74756F6B726F77;
    case 1:
      return 1769105779;
  }

  sub_1B1B1063C();
  return sub_1B1C2D3E8();
}

void sub_1B1AB58E0()
{
  OUTLINED_FUNCTION_21_1();
  if (v5)
  {
    OUTLINED_FUNCTION_3_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_20();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_6_2(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C58, &unk_1B1C35DD0);
    v9 = OUTLINED_FUNCTION_38();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_42_2();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1B1AB59AC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B1AB5CCC(a1, a2);
  sub_1B1AB5A68(&unk_1F28B8578);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1B1AB59F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C80, &qword_1B1C35DF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1B1AB5A68(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1B1B04C84(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B1AB5B4C(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1C2CA98();

  return v3;
}

uint64_t sub_1B1AB5BB8()
{
  if (qword_1EB761490 != -1)
  {
    swift_once();
  }

  if (byte_1EB772D29 == 1)
  {
    type metadata accessor for TTSAssetUAFStrategy();
    return swift_initStaticObject();
  }

  else
  {
    v1 = sub_1B1C2CB28();
    v2 = NSClassFromString(v1);

    if (v2)
    {
      if (qword_1ED9A9520 != -1)
      {
        swift_once();
      }
    }

    else
    {
      type metadata accessor for TTSAssetStubStrategy();
      return swift_initStaticObject();
    }
  }
}

uint64_t sub_1B1AB5CCC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1B1C2CD18())
  {
    result = sub_1B1AB59F8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1B1C2D508();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1B1C2D578();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B1AB5DE4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1B1C2D468();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1B1AB5F40(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    type metadata accessor for TTSAsset();
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B2738A20](v6, a2);
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_1B1AB5F60();
      v11 = v10;

      v13 = *(v15 + 16);
      v12 = *(v15 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1B1AB5F40(v12 > 1, v13 + 1, 1);
      }

      ++v6;
      *(v15 + 16) = v13 + 1;
      v14 = v15 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v6);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AB5F40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1B1B2FD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B1AB5F60()
{
  if (qword_1ED9A9840 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED9A9728;
  sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  v1 = v0;
  v2 = OUTLINED_FUNCTION_18_0();

  if (v2)
  {
    type metadata accessor for TTSAssetMAStrategy();
    return swift_initStaticObject();
  }

  if (qword_1ED9A94C8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9A94B8;
  v5 = OUTLINED_FUNCTION_18_0();

  if (v5)
  {
    type metadata accessor for TTSAsset();
    if (sub_1B1B34578())
    {
      type metadata accessor for TTSAssetTrialStrategy();
      return swift_initStaticObject();
    }
  }

  else
  {
    if (qword_1EB761310 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB761318;
    v7 = OUTLINED_FUNCTION_18_0();

    if (v7)
    {
      return sub_1B1AB5BB8();
    }

    if (qword_1ED9A4F08 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED9A4F10;
    v9 = OUTLINED_FUNCTION_18_0();

    if (v9)
    {
      type metadata accessor for TTSAssetAdhocStrategy();
      return swift_initStaticObject();
    }

    if (qword_1ED9A9630 != -1)
    {
      OUTLINED_FUNCTION_7_25();
      swift_once();
    }

    v10 = qword_1ED9A9638;
    v11 = OUTLINED_FUNCTION_18_0();

    if (v11)
    {
      type metadata accessor for TTSAssetPreinstalledStrategy();
      return swift_initStaticObject();
    }

    if (qword_1ED9A4EF8 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED9A4F00;
    v13 = OUTLINED_FUNCTION_18_0();

    if (v13)
    {
      type metadata accessor for TTSAssetFactoryInstalledStrategy();
      return swift_initStaticObject();
    }
  }

  type metadata accessor for TTSAssetStubStrategy();
  return swift_initStaticObject();
}

uint64_t sub_1B1AB6238(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7622E8, &qword_1B1C37900);
  result = sub_1B1C2D4F8();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1B1C2D888();

    sub_1B1C2CC48();
    result = sub_1B1C2D8E8();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1B1C2D7A8() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1B1AB63EC(uint64_t a1, char a2, unint64_t a3)
{
  v161 = a3;
  if (a2)
  {
    LODWORD(v4) = 1;
  }

  else
  {
    LODWORD(v4) = sub_1B1C2D7A8();
  }

  sub_1B1AA0AEC(1, a1);
  v5 = &unk_1B1C36000;
  if (!v181)
  {
    sub_1B1A90C78(&v180, &qword_1EB761DE0, &qword_1B1C352C0);
    v10 = 0;
    goto LABEL_12;
  }

  sub_1B1A9EEE0(&v180, &v182);
  sub_1B1A93378(&v182, &v180);
  if (swift_dynamicCast())
  {
    v6 = v177;
    v7 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B1C361C0;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1B1AB6238(v8);
LABEL_10:
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0(&v182);
    goto LABEL_12;
  }

  sub_1B1A93378(&v182, &v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    v9 = sub_1B1ACB6B8(v177);
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_0(&v182);
  v10 = MEMORY[0x1E69E7CD0];
LABEL_12:
  sub_1B1AA0AEC(8, a1);
  v170 = v10;
  if (v181)
  {
    sub_1B1A9EEE0(&v180, &v182);
    sub_1B1A93378(&v182, &v180);
    if (swift_dynamicCast())
    {
      v11 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C40, &unk_1B1C37E60);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1B1C361C0;
      *(v12 + 32) = v11;
      sub_1B1ABB3B0(0, 1, v12);

      if (v11 < 3)
      {
        sub_1B1ACBAE8();
        v14 = v13;
        v15 = *(v13 + 16);
        v16 = v15 + 1;
        if (v15 >= *(v13 + 24) >> 1)
        {
          goto LABEL_182;
        }

        goto LABEL_16;
      }

      v14 = MEMORY[0x1E69E7CC0];
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(&v182);
    }

    else
    {
      sub_1B1A93378(&v182, &v180);
      if (swift_dynamicCast())
      {
        v17 = v177;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BB0, &qword_1B1C35D48);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1B1C361C0;
        *(v14 + 32) = v17;
        goto LABEL_21;
      }

      sub_1B1A93378(&v182, &v180);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C50, &qword_1B1C362A0);
      if (swift_dynamicCast())
      {
        v22 = a1;
        v23 = *(v177 + 16);
        if (v23)
        {
          v24 = (v177 + 32);
          v14 = MEMORY[0x1E69E7CC0];
          do
          {
            v26 = *v24++;
            v25 = v26;
            if (v26 <= 2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v28 = *(v14 + 16);
                sub_1B1ACBAE8();
                v14 = v29;
              }

              v27 = *(v14 + 16);
              if (v27 >= *(v14 + 24) >> 1)
              {
                sub_1B1ACBAE8();
                v14 = v30;
              }

              *(v14 + 16) = v27 + 1;
              *(v14 + 8 * v27 + 32) = v25;
            }

            --v23;
          }

          while (v23);
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_0(&v182);
        v10 = v170;
        a1 = v22;
        v5 = 0x1B1C36000;
      }

      else
      {
        sub_1B1A93378(&v182, &v180);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v182);
          v14 = v177;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v182);
          v14 = MEMORY[0x1E69E7CC0];
        }
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v180, &qword_1EB761DE0, &qword_1B1C352C0);
    v14 = 0;
  }

  sub_1B1AA0AEC(2, a1);
  if (v181)
  {
    sub_1B1A9EEE0(&v180, &v182);
    sub_1B1A93378(&v182, &v180);
    if (swift_dynamicCast())
    {
      v11 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C40, &unk_1B1C37E60);
      v18 = swift_allocObject();
      *(v18 + 16) = *(v5 + 448);
      *(v18 + 32) = v11;
      sub_1B1ABB3B0(0, 1, v18);

      sub_1B1B0472C();
      v20 = v19;
      v10 = v19[2];
      v16 = v10 + 1;
      if (v10 >= v19[3] >> 1)
      {
LABEL_178:
        sub_1B1B0472C();
        v20 = v151;
      }

      v20[2] = v16;
      v20[v10 + 4] = v11;
      __swift_destroy_boxed_opaque_existential_0(&v182);
      v10 = v170;
    }

    else
    {
      sub_1B1A93378(&v182, &v180);
      type metadata accessor for TTSAssetVoiceGender(0);
      if (swift_dynamicCast())
      {
        v21 = v177;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761BB8, &qword_1B1C35D50);
        v20 = swift_allocObject();
        *(v20 + 1) = *(v5 + 448);
        v20[4] = v21;
        __swift_destroy_boxed_opaque_existential_0(&v182);
      }

      else
      {
        sub_1B1A93378(&v182, &v180);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761C50, &qword_1B1C362A0);
        if (swift_dynamicCast())
        {
          v31 = a1;
          v32 = *(v177 + 16);
          if (v32)
          {
            v33 = (v177 + 32);
            v20 = MEMORY[0x1E69E7CC0];
            do
            {
              v35 = *v33++;
              v34 = v35;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v37 = v20[2];
                sub_1B1B0472C();
                v20 = v38;
              }

              v36 = v20[2];
              if (v36 >= v20[3] >> 1)
              {
                sub_1B1B0472C();
                v20 = v39;
              }

              v20[2] = v36 + 1;
              v20[v36 + 4] = v34;
              --v32;
            }

            while (v32);
          }

          else
          {
            v20 = MEMORY[0x1E69E7CC0];
          }

          __swift_destroy_boxed_opaque_existential_0(&v182);
          v10 = v170;
          a1 = v31;
        }

        else
        {
          sub_1B1A93378(&v182, &v180);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762528, &unk_1B1C380E0);
          if (swift_dynamicCast())
          {
            __swift_destroy_boxed_opaque_existential_0(&v182);
            v20 = v177;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v182);
            v20 = MEMORY[0x1E69E7CC0];
          }
        }
      }
    }
  }

  else
  {
    sub_1B1A90C78(&v180, &qword_1EB761DE0, &qword_1B1C352C0);
    v20 = 0;
  }

  v172 = v20;
  v5 = MEMORY[0x1E69E7CC0];
  sub_1B1AA0AEC(3, a1);
  v168 = v4;
  v174 = v14;
  if (v181)
  {
    sub_1B1A9EEE0(&v180, &v182);
    sub_1B1A93378(&v182, &v180);
    if (swift_dynamicCast())
    {
      v40 = v177;
      v41 = v178;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1B1C361C0;
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      v171 = v42;
LABEL_65:
      __swift_destroy_boxed_opaque_existential_0(&v182);
      goto LABEL_66;
    }

    sub_1B1A93378(&v182, &v180);
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    if (swift_dynamicCast())
    {
      v43 = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B1C361C0;
      v45 = [v43 string];
      v46 = sub_1B1C2CB58();
      v47 = a1;
      v49 = v48;

      *(v44 + 32) = v46;
      *(v44 + 40) = v49;
      v10 = v170;
      v171 = v44;
      a1 = v47;

      goto LABEL_65;
    }

    sub_1B1A93378(&v182, &v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v182);
      v123 = v177;
LABEL_168:
      v171 = v123;
      goto LABEL_66;
    }

    sub_1B1A93378(&v182, &v180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762678, &qword_1B1C38428);
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v182);
      v123 = MEMORY[0x1E69E7CC0];
      goto LABEL_168;
    }

    v124 = v177;
    v125 = sub_1B1A9547C(v177);
    if (v125)
    {
      v126 = v125;
      v175 = a1;
      *&v180 = v5;
      sub_1B1AC9FA8();
      if (v126 < 0)
      {
        __break(1u);
        goto LABEL_184;
      }

      v127 = 0;
      v171 = v180;
      do
      {
        if ((v124 & 0xC000000000000001) != 0)
        {
          v128 = MEMORY[0x1B2738A20](v127, v124);
        }

        else
        {
          v128 = *(v124 + 8 * v127 + 32);
        }

        v129 = v128;
        v130 = [v128 string];
        v131 = sub_1B1C2CB58();
        v4 = v132;

        v133 = v171;
        *&v180 = v171;
        v134 = *(v171 + 16);
        if (v134 >= *(v171 + 24) >> 1)
        {
          sub_1B1AC9FA8();
          v133 = v180;
        }

        ++v127;
        *(v133 + 16) = v134 + 1;
        v171 = v133;
        v135 = v133 + 16 * v134;
        *(v135 + 32) = v131;
        *(v135 + 40) = v4;
        LOBYTE(v4) = v168;
      }

      while (v126 != v127);
      __swift_destroy_boxed_opaque_existential_0(&v182);

      a1 = v175;
    }

    else
    {
LABEL_172:

      __swift_destroy_boxed_opaque_existential_0(&v182);
      v171 = MEMORY[0x1E69E7CC0];
    }

    v10 = v170;
  }

  else
  {
    sub_1B1A90C78(&v180, &qword_1EB761DE0, &qword_1B1C352C0);
    v171 = 0;
  }

LABEL_66:
  sub_1B1AA0AEC(4, a1);
  if (!v181)
  {
    sub_1B1A90C78(&v180, &qword_1EB761DE0, &qword_1B1C352C0);
    v164 = 0;
    v166 = 0;
    v173 = 0;
    goto LABEL_74;
  }

  sub_1B1A9EEE0(&v180, &v182);
  sub_1B1A93378(&v182, &v180);
  if (swift_dynamicCast())
  {
    v50 = v177;
    v51 = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1B1C361C0;
    *(v52 + 32) = v50;
    *(v52 + 40) = v51;
LABEL_72:
    v60 = __swift_destroy_boxed_opaque_existential_0(&v182);
LABEL_73:
    *&v182 = 0x686D75696D657270;
    *(&v182 + 1) = 0xEB00000000686769;
    MEMORY[0x1EEE9AC00](v60);
    v155 = &v182;

    v164 = sub_1B1ABAA5C(sub_1B1ABB394, &v153, v52);
    v173 = 0;
    v166 = v52;

    v10 = v170;
LABEL_74:
    sub_1B1AA0AEC(0, a1);
    if (v183)
    {
      v61 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        v182 = v180;
        *&v180 = 45;
        *(&v180 + 1) = 0xE100000000000000;
        v177 = 0;
        v178 = 0xE000000000000000;
        v155 = sub_1B1A8EDAC();
        v156 = v155;
        v153 = v61;
        v154 = v155;
        sub_1B1C2D398();

        v160 = sub_1B1C2CBE8();
        v165 = v62;

LABEL_79:
        sub_1B1AA0AEC(0, a1);
        if (v183)
        {
          sub_1B1A8E474(0, &qword_1ED9A8D88, 0x1E696AE70);
          if (swift_dynamicCast())
          {
            a1 = v180;
          }

          else
          {
            a1 = 0;
          }
        }

        else
        {
          sub_1B1A90C78(&v182, &qword_1EB761DE0, &qword_1B1C352C0);
          a1 = 0;
        }

        v179 = v5;
        v11 = v161;
        v63 = sub_1B1A9547C(v161);
        v16 = 0;
        v175 = v11 & 0xFFFFFFFFFFFFFF8;
        v176 = v11 & 0xC000000000000001;
        v64 = v11 + 32;
        v169 = (v174 + 32);
        v167 = v172 + 4;
        v163 = a1;
        v162 = (v165 | a1) == 0;
        while (1)
        {
          while (1)
          {
            while (1)
            {
              while (1)
              {
                if (v16 == v63)
                {

                  return;
                }

                if (v176)
                {
                  v5 = 45;
                  v14 = 95;
                  v65 = MEMORY[0x1B2738A20](v16, v161);
                }

                else
                {
                  if (v16 >= *(v175 + 16))
                  {
                    goto LABEL_171;
                  }

                  v5 = 45;
                  v14 = 95;
                  v65 = *(v64 + 8 * v16);
                }

                a1 = v65;
                if (__OFADD__(v16++, 1))
                {
                  __break(1u);
LABEL_171:
                  __break(1u);
                  goto LABEL_172;
                }

                if (v10)
                {
                  v11 = sub_1B1ABA04C();
                  v67 = sub_1B1AB7C38(v11, v10);

                  if (v67)
                  {
                    goto LABEL_92;
                  }
                }

                if ((v4 & 1) == 0)
                {
                  break;
                }

LABEL_94:
                v11 = &v179;
                sub_1B1C2D588();
                v68 = *(v179 + 16);
                sub_1B1C2D5C8();
                sub_1B1C2D5D8();
                sub_1B1C2D598();
              }

              v69 = v174;
              if (v174)
              {
                v11 = a1;
                v70 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x130))();
                v71 = *(v69 + 16);
                v72 = v169;
                while (v71)
                {
                  v73 = *v72++;
                  --v71;
                  if (v73 == v70)
                  {
                    goto LABEL_99;
                  }
                }

                goto LABEL_92;
              }

LABEL_99:
              v74 = v172;
              if (v172)
              {
                v11 = a1;
                v75 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xC0))();
                v76 = v74[2];
                v77 = v167;
                while (v76)
                {
                  v78 = *v77++;
                  --v76;
                  if (v78 == v75)
                  {
                    goto LABEL_103;
                  }
                }

                goto LABEL_92;
              }

LABEL_103:
              v79 = v171;
              if (!v171)
              {
                goto LABEL_187;
              }

              v80 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
              v81 = sub_1B1ABB3B0(7, 1, v80);
              v82 = *(v80 + 144);
              v11 = *(v80 + 152);
              *&v182 = v82;
              *(&v182 + 1) = v11;
              MEMORY[0x1EEE9AC00](v81);
              v155 = &v182;

              v83 = v79;
              v84 = v173;
              v85 = sub_1B1ABAA5C(sub_1B1ABB394, &v153, v83);
              v173 = v84;

              if (v85)
              {
LABEL_187:
                v86 = v166;
                if (!v166)
                {
                  break;
                }

                v87 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
                v88 = sub_1B1ABB3B0(8, 1, v87);
                v89 = *(v87 + 160);
                v11 = *(v87 + 168);
                *&v182 = v89;
                *(&v182 + 1) = v11;
                MEMORY[0x1EEE9AC00](v88);
                v155 = &v182;

                v90 = v86;
                v91 = v173;
                v92 = sub_1B1ABAA5C(sub_1B1ABAB38, &v153, v90);
                v173 = v91;

                if (v92)
                {
                  break;
                }
              }

              LOBYTE(v4) = v168;
              v10 = v170;
            }

            LODWORD(v4) = v168;
            v10 = v170;
            v93 = MEMORY[0x1E69E6158];
            if (v164)
            {
              break;
            }

            v109 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
            if (v109[2] < 9uLL)
            {
              __break(1u);
LABEL_177:
              __break(1u);
              goto LABEL_178;
            }

            v110 = v109[20] == 0x686D75696D657270 && v109[21] == 0xEB00000000686769;
            if (!v110 && (sub_1B1C2D7A8() & 1) == 0)
            {
              break;
            }

LABEL_92:
          }

          if (v162)
          {
            goto LABEL_94;
          }

          v94 = *(a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16);
          if (v94[2] < 7uLL)
          {
            goto LABEL_177;
          }

          v159 = a1 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier;
          v96 = v94[16];
          v95 = v94[17];
          *&v182 = v96;
          *(&v182 + 1) = v95;
          *&v180 = 95;
          *(&v180 + 1) = 0xE100000000000000;
          v177 = 45;
          v178 = 0xE100000000000000;
          v15 = sub_1B1A8EDAC();
          v155 = v15;
          v156 = v15;
          v153 = v93;
          v154 = v15;
          v11 = sub_1B1C2D398();
          v98 = v97;

          v99 = HIBYTE(v98) & 0xF;
          if ((v98 & 0x2000000000000000) == 0)
          {
            v99 = v11 & 0xFFFFFFFFFFFFLL;
          }

          if (v99)
          {
            if (v165)
            {
              v100 = *(v159 + 16);
              if (v100[2] < 7uLL)
              {
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                sub_1B1ACBAE8();
                v14 = v152;
LABEL_16:
                *(v14 + 16) = v16;
                *(v14 + 8 * v15 + 32) = v11;
                v10 = v170;
                goto LABEL_21;
              }

              v102 = v100[16];
              v101 = v100[17];
              *&v182 = v102;
              *(&v182 + 1) = v101;
              *&v180 = 95;
              *(&v180 + 1) = 0xE100000000000000;
              v5 = 45;
              v177 = 45;
              v178 = 0xE100000000000000;
              v155 = v15;
              v156 = v15;
              v154 = v15;
              v103 = MEMORY[0x1E69E6158];
              v153 = MEMORY[0x1E69E6158];
              *&v182 = sub_1B1C2D398();
              *(&v182 + 1) = v104;
              *&v180 = 45;
              *(&v180 + 1) = 0xE100000000000000;
              v177 = 0;
              v178 = 0xE000000000000000;
              v155 = v15;
              v156 = v15;
              v153 = v103;
              v154 = v15;
              sub_1B1C2D398();

              v105 = sub_1B1C2CBE8();
              v11 = v106;

              if (v160 == v105 && v165 == v11)
              {

                LODWORD(v4) = v168;
              }

              else
              {
                v108 = sub_1B1C2D7A8();

                LODWORD(v4) = v168;
                if ((v108 & 1) == 0)
                {
                  goto LABEL_137;
                }
              }
            }

            if (!v163)
            {
              goto LABEL_136;
            }

            v5 = v159;
            v111 = *(v159 + 16);
            if (v111[2] < 7uLL)
            {
              goto LABEL_180;
            }

            v113 = v111[16];
            v112 = v111[17];
            *&v182 = v113;
            *(&v182 + 1) = v112;
            *&v180 = 95;
            *(&v180 + 1) = 0xE100000000000000;
            v177 = 45;
            v178 = 0xE100000000000000;
            v158 = v163;
            v155 = v15;
            v156 = v15;
            v154 = v15;
            v114 = MEMORY[0x1E69E6158];
            v153 = MEMORY[0x1E69E6158];
            sub_1B1C2D398();
            v11 = v115;
            v157 = sub_1B1C2CB28();

            v116 = *(v5 + 16);
            if (v116[2] < 7uLL)
            {
              goto LABEL_181;
            }

            v118 = v116[16];
            v117 = v116[17];
            *&v182 = v118;
            *(&v182 + 1) = v117;
            *&v180 = 95;
            *(&v180 + 1) = 0xE100000000000000;
            v177 = 45;
            v178 = 0xE100000000000000;
            v155 = v15;
            v156 = v15;
            v153 = v114;
            v154 = v15;
            sub_1B1C2D398();
            v120 = (v119 & 0x1000000000000000) != 0 ? sub_1B1C2CD68() : sub_1B1C2CD78();
            v121 = v120;

            v5 = v158;
            v122 = v157;
            v11 = [v158 numberOfMatchesInString:v157 options:4 range:{0, v121}];

            if (v11)
            {
LABEL_136:
              v10 = v170;
              goto LABEL_94;
            }
          }

LABEL_137:

          v10 = v170;
        }
      }
    }

    else
    {
      sub_1B1A90C78(&v182, &qword_1EB761DE0, &qword_1B1C352C0);
    }

    v160 = 0;
    v165 = 0;
    goto LABEL_79;
  }

  sub_1B1A93378(&v182, &v180);
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  if (swift_dynamicCast())
  {
    v53 = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761C70, &qword_1B1C36250);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1B1C361C0;
    v54 = [v53 string];
    v55 = sub_1B1C2CB58();
    v56 = v5;
    v57 = a1;
    v59 = v58;

    *(v52 + 32) = v55;
    *(v52 + 40) = v59;
    a1 = v57;
    v5 = v56;

    goto LABEL_72;
  }

  sub_1B1A93378(&v182, &v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761F10, &unk_1B1C37DA0);
  if (swift_dynamicCast())
  {
    v60 = __swift_destroy_boxed_opaque_existential_0(&v182);
    v52 = v177;
    goto LABEL_73;
  }

  sub_1B1A93378(&v182, &v180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762670, &unk_1B1C38418);
  if (!swift_dynamicCast())
  {
    v60 = __swift_destroy_boxed_opaque_existential_0(&v182);
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v136 = v177;
  v137 = sub_1B1A9547C(v177);
  if (!v137)
  {

    v60 = __swift_destroy_boxed_opaque_existential_0(&v182);
    v52 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_73;
  }

  v138 = v137;
  v175 = a1;
  *&v180 = MEMORY[0x1E69E7CC0];
  sub_1B1AC9FA8();
  if ((v138 & 0x8000000000000000) == 0)
  {
    v139 = 0;
    v140 = v180;
    v176 = v136 & 0xC000000000000001;
    v141 = v136;
    do
    {
      if (v176)
      {
        v142 = MEMORY[0x1B2738A20](v139, v136);
      }

      else
      {
        v142 = *(v136 + 8 * v139 + 32);
      }

      v143 = v142;
      v144 = [v142 string];
      v145 = sub_1B1C2CB58();
      v147 = v146;

      v148 = v140;
      *&v180 = v140;
      v149 = *(v140 + 16);
      if (v149 >= *(v140 + 24) >> 1)
      {
        sub_1B1AC9FA8();
        v148 = v180;
      }

      ++v139;
      *(v148 + 16) = v149 + 1;
      v140 = v148;
      v150 = v148 + 16 * v149;
      *(v150 + 32) = v145;
      *(v150 + 40) = v147;
      v136 = v141;
    }

    while (v138 != v139);
    __swift_destroy_boxed_opaque_existential_0(&v182);

    a1 = v175;
    v52 = v140;
    goto LABEL_175;
  }

LABEL_184:
  __break(1u);
}

uint64_t sub_1B1AB7C38(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_1B1C2D888();

  sub_1B1C2CC48();
  v12 = sub_1B1C2D8E8();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_1B1C2D7A8();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

void sub_1B1AB7D70(uint64_t a1)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for TTSAssetUAFStrategy();
  sub_1B1AB83A4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v4 = sub_1B1A9547C(a1);
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2738A20](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    j = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v24 = MEMORY[0x1B2738A20](0, a1);
      goto LABEL_26;
    }

    v3 = &v6[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty];
    os_unfair_lock_lock(&v6[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_isDirty]);
    v7 = *(v3 + 4);
    os_unfair_lock_unlock(v3);
    if (v7)
    {
      sub_1B1C2D588();
      v8 = *(aBlock[0] + 2);
      sub_1B1C2D5C8();
      sub_1B1C2D5D8();
      v3 = aBlock;
      sub_1B1C2D598();
    }

    else
    {
    }
  }

  a1 = aBlock[0];
  v9 = sub_1B1A9547C(aBlock[0]);
  if (!v9)
  {
    v20 = *MEMORY[0x1E69E9840];

    return;
  }

  v4 = v9;
  v10 = [objc_opt_self() currentProcess];
  v11 = [v10 isManaged];

  if (v11)
  {
    sub_1B1A8E474(0, &qword_1EB762768, 0x1E69C7560);
    v12 = sub_1B1B432F4();
    v13 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
    OUTLINED_FUNCTION_66();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B1C37D90;
    *(v14 + 32) = v12;
    v15 = objc_allocWithZone(MEMORY[0x1E69C7548]);
    v16 = v12;
    v17 = sub_1B1B47364(0xD00000000000001DLL, 0x80000001B1C4DAA0, v13);
    v18 = v17;
    if (v17)
    {
      aBlock[0] = 0;
      if (![v17 acquireWithError_])
      {
        v21 = aBlock[0];
        v22 = sub_1B1C2C058();

        swift_willThrow();
        goto LABEL_23;
      }

      v19 = aBlock[0];
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_23:
  v23 = sub_1B1A9547C(a1);
  i = [objc_opt_self() sharedManager];
  j = sub_1B1C2CB28();
  if (v23 == 1)
  {
    v3 = (a1 & 0xC000000000000001);
    sub_1B1A9EC44(0, (a1 & 0xC000000000000001) == 0, a1);
    v38 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_47;
    }

    v24 = *(a1 + 32);
LABEL_26:
    v25 = v24;
    v26 = *&v24[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier];
    v27 = *&v24[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 8];
    v28 = *&v24[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16];

    sub_1B1B67C04(v26, v27, v28);

    v29 = sub_1B1C2CA78();

    v30 = [i retrieveAssetSet:j usages:v29];

    if (!v30)
    {

      i = 0;
      v18 = v38;
      goto LABEL_41;
    }

    v18 = v38;
LABEL_30:
    i = v30;
    for (j = 0; v4 != j; ++j)
    {
      if (v3)
      {
        v31 = MEMORY[0x1B2738A20](j, a1);
      }

      else
      {
        if (j >= *(a1 + 16))
        {
          goto LABEL_46;
        }

        v31 = *(a1 + 8 * j + 32);
      }

      v32 = v31;
      if (__OFADD__(j, 1))
      {
        goto LABEL_45;
      }

      aBlock[0] = v31;
      sub_1B1B43388(aBlock, a1, i);
    }

    if (v18)
    {
      v33 = swift_allocObject();
      v33[2] = v18;
      aBlock[4] = sub_1B1B480AC;
      aBlock[5] = v33;
      OUTLINED_FUNCTION_10_14();
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_13_1();
      aBlock[2] = v34;
      aBlock[3] = &block_descriptor_94;
      v35 = _Block_copy(aBlock);
      v36 = v18;

      [i invalidateWithQueue:0 completion:v35];

      _Block_release(v35);
LABEL_42:

      v37 = *MEMORY[0x1E69E9840];
      return;
    }

LABEL_41:
    [v18 invalidate];

    goto LABEL_42;
  }

  v30 = [i retrieveAssetSet:j usages:0];

  if (v30)
  {
    v3 = (a1 & 0xC000000000000001);
    goto LABEL_30;
  }

  __break(1u);
}

uint64_t sub_1B1AB836C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AB83A4()
{
  if (qword_1EB761348 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB761350);
  sub_1B1B68430(&qword_1EB761358, v0);

  os_unfair_lock_unlock(&dword_1EB761350);
}

unsigned __int8 *sub_1B1AB8434()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  sub_1B1AB9288();

  v2 = v4[3];
  sub_1B1A90C20(v4, &qword_1EB761DE0, &qword_1B1C352C0);
  if (!v2)
  {
    OUTLINED_FUNCTION_64();
  }

  return sub_1B1AB84E0();
}

unsigned __int8 *sub_1B1AB84E0()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  OUTLINED_FUNCTION_72();
  sub_1B1AB9288();

  v6 = OUTLINED_FUNCTION_35_0(v0, v1, &qword_1EB761DE0, &qword_1B1C352C0, v2, v3, v4, v5, v45, v48, v51, v52, v53, v54, v55[0]);
  sub_1B1AA101C(v6, v7, v8, v9);
  if (v54)
  {
    v10 = OUTLINED_FUNCTION_73_2();
    if (v10)
    {
      sub_1B1A90C20(v55, &qword_1EB761DE0, &qword_1B1C352C0);
      return v46;
    }
  }

  else
  {
    v10 = sub_1B1A90C20(&v51, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  v17 = OUTLINED_FUNCTION_35_0(v10, v11, &qword_1EB761DE0, &qword_1B1C352C0, v12, v13, v14, v15, v46, v49, v51, v52, v53, v54, v55[0]);
  sub_1B1AA101C(v17, v18, v19, v20);
  if (!v54)
  {
    sub_1B1A90C20(v55, &qword_1EB761DE0, &qword_1B1C352C0);
    v31 = &v51;
LABEL_29:
    sub_1B1A90C20(v31, &qword_1EB761DE0, &qword_1B1C352C0);
    return 0;
  }

  if ((OUTLINED_FUNCTION_73_2() & 1) == 0)
  {
    v31 = v55;
    goto LABEL_29;
  }

  result = v47;
  v22 = HIBYTE(v50) & 0xF;
  v23 = v47 & 0xFFFFFFFFFFFFLL;
  if ((v50 & 0x2000000000000000) != 0)
  {
    v24 = HIBYTE(v50) & 0xF;
  }

  else
  {
    v24 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    sub_1B1A90C20(v55, &qword_1EB761DE0, &qword_1B1C352C0);

    return 0;
  }

  if ((v50 & 0x1000000000000000) != 0)
  {
    sub_1B1B2EFF0(v47, v50, 10);
    v16 = v43;
    v42 = v44;
LABEL_81:
    sub_1B1A90C20(v55, &qword_1EB761DE0, &qword_1B1C352C0);

    if ((v42 & 1) == 0)
    {
      return v16;
    }

    return 0;
  }

  if ((v50 & 0x2000000000000000) == 0)
  {
    if ((v47 & 0x1000000000000000) != 0)
    {
      result = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B1C2D578();
    }

    v25 = *result;
    if (v25 == 43)
    {
      if (v23 >= 1)
      {
        if (v23 != 1)
        {
          v16 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_6_0();
              if (!v27 & v26)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_3_0();
              if (!v27)
              {
                goto LABEL_79;
              }

              v16 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_16_2();
              if (v27)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_70;
        }

        goto LABEL_79;
      }

      goto LABEL_88;
    }

    if (v25 != 45)
    {
      if (v23)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v38 = *result - 48;
            if (v38 > 9)
            {
              goto LABEL_79;
            }

            v39 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_79;
            }

            v16 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v23)
            {
              goto LABEL_70;
            }
          }
        }

        goto LABEL_70;
      }

LABEL_79:
      v16 = 0;
      v30 = 1;
      goto LABEL_80;
    }

    if (v23 >= 1)
    {
      if (v23 != 1)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_0();
            if (!v27 & v26)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_3_0();
            if (!v27)
            {
              goto LABEL_79;
            }

            v16 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_16_2();
            if (v27)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_70:
        v30 = 0;
LABEL_80:
        v42 = v30;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v51 = v47;
  v52 = v50 & 0xFFFFFFFFFFFFFFLL;
  if (v47 != 43)
  {
    if (v47 != 45)
    {
      if (v22)
      {
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v27 & v26)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v27)
          {
            break;
          }

          v16 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v27)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v22)
    {
      if (v22 != 1)
      {
        OUTLINED_FUNCTION_10();
        while (1)
        {
          OUTLINED_FUNCTION_6_0();
          if (!v27 & v26)
          {
            break;
          }

          OUTLINED_FUNCTION_3_0();
          if (!v27)
          {
            break;
          }

          v16 = v33 - v32;
          if (__OFSUB__(v33, v32))
          {
            break;
          }

          OUTLINED_FUNCTION_16_2();
          if (v27)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_87;
  }

  if (v22)
  {
    if (v22 != 1)
    {
      OUTLINED_FUNCTION_10();
      while (1)
      {
        OUTLINED_FUNCTION_6_0();
        if (!v27 & v26)
        {
          break;
        }

        OUTLINED_FUNCTION_3_0();
        if (!v27)
        {
          break;
        }

        v16 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        OUTLINED_FUNCTION_16_2();
        if (v27)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1B1AB888C()
{
  v1 = &v0[OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName];
  os_unfair_lock_lock(&v0[OBJC_IVAR____TtC14SiriTTSService21TTSAssetUAFVoiceAsset_lazyName]);
  result = *(v1 + 2);
  if (result)
  {
    v3 = *(v1 + 1);
    v4 = *(v1 + 2);
LABEL_8:

    os_unfair_lock_unlock(v1);
    return v3;
  }

  v5 = *&v0[OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier + 16];
  if (v5[2] >= 7uLL)
  {
    v19 = v5[16];
    v20 = v5[17];
    v18 = sub_1B1A8EDAC();
    v17 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_4();
    v6 = sub_1B1C2D398();
    v8 = v7;
    sub_1B1C2CBE8();
    type metadata accessor for AssistantAsset();
    v9 = [v0 primaryLanguage];
    v10 = sub_1B1C2CB58();
    v12 = v11;

    sub_1B1B65420(v10, v12);

    sub_1B1C2CBE8();

    v13 = sub_1B1C2CDA8();

    if (v13)
    {

      v14 = v6;
    }

    else
    {
      v14 = sub_1B1C2D378();
    }

    v3 = sub_1B1AC8BF0(v6, v8, v14);
    v16 = v15;

    *(v1 + 1) = v3;
    *(v1 + 2) = v16;

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1B1AB8A9C()
{
  OUTLINED_FUNCTION_28_2(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
  if (v1 < 9)
  {
    __break(1u);
    goto LABEL_40;
  }

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = v2 == 0x746361706D6F63 && v3 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A97D8 == -1)
    {
LABEL_8:
      v5 = qword_1ED9A9830;
LABEL_9:

      return v5;
    }

LABEL_40:
    OUTLINED_FUNCTION_0_4();
    goto LABEL_8;
  }

  v7 = v2 == 0x6D75696D657270 && v3 == 0xE700000000000000;
  if (v7 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9100 != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v5 = qword_1ED9A90A8;
    goto LABEL_9;
  }

  v8 = v2 == 0x686D75696D657270 && v3 == 0xEB00000000686769;
  if (v8 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9628 != -1)
    {
      OUTLINED_FUNCTION_14_0();
    }

    v5 = qword_1ED9A9598;
    goto LABEL_9;
  }

  v9 = v2 == 1635018082 && v3 == 0xE400000000000000;
  if (v9 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1EB7615E0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EB7625D8;
    goto LABEL_9;
  }

  sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v10 = OUTLINED_FUNCTION_54_0();
  *(v10 + 16) = xmmword_1B1C361C0;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1B1AC9204();
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  sub_1B1C2C7C8();

  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  OUTLINED_FUNCTION_11_1();
  return sub_1B1ABA9E8();
}

id sub_1B1AB8D40()
{
  OUTLINED_FUNCTION_28_2(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
  if (v1 < 8)
  {
    __break(1u);
    goto LABEL_53;
  }

  v2 = OUTLINED_FUNCTION_27_5();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  v6 = v4 == v2 && v5 == v0 + 7;
  if (v6 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9890 == -1)
    {
LABEL_8:
      v7 = qword_1ED9A9818;
LABEL_9:

      return v7;
    }

LABEL_53:
    swift_once();
    goto LABEL_8;
  }

  v9 = v4 == 0x6E6F6870797267 && v5 == 0xE700000000000000;
  if (v9 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A97A8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A9898;
    goto LABEL_9;
  }

  v10 = v4 == OUTLINED_FUNCTION_25_3() && v5 == 0xE600000000000000;
  if (v10 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9820 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A9828;
    goto LABEL_9;
  }

  v11 = v4 == (OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000) && v5 == 0xE800000000000000;
  if (v11 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9698 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A9710;
    goto LABEL_9;
  }

  v12 = v4 == OUTLINED_FUNCTION_63() && v5 == 0xE700000000000000;
  if (v12 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A8D90 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A8D98;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_51_2();
  v13 = v6 && v5 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A97B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A97C0;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_36_4();
  v14 = v6 && v5 == v0;
  if (v14 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A5280 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9A5288;
    goto LABEL_9;
  }

  sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v15 = OUTLINED_FUNCTION_54_0();
  *(v15 + 16) = xmmword_1B1C361C0;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1B1AC9204();
  *(v15 + 32) = v4;
  *(v15 + 40) = v5;
  OUTLINED_FUNCTION_39_5();

  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  OUTLINED_FUNCTION_11_1();
  return sub_1B1ABA9E8();
}

uint64_t sub_1B1AB90E4()
{
  OUTLINED_FUNCTION_39_0(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);
  sub_1B1AB9288();

  if (v8)
  {
    OUTLINED_FUNCTION_16_12();
    if (swift_dynamicCast())
    {
      v0 = v5 == 1701601645 && v6 == 0xE400000000000000;
      if (v0 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 1;
      }

      v2 = v5 == 0x656C616D6566 && v6 == 0xE600000000000000;
      if (v2 || (OUTLINED_FUNCTION_3() & 1) != 0)
      {

        return 2;
      }

      if (v5 == 0x6C61727475656ELL && v6 == 0xE700000000000000)
      {

        return 3;
      }

      v4 = OUTLINED_FUNCTION_3();

      if (v4)
      {
        return 3;
      }
    }
  }

  else
  {
    sub_1B1A90C20(v7, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return 0;
}

id sub_1B1AB923C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

void sub_1B1AB9288()
{
  OUTLINED_FUNCTION_62();
  v2 = v1;
  os_unfair_lock_lock((v0 + 16));
  sub_1B1B2A308((v0 + 24), v2);
  os_unfair_lock_unlock((v0 + 16));
}

void sub_1B1AB92E8()
{
  OUTLINED_FUNCTION_53_0();
  v4 = OUTLINED_FUNCTION_20_5(v2, v3);
  v5 = sub_1B1AB2878(v4);
  OUTLINED_FUNCTION_1_14(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TTSAssetProperty(0);
    sub_1B1C2D818();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7624F8, &unk_1B1C38038);
  if (OUTLINED_FUNCTION_17_8())
  {
    v12 = *v1;
    sub_1B1AB2878(v0);
    OUTLINED_FUNCTION_23_7();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0((*(*v1 + 56) + 32 * v10));
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_34_3();

    sub_1B1A9EEE0(v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_34_3();

    sub_1B1AB540C(v18, v19, v20, v21);
  }
}

unint64_t sub_1B1AB940C()
{
  result = qword_1ED9A99D0;
  if (!qword_1ED9A99D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9A99D0);
  }

  return result;
}

uint64_t sub_1B1AB9450()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr;
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_assetAttr);

  sub_1B1AB9288();

  if (v7 || (sub_1B1A90C20(&v6, &qword_1EB761DE0, &qword_1B1C352C0), v4 = *(v1 + v2), , OUTLINED_FUNCTION_64(), sub_1B1AB9288(), , v7))
  {
    sub_1B1A9EEE0(&v6, v8);
    *&v6 = 0;
    *(&v6 + 1) = 0xE000000000000000;
    MEMORY[0x1B27381B0](2119235, 0xE300000000000000);
    sub_1B1C2D618();
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1B1A90C20(&v6, &qword_1EB761DE0, &qword_1B1C352C0);
  }

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1AB959C(char a1, uint64_t a2)
{
  v95 = swift_allocObject();
  *(v95 + 16) = MEMORY[0x1E69E7CC8];
  v3 = v95 + 16;
  v94 = swift_allocObject();
  *(v94 + 16) = MEMORY[0x1E69E7CC0];
  v4 = (v94 + 16);
  v98 = a2;
  v101 = sub_1B1A9547C(a2);
  if (!v101)
  {
    goto LABEL_78;
  }

  v5 = 0;
  v100 = a2 & 0xC000000000000001;
  v96 = a2 + 32;
  v97 = a2 & 0xFFFFFFFFFFFFFF8;
  v99 = (v95 + 16);
  while (1)
  {
    if (v100)
    {
      v6 = MEMORY[0x1B2738A20](v5, v98);
    }

    else
    {
      if (v5 >= *(v97 + 16))
      {
        goto LABEL_85;
      }

      v6 = *(v96 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5, 1);
    v9 = v5 + 1;
    if (v8)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if ((a1 & 1) == 0)
    {
      swift_beginAccess();
      v10 = v7;
      MEMORY[0x1B2738320]();
      v11 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v11 >> 1)
      {
        OUTLINED_FUNCTION_19_1(v11);
        sub_1B1C2CE98();
      }

      OUTLINED_FUNCTION_72();
      sub_1B1C2CEC8();
      swift_endAccess();
    }

    v103 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x98);
    v103();
    swift_beginAccess();
    v12 = *v3;
    if (*(*v3 + 16) && (OUTLINED_FUNCTION_72(), v13 = sub_1B1A8EB10(), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    swift_endAccess();
    v104 = v12;
    v105 = v9;
    v16 = v15 >> 62 ? sub_1B1C2D468() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v111 = v7;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v108 = v15;
    v109 = v15 & 0xC000000000000001;
    v106 = v15 & 0xFFFFFFFFFFFFFF8;
    v107 = v16;
    while (1)
    {
      if (v109)
      {
        v18 = MEMORY[0x1B2738A20](v17, v15);
      }

      else
      {
        if (v17 >= *(v106 + 16))
        {
          goto LABEL_80;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v110 = v17 + 1;
      v20 = [v7 primaryLanguage];
      v21 = sub_1B1C2CB58();
      v23 = v22;

      v24 = [v19 primaryLanguage];
      v25 = sub_1B1C2CB58();
      v27 = v26;

      if (v21 == v25 && v23 == v27)
      {
        break;
      }

      v29 = sub_1B1C2D7A8();

      if (v29)
      {
        goto LABEL_32;
      }

LABEL_43:

      ++v17;
      v15 = v108;
      v7 = v111;
      if (v110 == v107)
      {
        goto LABEL_44;
      }
    }

LABEL_32:
    v30 = *v111;
    OUTLINED_FUNCTION_5_32();
    v32 = *(v31 + 144);
    v33 = v32();
    v34 = *v19;
    OUTLINED_FUNCTION_5_32();
    v36 = *(v35 + 144);
    v37 = v36();
    sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
    v38 = OUTLINED_FUNCTION_13_27();

    if ((v38 & 1) == 0)
    {
      v54 = v32();
      if (qword_1ED9A97D8 != -1)
      {
        swift_once();
      }

      v55 = qword_1ED9A9830;
      v56 = OUTLINED_FUNCTION_29_13();

      if (v56)
      {
        goto LABEL_43;
      }

      v57 = v36();
      v58 = v32;
      v59 = OUTLINED_FUNCTION_13_27();

      if (v59)
      {
        goto LABEL_43;
      }
    }

    v39 = *v111;
    OUTLINED_FUNCTION_5_32();
    v41 = *(v40 + 136);
    v42 = v41();
    v43 = *v19;
    OUTLINED_FUNCTION_5_32();
    v45 = *(v44 + 136);
    v46 = v45();
    sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
    v47 = OUTLINED_FUNCTION_13_27();

    if ((v47 & 1) == 0)
    {
      v48 = v41();
      if (qword_1ED9A8D90 != -1)
      {
        swift_once();
      }

      v49 = qword_1ED9A8D98;
      v50 = OUTLINED_FUNCTION_29_13();

      if (v50)
      {
        goto LABEL_43;
      }

      v51 = v45();
      v52 = v41;
      v53 = OUTLINED_FUNCTION_13_27();

      if (v53)
      {
        goto LABEL_43;
      }
    }

    type metadata accessor for TTSAsset();
    v75 = v111;
    if (static TTSAsset.isBetterAsset(_:_:)(v19))
    {
      v76 = a1 & 1;
      v77 = v111;
      v78 = v19;
    }

    else
    {
      v77 = OUTLINED_FUNCTION_72();
    }

    sub_1B1AF3310(v77, v78, v95, v76, v94);

    v4 = (v94 + 16);
    v3 = v95 + 16;
    v5 = v105;
LABEL_74:

    if (v5 == v101)
    {
LABEL_78:
      swift_beginAccess();
      v92 = *(v94 + 16);

      return v92;
    }
  }

LABEL_44:

  v61 = (v103)(v60);
  v63 = v62;
  v103();
  if (*(v104 + 16))
  {
    v64 = sub_1B1A8EB10();
    v66 = v65;

    v67 = MEMORY[0x1E69E7CC0];
    if (v66)
    {
      v67 = *(*(v104 + 56) + 8 * v64);
    }
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1C37D90;
  *(inited + 32) = v7;
  v69 = v67 >> 62;
  v3 = v95 + 16;
  if (v67 >> 62)
  {
    v70 = sub_1B1C2D468();
  }

  else
  {
    v70 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v70 + 1;
  if (__OFADD__(v70, 1))
  {
    goto LABEL_82;
  }

  v72 = v7;
  if (swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v69)
    {
      v73 = v67 & 0xFFFFFFFFFFFFFF8;
      if (v71 > *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_57:
        v74 = *(v73 + 16);
        goto LABEL_61;
      }

      goto LABEL_62;
    }
  }

  else if (!v69)
  {
    v73 = v67 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_57;
  }

  sub_1B1C2D468();
LABEL_61:
  v67 = sub_1B1C2D568();
  v73 = v67 & 0xFFFFFFFFFFFFFF8;
LABEL_62:
  if (*(v73 + 16) >= *(v73 + 24) >> 1)
  {
    goto LABEL_83;
  }

  type metadata accessor for TTSAsset();
  swift_arrayInitWithCopy();

  ++*(v73 + 16);
  swift_beginAccess();
  v79 = *v99;
  swift_isUniquelyReferenced_nonNull_native();
  v80 = *v99;
  v112 = *v99;
  v81 = sub_1B1A8EB10();
  if (__OFADD__(v80[2], (v82 & 1) == 0))
  {
    goto LABEL_84;
  }

  v83 = v81;
  v84 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7625B0, &qword_1B1C38168);
  if ((sub_1B1C2D628() & 1) == 0)
  {
    goto LABEL_67;
  }

  v85 = sub_1B1A8EB10();
  if ((v84 & 1) == (v86 & 1))
  {
    v83 = v85;
LABEL_67:
    if (v84)
    {
      v87 = v112[7];
      v88 = *(v87 + 8 * v83);
      *(v87 + 8 * v83) = v67;

LABEL_71:
      *v99 = v112;
      swift_endAccess();
      v4 = (v94 + 16);
      v5 = v105;
      v75 = v111;
      goto LABEL_74;
    }

    v112[(v83 >> 6) + 8] |= 1 << v83;
    v89 = (v112[6] + 16 * v83);
    *v89 = v61;
    v89[1] = v63;
    *(v112[7] + 8 * v83) = v67;
    v90 = v112[2];
    v8 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (!v8)
    {
      v112[2] = v91;
      goto LABEL_71;
    }

    goto LABEL_86;
  }

LABEL_87:
  result = sub_1B1C2D818();
  __break(1u);
  return result;
}

uint64_t sub_1B1AB9EEC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B1AB9F28(char a1, uint64_t a2)
{
  if (a1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v3 = sub_1B1A9547C(a2);
    for (i = 0; v3 != i; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B2738A20](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if ([v5 locallyAvailable])
      {
      }

      else
      {
        sub_1B1C2D588();
        v7 = *(v8 + 16);
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
      }
    }
  }

  else
  {
  }
}

uint64_t sub_1B1ABA04C()
{
  v1 = v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_lazySupportedLanguages));
  sub_1B1B43F04((v1 + 8), v0, &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

id sub_1B1ABA0AC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B1C2CB28();

  return v5;
}

uint64_t TTSAsset.primaryLanguage.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t TTSAsset.description.getter()
{
  v1 = v0;
  sub_1B1AB940C();
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if (qword_1ED9A9960 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED9A9968;
  v4 = sub_1B1C2D248();

  sub_1B1C2D538();
  if (v4)
  {

    v30 = 0x656372756F736572;
    v5 = [v1 primaryLanguage];
    v6 = sub_1B1C2CB58();
    v8 = v7;

    MEMORY[0x1B27381B0](v6, v8);

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v10 = (*(v9 + 136))();
  }

  else
  {
    OUTLINED_FUNCTION_0_34();
    v17 = (*(v14 + 152))(v15, v16);

    v30 = v17;
    OUTLINED_FUNCTION_3_25();
    v18 = [v1 primaryLanguage];
    v19 = sub_1B1C2CB58();
    v21 = v20;

    MEMORY[0x1B27381B0](v19, v21);

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v23 = (*(v22 + 136))();
    v24 = [v23 description];
    sub_1B1C2CB58();
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_7_22();

    OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_0_34();
    v10 = (*(v25 + 144))();
  }

  v11 = [v10 description];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_0_34();
  v13 = (*(v12 + 128))();
  v26 = [v13 description];
  sub_1B1C2CB58();
  OUTLINED_FUNCTION_9_27();
  OUTLINED_FUNCTION_7_22();

  OUTLINED_FUNCTION_3_25();
  OUTLINED_FUNCTION_0_34();
  v28 = (*(v27 + 176))();
  MEMORY[0x1B27381B0](v28);

  return v30;
}

uint64_t sub_1B1ABA598()
{
  v1 = v0 + OBJC_IVAR___TTSAsset____lazy_storage___brand;
  if (*(v0 + OBJC_IVAR___TTSAsset____lazy_storage___brand + 8) != 1)
  {
    return *v1;
  }

  swift_getObjectType();
  result = sub_1B1AC62D8(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_1B1ABA5F0()
{
  OUTLINED_FUNCTION_28_2(OBJC_IVAR____TtC14SiriTTSService16TTSAssetUAFAsset_factorIdentifier);
  if (v0 < 8)
  {
    __break(1u);
    goto LABEL_47;
  }

  v1 = OUTLINED_FUNCTION_63();
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = v3 == v1 && v4 == 0xE700000000000000;
  if (v5 || (OUTLINED_FUNCTION_4_16() & 1) != 0 || (v3 == OUTLINED_FUNCTION_25_3() ? (v6 = v4 == 0xE600000000000000) : (v6 = 0), v6 || (OUTLINED_FUNCTION_4_16() & 1) != 0 || (v3 == (OUTLINED_FUNCTION_25_3() & 0xFFFFFFFFFFFFLL | 0x5841000000000000) ? (v7 = v4 == 0xE800000000000000) : (v7 = 0), v7 || ((v8 = OUTLINED_FUNCTION_4_16(), v3 == 0x6E6F6870797267) ? (v9 = v4 == 0xE700000000000000) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), (v8 & 1) != 0 || (v10 & 1) != 0 || (OUTLINED_FUNCTION_4_16() & 1) != 0))))
  {
    if (qword_1ED9A9978 == -1)
    {
LABEL_26:
      v11 = qword_1ED9A9980;
LABEL_27:

      return v11;
    }

LABEL_47:
    OUTLINED_FUNCTION_6();
    goto LABEL_26;
  }

  v13 = v3 == OUTLINED_FUNCTION_27_5() && v4 == 0x6E6F687079726ELL;
  if (v13 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A9850 != -1)
    {
      OUTLINED_FUNCTION_22();
    }

    v11 = qword_1ED9A97E0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_51_2();
  v14 = v5 && v4 == 0xE600000000000000;
  if (v14 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A98D0 != -1)
    {
      OUTLINED_FUNCTION_23_0();
    }

    v11 = qword_1ED9A98D8;
    goto LABEL_27;
  }

  v15 = v3 == 0x64656E69626D6F63 && v4 == 0xE800000000000000;
  if (v15 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A98B8 != -1)
    {
      swift_once();
    }

    v11 = qword_1ED9A98C0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_36_4();
  v16 = v5 && v4 == 0x6E6F6870797267;
  if (v16 || (OUTLINED_FUNCTION_4_16() & 1) != 0)
  {
    if (qword_1ED9A98A8 != -1)
    {
      OUTLINED_FUNCTION_21();
    }

    v11 = qword_1ED9A98B0;
    goto LABEL_27;
  }

  sub_1B1C2D0C8();
  if (qword_1ED9A99B8 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
  v17 = OUTLINED_FUNCTION_54_0();
  *(v17 + 16) = xmmword_1B1C361C0;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1B1AC9204();
  *(v17 + 32) = v3;
  *(v17 + 40) = v4;
  OUTLINED_FUNCTION_39_5();

  sub_1B1A8E474(0, &qword_1ED9A99D0, off_1E7AF1A98);
  OUTLINED_FUNCTION_11_1();
  return sub_1B1AAFB2C();
}

uint64_t SynthesisPrewarmAction.init(pool:)()
{
  sub_1B1AA2740();
  v2 = v1;

  *(v0 + 16) = v2;
  return v0;
}

id sub_1B1ABA9E8()
{
  OUTLINED_FUNCTION_62();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_72();
  v1 = sub_1B1C2CB28();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL sub_1B1ABAA5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1B1ABAB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B1C2D7A8() & 1;
  }
}

void sub_1B1ABABCC(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B2738A20](v7, a3);
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1B1ABACE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1ABAD08() & 1;
}

void *sub_1B1ABAD6C()
{
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_38_1();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B1C38B50;
  if (qword_1ED9A9978 != -1)
  {
    OUTLINED_FUNCTION_6();
  }

  v2 = qword_1ED9A9980;
  *(v1 + 32) = qword_1ED9A9980;
  v3 = qword_1ED9A9850;
  v4 = v2;
  if (v3 != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v5 = qword_1ED9A97E0;
  *(v1 + 40) = qword_1ED9A97E0;
  v6 = v5;
  v7 = sub_1B1ABB11C(v0, 1u);
  v8 = static TTSAsset.bestAsset(ofTypes:matching:)(v1, v7);

  if (v8)
  {
    v9 = *v8;
    v10 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21_6();
    v12 = (*(v11 + 280))();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B1ABFFF8();
      v15 = [v13 bundlePath];
      v16 = sub_1B1C2CB58();
      v18 = v17;

      type metadata accessor for VoiceAsset();
      OUTLINED_FUNCTION_66();
      result = swift_allocObject();
      result[2] = v14;
      result[3] = v16;
      result[4] = v18;
      return result;
    }
  }

  return 0;
}

uint64_t sub_1B1ABAF00(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  type metadata accessor for TTSAssetProperty(0);
  sub_1B1ABB2F4(&qword_1ED9A90A0, type metadata accessor for TTSAssetProperty);
  v5 = sub_1B1C2CAB8();
  v87 = v5;
  if (v4 != 2)
  {
    v13 = OUTLINED_FUNCTION_90(v5, v6, v7, v8, v9, v10, v11, v12, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, a1 & 1);
    sub_1B1AB51D0(v13, 5);
  }

  v14 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  OUTLINED_FUNCTION_26_2();
  v15 = v14[1];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v83 = *v14;
    v85 = v14[1];

    v25 = OUTLINED_FUNCTION_90(v17, v18, v19, v20, v21, v22, v23, v24, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
    sub_1B1AB51D0(v25, 1);
  }

  v26 = (v2 + OBJC_IVAR___SiriTTSSynthesisVoice_name);
  OUTLINED_FUNCTION_26_2();
  if (v26[1])
  {
    v84 = *v26;
    v86 = v26[1];

    v35 = OUTLINED_FUNCTION_90(v27, v28, v29, v30, v31, v32, v33, v34, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v84);
    sub_1B1AB51D0(v35, 0);
  }

  v36 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_57_0();
  v37 = *(v2 + v36);
  if (v37)
  {
    v38 = SynthesisVoice.VoiceType.description.getter(v37);
    v46 = OUTLINED_FUNCTION_90(v38, v39, v40, v41, v42, v43, v44, v45, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v38);
    sub_1B1AB51D0(v46, 3);
  }

  v47 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_65();
  v48 = *(v2 + v47);
  if (v48)
  {
    v49 = SynthesisVoice.Footprint.description.getter(v48);
    v57 = OUTLINED_FUNCTION_90(v49, v50, v51, v52, v53, v54, v55, v56, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v49);
    sub_1B1AB51D0(v57, 4);
  }

  v58 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  OUTLINED_FUNCTION_44_1();
  v59 = *(v2 + v58);
  switch(v59)
  {
    case 3:
      type metadata accessor for TTSAssetVoiceGender(0);
      v68 = 3;
      goto LABEL_19;
    case 2:
      type metadata accessor for TTSAssetVoiceGender(0);
      v68 = 2;
      goto LABEL_19;
    case 1:
      type metadata accessor for TTSAssetVoiceGender(0);
      v68 = 1;
LABEL_19:
      v69 = OUTLINED_FUNCTION_90(v60, v61, v62, v63, v64, v65, v66, v67, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v68);
      sub_1B1AB51D0(v69, 2);
      break;
  }

  return v87;
}

uint64_t sub_1B1ABB11C(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1B1ABAF00(a2);
  }

  else
  {
    if (a2 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
      inited = swift_initStackObject();
      v8 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C361C0);
      v8[4].n128_u64[0] = MEMORY[0x1E69E6370];
      v8[2].n128_u8[8] = a2 & 1;
    }

    type metadata accessor for TTSAssetProperty(0);
    OUTLINED_FUNCTION_0_19();
    sub_1B1A97A14(v5, v6);
    v4 = sub_1B1C2CAB8();
  }

  v14 = v4;
  v12 = 0u;
  v13 = 0u;
  sub_1B1AB51D0(&v12, 2);
  *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762520, &qword_1B1C39820);
  *&v12 = &unk_1F28BA508;
  sub_1B1AB51D0(&v12, 8);
  if (qword_1EB761310 != -1)
  {
    OUTLINED_FUNCTION_6_14();
  }

  v9 = qword_1EB761318;
  *(&v13 + 1) = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  *&v12 = v9;
  v10 = v9;
  sub_1B1AB51D0(&v12, 7);
  return v14;
}

uint64_t sub_1B1ABB2F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_107();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_88_0()
{

  JUMPOUT(0x1B27381B0);
}

uint64_t sub_1B1ABB3B8()
{
  OUTLINED_FUNCTION_1_35();
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  return OUTLINED_FUNCTION_0_33() & 1;
}

uint64_t sub_1B1ABB420(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_95();
  return sub_1B1A91C70();
}

uint64_t OspreyChainedConfigs.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t OspreyBuiltInConfig.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void *TaskOperation.queue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriTTSService13TaskOperation_queue);
  v2 = v1;
  return v1;
}

uint64_t ObjectPool.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ObjectPool.__deallocating_deinit()
{
  ObjectPool.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1B1ABB5B8(id a1, uint64_t a2)
{
  v5 = v2;
  v6 = a1;
  v7 = v2[10];
  if (v7)
  {
    if (qword_1ED9A4DE0 != -1)
    {
      swift_once();
    }

    a1 = [v7 postNotificationName:qword_1ED9A4DE8 object:0];
  }

  v8 = sub_1B1ABF3B8(a1, a2);
  if (!v8)
  {
    sub_1B1A9EC9C();
    swift_allocError();
    *v11 = 1;
    *(v11 + 8) = 0xD000000000000035;
    *(v11 + 16) = 0x80000001B1C4FDB0;
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = sub_1B1AAAD2C(v8);
  if (v3)
  {

    return;
  }

  v81 = v10;
  v85[5] = &unk_1F28D9340;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    ObjectType = swift_getObjectType();
    v13 = v9;
    v80 = SynthesizingRequestProtocol.disableCompactVoice.getter(ObjectType);

    v4 = v13;
    v79 = SynthesizingRequestProtocol.disableThermalFallback.getter(ObjectType);
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  if (qword_1ED9A9288 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  v15 = sub_1B1C2C888();
  v16 = sub_1B1C2D0D8();
  v82 = v6;
  if (OUTLINED_FUNCTION_8_21(v16))
  {
    v17 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v85[0] = v75;
    *v17 = 67109890;
    if (qword_1EB761470 != -1)
    {
      OUTLINED_FUNCTION_1_29();
    }

    v78 = v5;
    *(v17 + 4) = byte_1EB761479;
    *(v17 + 8) = 1024;
    if (qword_1ED9A9590 != -1)
    {
      OUTLINED_FUNCTION_2_27();
    }

    *(v17 + 10) = byte_1ED9A9643;
    *(v17 + 14) = 2080;
    v18 = objc_opt_self();
    v19 = [v18 processInfo];
    [v19 thermalState];

    v20 = NSProcessInfoThermalState.description.getter();
    v22 = sub_1B1A930E4(v20, v21, v85);

    *(v17 + 16) = v22;
    *(v17 + 24) = 1024;
    v23 = [v18 processInfo];
    LODWORD(v19) = [v23 isLowPowerModeEnabled];

    *(v17 + 26) = v19;
    _os_log_impl(&dword_1B1A8A000, v15, v4, "isNaturalPlatform: %{BOOL}d, isNeuralPlatform: %{BOOL}d, thermal level: %s, low power mode: %{BOOL}d", v17, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v5 = v78;
  }

  else
  {
  }

  v24 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
  OUTLINED_FUNCTION_65();
  v25 = sub_1B1A9DB98(v81, v79 & 1, v80 & 1, *&v9[v24]);

  sub_1B1ABBEB0(v26);
  v27 = v25[2];
  v28 = v27;
  sub_1B1AA795C(v27);
  if (v7)
  {
    if (qword_1ED9A4EB8 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_1ED9A4EC0 object:v25[2]];
  }

  v29 = v25[2];
  v30 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_65();
  v76 = v24;
  if (*(v29 + v30) == 5)
  {
    v31 = (v29 + OBJC_IVAR___SiriTTSSynthesisVoice_language);
  }

  else
  {
    v31 = &v81[OBJC_IVAR___SiriTTSSynthesisVoice_language];
  }

  OUTLINED_FUNCTION_65();
  v32 = *v31;
  v33 = *(v31 + 1);

  if (v5[4])
  {
    if (v5[11])
    {

      sub_1B1AB2758();
      if (v34 == 2 || (v34 & 1) == 0)
      {
      }

      else
      {
        v35 = OUTLINED_FUNCTION_9_21();
        v37 = sub_1B1B6EA30(v35, v36);

        if (v37)
        {

          v38 = v82;
          goto LABEL_42;
        }
      }
    }

    v37 = v5[5];
    if (v37)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v37 = v5[5];
    if (v37)
    {
LABEL_39:

      v39 = OUTLINED_FUNCTION_9_21();
      sub_1B1ABBEE0(v39, v40);
      OUTLINED_FUNCTION_7_17();
      v38 = v82;
LABEL_41:

      goto LABEL_42;
    }
  }

  v37 = v5[6];
  v38 = v82;
  if (v37)
  {

    v41 = OUTLINED_FUNCTION_9_21();
    sub_1B1B6D8C0(v41, v42);
    OUTLINED_FUNCTION_7_17();
    goto LABEL_41;
  }

  v37 = v5[9];
  if (v37)
  {
    v49 = v5[9];

    v50 = OUTLINED_FUNCTION_9_21();
    sub_1B1B6FF08(v50, v51);
    OUTLINED_FUNCTION_7_17();

LABEL_42:

    v44 = v37;
    sub_1B1ABE964(v43);
    v45 = v37[2];
    v46 = v45;
    sub_1B1AA9764(v45);
    if (v7)
    {
      if (qword_1ED9A4D20 != -1)
      {
        swift_once();
      }

      v47 = qword_1ED9A4D28;
      v48 = v44[2];
      [v7 postNotificationName:v47 object:v48];

      v38 = v82;
    }

    else
    {
    }

    goto LABEL_50;
  }

LABEL_50:
  v52 = v9;

  v53 = sub_1B1C2C888();
  v54 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v53, v54))
  {
    v74 = v54;
    v77 = v52;
    v55 = 1819047278;
    v56 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v84 = v73;
    *v56 = 136446978;
    v58 = sub_1B1AA95A0(v73, v57);
    if (v58)
    {
      v59 = v58;
      v38 = [v58 description];

      v60 = sub_1B1C2CB58();
      v62 = v61;
    }

    else
    {
      v62 = 0xE400000000000000;
      v60 = 1819047278;
    }

    sub_1B1A930E4(v60, v62, &v84);
    OUTLINED_FUNCTION_11_19();
    *(v56 + 4) = v38;
    *(v56 + 12) = 2082;
    v64 = sub_1B1AA9644();
    if (v64)
    {
      v65 = v64;
      v38 = [v64 &selRef_isANEOnly];

      v55 = sub_1B1C2CB58();
      v67 = v66;
    }

    else
    {
      v67 = 0xE400000000000000;
    }

    sub_1B1A930E4(v55, v67, &v84);
    OUTLINED_FUNCTION_11_19();
    *(v56 + 14) = v38;
    *(v56 + 22) = 2082;
    v52 = v77;
    v68 = &v77[OBJC_IVAR___SiriTTSBaseRequest_clientBundleId];
    OUTLINED_FUNCTION_65();
    v70 = *v68;
    v69 = v68[1];

    sub_1B1A930E4(v70, v69, &v84);
    OUTLINED_FUNCTION_11_19();
    *(v56 + 24) = v38;
    *(v56 + 32) = 2080;
    v83 = *&v9[v76];
    v71 = sub_1B1C2D778();
    sub_1B1A930E4(v71, v72, &v84);
    OUTLINED_FUNCTION_11_19();
    *(v56 + 34) = v38;
    _os_log_impl(&dword_1B1A8A000, v53, v74, "Select voice: {%{public}s}, resource: {%{public}s}, request: {client: %{public}s, id: %s}", v56, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v63 = v81;
  }

  else
  {

    v63 = v81;
  }

  sub_1B1AA81A8();
}

void *sub_1B1ABBEE0(unint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7627A8, &unk_1B1C396D0);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_14_2(inited, xmmword_1B1C364D0);
  v6 = MEMORY[0x1E69E6370];
  v5[2].n128_u8[8] = 1;
  v5[4].n128_u64[0] = v6;
  v5[4].n128_u64[1] = 1;
  v7 = MEMORY[0x1E69E6158];
  v5[5].n128_u64[0] = a1;
  v5[5].n128_u64[1] = a2;
  v5[6].n128_u64[1] = v7;
  v5[7].n128_u64[0] = 7;
  v8 = qword_1EB761310;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_6_14();
  }

  v9 = qword_1EB761318;
  inited[9].n128_u64[0] = sub_1B1A8E474(0, &qword_1ED9A9838, off_1E7AF1A88);
  inited[7].n128_u64[1] = v9;
  type metadata accessor for TTSAssetProperty(0);
  OUTLINED_FUNCTION_0_19();
  sub_1B1A97A14(v10, v11);
  v12 = v9;
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762440, &qword_1B1C383E0);
  OUTLINED_FUNCTION_66();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B1C37D90;
  if (qword_1ED9A9960 != -1)
  {
    OUTLINED_FUNCTION_12_4();
  }

  v14 = qword_1ED9A9968;
  *(v13 + 32) = qword_1ED9A9968;
  v15 = v14;
  v16 = static TTSAsset.bestAsset(ofTypes:matching:)(v13, inited);

  if (v16)
  {
    v17 = *v16;
    v18 = *MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21_6();
    v20 = (*(v19 + 280))();
    if (v20)
    {
      v21 = v20;
      v22 = sub_1B1ABC174();
      v23 = [v21 bundlePath];
      v24 = sub_1B1C2CB58();
      v26 = v25;

      type metadata accessor for ResourceAsset();
      OUTLINED_FUNCTION_66();
      result = swift_allocObject();
      result[2] = v22;
      result[3] = v24;
      result[4] = v26;
      return result;
    }
  }

  return 0;
}

char *sub_1B1ABC174()
{
  v1 = v0;
  v2 = [v0 primaryLanguage];
  sub_1B1C2CB58();
  v4 = v3;

  v5 = objc_allocWithZone(type metadata accessor for SynthesisResource());
  v6 = OUTLINED_FUNCTION_5_4();
  v7 = SynthesisResource.init(language:)(v6, v4);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v8();
  v8();
  OUTLINED_FUNCTION_35_8();
  v9 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_66_0();
  *&v7[v9] = v1;
  return v7;
}

uint64_t sub_1B1ABC260()
{
  v1 = v0;
  type metadata accessor for DataContainer();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1B1C2CAB8();
  v3 = *(v0 + OBJC_IVAR____TtC14SiriTTSService13TaskOperation_request);
  v7[3] = type metadata accessor for BaseRequest(0);
  v7[0] = v3;
  v4 = v3;
  sub_1B1AA5E5C(v7);
  v5 = *(v1 + OBJC_IVAR____TtC14SiriTTSService13TaskOperation_workflow);
  sub_1B1ABD380(v2);
}

uint64_t sub_1B1ABC718(uint64_t i, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }
  }

LABEL_47:
  if (!sub_1B1C2D468())
  {
  }

LABEL_3:
  v34 = v5;
  v35 = a4;
  v10 = v8 & 0xC000000000000001;
  if (i)
  {
    v39 = v10 == 0;
    a4 = i;
  }

  else
  {
    sub_1B1A9EC44(0, v10 == 0, v8);
    if (v10)
    {
      a4 = MEMORY[0x1B2738A20](0, v8);
      v39 = 0;
    }

    else
    {
      a4 = *(v8 + 32);

      v39 = 1;
    }
  }

  v41 = MEMORY[0x1E69E7CC0];
  v11 = *(a3 + 16);
  v40 = MEMORY[0x1E69E7CC0];
  v12 = a3 + 32;
  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  v36 = v8 + 32;

  v5 = 0;
  v37 = v8;
  v38 = v11;
LABEL_8:
  for (i = v5; v11 != i; ++i)
  {
    if (i >= v11)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v5 = (i + 1);
    if (__OFADD__(i, 1))
    {
      goto LABEL_43;
    }

    a3 = *(v12 + 8 * i);
    if (v39)
    {
      if (i >= *(v13 + 16))
      {
        goto LABEL_44;
      }

      if (*(v8 + 8 * i + 32) != a4)
      {
        continue;
      }

      v14 = *(v12 + 8 * i);
    }

    else
    {
      v16 = *(v12 + 8 * i);

      v17 = MEMORY[0x1B2738A20](i, v8);
      swift_unknownObjectRelease();
      v18 = v17 == a4;
      v8 = v37;
      if (!v18)
      {

        continue;
      }
    }

    v15 = *(a3 + 16);
    if (v15)
    {
      v33 = a4;
      a4 = 32;
      do
      {
        v19 = *(a3 + a4);
        if (v39)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_45;
          }

          if (v19 >= *(v13 + 16))
          {
            goto LABEL_46;
          }

          v20 = *(v36 + 8 * v19);
        }

        else
        {
          v21 = MEMORY[0x1B2738A20](v19, v8);
        }

        MEMORY[0x1B2738320](v21);
        v22 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
        {
          OUTLINED_FUNCTION_19_1(v22);
          sub_1B1C2CE98();
        }

        i = &v40;
        sub_1B1C2CEC8();
        a4 += 8;
        --v15;
        v8 = v37;
      }

      while (v15);

      a4 = v33;
      v11 = v38;
      goto LABEL_8;
    }

    v11 = v38;
  }

  if (sub_1B1A9547C(MEMORY[0x1E69E7CC0]))
  {
    v23 = sub_1B1AA89E8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a4 + 40);
  v25 = *(a4 + 48);
  __swift_project_boxed_opaque_existential_1((a4 + 16), v24);
  v26 = *(v25 + 8);

  v26(v35, v24, v25);
  if (v34)
  {
  }

  if (v23)
  {
    MEMORY[0x1B2738320](v27);
    v28 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
    {
      OUTLINED_FUNCTION_19_1(v28);
      sub_1B1C2CE98();
    }

    sub_1B1C2CEC8();
  }

  else
  {
    if (!(MEMORY[0x1E69E7CC0] >> 62) || !sub_1B1C2D468())
    {
    }

    result = sub_1B1C00F10(MEMORY[0x1E69E7CC0]);
    v30 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      v31 = v30 - 1;
      v32 = *((result & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v31;
    }

    __break(1u);
  }

  return result;
}

void sub_1B1ABCB5C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v4 = *(v0 + 380);
  v5 = *(v0 + 352);
  OUTLINED_FUNCTION_56_2();
  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1ABCBC8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_1B1C2CB28();
    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_1B1C2D3F8();
      swift_unknownObjectRelease();
      sub_1B1A93378(v14, v13);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v14);

        LOBYTE(v8) = 0;
        LODWORD(a4) = v12;
      }

      else
      {
        a4 = sub_1B1C2CB28();
        [v5 floatForKey_];
        v10 = v9;

        __swift_destroy_boxed_opaque_existential_0(v14);
        LOBYTE(v8) = 0;
        LODWORD(a4) = v10;
      }
    }

    else
    {
      v8 = HIDWORD(a4) & 1;
    }
  }

  else
  {
    LODWORD(a4) = 0;
    LOBYTE(v8) = 1;
  }

  return a4 | (v8 << 32);
}

void sub_1B1ABCD1C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = *(v0 + 412);
  v5 = *(v0 + 384);
  OUTLINED_FUNCTION_56_2();
  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

unint64_t sub_1B1ABCD88(uint64_t a1, unint64_t a2)
{
  v4 = OUTLINED_FUNCTION_32_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v63 - v8;
  v76 = a1;
  v77 = a2;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1;
  }

  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  else
  {
    v10 = 7;
  }

  v11 = v10 | (v9 << 16);
  v71 = sub_1B1C2C4D8();
  v68 = "<phoneme alphabet=lhp ph=";
  v64 = "AssistantEtiquette";
  swift_bridgeObjectRetain_n();
  v63 = xmmword_1B1C361C0;
LABEL_7:
  OUTLINED_FUNCTION_12_12();
  if ((v13 & v14) != 0)
  {
    v15 = 11;
  }

  else
  {
    v15 = 7;
  }

  v66 = 4 * v12;
  v67 = v15 | (v12 << 16);
  while (1)
  {
    v74 = a1;
    v75 = a2;
    v72 = 0x3D6F696475615C1BLL;
    v73 = 0xE800000000000000;
    v16 = v70;
    __swift_storeEnumTagSinglePayload(v70, 1, 1, v71);
    sub_1B1A8EDAC();
    OUTLINED_FUNCTION_17_14();
    v69 = sub_1B1C2D3C8();
    v18 = v17;
    v20 = v19;
    sub_1B1A90C78(v16, &qword_1EB762320, &unk_1B1C39760);

    if (v20)
    {
      return a1;
    }

    v74 = a1;
    v75 = a2;
    v72 = 92;
    v73 = 0xE100000000000000;
    v22 = v18 >> 14;
    if (v18 >> 14 > v11 >> 14)
    {
      break;
    }

    v23 = v70;
    v24 = OUTLINED_FUNCTION_19_7();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);

    OUTLINED_FUNCTION_17_14();
    v28 = sub_1B1C2D3C8();
    v30 = v29;
    v32 = v31;
    sub_1B1A90C78(v23, &qword_1EB762320, &unk_1B1C39760);

    if (v32)
    {
      return a1;
    }

    if (v22 > v28 >> 14)
    {
      goto LABEL_39;
    }

    v33 = a1;
    sub_1B1C2CE08();
    OUTLINED_FUNCTION_18_6();

    OUTLINED_FUNCTION_2_25();
    v38 = sub_1B1B5FF00(v34, v35, v36, v37);

    if (v38)
    {
      OUTLINED_FUNCTION_2_25();
      if (sub_1B1B5FD5C(v39, v40, v41, v42))
      {
        OUTLINED_FUNCTION_2_25();
        if (sub_1B1C2D318() >= 2)
        {

          OUTLINED_FUNCTION_27_7();
          result = sub_1B1C2D2E8();
          if (v43)
          {
            result = &qword_1EB762320;
          }

          if (&qword_1EB762320 >> 14 < result >> 14)
          {
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_2_25();
          sub_1B1C2D348();
          OUTLINED_FUNCTION_18_6();

          OUTLINED_FUNCTION_30_7();
          result = sub_1B1C2D318();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_27_7();
          result = sub_1B1C2D2E8();
          if (v44)
          {
            v45 = &qword_1EB762320;
          }

          else
          {
            v45 = result;
          }

          if (v45 >> 14 < v32 >> 14)
          {
            goto LABEL_43;
          }

          OUTLINED_FUNCTION_30_7();
          sub_1B1C2D348();
          OUTLINED_FUNCTION_18_6();
          v65 = v46;
        }
      }
    }

    a1 = v33;
    OUTLINED_FUNCTION_2_25();
    if (sub_1B1B5FF00(v47, v48, v49, v50))
    {
      sub_1B1C2D338();
      sub_1B1B5F378();

      if (v30 >> 14 < v69 >> 14)
      {
        goto LABEL_44;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762430, &qword_1B1C37B70);
      v51 = swift_allocObject();
      *(v51 + 16) = v63;

      v52 = OUTLINED_FUNCTION_32_7();
      v53 = MEMORY[0x1B27380D0](v52);
      v55 = v54;
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = sub_1B1AC9204();
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      v74 = sub_1B1C2CB98();
      v75 = v56;
      sub_1B1AA4020();
      sub_1B1C2CC28();

      a1 = v76;
      a2 = v77;

      OUTLINED_FUNCTION_32_7();
      v57 = sub_1B1C2D318();

      if (__OFADD__(v57, 3))
      {
        goto LABEL_45;
      }

      v58 = sub_1B1C2CCA8();

      OUTLINED_FUNCTION_12_12();
      if ((v60 & v61) != 0)
      {
        v62 = 11;
      }

      else
      {
        v62 = 7;
      }

      v11 = v62 | (v59 << 16);
      if (4 * v59 < v58 >> 14)
      {
        __break(1u);
        return a1;
      }

      goto LABEL_7;
    }

    v11 = v67;
    if (v66 < v22)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_1B1ABD380(uint64_t a1)
{
  v4 = v1;
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v79 = v7;
  v80 = v6;

  sub_1B1AA5FAC(a1, &v79);
  v8 = v2;
  if (!v2)
  {

    return;
  }

  v9 = v2;
  if (qword_1ED9A9288 != -1)
  {
LABEL_40:
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v10 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v10, qword_1ED9A9120);
  v11 = v8;
  v12 = sub_1B1C2C888();
  v13 = sub_1B1C2D0B8();

  v74 = v7;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_21_0();
    v15 = OUTLINED_FUNCTION_19_0();
    v79 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_1B1C2D828();
    sub_1B1A930E4(v16, v17, &v79);
    OUTLINED_FUNCTION_19_5();

    *(v14 + 4) = v3;
    _os_log_impl(&dword_1B1A8A000, v12, v13, "Encountered error: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
    v7 = v74;
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  *&v78 = v8;
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762090, &qword_1B1C38450);
  if (swift_dynamicCast())
  {
    v19 = v81;
    if (v79 == 2)
    {
      v20 = v80;

      sub_1B1A9EC9C();
      swift_allocError();
      *v21 = 2;
      *(v21 + 8) = v20;
      *(v21 + 16) = v19;
      swift_willThrow();

      return;
    }

    v69 = v4;
  }

  else
  {
    v69 = v4;
  }

  v22 = sub_1B1A95484(v7);
  v70 = v8;
  v68 = a1;
  if (v22)
  {
    v23 = v22;
    if (v22 < 1)
    {
      __break(1u);
LABEL_42:
      swift_once();
      goto LABEL_33;
    }

    v24 = 0;
    v25 = v7 & 0xC000000000000001;
    v71 = 136315138;
    v72 = v7 & 0xC000000000000001;
    v73 = v22;
    do
    {
      if (v25)
      {
        v26 = MEMORY[0x1B2738A20](v24, v7);
      }

      else
      {
        v26 = *(v7 + 8 * v24 + 32);
      }

      sub_1B1A94FC4(v26 + 16, &v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762680, &qword_1B1C38458);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762688, &qword_1B1C38460);
      if (swift_dynamicCast())
      {
        sub_1B1A8D0E0(&v75, &v79);

        v27 = sub_1B1C2C888();
        v28 = sub_1B1C2D098();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_21_0();
          v30 = OUTLINED_FUNCTION_19_0();
          OUTLINED_FUNCTION_16_11(v30, v31, v32, v33, v34, v35, v36, v37, v67, v68, v69, v70, v71);
          v38 = sub_1B1C2CBD8();
          v40 = sub_1B1A930E4(v38, v39, &v75);
          v7 = v74;

          *(v29 + 4) = v40;
          v25 = v72;
          _os_log_impl(&dword_1B1A8A000, v27, v28, "Interrupting action: %s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v30);
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
          OUTLINED_FUNCTION_14();
          MEMORY[0x1B2739FD0]();
        }

        v41 = v82;
        v42 = v83;
        __swift_project_boxed_opaque_existential_1(&v79, v82);
        (*(v42 + 40))(v41, v42);
        v43 = v82;
        v44 = v83;
        __swift_project_boxed_opaque_existential_1(&v79, v82);
        (*(v44 + 32))(v43, v44);

        v23 = v73;
        __swift_destroy_boxed_opaque_existential_0(&v79);
      }

      else
      {

        v77 = 0;
        v75 = 0u;
        v76 = 0u;
        sub_1B1B3E078(&v75, &unk_1EB762690);
      }

      ++v24;
    }

    while (v23 != v24);
  }

  v7 = 0;
  a1 = v69;
  v8 = v70;
  v3 = *(v69 + 32);
  v4 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v4 == v7)
    {

      swift_willThrow();
      return;
    }

    if (v7 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1B1A94FC4(i, &v75);
    v46 = *(&v76 + 1);
    v47 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, *(&v76 + 1));
    if ((*(v47 + 16))(v70, v46, v47))
    {
      break;
    }

    ++v7;
    __swift_destroy_boxed_opaque_existential_0(&v75);
  }

  sub_1B1A8D0E0(&v75, &v78);
  sub_1B1A8D0E0(&v78, &v79);
  v48 = v70;
  v49 = sub_1B1C2C888();
  v50 = sub_1B1C2D0D8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_21_0();
    v52 = OUTLINED_FUNCTION_19_0();
    *&v78 = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v53 = sub_1B1C2D828();
    sub_1B1A930E4(v53, v54, &v78);
    OUTLINED_FUNCTION_89_0();

    *(v51 + 4) = v47;
    _os_log_impl(&dword_1B1A8A000, v49, v50, "Gracefully handle error: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
    OUTLINED_FUNCTION_14();
    MEMORY[0x1B2739FD0]();
  }

  v7 = 0;
  sub_1B1B3D0CC(v70, &v78);
  if (!*(v69 + 64))
  {
    goto LABEL_34;
  }

  if (qword_1ED9A4E28 != -1)
  {
    goto LABEL_42;
  }

LABEL_33:
  sub_1B1AC638C();
LABEL_34:

  v55 = v82;
  v56 = v83;
  __swift_project_boxed_opaque_existential_1(&v79, v82);
  (*(v56 + 8))(&v78, v55, v56);
  v75 = v78;
  v57 = v7;
  sub_1B1AA5FAC(v68, &v75);
  v58 = v7;
  if (v7)
  {

    v59 = v7;
    v60 = sub_1B1C2C888();
    v61 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_21_0();
      v63 = OUTLINED_FUNCTION_19_0();
      *&v78 = v63;
      *v62 = 136315138;
      swift_getErrorValue();
      v64 = sub_1B1C2D828();
      v66 = sub_1B1A930E4(v64, v65, &v78);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1B1A8A000, v60, v61, "Encountered error during error handling: %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
      OUTLINED_FUNCTION_14();
      MEMORY[0x1B2739FD0]();
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v79);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v79);
  }
}

void sub_1B1ABDCD0()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = *(v0 + 444);
  v5 = *(v0 + 416);
  OUTLINED_FUNCTION_56_2();
  v6 = OUTLINED_FUNCTION_0_21();
  sub_1B1ABCBC8(v6, v7, v8, v9);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1ABDD3C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  if (a1)
  {
    a1 = a2(0);
    v3 = v2;
  }

  else
  {
    v3 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v3;
  v5[3] = a1;

  sub_1B1AA5E5C(v5);
}

void sub_1B1ABDDC8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  sub_1B1ABDDD4(v0[2]);
}

void sub_1B1ABDDD4(uint64_t a1)
{
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = sub_1B1C2C888();
  v4 = sub_1B1C2D0D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B1A8A000, v3, v4, "#PrewarmRequest %llu is prewarming engine in background.", v5, 0xCu);
    MEMORY[0x1B2739FD0](v5, -1, -1);
  }

  sub_1B1ABDF84();
  oslog = sub_1B1C2C888();
  v6 = sub_1B1C2D0D8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1B1A8A000, oslog, v6, "#PrewarmRequest %llu finished prewarming engine.", v7, 0xCu);
    MEMORY[0x1B2739FD0](v7, -1, -1);
  }
}

uint64_t sub_1B1ABDF84()
{
  OUTLINED_FUNCTION_1_10();

  [v0 lock];
  sub_1B1ABE074();
  [v0 unlock];
}

uint64_t sub_1B1ABE028()
{
  OUTLINED_FUNCTION_1_10();

  return sub_1B1ABE2D4(v3, v2, v0, v1);
}

void sub_1B1ABE074()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B1ABE028();
  if (!v0)
  {
    v10 = v1;
    if (qword_1EB761470 != -1)
    {
      swift_once();
    }

    if (byte_1EB761479 == 1)
    {
      v16[0] = 0;
      if (![v10 preheatWithError_])
      {
        v13 = v16[0];
        v14 = sub_1B1C2C058();

        swift_willThrow();
        goto LABEL_15;
      }

      v11 = v16[0];
    }

LABEL_15:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v2, qword_1ED9A9120);
  v3 = v0;
  v4 = sub_1B1C2C888();
  v5 = sub_1B1C2D0B8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v0;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B1A8A000, v4, v5, "Unable to fetch TTS engine for prewarming, error: %@", v6, 0xCu);
    sub_1B1B1AF0C(v7);
    MEMORY[0x1B2739FD0](v7, -1, -1);
    MEMORY[0x1B2739FD0](v6, -1, -1);
  }

  else
  {
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1ABE2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 lock];
  sub_1B1ABE39C(a2, a3, a4, &v10);
  [a1 unlock];

  if (!v4)
  {
    a2 = v10;
  }

  return a2;
}

void sub_1B1ABE39C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v69[2] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (a2)
  {
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v69[0] = v8;
  v69[1] = v9;

  MEMORY[0x1B27381B0](v10, v11);

  v12 = *(a3 + 32);
  if (!v12)
  {
    goto LABEL_15;
  }

  v65 = a4;
  v67 = v5;
  v13 = v12;
  v14 = [v13 tag];
  v15 = sub_1B1C2CB58();
  v17 = v16;

  if (v15 != v8 || v17 != v9)
  {
    v19 = sub_1B1C2D7A8();

    if (v19)
    {
      goto LABEL_13;
    }

    v12 = *(a3 + 32);
    a4 = v65;
    v5 = v67;
LABEL_15:
    *(a3 + 32) = 0;

    if (a2)
    {
      v20 = *(a2 + 24);
      v21 = *(a2 + 32);
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    v22 = objc_allocWithZone(SiriTTSSynthesisEngine);

    v23 = sub_1B1B23504(v8, v9, v20, v21);
    if (v5)
    {

      goto LABEL_46;
    }

    v24 = v23;
    if (a2)
    {
      v66 = a4;
      v25 = sub_1B1B41C60();
      v26 = sub_1B1A9547C(v25);
      if (v26)
      {
        v28 = v26;
        if (v26 < 1)
        {
          __break(1u);
        }

        v29 = 0;
        *&v27 = 136315394;
        v59 = v27;
        v64 = v24;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x1B2738A20](v29, v25);
          }

          else
          {
            v30 = *(v25 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = [v30 mimeType];
          v33 = sub_1B1C2CB58();
          v35 = v34;

          if (v33 == 0xD000000000000010 && 0x80000001B1C4AC10 == v35)
          {
          }

          else
          {
            v37 = sub_1B1C2D7A8();

            if ((v37 & 1) == 0)
            {
              v69[0] = 0;
              if (![v24 loadResourceWithPath:v31 error:v69])
              {
                v39 = v69[0];
                v40 = sub_1B1C2C058();

                swift_willThrow();
                if (qword_1ED9A9288 != -1)
                {
                  swift_once();
                }

                v41 = sub_1B1C2C8A8();
                __swift_project_value_buffer(v41, qword_1ED9A9120);
                v42 = v31;
                v43 = v40;
                v44 = sub_1B1C2C888();
                v45 = sub_1B1C2D0B8();

                if (os_log_type_enabled(v44, v45))
                {
                  v61 = v45;
                  v46 = swift_slowAlloc();
                  v63 = swift_slowAlloc();
                  v69[0] = v63;
                  *v46 = v59;
                  log = v44;
                  v47 = [v42 path];
                  v62 = v42;
                  v48 = sub_1B1C2CB58();
                  v50 = v49;

                  v51 = sub_1B1A930E4(v48, v50, v69);

                  *(v46 + 4) = v51;
                  *(v46 + 12) = 2080;
                  swift_getErrorValue();
                  v52 = sub_1B1C2D828();
                  v54 = sub_1B1A930E4(v52, v53, v69);

                  *(v46 + 14) = v54;
                  _os_log_impl(&dword_1B1A8A000, log, v61, "Unable to load resource %s, error: %s", v46, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1B2739FD0](v63, -1, -1);
                  MEMORY[0x1B2739FD0](v46, -1, -1);
                }

                else
                {
                }

                v24 = v64;
                goto LABEL_36;
              }

              v38 = v69[0];
            }
          }

LABEL_36:
          ++v29;
        }

        while (v28 != v29);
      }

      a4 = v66;
    }

    v55 = sub_1B1C2CB28();

    [v24 setTag_];

    v56 = *(a3 + 32);
    *(a3 + 32) = v24;
    v57 = v24;

    *a4 = v57;
    goto LABEL_46;
  }

LABEL_13:

  *v65 = v13;
LABEL_46:
  v58 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B1ABE99C()
{
  OUTLINED_FUNCTION_125();
  sub_1B1C2D538();

  v1 = (v0 + OBJC_IVAR___SiriTTSSynthesisResource_language);
  OUTLINED_FUNCTION_26_2();
  v2 = *v1;
  v3 = v1[1];

  v4 = OUTLINED_FUNCTION_51();
  MEMORY[0x1B27381B0](v4);

  OUTLINED_FUNCTION_88_0();
  v5 = OBJC_IVAR___SiriTTSSynthesisResource_version;
  OUTLINED_FUNCTION_65();
  v8 = *(v0 + v5);
  v6 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v6);

  return 0x65676175676E616CLL;
}

uint64_t SynthesisPrewarmAction.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B1ABEAC8(id a1, void *a2, uint64_t (*a3)(id))
{
  if (a1)
  {
    v6 = a1;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v7, qword_1ED9A9120);
    v8 = a1;
    v9 = a2;
    v10 = sub_1B1C2C888();
    v11 = sub_1B1C2D0B8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 134218242;
      v14 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      *(v12 + 4) = *&v9[v14];

      *(v12 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_1B1C2D828();
      v17 = sub_1B1A930E4(v15, v16, &v24);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1B1A8A000, v10, v11, "#Error #PrewarmRequest id %llu, error: %s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B2739FD0](v13, -1, -1);
      MEMORY[0x1B2739FD0](v12, -1, -1);

LABEL_12:
      return a3(a1);
    }
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v18, qword_1ED9A9120);
    v10 = a2;
    v19 = sub_1B1C2C888();
    v20 = sub_1B1C2D0D8();
    if (!os_log_type_enabled(v19, v20))
    {

      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v22 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
    swift_beginAccess();
    *(v21 + 4) = *(v10 + v22);

    _os_log_impl(&dword_1B1A8A000, v19, v20, "#Success #PrewarmRequest id %llu", v21, 0xCu);
    MEMORY[0x1B2739FD0](v21, -1, -1);
  }

  return a3(a1);
}

id SynthesisResource.init(language:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriTTSSynthesisResource_version] = 0;
  v3 = &v2[OBJC_IVAR___SiriTTSSynthesisResource_language];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SynthesisResource();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1B1ABEE50()
{
  v0 = sub_1B1C2C988();
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_16();
  v44 = v7 - v6;
  v8 = sub_1B1C2D128();
  v9 = OUTLINED_FUNCTION_7(v8);
  v39 = v10;
  v40 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = sub_1B1C2D118();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v18 = sub_1B1C2C9D8();
  v19 = OUTLINED_FUNCTION_7(v18);
  v42 = v20;
  v43 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v25 = v24 - v23;
  result = sub_1B1ABF388();
  if (result)
  {
    v28 = result;
    v38 = v3;
    v29 = sub_1B1ABF3B8(result, v27);
    if (v29)
    {
      v30 = v29;
      v31 = OBJC_IVAR___SiriTTSBaseRequest_requestCreatedTime;
      swift_beginAccess();
      v37 = *&v30[v31];

      v36 = sub_1B1ABF3D0();
      sub_1B1AA7918();
      sub_1B1C2C9A8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B1A979CC(&qword_1ED9A9720, MEMORY[0x1E69E8030]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
      sub_1B1A97978(&qword_1ED9A96A0, &qword_1EB7629A0, &unk_1B1C38440);
      sub_1B1C2D418();
      (*(v39 + 104))(v15, *MEMORY[0x1E69E8090], v40);
      v32 = sub_1B1C2D158();
      v33 = *(v41 + 16);
      v34 = swift_allocObject();
      v34[2] = v37;
      v34[3] = v33;
      v34[4] = v28;
      v34[5] = v36;
      aBlock[4] = sub_1B1ABDDC8;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B1A95870;
      aBlock[3] = &block_descriptor_29;
      v35 = _Block_copy(aBlock);

      sub_1B1C2C9A8();
      aBlock[11] = MEMORY[0x1E69E7CC0];
      sub_1B1A979CC(&qword_1ED9A8DC0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
      sub_1B1A97978(&qword_1ED9A8DB0, &unk_1EB761900, &unk_1B1C38430);
      sub_1B1C2D418();
      MEMORY[0x1B2738610](0, v25, v44, v35);
      _Block_release(v35);

      (*(v38 + 8))(v44, v0);
      (*(v42 + 8))(v25, v43);
    }
  }

  return result;
}

uint64_t sub_1B1ABF340()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B1ABF41C()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 608);
  v3 = *(v0 + 616);
  v4 = *(v0 + 624);
  v5 = *(v0 + 632);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1ABF484()
{
  v0 = sub_1B1C2C838();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1C2C7F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9A4F68 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1C2C828();
  __swift_project_value_buffer(v10, qword_1ED9A4F70);
  v11 = sub_1B1C2C818();
  sub_1B1C2C848();
  v12 = sub_1B1C2D178();
  if (sub_1B1C2D278())
  {

    sub_1B1C2C878();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v11, v12, v15, "TTS Select Voice", v13, v14, 2u);
    MEMORY[0x1B2739FD0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Buffer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VoiceSelectionAction.deinit()
{
  v0 = Buffer.deinit();
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 88);

  return v0;
}

uint64_t VoiceSelectionAction.__deallocating_deinit()
{
  v0 = VoiceSelectionAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 96, 7);
}

uint64_t type metadata accessor for PreinstalledAudioStorage()
{
  result = qword_1ED9A4FB0;
  if (!qword_1ED9A4FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1ABF93C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_20_15(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B1AC067C(v4, 1, sub_1B1A9ED54);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_27_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1B1ABF9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1B1ABB3B8() & 1;
}

uint64_t sub_1B1ABFA54()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21_6();
  v4 = (*(v3 + 144))();
  v5 = qword_1ED9A97D8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A9830;
  sub_1B1A8E474(0, &qword_1ED9A97D0, off_1E7AF1A78);
  v8 = v7;
  v9 = OUTLINED_FUNCTION_18_0();

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = qword_1ED9A9100;
    v12 = v6;
    OUTLINED_FUNCTION_29_7();
    if (!v13)
    {
      swift_once();
    }

    v14 = qword_1ED9A90A8;
    v15 = OUTLINED_FUNCTION_18_0();

    if (v15)
    {
      v10 = 2;
    }

    else
    {
      v16 = qword_1ED9A9628;
      v17 = v6;
      OUTLINED_FUNCTION_29_7();
      if (!v13)
      {
        swift_once();
      }

      v18 = qword_1ED9A9598;
      v19 = OUTLINED_FUNCTION_18_0();

      if (v19)
      {
        v10 = 3;
      }

      else
      {
        if (qword_1EB7615E0 != -1)
        {
          swift_once();
        }

        v20 = qword_1EB7625D8;
        OUTLINED_FUNCTION_18_0();

        v10 = 0;
        v6 = v16;
      }
    }
  }

  return v10;
}

unint64_t sub_1B1ABFC30()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21_6();
  result = (*(v3 + 192))();
  if (result >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B1ABFC7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B1ABFD14();
  v4 = MEMORY[0x1B2738440](v2, &type metadata for SynthesisVoice.VoiceType, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1B1ABFD68(&v9, *(a1 + v6));
      v6 += 8;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_1B1ABFD14()
{
  result = qword_1EB761210;
  if (!qword_1EB761210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB761210);
  }

  return result;
}

BOOL sub_1B1ABFD68(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1B1C2D888();
  MEMORY[0x1B2738D60](a2);
  v7 = sub_1B1C2D8E8();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_1B1ABFE58(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1B1ABFE58(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1B1E920(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1B1B1FAE8(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_1B1C2D888();
      MEMORY[0x1B2738D60](v5);
      result = sub_1B1C2D8E8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1B1B1F3D4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_1B1C2D808();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_1B1ABFF90()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 912);
  v3 = *(v0 + 920);
  v4 = *(v0 + 928);
  v5 = *(v0 + 936);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

char *sub_1B1ABFFF8()
{
  v1 = v0;
  v2 = [v0 primaryLanguage];
  sub_1B1C2CB58();

  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  v4 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
  v5 = SynthesisVoice.init(language:name:)();
  v6 = sub_1B1AC01A4();
  v7 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_66_0();
  *&v5[v7] = v6;
  v8 = sub_1B1ABFA54();
  v9 = OBJC_IVAR___SiriTTSSynthesisVoice_footprint[0];
  OUTLINED_FUNCTION_66_0();
  *&v5[v9] = v8;
  v10 = sub_1B1ABFC30();
  v11 = OBJC_IVAR___SiriTTSSynthesisVoice_gender;
  v12 = OUTLINED_FUNCTION_66_0();
  *&v5[v11] = v10;
  v13 = *((*v3 & *v1) + 0xA8);
  (v13)(v12);
  v13();
  OUTLINED_FUNCTION_35_8();
  v14 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
  OUTLINED_FUNCTION_66_0();
  *(v14 + v5) = v1;
  return v5;
}

uint64_t sub_1B1AC01A4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21_6();
  v4 = (*(v3 + 136))();
  v5 = qword_1ED9A9820;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1ED9A9828;
  sub_1B1A8E474(0, &qword_1ED9A9938, off_1E7AF1A90);
  v8 = v7;
  v9 = OUTLINED_FUNCTION_18_0();

  if (v9)
  {

    return 4;
  }

  else
  {
    v11 = qword_1ED9A9698;
    v12 = v6;
    OUTLINED_FUNCTION_29_7();
    if (!v13)
    {
      swift_once();
    }

    v14 = qword_1ED9A9710;
    v15 = OUTLINED_FUNCTION_18_0();

    if (v15)
    {

      return 5;
    }

    else
    {
      v16 = qword_1ED9A8D90;
      v17 = v6;
      OUTLINED_FUNCTION_29_7();
      if (!v13)
      {
        swift_once();
      }

      v18 = qword_1ED9A8D98;
      v19 = OUTLINED_FUNCTION_18_0();

      if (v19)
      {

        return 6;
      }

      else
      {
        v20 = qword_1ED9A97A8;
        v21 = v6;
        OUTLINED_FUNCTION_29_7();
        if (!v13)
        {
          swift_once();
        }

        v22 = qword_1ED9A9898;
        v23 = OUTLINED_FUNCTION_18_0();

        if (v23)
        {

          return 3;
        }

        else
        {
          v24 = qword_1ED9A97B8;
          v25 = v6;
          OUTLINED_FUNCTION_29_7();
          if (!v13)
          {
            OUTLINED_FUNCTION_8_0();
          }

          v26 = qword_1ED9A97C0;
          v27 = OUTLINED_FUNCTION_18_0();

          if (v27)
          {

            return 2;
          }

          else
          {
            if (qword_1ED9A9890 != -1)
            {
              swift_once();
            }

            v28 = qword_1ED9A9818;
            v29 = OUTLINED_FUNCTION_18_0();

            return v29 & 1;
          }
        }
      }
    }
  }
}

uint64_t sub_1B1AC0438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    sub_1B1C2D888();
    MEMORY[0x1B2738D60](a1);
    v6 = sub_1B1C2D8E8();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

void sub_1B1AC04F4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 640);
  v3 = *(v0 + 648);
  v4 = *(v0 + 656);
  v5 = *(v0 + 664);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC055C()
{
  result = OUTLINED_FUNCTION_1_40();
  v3 = -v2;
  v4 = -1;
  while (1)
  {
    if (v3 + v4 == -1)
    {
      return 0;
    }

    if (++v4 >= *(v0 + 16))
    {
      break;
    }

    v5 = result + 40;
    sub_1B1A94FC4(result, v11);
    v6 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = *(v6 + 24);
    v8 = OUTLINED_FUNCTION_0_39();
    v10 = v9(v8);
    __swift_destroy_boxed_opaque_existential_0(v11);
    result = v5;
    if (v10)
    {
      sub_1B1ABF93C(&unk_1F28C0388);
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1AC0650()
{
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 48);
}

uint64_t sub_1B1AC067C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1B1AC06F4()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 1008);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 1024);
  v5 = *(v0 + 1032);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC0788()
{
  v1 = OBJC_IVAR___SiriTTSSynthesisVoice_type;
  OUTLINED_FUNCTION_7_3();
  return *(v0 + v1);
}

uint64_t static NeuralUtils.shared.getter()
{
  type metadata accessor for NeuralUtils();

  return swift_initStaticObject();
}

uint64_t VoiceAsset.path.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

Swift::Float __swiftcall NeuralUtils.currentSampleRate(voicePath:)(Swift::String voicePath)
{
  v1 = objc_opt_self();
  v2 = sub_1B1C2CB28();
  [v1 currentSampleRate_];
  v4 = v3;

  return v4;
}

void sub_1B1AC0918()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 944);
  v3 = *(v0 + 952);
  v4 = *(v0 + 960);
  v5 = *(v0 + 968);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC0980()
{
  v1 = OUTLINED_FUNCTION_65();
  v26 = *(v0 + 160);
  v27 = *(v0 + 176);
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20, v21, v22, v23, v24, v25, *(v0 + 144));
  v9 = sub_1B1AC09EC();
  OUTLINED_FUNCTION_5_17(v9, v10, v11, v12, v13, v14, v15, v16);
  return OUTLINED_FUNCTION_42_1();
}

uint64_t sub_1B1AC09EC()
{
  if (!*v0)
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = sub_1B1C2CB28();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    goto LABEL_8;
  }

  sub_1B1C2D3F8();
  swift_unknownObjectRelease();
  sub_1B1A93378(v13, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v6 = sub_1B1B517F4(v3, v0);
    v8 = v7;

    __swift_destroy_boxed_opaque_existential_0(v13);
    if (v8)
    {
      return v6;
    }

LABEL_8:
    v6 = *(v0 + 24);
    v9 = *(v0 + 32);

    return v6;
  }

  __swift_destroy_boxed_opaque_existential_0(v13);

  return v11;
}

id Preferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Preferences();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall AudioQueueInterface.beginAudioPowerUpdate()()
{
  v1 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  sub_1B1AAD66C(1, "Unable to begin access power, error: %s");
}

void sub_1B1AC0BA4()
{
  v1 = *(v0 + 80);
  [v1 lock];
  v2 = AudioQueueStart(*(v0 + 72), 0);
  [v1 unlock];
  if (v2 == sub_1B1C2C958())
  {
    if (*(v0 + 96) > 0.0 && !*(v0 + 88))
    {
      *(v0 + 88) = mach_absolute_time();
    }

    AudioQueueInterface.beginAudioPowerUpdate()();
  }

  else
  {
    sub_1B1C2D538();

    OUTLINED_FUNCTION_47();
    v8 = v3;
    v4 = sub_1B1B269CC(v2);
    MEMORY[0x1B27381B0](v4);

    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_59(v5, v6);
    *(v7 + 8) = 0xD000000000000030;
    *(v7 + 16) = v8;
    swift_willThrow();
  }
}

uint64_t sub_1B1AC0CBC(uint64_t *a1, uint64_t (*a2)(void))
{
  v4 = *a1;
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v5 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v5, qword_1ED9A9120);
  v6 = sub_1B1C2C888();
  v7 = sub_1B1C2D098();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1A8A000, v6, v7, "Starting AudioQueue...", v8, 2u);
    MEMORY[0x1B2739FD0](v8, -1, -1);
  }

  v9 = *(*a1 + 96);
  (*(*(v4 + 88) + 32))(*(v4 + 80));
  v10 = sub_1B1C2C888();
  v11 = sub_1B1C2D098();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1B1A8A000, v10, v11, "Started AudioQueue.", v12, 2u);
    MEMORY[0x1B2739FD0](v12, -1, -1);
  }

  v13 = sub_1B1C2C888();
  v14 = sub_1B1C2D098();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    sub_1B1AC10C4();
    v17 = AudioRouteInfo.description.getter();
    v19 = v18;

    v20 = sub_1B1A930E4(v17, v19, &v22);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B1A8A000, v13, v14, "Current route info: {%s}", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2739FD0](v16, -1, -1);
    MEMORY[0x1B2739FD0](v15, -1, -1);
  }

  else
  {
  }

  return a2(0);
}

uint64_t sub_1B1AC10C4()
{
  v1 = *(*(*v0 + 88) + 8);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t AudioQueueInterface.outputRouteInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = *(v1 + 48);
  *(a1 + 40) = v5;
}

uint64_t AudioRouteInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  v6 = v0[4];
  sub_1B1C2D538();
  MEMORY[0x1B27381B0](0x7079546574756F72, 0xEB00000000203A65);
  MEMORY[0x1B27381B0](v1, v2);
  MEMORY[0x1B27381B0](0x65756C427369202CLL, 0xEE003A68746F6F74);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v7, v8);

  OUTLINED_FUNCTION_75();
  MEMORY[0x1B27381B0](0xD000000000000011);
  if (v4)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v4)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1B27381B0](v9, v10);

  MEMORY[0x1B27381B0](0x726F646E6576202CLL, 0xED0000203A444920);
  OUTLINED_FUNCTION_71_0();
  v11 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v11);

  MEMORY[0x1B27381B0](0x6375646F7270202CLL, 0xEE00203A44492074);
  OUTLINED_FUNCTION_71_0();
  v12 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v12);

  return 0;
}

uint64_t sub_1B1AC138C(uint64_t result, void *a2, void *a3, float a4, uint64_t a5, void *a6)
{
  if (!result)
  {
    v49 = v9;
    v50 = v8;
    v51 = v6;
    v52 = v7;
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v14, qword_1ED9A9120);
    v15 = a2;
    v16 = sub_1B1C2C888();
    v17 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = (*((*MEMORY[0x1E69E7D40] & v15->isa) + 0x90))();

      _os_log_impl(&dword_1B1A8A000, v16, v17, "Audio playback started for request_id: %llu", v18, 0xCu);
      MEMORY[0x1B2739FD0](v18, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    v19 = a3;
    v20 = sub_1B1C2C888();
    v21 = sub_1B1C2D0D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67109376;
      v23 = &v19[OBJC_IVAR___SiriTTSAudioData_asbd];
      swift_beginAccess();
      v24 = *(v23 + 2);
      *(v22 + 4) = v24;
      *(v22 + 8) = 1024;
      *(v22 + 10) = v24 == 1869641075;

      _os_log_impl(&dword_1B1A8A000, v20, v21, "# Audio playback format %u, isOpus: %{BOOL}d", v22, 0xEu);
      MEMORY[0x1B2739FD0](v22, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + 96);
      v27 = v26;

      if (v26)
      {
        if (qword_1ED9A4D90 != -1)
        {
          swift_once();
        }

        v28 = qword_1ED9A4D98;
        v29 = a6[3];
        v30 = a6[4];
        __swift_project_boxed_opaque_existential_1(a6, v29);
        (*(v30 + 8))(v48, v29, v30);
        sub_1B1AC1940(v28, v48);

        sub_1B1AC23A8(v48);
      }
    }

    v31 = a6[3];
    v32 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v31);
    (*(v32 + 24))(&v43, v31, v32);
    if (v44)
    {
      sub_1B1A8D0E0(&v43, v45);
      swift_beginAccess();
      v33 = swift_weakLoadStrong();
      if (v33)
      {
        v34 = *(v33 + 96);
        v35 = v34;

        if (v34)
        {
          if (qword_1ED9A4CC0 != -1)
          {
            swift_once();
          }

          sub_1B1AC2480(qword_1ED9A4CC8, v45);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      sub_1B1A90C78(&v43, &unk_1EB762990, &unk_1B1C352D0);
    }

    v36 = a6[3];
    v37 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v36);
    (*(v37 + 32))(&v43, v36, v37);
    if (v44)
    {
      sub_1B1A8D0E0(&v43, v45);
      swift_beginAccess();
      v38 = swift_weakLoadStrong();
      if (v38)
      {
        v39 = *(v38 + 96);
        v40 = v39;

        if (v39)
        {
          if (qword_1ED9A4CA8 != -1)
          {
            swift_once();
          }

          sub_1B1AC29FC(qword_1ED9A4CB0, v45);
        }
      }

      if (a4 != 1.0)
      {
        v41 = v46;
        v42 = v47;
        __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
        (*(v42 + 16))(v41, v42, a4);
      }

      return __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      return sub_1B1A90C78(&v43, &qword_1EB7618F8, &unk_1B1C352E0);
    }
  }

  return result;
}

uint64_t sub_1B1AC1940(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[3] = *a2;
  v6[0] = v2;
  *(v6 + 12) = *(a2 + 28);
  sub_1B1AC18E4(a2, v5);
  v3 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v3, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1B1AC19D8(uint64_t a1, void *a2, void (*a3)(__int128 *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    if (*(&v25[0] + 1))
    {
      v26 = v25[0];
      v27 = v25[1] & 0x101;
      v28 = *(&v25[1] + 8);
      v29 = DWORD2(v25[2]);
      a3(&v26);

      return;
    }
  }

  else
  {
    memset(v25, 0, 44);
  }

  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v12 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v12, qword_1ED9A9120);
  (*(v7 + 16))(v10, a1, v6);
  v13 = a2;
  v14 = sub_1B1C2C888();
  v15 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v25[0] = v17;
    *v16 = 136315650;
    v18 = sub_1B1C2CB58();
    v20 = sub_1B1A930E4(v18, v19, v25);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B1A930E4(0x756F526F69647541, 0xEE006F666E496574, v25);
    *(v16 + 22) = 2080;
    sub_1B1C2BED8();
    sub_1B1A90C78(&v26, &qword_1EB761DE0, &qword_1B1C352C0);
    *&v26 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
    v21 = sub_1B1C2CBD8();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_1B1A930E4(v21, v23, v25);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v17, -1, -1);
    MEMORY[0x1B2739FD0](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1B1AC1D7C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v1;
    v9[1] = v2;
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    sub_1B1AC1E20(v9);
  }

  return result;
}

uint64_t sub_1B1AC1E20(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 72);

  v5 = mach_absolute_time();
  v6 = *(v1 + 80);
  v7 = v5 - v6;
  if (v5 < v6)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1ED9A5270 != -1)
  {
LABEL_5:
    swift_once();
  }

  v8 = *&qword_1ED9AA500 * v7;
  v9 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_66_0();
  *(v4 + v9) = v8;
  v10 = (v4 + OBJC_IVAR___SiriTTSInstrumentationMetrics_audioOutputRoute);
  OUTLINED_FUNCTION_66_0();
  v11 = v10[1];
  *v10 = v3;
  v10[1] = v2;
}

uint64_t sub_1B1AC1F04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B1AC1F5C();
  }

  return result;
}

void sub_1B1AC1F5C()
{
  OUTLINED_FUNCTION_25();
  v1 = sub_1B1C2C838();
  v2 = OUTLINED_FUNCTION_7(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_16();
  v7 = sub_1B1C2C7F8();
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  if (*(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_audioStartingInterval))
  {
    v11 = *(v0 + OBJC_IVAR____TtC14SiriTTSService15SignpostHandler_audioStartingInterval);

    v12 = sub_1B1C2C818();
    sub_1B1C2C848();
    sub_1B1C2D178();
    if (sub_1B1C2D278())
    {

      sub_1B1C2C878();

      v13 = *(v4 + 88);
      v14 = OUTLINED_FUNCTION_15_8();
      if (v15(v14) != *MEMORY[0x1E69E93E8])
      {
        v16 = *(v4 + 8);
        v17 = OUTLINED_FUNCTION_15_8();
        v18(v17);
      }

      *OUTLINED_FUNCTION_20_0() = 0;
      v19 = sub_1B1C2C7D8();
      OUTLINED_FUNCTION_12_5(&dword_1B1A8A000, v20, v21, v19, "TTSStartAudio");
      OUTLINED_FUNCTION_11();
    }

    v22 = OUTLINED_FUNCTION_9_5();
    v23(v22);
  }

  OUTLINED_FUNCTION_26_1();
}

double sub_1B1AC2158@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_3();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_61_0();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v8 = *(v7 + 96);
  v9 = OUTLINED_FUNCTION_60();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7618E0, &qword_1B1C352C8);
  if (OUTLINED_FUNCTION_52())
  {
    sub_1B1A8D0E0(v12, a1);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1B1A90C20(v12, &unk_1EB762990, &unk_1B1C352D0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B1AC2294(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 10);
  v9 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_metrics);
  v10 = mach_absolute_time();
  v11 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_audioStartingTimestamp);
  v12 = v10 - v11;
  if (v10 < v11)
  {
    __break(1u);
  }

  else if (qword_1ED9A5270 == -1)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_73();
LABEL_3:
  v13 = *&qword_1ED9AA500 * v12;
  v14 = OBJC_IVAR___SiriTTSInstrumentationMetrics_audioStartLatency;
  OUTLINED_FUNCTION_66_0();
  *(v9 + v14) = v13;
  v15 = 256;
  v16 = v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo;
  v17 = *(v1 + OBJC_IVAR____TtC14SiriTTSService20SiriAnalyticsHandler_routeInfo + 8);
  if (!v5)
  {
    v15 = 0;
  }

  *v16 = v3;
  *(v16 + 8) = v2;
  *(v16 + 16) = v15 | v4;
  *(v16 + 24) = v6;
  *(v16 + 32) = v7;
  *(v16 + 40) = v8;
}

uint64_t sub_1B1AC23FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B1A94FC4(a2, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  [v4 postNotificationName:a1 object:sub_1B1C2D7F8()];
  return swift_unknownObjectRelease();
}

void sub_1B1AC2494(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7618E0, &qword_1B1C352C8);
  if (swift_dynamicCast())
  {
    sub_1B1A8D0E0(v25, v27);
    a3(v27);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B1A90C78(v25, &unk_1EB762990, &unk_1B1C352D0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v25[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0xD000000000000013, 0x80000001B1C49700, v25);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v25);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

os_unfair_lock_s *sub_1B1AC2834(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    os_unfair_lock_lock(result + 8);
    sub_1B1A90C78(&v3[10], &unk_1EB762990, &unk_1B1C352D0);
    sub_1B1A94FC4(a1, &v3[10]);
    os_unfair_lock_unlock(v3 + 8);
  }

  return result;
}

double sub_1B1AC28E4@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_3();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_61_0();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  v8 = *(v7 + 96);
  v9 = OUTLINED_FUNCTION_60();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7618F0, &qword_1B1C37270);
  if (OUTLINED_FUNCTION_52())
  {
    sub_1B1A8D0E0(v12, a1);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1B1A90C20(v12, &qword_1EB7618F8, &unk_1B1C352E0);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_1B1AC2A10(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7618F0, &qword_1B1C37270);
  if (swift_dynamicCast())
  {
    sub_1B1A8D0E0(v25, v27);
    a3(v27);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B1A90C78(v25, &qword_1EB7618F8, &unk_1B1C352E0);
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v25[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0xD000000000000014, 0x80000001B1C496E0, v25);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v25);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1B1AC2DB0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1B1A94FC4(a1, v4);
    swift_beginAccess();
    sub_1B1AAD5FC(v4, v3 + 80);
    swift_endAccess();
  }

  return result;
}

unint64_t static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = a2;
  v9 = a1;
  v10 = HIBYTE(a4) & 0xF;
  p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
  v56 = a2;
  if (a1 < 0 || (a2 & 0x8000000000000000) != 0)
  {
    v4 = a4 & 0x1000000000000000;
LABEL_11:
    v17 = (v9 & ~(v9 >> 63));
    if (!v4)
    {
      OUTLINED_FUNCTION_6_8();
      if (v14)
      {
        result = v18;
      }

      else
      {
        result = v10;
      }

      goto LABEL_15;
    }

    goto LABEL_66;
  }

  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_72;
  }

  v4 = a4 & 0x1000000000000000;
  if ((a4 & 0x1000000000000000) != 0)
  {
LABEL_72:
    v15 = sub_1B1C2CD18();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_6_8();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

LABEL_8:
  if (v15 < v12)
  {
    goto LABEL_11;
  }

  v5 = v8;
  v16 = v9;
  while (1)
  {
    if (v4)
    {
      v8 = (a3 >> 59) & 1;
    }

    else
    {
      v8 = 1;
    }

    if (v4)
    {
      v12 = MEMORY[0x1B2738200](15, v16, a3, a4);
LABEL_45:
      result = v12;
      if ((v12 & 0xC) != 4 << v8)
      {
        if (v4)
        {
LABEL_47:
          v4 = p_cache;
          MEMORY[0x1B2738200](result, v5, a3, a4);
          goto LABEL_57;
        }

LABEL_51:
        v42 = v5 + (result >> 16);
        if (__OFADD__(v5, result >> 16))
        {
          goto LABEL_75;
        }

        if ((v42 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        v43 = a3 & 0xFFFFFFFFFFFFLL;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v43 = v10;
        }

        if (v43 < v42)
        {
          goto LABEL_77;
        }

        v4 = p_cache;
LABEL_57:
        v8 = sub_1B1A8EDAC();
        p_cache = MEMORY[0x1E69E6158];
        v16 = sub_1B1C2CC58();
        a3 = sub_1B1C2CC58();
        if (*(v4 + 648) == -1)
        {
          goto LABEL_58;
        }

        goto LABEL_64;
      }

LABEL_50:
      result = sub_1B1B276E0(v12, a3, a4);
      if (v4)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_6_8();
    if (!v14)
    {
      v41 = v10;
    }

    if (v41 >= v16)
    {
      v12 = (v16 << 16) | 4;
      goto LABEL_45;
    }

    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_3_1();
LABEL_58:
    v44 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v44, qword_1ED9A9120);
    v17 = sub_1B1C2C888();
    v5 = sub_1B1C2D098();
    if (os_log_type_enabled(v17, v5))
    {
      break;
    }

    v9 = a3 - v16;
    if (!__OFSUB__(a3, v16))
    {
      return v16;
    }

    __break(1u);
LABEL_66:
    result = sub_1B1C2CD18();
LABEL_15:
    if (result >= v17)
    {
      v16 = v17;
    }

    else
    {
      v16 = result;
    }

    v20 = v9 - v16;
    if (__OFSUB__(v9, v16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v21 = __OFADD__(v8, v20);
    v22 = v8 + v20;
    if (v21)
    {
      goto LABEL_68;
    }

    if (v22 <= 0)
    {
      v23 = v16;
      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v23 = v16 + v22;
      if (__OFADD__(v16, v22))
      {
        goto LABEL_74;
      }

      if (!v4)
      {
LABEL_25:
        OUTLINED_FUNCTION_6_8();
        if (v14)
        {
          v24 = v25;
        }

        else
        {
          v24 = v10;
        }

        goto LABEL_28;
      }
    }

    v24 = sub_1B1C2CD18();
LABEL_28:
    if (v24 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    v5 = v26 - v16;
    if (!__OFSUB__(v26, v16))
    {
      v27 = p_cache[81];

      if (v27 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_70;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_3_1();
LABEL_33:
    v28 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v28, qword_1ED9A9120);
    v12 = sub_1B1C2C888();
    v29 = sub_1B1C2D0B8();
    if (os_log_type_enabled(v12, v29))
    {
      v30 = swift_slowAlloc();
      v38 = OUTLINED_FUNCTION_4_7(v30, 3.8523e-34, v31, v32, v33, v34, v35, v36, v37, v55, v56);
      *(v38 + 24) = v5;
      *(v38 + 32) = v39;
      *(v38 + 34) = v16;
      _os_log_impl(&dword_1B1A8A000, v12, v29, "Adjusted %ld@%ld -> %ld@%ld", v30, 0x2Au);
      v40 = v30;
      p_cache = &OBJC_METACLASS___SiriTTSSynthesisResource.cache;
      MEMORY[0x1B2739FD0](v40, -1, -1);
    }
  }

  v45 = swift_slowAlloc();
  result = OUTLINED_FUNCTION_4_7(v45, 3.8523e-34, v46, v47, v48, v49, v50, v51, v52, v55, v56);
  if (!__OFSUB__(a3, v16))
  {
    v54 = result;
    *(result + 24) = a3 - v16;
    *(result + 32) = v53;
    *(result + 34) = v16;
    _os_log_impl(&dword_1B1A8A000, v17, v5, "Mapped %ld@%ld -> %ld@%ld", result, 0x2Au);
    MEMORY[0x1B2739FD0](v54, -1, -1);

    return v16;
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

id WordTimingInfo.init(startTiming:textRange:)()
{
  OUTLINED_FUNCTION_62();
  v4 = v3;
  v5 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  *&v1[OBJC_IVAR___SiriTTSWordTimingInfo_startTime] = 0;
  v6 = &v1[OBJC_IVAR___SiriTTSWordTimingInfo_textRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  OUTLINED_FUNCTION_66_0();
  *&v1[v5] = v4;
  OUTLINED_FUNCTION_66_0();
  *v6 = v2;
  *(v6 + 1) = v0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WordTimingInfo();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B1AC3328(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1B1C2D468();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1B1A9547C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for WordTimingInfo();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1B1B9A440(&qword_1EB764300, &qword_1EB761DA8, &unk_1B1C364B0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
          v9 = sub_1B1B37C88(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1B1AC3788@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 routeType];
  v4 = sub_1B1C2CB58();
  v6 = v5;

  LOBYTE(v3) = [v1 isBluetooth];
  v7 = [v1 isAppleProduct];
  v8 = [v1 vendorId];
  v9 = [v1 productId];
  result = [v1 volume];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 17) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  return result;
}

uint64_t SiriTTSService_SetAudioQueueClientUID(void *a1, OpaqueAudioQueue *a2)
{
  inData = a1;
  v3 = AudioQueueSetProperty(a2, 0x63756964u, &inData, 8u);

  return v3;
}

NSObject *sub_1B1AC3900(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (sub_1B1C2CBF8() + 32);
  }

  else
  {
    v2 = 0;
  }

  v3 = SiriTTSService_create_workloop(v2);
  swift_unknownObjectRelease();
  return v3;
}

NSObject *SiriTTSService_create_workloop(const char *a1)
{
  inactive = dispatch_workloop_create_inactive(a1);
  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(inactive);

  return inactive;
}

uint64_t static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B1C2D128();
  v8 = OUTLINED_FUNCTION_7(v7);
  v28 = v9;
  v29 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1B1C2D118();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v17 = sub_1B1C2C9D8();
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16();
  v25 = v24 - v23;
  if ((a4 & 0x100000000) == 0)
  {
    sub_1B1AA7918();
    sub_1B1AC3900(a1, a2);
  }

  sub_1B1AA7918();
  (*(v20 + 16))(v25, a3, v17);
  sub_1B1AC3BF8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7629A0, &unk_1B1C38440);
  sub_1B1AC3C50();
  sub_1B1C2D418();
  (*(v28 + 104))(v14, *MEMORY[0x1E69E8090], v29);
  return sub_1B1C2D158();
}

unint64_t sub_1B1AC3BF8()
{
  result = qword_1ED9A9720;
  if (!qword_1ED9A9720)
  {
    sub_1B1C2D118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A9720);
  }

  return result;
}

unint64_t sub_1B1AC3C50()
{
  result = qword_1ED9A96A0;
  if (!qword_1ED9A96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7629A0, &unk_1B1C38440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9A96A0);
  }

  return result;
}

void sub_1B1AC3CB4(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v28 = v26[0];
    a3(&v28);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26[0] = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0x3436746E49, 0xE500000000000000, v26);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v27, &qword_1EB761DE0, &qword_1B1C352C0);
      v27[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, v26);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

uint64_t sub_1B1AC3FF8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 40) = v1;
    *(result + 48) = 0;
  }

  return result;
}

void sub_1B1AC4088()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = sub_1B1C2C7F8();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v27 - v15;
  sub_1B1C2C7E8();
  v17 = sub_1B1C2C818();
  v18 = sub_1B1C2D188();
  if (sub_1B1C2D278())
  {
    v19 = OUTLINED_FUNCTION_20_0();
    v28 = v2;
    v20 = v19;
    *v19 = 0;
    v21 = sub_1B1C2C7D8();
    _os_signpost_emit_with_name_impl(&dword_1B1A8A000, v17, v18, v21, v4, "", v20, 2u);
    v2 = v28;
    OUTLINED_FUNCTION_11();
  }

  (*(v9 + 16))(v14, v16, v6);
  v22 = sub_1B1C2C868();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1B1C2C858();
  (*(v9 + 8))(v16, v6);
  v26 = *(v5 + *v2);
  *(v5 + *v2) = v25;

  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1AC425C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B1C2C988();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1B1C2C9D8();
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  v23 = v22 - v21;
  v24 = *(v3 + *(*v3 + 104));
  OUTLINED_FUNCTION_66();
  v25 = swift_allocObject();
  v25[2] = v3;
  v25[3] = a1;
  v25[4] = a2;
  aBlock[4] = sub_1B1AC4674;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_25_0();
  aBlock[2] = v26;
  aBlock[3] = &block_descriptor;
  v27 = _Block_copy(aBlock);

  sub_1B1C2C9A8();
  OUTLINED_FUNCTION_24_0();
  sub_1B1AADDE4(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB761900, &unk_1B1C38430);
  sub_1B1AA6F40();
  sub_1B1C2D418();
  MEMORY[0x1B2738610](0, v23, v14, v27);
  _Block_release(v27);
  (*(v9 + 8))(v14, v6);
  (*(v18 + 8))(v23, v15);
}

uint64_t sub_1B1AC44DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_66();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B1AC4518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763F90, &unk_1B1C40840);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1AC4588()
{
  OUTLINED_FUNCTION_46_1();
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1AC45F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 80) = mach_absolute_time();
  }

  return result;
}

void AudioQueueInterface.init(audioSessionId:asbd:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v25 = *MEMORY[0x1E69E9840];
  *(v3 + 16) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 1;
  OUTLINED_FUNCTION_47();
  *(v3 + 176) = 0;
  *(v3 + 184) = 0xD00000000000001CLL;
  *(v3 + 192) = v5;
  sub_1B1C2C958();
  v24 = 0;
  v6 = a2[1];
  v21 = *a2;
  *v22 = v6;
  *&v22[16] = *(a2 + 4);
  OUTLINED_FUNCTION_11_0();
  v7 = SiriTTSService_AudioQueueNewOutputWithAudioSession();
  if (v7 != sub_1B1C2C958())
  {
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_1B1C2D538();
    MEMORY[0x1B27381B0](0xD000000000000039, 0x80000001B1C48680);
    v16 = sub_1B1B269CC(v7);
    MEMORY[0x1B27381B0](v16);

    v17 = v21;
    sub_1B1A9EC9C();
    OUTLINED_FUNCTION_27();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = v17;
    swift_willThrow();
    v19 = *(v3 + 192);

    type metadata accessor for AudioQueueInterface();
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v8 = [objc_opt_self() defaultOutput];
  sub_1B1AC3788(&v21);

  v9 = *(&v21 + 1);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  *(v3 + 24) = v21;
  *(v3 + 32) = v9;
  *(v3 + 40) = v10;
  *(v3 + 41) = v11;
  *(v3 + 48) = *&v22[8];
  *(v3 + 64) = v12;
  if (v24)
  {
    *(v3 + 72) = v24;
    *(v3 + 80) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
    v14 = *(v3 + 184);
    v13 = *(v3 + 192);

    OUTLINED_FUNCTION_36();
    v15 = sub_1B1C2CB28();

    SiriTTSService_SetAudioQueueClientUID(v15, *(v3 + 72));

LABEL_5:
    v20 = *MEMORY[0x1E69E9840];
    return;
  }

  __break(1u);
}

uint64_t sub_1B1AC4910(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v7 = sub_1B1C2C9D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioQueueInterface();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  swift_allocObject();
  AudioQueueInterface.init(audioSessionId:asbd:)(a1, a2);
  if (v3)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763FA0, &qword_1B1C40870);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v4 + 16) = v12;
    sub_1B1AA7918();
    sub_1B1C2C9B8();
    v16 = 0;
    v13 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)(0xD00000000000001CLL, 0x80000001B1C48640, v11, 46);
    (*(v8 + 8))(v11, v7);
    *(v4 + 24) = v13;
  }

  return v4;
}

uint64_t AudibleRequestProtocol.audioSessionId.getter()
{
  v1 = [v0 audibleContext];
  v2 = OBJC_IVAR___SiriTTSAudibleContext_audioSessionId;
  OUTLINED_FUNCTION_17_1();
  v3 = *&v1[v2];

  return v3;
}

void sub_1B1AC4B08()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC4B6C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v5 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v5, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D0B8();
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      OUTLINED_FUNCTION_3_1();
    }

    v8 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v8, qword_1ED9A9120);

    v6 = sub_1B1C2C888();
    v7 = sub_1B1C2D098();
  }

  v9 = v7;

  if (os_log_type_enabled(v6, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1B1A930E4(a1, a2, &v13);
    _os_log_impl(&dword_1B1A8A000, v6, v9, "Invalidate synthesis caching. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2739FD0](v11, -1, -1);
    MEMORY[0x1B2739FD0](v10, -1, -1);
  }

  return sub_1B1AC4D60(1);
}

BOOL sub_1B1AC4D0C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1AA78A0(a1, a2);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1B1AC4D60(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  [v3 lock];
  *(v1 + 32) = a1;
  [v3 unlock];
  return swift_endAccess();
}

uint64_t sub_1B1AC4DD4()
{
  OUTLINED_FUNCTION_46_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

void sub_1B1AC4E50(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
  if (swift_dynamicCast())
  {
    v27 = v25;
    a3(&v27);
  }

  else
  {
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v12 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v12, qword_1ED9A9120);
    (*(v7 + 16))(v10, a1, v6);
    v13 = a2;
    v14 = sub_1B1C2C888();
    v15 = sub_1B1C2D0C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315650;
      v18 = sub_1B1C2CB58();
      v20 = sub_1B1A930E4(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1B1A930E4(0xD000000000000015, 0x80000001B1C496C0, &v27);
      *(v16 + 22) = 2080;
      sub_1B1C2BED8();
      sub_1B1A90C78(v26, &qword_1EB761DE0, &qword_1B1C352C0);
      v26[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
      v21 = sub_1B1C2CBD8();
      v23 = v22;
      (*(v7 + 8))(v10, v6);
      v24 = sub_1B1A930E4(v21, v23, &v27);

      *(v16 + 24) = v24;
      _os_log_impl(&dword_1B1A8A000, v14, v15, "Event '%s' expect associated object as %s, got: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B2739FD0](v17, -1, -1);
      MEMORY[0x1B2739FD0](v16, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }
  }
}

void sub_1B1AC51B4(unint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = OUTLINED_FUNCTION_3_19();
  if (v4)
  {
    v5 = v4;
    if (v3 >> 62)
    {
      if (!sub_1B1C2D468())
      {
        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    OUTLINED_FUNCTION_65();
    if (swift_weakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = a2;

      if (Strong)
      {
        v9 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x90))(v8);
        type metadata accessor for WordTimingInfo();
        v10 = sub_1B1C2CE68();
        [Strong didGenerateWordTimingsWithRequestId:v9 wordTimingInfo:v10];

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B1AC52F0()
{
  OUTLINED_FUNCTION_125();
  sub_1B1C2D538();
  v1 = OUTLINED_FUNCTION_61_1();
  MEMORY[0x1B27381B0](v1, 0xEB00000000203A65);
  v2 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_65();
  v3 = *(v0 + v2);
  sub_1B1C2CF18();
  MEMORY[0x1B27381B0](0x6F2074786574202CLL, 0xEF203A7465736666);
  v4 = (v0 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_65();
  v8 = *v4;
  OUTLINED_FUNCTION_51();
  v5 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v5);

  OUTLINED_FUNCTION_142();
  v9 = v4[1];
  OUTLINED_FUNCTION_51();
  v6 = sub_1B1C2D778();
  MEMORY[0x1B27381B0](v6);

  return 0;
}

void sub_1B1AC5444(void *a1)
{
  v3 = OBJC_IVAR___SiriTTSWordTimingInfo_startTime;
  OUTLINED_FUNCTION_52_0();
  v4 = *(v1 + v3);
  OUTLINED_FUNCTION_61_1();
  v5 = sub_1B1C2CB28();
  [a1 encodeDouble:v5 forKey:v4];

  v6 = (v1 + OBJC_IVAR___SiriTTSWordTimingInfo_textRange);
  OUTLINED_FUNCTION_26_2();
  v7 = [objc_opt_self() valueWithRange_];
  v8 = sub_1B1C2CB28();
  OUTLINED_FUNCTION_115(v8, sel_encodeObject_forKey_);
}

uint64_t sub_1B1AC559C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for SynthesisCacheFile(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762088, &unk_1B1C371C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  result = sub_1B1AAE10C();
  if ((result & 1) == 0)
  {
    v50 = a5;
    v20 = (a1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey);
    if (*(a1 + OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheHashKey + 8))
    {
      goto LABEL_3;
    }

    v24 = sub_1B1AA95C4();
    if (!v24)
    {
      return sub_1B1AC4B6C(0xD000000000000030, 0x80000001B1C4D1E0, 1);
    }

    v48 = v24;
    v26 = sub_1B1AA95A0(v24, v25);
    if (v26)
    {
      v27 = OBJC_IVAR___SiriTTSSynthesisVoice_version;
      v49 = v26;
      swift_beginAccess();
      if (*(v27 + v49))
      {
        v28 = sub_1B1AA9644();
        if (v28)
        {
          v29 = v28;
          v30 = OBJC_IVAR___SiriTTSSynthesisResource_version;
          swift_beginAccess();
          if (*&v29[v30])
          {
            v47 = v29;
            v31 = v48;
            ObjectType = swift_getObjectType();
            v32 = v31;
            v45 = sub_1B1ACC8C8();
            v34 = v33;
            v48 = v32;

            ObjectType = v20[1];
            *v20 = v45;
            v20[1] = v34;

            sub_1B1ACC580();

            __swift_storeEnumTagSinglePayload(v18, 0, 1, v8);
            v43 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
            swift_beginAccess();
            sub_1B1AD0BC4(v18, a1 + v43);
            swift_endAccess();
            sub_1B1AAE090(1);

LABEL_3:
            v21 = OBJC_IVAR____TtC14SiriTTSService27SynthesisCacheWritingAction_cacheFile;
            swift_beginAccess();
            sub_1B1AAC040(a1 + v21, v16);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v8);
            v23 = v50;
            if (EnumTagSinglePayload)
            {
              return sub_1B1AAC0B0(v16);
            }

            sub_1B1AD0F78(v16, v11);
            sub_1B1AAC0B0(v16);
            *&v51 = a4;
            *(&v51 + 1) = v23;
            v35 = a4;

            SynthesisCacheFile.append(chunk:)(&v51);
            v36 = v51;

            return sub_1B1ACD41C(v11);
          }
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1B1C2D538();
        v40 = MEMORY[0x1B27381B0](0xD000000000000044, 0x80000001B1C4D260);
        v41 = v48;
        *&v51 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x90))(v40);
        v42 = sub_1B1C2D778();
        MEMORY[0x1B27381B0](v42);

        sub_1B1AC4B6C(v52, v53, 1);
      }
    }

    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1B1C2D538();
    v37 = MEMORY[0x1B27381B0](0xD00000000000003BLL, 0x80000001B1C4D220);
    v38 = v48;
    v52 = (*((*MEMORY[0x1E69E7D40] & *v48) + 0x90))(v37);
    v39 = sub_1B1C2D778();
    MEMORY[0x1B27381B0](v39);

    sub_1B1AC4B6C(v54, v55, 1);
  }

  return result;
}

void sub_1B1AC5D40()
{
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_17_1();
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = v2;
  OUTLINED_FUNCTION_7_13();

  v7 = OUTLINED_FUNCTION_0_21();
  sub_1B1A8DCB4(v7, v8, v9, v5);
  OUTLINED_FUNCTION_41_1();

  OUTLINED_FUNCTION_15_10();
}

uint64_t sub_1B1AC5DA4()
{
  sub_1B1AA61C0(&v20);
  if (v21)
  {
    OUTLINED_FUNCTION_0_8(v0, v1, v2, &type metadata for InstrumentationMetrics.SourceOfTTS, v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_5_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

uint64_t sub_1B1AC5E20()
{
  sub_1B1AA61C0(&v20);
  if (v21)
  {
    v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA8, &unk_1B1C364B0);
    OUTLINED_FUNCTION_0_8(v0, v1, v2, v0, v3, v4, v5, v6, v16, v18);
    v7 = swift_dynamicCast();
    return OUTLINED_FUNCTION_4_5(v7, v8, v9, v10, v11, v12, v13, v14, v17, v19);
  }

  else
  {
    sub_1B1A9937C(&v20);
    return 0;
  }
}

uint64_t sub_1B1AC5EAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1B1A8E474(0, &qword_1EB760F80, off_1E7AF1A70);
  v3 = sub_1B1C2CE78();

  v2(v3);
}

uint64_t sub_1B1AC5F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v10 = sub_1B1A9547C(a1);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v12 = v10;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1B1C2D5B8();
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_20;
      }

      v35 = a4;
      v36 = a5;
      type metadata accessor for NSRangeUtil();
      swift_getObjectType();
      v13 = 0;
      v14 = a1 & 0xC000000000000001;
      v15 = a1;
      do
      {
        if (v14)
        {
          v16 = MEMORY[0x1B2738A20](v13, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v13 + 32);
        }

        v17 = v16;
        ++v13;
        [v16 startTime];
        v18 = [v17 textRange];
        v20 = v19;
        v21 = SynthesizingRequestProtocol.text.getter();
        static NSRangeUtil.mapUtf8RangeToUtf16(_:inText:)(v18, v20, v21, v22);

        v23 = objc_allocWithZone(type metadata accessor for WordTimingInfo());
        WordTimingInfo.init(startTiming:textRange:)();

        sub_1B1C2D588();
        v24 = v37[2];
        sub_1B1C2D5C8();
        sub_1B1C2D5D8();
        sub_1B1C2D598();
        a1 = v15;
      }

      while (v12 != v13);
      v11 = v37;
      a5 = v36;
    }

    swift_beginAccess();

    sub_1B1AC32FC(v25);
    swift_endAccess();
    if (qword_1ED9A9288 != -1)
    {
      swift_once();
    }

    v26 = sub_1B1C2C8A8();
    __swift_project_value_buffer(v26, qword_1ED9A9120);

    v27 = sub_1B1C2C888();
    v28 = sub_1B1C2D098();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136315138;
      v31 = type metadata accessor for WordTimingInfo();
      v32 = MEMORY[0x1B2738350](v11, v31);
      v34 = sub_1B1A930E4(v32, v33, &v37);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1B1A8A000, v27, v28, "Received word timings: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1B2739FD0](v30, -1, -1);
      MEMORY[0x1B2739FD0](v29, -1, -1);
    }

    if (!*(a5 + 48))
    {
    }

    if (qword_1ED9A4DA0 == -1)
    {
LABEL_16:
      sub_1B1AC4DD4();
    }

LABEL_20:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B1AC62D8(void *a1)
{
  v2 = [a1 primaryLanguage];
  v3 = sub_1B1C2CB58();
  v5 = v4;

  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x98))();
  v8 = static TTSAsset.brand(forLanguage:name:)(v3, v5, v6, v7);

  return v8;
}

uint64_t sub_1B1AC638C()
{

  v0 = sub_1B1C2D7F8();
  OUTLINED_FUNCTION_22_3(v0, sel_postNotificationName_object_);
  return swift_unknownObjectRelease();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_1B1AC6418(uint64_t a1, void *a2, void (*a3)(uint64_t *))
{
  v6 = sub_1B1C2BEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1C2BED8();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DE0, &qword_1B1C352C0);
  if (swift_dynamicCast())
  {
    v12 = v28;
    v13 = v27;
    if (v29 != 1)
    {
      LOBYTE(v31[0]) = v27;
      v31[1] = v28;
      v31[2] = v29;
      a3(v31);

      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 1;
  }

  sub_1B1AAA204(v13, v12, 1);
  if (qword_1ED9A9288 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1C2C8A8();
  __swift_project_value_buffer(v14, qword_1ED9A9120);
  (*(v7 + 16))(v10, a1, v6);
  v15 = a2;
  v16 = sub_1B1C2C888();
  v17 = sub_1B1C2D0C8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315650;
    v20 = sub_1B1C2CB58();
    v22 = sub_1B1A930E4(v20, v21, v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1B1A930E4(0x726F727245535454, 0xE800000000000000, v31);
    *(v18 + 22) = 2080;
    sub_1B1C2BED8();
    sub_1B1A90C78(v30, &qword_1EB761DE0, &qword_1B1C352C0);
    v30[0] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB761DA0, &qword_1B1C364A8);
    v23 = sub_1B1C2CBD8();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = sub_1B1A930E4(v23, v25, v31);

    *(v18 + 24) = v26;
    _os_log_impl(&dword_1B1A8A000, v16, v17, "Event '%s' expect associated object as %s, got: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2739FD0](v19, -1, -1);
    MEMORY[0x1B2739FD0](v18, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

_BYTE *sub_1B1AC67A8(_BYTE *result)
{
  if ((*result & 0xFE) == 0xA)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1B1AC4B6C(0xD000000000000024, 0x80000001B1C4D330, 1);
    }
  }

  return result;
}

uint64_t sub_1B1AC6860(char *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  OUTLINED_FUNCTION_65();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = v4;
    v9 = v5;
    v10 = v6;
    a3(v8);
  }

  return result;
}

void sub_1B1AC68DC(char *a1)
{
  v2 = *(v1 + 72);
  v3 = qword_1B1C39968[*a1];
  v4 = OBJC_IVAR___SiriTTSInstrumentationMetrics_errorCode;
  OUTLINED_FUNCTION_66_0();
  *(v2 + v4) = v3;
  OUTLINED_FUNCTION_66_0();
  sub_1B1AA149C();
  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_8_20();
}

uint64_t sub_1B1AC696C(char *a1, uint64_t a2, void (*a3)(_BYTE *))
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  OUTLINED_FUNCTION_65();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = v4;
    v9 = v5;
    v10 = v6;
    a3(v8);
  }

  return result;
}

uint64_t sub_1B1AC6A84(unsigned __int8 a1, char a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x656E6F685069;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1685016681;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 3158381;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x58416C617275656ELL;
      break;
    case 5:
      v5 = 0x6267385F333168;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x656E6F685069;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1685016681;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 3158381;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x58416C617275656ELL;
      break;
    case 5:
      v2 = 0x6267385F333168;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_6();
  }

  return v8 & 1;
}

uint64_t sub_1B1AC6C24()
{
  v110 = *MEMORY[0x1E69E9840];
  v0 = sub_1B1C2C1C8();
  v84 = *(v0 - 8);
  v1 = v84[8];
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v2);
  v82 = v73 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v73 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v83 = v73 - v10;
  if (qword_1ED9A9588 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v11 = qword_1ED9AA640;
    v12 = sub_1B1BE34F8(0x696F567465737341, 0xEB00000000736563, 0x7473696C70, 0xE500000000000000, qword_1ED9AA640);
    if (!v12)
    {
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v13 = v12;
    sub_1B1C2C168();

    v14 = v84[4];
    v81 = v0;
    v14(v83, v9, v0);
    v15 = sub_1B1C2C208();
    v17 = v16;
    v18 = objc_opt_self();
    v76 = v15;
    v80 = v17;
    v19 = sub_1B1C2C298();
    v104[0] = 0;
    v20 = [v18 propertyListWithData:v19 options:0 format:0 error:v104];

    v21 = v104[0];
    if (!v20)
    {
      v71 = v21;
      sub_1B1C2C058();

      swift_willThrow();
      goto LABEL_58;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v103, v104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7628F8, &unk_1B1C39828);
    swift_dynamicCast();
    v79 = v100;
    v22 = sub_1B1BE34F8(0xD000000000000016, 0x80000001B1C4F640, 0x7473696C70, 0xE500000000000000, v11);
    if (!v22)
    {
      goto LABEL_54;
    }

    v23 = v22;
    sub_1B1C2C168();

    v14(v82, v4, v81);
    v24 = sub_1B1C2C208();
    v75 = v25;
    v9 = sub_1B1C2C298();
    v104[0] = 0;
    v26 = [v18 propertyListWithData:v9 options:0 format:0 error:v104];

    v27 = v104[0];
    if (!v26)
    {
      break;
    }

    sub_1B1C2D3F8();
    swift_unknownObjectRelease();
    sub_1B1A93378(v102, v104);
    swift_dynamicCast();
    v93 = v100;
    v77 = MEMORY[0x1E69E7CC0];
    v96 = MEMORY[0x1E69E7CC0];
    v28 = v79;
    v29 = v79 + 64;
    v30 = 1 << *(v79 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v0 = v31 & *(v79 + 64);
    v4 = ((v30 + 63) >> 6);

    v32 = 0;
    v33 = v80;
    v90 = v4;
    v86 = v29;
LABEL_9:
    if (v0)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v4)
      {

        sub_1B1A94524(v76, v33);
        sub_1B1A94524(v24, v75);

        __swift_destroy_boxed_opaque_existential_0(v102);
        v67 = v84[1];
        v68 = v81;
        v67(v82, v81);
        __swift_destroy_boxed_opaque_existential_0(v103);
        v67(v83, v68);

        v69 = *MEMORY[0x1E69E9840];
        return v77;
      }

      v0 = *(v29 + 8 * v34);
      ++v32;
      if (v0)
      {
        v32 = v34;
LABEL_14:
        v35 = __clz(__rbit64(v0)) | (v32 << 6);
        v36 = *(v28 + 56);
        v37 = (*(v28 + 48) + 16 * v35);
        v38 = v37[1];
        *&v94 = *v37;
        *(&v94 + 1) = v38;
        v9 = *(v36 + 8 * v35);
        v39 = qword_1EB7614A0;

        if (v39 != -1)
        {
          swift_once();
        }

        v0 &= v0 - 1;
        if ((byte_1ED9AA5A8 & 1) == 0)
        {
          v100 = v94;
          *&v98 = 0x2D54502D7470;
          *(&v98 + 1) = 0xE600000000000000;
          sub_1B1A8EDAC();
          if (sub_1B1C2D3D8())
          {

            v4 = v90;
            goto LABEL_9;
          }
        }

        v40 = *(v93 + 16);

        if (!v40)
        {
          goto LABEL_43;
        }

        v41 = sub_1B1A8EB10();
        if ((v42 & 1) == 0)
        {
          goto LABEL_43;
        }

        v74 = v24;
        v4 = *(*(v93 + 56) + 8 * v41);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v9;
        sub_1B1AA0B44(v4, sub_1B1AA0B88, 0, v104);
        v89 = v104[0];
        v85 = v104[1];
        v43 = v106;
        v44 = v9;
        v9 = v107;
        v87 = v108;
        v88 = v109;
        v73[0] = v105;
        v73[1] = v4;
        v78 = (v105 + 64) >> 6;

        v73[2] = v44;
        while (2)
        {
          v91 = v43;
          v45 = v9;
          if (!v9)
          {
            v46 = v91;
            do
            {
              v43 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                goto LABEL_49;
              }

              if (v43 >= v78)
              {
                goto LABEL_41;
              }

              v45 = v85[v43];
              ++v46;
            }

            while (!v45);
          }

          v47 = __clz(__rbit64(v45)) | (v43 << 6);
          v48 = (v89[6] + 16 * v47);
          v50 = *v48;
          v49 = v48[1];
          sub_1B1A93378(v89[7] + 32 * v47, v97);
          *&v98 = v50;
          *(&v98 + 1) = v49;
          sub_1B1A9EEE0(v97, v99);
          v51 = v98;

          if (!*(&v51 + 1))
          {
LABEL_41:
            memset(v101, 0, sizeof(v101));
            v100 = 0u;
LABEL_42:
            sub_1B1A9D350();

            v28 = v79;
            v33 = v80;
            v24 = v74;
LABEL_43:
            v65 = objc_allocWithZone(type metadata accessor for TTSAssetUAFVoiceAsset(0));
            v9 = sub_1B1AC960C();

            v29 = v86;
            v4 = v90;
            if (v9)
            {
              MEMORY[0x1B2738320](v66);
              if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1B1C2CE98();
              }

              sub_1B1C2CEC8();
              v77 = v96;
              v4 = v90;
            }

            goto LABEL_9;
          }

          v97[0] = v51;
          v97[1] = v99[0];
          v97[2] = v99[1];
          v87(&v100, v97);
          sub_1B1A90C78(v97, &qword_1EB762900, &qword_1B1C39838);
          v52 = *(&v100 + 1);
          if (!*(&v100 + 1))
          {
            goto LABEL_42;
          }

          v53 = v100;
          sub_1B1A9EEE0(v101, &v98);
          v91 = v53;
          v4 = v44;
          v9 = sub_1B1A8EB10();
          v55 = v44[2];
          v56 = (v54 & 1) == 0;
          v57 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_50;
          }

          v58 = v54;
          if (v44[3] >= v57)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v54 & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB762480, &unk_1B1C37E50);
              v4 = &v95;
              sub_1B1C2D638();
              if ((v58 & 1) == 0)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            sub_1B1AC891C(v57, isUniquelyReferenced_nonNull_native & 1);
            v4 = v95;
            v59 = sub_1B1A8EB10();
            if ((v58 & 1) != (v60 & 1))
            {
              sub_1B1C2D818();
              __break(1u);
              goto LABEL_58;
            }

            v9 = v59;
            if ((v58 & 1) == 0)
            {
LABEL_33:
              v44 = v95;
              v95[(v9 >> 6) + 8] |= 1 << v9;
              v61 = (v44[6] + 16 * v9);
              *v61 = v91;
              v61[1] = v52;
              sub_1B1A9EEE0(&v98, (v44[7] + 32 * v9));
              v62 = v44[2];
              v63 = __OFADD__(v62, 1);
              v64 = v62 + 1;
              if (v63)
              {
                goto LABEL_51;
              }

              v44[2] = v64;
              goto LABEL_38;
            }
          }

          v44 = v95;
          v4 = (v95[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v4);
          sub_1B1A9EEE0(&v98, v4);
LABEL_38:
          v9 = (v45 - 1) & v45;
          isUniquelyReferenced_nonNull_native = 1;
          continue;
        }
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v72 = v27;
  sub_1B1C2C058();

  swift_willThrow();
LABEL_58:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}