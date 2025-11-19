id sub_1A3DBF868(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v8 = *v4;
  v9 = a3 & 1;
  v10 = sub_1A3DBF540(a2, a3 & 1);
  v12 = *(v8 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v8 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1A3DBF5C0(v15, a4 & 1);
      v10 = sub_1A3DBF540(a2, v9);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_1A3DBFAE0();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    *(v20[7] + 8 * v10) = a1;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  v22 = v20[6] + 16 * v10;
  *v22 = a2;
  *(v22 + 8) = v9;
  *(v20[7] + 8 * v10) = a1;
  v23 = v20[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v24;

  return a2;
}

unint64_t sub_1A3DBF9E8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    sub_1A3C52C70(0, &qword_1EB12B160);
    do
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *(v8 + 8);
      v10 = *v8;
      v11 = sub_1A524DBF4();

      if (((v11 ^ 1 | (v9 ^ a2)) & 1) == 0)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1A3DBFAE0()
{
  v1 = v0;
  sub_1A3DC08EC();
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
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
        v22 = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3DBFC4C(void *a1, char a2)
{
  v3 = qword_1EB1659A0;
  v4 = a1;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB1659A8;
  if (!*(qword_1EB1659A8 + 16) || (v6 = sub_1A3DBF540(v4, a2 & 1), (v7 & 1) == 0))
  {
    swift_endAccess();
    if (a2)
    {
      sub_1A3C52C70(0, &qword_1EB126A10);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [ObjCClassFromMetadata sharedInstance];
      v11 = [v10 onlyDismissedInProfile];

      if (v11)
      {
        sub_1A4536404();
      }

      else
      {
        sub_1A453514C();
      }

      v12 = [ObjCClassFromMetadata sharedInstance];
      [v12 includeSharedAlbumsActivityInProfileNotifications];
    }

    else
    {
      sub_1A4536410();
    }

    type metadata accessor for NotificationsDismissalMutableController(0);
    sub_1A44A68BC(v4);
    type metadata accessor for NotificationsItemListManager();
    sub_1A3F25B60(v4);
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  swift_endAccess();

  return v8;
}

void sub_1A3DBFE8C()
{
  v6 = type metadata accessor for MacSyncedAssetsNotificationItem();
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v5 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4BF7C(0, &qword_1EB12C4C0, type metadata accessor for NotificationsPhotosItem);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3C38BD4();
  sub_1A405E194(&v8);
}

unint64_t sub_1A3DC02D8()
{
  result = qword_1EB1299E8;
  if (!qword_1EB1299E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1299E8);
  }

  return result;
}

void sub_1A3DC03B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for NotificationsItemListManager();
    v8[1] = &type metadata for LemonadeNotificationsStackItem;
    v8[2] = sub_1A3DC06B0(&qword_1EB129930, type metadata accessor for NotificationsItemListManager);
    v8[3] = sub_1A3D37A04();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3DC0474()
{
  result = qword_1EB1299F0;
  if (!qword_1EB1299F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1299F0);
  }

  return result;
}

unint64_t sub_1A3DC0564()
{
  result = qword_1EB12C4B0;
  if (!qword_1EB12C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C4B0);
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A3DC05DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1A3DC0624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A3DC06B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3DC06F8(uint64_t a1)
{
  sub_1A3C4BF7C(0, &qword_1EB12C4C0, type metadata accessor for NotificationsPhotosItem);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3DC0770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3DC07D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3DC0834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3DC089C()
{
  if (!qword_1EB12C4C8)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C4C8);
    }
  }
}

void sub_1A3DC08EC()
{
  if (!qword_1EB120480)
  {
    type metadata accessor for NotificationsItemListManager();
    sub_1A3DC0958();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120480);
    }
  }
}

unint64_t sub_1A3DC0958()
{
  result = qword_1EB165990;
  if (!qword_1EB165990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB165990);
  }

  return result;
}

unint64_t sub_1A3DC09C0()
{
  result = qword_1EB165980;
  if (!qword_1EB165980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB165980);
  }

  return result;
}

void AVPlayerItem.loopTimeRange.getter(_OWORD *a1@<X8>)
{
  v3 = sub_1A524C634();
  v4 = [v1 valueForKey_];

  if (v4)
  {
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    sub_1A3C57128(&v9, &v10);
    sub_1A3DC0B2C();
    swift_dynamicCast();
    [v5 CMTimeRangeValue];

    *a1 = v6;
    a1[1] = v7;
    a1[2] = v8;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A3DC0B2C()
{
  result = qword_1EB1205F8;
  if (!qword_1EB1205F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1205F8);
  }

  return result;
}

double sub_1A3DC0B78@<D0>(_OWORD *a1@<X8>)
{
  AVPlayerItem.loopTimeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void sub_1A3DC0BBC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1A524D114();
  v4 = sub_1A524C634();
  [v2 setValue:v3 forKey:v4];
}

void AVPlayerItem.loopTimeRange.setter()
{
  v1 = v0;
  v2 = sub_1A524D114();
  v3 = sub_1A524C634();
  [v1 setValue:v2 forKey:v3];
}

void (*AVPlayerItem.loopTimeRange.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  *v3 = v1;
  AVPlayerItem.loopTimeRange.getter((v3 + 104));
  return sub_1A3DC0D5C;
}

void sub_1A3DC0D5C(void ***a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = 7;
  if (a2)
  {
    v4 = 1;
  }

  v5 = &v2[v4];
  v6 = *(v2 + 15);
  *v5 = *(v2 + 13);
  *(v5 + 1) = v6;
  *(v5 + 2) = *(v2 + 17);
  v7 = sub_1A524D114();
  v8 = sub_1A524C634();
  [v3 setValue:v7 forKey:v8];

  free(v2);
}

uint64_t sub_1A3DC0E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v4;
}

void sub_1A3DC0EC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11[3] = a4;
  v13 = a2;
  v14 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v12);
  v11[5] = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11[4] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11[2] = v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  *&v15 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DC139C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      v4 = *(v3 + 16);
      v5 = *(v3 + 24);
      sub_1A3D602A8(v4, v5);
      sub_1A3DC37B0();
      v6 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v6);

      MEMORY[0x1A5907B60](2108704, 0xE300000000000000);
      v7 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v7);

      MEMORY[0x1A5907B60](41, 0xE100000000000000);
      sub_1A3C59280(v4, v5);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1A3C57108((v8 > 1), v9 + 1, 1);
      }

      v3 += 32;
      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = 40;
      *(v10 + 40) = 0xE100000000000000;
      --v1;
    }

    while (v1);
  }

  sub_1A3C2DD24(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A3CAD85C();
  v11 = sub_1A524C514();
  v13 = v12;

  MEMORY[0x1A5907B60](v11, v13);

  MEMORY[0x1A5907B60](93, 0xE100000000000000);
  return 91;
}

void sub_1A3DC15CC(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[1];
      v31 = *v3;
      v32 = v6;
      v7 = v4[1];
      v33 = *v4;
      v34 = v7;
      v29 = v31;
      v28 = v33;
      sub_1A3DC2C90(&v31, v30);
      sub_1A3DC2C90(&v33, v30);
      if (!static OneUpSharePlayVersion.== infix(_:_:)(&v29, &v28) || (*v30 = *(&v31 + 1), v29 = *(&v33 + 1), !static OneUpSharePlayVersion.== infix(_:_:)(v30, &v29)))
      {
LABEL_57:
        sub_1A3DC2CC8(&v33);
        sub_1A3DC2CC8(&v31);
        return;
      }

      v8 = *(&v34 + 1);
      v9 = v34;
      v10 = *(&v32 + 1) >> 62;
      v11 = *(&v34 + 1) >> 62;
      if (*(&v32 + 1) >> 62 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v18 = *(v32 + 16);
          v17 = *(v32 + 24);
          v15 = __OFSUB__(v17, v18);
          v12 = v17 - v18;
          if (v15)
          {
            goto LABEL_61;
          }

          goto LABEL_21;
        }

        v12 = 0;
        if (v11 <= 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10)
      {
        LODWORD(v12) = DWORD1(v32) - v32;
        if (__OFSUB__(DWORD1(v32), v32))
        {
          goto LABEL_60;
        }

        v12 = v12;
        if (v11 <= 1)
        {
LABEL_22:
          if (v11)
          {
            LODWORD(v16) = DWORD1(v34) - v34;
            if (__OFSUB__(DWORD1(v34), v34))
            {
              goto LABEL_59;
            }

            v16 = v16;
          }

          else
          {
            v16 = BYTE14(v34);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v12 = BYTE14(v32);
        if (v11 <= 1)
        {
          goto LABEL_22;
        }
      }

LABEL_15:
      if (v11 != 2)
      {
        if (v12)
        {
          goto LABEL_57;
        }

LABEL_33:
        sub_1A3DC2CC8(&v33);
        sub_1A3DC2CC8(&v31);
        goto LABEL_54;
      }

      v14 = *(v34 + 16);
      v13 = *(v34 + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
      }

LABEL_28:
      if (v12 != v16)
      {
        goto LABEL_57;
      }

      if (v12 < 1)
      {
        goto LABEL_33;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v19 = *(v32 + 16);
          v27 = *(v32 + 24);
          v20 = sub_1A52405D4();
          if (v20)
          {
            v21 = sub_1A52405F4();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_64;
            }

            v20 += v19 - v21;
          }

          if (__OFSUB__(v27, v19))
          {
            goto LABEL_63;
          }

          sub_1A52405E4();
          sub_1A3DC3A78(v20, v9, v8, v30);
          sub_1A3DC2CC8(&v33);
          sub_1A3DC2CC8(&v31);
          v22 = v30[0];
          goto LABEL_50;
        }

        *&v30[6] = 0;
        *v30 = 0;
      }

      else
      {
        if (v10)
        {
          v23 = i;
          v24 = v32;
          if (v32 >> 32 < v32)
          {
            goto LABEL_62;
          }

          v25 = sub_1A52405D4();
          if (v25)
          {
            v26 = sub_1A52405F4();
            if (__OFSUB__(v24, v26))
            {
              goto LABEL_65;
            }

            v25 += v24 - v26;
          }

          i = v23;
          sub_1A52405E4();
          sub_1A3DC3A78(v25, v9, v8, v30);
          sub_1A3DC2CC8(&v33);
          sub_1A3DC2CC8(&v31);
          v22 = v30[0];
LABEL_50:
          if ((v22 & 1) == 0)
          {
            return;
          }

          goto LABEL_54;
        }

        *v30 = v32;
        *&v30[8] = DWORD2(v32);
        *&v30[12] = WORD6(v32);
      }

      sub_1A3DC3A78(v30, v34, *(&v34 + 1), &v29);
      sub_1A3DC2CC8(&v33);
      sub_1A3DC2CC8(&v31);
      if ((v29 & 1) == 0)
      {
        return;
      }

LABEL_54:
      if (!i)
      {
        return;
      }

      v4 += 2;
      v3 += 2;
    }

    v12 = 0;
    if (v32 == __PAIR128__(0xC000000000000000, 0) && *(&v34 + 1) >> 62 == 3)
    {
      v12 = 0;
      if (v34 == __PAIR128__(0xC000000000000000, 0))
      {
        goto LABEL_33;
      }
    }

LABEL_21:
    if (v11 <= 1)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }
}

