uint64_t sub_1AFCD348C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  v3 = sub_1AFDFC538();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D1030(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v29 - v10;
  v12 = sub_1AFDFC4F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = v13;
  if (Strong)
  {
    v18 = *(Strong + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    v19 = Strong;

    (*(v13 + 16))(v11, v18 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v12);

    (*(v13 + 56))(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1AFDFC508();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_1AFCD7458(v11, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720], sub_1AF0D1030);
    }
  }

  v20 = v16;
  v32 = v12;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1AF477C68(v3, qword_1ED73B608);
  (*(v4 + 16))(v7, v21, v3);
  v22 = swift_slowAlloc();
  *v22 = 0;
  v23 = sub_1AFDFC528();
  v24 = sub_1AFDFDB88();
  v25 = sub_1AFDFC4E8();
  v30 = v3;
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v23, v24, v25, "transaction", "", v22, 2u);
  v34();
  v26 = sub_1AFDFDB78();
  v27 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v23, v26, v27, "transaction", "", v22, 2u);

  MEMORY[0x1B271DEA0](v22, -1, -1);
  (*(v4 + 8))(v7, v30);
  return (*(v31 + 8))(v20, v32);
}

uint64_t sub_1AFCD396C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(v5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  return sub_1AF66C6B4(v11, v11, a1, a2, 0x200000000, a3, a4, a5);
}

id sub_1AFCD3BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = *(v5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7[3] = a1;
  v7[4] = a2;
  v8 = 0;
  v9 = 2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  return sub_1AFC7BD74(sub_1AFCD7440, v7);
}

uint64_t sub_1AFCD3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a6;
  v14 = sub_1AFDFDD58();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - v16;
  v18 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v8;
  v23 = *(v8 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v32 = a1;
  v34 = a3;
  sub_1AF66C6B4(v23, v23, a1, a2, 0x200000000, a3, a4, v35);
  sub_1AFCD9C18(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v17, 0, 1, a8);
    (*(v18 + 32))(v22, v17, a8);
    v31(v22);
    sub_1AFCD3FD4(v33, v32, a2, v34, a4, v22, a8);
    return (*(v18 + 8))(v22, a8);
  }

  else
  {
    v25(v17, 1, 1, a8);
    return (*(v28 + 8))(v17, v29);
  }
}

uint64_t sub_1AFCD3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[3] = a7;
  v14 = sub_1AF585714(v22);
  (*(*(a7 - 8) + 16))(v14, a6, a7);
  v16[2] = *(a1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v16[3] = a2;
  v16[4] = a3;
  v17 = 0;
  v18 = 2;
  v19 = a4;
  v20 = a5;
  v21 = v22;
  sub_1AFC7BD74(sub_1AFCD9CF8, v16);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
}

uint64_t sub_1AFCD40BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = *(v5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  sub_1AF66C6B4(v11, v11, a1, a2, 0x200000000, a3, a4, v28);
  if (!v29)
  {
    return sub_1AFCD7458(v28, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCD9C18);
  }

  sub_1AF449D40(v28, v31);
  v29 = &type metadata for Extensions;
  v30 = &off_1F253E6E8;
  sub_1AF60685C(v28, v31);
  v12 = v29;
  v13 = v30;
  sub_1AF448018(v28, v29);
  v14 = sub_1AF8727C4(v12, v13);
  a5(v14);
  v15 = v29;
  v16 = sub_1AF441150(v28, v29);
  v27[3] = v15;
  v17 = sub_1AF585714(v27);
  v18 = (*(v15[-1].Description + 2))(v17, v16, v15);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21[2] = v11;
  v21[3] = a1;
  v21[4] = a2;
  v22 = 0;
  v23 = 2;
  v24 = a3;
  v25 = a4;
  v26 = v27;
  sub_1AFC7BD74(sub_1AFCD9CF8, v21);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v28);
}

id sub_1AFCD43C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  return sub_1AFC7BD74(sub_1AFCD74B8, v4);
}

void sub_1AFCD44F8(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *&v3[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v8 = v3;

  sub_1AF66CF74(v7, v8, a1, a2, a3);
}

uint64_t sub_1AFCD46F4(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a4;
  v10 = sub_1AFDFDD58();
  v24 = *(v10 - 8);
  v25 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v6[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v20 = v6;

  sub_1AF66CF74(v19, v20, a1, a2, &v28);
  sub_1AFCD9C18(0, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v21 = swift_dynamicCast();
  v22 = *(v14 + 56);
  if (v21)
  {
    v22(v13, 0, 1, a6);
    (*(v14 + 32))(v18, v13, a6);
    v27(v18);
    sub_1AFCD4980(v20, v18, a1, a2, a6);
    return (*(v14 + 8))(v18, a6);
  }

  else
  {
    v22(v13, 1, 1, a6);
    return (*(v24 + 8))(v13, v25);
  }
}

uint64_t sub_1AFCD4980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a5;
  v10 = sub_1AF585714(v13);
  (*(*(a5 - 8) + 16))(v10, a2, a5);
  v12[2] = a1;
  v12[3] = v13;
  v12[4] = a3;
  v12[5] = a4;
  sub_1AFC7BD74(sub_1AFCD9D14, v12);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
}

uint64_t sub_1AFCD4A4C()
{
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  v3 = 0;
  return sub_1AF0D4F18(v0, &v3, 0xD00000000000003DLL, 0x80000001AFF4D770);
}

uint64_t sub_1AFCD4BCC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  return sub_1AF6621E4(v7, v7, a1, a2, 0x200000000, a3);
}

uint64_t sub_1AFCD4CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  LOBYTE(a1) = sub_1AF671A7C(v5, v5, a1, a2, 0x200000000);

  return a1 & 1;
}

void sub_1AFCD4E08(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v1[4] = a1;
  v1[5] = &v2;
  sub_1AFC7BD74(sub_1AFCD74D0, v1);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_1AFCD4E94(void **a1, void *a2, uint64_t a3, void **a4)
{
  v9 = sub_1AFDFC128();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VFXEffect();
  (*(v10 + 16))(v13, a3, v9);
  v14 = a2;
  v15 = sub_1AFC7D91C(v14, v13);
  if (v4)
  {
    v16 = *a4;
    *a4 = v4;
  }

  else
  {
    v17 = *a1;
    *a1 = v15;
    v18 = v15;

    v19 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
    MEMORY[0x1B2718E00]();
    if (*((*&v14[v19] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[v19] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
  }
}

void *sub_1AFCD5194(uint64_t a1)
{
  v3 = 0;
  sub_1AF667400(*&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager], &v3, v1, a1);
  return v3;
}

uint64_t sub_1AFCD51F4(void **a1, void *a2, unsigned int a3)
{
  v5 = sub_1AF80F414(a3);
  objc_allocWithZone(type metadata accessor for VFXEffect());
  v6 = a2;
  v7 = sub_1AFC7D640(v6, v5, 0, 0xE000000000000000);
  v8 = *a1;
  *a1 = v7;
  v9 = v7;

  v10 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
  MEMORY[0x1B2718E00]();
  if (*((*(v6 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

void *sub_1AFCD5364(void *a1)
{
  v3 = 0;
  sub_1AF667698(*&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager], a1, v1, &v3);
  return v3;
}

uint64_t sub_1AFCD53C8(uint64_t a1, char *a2, void **a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (*(a1 + OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*&a2[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions] + OBJC_IVAR___VFXSceneLoadOptions_automaticallyPrepareScene);
  }

  v7 = *&a2[OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer];

  v8 = sub_1AF700A58(v5, v6, 0, v7);
  v10 = v9;

  *&a2[OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable] = v10;

  v11 = *(v5 + 24);
  v12 = *(v5 + 32);

  MEMORY[0x1B2718AE0](v11, v12);

  MEMORY[0x1B2718AE0](8992, 0xE200000000000000);
  sub_1AFDFE458();
  objc_allocWithZone(type metadata accessor for VFXEffect());
  v13 = a2;
  v14 = sub_1AFC7D640(v13, v8, 0, 0xE000000000000000);
  v15 = *a3;
  *a3 = v14;
  v16 = v14;

  v17 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
  MEMORY[0x1B2718E00]();
  if (*((*&v13[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v13[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

uint64_t sub_1AFCD5760(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC3VFX8VFXScene_effects;
  v3 = *(a1 + OBJC_IVAR____TtC3VFX8VFXScene_effects);
  if (v3 >> 62)
  {
    v4 = sub_1AFDFE108();
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1B2719C70](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    sub_1AF6FF6AC(*&v6[OBJC_IVAR____TtC3VFX9VFXEffect_effectID] | (v6[OBJC_IVAR____TtC3VFX9VFXEffect_effectID + 4] << 32), 0, 1);
  }

LABEL_9:
  *(a1 + v2) = MEMORY[0x1E69E7CC0];
}

id sub_1AFCD5934()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v2 = **(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v11 = 1;
  v3 = sub_1AFD04EFC(0x100000000uLL, v2);
  v4 = v3;
  v5 = HIDWORD(v3);
  v6 = type metadata accessor for VFXCoreCamera();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC3VFX13VFXCoreCamera_instance];
  *v8 = v4;
  *(v8 + 1) = v5;
  *(v8 + 1) = v1;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t VFXScene.ScriptFunction.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VFXScene.ScriptFunction.init(name:function:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

Swift::Void __swiftcall VFXScene.LoadOptions.registerVFX2AuthoringSystems(_:)(Swift::Bool a1)
{
  v2 = 2147517449;
  if (a1)
  {
    v2 = 0x1008000840FLL;
  }

  *(v1 + OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions) = v2;
}

uint64_t VFXScene.assetManager.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);

  v2 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v1);

  return v2;
}

void VFXScene.assetManager.setter(id a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (a1)
  {
    type metadata accessor for AssetManager();
    a1 = swift_dynamicCastClass();
    v5 = a1;
    if (a1)
    {
      a1 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = *(v4 + 184);

  sub_1AF6D655C(&type metadata for AssetManagerInstance, &off_1F25418A0, v6, sub_1AFCD74F0);
}

void VFXScene.initializeAssetManagerWithBundleURL(_:)()
{
  v1 = sub_1AFDFC128();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v15 - v8;
  v10 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);

  v11 = sub_1AF6D5628(&type metadata for AssetManagerInstance, &off_1F25418A0, v10);

  if (v11)
  {
    if (*&v11[OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager])
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v12 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v14 = v12;
        swift_once();
        v12 = v14;
      }

      v15[0] = 0;
      sub_1AF0D4F18(v12, v15, 0xD000000000000027, 0x80000001AFF4D7B0);
    }

    else
    {
      sub_1AFDFC078();
      (*(v2 + 16))(v5, v9, v1);
      type metadata accessor for AssetFileManager();
      swift_allocObject();
      v13 = sub_1AF8B005C(v5);
      (*(v2 + 8))(v9, v1);
      *&v11[OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager] = v13;
    }
  }

  else
  {
    sub_1AFDFC078();
    (*(v2 + 8))(v9, v1);
  }
}

Swift::Int64 __swiftcall VFXScene.entity(withTag:)(Swift::String_optional withTag)
{
  if (!withTag.value._object)
  {
    return 0;
  }

  object = withTag.value._object;
  countAndFlagsBits = withTag.value._countAndFlagsBits;
  v8 = 0xFFFFFFFFLL;
  v4 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v5 = v1;

  sub_1AF667D84(v4, &v8, v5, countAndFlagsBits, object);
  if (HIDWORD(v8))
  {
    v6 = 0;
  }

  else
  {
    v6 = v8 == 0xFFFFFFFFLL;
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v8 | (HIDWORD(v8) << 32);
  }
}

void *sub_1AFCD6280(uint64_t a1, _BYTE *a2, BOOL *a3)
{
  v7 = a1 & 0xFFFFFFFF00000000;
  v8 = a1;
  v15 = 0;
  v9 = *(v3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  type metadata accessor for Renderer();

  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = sub_1AF8D93C8(v11 | v7, &v15, v9, v10);
  if (a2)
  {
    *a2 = v15;
  }

  if (a3)
  {
    v13 = sub_1AF67CACC(&type metadata for MovieFileAsset, &off_1F256EBE8, v11 | v7) || sub_1AF67CACC(&type metadata for RenderGraphTextureTarget, &off_1F2546338, v11 | v7);
    *a3 = v13;
  }

  return v12;
}

Swift::Void __swiftcall VFXScene.updateMemoryOwnership()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  sub_1AF65F830();
  sub_1AF6680F0(v2, v1);
}

uint64_t sub_1AFCD6588(char *a1)
{
  v2 = v1;
  sub_1AF0D4E74();
  v86 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1AFDFC298();
  v7 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v108 = qword_1ED73B840;
  v109 = 0;
  v110 = 2;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  sub_1AF703294(1, v97);
  v87 = a1;
  v10 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v106[0] = v97[0];
  v106[1] = v97[1];
  v107 = v98;
  sub_1AF6B06C0(v10, v106, 0x200000000, v99);
  if (!*&v99[0])
  {
    return sub_1AFCD9B60(v97, sub_1AFCD9BC0);
  }

  if (v102 > 0 && (v73 = *(&v100 + 1)) != 0)
  {
    v72 = *(&v99[2] + 1);
    v78 = *(&v101 + 1);
    v77 = *(*(&v101 + 1) + 32);
    v76 = *(v101 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v103 = *&v99[0];
    v104 = *(v99 + 8);
    v105 = *(&v99[1] + 8);
    v96[3] = v100;
    v96[4] = v101;
    v96[5] = v102;
    v96[0] = v99[0];
    v96[1] = v99[1];
    v96[2] = v99[2];
    sub_1AF5DD298(v96, v94);
    v11 = 0;
    v81 = (v7 + 32);
    v82 = "T@NSObject,N,&";
    v80 = xmmword_1AFE431C0;
    v12 = v87;
    do
    {
      v74 = v11;
      v75 = v2;
      v13 = (v72 + 48 * v11);
      v14 = *v13;
      v114 = v13[1];
      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v18 = *(v13 + 4);
      v17 = *(v13 + 5);
      if (v76)
      {
        v19 = *(v17 + 376);

        os_unfair_lock_lock(v19);
        os_unfair_lock_lock(*(v17 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v77);
      v20 = v78;
      v21 = *(v78 + 4);
      v94[0] = *(v78 + 3);
      v94[1] = v21;
      v95 = v78[10];
      v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16);
      v23 = v78[4];
      v79 = v17;
      v24 = v22 + 1;
      v20[6] = ecs_stack_allocator_allocate(v23, 48 * (v22 + 1), 8);
      v20[7] = v24;
      v20[9] = 0;
      v20[10] = 0;
      v20[8] = 0;
      v25 = sub_1AF64B110(&type metadata for TextureGPURuntime, &off_1F2544388, v16, v15, v18, v20);
      v26 = v25;
      if (v16)
      {
        v27 = &selRef_numberWithBool_;
        if (v18)
        {
          v28 = &selRef_numberWithBool_;
          do
          {
            v30 = *v26;
            v26 += 2;
            v29 = v30;
            if (v30)
            {
              swift_unknownObjectRetain();
              v31 = vfx_setOwnerWithIdentity(v29, [v12 v28[79]], objc_msgSend(v12, v27[80]));
              if (v31)
              {
                v32 = v31;
                v90 = v29;
                v114 = v26;
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v92 = 0;
                v93 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000002ALL, v82 | 0x8000000000000000);
                v91 = [v12 v28[79]];
                v33 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v33);

                MEMORY[0x1B2718AE0](0x6469206B73617420, 0xEF20797469746E65);
                v91 = [v12 v27[80]];
                v34 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v34);

                MEMORY[0x1B2718AE0](0x746C75736572202CLL, 0xE90000000000003DLL);
                v91 = v32;
                v35 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v35);

                v36 = v92;
                v37 = v93;
                v38 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v89 = v18;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF0D1030(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v39 = swift_allocObject();
                *(v39 + 16) = v80;
                *(v39 + 56) = MEMORY[0x1E69E6158];
                *(v39 + 64) = sub_1AF0D544C();
                *(v39 + 32) = v36;
                *(v39 + 40) = v37;

                sub_1AFDFC4C8();

                v88 = v36;
                v40 = v83;
                sub_1AFDFC288();
                v41 = v85;
                v42 = v86[12];
                v43 = v86[16];
                v44 = v37;
                v45 = &v85[v86[20]];
                (*v81)(v85, v40, v84);
                *(v41 + v42) = v38;
                *(v41 + v43) = 0;
                *v45 = v88;
                *(v45 + 1) = v44;

                sub_1AFDFC608();

                sub_1AFCD9B60(v41, sub_1AF0D4E74);
                swift_unknownObjectRelease();

                v12 = v87;
                v28 = &selRef_numberWithBool_;
                v27 = &selRef_numberWithBool_;
                v26 = v114;
                v18 = v89;
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            --v18;
          }

          while (v18);
        }
      }

      else
      {
        v46 = &selRef_numberWithBool_;
        if (v14 != v114)
        {
          v49 = v114 - v14;
          v50 = (v25 + 16 * v14);
          v51 = &selRef_numberWithBool_;
          do
          {
            v53 = *v50;
            v50 += 2;
            v52 = v53;
            if (v53)
            {
              swift_unknownObjectRetain();
              v54 = vfx_setOwnerWithIdentity(v52, [v12 v51[79]], objc_msgSend(v12, v46[80]));
              if (v54)
              {
                v55 = v54;
                v90 = v52;
                v114 = v50;
                if (qword_1ED730EA0 != -1)
                {
                  swift_once();
                }

                v92 = 0;
                v93 = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000002ALL, v82 | 0x8000000000000000);
                v91 = [v12 v51[79]];
                v56 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v56);

                MEMORY[0x1B2718AE0](0x6469206B73617420, 0xEF20797469746E65);
                v91 = [v12 v46[80]];
                v57 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v57);

                MEMORY[0x1B2718AE0](0x746C75736572202CLL, 0xE90000000000003DLL);
                v91 = v55;
                v58 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v58);

                v59 = v92;
                v60 = v93;
                v61 = sub_1AFDFDA08();
                if (qword_1ED731058 != -1)
                {
                  swift_once();
                }

                v89 = v49;
                if (qword_1ED730E98 != -1)
                {
                  swift_once();
                }

                sub_1AF0D1030(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                v62 = swift_allocObject();
                *(v62 + 16) = v80;
                *(v62 + 56) = MEMORY[0x1E69E6158];
                *(v62 + 64) = sub_1AF0D544C();
                *(v62 + 32) = v59;
                *(v62 + 40) = v60;

                sub_1AFDFC4C8();

                v88 = v59;
                v63 = v83;
                sub_1AFDFC288();
                v64 = v86[12];
                v65 = v86[16];
                v66 = v60;
                v67 = v85;
                v68 = &v85[v86[20]];
                (*v81)(v85, v63, v84);
                *(v67 + v64) = v61;
                *(v67 + v65) = 0;
                *v68 = v88;
                *(v68 + 1) = v66;

                sub_1AFDFC608();

                sub_1AFCD9B60(v67, sub_1AF0D4E74);
                swift_unknownObjectRelease();

                v12 = v87;
                v51 = &selRef_numberWithBool_;
                v46 = &selRef_numberWithBool_;
                v50 = v114;
                v49 = v89;
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            --v49;
          }

          while (v49);
        }
      }

      v47 = v75;
      sub_1AF630994(v78, &v103, v94);
      v2 = v47;
      v48 = v79;
      sub_1AF62D29C(v79);
      ecs_stack_allocator_pop_snapshot(v77);
      if (v76)
      {
        os_unfair_lock_unlock(*(v48 + 43));
        os_unfair_lock_unlock(*(v48 + 47));
      }

      v11 = v74 + 1;
    }

    while (v74 + 1 != v73);
    v71 = MEMORY[0x1E69E6720];
    sub_1AFCD7458(v99, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCD9C18);
    sub_1AFCD9B60(v97, sub_1AFCD9BC0);
    v69 = v71;
  }

  else
  {
    sub_1AFCD9B60(v97, sub_1AFCD9BC0);
    v69 = MEMORY[0x1E69E6720];
  }

  return sub_1AFCD7458(v99, &qword_1ED725EA0, &type metadata for QueryResult, v69, sub_1AFCD9C18);
}

void _s3VFX8VFXSceneC14forEngineNamedACSS_tcfc_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC3VFX8VFXScene_loader;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer) = 0;
  *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_templateRemapTable) = 0;
  *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_templateWasPrepared) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_effects) = MEMORY[0x1E69E7CC0];
  v5 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  *(v1 + v5) = sub_1AF440CC0(v4);
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene__version) = 0;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_isInsideRE) = 0;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_isREAssetScene) = 0;
  v6 = OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for VFXREDrawCall()) init];
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_hasSharedEntityManager) = 0;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_metalBinaryArchiveURLs) = 0;
  v7 = OBJC_IVAR____TtC3VFX8VFXScene_recordedMetalBinaryArchiveURL;
  v8 = sub_1AFDFC128();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormat) = 115;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_internalPixelFormatDepth) = 1;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_useGammaBlending) = 0;
  *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_debugUIOptions) = 0;
  sub_1AFDFE518();
  __break(1u);
}

unint64_t sub_1AFCD73DC()
{
  result = qword_1EB632B40;
  if (!qword_1EB632B40)
  {
    sub_1AFCCD794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632B40);
  }

  return result;
}

uint64_t sub_1AFCD7458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1AFCD7510()
{
  result = qword_1EB643F70;
  if (!qword_1EB643F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643F70);
  }

  return result;
}

unint64_t sub_1AFCD7568()
{
  result = qword_1EB643F78;
  if (!qword_1EB643F78)
  {
    sub_1AFCD9C18(255, &qword_1EB643F80, &type metadata for PixelFormatDepth, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643F78);
  }

  return result;
}

uint64_t sub_1AFCD75E4(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t (*a7)(uint64_t))
{
  v7 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
  a6();

  return a7(v7);
}

uint64_t assignWithTake for VFXScene.ScriptFunction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t sub_1AFCD96E8()
{
  result = qword_1EB643F88;
  if (!qword_1EB643F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643F88);
  }

  return result;
}

unint64_t sub_1AFCD9740()
{
  result = qword_1EB643F90;
  if (!qword_1EB643F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643F90);
  }

  return result;
}

unint64_t sub_1AFCD9798()
{
  result = qword_1EB643F98;
  if (!qword_1EB643F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643F98);
  }

  return result;
}

