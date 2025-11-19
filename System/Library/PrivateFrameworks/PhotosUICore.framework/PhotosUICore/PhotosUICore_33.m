uint64_t sub_1A4057DE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v4 = 0x656C746974627573;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6E6F74747562;
  if (*a2 != 1)
  {
    v8 = 0x656C746974627573;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
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
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4057ED8()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4057F70()
{
  sub_1A524C794();
}

uint64_t sub_1A4057FF4()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A4058088@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A40589EC();
  *a1 = result;
  return result;
}

void sub_1A40580B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6E6F74747562;
  if (v2 != 1)
  {
    v5 = 0x656C746974627573;
    v4 = 0xE800000000000000;
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

uint64_t sub_1A4058110(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (v2 != 1)
  {
    v5 = 0x617453656772616CLL;
    v4 = 0xEC00000064656B63;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6C6C616D73;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x656772616CLL;
  if (*a2 != 1)
  {
    v8 = 0x617453656772616CLL;
    v3 = 0xEC00000064656B63;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6C616D73;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A524EAB4();
  }

  return v11 & 1;
}

uint64_t sub_1A4058214()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A40582B8()
{
  sub_1A524C794();
}

uint64_t sub_1A4058348()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A40583E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4058A38();
  *a1 = result;
  return result;
}

void sub_1A4058418(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x656772616CLL;
  if (v2 != 1)
  {
    v5 = 0x617453656772616CLL;
    v4 = 0xEC00000064656B63;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6C616D73;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1A4058478(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = MEMORY[0x1E69E6530];
  *a1 = v2;
}

void sub_1A4058490()
{
  sub_1A4058B6C(&qword_1EB12AE90, type metadata accessor for TestNotificationPhotosItem);

    ;
  }
}

void sub_1A40584FC()
{
  sub_1A4058B6C(&qword_1EB12AE90, type metadata accessor for TestNotificationPhotosItem);

    ;
  }
}

uint64_t sub_1A4058588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40585F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4058658()
{
  v0 = sub_1A524E824();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A40586A4(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1A4055E00(a1, a4) & 1) == 0)
  {
    v13 = 0xEE00797265766F63;
    if (a1 <= 3u)
    {
      v22 = 0x80000001A53B5090;
      v23 = 0xD00000000000001ALL;
      if (a1 == 2)
      {
        v23 = 0xD000000000000017;
      }

      else
      {
        v22 = 0x80000001A53C5250;
      }

      v24 = 0x80000001A53C5210;
      v25 = 0xD000000000000015;
      if (a1)
      {
        v25 = 0xD000000000000017;
        v24 = 0x80000001A53C5230;
      }

      if (a1 <= 1u)
      {
        v20 = v25;
      }

      else
      {
        v20 = v23;
      }

      if (a1 <= 1u)
      {
        v21 = v24;
      }

      else
      {
        v21 = v22;
      }
    }

    else
    {
      v14 = 0x6F755164756F6C63;
      v15 = 0xEA00000000006174;
      v16 = 0x80000001A53C52A0;
      v17 = 0xD000000000000014;
      if (a1 != 7)
      {
        v17 = 1953719668;
        v16 = 0xE400000000000000;
      }

      if (a1 != 6)
      {
        v14 = v17;
        v15 = v16;
      }

      v18 = 0x65636E795363616DLL;
      v19 = 0xEF73746573734164;
      if (a1 == 4)
      {
        v18 = 0x6552737465737361;
        v19 = 0xEE00797265766F63;
      }

      if (a1 <= 5u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (a1 <= 5u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }
    }

    if (a4 > 3u)
    {
      if (a4 <= 5u)
      {
        if (a4 == 4)
        {
          if (v20 != 0x6552737465737361)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v13 = 0xEF73746573734164;
          if (v20 != 0x65636E795363616DLL)
          {
            goto LABEL_59;
          }
        }
      }

      else if (a4 == 6)
      {
        v13 = 0xEA00000000006174;
        if (v20 != 0x6F755164756F6C63)
        {
          goto LABEL_59;
        }
      }

      else if (a4 == 7)
      {
        v13 = 0x80000001A53C52A0;
        if (v20 != 0xD000000000000014)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v20 != 1953719668)
        {
          goto LABEL_59;
        }
      }

LABEL_56:
      if (v21 == v13)
      {

        return 0;
      }

LABEL_59:
      v27 = sub_1A524EAB4();

      return v27 & 1;
    }

    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v13 = 0x80000001A53C5250;
        if (v20 != 0xD00000000000001ALL)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      v26 = "sharedLibrarySuggestion";
    }

    else
    {
      if (!a4)
      {
        v13 = 0x80000001A53C5210;
        if (v20 != 0xD000000000000015)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      v26 = "sharedLibraryInvitation";
    }

    v13 = (v26 - 32) | 0x8000000000000000;
    if (v20 != 0xD000000000000017)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 0;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A40589EC()
{
  v0 = sub_1A524E824();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A4058A38()
{
  v0 = sub_1A524E824();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A4058A88()
{
  result = qword_1EB130E18;
  if (!qword_1EB130E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E18);
  }

  return result;
}

uint64_t sub_1A4058B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A4058C00()
{
  result = qword_1EB130E20;
  if (!qword_1EB130E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E20);
  }

  return result;
}

unint64_t sub_1A4058C58()
{
  result = qword_1EB130E28;
  if (!qword_1EB130E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E28);
  }

  return result;
}

unint64_t sub_1A4058CB0()
{
  result = qword_1EB12A0F0;
  if (!qword_1EB12A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A0F0);
  }

  return result;
}

unint64_t sub_1A4058D08()
{
  result = qword_1EB130E30;
  if (!qword_1EB130E30)
  {
    sub_1A4059208(255, &qword_1EB130E38, &type metadata for NotificationIdentifier.Subtype, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E30);
  }

  return result;
}

unint64_t sub_1A4058D8C()
{
  result = qword_1EB130E40;
  if (!qword_1EB130E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E40);
  }

  return result;
}

unint64_t sub_1A4058DE4()
{
  result = qword_1EB130E48;
  if (!qword_1EB130E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E48);
  }

  return result;
}

uint64_t sub_1A4058F50()
{
  result = type metadata accessor for NotificationsPhotosItem.NotificationType(319);
  if (v1 <= 0x3F)
  {
    result = sub_1A5241144();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A4058FE4()
{
  type metadata accessor for InvitationsItem(319);
  if (v0 <= 0x3F)
  {
    sub_1A3DB1E58();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeSharedLibraryCameraSharingItem(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AssetsRecoveryNotificationItem();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MacSyncedAssetsNotificationItem();
          if (v4 <= 0x3F)
          {
            type metadata accessor for CloudQuotaNotificationItem();
            if (v5 <= 0x3F)
            {
              type metadata accessor for SharedAlbumsActivityEntryItem();
              if (v6 <= 0x3F)
              {
                type metadata accessor for TestNotificationPhotosItem(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A4059130()
{
  sub_1A4059208(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241144();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4059208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4059290()
{
  sub_1A3CB4D08();
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1EB1EB538);
  __swift_project_value_buffer(v1, qword_1EB1EB538);
  [objc_opt_self() isLaunchedForTesting];
  sub_1A3E48704();
  sub_1A52475B4();
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  sub_1A52475A4();
  return sub_1A52477C4();
}

uint64_t sub_1A40593DC()
{
  if (qword_1EB18DEE0 != -1)
  {
    swift_once();
  }

  sub_1A3CB4D08();

  return __swift_project_value_buffer(v0, qword_1EB1EB538);
}

void sub_1A4059450()
{
  type metadata accessor for PXGHostingControllerNextFrameObserver();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  [v0 registerFrameObserver_];
  sub_1A4059678();
}

uint64_t sub_1A4059600(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  [a1 registerFrameObserver_];

  return v2;
}

void sub_1A4059678()
{
  if (qword_1EB175FA0 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

id sub_1A4059838()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A40598C8()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1A4059678();
  }

  return v1();
}

uint64_t sub_1A4059A70()
{
  sub_1A3C784D4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1A4059AA8(void *a1)
{
  v2 = v1;
  v31 = sub_1A524BEE4();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A524BFC4();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = (*(*v1 + 96))(v13);
  if (v16)
  {
    v18 = v16;
    v30 = v5;
    v19 = v17;
    v29 = (*(*v1 + 120))([a1 unregisterFrameObserver_]);
    sub_1A524BFA4();
    sub_1A3C52C70(0, &qword_1EB126A10);
    v20 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v20 inlinePlayerFrameLatencyApproximation];

    sub_1A524C014();
    v28 = *(v9 + 8);
    v28(v11, v35);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v19;
    v27 = v19;
    aBlock[4] = sub_1A3C7146C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_85;
    v22 = _Block_copy(aBlock);

    sub_1A524BF14();
    v36 = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C2A288(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60]);
    sub_1A3C5DE88();
    v24 = v30;
    v23 = v31;
    sub_1A524E224();
    v25 = v29;
    MEMORY[0x1A5908790](v15, v8, v24, v22);
    _Block_release(v22);

    sub_1A3C784D4(v18, v27);
    (*(v34 + 8))(v24, v23);
    (*(v32 + 8))(v8, v33);
    v28(v15, v35);
  }

  return (*(*v2 + 104))(0, 0);
}

unint64_t sub_1A4059F40()
{
  result = qword_1EB12B1E0;
  if (!qword_1EB12B1E0)
  {
    sub_1A524BEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B1E0);
  }

  return result;
}

uint64_t PXStoryConfiguration.allowedTransitions.getter()
{
  v1 = sub_1A52413E4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52414C4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 allowedTransitionKinds];
  sub_1A5241444();

  sub_1A405BC98(&qword_1EB12AF60, MEMORY[0x1E6969B50]);
  v11 = sub_1A524D004();
  if (v11)
  {
    v12 = v11;
    v23 = v2;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A405BC2C(0, v11 & ~(v11 >> 63), 0);
    v13 = v26;
    v24 = v9;
    result = sub_1A524CFD4();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v22 = v1;
      while (1)
      {
        v15 = sub_1A524D0C4();
        v17 = *v16;
        result = v15(v25, 0);
        if (v17 < -128)
        {
          break;
        }

        if (v17 > 127)
        {
          goto LABEL_13;
        }

        v18 = v4;
        v26 = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1A405BC2C((v19 > 1), v20 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = v20 + 1;
        *(v13 + v20 + 32) = v17;
        v4 = v18;
        v21 = v24;
        sub_1A524D044();
        if (!--v12)
        {
          (*(v23 + 8))(v18, v22);
          (*(v6 + 8))(v21, v5);
          return v13;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A405A2B8@<X0>(uint64_t *a1@<X8>)
{
  result = PXStoryConfiguration.allowedTransitions.getter();
  *a1 = result;
  return result;
}

void PXStoryConfiguration.allowedTransitions.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v21 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v22 = v5;
    v23 = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1A3FD1D1C(0, v10, 0);
    v11 = v26;
    v12 = v26[2];
    v13 = 32;
    do
    {
      v14 = *(a1 + v13);
      v26 = v11;
      v15 = v11[3];
      if (v12 >= v15 >> 1)
      {
        sub_1A3FD1D1C((v15 > 1), v12 + 1, 1);
        v11 = v26;
      }

      v11[2] = v12 + 1;
      v11[v12 + 4] = v14;
      ++v13;
      ++v12;
      --v10;
    }

    while (v10);

    v5 = v22;
    v2 = v23;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1A405BC98(&qword_1EB12AF50, MEMORY[0x1E6969B50]);
  sub_1A524E214();
  v16 = v11[2];
  if (v16)
  {
    v17 = v11 + 4;
    do
    {
      v18 = *v17++;
      v25 = v18;
      sub_1A524E154();
      --v16;
    }

    while (v16);
  }

  v19 = v24;
  (*(v5 + 32))(v24, v7, v4);
  v20 = sub_1A5241414();
  (*(v5 + 8))(v19, v4);
  [v2 setAllowedTransitionKinds_];
}

void (*PXStoryConfiguration.allowedTransitions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = PXStoryConfiguration.allowedTransitions.getter();
  return sub_1A405A5D8;
}

void sub_1A405A5D8(uint64_t *a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  PXStoryConfiguration.allowedTransitions.setter(*a1);
}

void PXStoryConfiguration.isEmbeddedInCollectionDetail.getter()
{
  swift_getKeyPath();
  sub_1A405BC4C();
  sub_1A405BC98(&qword_1EB1269C8, sub_1A405BC4C);
  sub_1A52457F4();
}

void sub_1A405AFC8()
{
  if (qword_1EB175F80 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void PXStoryConfiguration.environmentValues.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  sub_1A5245BA4();
}

void sub_1A405B2A0(uint64_t a1, char a2)
{
  if (a2)
  {
    (*(*a1 + 112))(*(*a1 + 96), *(*a1 + 104), *(*a1 + 80));
    sub_1A405AFC8();
  }

  sub_1A405AFC8();
}

id sub_1A405B438()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_1();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A405B5C4(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  PXStoryConfiguration.environmentValues.modify(v2);
}

char *sub_1A405BC2C(char *a1, int64_t a2, char a3)
{
  result = sub_1A405BCE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A405BC4C()
{
  result = qword_1EB1269B0;
  if (!qword_1EB1269B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1269B0);
  }

  return result;
}

uint64_t sub_1A405BC98(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1A405BCE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3F73574();
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t _s14AssociatedDataCMa_1()
{
  result = qword_1EB175F60;
  if (!qword_1EB175F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A405BE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for GenerativeStoryProgressAnimationView()
{
  result = qword_1EB160100;
  if (!qword_1EB160100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A405BF14@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  *a1 = sub_1A524BC74();
  a1[1] = v4;
  sub_1A405CA4C();
  sub_1A405C760(v1, a1 + *(v5 + 44));
  v6 = sub_1A5248874();
  v7 = sub_1A524A064();
  sub_1A405D034(0, &qword_1EB123A28, sub_1A405CAE8);
  v9 = a1 + *(v8 + 36);
  *v9 = v6;
  v9[8] = v7;
  v10 = sub_1A524BC74();
  v12 = v11;
  sub_1A3C52C70(0, &qword_1EB126860);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = [v13 showDebugUIGenerationProgress];

  if (v14 && (sub_1A3C52C70(0, &qword_1EB126BB0), v15 = [swift_getObjCClassFromMetadata() sharedInstance], v16 = objc_msgSend(v15, sel_canShowInternalUI), v15, v16))
  {
    v35 = sub_1A52492F4();
    v64 = 1;
    v17 = sub_1A5249584();
    v69 = 1;
    v18 = sub_1A5249574();
    v36[0] = 1;
    sub_1A405DC78(v2, &v56);
    v72 = *&v57[16];
    v73 = *&v57[32];
    v74 = *&v57[48];
    *&v75 = *&v57[64];
    v70 = v56;
    v71 = *v57;
    *&v82 = *&v57[64];
    v79 = *&v57[16];
    v80 = *&v57[32];
    v81 = *&v57[48];
    v77 = v56;
    v78 = *v57;
    sub_1A405DFA8(&v70, &v51, sub_1A405D330);
    sub_1A405DC18(&v77, sub_1A405D330);
    *&v65[39] = v72;
    *&v65[55] = v73;
    *&v65[71] = v74;
    *&v65[87] = v75;
    *&v65[7] = v70;
    *&v65[23] = v71;
    v51 = v18;
    v52[0] = 1;
    *&v52[1] = *v65;
    *&v52[17] = *&v65[16];
    *&v52[80] = *&v65[79];
    *&v52[65] = *&v65[64];
    *&v52[49] = *&v65[48];
    *&v52[33] = *&v65[32];
    v37 = v18;
    v38 = *v52;
    v42 = *&v52[64];
    v43 = *&v52[80];
    v40 = *&v52[32];
    v41 = *&v52[48];
    v39 = *&v52[16];
    *&v57[17] = *&v65[16];
    v86 = 1;
    v56 = v18;
    v57[0] = 1;
    *&v57[1] = *v65;
    *&v57[80] = *&v65[79];
    *&v57[65] = *&v65[64];
    *&v57[49] = *&v65[48];
    *&v57[33] = *&v65[32];
    sub_1A405DFA8(&v51, v36, sub_1A405D2CC);
    sub_1A405DC18(&v56, sub_1A405D2CC);
    v74 = v41;
    v75 = v42;
    *v76 = v43;
    v70 = v37;
    v71 = v38;
    v73 = v40;
    v72 = v39;
    v77 = v37;
    v78 = v38;
    v82 = v42;
    v83 = v43;
    *&v76[16] = 0;
    v76[24] = 1;
    v80 = v40;
    v81 = v41;
    v79 = v39;
    v84 = 0;
    v85 = 1;
    sub_1A405DFA8(&v70, &v56, sub_1A405D214);
    sub_1A405DC18(&v77, sub_1A405D214);
    *&v65[71] = v74;
    *&v65[87] = v75;
    *&v65[103] = *v76;
    *&v65[112] = *&v76[9];
    *&v65[7] = v70;
    *&v65[23] = v71;
    *&v65[39] = v72;
    *&v65[55] = v73;
    *v36 = v17;
    v36[16] = v69;
    *&v36[17] = *v65;
    *&v36[33] = *&v65[16];
    *&v36[49] = *&v65[32];
    *&v36[129] = *&v76[9];
    *&v36[113] = *&v65[96];
    *&v36[97] = *&v65[80];
    *&v36[81] = *&v65[64];
    *&v36[65] = *&v65[48];
    *&v52[80] = *&v36[96];
    *&v52[96] = *&v36[112];
    *&v52[112] = *&v36[128];
    *&v52[16] = *&v36[32];
    *&v52[32] = *&v36[48];
    *&v52[48] = *&v36[64];
    *&v52[64] = *&v36[80];
    v51 = v17;
    *v52 = *&v36[16];
    *&v57[65] = *&v65[64];
    *&v57[81] = *&v65[80];
    *&v57[97] = *&v65[96];
    *&v57[113] = *&v76[9];
    *&v57[1] = *v65;
    *&v57[17] = *&v65[16];
    *&v57[33] = *&v65[32];
    v52[128] = v76[24];
    v86 = 1;
    v56 = v17;
    v57[0] = v69;
    *&v57[49] = *&v65[48];
    sub_1A405DFA8(v36, &v37, sub_1A405D180);
    sub_1A405DC18(&v56, sub_1A405D180);
    *&v65[96] = *&v52[80];
    *&v65[112] = *&v52[96];
    v66 = *&v52[112];
    *&v65[32] = *&v52[16];
    *&v65[48] = *&v52[32];
    *&v65[64] = *&v52[48];
    *&v65[80] = *&v52[64];
    *v65 = v51;
    *&v65[16] = *v52;
    v43 = *&v52[80];
    v44 = *&v52[96];
    v45 = *&v52[112];
    v39 = *&v52[16];
    v40 = *&v52[32];
    v41 = *&v52[48];
    v42 = *&v52[64];
    v67 = *&v52[128];
    v68 = 1;
    v37 = v51;
    v38 = *v52;
    v46 = *&v52[128];
    LOBYTE(v47) = 1;
    sub_1A405DFA8(v65, &v56, sub_1A405D12C);
    sub_1A405DC18(&v37, sub_1A405D12C);
    *&v36[119] = *&v65[112];
    *&v36[135] = v66;
    *&v36[151] = v67;
    *&v36[55] = *&v65[48];
    *&v36[71] = *&v65[64];
    *&v36[87] = *&v65[80];
    *&v36[103] = *&v65[96];
    *&v36[7] = *v65;
    *&v36[23] = *&v65[16];
    v36[167] = v68;
    *&v36[39] = *&v65[32];
    v19 = v64;
    LOBYTE(v17) = sub_1A524A074();
    sub_1A5247BC4();
    *&v52[113] = *&v36[112];
    *&v52[129] = *&v36[128];
    *&v52[145] = *&v36[144];
    *&v52[49] = *&v36[48];
    *&v52[65] = *&v36[64];
    *&v52[81] = *&v36[80];
    *&v52[97] = *&v36[96];
    *&v52[1] = *v36;
    *&v52[17] = *&v36[16];
    v51 = v35;
    v52[0] = v19;
    *&v52[161] = *&v36[160];
    *&v52[33] = *&v36[32];
    LOBYTE(v53) = v17;
    *(&v53 + 1) = v20;
    *v54 = v21;
    *&v54[8] = v22;
    *&v54[16] = v23;
    v54[24] = 0;
    PXDisplayCollectionDetailedCountsMake(&v51);
    v60 = v53;
    *v61 = *v54;
    *&v61[9] = *&v54[9];
    *&v57[112] = *&v52[112];
    *&v57[128] = *&v52[128];
    v58 = *&v52[144];
    v59 = *&v52[160];
    *&v57[48] = *&v52[48];
    *&v57[64] = *&v52[64];
    *&v57[80] = *&v52[80];
    *&v57[96] = *&v52[96];
    v56 = v51;
    *v57 = *v52;
    *&v57[16] = *&v52[16];
    *&v57[32] = *&v52[32];
  }

  else
  {
    sub_1A405DBF0(&v56);
  }

  v49 = v60;
  *v50 = *v61;
  *&v50[9] = *&v61[9];
  v45 = *&v57[112];
  v46 = *&v57[128];
  v47 = v58;
  v48 = v59;
  v41 = *&v57[48];
  v42 = *&v57[64];
  v43 = *&v57[80];
  v44 = *&v57[96];
  v37 = v56;
  v38 = *v57;
  v39 = *&v57[16];
  v40 = *&v57[32];
  v53 = v60;
  *v54 = *v50;
  *&v54[16] = *&v50[16];
  *&v52[112] = *&v57[112];
  *&v52[128] = *&v57[128];
  *&v52[144] = v58;
  *&v52[160] = v59;
  *&v52[48] = *&v57[48];
  *&v52[64] = *&v57[64];
  *&v52[80] = *&v57[80];
  *&v52[96] = *&v57[96];
  v51 = v56;
  *v52 = *v57;
  *&v52[16] = *&v57[16];
  *&v52[32] = *&v57[32];
  *&v55 = v10;
  *(&v55 + 1) = v12;
  sub_1A405CEB8();
  v25 = (a1 + *(v24 + 36));
  v26 = *v54;
  v25[12] = v53;
  v25[13] = v26;
  v27 = v55;
  v25[14] = *&v54[16];
  v25[15] = v27;
  v28 = *&v52[128];
  v25[8] = *&v52[112];
  v25[9] = v28;
  v29 = *&v52[160];
  v25[10] = *&v52[144];
  v25[11] = v29;
  v30 = *&v52[64];
  v25[4] = *&v52[48];
  v25[5] = v30;
  v31 = *&v52[96];
  v25[6] = *&v52[80];
  v25[7] = v31;
  v32 = *v52;
  *v25 = v51;
  v25[1] = v32;
  v33 = *&v52[32];
  v25[2] = *&v52[16];
  v25[3] = v33;
  v60 = v49;
  *v61 = *v50;
  *&v61[16] = *&v50[16];
  *&v57[112] = v45;
  *&v57[128] = v46;
  v58 = v47;
  v59 = v48;
  *&v57[48] = v41;
  *&v57[64] = v42;
  *&v57[80] = v43;
  *&v57[96] = v44;
  v56 = v37;
  *v57 = v38;
  *&v57[16] = v39;
  *&v57[32] = v40;
  v62 = v10;
  v63 = v12;
  sub_1A405DFA8(&v51, v36, sub_1A405CF44);
  return sub_1A405DC18(&v56, sub_1A405CF44);
}

uint64_t sub_1A405C760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryProgressAnimationView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v23 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(v5 + 32));
  if ((*(*v12 + 704))(v9))
  {
    v13 = *(*v12 + 896);
    v22 = a2;

    v13(v14);
    sub_1A405DFA8(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryProgressAnimationView);
    v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v16 = swift_allocObject();
    sub_1A405DF40(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for GenerativeStoryProgressAnimationView);
    v17 = sub_1A3DCD90C();
    sub_1A3DCD930(v17, v18 & 1, v12, sub_1A405DEE4, v16, v11);
    v19 = v22;
    sub_1A405DF40(v11, v22, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
    return (*(v23 + 56))(v19, 0, 1, v8);
  }

  else
  {
    v21 = *(v23 + 56);

    return v21(a2, 1, 1, v8);
  }
}

void sub_1A405CA4C()
{
  if (!qword_1EB124448)
  {
    sub_1A405CAB4(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124448);
    }
  }
}

void sub_1A405CAE8()
{
  if (!qword_1EB121608)
  {
    sub_1A405CAB4(255);
    sub_1A405D74C(&qword_1EB125228, sub_1A405CAB4, sub_1A405CB7C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121608);
    }
  }
}

uint64_t sub_1A405CBB0()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = **(v0 + *(type metadata accessor for GenerativeStoryProgressAnimationView() + 24));
  if (!(*(v8 + 1432))())
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = *v0;
  v10 = *(v0 + 8);

  if ((v10 & 1) == 0)
  {
    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v9, 0);
    (*(v5 + 8))(v7, v4);
    v9 = v14[1];
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  sub_1A3FF29A0(v3);
  sub_1A3D63A8C(0);
  if ((*(*(v12 - 8) + 48))(v3, 1, v12) != 1)
  {
    sub_1A5245C94();
  }

LABEL_9:
  result = sub_1A405DC18(v3, sub_1A3D63A58);
  __break(1u);
  return result;
}

void sub_1A405CEB8()
{
  if (!qword_1EB123510)
  {
    sub_1A405D034(255, &qword_1EB123A28, sub_1A405CAE8);
    sub_1A405CF44();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123510);
    }
  }
}

void sub_1A405CF44()
{
  if (!qword_1EB122F08)
  {
    sub_1A405CFD8(255);
    sub_1A405D74C(&qword_1EB123BC8, sub_1A405CFD8, sub_1A405D7C8);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F08);
    }
  }
}

void sub_1A405D034(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A405D098()
{
  if (!qword_1EB121860)
  {
    sub_1A405D12C(255);
    sub_1A405D704(&qword_1EB120EC0, sub_1A405D12C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121860);
    }
  }
}

void sub_1A405D180()
{
  if (!qword_1EB121628)
  {
    sub_1A405D214(255);
    sub_1A405D704(&qword_1EB120F10, sub_1A405D214);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121628);
    }
  }
}

void sub_1A405D268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A405D2CC()
{
  if (!qword_1EB1217B0)
  {
    sub_1A405D330();
    sub_1A405D4D4();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1217B0);
    }
  }
}

void sub_1A405D330()
{
  if (!qword_1EB128238)
  {
    sub_1A405D3B0();
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128238);
    }
  }
}

void sub_1A405D3B0()
{
  if (!qword_1EB1283C0)
  {
    sub_1A3DF14C0();
    sub_1A405D430(255, &qword_1EB127820, &qword_1EB1276A0);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1283C0);
    }
  }
}

