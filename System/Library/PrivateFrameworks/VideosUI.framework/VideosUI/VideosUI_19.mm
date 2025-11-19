uint64_t sub_1E37893C0(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 120) == (result & 1))
  {
    *(v1 + 120) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_1_40();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_16_13();
  }

  return result;
}

void sub_1E3789458(void *a1)
{
  v4 = *(v1 + 128);
  v5 = OUTLINED_FUNCTION_6_28();
  v7 = sub_1E3789740(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_40();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_16_13();

    OUTLINED_FUNCTION_9_21();
  }

  else
  {
    v10 = *(v1 + 128);
    *(v1 + 128) = a1;
  }
}

void sub_1E3789524(void *a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
  v4 = a1;

  v3 = [objc_opt_self() clearColor];
  sub_1E3788AA4(v3);
}

void *sub_1E3789594()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 112);
  v4 = v3;
  return v3;
}

void *sub_1E378961C@<X0>(void *a1@<X8>)
{
  result = sub_1E3789594();
  *a1 = result;
  return result;
}

void sub_1E3789648(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3789678(v1);
}

void sub_1E3789678(void *a1)
{
  v4 = *(v1 + 112);
  v5 = OUTLINED_FUNCTION_6_28();
  v7 = sub_1E3789740(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_40();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_16_13();

    OUTLINED_FUNCTION_9_21();
  }

  else
  {

    sub_1E3789524(a1);
  }
}

BOOL sub_1E3789740(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1E3280A90(0, &qword_1EE23AE00);
    v5 = a1;
    v6 = a2;
    v2 = sub_1E4206F64();
  }

  return (v2 & 1) == 0;
}

BOOL sub_1E37897CC(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1E41FE254();
    v5 = a1;
    v6 = a2;
    v2 = sub_1E4206F64();
  }

  return (v2 & 1) == 0;
}

void sub_1E3789848()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1E3789524(v1);
}

uint64_t sub_1E3789888()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  return *(v0 + 120);
}

uint64_t sub_1E3789908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3789888();
  *a1 = result & 1;
  return result;
}

void *sub_1E3789960@<X0>(void *a1@<X8>)
{
  result = sub_1E3789338();
  *a1 = result;
  return result;
}

void sub_1E378998C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3789458(v1);
}

void *sub_1E37899BC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 136);
  v4 = v3;
  return v3;
}

void *sub_1E3789A44@<X0>(void *a1@<X8>)
{
  result = sub_1E37899BC();
  *a1 = result;
  return result;
}

void sub_1E3789A70(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3789AA0(v1);
}

void sub_1E3789AA0(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 136);
  v5 = v4;
  v6 = v5;
  if (v4 && a1)
  {
    sub_1E3280A90(0, &unk_1ECF29690);
    v7 = v6;
    v8 = a1;
    v9 = sub_1E4206F64();

    if ((v9 & 1) == 0)
    {
LABEL_4:
      swift_getKeyPath();
      OUTLINED_FUNCTION_3_23();
      MEMORY[0x1EEE9AC00](v10);
      OUTLINED_FUNCTION_1_40();
      *(v11 - 16) = v2;
      *(v11 - 8) = a1;
      sub_1E3788BD4();

      OUTLINED_FUNCTION_9_21();
      return;
    }
  }

  else
  {

    if (v4 | a1)
    {
      goto LABEL_4;
    }
  }

  v12 = *(v2 + 136);
  *(v2 + 136) = a1;
}

void *sub_1E3789BD0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 144);
  v4 = v3;
  return v3;
}

void *sub_1E3789C58@<X0>(void *a1@<X8>)
{
  result = sub_1E3789BD0();
  *a1 = result;
  return result;
}

void sub_1E3789C84(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3789CB4(v1);
}

void sub_1E3789CB4(void *a1)
{
  v4 = *(v1 + 144);
  v5 = OUTLINED_FUNCTION_6_28();
  v7 = sub_1E37897CC(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_40();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_16_13();

    OUTLINED_FUNCTION_9_21();
  }

  else
  {
    v10 = *(v1 + 144);
    *(v1 + 144) = a1;
  }
}

void *sub_1E3789D80()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_22();
  sub_1E378ACE0(v1, v2);
  OUTLINED_FUNCTION_43();

  v3 = *(v0 + 152);
  v4 = v3;
  return v3;
}

void *sub_1E3789E08@<X0>(void *a1@<X8>)
{
  result = sub_1E3789D80();
  *a1 = result;
  return result;
}

void sub_1E3789E34(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E3789E64(v1);
}

void sub_1E3789E64(void *a1)
{
  v4 = *(v1 + 152);
  v5 = OUTLINED_FUNCTION_6_28();
  v7 = sub_1E37897CC(v5, v6);

  if (v7)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_3_23();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_40();
    *(v9 - 16) = v1;
    *(v9 - 8) = a1;
    OUTLINED_FUNCTION_16_13();

    OUTLINED_FUNCTION_9_21();
  }

  else
  {
    v10 = *(v1 + 152);
    *(v1 + 152) = a1;
  }
}

uint64_t sub_1E3789F30(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E3789F70(a1);
  return v2;
}

uint64_t sub_1E3789F70(uint64_t a1)
{
  v3 = [objc_opt_self() blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  *(v1 + 16) = v4;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  sub_1E41FE924();
  swift_beginAccess();
  *(v1 + 24) = a1;

  sub_1E3788C7C(0);

  return v1;
}

id *sub_1E378A06C()
{

  v1 = OBJC_IVAR____TtC8VideosUI18TextBadgePresenter___observationRegistrar;
  v2 = sub_1E41FE934();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1E378A104()
{
  sub_1E378A06C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E378A164()
{
  result = sub_1E41FE934();
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

uint64_t sub_1E378A240()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 24);
  if (v1 && (v2 = *(*v1 + 1776), v3 = , v2(v3), , sub_1E378ADF4(), (sub_1E4205E84() & 1) != 0))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = sub_1E3789338();
    if (v4)
    {

      LOBYTE(v4) = sub_1E3789888();
    }
  }

  return v4 & 1;
}

void sub_1E378A314(char a1)
{
  sub_1E3789CB4(0);
  sub_1E3789E64(0);
  if (a1)
  {
    v2 = sub_1E37899BC();
    [v2 cancel];
  }

  sub_1E3789AA0(0);
}

id sub_1E378A374(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1E4205ED4();

  v18 = [v16 initWithIdentifier:v17 rect:a1 croppedRect:{a2, a3, a4, a5, a6, a7, a8}];

  return v18;
}

id sub_1E378A448(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1E329EEC4;
  v5[3] = &block_descriptor_30;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() blockOperationWithBlock_];
  _Block_release(v2);

  return v3;
}

id sub_1E378A4F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_1E378A52C(void *a1)
{
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v16 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_4();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1E378ACD8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  sub_1E4203FE4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E378ACE0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v15, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  return (*(v11 + 8))(v15, v9);
}

id sub_1E378A7E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

void *sub_1E378A81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1E378A864(void *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_0();
  if (!swift_weakLoadStrong())
  {
    if (a1)
    {
      goto LABEL_10;
    }

LABEL_13:
    OUTLINED_FUNCTION_5_0();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1E378A314(0);
    }

    return result;
  }

  v9 = sub_1E37899BC();

  if (!a1)
  {
    if (v9)
    {
      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v9)
  {
    swift_unknownObjectRelease();
    if (v9 == a1)
    {
      goto LABEL_13;
    }
  }

LABEL_10:
  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "UnifiedOverlayView: Pending operation has been changed, ignoring clearing.", v13, 2u);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_1E378AA48(void *a1)
{
  v1 = [a1 overlayMaterialImageByIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23AE00);
  v3 = sub_1E4205C64();

  return v3;
}

void sub_1E378AAC8(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23AF28);
  v3 = sub_1E42062A4();

  [a2 setOverlayMaterialRequests_];
}

uint64_t sub_1E378AB4C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (([v1 isCancelled] & 1) == 0)
    {
      v3 = [v1 resizedSourceBackgroundImage];
      v4 = v3;
      if (v3)
      {
        v5 = v3;
        sub_1E3788EB8(v4);
      }

      v6 = sub_1E378AA48(v1);
      if (v6)
      {
        v7 = v6;
        v8 = OUTLINED_FUNCTION_17();
        v10 = sub_1E378A81C(v8, v9, v7);

        if (sub_1E378A240())
        {
          if (v10)
          {
            v11 = v10;
            sub_1E3789678(v10);
          }
        }

        sub_1E37893C0(0);

        v4 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1E378AC54(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_15_0();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E378A52C(v1);
  }

  return result;
}

void sub_1E378ACA4()
{
  OUTLINED_FUNCTION_11_25();
  v1 = *(v0 + 152);
  *(v0 + 152) = v2;
  v3 = v2;
}

uint64_t sub_1E378ACE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E378AD28()
{
  result = qword_1EE23B5D0;
  if (!qword_1EE23B5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B5D0);
  }

  return result;
}

void sub_1E378AD8C()
{
  OUTLINED_FUNCTION_11_25();
  v1 = *(v0 + 144);
  *(v0 + 144) = v2;
  v3 = v2;
}

void sub_1E378ADC0()
{
  OUTLINED_FUNCTION_11_25();
  v1 = *(v0 + 136);
  *(v0 + 136) = v2;
  v3 = v2;
}

unint64_t sub_1E378ADF4()
{
  result = qword_1EE27F760;
  if (!qword_1EE27F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27F760);
  }

  return result;
}

void sub_1E378AE48()
{
  OUTLINED_FUNCTION_11_25();
  v1 = *(v0 + 128);
  *(v0 + 128) = v2;
  v3 = v2;
}

uint64_t sub_1E378AEF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_contextData;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E378AFC8()
{
  OUTLINED_FUNCTION_14_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_5_0();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
    if (v2 == Strong)
    {
      goto LABEL_15;
    }
  }

  else if (!Strong)
  {
    goto LABEL_15;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = [v3 respondsToSelector_];
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  byte_1ECF71218 = v4;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = [v5 respondsToSelector_];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  byte_1ECF71219 = v6;
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = [v7 respondsToSelector_];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_3_0();
  byte_1ECF7121A = v8;
LABEL_15:
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*sub_1E378B15C(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_5_0();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E378B1D8;
}

void sub_1E378B1D8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1E378AFC8();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E378AFC8();
  }

  free(v2);
}

uint64_t sub_1E378B23C()
{
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerViewSize);
  result = OUTLINED_FUNCTION_5_0();
  if (*v2 != 0.0 || v2[1] != 0.0)
  {
    result = sub_1E378B634();
    if ((result & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      result = (*(v4 + 560))();
      if (result)
      {
        OUTLINED_FUNCTION_26_0();
        (*(v5 + 464))();
        OUTLINED_FUNCTION_11_5();

        if (v1)
        {
          result = sub_1E32AE9B0(v1);
          v6 = result;
          for (i = 0; ; ++i)
          {
            if (v6 == i)
            {
            }

            if ((v1 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x1E6911E60](i, v1);
            }

            else
            {
              if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }
            }

            if (__OFADD__(i, 1))
            {
              break;
            }

            type metadata accessor for PlayerCollectionViewModel();
            v8 = swift_dynamicCastClass();
            if (v8)
            {
              v9 = v8;
              OUTLINED_FUNCTION_12_5();
              v11 = (*(v10 + 2216))();
              (*(*v9 + 1664))(v11);
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }
      }
    }
  }

  return result;
}

double sub_1E378B440()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerViewSize;
  OUTLINED_FUNCTION_4_24();
  return *v1;
}

uint64_t sub_1E378B478(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerViewSize);
  OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  v5[1] = a2;
  return sub_1E378B23C();
}

uint64_t (*sub_1E378B4CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_66();
  return sub_1E378B524;
}

uint64_t sub_1E378B524(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E378B23C();
  }

  return result;
}

uint64_t sub_1E378B558()
{
  v1 = OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shiftLeftBySafeAreaMargin;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E378B58C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shiftLeftBySafeAreaMargin;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E378B634()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 560))())
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_6;
  }

  v3 = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v1 + 776))(v4, &v3, &unk_1F5D5E578, &off_1F5D5CBF8);

  if (!v4[3])
  {
LABEL_6:
    sub_1E325F748(v4, &unk_1ECF296E0);
    return 0;
  }

  result = OUTLINED_FUNCTION_13_14();
  if (result)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E378B72C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling) = a1;

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling))
  {
    OUTLINED_FUNCTION_8();
    v3 = *(v2 + 648);

    v5 = v3(v4);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_documentForPendingEventHandling) = v5;
}

uint64_t sub_1E378B7F8()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 560))())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 464))();

  if (!v2)
  {
    goto LABEL_13;
  }

  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_7:

    type metadata accessor for CollectionViewModel();
    if (OUTLINED_FUNCTION_22_10())
    {
      v8 = 2;
      OUTLINED_FUNCTION_26_0();
      v5 = *(v4 + 776);

      v5(v9, &v8, &unk_1F5D5DFD8, &off_1F5D5CAB8);

      if (v9[3])
      {
        if (OUTLINED_FUNCTION_13_14())
        {
          v6 = v8;
LABEL_16:
          v7 = TVAppFeature.isEnabled.getter(10);

          return v7 & v6 & 1;
        }

LABEL_15:
        v6 = 0;
        goto LABEL_16;
      }

LABEL_14:
      sub_1E325F748(v9, &unk_1ECF296E0);
      goto LABEL_15;
    }

LABEL_13:
    OUTLINED_FUNCTION_25_4();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E378B9CC()
{
  if (sub_1E378B634())
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_21();
    v2 = (*(v5 + 2216))();
    v4 = v6;
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(v2);
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 orientation];

  if ((v8 - 1) >= 4)
  {
    v9 = v2 < v4;
  }

  else
  {
    v9 = 3u >> ((v8 - 1) & 0xF);
  }

  return v9 & 1;
}

id sub_1E378BAE8()
{
  v1 = v0;
  v2 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v21.receiver = v0;
  v21.super_class = type metadata accessor for PlayerHUDTemplateController();
  objc_msgSendSuper2(&v21, sel_vui_viewDidLoad);
  OUTLINED_FUNCTION_26_3();
  v7 = *((*MEMORY[0x1E69E7D40] & v6) + 0x1B8);
  v8 = v7();
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  v10 = v7();
  [v10 setClipsToBounds_];

  if ((sub_1E378B634() & 1) == 0)
  {
    v11 = objc_opt_self();
    v12 = [v11 defaultCenter];
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = sub_1E37907F0(&qword_1EE23B130, MEMORY[0x1E6969F20]);
    sub_1E3EAFEBC(sub_1E378BE8C, v13, v2, v14);

    v15 = *(v4 + 8);
    v16 = OUTLINED_FUNCTION_74();
    v15(v16);
    OUTLINED_FUNCTION_39_7();
    sub_1E42004C4();
    swift_endAccess();

    v17 = [v11 defaultCenter];
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E3EAFEBC(sub_1E378BEA4, v18, v2, v14);

    v19 = OUTLINED_FUNCTION_74();
    v15(v19);
    OUTLINED_FUNCTION_39_7();
    sub_1E42004C4();
    swift_endAccess();
  }

  return [v1 vui:2 setOverrideUserInterfaceStyle:?];
}

uint64_t type metadata accessor for PlayerHUDTemplateController()
{
  result = qword_1EE2948D8;
  if (!qword_1EE2948D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E378BEBC(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

id sub_1E378BFB0(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for PlayerHUDTemplateController();
  return objc_msgSendSuper2(&v6, *a2, a1 & 1);
}

void sub_1E378C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  if (!(*(v5 + 560))())
  {
    return;
  }

  OUTLINED_FUNCTION_26_0();
  v7 = (*(v6 + 464))();
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  if (sub_1E32AE9B0(v7))
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v9)
      {
        __break(1u);
        goto LABEL_26;
      }
    }

    type metadata accessor for CollectionViewModel();
    OUTLINED_FUNCTION_31_7();
    if (!swift_dynamicCastClass())
    {
LABEL_16:

LABEL_18:

      return;
    }

    OUTLINED_FUNCTION_26_0();
    v11 = (*(v10 + 1040))();
    if (!v11)
    {
LABEL_15:
      sub_1E405123C();
      goto LABEL_16;
    }

    v12 = v11;
    if (!sub_1E32AE9B0(v11))
    {
LABEL_14:

      goto LABEL_15;
    }

    if ((v12 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_34_0();
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = *(v12 + 32);

      goto LABEL_13;
    }

LABEL_26:
    OUTLINED_FUNCTION_41_1();
    v14 = v15;
LABEL_13:

    (*(*v14 + 1048))(a2, a3);

    goto LABEL_14;
  }
}

void sub_1E378C2A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerHUDTemplateController();
  objc_msgSendSuper2(&v2, sel_vui_viewDidLayoutSubviews);
  sub_1E378F330();
  OUTLINED_FUNCTION_26_3();
  if ((*((*MEMORY[0x1E69E7D40] & v1) + 0x9A8))())
  {
    sub_1E378F570();
  }
}

void sub_1E378C374()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_11_5());
  v1 = OUTLINED_FUNCTION_38();
  sub_1E378C3B0(v1);
}

void sub_1E378C3B0(unint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_contextData) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_showDebugUI) = 0;
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerViewSize);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shiftLeftBySafeAreaMargin) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shouldInvokeSelectTabDelegate) = 0;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerTabsShouldPipBeforeNavigation);
  *v4 = 0xD000000000000023;
  v4[1] = 0x80000001E425BBB0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_previousViewWidth) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_documentForPendingEventHandling) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling) = 0;

  sub_1E3ED15A8(v5);
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(*a1 + 464);

  v6(v7);
  OUTLINED_FUNCTION_50();

  if (!a1)
  {
    goto LABEL_9;
  }

  if (sub_1E32AE9B0(a1))
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
LABEL_7:

      type metadata accessor for CollectionViewModel();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        OUTLINED_FUNCTION_26_0();
        v12 = *(v11 + 648);

        v12(v13);
        OUTLINED_FUNCTION_50();

        OUTLINED_FUNCTION_14_0();
        *(v10 + 40) = &off_1F5D55A68;
        swift_unknownObjectWeakAssign();
      }

      else
      {
      }

LABEL_9:

      return;
    }

    OUTLINED_FUNCTION_34_0();
    if (v8)
    {

      goto LABEL_7;
    }

    __break(1u);
  }

  else
  {
  }
}