unint64_t sub_1AFCD97F0()
{
  result = qword_1EB643FA0;
  if (!qword_1EB643FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643FA0);
  }

  return result;
}

uint64_t sub_1AFCD98BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = *(a5 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  sub_1AF66C6B4(v11, v11, a1, a2, 0x200000000, a3, a4, v28);
  if (!v29)
  {
    return sub_1AFCD7458(v28, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCD9C18);
  }

  sub_1AF449D40(v28, v31);
  v29 = &type metadata for Extensions;
  v30 = &off_1F253E6E8;
  sub_1AF60685C(v28, v31);
  v12 = v29;
  v13 = v30;
  sub_1AF448018(v28, v29);
  v14 = sub_1AF8727C4(v12, v13);
  (*(a6 + 16))(a6, v14);
  v15 = v29;
  v16 = sub_1AF441150(v28, v29);
  v27[3] = v15;
  v17 = sub_1AF585714(v27);
  v18 = (*(v15[-1].Description + 2))(v17, v16, v15);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21[2] = v11;
  v21[3] = a1;
  v21[4] = a2;
  v22 = 0;
  v23 = 2;
  v24 = a3;
  v25 = a4;
  v26 = v27;
  sub_1AFC7BD74(sub_1AFCD9CF8, v21);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v28);
}

unint64_t sub_1AFCD9B0C()
{
  result = qword_1EB643FB0;
  if (!qword_1EB643FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB643FB0);
  }

  return result;
}

uint64_t sub_1AFCD9B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFCD9BC0()
{
  if (!qword_1ED723D50)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723D50);
    }
  }
}

void sub_1AFCD9C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AFCD9D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1AFC07C4C(0, v1, 0);
    v4 = 0;
    v2 = v42;
    v5 = 1 << *(a1 + 32);
    v6 = (v5 + 63) >> 6;
    v32 = a1 + 64;
    v7 = (a1 + 64);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9)
      {
        break;
      }

      v4 -= 64;
      if (!--v6)
      {
        goto LABEL_7;
      }
    }

    v5 = __clz(__rbit64(v8)) - v4;
LABEL_7:
    for (i = 0; i != v1; ++i)
    {
      v33 = *(a1 + 36);
      v12 = (*(a1 + 48) + 16 * v5);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v5);
      v35 = 0;
      swift_unknownObjectWeakInit();
      v35 = 0;
      swift_unknownObjectWeakAssign();
      v36 = v13;
      v37 = v14;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v15 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        sub_1AF640200(v34, v38);
        v39 = 0;
        swift_unknownObjectWeakInit();
        v39 = 0;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        v22 = 0xE600000000000000;
        v20 = 0x3E6C6C756E3CLL;
      }

      else
      {
        v18 = v16;
        sub_1AF44596C(v34, v38);
        v39 = 0;
        swift_unknownObjectWeakInit();
        v39 = v18;
        swift_unknownObjectWeakAssign();
        ObjectType = swift_getObjectType();
        v20 = (*(v18 + 16))(ObjectType, v18);
        v22 = v21;
        sub_1AF4459C8(v34);
        swift_unknownObjectRelease();
      }

      v40 = v20;
      v41 = v22;
      v42 = v2;
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AFC07C4C(v23 > 1, v24 + 1, 1);
        v2 = v42;
      }

      *(v2 + 16) = v24 + 1;
      sub_1AFCF4834(v38, v2 + (v24 << 6) + 32, sub_1AFCF47D8);
      v25 = v5 >> 6;
      if ((*(v32 + 8 * (v5 >> 6)) & (-2 << v5)) != 0)
      {
        v11 = __clz(__rbit64(*(v32 + 8 * (v5 >> 6)) & (-2 << v5))) | v5 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = 1 << *(a1 + 32);
        v26 = v25 << 6;
        v27 = v25 + 1;
        v28 = (a1 + 72 + 8 * v25);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1AF0FBAE8(v5, v33, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v5, v33, 0);
      }

LABEL_9:
      v5 = v11;
    }
  }

  return v2;
}

uint64_t sub_1AFCDA044(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AFCDA088(uint64_t **a1, void (*a2)(void *))
{
  type metadata accessor for EntityManager();
  v4 = a1[1];
  v8 = **a1;
  v9[0] = &v8;
  v7 = *v4;
  v9[1] = &v7;
  sub_1AFCDD260();
  v6 = *a1[2];
  v9[2] = &v6;

  a2(v9);
}

void sub_1AFCDA150(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 != 0xFFFFFFFF)
  {
    v13 = v4;
    v14 = v5;
    v8 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v8)
    {
      v9 = *(v8 + 80);
      swift_unknownObjectWeakLoadStrong();
      v8 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    swift_unknownObjectUnownedInit();
    v11[0] = a4;
    v11[2] = v8;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v12 = v9;
    sub_1AFCDA270(a3);
    sub_1AF579490(v11);
    if (v9)
    {
      v10 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v10 ^ 1);
    }
  }
}