void sub_1A405D430(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A405D488(255, a3);
    v4 = sub_1A5249F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A405D488(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A524DF24();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1A405D4D4()
{
  result = qword_1EB128240;
  if (!qword_1EB128240)
  {
    sub_1A405D330();
    sub_1A405D574();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128240);
  }

  return result;
}

unint64_t sub_1A405D574()
{
  result = qword_1EB1283C8;
  if (!qword_1EB1283C8)
  {
    sub_1A405D3B0();
    sub_1A405D614();
    sub_1A405D6B4(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1283C8);
  }

  return result;
}

unint64_t sub_1A405D614()
{
  result = qword_1EB1286D0;
  if (!qword_1EB1286D0)
  {
    sub_1A3DF14C0();
    sub_1A405D6B4(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1286D0);
  }

  return result;
}

uint64_t sub_1A405D6B4(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A405D430(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A405D704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A405D74C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A405D7C8()
{
  result = qword_1EB123BE0;
  if (!qword_1EB123BE0)
  {
    sub_1A405D00C(255);
    sub_1A405D704(&qword_1EB121868, sub_1A405D098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BE0);
  }

  return result;
}

uint64_t sub_1A405D878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for GenerativeStoryProgressAnimationView();
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A405BE64(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = a1;
  return result;
}

void sub_1A405D970()
{
  sub_1A405BE64(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A405BE64(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for GenerativeStoryCreationViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A405DA6C()
{
  result = qword_1EB123518;
  if (!qword_1EB123518)
  {
    sub_1A405CEB8();
    sub_1A405DB1C();
    sub_1A405D704(&qword_1EB122F10, sub_1A405CF44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123518);
  }

  return result;
}

unint64_t sub_1A405DB1C()
{
  result = qword_1EB123A30;
  if (!qword_1EB123A30)
  {
    sub_1A405D034(255, &qword_1EB123A28, sub_1A405CAE8);
    sub_1A405D704(&qword_1EB121610, sub_1A405CAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A30);
  }

  return result;
}

double sub_1A405DBF0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1A405DC18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A405DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + *(type metadata accessor for GenerativeStoryProgressAnimationView() + 24));
  v8 = (*(*v7 + 944))();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = 0xD000000000000012;
    v12 = (*(*v7 + 1432))(v8);
    if (v12)
    {

      v11 = 0x80000001A53C54E0;
      v10 = 0xD000000000000025;
    }

    else
    {
      v11 = 0x80000001A53C54C0;
    }
  }

  KeyPath = swift_getKeyPath();
  sub_1A524A184();
  v14 = *MEMORY[0x1E6980E08];
  v15 = sub_1A524A154();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  v17 = sub_1A524A1B4();
  sub_1A405DC18(v6, sub_1A3E75D84);
  v18 = swift_getKeyPath();
  v21[8] = 0;
  v21[0] = 0;
  v19 = sub_1A524B434();
  result = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 20;
  *(a2 + 48) = 0;
  *(a2 + 56) = v18;
  *(a2 + 64) = v17;
  *(a2 + 72) = result;
  *(a2 + 80) = v19;
  return result;
}

uint64_t sub_1A405DF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A405DFA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A405E098@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000015;
  a2[1] = 0x80000001A53C5550;
  v5 = a1;
  v3 = type metadata accessor for NotificationsItemListManager();
  result = SendableTransfer.init(wrappedValue:)(&v5, v3, &v6);
  a2[2] = v6;
  return result;
}

void sub_1A405E11C()
{
  sub_1A3D37A04();

    ;
  }
}

void sub_1A405E158()
{
  sub_1A3D37A04();

    ;
  }
}

void sub_1A405E194(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A405EA40(&qword_1EB1296C0);
  sub_1A52415D4();

  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[2];
  a1[1] = v3;
  a1[2] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A405E250(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A405EA40(&qword_1EB1296C0);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  *a2 = v3[2];
  a2[1] = v4;
  a2[2] = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A405E30C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = v1;
  v5 = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for LemonadeNotificationsStackModel()
{
  result = qword_1EB17C2B0;
  if (!qword_1EB17C2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A405E3A8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  if (v1[4] == v4)
  {
    v1[2] = v3;
    v1[3] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A405EA40(&qword_1EB1296C0);
    sub_1A52415C4();
  }
}

void sub_1A405E4E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  v1[2] = v2;
  v1[3] = v4;
  v1[4] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A405E568(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore31LemonadeNotificationsStackModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A405EA40(&qword_1EB1296C0);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A405E694;
}

void sub_1A405E694(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A405E718(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  sub_1A5241604();
  *(v2 + 16) = v3;
  *(v2 + 24) = *(a1 + 1);
  return v2;
}

uint64_t sub_1A405E778()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeNotificationsStackModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A405E828()
{
  result = qword_1EB1297A0;
  if (!qword_1EB1297A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1297A0);
  }

  return result;
}

unint64_t sub_1A405E880()
{
  result = qword_1EB129798;
  if (!qword_1EB129798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129798);
  }

  return result;
}

unint64_t sub_1A405E8D8()
{
  result = qword_1EB129788;
  if (!qword_1EB129788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129788);
  }

  return result;
}

void (*sub_1A405E99C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A405E568(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A405EA40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeNotificationsStackModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A405EA88(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A405EA40(&qword_1EB1296C0);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A405EB4C()
{
  result = sub_1A5241614();
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

id sub_1A405EBEC(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D37B8]) initWithHighlight_];
  if (shouldUseNewCollectionsLayout()())
  {
    [v2 updateAlignment_];
    [v2 updateBackgroundStyle_];
  }

  v3 = sub_1A524CA14();
  [v2 excludeContextMenuItemsWithIdentifiers_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  return v2;
}

unint64_t sub_1A405ECC8()
{
  result = qword_1EB12A0E0;
  if (!qword_1EB12A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A0E0);
  }

  return result;
}

uint64_t sub_1A405ED24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A405EE24();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A405ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A405EE24();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A405EDEC()
{
  sub_1A405EE24();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A405EE24()
{
  result = qword_1EB130E58;
  if (!qword_1EB130E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E58);
  }

  return result;
}

uint64_t sub_1A405EE80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

id sub_1A405EF20()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_1A405EF64(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  v4 = a1;

  sub_1A4068E90();
}

void (*sub_1A405EFC4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A405F018;
}

void sub_1A405F018(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A4068E90();
  }
}

uint64_t sub_1A405F10C(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, 0x123uLL);
  v3 = *a2;
  swift_beginAccess();
  memcpy(v7, (v3 + 88), 0x123uLL);
  memcpy((v3 + 88), __dst, 0x123uLL);
  sub_1A4069378(__dst, &v5);
  return sub_1A4069400(v7);
}

uint64_t sub_1A405F190@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 88), 0x123uLL);
  memcpy(a1, (v1 + 88), 0x123uLL);
  return sub_1A4069378(__dst, &v4);
}

uint64_t sub_1A405F1F8(const void *a1)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 88), 0x123uLL);
  memcpy((v1 + 88), a1, 0x123uLL);
  return sub_1A4069400(__dst);
}

uint64_t sub_1A405F274@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 288))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A405F30C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 296);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A405F3CC()
{
  swift_beginAccess();
  v1 = *(v0 + 384);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A405F41C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 384);
  *(v2 + 384) = a1;
  *(v2 + 392) = a2;
  return sub_1A3C33378(v5);
}

uint64_t sub_1A405F4C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 312))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A406C000;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A405F558(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A406BFC8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 320);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A405F618()
{
  swift_beginAccess();
  v1 = *(v0 + 400);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A405F668(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 400);
  *(v2 + 400) = a1;
  *(v2 + 408) = a2;
  return sub_1A3C33378(v5);
}

uint64_t sub_1A405F70C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

id sub_1A405F7BC()
{
  swift_beginAccess();
  v1 = *(v0 + 416);

  return v1;
}

void sub_1A405F800(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 416);
  *(v1 + 416) = a1;
  v4 = a1;

  sub_1A40645BC();
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter);
  if (v5)
  {
    v6 = *(v1 + 416);
    v7 = *(*v5 + 176);

    v7(v6);
  }
}

uint64_t (*sub_1A405F8B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A405F90C;
}

uint64_t sub_1A405F90C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    result = sub_1A40645BC();
    v6 = *(v5 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter);
    if (v6)
    {
      v7 = *(*(a1 + 24) + 416);
      v8 = *(*v6 + 176);

      v8(v7);
    }
  }

  return result;
}

uint64_t sub_1A405F9B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A405FA90(char a1)
{
  swift_beginAccess();
  *(v1 + 424) = a1;
  v3 = sub_1A43E12D0();
  v4 = *(v1 + 424);
  swift_beginAccess();
  *v3 = v4;
  return sub_1A40645BC();
}

uint64_t (*sub_1A405FAFC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A405FB50;
}

uint64_t sub_1A405FB50(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = sub_1A43E12D0();
    v7 = *(v5 + 424);
    swift_beginAccess();
    *v6 = v7;
    return sub_1A40645BC();
  }

  return result;
}

uint64_t sub_1A405FBF8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1A406BE8C(a1, &v9 - v6, &unk_1EB12B250, v4);
  return (*(**a2 + 392))(v7);
}

uint64_t sub_1A405FCE8(uint64_t a1)
{
  v3 = sub_1A5240E64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E6968FB0];
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  sub_1A406C37C();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1A406BE8C(v1 + v14, v13, &unk_1EB12B250, v6);
  sub_1A406BE8C(a1, &v13[v15], &unk_1EB12B250, v6);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    sub_1A406BE8C(v13, v9, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v13[v15], v3);
      sub_1A406B9C0(&qword_1EB126050, MEMORY[0x1E6968FB0]);
      v19 = sub_1A524C594();
      v20 = *(v4 + 8);
      v20(v18, v3);
      v20(v9, v3);
      result = sub_1A3C686B4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      if ((v19 & 1) == 0)
      {
        return result;
      }

      return sub_1A40645BC();
    }

    (*(v4 + 8))(v9, v3);
    return sub_1A406BF68(v13, sub_1A406C37C);
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
    return sub_1A406BF68(v13, sub_1A406C37C);
  }

  sub_1A3C686B4(v13, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  return sub_1A40645BC();
}