void sub_1E378C604()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_contextData) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_showDebugUI) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerViewSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shiftLeftBySafeAreaMargin) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_shouldInvokeSelectTabDelegate) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerTabsShouldPipBeforeNavigation);
  *v2 = 0xD000000000000023;
  v2[1] = 0x80000001E425BBB0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_previousViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_documentForPendingEventHandling) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E378C72C(uint64_t a1@<X8>)
{
  type metadata accessor for PlayerCollectionViewModel();
  v3 = OUTLINED_FUNCTION_22_10();
  if (v3)
  {
    v4 = v3;

    if ((sub_1E378B634() & 1) == 0)
    {
      v21 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x8A8))();
      v22 = (*(*v4 + 1664))(v21);
      (*(*v4 + 1584))(v22);
      if (sub_1E378CAD8())
      {
        OUTLINED_FUNCTION_32_18();
        v9 = sub_1E3ADB20C();
        v23 = OUTLINED_FUNCTION_5_8();
        [v24 v25];

        sub_1E3790540(v30);
        v10 = *v30;
        v11 = *&v30[16];
        v12 = *&v30[32];
        v13 = *&v30[48];
        v14 = *&v30[64];
        v15 = *&v30[80];
        v16 = *&v30[96];
        v17 = *&v30[112];
        v18 = *&v30[128];
        v19 = *&v30[144];
        v20 = *&v30[160];
      }

      else
      {
        OUTLINED_FUNCTION_32_18();
        sub_1E3AD9A2C(v26);
        v9 = *v30;
        [*v30 setOrthogonalScrollingBehavior_];
        v27 = OUTLINED_FUNCTION_5_8();
        [*v30 v28];

        v20 = *&v30[168];
        v19 = *&v30[152];
        v18 = *&v30[136];
        v17 = *&v30[120];
        v16 = *&v30[104];
        v15 = *&v30[88];
        v14 = *&v30[72];
        v13 = *&v30[56];
        v12 = *&v30[40];
        v11 = *&v30[24];
        v10 = *&v30[8];
      }

      goto LABEL_12;
    }
  }

  sub_1E3ED6648(v30);
  if (sub_1E378B7F8())
  {
    v5 = *v30;
    sub_1E37904D0(v30, v29);
    sub_1E325F748(&v30[8], &unk_1ECF296A0);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_5_8();
      [v5 v7];
    }

    type metadata accessor for CollectionViewModel();
    if (OUTLINED_FUNCTION_22_10())
    {
      OUTLINED_FUNCTION_26_0();
      v29[0] = (*(v8 + 1344))();
      sub_1E3741534();
      if (sub_1E4205E84())
      {
        sub_1E37904D0(v30, v29);
        sub_1E325F748(&v30[8], &unk_1ECF296A0);
        if (v5)
        {
          [v5 setOrthogonalScrollingBehavior_];
        }
      }
    }
  }

  v9 = *v30;
  v10 = *&v30[8];
  v11 = *&v30[24];
  v12 = *&v30[40];
  v13 = *&v30[56];
  v14 = *&v30[72];
  v15 = *&v30[88];
  v16 = *&v30[104];
  v17 = *&v30[120];
  v18 = *&v30[136];
  v19 = *&v30[152];
  v20 = *&v30[168];
LABEL_12:
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 24) = v11;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v15;
  *(a1 + 104) = v16;
  *(a1 + 120) = v17;
  *(a1 + 136) = v18;
  *(a1 + 152) = v19;
  *(a1 + 168) = v20;
}

uint64_t sub_1E378CAD8()
{
  sub_1E37909B4();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E378CB90()
{
  sub_1E3790938();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E378CC40(uint64_t a1)
{
  type metadata accessor for PlayerCollectionViewModel();
  OUTLINED_FUNCTION_19_3();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*a1 + 960);

    if (v5(v6))
    {
      type metadata accessor for PlayerCellViewModel();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        (*(*v4 + 1584))();
        sub_1E38BAE74(&v23);
        v9 = v25 | (v26 << 16);
        v10 = v24;
        v21 = v30;
        v22 = v29;
        type metadata accessor for LayoutGrid();
        v11 = MEMORY[0x1E69E7D40];
        v12 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x8A8))();
        v13 = sub_1E3A2579C(v12);
        v14 = (*((*v11 & *v1) + 0x1B8))(v13);
        v15 = [v14 vuiTraitCollection];

        sub_1E3C2AE10();
        v17 = v16;
        (*(*v8 + 944))();

        v18 = sub_1E378D42C(v8);
        type metadata accessor for CardCollectionViewCell();
        v31 = (v10 << 8) | (v9 << 40) | 1;
        v33 = v28;
        v32 = v27;
        v35 = v21;
        v34 = v22;
        v19 = sub_1E3EEF4F4(v8, v18, &v31, 0);

        return v19;
      }
    }
  }

  return j__OUTLINED_FUNCTION_3_24();
}

id sub_1E378CF54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  OUTLINED_FUNCTION_26_3();
  v14 = *((*MEMORY[0x1E69E7D40] & v13) + 0x218);
  v15 = v14();
  sub_1E4200104();

  v16 = v14();
  sub_1E42000B4();

  if (*(&v50 + 1))
  {
    v48 = v50;
    v49 = v51;
    sub_1E4200034();

    v47 = *(&v50 + 1);
    v17 = v50;
    v18 = v51;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v47 = 0;
  }

  type metadata accessor for PlayerCellViewModel();
  v19 = OUTLINED_FUNCTION_22_10();
  if (v19 && v47 && (v20 = v19, type metadata accessor for PlayerCollectionViewModel(), (v21 = swift_dynamicCastClass()) != 0))
  {
    v22 = v21;
    v44 = v17;
    v45 = v9;
    v23 = v18;
    v24 = *(a3 + 98);

    v43 = v23;

    sub_1E3859230(v24);
    v25 = sub_1E4205ED4();

    v26 = sub_1E41FE7E4();
    v27 = [a1 vui:v25 dequeueReusableCellWithIdentifier:v26 indexPath:?];

    type metadata accessor for LayoutGrid();
    v28 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x8A8))();
    v29 = sub_1E3A2579C(v28);
    (*(*v22 + 1584))(v29);
    v30 = [a1 vuiTraitCollection];
    sub_1E3C2AE10();
    v32 = v31;
    (*(*v20 + 944))();

    type metadata accessor for UIFactory();
    v52 = 0;
    v53 = v27;
    v50 = 0u;
    v51 = 0u;
    v33 = sub_1E3280A90(0, &qword_1EE23B120);

    v34 = v27;
    sub_1E38E5240(v20, &v53, &v50, 0, 0, v33, &v48);

    sub_1E325F748(&v50, &qword_1ECF296C0);

    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v34))
    {
      v36 = v35;
      ObjectType = swift_getObjectType();
      v38 = *(v36 + 40);
      v42 = v34;
      v39 = v4;
      v38(v4, &off_1F5D9D1D8, ObjectType, v36);
    }

    else
    {
    }

    v17 = v44;
    v9 = v45;
  }

  else
  {
    v27 = sub_1E41CD42C(a1, a2, a3);
  }

  (*(v9 + 8))(v12, v46);
  sub_1E3790548(v17, v47);
  return v27;
}

id sub_1E378D42C(uint64_t a1)
{
  v3 = v1;
  v4 = *(a1 + 98);
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v7 = (*(v6 + 608))();
  sub_1E378D684(v4, v7);
  OUTLINED_FUNCTION_11_5();

  if (v2)
  {
    [v2 prepareForReuse];
    v9 = [v2 vuiCellView];
    v10 = OUTLINED_FUNCTION_23_13();
    [v11 v12];
  }

  else
  {
    v13 = (*((*v5 & *v1) + 0x1B8))(v8);
    sub_1E384EE08(v4);
    v14 = (*((*v5 & *v13) + 0xE0))();

    if (v14)
    {
      swift_getObjCClassFromMetadata();
      v15 = OUTLINED_FUNCTION_23_13();
      v2 = [v16 v17];
      v18 = *((*v5 & *v3) + 0x270);
      v19 = v2;
      v20 = v18(v25);
      v22 = v21;
      if (v19)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v24 = *v22;
        sub_1E37902C4(v19, v4);
        *v22 = v24;
      }

      else
      {
      }

      v20(v25, 0);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void *sub_1E378D684(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3740AE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_1E378D6CC()
{
  if (sub_1E378B634())
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    v2 = (*(v3 + 2216))();
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(v2);
  sub_1E378B634();
  sub_1E378B9CC();

  sub_1E3C2AE10();
}

void sub_1E378D7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21();
  if (((*(v4 + 2496))(2) & 1) == 0)
  {
    v5 = OUTLINED_FUNCTION_74();

    sub_1E3ED69F4(v5, v6, a3);
  }
}

uint64_t sub_1E378D8AC(int a1, _WORD *a2, _WORD *a3, void *a4)
{
  v6 = v4;
  v140 = a4;
  v151 = a3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v149 = v10;
  v150 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v12 - v11);
  v148 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v146 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20(v16 - v15);
  v144 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v143 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20(&v137 - v21);
  v22 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = sub_1E324FBDC();
  (*(v24 + 16))(v28, v29, v22);
  v30 = sub_1E41FFC94();
  v31 = sub_1E42067D4();
  v32 = os_log_type_enabled(v30, v31);
  LODWORD(v152) = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v139 = v22;
    v34 = v33;
    v5 = swift_slowAlloc();
    aBlock[0] = v5;
    *v34 = 136315138;
    LOBYTE(v157[0]) = a1;
    sub_1E3790838();
    v35 = sub_1E4207944();
    v37 = sub_1E3270FC8(v35, v36, aBlock);

    *(v34 + 4) = v37;
    v6 = v4;
    _os_log_impl(&dword_1E323F000, v30, v31, "PlayerHUDTemplateController::received event: [%s]", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E69143B0](v5, -1, -1);
    MEMORY[0x1E69143B0](v34, -1, -1);

    v38 = (*(v24 + 8))(v28, v139);
  }

  else
  {

    v38 = (*(v24 + 8))(v28, v22);
  }

  v39 = (*(*a2 + 544))(v38);
  if (!v39)
  {
    return 0;
  }

  v40 = v39;
  v41 = objc_opt_self();
  ViewModelEvent.rawValue.getter(v152);
  sub_1E4205ED4();
  OUTLINED_FUNCTION_11_5();

  v42 = [v41 eventDataSourceForEvent:v5 routerDataSource:v40];

  if (v42)
  {
    v43 = [v42 action];
    if (v43)
    {
      v44 = v43;
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v45 = swift_dynamicCastObjCClass();
      if (v45)
      {
        v46 = v45;
        goto LABEL_16;
      }
    }

    v47 = [v42 action];
    if (v47 && (v48 = v47, v49 = [v47 successAction], v48, v49))
    {
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      v46 = swift_dynamicCastObjCClass();
      if (!v46)
      {
      }
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

LABEL_16:
  v50 = v42;
  v51 = [v50 documentDataSource];
  if (v51)
  {

    goto LABEL_19;
  }

  if (!v46)
  {
    v138 = 0;
    v80 = v6;
    v81 = sub_1E378EAD8();
    v82 = v50;
    v84 = v83;
    v85 = [v82 action];
    v139 = v82;

    if (v85)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_31_7();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v87 = v85;
      }
    }

    else
    {
      v86 = 0;
    }

    v73 = v86 != 0;

    LOBYTE(aBlock[0]) = v152;
    LOBYTE(v157[0]) = 3;
    sub_1E379058C();
    OUTLINED_FUNCTION_33_16();
    if (sub_1E4205E84())
    {
      goto LABEL_83;
    }

    if (v85)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_31_7();
      if (swift_dynamicCastObjCClass())
      {
LABEL_83:

        return 0;
      }

      v151 = a2;
      objc_opt_self();
      OUTLINED_FUNCTION_31_7();
      v128 = swift_dynamicCastObjCClass();
      v127 = v40;
      if (v128)
      {
        v129 = v85;
        v128 = sub_1E37903E8(v128);
      }
    }

    else
    {
      v151 = a2;
      v127 = v40;
      v128 = 0;
    }

    v130 = objc_allocWithZone(VUIMediaInfo);

    v131 = sub_1E376538C(2, v128, v81, 0);
    [v131 setBackgroundColor_];
    [v131 setIntent_];
    v132 = [objc_opt_self() sharedInstance];
    v133 = [v132 appController];

    if (v133)
    {
      v134 = [v133 appContext];
    }

    else
    {
      v134 = 0;
    }

    v135 = v86 != 0;
    [v131 setAppContext_];

    v66 = v152;
    v136 = sub_1E378CB90();
    (*((*MEMORY[0x1E69E7D40] & *v80) + 0x9C8))(v131, v135, v136 & 1);

    v40 = v127;
    a2 = v151;
    v46 = v138;
    v50 = v139;
LABEL_57:
    if (sub_1E378CB90())
    {
      if (!v73)
      {
        goto LABEL_68;
      }
    }

    else if (!(v73 & sub_1E378CB90()))
    {
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_37_10();
    (*(v74 + 416))(aBlock);
    if (v154)
    {
      v75 = OUTLINED_FUNCTION_33_16();
      sub_1E327F454(v75, v76);
      sub_1E325F748(aBlock, &unk_1ECF296D0);
      __swift_project_boxed_opaque_existential_1(v157, v158);
      v77 = OUTLINED_FUNCTION_50();
      v79 = v78(v77);
      __swift_destroy_boxed_opaque_existential_1(v157);
    }

    else
    {
      sub_1E325F748(aBlock, &unk_1ECF296D0);
      v79 = 0;
    }

    (*(*a2 + 808))(v66, v79);

LABEL_68:
    if (sub_1E378CB90())
    {
      LOWORD(aBlock[0]) = a2[49];
      LOWORD(v157[0]) = 204;
      sub_1E3741534();
      OUTLINED_FUNCTION_33_16();
      v88 = sub_1E4205E84();
      OUTLINED_FUNCTION_5_0();
      if (byte_1ECF7121A != 1 || (OUTLINED_FUNCTION_37_10(), ((*(v89 + 2312))() & 1) == 0))
      {

        goto LABEL_76;
      }

      OUTLINED_FUNCTION_37_10();
      v91 = (*(v90 + 2192))();
      if (v91)
      {
        v92 = v91;
        if (([v91 respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_76;
        }

        [v92 nowPlayingTabControllerUserDidSelectElement:(v88 ^ 1) & 1 disappearanceReason:v140];
        swift_unknownObjectRelease();
      }
    }

LABEL_76:
    return v73;
  }

LABEL_19:

  if (v42)
  {
    v52 = [v50 documentDataSource];
    if (v52)
    {
      v53 = sub_1E3790460(v52);
      v42 = v54;
    }

    else
    {
      v53 = 0;
      v42 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  v55 = sub_1E4205F14();
  if (!v42)
  {

    goto LABEL_32;
  }

  if (v53 == v55 && v42 == v56)
  {
    goto LABEL_41;
  }

  v58 = OUTLINED_FUNCTION_40_9();

  if ((v58 & 1) == 0)
  {
LABEL_32:
    if (v46)
    {
      v60 = sub_1E3790460([v46 document]);
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    v63 = sub_1E4205F14();
    if (!v62)
    {
      v59 = 0;
      goto LABEL_44;
    }

    if (v60 != v63 || v62 != v64)
    {
      v59 = OUTLINED_FUNCTION_40_9();
LABEL_42:

LABEL_44:

      goto LABEL_45;
    }

LABEL_41:
    v59 = 1;
    goto LABEL_42;
  }

  v59 = 1;
LABEL_45:
  v66 = v152;
  if ((sub_1E378CB90() & 1) != 0 && (sub_1E378B634() & 1) == 0)
  {
    if ((v59 & 1) == 0)
    {
      v93 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_37_10();
      (*(v94 + 416))(aBlock);
      if (v154)
      {
        v95 = OUTLINED_FUNCTION_33_16();
        sub_1E327F454(v95, v96);
        sub_1E325F748(aBlock, &unk_1ECF296D0);
        __swift_project_boxed_opaque_existential_1(v157, v158);
        v97 = OUTLINED_FUNCTION_50();
        v99 = v98(v97);
        __swift_destroy_boxed_opaque_existential_1(v157);
      }

      else
      {
        sub_1E325F748(aBlock, &unk_1ECF296D0);
        v99 = 0;
      }

      *(v6 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling) = v99;

      v116 = [v6 parentViewController];
      if (v116)
      {
        v117 = v116;
        type metadata accessor for PlayerHUDDocumentViewController();
        OUTLINED_FUNCTION_19_3();
        v118 = swift_dynamicCastClass();
        if (v118)
        {
          v119 = v50;
          v120 = *((*v93 & *v118) + 0x1A0);
          v121 = v117;
          v120(0);
          v50 = v119;
        }
      }

      v122 = [objc_opt_self() sharedInstance];
      [v122 startPictureInPicture];

      sub_1E378B72C(v123);

      v124 = *(v6 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling);
      v125 = v151;
      *(v6 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling) = v151;

      v126 = v125;
      return 1;
    }
  }

  else if ((v59 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (![objc_opt_self() isPhone])
  {
LABEL_56:
    v73 = 0;
    goto LABEL_57;
  }

  v67 = [objc_opt_self() sharedInstance];
  v68 = [v67 playerViewController];

  v138 = v46;
  if (v68)
  {
    v69 = [v68 presentingViewController];

    if (v69)
    {
      type metadata accessor for PlaybackContainerViewController();
      OUTLINED_FUNCTION_19_3();
      v68 = swift_dynamicCastClass();
      if (v68)
      {
        OUTLINED_FUNCTION_21();
        v71 = *(v70 + 320);
        v72 = v69;
        v71(1);
      }
    }

    else
    {
      v68 = 0;
    }
  }

  result = [v6 vuiView];
  if (result)
  {
    v101 = result;
    v140 = v68;
    v152 = v40;
    v139 = v50;
    [result bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_14_25();
    result = [v6 vuiView];
    if (result)
    {
      v102 = result;
      [result bounds];
      OUTLINED_FUNCTION_9_10();

      v159.origin.x = OUTLINED_FUNCTION_24_0();
      CGRectGetHeight(v159);

      sub_1E378B72C(v103);
      v104 = *(v6 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling);
      v105 = v151;
      *(v6 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling) = v151;

      sub_1E3280A90(0, &qword_1EE23B1D0);
      v106 = v105;
      v107 = sub_1E4206A04();
      v108 = v141;
      sub_1E4204004();
      v109 = v142;
      sub_1E4204074();
      v151 = *(v143 + 8);
      v110 = v144;
      (v151)(v108, v144);
      OUTLINED_FUNCTION_4_0();
      v111 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v155 = sub_1E37905E0;
      v156 = v111;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E378AEA4;
      v154 = &block_descriptor_1;
      v112 = _Block_copy(aBlock);

      v113 = v145;
      sub_1E4203FE4();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E37907F0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
      sub_1E378AD28();
      v114 = v147;
      v115 = v150;
      sub_1E42072E4();
      MEMORY[0x1E69112E0](v109, v113, v114, v112);

      _Block_release(v112);
      (*(v149 + 8))(v114, v115);
      (*(v146 + 8))(v113, v148);
      (v151)(v109, v110);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E378EA00(uint64_t a1, char a2, char a3)
{
  result = OUTLINED_FUNCTION_5_0();
  if (byte_1ECF71218 == 1)
  {
    OUTLINED_FUNCTION_21();
    result = (*(v7 + 2192))();
    if (result)
    {
      v8 = result;
      if ([result respondsToSelector_])
      {
        [v8 nowPlayingTabControllerMediaInfoDidChangeTo:a1 canPlay:a2 & 1 wasAutoPlayed:a3 & 1];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1E378EAD8()
{
  v1 = v0;
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 552))();
  if (!v3)
  {
    return v3;
  }

  sub_1E384EE08(35);
  sub_1E3277E60(v4, v5, v3, &v41);

  if (!*(&v42 + 1))
  {

    sub_1E325F748(&v41, &unk_1ECF296E0);
    return 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  sub_1E384EE08(35);
  v8 = v7;
  v10 = v9;
  *(&v42 + 1) = v6;
  *&v41 = v39;

  v11 = sub_1E3A7CD30(v8, v10, &v41, 0);

  __swift_destroy_boxed_opaque_existential_1(&v41);
  v12 = [objc_opt_self() current];
  sub_1E3C2AE10();
  v16 = v15;
  if (!v11)
  {

LABEL_11:

    return 0;
  }

  v17 = v13;
  v18 = v14;
  v19 = *(*v11 + 392);

  v19(v20);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_8();
  (*(v21 + 1640))(v17, v16, v18);

  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_19_3();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    goto LABEL_11;
  }

  v23 = v22;
  OUTLINED_FUNCTION_26_0();
  v25 = *(v24 + 392);

  v25(v26);
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_8();
  (*(v27 + 744))();

  result = [v1 view];
  if (result)
  {
    v29 = result;

    [v29 bounds];
    v31 = v30;
    v33 = v32;

    v34 = (*(*v23 + 1000))(0, v31, v33);
    v36 = v34;
    if (v35 == 1)
    {
      if ([objc_opt_self() makeImageProxyWithDescriptor_])
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_25_4();
      }

      v41 = v39;
      v42 = v40;
      if (*(&v40 + 1))
      {
        sub_1E3280A90(0, &qword_1EE23B340);
        if (swift_dynamicCast())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_1E4298880;
          *(v3 + 32) = v38;
          v37 = v38;

          sub_1E379098C(v36, 1u);

          return v3;
        }

        sub_1E379098C(v36, 1u);
      }

      else
      {

        sub_1E379098C(v36, 1u);

        sub_1E325F748(&v41, &unk_1ECF296E0);
      }
    }

    else
    {
      if (v35 != 255)
      {
        sub_1E379098C(v34, v35);
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1E378EFE0()
{
  v6 = [v0 parentViewController];
  if (v6)
  {
    type metadata accessor for PlayerHUDDocumentViewController();
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = MEMORY[0x1E69E7D40];
      v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A0);
      v4 = v6;
      v3(1);

      OUTLINED_FUNCTION_26_3();
      (*((*v2 & v5) + 0x418))();
    }
  }
}

uint64_t sub_1E378F108()
{
  v1 = v0;
  v2 = TVAppFeature.isEnabled.getter(10);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    type metadata accessor for Document();
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling);
    v5 = v4;

    sub_1E4018A10(2u, v3, v4, 0, 0);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v6 = *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling);
    v7 = *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling);
    v8 = *(*v3 + 800);
    v5 = v7;

    v8(2, v6, v7, 0);
  }

LABEL_7:
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x9D8);

  return v9();
}

void sub_1E378F274()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isPIPing];

  if ((v2 & 1) == 0)
  {
    sub_1E378B72C(0);
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling);
    *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling) = 0;

    *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_documentForPendingEventHandling) = 0;

    *(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling) = 0;
  }
}

void sub_1E378F330()
{
  v1 = v0;
  OUTLINED_FUNCTION_21();
  v3 = 0.0;
  if ((*(v2 + 2264))())
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_12_5();
    v5 = (*(v4 + 2216))();
    sub_1E3A258E4(v5);
    v3 = -v6;
  }

  v7 = [v0 vuiView];
  if (!v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  OUTLINED_FUNCTION_9_10();

  v26.origin.x = OUTLINED_FUNCTION_24_0();
  Width = CGRectGetWidth(v26);
  v10 = objc_opt_self();
  v11 = [v10 shouldPlayerTabsUseVerticalLayout];
  v12 = 0.0;
  if ([v10 isIpadInterface])
  {
    if ((sub_1E378B634() | v11))
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 20.0;
    }
  }

  OUTLINED_FUNCTION_12_5();
  v24 = (*(v13 + 440))();
  v14 = [v1 vuiView];
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v27.origin.x = v17;
  v27.origin.y = v19;
  v27.size.width = v21;
  v27.size.height = v23;
  [v24 setFrame_];
}

void sub_1E378F570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  if ((sub_1E378B634() & 1) == 0 && (sub_1E378B7F8() & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_previousViewWidth;
    v15 = *&v0[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_previousViewWidth];
    v16 = [v0 view];
    if (!v16)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v17 = v16;
    [v16 bounds];
    OUTLINED_FUNCTION_3();

    if (v15 != OUTLINED_FUNCTION_14_25())
    {
      v18 = [v1 view];
      if (!v18)
      {
LABEL_37:
        __break(1u);
        return;
      }

      v19 = v18;
      [v18 bounds];
      OUTLINED_FUNCTION_3();

      *&v1[v14] = OUTLINED_FUNCTION_14_25();
      type metadata accessor for LayoutGrid();
      OUTLINED_FUNCTION_36_3();
      v20 = MEMORY[0x1E69E7D40];
      v22 = (*((*MEMORY[0x1E69E7D40] & v21) + 0x8A8))();
      sub_1E3A2579C(v22);
      LODWORD(v19) = [objc_opt_self() shouldPlayerTabsUseVerticalLayout];
      v23 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
      [v23 setInterSectionSpacing_];
      if (v19)
      {
        [v23 setScrollDirection_];
      }

      else
      {
        [v23 setScrollDirection_];
      }

      OUTLINED_FUNCTION_36_3();
      v25 = (*((*v20 & v24) + 0x1B8))();
      v26 = [v25 collectionViewLayout];

      type metadata accessor for StackCollectionViewCompositionalLayout();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        [v27 setConfiguration_];
      }

      OUTLINED_FUNCTION_12_5();
      v28 += 67;
      v29 = *v28;
      v30 = (*v28)();
      sub_1E4200104();

      v31 = v29();
      sub_1E42000A4();

      v32 = OUTLINED_FUNCTION_74();
      v33(v32);
    }

LABEL_23:
    OUTLINED_FUNCTION_10_21();
    return;
  }

  if ((sub_1E378B7F8() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (sub_1E378B634())
  {
    goto LABEL_23;
  }

  v3 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  if (!(*(v4 + 560))())
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_26_0();
  v7 = v6;
  (*(v5 + 464))();
  OUTLINED_FUNCTION_38();

  if (!v7)
  {
    goto LABEL_23;
  }

  if (sub_1E32AE9B0(v7))
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
LABEL_11:

      type metadata accessor for CollectionViewModel();
      v9 = OUTLINED_FUNCTION_22_10();
      if (v9)
      {
        v10 = v9;
        v39 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
        (*(*v10 + 1344))([v39 setInterSectionSpacing_]);
        [v39 setScrollDirection_];
        OUTLINED_FUNCTION_36_3();
        v12 = (*((*v3 & v11) + 0x1B8))();
        v38 = [v12 collectionViewLayout];

        type metadata accessor for StackCollectionViewCompositionalLayout();
        v13 = swift_dynamicCastClass();
        if (v13)
        {
          [v13 setConfiguration_];
        }

        else
        {
        }

        OUTLINED_FUNCTION_10_21();
      }

      else
      {
        OUTLINED_FUNCTION_10_21();
      }

      return;
    }

    OUTLINED_FUNCTION_34_0();
    if (v8)
    {

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_10_21();
}

uint64_t sub_1E378FB94(uint64_t a1)
{

  v4 = sub_1E378B72C(v3);
  v5 = (*(*a1 + 536))(v4);
  if (!v5)
  {
    OUTLINED_FUNCTION_25_4();
    goto LABEL_7;
  }

  sub_1E3277E60(*(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerTabsShouldPipBeforeNavigation), *(v1 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_playerTabsShouldPipBeforeNavigation + 8), v5, &v9);

  if (!v10)
  {
LABEL_7:
    sub_1E325F748(&v9, &unk_1ECF296E0);
    return 1;
  }

  if (OUTLINED_FUNCTION_13_14() && (v8 & 1) != 0)
  {
    v6 = [objc_opt_self() sharedInstance];
    [v6 startPictureInPicture];

    return 0;
  }

  return 1;
}

uint64_t sub_1E378FD08()
{

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_nowPlayingTabDelegate);
}

id sub_1E378FDA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerHUDTemplateController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E378FECC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = objc_opt_self();
  if (([v15 isPhone] & 1) != 0 || (objc_msgSend(v15, sel_isPad) & 1) != 0 || (type metadata accessor for TimedMetadataTemplateController(), swift_dynamicCastClass()))
  {
    v16 = sub_1E324FBDC();
    (*(v10 + 16))(v14, v16, v8);
    v17 = sub_1E41FFC94();
    v18 = sub_1E42067D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E323F000, v17, v18, "PlayerHUDTemplateController::contextMenuConfigurationForItemAt:returning nil", v19, 2u);
      MEMORY[0x1E69143B0](v19, -1, -1);
    }

    (*(v10 + 8))(v14, v8);
    return 0;
  }

  else
  {
    v22 = sub_1E41FE7E4();
    v23.receiver = v4;
    v23.super_class = type metadata accessor for PlayerHUDTemplateController();
    v20 = objc_msgSendSuper2(&v23, sel_vuiCollectionView_contextMenuConfigurationForItemAt_point_, a1, v22, a2, a3);
  }

  return v20;
}