unint64_t sub_1AFCDA270(unint64_t result)
{
  v1 = result;
  if (HIDWORD(result) || result != -1)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0;
    v2 = swift_unownedRetainStrong();
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1AFC31528(v1, sub_1AFCF4204);

    swift_unownedRetainStrong();

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_1AFCEFD2C(v4, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  return result;
}

unint64_t sub_1AFCDA56C(unint64_t result)
{
  v1 = result;
  if (HIDWORD(result) || result != -1)
  {
    v2 = swift_unownedRetainStrong();
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1AFC30B84(v1, sub_1AFCF4228);

    swift_unownedRetainStrong();
  }

  return result;
}

unint64_t sub_1AFCDA718(unint64_t result)
{
  v1 = result;
  if (HIDWORD(result) || result != -1)
  {
    bzero(v5, 0x348uLL);
    v4 = 0;
    v2 = swift_unownedRetainStrong();
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1AFC2D098(v1, sub_1AFCF44F4);

    swift_unownedRetainStrong();

    return sub_1AFCEFD2C(v5, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  return result;
}

uint64_t sub_1AFCDA98C(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_1AFCDA9E0(_OWORD *a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t a5, _OWORD *a6)
{
  result = a2();
  *a4 = 1;
  if (*(a5 + 24) == 1)
  {
    v11 = a6[5];
    v18[4] = a6[4];
    v18[5] = v11;
    v19 = *(a6 + 24);
    v12 = a6[1];
    v18[0] = *a6;
    v18[1] = v12;
    v13 = a6[3];
    v18[2] = a6[2];
    v18[3] = v13;
    sub_1AFCEFD2C(v18, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);
    v14 = a1[5];
    v20[4] = a1[4];
    v20[5] = v14;
    v21 = *(a1 + 24);
    v15 = a1[1];
    v20[0] = *a1;
    v20[1] = v15;
    v16 = a1[3];
    v20[2] = a1[2];
    v20[3] = v16;
    memmove(a6, a1, 0x64uLL);
    return sub_1AF445DA0(v20, v17);
  }

  return result;
}

uint64_t sub_1AFCDAAF4(unsigned __int16 *a1, uint64_t (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  result = a2();
  *a4 = 1;
  if (*(a5 + 24) == 1)
  {
    sub_1AF487074(*a6, *(a6 + 8));
    v11 = *(a1 + 1);
    v12 = *(a1 + 2);
    v13 = *(a1 + 26);
    if (*(a1 + 25))
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14 | *(a1 + 24);
    *a6 = *a1;
    *(a6 + 8) = v11;
    *(a6 + 16) = v12;
    *(a6 + 26) = v13 != 0;
    *(a6 + 24) = v15;
  }

  return result;
}

uint64_t sub_1AFCDAC04(void (*a1)(void))
{
  a1(0);
  os_unfair_lock_lock(*(v1 + 56));
  sub_1AF6D75D4();
  if (v2)
  {
    os_unfair_lock_unlock(*(v1 + 56));
    return 0;
  }

  else
  {
    sub_1AF4498F4(0, &unk_1ED727180);
    swift_unknownObjectRetain();
    swift_dynamicCast();
    v3 = v5;
    os_unfair_lock_unlock(*(v1 + 56));
  }

  return v3;
}

uint64_t sub_1AFCDACFC(void *a1, uint64_t *a2)
{
  v19[2] = a2;
  v4 = sub_1AF92949C();
  if (v5)
  {
    v6 = v4;
    v7 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = *a2;
    *a2 = 0x8000000000000000;
    sub_1AFCEF768(v7, v6, isUniquelyReferenced_nonNull_native, &aBlock);
    *a2 = aBlock;
  }

  v9 = [a1 rootNode];
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFCF48D8;
  *(v10 + 24) = v19;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AFCF4954;
  *(v11 + 24) = v10;
  v24 = sub_1AFCBAB18;
  v25 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1AF92EF7C;
  v23 = &unk_1F256E248;
  v12 = _Block_copy(&aBlock);

  [v9 enumerateHierarchyUsingBlock_];

  _Block_release(v12);
  swift_isEscapingClosureAtFileLocation();

  v13 = [a1 assetRegistry];
  v14 = [v13 rootNode];

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AFCF48D8;
  *(v15 + 24) = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AFCF48E0;
  *(v16 + 24) = v15;
  v24 = sub_1AFCBAB18;
  v25 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1AF92EF7C;
  v23 = &unk_1F256E2C0;
  v17 = _Block_copy(&aBlock);

  [v14 enumerateHierarchyUsingBlock_];

  _Block_release(v17);
  swift_isEscapingClosureAtFileLocation();
}

Swift::Void __swiftcall VFX2Initialize()()
{
  sub_1AFCDB23C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    if (qword_1ED730450 != -1)
    {
      swift_once();
    }

    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = *v2;
      v2 += 2;
      sub_1AF6DBCAC(v4, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1AFCDB0C0(unint64_t a1)
{
  v2 = a1;
  v3 = HIDWORD(a1);
  v11 = 0;
  v4 = [v1 rootNode];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 20) = v3;
  *(v5 + 24) = &v11;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1AFCF4918;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1AFCBAB18;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AF92EF7C;
  aBlock[3] = &unk_1F256E3B0;
  v7 = _Block_copy(aBlock);

  [v4 enumerateHierarchyUsingBlock_];

  _Block_release(v7);
  swift_isEscapingClosureAtFileLocation();

  v8 = v11;

  return v8;
}

double sub_1AFCDB23C()
{
  sub_1AFCF45A4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v0 = swift_allocObject();
  *&result = 23;
  *(v0 + 16) = xmmword_1AFEA9D00;
  *(v0 + 32) = &type metadata for NodeTransformController;
  *(v0 + 40) = &off_1F256D418;
  *(v0 + 48) = &type metadata for NodeVisibilityController;
  *(v0 + 56) = &off_1F256D3F8;
  *(v0 + 64) = &type metadata for LightController;
  *(v0 + 72) = &off_1F256D358;
  *(v0 + 80) = &type metadata for CameraController;
  *(v0 + 88) = &off_1F256D2B8;
  *(v0 + 96) = &type metadata for ParametricModelController;
  *(v0 + 104) = &off_1F256CC78;
  *(v0 + 112) = &type metadata for PhysicsBodyController;
  *(v0 + 120) = &off_1F256CBD8;
  *(v0 + 128) = &type metadata for ForceFieldsController;
  *(v0 + 136) = &off_1F256CB38;
  *(v0 + 144) = &type metadata for MorpherController;
  *(v0 + 152) = &off_1F256A6E0;
  *(v0 + 160) = &type metadata for MaterialController;
  *(v0 + 168) = &off_1F256AC70;
  *(v0 + 176) = &type metadata for ModelController;
  *(v0 + 184) = &off_1F256AAF8;
  *(v0 + 192) = &type metadata for WorldBackgroundController;
  *(v0 + 200) = &off_1F256CA98;
  *(v0 + 208) = &type metadata for WorldIBLController;
  *(v0 + 216) = &off_1F256C9F8;
  *(v0 + 224) = &type metadata for WorldPhysicsController;
  *(v0 + 232) = &off_1F256C958;
  *(v0 + 240) = &type metadata for WorldFogController;
  *(v0 + 248) = &off_1F256C8B8;
  *(v0 + 256) = &type metadata for CameraEffectMotionBlurController;
  *(v0 + 264) = &off_1F256CEF8;
  *(v0 + 272) = &type metadata for CameraEffectDepthOfFieldController;
  *(v0 + 280) = &off_1F256CE58;
  *(v0 + 288) = &type metadata for CameraEffectGrainController;
  *(v0 + 296) = &off_1F256CF98;
  *(v0 + 304) = &type metadata for CameraEffectExposureController;
  *(v0 + 312) = &off_1F256D0D8;
  *(v0 + 320) = &type metadata for CameraEffectToneMappingController;
  *(v0 + 328) = &off_1F256D178;
  *(v0 + 336) = &type metadata for CameraEffectBloomController;
  *(v0 + 344) = &off_1F256D218;
  *(v0 + 352) = &type metadata for CameraEffectDoughnutBokehController;
  *(v0 + 360) = &off_1F256CD18;
  *(v0 + 368) = &type metadata for CameraEffectChromaticTransformController;
  *(v0 + 376) = &off_1F256CDB8;
  *(v0 + 384) = &type metadata for CameraEffectLensBlurController;
  *(v0 + 392) = &off_1F256D038;
  return result;
}

id sub_1AFCDB598(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 authoringGraph];
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      type metadata accessor for AuthoringGraph();
      if (swift_dynamicCast())
      {
        v7 = MEMORY[0x1E69E7CC0];
        v9[0] = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
        v9[1] = v8;
        sub_1AF412AA8(a3, 0, 1, 0x1000000000000000uLL, 0, v7, v9);

        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AFCDB6FC(void *a1)
{
  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 authoringGraph];
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      type metadata accessor for AuthoringGraph();
      if (swift_dynamicCast())
      {
        sub_1AF3FB9C8(sub_1AFC8EEE0, 0, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
        v4 = sub_1AF449CC8();

        *(v5 + 24) = v4;
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AFCDB884(void *a1, uint64_t a2, void (*a3)())
{
  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 authoringGraph];
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      type metadata accessor for AuthoringGraph();
      if (swift_dynamicCast())
      {
        a3();
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AFCDB99C(void *a1, uint64_t a2, void **a3)
{
  if ([a1 asset])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 node];
      v7 = swift_allocObject();
      *(v7 + 16) = a3;
      v8 = swift_allocObject();
      v9 = sub_1AFCF48BC;
      *(v8 + 16) = sub_1AFCF48BC;
      *(v8 + 24) = v7;
      aBlock[4] = sub_1AFBF7FC8;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AF92EF7C;
      aBlock[3] = &unk_1F256E1D0;
      v10 = _Block_copy(aBlock);

      [v6 enumerateHierarchyUsingBlock_];
      swift_unknownObjectRelease();

      _Block_release(v10);
      swift_isEscapingClosureAtFileLocation();

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v9 = 0;
LABEL_6:
  v11 = [a1 asset];
  if (v11)
  {
    v12 = v11;
    swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13 && (v14 = v13, v15 = sub_1AF92975C(), v16) && v15 != 0xFFFFFFFF && (v17 = v15, , v18 = sub_1AF3CB8BC(v17), , v18))
    {
      v19 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1AF426E64(0, v19[2] + 1, 1, v19);
        *a3 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v26 = sub_1AF426E64(v21 > 1, v22 + 1, 1, v19);
        v23 = v22 + 1;
        v19 = v26;
        *a3 = v26;
      }

      v19[2] = v23;
      v24 = &v19[3 * v22];
      v24[4] = v12;
      v24[5] = v14;
      v24[6] = v18;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_1AF0FB8EC(v9);
}

unint64_t sub_1AFCDBC90(void *a1, uint64_t a2, unint64_t *a3)
{
  result = sub_1AF929618();
  if (v6)
  {
    if (result != 0xFFFFFFFF)
    {
      v7 = result;

      v8 = sub_1AF3CB8BC(v7);

      if (v8)
      {
        v9 = *a3;
        v10 = a1;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a3 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1AF426E64(0, v9[2] + 1, 1, v9);
          v9 = result;
          *a3 = result;
        }

        v11 = v9[2];
        v12 = v9[3];
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v17 = v11 + 1;
          v15 = v9;
          v16 = v9[2];
          result = sub_1AF426E64(v12 > 1, v11 + 1, 1, v15);
          v11 = v16;
          v13 = v17;
          v9 = result;
          *a3 = result;
        }

        v9[2] = v13;
        v14 = &v9[3 * v11];
        v14[4] = v10;
        v14[5] = &off_1F256A448;
        v14[6] = v8;
      }
    }
  }

  return result;
}

id sub_1AFCDBDA8(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  if ([a1 asset])
  {
    swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = v7;
      v9 = swift_unknownObjectRetain();
      a3(v9, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  result = [a1 asset];
  if (result)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = [v11 node];
      v13 = swift_allocObject();
      *(v13 + 16) = a3;
      *(v13 + 24) = a4;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1AFCF48E8;
      *(v14 + 24) = v13;
      v16[4] = sub_1AFCBAB18;
      v16[5] = v14;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_1AF92EF7C;
      v16[3] = &unk_1F256E338;
      v15 = _Block_copy(v16);

      [v12 enumerateHierarchyUsingBlock_];
      swift_unknownObjectRelease();

      _Block_release(v15);
      swift_isEscapingClosureAtFileLocation();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1AFCDBFE0(void *a1)
{
  v3 = v2;
  v5 = [v1 scene];
  v6 = *&v5[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  *&v14[0] = 0x696C616974696E69;
  *(&v14[0] + 1) = 0xEB0000000072657ALL;
  v7 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF449D40(v13, v14);
  sub_1AFCDD1E0();
  swift_dynamicCast();
  v8 = v12;
  *&v14[0] = 0xD000000000000014;
  *(&v14[0] + 1) = 0x80000001AFF4E140;
  v9 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF449D40(v13, v14);
  swift_dynamicCast();
  v10 = v12;
  *&v14[0] = v6;
  LOBYTE(v12) = 1;
  *&v13[0] = 0;
  v8(v14, &v12, v13);
  if (!v3 && (v10 & 1) != 0)
  {
    *&v14[0] = v6;
    LOBYTE(v12) = 2;
    *&v13[0] = 0;
    v8(v14, &v12, v13);
  }
}

void sub_1AFCDC2AC(void *a1)
{
  v2 = v1;
  v4 = [v1 presentationScene];
  v5 = *&v4[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  *&v28 = 0x69706D6F63657270;
  *(&v28 + 1) = 0xEB0000000064656CLL;
  v6 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v6)
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v23 = v28;
  v24 = v29;
  if (*(&v29 + 1))
  {
    sub_1AF0D4478(0, &qword_1ED721F80);
    if (swift_dynamicCast())
    {
      v7 = [v27[0] BOOLValue];

      v8 = v7 ^ 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1AFCEFD2C(&v23, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  v8 = 1;
LABEL_9:
  *&v23 = 0xD000000000000014;
  *(&v23 + 1) = 0x80000001AFF4E140;
  v9 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF449D40(&v28, &v23);
  swift_dynamicCast();
  v10 = v27[0];
  *&v23 = 0x696C616974696E69;
  *(&v23 + 1) = 0xEB0000000072657ALL;
  v11 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  sub_1AF449D40(&v28, &v23);
  sub_1AFCDD1E0();
  swift_dynamicCast();
  v12 = swift_allocObject();
  *(v12 + 16) = *v27;
  v13 = v5 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig + 2) = v8;
  *(v13 + *(type metadata accessor for ScriptingConfiguration() + 32)) = 0;

  v14 = [v2 remapTable];
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR___VFXBidirectionalRemapTable_remapTable];
    v16 = v14;

    [*(v15 + 16) lock];
    v17 = *(v15 + 32);
    v18 = *(v15 + 16);

    [v18 unlock];

    if (v10)
    {
LABEL_11:

      return;
    }
  }

  else
  {
    v17 = 0;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1AFCF43EC;
  *(v20 + 24) = v12;
  v21 = swift_allocObject();
  v21[2] = sub_1AFCF4434;
  v21[3] = v20;
  v21[4] = v5;
  v21[5] = v17;
  v25 = sub_1AFCF4474;
  v26 = v21;
  *&v23 = MEMORY[0x1E69E9820];
  *(&v23 + 1) = 1107296256;
  *&v24 = sub_1AFCDA98C;
  *(&v24 + 1) = &unk_1F256E0B8;
  v22 = _Block_copy(&v23);

  [v19 postCommandWithObject:0 applyBlock:v22];

  _Block_release(v22);
}

uint64_t sub_1AFCDC7A0(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 2;
  v8 = a3;
  v9[0] = &v8;
  v6 = a4;
  v9[1] = &v7;
  v9[2] = &v6;

  sub_1AFCDA088(v9, a1);
}

void sub_1AFCDC8A4(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  if ([a1 asset])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = sub_1AF9A30B4();
      swift_unknownObjectRelease();
      if (v7 == a3)
      {
        v9 = *a4;
        *a4 = a1;
        v8 = a1;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

unint64_t VFXSceneLoadPurpose.init(rawValue:)(unsigned int a1)
{
  v1 = a1;
  v2 = 2;
  if (a1 != 2)
  {
    v2 = 0;
  }

  v3 = a1 != 2;
  if (a1 == 1)
  {
    v3 = 0;
  }

  else
  {
    v1 = v2;
  }

  if (!a1)
  {
    v1 = 0;
    v3 = 0;
  }

  return v1 | (v3 << 32);
}

int *sub_1AFCDC9EC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t VFXScene.load(url:loadingFor:options:infoOut:)(unint64_t a1, int a2, void *a3, void *a4)
{
  v6 = v4;
  v54 = a4;
  v10 = type metadata accessor for BundleInfo();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v55 = v50 - v16;
  type metadata accessor for VFXLoader();
  swift_allocObject();
  sub_1AF811870();
  v18 = v17;
  v53 = a2 != 2;
  v17[16] = a2 != 2;
  v17[21] = 1;
  v17[19] = a2 == 2;
  v17[23] = a2 != 1;
  v17[22] = a2 == 2;
  if (!a3)
  {
    v60 = 0u;
    v61 = 0u;
LABEL_10:
    sub_1AFCEFD2C(&v60, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AFCF4720);
    goto LABEL_11;
  }

  *&v56 = @"VFXWorldLoaderAllowLoadingEffectFromTheFuture";
  type metadata accessor for VFXWorldLoaderOption(0);
  v19 = @"VFXWorldLoaderAllowLoadingEffectFromTheFuture";
  v20 = [a3 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v60 = v56;
  v61 = v57;
  if (!*(&v57 + 1))
  {
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) != 0 && v56 == 1)
  {
    v18[22] = 1;
  }

LABEL_11:
  v21 = *(v4 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v22 = *(v4 + OBJC_IVAR____TtC3VFX8VFXScene_legacyRenderer);

  LOBYTE(v60) = 1;
  v23 = sub_1AF81249C(v13, a1, 0, v21, v22, 0x100000000);
  v25 = v24;

  if (v5)
  {
  }

  v51 = 0;
  v52 = v25;
  v27 = v55;
  sub_1AFCF4834(v13, v55, type metadata accessor for BundleInfo);
  v28 = *(v27 + *(v10 + 24));
  *(v6 + OBJC_IVAR____TtC3VFX8VFXScene__version) = v28;
  *&v60 = sub_1AFDFC028();
  *(&v60 + 1) = v29;
  MEMORY[0x1B2718AE0](0x296C65646F6D2820, 0xE800000000000000);
  v30 = *(&v60 + 1);
  *(v21 + 24) = v60;
  *(v21 + 32) = v30;

  v31 = v54;
  if (v54)
  {
    v50[1] = *(v27 + *(v10 + 28));
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    *&v60 = 0x6E6F6973726576;
    *(&v60 + 1) = 0xE700000000000000;
    [v31 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v33 = sub_1AFDFC2C8();
    strcpy(&v60, "documentUUID");
    BYTE13(v60) = 0;
    HIWORD(v60) = -5120;
    [v31 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v34 = sub_1AFDFD5A8();
    *&v60 = 0xD000000000000014;
    *(&v60 + 1) = 0x80000001AFF4E140;
    [v31 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    if (*(v18 + 3))
    {
      ErrorValue = swift_getErrorValue();
      v36 = v59;
      v37 = *(v59 - 8);
      v38 = MEMORY[0x1EEE9AC00](ErrorValue, v58);
      v40 = v50 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v40, v38);
      v41 = sub_1AFDFEE08();
      (*(v37 + 8))(v40, v36);
    }

    else
    {
      v41 = 0;
    }

    *&v60 = 0x73676E696E726177;
    *(&v60 + 1) = 0xE800000000000000;
    v42 = sub_1AFDFF168();
    v43 = v54;
    [v54 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = sub_1AFDFD5A8();
    *&v60 = 0x69706D6F63657270;
    *(&v60 + 1) = 0xEB0000000064656CLL;
    [v43 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v45 = swift_allocObject();
    v46 = v52;
    *(v45 + 16) = v23;
    *(v45 + 24) = v46;
    *&v60 = sub_1AFCDD1AC;
    *(&v60 + 1) = v45;
    sub_1AFCDD1E0();

    v47 = sub_1AFDFF168();
    *&v60 = 0x696C616974696E69;
    *(&v60 + 1) = 0xEB0000000072657ALL;
    [v43 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v48 = *(v18 + 4);
    *&v60 = 0xD000000000000014;
    *(&v60 + 1) = 0x80000001AFF361A0;

    [v43 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v49 = sub_1AFDFD5A8();
    *&v60 = 0x65726170657270;
    *(&v60 + 1) = 0xE700000000000000;
    [v43 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v27 = v55;
  }

  else
  {
  }

  return sub_1AFCF466C(v27, type metadata accessor for BundleInfo);
}

unint64_t sub_1AFCDD1E0()
{
  result = qword_1ED721E40;
  if (!qword_1ED721E40)
  {
    type metadata accessor for EntityManager();
    sub_1AFCDD260();
    result = swift_getFunctionTypeMetadata3();
    atomic_store(result, &qword_1ED721E40);
  }

  return result;
}

void sub_1AFCDD260()
{
  if (!qword_1ED722058)
  {
    sub_1AFCEF474(255, &unk_1ED722060, sub_1AF43B694, &type metadata for Entity, MEMORY[0x1E69E5E28]);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722058);
    }
  }
}

void *sub_1AFCDD488(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityObjects);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1AF419914(a1, a2);
  if (v7)
  {
    v8 = *(*(v3 + 56) + 8 * v6);
    v9 = v8;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1AFCDD50C(char *a1)
{
  v2 = v1;
  v4 = sub_1AFDFC318();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&a1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v9 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v24 = v9;
        swift_once();
        v9 = v24;
      }

      v28 = 0;
      sub_1AF0D4F18(v9, &v28, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v10 = Strong;

  v11 = a1;
  v12 = sub_1AF670BD0(v10, v11);
  v14 = v13;

  if (!v14)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v15 = sub_1AFDFDA08();
    v28 = 1;
    sub_1AF75A4B4(v15, 0xD000000000000024, 0x80000001AFF4E9C0, &v28);
    sub_1AFDFC308();
    v12 = sub_1AFDFC2B8();
    v14 = v16;
    (*(v27 + 8))(v7, v4);
    if (!swift_weakLoadStrong())
    {
      if (*&v11[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
      {
      }

      else
      {
        v17 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v25 = v17;
          swift_once();
          v17 = v25;
        }

        v28 = 0;
        sub_1AF0D4F18(v17, &v28, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    MEMORY[0x1EEE9AC00](v18, v19);
    *(&v26 - 4) = v11;
    *(&v26 - 3) = v12;
    *(&v26 - 2) = v14;
    sub_1AFC7BD74(sub_1AFCF489C, (&v26 - 6));
  }

  v20 = OBJC_IVAR____TtC3VFX8VFXScene_entityObjects;
  v21 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v2 + v20);
  *(v2 + v20) = 0x8000000000000000;
  sub_1AF8596A4(v21, v12, v14, isUniquelyReferenced_nonNull_native);

  *(v2 + v20) = v28;
  return result;
}

Swift::Void __swiftcall VFXScene.didRenameTag(_:to:)(Swift::String _, Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v5 = _._object;
  v6 = _._countAndFlagsBits;
  v7 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityObjects);
  if (*(v7 + 16))
  {

    v8 = sub_1AF419914(v6, v5);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      v11 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  sub_1AF8267DC(v10, countAndFlagsBits, object);

  sub_1AF8267DC(0, v6, v5);
}

void sub_1AFCDDB8C(char *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, id, char *))
{
  v6 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v7 = a3;
  v8 = a1;
  v10 = v7;
  v9 = v8;
  a4(v6, v10, v9);
}

id VFXScene.fetchEntityObject(withTag:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityObjects];
  if (*(v5 + 16))
  {

    v6 = sub_1AF419914(a1, a2);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      return v8;
    }
  }

  v9 = sub_1AFDFCEC8();
  v10 = [v2 entityWithTag_];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1;
  }

  v12 = HIDWORD(v10);
  if (v11 == -1 && v12 == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for VFXEntityObject();
  v15 = objc_allocWithZone(v14);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *&v15[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager] = 0;
  v15[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
  v16 = &v15[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  *v16 = v11;
  v16[1] = v12;
  swift_weakAssign();
  v19.receiver = v15;
  v19.super_class = v14;
  v8 = objc_msgSendSuper2(&v19, sel_init);
  v17 = v8;
  sub_1AFCDD50C(v17);

  return v8;
}

id VFXScene.createEntityPropertyHelper(withTag:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AFCDD488(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 presentationProperties];

    return v5;
  }

  else
  {
    v7 = sub_1AFDFCEC8();
    v8 = [v2 entityWithTag_];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }

    v10 = HIDWORD(v8);
    if (v9 == -1 && v10 == 0)
    {
      return 0;
    }

    else
    {
      v12 = type metadata accessor for EntityPropertyHelper();
      v13 = objc_allocWithZone(v12);
      swift_weakInit();
      swift_weakAssign();
      v14 = &v13[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
      *v14 = v9;
      v14[1] = v10;
      v15.receiver = v13;
      v15.super_class = v12;
      return objc_msgSendSuper2(&v15, sel_init);
    }
  }
}

id sub_1AFCDDF1C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1AFDFCEF8();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id VFXScene.createEntityPropertyHelper(withObjectID:)(unint64_t a1)
{
  v1 = HIDWORD(a1);
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = -1;
  }

  v3 = type metadata accessor for EntityPropertyHelper();
  v4 = objc_allocWithZone(v3);
  swift_weakInit();
  swift_weakAssign();
  v5 = &v4[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
  *v5 = v2;
  v5[1] = v1;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_init);
}

id VFXScene.createNullEntityPropertyHelper()()
{
  v0 = type metadata accessor for EntityPropertyHelper();
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  swift_weakAssign();
  *&v1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = 0xFFFFFFFFLL;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall VFXScene.resolveObjectReferencesWithRemapTable(world:objectsByIdentifier:)(VFXWorld *world, Swift::OpaquePointer objectsByIdentifier)
{
  v3 = sub_1AFCD9D2C(objectsByIdentifier._rawValue);
  if (*(v3 + 16))
  {
    sub_1AFCEF474(0, &qword_1EB633BA0, sub_1AF85B1C0, &type metadata for VFXObjectReference, MEMORY[0x1E69E6EC8]);
    v4 = sub_1AFDFE5C8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  sub_1AFCEF8B4(v3, 1, &v5);

  sub_1AFC50154(world, v5);
}

uint64_t VFXScene.remapEntityReferences(_:duplicating:)(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR___VFXBidirectionalRemapTable_remapTable;
  v6 = *(*(a1 + OBJC_IVAR___VFXBidirectionalRemapTable_remapTable) + 24);
  type metadata accessor for DummyRemapContext();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  *(v7 + 32) = 0;
  *(v7 + 24) = v6;

  v133 = v7;
  *(v7 + 16) = a2;
  v9 = *(*(a1 + v5) + 24);
  type metadata accessor for RemapContext();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = sub_1AF42B4D0(v8);

  v11 = sub_1AF42B590(v8);
  *(v10 + 24) = v9;
  *(v10 + 32) = v11;

  v120 = v10;
  *(v10 + 16) = a2;
  v12 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v131 = sub_1AF4217DC(0, *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, v8);
  v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v128 = (v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v14)
  {
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v18 = *v128 + v15;
      if ((*(v18 + 6) & 0x80000000) == 0)
      {
        v19 = *(v18 + 8);
        v20 = v131;
        v22 = *(v131 + 16);
        v21 = *(v131 + 24);
        if (v22 >= v21 >> 1)
        {
          v20 = sub_1AF4217DC(v21 > 1, v22 + 1, 1, v131);
        }

        *(v20 + 2) = v22 + 1;
        v131 = v20;
        v17 = &v20[8 * v22];
        *(v17 + 8) = i;
        *(v17 + 9) = v19;
      }

      v15 += 12;
    }
  }

  os_unfair_lock_unlock(*(v13 + 24));
  v127 = *(v131 + 16);
  if (v127)
  {
    v24 = 0;
    v126 = (v131 + 32);
    v135 = MEMORY[0x1E69E7CC0];
    v132 = v12;
    do
    {
      v130 = v24;
      *&v23 = *&v126[8 * v24];
      v25 = v23;
      v134 = v23;
      v26 = DWORD1(v23);
      v27 = v23 == -1 && DWORD1(v23) == 0;
      if (v27 || (v23 & 0x80000000) != 0)
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
        if (v128[1] > v23 && (DWORD1(v23) == -1 || *(*v128 + 12 * v23 + 8) == DWORD1(v23)))
        {
        }
      }

      v30 = *(v28 + 16);
      v129 = v28;
      if (v30)
      {
        v31 = (v28 + 32);
        v136 = v25 | (v26 << 32);
        do
        {
          v137 = *v31;
          v32 = v137;
          v33 = sub_1AFDFDD58();
          v34 = *(v33 - 8);
          MEMORY[0x1EEE9AC00](v33, v35);
          v37 = &v116 - v36;
          v38 = *(&v137 + 1);
          sub_1AF67CB9C(v136, v32, &v116 - v36);
          v39 = *(v32 - 8);
          if ((*(v39 + 48))(v37, 1, v32) == 1)
          {
            (*(v34 + 8))(v37, v33);
          }

          else
          {
            *&v139[8] = v137;
            v40 = sub_1AF585714(&v138);
            (*(v39 + 32))(v40, v37, v32);
            sub_1AF0FBA54(&v138, &v140);
            v41 = v133;
            *(v133 + 32) = 0;
            v42 = v141;
            sub_1AF448018(&v140, v141);
            v43 = *(*(v38 + 8) + 96);
            v44 = *(*(&v42 + 1) + 8);

            v43(v45, &off_1F2532060, v42, v44);

            if (*(v41 + 32) == 1)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v12 = v132;
                v46 = v135;
              }

              else
              {
                v46 = sub_1AF4217DC(0, *(v135 + 2) + 1, 1, v135);
                v12 = v132;
              }

              v48 = *(v46 + 2);
              v47 = *(v46 + 3);
              if (v48 >= v47 >> 1)
              {
                v46 = sub_1AF4217DC(v47 > 1, v48 + 1, 1, v46);
              }

              *(v46 + 2) = v48 + 1;
              v135 = v46;
              *&v46[8 * v48 + 32] = v134;
            }

            else
            {
              v12 = v132;
            }

            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v140);
          }

          ++v31;
          --v30;
        }

        while (v30);
      }

      v24 = v130 + 1;
    }

    while (v24 != v127);

    v49 = v135;
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  v126 = *(v49 + 2);
  if (v126)
  {
    v50 = 0;
    v125 = v49 + 32;
    v121 = (v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v51 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    v135 = v49;
    do
    {
      v52 = &v125[8 * v50];
      v53 = *(v52 + 1);
      v54 = *v52;
      v55 = v54 == -1 && v53 == 0;
      v56 = v55;
      v131 = *v52;
      v130 = v53;
      if (v55 || (v54 & 0x80000000) != 0)
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v57 = MEMORY[0x1E69E7CC0];
        if (v121[1] > v54 && (v53 == -1 || *(*v121 + 12 * v54 + 8) == v53))
        {

          v53 = v130;
          v54 = v131;
        }
      }

      v58 = *(v57 + 16);
      if (v58)
      {
        v129 = v50;
        v59 = 0;
        v128 = v57;
        v60 = v57 + 32;
        v127 = v54 | (v53 << 32);
        *&v134 = v58;
        v136 = v57 + 32;
        do
        {
          v137 = *(v60 + 16 * v59);
          v61 = *(v12 + v51);
          if (v61)
          {
            v62 = *(v61 + 80);
            swift_unknownObjectWeakLoadStrong();
            v61 = *(v61 + 56);
          }

          else
          {
            v62 = 0;
          }

          v147 = 0;
          swift_unknownObjectUnownedInit();
          v146 = v12;
          v147 = v61;
          swift_unknownObjectUnownedAssign();
          swift_unownedRetain();
          swift_unknownObjectRelease();
          v148 = v62;
          if (!v56)
          {
            v63 = v51;
            v145 = 0;
            memset(v144, 0, sizeof(v144));
            swift_unownedRetainStrong();
            v64 = *(&v137 + 1);
            v65 = *(*(&v137 + 1) + 8);
            v66 = v137;
            if (sub_1AF6411A4(v137) > 0 && (v131 & 0x80000000) == 0 && *(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v131)
            {
              v67 = (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v131);
              v68 = *(v67 + 2);
              if (v130 == -1 || v67[2] == v130)
              {
                v70 = *(*(v12 + 144) + 8 * *v67 + 32);
                v71 = *(v70 + 48);
                v73 = *(v71 + 16);
                v72 = v71 + 16;
                v74 = v73 + 1;
                while (--v74)
                {
                  v75 = (v72 + 40);
                  v76 = *(v72 + 16);
                  v72 += 40;
                  if (v76 == v66)
                  {
                    v124 = *v75;
                    v77 = *(v75 - 1);
                    if (v77 <= 1)
                    {
                      v77 = 1;
                    }

                    v123 = v77;
                    v122 = *(v70 + 128);
                    if (!sub_1AF640D40(v66))
                    {
                      break;
                    }

                    v78 = v123 * v68;
                    v79 = v124 + v122;
                    v141 = v137;
                    v80 = sub_1AF585714(&v140);
                    *&v137 = v79;
                    sub_1AF641154(&v79[v78], v66, v80);
                    if ((*(v65 + 48))(v66, v65))
                    {
                      v123 = v78;
                      v81 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                      ecs_stack_allocator_push_snapshot(*(*v81 + 32));
                      v124 = v81;
                      v82 = *(*v81 + 32);
                      v122 = sub_1AF640D40(v66);
                      v83 = sub_1AF6411A8(v66);
                      v122 = ecs_stack_allocator_allocate(v82, v122, v83);
                      sub_1AF641760();
                      v84 = *(&v141 + 1);
                      v119 = v141;
                      sub_1AF448018(&v140, v141);
                      (*(*(v84 + 8) + 96))(v120, &off_1F2532090, v119);
                      if (v62)
                      {
                        sub_1AFCF466C(v144, sub_1AF80E170);
                        sub_1AF441194(&v140, v144);
                      }

                      v119 = sub_1AF6824B0(v66, v64, v127);
                      v85 = v141;
                      v118 = sub_1AF441150(&v140, v141);
                      *&v139[8] = v85;
                      *&v139[16] = *(*(&v85 + 1) + 8);
                      v86 = sub_1AF585714(&v138);
                      (*(*(v85 - 8) + 16))(v86, v118, v85);
                      sub_1AF6411D8(&v138, v119, v66);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v138);
                      v87 = sub_1AF65C98C(v127);
                      v88 = *(v12 + 144);
                      v117 = v87;
                      v89 = *(v88 + 8 * v87 + 32);
                      v116 = *v124;
                      v118 = *(v65 + 88);
                      v119 = v89;

                      if ((v118)(v122, v137 + v123, v66, v65))
                      {
                        v90 = *(v119 + 192);
                        v91 = v117;
                        if (v90)
                        {
                          v92 = *(v119 + 208);
                          v93 = v117 << 16 >> 54;
                          v94 = 1 << ((v117 << 16) >> 48);
                          *(v90 + 8 * v93) |= v94;
                          *(v92 + 8 * v93) &= ~v94;
                        }

                        sub_1AF705804(v91 << 16 >> 48);
                      }

                      sub_1AF640BC8();
                      ecs_stack_allocator_pop_snapshot(*(*v124 + 32));
                    }

                    else
                    {
                      v95 = *(&v141 + 1);
                      *&v137 = v141;
                      sub_1AF448018(&v140, v141);
                      (*(*(v95 + 8) + 96))(v120, &off_1F2532090, v137);
                      if (v62)
                      {
                        sub_1AFCF466C(v144, sub_1AF80E170);
                        sub_1AF441194(&v140, v144);
                      }

                      *&v137 = sub_1AF6824B0(v66, v64, v127);
                      v96 = v141;
                      v124 = sub_1AF441150(&v140, v141);
                      *&v139[8] = v96;
                      *&v139[16] = *(*(&v96 + 1) + 8);
                      v97 = sub_1AF585714(&v138);
                      (*(*(v96 - 8) + 16))(v97, v124, v96);
                      sub_1AF6411D8(&v138, v137, v66);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v138);
                    }

                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v140);

                    swift_unownedRetainStrong();

                    Strong = swift_unknownObjectUnownedLoadStrong();
                    if (Strong)
                    {
                      v99 = Strong;
                      if ((*(v64 + 24))(v66, v64))
                      {
                        v100 = v99 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
                        v101 = type metadata accessor for ScriptingConfiguration();
                        ++*(v100 + *(v101 + 36));
                      }

                      swift_unknownObjectRelease();
                    }

                    if (v62)
                    {
                      sub_1AFCF4770(v144, &v140, sub_1AF80E170);
                      v51 = v63;
                      v60 = v136;
                      if (v141)
                      {
                        sub_1AF0FBA54(&v140, &v142);
                        swift_unownedRetainStrong();
                        v102 = v143;
                        v103 = sub_1AF441150(&v142, v143);
                        sub_1AF6C3810(v103, v127, 0, v102, &v140);
                        v104 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
                        if (v104 && (*(v104 + 81) & 1) != 0)
                        {
                          if (*(v104 + 24) && swift_weakLoadStrong())
                          {

                            swift_unknownObjectRetain();

                            sub_1AF6CAF24(&v140, &v138);
                            v105 = *(v104 + 16);
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *(v104 + 16) = v105;
                            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                            {
                              v105 = sub_1AF4221C8(0, *(v105 + 2) + 1, 1, v105);
                              *(v104 + 16) = v105;
                            }

                            v108 = *(v105 + 2);
                            v107 = *(v105 + 3);
                            if (v108 >= v107 >> 1)
                            {
                              *(v104 + 16) = sub_1AF4221C8(v107 > 1, v108 + 1, 1, v105);
                            }

                            swift_unknownObjectRelease();
                            sub_1AF57955C(&v140);
                            sub_1AFCF466C(v144, sub_1AF80E170);
                            v109 = *(v104 + 16);
                            *(v109 + 16) = v108 + 1;
                            v110 = (v109 + (v108 << 6));
                            v111 = v138;
                            v112 = *v139;
                            v113 = *&v139[16];
                            *(v110 + 73) = *&v139[25];
                            v110[3] = v112;
                            v110[4] = v113;
                            v110[2] = v111;
                            *(v104 + 16) = v109;

                            v51 = v63;
                          }

                          else
                          {

                            sub_1AF57955C(&v140);
                            sub_1AFCF466C(v144, sub_1AF80E170);
                          }

                          v60 = v136;
                        }

                        else
                        {

                          sub_1AF57955C(&v140);
                          sub_1AFCF466C(v144, sub_1AF80E170);
                        }

                        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v142);
                      }

                      else
                      {
                        sub_1AFCF466C(v144, sub_1AF80E170);
                        sub_1AFCF466C(&v140, sub_1AF80E170);
                      }

                      v58 = v134;
                      goto LABEL_67;
                    }

                    goto LABEL_66;
                  }
                }
              }
            }

            swift_unownedRetainStrong();

LABEL_66:
            sub_1AFCF466C(v144, sub_1AF80E170);
            v51 = v63;
            v58 = v134;
            v60 = v136;
          }

LABEL_67:
          sub_1AF579490(&v146);
          if (v62)
          {
            v69 = [objc_opt_self() immediateMode];
            sub_1AF6C5E30(v69 ^ 1);
          }

          ++v59;
        }

        while (v59 != v58);

        v50 = v129;
      }

      else
      {
      }

      ++v50;
    }

    while (v50 != v126);
  }
}

void sub_1AFCDF55C()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v2 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v3)
    {
      v4 = 8 * v3;
      do
      {
        v5 = *v2++;
        ecs_stack_allocator_push_snapshot(*(v5 + 32));
        v4 -= 8;
      }

      while (v4);
    }
  }

  v6 = *(v1 + 224);
  *(v1 + 224) = v6 + 1;
  if (!v6)
  {
    sub_1AF65DAB0();
  }
}

void sub_1AFCDF624()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (*(v1 + 224) == 1)
  {
    sub_1AF65DCF4(1);
  }

  v2 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
    if (v3)
    {
      v4 = 8 * v3;
      do
      {
        v5 = *v2++;
        ecs_stack_allocator_pop_snapshot(*(v5 + 32));
        v4 -= 8;
      }

      while (v4);
    }
  }

  --*(v1 + 224);
}

Swift::Void __swiftcall VFXScene.invalidateGraphV1()()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  v2 = sub_1AFCDAC04(type metadata accessor for GraphScriptRunner);

  if (v2)
  {
    *(v2 + 16) = 1;
  }

  *(v1 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
}

uint64_t VFXScene.checkNoReferenceToOldECS(_:oldWorldRef:)(uint64_t a1, void *a2)
{
  v84 = a2;
  sub_1AF0D4E74();
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v94 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1AFDFC298();
  v7 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v8);
  v92 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC3VFX8VFXScene_entityManager;
  LODWORD(a1) = *(*(a1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_generationSalt);
  type metadata accessor for VerifierRemapContext();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 20) = a1;
  v100 = v11;
  *(v11 + 16) = 0;
  v12 = *(v2 + v10);
  v87 = sub_1AF4217DC(0, *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v13 = v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v97 = (v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v14 = *(v12 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v14)
  {
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v19 = *v97 + v15;
      if ((*(v19 + 6) & 0x80000000) == 0)
      {
        v20 = *(v19 + 8);
        v22 = *(v87 + 2);
        v21 = *(v87 + 3);
        if (v22 >= v21 >> 1)
        {
          v17 = sub_1AF4217DC(v21 > 1, v22 + 1, 1, v87);
        }

        else
        {
          v17 = v87;
        }

        *(v17 + 2) = v22 + 1;
        v87 = v17;
        v18 = &v17[8 * v22];
        *(v18 + 8) = i;
        *(v18 + 9) = v20;
      }

      v15 += 12;
    }
  }

  os_unfair_lock_unlock(*(v13 + 24));
  v83 = *(v87 + 2);
  if (!v83)
  {

LABEL_71:
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v76 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v78 = v76;
      swift_once();
      v76 = v78;
    }

    v112[0] = 0;
    sub_1AF0D4F18(v76, v112, 0xD000000000000011, 0x80000001AFF4E160);
  }

  v23 = 0;
  v24 = 0;
  v82 = v87 + 32;
  v88 = "t merge (component = ";
  v90 = (v7 + 32);
  v79 = "no script runtime";
  v89 = xmmword_1AFE431C0;
  v91 = v12;
  do
  {
    v86 = v24;
    v25 = &v82[8 * v24];
    v27 = *v25;
    v26 = *(v25 + 1);
    v99 = v27;
    v96 = v26;
    v28 = v27 == 0xFFFFFFFFLL && v26 == 0;
    v29 = v28;
    v98 = v29;
    if (v28 || (v27 & 0x80000000) != 0)
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
      if (v97[1] > v99 && (v96 == -1 || *(*v97 + 12 * v99 + 8) == v96))
      {
      }
    }

    v31 = *(v30 + 16);
    v85 = v30;
    if (v31)
    {
      v32 = (v30 + 32);
      v101 = v27 | (v96 << 32);
      do
      {
        v103 = v23;
        v104 = *v32;
        v33 = v104;
        v112[0] = v104;
        swift_getMetatypeMetadata();
        v112[0] = sub_1AFDFCF88();
        v112[1] = v34;
        strcpy(&v110, "ScriptRuntime");
        HIWORD(v110) = -4864;
        sub_1AF4486E4();
        v102 = sub_1AFDFDF18();

        v35 = sub_1AFDFDD58();
        v36 = *(v35 - 8);
        MEMORY[0x1EEE9AC00](v35, v37);
        v39 = &v79 - v38;
        v40 = *(&v104 + 1);
        sub_1AF67CB9C(v101, v33, &v79 - v38);
        v41 = *(v33 - 8);
        if ((*(v41 + 48))(v39, 1, v33) == 1)
        {
          (*(v36 + 8))(v39, v35);
        }

        else
        {
          v111 = v104;
          v42 = sub_1AF585714(&v110);
          (*(v41 + 32))(v42, v39, v33);
          sub_1AF0FBA54(&v110, v112);
          v44 = v113;
          v43 = v114;
          sub_1AF448018(v112, v113);
          v45 = *(*(v40 + 8) + 96);
          v46 = *(v43 + 8);
          v47 = v100;

          v45(v48, &off_1F2532030, v44, v46);

          if (*(v47 + 24) == 1)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v110 = 0;
            *(&v110 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000033, v88 | 0x8000000000000000);
            sub_1AF441150(v112, v113);
            sub_1AFDFEDD8();
            MEMORY[0x1B2718AE0](41, 0xE100000000000000);
            v49 = v110;
            v50 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v104 = v31;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            sub_1AF6EFB60();
            v51 = swift_allocObject();
            *(v51 + 16) = v89;
            *(v51 + 56) = MEMORY[0x1E69E6158];
            *(v51 + 64) = sub_1AF0D544C();
            *(v51 + 32) = v49;

            sub_1AFDFC4C8();

            v52 = v92;
            sub_1AFDFC288();
            v53 = v95[12];
            v54 = v95[16];
            v55 = v94;
            v56 = &v94[v95[20]];
            (*v90)(v94, v52, v93);
            *(v55 + v53) = v50;
            *(v55 + v54) = 0;
            *v56 = v49;

            sub_1AFDFC608();

            sub_1AFCF466C(v55, sub_1AF0D4E74);

            *(v100 + 24) = 0;
            v12 = v91;
            v31 = v104;
          }

          if ((v98 & 1) != 0 || (v99 & 0x80000000) != 0 || v97[1] <= v99 || (v62 = *v97 + 12 * v99, v96 != -1) && *(v62 + 8) != v96 || (v63 = *(*(*(v12 + 88) + 8 * *(v62 + 6) + 32) + 16), v64 = *(v63 + 128), !*(v64 + 16)) || (v65 = sub_1AF449CB8(&type metadata for Tombstone), (v66 & 1) == 0) || *(*(v63 + 24) + 16 * *(*(v64 + 56) + 8 * v65) + 32) != &type metadata for Tombstone)
          {
            sub_1AF441194(v112, &v108);
            sub_1AF4498F4(0, &qword_1ED72FFF0);
            sub_1AF4498F4(0, &qword_1EB644008);
            if (swift_dynamicCast())
            {
              sub_1AF0FBA54(v106, &v110);
              v57 = v111;
              sub_1AF441150(&v110, v111);
              (*(*(&v57 + 1) + 8))(&v108, v57, *(&v57 + 1));
              Strong = swift_unknownObjectWeakLoadStrong();
              sub_1AF4459C8(&v108);
              if (Strong)
              {
                v105 = &unk_1F25D71B0;
                v59 = swift_dynamicCastObjCProtocolConditional();
                if (v59 && (v60 = [v59 worldRef]) != 0)
                {
                  v61 = v60;
                  if (v60 == v84)
                  {
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    v108 = 0;
                    v109 = 0xE000000000000000;
                    sub_1AFDFE218();
                    MEMORY[0x1B2718AE0](0xD000000000000035, v79 | 0x8000000000000000);
                    sub_1AF441150(v112, v113);
                    sub_1AFDFEDD8();
                    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
                    v68 = v108;
                    v67 = v109;
                    v69 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    sub_1AF6EFB60();
                    v70 = swift_allocObject();
                    *(v70 + 16) = v89;
                    *(v70 + 56) = MEMORY[0x1E69E6158];
                    *(v70 + 64) = sub_1AF0D544C();
                    *(v70 + 32) = v68;
                    *(v70 + 40) = v67;

                    sub_1AFDFC4C8();

                    LODWORD(v104) = v69;
                    v71 = v92;
                    sub_1AFDFC288();
                    v81 = v95[12];
                    v80 = v95[16];
                    v72 = v68;
                    v73 = v94;
                    v74 = &v94[v95[20]];
                    (*v90)(v94, v71, v93);
                    *(v73 + v81) = v104;
                    *(v73 + v80) = 0;
                    *v74 = v72;
                    *(v74 + 1) = v67;

                    sub_1AFDFC608();

                    sub_1AFCF466C(v73, sub_1AF0D4E74);

                    swift_unknownObjectRelease();

                    v12 = v91;
                  }

                  else
                  {
                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v110);
            }

            else
            {
              v107 = 0;
              memset(v106, 0, sizeof(v106));
              sub_1AFCF466C(v106, sub_1AFCEFCC0);
            }
          }

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v112);
        }

        v23 = v102 | v103;
        ++v32;
        --v31;
      }

      while (v31);
    }

    v24 = v86 + 1;
  }

  while (v24 != v83);

  if ((v23 & 1) == 0)
  {
    goto LABEL_71;
  }
}

pthread_mutex_t *VFXScene.mergeScene(_:)(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = *&a1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];

  v5 = a1;
  v6 = sub_1AF677AE4(v4, v3, v4, v5);

  return v6;
}

uint64_t sub_1AFCE08B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = sub_1AF4217DC(0, *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v6 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v7 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v8 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5;
    do
    {
      v13 = *v7 + v9;
      if ((*(v13 + 6) & 0x80000000) == 0)
      {
        v14 = *(v13 + 8);
        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        if (v16 >= v15 >> 1)
        {
          v11 = sub_1AF4217DC(v15 > 1, v16 + 1, 1, v11);
        }

        *(v11 + 2) = v16 + 1;
        v12 = &v11[8 * v16];
        *(v12 + 8) = v10;
        *(v12 + 9) = v14;
      }

      ++v10;
      v9 += 12;
    }

    while (v8 != v10);
  }

  else
  {
    v11 = v5;
  }

  v17 = v11;
  os_unfair_lock_unlock(*(v6 + 24));

  v18 = sub_1AF6CAF5C(0, a1, a1, a2);

  v67 = v17;
  if (*(v17 + 2) != *(v18 + 16))
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v64 = v19;
      swift_once();
      v19 = v64;
    }

    v76 = 0;
    sub_1AF0D4F18(v19, &v76, 0xD000000000000032, 0x80000001AFF4E980);
  }

  v69 = [objc_allocWithZone(type metadata accessor for VFXBidirectionalRemapTable()) init];
  v20 = *(v67 + 2);
  if (!v20)
  {
LABEL_52:

    *(a3 + OBJC_IVAR____TtC3VFX8VFXScene_entityObjects) = sub_1AF440CC0(MEMORY[0x1E69E7CC0]);

    *a4 = v69;
    return result;
  }

  v21 = (v18 + 36);
  v68 = OBJC_IVAR___VFXBidirectionalRemapTable_remapTable;
  v22 = (v67 + 36);
  while (1)
  {
    v73 = v21;
    v75 = v20;
    v25 = *(v22 - 1);
    v26 = *v22;
    v72 = v22;
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25 == 0xFFFFFFFFLL;
    }

    v28 = v25 | (v26 << 32);
    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    v30 = *(v21 - 1);
    v31 = *v21;
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = v30 == 0xFFFFFFFFLL;
    }

    v33 = v30 | (v31 << 32);
    if (v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }

    v35 = *&v69[v68];
    if (v29)
    {
      v36 = v29;
    }

    else
    {
      v36 = 0xFFFFFFFFLL;
    }

    if (v34)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0xFFFFFFFFLL;
    }

    v70 = v34;
    v71 = v37;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v35 + 24);
    v39 = v76;
    *(v35 + 24) = 0x8000000000000000;
    v40 = sub_1AF449D3C(v29 & 0xFFFFFFFF00000000 | v36);
    v42 = v41;
    v43 = *(v39 + 16) + ((v41 & 1) == 0);
    if (*(v39 + 24) >= v43)
    {
      v44 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AF8489C0();
      }
    }

    else
    {
      sub_1AF833F28(v43, isUniquelyReferenced_nonNull_native);
      v44 = v36;
      v45 = sub_1AF449D3C(v29 & 0xFFFFFFFF00000000 | v36);
      if ((v42 & 1) != (v46 & 1))
      {
        break;
      }

      v40 = v45;
    }

    v47 = v76;
    if (v42)
    {
      v48 = HIDWORD(v29);
      v49 = (v76[7] + 8 * v40);
      *v49 = v71;
      v49[1] = HIDWORD(v70);
      v50 = v44;
    }

    else
    {
      v76[(v40 >> 6) + 8] |= 1 << v40;
      v51 = (v47[6] + 8 * v40);
      v50 = v44;
      *v51 = v44;
      v51[1] = HIDWORD(v29);
      v48 = HIDWORD(v29);
      v52 = (v47[7] + 8 * v40);
      *v52 = v71;
      v52[1] = HIDWORD(v70);
      ++v47[2];
    }

    *(v35 + 24) = v47;

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v76 = *(v35 + 32);
    v54 = v76;
    *(v35 + 32) = 0x8000000000000000;
    v55 = sub_1AF449D3C(v70 & 0xFFFFFFFF00000000 | v71);
    v57 = v56;
    v58 = *(v54 + 16) + ((v56 & 1) == 0);
    if (*(v54 + 24) >= v58)
    {
      if ((v53 & 1) == 0)
      {
        v62 = v55;
        sub_1AF8489C0();
        v55 = v62;
      }

      goto LABEL_50;
    }

    sub_1AF833F28(v58, v53);
    v55 = sub_1AF449D3C(v70 & 0xFFFFFFFF00000000 | v71);
    if ((v57 & 1) != (v59 & 1))
    {
      break;
    }

LABEL_50:
    v60 = v76;
    if (v57)
    {
      v61 = (v76[7] + 8 * v55);
      *v61 = v50;
      v61[1] = v48;
    }

    else
    {
      v76[(v55 >> 6) + 8] |= 1 << v55;
      v23 = (v60[6] + 8 * v55);
      *v23 = v71;
      v23[1] = HIDWORD(v70);
      v24 = (v60[7] + 8 * v55);
      *v24 = v50;
      v24[1] = v48;
      ++v60[2];
    }

    v21 = v73 + 2;
    v22 = v72 + 2;
    *(v35 + 32) = v60;

    v20 = v75 - 1;
    if (v75 == 1)
    {
      goto LABEL_52;
    }
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFCE0DEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = sub_1AF4217DC(0, *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) & ~(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount) >> 63), 0, MEMORY[0x1E69E7CC0]);
  v5 = a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock;
  os_unfair_lock_lock(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24));
  v6 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v7 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
  if (v7)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v11 = *v6 + v8;
      if ((*(v11 + 6) & 0x80000000) == 0)
      {
        v12 = *(v11 + 8);
        v14 = *(v4 + 2);
        v13 = *(v4 + 3);
        if (v14 >= v13 >> 1)
        {
          v4 = sub_1AF4217DC(v13 > 1, v14 + 1, 1, v4);
        }

        *(v4 + 2) = v14 + 1;
        v10 = &v4[8 * v14];
        *(v10 + 8) = i;
        *(v10 + 9) = v12;
      }

      v8 += 12;
    }
  }

  os_unfair_lock_unlock(*(v5 + 24));
  sub_1AF6C6C58(v4, a2, 0, 0x100000000uLL, 0);
  v16 = v15;

  *a3 = v16;
  return result;
}