uint64_t sub_1A4060064@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  swift_beginAccess();
  return sub_1A406BE8C(v1 + v3, a1, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1A40600D8(uint64_t a1)
{
  v3 = MEMORY[0x1E6968FB0];
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  swift_beginAccess();
  sub_1A406BE8C(v1 + v7, v6, &unk_1EB12B250, v3);
  swift_beginAccess();
  sub_1A4069480(a1, v1 + v7);
  swift_endAccess();
  sub_1A405FCE8(v6);
  sub_1A3C686B4(a1, &unk_1EB12B250, v3);
  return sub_1A3C686B4(v6, &unk_1EB12B250, v3);
}

void (*sub_1A40601F4(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v7);
    v5[11] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  v10 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  v5[12] = v8;
  v5[13] = v10;
  swift_beginAccess();
  sub_1A406BE8C(v1 + v10, v9, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  return sub_1A4060340;
}

void sub_1A4060340(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    v8 = MEMORY[0x1E6968FB0];
    sub_1A406BE8C(*(*a1 + 96), v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    sub_1A406BE8C(v7 + v4, v5, &unk_1EB12B250, v8);
    swift_beginAccess();
    sub_1A4069480(v6, v7 + v4);
    swift_endAccess();
    sub_1A405FCE8(v5);
    sub_1A3C686B4(v5, &unk_1EB12B250, v8);
  }

  else
  {
    sub_1A406BE8C(v7 + v4, v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    swift_beginAccess();
    sub_1A4069480(v3, v7 + v4);
    swift_endAccess();
    sub_1A405FCE8(v6);
  }

  v9 = MEMORY[0x1E6968FB0];
  sub_1A3C686B4(v6, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  sub_1A3C686B4(v3, &unk_1EB12B250, v9);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t ParallaxAssetsManager.__allocating_init(viewSize:overlapViewCandidates:posterClassification:initialAssetUUID:maxPreloadedAssetCount:skipSegmentation:onAssetPreloaded:computesDebugInfo:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  v19 = swift_allocObject();
  sub_1A4069344(__src);
  memcpy((v19 + 88), __src, 0x123uLL);
  v20 = MEMORY[0x1E69C0B28];
  *(v19 + 384) = 0u;
  *(v19 + 400) = 0u;
  v21 = *v20;
  *(v19 + 416) = *v20;
  *(v19 + 424) = 0;
  v22 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  v23 = sub_1A5240E64();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter) = 0;
  v24 = v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAutoCancellationTask) = 0;
  v25 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_preloadedImages;
  v26 = v21;
  v27 = MEMORY[0x1E69E7CC0];
  *(v19 + v25) = sub_1A406B1AC(MEMORY[0x1E69E7CC0]);
  *(v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_imagesPreloading) = v27;
  *(v19 + 16) = a9;
  *(v19 + 24) = a10;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3 & 1;
  *(v19 + 56) = a4;
  *(v19 + 64) = a5;
  *(v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_overlapViewCandidates) = a1;
  *(v19 + 72) = a6;
  *(v19 + 80) = a7;
  swift_beginAccess();
  *(v19 + 400) = a8;
  *(v19 + 408) = a11;
  v28 = objc_allocWithZone(MEMORY[0x1E6978840]);
  sub_1A3C66EE8(a8);
  *(v19 + 32) = [v28 init];
  sub_1A3C33378(a8);
  v29 = (v19 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_timeLayoutIdentifier);
  *v29 = 0x746C7561666564;
  v29[1] = 0xE700000000000000;
  return v19;
}

uint64_t ParallaxAssetsManager.init(viewSize:overlapViewCandidates:posterClassification:initialAssetUUID:maxPreloadedAssetCount:skipSegmentation:onAssetPreloaded:computesDebugInfo:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, uint64_t a11)
{
  sub_1A4069344(__src);
  memcpy((v11 + 88), __src, 0x123uLL);
  v20 = MEMORY[0x1E69C0B28];
  *(v11 + 384) = 0u;
  *(v11 + 400) = 0u;
  v21 = *v20;
  *(v11 + 416) = *v20;
  *(v11 + 424) = 0;
  v22 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL;
  v23 = sub_1A5240E64();
  (*(*(v23 - 8) + 56))(v11 + v22, 1, 1, v23);
  *(v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter) = 0;
  v24 = v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAutoCancellationTask) = 0;
  v25 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_preloadedImages;
  v26 = v21;
  v27 = MEMORY[0x1E69E7CC0];
  *(v11 + v25) = sub_1A406B1AC(MEMORY[0x1E69E7CC0]);
  *(v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_imagesPreloading) = v27;
  *(v11 + 16) = a9;
  *(v11 + 24) = a10;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3 & 1;
  *(v11 + 56) = a4;
  *(v11 + 64) = a5;
  *(v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_overlapViewCandidates) = a1;
  *(v11 + 72) = a6;
  *(v11 + 80) = a7;
  swift_beginAccess();
  v28 = *(v11 + 400);
  *(v11 + 400) = a8;
  *(v11 + 408) = a11;
  sub_1A3C66EE8(a8);
  sub_1A3C33378(v28);
  *(v11 + 32) = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  sub_1A3C33378(a8);
  v29 = (v11 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_timeLayoutIdentifier);
  *v29 = 0x746C7561666564;
  v29[1] = 0xE700000000000000;
  return v11;
}

void sub_1A40608E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_timeLayoutIdentifier);
  *v4 = a2;
  v4[1] = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4060958(int a1)
{
  v2 = v1;
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  (*(*v1 + 256))(v39, v12);
  memcpy(v40, v39, 0x123uLL);
  v15 = 0;
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v40) != 1)
  {
    v15 = v39[0];
    v16 = v39[0];
  }

  memcpy(v38, v39, 0x123uLL);
  sub_1A4069400(v38);
  sub_1A4068848(v15, a1 & 1);
  v18 = v17;

  if (v18)
  {
    v36 = v6;
    v19 = sub_1A41CDD28();
    (*(v8 + 16))(v14, v19, v7);
    v20 = v18;
    v21 = sub_1A5246F04();
    v22 = sub_1A524D264();
    if (!os_log_type_enabled(v21, v22))
    {

      (*(v8 + 8))(v14, v7);
      v29 = type metadata accessor for ParallaxAssetSegmenter();
      v34 = *(v2 + 40);
      v35 = v29;
      LODWORD(v33) = *(v2 + 48);
      v30 = *(*v2 + 336);
      v31 = v20;
      v30();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    LODWORD(v34) = a1;
    v35 = v7;
    v23 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v23 = 136315394;
    v24 = [v20 uuid];
    v33 = v20;

    if (v24)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v25 = sub_1A41CDD28();
    (*(v8 + 16))(v10, v25, v7);
    v26 = sub_1A5246F04();
    v27 = sub_1A524D244();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1A3C1C000, v26, v27, "AssetsManager: requestNextAsset: no assets to request", v28, 2u);
      MEMORY[0x1A590EEC0](v28, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1A4060E98(const void *a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v86 = a5;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  v87 = v10;
  v88 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v85 = (&v79 - v22);
  memcpy(v96, a1, 0x123uLL);
  v23 = v5;
  v24 = v5 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  v25 = *v24;
  if (!*v24)
  {
LABEL_6:
    v35 = sub_1A41CDD28();
    (*(v88 + 16))(v13, v35, v87);
    v36 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v82 = v16;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  sub_1A406BD70(v25);
  v28 = v27 & 1;
  v29 = v26;
  v30 = sub_1A406B060(v25, v26, v28, a2, a3, a4 & 1);
  v31 = a2;
  if ((v30 & 1) == 0)
  {

    goto LABEL_6;
  }

  v32 = v24;
  v80 = v29;
  v81 = v25;
  v33 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAutoCancellationTask;
  v34 = v23;
  if (*(v23 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAutoCancellationTask))
  {
    sub_1A3DBD9A0();

    sub_1A524CD94();
  }

  v37 = v86;
  *(v23 + v33) = 0;

  type metadata accessor for ParallaxAssetViewInternalDefaults();
  sub_1A4069378(v96, v94);
  v38 = sub_1A42005AC();
  if (v38 == 2 || (v38 & 1) == 0)
  {
    v39 = v87;
    if (v37)
    {
      v40 = v37;
      v41 = sub_1A41CDD28();
      (*(v88 + 16))(v85, v41, v39);
      v42 = v37;
      v43 = sub_1A5246F04();
      v44 = sub_1A524D244();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v37;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_1A3C1C000, v43, v44, "AssetsManager: next asset request failed with error: %@", v45, 0xCu);
        sub_1A406BF68(v46, sub_1A3D3F118);
        MEMORY[0x1A590EEC0](v46, -1, -1);
        v49 = v45;
        v39 = v87;
        MEMORY[0x1A590EEC0](v49, -1, -1);
      }

      (*(v88 + 8))(v85, v39);
      if ((a4 & 1) == 0)
      {
        sub_1A4061928(v31);
        sub_1A4069400(v96);

LABEL_33:

        return;
      }
    }

    memcpy(v95, v96, 0x123uLL);
  }

  else
  {
    sub_1A4069400(v96);
    sub_1A4069344(v95);
    v39 = v87;
  }

  swift_beginAccess();
  memcpy(v94, v34 + 11, 0x123uLL);
  memcpy(v34 + 11, v95, 0x123uLL);
  sub_1A4069378(v95, v93);
  sub_1A4069400(v94);
  v50 = *v32;
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  sub_1A406B2E8(v50);
  v51 = sub_1A41CDD28();
  v52 = v88;
  v53 = v84;
  v85 = *(v88 + 16);
  v86 = v51;
  v85(v84);

  v54 = sub_1A5246F04();
  v55 = sub_1A524D234();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    (*(*v34 + 256))(v91);
    memcpy(v93, v91, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v93) == 1)
    {
      v57 = 0;
    }

    else
    {
      sub_1A4069400(v91);
      v57 = 1;
    }

    *(v56 + 4) = v57;

    _os_log_impl(&dword_1A3C1C000, v54, v55, "AssetsManager: Current image updates, has image: %{BOOL}d", v56, 8u);
    MEMORY[0x1A590EEC0](v56, -1, -1);
  }

  else
  {
  }

  v59 = *(v52 + 8);
  v58 = v52 + 8;
  v60 = v53;
  v61 = v59;
  v62 = (v59)(v60, v39);
  v63 = (*(*v34 + 288))(v62);
  if (v63)
  {
    v64 = v63;
    v63();
    v63 = sub_1A3C33378(v64);
  }

  (*(*v34 + 256))(v92, v63);
  memcpy(v93, v92, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v93) == 1)
  {

    sub_1A4069400(v95);
    memcpy(v91, v92, 0x123uLL);
    sub_1A4069400(v91);
    return;
  }

  memcpy(v91, v92, 0x123uLL);
  v65 = v92[0];
  sub_1A4069400(v91);
  v66 = v83;
  (v85)(v83, v86, v39);
  v67 = v65;
  v68 = sub_1A5246F04();
  v69 = sub_1A524D234();
  if (!os_log_type_enabled(v68, v69))
  {

    (v61)(v66, v39);
    sub_1A4069344(v90);
    memcpy(v89, v90, 0x123uLL);
    sub_1A4068270(v67, v89);
    v72 = v82;
    (v85)(v82, v86, v39);
    v73 = sub_1A5246F04();
    v74 = sub_1A524D234();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_1A3C1C000, v73, v74, "AssetsManager: Start preload of more assets.", v75, 2u);
      v76 = v75;
      v39 = v87;
      MEMORY[0x1A590EEC0](v76, -1, -1);
    }

    (v61)(v72, v39);
    v77 = v34[9];
    v78 = v67;
    sub_1A40647A0(v77, v67);
    sub_1A4069400(v95);

    goto LABEL_33;
  }

  v84 = v61;
  v88 = v58;
  v70 = swift_slowAlloc();
  v79 = swift_slowAlloc();
  v90[0] = v79;
  *v70 = 136315138;
  v71 = [v67 uuid];

  if (v71)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
}

void sub_1A4061928(void *a1)
{
  v2 = v1;
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A41CDD28();
  (*(v8 + 16))(v10, v11, v7);
  v12 = a1;
  v13 = sub_1A5246F04();
  v14 = sub_1A524D264();
  if (os_log_type_enabled(v13, v14))
  {
    v26[1] = v7;
    v26[2] = v6;
    v15 = swift_slowAlloc();
    v26[3] = swift_slowAlloc();
    *v15 = 136315138;
    v16 = [v12 uuid];
    v17 = v12;
    v18 = v16;
    v26[0] = v17;

    if (v18)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    type metadata accessor for ParallaxAssetSegmenter();
    v19 = v2[2];
    v20 = v2[3];
    v21 = *(*v2 + 384);
    v22 = v12;
    v21();
    v23 = sub_1A43E1690();
    v24 = sub_1A3C5A374();
    v25 = ParallaxAssetSegmenter.__allocating_init(asset:posterClassification:viewSize:style:cacheKey:assetDirectoryURL:disableRendering:)(v22, 0, 1, v23, 0x6B6361626C6C6166, 0xE800000000000000, v6, v24 & 1, v19, v20);
    sub_1A4061FEC(v22, v25, 1);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter) = v25;
  }
}

uint64_t sub_1A4061C88()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 256))(v23, v4);
  memcpy(v24, v23, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v24) != 1)
  {
    memcpy(v22, v23, 0x123uLL);
    v7 = v23[0];
    sub_1A4069400(v22);
    v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_currentAssetSegmenter);
    if (!v8)
    {

      goto LABEL_10;
    }

    v9 = sub_1A41CDD28();
    (*(v3 + 16))(v6, v9, v2);
    v10 = v7;
    v11 = sub_1A5246F04();
    v12 = sub_1A524D264();
    if (!os_log_type_enabled(v11, v12))
    {

      (*(v3 + 8))(v6, v2);
      sub_1A4061FEC(v10, v8, 0);
    }

    v18 = v6;
    v19 = v3;
    v20 = v2;
    v13 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v13 = 136315138;
    v14 = [v10 uuid];

    if (v14)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  memcpy(v22, v23, 0x123uLL);
  sub_1A4069400(v22);
LABEL_10:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4061FEC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v24 = a2;
  v21 = *v4;
  sub_1A3C4D184(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v18 - v8;
  v9 = sub_1A5246F24();
  v25 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v22 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v20 = v18 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v19 = v18 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v16 = v4 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  v17 = *(v4 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage);
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_1A406B2E8(v17);
  v18[7] = a3;
  sub_1A406868C(a1, a3);
}

uint64_t sub_1A4062C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 307) = a7;
  *(v7 + 320) = a5;
  *(v7 + 328) = a6;
  *(v7 + 312) = a4;
  v8 = sub_1A5246F24();
  *(v7 + 336) = v8;
  *(v7 + 344) = *(v8 - 8);
  *(v7 + 352) = swift_task_alloc();
  v9 = sub_1A524E5E4();
  *(v7 + 360) = v9;
  *(v7 + 368) = *(v9 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = sub_1A524CC54();
  *(v7 + 392) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v7 + 400) = v11;
  *(v7 + 408) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4062DDC, v11, v10);
}

uint64_t sub_1A4062DDC()
{
  type metadata accessor for ParallaxAssetViewInternalDefaults();
  v1 = sub_1A4200094();
  v3 = 10;
  if ((v2 & 1) == 0)
  {
    v3 = v1;
  }

  v4 = 1000000000000000000 * v3;
  v5 = (v3 * 0xDE0B6B3A7640000uLL) >> 64;
  v6 = (v3 >> 63) & 0xF21F494C589C0000;
  sub_1A524EBB4();
  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  *v7 = v0;
  v7[1] = sub_1A4062EF0;

  return sub_1A3DCFAB0(v4, v6 + v5, 0, 0, 1);
}

uint64_t sub_1A4062EF0()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 368);
  v5 = *(*v1 + 360);
  *(*v1 + 424) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 408);
  v7 = *(v2 + 400);
  if (v0)
  {
    v8 = sub_1A4063200;
  }

  else
  {
    v8 = sub_1A4063088;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1A4063088()
{
  if (sub_1A524CDC4())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[42];
    v6 = sub_1A41CDD28();
    (*(v4 + 16))(v3, v6, v5);
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, v8, "AssetsManager: exceeded timeout for next asset request", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    v11 = v0[43];
    v10 = v0[44];
    v12 = v0[42];

    (*(v11 + 8))(v10, v12);

    return MEMORY[0x1EEE6DFA0](sub_1A406327C, 0, 0);
  }
}

uint64_t sub_1A4063200()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A406327C()
{
  *(v0 + 432) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4063308, v2, v1);
}

uint64_t sub_1A4063308()
{
  v9 = v0;
  v1 = *(v0 + 307);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);

  sub_1A4069344(v0 + 16);
  memcpy(__dst, (v0 + 16), 0x123uLL);
  sub_1A406C264();
  v4 = swift_allocError();
  sub_1A4060E98(__dst, v3, v2, v1, v4);

  v5 = *(v0 + 400);
  v6 = *(v0 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1A40633E8, v5, v6);
}

uint64_t sub_1A40633E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4063460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2368) = v16;
  *(v8 + 309) = v15;
  *(v8 + 2360) = v14;
  *(v8 + 308) = v13;
  *(v8 + 2352) = a8;
  *(v8 + 2344) = a7;
  *(v8 + 307) = a6;
  *(v8 + 2336) = a5;
  *(v8 + 2328) = a4;
  v9 = sub_1A524E5E4();
  *(v8 + 2376) = v9;
  *(v8 + 2384) = *(v9 - 8);
  *(v8 + 2392) = swift_task_alloc();
  v10 = sub_1A5246F24();
  *(v8 + 2400) = v10;
  *(v8 + 2408) = *(v10 - 8);
  *(v8 + 2416) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40635B0, 0, 0);
}