uint64_t sub_1E37901E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3740AE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF29758);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  sub_1E3280A90(0, &qword_1EE23B120);
  sub_1E37414E0();
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

void sub_1E37902C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E3740AE8(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF29758);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E3740AE8(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = v13[7];
    v15 = *(v14 + 8 * v9);
    *(v14 + 8 * v9) = a1;
  }

  else
  {

    sub_1E37519DC(v9, a2, a1, v13);
  }
}

uint64_t sub_1E37903E8(void *a1)
{
  v2 = [a1 videosPlayables];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B1C0);
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3790460(void *a1)
{
  v2 = [a1 controllerRef];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E37904D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF42A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3790548(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E379058C()
{
  result = qword_1ECF296C8;
  if (!qword_1ECF296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF296C8);
  }

  return result;
}

uint64_t sub_1E37905E0()
{
  OUTLINED_FUNCTION_5_0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling;
    v3 = *(result + OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_viewModelForPendingEventHandling);
    if (v3)
    {
      v4 = *(*v3 + 648);

      v4(v5);
      OUTLINED_FUNCTION_38();

      OUTLINED_FUNCTION_3_0();
      v3[5] = 0;
      swift_unknownObjectWeakAssign();

      if (*&v1[v2])
      {
        v6 = *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling];
        v7 = *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling];
        OUTLINED_FUNCTION_8();
        v9 = *(v8 + 800);
        v10 = v7;

        v9(2, v6, v7, 0);

        v11 = *&v1[v2];
        if (v11)
        {
          v12 = *(*v11 + 648);

          v12(v13);
          OUTLINED_FUNCTION_38();

          OUTLINED_FUNCTION_14_0();
          v11[5] = &off_1F5D55A68;
          swift_unknownObjectWeakAssign();
        }
      }
    }

    sub_1E378B72C(0);
    v14 = *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling];
    *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_targetResponderForPendingEventHandling] = 0;

    *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_documentForPendingEventHandling] = 0;

    *&v1[OBJC_IVAR____TtC8VideosUI27PlayerHUDTemplateController_impressionsForPendingEventHandling] = 0;
  }

  return result;
}

uint64_t sub_1E37907F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3790838()
{
  result = qword_1ECF3FA40;
  if (!qword_1ECF3FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3FA40);
  }

  return result;
}

unint64_t sub_1E3790938()
{
  result = qword_1EE280F70;
  if (!qword_1EE280F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280F70);
  }

  return result;
}

void sub_1E379098C(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_1E37909A0(a1, a2);
  }
}

void sub_1E37909A0(id a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
  }
}

unint64_t sub_1E37909B4()
{
  result = qword_1ECF29768;
  if (!qword_1ECF29768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29768);
  }

  return result;
}

id sub_1E3790A30()
{
  v1 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView];
  }

  else
  {
    type metadata accessor for ConnectedAppFooterViewCell.ComponentView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 contentView];
    [v5 addSubview_];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_1E3790AD8()
{
  v0 = sub_1E3790A30();
  v1 = *&v0[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleView];
  v2 = v1;

  return v1;
}

uint64_t sub_1E3790B14()
{
  v0 = sub_1E3790A30();
  v1 = *&v0[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews];

  return v1;
}

id sub_1E3790B54()
{
  v2 = v0;
  v3 = sub_1E3790A30();
  v4 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout;
  OUTLINED_FUNCTION_15_0();
  if (*&v0[v4])
  {

    sub_1E39E95D8();
    OUTLINED_FUNCTION_30_6();
  }

  else
  {
    v1 = 0;
  }

  *&v3[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout] = v1;

  v5 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView;
  v6 = *&v0[OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView];
  if (*&v0[v4])
  {
    v7 = v6;
    OUTLINED_FUNCTION_11_5();

    sub_1E39E9C54();
    OUTLINED_FUNCTION_30_6();
  }

  else
  {
    v3 = v6;
    v1 = 0;
  }

  *&v3[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout] = v1;

  v8 = *&v0[v5];
  v9 = *&v0[v4];
  if (v9)
  {
    v10 = v8;
    OUTLINED_FUNCTION_11_5();

    sub_1E39E94F0();
    v11 = OUTLINED_FUNCTION_30_6();
    v9 = (*(*v1 + 1152))(v11);
    v13 = v12;

    if (v13)
    {
      v9 = 0;
    }
  }

  else
  {
    v3 = v8;
  }

  *&v3[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_interItemSpacing] = v9;

  v14 = *&v2[v5];
  if (*&v2[v4])
  {
    v15 = v14;
    OUTLINED_FUNCTION_11_5();

    sub_1E39EA5DC();
    OUTLINED_FUNCTION_30_6();
  }

  else
  {
    v3 = v14;
    v1 = 0;
  }

  *&v3[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorLayout] = v1;

  return [v2 setNeedsLayout];
}

uint64_t sub_1E3790D28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1E3790B54();
}

id sub_1E3790D98()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_debugUIOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout) = 0;
  v13 = v0;
  v14 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  *(v6 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0);
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00);
  v8 = sub_1E42062A4();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12[4] = sub_1E3790F64;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E3790FBC;
  v12[3] = &block_descriptor_2;
  v10 = _Block_copy(v12);

  [v7 vui:v8 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  return v7;
}

void sub_1E3790F64()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for ConnectedAppFooterLayout();
    v2 = sub_1E39EA778();
    sub_1E3790D28(v2);
  }
}