void VFXScene.prepare(renderer:)(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v4 = v1;
  swift_unknownObjectRetain();
  sub_1AF6689CC(v3, v4, a1);
}

void VFXScene.updateAtTime(_:deltaTime:frameIndex:renderer:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v10 = v4;
  swift_unknownObjectRetain();
  sub_1AF668C28(v9, v10, a1, a2, a3, a4);
}

void VFXScene.prepareDrawCalls(frameIndex:renderer:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v6 = v2;
  swift_unknownObjectRetain();
  sub_1AF669210(v5, v6, a1, a2);
}

double sub_1AFCE1308()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AFCC7184(1, 1, v1);

  result = *v1;
  xmmword_1EB643FC0 = v1[0];
  *algn_1EB643FD0 = v1[1];
  qword_1EB643FE0 = v2;
  return result;
}

void VFXScene.enumerateDrawCall(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v7 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_transientDrawCall);

  sub_1AF661130(v6, v5, v7, a1, a2);
}

Swift::Int __swiftcall VFXScene.drawCallCount()()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (qword_1EB6373D0 != -1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
    swift_once();
    v1 = v4;
  }

  v7[0] = xmmword_1EB643FC0;
  v7[1] = *algn_1EB643FD0;
  v8 = qword_1EB643FE0;
  sub_1AF6B06C0(v1, v7, 0x200000000, v5);
  if (!*&v5[0])
  {
    return 0;
  }

  v2 = v6;
  sub_1AFCEFD2C(v5, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  return v2;
}

Swift::Int __swiftcall VFXScene.drawCallCount(emitterID:)(Swift::Int64 emitterID)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);

  v3 = sub_1AF6D6004(&type metadata for DrawCallPool, &off_1F25608D0, v2, sub_1AFCEFDA8);

  return v3;
}

uint64_t sub_1AFCE17C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 8);
  if (*(v4 + 16))
  {
    v5 = a2;
    if (!a2)
    {
      v5 = 0xFFFFFFFFLL;
    }

    v6 = sub_1AF449D3C(v5 | a2 & 0xFFFFFFFF00000000);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v6);
      if (v8 >> 62)
      {
        result = sub_1AFDFE108();
      }

      else
      {
        result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

Swift::Void __swiftcall VFXScene.recycleDrawCalls()()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (qword_1ED7259D0 != -1)
  {
    swift_once();
  }

  v26[0] = xmmword_1ED7259E0;
  v26[1] = *algn_1ED7259F0;
  v27 = qword_1ED725A00;
  sub_1AF6B06C0(v1, v26, 0x200000000, &v5);
  if (v5)
  {
    v12 = v5;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v14 = v7;
    v21 = v7;
    v20 = v6;
    v24 = v10;
    v23 = v9;
    v22 = v8;
    v18 = v11;
    v13 = v6;
    v25 = v11;
    v19 = v5;
    MEMORY[0x1EEE9AC00](v2, v3);
    v4 = *(v1 + 184);

    sub_1AF6D2ADC(&type metadata for DrawCallPool, &off_1F25608D0, v4, sub_1AFB49E0C);

    sub_1AF6B8EAC(0);
    sub_1AFCEFD2C(&v5, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }
}

uint64_t VFXScene.anyDrawNeedsLinearDepth.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + 184);

  v2 = sub_1AF6D62BC(&type metadata for DrawCallPool, &off_1F25608D0, v1);

  return v2 & 1;
}

uint64_t VFXScene.triggerRender(rendererIdentifier:with:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (v4)
  {
    v7 = result;

    os_unfair_recursive_lock_lock_with_options();
    if (*(v4 + 120) == 1)
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = a2;
      *(v8 + 24) = a3;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *(v4 + 40);
      *(v4 + 40) = 0x8000000000000000;
      sub_1AF855560(sub_1AF6FC894, v8, v7, isUniquelyReferenced_nonNull_native);
      *(v4 + 40) = v10;
      os_unfair_recursive_lock_unlock();
      sub_1AF6CF09C();
    }
  }

  return result;
}