void sub_1A40635B0()
{
  v1 = v0[302];
  v2 = v0[301];
  v3 = v0[300];
  v4 = sub_1A41CDD28();
  (*(v2 + 16))(v1, v4, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4063838()
{
  v2 = *(*v1 + 2392);
  v3 = *(*v1 + 2384);
  v4 = *(*v1 + 2376);
  *(*v1 + 2432) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A40639A8;
  }

  else
  {
    v5 = sub_1A4063A18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A40639A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4063A18(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v30 = v3;
  if (*(v3 + 309) == 1)
  {
    v4 = *(v3 + 2352);
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (!*(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    v5 = *(v3 + 2344);
    v6 = *(v4 + 48);
    *(v3 + 2088) = *(v4 + 32);
    *(v3 + 2104) = v6;
    v8 = *(v4 + 80);
    v7 = *(v4 + 96);
    v9 = *(v4 + 64);
    *(v3 + 2161) = *(v4 + 105);
    *(v3 + 2136) = v8;
    *(v3 + 2152) = v7;
    *(v3 + 2120) = v9;
    v10 = *(v4 + 80);
    v25[2] = *(v4 + 64);
    v25[3] = v10;
    v26[0] = *(v4 + 96);
    *(v26 + 9) = *(v4 + 105);
    v11 = *(v4 + 48);
    v25[0] = *(v4 + 32);
    v25[1] = v11;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v12 = v5;
    sub_1A406BAA8(v3 + 2088, v3 + 2184);
    v13 = sub_1A3C30368();
    _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v29);
    sub_1A43DDD04(v12, 0, v23, v25, 0x6E656D6765536F6ELL, 0xEE006E6F69746174, 0, v13 & 1, v3 + 1792, 0, 1, &v29, v27);
    PXDisplayCollectionDetailedCountsMake(v3 + 1792);
    memcpy((v3 + 16), (v3 + 1792), 0x123uLL);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v3 + 2456) = Strong;
    if (Strong)
    {
      memcpy((v3 + 1496), (v3 + 16), 0x123uLL);
      sub_1A524CC54();
      *(v3 + 2472) = sub_1A524CC44();
      v15 = sub_1A524CBC4();
      v17 = v16;
      a1 = sub_1A40640F0;
      a2 = v15;
      a3 = v17;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

    sub_1A4069400(v3 + 16);

    v21 = *(v3 + 8);

    return v21();
  }

  else
  {
    v22 = (*(**(v3 + 2360) + 200) + **(**(v3 + 2360) + 200));
    v18 = swift_task_alloc();
    *(v3 + 2440) = v18;
    *v18 = v3;
    v18[1] = sub_1A4063D68;
    v19 = *(v3 + 2352);

    return v22(v3 + 312, v19);
  }
}

uint64_t sub_1A4063D68()
{
  *(*v1 + 2448) = v0;

  if (v0)
  {
    v2 = sub_1A4063FC0;
  }

  else
  {
    v2 = sub_1A4063E7C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4063E7C()
{
  memcpy(v0 + 150, v0 + 39, 0x123uLL);
  PXDisplayCollectionDetailedCountsMake(v0 + 150);
  memcpy(v0 + 2, v0 + 150, 0x123uLL);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[307] = Strong;
  if (Strong)
  {
    memcpy(v0 + 187, v0 + 2, 0x123uLL);
    sub_1A524CC54();
    v0[309] = sub_1A524CC44();
    v3 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A40640F0, v3, v2);
  }

  else
  {
    sub_1A4069400((v0 + 2));

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1A4063FC0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 2464) = Strong;
  if (Strong)
  {
    v2 = *(v0 + 2448);
    sub_1A4069344(v0 + 608);
    memcpy((v0 + 904), (v0 + 608), 0x123uLL);
    sub_1A524CC54();
    v3 = v2;
    *(v0 + 2480) = sub_1A524CC44();
    v5 = sub_1A524CBC4();

    return MEMORY[0x1EEE6DFA0](sub_1A4064208, v5, v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1A40640F0()
{
  v1 = *(v0 + 308);
  v2 = *(v0 + 2352);
  v3 = *(v0 + 2344);

  sub_1A4060E98((v0 + 1496), v3, v2, v1, 0);

  return MEMORY[0x1EEE6DFA0](sub_1A4064190, 0, 0);
}

uint64_t sub_1A4064190()
{
  sub_1A4069400(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4064208()
{
  v1 = *(v0 + 2448);
  v2 = *(v0 + 308);
  v3 = *(v0 + 2352);
  v4 = *(v0 + 2344);

  sub_1A4060E98((v0 + 904), v4, v3, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1A40642BC, 0, 0);
}

uint64_t sub_1A40642BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4064334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_1A3C4D184(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1A406BE8C(a3, v23 - v10, &qword_1EB12B270, v8);
  v12 = sub_1A524CCB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A3C686B4(v11, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_1A524CCA4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A524CBC4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A524C744() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A40645BC()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A41CDD28();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "AssetsManager: Invalidating manager...", v9, 2u);
    MEMORY[0x1A590EEC0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1A406B1AC(MEMORY[0x1E69E7CC0]);
  v12 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_preloadedImages;
  swift_beginAccess();
  *(v1 + v12) = v11;

  v13 = v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  v14 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  sub_1A406B2E8(v14);
  v15 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_imagesPreloading;
  swift_beginAccess();
  *(v1 + v15) = v10;
}

void sub_1A40647A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v58[0] = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = v58 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v62 = v58 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v58 - v14;
  v16 = sub_1A41CDD28();
  v17 = *(v7 + 16);
  v67 = v16;
  v68 = v7 + 16;
  v66 = v17;
  v17(v15);
  v18 = a2;
  v19 = sub_1A5246F04();
  v20 = sub_1A524D234();
  v71 = v18;

  v21 = os_log_type_enabled(v19, v20);
  v60 = v6;
  v72 = a1;
  if (v21)
  {
    v70 = v7;
    v22 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v22 = 134218242;
    *(v22 + 4) = a1;
    *(v22 + 12) = 2080;
    v73 = a2;
    if (a2)
    {
      v23 = [v71 uuid];
      if (v23)
      {
        v24 = v23;
        sub_1A524C674();
      }
    }

    sub_1A3C2EF94();
  }

  v65 = *(v7 + 8);
  v65(v15, v6);
  v25 = v6;
  v26 = v72;
  if (v72 < 0)
  {
    goto LABEL_37;
  }

  v70 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_overlapViewCandidates;
  v27 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_preloadedImages;
  v28 = OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_imagesPreloading;
  v29 = v71;
  v69 = v27;
  swift_beginAccess();
  v64 = v28;
  v30 = swift_beginAccess();
  if (v26)
  {
    v71 = 0;
    v63 = v7 + 8;
    *&v31 = 136315138;
    v59 = v31;
    v32 = *(*v3 + 232);
    v33 = (v32)(v30);
    v34 = [v33 count];

    if (v34 < 1)
    {
    }

    else
    {
      if (a2)
      {
        v35 = v32();
        v36 = [v35 indexOfObject_];

        if (v36 == sub_1A52403B4())
        {
          v37 = 0;
LABEL_23:
          v49 = v32();
          v39 = [v49 objectAtIndexedSubscript_];

LABEL_24:
          v73 = v39;
          v50 = v39;
          v51 = v50;
          v52 = *(v3 + v70);
          if (*(*(v3 + v69) + 16))
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          v74[0] = v50;
          v74[1] = v52;
          v75 = 0;
          MEMORY[0x1EEE9AC00](v50);
          v58[-2] = v74;
          v53 = v51;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
        }

        else
        {
          v72 = v26;
          v41 = a2;
          v42 = v32();
          v43 = [v42 count];

          v44 = __OFADD__(v40, v43);
          v45 = v43 + v40;
          if (!v44)
          {
            v46 = v32();
            v47 = [v46 count];

            if (v47)
            {
              if (v45 != 0x8000000000000000 || v47 != -1)
              {
                v37 = v45 % v47;
                a2 = v41;
                goto LABEL_23;
              }

              goto LABEL_36;
            }

LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      v38 = sub_1A4068A00();
      if (v38)
      {
        v39 = v38;
        goto LABEL_24;
      }
    }

    v54 = v58[0];
    v66(v58[0], v67, v25);
    v55 = sub_1A5246F04();
    v56 = sub_1A524D234();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1A3C1C000, v55, v56, "AssetsManager: No more assets to preload", v57, 2u);
      MEMORY[0x1A590EEC0](v57, -1, -1);
    }

    v65(v54, v25);
  }

  else
  {
  }
}

void sub_1A40651C0(void *a1, uint64_t a2, int a3)
{
  v18 = a3;
  sub_1A3C4D184(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v19 = v16 - v6;
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v16[4] = v16 - v8;
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v13 = [v17 uuid];
  if (v13)
  {
    v14 = v13;
    sub_1A524C674();
  }

  v20 = a2;
  v15 = sub_1A41CDD28();
  (*(v10 + 16))(v12, v15, v9);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4065750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 307) = v14;
  *(v8 + 4440) = v13;
  *(v8 + 4432) = a8;
  *(v8 + 4424) = a7;
  *(v8 + 4416) = a6;
  *(v8 + 4408) = a5;
  *(v8 + 4400) = a4;
  v9 = sub_1A524E5E4();
  *(v8 + 4448) = v9;
  *(v8 + 4456) = *(v9 - 8);
  *(v8 + 4464) = swift_task_alloc();
  v10 = sub_1A5246F24();
  *(v8 + 4472) = v10;
  *(v8 + 4480) = *(v10 - 8);
  *(v8 + 4488) = swift_task_alloc();
  *(v8 + 4496) = swift_task_alloc();
  *(v8 + 4504) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40658B0, 0, 0);
}

uint64_t sub_1A40658B0()
{
  (*(**(v0 + 4400) + 208))();
  memcpy((v0 + 16), (v0 + 312), 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0((v0 + 16)) != 1)
  {
    v9 = *(v0 + 4504);
    v10 = *(v0 + 4480);
    v11 = *(v0 + 4472);
    v12 = sub_1A41CDD28();
    (*(v10 + 16))(v9, v12, v11);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v1 = *(v0 + 307);
  type metadata accessor for ParallaxAssetViewInternalDefaults();
  v2 = sub_1A4200324();
  if (v3 & 1) != 0 || (v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 4544) = Strong;
    if (Strong)
    {
      v14 = *(v0 + 4496);
      v15 = *(v0 + 4480);
      v16 = *(v0 + 4472);
      v17 = sub_1A41CDD28();
      *(v0 + 4552) = v17;
      v18 = *(v15 + 16);
      *(v0 + 4560) = v18;
      *(v0 + 4568) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v14, v17, v16);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v4 = 1000000000000000000 * v2;
    v5 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
    v6 = (v2 >> 63) & 0xF21F494C589C0000;
    sub_1A524EBB4();
    v7 = swift_task_alloc();
    *(v0 + 4528) = v7;
    *v7 = v0;
    v7[1] = sub_1A4065FA0;

    return sub_1A3DCFAB0(v4, v6 + v5, 0, 0, 1);
  }
}

uint64_t sub_1A4065E50()
{
  v1 = *(v0 + 307);
  v2 = *(v0 + 4440);
  v3 = *(v0 + 4432);

  sub_1A4066F84(v3, v2, v1, (v0 + 3568), 0);

  memcpy((v0 + 2680), (v0 + 3568), 0x123uLL);
  sub_1A4069400(v0 + 2680);

  return MEMORY[0x1EEE6DFA0](sub_1A4065F08, 0, 0);
}

uint64_t sub_1A4065F08()
{
  sub_1A4069400(v0 + 312);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4065FA0()
{
  v2 = *(*v1 + 4464);
  v3 = *(*v1 + 4456);
  v4 = *(*v1 + 4448);
  *(*v1 + 4536) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A406639C;
  }

  else
  {
    v5 = sub_1A4066110;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4066110()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[568] = Strong;
  if (Strong)
  {
    v2 = v0[562];
    v3 = v0[560];
    v4 = v0[559];
    v5 = sub_1A41CDD28();
    v0[569] = v5;
    v6 = *(v3 + 16);
    v0[570] = v6;
    v0[571] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v2, v5, v4);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A406639C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40664C4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v28 = v3;
  if ((*(v3 + 309) & 1) == 0)
  {
    (*(v3 + 4560))(*(v3 + 4488), *(v3 + 4552), *(v3 + 4472));
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(v3 + 308) == 1)
  {
    v4 = *(v3 + 4440);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    if (*(v4 + 16))
    {
      v5 = *(v3 + 4432);
      v6 = *(v4 + 48);
      *(v3 + 4160) = *(v4 + 32);
      *(v3 + 4176) = v6;
      v8 = *(v4 + 80);
      v7 = *(v4 + 96);
      v9 = *(v4 + 64);
      *(v3 + 4233) = *(v4 + 105);
      *(v3 + 4208) = v8;
      *(v3 + 4224) = v7;
      *(v3 + 4192) = v9;
      v10 = *(v4 + 80);
      v23[2] = *(v4 + 64);
      v23[3] = v10;
      v24[0] = *(v4 + 96);
      *(v24 + 9) = *(v4 + 105);
      v11 = *(v4 + 48);
      v23[0] = *(v4 + 32);
      v23[1] = v11;
      memset(v25, 0, sizeof(v25));
      v26 = 0;
      v12 = v5;
      sub_1A406BAA8(v3 + 4160, v3 + 4256);
      v13 = sub_1A3C30368();
      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(v27);
      sub_1A43DDD04(v12, 0, v21, v23, 0x6E656D6765536F6ELL, 0xEE006E6F69746174, 0, v13 & 1, v3 + 2384, 0, 1, v27, v25);
      PXDisplayCollectionDetailedCountsMake(v3 + 2384);
      memcpy((v3 + 608), (v3 + 2384), 0x123uLL);
      memcpy((v3 + 2088), (v3 + 608), 0x123uLL);
      *(v3 + 4640) = sub_1A524CC44();
      v14 = sub_1A524CBC4();
      v16 = v15;
      a1 = sub_1A4066B88;
      a2 = v14;
      a3 = v16;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    v20 = (*(**(v3 + 4400) + 200) + **(**(v3 + 4400) + 200));
    v17 = swift_task_alloc();
    *(v3 + 4624) = v17;
    *v17 = v3;
    v17[1] = sub_1A4066A74;
    v18 = *(v3 + 4440);

    return v20(v3 + 904, v18);
  }
}

uint64_t sub_1A406692C()
{
  v1 = *(v0 + 4544);

  v2 = v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage);
  *(v0 + 4608) = v3;
  *(v0 + 4616) = *(v2 + 8);
  *(v0 + 310) = *(v2 + 16);
  sub_1A406BD70(v3);

  return MEMORY[0x1EEE6DFA0](sub_1A40669C0, 0, 0);
}

uint64_t sub_1A40669C0()
{
  v1 = *(v0 + 4608);

  sub_1A406B2E8(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4066A74()
{
  *(*v1 + 4632) = v0;

  if (v0)
  {
    v2 = sub_1A4066D84;
  }

  else
  {
    v2 = sub_1A4066CC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4066B88()
{
  v1 = *(v0 + 307);
  v2 = *(v0 + 4440);
  v3 = *(v0 + 4432);

  sub_1A4066F84(v3, v2, v1, (v0 + 2088), 0);

  return MEMORY[0x1EEE6DFA0](sub_1A4066C20, 0, 0);
}

uint64_t sub_1A4066C20()
{

  sub_1A4069400(v0 + 608);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4066CC0()
{
  memcpy(v0 + 224, v0 + 113, 0x123uLL);
  PXDisplayCollectionDetailedCountsMake(v0 + 224);
  memcpy(v0 + 76, v0 + 224, 0x123uLL);
  memcpy(v0 + 261, v0 + 76, 0x123uLL);
  v0[580] = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4066B88, v2, v1);
}

uint64_t sub_1A4066D84()
{
  v1 = v0[579];
  sub_1A4069344((v0 + 150));
  memcpy(v0 + 187, v0 + 150, 0x123uLL);
  v2 = v1;
  v0[581] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4066E34, v4, v3);
}

uint64_t sub_1A4066E34()
{
  v1 = *(v0 + 4632);
  v2 = *(v0 + 307);
  v3 = *(v0 + 4440);
  v4 = *(v0 + 4432);

  sub_1A4066F84(v4, v3, v2, (v0 + 1496), v1);

  return MEMORY[0x1EEE6DFA0](sub_1A4066EE0, 0, 0);
}

uint64_t sub_1A4066EE0()
{
  v1 = *(v0 + 4632);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A4066F84(void *a1, uint64_t a2, int a3, const void *a4, void *a5)
{
  v6 = v5;
  v47 = a5;
  v54 = a3;
  v55 = a2;
  v9 = sub_1A5246F24();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  memcpy(v62, a4, 0x123uLL);
  v21 = sub_1A41CDD28();
  v22 = *(v10 + 16);
  v59 = v21;
  v60 = v10 + 16;
  v58 = v22;
  (v22)(v20);
  v23 = a1;
  v24 = sub_1A5246F04();
  v25 = sub_1A524D234();
  v26 = os_log_type_enabled(v24, v25);
  v56 = v23;
  v48 = v9;
  v53 = v10;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v27 = 136315138;
    v28 = [v23 uuid];

    if (v28)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = *(v10 + 8);
  v57(v20, v9);
  v29 = v6 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage;
  v30 = *(v6 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage);
  v31 = v52;
  if (!v30)
  {
    goto LABEL_10;
  }

  v32 = *(v29 + 8);
  v33 = *(v29 + 16);
  sub_1A406BD70(*(v6 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage));
  if ((sub_1A406B060(v23, v55, v54 & 1, v30, v32, v33 & 1) & 1) == 0)
  {

LABEL_10:
    v39 = v51;
    v58(v51, v59, v9);
    v40 = v23;
    v41 = sub_1A5246F04();
    v42 = sub_1A524D264();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v43 = 136315138;
      v44 = [v40 uuid];

      if (v44)
      {
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      goto LABEL_17;
    }

    v57(v39, v9);
    sub_1A4068270(v40, v62);
LABEL_15:
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v58(v31, v59, v9);
  v34 = v23;
  v35 = sub_1A5246F04();
  v36 = sub_1A524D264();
  if (!os_log_type_enabled(v35, v36))
  {

    v57(v31, v9);
    sub_1A4060E98(v62, v34, v55, v54 & 1, v47);

    goto LABEL_15;
  }

  v37 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v61 = v46;
  *v37 = 136315138;
  v38 = [v34 uuid];
  v51 = v34;

  if (v38)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

LABEL_18:
  __break(1u);
}

unint64_t sub_1A4067908(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1A3C52C70(0, &qword_1EB126AF0);
    v8 = sub_1A524DBF4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1A4067A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v4 = *(a4 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

uint64_t sub_1A4067D48(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A406A0F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_1A4067DEC()
{
  v0 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v0);
  v3[2] = v3 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4068270(void *a1, const void *a2)
{
  v3 = v2;
  v6 = sub_1A5246F24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v20, a2, 0x123uLL);
  memcpy(v21, a2, sizeof(v21));
  v10 = sub_1A41CDD28();
  (*(v7 + 16))(v9, v10, v6);
  sub_1A4069378(v20, v19);
  sub_1A4069378(v20, v19);
  v11 = a1;
  v12 = sub_1A5246F04();
  v13 = sub_1A524D234();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_1A4069400(v20);

    sub_1A4069400(v20);
    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    sub_1A4069378(v20, v19);
    v16 = v11;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v18[1] = v6;
  v18[2] = v3;
  v14 = swift_slowAlloc();
  v19[0] = swift_slowAlloc();
  *v14 = 136315394;
  v15 = [v11 uuid];
  v18[0] = v11;

  if (v15)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  sub_1A4069400(v20);
  result = sub_1A4069400(v20);
  __break(1u);
  return result;
}

void sub_1A4068598(void *__src, void *a2, uint64_t a3, char a4)
{
  memcpy(__dst, __src, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(__dst) == 1)
  {
    sub_1A406A104(a2, a3, a4 & 1, __srca);

    memcpy(v12, __srca, 0x123uLL);
    sub_1A4069400(v12);
  }

  else
  {
    memcpy(v12, __src, 0x123uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    __srca[0] = *v4;
    sub_1A406AB6C(v12, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);

    *v4 = __srca[0];
  }
}

void sub_1A406868C(uint64_t a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4068848(void *a1, char a2)
{
  v5 = *(*v2 + 232);
  v6 = v5();
  v7 = [v6 count];

  if (v7 >= 1)
  {
    if (a1)
    {
      v8 = a1;
      v9 = v5();
      v10 = [v9 indexOfObject_];

      if (v10 == sub_1A52403B4())
      {
        v11 = 0;
LABEL_19:
        v21 = v5();
        [v21 objectAtIndexedSubscript_];

        return;
      }

      v12 = -1;
      if ((a2 & 1) == 0)
      {
        v12 = 1;
      }

      v13 = &v10[v12];
      if (__OFADD__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        v14 = v5();
        v15 = [v14 count];

        v16 = __OFADD__(v13, v15);
        v17 = v15 + v13;
        if (!v16)
        {
          v18 = v5();
          v19 = [v18 count];

          if (v19)
          {
            if (v17 != 0x8000000000000000 || v19 != -1)
            {
              v11 = v17 % v19;
              goto LABEL_19;
            }

            goto LABEL_23;
          }

LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    sub_1A4068A00();
  }
}

id sub_1A4068A00()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = v0[8];
  if (!v11)
  {
LABEL_31:
    v38 = *(*v1 + 232);
    v39 = (v38)(v7, v8);
    v40 = [v39 count];

    if (v40 < 1)
    {
      return 0;
    }

    v41 = v38();
    v18 = [v41 objectAtIndexedSubscript_];

    return v18;
  }

  v49 = v0[7];
  v12 = (*(*v0 + 232))(v8);
  v13 = [v12 fetchedObjects];

  if (!v13)
  {
LABEL_28:
    v34 = sub_1A41CDD28();
    (*(v3 + 16))(v5, v34, v2);
    v35 = sub_1A5246F04();
    v36 = sub_1A524D264();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1A3C1C000, v35, v36, "AssetsManager: Initial Asset UUID not found in assets", v37, 2u);
      MEMORY[0x1A590EEC0](v37, -1, -1);
    }

    v7 = (*(v3 + 8))(v5, v2);
    goto LABEL_31;
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v14 = sub_1A524CA34();

  v47 = v3;
  v48 = v2;
  v45 = v5;
  v46 = v1;
  v44 = v10;
  if (v14 >> 62)
  {
LABEL_26:
    v15 = sub_1A524E2B4();
    if (v15)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_27:

    v3 = v47;
    v2 = v48;
    v5 = v45;
    v1 = v46;
    goto LABEL_28;
  }

LABEL_5:
  v16 = 0;
  v50 = v14 & 0xC000000000000001;
  while (1)
  {
    if (v50)
    {
      v17 = MEMORY[0x1A59097F0](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v20 = [v17 uuid];
    if (!v20)
    {
      goto LABEL_6;
    }

    v21 = v20;
    v22 = sub_1A524C674();
    v24 = v23;

    if (v22 == v49 && v11 == v24)
    {
      break;
    }

    v26 = sub_1A524EAB4();

    if (v26)
    {
      goto LABEL_21;
    }

LABEL_6:

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_27;
    }
  }

LABEL_21:

  v27 = sub_1A41CDD28();
  v29 = v47;
  v28 = v48;
  v30 = v44;
  (*(v47 + 16))(v44, v27, v48);
  v31 = sub_1A5246F04();
  v32 = sub_1A524D264();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1A3C1C000, v31, v32, "AssetsManager: found initial asset", v33, 2u);
    MEMORY[0x1A590EEC0](v33, -1, -1);
  }

  (*(v29 + 8))(v30, v28);
  return v18;
}

void sub_1A4068E90()
{
  v1 = v0;
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  (*(*v0 + 256))(v42, v7);
  memcpy(v43, v42, 0x123uLL);
  if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v43) == 1)
  {
    memcpy(v41, v42, 0x123uLL);
    sub_1A4069400(v41);
  }

  else
  {
    v37 = v9;
    memcpy(v41, v42, 0x123uLL);
    v38 = v42[0];
    v10 = sub_1A4069400(v41);
    v11 = *(*v0 + 232);
    v12 = (v11)(v10);
    v13 = [v12 fetchedObjectIDs];

    if (v13 && (sub_1A3C52C70(0, &qword_1EB126AF0), v14 = v3, v15 = v2, v16 = sub_1A524CA34(), v13, v17 = [v38 objectID], v36 = sub_1A4067908(v17, v16), v19 = v18, v2 = v15, v3 = v14, , v17, (v19 & 1) == 0) && (v20 = v11(), v21 = objc_msgSend(v20, sel_objectAtIndexedSubscript_, v36), v20, v22 = objc_msgSend(v38, sel_isContentEqualTo_, v21), v21, v22 == 2))
    {
      v23 = v38;
      v24 = sub_1A41CDD28();
      v25 = v37;
      (*(v3 + 16))(v37, v24, v2);
      v26 = sub_1A5246F04();
      v27 = sub_1A524D264();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A3C1C000, v26, v27, "AssetsManager: assets updated but will keep same current asset.", v28, 2u);
        MEMORY[0x1A590EEC0](v28, -1, -1);
      }

      (*(v3 + 8))(v25, v2);
      v29 = v1[9];
      v30 = v23;
      v31 = v23;
      sub_1A40647A0(v29, v30);
    }

    else
    {
      v31 = v38;
      v32 = sub_1A41CDD28();
      (*(v3 + 16))(v5, v32, v2);
      v33 = sub_1A5246F04();
      v34 = sub_1A524D264();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1A3C1C000, v33, v34, "AssetsManager: assets updated, will request next asset.", v35, 2u);
        MEMORY[0x1A590EEC0](v35, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      sub_1A4069344(v39);
      swift_beginAccess();
      memcpy(v40, v1 + 11, 0x123uLL);
      memcpy(v1 + 11, v39, 0x123uLL);
      sub_1A4069400(v40);
      (*(*v1 + 424))(0);
    }
  }
}

double sub_1A4069344(uint64_t a1)
{
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 287) = 0;
  return result;
}

uint64_t sub_1A4069378(uint64_t a1, uint64_t a2)
{
  sub_1A406C030(0, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4069400(uint64_t a1)
{
  sub_1A406C030(0, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4069480(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D184(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ParallaxAssetsManager.deinit()
{

  memcpy(__dst, (v0 + 88), 0x123uLL);
  sub_1A4069400(__dst);
  sub_1A3C33378(*(v0 + 384));
  sub_1A3C33378(*(v0 + 400));

  sub_1A3C686B4(v0 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_assetDirectoryURL, &unk_1EB12B250, MEMORY[0x1E6968FB0]);

  sub_1A406B2E8(*(v0 + OBJC_IVAR____TtC12PhotosUICore21ParallaxAssetsManager_pendingRequestedImage));

  return v0;
}

uint64_t ParallaxAssetsManager.__deallocating_deinit()
{
  ParallaxAssetsManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4069668(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30[0] = v5[4];
    v9 = v30[0];
    *(v30 + 9) = *(v5 + 73);
    v10 = v5[1];
    v27[0] = *v5;
    v27[1] = v10;
    *(v26 + 9) = *(v30 + 9);
    v24 = v28;
    v25 = v8;
    v26[0] = v9;
    v22 = v27[0];
    v23 = v10;
    v11 = v6[3];
    v32 = v6[2];
    v33 = v11;
    v34[0] = v6[4];
    v12 = v34[0];
    *(v34 + 9) = *(v6 + 73);
    v13 = v6[1];
    v31[0] = *v6;
    v31[1] = v13;
    *(v21 + 9) = *(v34 + 9);
    v19 = v32;
    v20 = v11;
    v21[0] = v12;
    v17 = v31[0];
    v18 = v13;
    sub_1A406BAA8(v27, v16);
    sub_1A406BAA8(v31, v16);
    sub_1A406BBAC();
    v14 = sub_1A524C594();
    v35[2] = v19;
    v35[3] = v20;
    v36[0] = v21[0];
    *(v36 + 9) = *(v21 + 9);
    v35[0] = v17;
    v35[1] = v18;
    sub_1A406BB58(v35);
    v37[2] = v24;
    v37[3] = v25;
    v38[0] = v26[0];
    *(v38 + 9) = *(v26 + 9);
    v37[0] = v22;
    v37[1] = v23;
    sub_1A406BB58(v37);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

uint64_t sub_1A4069804(int a1, id a2, uint64_t a3)
{
  v4 = [a2 uuid];
  if (v4)
  {
    v5 = v4;
    sub_1A524C674();

    sub_1A524ECB4();
    sub_1A524C794();
  }

  else
  {
    sub_1A524ECB4();
  }

  v6 = *(a3 + 16);
  MEMORY[0x1A590A010](v6);
  if (v6)
  {
    v7 = (a3 + 32);
    do
    {
      v8 = v7[3];
      v14 = v7[2];
      v15 = v8;
      v16[0] = v7[4];
      v9 = v16[0];
      *(v16 + 9) = *(v7 + 73);
      v10 = *v7;
      v11 = v7[1];
      v7 += 6;
      v13[0] = v10;
      v13[1] = v11;
      v19 = v10;
      v20 = v11;
      v21 = v14;
      v22 = v8;
      v23[0] = v9;
      *(v23 + 9) = *(v16 + 9);
      sub_1A406BAA8(v13, v17);
      sub_1A406BB04();
      sub_1A524C4B4();
      v17[2] = v21;
      v17[3] = v22;
      v18[0] = v23[0];
      *(v18 + 9) = *(v23 + 9);
      v17[0] = v19;
      v17[1] = v20;
      sub_1A406BB58(v17);
      --v6;
    }

    while (v6);
  }

  return sub_1A524ECB4();
}

uint64_t sub_1A4069964()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  sub_1A4069804(&v4, v1, v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A40699CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A524EC94();
  sub_1A4069804(&v4, v1, v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A4069A40()
{
  sub_1A406B9C0(&unk_1EB139CD0, type metadata accessor for PFParallaxLayerStyleKind);
  sub_1A406B9C0(&qword_1EB130E90, type metadata accessor for PFParallaxLayerStyleKind);

  return sub_1A524E7E4();
}

char *sub_1A4069AFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A406C030(0, &qword_1EB130EA8, &type metadata for AssetImageConfig, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A4069C30(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A524EC94();
  sub_1A4069804(&v8, a1, a2);
  v6 = sub_1A524ECE4();

  return sub_1A4069CBC(a1, a2, a3, v6);
}

uint64_t sub_1A4069CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = *(*(v9 + 48) + 24 * v6);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a4 & ~v5;
}

uint64_t sub_1A406A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = *(a3 + 32);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A406A104(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v7 = sub_1A4069C30(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    __src[0] = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A406AD44();
      v11 = __src[0];
    }

    v12 = *(*(v11 + 48) + 24 * v9);

    memmove(a4, (*(v11 + 56) + 296 * v9), 0x123uLL);
    sub_1A406A854(v9, v11);
    *v5 = v11;
    PXDisplayCollectionDetailedCountsMake(a4);
  }

  else
  {
    sub_1A4069344(__src);
    memcpy(a4, __src, 0x123uLL);
  }
}

uint64_t sub_1A406A1D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A406BC5C();
  v58 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v52 = v3;
    v8 = 0;
    v54 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v53 = (v9 + 63) >> 6;
    v12 = result + 64;
    v56 = result;
    v57 = v5;
    v55 = result + 64;
    while (v11)
    {
      v20 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      if ((v58 & 1) == 0)
      {
        v34 = *(*(v5 + 48) + 24 * v23);
        memcpy(__dst, (*(v5 + 56) + 296 * v23), sizeof(__dst));
        v35 = v34;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v24 = *(v5 + 48) + 24 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = *(v5 + 56) + 296 * v23;
      v65 = *v28;
      v73 = *(v28 + 8);
      v74 = *(v28 + 24);
      v29 = *(v28 + 88);
      v87 = *(v28 + 72);
      v88 = v29;
      v89 = *(v28 + 104);
      v90 = *(v28 + 120);
      v30 = *(v28 + 56);
      v85 = *(v28 + 40);
      v86 = v30;
      v63 = *(v28 + 128);
      v64 = *(v28 + 160);
      v62 = *(v28 + 144);
      v60 = *(v28 + 136);
      v61 = *(v28 + 176);
      v31 = *(v28 + 184);
      v66 = *(v28 + 192);
      v67 = *(v28 + 193);
      v32 = *(v28 + 200);
      v33 = *(v28 + 208);
      v68 = *(v28 + 216);
      v72 = *(v28 + 224);
      v69 = *(v28 + 232);
      v70 = *(v28 + 240);
      v71 = *(v28 + 256);
      v75 = *(v28 + 272);
      v76 = *(v28 + 280);
      v59 = *(v28 + 288);
      v77 = *(v28 + 289);
      v78 = *(v28 + 290);
      sub_1A524EC94();
      v79 = v25;
      v36 = [v25 uuid];
      if (v36)
      {
        v37 = v36;
        sub_1A524C674();

        sub_1A524ECB4();
        sub_1A524C794();
        v12 = v55;
      }

      else
      {
        sub_1A524ECB4();
      }

      v38 = *(v26 + 16);
      MEMORY[0x1A590A010](v38);
      if (v38)
      {
        v39 = (v26 + 32);
        do
        {
          v40 = v39[1];
          v80[0] = *v39;
          v80[1] = v40;
          v41 = v39[2];
          v42 = v39[3];
          v43 = v39[4];
          *(v81 + 9) = *(v39 + 73);
          v80[3] = v42;
          v81[0] = v43;
          v80[2] = v41;
          memmove(__dst, v39, 0x59uLL);
          sub_1A406BAA8(v80, v82);
          sub_1A406BB04();
          sub_1A524C4B4();
          v82[2] = *&__dst[32];
          v82[3] = *&__dst[48];
          v83[0] = *&__dst[64];
          *(v83 + 9) = *&__dst[73];
          v82[0] = *__dst;
          v82[1] = *&__dst[16];
          sub_1A406BB58(v82);
          v39 += 6;
          --v38;
        }

        while (v38);
      }

      sub_1A524ECB4();
      result = sub_1A524ECE4();
      v7 = v56;
      v44 = -1 << *(v56 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v12 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        v5 = v57;
        v14 = v79;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v12 + 8 * v46);
          if (v50 != -1)
          {
            v13 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v45) & ~*(v12 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v5 = v57;
      v14 = v79;
LABEL_7:
      __dst[0] = v59;
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v56 + 48) + 24 * v13;
      *v15 = v14;
      *(v15 + 8) = v26;
      *(v15 + 16) = v27;
      v16 = *(v56 + 56) + 296 * v13;
      *v16 = v65;
      *(v16 + 24) = v74;
      *(v16 + 8) = v73;
      v17 = v85;
      *(v16 + 56) = v86;
      *(v16 + 40) = v17;
      *(v16 + 120) = v90;
      v18 = v88;
      *(v16 + 104) = v89;
      v19 = v87;
      *(v16 + 88) = v18;
      *(v16 + 72) = v19;
      *(v16 + 128) = v63;
      *(v16 + 136) = v60;
      *(v16 + 144) = v62;
      *(v16 + 160) = v64;
      *(v16 + 176) = v61;
      *(v16 + 184) = v31;
      *(v16 + 192) = v66;
      *(v16 + 193) = v67;
      *(v16 + 200) = v32;
      *(v16 + 208) = v33;
      *(v16 + 216) = v68;
      *(v16 + 224) = v72;
      *(v16 + 232) = v69;
      *(v16 + 240) = v70;
      *(v16 + 256) = v71;
      *(v16 + 272) = v75;
      *(v16 + 280) = v76;
      *(v16 + 288) = __dst[0];
      *(v16 + 289) = v77;
      *(v16 + 290) = v78;
      ++*(v56 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v53)
      {
        break;
      }

      v22 = v54[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v11 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_40;
    }

    v51 = 1 << *(v5 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v54, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v54 = -1 << v51;
    }

    *(v5 + 16) = 0;
  }

LABEL_40:
  *v3 = v7;
  return result;
}

unint64_t sub_1A406A854(unint64_t result, uint64_t a2)
{
  v3 = (result + 1) & ~(-1 << *(a2 + 32));
  if ((*(a2 + 64 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
  {
    sub_1A524E244();
    v4 = *(*(a2 + 48) + 24 * v3);
    sub_1A524EC94();
    v5 = v4;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  v6 = *(a2 + 16);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v8;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A406AB6C(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v13 = sub_1A4069C30(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 < v18 || (a5 & 1) != 0)
  {
    sub_1A406A1D8(v18, a5 & 1);
    v13 = sub_1A4069C30(a2, a3, v8 & 1);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

  v21 = v13;
  sub_1A406AD44();
  v13 = v21;
LABEL_8:
  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    sub_1A406ACC8(v13, a2, a3, v8 & 1, a1, v23);
    v26 = a2;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v24 = v23[7] + 296 * v13;

  return sub_1A406BC00(a1, v24);
}

void *sub_1A406ACC8(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *__src, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a6[6] + 24 * a1;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  result = memcpy((a6[7] + 296 * a1), __src, 0x123uLL);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

void *sub_1A406AD44()
{
  v1 = v0;
  sub_1A406BC5C();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v25 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      v13 = __clz(__rbit64(v11));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 24 * v16;
        v18 = *(v2 + 48) + 24 * v16;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = 296 * v16;
        memcpy(__dst, (*(v2 + 56) + 296 * v16), sizeof(__dst));
        v23 = *(v25 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        memcpy((*(v25 + 56) + v22), __dst, 0x123uLL);
        v24 = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

char *sub_1A406AF0C(char *a1, int64_t a2, char a3)
{
  result = sub_1A406AF2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A406AF2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A406C030(0, &qword_1EB130E98, &type metadata for ParallaxOverlapViewConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A406B060(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  v11 = [a1 uuid];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A524C674();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [a4 uuid];
  if (!v16)
  {
    if (v15)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v17 = v16;
  v18 = sub_1A524C674();
  v20 = v19;

  if (!v15)
  {
    if (v20)
    {
      goto LABEL_16;
    }

LABEL_18:
    v23 = sub_1A4069668(a2, a5) & (a3 ^ a6 ^ 1);
    return v23 & 1;
  }

  if (v20)
  {
    if (v13 == v18 && v15 == v20)
    {
    }

    else
    {
      v22 = sub_1A524EAB4();

      v23 = 0;
      if ((v22 & 1) == 0)
      {
        return v23 & 1;
      }
    }

    goto LABEL_18;
  }

LABEL_16:

  v23 = 0;
  return v23 & 1;
}

unint64_t sub_1A406B1AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A406BC5C();
    v3 = sub_1A524E794();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, 0x13BuLL);
      v6 = __dst[0];
      v7 = __dst[1];
      v8 = LOBYTE(__dst[2]);
      sub_1A406C2B8(__dst, v15);
      result = sub_1A4069C30(v6, v7, v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      result = memcpy((v3[7] + 296 * result), &__dst[3], 0x123uLL);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 320;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1A406B2E8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for ParallaxAssetsManager()
{
  result = qword_1EB1A3528;
  if (!qword_1EB1A3528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A406B37C()
{
  sub_1A3C4D184(319, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A406B9C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A406BA54()
{
  result = qword_1EB1A38C0[0];
  if (!qword_1EB1A38C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A38C0);
  }

  return result;
}

unint64_t sub_1A406BB04()
{
  result = qword_1EB130E80;
  if (!qword_1EB130E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E80);
  }

  return result;
}

unint64_t sub_1A406BBAC()
{
  result = qword_1EB130E88;
  if (!qword_1EB130E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130E88);
  }

  return result;
}

void sub_1A406BC5C()
{
  if (!qword_1EB130EA0)
  {
    sub_1A406BCC0();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130EA0);
    }
  }
}

unint64_t sub_1A406BCC0()
{
  result = qword_1EB1A3950;
  if (!qword_1EB1A3950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A3950);
  }

  return result;
}

void *sub_1A406BD70(void *result)
{
  if (result)
  {
    v1 = result;

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A406BDB0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A4065750(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A406BE8C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C4D184(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A406BF68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A406BFC8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void sub_1A406C030(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A406C080()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3CA8098;

  return sub_1A4062C80(v6, v7, v8, v2, v3, v4, v5);
}

uint64_t sub_1A406C174()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A4063460(v7, v8, v9, v2, v3, v4, v5, v6);
}

unint64_t sub_1A406C264()
{
  result = qword_1EB1A3958;
  if (!qword_1EB1A3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A3958);
  }

  return result;
}

uint64_t sub_1A406C2B8(uint64_t a1, uint64_t a2)
{
  sub_1A406C31C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A406C31C()
{
  if (!qword_1EB130EB0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130EB0);
    }
  }
}

void sub_1A406C37C()
{
  if (!qword_1EB130EB8)
  {
    sub_1A3C4D184(255, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130EB8);
    }
  }
}

unint64_t sub_1A406C410()
{
  result = qword_1EB1A3960[0];
  if (!qword_1EB1A3960[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A3960);
  }

  return result;
}

uint64_t sub_1A406C490()
{
  v0 = sub_1A52482F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-v5];
  sub_1A5248424();
  sub_1A52489D4();
  v13[24] = v7 & 1;
  v13[16] = v8 & 1;
  sub_1A52482D4();
  sub_1A5248424();
  sub_1A52489D4();
  v13[8] = v9 & 1;
  v13[0] = v10 & 1;
  sub_1A52482D4();
  v11 = *(v1 + 8);
  v11(v3, v0);
  return (v11)(v6, v0);
}

void (*sub_1A406C6E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A5247AC4();
  return sub_1A3D3D728;
}

unint64_t sub_1A406C774@<X0>(void *a1@<X8>)
{
  sub_1A524B694();
  a1[3] = &type metadata for $s12PhotosUICore0056GenerativeStoryRemixWithFeedbackButtonsLayoutswift_IzCBufMX53_0_33_23FCC0DB36491E7892C11BCA11494E6ALl7PreviewfMf_15PreviewRegistryfMu_.__P_Previewable_Transform_Wrapper;
  result = sub_1A406D130();
  a1[4] = result;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A406C860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v29 = a1;
  sub_1A406D620(0, &qword_1EB130F28, sub_1A406D684);
  v31 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  v9 = sub_1A524B424();
  sub_1A524BC74();
  sub_1A52481F4();
  v10 = *&v61[0];
  v11 = BYTE8(v61[0]);
  v12 = *&v61[1];
  v13 = BYTE8(v61[1]);
  v14 = v61[2];
  v15 = sub_1A524B3C4();
  sub_1A524BC74();
  sub_1A52481F4();
  v76 = v64;
  v75 = v65[0];
  *&v33 = v9;
  *(&v33 + 1) = v10;
  LOBYTE(v34) = v11;
  *(&v34 + 1) = v12;
  v35[0] = v13;
  *&v35[8] = v14;
  *&v35[24] = v15;
  *&v36 = v63;
  BYTE8(v36) = v64;
  *&v37 = *(&v64 + 1);
  BYTE8(v37) = v65[0];
  v38 = *&v65[8];
  v39[0] = v9;
  v39[1] = v10;
  v40 = v11;
  v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v45 = v63;
  v46 = v64;
  v47 = *(&v64 + 1);
  v48 = v65[0];
  v49 = *&v65[8];
  v50 = *&v65[16];
  sub_1A406D6F0(&v33, &v63);
  sub_1A406D770(v39);
  v55 = v36;
  v56 = v37;
  v57 = v38;
  v51 = v33;
  v52 = v34;
  v53 = *v35;
  v54 = *&v35[16];
  v63 = a3;
  v16 = v29;
  *&v64 = v29;
  sub_1A406D7E8();
  sub_1A524B6A4();
  sub_1A524BC74();
  sub_1A52481F4();
  v17 = sub_1A524B464();
  LOBYTE(v10) = sub_1A524A064();
  *v61 = a3;
  *(&v61[0] + 1) = v16;
  sub_1A524B6C4();
  v61[0] = xmmword_1A5315E40;
  sub_1A3F93828();
  v18 = v30;
  sub_1A524B834();
  v19 = sub_1A524A064();
  v20 = v32;
  v21 = v18 + *(v31 + 44);
  *v21 = v19;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 1;
  sub_1A406D838(v18, v20);
  *(&v61[3] + 8) = v54;
  *(&v61[4] + 8) = v55;
  *(&v61[5] + 8) = v56;
  *(&v61[6] + 8) = v57;
  *(v61 + 8) = v51;
  *(&v61[1] + 8) = v52;
  *(&v61[2] + 8) = v53;
  *(&v61[8] + 8) = v59;
  *(&v61[7] + 8) = v58;
  *(&v61[9] + 8) = v60;
  *&v61[0] = 0x4024000000000000;
  *(&v61[10] + 1) = v17;
  v62 = v10;
  *(a2 + 176) = v10;
  v22 = v61[5];
  *(a2 + 64) = v61[4];
  *(a2 + 80) = v22;
  v23 = v61[1];
  *a2 = v61[0];
  *(a2 + 16) = v23;
  v24 = v61[3];
  *(a2 + 32) = v61[2];
  *(a2 + 48) = v24;
  v25 = v61[9];
  *(a2 + 128) = v61[8];
  *(a2 + 144) = v25;
  *(a2 + 160) = v61[10];
  v26 = v61[7];
  *(a2 + 96) = v61[6];
  *(a2 + 112) = v26;
  sub_1A406D234();
  sub_1A406D838(v20, a2 + *(v27 + 48));
  sub_1A406D8C0(v61, &v63);
  sub_1A406D924(v18);
  sub_1A406D924(v20);
  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  v64 = v51;
  *v65 = v52;
  *&v65[16] = v53;
  v72 = v60;
  v71 = v59;
  v70 = v58;
  v63 = 10.0;
  v73 = v17;
  v74 = v10;
  return sub_1A406D9A4(&v63);
}

uint64_t sub_1A406CC98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A406D1B0();
  return sub_1A406C860(v4, a1 + *(v5 + 44), v3);
}

uint64_t sub_1A406CCF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = sub_1A52482F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v35 - v15;
  sub_1A5248424();
  sub_1A52489D4();
  v47 = v17 & 1;
  v46 = v18 & 1;
  sub_1A52482D4();
  v20 = v19;
  sub_1A5248424();
  sub_1A52489D4();
  v45 = v21 & 1;
  v44 = v22 & 1;
  sub_1A52482D4();
  v24 = v23;
  v48.origin.x = a1;
  v48.origin.y = a2;
  v48.size.width = a3;
  v48.size.height = a4;
  if (CGRectGetWidth(v48) >= v20 + v24 + a5 + v24 + a5)
  {
    v53.origin.x = a1;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    CGRectGetMidX(v53);
    v54.origin.x = a1;
    v54.origin.y = a2;
    v54.size.width = a3;
    v54.size.height = a4;
    CGRectGetMidY(v54);
    sub_1A524BE94();
    sub_1A52489D4();
    v43 = v29 & 1;
    v42 = v30 & 1;
    sub_1A52482E4();
    v55.origin.x = a1;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    CGRectGetMaxX(v55);
    v56.origin.x = a1;
    v56.origin.y = a2;
    v56.size.width = a3;
    v56.size.height = a4;
    CGRectGetMidY(v56);
    sub_1A524BEB4();
    sub_1A52489D4();
    v41 = v31 & 1;
    v40 = v32 & 1;
  }

  else
  {
    v49.origin.x = a1;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v35[1] = CGRectGetMidX(v49) - (v20 + v24 + a5) * 0.5;
    v50.origin.x = a1;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    CGRectGetMidY(v50);
    sub_1A524BEA4();
    sub_1A52489D4();
    v39 = v25 & 1;
    v38 = v26 & 1;
    sub_1A52482E4();
    v51.origin.x = a1;
    v51.origin.y = a2;
    v51.size.width = a3;
    v51.size.height = a4;
    CGRectGetMidX(v51);
    v52.origin.x = a1;
    v52.origin.y = a2;
    v52.size.width = a3;
    v52.size.height = a4;
    CGRectGetMidY(v52);
    sub_1A524BEB4();
    sub_1A52489D4();
    v37 = v27 & 1;
    v36 = v28 & 1;
  }

  sub_1A52482E4();
  v33 = *(v11 + 8);
  v33(v13, v10);
  return (v33)(v16, v10);
}

unint64_t sub_1A406D064()
{
  result = qword_1EB130EC0;
  if (!qword_1EB130EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130EC0);
  }

  return result;
}

unint64_t sub_1A406D0BC()
{
  result = qword_1EB130EC8;
  if (!qword_1EB130EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130EC8);
  }

  return result;
}

unint64_t sub_1A406D130()
{
  result = qword_1EB1A3C70;
  if (!qword_1EB1A3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A3C70);
  }

  return result;
}

void sub_1A406D1B0()
{
  if (!qword_1EB130ED0)
  {
    sub_1A406D4F0(255, &qword_1EB130ED8, sub_1A406D234);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130ED0);
    }
  }
}

void sub_1A406D234()
{
  if (!qword_1EB130EE0)
  {
    sub_1A406D2C8();
    sub_1A406D620(255, &qword_1EB130F28, sub_1A406D684);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130EE0);
    }
  }
}

void sub_1A406D2C8()
{
  if (!qword_1EB130EE8)
  {
    sub_1A406D620(255, &qword_1EB130EF0, sub_1A406D378);
    sub_1A406D5CC(255, &qword_1EB127B10, MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130EE8);
    }
  }
}

void sub_1A406D378()
{
  if (!qword_1EB130EF8)
  {
    sub_1A406D440();
    sub_1A406D4F0(255, &qword_1EB130F10, sub_1A406D544);
    sub_1A406DA00(&qword_1EB130F20, sub_1A406D440);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130EF8);
    }
  }
}

void sub_1A406D440()
{
  if (!qword_1EB130F00)
  {
    sub_1A406D49C();
    v0 = sub_1A5247FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F00);
    }
  }
}

unint64_t sub_1A406D49C()
{
  result = qword_1EB130F08;
  if (!qword_1EB130F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130F08);
  }

  return result;
}

void sub_1A406D4F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A406D544()
{
  if (!qword_1EB130F18)
  {
    sub_1A406D5CC(255, &qword_1EB128608, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130F18);
    }
  }
}

void sub_1A406D5CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69815C0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A406D620(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A406D684()
{
  if (!qword_1EB130F30)
  {
    v0 = sub_1A524B844();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F30);
    }
  }
}

uint64_t sub_1A406D6F0(uint64_t a1, uint64_t a2)
{
  sub_1A406D4F0(0, &qword_1EB130F10, sub_1A406D544);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A406D770(uint64_t a1)
{
  sub_1A406D4F0(0, &qword_1EB130F10, sub_1A406D544);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A406D7E8()
{
  if (!qword_1EB1274D0)
  {
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1274D0);
    }
  }
}

uint64_t sub_1A406D838(uint64_t a1, uint64_t a2)
{
  sub_1A406D620(0, &qword_1EB130F28, sub_1A406D684);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A406D8C0(uint64_t a1, uint64_t a2)
{
  sub_1A406D2C8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A406D924(uint64_t a1)
{
  sub_1A406D620(0, &qword_1EB130F28, sub_1A406D684);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A406D9A4(uint64_t a1)
{
  sub_1A406D2C8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A406DA00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A406DA48()
{
  if (!qword_1EB130F40)
  {
    sub_1A406D4F0(255, &qword_1EB130ED8, sub_1A406D234);
    sub_1A406DAC8();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F40);
    }
  }
}

unint64_t sub_1A406DAC8()
{
  result = qword_1EB130F48;
  if (!qword_1EB130F48)
  {
    sub_1A406D4F0(255, &qword_1EB130ED8, sub_1A406D234);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130F48);
  }

  return result;
}

uint64_t sub_1A406DB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  sub_1A4072370(v1 + *(v10 + 24), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsSharedLibraryWidgetView()
{
  result = qword_1EB18F1B0;
  if (!qword_1EB18F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A406DD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A406DDE8()
{
  result = sub_1A524B3C4();
  qword_1EB1EBAD0 = result;
  return result;
}

uint64_t sub_1A406DE08@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1A53160F0;
  v2 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v3 = v2[6];
  *(a1 + v3) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v4 = v2[7];
  *(a1 + v4) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + v2[8]);
  type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  sub_1A40708A0(&qword_1EB125E50, type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel);
  result = sub_1A5248494();
  *v5 = result;
  v5[1] = v7;
  return result;
}

uint64_t sub_1A406DF00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v164 = a1;
  sub_1A40701C4();
  v165 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v156 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1A5246E54();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40704F4(0, &qword_1EB130FA8, sub_1A40709E0, sub_1A40701C4, MEMORY[0x1E697F948]);
  v162 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v133 - v12;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v133 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1A52407E4();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v17 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1A5249524();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1A5249D74();
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1A5249764();
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_1A52486A4();
  v21 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v23 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4070C78();
  v140 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4070B6C();
  v144 = v27;
  v141 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v133 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4070A28();
  v148 = v29;
  v145 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v142 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40709E0(0);
  v161 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v147 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v157 = &v133 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v158 = &v133 - v37;
  v38 = *(v1 + *(v6 + 32) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v38) + 0x140))(v36) == 5)
  {
    v137 = v17;
    *v26 = sub_1A524BC74();
    v26[1] = v39;
    sub_1A4072438();
    sub_1A406F21C(v1, v26 + *(v40 + 44));
    sub_1A40704F4(0, &qword_1EB130FD0, sub_1A4070D1C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v42 = v26 + *(v41 + 36);
    v43 = sub_1A5248A14();
    v156 = v15;
    v44 = *(v43 + 20);
    v45 = *MEMORY[0x1E697F468];
    v46 = sub_1A52494A4();
    (*(*(v46 - 8) + 104))(&v42[v44], v45, v46);
    __asm { FMOV            V0.2D, #16.0 }

    *v42 = _Q0;
    sub_1A3EC447C();
    v42[*(v52 + 36)] = 0;
    sub_1A406DB3C(v23);
    sub_1A4394B64(v23, v6, &off_1EE6D8FE0);
    v53 = *(v21 + 8);
    v136 = v38;
    v54 = v138;
    v53(v23, v138);
    sub_1A406DB3C(v23);
    v55 = sub_1A4394B64(v23, v6, &off_1EE6D8FE0);
    (v53)(v23, v54, v55);
    sub_1A524BC74();
    sub_1A52481F4();
    v56 = v140;
    v57 = (v26 + *(v140 + 36));
    v58 = v171;
    *v57 = v170;
    v57[1] = v58;
    v57[2] = v172;
    v59 = v143;
    sub_1A5248B84();
    v60 = sub_1A40712C4(&qword_1EB131050, sub_1A4070C78, sub_1A4071344);
    v61 = sub_1A40708A0(&qword_1EB122360, MEMORY[0x1E697C658]);
    v62 = v139;
    v63 = v149;
    sub_1A524A974();
    (*(v146 + 8))(v59, v63);
    sub_1A40724A0(v26, sub_1A4070C78);
    v64 = v150;
    sub_1A5249D54();
    v166 = v56;
    v167 = v63;
    v168 = v60;
    v169 = v61;
    v65 = v156;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v67 = v142;
    v68 = v144;
    sub_1A524ADB4();
    (*(v151 + 8))(v64, v152);
    (*(v141 + 8))(v62, v68);
    v69 = v153;
    sub_1A5249504();
    v166 = v68;
    v167 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v70 = v147;
    v71 = v148;
    sub_1A524AAF4();
    (*(v154 + 8))(v69, v155);
    (*(v145 + 8))(v67, v71);
    v72 = *(**(v136 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent) + 152);

    v72(v73);

    v74 = v159;
    v75 = *(v159 + 48);
    v76 = v160;
    if (v75(v65, 1, v160) == 1)
    {
      sub_1A5240714();
      if (v75(v65, 1, v76) != 1)
      {
        sub_1A40723D8(v65, sub_1A3F31320);
      }
    }

    else
    {
      (*(v74 + 32))(v137, v65, v76);
    }

    v82 = sub_1A524A454();
    v84 = v83;
    v86 = v85;
    v87 = v157;
    sub_1A52487A4();
    sub_1A3E04DF4(v82, v84, v86 & 1);

    sub_1A40724A0(v70, sub_1A40709E0);
    v88 = sub_1A524C634();
    v89 = PXLocalizedString(v88);

    v90 = sub_1A524C674();
    v92 = v91;

    v166 = v90;
    v167 = v92;
    sub_1A3D5F9DC();
    v93 = sub_1A524A464();
    v95 = v94;
    v97 = v96;
    v98 = v158;
    sub_1A5248754();
    sub_1A3E04DF4(v93, v95, v97 & 1);

    sub_1A40724A0(v87, sub_1A40709E0);
    sub_1A4072500(v98, v163, sub_1A40709E0);
    swift_storeEnumTagMultiPayload();
    sub_1A4071E90();
    sub_1A40712C4(&qword_1EB131078, sub_1A40701C4, sub_1A4072030);
    sub_1A5249744();
    v99 = v98;
    v100 = sub_1A40709E0;
  }

  else
  {
    v77 = sub_1A40708A0(&qword_1EB131068, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
    MEMORY[0x1A5905890](v6, v77);
    v78 = sub_1A5246E94();
    v79 = *(v78 - 8);
    v80 = v10;
    if ((*(v79 + 48))(v10, 1, v78) == 1)
    {
      sub_1A40723D8(v10, sub_1A3E73E5C);
      v81 = v38;
    }

    else
    {
      v160 = v1;
      v101 = v134;
      sub_1A4072370(v1, v134, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
      v102 = v135;
      sub_1A5246E44();
      v103 = sub_1A5246E84();
      LODWORD(v159) = sub_1A524D664();
      if (sub_1A524DEC4())
      {
        v104 = swift_slowAlloc();
        v158 = v80;
        v105 = v104;
        *&v170 = swift_slowAlloc();
        *v105 = 136446210;
        sub_1A524A694();
        sub_1A40723D8(v101, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
        sub_1A3C2EF94();
      }

      (v136[1])(v102, v137);
      sub_1A40723D8(v101, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
      v81 = v38;
      (*(v79 + 8))(v80, v78);
      v2 = v160;
    }

    v106 = v156;
    sub_1A4071468(v2, v156);
    sub_1A40704F4(0, &qword_1EB130F58, sub_1A4070268, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v108 = v106 + *(v107 + 36);
    sub_1A4110614(v81);
    v109 = sub_1A524BC74();
    v111 = v110;
    sub_1A3FA9268();
    v113 = (v108 + *(v112 + 36));
    *v113 = v109;
    v113[1] = v111;
    v114 = *(**(v81 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent) + 160);

    v116 = v114(v115);
    v118 = v117;
    v120 = v119;
    v122 = v121;

    v123 = EdgeInsets.init(_:)(v116, v118, v120, v122);
    v125 = v124;
    v127 = v126;
    v129 = v128;
    v130 = sub_1A524A064();
    v131 = v106 + *(v165 + 36);
    *v131 = v130;
    *(v131 + 8) = v123;
    *(v131 + 16) = v125;
    *(v131 + 24) = v127;
    *(v131 + 32) = v129;
    *(v131 + 40) = 0;
    sub_1A4072500(v106, v163, sub_1A40701C4);
    swift_storeEnumTagMultiPayload();
    sub_1A4071E90();
    sub_1A40712C4(&qword_1EB131078, sub_1A40701C4, sub_1A4072030);
    sub_1A5249744();
    v100 = sub_1A40701C4;
    v99 = v106;
  }

  return sub_1A40724A0(v99, v100);
}

uint64_t sub_1A406F21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = sub_1A52489A4();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v66 = *(v4 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4070F7C();
  v7 = *(v6 - 8);
  v72 = v6;
  v73 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4070DEC(0);
  v74 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v63 - v12;
  v13 = sub_1A52486A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v63 - v21;
  v67 = *(a1 + *(v4 + 32) + 8);
  sub_1A4110614(v67);
  v22 = a1;
  sub_1A406DB3C(v16);
  sub_1A4394B64(v16, v4, &off_1EE6D8FE0);
  v23 = *(v14 + 8);
  v23(v16, v13);
  sub_1A406DB3C(v16);
  v24 = sub_1A4394B64(v16, v4, &off_1EE6D8FE0);
  (v23)(v16, v13, v24);
  sub_1A524BC74();
  sub_1A52481F4();
  v25 = v63;
  v26 = &v63[*(v18 + 44)];
  v27 = v81;
  *v26 = v80;
  *(v26 + 1) = v27;
  *(v26 + 2) = v82;
  v28 = v64;
  sub_1A4072370(a1, v64, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
  v29 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v30 = swift_allocObject();
  sub_1A4072CB0(v28, v30 + v29, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
  v79 = v22;
  sub_1A4071010();
  sub_1A40708A0(&qword_1EB131038, sub_1A4071010);
  v31 = v68;
  sub_1A524B704();
  v32 = v71;
  sub_1A5248994();
  sub_1A40708A0(&qword_1EB131040, sub_1A4070F7C);
  sub_1A40708A0(&qword_1EB122F70, MEMORY[0x1E697C248]);
  v33 = v69;
  v34 = v72;
  v35 = v75;
  sub_1A524A934();
  (*(v77 + 8))(v32, v35);
  v36 = (*(v73 + 8))(v31, v34);
  v37 = (*((*MEMORY[0x1E69E7D40] & *v67) + 0xC0))(v36);
  [v37 contentGuideInsets];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = EdgeInsets.init(_:)(v39, v41, v43, v45);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = sub_1A524A064();
  v54 = v33 + *(v74 + 44);
  *v54 = v53;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v25;
  v56 = v25;
  v57 = v70;
  sub_1A4072500(v55, v70, sub_1A3EC3E2C);
  v58 = v33;
  v59 = v76;
  sub_1A4072500(v33, v76, sub_1A4070DEC);
  v60 = v78;
  sub_1A4072500(v57, v78, sub_1A3EC3E2C);
  sub_1A407113C(0, &qword_1EB130FE8, sub_1A3EC3E2C, sub_1A4070DEC);
  sub_1A4072500(v59, v60 + *(v61 + 48), sub_1A4070DEC);
  sub_1A40724A0(v58, sub_1A4070DEC);
  sub_1A40724A0(v56, sub_1A3EC3E2C);
  sub_1A40724A0(v59, sub_1A4070DEC);
  return sub_1A40724A0(v57, sub_1A3EC3E2C);
}

uint64_t sub_1A406F9E8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524A274();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52407E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406FF98(&v86);
  v16 = *(**(*(a1 + *(type metadata accessor for PhotosDetailsSharedLibraryWidgetView() + 32) + 8) + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent) + 152);

  v16(v17);

  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    sub_1A5240714();
    if (v18(v11, 1, v12) != 1)
    {
      sub_1A40723D8(v11, sub_1A3F31320);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v19 = sub_1A524A454();
  v46 = v20;
  v47 = v19;
  v22 = v21;
  v48 = v23;
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = v22 & 1;
  v84 = v22 & 1;
  v82 = 0;
  v28 = v49;
  v27 = v50;
  (*(v49 + 104))(v8, *MEMORY[0x1E6980F18], v50);
  v29 = sub_1A524A154();
  v30 = v51;
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  sub_1A524A184();
  v31 = sub_1A524A1C4();
  sub_1A40723D8(v30, sub_1A3E75D84);
  (*(v28 + 8))(v8, v27);
  v32 = swift_getKeyPath();
  v58[4] = v90;
  v59[0] = v91[0];
  *(v59 + 15) = *(v91 + 15);
  v58[0] = v86;
  v58[1] = v87;
  v58[2] = v88;
  v58[3] = v89;
  v52 = v86;
  v53 = v87;
  *(v57 + 15) = *(v91 + 15);
  v54 = v88;
  v55 = v89;
  v56 = v90;
  v57[0] = v91[0];
  v34 = v46;
  v33 = v47;
  *&v60 = v47;
  *(&v60 + 1) = v46;
  LOBYTE(v61) = v26;
  *(&v61 + 1) = *v83;
  DWORD1(v61) = *&v83[3];
  v35 = v48;
  *(&v61 + 1) = v48;
  *&v62 = KeyPath;
  *(&v62 + 1) = 2;
  LOBYTE(v63) = 0;
  DWORD1(v63) = *&v81[3];
  *(&v63 + 1) = *v81;
  *(&v63 + 1) = v25;
  LOBYTE(v64) = 1;
  DWORD1(v64) = *&v85[3];
  *(&v64 + 1) = *v85;
  *(&v64 + 1) = v32;
  v65 = v31;
  *(&v57[6] + 1) = v31;
  *(&v57[5] + 8) = v64;
  *(&v57[4] + 8) = v63;
  *(&v57[3] + 8) = v62;
  *(&v57[2] + 8) = v61;
  *(&v57[1] + 8) = v60;
  v36 = v86;
  v37 = v87;
  v38 = v89;
  a2[2] = v88;
  a2[3] = v38;
  *a2 = v36;
  a2[1] = v37;
  v39 = v56;
  v40 = v57[0];
  v41 = v57[2];
  a2[6] = v57[1];
  a2[7] = v41;
  a2[4] = v39;
  a2[5] = v40;
  v42 = v57[3];
  v43 = v57[4];
  v44 = v57[6];
  a2[10] = v57[5];
  a2[11] = v44;
  a2[8] = v42;
  a2[9] = v43;
  v66[0] = v33;
  v66[1] = v34;
  v67 = v26;
  *v68 = *v83;
  *&v68[3] = *&v83[3];
  v69 = v35;
  v70 = KeyPath;
  v71 = 2;
  v72 = 0;
  *v73 = *v81;
  *&v73[3] = *&v81[3];
  v74 = v25;
  v75 = 1;
  *&v76[3] = *&v85[3];
  *v76 = *v85;
  v77 = v32;
  v78 = v31;
  sub_1A4072370(v58, v79, sub_1A4070410);
  sub_1A4072370(&v60, v79, sub_1A40711B8);
  sub_1A40723D8(v66, sub_1A40711B8);
  v79[4] = v90;
  v80[0] = v91[0];
  *(v80 + 15) = *(v91 + 15);
  v79[0] = v86;
  v79[1] = v87;
  v79[2] = v88;
  v79[3] = v89;
  return sub_1A40723D8(v79, sub_1A4070410);
}

double sub_1A406FF98@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PhotosDetailsSharedLibraryWidgetView() + 32) + 8);
  v4 = *(**(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent) + 144);

  v6 = v4(v5);

  if (v6)
  {
    v7 = sub_1A524B524();
  }

  else
  {
    v7 = sub_1A524B544();
  }

  v8 = v7;

  v9 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  v11 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x140);
  v11();
  v11();
  sub_1A524BC74();
  sub_1A52481F4();
  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  v14 = sub_1A524B284();
  v15 = swift_getKeyPath();
  v16 = [v12 tertiarySystemFillColor];
  v17 = sub_1A524B284();
  v18 = sub_1A524A064();

  *(a1 + 24) = v20;
  *a1 = v8;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v9;
  *(a1 + 40) = v21;
  result = *&v22;
  *(a1 + 56) = v22;
  *(a1 + 72) = v15;
  *(a1 + 80) = v14;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 97) = 256;
  return result;
}

void sub_1A40701C4()
{
  if (!qword_1EB130F50)
  {
    sub_1A40704F4(255, &qword_1EB130F58, sub_1A4070268, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F50);
    }
  }
}

void sub_1A4070268()
{
  if (!qword_1EB130F60)
  {
    sub_1A4070E14(255, &qword_1EB130F68, sub_1A40702E4);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F60);
    }
  }
}

void sub_1A40702E4()
{
  if (!qword_1EB130F70)
  {
    sub_1A4070384(255);
    sub_1A4070978(255, &qword_1EB127C70, sub_1A3D6F4A4, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F70);
    }
  }
}

void sub_1A40703AC()
{
  if (!qword_1EB130F80)
  {
    sub_1A4070410();
    sub_1A4070688();
    v0 = type metadata accessor for PhotosDetailsDiscoverableView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F80);
    }
  }
}

void sub_1A4070410()
{
  if (!qword_1EB130F88)
  {
    sub_1A40704F4(255, &qword_1EB130F90, sub_1A4070578, sub_1A3DA3064, MEMORY[0x1E697E830]);
    sub_1A4070978(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130F88);
    }
  }
}

void sub_1A40704F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4070578()
{
  if (!qword_1EB1281C0)
  {
    sub_1A4070E14(255, &qword_1EB1282E0, sub_1A3E352FC);
    sub_1A407061C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1281C0);
    }
  }
}

void sub_1A407061C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4072C60(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4070688()
{
  result = qword_1EB130F98;
  if (!qword_1EB130F98)
  {
    sub_1A4070410();
    sub_1A4070708();
    sub_1A40708E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130F98);
  }

  return result;
}

unint64_t sub_1A4070708()
{
  result = qword_1EB130FA0;
  if (!qword_1EB130FA0)
  {
    sub_1A40704F4(255, &qword_1EB130F90, sub_1A4070578, sub_1A3DA3064, MEMORY[0x1E697E830]);
    sub_1A3EE1DE0();
    sub_1A40708A0(&qword_1EB127B20, sub_1A3DA3064);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130FA0);
  }

  return result;
}

unint64_t sub_1A40707FC()
{
  result = qword_1EB1282E8;
  if (!qword_1EB1282E8)
  {
    sub_1A4070E14(255, &qword_1EB1282E0, sub_1A3E352FC);
    sub_1A3E4509C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1282E8);
  }

  return result;
}

uint64_t sub_1A40708A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A40708E8()
{
  result = qword_1EB1245F8;
  if (!qword_1EB1245F8)
  {
    sub_1A4070978(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1245F8);
  }

  return result;
}

void sub_1A4070978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4070A28()
{
  if (!qword_1EB130FB8)
  {
    sub_1A4070B6C();
    sub_1A4070C78();
    sub_1A5249764();
    sub_1A40712C4(&qword_1EB131050, sub_1A4070C78, sub_1A4071344);
    sub_1A40708A0(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130FB8);
    }
  }
}

void sub_1A4070B6C()
{
  if (!qword_1EB130FC0)
  {
    sub_1A4070C78();
    sub_1A5249764();
    sub_1A40712C4(&qword_1EB131050, sub_1A4070C78, sub_1A4071344);
    sub_1A40708A0(&qword_1EB122360, MEMORY[0x1E697C658]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130FC0);
    }
  }
}

void sub_1A4070C78()
{
  if (!qword_1EB130FC8)
  {
    sub_1A40704F4(255, &qword_1EB130FD0, sub_1A4070D1C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130FC8);
    }
  }
}

void sub_1A4070D1C()
{
  if (!qword_1EB130FD8)
  {
    sub_1A4070DB0(255);
    sub_1A40708A0(&qword_1EB131048, sub_1A4070DB0);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130FD8);
    }
  }
}

void sub_1A4070E14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4070E78()
{
  if (!qword_1EB130FF8)
  {
    sub_1A4070F7C();
    sub_1A52489A4();
    sub_1A40708A0(&qword_1EB131040, sub_1A4070F7C);
    sub_1A40708A0(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130FF8);
    }
  }
}

void sub_1A4070F7C()
{
  if (!qword_1EB131000)
  {
    sub_1A4071010();
    sub_1A40708A0(&qword_1EB131038, sub_1A4071010);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131000);
    }
  }
}