uint64_t sub_1E3790FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_1E3791058()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_debugUIOverlay) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E37910F0(char a1)
{
  v3 = v1;
  swift_getObjectType();
  v5 = OUTLINED_FUNCTION_17_4();
  objc_msgSendSuper2(v6, v7, v5);
  v8 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout;
  if (a1)
  {
    OUTLINED_FUNCTION_5_0();
    if (*&v3[v8])
    {
      OUTLINED_FUNCTION_8();
      v10 = *(v9 + 304);

      v10(v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    if (*&v3[v8])
    {
      OUTLINED_FUNCTION_8();
      v2 = *(v12 + 176);

      v2(&v63, v13);
    }

    v14 = OUTLINED_FUNCTION_6_18();
    sub_1E3CEE8A0(v14, v15, v16, v17, v18);
    v19 = [v3 contentView];
    v20 = OUTLINED_FUNCTION_6_18();
    [v21 v22];

    if (*&v3[v8])
    {

      sub_1E39E94F0();
      OUTLINED_FUNCTION_11_5();

      (*(*v2 + 176))(&v64, v23);
    }

    v24 = [v3 contentView];
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = OUTLINED_FUNCTION_6_18();
    v35 = sub_1E3CEE8A0(v31, v32, v33, v34, v26);
    v61 = v36;
    v62 = v35;
    v38 = v37;
    v40 = v39;
    v41 = sub_1E3790A30();
    sub_1E37914AC(1, v38, v40);
    OUTLINED_FUNCTION_18_3();

    v42 = [v3 contentView];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v65.origin.x = v44;
    v65.origin.y = v46;
    v65.size.width = v48;
    v65.size.height = v50;
    v66.origin.x = v62;
    v66.origin.y = v61;
    v66.size.width = v28;
    v66.size.height = v30;
    CGRectContainsRect(v65, v66);
    v51 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView;
    v52 = *&v3[OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView];
    if (*&v3[v8])
    {
      v53 = v52;

      sub_1E39E94F0();
    }

    else
    {
      v53 = v52;
    }

    OUTLINED_FUNCTION_6_18();
    sub_1E3792B5C(v54, v55, v56, v57);
    OUTLINED_FUNCTION_18_3();

    v58 = OUTLINED_FUNCTION_17_4();
    [v59 v60];

    [*&v3[v51] setNeedsLayout];
  }

  OUTLINED_FUNCTION_17_4();
}

void sub_1E37914AC(char a1, double a2, double a3)
{
  v5 = v3;
  ObjectType = swift_getObjectType();
  v10 = sub_1E41FFCB4();
  v331 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v310 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342.receiver = v5;
  v342.super_class = ObjectType;
  v319 = a2;
  v312 = a3;
  objc_msgSendSuper2(&v342, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v13 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout;
  v14 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout];
  v333 = *&OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout;
  if (!v14)
  {
    v350[0] = 0.0;
LABEL_8:
    *&v30 = 0.0;
    v357 = 0.0;
    v32 = 1;
    LOBYTE(v358) = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_8();
  v16 = *(v15 + 304);

  *&v18 = COERCE_DOUBLE(v16(v17));
  LOBYTE(v4) = v19;

  v20 = *&v18;
  if (v4)
  {
    v20 = 0.0;
  }

  v21 = *&v5[v13];
  v350[0] = v20;
  if (!v21)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_8();
  v23 = *(v22 + 328);

  *&v25 = COERCE_DOUBLE(v23(v24));
  v27 = v26;

  v4 = *&v5[v13];
  v357 = *&v25;
  LOBYTE(v358) = v27 & 1;
  if (*&v4 == 0.0)
  {
    *&v30 = 0.0;
    v32 = 1;
  }

  else
  {
    v28 = *(*v4 + 352);

    *&v30 = COERCE_DOUBLE(v28(v29));
    v32 = v31;
  }

LABEL_9:
  v352 = *&v30;
  LOBYTE(v353) = v32 & 1;
  sub_1E3793CAC();
  v33 = OUTLINED_FUNCTION_1_55();
  v334 = *&v34;
  sub_1E41E1418(v33, v35, v36, v37, v34, v38);
  v39 = v351[0];
  v40 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout;
  v41 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout];
  v314 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout;
  if (*&v41 == 0.0)
  {
    v350[0] = 0.0;
LABEL_16:
    OUTLINED_FUNCTION_24_6();
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_8();
  v43 = *(v42 + 304);

  *&v4 = COERCE_DOUBLE(v43(v44));
  v46 = v45;

  v47 = *&v4;
  if (v46)
  {
    v47 = 0.0;
  }

  v41 = *&v5[v40];
  v350[0] = v47;
  if (*&v41 == 0.0)
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_8();
  v49 = *(v48 + 328);

  *&v51 = COERCE_DOUBLE(v49(v50));
  v52 = v40;
  v54 = v53;

  v55 = *&v5[v52];
  v357 = *&v51;
  LOBYTE(v358) = v54 & 1;
  if (v55)
  {
    v4 = *(*v55 + 352);

    *&v41 = COERCE_DOUBLE((v4)(v56));
    LOBYTE(v4) = v57;
  }

  else
  {
    *&v41 = 0.0;
    LOBYTE(v4) = 1;
  }

  v40 = v314;
LABEL_20:
  v352 = *&v41;
  LOBYTE(v353) = v4 & 1;
  v58 = OUTLINED_FUNCTION_1_55();
  sub_1E41E1418(v58, v59, v60, v61, *&v334, v62);
  v329 = v351[0];
  v63 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorLayout;
  v64 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorLayout];
  v328 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorLayout;
  if (*&v64 == 0.0)
  {
    v350[0] = 0.0;
LABEL_27:
    OUTLINED_FUNCTION_24_6();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_8();
  v66 = *(v65 + 304);

  *&v4 = COERCE_DOUBLE(v66(v67));
  v69 = v68;

  v70 = *&v4;
  if (v69)
  {
    v70 = 0.0;
  }

  v64 = *&v5[v63];
  v350[0] = v70;
  if (*&v64 == 0.0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_8();
  v72 = *(v71 + 328);

  *&v74 = COERCE_DOUBLE(v72(v73));
  v76 = v75;

  v77 = *&v5[v328];
  v357 = *&v74;
  LOBYTE(v358) = v76 & 1;
  if (v77)
  {
    v4 = *(*v77 + 352);

    *&v64 = COERCE_DOUBLE((v4)(v78));
    LOBYTE(v4) = v79;
  }

  else
  {
    *&v64 = 0.0;
    LOBYTE(v4) = 1;
  }

  v40 = v314;
LABEL_30:
  v352 = *&v64;
  LOBYTE(v353) = v4 & 1;
  v80 = OUTLINED_FUNCTION_1_55();
  sub_1E41E1418(v80, v81, v82, v83, *&v334, v84);
  v315 = v351[0];
  if (*&v5[v328])
  {
    OUTLINED_FUNCTION_8();
    v86 = *(v85 + 176);

    v86(v343, v87);
    v88 = *v343;
    v89 = *&v343[1];
    v90 = *&v343[2];

    v91 = 0.0;
    v92 = 0.0;
    if ((v344 & 1) == 0)
    {
      v92 = sub_1E3952BD8(v88, v89, v90);
    }

    if (*&v5[v328])
    {
      OUTLINED_FUNCTION_8();
      v94 = *(v93 + 152);

      v94(v345, v95);
      v96 = *v345;
      v97 = *&v345[1];
      v98 = *&v345[2];

      if ((v346 & 1) == 0)
      {
        v91 = sub_1E3952BD8(v96, v97, v98);
      }
    }
  }

  else
  {
    v92 = 0.0;
    v91 = 0.0;
  }

  if (a1)
  {
    v332 = v39;
    v99 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews];
    if (v99)
    {
      v334 = sub_1E32AE9B0(v99);
      v99 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews];
    }

    else
    {
      v334 = 0.0;
    }

    v330 = *&v92;
    v331 = v91;
    if (v99)
    {
      sub_1E32AE9B0(v99);
    }

    v328 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_interItemSpacing];
    if (*&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout])
    {
      OUTLINED_FUNCTION_8();
      v124 = *(v123 + 176);

      v124(&v352, v125);
      v126 = v352;
      v127 = v353;
      v128 = v354;

      if ((v356 & 1) == 0)
      {
        sub_1E3952BD8(v126, v127, v128);
      }
    }

    if (*&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout])
    {
      OUTLINED_FUNCTION_8();
      v130 = *(v129 + 176);

      v130(&v357, v131);
      v132 = v357;
      v133 = v358;
      v134 = v359;

      if ((v360 & 1) == 0)
      {
        sub_1E3952BD8(v132, v133, v134);
      }
    }

    v135 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout];
    v333 = 0.0;
    if (v135)
    {
      OUTLINED_FUNCTION_8();
      v137 = *(v136 + 152);

      v137(&v352, v138);
      v332 = *&v352;

      if ((v356 & 1) == 0)
      {
        OUTLINED_FUNCTION_12_26();
        sub_1E3952BD8(v139, v140, v141);
      }
    }

    if (*&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonLayout])
    {
      OUTLINED_FUNCTION_8();
      v143 = *(v142 + 152);

      v143(&v357, v144);
      v145 = v357;
      v146 = v358;
      v147 = v359;

      if ((v360 & 1) == 0)
      {
        v333 = sub_1E3952BD8(v145, v146, v147);
      }
    }

    return;
  }

  [v5 bounds];
  x = v362.origin.x;
  v372.origin.x = 0.0;
  v372.origin.y = 0.0;
  v372.size.width = 0.0;
  v372.size.height = 0.0;
  width = v362.size.width;
  y = v362.origin.y;
  height = v362.size.height;
  if (CGRectEqualToRect(v362, v372))
  {
    v101 = sub_1E324FBDC();
    v102 = v331;
    (*(*&v331 + 16))(v12, v101, v10);
    v103 = sub_1E41FFC94();
    v104 = sub_1E42067D4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1E323F000, v103, v104, "ConnectedAppFooterViewCell::ComponentView bounds are zero - ignoring layout pass", v105, 2u);
      MEMORY[0x1E69143B0](v105, -1, -1);
    }

    (*(*&v102 + 8))(v12, v10);
    return;
  }

  v106 = v333;
  v107 = *&v5[*&v333];
  v332 = v39;
  if (v107)
  {
    OUTLINED_FUNCTION_8();
    v109 = *(v108 + 200);
    LOBYTE(v10) = v108 - 56;

    v109(v110);
    OUTLINED_FUNCTION_22_11();
    v111 = OUTLINED_FUNCTION_14_26();
    if (!v113)
    {
      v111 = v112;
    }

    v114 = *&v5[*&v106];
    v350[0] = v111;
    if (v114)
    {
      OUTLINED_FUNCTION_8();
      v116 = *(v115 + 224);
      v117 = (v115 + 224);

      v116(v118);
      OUTLINED_FUNCTION_23_14();
      v119 = *&v5[*&v333];
      v357 = *&v117;
      LOBYTE(v358) = LOBYTE(v106) & 1;
      if (v119 == 0.0)
      {
        v122 = 0.0;
        LOBYTE(v10) = 1;
      }

      else
      {
        v120 = *(**&v119 + 248);
        v10 = **&v119 + 248;

        v122 = v119;
        v120(v121);
        OUTLINED_FUNCTION_20_19();
      }

      goto LABEL_68;
    }
  }

  else
  {
    v350[0] = v319;
  }

  v122 = 0.0;
  OUTLINED_FUNCTION_13_32();
LABEL_68:
  v352 = v122;
  LOBYTE(v353) = v10 & 1;
  v148 = OUTLINED_FUNCTION_1_55();
  sub_1E41E1418(v148, v149, v150, v151, *&v334, v152);
  v153 = v333;
  v154 = MEMORY[0x1E69DDCE0];
  if (*&v5[*&v333])
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v155 + 152);

    (v10)(v347, v156);

    if (*&v5[*&v153])
    {
      OUTLINED_FUNCTION_8();
      v10 = *(v157 + 176);

      (v10)(v348, v158);
    }
  }

  OUTLINED_FUNCTION_12_26();
  sub_1E3CEE8A0(v159, v160, v161, v162, x);
  OUTLINED_FUNCTION_18_3();

  sub_1E3792B5C(v163, v164, v165, v166);

  if (*&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleView])
  {
    v167 = OUTLINED_FUNCTION_28_11();
    [v168 v169];
  }

  v170 = *&v5[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews];
  if (!v170)
  {
    return;
  }

  v171 = *&v5[v40];
  if (v171 == 0.0)
  {

    v350[0] = v319;
    OUTLINED_FUNCTION_13_32();
    v176 = v328;
    v177 = x;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v10 = *(v172 + 200);

    (v10)(v173);
    OUTLINED_FUNCTION_22_11();
    v174 = OUTLINED_FUNCTION_14_26();
    if (!v113)
    {
      v174 = v175;
    }

    v171 = *&v5[v40];
    v350[0] = v174;
    v176 = v328;
    v177 = x;
    if (v171 == 0.0)
    {
      OUTLINED_FUNCTION_13_32();
    }

    else
    {
      OUTLINED_FUNCTION_8();
      v179 = *(v178 + 224);

      v179(v180);
      OUTLINED_FUNCTION_23_14();
      v181 = *&v5[v40];
      v357 = *&v179;
      LOBYTE(v358) = v170 & 1;
      if (v181 == 0.0)
      {
        v171 = 0.0;
        LOBYTE(v10) = 1;
      }

      else
      {
        v10 = *(**&v181 + 248);

        v171 = v181;
        (v10)(v182);
        OUTLINED_FUNCTION_20_19();
      }
    }
  }

  v352 = v171;
  LOBYTE(v353) = v10 & 1;
  v183 = OUTLINED_FUNCTION_1_55();
  sub_1E41E1418(v183, v184, v185, v186, *&v334, v187);
  v322 = v351[0];
  v363.origin.x = OUTLINED_FUNCTION_28_11();
  CGRectGetMaxY(v363);
  v330 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_interItemSpacing;
  if (*&v5[*&v333])
  {
    OUTLINED_FUNCTION_8();
    v189 = *(v188 + 152);

    v189(v349, v190);
  }

  v327 = sub_1E32AE9B0(v170);
  v191 = v170;
  v192 = 0;
  v313 = OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorView;
  v323 = v191 & 0xC000000000000001;
  v193 = v191 & 0xFFFFFFFFFFFFFF8;
  v194 = *v154;
  v325 = v154[1];
  v326 = v194;
  v332 = v191 & 0xFFFFFFFFFFFFFF8;
  if (v191 < 0)
  {
    v193 = v191;
  }

  v310[1] = v193;
  v311 = v191;
  v320 = v191 >> 62;
  v321 = v191 + 32;
  v195 = v154[3];
  v324 = v154[2];
  while (1)
  {
    if (v192 == v327)
    {

      return;
    }

    if (v323)
    {
      v196 = COERCE_DOUBLE(MEMORY[0x1E6911E60](v192, v311));
    }

    else
    {
      if (v192 >= *(v332 + 16))
      {
        goto LABEL_169;
      }

      *&v196 = *(v321 + 8 * v192);
    }

    v333 = v196;
    if (__OFADD__(v192, 1))
    {
      break;
    }

    *&v331 = v192 + 1;
    if (*&v5[v40])
    {
      OUTLINED_FUNCTION_8();
      v198 = *(v197 + 176);

      v198(v350, v199);
    }

    OUTLINED_FUNCTION_12_26();
    v204 = sub_1E3CEE8A0(v200, v201, v202, v203, v177);
    v205 = *&v5[v40];
    v338 = v204;
    v339 = v206;
    v340 = v207;
    v341 = v208;
    if (v205)
    {
      OUTLINED_FUNCTION_26();
      v210 = *(v209 + 456);

      switch(v210(v211))
      {
        case 1u:
          v214 = OUTLINED_FUNCTION_3_25();
          v218 = CGRect.center.getter(v214, v215, v216, v217);
          v219 = OUTLINED_FUNCTION_5_35();
          CGRect.center.getter(v219, v220, v221, v222);
          CGRect.center.setter(v218, v223);

          break;
        case 2u:
        case 4u:
          v364.origin.x = OUTLINED_FUNCTION_3_25();
          CGRectGetMinX(v364);
          goto LABEL_99;
        case 3u:
        case 5u:
          v365.origin.x = OUTLINED_FUNCTION_3_25();
          MaxX = CGRectGetMaxX(v365);
          v366.origin.x = OUTLINED_FUNCTION_5_35();
          v213 = CGRectGetWidth(v366);

          v338 = MaxX - v213;
          break;
        default:
LABEL_99:

          break;
      }
    }

    v224 = OUTLINED_FUNCTION_5_35();
    [v225 v226];
    if (!*&v5[v40] || (OUTLINED_FUNCTION_8(), v228 = *(v227 + 2048), v229 = , v230 = v228(v229), v231 = , v232 = (*(*v230 + 456))(v231), , v232 == 7))
    {
      v232 = 1;
    }

    LOBYTE(v338) = v232;
    LOBYTE(v335) = 1;
    sub_1E3793D00();
    if ((sub_1E4205E84() & 1) == 0)
    {
      if (sub_1E3793934())
      {
        v233 = 1;
      }

      else
      {
        v233 = sub_1E3793934();
      }

      v234 = v333;
      [*&v333 layoutSubviews];
      v235 = [*&v234 subviews];
      sub_1E3280A90(0, &qword_1EE23AE80);
      v236 = sub_1E42062B4();

      v237 = sub_1E32AE9B0(v236);
      if (v237)
      {
        v238 = v237;
        if (v237 < 1)
        {
          goto LABEL_171;
        }

        v239 = 0;
        v240 = 1;
        v241 = 0.0;
        do
        {
          if ((v236 & 0xC000000000000001) != 0)
          {
            v242 = MEMORY[0x1E6911E60](v239, v236);
          }

          else
          {
            v242 = *(v236 + 8 * v239 + 32);
          }

          v243 = v242;
          objc_opt_self();
          v244 = swift_dynamicCastObjCClass();
          if (v244)
          {
            if (v240)
            {
              [v244 frame];
              if (v233)
              {
                MinX = CGRectGetMinX(*&v245);
              }

              else
              {
                MinX = CGRectGetMaxX(*&v245);
              }

              v241 = MinX;

              v240 = 0;
            }

            else
            {
              v338 = v241;
              LOBYTE(v339) = 0;
              [v244 frame];
              if (v233)
              {
                v254 = CGRectGetMinX(*&v250);
              }

              else
              {
                v254 = CGRectGetMaxX(*&v250);
              }

              v361[0] = v254;
              min<A>(_:_:)();

              v240 = 0;
              v241 = v335;
            }
          }

          else
          {
          }

          ++v239;
        }

        while (v238 != v239);

        v40 = v314;
        v176 = v328;
        if ((v240 & 1) == 0)
        {
          if (v233)
          {
            v255 = -v241;
          }

          else
          {
            v255 = v241;
          }

          v256 = v333;
          [*&v333 frame];
          [*&v256 setFrame_];
          [*&v256 setNeedsLayout];
        }
      }

      else
      {

        v176 = v328;
      }
    }

    v367.origin.x = OUTLINED_FUNCTION_5_35();
    CGRectGetMaxY(v367);
    if (*&v5[v40])
    {
      OUTLINED_FUNCTION_8();
      v259 = *(v258 + 152);

      v259(v351, v260);
    }

    if (v320)
    {
      v261 = sub_1E4207384();
    }

    else
    {
      v261 = *(v332 + 16);
    }

    if (__OFSUB__(v261, 1))
    {
      goto LABEL_170;
    }

    if (v192 >= v261 - 1)
    {

      v192 = *&v331;
    }

    else
    {
      if (!*&v5[v176])
      {
        v337 = v319;
LABEL_147:
        v276 = 0.0;
        v338 = 0.0;
        LOBYTE(v274) = 1;
        LOBYTE(v339) = 1;
        goto LABEL_148;
      }

      OUTLINED_FUNCTION_8();
      v263 = *(v262 + 200);

      v263(v264);
      OUTLINED_FUNCTION_22_11();
      v265 = OUTLINED_FUNCTION_14_26();
      if (!v113)
      {
        v265 = v266;
      }

      v267 = *&v5[v176];
      v337 = v265;
      if (!v267)
      {
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_8();
      v269 = *(v268 + 224);
      *&v270 = v268 + 224;

      v269(v271);
      OUTLINED_FUNCTION_23_14();
      v272 = *&v5[v176];
      v338 = v270;
      LOBYTE(v339) = v192 & 1;
      if (v272 == 0.0)
      {
        v276 = 0.0;
        LOBYTE(v274) = 1;
      }

      else
      {
        v273 = *(**&v272 + 248);
        v274 = **&v272 + 248;

        v276 = v272;
        v273(v275);
        OUTLINED_FUNCTION_20_19();
      }

LABEL_148:
      v335 = v276;
      v336 = v274 & 1;
      sub_1E41E1418(&v337, &v338, &v335, MEMORY[0x1E69E7DE0], *&v334, v361);
      if (!*&v5[v176] || (OUTLINED_FUNCTION_8(), v278 = *(v277 + 176), v279 = , v278(&v352, v279), v280 = v352, v281 = v353, v283 = v354, v282 = v355, , (v356 & 1) != 0))
      {
        v281 = v325;
        v280 = v326;
        v283 = v324;
        v282 = v195;
      }

      v284 = sub_1E3CEE8A0(v280, v281, v283, v282, v177);
      v285 = *&v5[v176];
      v338 = v284;
      v339 = v286;
      v340 = v287;
      v341 = v288;
      if (v285)
      {
        OUTLINED_FUNCTION_26();
        v290 = *(v289 + 456);

        switch(v290(v291))
        {
          case 1u:
            v294 = OUTLINED_FUNCTION_3_25();
            v298 = CGRect.center.getter(v294, v295, v296, v297);
            v299 = OUTLINED_FUNCTION_4_25();
            CGRect.center.getter(v299, v300, v301, v302);
            CGRect.center.setter(v298, v303);

            break;
          case 2u:
          case 4u:
            v368.origin.x = OUTLINED_FUNCTION_3_25();
            CGRectGetMinX(v368);
            goto LABEL_154;
          case 3u:
          case 5u:
            v369.origin.x = OUTLINED_FUNCTION_3_25();
            v292 = CGRectGetMaxX(v369);
            v370.origin.x = OUTLINED_FUNCTION_4_25();
            v293 = CGRectGetWidth(v370);

            v338 = v292 - v293;
            break;
          default:
LABEL_154:

            break;
        }
      }

      if (*&v5[v313])
      {
        v304 = OUTLINED_FUNCTION_4_25();
        [v305 v306];
      }

      v371.origin.x = OUTLINED_FUNCTION_4_25();
      CGRectGetMaxY(v371);
      if (*&v5[v176])
      {
        OUTLINED_FUNCTION_8();
        v308 = *(v307 + 152);

        v308(&v357, v309);
      }

      else
      {
      }

      v192 = *&v331;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
}

void sub_1E3792B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    switch((*(*a1 + 456))(a1, a2, a3, a4))
    {
      case 1u:
        v4 = OUTLINED_FUNCTION_8_29();
        v8 = CGRect.center.getter(v4, v5, v6, v7);
        v9 = OUTLINED_FUNCTION_2_0();
        CGRect.center.getter(v9, v10, v11, v12);
        CGRect.center.setter(v8, v13);
        break;
      case 2u:
      case 4u:
        v14.origin.x = OUTLINED_FUNCTION_8_29();
        CGRectGetMinX(v14);
        break;
      case 3u:
      case 5u:
        v15.origin.x = OUTLINED_FUNCTION_8_29();
        CGRectGetMaxX(v15);
        v16.origin.x = OUTLINED_FUNCTION_2_0();
        CGRectGetWidth(v16);
        break;
      default:
        break;
    }
  }

  OUTLINED_FUNCTION_2_0();
}