uint64_t sub_1A3DC1A28(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4464616F6C796170 && a2 == 0xEB00000000617461)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A524EAB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A3DC1ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3DC1A28(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A3DC1B04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A3DC1B58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A3DC1BAC(void *a1, uint64_t a2)
{
  type metadata accessor for OneUpSharePlayMessage.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1A524EA14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A524ED34();
  v9[3] = a2;
  sub_1A3C2DD24(0, &qword_1EB12C4D8, &type metadata for OneUpSharePlayMessagePayloadData, MEMORY[0x1E69E62F8]);
  sub_1A3DC3870(&qword_1EB12C4E0, sub_1A3DC381C);
  sub_1A524E9D4();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1A3DC1D80(void *a1)
{
  type metadata accessor for OneUpSharePlayMessage.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1A524E934();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A524ED14();
  if (!v1)
  {
    sub_1A3C2DD24(0, &qword_1EB12C4D8, &type metadata for OneUpSharePlayMessagePayloadData, MEMORY[0x1E69E62F8]);
    sub_1A3DC3870(&qword_1EB12C4F0, sub_1A3DC3900);
    sub_1A524E8E4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void *sub_1A3DC1F8C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A3DC1D80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A3DC1FF0()
{
  sub_1A3C2DD24(0, &qword_1EB12C500, &type metadata for OneUpSharePlayMessagePayloadData, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A52F8E10;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 80);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  if (v0)
  {
    *(v1 + 16) = 0;
  }

  return v1;
}

uint64_t sub_1A3DC2104@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1A3DC2188()
{
  v1 = 0xD000000000000018;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1A3DC21E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A3DC4704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A3DC2208(uint64_t a1)
{
  v2 = sub_1A3DC415C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A3DC2244(uint64_t a1)
{
  v2 = sub_1A3DC415C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A3DC2280(void *a1)
{
  sub_1A3DC4258(0, &qword_1EB12C508, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v23 = *(v1 + 4);
  v10 = *(v1 + 5);
  v18 = v1[3];
  v19 = v10;
  v11 = *(v1 + 2);
  v16 = *(v1 + 3);
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3DC415C();
  sub_1A524ED34();
  v21 = __PAIR64__(v8, v9);
  v24 = 0;
  sub_1A3DC41B0();
  v12 = v20;
  sub_1A524E9D4();
  if (!v12)
  {
    v14 = v16;
    v13 = v17;
    LOWORD(v21) = v23;
    WORD1(v21) = v19;
    HIDWORD(v21) = v18;
    v24 = 1;
    sub_1A524E9D4();
    v21 = v13;
    v22 = v14;
    v24 = 2;
    sub_1A3D602A8(v13, v14);
    sub_1A3DC4204();
    sub_1A524E9D4();
    sub_1A3C59280(v21, v22);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A3DC24A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3DC4258(0, &qword_1EB12C520, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A3DC415C();
  sub_1A524ED14();
  if (!v2)
  {
    v23 = 0;
    sub_1A3DC42BC();
    sub_1A524E8E4();
    v20 = v21;
    v22 = WORD1(v21);
    v10 = DWORD1(v21);
    v23 = 1;
    sub_1A524E8E4();
    v19 = v10;
    v11 = v20;
    LOWORD(v10) = v22;
    v17 = WORD1(v21);
    v18 = v21;
    v16 = DWORD1(v21);
    v23 = 2;
    sub_1A3DC4310();
    sub_1A524E8E4();
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    *(a2 + 2) = v10;
    v13 = v18;
    *(a2 + 4) = v19;
    *(a2 + 8) = v13;
    v14 = v16;
    *(a2 + 10) = v17;
    *(a2 + 12) = v14;
    *(a2 + 16) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A3DC2748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(&v7, a2, a3);
  sub_1A3DC4364();
  if (sub_1A524C534())
  {
    v5 = 0;
  }

  else
  {
    (*(a3 + 48))(&v7, a2, a3);
    v5 = sub_1A524C534() ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1A3DC2858(uint64_t a1, void (**a2)(void *__return_ptr, void, void))
{
  sub_1A524E404();
  v4 = sub_1A524EEF4();
  v6 = v5;

  v12 = v4;
  v13 = v6;
  MEMORY[0x1A5907B60](91, 0xE100000000000000);
  a2[4](&v11, a1, a2);
  sub_1A3DC37B0();
  v7 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v7);

  MEMORY[0x1A5907B60](2128928, 0xE300000000000000);
  a2[5](&v11, a1, a2);
  v8 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v8);

  MEMORY[0x1A5907B60](2108704, 0xE300000000000000);
  a2[6](&v11, a1, a2);
  v9 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v9);

  MEMORY[0x1A5907B60](93, 0xE100000000000000);
  return v12;
}

uint64_t sub_1A3DC2A18(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 2);
  v7 = v3;
  if ((*(a3 + 56))(&v5))
  {
    sub_1A5240424();
    swift_allocObject();
    sub_1A5240414();
    sub_1A5240404();
  }

  else
  {
    sub_1A3DC43B8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1A3DC2B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A5240454();
  swift_allocObject();
  sub_1A5240444();
  v7 = sub_1A5240434();
  if (v3)
  {
  }

  v10 = v7;
  v11 = v8;
  (*(a2 + 32))(&v17, a1, a2);
  v12 = v17;
  v15 = HIDWORD(v17);
  (*(a2 + 40))(&v16, a1, a2);

  v13 = v16;
  v14 = HIDWORD(v16);
  *a3 = v12;
  *(a3 + 4) = v15;
  *(a3 + 8) = v13;
  *(a3 + 12) = v14;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  return result;
}

uint64_t sub_1A3DC2C24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A3DC3E38(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1A3DC2CF8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1A3DC2CF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A524EA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A3DC2EE4(v7, v8, a1, v4);
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
    return sub_1A3DC2DF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A3DC2DF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_1A3DC4364();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v11 = v10 + 2;
      result = sub_1A524C534();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v12 = v10[3];
      v13 = *v10;
      v14 = v10[1];
      *v10 = *v11;
      v10[1] = v12;
      v10 -= 2;
      *v11 = v13;
      v11[1] = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A3DC2EE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = a3;
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A3D86884(v10);
      v10 = result;
    }

    v83 = *(v10 + 2);
    if (v83 >= 2)
    {
      while (1)
      {
        v84 = *v4;
        if (!*v4)
        {
          goto LABEL_126;
        }

        v85 = *&v10[16 * v83];
        v4 = *&v10[16 * v83 + 24];
        sub_1A3DC3538((v84 + 32 * v85), (v84 + 32 * *&v10[16 * v83 + 16]), (v84 + 32 * v4), v7);
        if (v6)
        {
        }

        if (v4 < v85)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v83 - 2 >= *(v10 + 2))
        {
          goto LABEL_116;
        }

        v86 = &v10[16 * v83];
        *v86 = v85;
        *(v86 + 1) = v4;
        result = sub_1A3D867F8(v83 - 1);
        v83 = *(v10 + 2);
        v4 = a3;
        if (v83 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v89 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v16 = v12;
      v17 = a3;
    }

    else
    {
      v7 = (32 * v11);
      v13 = *a3 + 32 * v11 + 68;
      sub_1A3DC4364();
      result = sub_1A524C534();
      v14 = v11;
      v15 = result;
      v90 = v14;
      v4 = v14 + 2;
      do
      {
        if (v8 == v4)
        {
          v16 = v8;
          v17 = a3;
          if ((v15 & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

        result = sub_1A524C534();
        ++v4;
        v13 += 32;
      }

      while ((v15 & 1) == (result & 1));
      v16 = v4 - 1;
      v17 = a3;
      if ((v15 & 1) == 0)
      {
LABEL_9:
        v7 = v89;
        v11 = v90;
        goto LABEL_21;
      }

LABEL_12:
      v11 = v90;
      if (v16 < v90)
      {
        goto LABEL_119;
      }

      if (v90 < v16)
      {
        v18 = 32 * v16 - 32;
        v19 = v16;
        v20 = v90;
        do
        {
          if (v20 != --v19)
          {
            v26 = *v17;
            if (!*v17)
            {
              goto LABEL_125;
            }

            v21 = &v7[v26];
            v22 = (v26 + v18);
            v24 = *v21;
            v23 = *(v21 + 1);
            v25 = v22[1];
            *v21 = *v22;
            *(v21 + 1) = v25;
            *v22 = v24;
            v22[1] = v23;
          }

          ++v20;
          v18 -= 32;
          v7 += 32;
        }

        while (v20 < v19);
      }

      v7 = v89;
    }

LABEL_21:
    v27 = v17[1];
    if (v16 < v27)
    {
      if (__OFSUB__(v16, v11))
      {
        goto LABEL_118;
      }

      if (v16 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 < v27)
        {
          v27 = v11 + a4;
        }

        if (v27 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v16 != v27)
        {
          break;
        }
      }
    }

    v28 = v16;
    if (v16 < v11)
    {
      goto LABEL_117;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v4 = *(v10 + 2);
    v29 = *(v10 + 3);
    v30 = v4 + 1;
    if (v4 >= v29 >> 1)
    {
      result = sub_1A3D8598C((v29 > 1), v4 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v30;
    v31 = &v10[16 * v4];
    *(v31 + 4) = v11;
    *(v31 + 5) = v28;
    v32 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v92 = v28;
    if (v4)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v10 + 4);
          v35 = *(v10 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_49:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v10[16 * v30];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_109;
          }

          v56 = &v10[16 * v33 + 32];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v60 = &v10[16 * v30];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_63:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v10[16 * v33];
        v65 = *(v63 + 4);
        v64 = *(v63 + 5);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_70:
        v71 = v33 - 1;
        if (v33 - 1 >= v30)
        {
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

        if (!*v17)
        {
          goto LABEL_124;
        }

        v72 = *&v10[16 * v71 + 32];
        v4 = *&v10[16 * v33 + 40];
        sub_1A3DC3538((*v17 + 32 * v72), (*v17 + 32 * *&v10[16 * v33 + 32]), (*v17 + 32 * v4), v32);
        if (v6)
        {
        }

        if (v4 < v72)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v71 >= *(v10 + 2))
        {
          goto LABEL_103;
        }

        v73 = &v10[16 * v71];
        *(v73 + 4) = v72;
        *(v73 + 5) = v4;
        result = sub_1A3D867F8(v33);
        v30 = *(v10 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v38 = &v10[16 * v30 + 32];
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v10[16 * v30];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_110;
      }

      if (v49 >= v41)
      {
        v67 = &v10[16 * v33 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v17[1];
    v9 = v92;
    if (v92 >= v8)
    {
      goto LABEL_90;
    }
  }

  v93 = v27;
  v87 = v6;
  v74 = *v17;
  sub_1A3DC4364();
  v75 = v74 + 32 * v16 - 32;
  v4 = v11 - v16;
LABEL_81:
  v94 = v16;
  v76 = v4;
  v77 = v75;
  while (1)
  {
    v78 = v77 + 2;
    result = sub_1A524C534();
    if ((result & 1) == 0)
    {
LABEL_80:
      ++v16;
      v75 += 32;
      --v4;
      if (v94 + 1 != v93)
      {
        goto LABEL_81;
      }

      v6 = v87;
      v17 = a3;
      v28 = v93;
      v7 = v89;
      if (v93 < v11)
      {
        goto LABEL_117;
      }

      goto LABEL_30;
    }

    if (!v74)
    {
      break;
    }

    v79 = v77[3];
    v80 = *v77;
    v81 = v77[1];
    *v77 = *v78;
    v77[1] = v79;
    v77 -= 2;
    *v78 = v80;
    v78[1] = v81;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_80;
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

uint64_t sub_1A3DC3538(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[32 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_1A3DC4364();
LABEL_27:
      v23 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v18 -= 32;
        if (sub_1A524C534())
        {
          if (v19 != v6)
          {
            v21 = *(v6 - 1);
            *v5 = *v23;
            *(v5 + 1) = v21;
          }

          if (v14 <= v4 || (v6 -= 32, v23 <= v7))
          {
            v6 = v23;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v20 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v20;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_1A3DC4364();
      while ((sub_1A524C534() & 1) != 0)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

unint64_t sub_1A3DC37B0()
{
  result = qword_1EB12C4D0;
  if (!qword_1EB12C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C4D0);
  }

  return result;
}

unint64_t sub_1A3DC381C()
{
  result = qword_1EB12C4E8;
  if (!qword_1EB12C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C4E8);
  }

  return result;
}

uint64_t sub_1A3DC3870(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C2DD24(255, &qword_1EB12C4D8, &type metadata for OneUpSharePlayMessagePayloadData, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3DC3900()
{
  result = qword_1EB12C4F8;
  if (!qword_1EB12C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C4F8);
  }

  return result;
}

char *sub_1A3DC3954(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C2DD24(0, &qword_1EB12C500, &type metadata for OneUpSharePlayMessagePayloadData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1A3DC3A78@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1A52405D4();
    if (v10)
    {
      v11 = sub_1A52405F4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1A52405E4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1A52405D4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1A52405F4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1A52405E4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1A3DC3CA8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1A3DC3E4C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1A3C59280(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1A3DC3A78(v13, a3, a4, &v12);
  v10 = v4;
  sub_1A3C59280(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1A3DC3E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1A52405D4();
  v11 = result;
  if (result)
  {
    result = sub_1A52405F4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1A52405E4();
  sub_1A3DC3A78(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1A3DC3F04(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1A3D602A8(a3, a4);
          return sub_1A3DC3CA8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1A3DC406C(int *a1, int *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[3];
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  v11 = *(a2 + 5);
  v12 = a2[3];
  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  v18 = *a1;
  v19 = v2;
  v16 = v8;
  v17 = v9;
  if (!static OneUpSharePlayVersion.== infix(_:_:)(&v18, &v16))
  {
    return 0;
  }

  LOWORD(v18) = v3;
  HIWORD(v18) = v4;
  v19 = v5;
  LOWORD(v16) = v10;
  HIWORD(v16) = v11;
  v17 = v12;
  if (!static OneUpSharePlayVersion.== infix(_:_:)(&v18, &v16))
  {
    return 0;
  }

  return sub_1A3DC3F04(v6, v7, v13, v14);
}

unint64_t sub_1A3DC415C()
{
  result = qword_1EB197380[0];
  if (!qword_1EB197380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB197380);
  }

  return result;
}

unint64_t sub_1A3DC41B0()
{
  result = qword_1EB12C510;
  if (!qword_1EB12C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C510);
  }

  return result;
}

unint64_t sub_1A3DC4204()
{
  result = qword_1EB12C518;
  if (!qword_1EB12C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C518);
  }

  return result;
}

void sub_1A3DC4258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3DC415C();
    v7 = a3(a1, &type metadata for OneUpSharePlayMessagePayloadData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A3DC42BC()
{
  result = qword_1EB12C528;
  if (!qword_1EB12C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C528);
  }

  return result;
}

unint64_t sub_1A3DC4310()
{
  result = qword_1EB12C530;
  if (!qword_1EB12C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C530);
  }

  return result;
}

unint64_t sub_1A3DC4364()
{
  result = qword_1EB12C538;
  if (!qword_1EB12C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C538);
  }

  return result;
}

unint64_t sub_1A3DC43B8()
{
  result = qword_1EB12C540;
  if (!qword_1EB12C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C540);
  }

  return result;
}

unint64_t sub_1A3DC4410()
{
  result = qword_1EB12C548;
  if (!qword_1EB12C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C548);
  }

  return result;
}

uint64_t sub_1A3DC4464()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A3DC44D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A3DC4528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1A3DC45C8()
{
  result = qword_1EB197C10[0];
  if (!qword_1EB197C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB197C10);
  }

  return result;
}

unint64_t sub_1A3DC4620()
{
  result = qword_1EB197D20[0];
  if (!qword_1EB197D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB197D20);
  }

  return result;
}

unint64_t sub_1A3DC4678()
{
  result = qword_1EB1621E8;
  if (!qword_1EB1621E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1621E8);
  }

  return result;
}

uint64_t sub_1A3DC4704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A53B70A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

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

uint64_t ThreadUnsafeObservatory.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ThreadUnsafeObservatory.init(name:)(a1, a2);
  return v4;
}

void *ThreadUnsafeObservatory.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = 0;
  sub_1A524EE64();
  v6 = *(*v2 + 120);
  *(v3 + v6) = [objc_opt_self() weakObjectsHashTable];
  v3[2] = a1;
  v3[3] = a2;
  return v3;
}

void ThreadUnsafeObservatory.performChanges(_:)(uint64_t (*a1)(void))
{
  v2 = *(v1 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v4;
    v5 = a1();

    sub_1A3DC4E24(v5);
  }
}

uint64_t sub_1A3DC49B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - v5;
  v8[1] = 0;
  v8[2] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000013, 0x80000001A53B7110);
  MEMORY[0x1A5907B60](v1[2], v1[3]);
  MEMORY[0x1A5907B60](0x7669656365722022, 0xEC000000203A6465);
  sub_1A524EA84();
  MEMORY[0x1A5907B60](0xD000000000000064, 0x80000001A53B7130);
  if (v1[4])
  {

    (*(v4 + 16))(v6, a1, v3);
    swift_beginAccess();
    sub_1A524E184();
    return swift_endAccess();
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ThreadUnsafeObservatory.signalChange(_:)(Swift::UInt64 a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v7 - v4;
  v7[1] = v6;
  sub_1A524EE64();
  sub_1A3DC49B0(v5);
  (*(v3 + 8))(v5, v2);
}

uint64_t ThreadUnsafeObservatory.addObserver(using:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for Observation();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v2 + *(v5 + 120));

  [v7 addObject_];
  swift_getWitnessTable();
  return v6;
}

uint64_t sub_1A3DC4DE4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

void sub_1A3DC4E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = v3[10];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = *(v2 + 4);
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
    return;
  }

  *(v2 + 4) = v13;
  if (!v13)
  {
    v14 = v3[14];
    swift_beginAccess();
    v15 = *(v5 + 16);
    v15(v10, &v2[v14], v4);
    v28 = v3[11];
    v16 = sub_1A524E164();
    v26 = *(v5 + 8);
    v27 = v5 + 8;
    v26(v10, v4);
    if ((v16 & 1) == 0)
    {
      v15(v7, &v2[v14], v4);
      v29 = 0;
      sub_1A524EE64();
      swift_beginAccess();
      (*(v5 + 40))(&v2[v14], v10, v4);
      swift_endAccess();
      v17 = [*&v2[*(*v2 + 120)] allObjects];
      type metadata accessor for Observation();
      v18 = sub_1A524CA34();

      if (!sub_1A524CAF4())
      {
        goto LABEL_14;
      }

      v19 = 4;
      while (1)
      {
        v20 = v19 - 4;
        v21 = sub_1A524CAD4();
        sub_1A524CA64();
        if (v21)
        {
          v22 = *(v18 + 8 * v19);

          v23 = v19 - 3;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          v22 = sub_1A524E474();
          v23 = v19 - 3;
          if (__OFADD__(v20, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            v26(v7, v4);
            return;
          }
        }

        v24 = *(v22 + 16);
        if (v24)
        {

          v24(v7);
          sub_1A3C33378(v24);
        }

        ++v19;
        if (v23 == sub_1A524CAF4())
        {
          goto LABEL_14;
        }
      }
    }
  }
}

uint64_t *ThreadUnsafeObservatory.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t ThreadUnsafeObservatory.__deallocating_deinit()
{
  ThreadUnsafeObservatory.deinit();

  return swift_deallocClassInstance();
}

void ThreadSafeObservatory.init(name:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = *v2;
  v15 = a2;
  v12 = sub_1A524D464();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A3C29A58();
  v11[1] = &unk_1A52FDE90;
  v11[2] = v8;
  sub_1A524BF14();
  v16 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E8030];
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3DC59A0(0, &qword_1EB126E40, v9);
  sub_1A3C9AB70(&qword_1EB126E30, &qword_1EB126E40, v9);
  sub_1A524E224();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v12);
  v10 = sub_1A524D4B4();
  v2[2] = v13;
  v2[3] = v15;
  v2[4] = v10;
  type metadata accessor for ThreadUnsafeObservatory();
  swift_allocObject();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t ThreadSafeObservatory.addObserver(using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A524BEE4();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v17 = *(v8 - 8);
  v18 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Observation();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v16[1] = *(v2 + 32);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1A3DC5974;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7F60];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3DC59A0(0, &qword_1EB12B1C0, v14);
  sub_1A3C9AB70(&qword_1EB12B1B0, &qword_1EB12B1C0, v14);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v10, v7, v13);
  _Block_release(v13);
  (*(v19 + 8))(v7, v5);
  (*(v17 + 8))(v10, v18);

  swift_getWitnessTable();
  return v11;
}

void sub_1A3DC59A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524CB74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t ThreadSafeObservatory.performChanges(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v21 = a1;
  v4 = sub_1A524BEE4();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v22 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = *(v2 + 32);
  v29 = sub_1A3DC5DC0;
  v30 = v2;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v18[3] = &v27;
  v27 = sub_1A3C2E0D0;
  v28 = &block_descriptor_3;
  v9 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v24 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7F60];
  v18[1] = sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3DC59A0(0, &qword_1EB12B1C0, v10);
  v18[0] = v11;
  sub_1A3C9AB70(&qword_1EB12B1B0, &qword_1EB12B1C0, v10);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v6, v9);
  _Block_release(v9);
  v12 = *(v23 + 8);
  v23 += 8;
  v12(v6, v4);
  v13 = *(v22 + 8);
  v22 += 8;
  v14 = v19;
  v13(v8, v19);

  v21(v15);
  v29 = sub_1A3DC5DDC;
  v30 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1A3C2E0D0;
  v28 = &block_descriptor_6_0;
  v16 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v6, v16);
  _Block_release(v16);
  v12(v6, v4);
  v13(v8, v14);
}

void sub_1A3DC5DC0()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 32);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v4;
  }
}

Swift::Void __swiftcall ThreadSafeObservatory.signalChange(_:)(Swift::UInt64 a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1A3DC60BC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  v15 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3DC59A0(0, &qword_1EB12B1C0, v12);
  sub_1A3C9AB70(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t ThreadSafeObservatory.deinit()
{

  return v0;
}

uint64_t ThreadSafeObservatory.__deallocating_deinit()
{
  ThreadSafeObservatory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3DC61B4()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return sub_1A3C33378(v1);
}

uint64_t sub_1A3DC61C0()
{
  sub_1A3C33378(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t static PhotosComposedObservable.makeThreadUnsafeObservatory()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ThreadUnsafeObservatory();
  swift_getMetatypeMetadata();
  v0 = sub_1A524C714();
  v2 = v1;
  v3 = swift_allocObject();
  ThreadUnsafeObservatory.init(name:)(v0, v2);
  return v3;
}

void static PhotosComposedObservable.makeThreadSafeObservatory()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ThreadSafeObservatory();
  swift_getMetatypeMetadata();
  v0 = sub_1A524C714();
  v2 = v1;
  swift_allocObject();
  ThreadSafeObservatory.init(name:)(v0, v2);
}

uint64_t sub_1A3DC63D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A3DC65A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3DC661C()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  return v0[16];
}

id sub_1A3DC6680(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
    v5 = *(v1 + 48);

    return [v5 signalChange_];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 296))(v3);
  }
}

uint64_t sub_1A3DC67B0()
{
  swift_getKeyPath();
  (*(*v0 + 288))();
}

uint64_t sub_1A3DC6824@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 288))();

  *a2 = v3[3];
}