void sub_1A4071010()
{
  if (!qword_1EB131008)
  {
    sub_1A40710A4(255);
    sub_1A40708A0(&qword_1EB131030, sub_1A40710A4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131008);
    }
  }
}

void sub_1A40710E0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A407113C(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A407113C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A40711B8()
{
  if (!qword_1EB131020)
  {
    sub_1A4071238();
    sub_1A407061C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131020);
    }
  }
}

void sub_1A4071238()
{
  if (!qword_1EB131028)
  {
    sub_1A3DF14C0();
    sub_1A4072C60(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131028);
    }
  }
}

uint64_t sub_1A40712C4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4071344()
{
  result = qword_1EB131058;
  if (!qword_1EB131058)
  {
    sub_1A40704F4(255, &qword_1EB130FD0, sub_1A4070D1C, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A40708A0(&qword_1EB131060, sub_1A4070D1C);
    sub_1A40708A0(&qword_1EB122308, sub_1A3EC447C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131058);
  }

  return result;
}

__n128 sub_1A4071468@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  sub_1A40703AC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4070384(0);
  v49 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40702E4();
  v47 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A406FF98(v52);
  v20 = *(**(*(a1 + *(v4 + 40) + 8) + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_viewContent) + 152);

  v20(v21);

  sub_1A4071A08();
  v45 = v22;
  v44 = v23;
  v43 = v24;
  v25 = sub_1A52407E4();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  v26 = sub_1A524C634();
  v27 = PXLocalizedSharedLibraryString(v26);

  v28 = sub_1A524C674();
  v30 = v29;

  v50.i64[0] = a1;
  sub_1A4072370(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_1A4072CB0(&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
  sub_1A4070410();
  sub_1A4070688();
  sub_1A42F9768(v52, v11, v45, v44, v43, v8, v28, v30, v14, sub_1A40728B0, v32, 3);
  sub_1A4072C60(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v32) = sub_1A524A094();
  *(inited + 32) = v32;
  v34 = sub_1A524A0B4();
  *(inited + 33) = v34;
  v35 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v32)
  {
    v35 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v34)
  {
    v35 = sub_1A524A0A4();
  }

  v36 = v48;
  sub_1A4072CB0(v14, v48, sub_1A40703AC);
  *(v36 + *(v49 + 36)) = v35;
  sub_1A4072CB0(v36, v19, sub_1A4070384);
  v19[*(v47 + 36)] = 0;
  v50 = vextq_s8(*v50.i64[0], *v50.i64[0], 8uLL);
  v37 = sub_1A524A064();
  v38 = v51;
  sub_1A4072CB0(v19, v51, sub_1A40702E4);
  sub_1A4070E14(0, &qword_1EB130F68, sub_1A40702E4);
  v40 = v38 + *(v39 + 36);
  *v40 = v37;
  result = v50;
  *(v40 + 24) = v50;
  *(v40 + 8) = result;
  *(v40 + 40) = 0;
  return result;
}

double sub_1A4071A08()
{
  if ([*(*(v0 + *(type metadata accessor for PhotosDetailsSharedLibraryWidgetView() + 32) + 8) + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsSharedLibraryWidgetViewModel_sharedLibraryAssetStatusProvider) status] == 2)
  {
    v2 = sub_1A524C634();
    v3 = PXLocalizedSharedLibraryString(v2);

    v4 = sub_1A524C674();
    if (qword_1EB1A3D00 != -1)
    {
      swift_once();
    }

    return PXDisplayCollectionDetailedCountsMake(v4);
  }

  return result;
}

uint64_t sub_1A4071B0C(uint64_t a1)
{
  v2 = sub_1A5248334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E69E7D40] & **(a1 + *(type metadata accessor for PhotosDetailsSharedLibraryWidgetView() + 32) + 8);
  (*(v13 + 408))();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1A40723D8(v8, sub_1A3EE53E0);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1A3EE4C48(v5);
  sub_1A5248304();
  (*(v3 + 8))(v5, v2);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A4071D9C@<X0>(int *a1@<X1>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_1A53160F0;
  v4 = a1[6];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1[7];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + a1[8]);
  type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(0);
  sub_1A40708A0(&qword_1EB125E50, type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

unint64_t sub_1A4071E90()
{
  result = qword_1EB131070;
  if (!qword_1EB131070)
  {
    sub_1A40709E0(255);
    sub_1A4070B6C();
    sub_1A4070C78();
    sub_1A5249764();
    sub_1A40712C4(&qword_1EB131050, sub_1A4070C78, sub_1A4071344);
    sub_1A40708A0(&qword_1EB122360, MEMORY[0x1E697C658]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A40708A0(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131070);
  }

  return result;
}

unint64_t sub_1A4072030()
{
  result = qword_1EB131080;
  if (!qword_1EB131080)
  {
    sub_1A40704F4(255, &qword_1EB130F58, sub_1A4070268, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A4072124();
    sub_1A40708A0(&qword_1EB12F910, sub_1A3FA9268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131080);
  }

  return result;
}

unint64_t sub_1A4072124()
{
  result = qword_1EB131088;
  if (!qword_1EB131088)
  {
    sub_1A4070268();
    sub_1A407219C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131088);
  }

  return result;
}

unint64_t sub_1A407219C()
{
  result = qword_1EB131090;
  if (!qword_1EB131090)
  {
    sub_1A4070E14(255, &qword_1EB130F68, sub_1A40702E4);
    sub_1A4072240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131090);
  }

  return result;
}

unint64_t sub_1A4072240()
{
  result = qword_1EB131098;
  if (!qword_1EB131098)
  {
    sub_1A40702E4();
    sub_1A40722C0();
    sub_1A3F963C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131098);
  }

  return result;
}

unint64_t sub_1A40722C0()
{
  result = qword_1EB1310A0;
  if (!qword_1EB1310A0)
  {
    sub_1A4070384(255);
    sub_1A40708A0(&qword_1EB1310A8, sub_1A40703AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1310A0);
  }

  return result;
}

uint64_t sub_1A4072370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40723D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4072438()
{
  if (!qword_1EB1310B0)
  {
    sub_1A4070DB0(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310B0);
    }
  }
}