char *sub_1E3792CCC(unint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  OUTLINED_FUNCTION_26();
  v5 += 49;
  v6 = *v5;
  v7 = v5;
  v8 = a2;
  v9 = v6();
  if (v9)
  {
    v10 = v9;
LABEL_6:
    if (*v10 == _TtC8VideosUI24ConnectedAppFooterLayout)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2)
  {
    v11 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_layout;
    OUTLINED_FUNCTION_5_0();
    v10 = *&v8[v11];
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

LABEL_11:
  v10 = 0;
LABEL_12:
  type metadata accessor for ConnectedAppFooterLayout();
  v12 = sub_1E39EA778();
  if (v10)
  {
    OUTLINED_FUNCTION_5_0();
    v13 = *(v10 + 136);
    v14 = v13;
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_5_0();
  if (!v13)
  {
    goto LABEL_21;
  }

  v7 = sub_1E4205F14();
  v16 = v15;
  if (v7 == sub_1E4205F14() && v16 == v17)
  {
  }

  else
  {
    v7 = sub_1E42079A4();

    if ((v7 & 1) == 0)
    {
LABEL_21:

      v10 = v12;
      goto LABEL_24;
    }
  }

  if (!v10)
  {
    goto LABEL_95;
  }

LABEL_24:
  type metadata accessor for ViewModel();

  j___s8VideosUI9ViewModelCMa();
  v19 = sub_1E39C1CF8(23);
  if (sub_1E32AE9B0(v19))
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](0, v19);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_98;
      }

      v20 = *(v19 + 32);
    }

    type metadata accessor for UIFactory();

    v21 = sub_1E3790AD8();
    v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v22 = v10;
    v23 = sub_1E39E95D8();
    sub_1E3280A90(0, &qword_1EE23AE80);
    v24 = v4;
    v25 = sub_1E393D92C(v20, v21, &v108, v23);

    sub_1E373C624(&v108);
    v26 = sub_1E3790AD8();
    [v26 removeFromSuperview];

    v27 = v24;
    v28 = sub_1E3790A30();
    v29 = *&v28[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleView];
    *&v28[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleView] = v25;
    v30 = v25;

    if (*&v28[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleView])
    {
      [v28 addSubview_];
    }

    v4 = v27;
    v10 = v22;
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();
  v32 = (*(v31 + 488))();
  if (!v32)
  {
    goto LABEL_75;
  }

  v33 = sub_1E373E010(91, v32);

  if (!v33)
  {
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_8();
  a1 = (*(v34 + 464))();

  if (!a1)
  {
    goto LABEL_75;
  }

  v107 = v10;
  v35 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v36 = sub_1E32AE9B0(a1);
  v103 = v4;
  if (v36)
  {
    v7 = v36;
    type metadata accessor for UIFactory();
    if (v7 < 1)
    {
      goto LABEL_99;
    }

    v37 = 0;
    v105 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1E6911E60](v37, a1);
      }

      else
      {
        v38 = *(a1 + 8 * v37 + 32);
      }

      v110 = 0;
      v108 = 0u;
      v109 = 0u;

      v39 = sub_1E39E9C54();
      sub_1E3280A90(0, &qword_1EE23AE80);
      v40 = sub_1E393D92C(v38, 0, &v108, v39);

      sub_1E373C624(&v108);
      if (v40)
      {
        v41 = v40;
        MEMORY[0x1E6910BF0]();
        if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v105 = v111;
      }

      else
      {
      }

      ++v37;
    }

    while (v7 != v37);
  }

  else
  {
    v105 = v35;
  }

  v4 = v103;
  v42 = sub_1E3790B14();
  if (!v42)
  {
    goto LABEL_62;
  }

  v43 = v42;
  v44 = sub_1E32AE9B0(v42);
  if (!v44)
  {
LABEL_61:

LABEL_62:
    a1 = sub_1E3790A30();
    *(a1 + OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews) = v105;

    v7 = *(a1 + OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonViews);
    if (v7)
    {
      if (v7 >> 62)
      {
        goto LABEL_100;
      }

      v53 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
LABEL_65:
        *&v108 = MEMORY[0x1E69E7CC0];

        result = sub_1E3793B98(0, v53 & ~(v53 >> 63), 0);
        if ((v53 & 0x8000000000000000) == 0)
        {
          v54 = 0;
          v55 = v108;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x1E6911E60](v54, v7);
            }

            else
            {
              v56 = *(v7 + 8 * v54 + 32);
            }

            v57 = v56;
            [a1 addSubview_];

            *&v108 = v55;
            OUTLINED_FUNCTION_15_26();
            if (v52)
            {
              OUTLINED_FUNCTION_19_16(v58);
              v55 = v108;
            }

            ++v54;
            *(v55 + 16) = v57;
          }

          while (v53 != v54);

          goto LABEL_74;
        }

        goto LABEL_103;
      }
    }

LABEL_74:
    while (1)
    {

      v10 = v107;
LABEL_75:
      v59 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      v60 = *sub_1E39EA5DC();
      v61 = (*(v60 + 744))();

      [v59 setBackgroundColor_];

      v62 = v59;
      v63 = sub_1E3790A30();
      v64 = *&v63[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorView];

      [v64 removeFromSuperview];
      v65 = sub_1E3790A30();
      v66 = *&v65[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorView];
      *&v65[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorView] = v59;
      v67 = v62;

      if (*&v65[OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_buttonSeparatorView])
      {
        [v65 addSubview_];
      }

      v106 = v67;
      v68 = OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell_debugUIOverlay;
      OUTLINED_FUNCTION_5_0();
      if (v4[v68] != 1)
      {
        break;
      }

      v69 = [v4 contentView];
      a1 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
      v70 = [v69 layer];

      GenericRGB = CGColorCreateGenericRGB(255.0, 0.0, 0.0, 1.0);
      OUTLINED_FUNCTION_21_24();

      v72 = sub_1E3790AD8();
      if (v72)
      {
        v73 = OUTLINED_FUNCTION_31_8(v72);

        GenericRGB = CGColorCreateGenericRGB(0.0, 255.0, 0.0, 1.0);
        OUTLINED_FUNCTION_21_24();
      }

      v74 = sub_1E3790A30();
      v75 = OUTLINED_FUNCTION_31_8(v74);

      v76 = CGColorCreateGenericRGB(255.0, 0.0, 255.0, 1.0);
      OUTLINED_FUNCTION_21_24();

      v77 = OUTLINED_FUNCTION_31_8([v4 contentView]);
      v78 = OUTLINED_FUNCTION_27_9();
      [v77 v79];

      v80 = sub_1E3790AD8();
      if (v80)
      {
        v81 = OUTLINED_FUNCTION_31_8(v80);

        v82 = OUTLINED_FUNCTION_27_9();
        [v81 v83];
      }

      v84 = [*&v4[OBJC_IVAR____TtC8VideosUI26ConnectedAppFooterViewCell____lazy_storage___componentView] layer];
      v85 = OUTLINED_FUNCTION_27_9();
      [v86 v87];

      v88 = sub_1E3790B14();
      if (!v88)
      {
        break;
      }

      v7 = v88;
      v107 = v10;
      v89 = sub_1E32AE9B0(v88);
      if (!v89)
      {

        break;
      }

      v90 = v89;
      v104 = v4;
      v111 = MEMORY[0x1E69E7CC0];
      sub_1E3793B98(0, v89 & ~(v89 >> 63), 0);
      if ((v90 & 0x8000000000000000) == 0)
      {
        v91 = 0;
        v92 = v111;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v93 = MEMORY[0x1E6911E60](v91, v7);
          }

          else
          {
            v93 = *(v7 + 8 * v91 + 32);
          }

          v94 = v93;
          v95 = [v93 layer];
          v96 = CGColorCreateGenericRGB(0.0, 0.0, 255.0, 1.0);
          [v95 setBorderColor_];

          v97 = [v94 layer];
          v98 = OUTLINED_FUNCTION_27_9();
          [v99 v100];

          v111 = v92;
          OUTLINED_FUNCTION_15_26();
          if (v52)
          {
            sub_1E3793B98((v101 > 1), v97, 1);
            v92 = v111;
          }

          ++v91;
          *(v92 + 16) = v97;
        }

        while (v90 != v91);

        v4 = v104;
        break;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      v53 = sub_1E4207384();
      if (v53)
      {
        goto LABEL_65;
      }
    }

    sub_1E3790D28(v102);

LABEL_95:

    return v4;
  }

  v45 = v44;
  *&v108 = MEMORY[0x1E69E7CC0];
  result = sub_1E3793B98(0, v44 & ~(v44 >> 63), 0);
  if ((v45 & 0x8000000000000000) == 0)
  {
    v47 = 0;
    v48 = v108;
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1E6911E60](v47, v43);
      }

      else
      {
        v49 = *(v43 + 8 * v47 + 32);
      }

      v50 = v49;
      [v49 removeFromSuperview];

      *&v108 = v48;
      OUTLINED_FUNCTION_15_26();
      if (v52)
      {
        OUTLINED_FUNCTION_19_16(v51);
        v48 = v108;
      }

      ++v47;
      *(v48 + 16) = v50;
    }

    while (v45 != v47);

    goto LABEL_61;
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1E3793934()
{
  sub_1E3793D54();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

id sub_1E37939E4()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  OUTLINED_FUNCTION_7_45(&OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout);
  v0 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v1, v2, v0);
}

id sub_1E3793A60()
{
  OUTLINED_FUNCTION_11_5();
  swift_getObjectType();
  OUTLINED_FUNCTION_7_45(&OBJC_IVAR____TtCC8VideosUI26ConnectedAppFooterViewCellP33_73B8690E5814C49348BC559E5ECDA5A413ComponentView_titleLayout);
  v1 = objc_msgSendSuper2(&v3, sel_initWithCoder_, v0);

  if (v1)
  {
  }

  return v1;
}

char *sub_1E3793B98(char *a1, int64_t a2, char a3)
{
  result = sub_1E3793BB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3793BB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29780);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1E3793CAC()
{
  result = qword_1EE28A3D0;
  if (!qword_1EE28A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3D0);
  }

  return result;
}

unint64_t sub_1E3793D00()
{
  result = qword_1EE287218;
  if (!qword_1EE287218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287218);
  }

  return result;
}

unint64_t sub_1E3793D54()
{
  result = qword_1EE287210;
  if (!qword_1EE287210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287210);
  }

  return result;
}

void sub_1E3793DAC()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_27(31, v1);
  OUTLINED_FUNCTION_14_27();
  if (v0)
  {
    sub_1E32822E0();
    sub_1E4202C44();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3793E34()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_27(33, v1);
  OUTLINED_FUNCTION_14_27();
  if (v0)
  {
    sub_1E32822E0();
    sub_1E4202C44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3793EBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29788);
  __swift_allocate_value_buffer(v0, qword_1ECF71220);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  OUTLINED_FUNCTION_23();
  return sub_1E42003C4();
}

uint64_t sub_1E3793F4C()
{
  OUTLINED_FUNCTION_24();
  if (qword_1ECF46050 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29788);
  __swift_project_value_buffer(v0, qword_1ECF71220);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E3286A7C;

  return MEMORY[0x1EEDE6BA0]();
}

unint64_t sub_1E3794080@<X0>(void *a1@<X8>)
{
  result = sub_1E3793F24();
  *a1 = 0xD000000000000020;
  a1[1] = v3;
  return result;
}

void sub_1E37940B0()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_27(35, v1);
  OUTLINED_FUNCTION_14_27();
  if (v0)
  {
    sub_1E32822E0();
    sub_1E4202C44();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3794138()
{
  [objc_allocWithZone(VUILocalizationManager) init];
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_27(37, v1);
  OUTLINED_FUNCTION_14_27();
  if (v0)
  {
    sub_1E32822E0();
    sub_1E4202C44();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E37941C0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 tipKitConfig];

  v2 = [v1 tipConfiguration];
  sub_1E3280A90(0, &qword_1ECF29790);
  v3 = sub_1E4205C64();

  v4 = sub_1E4205F14();
  v6 = sub_1E378A81C(v4, v5, v3);

  if (v6)
  {
    [v6 maxDisplayCount];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29798);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4299720;
  v8 = sub_1E42002D4();
  v9 = MEMORY[0x1E6982A88];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_1E42002E4();
  v10 = sub_1E42002F4();
  v11 = MEMORY[0x1E6982AC0];
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 72));
  sub_1E4200304();
  return v7;
}

unint64_t sub_1E37943D8@<X0>(void *a1@<X8>)
{
  result = sub_1E3794408();
  *a1 = 0xD000000000000020;
  a1[1] = v3;
  return result;
}

void sub_1E3794414(void *a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    sub_1E3794670();
  }

  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 tipKitConfig];

  v5 = [v4 tipConfiguration];
  sub_1E3280A90(0, &qword_1ECF29790);
  v6 = sub_1E4205C64();

  v7 = sub_1E4205F14();
  v9 = sub_1E378A81C(v7, v8, v6);

  if (v9)
  {
    v10 = [v9 isEnabled];

    if (v10)
    {
      sub_1E3795158();
      sub_1E42067B4();
      v11 = [a1 action];
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      OUTLINED_FUNCTION_2_4();
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1E37951AC;
      *(v13 + 24) = v12;
      v15[4] = sub_1E37951BC;
      v15[5] = v13;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1E378AEA4;
      v15[3] = &block_descriptor_3;
      v14 = _Block_copy(v15);

      [a1 setAction_];
      _Block_release(v14);
    }
  }
}

void sub_1E3794670()
{
  sub_1E4200334();
  OUTLINED_FUNCTION_0_10();
  v29 = v2;
  v30 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1E4200394();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v31 = v0;
  if ((*(v0 + 80) & 1) == 0)
  {
    v13 = objc_opt_self();
    v14 = [v13 standardUserDefaults];
    v15 = sub_1E4205ED4();
    v16 = [v14 BOOLForKey_];

    if ((v16 & 1) == 0)
    {
      v17 = [objc_opt_self() sharedInstance];
      v27 = [v17 tipKitConfig];

      v18 = [v13 standardUserDefaults];
      v19 = sub_1E4205ED4();
      v20 = [v18 BOOLForKey_];

      if (v20)
      {
        sub_1E42002C4();
      }

      v21 = v6;
      v22 = [v27 displayFrequency];
      sub_1E4200384();
      v23 = [v13 standardUserDefaults];
      OUTLINED_FUNCTION_23();
      v24 = sub_1E4205ED4();
      v25 = [v23 BOOLForKey_];

      v26 = v28;
      if ((v25 & 1) == 0)
      {
        switch(v22)
        {
          case 0uLL:
            sub_1E4200384();
            break;
          case 1uLL:
            sub_1E4200354();
            break;
          case 3uLL:
            sub_1E4200374();
            break;
          default:
            sub_1E4200364();
            break;
        }

        (*(v21 + 8))(v12, v26);
        (*(v21 + 32))(v12, v9, v26);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF297A8);
      sub_1E42003B4();
      *(swift_allocObject() + 16) = xmmword_1E4299720;
      sub_1E42003A4();
      sub_1E4200324();
      sub_1E4200344();
      (*(v29 + 8))(v4, v30);
      sub_1E42003E4();
      (*(v21 + 8))(v12, v26);

      *(v31 + 80) = 1;
    }
  }
}

uint64_t sub_1E3794B30(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  OUTLINED_FUNCTION_2_4();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1E376FE58(0, 0, v4, &unk_1E429BDE8, v6);

  return a1(v7);
}

uint64_t sub_1E3794C10()
{
  type metadata accessor for PlayerTipKitManager();
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000020;
  *(result + 24) = 0x80000001E425BF20;
  *(result + 32) = 0xD000000000000020;
  *(result + 40) = 0x80000001E425BF50;
  *(result + 72) = &type metadata for LocalRadioBroadcastTip;
  *(result + 80) = 0;
  qword_1EE2AAEE0 = result;
  return result;
}

uint64_t *sub_1E3794C7C()
{
  if (qword_1EE29EA68 != -1)
  {
    OUTLINED_FUNCTION_1_56();
  }

  return &qword_1EE2AAEE0;
}

void sub_1E3794CBC(uint64_t a1, char a2)
{
  sub_1E379539C(a1, v16, &unk_1ECF296E0);
  if (v17)
  {
    sub_1E3280A90(0, &unk_1EE23AEF8);
    if (swift_dynamicCast())
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_10;
      }

      if ((*(v2 + 80) & 1) == 0)
      {
        sub_1E3794670();
      }

      v4 = [objc_opt_self() sharedInstance];
      v5 = [v4 tipKitConfig];

      v6 = [v5 tipConfiguration];
      sub_1E3280A90(0, &qword_1ECF29790);
      v7 = sub_1E4205C64();

      v8 = sub_1E4205F14();
      v10 = sub_1E378A81C(v8, v9, v7);

      if (v10 && (v11 = [v10 isEnabled], v10, v11))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF297C8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E4205F14();
        *(inited + 40) = v13;
        *(inited + 72) = &type metadata for LocalRadioBroadcastTip;
        *(inited + 80) = sub_1E37951C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF297D0);
        v14 = sub_1E4205CB4();
      }

      else
      {
LABEL_10:
        v14 = 0;
      }

      MEMORY[0x1E6911740](v14);
    }
  }

  else
  {
    sub_1E325F748(v16, &unk_1ECF296E0);
  }
}