uint64_t sub_1A3DC68D8(uint64_t a1)
{
  if (v1[3] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 296))(v4);
  }
}

uint64_t sub_1A3DC69EC()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3DC6A58@<X0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 288))();

  *a2 = v3[2];

  return swift_unknownObjectRetain();
}

uint64_t sub_1A3DC6AE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v3;
  (*(*v4 + 296))(KeyPath, sub_1A3DC7C5C, v7, MEMORY[0x1E69E7CA8] + 8);
}

void sub_1A3DC6BD8(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = [objc_allocWithZone(off_1E77217D8) init];
  sub_1A5241604();
  type metadata accessor for SharedLibraryStatusViewModel();
  v3 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  sub_1A3C62B88(v3);
}

uint64_t sub_1A3DC6E58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 280))(result);
  }

  return result;
}

id sub_1A3DC6EEC()
{
  swift_getKeyPath();
  ((*v0)[36])();

  v1 = *(*v0[3] + 584);

  v3 = v1(v2);

  if ([v3 hasPreview])
  {
    v4 = PXSharedLibraryPreviewBannerConfiguration(v3);

    return v4;
  }

  else
  {

    return 0;
  }
}

void sub_1A3DC6FE0()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  v1 = *(**(v0 + 24) + 248);

  v3 = v1(v2) & 1;

  if (v3 != ((*(*v0 + 144))(v4) & 1))
  {
    v5 = *(v0 + 48);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    v9[4] = sub_1A3DC72C8;
    v9[5] = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1A3DC72D4;
    v9[3] = &block_descriptor_15;
    v8 = _Block_copy(v9);

    [v5 performChanges_];
    _Block_release(v8);
  }
}

uint64_t sub_1A3DC7190(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (*(result + 16) == (a2 & 1))
    {
      *(result + 16) = a2 & 1;
      [*(result + 48) signalChange_];
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v4 + 296))(v6);
    }
  }

  return result;
}

uint64_t sub_1A3DC72D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1A3DC7358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for SharedLibraryBannerViewModel()
{
  result = qword_1EB165280;
  if (!qword_1EB165280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharedLibraryBannerViewModel.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryBannerViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SharedLibraryBannerViewModel.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore28SharedLibraryBannerViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A3DC7674()
{
  result = qword_1EB12C550;
  if (!qword_1EB12C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C550);
  }

  return result;
}

unint64_t sub_1A3DC76CC()
{
  result = qword_1EB12C558;
  if (!qword_1EB12C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C558);
  }

  return result;
}

unint64_t sub_1A3DC7724()
{
  result = qword_1EB12C560;
  if (!qword_1EB12C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C560);
  }

  return result;
}

unint64_t sub_1A3DC777C()
{
  result = qword_1EB12C568;
  if (!qword_1EB12C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C568);
  }

  return result;
}

unint64_t sub_1A3DC77D4()
{
  result = qword_1EB12C570;
  if (!qword_1EB12C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C570);
  }

  return result;
}

unint64_t sub_1A3DC78B8()
{
  result = qword_1EB126CA0;
  if (!qword_1EB126CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126CA0);
  }

  return result;
}

id sub_1A3DC7904@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  *a1 = v2;
  return v2;
}

unint64_t sub_1A3DC791C()
{
  result = qword_1EB12C580;
  if (!qword_1EB12C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12C580);
  }

  return result;
}

void sub_1A3DC7970()
{
  type metadata accessor for SharedLibraryBannerViewModel();
  sub_1A3DC7B74(&qword_1EB12C588, type metadata accessor for SharedLibraryBannerViewModel);

  sub_1A5245C54();
}

uint64_t sub_1A3DC7A04()
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

uint64_t storeEnumTagSinglePayload for PhotosCollectionPreviewPlayer.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A3DC7B38()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

uint64_t sub_1A3DC7B74(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A3DC7BBC()
{
  v1 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 24);
  return [*(v1 + 48) signalChange_];
}

uint64_t sub_1A3DC7C00()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3DC7C74@<X0>(void *a1@<X8>)
{
  result = sub_1A5248F74();
  *a1 = v3;
  return result;
}

uint64_t sub_1A3DC7CEC(uint64_t a1)
{
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3DD0F10(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A3DC7D88);
  return sub_1A5249044();
}

void sub_1A3DC7DBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3DC7E20()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1A3DC7F98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1A3DD0E90(v2, &v13 - v9, &unk_1EB128A40, sub_1A3DC7D88);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3DCF870(v10, a1, sub_1A3DC7D88);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A3DC81A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A52490F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3DC81D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v6;
  v8 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC85F0();
  v10 = *(v9 - 8);
  v36 = v9;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v39 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenerativeStoryTimelineVFXEngineView;
  sub_1A3DD0F10(v2, v8, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v34 = v7;
  v13 = swift_allocObject();
  v32 = v13;
  v33 = type metadata accessor for GenerativeStoryTimelineVFXEngineView;
  v14 = sub_1A3DCF870(v8, v13 + v12, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v40 = sub_1A3DC9A00;
  v41 = v13;
  v15 = *(v4 + 40);
  v31 = v2;
  v16 = *(*(**(v2 + v15) + 752))(v14);
  v17 = (*(v16 + 256))();
  v30[1] = v17;

  v44 = v17;
  sub_1A3DD0F10(v2, v8, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v18 = swift_allocObject();
  sub_1A3DCF870(v8, v18 + v12, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  sub_1A3DC86C4();
  v20 = v19;
  sub_1A3DC9268();
  v22 = v21;
  v23 = sub_1A3DC91B8(&qword_1EB12C5E8, sub_1A3DC86C4);
  v24 = sub_1A3DC92EC();
  sub_1A524B144();

  v25 = v31;
  LOBYTE(v44) = sub_1A3DC7E20() & 1;
  sub_1A3DD0F10(v25, v8, v35);
  v26 = swift_allocObject();
  sub_1A3DCF870(v8, v26 + v12, v33);
  v40 = v20;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v39;
  v28 = v36;
  sub_1A524B144();

  return (*(v37 + 8))(v27, v28);
}

void sub_1A3DC85F0()
{
  if (!qword_1EB12C590)
  {
    sub_1A3DC86C4();
    sub_1A3DC9268();
    sub_1A3DC91B8(&qword_1EB12C5E8, sub_1A3DC86C4);
    sub_1A3DC92EC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12C590);
    }
  }
}

void sub_1A3DC86C4()
{
  if (!qword_1EB12C598)
  {
    sub_1A3DC8898();
    sub_1A3DC8A4C();
    v0 = MEMORY[0x1E69E6720];
    sub_1A3CB68B8(255, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
    sub_1A3DC8B50();
    type metadata accessor for CGSize(255);
    sub_1A3DC91B8(&qword_1EB12C5E0, sub_1A3DC8B50);
    sub_1A3DC91B8(&qword_1EB126710, type metadata accessor for CGSize);
    swift_getOpaqueTypeConformance2();
    sub_1A3DC939C(qword_1EB1205D8, &qword_1EB126650, v0);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248414();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12C598);
    }
  }
}

void sub_1A3DC8898()
{
  if (!qword_1EB12C5A0)
  {
    sub_1A3DC8A4C();
    v0 = MEMORY[0x1E69E6720];
    sub_1A3CB68B8(255, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
    sub_1A3DC8B50();
    type metadata accessor for CGSize(255);
    sub_1A3DC91B8(&qword_1EB12C5E0, sub_1A3DC8B50);
    sub_1A3DC91B8(&qword_1EB126710, type metadata accessor for CGSize);
    swift_getOpaqueTypeConformance2();
    sub_1A3DC939C(qword_1EB1205D8, &qword_1EB126650, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12C5A0);
    }
  }
}

void sub_1A3DC8A4C()
{
  if (!qword_1EB12C5A8)
  {
    sub_1A3DC8B50();
    type metadata accessor for CGSize(255);
    sub_1A3DC91B8(&qword_1EB12C5E0, sub_1A3DC8B50);
    sub_1A3DC91B8(&qword_1EB126710, type metadata accessor for CGSize);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12C5A8);
    }
  }
}

void sub_1A3DC8B50()
{
  if (!qword_1EB12C5B0)
  {
    sub_1A3DC8BE4(255);
    sub_1A3DC91B8(&qword_1EB12C5D8, sub_1A3DC8BE4);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C5B0);
    }
  }
}

void sub_1A3DC8C18()
{
  if (!qword_1EB12C5C0)
  {
    sub_1A3DC8CD0();
    sub_1A3DC7DBC(255, &qword_1EB12C5C8, sub_1A3DC8F78, MEMORY[0x1E69E6720]);
    sub_1A3DC9040(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12C5C0);
    }
  }
}

void sub_1A3DC8CD0()
{
  if (!qword_1EB123D60)
  {
    sub_1A3DC8D30();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D60);
    }
  }
}

void sub_1A3DC8D30()
{
  if (!qword_1EB122348)
  {
    sub_1A3DC8D94();
    sub_1A3DC8E0C();
    v0 = sub_1A52498C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122348);
    }
  }
}

