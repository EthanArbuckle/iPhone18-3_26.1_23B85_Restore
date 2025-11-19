uint64_t sub_2723F3358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893EB0, &unk_2723FFC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723F33E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2723F344C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 253;
}

void sub_2723F3558(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

id sub_2723F37BC()
{
  result = [objc_allocWithZone(VCSignposts) init];
  qword_280895EF0 = result;
  return result;
}

void __swiftcall VCSignposts.init()(VCSignposts *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id static VCSignposts.shared.getter()
{
  if (qword_280893E08 != -1)
  {
    swift_once();
  }

  v1 = qword_280895EF0;

  return v1;
}

uint64_t sub_2723F3910(uint64_t a1, unint64_t a2, const char *a3)
{
  v26 = a1;
  v6 = sub_2723FE3E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2723FE414();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723D9230(v3 + OBJC_IVAR___VCSignposts_sVCSignposter, v27);
  swift_dynamicCast();

  sub_2723FE3D4();
  v16 = sub_2723FE3F4();
  v25 = sub_2723FE8B4();

  if (sub_2723FE904())
  {
    v17 = swift_slowAlloc();
    v24 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v23 = a3;
    v20 = v19;
    v27[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_2723E4A00(v26, a2, v27);
    v21 = sub_2723FE3C4();
    _os_signpost_emit_with_name_impl(&dword_2723CB000, v16, v25, v21, v23, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2743C8040](v20, -1, -1);
    MEMORY[0x2743C8040](v18, -1, -1);

    (*(v7 + 8))(v10, v24);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2723F3BC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_2723FE5B4();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_2723F3EE0(const char *a1)
{
  v3 = sub_2723FE3E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE414();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723D9230(v1 + OBJC_IVAR___VCSignposts_sVCSignposter, v23);
  swift_dynamicCast();
  sub_2723FE3D4();
  v13 = sub_2723FE3F4();
  v14 = sub_2723FE8B4();
  if (sub_2723FE904())
  {
    v15 = swift_slowAlloc();
    v22 = v3;
    v16 = a1;
    v17 = v15;
    *v15 = 0;
    v18 = sub_2723FE3C4();
    v19 = v16;
    v3 = v22;
    _os_signpost_emit_with_name_impl(&dword_2723CB000, v13, v14, v18, v19, "", v17, 2u);
    MEMORY[0x2743C8040](v17, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

id VCSignposts.init()()
{
  v1 = &v0[OBJC_IVAR___VCSignposts_sVCSignposter];
  v1[3] = sub_2723FE414();
  __swift_allocate_boxed_opaque_existential_0(v1);
  sub_2723FE404();
  v3.receiver = v0;
  v3.super_class = VCSignposts;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for VCSignposts()
{
  result = qword_280894250;
  if (!qword_280894250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280894250);
  }

  return result;
}

id sub_2723F42F4()
{
  result = [objc_allocWithZone(VCSettingsObjC) init];
  qword_280895EF8 = result;
  return result;
}

id static VCSettingsObjC.shared.getter()
{
  if (qword_280893E10 != -1)
  {
    swift_once();
  }

  v1 = qword_280895EF8;

  return v1;
}

BOOL VCSettingsObjC.enabled.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return _AXSCommandAndControlEnabled() != 0;
}

uint64_t VCSettingsObjC.enabled.setter(char a1)
{
  if (qword_280893DC8 == -1)
  {
    v2 = a1 & 1;
  }

  else
  {
    swift_once();
    v2 = a1 & 1;
  }

  return MEMORY[0x2821EFF28](v2);
}

uint64_t VCSettingsObjC.supportedLocales.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }
}

uint64_t VCSettingsObjC.bestSupportedLocale(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v6 = qword_280894088;
  v7 = [objc_opt_self() sharedPreferences];
  v8 = [v7 languageCode];

  if (v8)
  {
    v9 = sub_2723FE5B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v6, a1, a2, v9, v11, a3);
}

uint64_t VCSettingsObjC.activeLocale.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_2723EC124();
  v4 = v3;
  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v5 = qword_280894088;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    v8 = sub_2723FE5B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  sub_2723FE2F4();
  sub_2723EB6EC(v5, v2, v4, v8, v10, a1);
}

void sub_2723F5098(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 alwaysShowOverlayType];
  v4 = sub_2723FE5B4();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

BOOL VCSettingsObjC.showUserHints.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return sub_2723EC990() == 3;
}

uint64_t VCSettingsObjC.carPlayDebugOverlayUIEnabled.getter()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v0 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v0)
  {
    v1 = v0;
    v2 = sub_2723E842C(0xAu);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_2723F5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_280893DC8 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return a3() & 1;
}

uint64_t sub_2723F5480(uint64_t (*a1)(void))
{
  if (qword_280893DC8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1() & 1;
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE18setPreferredLocaleyySSSgF_0(uint64_t result, uint64_t a2)
{
  if (qword_280893DC8 != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  v3 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    if (a2)
    {
      v4 = MEMORY[0x277D837D0];
      v5 = a2;
    }

    else
    {
      result = 0;
      v5 = 0;
      v4 = 0;
      v8[2] = 0;
    }

    v8[0] = result;
    v8[1] = v5;
    v8[3] = v4;
    v6 = v3;

    sub_2723E88C8(v8, 1u);

    return sub_2723EF760(v8);
  }

  return result;
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE21alwaysShowOverlayTypeSSvg_0()
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  VCSettings.alwaysShowOverlayType.getter(&v5);
  if (v5 <= 3u)
  {
    v3 = 1701736270;
    v4 = 0x656C4564656D614ELL;
    if (v5 != 2)
    {
      v4 = 0x64657265626D754ELL;
    }

    if (v5)
    {
      v3 = 0xD000000000000010;
    }

    if (v5 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v0 = 0xD000000000000012;
    v1 = 0xD000000000000011;
    if (v5 != 7)
    {
      v1 = 0xD000000000000012;
    }

    if (v5 != 6)
    {
      v0 = v1;
    }

    if (v5 <= 5u)
    {
      return 0x64657265626D754ELL;
    }

    else
    {
      return v0;
    }
  }
}

uint64_t _sSo14VCSettingsObjCC12VoiceControlE13showUserHintsSbvs_0(uint64_t result)
{
  if (qword_280893DC8 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v1)
  {
    v2 = 3;
    if ((result & 1) == 0)
    {
      v2 = 0;
    }

    v5[3] = MEMORY[0x277D83B88];
    v5[0] = v2;
    v3 = v1;
    sub_2723E88C8(v5, 6u);

    return sub_2723EF760(v5);
  }

  return result;
}

id _sSo14VCSettingsObjCC12VoiceControlE21syncVocabularyEntriesSbvs_0(char a1)
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = qword_280894080;
  result = [objc_opt_self() vocabularySyncEnabled];
  if (result)
  {
    v4 = *(v2 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
    if (v4)
    {
      v7 = MEMORY[0x277D839B0];
      v6[0] = a1 & 1;
      v5 = v4;
      sub_2723E88C8(v6, 8u);

      return sub_2723EF760(v6);
    }
  }

  return result;
}

uint64_t sub_2723F591C(uint64_t result, unsigned __int8 a2)
{
  if (qword_280893DC8 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
  }

  v3 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v3)
  {
    v7 = MEMORY[0x277D839B0];
    v6[0] = result & 1;
    v4 = v3;
    sub_2723E88C8(v6, a2);

    return sub_2723EF760(v6);
  }

  return result;
}

id sub_2723F59D8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabled];
  *a2 = result;
  return result;
}

void sub_2723F5A30(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = sub_2723FE574();
  [v4 setAlwaysShowOverlayType_];
}

id sub_2723F5AA0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 playSoundUponRecognition];
  *a2 = result;
  return result;
}