uint64_t sub_1A40724A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4072500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4072568(uint64_t a1)
{
  result = sub_1A40708A0(&qword_1EB131068, type metadata accessor for PhotosDetailsSharedLibraryWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4072604()
{
  sub_1A406DD84(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A406DD84(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4072710();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4072710()
{
  if (!qword_1EB124398)
  {
    type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel(255);
    sub_1A40708A0(&qword_1EB125E50, type metadata accessor for PhotosDetailsSharedLibraryWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124398);
    }
  }
}

unint64_t sub_1A40727B4()
{
  result = qword_1EB1310B8;
  if (!qword_1EB1310B8)
  {
    sub_1A40704F4(255, &qword_1EB1310C0, sub_1A40709E0, sub_1A40701C4, MEMORY[0x1E697F960]);
    sub_1A4071E90();
    sub_1A40712C4(&qword_1EB131078, sub_1A40701C4, sub_1A4072030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1310B8);
  }

  return result;
}

double sub_1A40728C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1A5249574();
  v15 = 0;
  sub_1A406F9E8(v3, v14);
  v24 = *&v14[128];
  v25 = *&v14[144];
  v26 = *&v14[160];
  v27 = *&v14[176];
  v20 = *&v14[64];
  v21 = *&v14[80];
  v22 = *&v14[96];
  v23 = *&v14[112];
  v16 = *v14;
  v17 = *&v14[16];
  v18 = *&v14[32];
  v19 = *&v14[48];
  v28[8] = *&v14[128];
  v28[9] = *&v14[144];
  v28[10] = *&v14[160];
  v28[11] = *&v14[176];
  v28[4] = *&v14[64];
  v28[5] = *&v14[80];
  v28[6] = *&v14[96];
  v28[7] = *&v14[112];
  v28[0] = *v14;
  v28[1] = *&v14[16];
  v28[2] = *&v14[32];
  v28[3] = *&v14[48];
  sub_1A4072370(&v16, &v13, sub_1A40710A4);
  sub_1A40723D8(v28, sub_1A40710A4);
  *&v14[135] = v24;
  *&v14[151] = v25;
  *&v14[167] = v26;
  *&v14[183] = v27;
  *&v14[71] = v20;
  *&v14[87] = v21;
  *&v14[103] = v22;
  *&v14[119] = v23;
  *&v14[7] = v16;
  *&v14[23] = v17;
  *&v14[39] = v18;
  *&v14[55] = v19;
  v5 = *&v14[128];
  *(a1 + 161) = *&v14[144];
  v6 = *&v14[176];
  *(a1 + 177) = *&v14[160];
  *(a1 + 193) = v6;
  v7 = *&v14[64];
  *(a1 + 97) = *&v14[80];
  v8 = *&v14[112];
  *(a1 + 113) = *&v14[96];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = *v14;
  *(a1 + 33) = *&v14[16];
  result = *&v14[32];
  v11 = *&v14[48];
  *(a1 + 49) = *&v14[32];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v15;
  *a1 = v4;
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = v12;
  *(a1 + 208) = *&v14[191];
  *(a1 + 17) = v9;
  return result;
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for PhotosDetailsSharedLibraryWidgetView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[6];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4072BEC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsSharedLibraryWidgetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A4072C60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4072CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id PXCuratedLibraryNavigationBarPalette.init(arrangedSubview:isNotification:)(void *a1, char a2)
{
  v11.super_class = PXCuratedLibraryNavigationBarPalette;
  v3 = objc_msgSendSuper2(&v11, sel_initWithArrangedSubview_isNotification_, a1, a2 & 1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondarySystemBackgroundColor];
  [a1 setBackgroundColor_];

  v7 = [a1 layer];
  [v7 setCornerRadius_];

  v8 = [a1 layer];
  [v8 setMasksToBounds_];

  v9 = [v5 contentView];
  [v9 setDirectionalLayoutMargins_];

  return v5;
}

unint64_t type metadata accessor for PXCuratedLibraryNavigationBarPalette()
{
  result = qword_1EB1A3E40[0];
  if (!qword_1EB1A3E40[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1A3E40);
  }

  return result;
}

uint64_t sub_1A4073008(uint64_t a1)
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4074C00(a1, v4, sub_1A40730A4);
  return EnvironmentValues.detailsContext.setter(v4);
}

void sub_1A40730D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A407313C()
{
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  type metadata accessor for StorageManagementView(0);
  sub_1A40740A4(v3);
  v5 = type metadata accessor for LemonadeDetailsContext();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1A4074294(v3, sub_1A40730A4);
    v6 = 0;
  }

  else
  {
    v7 = &v3[*(v5 + 20)];
    v6 = *v7;
    v8 = v7[1];
    sub_1A3C66EE8(*v7);
    sub_1A4074294(v3, type metadata accessor for LemonadeDetailsContext);
    if (v6)
    {
      aBlock[4] = v6;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D8EF18;
      aBlock[3] = &block_descriptor_86;
      v6 = _Block_copy(aBlock);
    }
  }

  v9 = [objc_opt_self() storageViewForTipType:v4 customAssetSelectionHandler:v6];
  _Block_release(v6);
  if (!v9)
  {
    __break(1u);
  }
}

uint64_t sub_1A4073328@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for StorageManagementView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A40730D8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A40733C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4074718(&qword_1EB131138, type metadata accessor for StorageManagementView);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4073458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4074718(&qword_1EB131138, type metadata accessor for StorageManagementView);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A40734EC()
{
  sub_1A4074718(&qword_1EB131138, type metadata accessor for StorageManagementView);
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A4073544(uint64_t a1@<X8>)
{
  v6[3] = a1;
  sub_1A4074420();
  MEMORY[0x1EEE9AC00](v1);
  v6[5] = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v6[4] = v6 - v5;
  v6[2] = sub_1A524B414();
  type metadata accessor for StorageManagementListItem(0);
  sub_1A4074924();
  sub_1A52480D4();
  sub_1A524BC74();
  sub_1A52481F4();
  v10 = 0;
  v7 = v11;
  v8 = v12;
  v9 = v13;
  sub_1A524BC74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4073ACC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v12 = sub_1A52409B4();
  v10 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v8 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240994();
  MEMORY[0x1EEE9AC00](v7);
  v11 = sub_1A52409C4();
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v6[2] = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[1] = a1;
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v9 = sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4073FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  type metadata accessor for StorageManagementListItem(0);
  sub_1A3F93828();
  return sub_1A52480C4();
}

void sub_1A407405C(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A40742F4();
  sub_1A4073544(a1 + *(v2 + 44));
}

uint64_t sub_1A40740A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40730D8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1A4074B04(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A4074B98(v10, a1, sub_1A40730A4);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A4074294(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40742F4()
{
  if (!qword_1EB1310C8)
  {
    sub_1A407435C(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310C8);
    }
  }
}

void sub_1A4074390()
{
  if (!qword_1EB1310D8)
  {
    sub_1A4074420();
    sub_1A4074568(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1310D8);
    }
  }
}

void sub_1A4074420()
{
  if (!qword_1EB1310E0)
  {
    sub_1A4074590(255, &qword_1EB1310E8, sub_1A40744AC);
    sub_1A4074504();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310E0);
    }
  }
}

void sub_1A40744AC()
{
  if (!qword_1EB1310F0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310F0);
    }
  }
}