double VFXScene.time.setter(float a1)
{
  result = a1;
  *(*(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48) = result;
  return result;
}

uint64_t VFXScene.paused.setter(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  *(v2 + 82) = result;
  if (result)
  {
    *(v2 + 83) = 0;
  }

  return result;
}

uint64_t VFXScene.encodeAuthoring(encoder:renderer:colorFormat:depthStencilFormat:sampleCount:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a3;
  v13 = 0u;
  v14 = 0u;
  if (a4 == 260)
  {
    v6 = 260;
  }

  else
  {
    v6 = 0;
  }

  v7 = a5;
  v15 = 0uLL;
  v16 = 0;
  v17 = a4;
  if ((a5 & 0xFE) == 0)
  {
    v7 = 1;
  }

  v18 = v6;
  v19 = v7;
  type metadata accessor for Renderer();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;

    sub_1AFB35990(v10, v9, 4, a1, &v12);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

Swift::Int64 __swiftcall VFXScene.newObject()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v2 = *v1;
  ecs_stack_allocator_push_snapshot(*(*v1 + 32));
  v3 = ecs_stack_allocator_allocate(*(v2 + 32), 32, 8);
  *v3 = &type metadata for WorldTransform;
  v3[1] = &off_1F2529FC0;
  v3[2] = &type metadata for Beamed;
  v3[3] = &off_1F2529FA0;
  v4 = sub_1AF63708C(v3, 2, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v2);
  ecs_stack_allocator_pop_snapshot(*(v2 + 32));
  if (v4 == 0xFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

Swift::Void __swiftcall VFXScene.destroyObject(_:)(Swift::Int64 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v3 = HIDWORD(a1);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = -1;
  }

  if ((v3 || v4 != -1) && (v4 & 0x80000000) == 0 && *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v4)
  {
    v5 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
    if (v3 == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = *(v5 + 2);
      v7 = *(*(v2 + 144) + 8 * *v5 + 32);
      if (*(v7 + 232) <= v6 && *(v7 + 240) > v6)
      {
        v9 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v10 = *(v7 + 344);

        os_unfair_lock_lock(v10);
        ecs_stack_allocator_push_snapshot(*(v9 + 32));

        sub_1AF65CFA0(v9, v7, v6);

        ecs_stack_allocator_pop_snapshot(*(v9 + 32));
        os_unfair_lock_unlock(*(v7 + 344));
      }
    }
  }
}

Swift::Void __swiftcall VFXScene.updateWorldTransform(_:of:)(simd_float4x4 *_, Swift::Int64 of)
{
  v7 = _;
  if (!_)
  {
    v7 = 0xFFFFFFFFLL;
  }

  sub_1AF680204(v7 | _ & 0xFFFFFFFF00000000, *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager), v3, v4, v5, v6);
}

uint64_t sub_1AFCE2828(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIDWORD(a3);
  v4 = *(a2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (result)
  {
    if (a3 != 0xFFFFFFFF && (a3 & 0x80000000) == 0 && a3 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
      if (v3 == 0xFFFFFFFF || v5[2] == HIDWORD(a3))
      {
        v6 = *(v5 + 2);
        v7 = *(*(v4 + 144) + 8 * *v5 + 32);
        if (*(v7 + 232) <= v6 && *(v7 + 240) > v6)
        {
          v9 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v10 = *(v7 + 344);

          os_unfair_lock_lock(v10);
          v11 = (v9 + 32);
          ecs_stack_allocator_push_snapshot(*(v9 + 32));

          sub_1AF682880(v9, v7, v6, &type metadata for Selected, &off_1F256E490, v4);
LABEL_23:

          ecs_stack_allocator_pop_snapshot(*v11);
          os_unfair_lock_unlock(*(v7 + 344));
        }
      }
    }
  }

  else if (a3 != 0xFFFFFFFF && (a3 & 0x80000000) == 0 && a3 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v12 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
    if (v3 == 0xFFFFFFFF || v12[2] == HIDWORD(a3))
    {
      v13 = *(v12 + 2);
      v7 = *(*(v4 + 144) + 8 * *v12 + 32);
      if (*(v7 + 232) <= v13 && *(v7 + 240) > v13)
      {
        v15 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v16 = *(v7 + 344);

        os_unfair_lock_lock(v16);
        v11 = (v15 + 32);
        ecs_stack_allocator_push_snapshot(*(v15 + 32));

        sub_1AF68295C(v15, v7, v13, &type metadata for Selected, &off_1F256E490, 0);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t VFXScene.updateForceField(_:of:)(uint64_t result, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = HIDWORD(a2);
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v13[2] = result;
  if ((v4 || v5 != -1) && (v5 & 0x80000000) == 0 && *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v5)
  {
    v6 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
    if (v4 == 0xFFFFFFFF || v6[2] == HIDWORD(a2))
    {
      v7 = *(v6 + 2);
      v8 = *(*(v3 + 144) + 8 * *v6 + 32);
      if (*(v8 + 232) <= v7 && *(v8 + 240) > v7)
      {
        v10 = **(v3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v11 = *(v8 + 344);

        os_unfair_lock_lock(v11);
        ecs_stack_allocator_push_snapshot(*(v10 + 32));

        sub_1AFCC7388(v10, v8, v7, v3, a2 & 0xFFFFFFFF00000000 | v5, sub_1AFCEFDC0, v13);

        ecs_stack_allocator_pop_snapshot(*(v10 + 32));
        os_unfair_lock_unlock(*(v8 + 344));
      }
    }
  }

  return result;
}

uint64_t sub_1AFCE2E68@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___VFXBidirectionalRemapTable_remapTable);
  a1[3] = type metadata accessor for BidirectionalRemapTable();
  *a1 = v3;
}

uint64_t sub_1AFCE2EB8(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___VFXBidirectionalRemapTable_remapTable);
  v4 = *(v3 + 16);

  [v4 lock];
  v5 = *(v3 + 24);
  if (!*(v5 + 16))
  {
    goto LABEL_10;
  }

  v6 = a1;
  if (!a1)
  {
    v6 = 0xFFFFFFFFLL;
  }

  v7 = sub_1AF449D3C(v6 | a1 & 0xFFFFFFFF00000000);
  if ((v8 & 1) != 0 && ((v9 = (*(v5 + 56) + 8 * v7), v10 = *v9, v11 = v9[1], v10 == -1) ? (v12 = v11 == 0) : (v12 = 0), !v12))
  {
    v13 = v10 | (v11 << 32);
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  [*(v3 + 16) unlock];

  return v13;
}

uint64_t sub_1AFCE2FB4(uint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFF00000000;
  v3 = a2 & 0xFFFFFFFF00000000;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  sub_1AF6C8E08(v4 | v2, v5 | v3);
}

id VFXBidirectionalRemapTable.init()()
{
  v1 = OBJC_IVAR___VFXBidirectionalRemapTable_remapTable;
  type metadata accessor for BidirectionalRemapTable();
  v2 = swift_allocObject();
  v2[2] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v3 = MEMORY[0x1E69E7CC0];
  v2[3] = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  v2[4] = sub_1AF42B4D0(v3);
  *&v0[v1] = v2;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VFXBidirectionalRemapTable();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t VFXScene.sourceReplicationDelegate.getter()
{
  if (*(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

uint64_t VFXScene.sourceReplicationDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (a1)
  {
    swift_getObjectType();
    a1 = swift_conformsToProtocol2();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = 0;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v3)
  {
    *(v3 + 56) = a1;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

uint64_t VFXScene.destinationReplicationDelegate.getter()
{
  if (*(*(v0 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager) + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

uint64_t VFXScene.destinationReplicationDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  if (a1)
  {
    swift_getObjectType();
    a1 = swift_conformsToProtocol2();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = 0;
    }
  }

  v3 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v3)
  {
    *(v3 + 72) = a1;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall VFXScene.startRuntimeThread()()
{
  v1 = v0;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v2 = *&v0[OBJC_IVAR____TtC3VFX8VFXScene_entityManager];
  v3 = *&v0[OBJC_IVAR____TtC3VFX8VFXScene_loadOptions];
  v4 = qword_1ED73B8A0;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  if (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread))
  {
  }

  else
  {
    v6 = *(v3 + OBJC_IVAR___VFXSceneLoadOptions_asyncRuntimeLock);
    type metadata accessor for RuntimeThread();
    swift_allocObject();

    v8 = sub_1AF6D1E38(v7, v6, v4);

    *(v2 + v5) = v8;
  }

  if (*(v3 + OBJC_IVAR___VFXSceneLoadOptions_isVFX2) == 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = v1;
    sub_1AF66D948(sub_1AFCF1B7C, v9);
  }
}

void sub_1AFCE3830()
{
  v0 = objc_opt_self();
  [v0 setCurrentThreadImmediateMode_];
  Strong = swift_unknownObjectWeakLoadStrong();
  [v0 setImmediateModeRestrictedContext_];
}

uint64_t sub_1AFCE3994()
{
  v1 = v0;
  type metadata accessor for RemapContext();
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69E7CC0];
  sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42B590(v3);

  *(inited + 24) = MEMORY[0x1E69E7CC8];
  *(inited + 32) = v4;
  *(inited + 16) = 0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v6 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v6;
        swift_once();
        v6 = v29;
      }

      v30 = 0;
      sub_1AF0D4F18(v6, &v30, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  sub_1AF65B02C(*(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity), inited);
  v7 = 0;
  v8 = *(inited + 24);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v13 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_16:
    v15 = (v7 << 9) | (8 * __clz(__rbit64(v11)));
    v16 = (*(v8 + 48) + v15);
    v17 = v16[1];
    v18 = *v16;
    v19 = (*(v8 + 56) + v15);
    v21 = *v19;
    v20 = v19[1];
    v22 = v18 == -1 && v17 == 0;
    if (v22 || (v18 & 0x80000000) == 0 && v12[1] > v18 && ((v23 = *(*v12 + 12 * v18 + 8), v17 != -1) ? (v24 = v23 == v17) : (v24 = 1), v24))
    {
      v11 &= v11 - 1;
      if (v21 == -1 && v20 == 0)
      {
        continue;
      }

      if ((v21 & 0x80000000) == 0 && v12[1] > v21)
      {
        v26 = *(*v12 + 12 * v21 + 8);
        if (v20 == -1 || v26 == v20)
        {
          continue;
        }
      }
    }

    swift_setDeallocating();

    return 0;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (v7 + 1 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v7++ + 72);
    if (v11)
    {
      v7 = v14;
      goto LABEL_16;
    }
  }

  swift_setDeallocating();

  return 1;
}

uint64_t sub_1AFCE3CC0(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v5 = *(v2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v6 = *(v2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5 == 0xFFFFFFFFLL;
  }

  v8 = v5 | (v6 << 32);
  if (v7)
  {
    v8 = 0;
  }

  v9 = (a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v10 = *(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v11 = *(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0xFFFFFFFFLL;
  }

  v13 = v10 | (v11 << 32);
  if (v12)
  {
    v13 = 0;
  }

  v213 = OBJC_IVAR___VFXBidirectionalRemapTable_remapTable;
  v14 = v8 & 0xFFFFFFFF00000000;
  v15 = v13 & 0xFFFFFFFF00000000;
  if (v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  sub_1AF6C8E08(v16 | v14, v17 | v15);

  v18 = *v4;
  v19 = v4[1];
  if (!swift_weakLoadStrong())
  {
    if (*(v2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v20 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v195 = v20;
        swift_once();
        v20 = v195;
      }

      *&v236 = 0;
      sub_1AF0D4F18(v20, &v236, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  if (v18 == -1 && v19 == 0)
  {
    v242 = 0;
    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
  }

  else
  {

    sub_1AF3CA1CC(v18 | (v19 << 32), &v236);
  }

  v229 = v236;
  v230 = v237;
  v233 = v240;
  v234 = v241;
  v235 = v242;
  v231 = v238;
  v232 = v239;
  v23 = v236;
  if (v236)
  {
    v201 = *(&v229 + 1);
    v202 = v230;
    v24 = *v9;
    v25 = v9[1];
    if (!swift_weakLoadStrong())
    {
      if (*(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v26 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v196 = v26;
          swift_once();
          v26 = v196;
        }

        *&v215 = 0;
        sub_1AF0D4F18(v26, &v215, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    if (v24 != -1 || v25)
    {

      sub_1AF3CA1CC(v24 | (v25 << 32), &v222);
    }

    else
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v223 = 0u;
      v222 = 0u;
    }

    v215 = v222;
    v216 = v223;
    v219 = v226;
    v220 = v227;
    v221 = v228;
    v217 = v224;
    v218 = v225;
    v27 = v222;
    if (v222)
    {
      v199 = *(&v215 + 1);
      v200 = v216;
      v28 = *(v23 + 16);

      v198 = v28;
      if (v28)
      {
        v29 = 0;
        v30 = (v23 + 36);
        v31 = (v27 + 36);
        v197 = v27;
        do
        {
          if (v29 == *(v27 + 16))
          {
            break;
          }

          v35 = *(v30 - 1);
          v34 = *v30;
          v36 = *(v31 - 1);
          v37 = *v31;
          if (v35 == 0xFFFFFFFFLL && v34 == 0)
          {
            v43 = 0;
            if (v37)
            {
              v44 = 0;
            }

            else
            {
              v44 = v36 == -1;
            }

            if (v44)
            {
              v42 = 0;
            }

            else
            {
              v42 = v36 | (v37 << 32);
            }

            v41 = *(a1 + v213);
          }

          else
          {
            v39 = v35 | (v34 << 32);
            if (v36 == -1 && v37 == 0)
            {
              v42 = 0;
              v41 = *(a1 + v213);
              if (v39)
              {
LABEL_59:
                v43 = *v30;
                goto LABEL_70;
              }
            }

            else
            {
              v41 = *(a1 + v213);
              v42 = v36 | (v37 << 32);
              if (v39)
              {
                goto LABEL_59;
              }
            }

            v43 = 0;
          }

          v35 = 0xFFFFFFFFLL;
LABEL_70:

          if (v42)
          {
            v45 = v42;
          }

          else
          {
            v45 = 0xFFFFFFFFLL;
          }

          v204 = v45;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = *(v41 + 24);
          *(v41 + 24) = 0x8000000000000000;
          v205 = v43;
          v209 = v35;
          v48 = v35 | (v43 << 32);
          v49 = sub_1AF449D3C(v48);
          v51 = v50;
          v52 = v47[2] + ((v50 & 1) == 0);
          if (v47[3] >= v52)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AF8489C0();
            }
          }

          else
          {
            sub_1AF833F28(v52, isUniquelyReferenced_nonNull_native);
            v53 = sub_1AF449D3C(v48);
            if ((v51 & 1) != (v54 & 1))
            {
              goto LABEL_225;
            }

            v49 = v53;
          }

          v203 = v30;
          if (v51)
          {
            v55 = (v47[7] + 8 * v49);
            v56 = v204;
            *v55 = v204;
            v55[1] = HIDWORD(v42);
          }

          else
          {
            v47[(v49 >> 6) + 8] |= 1 << v49;
            v57 = (v47[6] + 8 * v49);
            *v57 = v209;
            v56 = v204;
            v57[1] = v205;
            v58 = (v47[7] + 8 * v49);
            *v58 = v204;
            v58[1] = HIDWORD(v42);
            ++v47[2];
          }

          *(v41 + 24) = v47;

          v59 = swift_isUniquelyReferenced_nonNull_native();
          v60 = *(v41 + 32);
          *(v41 + 32) = 0x8000000000000000;
          v61 = sub_1AF449D3C(v42 & 0xFFFFFFFF00000000 | v56);
          v63 = v62;
          v64 = v60[2] + ((v62 & 1) == 0);
          if (v60[3] >= v64)
          {
            if ((v59 & 1) == 0)
            {
              v67 = v61;
              sub_1AF8489C0();
              v61 = v67;
            }
          }

          else
          {
            sub_1AF833F28(v64, v59);
            v61 = sub_1AF449D3C(v42 & 0xFFFFFFFF00000000 | v56);
            if ((v63 & 1) != (v65 & 1))
            {
LABEL_225:
              result = sub_1AFDFF1A8();
              __break(1u);
              return result;
            }
          }

          v27 = v197;
          if (v63)
          {
            v66 = (v60[7] + 8 * v61);
            *v66 = v209;
            v66[1] = v205;
          }

          else
          {
            v60[(v61 >> 6) + 8] |= 1 << v61;
            v32 = (v60[6] + 8 * v61);
            *v32 = v56;
            v32[1] = HIDWORD(v42);
            v33 = (v60[7] + 8 * v61);
            *v33 = v209;
            v33[1] = v205;
            ++v60[2];
          }

          v30 = v203 + 2;
          ++v29;
          *(v41 + 32) = v60;

          v31 += 2;
        }

        while (v198 != v29);
      }

      v68 = *(v201 + 16);

      v69 = v199;

      v206 = v68;
      if (v68)
      {
        v70 = 0;
        v71 = 0;
        do
        {
          if (v71 == *(v69 + 16))
          {
            break;
          }

          v75 = *(v201 + v70 + 32);
          v74 = *(v201 + v70 + 36);
          v76 = *(v69 + v70 + 32);
          v77 = *(v69 + v70 + 36);
          if (v75 == 0xFFFFFFFFLL && v74 == 0)
          {
            v83 = 0;
            if (v77)
            {
              v84 = 0;
            }

            else
            {
              v84 = v76 == -1;
            }

            if (v84)
            {
              v82 = 0;
            }

            else
            {
              v82 = v76 | (v77 << 32);
            }

            v81 = *(a1 + v213);
          }

          else
          {
            v79 = v75 | (v74 << 32);
            if (v76 == -1 && v77 == 0)
            {
              v82 = 0;
              v81 = *(a1 + v213);
              if (v79)
              {
LABEL_102:
                v83 = *(v201 + v70 + 36);
                goto LABEL_113;
              }
            }

            else
            {
              v81 = *(a1 + v213);
              v82 = v76 | (v77 << 32);
              if (v79)
              {
                goto LABEL_102;
              }
            }

            v83 = 0;
          }

          v75 = 0xFFFFFFFFLL;
LABEL_113:

          if (v82)
          {
            v85 = v82;
          }

          else
          {
            v85 = 0xFFFFFFFFLL;
          }

          v86 = swift_isUniquelyReferenced_nonNull_native();
          v87 = *(v81 + 24);
          *(v81 + 24) = 0x8000000000000000;
          v210 = v83;
          v88 = v75 | (v83 << 32);
          v89 = sub_1AF449D3C(v88);
          v91 = v90;
          v92 = v87[2] + ((v90 & 1) == 0);
          if (v87[3] >= v92)
          {
            if ((v86 & 1) == 0)
            {
              v108 = v89;
              sub_1AF8489C0();
              v89 = v108;
            }
          }

          else
          {
            sub_1AF833F28(v92, v86);
            v89 = sub_1AF449D3C(v88);
            if ((v91 & 1) != (v93 & 1))
            {
              goto LABEL_225;
            }
          }

          v94 = HIDWORD(v82);
          if (v91)
          {
            v95 = (v87[7] + 8 * v89);
            *v95 = v85;
            v95[1] = HIDWORD(v82);
          }

          else
          {
            v87[(v89 >> 6) + 8] |= 1 << v89;
            v96 = (v87[6] + 8 * v89);
            *v96 = v75;
            v96[1] = v210;
            v97 = (v87[7] + 8 * v89);
            *v97 = v85;
            v97[1] = HIDWORD(v82);
            ++v87[2];
          }

          *(v81 + 24) = v87;

          v98 = swift_isUniquelyReferenced_nonNull_native();
          v99 = *(v81 + 32);
          *(v81 + 32) = 0x8000000000000000;
          v100 = v82 & 0xFFFFFFFF00000000;
          v101 = sub_1AF449D3C(v100 | v85);
          v103 = v102;
          v104 = v99[2] + ((v102 & 1) == 0);
          if (v99[3] < v104)
          {
            sub_1AF833F28(v104, v98);
            v101 = sub_1AF449D3C(v100 | v85);
            if ((v103 & 1) != (v105 & 1))
            {
              goto LABEL_225;
            }

LABEL_128:
            v106 = v99;
            if (v103)
            {
              goto LABEL_129;
            }

            goto LABEL_90;
          }

          if (v98)
          {
            goto LABEL_128;
          }

          v109 = v101;
          sub_1AF8489C0();
          v101 = v109;
          v106 = v99;
          if (v103)
          {
LABEL_129:
            v107 = (v106[7] + 8 * v101);
            *v107 = v75;
            v107[1] = v210;
            goto LABEL_91;
          }

LABEL_90:
          v106[(v101 >> 6) + 8] |= 1 << v101;
          v72 = (v106[6] + 8 * v101);
          *v72 = v85;
          v72[1] = v94;
          v73 = (v106[7] + 8 * v101);
          *v73 = v75;
          v73[1] = v210;
          ++v106[2];
LABEL_91:
          v69 = v199;
          ++v71;
          *(v81 + 32) = v106;

          v70 += 8;
        }

        while (v206 != v71);
      }

      v110 = v200;
      v111 = *(v202 + 16);

      v207 = v111;
      if (v111)
      {
        v112 = 0;
        v113 = 0;
        do
        {
          if (v113 == *(v110 + 16))
          {
            break;
          }

          v117 = *(v202 + v112 + 32);
          v116 = *(v202 + v112 + 36);
          v118 = *(v110 + v112 + 32);
          v119 = *(v110 + v112 + 36);
          if (v117 == 0xFFFFFFFFLL && v116 == 0)
          {
            v125 = 0;
            if (v119)
            {
              v126 = 0;
            }

            else
            {
              v126 = v118 == -1;
            }

            if (v126)
            {
              v124 = 0;
            }

            else
            {
              v124 = v118 | (v119 << 32);
            }

            v123 = *(a1 + v213);
          }

          else
          {
            v121 = v117 | (v116 << 32);
            if (v118 == -1 && v119 == 0)
            {
              v124 = 0;
              v123 = *(a1 + v213);
              if (v121)
              {
LABEL_146:
                v125 = *(v202 + v112 + 36);
                goto LABEL_157;
              }
            }

            else
            {
              v123 = *(a1 + v213);
              v124 = v118 | (v119 << 32);
              if (v121)
              {
                goto LABEL_146;
              }
            }

            v125 = 0;
          }

          v117 = 0xFFFFFFFFLL;
LABEL_157:

          if (v124)
          {
            v127 = v124;
          }

          else
          {
            v127 = 0xFFFFFFFFLL;
          }

          v128 = swift_isUniquelyReferenced_nonNull_native();
          v129 = *(v123 + 24);
          *(v123 + 24) = 0x8000000000000000;
          v211 = v125;
          v130 = v117 | (v125 << 32);
          v131 = sub_1AF449D3C(v130);
          v133 = v132;
          v134 = v129[2] + ((v132 & 1) == 0);
          if (v129[3] >= v134)
          {
            if ((v128 & 1) == 0)
            {
              v150 = v131;
              sub_1AF8489C0();
              v131 = v150;
            }
          }

          else
          {
            sub_1AF833F28(v134, v128);
            v131 = sub_1AF449D3C(v130);
            if ((v133 & 1) != (v135 & 1))
            {
              goto LABEL_225;
            }
          }

          v136 = HIDWORD(v124);
          if (v133)
          {
            v137 = (v129[7] + 8 * v131);
            *v137 = v127;
            v137[1] = HIDWORD(v124);
          }

          else
          {
            v129[(v131 >> 6) + 8] |= 1 << v131;
            v138 = (v129[6] + 8 * v131);
            *v138 = v117;
            v138[1] = v211;
            v139 = (v129[7] + 8 * v131);
            *v139 = v127;
            v139[1] = HIDWORD(v124);
            ++v129[2];
          }

          *(v123 + 24) = v129;

          v140 = swift_isUniquelyReferenced_nonNull_native();
          v141 = *(v123 + 32);
          *(v123 + 32) = 0x8000000000000000;
          v142 = v124 & 0xFFFFFFFF00000000;
          v143 = sub_1AF449D3C(v142 | v127);
          v145 = v144;
          v146 = v141[2] + ((v144 & 1) == 0);
          if (v141[3] < v146)
          {
            sub_1AF833F28(v146, v140);
            v143 = sub_1AF449D3C(v142 | v127);
            if ((v145 & 1) != (v147 & 1))
            {
              goto LABEL_225;
            }

LABEL_172:
            v148 = v141;
            if (v145)
            {
              goto LABEL_173;
            }

            goto LABEL_134;
          }

          if (v140)
          {
            goto LABEL_172;
          }

          v151 = v143;
          sub_1AF8489C0();
          v143 = v151;
          v148 = v141;
          if (v145)
          {
LABEL_173:
            v149 = (v148[7] + 8 * v143);
            *v149 = v117;
            v149[1] = v211;
            goto LABEL_135;
          }

LABEL_134:
          v148[(v143 >> 6) + 8] |= 1 << v143;
          v114 = (v148[6] + 8 * v143);
          *v114 = v127;
          v114[1] = v136;
          v115 = (v148[7] + 8 * v143);
          *v115 = v117;
          v115[1] = v211;
          ++v148[2];
LABEL_135:
          v110 = v200;
          ++v113;
          *(v123 + 32) = v148;

          v112 += 8;
        }

        while (v207 != v113);
      }

      v152 = *(*(&v202 + 1) + 16);

      v208 = v152;
      if (v152)
      {
        v153 = 0;
        v154 = 0;
        do
        {
          if (v154 == *(*(&v200 + 1) + 16))
          {
            break;
          }

          v158 = *(*(&v202 + 1) + v153 + 32);
          v157 = *(*(&v202 + 1) + v153 + 36);
          v159 = *(*(&v200 + 1) + v153 + 32);
          v160 = *(*(&v200 + 1) + v153 + 36);
          if (v158 == 0xFFFFFFFFLL && v157 == 0)
          {
            v166 = 0;
            if (v160)
            {
              v167 = 0;
            }

            else
            {
              v167 = v159 == -1;
            }

            if (v167)
            {
              v165 = 0;
            }

            else
            {
              v165 = v159 | (v160 << 32);
            }

            v164 = *(a1 + v213);
          }

          else
          {
            v162 = v158 | (v157 << 32);
            if (v159 == -1 && v160 == 0)
            {
              v165 = 0;
              v164 = *(a1 + v213);
              if (v162)
              {
LABEL_190:
                v166 = *(*(&v202 + 1) + v153 + 36);
                goto LABEL_201;
              }
            }

            else
            {
              v164 = *(a1 + v213);
              v165 = v159 | (v160 << 32);
              if (v162)
              {
                goto LABEL_190;
              }
            }

            v166 = 0;
          }

          v158 = 0xFFFFFFFFLL;
LABEL_201:

          if (v165)
          {
            v168 = v165;
          }

          else
          {
            v168 = 0xFFFFFFFFLL;
          }

          v169 = swift_isUniquelyReferenced_nonNull_native();
          v170 = *(v164 + 24);
          *(v164 + 24) = 0x8000000000000000;
          v212 = v166;
          v171 = v158 | (v166 << 32);
          v172 = sub_1AF449D3C(v171);
          v174 = v173;
          v175 = v170[2] + ((v173 & 1) == 0);
          if (v170[3] >= v175)
          {
            if ((v169 & 1) == 0)
            {
              v191 = v172;
              sub_1AF8489C0();
              v172 = v191;
            }
          }

          else
          {
            sub_1AF833F28(v175, v169);
            v172 = sub_1AF449D3C(v171);
            if ((v174 & 1) != (v176 & 1))
            {
              goto LABEL_225;
            }
          }

          v177 = HIDWORD(v165);
          if (v174)
          {
            v178 = (v170[7] + 8 * v172);
            *v178 = v168;
            v178[1] = HIDWORD(v165);
          }

          else
          {
            v170[(v172 >> 6) + 8] |= 1 << v172;
            v179 = (v170[6] + 8 * v172);
            *v179 = v158;
            v179[1] = v212;
            v180 = (v170[7] + 8 * v172);
            *v180 = v168;
            v180[1] = HIDWORD(v165);
            ++v170[2];
          }

          *(v164 + 24) = v170;

          v181 = swift_isUniquelyReferenced_nonNull_native();
          v182 = *(v164 + 32);
          *(v164 + 32) = 0x8000000000000000;
          v183 = v165 & 0xFFFFFFFF00000000;
          v184 = sub_1AF449D3C(v183 | v168);
          v186 = v185;
          v187 = v182[2] + ((v185 & 1) == 0);
          if (v182[3] < v187)
          {
            sub_1AF833F28(v187, v181);
            v184 = sub_1AF449D3C(v183 | v168);
            if ((v186 & 1) != (v188 & 1))
            {
              goto LABEL_225;
            }

LABEL_216:
            v189 = v182;
            if (v186)
            {
              goto LABEL_217;
            }

            goto LABEL_178;
          }

          if (v181)
          {
            goto LABEL_216;
          }

          v192 = v184;
          sub_1AF8489C0();
          v184 = v192;
          v189 = v182;
          if (v186)
          {
LABEL_217:
            v190 = (v189[7] + 8 * v184);
            *v190 = v158;
            v190[1] = v212;
            goto LABEL_179;
          }

LABEL_178:
          v189[(v184 >> 6) + 8] |= 1 << v184;
          v155 = (v189[6] + 8 * v184);
          *v155 = v168;
          v155[1] = v177;
          v156 = (v189[7] + 8 * v184);
          *v156 = v158;
          v156[1] = v212;
          ++v189[2];
LABEL_179:
          ++v154;
          *(v164 + 32) = v189;

          v153 += 8;
        }

        while (v208 != v154);
      }

      v194 = MEMORY[0x1E69E6720];
      sub_1AFCEFD2C(&v215, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);
      v193 = v194;
    }

    else
    {
      v193 = MEMORY[0x1E69E6720];
    }

    return sub_1AFCEFD2C(&v229, &unk_1EB634140, &type metadata for EmitterDescription, v193, sub_1AFCF4720);
  }

  return result;
}

Swift::Void __swiftcall VFXEntityObject.removeFromScene()()
{
  if (*&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity] != -1 || *&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4] != 0)
  {
    if (swift_weakLoadStrong())
    {

      if ((v0[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] & 1) == 0)
      {
        v0[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 1;
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          Strong = *&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
          if (Strong)
          {
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v3 = v0;
            v4 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v5 = v4;
              swift_once();
              v4 = v5;
            }

            v6 = 0;
            sub_1AF0D4F18(v4, &v6, 0xD000000000000021, 0x80000001AFF2E730);
            type metadata accessor for EntityManager();
            swift_allocObject();
            Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
            v0 = v3;
          }
        }

        sub_1AF663684(Strong, v0, 1);
      }
    }
  }
}

uint64_t VFXEntityObject.isEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v3 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v5 = v3;
        swift_once();
        v3 = v5;
      }

      v6 = 0;
      sub_1AF0D4F18(v3, &v6, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  return sub_1AF6574A4(v1, Strong);
}

uint64_t VFXEntityObject.isEnabled.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v6 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v12 = v6;
        swift_once();
        v6 = v12;
      }

      v13[0] = 0;
      sub_1AF0D4F18(v6, v13, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  if (v3 != -1 || v4 != 0)
  {
    v9 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v9)
    {
      v10 = *(v9 + 80);
      swift_unknownObjectWeakLoadStrong();
      v9 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    v14 = 0;
    swift_unknownObjectUnownedInit();
    v13[0] = Strong;
    v14 = v9;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v15 = v10;
    sub_1AF6C1830(v3 | (v4 << 32), a1 & 1);
    sub_1AF579490(v13);
    if (v10)
    {
      v11 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v11 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AFCE5530()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v2 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v83 = v2;
        swift_once();
        v2 = v83;
      }

      *v127 = 0;
      sub_1AF0D4F18(v2, v127, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v3 = qword_1ED72D720;

  if (v3 != -1)
  {
    swift_once();
  }

  v147 = qword_1ED73B840;
  v148 = 0;
  v149 = 2;
  v150 = 0;
  v151 = 2;
  v152 = 0;
  sub_1AF703D7C(3, v119);
  v143[0] = v119[0];
  v143[1] = v119[1];
  v144 = v120;
  sub_1AF6B06C0(Strong, v143, 0x200000000, v121);
  v115 = *&v121[32];
  v116 = v122;
  v117 = v123;
  v118 = v124;
  v113 = *v121;
  v114 = *&v121[16];
  sub_1AFCEFD2C(v119, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFCF42B0);
  v89 = *v121;
  v84 = Strong;
  if (!*v121)
  {
    goto LABEL_39;
  }

  v87 = *&v121[40];
  v4 = *(&v122 + 1);
  v5 = *(&v123 + 1);
  v133 = *&v121[8];
  v134 = *&v121[24];
  if (v124 <= 0 || !*(&v122 + 1))
  {
    sub_1AFCEFD2C(v121, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
LABEL_39:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v95 = *(*(&v123 + 1) + 32);
  v93 = *(v123 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  *&v127[32] = v115;
  v128 = v116;
  v129 = v117;
  v130 = v118;
  *v127 = v113;
  *&v127[16] = v114;
  sub_1AF5DD298(v127, &v107);
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v85 = v4;
  while (1)
  {
    v91 = v6;
    v8 = (v87 + 48 * v6);
    v9 = *v8;
    v10 = v8[1];
    v11 = *(v8 + 2);
    v13 = *(v8 + 4);
    v12 = *(v8 + 5);
    if (v93)
    {
      v14 = *(v12 + 376);

      os_unfair_lock_lock(v14);
      os_unfair_lock_lock(*(v12 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v95);
    v15 = *(v5 + 64);
    v153[0] = *(v5 + 48);
    v153[1] = v15;
    v154 = *(v5 + 80);
    v16 = *(*(*(*(v12 + 40) + 16) + 32) + 16) + 1;
    *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v16, 8);
    *(v5 + 56) = v16;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    if (!v11)
    {
      break;
    }

    if (v13)
    {
      do
      {
        v18 = *v11++;
        v17 = v18;

        if (*(v12 + 184))
        {
          goto LABEL_109;
        }

        v20 = *(*(v12 + 168) + 4 * v17);
        v21 = *(*(v19 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v20 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        if (v23 >= v22 >> 1)
        {
          v7 = sub_1AF4217DC(v22 > 1, v23 + 1, 1, v7);
        }

        *(v7 + 2) = v23 + 1;
        v24 = &v7[8 * v23];
        *(v24 + 8) = v20;
        *(v24 + 9) = v21;
      }

      while (--v13);
    }

LABEL_29:
    v135 = v89;
    v136 = v133;
    v137 = v134;
    sub_1AF630994(v5, &v135, v153);
    sub_1AF62D29C(v12);
    ecs_stack_allocator_pop_snapshot(v95);
    if (v93)
    {
      os_unfair_lock_unlock(*(v12 + 344));
      os_unfair_lock_unlock(*(v12 + 376));
    }

    v6 = v91 + 1;
    if (v91 + 1 == v85)
    {
      v31 = MEMORY[0x1E69E6720];
      sub_1AFCEFD2C(v121, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
      sub_1AFCEFD2C(v121, &qword_1ED725EA0, &type metadata for QueryResult, v31, sub_1AFCF4720);
      Strong = v84;
LABEL_41:
      sub_1AF704FF4(3, v125);
      v141[0] = v125[0];
      v141[1] = v125[1];
      v142 = v126;
      sub_1AF6B06C0(Strong, v141, 0x200000000, v127);
      v109 = *&v127[32];
      v110 = v128;
      v111 = v129;
      v112 = v130;
      v107 = *v127;
      v108 = *&v127[16];
      sub_1AFCF4314(v125);
      v90 = *v127;
      if (*v127)
      {
        v88 = *&v127[40];
        v33 = *(&v128 + 1);
        v34 = *(&v129 + 1);
        v131 = *&v127[8];
        v132 = *&v127[24];
        if (v130 > 0 && *(&v128 + 1))
        {
          v96 = *(*(&v129 + 1) + 32);
          v94 = *(v129 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v100[2] = v109;
          v101 = v110;
          v102 = v111;
          v103 = v112;
          v100[0] = v107;
          v100[1] = v108;
          sub_1AF5DD298(v100, v98);
          v35 = 0;
          v86 = v33;
          while (1)
          {
            v36 = (v88 + 48 * v35);
            v38 = *v36;
            v37 = v36[1];
            v39 = *(v36 + 2);
            v41 = *(v36 + 4);
            v40 = *(v36 + 5);
            v92 = v35;
            if (v94)
            {
              v42 = *(v40 + 376);

              os_unfair_lock_lock(v42);
              os_unfair_lock_lock(*(v40 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v96);
            v43 = *(v34 + 64);
            v145[0] = *(v34 + 48);
            v145[1] = v43;
            v146 = *(v34 + 80);
            v44 = *(*(*(*(v40 + 40) + 16) + 32) + 16) + 1;
            *(v34 + 48) = ecs_stack_allocator_allocate(*(v34 + 32), 48 * v44, 8);
            *(v34 + 56) = v44;
            *(v34 + 72) = 0;
            *(v34 + 80) = 0;
            *(v34 + 64) = 0;
            if (v39)
            {
              if (v41)
              {
                do
                {
                  v46 = *v39++;
                  v45 = v46;

                  if (*(v40 + 184))
                  {
                    goto LABEL_109;
                  }

                  v48 = *(*(v40 + 168) + 4 * v45);
                  v49 = *(*(v47 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v48 + 8);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
                  }

                  v51 = *(v7 + 2);
                  v50 = *(v7 + 3);
                  if (v51 >= v50 >> 1)
                  {
                    v7 = sub_1AF4217DC(v50 > 1, v51 + 1, 1, v7);
                  }

                  *(v7 + 2) = v51 + 1;
                  v52 = &v7[8 * v51];
                  *(v52 + 8) = v48;
                  *(v52 + 9) = v49;
                }

                while (--v41);
              }
            }

            else if (v38 != v37)
            {
              do
              {

                if (*(v40 + 184))
                {
                  goto LABEL_109;
                }

                v54 = *(*(v40 + 168) + 4 * v38);
                v55 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v54 + 8);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
                }

                v57 = *(v7 + 2);
                v56 = *(v7 + 3);
                if (v57 >= v56 >> 1)
                {
                  v7 = sub_1AF4217DC(v56 > 1, v57 + 1, 1, v7);
                }

                ++v38;
                *(v7 + 2) = v57 + 1;
                v58 = &v7[8 * v57];
                *(v58 + 8) = v54;
                *(v58 + 9) = v55;
              }

              while (v37 != v38);
            }

            v138 = v90;
            v139 = v131;
            v140 = v132;
            sub_1AF630994(v34, &v138, v145);
            sub_1AF62D29C(v40);
            ecs_stack_allocator_pop_snapshot(v96);
            if (v94)
            {
              os_unfair_lock_unlock(*(v40 + 344));
              os_unfair_lock_unlock(*(v40 + 376));
            }

            v35 = v92 + 1;
            if (v92 + 1 == v86)
            {
              v81 = MEMORY[0x1E69E6720];
              sub_1AFCEFD2C(v127, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
              sub_1AFCEFD2C(v127, &qword_1ED725EA0, &type metadata for QueryResult, v81, sub_1AFCF4720);
              Strong = v84;
              v59 = *(v7 + 2);
              if (!v59)
              {
LABEL_108:
              }

LABEL_70:
              v60 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
              v61 = (v7 + 32);
              while (2)
              {
                v32.n128_u64[0] = *v61;
                v97 = v32;
                v62 = *(Strong + v60);
                if (v62)
                {
                  v63 = *(v62 + 80);
                  swift_unknownObjectWeakLoadStrong();
                  v62 = *(v62 + 56);
                }

                else
                {
                  v63 = 0;
                }

                v105 = 0;
                swift_unknownObjectUnownedInit();
                v104 = Strong;
                v105 = v62;
                swift_unknownObjectUnownedAssign();
                swift_unownedRetain();
                swift_unknownObjectRelease();
                v106 = v63;
                if (v97.n128_u32[0] != -1)
                {
                  swift_unownedRetainStrong();
                  if ((v97.n128_u32[0] & 0x80000000) == 0 && *(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v97.n128_i32[0])
                  {
                    v64 = (*(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v97.n128_i32[0]);
                    if (v97.n128_u32[1] == -1 || v64[2] == v97.n128_u32[1])
                    {
                      v66 = *(*(Strong + 144) + 8 * *v64 + 32);
                      thread_worker_index(v97);
                      v68 = *(v66 + 192);
                      if (v68)
                      {
                        v69 = *(v66 + 208);
                        *(v68 + 8 * (v67 >> 6)) |= 1 << v67;
                        *(v69 + 8 * (v67 >> 6)) &= ~(1 << v67);
                      }

                      sub_1AF705804(v67);
                    }
                  }

LABEL_89:

                  swift_unownedRetainStrong();

                  if (swift_unknownObjectUnownedLoadStrong())
                  {
                    swift_unknownObjectRelease();
                  }

                  if (!v63)
                  {
                    sub_1AF579490(&v104);
                    goto LABEL_72;
                  }

                  swift_unownedRetainStrong();
                  *&v100[0] = v97.n128_u64[0];
                  *(&v100[0] + 1) = Strong;
                  BYTE8(v101) = 10;
                  v70 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
                  if (v70 && (*(v70 + 81) & 1) != 0 && *(v70 + 24))
                  {
                    if (swift_weakLoadStrong())
                    {

                      swift_unknownObjectRetain();

                      sub_1AF6CAF24(v100, v98);
                      v71 = *(v70 + 16);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *(v70 + 16) = v71;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v71 = sub_1AF4221C8(0, *(v71 + 2) + 1, 1, v71);
                        *(v70 + 16) = v71;
                      }

                      v74 = *(v71 + 2);
                      v73 = *(v71 + 3);
                      if (v74 >= v73 >> 1)
                      {
                        *(v70 + 16) = sub_1AF4221C8(v73 > 1, v74 + 1, 1, v71);
                      }

                      Strong = v84;

                      swift_unknownObjectRelease();
                      sub_1AF57955C(v100);
                      v75 = *(v70 + 16);
                      *(v75 + 16) = v74 + 1;
                      v76 = (v75 + (v74 << 6));
                      v77 = v98[0];
                      v78 = v98[1];
                      v79 = v99[0];
                      *(v76 + 73) = *(v99 + 9);
                      v76[3] = v78;
                      v76[4] = v79;
                      v76[2] = v77;
                      *(v70 + 16) = v75;

LABEL_105:
                      sub_1AF579490(&v104);
LABEL_106:
                      v80 = [objc_opt_self() immediateMode];
                      sub_1AF6C5E30(v80 ^ 1);
LABEL_72:
                      ++v61;
                      if (!--v59)
                      {
                        goto LABEL_108;
                      }

                      continue;
                    }

                    Strong = v84;
                  }

                  sub_1AF57955C(v100);
                  goto LABEL_105;
                }

                break;
              }

              if (v97.n128_u32[1])
              {
                swift_unownedRetainStrong();
                goto LABEL_89;
              }

              sub_1AF579490(&v104);
              if (v63)
              {
                goto LABEL_106;
              }

              goto LABEL_72;
            }
          }
        }

        sub_1AFCEFD2C(v127, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
      }

      v59 = *(v7 + 2);
      if (!v59)
      {
        goto LABEL_108;
      }

      goto LABEL_70;
    }
  }

  if (v9 == v10)
  {
    goto LABEL_29;
  }

  while (1)
  {

    if (*(v12 + 184))
    {
      break;
    }

    v26 = *(*(v12 + 168) + 4 * v9);
    v27 = *(*(v25 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v26 + 8);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1AF4217DC(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_1AF4217DC(v28 > 1, v29 + 1, 1, v7);
    }

    ++v9;
    *(v7 + 2) = v29 + 1;
    v30 = &v7[8 * v29];
    *(v30 + 8) = v26;
    *(v30 + 9) = v27;
    if (v10 == v9)
    {
      goto LABEL_29;
    }
  }

LABEL_109:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

BOOL sub_1AFCE63E4()
{
  if (!swift_weakLoadStrong())
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v1 = v0;
      v2 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v5 = v2;
        swift_once();
        v2 = v5;
      }

      v6 = 0;
      sub_1AF0D4F18(v2, &v6, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      v0 = v1;
    }
  }

  v3 = sub_1AF67CACC(&type metadata for DoNotExport, &off_1F253CF60, *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity));

  return v3;
}

id VFXEntityObject.properties.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity) == -1 && *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4) == 0)
  {
    return 0;
  }

  if (!swift_weakLoadStrong())
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v4 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v9 = v4;
        swift_once();
        v4 = v9;
      }

      v11 = 0;
      sub_1AF0D4F18(v4, &v11, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v5 = type metadata accessor for EntityPropertyHelper();
  v6 = *v1;
  v7 = objc_allocWithZone(v5);
  swift_weakInit();
  swift_weakAssign();
  *&v7[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = v6;
  v10.receiver = v7;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

id VFXEntityObject.presentationProperties.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity) == -1 && *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4) == 0)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v4 = v0;
      v5 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v16 = v5;
        swift_once();
        v5 = v16;
      }

      v19 = 0;
      sub_1AF0D4F18(v5, &v19, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      v0 = v4;
    }
  }

  if (!*(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
  {
    goto LABEL_31;
  }

  v6 = swift_weakLoadStrong();

  if (v6)
  {
    v7 = swift_weakLoadStrong();
    if (!v7)
    {
      v7 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
      if (v7)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v8 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v17 = v8;
          swift_once();
          v8 = v17;
        }

        v19 = 0;
        sub_1AF0D4F18(v8, &v19, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v7 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    if (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
    {

      v9 = *v1;
      swift_unknownObjectRetain();
      v10 = sub_1AF6C97E0(v9);

      swift_unknownObjectRelease();
      if (HIDWORD(v10))
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 == -1;
      }

      if (!v11)
      {
        v12 = type metadata accessor for EntityPropertyHelper();
        v13 = objc_allocWithZone(v12);
        swift_weakInit();
        swift_weakAssign();
        *&v13[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = v10;
        v18.receiver = v13;
        v18.super_class = v12;
        v14 = objc_msgSendSuper2(&v18, sel_init);

        return v14;
      }
    }

    else
    {
    }

LABEL_31:
  }

  return 0;
}

uint64_t sub_1AFCE6B54()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v2 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v4 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v10 = v4;
        swift_once();
        v4 = v10;
      }

      v11[0] = 0;
      sub_1AF0D4F18(v4, v11, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  if (v1 != -1 || v2 != 0)
  {
    v7 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v7)
    {
      v8 = *(v7 + 80);
      swift_unknownObjectWeakLoadStrong();
      v7 = *(v7 + 56);
    }

    else
    {
      v8 = 0;
    }

    v12 = 0;
    swift_unknownObjectUnownedInit();
    v11[0] = Strong;
    v12 = v7;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v13 = v8;
    sub_1AFCDA56C(v1 | (v2 << 32));
    sub_1AF579490(v11);
    if (v8)
    {
      v9 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v9 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AFCE6E18()
{
  v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 == 0xFFFFFFFFLL;
  }

  v4 = v2 | (v1 << 32);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1AFCE6E74(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity] = 0xFFFFFFFFLL;
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = v2;

    sub_1AF66977C(v6, v7, v6, a1, a2);
  }

  return result;
}

uint64_t sub_1AFCE70CC()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v3 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *(v2 + 4);

    if (v3 == -1 && v4 == 0)
    {
      return 0;
    }

    else
    {

      v6 = sub_1AF3D1440(v3 | (v4 << 32));
      v8 = v7;

      if (v8)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AFCE7250(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;

    v7 = v2;

    sub_1AF669B24(v8, v6, a1, a2, v7, v9);
  }

  else
  {
  }
}

uint64_t sub_1AFCE7310(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;

    v7 = v4;

    sub_1AF669B24(v8, v6, v2, v3, v7, v9);
  }

  return result;
}

uint64_t sub_1AFCE73B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF80F2BC(a1, v32);
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = (a4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v12 = *(a4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v13 = *(a4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
  if (v12 == -1 && v13 == 0)
  {
  }

  else
  {
    v34 = v4;
    v15 = v32[0];
    swift_unownedRetainStrong();
    v22 = sub_1AF67CACC(&type metadata for TextureClient, &off_1F2546D18, v12 | (v13 << 32));

    swift_unownedRetainStrong();
    sub_1AFBFEA58(v9, v10, v12 | (v13 << 32));

    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    if (v33 == 1)
    {
      swift_unownedRetainStrong();
      v23 = v12;
      v24 = v13;
      v25 = v15;
      sub_1AFCF46CC(0, &unk_1EB644080, &type metadata for TextureClient, &off_1F2546D98, type metadata accessor for ComponentWriter);
      v29 = v16;
      v30 = &off_1F2536170;
      v26 = v9;
      v27 = v10;
      v28 = !v22;
      v31 = 12;

      sub_1AF6C67D0(&v23);

      sub_1AF57955C(&v23);
    }
  }

  result = sub_1AF579490(v32);
  v18 = *v11;
  v19 = v11[1];
  if (v18 != -1 || v19 != 0)
  {
    v21 = *a1;
    swift_unownedRetainStrong();
    sub_1AF678B44(v18 | (v19 << 32));

    swift_unownedRetainStrong();

    result = swift_unknownObjectUnownedLoadStrong();
    if (result)
    {
      result = swift_unknownObjectRelease();
    }

    if (*(a1 + 24) == 1)
    {
      swift_unownedRetainStrong();
      v23 = v18;
      v24 = v19;
      v25 = v21;
      v31 = 10;
      sub_1AF6C67D0(&v23);

      return sub_1AF57955C(&v23);
    }
  }

  return result;
}

uint64_t (*sub_1AFCE7618(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  a1[2] = v1;
  a1[3] = v3;
  if (!swift_weakLoadStrong() || ((v4 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v6 = *(v4 + 4), , v5 == -1) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {

    v8 = sub_1AF3D1440(v5 | (v6 << 32));
    v10 = v9;

    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }
  }

  *a1 = v11;
  a1[1] = v10;
  return sub_1AFCE76D8;
}

uint64_t sub_1AFCE76D8(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v5 = *a1;
  v4 = a1[1];
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      swift_bridgeObjectRetain_n();
      v8 = v3;

      sub_1AF669B24(v9, v7, v5, v4, v8, v10);
    }
  }

  else if (Strong)
  {

    v11 = v3;

    sub_1AF669B24(v12, v7, v5, v4, v11, v13);
  }
}

uint64_t sub_1AFCE7808()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v3 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *(v2 + 4);

    if (v3 == -1 && v4 == 0)
    {
      return 0;
    }

    v6 = sub_1AF3C97D8(v3 | (v4 << 32));

    if (v6 == 1)
    {
      return 0;
    }

    else
    {
      swift_unknownObjectRelease();
      return v6;
    }
  }

  return result;
}

uint64_t sub_1AFCE7960(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRetain();
    v5 = v1;

    sub_1AF66A14C(v6, v4, a1, v5);
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1AFCE7A18(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();
    v6 = v3;

    sub_1AF66A14C(v7, v5, v2, v6);
  }

  return result;
}

uint64_t (*sub_1AFCE7AB8(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  a1[1] = v1;
  a1[2] = v3;
  if (!swift_weakLoadStrong() || ((v4 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v6 = *(v4 + 4), , v5 == -1) ? (v7 = v6 == 0) : (v7 = 0), v7 || (, v8 = sub_1AF3C97D8(v5 | (v6 << 32)), , v8 == 1)))
  {
    v8 = 0;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  *a1 = v8;
  return sub_1AFCE7B7C;
}

uint64_t sub_1AFCE7B7C(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v4 = *a1;
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      swift_unknownObjectRetain_n();
      v7 = v3;

      sub_1AF66A14C(v8, v6, v4, v7);

      swift_unknownObjectRelease();
    }
  }

  else if (Strong)
  {
    swift_unknownObjectRetain();
    v9 = v3;

    sub_1AF66A14C(v10, v6, v4, v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFCE7D0C()
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v3 = *(v1 + 4);

  if (v2 == -1 && v3 == 0)
  {
    return 0;
  }

  v5 = sub_1AF3D1538(v2 | (v3 << 32));

  result = v5;
  if (v5 == 1)
  {
    return 0;
  }

  return result;
}

void sub_1AFCE7E58(void *a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    v5 = v1;

    sub_1AF66A71C(v6, v3, a1, v5);
  }

  else
  {
  }
}

uint64_t sub_1AFCE7F10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (!result || ((v5 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v6 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v7 = *(v5 + 4), result = , v6 == -1) ? (v8 = v7 == 0) : (v8 = 0), v8))
  {
    v10 = 0;
  }

  else
  {

    v9 = sub_1AF3D1538(v6 | (v7 << 32));

    if (v9 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1AFCE7FA8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = v2;
    v7 = v3;

    sub_1AF66A71C(v8, v5, v2, v7);
  }

  return result;
}

void (*sub_1AFCE8044(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  a1[1] = v1;
  a1[2] = v3;
  if (!swift_weakLoadStrong() || ((v4 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v6 = *(v4 + 4), , v5 == -1) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v9 = 0;
  }

  else
  {

    v8 = sub_1AF3D1538(v5 | (v6 << 32));

    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  *a1 = v9;
  return sub_1AFCE80FC;
}

void sub_1AFCE80FC(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v13 = *a1;
  Strong = swift_weakLoadStrong();
  if (a2)
  {
    v5 = v13;
    if (!Strong)
    {
      goto LABEL_7;
    }

    v6 = v13;
    v7 = v3;
    v8 = v6;

    sub_1AF66A71C(v9, Strong, v13, v7);
  }

  else
  {
    v5 = v13;
    if (!Strong)
    {
      goto LABEL_7;
    }

    v10 = v13;
    v11 = v3;

    sub_1AF66A71C(v12, Strong, v13, v11);
  }

  v5 = v13;
LABEL_7:
}

uint64_t sub_1AFCE8250()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return -1;
  }

  v1 = Strong + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
  v2 = *(v1 + *(type metadata accessor for ScriptingConfiguration() + 36));

  return v2;
}

uint64_t sub_1AFCE82F4()
{
  v1 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  if (swift_weakLoadStrong())
  {
    v2 = (v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v3 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);

    if (!swift_weakLoadStrong())
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = *v2;
    v6 = v2[1];
    v7 = v5 == -1 && v6 == 0;
    if (v7 || (v3 == -1 ? (v8 = v4 == 0) : (v8 = 0), v8 || (, v22 = sub_1AF3C9078(v3 | (v4 << 32)), v10 = v9, , (v23 = v10) == 0)))
    {
      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:

      return v1;
    }

    v11 = sub_1AF3D11F4(v3 | (v4 << 32));
    v13 = v12;

    if (!v11)
    {
      v1 = MEMORY[0x1E69E7CC0];
LABEL_37:

      goto LABEL_16;
    }

    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = sub_1AFC892CC(*(v13 + 16), 0);
      sub_1AFC869B0(&v24, (v15 + 32), v14, v13);

      sub_1AF0FBB14();
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v17 = sub_1AFDFE108();
      if (v17)
      {
LABEL_24:
        v18 = 0;
        v19 = v5 | (v6 << 32);
        v1 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1B2719C70](v18, v15);
          }

          else
          {
          }

          type metadata accessor for BindingPropertyDescription();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            sub_1AFC7F448(v19, v22, v23, v20);
            v21 = swift_unknownObjectRetain();
            MEMORY[0x1B2718E00](v21);
            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            swift_unknownObjectRelease();

            v1 = v25;
          }

          else
          {
          }

          ++v18;
        }

        while (v17 != v18);
        goto LABEL_36;
      }
    }

    else
    {
      v17 = *(v15 + 16);
      if (v17)
      {
        goto LABEL_24;
      }
    }

    v1 = MEMORY[0x1E69E7CC0];
LABEL_36:

    goto LABEL_37;
  }

  return v1;
}

id sub_1AFCE85FC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t))
{
  v10 = a1;
  a3();

  a6(0, a4, a5);
  v11 = sub_1AFDFD3F8();

  return v11;
}

uint64_t sub_1AFCE8690()
{
  v1 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return v1;
  }

  v3 = Strong;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_60;
  }

  v4 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
  v5 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v6 = *(v4 + 4);

  v7 = CFXMTLCreateSystemDefaultDevice();
  _s3VFX21VFXCoreGetShaderCache6deviceyXlSo9MTLDevice_p_tF_0(v7);
  if (v5 == -1 && v6 == 0)
  {
    v66 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v60 = 0u;
  }

  else
  {

    sub_1AF3CA1CC(v5 | (v6 << 32), &v60);
  }

  v53 = v60;
  v54 = v61;
  v57 = v64;
  v58 = v65;
  v59 = v66;
  v55 = v62;
  v56 = v63;
  if (!v60)
  {
    swift_unknownObjectRelease();

LABEL_60:

    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(*(&v54 + 1) + 16);
  if (v10)
  {
    v11 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v52 = OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare;
    v51 = OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive;

    v12 = (*(&v54 + 1) + 36);
    v13 = &type metadata for ParticleSphereRenderer;
    v50 = v1;
    while (1)
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      if (v14 != -1 || v15 != 0)
      {
        if ((v14 & 0x80000000) == 0 && v11[1] > v14)
        {
          v17 = *v11 + 12 * v14;
          if ((v15 == -1 || *(v17 + 8) == v15) && (v18 = *(*(*(v3 + 88) + 8 * *(v17 + 6) + 32) + 16), v19 = *(v18 + 128), *(v19 + 16)))
          {
            v20 = v13;
            v21 = sub_1AF449CB8(v13);
            if ((v22 & 1) != 0 && *(*(v18 + 24) + 16 * *(*(v19 + 56) + 8 * v21) + 32) == v20)
            {
              v45 = *(v3 + v52);
              v36 = *(v3 + v51);
              v102 = 0xD00000000000001ALL;
              v103 = 0x80000001AFF4E2B0;
              v104 = 0;
              v105 = 0;
              v106 = MEMORY[0x1E69E7CC0];
              v44 = v36;
              v48 = v36;
              v37 = swift_unknownObjectRetain();
              sub_1AF882DB8(v37, 0, &v68);
              swift_unknownObjectRelease();
              sub_1AF72A584(&v68, v45, v44);
              v91 = v68;
              sub_1AF585778(&v91);
              v90 = v69;
              sub_1AF89BC64(&v90, &qword_1ED723160, &unk_1ED723170);
              v89 = v70;
              sub_1AF89BC64(&v89, &qword_1ED723180, &qword_1ED723190);
              v88 = v71;
              sub_1AFCEFD2C(&v88, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AFCF4720);
              v41 = swift_unknownObjectRetain();
              MEMORY[0x1B2718E00](v41);
              if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1AFDFD458();
              }

              sub_1AFDFD4B8();
              swift_unknownObjectRelease();

              v50 = v67;
              v13 = &type metadata for ParticleSphereRenderer;
              if ((v14 & 0x80000000) != 0)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v13 = v20;
              if ((v14 & 0x80000000) != 0)
              {
LABEL_37:
                if ((v14 & 0x80000000) == 0 && v11[1] > v14)
                {
                  v28 = *v11 + 12 * v14;
                  if (v15 == -1 || *(v28 + 8) == v15)
                  {
                    v29 = *(*(*(v3 + 88) + 8 * *(v28 + 6) + 32) + 16);
                    v30 = *(v29 + 128);
                    if (*(v30 + 16))
                    {
                      v31 = sub_1AF449CB8(&type metadata for ParticleQuadRenderer);
                      if ((v32 & 1) != 0 && *(*(v29 + 24) + 16 * *(*(v30 + 56) + 8 * v31) + 32) == &type metadata for ParticleQuadRenderer)
                      {
                        v47 = *(v3 + v52);
                        v33 = *(v3 + v51);
                        v92 = 0xD000000000000018;
                        v93 = 0x80000001AFF4E270;
                        v94 = 0;
                        v95 = 0;
                        v96 = MEMORY[0x1E69E7CC0];
                        v34 = v33;
                        v35 = swift_unknownObjectRetain();
                        sub_1AF882DB8(v35, 0, &v76);
                        swift_unknownObjectRelease();
                        sub_1AF72A584(&v76, v47, v33);
                        v83 = v76;
                        sub_1AF585778(&v83);
                        v82 = v77;
                        sub_1AF89BC64(&v82, &qword_1ED723160, &unk_1ED723170);
                        v81 = v78;
                        sub_1AF89BC64(&v81, &qword_1ED723180, &qword_1ED723190);
                        v80 = v79;
                        sub_1AFCEFD2C(&v80, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AFCF4720);
                        v42 = swift_unknownObjectRetain();
                        MEMORY[0x1B2718E00](v42);
                        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                        {
                          sub_1AFDFD458();
                        }

                        sub_1AFDFD4B8();
                        swift_unknownObjectRelease();

                        v50 = v67;
                        v13 = &type metadata for ParticleSphereRenderer;
                      }

                      else
                      {
                        v13 = &type metadata for ParticleSphereRenderer;
                      }
                    }
                  }
                }

                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_29:
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_37;
            }
          }

          if (v11[1] > v14)
          {
            v23 = *v11 + 12 * v14;
            if (v15 == -1 || *(v23 + 8) == v15)
            {
              v24 = *(*(*(v3 + 88) + 8 * *(v23 + 6) + 32) + 16);
              v25 = *(v24 + 128);
              if (*(v25 + 16))
              {
                v26 = sub_1AF449CB8(&type metadata for ParticleBoxRenderer);
                if ((v27 & 1) != 0 && *(*(v24 + 24) + 16 * *(*(v25 + 56) + 8 * v26) + 32) == &type metadata for ParticleBoxRenderer)
                {
                  v49 = *(v3 + v52);
                  v38 = *(v3 + v51);
                  v97 = 0xD000000000000017;
                  v98 = 0x80000001AFF4E290;
                  v99 = 0;
                  v100 = 0;
                  v101 = MEMORY[0x1E69E7CC0];
                  v46 = v38;
                  v39 = v38;
                  v40 = swift_unknownObjectRetain();
                  sub_1AF882DB8(v40, 0, &v72);
                  swift_unknownObjectRelease();
                  sub_1AF72A584(&v72, v49, v46);
                  v87 = v72;
                  sub_1AF585778(&v87);
                  v86 = v73;
                  sub_1AF89BC64(&v86, &qword_1ED723160, &unk_1ED723170);
                  v85 = v74;
                  sub_1AF89BC64(&v85, &qword_1ED723180, &qword_1ED723190);
                  v84 = v75;
                  sub_1AFCEFD2C(&v84, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8], sub_1AFCF4720);
                  v43 = swift_unknownObjectRetain();
                  MEMORY[0x1B2718E00](v43);
                  if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1AFDFD458();
                  }

                  sub_1AFDFD4B8();
                  swift_unknownObjectRelease();

                  v50 = v67;
                }

                v13 = &type metadata for ParticleSphereRenderer;
              }
            }
          }

          goto LABEL_37;
        }

        if (v14 != -1)
        {
          goto LABEL_29;
        }
      }

LABEL_14:
      v12 += 2;
      if (!--v10)
      {

        swift_unknownObjectRelease();
        sub_1AFCEFD2C(&v53, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);

        return v50;
      }
    }
  }

  swift_unknownObjectRelease();
  sub_1AFCEFD2C(&v53, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AFCE9440(uint64_t (*a1)(void, void, uint64_t))
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
  v6 = v5 == -1 && v4 == 0;
  if (!v6 && (v5 & 0x80000000) == 0 && *(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v5)
  {
    v7 = (*(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
    if (v4 == -1 || v7[2] == v4)
    {
      v9 = a1(*(*(Strong + 144) + 8 * *v7 + 32), *(v7 + 2), 848);
      if (v9 != 1)
      {
        v10 = v9;

        return v10;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFCE967C(uint64_t (*a1)(void, void, uint64_t))
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v4 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
  v6 = v5 == -1 && v4 == 0;
  if (!v6 && (v5 & 0x80000000) == 0 && *(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v5)
  {
    v7 = (*(Strong + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
    if (v4 == -1 || v7[2] == v4)
    {
      v9 = a1(*(*(Strong + 144) + 8 * *v7 + 32), *(v7 + 2), 848);
      if ((v10 & 1) == 0)
      {
        v11 = v9;

        return v11;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

double sub_1AFCE98B4()
{
  if (swift_weakLoadStrong())
  {
    v1 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v3 = *(v1 + 4);

    if (v2 != -1 || v3 != 0)
    {

      sub_1AF3C9244(v2 | (v3 << 32), &v6);

      if ((v7 & 1) == 0)
      {
        return *&v6;
      }
    }
  }

  *&result = 1065353216;
  return result;
}

void sub_1AFCE9A4C(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v22[32] = a3;
  *&v22[48] = a4;
  *v22 = a1;
  *&v22[16] = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = v4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v8 = *(v4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v9 = *(v7 + 4);

    v26 = __invert_f4(*v22);
    if (v8 != -1 || v9 != 0)
    {
      v18 = v26.columns[3];
      v19 = v26.columns[2];
      v20 = v26.columns[1];
      v21 = v26.columns[0];
      v11 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v11)
      {
        v12 = *(v11 + 80);
        swift_unknownObjectWeakLoadStrong();
        v11 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      swift_unknownObjectUnownedInit();
      v23[0] = v6;
      v24 = v11;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v25 = v12;
      v13 = v8 | (v9 << 32);
      sub_1AFC75FB4(v23, v13, *v22, *&v22[16], *&v22[32], *&v22[48]);
      sub_1AF579490(v23);
      if (v12)
      {
        v14 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v14 ^ 1);
      }

      v15 = *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v15)
      {
        v16 = *(v15 + 80);
        swift_unknownObjectWeakLoadStrong();
        v15 = *(v15 + 56);
      }

      else
      {
        v16 = 0;
      }

      v24 = 0;
      swift_unknownObjectUnownedInit();
      v23[0] = v6;
      v24 = v15;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v25 = v16;
      sub_1AFC76124(v23, v13, v21, v20, v19, v18);
      sub_1AF579490(v23);
      if (v16)
      {
        v17 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v17 ^ 1);
      }
    }
  }
}

uint64_t sub_1AFCE9CB4(__n128 *a1, uint64_t *a2)
{
  v12 = a1[1];
  v13 = *a1;
  v11 = a1[2];
  v10 = a1[3];
  v2 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = result;

    v15.columns[1] = v12;
    v15.columns[0] = v13;
    v15.columns[2] = v11;
    v15.columns[3] = v10;
    v16 = j____invert_f4_1(v15);
    v8 = v16.columns[1];
    v9 = v16.columns[0];
    v6 = v16.columns[3];
    v7 = v16.columns[2];
    sub_1AFC75350(v4, v5, v13, v12, v11, v10);

    return sub_1AFC75368(v4, v5, v9, v8, v7, v6);
  }

  return result;
}

void (*sub_1AFCE9D78(uint64_t *a1))(_OWORD **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  *&v5 = sub_1AFCE98B4();
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  return sub_1AFCE9DF4;
}

void sub_1AFCE9DF4(_OWORD **a1)
{
  v1 = *a1;
  *v18 = **a1;
  *&v18[16] = (*a1)[1];
  *&v18[32] = (*a1)[2];
  *&v18[48] = (*a1)[3];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (*(v1 + 12) + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *v3;
    v5 = v3[1];

    v20 = __invert_f4(*v18);
    if (v4 != -1 || v5 != 0)
    {
      v14 = v20.columns[3];
      v15 = v20.columns[2];
      v16 = v20.columns[1];
      v17 = v20.columns[0];
      v7 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v7)
      {
        v8 = *(v7 + 80);
        swift_unknownObjectWeakLoadStrong();
        v7 = *(v7 + 56);
      }

      else
      {
        v8 = 0;
      }

      *(v1 + 10) = 0;
      swift_unknownObjectUnownedInit();
      *(v1 + 8) = Strong;
      *(v1 + 10) = v7;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      *(v1 + 88) = v8;
      v9 = v4 | (v5 << 32);
      sub_1AFC75FB4(v1 + 8, v9, *v18, *&v18[16], *&v18[32], *&v18[48]);
      sub_1AF579490((v1 + 4));
      if (v8)
      {
        v10 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v10 ^ 1);
      }

      v11 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v11)
      {
        v12 = *(v11 + 80);
        swift_unknownObjectWeakLoadStrong();
        v11 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      *(v1 + 10) = 0;
      swift_unknownObjectUnownedInit();
      *(v1 + 8) = Strong;
      *(v1 + 10) = v11;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      *(v1 + 88) = v12;
      sub_1AFC76124(v1 + 8, v9, v17, v16, v15, v14);
      sub_1AF579490((v1 + 4));
      if (v12)
      {
        v13 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v13 ^ 1);
      }
    }
  }

  free(v1);
}

uint64_t sub_1AFCEA0C4()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v3 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *(v2 + 4);

    if (v3 == -1 && v4 == 0)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
    }

    else
    {

      sub_1AF3CA1CC(v3 | (v4 << 32), &v13);
    }

    v10 = v17;
    v11 = v18;
    v12 = v19;
    v8[0] = v13;
    v8[1] = v14;
    v8[2] = v15;
    v9 = v16;
    if (v13)
    {
      Strong = v9;
      v6 = v9;
      sub_1AFCEFD2C(v8, &unk_1EB634140, &type metadata for EmitterDescription, MEMORY[0x1E69E6720], sub_1AFCF4720);
    }

    else
    {
      return 0;
    }
  }

  return Strong;
}

void sub_1AFCEA2AC()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0;
    sub_1AF677EF0(v2, v3);
  }
}

void sub_1AFCEA338(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v6 = a1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
  v7 = *(a1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v8 = *(v6 + 4);

  if (v7 == -1 && v8 == 0)
  {
    goto LABEL_13;
  }

  v10 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

  if (v10)
  {
    v11 = *(v10 + 80);
    swift_unknownObjectWeakLoadStrong();
    v10 = *(v10 + 56);
  }

  else
  {
    v11 = 0;
  }

  swift_unknownObjectUnownedInit();
  v14[0] = Strong;
  v14[2] = v10;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v15 = v11;
  sub_1AFC77640(v14, v7 | (v8 << 32));
  if (!v2)
  {
    sub_1AF579490(v14);
    if (v11)
    {
      v12 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v12 ^ 1);
    }

LABEL_13:
    *a2 = Strong == 0;
    return;
  }

  sub_1AF579490(v14);
  v13 = [objc_opt_self() immediateMode];
  sub_1AF6C5E30(v13 ^ 1);
  __break(1u);
}

float sub_1AFCEA604()
{
  v1 = 1.0;
  if (swift_weakLoadStrong())
  {
    v2 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v3 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *(v2 + 4);

    if (v3 != -1 || v4 != 0)
    {

      v6 = sub_1AF3C9C7C(v3 | (v4 << 32));

      if ((v6 & 0x100000000) == 0)
      {
        return *&v6;
      }
    }
  }

  return v1;
}

uint64_t sub_1AFCEA748(float a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v6 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v7 = *(v5 + 4);

    if (v6 != -1 || v7 != 0)
    {
      v9 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v9)
      {
        v10 = *(v9 + 80);
        swift_unknownObjectWeakLoadStrong();
        v9 = *(v9 + 56);
      }

      else
      {
        v10 = 0;
      }

      swift_unknownObjectUnownedInit();
      v12[0] = v4;
      v12[2] = v9;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v13 = v10;
      sub_1AFC75D20(v12, v6 | (v7 << 32), a1);
      sub_1AF579490(v12);
      if (v10)
      {
        v11 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v11 ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AFCEA8CC@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (!result || ((v5 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v6 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v7 = *(v5 + 4), result = , v6 == -1) ? (v8 = v7 == 0) : (v8 = 0), v8 || (, v9 = sub_1AF3C9C7C(v6 | (v7 << 32)), result = , (v9 & 0x100000000) != 0)))
  {
    LODWORD(v9) = 1065353216;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1AFCEA95C(float *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v6 = result;

    return sub_1AFC75200(v5, v6, v2);
  }

  return result;
}

void (*sub_1AFCEA9DC(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  if (!swift_weakLoadStrong() || ((v6 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity, v7 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), v8 = *(v6 + 4), , v7 == -1) ? (v9 = v8 == 0) : (v9 = 0), v9 || (, v10 = sub_1AF3C9C7C(v7 | (v8 << 32)), , (v10 & 0x100000000) != 0)))
  {
    LODWORD(v10) = 1065353216;
  }

  *(v4 + 28) = v10;
  return sub_1AFCEAABC;
}

void sub_1AFCEAABC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 28);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = (*(v1 + 32) + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = *v4;
    v6 = v4[1];

    if (v5 != -1 || v6 != 0)
    {
      v8 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v8)
      {
        v9 = *(v8 + 80);
        swift_unknownObjectWeakLoadStrong();
        v8 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      *(v1 + 16) = 0;
      swift_unknownObjectUnownedInit();
      *v1 = Strong;
      *(v1 + 16) = v8;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      *(v1 + 24) = v9;
      sub_1AFC75D20(v1, v5 | (v6 << 32), v2);
      sub_1AF579490(v1);
      if (v9)
      {
        v10 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v10 ^ 1);
      }
    }
  }

  free(v1);
}

double sub_1AFCEAC94()
{
  Strong = swift_weakLoadStrong();
  result = 0.0;
  if (Strong)
  {
    v3 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v4 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = *(v3 + 4);

    if (v4 == -1 && v5 == 0)
    {
      return 0.0;
    }

    else
    {

      v7 = sub_1AF3C9FF4(v4 | (v5 << 32));
      v9 = v8;

      result = 0.0;
      if ((v9 & 1) == 0)
      {
        return *&v7;
      }
    }
  }

  return result;
}

uint64_t sub_1AFCEADDC(__n128 a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v6 = *(v4 + 4);

    if (v5 != -1 || v6 != 0)
    {
      v8 = a1;
      v8.n128_u32[3] = 1.0;
      v13 = v8;
      v9 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v9)
      {
        v10 = *(v9 + 80);
        swift_unknownObjectWeakLoadStrong();
        v9 = *(v9 + 56);
      }

      else
      {
        v10 = 0;
      }

      swift_unknownObjectUnownedInit();
      v14[0] = v3;
      v14[2] = v9;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v15 = v10;
      sub_1AFC76DD4(v14, v5 | (v6 << 32), v13);
      sub_1AF579490(v14);
      if (v10)
      {
        v11 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v11 ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AFCEAF68(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = result;

    sub_1AFC0DE28();

    return sub_1AFC754F8(v4, v5, v6);
  }

  return result;
}

void (*sub_1AFCEAFF0(uint64_t *a1))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  Strong = swift_weakLoadStrong();
  v7 = 0uLL;
  if (Strong)
  {
    v8 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v9 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v10 = *(v8 + 4);

    if (v9 == -1 && v10 == 0)
    {
      v7 = 0uLL;
    }

    else
    {

      v12 = sub_1AF3C9FF4(v9 | (v10 << 32));
      v14 = v13;
      v16 = v15;

      v7 = 0uLL;
      if ((v16 & 1) == 0)
      {
        *&v7 = v12;
        *(&v7 + 1) = v14;
      }
    }
  }

  *v4 = v7;
  return sub_1AFCEB0EC;
}

void sub_1AFCEB0EC(__n128 **a1)
{
  v1 = *a1;
  v11 = **a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (v1[3].n128_u64[0] + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *v3;
    v5 = v3[1];

    if (v4 != -1 || v5 != 0)
    {
      v7 = v11;
      v7.n128_u32[3] = 1.0;
      v12 = v7;
      v8 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v8)
      {
        v9 = *(v8 + 80);
        swift_unknownObjectWeakLoadStrong();
        v8 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      v1[2].n128_u64[0] = 0;
      swift_unknownObjectUnownedInit();
      v1[1].n128_u64[0] = Strong;
      v1[2].n128_u64[0] = v8;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v1[2].n128_u8[8] = v9;
      sub_1AFC76DD4(v1[1].n128_u64, v4 | (v5 << 32), v12);
      sub_1AF579490(&v1[1]);
      if (v9)
      {
        v10 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v10 ^ 1);
      }
    }
  }

  free(v1);
}

__n128 sub_1AFCEB350()
{
  Strong = swift_weakLoadStrong();
  result.n128_u64[0] = 0;
  if (Strong)
  {
    v3 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v4 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = *(v3 + 4);

    if (v4 == -1 && v5 == 0)
    {
      return xmmword_1AFE201A0;
    }

    else
    {

      v7 = sub_1AF3CA0E0(v4 | (v5 << 32));
      v9 = v8;

      result = xmmword_1AFE201A0;
      if ((v9 & 1) == 0)
      {
        result.n128_u64[0] = v7;
      }
    }
  }

  return result;
}

uint64_t sub_1AFCEB4A4(__n128 a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v5 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v6 = *(v4 + 4);

    if (v5 != -1 || v6 != 0)
    {
      v8 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v8)
      {
        v9 = *(v8 + 80);
        swift_unknownObjectWeakLoadStrong();
        v8 = *(v8 + 56);
      }

      else
      {
        v9 = 0;
      }

      swift_unknownObjectUnownedInit();
      v12[0] = v3;
      v12[2] = v8;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v13 = v9;
      sub_1AFC76C74(v12, v5 | (v6 << 32), a1);
      sub_1AF579490(v12);
      if (v9)
      {
        v10 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v10 ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_1AFCEB620@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  v5 = xmmword_1AFE201A0;
  if (result)
  {
    v6 = v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v7 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v8 = *(v6 + 4);

    if (v7 == -1 && v8 == 0)
    {
      v5 = xmmword_1AFE201A0;
    }

    else
    {

      v10 = sub_1AF3CA0E0(v7 | (v8 << 32));
      v12 = v11;
      v14 = v13;

      v5 = xmmword_1AFE201A0;
      if ((v14 & 1) == 0)
      {
        *&v5 = v10;
        *(&v5 + 1) = v12;
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1AFCEB6E4(__n128 *a1, uint64_t *a2)
{
  v6 = *a1;
  v2 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v5 = result;

    return sub_1AFC754E0(v4, v5, v6);
  }

  return result;
}

void (*sub_1AFCEB768(uint64_t *a1))(__n128 **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  Strong = swift_weakLoadStrong();
  v7 = xmmword_1AFE201A0;
  if (Strong)
  {
    v8 = v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
    v9 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v10 = *(v8 + 4);

    if (v9 == -1 && v10 == 0)
    {
      v7 = xmmword_1AFE201A0;
    }

    else
    {

      v12 = sub_1AF3CA0E0(v9 | (v10 << 32));
      v14 = v13;
      v16 = v15;

      v7 = xmmword_1AFE201A0;
      if ((v16 & 1) == 0)
      {
        *&v7 = v12;
        *(&v7 + 1) = v14;
      }
    }
  }

  *v4 = v7;
  return sub_1AFCEB874;
}

void sub_1AFCEB874(__n128 **a1)
{
  v1 = *a1;
  v10 = **a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = (v1[3].n128_u64[0] + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = *v3;
    v5 = v3[1];

    if (v4 != -1 || v5 != 0)
    {
      v7 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

      if (v7)
      {
        v8 = *(v7 + 80);
        swift_unknownObjectWeakLoadStrong();
        v7 = *(v7 + 56);
      }

      else
      {
        v8 = 0;
      }

      v1[2].n128_u64[0] = 0;
      swift_unknownObjectUnownedInit();
      v1[1].n128_u64[0] = Strong;
      v1[2].n128_u64[0] = v7;
      swift_unknownObjectUnownedAssign();
      swift_unownedRetain();
      swift_unknownObjectRelease();
      v1[2].n128_u8[8] = v8;
      sub_1AFC76C74(v1[1].n128_u64, v4 | (v5 << 32), v10);
      sub_1AF579490(&v1[1]);
      if (v8)
      {
        v9 = [objc_opt_self() immediateMode];
        sub_1AF6C5E30(v9 ^ 1);
      }
    }
  }

  free(v1);
}

double sub_1AFCEBA98()
{
  Strong = swift_weakLoadStrong();
  __asm { FMOV            V0.4S, #1.0 }

  if (Strong)
  {
    v7 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v11 = _Q0;

    v8 = sub_1AF5F28AC(v7);
    *&_Q0 = v11;
    if ((v9 & 1) == 0)
    {
      *&_Q0 = v8;
    }
  }

  return *&_Q0;
}

uint64_t sub_1AFCEBBB4(__n128 a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v4 = result;

    return sub_1AF5F29B4(a1.n128_i64[0], a1.n128_u64[1], 0, v3, v4);
  }

  return result;
}

unint64_t sub_1AFCEBC3C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  __asm { FMOV            V0.4S, #1.0 }

  if (result)
  {
    v10 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v13 = _Q0;

    result = sub_1AF5F28AC(v10);
    _Q0 = v13;
    if ((v12 & 1) == 0)
    {
      *&_Q0 = result;
      *(&_Q0 + 1) = v11;
    }
  }

  *a2 = _Q0;
  return result;
}

uint64_t sub_1AFCEBCC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(v4 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v7 = result;

    return sub_1AF5F29B4(v3, v2, 0, v6, v7);
  }

  return result;
}

void (*sub_1AFCEBD48(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  Strong = swift_weakLoadStrong();
  __asm { FMOV            V0.4S, #1.0 }

  if (Strong)
  {
    v12 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v17 = _Q0;

    v13 = sub_1AF5F28AC(v12);
    _Q0 = v17;
    if ((v15 & 1) == 0)
    {
      *&_Q0 = v13;
      *(&_Q0 + 1) = v14;
    }
  }

  *v4 = _Q0;
  return sub_1AFCEBE10;
}

void sub_1AFCEBE10(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(v1[2] + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
    v6 = Strong;

    sub_1AF5F29B4(v3, v2, 0, v5, v6);
  }

  free(v1);
}

uint64_t sub_1AFCEBF4C()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_weakLoadStrong();
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v5 = v3;

      v6 = sub_1AF66D228(v2, v4, v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1AFCEC0DC(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v7 = Strong;

      sub_1AF66ACE0(v4, v6, v7, a1 & 1);
    }
  }

  return result;
}

uint64_t sub_1AFCEC184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v8 = Strong;

      v9 = sub_1AF66D228(v5, v7, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1AFCEC228(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v8 = Strong;

      sub_1AF66ACE0(v5, v7, v8, v2);
    }
  }

  return result;
}

uint64_t (*sub_1AFCEC2D4(uint64_t a1))(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *a1 = v1;
  *(a1 + 8) = v3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v8 = v6;

      v9 = sub_1AF66D228(v5, v7, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 16) = 0;
  *(a1 + 24) = v9 & 1;
  return sub_1AFCEC3A0;
}

uint64_t sub_1AFCEC3A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  result = swift_weakLoadStrong();
  v4 = result;
  if (result)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v7 = Strong;

      sub_1AF66ACE0(v4, v6, v7, v2);
    }
  }

  return result;
}

uint64_t sub_1AFCEC548()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v5 = Strong;

      v7 = sub_1AF671300(v6, v2, v4, v5);

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFCEC678(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = *(v2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v9 = v7;

      sub_1AF66AE60(v10, v6, v8, v9, a1, a2);
    }
  }
}

uint64_t sub_1AFCEC768@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = result;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_5:
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v7 = *(v3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v8 = Strong;

  v10 = sub_1AF671300(v9, v5, v7, v8);
  v12 = v11;

LABEL_6:
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_1AFCEC81C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1AF66DBF0(a1);
  if (result)
  {
    sub_1AF67E3AC(result, v5, a1, &v17);
    if (*(&v18 + 1))
    {
      sub_1AF0FBA54(&v17, v16);
      sub_1AF441194(v16, &v17);
      sub_1AF4498F4(0, &qword_1ED72FFF0);
      sub_1AF4498F4(0, &qword_1EB644070);
      if (swift_dynamicCast())
      {
        sub_1AF0FBA54(v11, v13);
        v6 = v14;
        v7 = v15;
        sub_1AF441150(v13, v14);
        (*(v7 + 16))(&v17, v6, v7);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
        v8 = v17;
        v11[0] = v18;
        sub_1AF585778(v11);
        v20 = v19;
        sub_1AFCF466C(&v20, sub_1AF8FE0E0);
        *a2 = v8;
        return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
      }

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v16);
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      v9 = sub_1AFCF4600;
      v10 = v11;
    }

    else
    {
      v9 = sub_1AF80E170;
      v10 = &v17;
    }

    result = sub_1AFCF466C(v10, v9);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AFCEC9D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1AF441194(a1, v18);
  sub_1AF4498F4(0, &qword_1ED72FFF0);
  sub_1AF4498F4(0, &qword_1EB644070);
  if (swift_dynamicCast())
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    sub_1AF0FBA54(v16, v19);
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      a2 = 0;
      v6 = 0xE000000000000000;
    }

    v7 = v20;
    v8 = v21;
    sub_1AF448018(v19, v20);
    v9 = *(v8 + 32);

    v10 = v9(v18, v7, v8);
    sub_1AF8E1C20(a2, v6);
    v10(v18, 0);
    v11 = v20;
    v12 = v21;
    v13 = sub_1AF441150(v19, v20);
    a1[3] = v11;
    a1[4] = *(v12 + 8);
    v14 = sub_1AF585714(a1);
    (*(*(v11 - 8) + 16))(v14, v13, v11);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v19);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    return sub_1AFCF466C(v16, sub_1AFCF4600);
  }
}

void (*sub_1AFCECBA0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entityManager;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = swift_weakLoadStrong();
  if (!v8)
  {

LABEL_8:
    v12 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v9 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v10 = v8;

  v12 = sub_1AF671300(v11, v7, v9, v10);
  v14 = v13;

LABEL_9:
  v4[4] = 0;
  *v4 = v12;
  v4[1] = v14;
  return sub_1AFCECCA8;
}

void sub_1AFCECCA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    sub_1AFCEC678(v3, v4);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = swift_weakLoadStrong();
      if (v7)
      {
        v8 = *(v2[2] + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
        v9 = v7;

        sub_1AF66AE60(v10, v6, v8, v9, v3, v4);
      }
    }
  }

  free(v2);
}

BOOL sub_1AFCECE24()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    v3 = v0;
    v4 = sub_1AF6725C4(v2, v2, v3);
  }

  else
  {
    return 1;
  }

  return v4;
}

uint64_t sub_1AFCECEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v4 = *(a2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
  v5 = *(a2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v6 = v5 == -1 && v4 == 0;
  if (v6 || (v5 & 0x80000000) != 0 || *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v5 || ((v7 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5), v4 != -1) ? (v8 = v7[2] == v4) : (v8 = 1), !v8 || (result = sub_1AF6856B0(*(*(a1 + 144) + 8 * *v7 + 32), *(v7 + 2), 104), result == 3)))
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v10 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v10);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    *a3 = result == 2;
  }

  return result;
}