uint64_t sub_1E3794F3C(void (*a1)(uint64_t))
{
  v2 = sub_1E4200314();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(v4 + 104))(v8, *MEMORY[0x1E6982AE0], v2, v6);
  a1(v9);
  sub_1E4200284();
  return (*(v4 + 8))(v8, v2);
}

id sub_1E3795038(void *a1)
{
  if ((*(v1 + 80) & 1) == 0)
  {
    sub_1E3794670();
  }

  v2 = sub_1E4205ED4();
  v3 = NSSelectorFromString(v2);

  result = [a1 respondsToSelector_];
  if (result)
  {
    [a1 performSelector_];
    v5 = a1;

    return a1;
  }

  return result;
}

uint64_t sub_1E37950F4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v0;
}

uint64_t sub_1E3795124()
{
  sub_1E37950F4();

  return MEMORY[0x1EEE6BDC0](v0, 81, 7);
}

unint64_t sub_1E3795158()
{
  result = qword_1ECF297A0;
  if (!qword_1ECF297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297A0);
  }

  return result;
}

unint64_t sub_1E37951C4()
{
  result = qword_1ECF297B0;
  if (!qword_1ECF297B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297B0);
  }

  return result;
}

unint64_t sub_1E379521C()
{
  result = qword_1ECF297B8;
  if (!qword_1ECF297B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297B8);
  }

  return result;
}

unint64_t sub_1E3795280()
{
  result = qword_1ECF297C0;
  if (!qword_1ECF297C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297C0);
  }

  return result;
}

uint64_t sub_1E3795318()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E3286A7C;

  return sub_1E3793F30();
}

uint64_t sub_1E379539C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

void sub_1E3795418()
{
  v1 = *(*(*(v0 + 88) + 16) + 72);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (v1 == sub_1E32AE9B0(*(v0 + 16)))
  {

    return;
  }

  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  sub_1E3741090(0xD000000000000023, 0x80000001E425C140, v2);
  v5 = v4;

  if (!v5)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_1E37954EC()
{
  swift_getKeyPath();
  sub_1E3797D7C();
  sub_1E41FE8F4();

  return *(v0 + 24);
}

uint64_t sub_1E379555C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E37954EC();
  *a1 = result;
  return result;
}

uint64_t sub_1E37955B0(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E3795658();
  }

  return result;
}

uint64_t sub_1E37956E0(void *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E3795730(a1, a2);
  return v4;
}

uint64_t sub_1E3795730(void *a1, unint64_t a2)
{
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v2 + 32) = sub_1E4200544();
  *(v2 + 56) = 0;
  v8 = type metadata accessor for ConfirmationDialogViewModel();
  *(v5 + 64) = sub_1E40363DC();
  sub_1E41FE924();
  if (a1[3])
  {
    v9 = a1[2];
    v10 = a1[3];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  *(v5 + 72) = v9;
  *(v5 + 80) = v10;
  *(v5 + 48) = a1;

  v11 = swift_retain_n();
  v12 = sub_1E3795C84(v11, a2);
  *&v36 = MEMORY[0x1E69E7CC0];
  v13 = sub_1E32AE9B0(v12);
  v14 = 0;
  v15 = v12 & 0xFFFFFFFFFFFFFF8;
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1E6911E60](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v3 = *(v12 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (sub_1E3795E2C(v3))
    {
      sub_1E4207544();
      v4 = *(v36 + 16);
      sub_1E4207584();
      sub_1E4207594();
      v8 = &v36;
      sub_1E4207554();
    }

    else
    {
    }

    ++v14;
  }

  *(v5 + 16) = v36;
  v16 = sub_1E32AE9B0(v12);
  swift_beginAccess();
  *(v5 + 56) = v16;
  v4 = a2;
  v17 = [a1 seasonCanonicalIdForSeasonIndex_];
  v15 = sub_1E4205F14();
  v14 = v18;

  v3 = [a1 episodeCountForSeasonIndex_];
  v8 = (*(*a1 + 1168))();
  sub_1E34AF4E4(a2, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) == 0)
  {
    v19 = *(v8 + 8 * a2 + 32);

    goto LABEL_17;
  }

LABEL_38:
  v19 = MEMORY[0x1E6911E60](v4, v8);
LABEL_17:

  if (v13)
  {
    (*(*v19 + 248))(v12, 1);
  }

  v20 = v19[5];
  v21 = v19[6];
  sub_1E3280A90(0, &qword_1EE23AFA0);

  v22 = sub_1E3CCB910();
  *(v5 + 40) = sub_1E3795F48(v15, v14, v20, v21, v3, v22 & 1, 1);
  v23 = *(*v19 + 200);

  v23(v24);
  type metadata accessor for SeasonDetailsFetcher();

  sub_1E3F4F5E0(v25);
  *(v5 + 88) = v26;
  if (*(v5 + 56) == sub_1E3CCBA20(*(*(v26 + 16) + 32)))
  {
    *(v5 + 24) = 1;
    sub_1E379600C();
  }

  else
  {
    *(v5 + 24) = 0;
  }

  if (TVAppFeature.isEnabled.getter(16))
  {
    v27 = (*(*a1 + 648))();

    if (v27)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v28 = *(v27 + 56);
    }

    else
    {
      v28 = 0;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v29 = *(v5 + 40);
    if (v28)
    {
      v35 = 6;
      v30 = *(*v28 + 776);
      v31 = v29;

      v30(&v36, &v35, &unk_1F5D5D6D8, &off_1F5D5C8B8);

      if (*(&v37 + 1))
      {
        if (swift_dynamicCast())
        {
          v32 = v35;
LABEL_34:
          [v29 setIsRemoteDownload_];

          goto LABEL_35;
        }

LABEL_33:
        v32 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v33 = v29;
    }

    sub_1E325F7A8(&v36, &unk_1ECF296E0);
    goto LABEL_33;
  }

LABEL_35:

  return v5;
}

unint64_t sub_1E3795C84(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E3CCBA20(a2);
  v10 = sub_1E3CCB9AC(a2);
  v11 = sub_1E3CCB698(v10, v9);
  v12 = sub_1E324FBDC();
  (*(v5 + 16))(v8, v12, v3);

  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = sub_1E32AE9B0(v11);

    _os_log_impl(&dword_1E323F000, v13, v14, "EpisodeListInteractor:: loaded already fetched %ld episodes", v15, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v5 + 8))(v8, v3);
  return v11;
}

uint64_t sub_1E3795E2C(uint64_t a1)
{
  result = (*(*a1 + 488))();
  if (result)
  {
    v2 = sub_1E373E010(233, result);

    if (v2)
    {
      if (*v2 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {
        v3 = OBJC_IVAR____TtC8VideosUI31DownloadStateIndicatorViewModel_downloadModel;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v4 = *(v2 + v3);
        v5 = [(__objc2_class *)v4 videosPlayable];

        if (v5)
        {

          return 1;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_1E3795F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v11 = sub_1E4205ED4();

  if (a4)
  {
    v12 = sub_1E4205ED4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [swift_getObjCClassFromMetadata() viewModelForSeasonDownloadWithCanonicalId:v11 title:v12 episodeCount:a5 useShowCanonicalIdForSeasonDownload:a6 & 1 showDownloadingOnlyWhenWholeCollectionDownloads:a7 & 1];

  return v13;
}

uint64_t sub_1E379600C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = [*(v0 + 40) assetController];
  if (result)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      result = sub_1E32AE9B0(*(v0 + 16));
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      [v3 setCompletionCount_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E37960C4()
{
  v1 = v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = [*(v0 + 40) downloadState];
  if (v2 <= 5)
  {
    if (((1 << v2) & 0x26) == 0)
    {
      if (((1 << v2) & 9) != 0)
      {
        v3 = [*(v0 + 40) downloadFailedDueToError];
        v4 = [*(v1 + 40) isExpired];
        if ((v3 & 1) == 0 && !v4)
        {
          v5 = sub_1E3287BA0();
          v6 = *(v1 + 88);
          v7 = *((*MEMORY[0x1E69E7D40] & **v5) + 0xB8);
          v8 = *v5;
          v7(v6);

          goto LABEL_11;
        }

        v9 = 1;
      }

      else
      {
        v9 = [*(v0 + 40) isExpiringSoon];
      }

      sub_1E3796458(v9);
      goto LABEL_11;
    }

    [*(v0 + 40) deleteDownload];
  }

LABEL_11:
  v10 = *(*(v1 + 88) + 16);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v13 = *(v1 + 40);

  v14 = [v13 downloadStateStringValue];
  v15 = sub_1E4205F14();
  v17 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v19;
  v20 = sub_1E4205F14();
  v21 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v23;
  v24 = sub_1E4205F14();
  *(inited + 120) = v21;
  *(inited + 96) = v24;
  *(inited + 104) = v25;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v26;
  *(inited + 168) = v21;
  *(inited + 144) = v12;
  *(inited + 152) = v11;
  v27 = sub_1E4205F14();
  v28 = MEMORY[0x1E69E6530];
  *(inited + 176) = v27;
  *(inited + 184) = v29;
  *(inited + 216) = v28;
  *(inited + 192) = 0;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1E4297BE0;
  *(v31 + 32) = sub_1E4205F14();
  *(v31 + 40) = v32;
  *(v31 + 48) = v15;
  *(v31 + 56) = v17;
  v33 = MEMORY[0x1E69E6168];
  v34 = sub_1E4205CB4();
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *(inited + 240) = v34;
  sub_1E4205CB4();
  v35 = [objc_opt_self() sharedInstance];
  v36 = OUTLINED_FUNCTION_50();
  sub_1E3744600(v36);

  v37 = sub_1E4205C44();

  [v33 recordClick_];
}

void sub_1E3796458(char a1)
{
  if (a1)
  {
    v2 = "DOWNLOAD_AGAIN_OR_REMOVE_SEASON_DOWNLOAD_ALERT_TITLE";
  }

  else
  {
    v2 = "REMOVE_SEASON_DOWNLOAD_ALERT_TITLE";
  }

  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  if (!v4)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = v4;
  if (a1)
  {
    v6 = 0xD000000000000034;
  }

  else
  {
    v6 = 0xD000000000000022;
  }

  sub_1E3797E30(v6, (v2 - 32) | 0x8000000000000000, v5);

  sub_1E3280A90(0, &qword_1ECF297E8);

  OUTLINED_FUNCTION_25();
  v11 = sub_1E379796C(v7, v8, v9, v10, 0);
  if (a1)
  {
    v12 = [v3 sharedInstance];
    if (!v12)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v13 = v12;
    sub_1E3741090(0x44414F4C4E574F44, 0xEE004E494147415FLL, v12);
    v15 = v14;

    if (v15)
    {
      v16 = sub_1E4205ED4();
    }

    else
    {
      v16 = 0;
    }

    v17 = objc_opt_self();
    v41 = sub_1E3798464;
    v42 = v37;
    OUTLINED_FUNCTION_3_26();
    OUTLINED_FUNCTION_4_27();
    v39 = v18;
    v40 = &block_descriptor_24;
    v19 = _Block_copy(aBlock);

    v20 = [v17 vui:v16 actionWithTitle:0 style:v19 handler:?];
    _Block_release(v19);

    [v11 vui:v20 addAction:?];
  }

  v21 = [v3 sharedInstance];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = v21;
  sub_1E3741090(0xD000000000000010, 0x80000001E425C280, v21);
  v24 = v23;

  if (v24)
  {

    v25 = sub_1E4205ED4();
  }

  else
  {
    v25 = 0;
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  swift_weakInit();
  v41 = sub_1E37983F8;
  v42 = v27;
  OUTLINED_FUNCTION_3_26();
  OUTLINED_FUNCTION_4_27();
  v39 = v28;
  v40 = &block_descriptor_4;
  v29 = _Block_copy(aBlock);

  v30 = [v26 vui:v25 actionWithTitle:2 style:v29 handler:?];
  _Block_release(v29);

  [v11 vui:v30 addAction:?];
  v31 = [v3 sharedInstance];
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = v31;

  sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v32);
  v34 = v33;

  if (v34)
  {
    v35 = sub_1E4205ED4();
  }

  else
  {
    v35 = 0;
  }

  v36 = [v26 vui:v35 actionWithTitle:1 style:0 handler:?];

  [v11 vui:v36 addAction:?];
  (*(**(v37 + 64) + 96))(v11);
}

uint64_t sub_1E37968CC()
{
  sub_1E37969C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v2;
  v3 = *(*(v0 + 88) + 16);
  v4 = *(v3 + 24);
  *(inited + 48) = *(v3 + 16);
  *(inited + 56) = v4;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v5;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v6;

  sub_1E4205CB4();
  type metadata accessor for Metrics();
  v7 = OUTLINED_FUNCTION_50();
  v8 = sub_1E3797720(v7);

  sub_1E3BA7798(v8);
}

uint64_t sub_1E37969C8()
{
  v1 = v0;
  v34 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E37954EC();
  if (result)
  {
    return result;
  }

  v12 = v0[11];
  v13 = sub_1E3CCBA20(*(*(v12 + 16) + 32));
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = v0[7];
  result = sub_1E3CCB910();
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 - v14 < 1)
  {
    return result;
  }

  v15 = result;
  v33 = v13 - v14;
  result = sub_1E3CCB9AC(*(*(v12 + 16) + 32));
  if (v15)
  {
    v16 = result + v13;
    if (__OFADD__(result, v13))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v17 = __OFSUB__(v16, v14);
    v18 = v16 - v14;
    if (v17)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = v18 - v33;
    if (__OFSUB__(v18, v33))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v20 = v33;
  }

  else
  {
    v19 = result + v14;
    if (__OFADD__(result, v14))
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v20 = v33;
  }

  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    goto LABEL_18;
  }

  if (v21 < v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v22 = sub_1E324FBDC();
  (*(v7 + 16))(v10, v22, v5);
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134218240;
    *(v25 + 4) = v19;
    *(v25 + 12) = 2048;
    *(v25 + 14) = v33;
    _os_log_impl(&dword_1E323F000, v23, v24, "EpisodeListInteractor:: load episodes at location:%ld and length:%ld", v25, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v10, v5);
  v26 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v26);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v27 = sub_1E4206424();
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v1;
  v28[5] = v19;
  v31 = v33;
  v30 = v34;
  v28[6] = v21;
  v28[7] = v31;
  v28[8] = v30;
  sub_1E376FE58(0, 0, v4, &unk_1E429BF68, v28);
}

uint64_t sub_1E3796CFC()
{

  v1 = OBJC_IVAR____TtC8VideosUI21EpisodeListInteractor___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3796D88()
{
  sub_1E3796CFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3796DE0()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[8] = v5;
  v6 = sub_1E41FFCB4();
  v0[13] = v6;
  v0[14] = *(v6 - 8);
  v0[15] = swift_task_alloc();
  sub_1E4206434();
  v0[16] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v8 = sub_1E42063B4();
  v0[17] = v8;
  v0[18] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1E3796ED4, v8, v7);
}

uint64_t sub_1E3796ED4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1E3796F70;

  return sub_1E3F4F624();
}

uint64_t sub_1E3796F70()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  v2 = *v0;
  *(v2 + 160) = v3;
  *(v2 + 168) = v4;

  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1E3797098, v6, v5);
}

uint64_t sub_1E3797098()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);

  v3 = *(v0 + 160);
  if (v1)
  {
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = sub_1E324FBDC();
    (*(v5 + 16))(v4, v7, v6);
    v8 = v2;
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();
    sub_1E3798224(v3, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1E323F000, v9, v10, "EpisodeListInteractor:: Received error [%@]", v11, 0xCu);
      sub_1E325F7A8(v12, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v16 = *(v0 + 112);
    v15 = *(v0 + 120);
    v17 = *(v0 + 104);

    (*(v16 + 8))(v15, v17);
LABEL_18:
    v29 = *(v0 + 160);
    v30 = *(v0 + 168);
    sub_1E37955B0(1);
    sub_1E3798224(v29, v30 & 1);

    OUTLINED_FUNCTION_54();

    return v31();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
    result = sub_1E32AE9B0(v2);
    v19 = result;
    v20 = 0;
    v21 = v3 & 0xC000000000000001;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    while (v19 != v20)
    {
      if (v21)
      {
        result = MEMORY[0x1E6911E60](v20, v2);
        v23 = result;
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_22;
        }

        v23 = *(v2 + v20 + 4);
      }

      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (sub_1E3795E2C(v23))
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        result = sub_1E4207554();
      }

      else
      {
      }

      ++v20;
    }

    v24 = *(v0 + 88);
    v25 = *(v0 + 64);
    swift_beginAccess();
    sub_1E379738C(v32);
    swift_endAccess();
    result = swift_beginAccess();
    v26 = *(v25 + 56);
    v27 = __OFADD__(v26, v24);
    v28 = v26 + v24;
    if (!v27)
    {
      *(v25 + 56) = v28;
      sub_1E379600C();
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E379738C(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3798230(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3797438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E325A828(a3, v24 - v10);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F7A8(v11, &unk_1ECF2C400);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1E325F7A8(a3, &unk_1ECF2C400);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E325F7A8(a3, &unk_1ECF2C400);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36400);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_1E3797720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1E329504C(&v22, v24);
    sub_1E329504C(v24, v25);
    sub_1E329504C(v25, &v23);
    result = sub_1E327D33C(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1E329504C(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1E329504C(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_1E379796C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = sub_1E4205ED4();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1E4205ED4();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

uint64_t sub_1E3797A24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1E4206434();

  v5 = sub_1E4206424();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1E3797438(0, 0, v2, &unk_1E429BF80, v6);
}

uint64_t sub_1E3797B54()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3797BE4, v4, v3);
}

uint64_t sub_1E3797BE4()
{

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = sub_1E3287BA0();
    v3 = *(Strong + 88);
    v4 = *((*MEMORY[0x1E69E7D40] & **v2) + 0xB8);
    v5 = *v2;
    v4(v3);
  }

  **(v0 + 40) = Strong == 0;
  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3797CDC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1E4207384();
LABEL_9:
  result = sub_1E4207514();
  *v1 = result;
  return result;
}

unint64_t sub_1E3797D7C()
{
  result = qword_1ECF297D8;
  if (!qword_1ECF297D8)
  {
    type metadata accessor for EpisodeListInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297D8);
  }

  return result;
}

uint64_t type metadata accessor for EpisodeListInteractor()
{
  result = qword_1EE29BF90;
  if (!qword_1EE29BF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3797E30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  v5 = [a3 localizedStringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1E4205F14();

  return v6;
}

uint64_t (*sub_1E3797EB0(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return OUTLINED_FUNCTION_74_0;
}

unint64_t sub_1E3797F40()
{
  result = qword_1ECF297E0;
  if (!qword_1ECF297E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF297E0);
  }

  return result;
}

uint64_t sub_1E3797F9C()
{
  result = sub_1E41FE934();
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

_BYTE *storeEnumTagSinglePayload for EpisodeListInteractor.EpisodeFetchState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3798168()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E3796DE0();
}

void sub_1E3798224(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1E3798230(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
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
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for ViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3798394();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
          v9 = sub_1E3797EB0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
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

unint64_t sub_1E3798394()
{
  result = qword_1EE23B540;
  if (!qword_1EE23B540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B540);
  }

  return result;
}

uint64_t sub_1E37983F8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [*(v1 + 40) deleteDownload];
  }

  return result;
}

uint64_t sub_1E379846C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E3797B54();
}

uint64_t sub_1E3798500()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  *v3 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v6();
}