void sub_1A4074504()
{
  if (!qword_1EB1310F8)
  {
    sub_1A3EE213C();
    sub_1A3F37498();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1310F8);
    }
  }
}

void sub_1A4074590(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A40745F4()
{
  if (!qword_1EB133820)
  {
    sub_1A4074688(255);
    sub_1A4074718(&qword_1EB1270E0, sub_1A4074688);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB133820);
    }
  }
}

void sub_1A40746BC()
{
  if (!qword_1EB127680)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127680);
    }
  }
}

uint64_t sub_1A4074718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A407480C()
{
  type metadata accessor for PXStorageTipType();
  if (v0 <= 0x3F)
  {
    sub_1A40730D8(319, &qword_1EB131110, sub_1A40730A4, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for PXStorageTipType()
{
  if (!qword_1EB131130)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB131130);
    }
  }
}

void sub_1A4074924()
{
  if (!qword_1EB128980)
  {
    sub_1A3F93828();
    v0 = sub_1A52480E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128980);
    }
  }
}

void sub_1A4074994()
{
  sub_1A4074924();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A4074A1C()
{
  if (!qword_1EB131120)
  {
    sub_1A407435C(255);
    sub_1A4074718(&qword_1EB131128, sub_1A407435C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131120);
    }
  }
}