uint64_t sub_1AFCED058(float a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *(v1 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
      v7 = Strong;

      sub_1AF66B4BC(v4, v6, v7, a1);
    }
  }

  return result;
}

double sub_1AFCED224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v43 = qword_1ED73B840;
  v44 = 0;
  v45 = 2;
  v46 = 0;
  v47 = 2;
  v48 = 0;
  sub_1AFCF45A4(0, &qword_1ED7269A0, &qword_1ED7270C0, &qword_1ED7270D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Particle;
  *(inited + 40) = &off_1F252D7A8;
  sub_1AF5F58E4(inited, 1, v15);
  swift_setDeallocating();
  sub_1AFA1CF6C();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 56) = &type metadata for EmitterReference;
  *(v7 + 64) = &off_1F2563D20;
  *(v7 + 32) = v5;
  v8 = v7 + 32;
  sub_1AF5FC13C(v7, v16);
  sub_1AF692DB0(v15);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v8);
  v9 = v16[0];
  v10 = v17;
  v11 = v18;
  v12 = v19;
  *&v40 = v16[0];
  DWORD2(v40) = 0;
  BYTE12(v40) = 2;
  *&v41 = v17;
  BYTE8(v41) = v18;
  v42 = v19;

  *(a1 + 56) = v40;
  *(a1 + 72) = v41;
  *(a1 + 88) = v42;
  sub_1AF6B06C0(a3, &v40, 0x200000000, &v20);
  if (v20)
  {
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v27 = v20;
    v33 = v26;
    v28 = v21;
    v29 = v22;
    sub_1AF6B8EAC(0);
    sub_1AFCEFD2C(&v20, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  v34 = v9;
  v35 = 0;
  v36 = 2;
  v37 = v10 | 0x10;
  v38 = v11;
  v39 = v12;

  sub_1AF6234A4(&v34);
  sub_1AF692DB0(v16);
  if (*(*(a1 + 256) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a1 + 256);
    sub_1AFB92608();
    sub_1AFDFE4B8();
    *(a1 + 256) = v14;
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  swift_unknownObjectRelease();
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  swift_unknownObjectRelease();
  *(a1 + 528) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  swift_unknownObjectRelease();
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  swift_unknownObjectRelease();
  *(a1 + 456) = 0;
  result = 0.0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  return result;
}

uint64_t sub_1AFCED598(void (*a1)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v6 = *&v1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
      v7 = Strong;

      v8 = v1;

      a1(v9, v6, v7, v8, v4);
    }
  }

  return result;
}