uint64_t sub_1E3798600()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E379869C(uint64_t a1)
{
  v2 = *(*a1 + 392);

  v3 = v2();
  if (v3 && *v3 != _TtC8VideosUI24ConnectedAppFooterLayout)
  {
  }

  v4 = (*a1 + 488);
  v5 = *v4;
  v6 = (*v4)();
  if (v6)
  {
    v7 = sub_1E373E010(23, v6);

    if (v7)
    {
      if (*v7 != _TtC8VideosUI13TextViewModel)
      {
      }
    }
  }

  v8 = (v5)(v6);

  if (v8)
  {
    v9 = sub_1E373E010(91, v8);

    if (v9)
    {
      OUTLINED_FUNCTION_8();
      (*(v10 + 464))();
    }
  }

  return a1;
}

double sub_1E3798864@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF297F0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF297F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  *v11 = sub_1E4201B84();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29800);
  sub_1E3798AD0(a1, a2, a3, &v11[*(v16 + 44)]);
  if (a1 && (v17 = sub_1E39E94F0(), (*(*v17 + 176))(&v28), , (v29 & 1) == 0))
  {
    OUTLINED_FUNCTION_13_3(v18, v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v22 = sub_1E4202734();
  sub_1E329E454(v11, v15, &qword_1ECF297F0);
  v23 = &v15[*(v12 + 36)];
  *v23 = v22;
  OUTLINED_FUNCTION_11_4(v23);
  if (a1)
  {
    (*(*a1 + 304))();
  }

  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E329E454(v15, a4, &qword_1ECF297F8);
  v24 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29808) + 36));
  v25 = v31;
  *v24 = v30;
  v24[1] = v25;
  result = *&v32;
  v24[2] = v32;
  return result;
}

void sub_1E3798AD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29828);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  if (a1)
  {
    v16 = sub_1E39E94F0();
    v17 = (*(*v16 + 1152))();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 1;
  }

  *v15 = sub_1E4201D44();
  *(v15 + 1) = v17;
  v15[16] = v19 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29830);
  sub_1E3798CC0(a1, a2, a3, &v15[*(v20 + 44)]);
  sub_1E3294EE4(v15, v12, &qword_1ECF29828);
  *a4 = 0;
  *(a4 + 8) = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29838);
  sub_1E3294EE4(v12, a4 + *(v21 + 48), &qword_1ECF29828);
  v22 = a4 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_1E325F6F0(v15, &qword_1ECF29828);
  sub_1E325F6F0(v12, &qword_1ECF29828);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3798CC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29840);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29848);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v25 - v22;
  sub_1E3798EB0(a1, a2, &v25 - v22);
  sub_1E379959C(a1, a3, v15);
  sub_1E3294EE4(v23, v20, &qword_1ECF29848);
  sub_1E3294EE4(v15, v12, &qword_1ECF29840);
  sub_1E3294EE4(v20, a4, &qword_1ECF29848);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29850);
  sub_1E3294EE4(v12, a4 + *(v24 + 48), &qword_1ECF29840);
  sub_1E325F6F0(v15, &qword_1ECF29840);
  sub_1E325F6F0(v23, &qword_1ECF29848);
  sub_1E325F6F0(v12, &qword_1ECF29840);
  sub_1E325F6F0(v20, &qword_1ECF29848);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3798EB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29880);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v11);
  if (a2)
  {
    v92 = &v88 - v13;
    v93 = v14;
    v95 = v12;

    if (a1)
    {
      v15 = sub_1E39E95D8();
      sub_1E39E95D8();
    }

    else
    {
      v15 = 0;
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    if (v15 && (OUTLINED_FUNCTION_99(), v22 = *(v21 + 176), v23 = , v22(&v102, v23), , (v103 & 1) == 0))
    {
      OUTLINED_FUNCTION_13_3(v24, v25, v26, v27);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v96 = a2;
    v28 = sub_1E4202734();
    OUTLINED_FUNCTION_10_22();
    v29();
    v30 = *(v6 + 36);
    v94 = v9;
    v31 = &v9[v30];
    *v31 = v28;
    OUTLINED_FUNCTION_11_4(v31);
    if (v15)
    {
      OUTLINED_FUNCTION_99();
      v33 = *(v32 + 224);

      *&v100 = COERCE_DOUBLE(v33(v34));
      v36 = v35;

      OUTLINED_FUNCTION_99();
      v38 = *(v37 + 200);

      *&v40 = COERCE_DOUBLE(v38(v39));
      v42 = v41;

      OUTLINED_FUNCTION_99();
      v44 = *(v43 + 248);

      *&v46 = COERCE_DOUBLE(v44(v45));
      v48 = v47;

      v49 = *(*v15 + 328);

      *&v51 = COERCE_DOUBLE(v49(v50));
      v99 = v52;

      v53 = *(*v15 + 304);

      *&v55 = COERCE_DOUBLE(v53(v54));
      v56 = v48;
      v57 = v42;
      v98 = *&v55;
      v97 = v58;

      v59 = *(*v15 + 352);

      v61 = *&v46;
      *&v62 = COERCE_DOUBLE(v59(v60));
      v64 = v63;
    }

    else
    {
      *&v62 = 0.0;
      v98 = 0.0;
      *&v51 = 0.0;
      v61 = 0.0;
      *&v40 = 0.0;
      *&v100 = 0.0;
      v64 = 1;
      v97 = 1;
      v99 = 1;
      v56 = 1;
      v57 = 1;
      v36 = 1;
    }

    v65 = sub_1E4203DA4();
    v67 = *&v100;
    if (v36)
    {
      v67 = -INFINITY;
    }

    v68 = *&v40;
    if (v57)
    {
      v68 = v67;
    }

    v69 = v61;
    if (v56)
    {
      v69 = v68;
    }

    if (v67 > v68 || v68 > v69)
    {
      goto LABEL_36;
    }

    v71 = *&v51;
    if (v99)
    {
      v71 = -INFINITY;
    }

    v72 = v98;
    if (v97)
    {
      v72 = v71;
    }

    v73 = *&v62;
    if (v64)
    {
      v73 = v72;
    }

    if (v71 > v72 || v72 > v73)
    {
LABEL_36:
      v90 = v65;
      v89 = v66;
      sub_1E4206804();
      v75 = sub_1E42026D4();
      v91 = v64;
      v76 = v62;
      v77 = v75;
      sub_1E41FFB84();

      v62 = v76;
    }

    OUTLINED_FUNCTION_8_30();
    v90 = v62;
    LOBYTE(v89) = v78;
    v88 = v98;
    sub_1E42015C4();

    v79 = v93;
    sub_1E329E454(v94, v93, &qword_1ECF28CC0);
    v80 = v95;
    memcpy((v79 + *(v95 + 36)), __src, 0x70uLL);
    OUTLINED_FUNCTION_10_22();
    sub_1E329E454(v81, v82, v83);
    v84 = v101;
    OUTLINED_FUNCTION_10_22();
    sub_1E329E454(v85, v86, v87);
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v80);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }
}

void sub_1E379959C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29858);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  if (a2)
  {

    if (a1)
    {
      v11 = sub_1E39E9C54();
    }

    else
    {
      v11 = 0;
    }

    swift_getKeyPath();
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29860);
    sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790);
    sub_1E375BEF4();
    sub_1E3799EAC();
    sub_1E4203B34();
    (*(v9 + 32))(a3, v3, v7);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v7);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

void sub_1E37997B8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v51 - v8;
  sub_1E3EC24F4(*a1, a2, 0, 0);
  if (a2 && (OUTLINED_FUNCTION_8(), (*(v9 + 176))(v59), (v60 & 1) == 0))
  {
    v12.n128_u64[0] = v59[2];
    v13.n128_u64[0] = v59[3];
    v11.n128_u64[0] = v59[1];
    v10.n128_u64[0] = v59[0];
    j_nullsub_1(v10, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v14 = sub_1E4202734();
  v15 = v58;
  OUTLINED_FUNCTION_10_22();
  v16();
  v17 = (v15 + *(v6 + 36));
  *v17 = v14;
  OUTLINED_FUNCTION_11_4(v17);
  if (a2)
  {
    OUTLINED_FUNCTION_8();
    v19 = (*(v18 + 224))();
    v21 = v20;
    OUTLINED_FUNCTION_8();
    v23 = (*(v22 + 200))();
    v25 = v24;
    OUTLINED_FUNCTION_8();
    v27 = (*(v26 + 248))();
    v29 = v28;
    v30 = (*(*a2 + 328))();
    v57 = v31;
    v56 = (*(*a2 + 304))();
    v33 = v32;
    a2 = (*(*a2 + 352))();
    v35 = v34;
  }

  else
  {
    v56 = 0;
    v30 = 0;
    v27 = 0;
    v23 = 0;
    v19 = 0;
    v35 = 1;
    v33 = 1;
    v57 = 1;
    v29 = 1;
    v25 = 1;
    v21 = 1;
  }

  v36 = sub_1E4203DA4();
  v38 = *&v19;
  if (v21)
  {
    v38 = -INFINITY;
  }

  v39 = *&v23;
  if (v25)
  {
    v39 = v38;
  }

  v40 = *&v27;
  if (v29)
  {
    v40 = v39;
  }

  if (v38 > v39 || v39 > v40)
  {
    goto LABEL_29;
  }

  v42 = *&v30;
  if (v57)
  {
    v42 = -INFINITY;
  }

  v43 = *&v56;
  if (v33)
  {
    v43 = v42;
  }

  v44 = *&a2;
  if (v35)
  {
    v44 = v43;
  }

  if (v42 > v43 || v43 > v44)
  {
LABEL_29:
    v52 = v36;
    v51 = v37;
    sub_1E4206804();
    HIDWORD(v53) = v35;
    v46 = sub_1E42026D4();
    v54 = v23;
    v47 = v46;
    sub_1E41FFB84();
  }

  OUTLINED_FUNCTION_8_30();
  v53 = a2;
  LOBYTE(v52) = v48;
  v51 = v56;
  sub_1E42015C4();
  v49 = v55;
  sub_1E329E454(v58, v55, &qword_1ECF289E8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29860);
  memcpy((v49 + *(v50 + 36)), __src, 0x70uLL);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3799CD0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3799D10(uint64_t result, int a2, int a3)
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

unint64_t sub_1E3799D60()
{
  result = qword_1ECF29810;
  if (!qword_1ECF29810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29808);
    sub_1E3799DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29810);
  }

  return result;
}

unint64_t sub_1E3799DEC()
{
  result = qword_1ECF29818;
  if (!qword_1ECF29818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF297F8);
    sub_1E32752B0(&qword_1ECF29820, &qword_1ECF297F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29818);
  }

  return result;
}

unint64_t sub_1E3799EAC()
{
  result = qword_1ECF29868;
  if (!qword_1ECF29868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29860);
    sub_1E3799F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29868);
  }

  return result;
}

unint64_t sub_1E3799F38()
{
  result = qword_1ECF29870;
  if (!qword_1ECF29870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF289E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29870);
  }

  return result;
}

uint64_t sub_1E3799FDC@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  v6 = *(*a1 + 392);

  if (v6(v7))
  {
    type metadata accessor for QueryDescriptionBannerLayout();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      OUTLINED_FUNCTION_11_13();
      v10 = *(v9 + 984);
      v11 = swift_retain_n();
      v12 = v10(v11);
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = 10;
LABEL_8:
  memcpy(v70, a2, 0xC3uLL);
  v15 = 0.0;
  if (sub_1E3748B78(v70) != 1 && (v70[14] & 1) == 0)
  {
    v15 = *&v70[12];
  }

  type metadata accessor for LayoutGrid();
  v16 = sub_1E3A25D00(v12, 0, v15, 2.0);
  v17 = *(*a1 + 488);
  v18 = v17();
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = sub_1E373E010(9, v18);

  if (v19 && *v19 != _TtC8VideosUI13TextViewModel)
  {

LABEL_15:
    v19 = 0;
  }

  v20 = (v17)(v18);

  if (v20)
  {
    v21 = sub_1E373E010(90, v20);

    if (v8)
    {
      goto LABEL_18;
    }

LABEL_30:

    v27 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v26 = 0.0;
    if (!v21)
    {
      goto LABEL_47;
    }

    goto LABEL_31;
  }

  v21 = 0;
  if (!v8)
  {
    goto LABEL_30;
  }

LABEL_18:
  v68 = v16;
  OUTLINED_FUNCTION_11_13();
  v23 = *(v22 + 1736);

  v23(v24);
  OUTLINED_FUNCTION_10_23();

  OUTLINED_FUNCTION_8();
  (*(v25 + 152))(&v73);

  v26 = 0.0;
  v27 = 0.0;
  if ((v74 & 1) == 0)
  {
    v28 = OUTLINED_FUNCTION_16();
    v27 = sub_1E3952BE0(v28, v29, v30, v31);
  }

  OUTLINED_FUNCTION_11_13();
  v33 = *(v32 + 1760);

  v33(v34);
  OUTLINED_FUNCTION_10_23();

  OUTLINED_FUNCTION_8();
  (*(v35 + 152))(&v75);

  if ((v76 & 1) == 0)
  {
    v36 = OUTLINED_FUNCTION_16();
    v26 = sub_1E3952BD8(v36, v37, v38);
  }

  OUTLINED_FUNCTION_11_13();
  v40 = *(v39 + 1736);

  v40(v41);
  OUTLINED_FUNCTION_10_23();

  v43 = COERCE_DOUBLE((*(*v8 + 328))(v42));
  v45 = v44;

  v47 = 0.0;
  if (v45)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v43;
  }

  (*(*v8 + 1736))(v46);
  OUTLINED_FUNCTION_10_23();

  OUTLINED_FUNCTION_8();
  (*(v49 + 152))(v77);
  v50 = *v77;
  v51 = *&v77[1];
  v52 = *&v77[2];

  if ((v78 & 1) == 0)
  {
    v47 = sub_1E3952BD8(v50, v51, v52);
  }

  v16 = v68;
  if (!v21)
  {
    goto LABEL_47;
  }

LABEL_31:
  v54 = (*(*v21 + 464))(v53);

  if (v54)
  {
    v64 = v8;
    v65 = a1;
    v66 = a3;
    result = sub_1E32AE9B0(v54);
    v56 = result;
    for (i = 0; ; ++i)
    {
      if (v56 == i)
      {

        a1 = v65;
        a3 = v66;
        v8 = v64;
        break;
      }

      if ((v54 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1E6911E60](i, v54);
      }

      else
      {
        if (i >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v71[0] = 8;
      OUTLINED_FUNCTION_8();
      (*(v58 + 776))(&v79, v71, &unk_1F5D5DD98, &off_1F5D5CA38);
      if (*(&v80 + 1))
      {
        if (swift_dynamicCast())
        {
          v59 = v71[0];

          if (v59)
          {

            v8 = v64;
            if (v64)
            {
              OUTLINED_FUNCTION_11_13();
              (*(v63 + 1808))(&v79);
              v67 = v80;
              v69 = v79;
              v61 = 1;
              v62 = v81;
            }

            else
            {
              v67 = 0u;
              v69 = 0u;
              v61 = 1;
              v62 = 1;
            }

            a1 = v65;
            a3 = v66;
            goto LABEL_54;
          }
        }

        else
        {
        }
      }

      else
      {

        result = sub_1E325F6F0(&v79, &unk_1ECF296E0);
      }
    }
  }

LABEL_47:
  if (v8)
  {
    OUTLINED_FUNCTION_11_13();
    (*(v60 + 1784))(&v79);
    v61 = 0;
    v67 = v80;
    v69 = v79;
    v62 = v81;
  }

  else
  {
    v61 = 0;
    v67 = 0u;
    v69 = 0u;
    v62 = 1;
  }

LABEL_54:
  v71[0] = v62;
  *a3 = a1;
  result = memcpy((a3 + 8), __dst, 0xC3uLL);
  *(a3 + 208) = v8;
  *(a3 + 216) = v19;
  *(a3 + 224) = v21;
  *(a3 + 232) = v69;
  *(a3 + 248) = v67;
  *(a3 + 264) = v62;
  *(a3 + 272) = v16 + v27;
  *(a3 + 280) = v47 + v48 + v26;
  *(a3 + 288) = v16;
  *(a3 + 296) = v61;
  return result;
}

double sub_1E379A77C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v33 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29888);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = v1[26];
  if (v13)
  {
    OUTLINED_FUNCTION_8();
    (*(v14 + 552))(v43);
    v15 = 0.0;
    if ((v44 & 1) == 0)
    {
      v15 = sub_1E3952BE8(v43[0], v43[1], v43[2], v43[3]);
    }

    OUTLINED_FUNCTION_8();
    v17 = (*(v16 + 792))();
  }

  else
  {
    v15 = 0.0;
    v17 = 11;
  }

  if ((sub_1E39DFFC8() & 1) == 0 || !v13 || (OUTLINED_FUNCTION_8(), (v19 = (*(v18 + 744))()) == 0))
  {
    v19 = *sub_1E3E5FACC();
  }

  v20 = v19;
  v21 = swift_allocObject();
  memcpy((v21 + 16), v2, 0x129uLL);
  v38 = v15;
  v39 = v17;
  v40 = v20;
  v41 = sub_1E379CD14;
  v42 = v21;
  type metadata accessor for ContextMenuModel();
  v22 = *v2;
  sub_1E379CD1C(v2, v36);

  v23 = sub_1E38F8CA4();
  v25 = *v23;
  v24 = v23[1];
  *&v36[0] = v25;
  *(&v36[0] + 1) = v24;

  sub_1E4207414();
  (*(v4 + 104))(v7, *MEMORY[0x1E697E660], v33);
  v26 = sub_1E4188148(v22, v7);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29890);
  v28 = sub_1E32752B0(&qword_1ECF29898, &qword_1ECF29890);
  sub_1E4187EA8(v26, v27, v28);

  sub_1E4203DA4();
  sub_1E4200D94();
  v29 = v35;
  (*(v9 + 32))(v35, v12, v34);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A0) + 36));
  v31 = v36[1];
  *v30 = v36[0];
  v30[1] = v31;
  result = *&v37;
  v30[2] = v37;
  return result;
}

