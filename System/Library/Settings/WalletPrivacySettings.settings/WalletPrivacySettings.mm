uint64_t sub_180C(char *a1)
{
  v2 = sub_3B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier + 8])
  {
    v7 = *&a1[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
    v8 = objc_allocWithZone(sub_3B80());

    v9 = a1;
    return sub_3B70();
  }

  else
  {
    sub_3B30();
    v11 = sub_3B40();
    v12 = sub_3BE0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "Expected bundleID property of specifier", v13, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_1998(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    sub_2BB0(v6);
  }

  sub_3068(v4);
  return v5;
}

uint64_t sub_1A08(uint64_t a1)
{
  v2 = sub_3B50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier + 8);
  if (v7)
  {
    v8 = *(a1 + OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier);
    v9 = *(a1 + OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier + 8);

    sub_3078(v8, v7, a1);
    v11 = v10;

    return v11;
  }

  else
  {
    sub_3B30();
    v13 = sub_3B40();
    v14 = sub_3BE0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Expected bundleID property of specifier", v15, 2u);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

id AppPrivacySettingsController.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&v5[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  sub_1CD8(a1, a2);

  return v7;
}

id AppPrivacySettingsController.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&v2[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
  sub_1CD8(a1, a2);

  return v7;
}

void sub_1CD8(uint64_t a1, uint64_t a2)
{
  v5 = sub_3AC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  v11 = *&v2[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier + 8];
  *v10 = a1;
  *(v10 + 1) = a2;

  (*(v6 + 104))(v9, enum case for LocalizedStringTable.settings(_:), v5);
  v12 = PKPassKitBundle();
  if (v12)
  {
    v13 = v12;
    sub_3AB0();

    (*(v6 + 8))(v9, v5);
    v14 = sub_3B90();

    [v2 setTitle:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E64(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&v3[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  if (a2)
  {
    v8 = sub_3B90();
  }

  else
  {
    v8 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", v8, a3);

  v10 = v9;
  result = [v10 specifier];
  if (result)
  {
    v12 = result;

    v13 = sub_3B90();
    v14 = [v12 propertyForKey:v13];

    if (v14)
    {
      sub_3BF0();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      v15 = swift_dynamicCast();
      v16 = v15 == 0;
      if (v15)
      {
        v17 = v19;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v20;
      }
    }

    else
    {
      sub_26A8(v23);
      v17 = 0;
      v18 = 0;
    }

    sub_1CD8(v17, v18);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AppPrivacySettingsController.viewWillAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1);
  v3 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider, sub_180C);
  if (v3)
  {
    [v3 reloadStaleSpecifiers];
    swift_unknownObjectRelease();
  }

  v4 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider, sub_1A08);
  if (v4)
  {
    [v4 reloadStaleSpecifiers];
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AppPrivacySettingsController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1);
  v3 = [v1 specifier];
  if (v3)
  {
    v4 = v3;
    isa = sub_3BD0().super.super.isa;
    v6 = sub_3B90();
    [v4 setProperty:isa forKey:v6];
  }
}

Swift::OpaquePointer_optional __swiftcall AppPrivacySettingsController.specifiers()()
{
  v1 = v0;
  v2 = sub_3B90();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_3BF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_2710(&qword_C650, &qword_44F8);
    if (swift_dynamicCast())
    {
      v4 = v15;
      goto LABEL_13;
    }
  }

  else
  {
    sub_26A8(v18);
  }

  *&v18[0] = &_swiftEmptyArrayStorage;
  v5 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider, sub_180C);
  if (v5)
  {
    v6 = [v5 specifiers];
    sub_351C(0, &qword_C648, PSSpecifier_ptr);
    v7 = sub_3BC0();

    sub_2A9C(v7);
    swift_unknownObjectRelease();
  }

  v8 = sub_1998(&OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider, sub_1A08);
  if (v8)
  {
    v9 = [v8 specifiers];
    sub_351C(0, &qword_C648, PSSpecifier_ptr);
    v10 = sub_3BC0();

    sub_2A9C(v10);
    swift_unknownObjectRelease();
  }

  v4 = *&v18[0];
  sub_2758(*&v18[0]);
  isa = sub_3BB0().super.isa;

  [v1 setSpecifiers:isa];

LABEL_13:
  v12 = sub_2758(v4);

  v14 = v12;
  result.value._rawValue = v14;
  result.is_nil = v13;
  return result;
}

uint64_t sub_26A8(uint64_t a1)
{
  v2 = sub_2710(&qword_C640, &qword_44F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2710(uint64_t *a1, uint64_t *a2)
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

char *sub_2758(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_3C30();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = sub_2C60(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_3C00();
        sub_351C(0, &qword_C648, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_2C60((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_3054(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_351C(0, &qword_C648, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_2C60((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_3054(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id AppPrivacySettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2A9C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_3C30();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
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

  v15 = sub_3C30();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2BC0(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2D90(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
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

uint64_t sub_2BB0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2BC0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_3C30();
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
  result = sub_3C10();
  *v1 = result;
  return result;
}

char *sub_2C60(char *a1, int64_t a2, char a3)
{
  result = sub_2C80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2C80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2710(&qword_C688, qword_4548);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_2D90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_3C30();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_3C30();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2FA8();
          for (i = 0; i != v6; ++i)
          {
            sub_2710(&qword_C650, &qword_44F8);
            v9 = sub_2F20(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_351C(0, &qword_C648, PSSpecifier_ptr);
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

void (*sub_2F20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3C00();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2FA0;
  }

  __break(1u);
  return result;
}

unint64_t sub_2FA8()
{
  result = qword_C680;
  if (!qword_C680)
  {
    sub_300C(&qword_C650, &qword_44F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C680);
  }

  return result;
}

uint64_t sub_300C(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_3054(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3068(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v3 = sub_3B50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  if (qword_C620 != -1)
  {
    swift_once();
  }

  if (qword_C6F8 && (v14 = qword_C6F8, v15 = sub_3B90(), v16 = [v14 classNamed:v15], v14, v15, v16))
  {
    class_addProtocol(v16, &OBJC_PROTOCOL____TtP9PassKitUI30PKAppSettingsSpecifierProvider_);
    if (class_createInstance(v16, 0))
    {
      sub_3BF0();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38[0] = v36;
    v38[1] = v37;
    if (*(&v37 + 1))
    {
      sub_351C(0, &qword_C690, NSObject_ptr);
      if (swift_dynamicCast())
      {
        v20 = v35;
        v21 = sub_3B90();
        v22 = NSSelectorFromString(v21);

        if ([v20 respondsToSelector:v22])
        {
          v23 = sub_3B90();
          v24 = v20;
          v25 = [v24 performSelector:v22 withObject:v23 withObject:v33];

          if (v25)
          {
            v34 = &OBJC_PROTOCOL____TtP9PassKitUI30PKAppSettingsSpecifierProvider_;
            swift_unknownObjectRetain();
            if (swift_dynamicCastObjCProtocolConditional())
            {
            }

            else
            {
              swift_unknownObjectRelease();
              sub_3B30();
              v29 = sub_3B40();
              v30 = sub_3BE0();
              if (os_log_type_enabled(v29, v30))
              {
                v31 = swift_slowAlloc();
                *v31 = 0;
                _os_log_impl(&dword_0, v29, v30, "Unable to cast FinanceKitUI.AppSettingsProvider to PKAppSettingsSpecifierProvider", v31, 2u);
              }

              else
              {
              }

              (*(v4 + 8))(v8, v3);
            }
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          sub_3B30();
          v26 = sub_3B40();
          v27 = sub_3BE0();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&dword_0, v26, v27, "FinanceKitUI.AppSettingsProvider does not respond to initWithBundleIdentifier:delegate:", v28, 2u);
          }

          else
          {
          }

          (*(v4 + 8))(v11, v3);
        }
      }
    }

    else
    {
      sub_26A8(v38);
    }
  }

  else
  {
    sub_3B30();
    v17 = sub_3B40();
    v18 = sub_3BE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "FinanceKitUI.AppSettingsProvider not found", v19, 2u);
    }

    (*(v4 + 8))(v13, v3);
  }
}

uint64_t sub_351C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_3564()
{
  v0 = sub_3AA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A80();
  v5 = objc_allocWithZone(NSBundle);
  sub_3A90(v6);
  v8 = v7;
  v9 = [v5 initWithURL:v7];

  result = (*(v1 + 8))(v4, v0);
  qword_C6F8 = v9;
  return result;
}

unint64_t sub_36B8()
{
  result = qword_C798;
  if (!qword_C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C798);
  }

  return result;
}

void sub_3728()
{
  v0 = sub_3B20();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_3AD0();
  v4 = v3;
  v5 = type metadata accessor for AppPrivacySettingsController();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController_bundleIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___walletProvider] = 1;
  *&v6[OBJC_IVAR____TtC21WalletPrivacySettings28AppPrivacySettingsController____lazy_storage___financeKitProvider] = 1;
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_1CD8(v2, v4);

  v9 = v8;
  sub_3B10();
  sub_3AF0();
}

uint64_t sub_3854()
{
  sub_3AE0();
  sub_3B00();
  sub_39C0(&qword_C7A0, &type metadata accessor for PreferencesControllerView);
  sub_39C0(&qword_C7A8, &type metadata accessor for ASApplicationRecord_V1);
  sub_39C0(&qword_C7B0, &type metadata accessor for ASApplicationRecord_V1);
  sub_39C0(&qword_C7B8, &type metadata accessor for ASApplicationRecord_V1);
  return sub_3B60();
}

uint64_t sub_39C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_3A1C()
{
  result = qword_C7C0;
  if (!qword_C7C0)
  {
    sub_300C(&qword_C7C8, &unk_4620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C7C0);
  }

  return result;
}