void sub_1A3DC8D94()
{
  if (!qword_1EB123640)
  {
    sub_1A3DC8FF0(255, &qword_1EB123C38);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123640);
    }
  }
}

unint64_t sub_1A3DC8E0C()
{
  result = qword_1EB123648;
  if (!qword_1EB123648)
  {
    sub_1A3DC8D94();
    sub_1A3DC8E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123648);
  }

  return result;
}

unint64_t sub_1A3DC8E8C()
{
  result = qword_1EB123C40;
  if (!qword_1EB123C40)
  {
    sub_1A3DC8FF0(255, &qword_1EB123C38);
    sub_1A3DC8F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C40);
  }

  return result;
}

unint64_t sub_1A3DC8F24()
{
  result = qword_1EB127428;
  if (!qword_1EB127428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127428);
  }

  return result;
}

void sub_1A3DC8F78()
{
  if (!qword_1EB1238F0)
  {
    sub_1A3DC8FF0(255, &qword_1EB124230);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1238F0);
    }
  }
}

void sub_1A3DC8FF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A5248804();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A3DC9094()
{
  if (!qword_1EB121D58)
  {
    type metadata accessor for GenerativeStoryVFXViewRepresentable(255);
    sub_1A5241144();
    sub_1A3DC91B8(&qword_1EB125288, type metadata accessor for GenerativeStoryVFXViewRepresentable);
    sub_1A3DC91B8(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D58);
    }
  }
}

uint64_t sub_1A3DC91B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3DC9200()
{
  result = qword_1EB1205C8;
  if (!qword_1EB1205C8)
  {
    sub_1A3C52C70(255, &qword_1EB126660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1205C8);
  }

  return result;
}

void sub_1A3DC9268()
{
  if (!qword_1EB120C00)
  {
    sub_1A3CB68B8(255, &qword_1EB120C10, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120C00);
    }
  }
}

unint64_t sub_1A3DC92EC()
{
  result = qword_1EB120BF8;
  if (!qword_1EB120BF8)
  {
    sub_1A3DC9268();
    sub_1A3DC939C(&qword_1EB120C08, &qword_1EB120C10, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120BF8);
  }

  return result;
}

uint64_t sub_1A3DC939C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3CB68B8(255, a2, &qword_1EB126660, 0x1E6978630, a3);
    sub_1A3DC9200();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3DC9414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v6 = *(v5 - 8);
  v56 = (v5 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = v7;
  v60 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52482C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC8B50();
  v55 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3DC8A4C();
  v16 = *(v15 - 8);
  v57 = v15;
  v58 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = sub_1A524BC74();
  v14[1] = v18;
  sub_1A3DD05F4();
  v20 = v14 + *(v19 + 44);
  v47 = a2;
  sub_1A3DC9A18(a2, v20);
  v54 = a1;
  sub_1A52482B4();
  v62 = v21;
  v63 = v22;
  v53 = *(v9 + 16);
  v46 = v8;
  v53(v11, a1, v8);
  v52 = type metadata accessor for GenerativeStoryTimelineVFXEngineView;
  v23 = v60;
  sub_1A3DD0F10(a2, v60, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v24 = *(v9 + 80);
  v25 = (v24 + 16) & ~v24;
  v26 = *(v51 + 80);
  v27 = (v10 + v26 + v25) & ~v26;
  v51 = v24 | v26;
  v28 = swift_allocObject();
  v49 = *(v9 + 32);
  v49(v28 + v25, v11, v8);
  v48 = type metadata accessor for GenerativeStoryTimelineVFXEngineView;
  sub_1A3DCF870(v23, v28 + v27, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  type metadata accessor for CGSize(0);
  v45 = v29;
  v44 = sub_1A3DC91B8(&qword_1EB12C5E0, sub_1A3DC8B50);
  v43 = sub_1A3DC91B8(&qword_1EB126710, type metadata accessor for CGSize);
  v30 = v55;
  sub_1A524B154();

  v31 = sub_1A3DD0F78(v14, sub_1A3DC8B50);
  v32 = v47;
  v56 = (*(**(v47 + v56[10]) + 1440))(v31);
  v66 = v56;
  v33 = v11;
  v34 = v11;
  v35 = v46;
  v53(v34, v54, v46);
  v36 = v60;
  sub_1A3DD0F10(v32, v60, v52);
  v37 = swift_allocObject();
  v49(v37 + v25, v33, v35);
  sub_1A3DCF870(v36, v37 + v27, v48);
  v38 = MEMORY[0x1E69E6720];
  sub_1A3CB68B8(0, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, MEMORY[0x1E69E6720]);
  v62 = v30;
  v63 = v45;
  v64 = v44;
  v65 = v43;
  swift_getOpaqueTypeConformance2();
  sub_1A3DC939C(qword_1EB1205D8, &qword_1EB126650, v38);
  v39 = v57;
  v40 = v61;
  sub_1A524B144();

  return (*(v58 + 8))(v40, v39);
}

uint64_t sub_1A3DC9A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1A5249CA4();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v79 - v10;
  sub_1A3DC9074(0);
  v97 = v11;
  v95 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC9040(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v79 - v16;
  v17 = sub_1A524B394();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52482B4();
  v22 = v21;
  v24 = v23;
  (*(v18 + 104))(v20, *MEMORY[0x1E69814D8], v17);
  sub_1A524B4B4();
  v102 = sub_1A524B474();

  v101 = sub_1A524BC74();
  v94 = v25;
  if (v22 > v24)
  {
    v24 = v22;
  }

  sub_1A524BC74();
  sub_1A52481F4();
  v99 = v126;
  v90 = v128;
  v93 = v130;
  v92 = v131;
  v100 = v127;
  v123 = v127;
  v91 = v129;
  v122 = v129;
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
  v28 = [ObjCClassFromMetadata sharedInstance];
  v29 = [v28 isMemoryCreationTextAnimationEnabled];

  v82 = a1;
  v81 = v4;
  if (v29)
  {
    v30 = (a1 + *(v4 + 40));
    v80 = v5;
    v32 = v30[1];
    v109 = *v30;
    v31 = v109;
    v110 = v32;
    sub_1A3DC7DBC(0, &qword_1EB121C48, type metadata accessor for TimelineTextEngineModel, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    PXDisplayCollectionDetailedCountsMake(v103);
    v34 = v33;
    v109 = v31;
    v110 = v32;
    v35 = sub_1A524B6A4();
    v36 = (*(*v103 + 232))(v35);

    v38 = (*(*v36 + 304))(v37);

    v109 = v31;
    v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = v80;
    v110 = v32;
    v39 = sub_1A524B6A4();
    v40 = (*(*v103 + 400))(v39);

    v41 = 0x3FF0000000000000;
    if (v40)
    {
      v41 = 0;
    }

    v88 = v41;
    v89 = v34;
    v27 = &selRef_setYearsHeadersFadeoutMinimumAlpha_;
  }

  else
  {
    v89 = 0;
    v88 = 0;
    v38 = 0.0;
  }

  v42 = [ObjCClassFromMetadata v27[107]];
  v43 = [v42 isMemoryCreationImageAnimationEnabled];

  if (v43)
  {
    v44 = v82;
    v45 = (v82 + *(v81 + 36));
    v47 = *v45;
    v46 = v45[1];
    v109 = v47;
    v110 = v46;
    sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
    v48 = sub_1A524B6A4();
    (*(*v103 + 896))(v48);

    v49 = v83;
    sub_1A5249C94();
    sub_1A3DD0F10(v44, v7, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
    v50 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v51 = swift_allocObject();
    sub_1A3DCF870(v7, v51 + v50, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
    v52 = v84;
    v53 = v49;
    v54 = v87;
    (*(v84 + 16))(v86, v49, v87);
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1A3DD0FD8;
    *(v55 + 24) = v51;
    sub_1A3DC9094();
    v82 = v56;
    sub_1A3DC91B8(&qword_1EB1221E0, MEMORY[0x1E697C998]);
    v57 = type metadata accessor for GenerativeStoryVFXViewRepresentable(255);
    v58 = sub_1A5241144();
    v59 = sub_1A3DC91B8(&qword_1EB125288, type metadata accessor for GenerativeStoryVFXViewRepresentable);
    v60 = sub_1A3DC91B8(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    v109 = v57;
    v110 = v58;
    v111 = v59;
    v112 = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v85;
    sub_1A5248144();
    (*(v52 + 8))(v53, v54);
    v62 = v95;
    v63 = v96;
    v64 = v97;
    (*(v95 + 32))(v96, v61, v97);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v97;
    v63 = v96;
    v62 = v95;
  }

  (*(v62 + 56))(v63, v65, 1, v64);
  v66 = v24 * 0.15;
  v67 = v98;
  sub_1A3CC0224(v63, v98);
  *&v103 = v102;
  *(&v103 + 1) = v101;
  v68 = v94;
  *&v104 = v94;
  *(&v104 + 1) = v99;
  LOBYTE(v105) = v100;
  *(&v105 + 1) = *v125;
  DWORD1(v105) = *&v125[3];
  v69 = v90;
  *(&v105 + 1) = v90;
  v70 = v91;
  LOBYTE(v106) = v91;
  *(&v106 + 1) = *v124;
  DWORD1(v106) = *&v124[3];
  v71 = v93;
  *(&v106 + 1) = v93;
  v72 = v92;
  *&v107 = v92;
  *(&v107 + 1) = v66;
  v108 = 0;
  v73 = v105;
  v74 = v106;
  v75 = v107;
  *(a2 + 80) = 0;
  *(a2 + 48) = v74;
  *(a2 + 64) = v75;
  v76 = v103;
  *(a2 + 16) = v104;
  *(a2 + 32) = v73;
  *a2 = v76;
  *(a2 + 88) = v89;
  *(a2 + 96) = 0;
  *(a2 + 104) = v38;
  *(a2 + 112) = v88;
  sub_1A3DC8C18();
  sub_1A3CC0224(v67, a2 + *(v77 + 64));
  sub_1A3DD0F10(&v103, &v109, sub_1A3DC8CD0);
  sub_1A3DD0F78(v63, sub_1A3DC9040);
  sub_1A3DD0F78(v67, sub_1A3DC9040);

  v109 = v102;
  v110 = v101;
  v111 = v68;
  v112 = v99;
  v113 = v100;
  *v114 = *v125;
  *&v114[3] = *&v125[3];
  v115 = v69;
  v116 = v70;
  *v117 = *v124;
  *&v117[3] = *&v124[3];
  v118 = v71;
  v119 = v72;
  v120 = v66;
  v121 = 0;
  return sub_1A3DD0E30(&v109, sub_1A3DC8CD0);
}

uint64_t sub_1A3DCA62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a1;
  v24[2] = a3;
  v4 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v5 = v4 - 8;
  v24[0] = *(v4 - 8);
  v6 = *(v24[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1A5241144();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeStoryVFXViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a2 + *(v5 + 44));
  v16 = *v14;
  v15 = v14[1];
  v24[4] = v16;
  v24[5] = v15;
  sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v17 = v24[3];
  v18 = sub_1A3C4A780();
  v19 = sub_1A5246F24();
  (*(*(v19 - 8) + 16))(v13, v18, v19);
  *&v13[*(v11 + 20)] = v17;
  if (qword_1EB157A00 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB157A08;
  sub_1A5246E74();
  sub_1A3DD108C();
  sub_1A5248124();
  sub_1A3DD0F10(a2, v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v21 = (*(v24[0] + 80) + 16) & ~*(v24[0] + 80);
  v22 = swift_allocObject();
  sub_1A3DCF870(v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  sub_1A3DC91B8(&qword_1EB125288, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  sub_1A3DC91B8(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  sub_1A524B154();

  (*(v8 + 8))(v10, v7);
  return sub_1A3DD0E30(v13, type metadata accessor for GenerativeStoryVFXViewRepresentable);
}

uint64_t sub_1A3DCA9FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5249A94();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC();
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v72 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v72 - v13;
  v14 = sub_1A5242D14();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  sub_1A52482B4();
  v22 = v21;
  sub_1A52482B4();
  v23 = MEMORY[0x1E69C21F0];
  if (v22 >= v24)
  {
    v25 = a2;
    v78 = 0;
  }

  else
  {
    type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
    v25 = a2;
    sub_1A3D61808(v20);
    (*(v15 + 104))(v17, *v23, v14);
    sub_1A3DC91B8(&qword_1EB129148, MEMORY[0x1E69C2218]);
    v26 = sub_1A524C594();
    v27 = *(v15 + 8);
    v27(v17, v14);
    v27(v20, v14);
    v78 = v26 ^ 1;
  }

  sub_1A52482B4();
  v29 = v28;
  sub_1A52482B4();
  if (v29 >= v30)
  {
    type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
    sub_1A3D61808(v20);
    (*(v15 + 104))(v17, *MEMORY[0x1E69C21F0], v14);
    v79 = sub_1A5242D04();
    v31 = *(v15 + 8);
    v31(v17, v14);
    v31(v20, v14);
  }

  else
  {
    v79 = 1;
  }

  v76 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v77 = v25;
  v32 = v83;
  sub_1A3DC7F98(v83);
  v34 = v80;
  v33 = v81;
  v35 = v82;
  (*(v80 + 104))(v82, *MEMORY[0x1E697FF38], v81);
  (*(v34 + 56))(v35, 0, 1, v33);
  v36 = *(v75 + 48);
  sub_1A3DD0F10(v32, v7, sub_1A3DC7D88);
  sub_1A3DD0F10(v35, &v7[v36], sub_1A3DC7D88);
  v37 = *(v34 + 48);
  if (v37(v7, 1, v33) == 1)
  {
    sub_1A3DD0E30(v35, sub_1A3DC7D88);
    sub_1A3DD0E30(v32, sub_1A3DC7D88);
    v38 = v37(&v7[v36], 1, v33);
    if (v38 == 1)
    {
      v39 = sub_1A3DC7D88;
    }

    else
    {
      v39 = sub_1A3DD0DCC;
    }

    if (v38 == 1)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v41 = v74;
    sub_1A3DD0F10(v7, v74, sub_1A3DC7D88);
    if (v37(&v7[v36], 1, v33) == 1)
    {
      sub_1A3DD0E30(v82, sub_1A3DC7D88);
      sub_1A3DD0E30(v83, sub_1A3DC7D88);
      (*(v34 + 8))(v41, v33);
      v40 = 0;
      v39 = sub_1A3DD0DCC;
    }

    else
    {
      v42 = v73;
      (*(v34 + 32))(v73, &v7[v36], v33);
      sub_1A3DC91B8(&qword_1EB127B70, MEMORY[0x1E697FF50]);
      v40 = sub_1A524C594();
      v43 = *(v34 + 8);
      v43(v42, v33);
      sub_1A3DD0E30(v82, sub_1A3DC7D88);
      sub_1A3DD0E30(v83, sub_1A3DC7D88);
      v43(v41, v33);
      v39 = sub_1A3DC7D88;
    }
  }

  sub_1A3DD0E30(v7, v39);
  v44 = v78;
  v45 = v78 ^ 1;
  v46 = v76;
  v47 = v77;
  v48 = (v77 + *(v76 + 36));
  v50 = *v48;
  v49 = v48[1];
  v85 = v50;
  v86 = v49;
  v51 = MEMORY[0x1E6981790];
  sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v52 = v84;
  sub_1A52482B4();
  v53 = v44 & 1;
  v54 = v79;
  (*(*v52 + 1832))(v53, v79 & 1, v40 & 1);

  v55 = (v47 + *(v46 + 40));
  v56 = *v55;
  v57 = v55[1];
  v85 = *v55;
  v86 = v57;
  sub_1A3DC7DBC(0, &qword_1EB121C48, type metadata accessor for TimelineTextEngineModel, v51);
  sub_1A524B6A4();
  (*(*v84 + 384))(v40 & 1u & v45);

  sub_1A52482B4();
  v59 = v58;
  v61 = v60;
  v62 = *sub_1A4731C3C();
  v63 = sub_1A4731C18();
  v64 = *v63;
  if (v54)
  {
    v65 = *v63;
  }

  else
  {
    v65 = *sub_1A4731C24();
    v61 = v59;
  }

  v66 = v61 * v62 / v64 * v65;
  v85 = v56;
  v86 = v57;
  v67 = sub_1A524B6A4();
  v68 = (*(*v84 + 232))(v67);

  v70.n128_f64[0] = v66 * 0.5;
  (*(*v68 + 312))(v69, v70);
}

void sub_1A3DCB2D4(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A52482C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  if (!*a2)
  {
    return;
  }

  v17 = *a1;
  if (!*a1)
  {
    v21 = v16;
    goto LABEL_8;
  }

  sub_1A3C52C70(0, &qword_1EB126660);
  v29 = v16;
  v18 = v17;
  v19 = sub_1A524DBF4();

  if ((v19 & 1) == 0)
  {
LABEL_8:
    v22 = sub_1A524CCB4();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    (*(v10 + 16))(&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v9);
    sub_1A3DD0F10(v31, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryTimelineVFXEngineView);
    sub_1A524CC54();
    v23 = v16;
    v24 = sub_1A524CC44();
    v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v26 = (v11 + *(v32 + 80) + v25) & ~*(v32 + 80);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    *(v27 + 2) = v24;
    *(v27 + 3) = v28;
    *(v27 + 4) = v23;
    (*(v10 + 32))(&v27[v25], v12, v9);
    sub_1A3DCF870(v8, &v27[v26], type metadata accessor for GenerativeStoryTimelineVFXEngineView);
    sub_1A3DCC930(0, 0, v15, &unk_1A52FE770, v27);

    return;
  }

  v20 = v29;
}

uint64_t sub_1A3DCB62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v6[21] = *(v8 + 64);
  v6[22] = swift_task_alloc();
  v9 = sub_1A5249234();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  sub_1A524CC54();
  v6[26] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v6[27] = v11;
  v6[28] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A3DCB788, v11, v10);
}

uint64_t sub_1A3DCB788()
{
  sub_1A52482B4();
  v2 = v1;
  v4 = v3;
  v5 = sub_1A4618B94();
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1A3DCB84C;
  v7 = *(v0 + 128);

  return static StoryKeyAssetLayoutUtilities.frameForKeyAsset(_:viewportSize:timeout:)(v7, v2, v4, v5);
}

uint64_t sub_1A3DCB84C(double a1, double a2, double a3, double a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[30] = a1;
  v6[31] = a2;
  v6[32] = a3;
  v6[33] = a4;

  v7 = *(v5 + 28);
  v8 = *(v5 + 27);

  return MEMORY[0x1EEE6DFA0](sub_1A3DCB970, v8, v7);
}

void sub_1A3DCB970()
{
  v1 = v0[18];
  v2 = *v1;
  if (*(v1 + 8) != 1)
  {
    v4 = v0[24];
    v3 = v0[25];
    v5 = v0[23];

    sub_1A524D254();
    v6 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v2, 0);
    (*(v4 + 8))(v3, v5);
  }

  sub_1A524DAA4();
}

uint64_t sub_1A3DCBDA0()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1A3DCC11C;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1A3DCBEBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A3DCBEBC()
{
  v20 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);

  v5 = *(v0 + 104);
  v6 = (v4 + *(v2 + 36));
  v8 = *v6;
  v7 = v6[1];
  *(v0 + 48) = v8;
  *(v0 + 56) = v7;
  v9 = MEMORY[0x1E6981790];
  sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v10 = *(v0 + 112);
  v19 = v5;
  sub_1A3DD0F10(v4, v1, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1A3DCF870(v1, v12 + v11, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  (*(*v10 + 1800))(&v19, sub_1A3DD0C94, v12);

  v13 = (v4 + *(v2 + 40));
  v15 = *v13;
  v14 = v13[1];
  *(v0 + 64) = v15;
  *(v0 + 72) = v14;
  sub_1A3DC7DBC(0, &qword_1EB121C48, type metadata accessor for TimelineTextEngineModel, v9);
  v16 = sub_1A524B6A4();
  (*(**(v0 + 120) + 896))(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A3DCC11C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DCC1A8(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_1A3DD0F10(a1, v5, type metadata accessor for GenerativeStoryTimelineVFXEngineView);
  sub_1A524CC54();

  v11 = sub_1A524CC44();
  v12 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v11;
  v13[3] = v14;
  v13[4] = v10;
  sub_1A3DCF870(v5, v13 + v12, type metadata accessor for GenerativeStoryTimelineVFXEngineView);

  sub_1A3D4D930(0, 0, v8, &unk_1A52FE780, v13);
}

uint64_t sub_1A3DCC3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1A524E5E4();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  sub_1A524CC54();
  v5[13] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[14] = v8;
  v5[15] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A3DCC4BC, v8, v7);
}

uint64_t sub_1A3DCC4BC()
{
  v1 = [objc_opt_self() sharedState];
  v2 = [v1 isLaunchedForTesting];

  if (v2 && (sub_1A3C52C70(0, &qword_1EB126860), v3 = [swift_getObjCClassFromMetadata() sharedInstance], v4 = objc_msgSend(v3, sel_forceShowPlaybackInTests), v3, (v4 & 1) == 0))
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 1824))(Strong);
    }

    v10 = v0[1];

    return v10();
  }

  else
  {
    v5 = v0[9];
    v6 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
    (*(v5 + *(v6 + 44)))();
    sub_1A524EBB4();
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_1A3DCC6D8;

    return (sub_1A3DCFAB0)(2000000000000000000, 0, 0, 0, 1);
  }
}

uint64_t sub_1A3DCC6D8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[12];
  v5 = v2[11];
  v6 = v2[10];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_1A3DD15B8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[14];
    v8 = v3[15];
    v9 = sub_1A3DCC86C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1A3DCC86C()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 1824))(Strong);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A3DCC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0F10(a3, v10, sub_1A3DB4F20);
  v11 = sub_1A524CCB4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1A3DD0E30(v10, sub_1A3DB4F20);
  }

  else
  {
    sub_1A524CCA4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1A524CBC4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1A524C744() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1A3DD0E30(a3, sub_1A3DB4F20);

      return v20;
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

  sub_1A3DD0E30(a3, sub_1A3DB4F20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_1A3DCCBE4(void *a1)
{
  v2 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3DB4F20();
  *&result = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  if (*a1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

double sub_1A3DCCDE8(uint64_t a1, void *a2)
{
  type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);

  return sub_1A3DCCBE4(a2);
}

uint64_t sub_1A3DCCE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A3DCCE78, 0, 0);
}

uint64_t sub_1A3DCCE78()
{
  v1 = v0[5];
  v2 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v0[7] = v2;
  v3 = *(v1 + *(v2 + 32));
  v0[8] = v3;
  v4 = *v3;
  v0[9] = *(*v3 + 752);
  v0[10] = (v4 + 752) & 0xFFFFFFFFFFFFLL | 0x1661000000000000;
  v0[11] = sub_1A524CC54();
  v0[12] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3DCCF5C, v6, v5);
}

uint64_t sub_1A3DCCF5C()
{
  v1 = v0[9];

  v3 = v1(v2);
  v0[13] = v3;
  v7 = (*(*v3 + 432) + **(*v3 + 432));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1A3DCD0AC;
  v5 = v0[6];

  return v7(v5);
}

uint64_t sub_1A3DCD0AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1A3DCD3D8;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_1A3DCD1DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A3DCD1DC()
{
  *(v0 + 136) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3DCD268, v2, v1);
}