uint64_t sub_1AFCED660(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    bzero(v16, 0x348uLL);
    return sub_1AFCEFD2C(v16, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  sub_1AF3CB0C0(a1, v16);

  if (!*&v16[56])
  {
    return sub_1AFCEFD2C(v16, &qword_1ED722AC0, &type metadata for EmitterRuntime, MEMORY[0x1E69E6720], sub_1AFCF4720);
  }

  sub_1AF9FA090(v16, v17);

  sub_1AF3CA1CC(a1, &v10);

  if (v10)
  {
    *v16 = v10;
    *&v16[40] = v13;
    *&v16[56] = v14;
    *&v16[72] = v15[0];
    *&v16[84] = *(v15 + 12);
    *&v16[8] = v11;
    *&v16[24] = v12;
    LOBYTE(v8[0]) = 1;
    sub_1AFB7BFB0(*(a3 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity), 0x100000000uLL, v16, v17, a4, 0);
    v8[4] = *&v16[64];
    v8[5] = *&v16[80];
    v9 = *&v16[96];
    v8[0] = *v16;
    v8[1] = *&v16[16];
    v8[2] = *&v16[32];
    v8[3] = *&v16[48];
    sub_1AF57A684(v8);
  }

  return sub_1AF58D38C(v17);
}

void sub_1AFCED808(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = *&a1[OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity];
      v10 = a1;

      v12 = v10;

      a3(v11, v9, v8, v12, v6);
    }

    else
    {
    }
  }
}