id sub_2723F5AF4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showTextResponseUponRecognition];
  *a2 = result;
  return result;
}

id sub_2723F5B48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showUserHints];
  *a2 = result;
  return result;
}

id sub_2723F5B9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 syncVocabularyEntries];
  *a2 = result;
  return result;
}

id sub_2723F5BF0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 persistentSleepState];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for VCSettingsObjC()
{
  result = qword_280894258;
  if (!qword_280894258)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280894258);
  }

  return result;
}

uint64_t sub_2723F5C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v24 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2723F8080(a1);
    v14 = *v3;
    v15 = sub_2723E4FAC(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2723D7678();
        v20 = v25;
      }

      sub_2723F80E8(*(v20 + 56) + *(v10 + 72) * v17, v8);
      sub_2723F7474(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_2723F8080(v8);
  }

  else
  {
    sub_2723F80E8(a1, v13);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_2723D72A8(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

unint64_t VCLogger(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v15 - v7);
  result = *a1;
  if (qword_280893E18 != -1)
  {
    v14 = *a1;
    swift_once();
    result = v14;
  }

  v10 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(result);
    if (v11)
    {
      sub_2723F7404(v10[7] + *(v5 + 72) * result, v8);

      v12 = *(v4 + 48);
      v13 = sub_2723FE434();
      return (*(*(v13 - 8) + 32))(a2, v8 + v12, v13);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

VoiceControl::VCLogging::Category_optional __swiftcall VCLogging.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2723FEC54();

  v5 = 0;
  v6 = 25;
  switch(v3)
  {
    case 0:
      goto LABEL_39;
    case 1:
      v5 = 1;
      goto LABEL_39;
    case 2:
      v5 = 2;
      goto LABEL_39;
    case 3:
      v5 = 3;
      goto LABEL_39;
    case 4:
      v5 = 4;
      goto LABEL_39;
    case 5:
      v5 = 5;
      goto LABEL_39;
    case 6:
      v5 = 6;
      goto LABEL_39;
    case 7:
      v5 = 7;
      goto LABEL_39;
    case 8:
      v5 = 8;
      goto LABEL_39;
    case 9:
      v5 = 9;
      goto LABEL_39;
    case 10:
      v5 = 10;
      goto LABEL_39;
    case 11:
      v5 = 11;
      goto LABEL_39;
    case 12:
      v5 = 12;
      goto LABEL_39;
    case 13:
      v5 = 13;
      goto LABEL_39;
    case 14:
      v5 = 14;
      goto LABEL_39;
    case 15:
      v5 = 15;
      goto LABEL_39;
    case 16:
      v5 = 16;
      goto LABEL_39;
    case 17:
      v5 = 17;
      goto LABEL_39;
    case 18:
      v5 = 18;
      goto LABEL_39;
    case 19:
      v5 = 19;
      goto LABEL_39;
    case 20:
      v5 = 20;
      goto LABEL_39;
    case 21:
      v5 = 21;
      goto LABEL_39;
    case 22:
      v5 = 22;
      goto LABEL_39;
    case 23:
      v5 = 23;
      goto LABEL_39;
    case 24:
      v5 = 24;
LABEL_39:
      v6 = v5;
      break;
    case 25:
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    default:
      v6 = 43;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t VCLogging.Category.rawValue.getter()
{
  result = 0x6669636570736E75;
  switch(*v0)
  {
    case 1:
      return 5395265;
    case 2:
      return 0x737465737361;
    case 3:
      return 0x6F4D676E69646F63;
    case 4:
      return 0x65727574616566;
    case 5:
      return 0x6C6379636566696CLL;
    case 6:
      return 0x656C61636F6CLL;
    case 7:
      return 0x73676E6974746573;
    case 8:
      return 0x616C756261636F76;
    case 9:
    case 0x16:
    case 0x25:
      return 0xD000000000000013;
    case 0xA:
      return 0xD000000000000010;
    case 0xB:
    case 0xC:
      v3 = 1098019684;
      return v3 | 0x6F69647500000000;
    case 0xD:
      v4 = 1131574116;
      goto LABEL_26;
    case 0xE:
      v2 = 1198682980;
      goto LABEL_7;
    case 0xF:
    case 0x11:
    case 0x1B:
      return 0xD000000000000011;
    case 0x10:
      return 0x74694B4F49727364;
    case 0x12:
      return 0x617267694D727364;
    case 0x13:
      v5 = 1349677924;
      goto LABEL_31;
    case 0x14:
    case 0x19:
    case 0x20:
    case 0x21:
    case 0x22:
      return 0xD000000000000014;
    case 0x15:
      return 0x6574737953727364;
    case 0x17:
      return 0x656C454955727364;
    case 0x18:
      return 0xD000000000000010;
    case 0x1A:
      return 0xD000000000000010;
    case 0x1C:
      v3 = 1097032035;
      return v3 | 0x6F69647500000000;
    case 0x1D:
      return 0x6552677542636163;
    case 0x1E:
      v4 = 1130586467;
LABEL_26:
      result = v4 | 0x65746E6F00000000;
      break;
    case 0x1F:
      result = 0x6572726F43636163;
      break;
    case 0x23:
      result = 0xD000000000000010;
      break;
    case 0x24:
      v2 = 1197695331;
LABEL_7:
      result = v2 | 0x72656E6500000000;
      break;
    case 0x26:
      result = 0x64697247636163;
      break;
    case 0x27:
      v5 = 1348690275;
LABEL_31:
      result = v5 | 0x6566657200000000;
      break;
    case 0x28:
      result = 0x676F636552636163;
      break;
    case 0x29:
      result = 0xD000000000000010;
      break;
    case 0x2A:
      result = 0x5064726F57636163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2723F6774(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VCLogging.Category.rawValue.getter();
  v4 = v3;
  if (v2 == VCLogging.Category.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2723FEC44();
  }

  return v7 & 1;
}

uint64_t sub_2723F6810()
{
  v1 = *v0;
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723F6878()
{
  v2 = *v0;
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();
}

uint64_t sub_2723F68DC()
{
  v1 = *v0;
  sub_2723FEC94();
  VCLogging.Category.rawValue.getter();
  sub_2723FE634();

  return sub_2723FECB4();
}

uint64_t sub_2723F694C@<X0>(uint64_t *a1@<X8>)
{
  result = VCLogging.Category.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2723F6A34()
{
  result = sub_2723F6A54();
  off_280894260 = result;
  return result;
}

unint64_t sub_2723F6A54()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v18 - v1;
  v3 = sub_2723FE434();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2723D7CF0(MEMORY[0x277D84F90]);
  v8 = sub_2723F8038(0, &qword_2808942A8, 0x277D86200);
  v9 = 0;
  v10 = (v4 + 16);
  v11 = (v4 + 8);
  v18[2] = "persistentSleepState";
  v18[3] = v8;
  v18[0] = "sertion";
  v18[1] = "defaultsVocabulary";
  do
  {
    v15 = byte_28819F6B0[v9 + 32];
    v21 = byte_28819F6B0[v9 + 32];
    VCLogging.Category.rawValue.getter();
    v16 = sub_2723F704C();

    if ((v16 & 1) == 0)
    {
      v20 = v15;
      VCLogging.Category.rawValue.getter();
      sub_2723F704C();
    }

    ++v9;
    v19 = v15;
    VCLogging.Category.osLogCategory.getter();
    v12 = sub_2723FE914();
    sub_2723FE444();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
    v14 = *(v13 + 48);
    *v2 = v12;
    (*v10)(&v2[v14], v7, v3);
    (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
    sub_2723F5C84(v2, v15);
    (*v11)(v7, v3);
  }

  while (v9 != 43);
  return v22;
}

unint64_t VCLogging.Category.osLogSubsystem.getter()
{
  v1 = *v0;
  VCLogging.Category.rawValue.getter();
  v2 = sub_2723F704C();

  if (v2)
  {
    return 0xD000000000000022;
  }

  VCLogging.Category.rawValue.getter();
  v4 = sub_2723F704C();

  if (v4)
  {
    return 0xD000000000000033;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t VCLogging.Category.osLogCategory.getter()
{
  v1 = *v0;
  VCLogging.Category.rawValue.getter();
  v2 = sub_2723F704C();

  if (v2)
  {
    VCLogging.Category.rawValue.getter();
    sub_2723F7678(3);

    v3 = sub_2723FE944();

    v4 = VCLogging.Category.rawValue.getter();
    sub_2723F7714(3uLL, v4, v5);

    sub_2723F77C4();
    sub_2723FE654();

    return v3;
  }

  else
  {
    VCLogging.Category.rawValue.getter();
    v7 = sub_2723F704C();

    if (v7)
    {
      v8 = VCLogging.Category.rawValue.getter();
      v10 = sub_2723F7714(3uLL, v8, v9);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = MEMORY[0x2743C7240](v10, v12, v14, v16);

      return v17;
    }

    else
    {
      VCLogging.Category.rawValue.getter();
      v18 = sub_2723FE604();

      return v18;
    }
  }
}

uint64_t sub_2723F704C()
{

  v0 = sub_2723FE674();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_2723FE674();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_2723FEC44();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_2723FE674();
      v3 = v5;
    }

    while (v5);
  }

  sub_2723FE674();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t VCLogging.Category.osLogMacroName.getter()
{
  v1 = *v0;
  VCLogging.Category.rawValue.getter();
  sub_2723F7678(1);

  v2 = sub_2723FE944();
  v4 = v3;

  MEMORY[0x2743C7290](v2, v4);

  v5 = VCLogging.Category.rawValue.getter();
  sub_2723F7714(1uLL, v5, v6);

  sub_2723F77C4();
  sub_2723FE654();

  return 0x676F4C4356;
}

VCLog __swiftcall VCLog.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2723F7404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2723F7474(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2723FE9D4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_2723FEC94();
      VCLogging.Category.rawValue.getter();
      sub_2723FE634();

      result = sub_2723FECB4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

  return result;
}

uint64_t sub_2723F7678(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2723FE644();

    return sub_2723FE6F4();
  }

  return result;
}

unint64_t sub_2723F7714(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_2723FE644();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_2723FE6F4();
}

unint64_t sub_2723F77C4()
{
  result = qword_280894268;
  if (!qword_280894268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894268);
  }

  return result;
}

unint64_t sub_2723F7818(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  result = *a1;
  if (qword_280893E18 != -1)
  {
    v13 = *a1;
    swift_once();
    result = v13;
  }

  v8 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(result);
    if (v9)
    {
      sub_2723F7404(v8[7] + *(v3 + 72) * result, v6);
      v10 = *v6;
      v11 = *(v2 + 48);
      v12 = sub_2723FE434();
      (*(*(v12 - 8) + 8))(&v6[v11], v12);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSo5VCLogC12VoiceControlE25isSensitiveLoggingEnabledSbvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v27 - v2;
  v4 = sub_2723FE174();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2723FE1F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC91D0], v4);
  (*(v10 + 56))(v3, 1, 1, v9);
  sub_2723FE1D4();
  v14 = [objc_opt_self() defaultManager];
  sub_2723FE1C4();
  v15 = sub_2723FE574();

  v16 = [v14 fileExistsAtPath_];

  if (!v16)
  {
LABEL_16:
    (*(v10 + 8))(v13, v9);
    return v16 & 1;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v18 = sub_2723FE1B4();
  v19 = [v17 initWithContentsOfURL_];

  if (v19)
  {
    v28[0] = 0;
    sub_2723FE4A4();

    v20 = v28[0];
    if (v28[0])
    {
      if (!*(v28[0] + 16))
      {
        goto LABEL_13;
      }

      v21 = sub_2723E4F34(7500641, 0xE300000000000000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_2723D9230(*(v20 + 56) + 32 * v21, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_14;
      }

      v23 = v27[0];
      if (!*(v27[0] + 16) || (v24 = sub_2723E4F34(0xD000000000000014, 0x8000000272401B60), (v25 & 1) == 0))
      {
LABEL_13:

        goto LABEL_14;
      }

      sub_2723D9230(*(v23 + 56) + 32 * v24, v28);

      if (swift_dynamicCast())
      {
        if (v27[0] == 0x76697469736E6553 && v27[1] == 0xE900000000000065)
        {

          LOBYTE(v16) = 1;
        }

        else
        {
          LOBYTE(v16) = sub_2723FEC44();
        }

        goto LABEL_16;
      }
    }
  }

LABEL_14:
  (*(v10 + 8))(v13, v9);
  LOBYTE(v16) = 0;
  return v16 & 1;
}

unint64_t sub_2723F7DB4()
{
  result = qword_280894270;
  if (!qword_280894270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894270);
  }

  return result;
}

unint64_t sub_2723F7E0C()
{
  result = qword_280894278;
  if (!qword_280894278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280894280, &qword_272400648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894278);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VCLogging.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 42;
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

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCLogging.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
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
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2723F7FE4()
{
  result = qword_280894290;
  if (!qword_280894290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280894290);
  }

  return result;
}

uint64_t sub_2723F8038(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2723F8080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808942A0, &qword_272400758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2723F80E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VCAssetStatus.description.getter()
{
  v1 = 0x7070757320746F6ELL;
  v2 = 0x696C6C6174736E69;
  if (*v0 != 2)
  {
    v2 = 0x656C6C6174736E69;
  }

  if (*v0)
  {
    v1 = 0x74736E6920746F6ELL;
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

uint64_t VCAssetStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2723FEC94();
  MEMORY[0x2743C78D0](v1);
  return sub_2723FECB4();
}

uint64_t sub_2723F8288()
{
  v1 = 0x7070757320746F6ELL;
  v2 = 0x696C6C6174736E69;
  if (*v0 != 2)
  {
    v2 = 0x656C6C6174736E69;
  }

  if (*v0)
  {
    v1 = 0x74736E6920746F6ELL;
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

uint64_t static VCSpeechAsset.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2723F8038(0, &qword_2808942B0, 0x277D82BB8);
  v4 = *(a1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v5 = *(a2 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  return sub_2723FE8E4() & 1;
}

uint64_t VCSpeechAsset.hash(into:)()
{
  v1 = sub_2723FE334();
  MEMORY[0x2743C78D0](v1);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v3 = sub_2723FE8F4();
  return MEMORY[0x2743C78D0](v3);
}

uint64_t VCSpeechAsset.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v4 = sub_2723FE344();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VCSpeechAsset.language.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
  v2 = sub_2723FE5B4();

  return v2;
}

uint64_t VCSpeechAsset.status.getter@<X0>(char *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v4 = sub_2723FD1B8(1005);
  v24 = v3;
  v5 = *(sub_2723D29CC(sub_2723FDFE0, v23, v4) + 16);

  if (!v5)
  {
    goto LABEL_5;
  }

  v7 = objc_opt_self();
  v8 = [v7 installedLanguagesForTaskHint_];
  v9 = sub_2723FE804();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_2723D612C(*(v9 + 16), 0);
    v12 = sub_2723D7A68(&v25, v11 + 4, v10, v9);
    result = sub_2723D8970();
    if (v12 != v10)
    {
      __break(1u);
LABEL_5:
      v13 = 0;
      goto LABEL_14;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](result);
  v22 = v3;
  v14 = *(sub_2723D29CC(sub_2723FD718, v21, v11) + 16);

  if (v14)
  {
    v13 = 3;
  }

  else
  {
    v15 = sub_2723FE574();
    v16 = [v7 subscriptionsForClientIdentifier_];

    sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
    v17 = sub_2723FE744();

    MEMORY[0x28223BE20](v18);
    v22 = v3;
    v19 = sub_2723D2B44(sub_2723FD738, v21, v17);
    if (v19 >> 62)
    {
      v20 = sub_2723FEB04();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v20)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

LABEL_14:
  *a1 = v13;
  return result;
}

uint64_t VCSpeechAsset.assetURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2723FE174();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = objc_opt_self();
  v13 = *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v14 = sub_2723FE574();
  v15 = [v12 pathToAssetWithConfig:v13 clientIdentifier:v14];

  if (v15)
  {
    sub_2723FE5B4();

    v16 = sub_2723FE1F4();
    v17 = *(*(v16 - 8) + 56);
    v17(v11, 1, 1, v16);
    (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
    sub_2723FE1D4();
    return (v17)(a1, 0, 1, v16);
  }

  else
  {
    v19 = sub_2723FE1F4();
    v20 = *(*(v19 - 8) + 56);

    return v20(a1, 1, 1, v19);
  }
}

void VCSpeechAsset.install(progress:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_opt_self();
  v15 = *(v4 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v16 = v9;
  v10 = sub_2723FE574();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v21 = sub_2723FD798;
  v22 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2723F8C3C;
  v20 = &block_descriptor_0;
  v12 = _Block_copy(&aBlock);
  sub_2723FD7B8(a1);

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v4;
  v21 = sub_2723FD810;
  v22 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_2723F90D0;
  v20 = &block_descriptor_6;
  v14 = _Block_copy(&aBlock);
  sub_2723FD7B8(a3);

  [v16 fetchAssetWithConfig:v15 clientIdentifier:v10 detailedProgress:v12 completion:v14];
  _Block_release(v14);
  _Block_release(v12);
}

uint64_t sub_2723F8BCC(uint64_t result, uint64_t a2, void (*a3)(uint64_t, double))
{
  if (a3)
  {
    v4 = result / 100.0;

    a3(v5, v4);

    return sub_2723FDF44(a3);
  }

  return result;
}

uint64_t sub_2723F8C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

void sub_2723F8C9C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v39 - v12);
  v14 = sub_2723FE434();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {

    a4(a3);
    sub_2723FDF44(a4);
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  v19 = a3;
  if (qword_280893E18 != -1)
  {
    swift_once();
  }

  v20 = off_280894260;
  if (!*(off_280894260 + 2))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = sub_2723E4FAC(2);
  if ((v22 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2723F7404(v20[7] + *(v10 + 72) * v21, v13);

  (*(v15 + 32))(v18, v13 + *(v9 + 48), v14);
  v23 = a3;

  v24 = sub_2723FE424();
  v25 = sub_2723FE894();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v26 = 136446466;
    v28 = [*(a6 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
    v29 = v15;
    v30 = sub_2723FE5B4();
    v41 = v14;
    v32 = v31;

    v33 = sub_2723E4A00(v30, v32, &v42);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2114;
    v34 = a3;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v35;
    *v27 = v35;
    _os_log_impl(&dword_2723CB000, v24, v25, "Downloading asset '%{public}s' encountered error: %{public}@", v26, 0x16u);
    sub_2723D9188(v27, &unk_280894310, &unk_2724009C0);
    MEMORY[0x2743C8040](v27, -1, -1);
    v36 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x2743C8040](v36, -1, -1);
    MEMORY[0x2743C8040](v26, -1, -1);

    (*(v29 + 8))(v18, v41);
  }

  else
  {

    (*(v15 + 8))(v18, v14);
  }

LABEL_11:
  if (qword_280893D70 != -1)
  {
    swift_once();
  }

  v37 = qword_280893FF0;
  v38 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v38, v37, 0, 0, 0);
}

uint64_t sub_2723F90D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_2723FE5B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

Swift::Void __swiftcall VCSpeechAsset.uninstall()()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v14[2] = v1;
  v6 = sub_2723D2B44(sub_2723FDFFC, v14, v5);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2723FEB04())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2743C76B0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = sub_2723FE574();
      [v2 unsubscribeFromAssetWithConfig:v11 clientIdentifier:v13 completion:0];

      ++v9;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

unint64_t sub_2723F932C(void *a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v49 = *(v51 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = (&v47 - v4);
  v5 = sub_2723FE434();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2723FE2D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2723FE344();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) = a1;
  v18 = a1;
  v19 = [v18 language];
  sub_2723FE5B4();

  (*(v9 + 104))(v12, *MEMORY[0x277CC9668], v8);
  v20 = sub_2723FE2C4();
  v22 = v21;

  (*(v9 + 8))(v12, v8);
  v60 = v20;
  v61 = v22;
  v58 = 45;
  v59 = 0xE100000000000000;
  v56 = 95;
  v57 = 0xE100000000000000;
  v45 = sub_2723CD24C();
  v46 = v45;
  v44[0] = MEMORY[0x277D837D0];
  v44[1] = v45;
  sub_2723FE984();
  v23 = v55;

  sub_2723FE2A4();
  (*(v14 + 32))(v23 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale, v17, v13);
  VCSpeechAsset.status.getter(&v60);
  if (v60 != 3)
  {

    return v23;
  }

  v48 = v18;
  result = sub_2723F9EC8();
  if (result)
  {
    v25 = result;
    v60 = 0x6F69746174636944;
    v61 = 0xEB0000000043436ELL;
    MEMORY[0x28223BE20](result);
    v45 = &v60;
    v26 = sub_2723E718C(sub_2723CE180, v44, v25);

    if (v26)
    {

      return v23;
    }
  }

  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v27 = off_280894260;
  v29 = v52;
  v28 = v53;
  v30 = v54;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(2);
    if (v31)
    {
      v32 = v27[7];
      v33 = v50;
      sub_2723F7404(v32 + *(v49 + 72) * result, v50);

      (*(v29 + 32))(v30, v33 + *(v51 + 48), v28);

      v34 = sub_2723FE424();
      v35 = sub_2723FE894();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v60 = v37;
        *v36 = 136446210;
        v38 = v23;
        v39 = [*(v23 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
        v40 = sub_2723FE5B4();
        v42 = v41;

        v43 = sub_2723E4A00(v40, v42, &v60);

        *(v36 + 4) = v43;
        v23 = v38;
        _os_log_impl(&dword_2723CB000, v34, v35, "Asset '%{public}s' does not support Voice Control.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x2743C8040](v37, -1, -1);
        MEMORY[0x2743C8040](v36, -1, -1);

        (*(v29 + 8))(v54, v28);
      }

      else
      {

        (*(v29 + 8))(v30, v28);
      }

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL VCSpeechAsset.subscribed.getter()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v9[2] = v1;
  v6 = sub_2723D2B44(sub_2723FDFFC, v9, v5);
  if (v6 >> 62)
  {
    v7 = sub_2723FEB04();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v7 != 0;
}

id sub_2723F9AA4()
{
  v33 = *MEMORY[0x277D85DE8];
  v0 = sub_2723FE174();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v30[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894298, &qword_272400770);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30[-1] - v7;
  v9 = sub_2723FE1F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30[-1] - v15;
  VCSpeechAsset.assetURL.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2723D9188(v8, &qword_280894298, &qword_272400770);
LABEL_4:
    result = 0;
    goto LABEL_5;
  }

  *&v32[0] = 0x6F736A2E696E696DLL;
  *(&v32[0] + 1) = 0xE90000000000006ELL;
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D0], v0);
  sub_2723CD24C();
  sub_2723FE1E4();
  (*(v1 + 8))(v4, v0);
  v17 = *(v10 + 8);
  v17(v8, v9);
  (*(v10 + 32))(v16, v14, v9);
  v20 = sub_2723FE204();
  v22 = v21;
  v23 = objc_opt_self();
  v24 = sub_2723FE214();
  v30[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:v30];

  v26 = v30[0];
  if (!v25)
  {
    v27 = v26;
    v28 = sub_2723FE164();

    swift_willThrow();
    sub_2723CE0C0(v20, v22);

    v17(v16, v9);
    goto LABEL_4;
  }

  sub_2723FE994();
  sub_2723CE0C0(v20, v22);
  swift_unknownObjectRelease();
  v17(v16, v9);
  sub_2723D5A74(v31, v32);
  sub_2723D5A74(v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
  if (swift_dynamicCast())
  {
    result = v30[0];
  }

  else
  {
    result = 0;
  }

LABEL_5:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_2723F9EC8()
{
  v0 = sub_2723F9AA4();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (!v0[2])
  {
    goto LABEL_10;
  }

  v2 = sub_2723E4F34(0x6E692D6C65646F6DLL, 0xEA00000000006F66);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_2723D9230(v1[7] + 32 * v2, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E68, &qword_2723FFA28);
  if ((swift_dynamicCast() & 1) == 0 || !v7)
  {
    return 0;
  }

  if (*(v7 + 16) && (v4 = sub_2723E4F34(0x736B736174, 0xE500000000000000), (v5 & 1) != 0))
  {
    sub_2723D9230(*(v7 + 56) + 32 * v4, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893E70, &unk_2723FFA30);
    if (swift_dynamicCast())
    {
      v8[0] = v7;

      sub_2723D61B0(v8);

      return v8[0];
    }
  }

  else
  {
LABEL_10:
  }

  return 0;
}

uint64_t sub_2723FA064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = sub_2723F9EC8();
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  v11[0] = a1;
  v11[1] = a2;
  MEMORY[0x28223BE20](v6);
  v10[2] = v11;
  v8 = sub_2723E718C(a3, v10, v7);

  return v8 & 1;
}

uint64_t VCSpeechAsset.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = sub_2723FE344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t VCSpeechAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v2 = sub_2723FE344();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t VCSpeechAsset.hashValue.getter()
{
  sub_2723FEC94();
  v1 = sub_2723FE334();
  MEMORY[0x2743C78D0](v1);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v3 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v3);
  return sub_2723FECB4();
}

uint64_t sub_2723FA294@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_locale;
  v5 = sub_2723FE344();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2723FA310()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig) language];
  v2 = sub_2723FE5B4();

  return v2;
}

uint64_t sub_2723FA404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2723F8038(0, &qword_2808942B0, 0x277D82BB8);
  v4 = *(v2 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v5 = *(v3 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  return sub_2723FE8E4() & 1;
}

uint64_t sub_2723FA464()
{
  v1 = *v0;
  sub_2723FEC94();
  v2 = sub_2723FE334();
  MEMORY[0x2743C78D0](v2);
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v4 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v4);
  return sub_2723FECB4();
}

uint64_t sub_2723FA4D0()
{
  v1 = *v0;
  v2 = sub_2723FE334();
  MEMORY[0x2743C78D0](v2);
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v4 = sub_2723FE8F4();
  return MEMORY[0x2743C78D0](v4);
}

uint64_t sub_2723FA52C()
{
  v1 = *v0;
  sub_2723FEC94();
  v2 = sub_2723FE334();
  MEMORY[0x2743C78D0](v2);
  v3 = *(v1 + OBJC_IVAR____TtC12VoiceControl13VCSpeechAsset_assetConfig);
  v4 = sub_2723FE8F4();
  MEMORY[0x2743C78D0](v4);
  return sub_2723FECB4();
}

uint64_t sub_2723FA594(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return sub_2723FE8D4();
}

uint64_t sub_2723FA5F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_2723FE744();

  v2(v3);
}

uint64_t sub_2723FA66C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_2723FE574();
  v4 = [v2 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v5 = sub_2723FE744();

  v7[2] = a1;
  return sub_2723D2B44(sub_2723FDFFC, v7, v5);
}

uint64_t sub_2723FA744(id *a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 language];
  sub_2723FE5B4();

  v9 = *MEMORY[0x277CC9668];
  v29 = v4[13];
  v29(v7, v9, v3);
  v10 = sub_2723FE2C4();
  v12 = v11;

  v28 = v4[1];
  v28(v7, v3);
  v35 = v10;
  v36 = v12;
  v33 = 45;
  v34 = 0xE100000000000000;
  v31 = 95;
  v32 = 0xE100000000000000;
  sub_2723CD24C();
  v13 = sub_2723FE984();
  v26 = v14;
  v27 = v13;

  sub_2723FE2B4();
  v29(v7, v9, v3);
  v15 = sub_2723FE2C4();
  v17 = v16;

  v18 = v3;
  v19 = 1;
  v28(v7, v18);
  v35 = v15;
  v36 = v17;
  v33 = 45;
  v34 = 0xE100000000000000;
  v31 = 95;
  v32 = 0xE100000000000000;
  v20 = sub_2723FE984();
  v22 = v21;
  v23 = v26;

  if (v27 != v20 || v23 != v22)
  {
    v19 = sub_2723FEC44();
  }

  return v19 & 1;
}

uint64_t sub_2723FAA28(uint64_t a1)
{
  v2 = [objc_opt_self() installedLanguagesForTaskHint_];
  v3 = sub_2723FE804();

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2723D612C(*(v3 + 16), 0);
  v6 = sub_2723D7A68(&v10, v5 + 4, v4, v3);
  v7 = sub_2723D8970();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v7);
  v9[2] = a1;
  return sub_2723D29CC(sub_2723FDFE0, v9, v5);
}

uint64_t sub_2723FAB3C(uint64_t *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *MEMORY[0x277CC9668];
  v26 = v4[13];
  v26(v7, v10, v3);
  v11 = sub_2723FE2C4();
  v13 = v12;
  v27 = v4[1];
  v27(v7, v3);
  v33 = v11;
  v34 = v13;
  v31 = 45;
  v32 = 0xE100000000000000;
  v29 = 95;
  v30 = 0xE100000000000000;
  sub_2723CD24C();
  v25 = sub_2723FE984();
  v15 = v14;

  sub_2723FE2B4();
  v26(v7, v10, v3);
  v16 = sub_2723FE2C4();
  v18 = v17;

  v19 = v3;
  v20 = 1;
  v27(v7, v19);
  v33 = v16;
  v34 = v18;
  v31 = 45;
  v32 = 0xE100000000000000;
  v29 = 95;
  v30 = 0xE100000000000000;
  v21 = sub_2723FE984();
  v23 = v22;

  if (v25 != v21 || v15 != v23)
  {
    v20 = sub_2723FEC44();
  }

  return v20 & 1;
}

void static VCSpeechAssetManager.asset(forLocale:)(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_2723FD1B8(1005);
  v55 = a1;
  v5 = sub_2723D29CC(sub_2723FDFE0, v54, v4);
  v6 = objc_opt_self();
  v50 = "Privacy-Enable-Level";
  v7 = sub_2723FE574();
  v8 = [v6 subscriptionsForClientIdentifier_];

  sub_2723F8038(0, &qword_2808942C0, 0x277CDCE88);
  v9 = sub_2723FE744();

  v53 = a1;
  v10 = sub_2723D2B44(sub_2723FDFFC, v52, v9);
  v51 = v6;
  v11 = [v6 installedLanguagesForTaskHint_];
  v12 = sub_2723FE804();

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = sub_2723D612C(*(v12 + 16), 0);
    v15 = sub_2723D7A68(&v56, v14 + 4, v13, v12);
    v16 = sub_2723D8970();
    if (v15 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_5:
  MEMORY[0x28223BE20](v16);
  v48[2] = a1;
  v17 = sub_2723D29CC(sub_2723FDFE0, v48, v14);
  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
LABEL_27:
    v29 = v17;

    if (v29[2])
    {

      v30 = SFEntitledAssetTypeForTaskHint();
      if (!v29[2])
      {
        goto LABEL_43;
      }

      v31 = v30;
      v32 = v29[4];
      v33 = v29[5];
    }

    else
    {

      if (!*(v5 + 16))
      {

        v39 = SFEntitledAssetTypeForTaskHint();
        v40 = objc_allocWithZone(MEMORY[0x277CDCE88]);
        v41 = sub_2723FE304();
        v27 = [v40 initWithAssetType:v39 locale:v41 regionId:0];

        goto LABEL_40;
      }

      v34 = SFEntitledAssetTypeForTaskHint();
      if (!*(v5 + 16))
      {
        goto LABEL_46;
      }

      v31 = v34;
      v35 = *(v5 + 32);
      v36 = *(v5 + 40);
    }

    v37 = objc_allocWithZone(MEMORY[0x277CDCE88]);
    v38 = sub_2723FE574();

    v27 = [v37 initWithAssetType:v31 language:v38 regionId:0];

LABEL_40:
    v43 = type metadata accessor for VCSpeechAsset();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v46 = v27;
    v47 = sub_2723F932C(v46);
    a2[3] = v43;
    a2[4] = sub_2723FDD08(&qword_2808942C8);

    *a2 = v47;
    return;
  }

LABEL_7:
  v49 = a2;

  v5 = 0;
  v56 = MEMORY[0x277D84F90];
  v19 = v10 & 0xC000000000000001;
  a2 = &property descriptor for VCSettings.syncVocabularyEntries;
  do
  {
    if (v19)
    {
      v17 = MEMORY[0x2743C76B0](v5, v10);
    }

    else
    {
      if (v5 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v17 = *(v10 + 8 * v5 + 32);
    }

    v20 = v17;
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v28 = v17;
      v18 = sub_2723FEB04();
      v17 = v28;
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_7;
    }

    v22 = sub_2723FE574();
    v23 = [v51 pathToAssetWithConfig:v20 clientIdentifier:v22];

    if (v23)
    {

      sub_2723FEAA4();
      v24 = *(v56 + 16);
      sub_2723FEAC4();
      sub_2723FEAD4();
      v17 = sub_2723FEAB4();
    }

    else
    {
    }

    ++v5;
  }

  while (v21 != v18);
  v25 = v56;
  a2 = v49;
  if (v56 < 0 || (v56 & 0x4000000000000000) != 0)
  {
    if (!sub_2723FEB04())
    {
      goto LABEL_36;
    }

LABEL_20:

    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x2743C76B0](0, v25);
      goto LABEL_23;
    }

    if (*(v25 + 16))
    {
      v26 = *(v25 + 32);
LABEL_23:
      v27 = v26;

      goto LABEL_40;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*(v56 + 16))
  {
    goto LABEL_20;
  }

LABEL_36:

  if (v19)
  {
LABEL_44:
    v42 = MEMORY[0x2743C76B0](0, v10);
LABEL_39:
    v27 = v42;

    goto LABEL_40;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v10 + 32);
    goto LABEL_39;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_2723FB374(void **a1)
{
  v2 = *(sub_2723FE344() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2723FD16C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2723FB41C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2723FB41C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_2723FEC14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2723FE344();
        v6 = sub_2723FE794();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2723FE344() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2723FB854(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2723FB548(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2723FB548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2723FE344();
  v9 = *(*(v8 - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_2723FE2B4();
      v28 = v27;
      if (v26 == sub_2723FE2B4() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_2723FEC44();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2723FB854(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_2723FE344();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_2723FC410(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_2723FCB38(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_2723FCAAC(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_2723FCB38(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_2723FE2B4();
      v38 = v37;
      v39 = sub_2723FE2B4();
      v132 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_2723FEC44();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_2723FE2B4();
        v53 = v52;
        if (v51 == sub_2723FE2B4() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_2723FEC44();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2723E42F4(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_2723E42F4((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_2723FC410(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_2723FCB38(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_2723FCAAC(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_2723FE2B4();
    v70 = v69;
    if (v5 == sub_2723FE2B4() && v70 == v71)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_2723FEC44();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_2723FC410(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_2723FE344();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_2723FE2B4();
            v53 = v52;
            if (v51 != sub_2723FE2B4())
            {
              goto LABEL_51;
            }

            if (v53 == v54)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_2723FEC44();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_2723FE2B4();
        v33 = v32;
        if (v31 == sub_2723FE2B4() && v33 == v34)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_2723FEC44();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_2723FCB4C(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_2723FCAAC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2723FCB38(v3);
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

uint64_t sub_2723FCB4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2723FE344();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2723FCC30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893FE0, "z.");
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

size_t sub_2723FCD8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_2723FCF68(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280894050, &unk_2724009D0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F10, &qword_2723FFCB0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2723FD1B8(uint64_t a1)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280893F50, &qword_2723FFCE8);
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v44 = (&v40 - v3);
  v4 = sub_2723FE434();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2723FE454();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v50);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = sub_2723FE484();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v49);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = dispatch_semaphore_create(0);
  v48 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  aBlock[4] = sub_2723FDFCC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2723FA5F8;
  aBlock[3] = &block_descriptor_52;
  v21 = _Block_copy(aBlock);
  v47 = v18;

  v22 = v19;

  [v48 supportedLanguagesForTaskHint:v51 completion:v21];
  _Block_release(v21);
  sub_2723FE464();
  *v10 = 10;
  v23 = v50;
  (*(v7 + 104))(v10, *MEMORY[0x277D85188], v50);
  sub_2723FE474();
  (*(v7 + 8))(v10, v23);
  v24 = *(v11 + 8);
  v25 = v49;
  v24(v15, v49);
  sub_2723FE8C4();
  v24(v17, v25);
  result = swift_beginAccess();
  v27 = *(v18 + 16);
  if (v27)
  {
    v28 = *(v18 + 16);

LABEL_10:

    return v27;
  }

  v29 = v44;
  v30 = v45;
  v31 = v46;
  v33 = v41;
  v32 = v42;
  v34 = v43;
  if (qword_280893E18 != -1)
  {
    result = swift_once();
  }

  v35 = off_280894260;
  if (*(off_280894260 + 2))
  {
    result = sub_2723E4FAC(2);
    if (v36)
    {
      sub_2723F7404(v35[7] + *(v30 + 72) * result, v29);

      (*(v32 + 32))(v33, v29 + *(v31 + 48), v34);
      v37 = sub_2723FE424();
      v38 = sub_2723FE894();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 134349056;
        *(v39 + 4) = 10;
        _os_log_impl(&dword_2723CB000, v37, v38, "SFSpeechAssetManager.supportedLanguages(for:) timed out after %{public}ld seconds.", v39, 0xCu);
        MEMORY[0x2743C8040](v39, -1, -1);
      }

      (*(v32 + 8))(v33, v34);
      v27 = MEMORY[0x277D84F90];
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2723FD758()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2723FD7B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2723FD7C8()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_2723FD81C()
{
  v30 = sub_2723FE2D4();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2723FE344();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723FD1B8(1005);
  v8 = *(v7 + 16);
  if (v8)
  {
    v36 = MEMORY[0x277D84F90];
    sub_2723D6C08(0, v8, 0);
    v9 = v36;
    v26 = *MEMORY[0x277CC9668];
    v11 = *(v0 + 104);
    v10 = v0 + 104;
    v24 = (v10 - 96);
    v25 = v11;
    v23[1] = v7;
    v23[2] = v3 + 32;
    v12 = (v7 + 40);
    v27 = v10;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = v28;
      v16 = v30;
      v25(v28, v26, v30);

      v17 = sub_2723FE2C4();
      v19 = v18;
      (*v24)(v15, v16);
      v35[0] = v17;
      v35[1] = v19;
      v33 = 45;
      v34 = 0xE100000000000000;
      v31 = 95;
      v32 = 0xE100000000000000;
      sub_2723CD24C();
      sub_2723FE984();

      sub_2723FE2A4();

      v36 = v9;
      v21 = v9[2];
      v20 = v9[3];
      if (v21 >= v20 >> 1)
      {
        sub_2723D6C08(v20 > 1, v21 + 1, 1);
        v9 = v36;
      }

      v9[2] = v21 + 1;
      (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v6, v29);
      v12 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v35[0] = v9;

  sub_2723FB374(v35);

  return v35[0];
}

uint64_t type metadata accessor for VCSpeechAsset()
{
  result = qword_2808942F8;
  if (!qword_2808942F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2723FDBD4()
{
  result = qword_2808942D0;
  if (!qword_2808942D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808942D0);
  }

  return result;
}

unint64_t sub_2723FDC2C()
{
  result = qword_2808942D8;
  if (!qword_2808942D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808942E0, &qword_272400808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808942D8);
  }

  return result;
}

uint64_t sub_2723FDC90(uint64_t a1)
{
  result = sub_2723FDD08(&qword_2808942E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2723FDD08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VCSpeechAsset();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2723FDDDC()
{
  result = sub_2723FE344();
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

uint64_t sub_2723FDF44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2723FDF54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2723FDF8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}