uint64_t sub_1A3DCD268()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = (v2 + *(v1 + 36));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v0[18] = v0[4];

  return MEMORY[0x1EEE6DFA0](sub_1A3DCD338, 0, 0);
}

uint64_t sub_1A3DCD338()
{
  (*(**(v0 + 144) + 1792))(*(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A3DCD3D8()
{
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 120);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "[TimelineVFXEngineDataSource] Unable to load assets %@", v7, 0xCu);
    sub_1A3CB65E4(v8);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1A3DCD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0F10(a3, v11, sub_1A3DB4F20);
  v12 = sub_1A524CCB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A3DD0E30(v11, sub_1A3DB4F20);
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
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
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

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1A3DCD7FC()
{
  type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  sub_1A3DC7DBC(0, &qword_1EB121C48, type metadata accessor for TimelineTextEngineModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v0 = sub_1A3DC7E20();
  (*(*v2 + 824))(v0 & 1);
}

uint64_t sub_1A3DCD930@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v11 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v12 = v11[5];
  *(a6 + v12) = swift_getKeyPath();
  v13 = MEMORY[0x1E697DCB8];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = v11[6];
  *(a6 + v14) = swift_getKeyPath();
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v13);
  swift_storeEnumTagMultiPayload();
  v15 = a6 + v11[7];
  *v15 = a1;
  *(v15 + 8) = a2 & 1;
  *(a6 + v11[8]) = a3;
  v16 = (a6 + v11[9]);
  type metadata accessor for TimelineVFXEngineController();
  sub_1A524B694();
  *v16 = v24;
  v16[1] = v25;
  v17 = (a6 + v11[10]);
  type metadata accessor for TimelineTextEngineModel(0);
  sub_1A524B694();
  *v17 = v24;
  v17[1] = v25;
  v18 = (a6 + v11[11]);
  *v18 = a4;
  v18[1] = a5;
  v19 = v11[12];
  v20 = sub_1A3C4A780();
  v21 = sub_1A5246F24();
  return (*(*(v21 - 8) + 16))(a6 + v19, v20, v21);
}

NSObject *sub_1A3DCDB30()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A524BF64();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeStoryVFXViewRepresentable(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(type metadata accessor for GenerativeStoryVFXView(0)) initWithFrame:0 options:{0.0, 0.0, 0.0, 0.0}];
  v13 = *sub_1A3E09ED8();
  v34 = v1;
  sub_1A3DD0F10(v1, v11, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_1A3DCF870(v11, v16 + v14, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  *(v16 + v15) = v12;
  aBlock[4] = sub_1A3DCF8D8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_16;
  v17 = _Block_copy(aBlock);
  v18 = v13;
  v19 = v12;
  sub_1A524BF14();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1A3DC91B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3DC91B8(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v4, v17);
  _Block_release(v17);

  (*(v36 + 8))(v4, v2);
  (*(v5 + 8))(v7, v35);

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [ObjCClassFromMetadata sharedInstance];
  v25 = [v24 vfxQualityResolution];

  v26 = v21;
  if (v25)
  {
    v27 = [ObjCClassFromMetadata sharedInstance];
    v28 = [v27 vfxQualityResolution];

    if ((v28 - 1) <= 3)
    {
      [v21 setContentScaleFactor:dbl_1A52FE790[(v28 - 1)]];
    }

    v29 = v21;
    v26 = sub_1A5246F04();
    v30 = sub_1A524D224();

    if (os_log_type_enabled(v26, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      [v29 contentScaleFactor];
      *(v31 + 4) = v32;
      _os_log_impl(&dword_1A3C1C000, v26, v30, "[VFXView] Resolution Override – contentScaleFactor: %f", v31, 0xCu);
      MEMORY[0x1A590EEC0](v31, -1, -1);
    }
  }

  return v21;
}

uint64_t sub_1A3DCE098(uint64_t a1, void *a2)
{
  v69 = a2;
  v3 = sub_1A524BEE4();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A524BF64();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GenerativeStoryVFXViewRepresentable(0);
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v7;
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246EA4();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1A5246E54();
  v10 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v58 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  sub_1A5246E84();
  sub_1A5246E24();
  v21 = sub_1A5246E84();
  v22 = sub_1A524D654();
  v23 = sub_1A524DEC4();
  v68 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v21, v22, v25, "VFXView preheat: VFXWorld.prepare", "", v24, 2u);
    v26 = v24;
    v20 = v68;
    MEMORY[0x1A590EEC0](v26, -1, -1);
  }

  (*(v10 + 16))(v17, v20, v70);
  sub_1A5246ED4();
  swift_allocObject();
  v27 = sub_1A5246EC4();
  [*(*(a1 + *(v6 + 20)) + 24) prepareForRenderer:v69 progressHandler:0];
  sub_1A5246E84();
  sub_1A5246E24();
  v28 = sub_1A5246E84();
  v29 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v28, v29, v31, "Preheat - world.prepare()", "Preheat – world.prepare() complete", v30, 2u);
    MEMORY[0x1A590EEC0](v30, -1, -1);
  }

  v32 = *(v10 + 8);
  v32(v14, v70);
  sub_1A3E1FFCC();
  v33 = sub_1A5246E84();
  v34 = v58;
  sub_1A5246EB4();
  v35 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v36 = v55;
    sub_1A5246EE4();

    v38 = v56;
    v37 = v57;
    if ((*(v56 + 88))(v36, v57) == *MEMORY[0x1E69E93E8])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v36, v37);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, v35, v41, "VFXView preheat: VFXWorld.prepare", v39, v40, 2u);
    MEMORY[0x1A590EEC0](v40, -1, -1);
  }

  v58 = v27;
  v42 = v70;
  v32(v34, v70);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v43 = sub_1A524D474();
  v44 = v61;
  sub_1A3DD0F10(a1, v61, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  v45 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v46 = swift_allocObject();
  v47 = v69;
  *(v46 + 16) = v69;
  sub_1A3DCF870(v44, v46 + v45, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  aBlock[4] = sub_1A3DD0478;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_50;
  v48 = _Block_copy(aBlock);
  v49 = v47;

  v50 = v62;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3DC91B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3DC91B8(&qword_1EB12B1B0, sub_1A3C38394);
  v51 = v64;
  v52 = v67;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v50, v51, v48);
  _Block_release(v48);

  (*(v66 + 8))(v51, v52);
  (*(v63 + 8))(v50, v65);
  return (v32)(v68, v42);
}