BOOL sub_1AFCED948()
{
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v1 = v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
  v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
  v3 = *(v1 + 4);

  if (v2 == -1 && v3 == 0)
  {
    return 0;
  }

  v5 = sub_1AF67CACC(&type metadata for EmitterDescription, &off_1F2563548, v2 | (v3 << 32));

  return v5;
}

uint64_t sub_1AFCEDA18()
{
  if (qword_1ED730448)
  {
    sub_1AFA1CCB4();
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity;
      v4 = (v1 + 40);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v8 = *(v0 + v3);
          v9 = Strong;

          if (sub_1AF657014(v5, v8, v9, v5, v6))
          {
            v10 = 1;
            goto LABEL_11;
          }
        }

        v4 += 2;
        --v2;
      }

      while (v2);
      v10 = 0;
    }

    else
    {
      v10 = 0;
    }

LABEL_11:

    return v10;
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFCEDB40()
{
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for VFXScene(0);
      if (swift_dynamicCastClass())
      {
        v1 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity);
        v2 = *(v0 + OBJC_IVAR____TtC3VFX20EntityPropertyHelper_entity + 4);
        if (v1 != -1 || v2 != 0)
        {
          v4 = sub_1AF9F8EF8(v1 | (v2 << 32));

          swift_unknownObjectRelease();
          return v4;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return MEMORY[0x1E69E7CC0];
}