uint64_t sub_1E379AB34()
{
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29950);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24[-1] - v4;
  *v5 = sub_1E4201D54();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29958);
  v6 = sub_1E379AC88();
  v7 = *(v1 + 208);
  if (v7 && ((*(*v7 + 176))(v24, v6), (v25 & 1) == 0))
  {
    v10.n128_u64[0] = v24[2];
    v11.n128_u64[0] = v24[3];
    v8.n128_u64[0] = v24[0];
    v9.n128_u64[0] = v24[1];
    v12 = j_nullsub_1(v8, v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_5_8();
  }

  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = sub_1E4202734();
  sub_1E32B20A0(v5, v0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29960);
  v22 = v0 + *(result + 36);
  *v22 = v20;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1E379AC88()
{
  OUTLINED_FUNCTION_28_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  sub_1E379ADE8(&v15 - v8);
  v10 = *(v1 + 224);
  if (v10)
  {
    type metadata accessor for AttributionTextViewLayout();
    v11 = swift_retain_n();
    v12 = sub_1E3C82468(v11);
    v13 = sub_1E379AF24(v10, v12);
  }

  else
  {
    v13 = 0;
  }

  sub_1E379D7E4(v9, v6, &qword_1ECF29210);
  sub_1E379D7E4(v6, v0, &qword_1ECF29210);
  *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29968) + 48)) = v13;

  sub_1E325F6F0(v9, &qword_1ECF29210);

  return sub_1E325F6F0(v6, &qword_1ECF29210);
}

uint64_t sub_1E379ADE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  if (*(v1 + 216))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v5 + 32))(a1, v8, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }
}

size_t sub_1E379AF24(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement();
  OUTLINED_FUNCTION_0_10();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v39 = v7 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v41 = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v37 - v17, 1, 1, v4);
  v19 = *(a2 + 104);
  type metadata accessor for ImageLayout();
  OUTLINED_FUNCTION_10_23();

  v20 = sub_1E3BD61D8();

  v21 = *sub_1E3E60700();
  v22 = *(*v20 + 680);
  v23 = v21;
  v24 = v22(v21);
  v25 = (*(**(a2 + 120) + 304))(v24);
  (*(*v20 + 312))(v25, v26 & 1);
  OUTLINED_FUNCTION_8();
  v28 = (*(v27 + 200))();
  (*(*v20 + 208))(v28, v29 & 1);

  if ((*(*a1 + 464))(v30))
  {
    OUTLINED_FUNCTION_10_23();

    sub_1E379BC6C(a1, v19, v18, &v41, v20);
  }

  sub_1E379CDA0(v18, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {

    sub_1E325F6F0(v15, &qword_1ECF298A8);
    v31 = v41;
  }

  else
  {
    v32 = v38;
    sub_1E379CE10(v15, v38);
    v33 = v39;
    sub_1E379CE74(v32, v39);
    v31 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1E379CA58(0, *(v31 + 16) + 1, 1, v31);
    }

    v35 = *(v31 + 16);
    v34 = *(v31 + 24);
    if (v35 >= v34 >> 1)
    {
      v31 = sub_1E379CA58(v34 > 1, v35 + 1, 1, v31);
    }

    sub_1E379CEE4();
    *(v31 + 16) = v35 + 1;
    sub_1E379CE10(v33, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35);
  }

  sub_1E325F6F0(v18, &qword_1ECF298A8);
  return v31;
}

uint64_t sub_1E379B3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v68 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v63 = *(a1 + 24);
  v6 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v67 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v10 = v9;
  OUTLINED_FUNCTION_3_2();
  WitnessTable = swift_getWitnessTable();
  *&v78 = v6;
  *(&v78 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v65 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v58 = v15;
  *&v78 = v6;
  *(&v78 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v78 = OpaqueTypeMetadata2;
  *(&v78 + 1) = OpaqueTypeConformance2;
  v17 = OpaqueTypeConformance2;
  v56 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v61 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  *&v78 = OpaqueTypeMetadata2;
  *(&v78 + 1) = v17;
  v57 = swift_getOpaqueTypeConformance2();
  *&v78 = v18;
  *(&v78 + 1) = v57;
  v60 = &unk_1E441A3F8;
  v59 = swift_getOpaqueTypeMetadata2();
  v64 = *(v59 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v54 = v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298B0);
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  v55 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v62 = &v53 - v32;
  sub_1E4201B84();
  v71 = v5;
  v72 = v63;
  v33 = v66;
  v73 = v66;
  v34 = v10;
  sub_1E42039B4();
  v35 = *v33;
  v36 = v58;
  sub_1E3E361E8();
  (*(v67 + 8))(v34, v6);
  *&v78 = v35;
  *(&v78 + 1) = v35;
  v79 = v35;
  v80 = v35;
  v81 = 0;
  sub_1E3A6929C(*(v33 + 8), 0, 0, 1, &v78, OpaqueTypeMetadata2, v56);
  (*(v65 + 8))(v36, OpaqueTypeMetadata2);
  v37 = v33[2];
  v38 = v54;
  v39 = v57;
  sub_1E39B87A4(v37);
  (*(v61 + 8))(v22, v18);
  v40 = *(v68 + 20);
  v41 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v43 = v69;
  (*(v42 + 104))(&v69[v40], v41);
  *v43 = v35;
  v43[1] = v35;
  v76 = v18;
  v77 = v39;
  v44 = swift_getOpaqueTypeConformance2();
  sub_1E379D1EC(&qword_1EE2893F0, MEMORY[0x1E697EAF0]);
  v45 = v55;
  v46 = v59;
  sub_1E4203574();
  sub_1E379CEE4();
  (*(v64 + 8))(v38, v46);
  OUTLINED_FUNCTION_5_36();
  v48 = sub_1E32752B0(v47, &qword_1ECF298B0);
  v74 = v44;
  v75 = v48;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v49 = *(v27 + 16);
  v50 = v62;
  v49(v62, v45, v25);
  v51 = *(v27 + 8);
  v51(v45, v25);
  v49(v70, v50, v25);
  return (v51)(v50, v25);
}

uint64_t sub_1E379BA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  (*(v13 + 24))(v10);
  v14 = *(v5 + 16);
  v14(v12, v8, a2);
  v15 = *(v5 + 8);
  v15(v8, a2);
  v14(a3, v12, a2);
  return v15(v12, a2);
}

uint64_t sub_1E379BC10()
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v0 = OUTLINED_FUNCTION_32_0();

  return v1(v0);
}

uint64_t sub_1E379BC6C(unint64_t a1, uint64_t a2, uint64_t a3, size_t *a4, uint64_t a5)
{
  v39 = a5;
  v44 = a4;
  v45 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for AttributionView.AttributionElement();
  v38 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v36 - v16;
  result = sub_1E32AE9B0(a1);
  v18 = result;
  v19 = 0;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  v47 = a1 & 0xC000000000000001;
  v40 = a1;
  v41 = result;
  while (1)
  {
    if (v18 == v19)
    {
    }

    if (v47)
    {
      result = MEMORY[0x1E6911E60](v19, a1);
      v20 = result;
    }

    else
    {
      if (v19 >= *(v46 + 16))
      {
        goto LABEL_31;
      }

      v20 = *(a1 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (*v20 == _TtC8VideosUI13TextViewModel)
    {
      v21 = v12;
      v50 = 8;
      v22 = off_1EE2836C0[0];

      (v22)(&v48);
      if (v49)
      {
        if (swift_dynamicCast() & 1) != 0 && (v50)
        {
          v23 = *sub_1E3E60700();
          v37 = *(*v45 + 680);
          v24 = v23;
          v37(v23);
          v12 = v21;
          a1 = v40;
        }
      }

      else
      {
        sub_1E325F6F0(&v48, &unk_1ECF296E0);
      }

      sub_1E379CDA0(a3, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_1E325F6F0(v12, &qword_1ECF298A8);
      }

      else
      {
        v25 = v42;
        sub_1E379CE10(v12, v42);
        sub_1E379CE74(v25, v43);
        v26 = v44;
        v27 = *v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_1E379CA58(0, *(v27 + 16) + 1, 1, v27);
          *v44 = v27;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          v35 = sub_1E379CA58(v29 > 1, v30 + 1, 1, v27);
          *v44 = v35;
        }

        sub_1E379CEE4();
        v31 = v43;
        v32 = *v44;
        *(v32 + 16) = v30 + 1;
        sub_1E379CE10(v31, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
        a1 = v40;
        v12 = v21;
      }

      sub_1E41FE614();
      *&v9[v13[5]] = v20;
      *&v9[v13[6]] = v45;
      *&v9[v13[7]] = 0;
      *&v9[v13[8]] = 0;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);

      sub_1E379D774(v9, a3);
      v18 = v41;
    }

    type metadata accessor for ImageViewModel();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = v33;
      if (!__swift_getEnumTagSinglePayload(a3, 1, v13))
      {
        *(a3 + v13[7]) = v34;
      }

      if (!__swift_getEnumTagSinglePayload(a3, 1, v13))
      {
        *(a3 + v13[8]) = v39;
      }
    }

    ++v19;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E379C194()
{
  OUTLINED_FUNCTION_28_7();
  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C0);
  sub_1E41FE624();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C8);
  sub_1E32752B0(&qword_1ECF298D0, &qword_1ECF298C0);
  sub_1E379CF38();
  sub_1E379D1EC(&qword_1ECF29910, type metadata accessor for AttributionView.AttributionElement);
  return sub_1E4203B44();
}

double sub_1E379C2EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for AttributionView.AttributionElement();
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E0);
  OUTLINED_FUNCTION_0_10();
  v27 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  *v8 = sub_1E4201B84();
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29930);
  sub_1E379C648(a1, &v8[*(v13 + 44)]);
  v14 = sub_1E4202734();
  v15 = &v8[*(v5 + 36)];
  *v15 = v14;
  *(v15 + 8) = xmmword_1E429C0F0;
  *(v15 + 24) = xmmword_1E429C0F0;
  v15[40] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298F0);
  v17 = sub_1E379D090();
  v29 = v5;
  v30 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3E359E8();
  sub_1E325F6F0(v8, &qword_1ECF298E8);
  sub_1E379CE74(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v20 = swift_allocObject();
  sub_1E379CE10(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v29 = v5;
  v30 = v16;
  v31 = v17;
  v32 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  v22 = v25;
  sub_1E4202E74();

  (*(v27 + 8))(v12, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298C8);
  result = -4.0;
  *(v21 + *(v23 + 36)) = xmmword_1E429C100;
  return result;
}

uint64_t sub_1E379C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v40 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v39 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v41 = v16;
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  v23 = type metadata accessor for AttributionView.AttributionElement();
  OUTLINED_FUNCTION_18();
  v24 = v22;
  sub_1E3F23370();
  v25 = *(a1 + *(v23 + 28));
  if (v25)
  {

    sub_1E3EB9BB4(v44);
    v26 = *(a1 + *(v23 + 32));
    v27 = OUTLINED_FUNCTION_18();
    v28 = v39;
    sub_1E37E8BE8(v25, v44, v26, v27 & 1, 0, 0, v39);

    sub_1E375C31C(v44);
    (*(v40 + 32))(v14, v28, v3);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v29, 1, v3);
  v30 = v41;
  v31 = v42;
  v32 = *(v41 + 16);
  v32(v19, v24, v42);
  sub_1E379D7E4(v14, v11, &qword_1ECF29938);
  v33 = v11;
  v34 = v43;
  v32(v43, v19, v31);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29940) + 48);
  sub_1E379D7E4(v33, v35, &qword_1ECF29938);
  sub_1E325F6F0(v14, &qword_1ECF29938);
  v36 = *(v30 + 8);
  v36(v24, v31);
  sub_1E325F6F0(v33, &qword_1ECF29938);
  return (v36)(v19, v31);
}

uint64_t sub_1E379C9B0()
{
  OUTLINED_FUNCTION_28_7();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298E8);
  v1 = sub_1E379D090();
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = OUTLINED_FUNCTION_51_1();
  return sub_1E383F6D4(0, v2 & 1, 1, v3 & 1, v4 & 1, v0, v1);
}

size_t sub_1E379CA58(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E379CB44(v8, v7);
  v10 = *(type metadata accessor for AttributionView.AttributionElement() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E379CC40(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E379CB44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29948);
  v4 = *(type metadata accessor for AttributionView.AttributionElement() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E379CC40(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for AttributionView.AttributionElement(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for AttributionView.AttributionElement();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t type metadata accessor for AttributionView.AttributionElement()
{
  result = qword_1EE2A4650;
  if (!qword_1EE2A4650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E379CDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CE10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionView.AttributionElement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379CEE4()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1E379CF38()
{
  result = qword_1ECF298D8;
  if (!qword_1ECF298D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298F0);
    sub_1E379D090();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF298D8);
  }

  return result;
}

unint64_t sub_1E379D090()
{
  result = qword_1ECF298F8;
  if (!qword_1ECF298F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298E8);
    sub_1E32752B0(&qword_1ECF29900, &qword_1ECF29908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF298F8);
  }

  return result;
}

uint64_t sub_1E379D1EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_8VideosUI18CellBuilderContextVSg(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379D278(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379D2B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E379D358()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1E379D3A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379D3E8(uint64_t result, int a2, int a3)
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

void sub_1E379D480()
{
  sub_1E41FE624();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TextViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TextLayout();
      if (v2 <= 0x3F)
      {
        sub_1E379D584(319, qword_1EE282B40, type metadata accessor for ImageViewModel);
        if (v3 <= 0x3F)
        {
          sub_1E379D584(319, qword_1EE286130, type metadata accessor for ImageLayout);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E379D584(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E379D5D8()
{
  result = qword_1ECF29918;
  if (!qword_1ECF29918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF298A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29890);
    sub_1E32752B0(&qword_1ECF29898, &qword_1ECF29890);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29918);
  }

  return result;
}

uint64_t sub_1E379D6D4()
{
  v0 = type metadata accessor for AttributionView.AttributionElement();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 800))(2, 0, 0, 0);
}

uint64_t sub_1E379D774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E379D7E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

id VUIUTSConfigurationProxyNotificationName.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIUTSConfigurationProxyNotificationName.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSConfigurationProxyNotificationName();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIUTSConfigurationProxyNotificationName.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIUTSConfigurationProxyNotificationName();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E379D97C(void *a1, uint64_t a2)
{
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_57();
  sub_1E379DEC8(v4, v5);
  v6 = a1;

  v7 = sub_1E42010C4();
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x190))(a2);

  return v7;
}

id sub_1E379DA74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  type metadata accessor for Route(0);
  OUTLINED_FUNCTION_1_57();
  sub_1E379DEC8(v7, v8);

  v20 = a1;
  sub_1E42010D4();
  swift_getKeyPath();
  sub_1E42010E4();

  (*(*a2 + 272))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  sub_1E4203A84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299B8);
  sub_1E32752B0(&qword_1EE288968, &qword_1ECF299B0);
  sub_1E32752B0(qword_1EE23BF20, &qword_1ECF299B8);
  sub_1E4203274();

  v10 = a3;

  sub_1E406C2A0(v10, a2, a4, v23);
  v11 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299A8) + 36));
  v12 = v23[1];
  *v11 = v23[0];
  v11[1] = v12;
  v11[2] = v23[2];
  OUTLINED_FUNCTION_10_9();
  v13 = swift_allocObject();
  *(v13 + 2) = v20;
  *(v13 + 3) = a2;
  *(v13 + 4) = v10;
  *(v13 + 5) = a4;
  v14 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299A0) + 36));
  *v14 = sub_1E379E9FC;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v20;
  v15[3] = a2;
  v15[4] = v10;
  v15[5] = a4;
  v16 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29998) + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_1E379EA58;
  v16[3] = v15;
  swift_retain_n();
  v22 = v10;
  swift_retain_n();

  return v22;
}

uint64_t sub_1E379DE14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E379DEC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E379DF10@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  type metadata accessor for Router();
  OUTLINED_FUNCTION_0_24();
  sub_1E379DEC8(v4, v5);
  v6 = sub_1E4201754();
  v8 = v7;
  type metadata accessor for DocumentInteractor();
  sub_1E379DEC8(qword_1EE2788C0, type metadata accessor for DocumentInteractor);
  result = sub_1E42010C4();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = a1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1E379DFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29970);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29978);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32[-v11];
  v33 = *v2;
  v13 = *(v2 + 3);
  OUTLINED_FUNCTION_89();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_2_24(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29980);
  OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v8, a1);
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29988) + 36)];
  *v16 = sub_1E379E320;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  OUTLINED_FUNCTION_89();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_2_24(v17);
  v18 = &v8[*(v6 + 44)];
  *v18 = 0;
  v18[1] = 0;
  v18[2] = sub_1E379E3A0;
  v18[3] = v19;
  if (v13)
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x128);
    v21 = v13;
    sub_1E379E404(&v33, v32);
    v22 = v21;
    v23 = sub_1E379E404(&v33, v32);
    v24 = v20(v23);

    OUTLINED_FUNCTION_89();
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_2_24(v25);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1E379E4B0;
    *(v26 + 24) = v25;
    sub_1E379E528(v8, v12, &qword_1ECF29970);
    *&v12[*(v9 + 52)] = v24;
    v27 = &v12[*(v9 + 56)];
    *v27 = sub_1E379E500;
    v27[1] = v26;
    sub_1E379E528(v12, a2, &qword_1ECF29978);
    v28 = v22;
    return sub_1E379E404(&v33, v32);
  }

  else
  {
    type metadata accessor for Router();
    OUTLINED_FUNCTION_0_24();
    sub_1E379DEC8(v30, v31);
    swift_retain_n();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E379E320()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = j__OUTLINED_FUNCTION_18();
  return (*(*v1 + 792))(v2, v3 & 1, v4 & 1);
}

uint64_t sub_1E379E3A0()
{
  v1 = *(v0 + 24);
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_18();
  return (*(*v1 + 792))(0, v2 & 1, v3 & 1);
}

uint64_t sub_1E379E404(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29990);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

uint64_t sub_1E379E528(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1E379E5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379E5FC(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E379E644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E379E684(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}