void sub_1A3DCE8D0()
{
  sub_1A3DC91B8(&qword_1EB125298, type metadata accessor for GenerativeStoryVFXViewRepresentable);

  JUMPOUT(0x1A58FF620);
}

void sub_1A3DCE94C()
{
  sub_1A3DC91B8(&qword_1EB125298, type metadata accessor for GenerativeStoryVFXViewRepresentable);

  JUMPOUT(0x1A58FF630);
}

uint64_t sub_1A3DCEA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DC91B8(&qword_1EB125290, type metadata accessor for GenerativeStoryVFXViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3DCEAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3DC91B8(&qword_1EB125290, type metadata accessor for GenerativeStoryVFXViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3DCEB4C()
{
  sub_1A3DC91B8(&qword_1EB125290, type metadata accessor for GenerativeStoryVFXViewRepresentable);
  sub_1A52496F4();
  __break(1u);
}

id sub_1A3DCEBA4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_logger;
  v5 = sub_1A3C4A780();
  v6 = sub_1A5246F24();
  (*(*(v6 - 8) + 16))(&v1[v4], v5, v6);
  *&v1[OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_observers] = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);
  if (v7)
  {
    type metadata accessor for GenerativeStoryVFXViewObservers();
    v8 = swift_allocObject();
    v9 = v7;
    sub_1A3DCF340(v9);
    v10 = OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_observers;
    swift_beginAccess();
    *&v9[v10] = v8;

    sub_1A3DCEF2C();
  }

  return v7;
}

char *sub_1A3DCECE4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_logger;
  v13 = sub_1A3C4A780();
  v14 = sub_1A5246F24();
  (*(*(v14 - 8) + 16))(&v5[v12], v13, v14);
  *&v5[OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_observers] = 0;
  if (a1)
  {
    v15 = sub_1A524C3D4();
  }

  else
  {
    v15 = 0;
  }

  v21.receiver = v5;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_options_, v15, a2, a3, a4, a5);

  type metadata accessor for GenerativeStoryVFXViewObservers();
  v17 = swift_allocObject();
  v18 = v16;
  sub_1A3DCF340(v18);
  v19 = OBJC_IVAR____TtC12PhotosUICore22GenerativeStoryVFXView_observers;
  swift_beginAccess();
  *&v18[v19] = v17;

  sub_1A3DCEF2C();

  return v18;
}

uint64_t sub_1A3DCEEEC(void *a1)
{
  v2 = swift_allocObject();
  sub_1A3DCF340(a1);
  return v2;
}

void sub_1A3DCEF2C()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata sharedInstance];
  v3 = [v2 vfxQualityFrameRate];

  if (v3)
  {
    v4 = [ObjCClassFromMetadata sharedInstance];
    v5 = [v4 vfxQualityFrameRate];

    if ((v5 - 1) > 4)
    {
      v6 = 60;
    }

    else
    {
      v6 = qword_1A52FE7D0[(v5 - 1)];
    }

    [v0 setPreferredFramesPerSecond_];
    v18 = v0;
    oslog = sub_1A5246F04();
    v11 = sub_1A524D224();
    if (!os_log_type_enabled(oslog, v11))
    {

      v13 = v18;
      goto LABEL_15;
    }

    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = [v18 preferredFramesPerSecond];

    _os_log_impl(&dword_1A3C1C000, oslog, v11, "[VFXView] Override Thermal State Observation – Frame Rate: %ld", v12, 0xCu);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 processInfo];
    v9 = [v8 thermalState];

    if (v9 > 3)
    {
      v10 = 60;
    }

    else
    {
      v10 = qword_1A52FE7B0[v9];
    }

    [v0 setPreferredFramesPerSecond_];
    oslog = v0;
    v14 = sub_1A5246F04();
    v15 = sub_1A524D224();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      swift_slowAlloc();
      *v16 = 134218242;
      *(v16 + 4) = [oslog preferredFramesPerSecond];

      *(v16 + 12) = 2080;
      v17 = [v7 processInfo];
      [v17 thermalState];

      type metadata accessor for ThermalState(0);
      sub_1A524C714();
      sub_1A3C2EF94();
    }
  }

  v13 = oslog;
LABEL_15:
}

uint64_t sub_1A3DCF340(void *a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = [objc_opt_self() defaultCenter];
  v5 = *MEMORY[0x1E696A7E0];
  v9[4] = sub_1A3DCFFB4;
  v9[5] = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1A3C7C848;
  v9[3] = &block_descriptor_21;
  v6 = _Block_copy(v9);

  v7 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v6];

  _Block_release(v6);
  *(v1 + 16) = v7;

  return v1;
}