unint64_t sub_1A4074AB0()
{
  result = qword_1EB131148;
  if (!qword_1EB131148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131148);
  }

  return result;
}

uint64_t sub_1A4074B04(uint64_t a1, uint64_t a2)
{
  sub_1A40730D8(0, &unk_1EB139370, sub_1A40730A4, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4074B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4074C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static PhotoKitPlayMovieAssetActionPerformer.localizedTitle(for:actionManager:)()
{
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  v2 = sub_1A524C674();
  return v2;
}

id sub_1A4074F18()
{
  sub_1A40751A0();

  return [v0 completeUserInteractionTaskWithSuccess:1 error:0];
}

void sub_1A40751A0()
{
  v1 = v0;
  v2 = sub_1A5241574();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v55 - v8;
  v10 = [v1 selectionSnapshot];
  if (!v10)
  {
    sub_1A4076270();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return;
  }

  v11 = v10;
  v12 = [v1 person];
  v13 = _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(v11);

  if ((v13 & 1) == 0)
  {
    sub_1A4076270();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    return;
  }

  v58 = v3;
  v14 = [v1 photosDataSourceSnapshot];
  v15 = [v11 selectedIndexPaths];
  [v15 firstItemIndexPathForDataSourceIdentifier_];
  v16 = v62;
  v17 = sub_1A52403B4();
  v60 = v15;
  v67 = v14;
  if (v16 == v17)
  {
    v18 = [v14 firstAssetCollection];
    if (!v18)
    {
      v19 = [v1 assetsByAssetCollection];
      sub_1A3C52C70(0, &qword_1EB126AC0);
      sub_1A404B7BC();
      sub_1A3D8E4B0();
      v20 = sub_1A524C3E4();

      v18 = sub_1A4075998(v20);
      v15 = v60;

      if (!v18)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v18 = [v14 assetCollectionForSection_];
    if (!v18)
    {
LABEL_6:
      sub_1A4076270();
      swift_allocError();
      *v21 = 2;
      swift_willThrow();

      return;
    }
  }

  if ([v15 itemCount] != 1)
  {
    v32 = [v67 fetchResultWithAssetsAtIndexPaths_];
    goto LABEL_15;
  }

  v24 = [v1 assetsFetchResult];
  v25 = [v24 firstObject];

  if (!v25)
  {
    sub_1A4076270();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();

LABEL_20:
    return;
  }

  v26 = v67;
  v27 = [v67 indexPathForAsset:v25 inCollection:v18];
  if (!v27)
  {
    sub_1A4076270();
    swift_allocError();
    *v54 = 4;
    swift_willThrow();

    goto LABEL_20;
  }

  v59 = v18;
  v28 = v27;
  sub_1A5241554();

  v29 = v58;
  (v58)[4](v9, v5, v2);
  v30 = sub_1A5241544();
  v31 = [v67 assetsStartingAtIndexPath_];

  (v29[1])(v9, v2);
  v32 = v31;
  v18 = v59;
LABEL_15:
  v33 = v32;
  v34 = sub_1A4075A08(1);
  v35 = sub_1A4075A08(*MEMORY[0x1E6978FE8]);
  v58 = v33;

  v36 = objc_allocWithZone(MEMORY[0x1E6978AF8]);
  v57 = v35;
  v37 = [v36 initWithAssetFetchResult_];
  if ([objc_opt_self() shouldDisplayTitleOfAssetCollection_])
  {
    v38 = [v18 localizedTitle];
    [v37 setTitle_];

    v39 = [v18 localizedSubtitle];
    [v37 setSubtitle_];
  }

  v56 = [objc_opt_self() transientAssetCollectionWithOptions_];
  v40 = [objc_allocWithZone(PXStoryConfiguration) initWithAssetCollection_];
  v41 = [v40 copyWithKeyAsset_];
  v55 = v37;
  v42 = v41;

  v43 = sub_1A524C634();
  [v42 setLaunchType_];

  [v42 configureForSlideShow];
  [v42 setAllowsVerticalGestures_];
  sub_1A3C52C70(0, &qword_1EB126B38);
  static PXStoryUIFactory.viewController(configuration:)(v42);
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = objc_opt_self();
  v47 = sub_1A5242A64();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = sub_1A40762C4;
  v66 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v62 = 1107296256;
  v63 = sub_1A4075CF4;
  v64 = &block_descriptor_87;
  v49 = _Block_copy(&aBlock);
  v59 = v18;
  v50 = v34;
  v51 = v49;

  v52 = [v46 _zoomWithOptions_sourceItemProvider_];
  _Block_release(v51);

  [v45 setPreferredTransition_];
  [v1 presentViewController_];
}

void *sub_1A4075998(uint64_t a1)
{
  v2 = sub_1A524E234();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1A4076180(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1A4075A08(uint64_t a1)
{
  if ([v1 count] > a1 && (v4 = objc_msgSend(v16, sel_fetchedObjectIDs)) != 0)
  {
    v5 = v4;
    sub_1A3C52C70(0, &qword_1EB126AF0);
    v6 = sub_1A524CA34();

    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      if (!(v6 >> 62))
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 >= a1)
        {
          v9 = a1;
        }

        else
        {
          v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        if (v8 >= v10)
        {
          goto LABEL_12;
        }

LABEL_32:
        __break(1u);
        __break(1u);
        swift_unknownObjectRelease_n();
        sub_1A4075EB0(a1, v2, v5, v10);
        swift_unknownObjectRelease();
        v12 = objc_allocWithZone(MEMORY[0x1E6978840]);
        v13 = sub_1A524CA14();

        v14 = [v12 initWithExistingFetchResult:v16 filteredObjectIDs:v13];

        return v14;
      }
    }

    if (v6 < 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }

    v2 = sub_1A524E2B4();
    result = sub_1A524E2B4();
    if ((result & 0x8000000000000000) == 0)
    {
      if (v2 >= a1)
      {
        v15 = a1;
      }

      else
      {
        v15 = v2;
      }

      if (v2 < 0)
      {
        v15 = a1;
      }

      if (a1)
      {
        v10 = v15;
      }

      else
      {
        v10 = 0;
      }

      if (sub_1A524E2B4() >= v10)
      {
LABEL_12:
        if ((v6 & 0xC000000000000001) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {

    return v16;
  }

  return result;
}

id sub_1A4075CF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id PhotoKitPlayMovieAssetActionPerformer.__allocating_init(actionType:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1A524C634();

  v3 = [v1 initWithActionType_];

  return v3;
}

id PhotoKitPlayMovieAssetActionPerformer.init(actionType:)()
{
  v1 = sub_1A524C634();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer();
  v2 = objc_msgSendSuper2(&v4, sel_initWithActionType_, v1);

  return v2;
}

id PhotoKitPlayMovieAssetActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoKitPlayMovieAssetActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4075EB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB126AF0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A3CB8F68();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t _s12PhotosUICore37PhotoKitPlayMovieAssetActionPerformerC10canPerform4with6person11socialGroupSbSo19PXSelectionSnapshotC_So8PHPersonCSgSo08PHSocialO0CSgtFZ_0(void *a1)
{
  result = PFIsPhotosAppAnyPlatform();
  if (result)
  {
    sub_1A3C52C70(0, &unk_1EB131150);
    v3 = [swift_getObjCClassFromMetadata() sharedInstance];
    v4 = [v3 enablePlayMovieAction];

    if (v4)
    {
      v5 = [a1 dataSource];
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        if ([a1 isAnyItemSelected])
        {
          if ([v7 numberOfSections] != 1 || objc_msgSend(v7, sel_numberOfItemsInSection_, 0) != 1)
          {
            v8 = [v7 containerCollection];
            if (v8)
            {
              v9 = v8;
              if (([v8 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || objc_msgSend(v9, sel_px_isHiddenSmartAlbum))
              {

                swift_unknownObjectRelease();
                return 0;
              }

              v10 = [v9 px_canContainPotentiallySensitiveContent];
              swift_unknownObjectRelease();

              if (v10)
              {
                return 0;
              }
            }

            else
            {
            }

            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1A4076128()
{
  if (!qword_1EB1261F0)
  {
    sub_1A3C5D744();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1261F0);
    }
  }
}

uint64_t sub_1A4076180(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1A407620C()
{
  if (!qword_1EB126420)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126420);
    }
  }
}

unint64_t sub_1A4076270()
{
  result = qword_1EB1A4010;
  if (!qword_1EB1A4010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A4010);
  }

  return result;
}

void *sub_1A40762C4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result sender];

    if (v2)
    {
      result = swift_dynamicCastObjCProtocolConditional();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A407636C()
{
  result = qword_1EB1A4018[0];
  if (!qword_1EB1A4018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A4018);
  }

  return result;
}

id static PXSharedAlbumsUtilities.fetchSharedAlbum(withScopeIdentifier:in:allowPending:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v4 = sub_1A4076458(a3, a1, a2, 0, 0, a4);
  v5 = [v4 firstObject];

  return v5;
}

uint64_t sub_1A4076458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = [a1 px_standardLibrarySpecificFetchOptions];
  [v11 setIncludePendingShares_];
  v12 = MEMORY[0x1E69E7CC0];
  v27[5] = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E6158];
  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3E072BC();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52FC9F0;
    *(v14 + 56) = v13;
    v15 = sub_1A3D710E8();
    *(v14 + 32) = 0x65644965706F6373;
    *(v14 + 40) = 0xEF7265696669746ELL;
    *(v14 + 96) = v13;
    *(v14 + 104) = v15;
    *(v14 + 64) = v15;
    *(v14 + 72) = a2;
    *(v14 + 80) = a3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (a5)
  {
    sub_1A3C52C70(0, &qword_1EB126D20);
    sub_1A3E072BC();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    *(v16 + 56) = v13;
    v17 = sub_1A3D710E8();
    *(v16 + 32) = 0x656C746974;
    *(v16 + 40) = 0xE500000000000000;
    *(v16 + 96) = v13;
    *(v16 + 104) = v17;
    *(v16 + 64) = v17;
    *(v16 + 72) = a4;
    *(v16 + 80) = a5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_1A524E2B4() == 1)
    {
      result = sub_1A524E2B4();
      if (result)
      {
        goto LABEL_7;
      }
    }

    result = sub_1A524E2B4();
LABEL_14:
    if (result < 2)
    {
    }

    else
    {
      sub_1A3C52C70(0, &qword_1EB126D20);
      v21 = sub_1A524CA14();

      v22 = [objc_opt_self() andPredicateWithSubpredicates_];

      [v11 setPredicate_];
    }

    goto LABEL_17;
  }

  result = *((MEMORY[0x1E69E7CC0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1A59097F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v12 + 32);
  }

  v20 = v19;

  [v11 setPredicate_];

LABEL_17:
  v23 = sub_1A5241C44();
  v27[3] = v23;
  v27[4] = sub_1A408E96C(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v23);
  LOBYTE(v23) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v23)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = 102;
  }

  sub_1A3C52C70(0, &unk_1EB120A20);
  v26 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:v25 options:v11];

  return v26;
}

id static PXSharedAlbumsUtilities.fetchSharedAlbum(withTitle:in:allowPending:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v4 = sub_1A4076458(a3, 0, 0, a1, a2, a4);
  v5 = [v4 firstObject];

  return v5;
}

id static PXSharedAlbumsUtilities.sharedAlbumIsOwned(_:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    return ([v0 status] == 1);
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result isOwned];
  }

  return result;
}

void *static PXSharedAlbumsUtilities.sharedAlbumIsAppleFamily(_:)()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return ([result cloudAlbumSubtype] == 1);
  }

  return result;
}

uint64_t static PXSharedAlbumsUtilities.canContributeAssets(toSharedAlbum:)(uint64_t a1)
{
  v2 = objc_opt_self();
  if ([v2 sharedAlbumIsOwned_])
  {
    return 1;
  }

  else
  {
    return [v2 multipleContributorsEnabledForSharedAlbum_];
  }
}