uint64_t sub_1A3DCF498(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  aBlock[4] = sub_1A3DD0428;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_44_0;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3DC91B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3DC91B8(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A3DCF76C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3DCF7E4()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB157A08 = result;
  return result;
}

uint64_t sub_1A3DCF870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DCF8D8()
{
  v1 = *(type metadata accessor for GenerativeStoryVFXViewRepresentable(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A3DCE098(v0 + v2, v3);
}

uint64_t sub_1A3DCF964(uint64_t a1, void (*a2)(char *))
{
  sub_1A3DD108C();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3DD1128(0, &qword_1EB1245C8, MEMORY[0x1E697BF58]);
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 64) == v7)
  {
    (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
    a2(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    return (*(v6 + 8))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3DCFAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1A524E5D4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1A3DCFBB0, 0, 0);
}

uint64_t sub_1A3DCFBB0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A524E5E4();
  v5 = sub_1A3DC91B8(&unk_1EB1264D0, MEMORY[0x1E69E8820]);
  sub_1A524EB94();
  sub_1A3DC91B8(&qword_1EB1264E0, MEMORY[0x1E69E87E8]);
  sub_1A524E5F4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DCFD40;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1A3DCFD40()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A3DCFEFC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1A3DCFEFC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A3DD0090()
{
  sub_1A3C488BC(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3DC7DBC(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3DC7DBC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C488BC(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GenerativeStoryCreationViewModel(319);
          if (v4 <= 0x3F)
          {
            sub_1A3DC7DBC(319, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A3DC7DBC(319, &qword_1EB121C48, type metadata accessor for TimelineTextEngineModel, MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A3C3637C();
                if (v7 <= 0x3F)
                {
                  sub_1A5246F24();
                  if (v8 <= 0x3F)
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
  }
}

uint64_t sub_1A3DD02EC()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineVFXEngineController();
    if (v2 <= 0x3F)
    {
      result = sub_1A5246E94();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A3DD0390()
{
  result = sub_1A5246F24();
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

void sub_1A3DD0428()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3DCEF2C();
  }
}

id sub_1A3DD0478()
{
  v1 = type metadata accessor for GenerativeStoryVFXViewRepresentable(0);
  v2 = *(*(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)) + *(v1 + 20)) + 24);
  v3 = *(v0 + 16);

  return [v3 setWorld_];
}

uint64_t sub_1A3DD04F4()
{
  v2 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A3DCCE58(v5, v6, v7, v0 + v3, v4);
}

void sub_1A3DD05F4()
{
  if (!qword_1EB12C5F0)
  {
    sub_1A3DC8BE4(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C5F0);
    }
  }
}

uint64_t sub_1A3DD065C()
{
  v1 = *(sub_1A52482C4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A3DCA9FC(v0 + v2, v5);
}

uint64_t objectdestroy_67Tm()
{
  v1 = sub_1A52482C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v6 = *(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + ((v3 + v4 + v6) & ~v6);
  sub_1A3C53AEC(*v7, *(v7 + 8));
  v8 = v5[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5249A94();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v7 + v8, 1, v9))
    {
      (*(v10 + 8))(v7 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v5[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v5[7]), *(v7 + v5[7] + 8));

  v13 = v5[12];
  v14 = sub_1A5246F24();
  (*(*(v14 - 8) + 8))(v7 + v13, v14);

  return swift_deallocObject();
}

void sub_1A3DD0A7C(void **a1, void **a2)
{
  v5 = *(sub_1A52482C4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1A3DCB2D4(a1, a2, v2 + v6, v9);
}

uint64_t sub_1A3DD0B60()
{
  v2 = *(sub_1A52482C4() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 32);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1A3D60150;

  return sub_1A3DCB62C(v8, v9, v10, v7, v0 + v3, v0 + v6);
}

uint64_t sub_1A3DD0C94()
{
  v1 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A3DCC1A8(v2);
}

uint64_t sub_1A3DD0CF4()
{
  v2 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A3DCC3C8(v5, v6, v7, v4, v0 + v3);
}

void sub_1A3DD0DCC()
{
  if (!qword_1EB127B50)
  {
    sub_1A3DC7D88(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB127B50);
    }
  }
}

uint64_t sub_1A3DD0E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3DD0E90(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3DC7DBC(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3DD0F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3DD0F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3DD0FF0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GenerativeStoryTimelineVFXEngineView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1A3DD108C()
{
  if (!qword_1EB1245D0)
  {
    sub_1A5249DF4();
    sub_1A3DC91B8(&qword_1EB1221A0, MEMORY[0x1E69807B0]);
    v0 = sub_1A5248134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1245D0);
    }
  }
}

void sub_1A3DD1128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5249CA4();
    sub_1A3DC9094();
    v8 = v7;
    v9 = sub_1A3DC91B8(&qword_1EB1221E0, MEMORY[0x1E697C998]);
    v10 = a3(a1, v6, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A3C53AEC(*v2, *(v2 + 8));
  v3 = v1[5];
  sub_1A3DC7DBC(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[6];
  sub_1A3DC7DBC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  v8 = v1[12];
  v9 = sub_1A5246F24();
  (*(*(v9 - 8) + 8))(v2 + v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1A3DD14B4()
{
  type metadata accessor for GenerativeStoryTimelineVFXEngineView(0);
  sub_1A3DC7DBC(0, &qword_1EB121C30, type metadata accessor for TimelineVFXEngineController, MEMORY[0x1E6981790]);
  v0 = sub_1A524B6A4();
  (*(*v2 + 1816))(v0);
}

uint64_t LemonadeShelfIdentifier.slug.getter()
{
  LemonadeShelfIdentifier.rawValue.getter();
  v0 = sub_1A524C7A4();
  v1 = sub_1A524C7A4();
  v2 = __OFSUB__(v0, v1);
  result = v0 - v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1A3DD1E84(result);
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = MEMORY[0x1A5907AC0](v4, v6, v8, v10);

    return v11;
  }

  return result;
}

PhotosUICore::LemonadeShelfIdentifier_optional __swiftcall LemonadeShelfIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524EB24();

  v5 = 0;
  v6 = 6;
  switch(v3)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v5 = 1;
      goto LABEL_18;
    case 2:
      v5 = 2;
      goto LABEL_18;
    case 3:
      v5 = 3;
      goto LABEL_18;
    case 4:
      v5 = 4;
      goto LABEL_18;
    case 5:
      v5 = 5;
LABEL_18:
      v6 = v5;
      break;
    case 6:
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    default:
      v6 = 24;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1A3DD18A8()
{
  result = 0x6C415F666C656853;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0x6F425F666C656853;
      break;
    case 3:
      result = 0x76455F666C656853;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6D495F666C656853;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x654D5F666C656853;
      break;
    case 9:
    case 0x11:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x65505F666C656853;
      break;
    case 0xB:
    case 0x17:
      result = 0xD000000000000015;
      break;
    case 0xC:
      result = 0xD000000000000010;
      break;
    case 0xD:
      result = 0x6C505F666C656853;
      break;
    case 0xE:
      result = 0x65535F666C656853;
      break;
    case 0xF:
    case 0x12:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD00000000000001ELL;
      break;
    case 0x13:
      result = 0xD000000000000011;
      break;
    case 0x14:
      result = 0x72545F666C656853;
      break;
    case 0x15:
      result = 0x74555F666C656853;
      break;
    case 0x16:
      result = 0x61575F666C656853;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A3DD1B84()
{
  sub_1A524EC94();
  LemonadeShelfIdentifier.rawValue.getter();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3DD1BEC()
{
  LemonadeShelfIdentifier.rawValue.getter();
  sub_1A524C794();
}

uint64_t static LemonadeShelfIdentifierHelper.photosChallengeShelfSlug.getter()
{
  v0 = sub_1A524C7A4();
  v1 = sub_1A524C7A4();
  v2 = __OFSUB__(v0, v1);
  result = v0 - v1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1A3DD1E84(result);
    v5 = MEMORY[0x1A5907AC0](v4);

    return v5;
  }

  return result;
}

id LemonadeShelfIdentifierHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeShelfIdentifierHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeShelfIdentifierHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeShelfIdentifierHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeShelfIdentifierHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A3DD1E84(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1A524C7C4();

    return sub_1A524C8E4();
  }

  return result;
}

id sub_1A3DD1F44()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester____lazy_storage___searchCompleter;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester____lazy_storage___searchCompleter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester____lazy_storage___searchCompleter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E696F250]) init];
    [v4 setDelegate_];
    [v4 setResultTypes_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1A3DD209C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return a3(MEMORY[0x1E69E7CC0]);
  }

  v7 = (v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input);
  v8 = *(v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input);
  v9 = *(v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input + 8);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1A3DD2224(v8, v9);
  v11 = sub_1A3DD1F44();
  [v11 setRegion_];

  v12 = *(v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester____lazy_storage___searchCompleter);
  v13 = sub_1A524C634();
  [v12 setQueryFragment_];

  v14 = (v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_completion);
  v15 = *(v4 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_completion);
  *v14 = a3;
  v14[1] = a4;

  return sub_1A3C33378(v15);
}

uint64_t sub_1A3DD2224(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1A3DD2268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E696F260]) init];
  v10 = sub_1A524C634();
  [v9 setNaturalLanguageQuery_];

  [v9 setRegion_];
  [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;
  v13[4] = sub_1A3DD2EF0;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1A3D54680;
  v13[3] = &block_descriptor_17;
  _Block_copy(v13);
  v12 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3DD2404(void *a1)
{
  v2 = v1;
  v3 = [a1 results];
  sub_1A3C52C70(0, &unk_1EB12C620);
  v4 = sub_1A524CA34();

  v18 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for PXMapKitCompleterSuggestion(0);
      sub_1A42D4A90(v8);
      MEMORY[0x1A5907D70]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      ++v6;
      if (v9 == i)
      {
        v10 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (v10 >> 62)
  {
    v11 = sub_1A524E2B4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = (v2 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input);
  v13 = *(v2 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input + 8);
  if (v11)
  {
    if (v13)
    {
      v14 = v12[2];
      v15 = *v12;
      sub_1A3DA276C(*v12, v13);

      sub_1A3DD2224(v15, v13);
      v16 = sub_1A3DD2758(v10);

      v14(v16);
    }
  }

  else if (v13)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void *sub_1A3DD2758(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1A524E2B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1A3DD2BBC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1A59097F0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1A3DD2BBC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for PXMapKitCompleterSuggestion(0);
        v15 = &off_1F1703A98;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1A3C34460(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1A3DD2BBC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for PXMapKitCompleterSuggestion(0);
        v15 = &off_1F1703A98;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1A3C34460(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1A3DD29F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXMapKitSuggester();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A3DD2A8C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3DD3240();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3DD3298();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A3DD2BBC(void *a1, int64_t a2, char a3)
{
  result = sub_1A3DD2BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A3DD2BDC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A3DD3240();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3DD3298();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A3DD2D0C()
{
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore17PXMapKitSuggester_input + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A3DD2EF0(void *a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  if (a1)
  {
    v24 = a1;
    v4 = [v24 mapItems];
    sub_1A3C52C70(0, &qword_1EB12C690);
    v5 = sub_1A524CA34();

    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v3; v6; i = v3)
    {
      v7 = MEMORY[0x1E69E7CC0];
      v3 = 4;
      while (1)
      {
        v8 = v3 - 4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1A59097F0](v3 - 4, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v3);
        }

        v10 = v9;
        v11 = v3 - 3;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = type metadata accessor for PXMapKitLocalSearchSuggestion(0);
        v13 = v10;
        v14 = sub_1A42D510C(v13);
        if (v14)
        {
          v15 = v14;
          v27 = v12;
          v28 = &off_1F1703AC0;

          *&v26 = v15;
          sub_1A3C34460(&v26, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1A3DD2A8C(0, v7[2] + 1, 1, v7);
          }

          v17 = v7[2];
          v16 = v7[3];
          if (v17 >= v16 >> 1)
          {
            v7 = sub_1A3DD2A8C((v16 > 1), v17 + 1, 1, v7);
          }

          v7[2] = v17 + 1;
          sub_1A3C34460(v29, &v7[5 * v17 + 4]);
        }

        else
        {
        }

        ++v3;
        if (v11 == v6)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v6 = sub_1A524E2B4();
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_27:

    i(v7);
  }

  else
  {
    v19 = sub_1A524D244();
    v20 = sub_1A475874C();
    swift_beginAccess();
    v21 = *v20;
    if (os_log_type_enabled(*v20, v19))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      swift_slowAlloc();
      *v23 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        sub_1A524EBE4();
      }

      sub_1A3C2EF94();
    }

    (v3)(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1A3DD3240()
{
  if (!qword_1EB12C698)
  {
    sub_1A3DD3298();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C698);
    }
  }
}

unint64_t sub_1A3DD3298()
{
  result = qword_1EB12C6A0;
  if (!qword_1EB12C6A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12C6A0);
  }

  return result;
}

void sub_1A3DD334C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A3DD33CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a3;
  v9[4] = a2;
  v9[7] = a1;
  v9[5] = *(*v3 + *off_1E77210A0 + 16);
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  v9[1] = v4;
  v9[2] = v5;
  MEMORY[0x1EEE9AC00](v4);
  v9[6] = v9 - v6;
  v7 = sub_1A524DF24();
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A5245D94();
}

uint64_t sub_1A3DD37C8()
{
  type metadata accessor for SocialGroupCropManager();
  v0 = swift_allocObject();
  result = sub_1A3DD3C28();
  qword_1EB1EAF08 = v0;
  return result;
}

uint64_t sub_1A3DD3804()
{
  v0 = swift_allocObject();
  sub_1A3DD3C28();
  return v0;
}

uint64_t *sub_1A3DD383C()
{
  if (qword_1EB169900 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EAF08;
}

uint64_t sub_1A3DD388C()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3DD8A70(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A7DC(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB169930 = result;
  return result;
}

id sub_1A3DD3B10()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = type metadata accessor for SocialGroupCropManager.ChangeObserverDelegateProxy();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    v6 = *(v0 + 48);
    *(v0 + 48) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_1A3DD3BB0()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  result = sub_1A524DEE4();
  qword_1EB169910 = result;
  return result;
}

uint64_t sub_1A3DD3C28()
{
  v1 = sub_1A524D464();
  v24 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v7 = sub_1A3C52C70(0, &qword_1EB12B180);
  v27 = "earchResponse8@NSError16";
  v28 = v7;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v26 = sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1A3DD8A70(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  v25 = v9;
  sub_1A3C2A7DC(&qword_1EB126E30, &qword_1EB126E40, v8);
  sub_1A524E224();
  v10 = *MEMORY[0x1E69E8090];
  v11 = v2 + 104;
  v12 = *(v2 + 104);
  v23[1] = v11;
  v12(v4, v10, v1);
  v13 = sub_1A524D4B4();
  v14 = v29;
  *(v29 + 24) = v13;
  *(v14 + 32) = MEMORY[0x1E69E7CC8];
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A524E224();
  v12(v4, v10, v24);
  v15 = sub_1A524D4B4();
  v16 = v29;
  *(v29 + 40) = v15;
  *(v16 + 48) = 0;
  v17 = [objc_opt_self() defaultCenter];
  v18 = *MEMORY[0x1E69DDAD8];
  v19 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A3DD407C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C7C848;
  aBlock[3] = &block_descriptor_18;
  v20 = _Block_copy(aBlock);

  v21 = [v17 addObserverForName:v18 object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1A3DD407C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1A3DDBD50;
    *(v3 + 24) = v1;
    aBlock[4] = sub_1A3DDBE10;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C71444;
    aBlock[3] = &block_descriptor_138;
    v4 = _Block_copy(aBlock);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      sub_1A524D264();
      if (qword_1EB169908 == -1)
      {
LABEL_4:
        sub_1A5246DF4();
      }
    }

    swift_once();
    goto LABEL_4;
  }

  return result;
}

id sub_1A3DD4244(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3DD4704(a1, &v39);
  if (v39)
  {
    v42 = v39;
    v43 = v41 & 1;
    v44 = *(&v39 + 1);
    v45 = v40;
    v46 = 0;
    v8 = v39;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v37 = *v3;
  v38 = a2;
  v9 = *a1;
  type metadata accessor for SocialGroupCropFetchRequest();
  v10 = a1[4];
  v11 = objc_opt_self();
  v36 = v10;
  v34 = v10;
  v12 = v9;
  v13 = sub_1A433B9EC(a1, [v11 defaultManager]);
  v14 = *(v13 + 64);
  v15 = v3[5];
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v14;
  v35 = v14;
  v16[4] = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A3DD8544;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1A3DDBE10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_68;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = [v12 photoLibrary];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_1A3DD3B10();
  [v20 px:v21 registerChangeObserver:?];

  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = v12;
  v23[3] = v22;
  v23[4] = v13;
  v23[5] = v38;
  v23[6] = a3;
  v23[7] = v37;
  v24 = swift_allocObject();
  v24[2] = v13;
  v24[3] = v12;
  v24[4] = v38;
  v24[5] = a3;
  v24[6] = sub_1A3DD85D0;
  v24[7] = v23;
  v24[8] = v37;
  if (v36)
  {
    v25 = v12;
    v26 = v34;
    swift_retain_n();
    swift_retain_n();
    v27 = v25;
    v28 = v26;

    if (sub_1A433B95C())
    {
    }

    else
    {
      swift_beginAccess();
      v32 = *(v13 + 80);
      *(v13 + 80) = v36;
      v33 = v28;

      sub_1A3DD5374(v33, v27, v22, v13, v38, a3, v37);
    }
  }

  else
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1A3DD85E0;
    *(v29 + 24) = v24;
    v30 = v12;
    swift_retain_n();
    swift_retain_n();
    v31 = v30;

    sub_1A3DD57B8(a1, v29);
  }

  sub_1A3DDB284(&v39, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult);
  return v35;
}

uint64_t sub_1A3DD4704@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1A3DEF448();
  v8 = v7;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    goto LABEL_7;
  }

  v10 = v6;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = *(v2 + 24);
  v12 = *a1;
  v44 = *(a1 + 32);
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v10;
  *(v13 + 32) = v8;
  v14 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v14;
  *(v13 + 72) = *(a1 + 32);
  *(v13 + 80) = &v26;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A3DDBBC0;
  *(v15 + 24) = v13;
  *&v40 = sub_1A3DDBE10;
  *(&v40 + 1) = v15;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_1A3C71444;
  *(&v39 + 1) = &block_descriptor_131;
  v16 = _Block_copy(&aBlock);

  v17 = v12;
  sub_1A3DD89FC(&v44, &v32, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, sub_1A3C4B7E8);

  dispatch_sync(v11, v16);
  _Block_release(v16);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v34 = v28;
    v35 = v29;
    v36 = v30;
    v37 = v31;
    v32 = v26;
    v33 = v27;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    aBlock = v26;
    v39 = v27;
    sub_1A3DD89FC(&v32, &v25, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult, MEMORY[0x1E69E6720], sub_1A3DDBD94);
    sub_1A3DDB284(&aBlock, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult);

    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v24 = v37;
LABEL_7:
    *a2 = v19;
    a2[1] = v20;
    a2[2] = v21;
    a2[3] = v22;
    a2[4] = v23;
    a2[5] = v24;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DD49C4(uint64_t a1)
{
  v2 = v1;
  v13 = 0;
  v4 = *(v1 + 40);
  v5 = swift_allocObject();
  v5[2] = &v13;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1A3DD4CC0;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_9_0;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  if (v13)
  {

    sub_1A433BBE0();
  }

  isEscapingClosureAtFileLocation = sub_1A524D264();
  if (qword_1EB169908 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = qword_1EB169910;
  if (os_log_type_enabled(qword_1EB169910, isEscapingClosureAtFileLocation))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v9, isEscapingClosureAtFileLocation, "Canceled social group request ID: %ld", v10, 0xCu);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }
}

uint64_t sub_1A3DD4BFC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 32);
  if (*(v6 + 16) && (v7 = sub_1A3CAB9BC(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  *a1 = v9;

  swift_beginAccess();
  sub_1A3DD67AC(a3);
  swift_endAccess();
}

uint64_t sub_1A3DD4CCC(void *a1)
{
  sub_1A3DDBD94(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A3FF1438(a1);
  *(inited + 40) = v3;
  v4 = sub_1A3DD76A0(inited);
  swift_setDeallocating();
  sub_1A3C651B8(inited + 32);
  sub_1A3DD4D80(v4);
}

uint64_t sub_1A3DD4D80(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = result;
    v6 = MEMORY[0x1E69E7CC0];
    v3 = swift_allocObject();
    v3[2] = v2;
    v3[3] = v1;
    v3[4] = &v6;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1A3DD8008;
    *(v4 + 24) = v3;
    aBlock[4] = sub_1A3DDBE10;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C71444;
    aBlock[3] = &block_descriptor_37;
    _Block_copy(aBlock);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3DD5374(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a4;
  v14[4] = a2;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;

  v15 = a2;

  sub_1A3DD547C(a1, v15, v14);
}

uint64_t sub_1A3DD547C(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB169928 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EB169930;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = sub_1A3DD8AD4;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = v3;
  aBlock[4] = sub_1A3DD9124;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_94;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  v17 = a1;
  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1A3DD8A70(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A7DC(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_1A3DD57B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB169928 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB169930;
  v12 = *a1;
  v23 = *(a1 + 32);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 56) = sub_1A3D78DD0;
  *(v13 + 64) = a2;
  *(v13 + 72) = v2;
  aBlock[4] = sub_1A3DD87C4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_84_0;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  sub_1A3DD89FC(&v23, &v21, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, sub_1A3C4B7E8);

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3DD8A70(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A7DC(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v11, v8, v15);
  _Block_release(v15);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v20);
}

uint64_t sub_1A3DD5B38(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1A524C3E4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_1A3DD5BE4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(a1 + 72);
  v35 = *(a1 + 56);
  v36 = v5;
  v37 = *(a1 + 88);
  v6 = v4;
  v7 = sub_1A3DEF448();
  v9 = v8;
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = v7;
    sub_1A3DD4704(&v35, v34);
    v12 = v1[3];
    v13 = v35;
    v38 = v37;
    v14 = swift_allocObject();
    *(v14 + 16) = v2;
    *(v14 + 24) = v11;
    *(v14 + 32) = v9;
    v15 = v34[3];
    *(v14 + 72) = v34[2];
    *(v14 + 88) = v15;
    v16 = v34[5];
    *(v14 + 104) = v34[4];
    *(v14 + 120) = v16;
    v17 = v34[1];
    *(v14 + 40) = v34[0];
    *(v14 + 56) = v17;
    v18 = *a1;
    *(v14 + 152) = *(a1 + 16);
    *(v14 + 136) = v18;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    *(v14 + 216) = *(a1 + 80);
    *(v14 + 200) = v21;
    *(v14 + 184) = v20;
    *(v14 + 168) = v19;
    v22 = v35;
    v23 = v37;
    *(v14 + 248) = v36;
    *(v14 + 232) = v22;
    *(v14 + 264) = v23;
    *(v14 + 272) = v6;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1A3DDB528;
    *(v24 + 24) = v14;
    aBlock[4] = sub_1A3DDBE10;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C71444;
    aBlock[3] = &block_descriptor_121;
    v25 = _Block_copy(aBlock);

    sub_1A3DD89FC(v34, v32, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult, MEMORY[0x1E69E6720], sub_1A3DDBD94);
    sub_1A3DDB3CC(a1, v32);
    v26 = v13;
    sub_1A3DD89FC(&v38, v32, &qword_1EB126650, &qword_1EB126660, 0x1E6978630, sub_1A3C4B7E8);

    dispatch_sync(v12, v25);
    sub_1A3DDB284(v34, &unk_1EB12C6B0, &type metadata for SocialGroupCropFetchResult);
    _Block_release(v25);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v28 = sub_1A524D264();
  if (qword_1EB169908 != -1)
  {
    swift_once();
  }

  result = os_log_type_enabled(qword_1EB169910, v28);
  if (result)
  {
    v29 = v35;
    v30 = swift_slowAlloc();
    *&v34[0] = swift_slowAlloc();
    *v30 = 136315138;
    v31 = [v29 localIdentifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  return result;
}

uint64_t sub_1A3DD5FF0(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v28[8] = a1[2];
  v28[9] = v2;
  v3 = a1[5];
  v28[10] = a1[4];
  v28[11] = v3;
  v4 = a1[1];
  v28[6] = *a1;
  v28[7] = v4;
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a2 + 32); ; i += 6)
  {
    v8 = i[3];
    v9 = i[1];
    v24 = i[2];
    v25 = v8;
    v10 = i[3];
    v11 = i[5];
    v26 = i[4];
    v27 = v11;
    v12 = i[1];
    v23[0] = *i;
    v23[1] = v12;
    v19 = v24;
    v20 = v10;
    v13 = i[5];
    v21 = v26;
    v22 = v13;
    v17 = v23[0];
    v18 = v9;
    sub_1A3DDB3CC(v23, &v16);
    sub_1A3DDBB6C();
    v14 = sub_1A524C594();
    v28[2] = v19;
    v28[3] = v20;
    v28[4] = v21;
    v28[5] = v22;
    v28[0] = v17;
    v28[1] = v18;
    sub_1A3DDB378(v28);
    if (v14)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void (*sub_1A3DD60F8(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1A3DD72B0(v6, a2, a3);
  return sub_1A3DB3FF0;
}

uint64_t sub_1A3DD6180@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A3DD73BC(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 96 * a1);
    v9 = v8[5];
    v10 = v7 - 1;
    a2[2] = v8[4];
    a2[3] = v9;
    v11 = v8[7];
    a2[4] = v8[6];
    a2[5] = v11;
    v12 = v8[3];
    *a2 = v8[2];
    a2[1] = v12;
    result = memmove(v8 + 2, v8 + 8, 96 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A3DD6228(void *a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = [a1 updatedObjectIDs];
  sub_1A3C52C70(0, &qword_1EB126AF0);
  sub_1A3DD77FC();
  v5 = sub_1A524CF44();

  v13 = MEMORY[0x1E69E7CD0];
  v6 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v5;
  v7[4] = v2;
  v7[5] = &v13;
  v7[6] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A3DD7864;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1A3DDBE10;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_19;
  v9 = _Block_copy(aBlock);

  v10 = v2;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3DD6500()
{

  return swift_deallocClassInstance();
}

char *sub_1A3DD6558(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3DDBD94(0, &qword_1EB120340, &type metadata for SocialGroupCropFetchResult, MEMORY[0x1E69E6F90]);
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

char *sub_1A3DD6690(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3DDBD94(0, &qword_1EB1261E0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1A3DD67AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A3CAB9BC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3DD6D34();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_1A3CB1208(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_1A3DD6834(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3DD84DC();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1A524EC84();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A3DD6A98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A3DD8450();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A3DD6D34()
{
  v1 = v0;
  sub_1A3DD84DC();
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
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A3DD6E84()
{
  v1 = v0;
  sub_1A3DD8450();
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
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
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
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
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

unint64_t sub_1A3DD6FE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A3CAB9BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A3DD6834(v14, a3 & 1);
      result = sub_1A3CAB9BC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A3DD6D34();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1A3DD7134(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A3DD6A98(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A3DD6E84();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

void (*sub_1A3DD72B0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1A3DD766C(v7);
  v7[9] = sub_1A3DD73D0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A3DD735C;
}

void sub_1A3DD735C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t **(*sub_1A3DD73D0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **result, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1A3C5DCA4(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A3DD6E84();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A3DD6A98(v18, a4 & 1);
    v13 = sub_1A3C5DCA4(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1A3DD7528;
}

uint64_t **sub_1A3DD7528(uint64_t **result, char a2)
{
  v2 = *result;
  v3 = **result;
  LOBYTE(v4) = *(*result + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*result)[5])
    {
LABEL_9:
      *(v6[7] + 8 * v5) = v3;
      goto LABEL_14;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v6[2] = v4;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_1A3C651B8(*(v13 + 48) + 16 * v12);
      sub_1A3D74B38(v12, v13);
    }

LABEL_14:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = v2[4];
  v6 = *v2[3];
  if (v4)
  {
    goto LABEL_9;
  }

  v15 = v2[1];
  v14 = v2[2];
  v6[(v5 >> 6) + 8] |= 1 << v5;
  v16 = (v6[6] + 16 * v5);
  *v16 = v15;
  v16[1] = v14;
  *(v6[7] + 8 * v5) = v3;
  v17 = v6[2];
  v11 = __OFADD__(v17, 1);
  v4 = v17 + 1;
  if (!v11)
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A3DD766C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A3DD7694;
}

uint64_t sub_1A3DD76A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3D3EE34();
    sub_1A524E3D4();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1A3DD77FC()
{
  result = qword_1EB126AE0;
  if (!qword_1EB126AE0)
  {
    sub_1A3C52C70(255, &qword_1EB126AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126AE0);
  }

  return result;
}

uint64_t sub_1A3DD7E78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1A3DD7EC0(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_12PhotosUICore22SocialGroupCropManagerC0cdeF5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A3DD7F28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A3DD7F7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1A3DD7FD8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1A3DD8450()
{
  if (!qword_1EB120438)
  {
    sub_1A3DDBD94(255, &qword_1EB120CC0, &type metadata for SocialGroupCropFetchResult, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120438);
    }
  }
}

void sub_1A3DD84DC()
{
  if (!qword_1EB120418)
  {
    type metadata accessor for SocialGroupCropFetchRequest();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120418);
    }
  }
}

uint64_t sub_1A3DD8544()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_1A3DD6FE8(v3, v1, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v6;
  return swift_endAccess();
}

void sub_1A3DD85E0(void *a1)
{
  v2 = v1;
  v4 = v1[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[6];
  if ((sub_1A433B95C() & 1) == 0)
  {
    if (a1)
    {
      swift_beginAccess();
      v8 = *(v4 + 80);
      *(v4 + 80) = a1;
      v9 = a1;

      v7(v9);
    }

    else
    {
      v10 = sub_1A524D244();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v10))
      {
        v11 = swift_slowAlloc();
        v13[0] = swift_slowAlloc();
        *v11 = 136315138;
        v12 = [v5 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      v13[0] = 1;
      memset(&v13[1], 0, 24);
      v14 = 1;
      v6(v13);
    }
  }
}

void sub_1A3DD87C4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = [v2 photoLibrary];
  if (v3)
  {
    v4 = v3;
    v10 = [v3 librarySpecificFetchOptions];

    [v10 setFetchLimit_];
    v5 = [objc_opt_self() fetchKeyAssetForSocialGroup:v2 createIfNeeded:1 options:v10];
    v6 = [v5 firstObject];
    if (!v6)
    {
      v7 = sub_1A524D244();
      if (qword_1EB169908 != -1)
      {
        swift_once();
      }

      if (os_log_type_enabled(qword_1EB169910, v7))
      {
        v8 = swift_slowAlloc();
        swift_slowAlloc();
        *v8 = 136315138;
        v9 = [v2 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    v1(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A3DD89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A3DD8A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3DD8AD4(void *a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    if ((sub_1A433B95C() & 1) == 0)
    {
      if ([a1 count] < 2)
      {
        v31 = sub_1A524D244();
        if (qword_1EB169908 != -1)
        {
          swift_once();
        }

        if (os_log_type_enabled(qword_1EB169910, v31))
        {
          v32 = a1;
          v33 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v33 = 136315394;
          v34 = [v5 localIdentifier];
          sub_1A524C674();

          sub_1A3C2EF94();
        }

        aBlock = 0u;
        v41 = 0u;
        LOBYTE(v42) = 1;
        v6(&aBlock);
      }

      else
      {
        swift_beginAccess();
        v10 = *(v4 + 88);
        *(v4 + 88) = a1;

        v11 = *v9;
        v12 = a1;
        v13 = *(v4 + 32);
        v14 = *(v4 + 40);
        v15 = *(v4 + 16);
        v16 = [v15 localIdentifier];
        v17 = sub_1A524C674();
        v19 = v18;

        swift_beginAccess();
        v20 = *(v4 + 80);
        if (v20)
        {
          v37 = v11;
          v38 = v17;
          v21 = v6;
          v39 = v7;
          v22 = objc_allocWithZone(MEMORY[0x1E6978868]);
          v23 = v20;
          v24 = [v22 init];
          [v24 setDeliveryMode_];
          [v24 setSynchronous_];
          [v24 setNetworkAccessAllowed_];
          [v24 setAllowSecondaryDegradedImage_];
          [v24 setResizeMode_];
          [v24 setLoadingMode_];
          if (qword_1EB169928 != -1)
          {
            swift_once();
          }

          [v24 setResultHandlerQueue_];
          v25 = [objc_opt_self() defaultManager];
          v26 = swift_allocObject();
          swift_weakInit();
          v27 = swift_allocObject();
          v27[2] = v26;
          v27[3] = v4;
          v27[4] = v21;
          v27[5] = v39;
          v27[6] = v38;
          v27[7] = v19;
          v27[8] = v37;
          v42 = sub_1A3DD98F8;
          v43 = v27;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v41 = sub_1A3DD5B38;
          *(&v41 + 1) = &block_descriptor_101;
          v28 = _Block_copy(&aBlock);
          v29 = v24;

          v30 = [v25 requestImageForAsset:v23 targetSize:1 contentMode:v29 options:v28 resultHandler:{v13, v14}];

          _Block_release(v28);
          swift_beginAccess();
          *(v4 + 72) = v30;
          *(v4 + 76) = 0;
        }

        else
        {
          v35 = sub_1A524D244();
          if (qword_1EB169908 != -1)
          {
            swift_once();
          }

          if (os_log_type_enabled(qword_1EB169910, v35))
          {
            v36 = swift_slowAlloc();
            *&aBlock = swift_slowAlloc();
            *v36 = 136315138;
            sub_1A3C2EF94();
          }

          v44[0] = 1;
          memset(&v44[1], 0, 24);
          v45 = 1;
          v6(v44);
        }
      }
    }
  }

  return result;
}

void sub_1A3DD9124()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = &selRef_owner;
  v5 = [v2 photoLibrary];
  if (!v5)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v6 = v5;
  v47 = v3;
  v48 = v1;
  v7 = &selRef_layoutSnapshot;
  v49 = [v5 librarySpecificFetchOptions];

  v8 = objc_opt_self();
  v9 = &selRef_presentedKenBurnsAnimationCurrentRect;
  v10 = [v8 px_defaultDetectionTypes];
  if (!v10)
  {
    sub_1A3C52C70(0, &qword_1EB126610);
    sub_1A524CA34();
    v10 = sub_1A524CA14();
  }

  v11 = &selRef_setGainMapValue_;
  [v49 setIncludedDetectionTypes_];

  v12 = [objc_opt_self() fetchPersonsInSocialGroup:v2 option:v49];
  v13 = [v12 fetchedObjects];
  if (v13)
  {
    v14 = v13;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    v15 = sub_1A524CA34();

    if (v15 >> 62)
    {
LABEL_23:
      v16 = sub_1A524E2B4();
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_7:
        v51 = v16;
        v46 = v12;
        v17 = [v2 *(v4 + 3256)];
        if (!v17)
        {
LABEL_37:
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = [v17 v7[70]];

        [v19 setIncludeTorsoAndFaceDetectionData_];
        v20 = [v8 v9[328]];
        if (!v20)
        {
          sub_1A3C52C70(0, &qword_1EB126610);
          sub_1A524CA34();
          v20 = sub_1A524CA14();
        }

        [v19 v11[302]];

        sub_1A3DDBD94(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1A52F9790;
        v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v9 = sub_1A524C634();
        v7 = [v22 initWithKey:v9 ascending:1];

        *(v21 + 32) = v7;
        sub_1A3C52C70(0, &qword_1EB126B60);
        v23 = sub_1A524CA14();

        v45 = v19;
        [v19 setSortDescriptors_];

        v55 = MEMORY[0x1E69E7CC0];
        v53 = v15 & 0xC000000000000001;
        v52 = v15 & 0xFFFFFFFFFFFFFF8;
        v4 = 4;
        v11 = MEMORY[0x1E69E6158];
        v50 = v15;
        while (1)
        {
          v12 = (v4 - 4);
          if (v53)
          {
            v24 = MEMORY[0x1A59097F0](v4 - 4, v15);
          }

          else
          {
            if (v12 >= *(v52 + 16))
            {
              goto LABEL_22;
            }

            v24 = *(v15 + 8 * v4);
          }

          v7 = v24;
          v9 = (v4 - 3);
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

          sub_1A3DD8A70(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1A52FC9F0;
          *(v25 + 56) = v11;
          v26 = sub_1A3D710E8();
          *(v25 + 64) = v26;
          *(v25 + 32) = 0xD000000000000018;
          *(v25 + 40) = 0x80000001A53B7B60;
          v27 = v7;
          v28 = [(SEL *)v7 uuid];
          if (!v28)
          {
            break;
          }

          v29 = v28;
          v7 = sub_1A3C52C70(0, &qword_1EB126D20);
          v30 = sub_1A524C674();
          v2 = v31;

          *(v25 + 96) = v11;
          *(v25 + 104) = v26;
          *(v25 + 72) = v30;
          *(v25 + 80) = v2;
          sub_1A524D134();
          MEMORY[0x1A5907D70]();
          v8 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          ++v4;
          v15 = v50;
          v11 = MEMORY[0x1E69E6158];
          if (v9 == v51)
          {

            v32 = objc_allocWithZone(MEMORY[0x1E696AB28]);
            v33 = sub_1A524CA14();

            v34 = [v32 initWithType:2 subpredicates:v33];

            [v45 setInternalPredicate_];
            v54 = [objc_opt_self() fetchFacesInAsset:v47 options:v45];
            v48();

            v35 = v54;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_35;
      }
    }
  }

  v36 = sub_1A524D254();
  if (qword_1EB169908 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(qword_1EB169910, v36))
  {
    v37 = swift_slowAlloc();
    swift_slowAlloc();
    *v37 = 136315138;
    v38 = [v2 localIdentifier];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v39 = [v2 *(v4 + 3256)];
  if (!v39)
  {
    goto LABEL_36;
  }

  v40 = v39;
  v41 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v42 = sub_1A524CA14();
  v43 = [v41 initWithObjects:v42 photoLibrary:v40 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  v44 = v43;
  v48();

  v35 = v49;
LABEL_31:
}