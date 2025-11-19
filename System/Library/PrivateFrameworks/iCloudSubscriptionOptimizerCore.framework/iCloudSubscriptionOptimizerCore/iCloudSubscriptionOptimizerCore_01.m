void sub_275A5FA94()
{
  sub_275AE52A4();
  if (v0 <= 0x3F)
  {
    sub_275A56BFC(319, &qword_28140FF68);
    if (v1 <= 0x3F)
    {
      sub_275A5FBE4(319, &qword_281412450, type metadata accessor for LitmusInfo);
      if (v2 <= 0x3F)
      {
        sub_275A56BFC(319, &qword_28140FF48);
        if (v3 <= 0x3F)
        {
          sub_275A5FBE4(319, &qword_281412150, type metadata accessor for QuotaServerState);
          if (v4 <= 0x3F)
          {
            sub_275A56BFC(319, &qword_28140FF88);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_275A5FBE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_275AE5944();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_275A5FC60()
{
  result = sub_275AE52A4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DaemonState._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_275A5FCEC()
{
  sub_275A5FBE4(319, &qword_2814120E0, type metadata accessor for NotificationState);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_275A5FBE4(319, &qword_2814121C0, type metadata accessor for CliActivityState);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_275A5FE04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OS_dispatch_group.wait(timeDelta:)(uint64_t a1)
{
  v2 = sub_275AE55B4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_275AE5624();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_275AE5604();
  *v6 = a1 / 1000;
  (*(v3 + 104))(v6, *MEMORY[0x277D85188], v2);
  sub_275AE5614();
  LOBYTE(a1) = sub_275AE58B4();
  v15 = *(v8 + 8);
  v15(v12, v7);
  (*(v3 + 8))(v6, v2);
  v15(v14, v7);
  return a1 & 1;
}

uint64_t static HexCodec.toHex(_:)(uint64_t a1, unint64_t a2)
{
  sub_275A6012C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24700, &unk_275AE7E40);
  sub_275A604A8();
  sub_275AE5654();

  v2 = sub_275AE56F4();

  return v2;
}

uint64_t sub_275A6012C(uint64_t a1, unint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v32 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v47 = MEMORY[0x277D84F90];
    v33 = a2 >> 62;
    sub_275A850AC(0, v5 & ~(v5 >> 63), 0);
    v9 = v33;
    if (v33)
    {
      if (v33 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v34 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v47;
    v31 = &v35 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v34 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_275AE50A4();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_275AE50D4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = a1;
          v36 = BYTE2(a1);
          v37 = BYTE3(a1);
          v38 = v32;
          v39 = BYTE5(a1);
          v40 = BYTE6(a1);
          v41 = HIBYTE(a1);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v20 = v31[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_275AE50A4();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_275AE50D4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v33;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24710, &unk_275AE7E60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_275AE7E30;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_275AE56B4();
      v47 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v30 = v22;
        v27 = v23;
        sub_275A850AC((v24 > 1), v25 + 1, 1);
        v9 = v33;
        v23 = v27;
        v22 = v30;
        v8 = v47;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

LABEL_39:
  v28 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_275A604A8()
{
  result = qword_280A24708;
  if (!qword_280A24708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A24700, &unk_275AE7E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A24708);
  }

  return result;
}

uint64_t ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.getter()
{
  v1 = (v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.setter(uint64_t a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*ISOPB_SubscriptionLabelMessage.minsUntilIcloudNotificationOpened.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_275A57784;
}

Swift::Void __swiftcall ISOPB_SubscriptionLabelMessage.clearMinsUntilIcloudNotificationOpened()()
{
  v1 = v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t ISOPB_SubscriptionLabelMessage.label.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 24));
  if (v1 == 3)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t ISOPB_SubscriptionLabelMessage.label.setter(char a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*ISOPB_SubscriptionLabelMessage.label.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 3)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return sub_275A6072C;
}

iCloudSubscriptionOptimizerCore::ISOPB_SubscriptionLabelMessage::CloudNotificationActionLabel_optional __swiftcall ISOPB_SubscriptionLabelMessage.CloudNotificationActionLabel.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_275A607DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75694();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t ISOPB_SubscriptionLabelMessage.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v3 = a1 + *(result + 20);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(a1 + *(result + 24)) = 3;
  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.timestampMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 24))
  {
    return 0;
  }

  else
  {
    return *(v1 + 16);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.timestampMillis.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.timestampMillis.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 16);
  if (*(v6 + 24))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A60A7C;
}

void sub_275A60A7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v2;
  *(v7 + 24) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTimestampMillis.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 24) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTimestampMillis()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.hourOfDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 32))
  {
    return 0;
  }

  else
  {
    return *(v1 + 28);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.hourOfDay.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 28) = a1;
  *(v7 + 32) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.hourOfDay.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 28);
  if (*(v6 + 32))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return sub_275A60DF4;
}

void sub_275A60DF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 28) = v2;
  *(v7 + 32) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasHourOfDay.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 32) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearHourOfDay()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 28) = 0;
  *(v5 + 32) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 48))
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 48);
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.lastOpenedAppID24H.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 48))
  {
    v7 = *(v6 + 40);
    v8 = *(v6 + 48);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A611A0;
}

void sub_275A611A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 48);
    *(v10 + 40) = v3;
    *(v10 + 48) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 48);
    *(v21 + 40) = v3;
    *(v21 + 48) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLastOpenedAppID24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 48) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLastOpenedAppID24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 48);
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 64))
  {
    return 0;
  }

  else
  {
    return *(v1 + 56);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 56) = a1;
  *(v7 + 64) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.lastOpenedAppHour24H.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  if (*(v6 + 64))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A61588;
}

void sub_275A61588(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 56) = v2;
  *(v7 + 64) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLastOpenedAppHour24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 64) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLastOpenedAppHour24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isSleepModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 65) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isSleepModeOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 65) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOn.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 65) & 1;
  return sub_275A618F0;
}

void sub_275A618F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 65) = v4;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsSleepModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 65) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsSleepModeOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 65) = 2;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 66) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 66) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOn.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 66) & 1;
  return sub_275A61C4C;
}

void sub_275A61C4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 66) = v4;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsDoNotDisturbOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 66) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsDoNotDisturbOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 66) = 2;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDrivingModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 67) & 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.isDrivingModeOn.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 67) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOn.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 67) & 1;
  return sub_275A61FA8;
}

void sub_275A61FA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 67) = v4;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasIsDrivingModeOn.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 67) != 2;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearIsDrivingModeOn()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 67) = 2;
}

double ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 72);
  if (*(v1 + 80))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 72) = a1;
  *(v7 + 80) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationRatio24H.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  if (*(v6 + 80))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A6231C;
}

void sub_275A6231C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 72) = v2;
  *(v7 + 80) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedNotificationRatio24H.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 80) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedNotificationRatio24H()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 96))
  {
    return 0;
  }

  else
  {
    return *(v1 + 88);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 88) = a1;
  *(v7 + 96) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.googleDriveAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  if (*(v6 + 96))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62694;
}

void sub_275A62694(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 88) = v2;
  *(v7 + 96) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasGoogleDriveAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 96) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearGoogleDriveAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 88) = 0;
  *(v5 + 96) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 112))
  {
    return 0;
  }

  else
  {
    return *(v1 + 104);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 104) = a1;
  *(v7 + 112) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.googlePhotoAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  if (*(v6 + 112))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62A0C;
}

void sub_275A62A0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 104) = v2;
  *(v7 + 112) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasGooglePhotoAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 112) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearGooglePhotoAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 104) = 0;
  *(v5 + 112) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v1 + 120);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 120) = a1;
  *(v7 + 128) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.dropboxAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v6 + 128))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A62D84;
}

void sub_275A62D84(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 120) = v2;
  *(v7 + 128) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasDropboxAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 128) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearDropboxAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 120) = 0;
  *(v5 + 128) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 144))
  {
    return 0;
  }

  else
  {
    return *(v1 + 136);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 136) = a1;
  *(v7 + 144) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.cameraAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 136);
  if (*(v6 + 144))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A630FC;
}

void sub_275A630FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 136) = v2;
  *(v7 + 144) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasCameraAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 144) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearCameraAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 136) = 0;
  *(v5 + 144) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 160))
  {
    return 0;
  }

  else
  {
    return *(v1 + 152);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 152) = a1;
  *(v7 + 160) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.photosAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 152);
  if (*(v6 + 160))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63474;
}

void sub_275A63474(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 152) = v2;
  *(v7 + 160) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasPhotosAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 160) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearPhotosAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 152) = 0;
  *(v5 + 160) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 176))
  {
    return 0;
  }

  else
  {
    return *(v1 + 168);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 168) = a1;
  *(v7 + 176) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.filesAppLaunchCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 168);
  if (*(v6 + 176))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A637EC;
}

void sub_275A637EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 168) = v2;
  *(v7 + 176) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasFilesAppLaunchCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 176) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearFilesAppLaunchCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 168) = 0;
  *(v5 + 176) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 192))
  {
    return 0;
  }

  else
  {
    return *(v1 + 184);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 184) = a1;
  *(v7 + 192) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 184);
  if (*(v6 + 192))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63B64;
}

void sub_275A63B64(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 184) = v2;
  *(v7 + 192) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTotalNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 192) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTotalNotificationCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 184) = 0;
  *(v5 + 192) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 208))
  {
    return 0;
  }

  else
  {
    return *(v1 + 200);
  }
}

uint64_t ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 200) = a1;
  *(v7 + 208) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.totalOpenedNotificationCount1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 200);
  if (*(v6 + 208))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A63EDC;
}

void sub_275A63EDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 200) = v2;
  *(v7 + 208) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasTotalOpenedNotificationCount1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 208) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearTotalOpenedNotificationCount1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 200) = 0;
  *(v5 + 208) = 1;
}

double ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 216);
  if (*(v1 + 224))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 216) = a1;
  *(v7 + 224) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationRatio1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 216);
  if (*(v6 + 224))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A6425C;
}

void sub_275A6425C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 216) = v2;
  *(v7 + 224) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 224) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedNotificationRatio1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 216) = 0;
  *(v5 + 224) = 1;
}

double ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 232);
  if (*(v1 + 240))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 232) = a1;
  *(v7 + 240) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio1W.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 232);
  if (*(v6 + 240))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A645DC;
}

void sub_275A645DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 232) = v2;
  *(v7 + 240) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasOpenedIcloudNotificationRatio1W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 240) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearOpenedIcloudNotificationRatio1W()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 232) = 0;
  *(v5 + 240) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 256))
  {
    v2 = *(v1 + 248);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 256);
  *(v9 + 248) = a1;
  *(v9 + 256) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 256))
  {
    v7 = *(v6 + 248);
    v8 = *(v6 + 256);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A64988;
}

void sub_275A64988(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 256);
    *(v10 + 248) = v3;
    *(v10 + 256) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 256);
    *(v21 + 248) = v3;
    *(v21 + 256) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 256) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 256);
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 272))
  {
    v2 = *(v1 + 264);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 272);
  *(v9 + 264) = a1;
  *(v9 + 272) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop2.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 272))
  {
    v7 = *(v6 + 264);
    v8 = *(v6 + 272);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A64DA4;
}

void sub_275A64DA4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 272);
    *(v10 + 264) = v3;
    *(v10 + 272) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 272);
    *(v21 + 264) = v3;
    *(v21 + 272) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 272) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 272);
  *(v5 + 264) = 0;
  *(v5 + 272) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 288))
  {
    v2 = *(v1 + 280);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 288);
  *(v9 + 280) = a1;
  *(v9 + 288) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.notificationUsageTypeTop3.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 288))
  {
    v7 = *(v6 + 280);
    v8 = *(v6 + 288);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A651C0;
}

void sub_275A651C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 288);
    *(v10 + 280) = v3;
    *(v10 + 288) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 288);
    *(v21 + 280) = v3;
    *(v21 + 288) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 288) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearNotificationUsageTypeTop3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 288);
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 304))
  {
    v2 = *(v1 + 296);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 304);
  *(v9 + 296) = a1;
  *(v9 + 304) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop1.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 304))
  {
    v7 = *(v6 + 296);
    v8 = *(v6 + 304);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A655DC;
}

void sub_275A655DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 304);
    *(v10 + 296) = v3;
    *(v10 + 304) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 304);
    *(v21 + 296) = v3;
    *(v21 + 304) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop1.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 304) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop1()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 304);
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 320))
  {
    v2 = *(v1 + 312);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 320);
  *(v9 + 312) = a1;
  *(v9 + 320) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop2.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 320))
  {
    v7 = *(v6 + 312);
    v8 = *(v6 + 320);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A659F8;
}

void sub_275A659F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 320);
    *(v10 + 312) = v3;
    *(v10 + 320) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 320);
    *(v21 + 312) = v3;
    *(v21 + 320) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop2.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 320) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop2()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 320);
  *(v5 + 312) = 0;
  *(v5 + 320) = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  if (*(v1 + 336))
  {
    v2 = *(v1 + 328);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 336);
  *(v9 + 328) = a1;
  *(v9 + 336) = a2;
}

void (*ISOPB_SubscriptiondPetMessage.iCloudNotificationUsageTypeTop3.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  if (*(v6 + 336))
  {
    v7 = *(v6 + 328);
    v8 = *(v6 + 336);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A65E14;
}

void sub_275A65E14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_275A72BF8(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 336);
    *(v10 + 328) = v3;
    *(v10 + 336) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_275A72BF8(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 336);
    *(v21 + 328) = v3;
    *(v21 + 336) = v5;
  }

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasICloudNotificationUsageTypeTop3.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return *(v1 + 336) != 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearICloudNotificationUsageTypeTop3()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  v10 = *(v5 + 336);
  *(v5 + 328) = 0;
  *(v5 + 336) = 0;
}

double ISOPB_SubscriptiondPetMessage.mlServerScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  result = *(v1 + 344);
  if (*(v1 + 352))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.mlServerScore.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 344) = a1;
  *(v7 + 352) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.mlServerScore.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 344);
  if (*(v6 + 352))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A66204;
}

void sub_275A66204(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 344) = v2;
  *(v7 + 352) = 0;

  free(v1);
}

BOOL ISOPB_SubscriptiondPetMessage.hasMlServerScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  swift_beginAccess();
  return (*(v1 + 352) & 1) == 0;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearMlServerScore()()
{
  v1 = v0;
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = sub_275A72BF8(v5);

    *(v1 + v2) = v9;
    v5 = v9;
  }

  swift_beginAccess();
  *(v5 + 344) = 0;
  *(v5 + 352) = 1;
}

uint64_t ISOPB_SubscriptiondPetMessage.labelMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v8 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v7 + v8, v6);
  v9 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_275A744CC(v6, a1);
  }

  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v11 = a1 + *(v9 + 20);
  *v11 = 0;
  *(v11 + 8) = 1;
  *(a1 + *(v9 + 24)) = 3;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_275A5FE04(v6, &qword_280A24720, &qword_275AE7EA0);
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.labelMessage.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_275A72BF8(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_275A744CC(a1, v7);
  v16 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A74530(v7, v11 + v17);
  return swift_endAccess();
}

void (*ISOPB_SubscriptiondPetMessage.labelMessage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v16 + v17, v8);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
    v19 = v14 + *(v9 + 20);
    *v19 = 0;
    *(v19 + 8) = 1;
    *(v14 + *(v9 + 24)) = 3;
    if (v18(v8, 1, v9) != 1)
    {
      sub_275A5FE04(v8, &qword_280A24720, &qword_275AE7EA0);
    }
  }

  else
  {
    sub_275A744CC(v8, v14);
  }

  return sub_275A668E0;
}

void sub_275A668E0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_275A745A0(*(v2 + 120), *(v2 + 112));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_275A72BF8(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_275A744CC(v15, v19);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
    swift_beginAccess();
    sub_275A74530(v19, v7 + v20);
    swift_endAccess();
    sub_275A74604(v14);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_275A72BF8(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_275A744CC(v14, v19);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
    swift_beginAccess();
    sub_275A74530(v19, v24 + v33);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL ISOPB_SubscriptiondPetMessage.hasLabelMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v6 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(v5 + v6, v4);
  v7 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_275A5FE04(v4, &qword_280A24720, &qword_275AE7EA0);
  return v8;
}

Swift::Void __swiftcall ISOPB_SubscriptiondPetMessage.clearLabelMessage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v1 + v6) = v13;
    v9 = v13;
  }

  v14 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A74530(v5, v9 + v15);
  swift_endAccess();
}

void (*ISOPB_SubscriptiondPetMessage.diskStorageCapacityBytes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A66E04;
}

uint64_t sub_275A66E34(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[8])
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_275A66EA4(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = v9 + *a2;
  result = swift_beginAccess();
  *v14 = a1;
  *(v14 + 8) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.usedDiskCapacityBytes.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A67010;
}

void sub_275A6701C(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_275A72BF8(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = v10 + *a3;
  swift_beginAccess();
  *v17 = v5;
  *(v17 + 8) = 0;

  free(v4);
}

BOOL sub_275A6710C(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1;
  swift_beginAccess();
  return (*(v2 + 8) & 1) == 0;
}

uint64_t sub_275A67178(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + *a1;
  result = swift_beginAccess();
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

double ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = v7 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  result = swift_beginAccess();
  *v12 = a1;
  *(v12 + 8) = 0;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.openedIcloudNotificationRatio2W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return sub_275A67404;
}

void (*ISOPB_SubscriptiondPetMessage.trafficType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A674F0;
}

void (*ISOPB_SubscriptiondPetMessage.dailyScreenTimeSeconds.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A675E8;
}

void (*ISOPB_SubscriptiondPetMessage.avgWeeklyScreenTimeSeconds2W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A676DC;
}

void (*ISOPB_SubscriptiondPetMessage.daemonVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A677D0;
}

void (*ISOPB_SubscriptiondPetMessage.obsoleteDayOfWeek.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A678D8;
}

uint64_t sub_275A67908(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_275A67990(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_275A72BF8(v11);

    *(v5 + v8) = v15;
    v11 = v15;
  }

  v16 = (v11 + *a3);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;
}

void (*ISOPB_SubscriptiondPetMessage.deviceModelName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_275A67B20;
}

void sub_275A67B2C(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_275A72BF8(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = (v12 + *a3);
    swift_beginAccess();
    v20 = v19[1];
    *v19 = v5;
    v19[1] = v7;

    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_275A72BF8(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = (v24 + *a3);
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v5;
    v31[1] = v7;
  }

  free(v4);
}

BOOL sub_275A67C94(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t sub_275A67D00(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_275A72BF8(v7);

    *(v3 + v4) = v11;
    v7 = v11;
  }

  v12 = (v7 + *a1);
  swift_beginAccess();
  v13 = v12[1];
  *v12 = 0;
  v12[1] = 0;
}

uint64_t ISOPB_SubscriptiondPetMessage.dayOfWeek.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v2 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  if (*(v1 + v2) == 8)
  {
    return 0;
  }

  else
  {
    return *(v1 + v2);
  }
}

uint64_t sub_275A67E1C(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.dayOfWeek.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 8)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A67F78;
}

void sub_275A67F84(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_275A72BF8(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

BOOL ISOPB_SubscriptiondPetMessage.hasDayOfWeek.getter()
{
  v1 = *(v0 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v2 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  return *(v1 + v2) != 8;
}

uint64_t sub_275A680CC(uint64_t *a1, char a2)
{
  v5 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v5 + v6) = v13;
    v9 = v13;
  }

  v14 = *a1;
  result = swift_beginAccess();
  *(v9 + v14) = a2;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionMajorVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68248;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionMinorVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6833C;
}

void (*ISOPB_SubscriptiondPetMessage.osVersionPatchVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68430;
}

void (*ISOPB_SubscriptiondPetMessage.offsetMins.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68524;
}

uint64_t sub_275A68554(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  if (*(v3 + v4) == 3)
  {
    return 0;
  }

  else
  {
    return *(v3 + v4);
  }
}

void (*ISOPB_SubscriptiondPetMessage.icloudNotificationActionLabel.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6866C;
}

BOOL sub_275A68684(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 3;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudNotificationOpened.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A687C0;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A688B4;
}

void (*ISOPB_SubscriptiondPetMessage.cameraLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A689A8;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68A9C;
}

void (*ISOPB_SubscriptiondPetMessage.filesLaunchCountSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A68B90;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A68C78;
}

uint64_t sub_275A68CAC(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) & 1;
}

uint64_t sub_275A68D10(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_275A72BF8(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1 & 1;
  return result;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A68E6C;
}

void sub_275A68E78(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_275A72BF8(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v7;

  free(v4);
}

BOOL sub_275A68F5C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4) != 2;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOnSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6908C;
}

void (*ISOPB_SubscriptiondPetMessage.numNotificationsSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69184;
}

void (*ISOPB_SubscriptiondPetMessage.numOpenedNotificationsSameSlot.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69278;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastCameraAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6936C;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastPhotosAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69460;
}

void (*ISOPB_SubscriptiondPetMessage.minsSinceLastFilesAppLaunch1W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69554;
}

void (*ISOPB_SubscriptiondPetMessage.isSleepModeOnCount2W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69648;
}

void (*ISOPB_SubscriptiondPetMessage.isDoNotDisturbOnCount2W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6973C;
}

void (*ISOPB_SubscriptiondPetMessage.isDrivingModeOnCount2W.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69830;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69924;
}

void (*ISOPB_SubscriptiondPetMessage.appLaunchCount2WMax.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69A18;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69B0C;
}

void (*ISOPB_SubscriptiondPetMessage.photosLaunchCount2WMax.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69C00;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69CF4;
}

void (*ISOPB_SubscriptiondPetMessage.totalNotificationCount2WMax.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69DE8;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationCount2WMedian.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69EDC;
}

void (*ISOPB_SubscriptiondPetMessage.openedNotificationCount2WMax.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A69FD0;
}

void (*ISOPB_SubscriptiondPetMessage.buyLabel.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6A0B8;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudBuy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6A1B0;
}

void (*ISOPB_SubscriptiondPetMessage.openLabelSubStream.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7) & 1;
  return sub_275A6A298;
}

void (*ISOPB_SubscriptiondPetMessage.minsUntilIcloudOpenedSubStream.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0;
  }

  *(v4 + 72) = v7;
  return sub_275A6A390;
}

void (*ISOPB_SubscriptiondPetMessage.userTier.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6A47C;
}

void (*ISOPB_SubscriptiondPetMessage.obsoleteTrafficType.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  v8 = *(v6 + v7);
  if (v8 == 3)
  {
    LOBYTE(v8) = 0;
  }

  *(v4 + 84) = v8;
  return sub_275A6A56C;
}

uint64_t sub_275A6A5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75640();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A614(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A755EC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_275A6A660@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV9DayOfWeekO8rawValueAESgSi_tcfC_0(a1);
  *a2 = result;
  return result;
}

unint64_t sub_275A6A688@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV9DayOfWeekO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_275A6A6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75598();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A710()
{
  v2 = *v0;
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A6A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A75544();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_275A6A7C0()
{
  v2 = *v0;
  sub_275AE5B54();
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t ISOPB_SubscriptiondPetMessage.init()@<X0>(uint64_t a1@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v2 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  if (qword_280A24368 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_280A24718;
}

uint64_t sub_275A6A934()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptionLabelMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptionLabelMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE7E70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minsUntilICloudNotificationOpened";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "label";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_275AE5554();
}

uint64_t ISOPB_SubscriptionLabelMessage.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_275AE5344();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 20);
      sub_275AE53B4();
    }

    else if (result == 2)
    {
      sub_275A6ABF0();
    }
  }

  return result;
}

uint64_t sub_275A6ABF0()
{
  v0 = *(type metadata accessor for ISOPB_SubscriptionLabelMessage(0) + 24);
  sub_275A75694();
  return sub_275AE5374();
}

uint64_t ISOPB_SubscriptionLabelMessage.traverse<A>(visitor:)()
{
  result = sub_275A6ACD4(v0);
  if (!v1)
  {
    sub_275A6AD4C(v0);
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A6ACD4(uint64_t a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6AD4C(uint64_t a1)
{
  result = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  if (*(a1 + *(result + 24)) != 3)
  {
    v3 = *(a1 + *(result + 24));
    sub_275A75694();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A6AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(a2 + v5) = 3;
  return result;
}

uint64_t sub_275A6AEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A74670(&qword_280A249E8, type metadata accessor for ISOPB_SubscriptionLabelMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A6AF54()
{
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage);

  return sub_275AE5464();
}

uint64_t sub_275A6AFC0()
{
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage);

  return sub_275AE5474();
}

uint64_t sub_275A6B0E0()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_275AE7E80;
  v4 = v146 + v3;
  v5 = v146 + v3 + v1[14];
  *(v146 + v3) = 1;
  *v5 = "timestampMillis";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v146 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "hourOfDay";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v146 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastOpenedAppId24h";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v146 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lastOpenedAppHour24h";
  *(v13 + 1) = 20;
  v13[16] = 2;
  v8();
  v14 = (v146 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isSleepModeOn";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v146 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isDoNotDisturbOn";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v146 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isDrivingModeOn";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v146 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "openedNotificationRatio24h";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v146 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "googleDriveAppLaunchCount1w";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  v23 = (v146 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "googlePhotoAppLaunchCount1w";
  *(v24 + 1) = 27;
  v24[16] = 2;
  v8();
  v25 = (v146 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dropboxAppLaunchCount1w";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v146 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cameraAppLaunchCount1w";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v146 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "photosAppLaunchCount1w";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v146 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "filesAppLaunchCount1w";
  *(v32 + 1) = 21;
  v32[16] = 2;
  v8();
  v33 = (v146 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalNotificationCount1w";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v8();
  v35 = (v146 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "totalOpenedNotificationCount1w";
  *(v36 + 1) = 30;
  v36[16] = 2;
  v8();
  v37 = v146 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "openedNotificationRatio1w";
  *(v37 + 8) = 25;
  *(v37 + 16) = 2;
  v8();
  v38 = (v146 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "openedICloudNotificationRatio1w";
  *(v39 + 1) = 31;
  v39[16] = 2;
  v8();
  v40 = (v146 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "notificationUsageTypeTop1";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v146 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "notificationUsageTypeTop2";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v8();
  v44 = (v146 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "notificationUsageTypeTop3";
  *(v45 + 1) = 25;
  v45[16] = 2;
  v8();
  v46 = (v146 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "iCloudNotificationUsageTypeTop1";
  *(v47 + 1) = 31;
  v47[16] = 2;
  v8();
  v48 = (v146 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "iCloudNotificationUsageTypeTop2";
  *(v49 + 1) = 31;
  v49[16] = 2;
  v8();
  v50 = (v146 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "iCloudNotificationUsageTypeTop3";
  *(v51 + 1) = 31;
  v51[16] = 2;
  v8();
  v52 = (v146 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "mlServerScore";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v8();
  v54 = (v146 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "labelMessage";
  *(v55 + 1) = 12;
  v55[16] = 2;
  v8();
  v56 = (v146 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "diskStorageCapacityBytes";
  *(v57 + 1) = 24;
  v57[16] = 2;
  v8();
  v58 = (v146 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "usedDiskCapacityBytes";
  *(v59 + 1) = 21;
  v59[16] = 2;
  v8();
  v60 = (v146 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "openedICloudNotificationRatio2w";
  *(v61 + 1) = 31;
  v61[16] = 2;
  v8();
  v62 = (v146 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "trafficType";
  *(v63 + 1) = 11;
  v63[16] = 2;
  v8();
  v64 = (v146 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "dailyScreenTimeSeconds";
  *(v65 + 1) = 22;
  v65[16] = 2;
  v8();
  v66 = (v146 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "avgWeeklyScreenTimeSeconds2w";
  *(v67 + 1) = 28;
  v67[16] = 2;
  v8();
  v68 = v146 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "daemonVersion";
  *(v68 + 8) = 13;
  *(v68 + 16) = 2;
  v8();
  v69 = (v146 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "OBSOLETE_dayOfWeek";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v145 = *MEMORY[0x277D21888];
  v8();
  v71 = (v146 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "deviceModelName";
  *(v72 + 1) = 15;
  v72[16] = 2;
  v8();
  v73 = (v146 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "dayOfWeek";
  *(v74 + 1) = 9;
  v74[16] = 2;
  v8();
  v75 = (v146 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "osVersionMajorVersion";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v146 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "osVersionMinorVersion";
  *(v78 + 1) = 21;
  v78[16] = 2;
  v8();
  v79 = (v146 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "osVersionPatchVersion";
  *(v80 + 1) = 21;
  v80[16] = 2;
  v8();
  v81 = (v146 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "offsetMins";
  *(v82 + 1) = 10;
  v82[16] = 2;
  v8();
  v83 = (v146 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "icloudNotificationActionLabel";
  *(v84 + 1) = 29;
  v84[16] = 2;
  v8();
  v85 = (v146 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "minsUntilICloudNotificationOpened";
  *(v86 + 1) = 33;
  v86[16] = 2;
  v8();
  v87 = (v146 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "appLaunchCountSameSlot";
  *(v88 + 1) = 22;
  v88[16] = 2;
  v8();
  v89 = (v146 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "cameraLaunchCountSameSlot";
  *(v90 + 1) = 25;
  v90[16] = 2;
  v8();
  v91 = (v146 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "photosLaunchCountSameSlot";
  *(v92 + 1) = 25;
  v92[16] = 2;
  v8();
  v93 = (v146 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "filesLaunchCountSameSlot";
  *(v94 + 1) = 24;
  v94[16] = 2;
  v8();
  v95 = (v146 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "isSleepModeOnSameSlot";
  *(v96 + 1) = 21;
  v96[16] = 2;
  v8();
  v97 = (v146 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "isDoNotDisturbOnSameSlot";
  *(v98 + 1) = 24;
  v98[16] = 2;
  v8();
  v99 = (v146 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "isDrivingModeOnSameSlot";
  *(v100 + 1) = 23;
  v100[16] = 2;
  v8();
  v101 = (v146 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "numNotificationsSameSlot";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v8();
  v103 = (v146 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "numOpenedNotificationsSameSlot";
  *(v104 + 1) = 30;
  v104[16] = 2;
  v8();
  v105 = (v146 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "minsSinceLastCameraAppLaunch1w";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v8();
  v107 = (v146 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "minsSinceLastPhotosAppLaunch1w";
  *(v108 + 1) = 30;
  v108[16] = 2;
  v8();
  v109 = (v146 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "minsSinceLastFilesAppLaunch1w";
  *(v110 + 1) = 29;
  v110[16] = 2;
  v8();
  v111 = (v146 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "isSleepModeOnCount2w";
  *(v112 + 1) = 20;
  v112[16] = 2;
  v8();
  v113 = (v146 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "isDoNotDisturbOnCount2w";
  *(v114 + 1) = 23;
  v114[16] = 2;
  v8();
  v115 = (v146 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "isDrivingModeOnCount2w";
  *(v116 + 1) = 22;
  v116[16] = 2;
  v8();
  v117 = (v146 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 58;
  *v118 = "appLaunchCount2wMedian";
  *(v118 + 1) = 22;
  v118[16] = 2;
  v8();
  v119 = (v146 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 59;
  *v120 = "appLaunchCount2wMax";
  *(v120 + 1) = 19;
  v120[16] = 2;
  v8();
  v121 = (v146 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 60;
  *v122 = "photosLaunchCount2wMedian";
  *(v122 + 1) = 25;
  v122[16] = 2;
  v8();
  v123 = (v146 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "photosLaunchCount2wMax";
  *(v124 + 1) = 22;
  v124[16] = 2;
  v8();
  v125 = (v146 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 62;
  *v126 = "totalNotificationCount2wMedian";
  *(v126 + 1) = 30;
  v126[16] = 2;
  v8();
  v127 = (v146 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 63;
  *v128 = "totalNotificationCount2wMax";
  *(v128 + 1) = 27;
  v128[16] = 2;
  v8();
  v129 = (v146 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 64;
  *v130 = "openedNotificationCount2wMedian";
  *(v130 + 1) = 31;
  v130[16] = 2;
  v8();
  v131 = v146 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 65;
  *v131 = "openedNotificationCount2wMax";
  *(v131 + 8) = 28;
  *(v131 + 16) = 2;
  v8();
  v132 = (v146 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 66;
  *v133 = "buyLabel";
  *(v133 + 1) = 8;
  v133[16] = 2;
  v8();
  v134 = (v146 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 67;
  *v135 = "minsUntilICloudBuy";
  *(v135 + 1) = 18;
  v135[16] = 2;
  v8();
  v136 = (v146 + v3 + 67 * v2);
  v137 = v136 + v1[14];
  *v136 = 68;
  *v137 = "openLabelSubStream";
  *(v137 + 1) = 18;
  v137[16] = 2;
  v8();
  v138 = (v146 + v3 + 68 * v2);
  v139 = v138 + v1[14];
  *v138 = 69;
  *v139 = "minsUntilICloudOpenedSubStream";
  *(v139 + 1) = 30;
  v139[16] = 2;
  v8();
  v140 = (v146 + v3 + 69 * v2);
  v141 = v140 + v1[14];
  *v140 = 70;
  *v141 = "userTier";
  *(v141 + 1) = 8;
  v141[16] = 2;
  v8();
  v142 = (v146 + v3 + 70 * v2);
  v143 = v142 + v1[14];
  *v142 = 100;
  *v143 = "OBSOLETE_trafficType";
  *(v143 + 1) = 20;
  v143[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t sub_275A6C358()
{
  v0 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_275A6C398();
  qword_280A24718 = result;
  return result;
}

uint64_t sub_275A6C398()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 28) = 0;
  *(v0 + 32) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 1;
  *(v0 + 65) = 514;
  *(v0 + 67) = 2;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 344) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 328) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 352) = 1;
  v1 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v2 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType) = 3;
  v6 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  *v10 = 0;
  v10[1] = 0;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek) = 8;
  v11 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel) = 3;
  v15 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot) = 2;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot) = 2;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot) = 2;
  v20 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  *v35 = 0;
  *(v35 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel) = 2;
  v36 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream) = 2;
  v37 = v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  *v37 = 0;
  *(v37 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier) = 3;
  *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType) = 3;
  return v0;
}

void *sub_275A6C7E4()
{
  v1 = v0[6];

  v2 = v0[32];

  v3 = v0[34];

  v4 = v0[36];

  v5 = v0[38];

  v6 = v0[40];

  v7 = v0[42];

  sub_275A5FE04(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage, &qword_280A24720, &qword_275AE7EA0);
  v8 = *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName + 8);

  return v0;
}

uint64_t sub_275A6C87C()
{
  v0 = *sub_275A6C7E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ISOPB_SubscriptiondPetMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for ISOPB_SubscriptiondPetMessage._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_275A72BF8(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_275A6C984(v11, a1, a2, a3);
}

uint64_t sub_275A6C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275AE5344();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      switch(result)
      {
        case 1:
          sub_275A5CFAC();
          goto LABEL_5;
        case 2:
          sub_275A6D124();
          goto LABEL_5;
        case 3:
          sub_275A6D1A8();
          goto LABEL_5;
        case 4:
          sub_275A6D22C();
          goto LABEL_5;
        case 5:
          sub_275A6D2B0();
          goto LABEL_5;
        case 6:
          sub_275A6D334();
          goto LABEL_5;
        case 7:
          sub_275A6D3B8();
          goto LABEL_5;
        case 8:
          sub_275A6D43C();
          goto LABEL_5;
        case 9:
          sub_275A6D4C0();
          goto LABEL_5;
        case 10:
          sub_275A6D544();
          goto LABEL_5;
        case 11:
          sub_275A6D5C8();
          goto LABEL_5;
        case 12:
          sub_275A6D64C();
          goto LABEL_5;
        case 13:
          sub_275A6D6D0();
          goto LABEL_5;
        case 14:
          sub_275A6D754();
          goto LABEL_5;
        case 15:
          sub_275A6D7D8();
          goto LABEL_5;
        case 16:
          sub_275A6D85C();
          goto LABEL_5;
        case 17:
          sub_275A6D8E0();
          goto LABEL_5;
        case 18:
          sub_275A6D964();
          goto LABEL_5;
        case 19:
          sub_275A6D9E8();
          goto LABEL_5;
        case 20:
          sub_275A6DA6C();
          goto LABEL_5;
        case 21:
          sub_275A6DAF0();
          goto LABEL_5;
        case 22:
          sub_275A6DB74();
          goto LABEL_5;
        case 23:
          sub_275A6DBF8();
          goto LABEL_5;
        case 24:
          sub_275A6DC7C();
          goto LABEL_5;
        case 25:
          sub_275A6DD00();
          goto LABEL_5;
        case 26:
          sub_275A6DD84();
          goto LABEL_5;
        case 27:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
          goto LABEL_76;
        case 28:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
          goto LABEL_76;
        case 29:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
          v16 = MEMORY[0x277D217C0];
          goto LABEL_77;
        case 30:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
          v14 = sub_275A75640;
          goto LABEL_65;
        case 31:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
          goto LABEL_76;
        case 32:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
          goto LABEL_76;
        case 33:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
          goto LABEL_76;
        case 34:
          v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek;
          goto LABEL_22;
        case 35:
          v15 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName;
LABEL_22:
          sub_275A6DE60(a2, a1, a3, a4, v15);
          goto LABEL_5;
        case 36:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
          v14 = sub_275A755EC;
          goto LABEL_65;
        case 37:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
          goto LABEL_76;
        case 38:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
          goto LABEL_76;
        case 39:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
          goto LABEL_76;
        case 40:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
          goto LABEL_76;
        case 41:
          v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
          v14 = sub_275A75598;
LABEL_65:
          v17 = v14;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          goto LABEL_66;
        case 42:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
          goto LABEL_76;
        case 43:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
          goto LABEL_76;
        case 44:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
          goto LABEL_76;
        case 45:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
          goto LABEL_76;
        case 46:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
          goto LABEL_76;
        case 47:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
          goto LABEL_73;
        case 48:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
          goto LABEL_73;
        case 49:
          v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
LABEL_73:
          v22 = a2;
          v23 = a1;
          v24 = a3;
          v25 = a4;
          goto LABEL_74;
        case 50:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
          goto LABEL_76;
        case 51:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
          goto LABEL_76;
        case 52:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
          goto LABEL_76;
        case 53:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
          goto LABEL_76;
        case 54:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
          goto LABEL_76;
        case 55:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
          goto LABEL_76;
        case 56:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
          goto LABEL_76;
        case 57:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
          goto LABEL_76;
        case 58:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
          goto LABEL_76;
        case 59:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
          goto LABEL_76;
        case 60:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
          goto LABEL_76;
        case 61:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
          goto LABEL_76;
        case 62:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
          goto LABEL_76;
        case 63:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
          goto LABEL_76;
        case 64:
          v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
LABEL_76:
          v16 = MEMORY[0x277D21790];
LABEL_77:
          v26 = v16;
          v27 = a2;
          v28 = a1;
          v29 = a3;
          v30 = a4;
          goto LABEL_78;
        default:
          if (result <= 67)
          {
            switch(result)
            {
              case 'A':
                v26 = MEMORY[0x277D21790];
                v27 = a2;
                v28 = a1;
                v29 = a3;
                v30 = a4;
                v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
                goto LABEL_78;
              case 'B':
                v22 = a2;
                v23 = a1;
                v24 = a3;
                v25 = a4;
                v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
                goto LABEL_74;
              case 'C':
                v26 = MEMORY[0x277D21790];
                v27 = a2;
                v28 = a1;
                v29 = a3;
                v30 = a4;
                v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
LABEL_78:
                sub_275A6DF70(v27, v28, v29, v30, v11, v26);
                break;
            }
          }

          else
          {
            if (result <= 69)
            {
              if (result == 68)
              {
                v22 = a2;
                v23 = a1;
                v24 = a3;
                v25 = a4;
                v12 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
LABEL_74:
                sub_275A6DEE8(v22, v23, v24, v25, v12);
                goto LABEL_5;
              }

              v26 = MEMORY[0x277D21790];
              v27 = a2;
              v28 = a1;
              v29 = a3;
              v30 = a4;
              v11 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
              goto LABEL_78;
            }

            if (result == 70)
            {
              v17 = sub_275A75544;
              v18 = a2;
              v19 = a1;
              v20 = a3;
              v21 = a4;
              v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
              goto LABEL_66;
            }

            if (result == 100)
            {
              v17 = sub_275A75640;
              v18 = a2;
              v19 = a1;
              v20 = a3;
              v21 = a4;
              v13 = &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
LABEL_66:
              sub_275A6E008(v18, v19, v20, v21, v13, v17);
            }
          }

LABEL_5:
          result = sub_275AE5344();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_275A6D124()
{
  swift_beginAccess();
  sub_275AE53A4();
  return swift_endAccess();
}

uint64_t sub_275A6D1A8()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6D22C()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D2B0()
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D334()
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D3B8()
{
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6D43C()
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D4C0()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D544()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D5C8()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D64C()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D6D0()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D754()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D7D8()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D85C()
{
  swift_beginAccess();
  sub_275AE53B4();
  return swift_endAccess();
}

uint64_t sub_275A6D8E0()
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D964()
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6D9E8()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DA6C()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DAF0()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DB74()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DBF8()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DC7C()
{
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DD00()
{
  swift_beginAccess();
  sub_275AE53D4();
  return swift_endAccess();
}

uint64_t sub_275A6DD84()
{
  swift_beginAccess();
  type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage);
  sub_275AE5404();
  return swift_endAccess();
}

uint64_t sub_275A6DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_275AE53E4();
  return swift_endAccess();
}

uint64_t sub_275A6DEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_275AE5364();
  return swift_endAccess();
}

uint64_t sub_275A6DF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_275A6E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_275AE5374();
  return swift_endAccess();
}

uint64_t ISOPB_SubscriptiondPetMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ISOPB_SubscriptiondPetMessage(0);
  result = sub_275A6E11C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_275AE5284();
  }

  return result;
}

uint64_t sub_275A6E11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_275A5D41C(a1);
  if (!v4)
  {
    sub_275A6EA5C(a1);
    sub_275A6EAE0(a1);
    sub_275A6EB7C(a1);
    sub_275A6EC00(a1);
    sub_275A6EC88(a1);
    sub_275A6ED10(a1);
    sub_275A6ED98(a1);
    sub_275A6EE1C(a1);
    sub_275A6EEA0(a1);
    sub_275A6EF24(a1);
    sub_275A6EFA8(a1);
    sub_275A6F02C(a1);
    sub_275A6F0B0(a1);
    sub_275A6F134(a1);
    sub_275A6F1B8(a1);
    sub_275A6F23C(a1);
    sub_275A6F2C0(a1);
    sub_275A6F344(a1);
    sub_275A6F3E0(a1);
    sub_275A6F47C(a1);
    sub_275A6F518(a1);
    sub_275A6F5B4(a1);
    sub_275A6F650(a1);
    sub_275A6F6EC(a1);
    sub_275A6F770(a1, a2, a3, a4);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes);
    sub_275A6F964(a1);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType, sub_275A75640);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion);
    sub_275A6F9F0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
    sub_275A6F9F0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
    sub_275A6FAA0(a1);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel, sub_275A75598);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy);
    sub_275A6FB44(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream);
    sub_275A5D8D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream);
    sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier, sub_275A75544);
    return sub_275A6FBE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType, sub_275A75640);
  }

  return result;
}

uint64_t sub_275A6EA5C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 32) & 1) == 0)
  {
    v3 = *(a1 + 28);
    return sub_275AE54D4();
  }

  return result;
}

uint64_t sub_275A6EAE0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6EB7C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 64) & 1) == 0)
  {
    v3 = *(a1 + 56);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EC00(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 65) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6EC88(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 66) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6ED10(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 67) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6ED98(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 80) & 1) == 0)
  {
    v3 = *(a1 + 72);
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6EE1C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 96) & 1) == 0)
  {
    v3 = *(a1 + 88);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EEA0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 112) & 1) == 0)
  {
    v3 = *(a1 + 104);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EF24(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 128) & 1) == 0)
  {
    v3 = *(a1 + 120);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6EFA8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 144) & 1) == 0)
  {
    v3 = *(a1 + 136);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F02C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 160) & 1) == 0)
  {
    v3 = *(a1 + 152);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F0B0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 176) & 1) == 0)
  {
    v3 = *(a1 + 168);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F134(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 184);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F1B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 208) & 1) == 0)
  {
    v3 = *(a1 + 200);
    return sub_275AE54E4();
  }

  return result;
}

uint64_t sub_275A6F23C(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 224) & 1) == 0)
  {
    v3 = *(a1 + 216);
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F2C0(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 240) & 1) == 0)
  {
    v3 = *(a1 + 232);
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F344(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 256))
  {
    v3 = *(a1 + 248);
    v4 = *(a1 + 256);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F3E0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 272))
  {
    v3 = *(a1 + 264);
    v4 = *(a1 + 272);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F47C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 288))
  {
    v3 = *(a1 + 280);
    v4 = *(a1 + 288);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F518(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 304))
  {
    v3 = *(a1 + 296);
    v4 = *(a1 + 304);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F5B4(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 320))
  {
    v3 = *(a1 + 312);
    v4 = *(a1 + 320);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F650(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 336))
  {
    v3 = *(a1 + 328);
    v4 = *(a1 + 336);

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6F6EC(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 352) & 1) == 0)
  {
    v3 = *(a1 + 344);
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(a1 + v14, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_275A5FE04(v8, &qword_280A24720, &qword_275AE7EA0);
  }

  sub_275A744CC(v8, v13);
  sub_275A74670(&qword_280A24978, type metadata accessor for ISOPB_SubscriptionLabelMessage);
  sub_275AE5534();
  return sub_275A74604(v13);
}

uint64_t sub_275A6F964(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return sub_275AE5504();
  }

  return result;
}

uint64_t sub_275A6F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_275AE5514();
  }

  return result;
}

uint64_t sub_275A6FAA0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  result = swift_beginAccess();
  if (*(a1 + v2) != 8)
  {
    v4 = *(a1 + v2);
    sub_275A755EC();
    return sub_275AE54B4();
  }

  return result;
}

uint64_t sub_275A6FB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v6) != 2)
  {
    return sub_275AE54A4();
  }

  return result;
}

uint64_t sub_275A6FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v8 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v8) != 3)
  {
    v10 = *(a1 + v8);
    a6(result);
    return sub_275AE54B4();
  }

  return result;
}

BOOL sub_275A6FCA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v341 = *(v4 - 8);
  v5 = *(v341 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v341 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24A18, &unk_275AE8A20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v342 = &v341 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v341 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v341 - v16;
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  v20 = *(a2 + 24);
  if (v19)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v18 != *(a2 + 16))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v343 = a2;
  swift_beginAccess();
  v21 = *(a1 + 28);
  v22 = *(a1 + 32);
  swift_beginAccess();
  v23 = *(v343 + 32);
  if (v22)
  {
    if (!*(v343 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (v21 != *(v343 + 28))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  swift_beginAccess();
  v26 = *(v343 + 48);
  if (v24)
  {
    if (!v26 || (v25 != *(v343 + 40) || v24 != v26) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  swift_beginAccess();
  v27 = *(a1 + 56);
  v28 = *(a1 + 64);
  v29 = v343;
  swift_beginAccess();
  v30 = *(v29 + 64);
  if (v28)
  {
    if (!*(v29 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (v27 != *(v29 + 56))
    {
      v30 = 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 65);
  swift_beginAccess();
  v32 = *(v343 + 65);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 66);
  swift_beginAccess();
  v34 = *(v343 + 66);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 67);
  swift_beginAccess();
  v36 = *(v343 + 67);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 72);
  v38 = *(a1 + 80);
  swift_beginAccess();
  v39 = *(v343 + 80);
  if (v38)
  {
    if (!*(v343 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (v37 != *(v343 + 72))
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 88);
  v41 = *(a1 + 96);
  swift_beginAccess();
  v42 = *(v343 + 96);
  if (v41)
  {
    if (!*(v343 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(v343 + 88))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 104);
  v44 = *(a1 + 112);
  swift_beginAccess();
  v45 = *(v343 + 112);
  if (v44)
  {
    if (!*(v343 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v43 != *(v343 + 104))
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 120);
  v47 = *(a1 + 128);
  swift_beginAccess();
  v48 = *(v343 + 128);
  if (v47)
  {
    if (!*(v343 + 128))
    {
      return 0;
    }
  }

  else
  {
    if (v46 != *(v343 + 120))
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 136);
  v50 = *(a1 + 144);
  swift_beginAccess();
  v51 = *(v343 + 144);
  if (v50)
  {
    if (!*(v343 + 144))
    {
      return 0;
    }
  }

  else
  {
    if (v49 != *(v343 + 136))
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 152);
  v53 = *(a1 + 160);
  v54 = v343;
  swift_beginAccess();
  v55 = *(v54 + 160);
  if (v53)
  {
    if (!*(v54 + 160))
    {
      return 0;
    }
  }

  else
  {
    if (v52 != *(v54 + 152))
    {
      v55 = 1;
    }

    if (v55)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v56 = *(a1 + 168);
  v57 = *(a1 + 176);
  v58 = v343;
  swift_beginAccess();
  v59 = *(v58 + 176);
  if (v57)
  {
    if (!*(v58 + 176))
    {
      return 0;
    }
  }

  else
  {
    if (v56 != *(v343 + 168))
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v60 = *(a1 + 184);
  v61 = *(a1 + 192);
  v62 = v343;
  swift_beginAccess();
  v63 = *(v62 + 192);
  if (v61)
  {
    if (!*(v62 + 192))
    {
      return 0;
    }
  }

  else
  {
    if (v60 != *(v343 + 184))
    {
      v63 = 1;
    }

    if (v63)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v64 = *(a1 + 200);
  v65 = *(a1 + 208);
  v66 = v343;
  swift_beginAccess();
  v67 = *(v66 + 208);
  if (v65)
  {
    if (!*(v66 + 208))
    {
      return 0;
    }
  }

  else
  {
    if (v64 != *(v343 + 200))
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v68 = *(a1 + 216);
  v69 = *(a1 + 224);
  v70 = v343;
  swift_beginAccess();
  v71 = *(v70 + 224);
  if (v69)
  {
    if (!*(v70 + 224))
    {
      return 0;
    }
  }

  else
  {
    if (v68 != *(v343 + 216))
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(a1 + 232);
  v73 = *(a1 + 240);
  v74 = v343;
  swift_beginAccess();
  v75 = *(v74 + 240);
  if (v73)
  {
    if (!*(v74 + 240))
    {
      return 0;
    }
  }

  else
  {
    if (v72 != *(v343 + 232))
    {
      v75 = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 248);
  v77 = *(a1 + 256);
  v78 = v343;
  swift_beginAccess();
  v79 = *(v78 + 256);
  if (v77)
  {
    if (!v79 || (v76 != *(v343 + 248) || v77 != v79) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v79)
  {
    return 0;
  }

  swift_beginAccess();
  v80 = *(a1 + 264);
  v81 = *(a1 + 272);
  v82 = v343;
  swift_beginAccess();
  v83 = *(v82 + 272);
  if (v81)
  {
    if (!v83 || (v80 != *(v343 + 264) || v81 != v83) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v83)
  {
    return 0;
  }

  swift_beginAccess();
  v84 = *(a1 + 280);
  v85 = *(a1 + 288);
  v86 = v343;
  swift_beginAccess();
  v87 = *(v86 + 288);
  if (v85)
  {
    if (!v87 || (v84 != *(v343 + 280) || v85 != v87) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v87)
  {
    return 0;
  }

  swift_beginAccess();
  v88 = *(a1 + 296);
  v89 = *(a1 + 304);
  v90 = v343;
  swift_beginAccess();
  v91 = *(v90 + 304);
  if (v89)
  {
    if (!v91 || (v88 != *(v343 + 296) || v89 != v91) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  swift_beginAccess();
  v92 = *(a1 + 312);
  v93 = *(a1 + 320);
  v94 = v343;
  swift_beginAccess();
  v95 = *(v94 + 320);
  if (v93)
  {
    if (!v95 || (v92 != *(v343 + 312) || v93 != v95) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  swift_beginAccess();
  v96 = *(a1 + 328);
  v97 = *(a1 + 336);
  v98 = v343;
  swift_beginAccess();
  v99 = *(v98 + 336);
  if (v97)
  {
    if (!v99 || (v96 != *(v343 + 328) || v97 != v99) && (sub_275AE5AC4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v99)
  {
    return 0;
  }

  swift_beginAccess();
  v100 = *(a1 + 344);
  v101 = *(a1 + 352);
  v102 = v343;
  swift_beginAccess();
  v103 = *(v102 + 352);
  if (v101)
  {
    if (!*(v102 + 352))
    {
      return 0;
    }
  }

  else
  {
    if (v100 != *(v343 + 344))
    {
      v103 = 1;
    }

    if (v103)
    {
      return 0;
    }
  }

  v104 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  sub_275A7445C(a1 + v104, v17);
  v105 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v106 = v343;
  swift_beginAccess();
  v107 = *(v8 + 48);
  v108 = v342;
  sub_275A7445C(v17, v342);
  v109 = v106 + v105;
  v110 = v107;
  sub_275A7445C(v109, v108 + v107);
  v111 = *(v341 + 48);
  if (v111(v108, 1, v4) == 1)
  {

    sub_275A5FE04(v17, &qword_280A24720, &qword_275AE7EA0);
    if (v111(v342 + v110, 1, v4) == 1)
    {
      sub_275A5FE04(v342, &qword_280A24720, &qword_275AE7EA0);
      goto LABEL_162;
    }

LABEL_160:
    sub_275A5FE04(v342, &qword_280A24A18, &unk_275AE8A20);
    goto LABEL_389;
  }

  v112 = v342;
  sub_275A7445C(v342, v15);
  if (v111(v112 + v110, 1, v4) == 1)
  {

    sub_275A5FE04(v17, &qword_280A24720, &qword_275AE7EA0);
    sub_275A74604(v15);
    goto LABEL_160;
  }

  v113 = v342;
  sub_275A744CC(v342 + v110, v7);

  v114 = _s31iCloudSubscriptionOptimizerCore06ISOPB_B12LabelMessageV2eeoiySbAC_ACtFZ_0(v15, v7);
  sub_275A74604(v7);
  sub_275A5FE04(v17, &qword_280A24720, &qword_275AE7EA0);
  sub_275A74604(v15);
  sub_275A5FE04(v113, &qword_280A24720, &qword_275AE7EA0);
  if ((v114 & 1) == 0)
  {
    goto LABEL_389;
  }

LABEL_162:
  v115 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes);
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 8);
  v118 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  swift_beginAccess();
  v119 = *(v118 + 8);
  if (v117)
  {
    if ((*(v118 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v118 + 8) & 1) != 0 || v116 != *v118)
  {
    goto LABEL_389;
  }

  v120 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes);
  swift_beginAccess();
  v121 = *v120;
  v122 = *(v120 + 8);
  v123 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  swift_beginAccess();
  v124 = *(v123 + 8);
  if (v122)
  {
    if ((*(v123 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v123 + 8) & 1) != 0 || v121 != *v123)
  {
    goto LABEL_389;
  }

  v125 = a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  v126 = *v125;
  v127 = *(v125 + 8);
  v128 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  swift_beginAccess();
  v129 = *(v128 + 8);
  if (v127)
  {
    if ((*(v128 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v128 + 8) & 1) != 0 || v126 != *v128)
  {
    goto LABEL_389;
  }

  v130 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  v131 = *(a1 + v130);
  v132 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  v133 = v343;
  swift_beginAccess();
  v134 = *(v133 + v132);
  if (v131 == 3)
  {
    if (v134 != 3)
    {
      goto LABEL_389;
    }
  }

  else if (v134 == 3 || v131 != v134)
  {
    goto LABEL_389;
  }

  v135 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds);
  swift_beginAccess();
  v136 = *v135;
  v137 = *(v135 + 8);
  v138 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  swift_beginAccess();
  v139 = *(v138 + 8);
  if (v137)
  {
    if ((*(v138 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v138 + 8) & 1) != 0 || v136 != *v138)
  {
    goto LABEL_389;
  }

  v140 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W);
  swift_beginAccess();
  v141 = *v140;
  v142 = *(v140 + 8);
  v143 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  swift_beginAccess();
  v144 = *(v143 + 8);
  if (v142)
  {
    if ((*(v143 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v143 + 8) & 1) != 0 || v141 != *v143)
  {
    goto LABEL_389;
  }

  v145 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion);
  swift_beginAccess();
  v146 = *v145;
  v147 = *(v145 + 8);
  v148 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  swift_beginAccess();
  v149 = *(v148 + 8);
  if (v147)
  {
    if ((*(v148 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v148 + 8) & 1) != 0 || v146 != *v148)
  {
    goto LABEL_389;
  }

  v150 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v151 = *v150;
  v152 = v150[1];
  v153 = (v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v154 = v153[1];
  if (v152)
  {
    if (!v154 || (v151 != *v153 || v152 != v154) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if (v154)
  {
    goto LABEL_389;
  }

  v155 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v156 = *v155;
  v157 = v155[1];
  v158 = (v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v159 = v158[1];
  if (v157)
  {
    if (!v159 || (v156 != *v158 || v157 != v159) && (sub_275AE5AC4() & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if (v159)
  {
    goto LABEL_389;
  }

  v160 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  v161 = *(a1 + v160);
  v162 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  v163 = v343;
  swift_beginAccess();
  v164 = *(v163 + v162);
  if (v161 == 8)
  {
    if (v164 != 8)
    {
      goto LABEL_389;
    }
  }

  else if (v164 == 8 || v161 != v164)
  {
    goto LABEL_389;
  }

  v165 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion);
  swift_beginAccess();
  v166 = *v165;
  v167 = *(v165 + 8);
  v168 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  swift_beginAccess();
  v169 = *(v168 + 8);
  if (v167)
  {
    if ((*(v168 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v168 + 8) & 1) != 0 || v166 != *v168)
  {
    goto LABEL_389;
  }

  v170 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion);
  swift_beginAccess();
  v171 = *v170;
  v172 = *(v170 + 8);
  v173 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  swift_beginAccess();
  v174 = *(v173 + 8);
  if (v172)
  {
    if ((*(v173 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v173 + 8) & 1) != 0 || v171 != *v173)
  {
    goto LABEL_389;
  }

  v175 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion);
  swift_beginAccess();
  v176 = *v175;
  v177 = *(v175 + 8);
  v178 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  swift_beginAccess();
  v179 = *(v178 + 8);
  if (v177)
  {
    if ((*(v178 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v178 + 8) & 1) != 0 || v176 != *v178)
  {
    goto LABEL_389;
  }

  v180 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins);
  swift_beginAccess();
  v181 = *v180;
  v182 = *(v180 + 8);
  v183 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  swift_beginAccess();
  v184 = *(v183 + 8);
  if (v182)
  {
    if ((*(v183 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v183 + 8) & 1) != 0 || v181 != *v183)
  {
    goto LABEL_389;
  }

  v185 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  v186 = *(a1 + v185);
  v187 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  v188 = v343;
  swift_beginAccess();
  v189 = *(v188 + v187);
  if (v186 == 3)
  {
    if (v189 != 3)
    {
      goto LABEL_389;
    }
  }

  else if (v189 == 3 || v186 != v189)
  {
    goto LABEL_389;
  }

  v190 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened);
  swift_beginAccess();
  v191 = *v190;
  v192 = *(v190 + 8);
  v193 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  swift_beginAccess();
  v194 = *(v193 + 8);
  if (v192)
  {
    if ((*(v193 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v193 + 8) & 1) != 0 || v191 != *v193)
  {
    goto LABEL_389;
  }

  v195 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot);
  swift_beginAccess();
  v196 = *v195;
  v197 = *(v195 + 8);
  v198 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  swift_beginAccess();
  v199 = *(v198 + 8);
  if (v197)
  {
    if ((*(v198 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v198 + 8) & 1) != 0 || v196 != *v198)
  {
    goto LABEL_389;
  }

  v200 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot);
  swift_beginAccess();
  v201 = *v200;
  v202 = *(v200 + 8);
  v203 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  swift_beginAccess();
  v204 = *(v203 + 8);
  if (v202)
  {
    if ((*(v203 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v203 + 8) & 1) != 0 || v201 != *v203)
  {
    goto LABEL_389;
  }

  v205 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot);
  swift_beginAccess();
  v206 = *v205;
  v207 = *(v205 + 8);
  v208 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  swift_beginAccess();
  v209 = *(v208 + 8);
  if (v207)
  {
    if ((*(v208 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v208 + 8) & 1) != 0 || v206 != *v208)
  {
    goto LABEL_389;
  }

  v210 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot);
  swift_beginAccess();
  v211 = *v210;
  v212 = *(v210 + 8);
  v213 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  swift_beginAccess();
  v214 = *(v213 + 8);
  if (v212)
  {
    if ((*(v213 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v213 + 8) & 1) != 0 || v211 != *v213)
  {
    goto LABEL_389;
  }

  v215 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  v216 = *(a1 + v215);
  v217 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  v218 = v343;
  swift_beginAccess();
  v219 = *(v218 + v217);
  if (v216 == 2)
  {
    if (v219 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v219 == 2 || ((v216 ^ v219) & 1) != 0)
  {
    goto LABEL_389;
  }

  v220 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  v221 = *(a1 + v220);
  v222 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  v223 = v343;
  swift_beginAccess();
  v224 = *(v223 + v222);
  if (v221 == 2)
  {
    if (v224 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v224 == 2 || ((v221 ^ v224) & 1) != 0)
  {
    goto LABEL_389;
  }

  v225 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  v226 = *(a1 + v225);
  v227 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  v228 = v343;
  swift_beginAccess();
  v229 = *(v228 + v227);
  if (v226 == 2)
  {
    if (v229 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v229 == 2 || ((v226 ^ v229) & 1) != 0)
  {
    goto LABEL_389;
  }

  v230 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot);
  swift_beginAccess();
  v231 = *v230;
  v232 = *(v230 + 8);
  v233 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  swift_beginAccess();
  v234 = *(v233 + 8);
  if (v232)
  {
    if ((*(v233 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v233 + 8) & 1) != 0 || v231 != *v233)
  {
    goto LABEL_389;
  }

  v235 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot);
  swift_beginAccess();
  v236 = *v235;
  v237 = *(v235 + 8);
  v238 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  swift_beginAccess();
  v239 = *(v238 + 8);
  if (v237)
  {
    if ((*(v238 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v238 + 8) & 1) != 0 || v236 != *v238)
  {
    goto LABEL_389;
  }

  v240 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W);
  swift_beginAccess();
  v241 = *v240;
  v242 = *(v240 + 8);
  v243 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  swift_beginAccess();
  v244 = *(v243 + 8);
  if (v242)
  {
    if ((*(v243 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v243 + 8) & 1) != 0 || v241 != *v243)
  {
    goto LABEL_389;
  }

  v245 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W);
  swift_beginAccess();
  v246 = *v245;
  v247 = *(v245 + 8);
  v248 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  swift_beginAccess();
  v249 = *(v248 + 8);
  if (v247)
  {
    if ((*(v248 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v248 + 8) & 1) != 0 || v246 != *v248)
  {
    goto LABEL_389;
  }

  v250 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W);
  swift_beginAccess();
  v251 = *v250;
  v252 = *(v250 + 8);
  v253 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  swift_beginAccess();
  v254 = *(v253 + 8);
  if (v252)
  {
    if ((*(v253 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v253 + 8) & 1) != 0 || v251 != *v253)
  {
    goto LABEL_389;
  }

  v255 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W);
  swift_beginAccess();
  v256 = *v255;
  v257 = *(v255 + 8);
  v258 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  swift_beginAccess();
  v259 = *(v258 + 8);
  if (v257)
  {
    if ((*(v258 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v258 + 8) & 1) != 0 || v256 != *v258)
  {
    goto LABEL_389;
  }

  v260 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W);
  swift_beginAccess();
  v261 = *v260;
  v262 = *(v260 + 8);
  v263 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  swift_beginAccess();
  v264 = *(v263 + 8);
  if (v262)
  {
    if ((*(v263 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v263 + 8) & 1) != 0 || v261 != *v263)
  {
    goto LABEL_389;
  }

  v265 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W);
  swift_beginAccess();
  v266 = *v265;
  v267 = *(v265 + 8);
  v268 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  swift_beginAccess();
  v269 = *(v268 + 8);
  if (v267)
  {
    if ((*(v268 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
  {
    goto LABEL_389;
  }

  v270 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian);
  swift_beginAccess();
  v271 = *v270;
  v272 = *(v270 + 8);
  v273 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  swift_beginAccess();
  v274 = *(v273 + 8);
  if (v272)
  {
    if ((*(v273 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v273 + 8) & 1) != 0 || v271 != *v273)
  {
    goto LABEL_389;
  }

  v275 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax);
  swift_beginAccess();
  v276 = *v275;
  v277 = *(v275 + 8);
  v278 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  swift_beginAccess();
  v279 = *(v278 + 8);
  if (v277)
  {
    if ((*(v278 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v278 + 8) & 1) != 0 || v276 != *v278)
  {
    goto LABEL_389;
  }

  v280 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian);
  swift_beginAccess();
  v281 = *v280;
  v282 = *(v280 + 8);
  v283 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  swift_beginAccess();
  v284 = *(v283 + 8);
  if (v282)
  {
    if ((*(v283 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v283 + 8) & 1) != 0 || v281 != *v283)
  {
    goto LABEL_389;
  }

  v285 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax);
  swift_beginAccess();
  v286 = *v285;
  v287 = *(v285 + 8);
  v288 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  swift_beginAccess();
  v289 = *(v288 + 8);
  if (v287)
  {
    if ((*(v288 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v288 + 8) & 1) != 0 || v286 != *v288)
  {
    goto LABEL_389;
  }

  v290 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian);
  swift_beginAccess();
  v291 = *v290;
  v292 = *(v290 + 8);
  v293 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  swift_beginAccess();
  v294 = *(v293 + 8);
  if (v292)
  {
    if ((*(v293 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v293 + 8) & 1) != 0 || v291 != *v293)
  {
    goto LABEL_389;
  }

  v295 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax);
  swift_beginAccess();
  v296 = *v295;
  v297 = *(v295 + 8);
  v298 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  swift_beginAccess();
  v299 = *(v298 + 8);
  if (v297)
  {
    if ((*(v298 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v298 + 8) & 1) != 0 || v296 != *v298)
  {
    goto LABEL_389;
  }

  v300 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian);
  swift_beginAccess();
  v301 = *v300;
  v302 = *(v300 + 8);
  v303 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  swift_beginAccess();
  v304 = *(v303 + 8);
  if (v302)
  {
    if ((*(v303 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v303 + 8) & 1) != 0 || v301 != *v303)
  {
    goto LABEL_389;
  }

  v305 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax);
  swift_beginAccess();
  v306 = *v305;
  v307 = *(v305 + 8);
  v308 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  swift_beginAccess();
  v309 = *(v308 + 8);
  if (v307)
  {
    if ((*(v308 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v308 + 8) & 1) != 0 || v306 != *v308)
  {
    goto LABEL_389;
  }

  v310 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  v311 = *(a1 + v310);
  v312 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  v313 = v343;
  swift_beginAccess();
  v314 = *(v313 + v312);
  if (v311 == 2)
  {
    if (v314 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v314 == 2 || ((v311 ^ v314) & 1) != 0)
  {
    goto LABEL_389;
  }

  v315 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy);
  swift_beginAccess();
  v316 = *v315;
  v317 = *(v315 + 8);
  v318 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  swift_beginAccess();
  v319 = *(v318 + 8);
  if (v317)
  {
    if ((*(v318 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v318 + 8) & 1) != 0 || v316 != *v318)
  {
    goto LABEL_389;
  }

  v320 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  v321 = *(a1 + v320);
  v322 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  v323 = v343;
  swift_beginAccess();
  v324 = *(v323 + v322);
  if (v321 == 2)
  {
    if (v324 != 2)
    {
      goto LABEL_389;
    }
  }

  else if (v324 == 2 || ((v321 ^ v324) & 1) != 0)
  {
    goto LABEL_389;
  }

  v325 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream);
  swift_beginAccess();
  v326 = *v325;
  v327 = *(v325 + 8);
  v328 = v343 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  swift_beginAccess();
  v329 = *(v328 + 8);
  if (v327)
  {
    if ((*(v328 + 8) & 1) == 0)
    {
      goto LABEL_389;
    }
  }

  else if ((*(v328 + 8) & 1) != 0 || v326 != *v328)
  {
    goto LABEL_389;
  }

  v330 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  v331 = *(a1 + v330);
  v332 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  v333 = v343;
  swift_beginAccess();
  v334 = *(v333 + v332);
  if (v331 == 3)
  {
    if (v334 == 3)
    {
      goto LABEL_386;
    }

LABEL_389:

    return 0;
  }

  if (v334 == 3 || v331 != v334)
  {
    goto LABEL_389;
  }

LABEL_386:
  v335 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  v336 = *(a1 + v335);

  v337 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  v338 = v343;
  swift_beginAccess();
  v339 = *(v338 + v337);

  if (v336 == 3)
  {
    return v339 == 3;
  }

  result = 0;
  if (v339 != 3 && v336 == v339)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275A71C30(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_275AE5B54();
  a1(0);
  sub_275A74670(a2, a3);
  sub_275AE5644();
  return sub_275AE5B74();
}

uint64_t sub_275A71CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s31iCloudSubscriptionOptimizerCore022SystemActivityHistory_F0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvpfi_0();
  v4 = *(a1 + 20);
  if (qword_280A24368 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_280A24718;
}

uint64_t sub_275A71D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275A74670(&qword_280A249E0, type metadata accessor for ISOPB_SubscriptiondPetMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_275A71E1C()
{
  sub_275A74670(&qword_280A24990, type metadata accessor for ISOPB_SubscriptiondPetMessage);

  return sub_275AE5464();
}

uint64_t sub_275A71E88()
{
  sub_275A74670(&qword_280A24990, type metadata accessor for ISOPB_SubscriptiondPetMessage);

  return sub_275AE5474();
}

uint64_t sub_275A71F08()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.TrafficType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.TrafficType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REAL";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SYNTHESIZED";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t sub_275A72184()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.DayOfWeek._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.DayOfWeek._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_275AE7E90;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "UNAVAILABLE";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_275AE5544();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SUNDAY";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "MONDAY";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "TUESDAY";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WEDNESDAY";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "THURSDAY";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "FRIDAY";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SATURDAY";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  return sub_275AE5554();
}

uint64_t sub_275A72534(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275AE5574();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_275AE78F0;
  v8 = (v7 + v6);
  v9 = v7 + v6 + v4[14];
  *v8 = 0;
  *v9 = "LABEL_UNKNOWN";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x277D21870];
  v11 = sub_275AE5544();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 1;
  *v13 = "CLICK";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v12();
  v14 = v8 + 2 * v5 + v4[14];
  *(v8 + 2 * v5) = 2;
  *v14 = "CLEAR";
  *(v14 + 8) = 5;
  *(v14 + 16) = 2;
  v12();
  return sub_275AE5554();
}

uint64_t sub_275A727A8()
{
  v0 = sub_275AE5574();
  __swift_allocate_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.UserTier._protobuf_nameMap);
  __swift_project_value_buffer(v0, static ISOPB_SubscriptiondPetMessage.UserTier._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24640, "ؠ");
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24648, &qword_275AEEA60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_275AE78F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USERTIER_UNKNOWN";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_275AE5544();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PAID";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_275AE5554();
}

uint64_t _s31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ISOPB_SubscriptiondPetMessage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_275A6FCA4(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_275AE52A4();
  sub_275A74670(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t _s31iCloudSubscriptionOptimizerCore06ISOPB_B12LabelMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  sub_275AE52A4();
  sub_275A74670(&qword_280A24638, MEMORY[0x277D216C8]);
  return sub_275AE5664() & 1;
}

uint64_t sub_275A72BF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A24720, &qword_275AE7EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v242 = &v225 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 28) = 0;
  *(v1 + 32) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = 0;
  *(v1 + 64) = 1;
  *(v1 + 65) = 514;
  v225 = (v1 + 65);
  *(v1 + 67) = 2;
  v226 = (v1 + 67);
  *(v1 + 72) = 0;
  v227 = (v1 + 72);
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  v228 = (v1 + 88);
  *(v1 + 96) = 1;
  *(v1 + 104) = 0;
  v229 = (v1 + 104);
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  v230 = (v1 + 120);
  *(v1 + 128) = 1;
  *(v1 + 136) = 0;
  v231 = (v1 + 136);
  *(v1 + 144) = 1;
  *(v1 + 152) = 0;
  v232 = (v1 + 152);
  *(v1 + 160) = 1;
  *(v1 + 168) = 0;
  v233 = (v1 + 168);
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  v234 = (v1 + 184);
  *(v1 + 192) = 1;
  *(v1 + 200) = 0;
  v235 = (v1 + 200);
  *(v1 + 208) = 1;
  *(v1 + 216) = 0;
  v236 = (v1 + 216);
  *(v1 + 224) = 1;
  *(v1 + 232) = 0;
  v237 = (v1 + 232);
  *(v1 + 240) = 1;
  *(v1 + 344) = 0;
  *(v1 + 248) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 352) = 1;
  v6 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v238 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  v7 = type metadata accessor for ISOPB_SubscriptionLabelMessage(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  v239 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  v240 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  v241 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W;
  *v10 = 0;
  *(v10 + 8) = 1;
  v243 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType) = 3;
  v11 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  v244 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  v245 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  v246 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  v247 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  v248 = (v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek) = 8;
  v17 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion;
  v249 = v16;
  v250 = v17;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  v251 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  v252 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  v253 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins;
  *v20 = 0;
  *(v20 + 8) = 1;
  v254 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel) = 3;
  v21 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  v255 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  v256 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  v257 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  v258 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  v259 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot;
  *v25 = 0;
  *(v25 + 8) = 1;
  v260 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot) = 2;
  v261 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot) = 2;
  v262 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot) = 2;
  v26 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  v263 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  v264 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  v265 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  v266 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  v267 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  v268 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  v269 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W;
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  v270 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  v271 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian;
  *v34 = 0;
  *(v34 + 8) = 1;
  v35 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  v272 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax;
  *v35 = 0;
  *(v35 + 8) = 1;
  v36 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  v273 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian;
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  v274 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax;
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  v275 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian;
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  v276 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax;
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  v277 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian;
  *v40 = 0;
  *(v40 + 8) = 1;
  v41 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  v278 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax;
  *v41 = 0;
  *(v41 + 8) = 1;
  v279 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel) = 2;
  v42 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  v280 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy;
  *v42 = 0;
  *(v42 + 8) = 1;
  v281 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream) = 2;
  v43 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  v282 = v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream;
  *(v43 + 8) = 1;
  *v43 = 0;
  v283 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier) = 3;
  v284 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  *(v1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType) = 3;
  swift_beginAccess();
  v44 = *(a1 + 16);
  LOBYTE(v6) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v44;
  *(v1 + 24) = v6;
  swift_beginAccess();
  LODWORD(v44) = *(a1 + 28);
  v45 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 28) = v44;
  *(v1 + 32) = v45;
  swift_beginAccess();
  v46 = *(a1 + 40);
  v47 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v46;
  *(v1 + 48) = v47;
  swift_beginAccess();
  v48 = *(a1 + 56);
  v49 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v48;
  *(v1 + 64) = v49;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + 65);
  v50 = v225;
  swift_beginAccess();
  *v50 = v48;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + 66);
  swift_beginAccess();
  *(v1 + 66) = v48;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + 67);
  v51 = v226;
  swift_beginAccess();
  *v51 = v48;
  swift_beginAccess();
  v52 = *(a1 + 72);
  LOBYTE(v51) = *(a1 + 80);
  v53 = v227;
  swift_beginAccess();
  *v53 = v52;
  *(v1 + 80) = v51;
  swift_beginAccess();
  v54 = *(a1 + 88);
  LOBYTE(v51) = *(a1 + 96);
  v55 = v228;
  swift_beginAccess();
  *v55 = v54;
  *(v1 + 96) = v51;
  swift_beginAccess();
  v56 = *(a1 + 104);
  LOBYTE(v51) = *(a1 + 112);
  v57 = v229;
  swift_beginAccess();
  *v57 = v56;
  *(v1 + 112) = v51;
  swift_beginAccess();
  v58 = *(a1 + 120);
  LOBYTE(v51) = *(a1 + 128);
  v59 = v230;
  swift_beginAccess();
  *v59 = v58;
  *(v1 + 128) = v51;
  swift_beginAccess();
  v60 = *(a1 + 136);
  LOBYTE(v51) = *(a1 + 144);
  v61 = v231;
  swift_beginAccess();
  *v61 = v60;
  *(v1 + 144) = v51;
  swift_beginAccess();
  v62 = *(a1 + 152);
  LOBYTE(v51) = *(a1 + 160);
  v63 = v232;
  swift_beginAccess();
  *v63 = v62;
  *(v1 + 160) = v51;
  swift_beginAccess();
  v64 = *(a1 + 168);
  LOBYTE(v51) = *(a1 + 176);
  v65 = v233;
  swift_beginAccess();
  *v65 = v64;
  *(v1 + 176) = v51;
  swift_beginAccess();
  v66 = *(a1 + 184);
  LOBYTE(v51) = *(a1 + 192);
  v67 = v234;
  swift_beginAccess();
  *v67 = v66;
  *(v1 + 192) = v51;
  swift_beginAccess();
  v68 = *(a1 + 200);
  LOBYTE(v51) = *(a1 + 208);
  v69 = v235;
  swift_beginAccess();
  *v69 = v68;
  *(v1 + 208) = v51;
  swift_beginAccess();
  v70 = *(a1 + 216);
  LOBYTE(v51) = *(a1 + 224);
  v71 = v236;
  swift_beginAccess();
  *v71 = v70;
  *(v1 + 224) = v51;
  swift_beginAccess();
  v72 = *(a1 + 232);
  LOBYTE(v51) = *(a1 + 240);
  v73 = v237;
  swift_beginAccess();
  *v73 = v72;
  *(v1 + 240) = v51;
  swift_beginAccess();
  v75 = *(a1 + 248);
  v74 = *(a1 + 256);
  swift_beginAccess();
  *(v1 + 248) = v75;
  *(v1 + 256) = v74;
  swift_beginAccess();
  v77 = *(a1 + 264);
  v76 = *(a1 + 272);
  swift_beginAccess();
  *(v1 + 264) = v77;
  *(v1 + 272) = v76;
  swift_beginAccess();
  v79 = *(a1 + 280);
  v78 = *(a1 + 288);
  swift_beginAccess();
  v80 = *(v1 + 288);
  *(v1 + 280) = v79;
  *(v1 + 288) = v78;

  swift_beginAccess();
  v82 = *(a1 + 296);
  v81 = *(a1 + 304);
  swift_beginAccess();
  v83 = *(v1 + 304);
  *(v1 + 296) = v82;
  *(v1 + 304) = v81;

  swift_beginAccess();
  v85 = *(a1 + 312);
  v84 = *(a1 + 320);
  swift_beginAccess();
  v86 = *(v1 + 320);
  *(v1 + 312) = v85;
  *(v1 + 320) = v84;

  swift_beginAccess();
  v88 = *(a1 + 328);
  v87 = *(a1 + 336);
  swift_beginAccess();
  v89 = *(v1 + 336);
  *(v1 + 328) = v88;
  *(v1 + 336) = v87;

  swift_beginAccess();
  v90 = *(a1 + 344);
  LOBYTE(v89) = *(a1 + 352);
  swift_beginAccess();
  *(v1 + 344) = v90;
  *(v1 + 352) = v89;
  v91 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__labelMessage;
  swift_beginAccess();
  v92 = a1 + v91;
  v93 = v242;
  sub_275A7445C(v92, v242);
  v94 = v238;
  swift_beginAccess();
  sub_275A74530(v93, v1 + v94);
  swift_endAccess();
  v95 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__diskStorageCapacityBytes);
  swift_beginAccess();
  v96 = *v95;
  LOBYTE(v95) = *(v95 + 8);
  v97 = v239;
  swift_beginAccess();
  *v97 = v96;
  *(v97 + 8) = v95;
  v98 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__usedDiskCapacityBytes);
  swift_beginAccess();
  v99 = *v98;
  LOBYTE(v98) = *(v98 + 8);
  v100 = v240;
  swift_beginAccess();
  *v100 = v99;
  *(v100 + 8) = v98;
  v101 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedIcloudNotificationRatio2W);
  swift_beginAccess();
  v102 = *v101;
  LOBYTE(v101) = *(v101 + 8);
  v103 = v241;
  swift_beginAccess();
  *v103 = v102;
  *(v103 + 8) = v101;
  v104 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__trafficType;
  swift_beginAccess();
  LOBYTE(v104) = *(a1 + v104);
  v105 = v243;
  swift_beginAccess();
  *(v1 + v105) = v104;
  v106 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dailyScreenTimeSeconds);
  swift_beginAccess();
  v107 = *v106;
  LOBYTE(v106) = *(v106 + 8);
  v108 = v244;
  swift_beginAccess();
  *v108 = v107;
  *(v108 + 8) = v106;
  v109 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__avgWeeklyScreenTimeSeconds2W);
  swift_beginAccess();
  v110 = *v109;
  LOBYTE(v109) = *(v109 + 8);
  v111 = v245;
  swift_beginAccess();
  *v111 = v110;
  *(v111 + 8) = v109;
  v112 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__daemonVersion);
  swift_beginAccess();
  v113 = *v112;
  LOBYTE(v112) = *(v112 + 8);
  v114 = v246;
  swift_beginAccess();
  *v114 = v113;
  *(v114 + 8) = v112;
  v115 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteDayOfWeek);
  swift_beginAccess();
  v117 = *v115;
  v116 = v115[1];
  v118 = v247;
  swift_beginAccess();
  v119 = v118[1];
  *v118 = v117;
  v118[1] = v116;

  v120 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__deviceModelName);
  swift_beginAccess();
  v122 = *v120;
  v121 = v120[1];
  v123 = v248;
  swift_beginAccess();
  v124 = v123[1];
  *v123 = v122;
  v123[1] = v121;

  v125 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__dayOfWeek;
  swift_beginAccess();
  LOBYTE(v125) = *(a1 + v125);
  v126 = v249;
  swift_beginAccess();
  *(v1 + v126) = v125;
  v127 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMajorVersion);
  swift_beginAccess();
  v128 = *v127;
  LOBYTE(v127) = *(v127 + 8);
  v129 = v250;
  swift_beginAccess();
  *v129 = v128;
  *(v129 + 8) = v127;
  v130 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionMinorVersion);
  swift_beginAccess();
  v131 = *v130;
  LOBYTE(v130) = *(v130 + 8);
  v132 = v251;
  swift_beginAccess();
  *v132 = v131;
  *(v132 + 8) = v130;
  v133 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__osVersionPatchVersion);
  swift_beginAccess();
  v134 = *v133;
  LOBYTE(v133) = *(v133 + 8);
  v135 = v252;
  swift_beginAccess();
  *v135 = v134;
  *(v135 + 8) = v133;
  v136 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__offsetMins);
  swift_beginAccess();
  v137 = *v136;
  LOBYTE(v136) = *(v136 + 8);
  v138 = v253;
  swift_beginAccess();
  *v138 = v137;
  *(v138 + 8) = v136;
  v139 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__icloudNotificationActionLabel;
  swift_beginAccess();
  LOBYTE(v139) = *(a1 + v139);
  v140 = v254;
  swift_beginAccess();
  *(v1 + v140) = v139;
  v141 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudNotificationOpened);
  swift_beginAccess();
  v142 = *v141;
  LOBYTE(v141) = *(v141 + 8);
  v143 = v255;
  swift_beginAccess();
  *v143 = v142;
  *(v143 + 8) = v141;
  v144 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCountSameSlot);
  swift_beginAccess();
  v145 = *v144;
  LOBYTE(v144) = *(v144 + 8);
  v146 = v256;
  swift_beginAccess();
  *v146 = v145;
  *(v146 + 8) = v144;
  v147 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__cameraLaunchCountSameSlot);
  swift_beginAccess();
  v148 = *v147;
  LOBYTE(v147) = *(v147 + 8);
  v149 = v257;
  swift_beginAccess();
  *v149 = v148;
  *(v149 + 8) = v147;
  v150 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCountSameSlot);
  swift_beginAccess();
  v151 = *v150;
  LOBYTE(v150) = *(v150 + 8);
  v152 = v258;
  swift_beginAccess();
  *v152 = v151;
  *(v152 + 8) = v150;
  v153 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__filesLaunchCountSameSlot);
  swift_beginAccess();
  v154 = *v153;
  LOBYTE(v153) = *(v153 + 8);
  v155 = v259;
  swift_beginAccess();
  *v155 = v154;
  *(v155 + 8) = v153;
  v156 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnSameSlot;
  swift_beginAccess();
  LOBYTE(v156) = *(a1 + v156);
  v157 = v260;
  swift_beginAccess();
  *(v1 + v157) = v156;
  v158 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnSameSlot;
  swift_beginAccess();
  LOBYTE(v158) = *(a1 + v158);
  v159 = v261;
  swift_beginAccess();
  *(v1 + v159) = v158;
  v160 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnSameSlot;
  swift_beginAccess();
  LOBYTE(v160) = *(a1 + v160);
  v161 = v262;
  swift_beginAccess();
  *(v1 + v161) = v160;
  v162 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numNotificationsSameSlot);
  swift_beginAccess();
  v163 = *v162;
  LOBYTE(v162) = *(v162 + 8);
  v164 = v263;
  swift_beginAccess();
  *v164 = v163;
  *(v164 + 8) = v162;
  v165 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__numOpenedNotificationsSameSlot);
  swift_beginAccess();
  v166 = *v165;
  LOBYTE(v165) = *(v165 + 8);
  v167 = v264;
  swift_beginAccess();
  *v167 = v166;
  *(v167 + 8) = v165;
  v168 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastCameraAppLaunch1W);
  swift_beginAccess();
  v169 = *v168;
  LOBYTE(v168) = *(v168 + 8);
  v170 = v265;
  swift_beginAccess();
  *v170 = v169;
  *(v170 + 8) = v168;
  v171 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastPhotosAppLaunch1W);
  swift_beginAccess();
  v172 = *v171;
  LOBYTE(v171) = *(v171 + 8);
  v173 = v266;
  swift_beginAccess();
  *v173 = v172;
  *(v173 + 8) = v171;
  v174 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsSinceLastFilesAppLaunch1W);
  swift_beginAccess();
  v175 = *v174;
  LOBYTE(v174) = *(v174 + 8);
  v176 = v267;
  swift_beginAccess();
  *v176 = v175;
  *(v176 + 8) = v174;
  v177 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isSleepModeOnCount2W);
  swift_beginAccess();
  v178 = *v177;
  LOBYTE(v177) = *(v177 + 8);
  v179 = v268;
  swift_beginAccess();
  *v179 = v178;
  *(v179 + 8) = v177;
  v180 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDoNotDisturbOnCount2W);
  swift_beginAccess();
  v181 = *v180;
  LOBYTE(v180) = *(v180 + 8);
  v182 = v269;
  swift_beginAccess();
  *v182 = v181;
  *(v182 + 8) = v180;
  v183 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__isDrivingModeOnCount2W);
  swift_beginAccess();
  v184 = *v183;
  LOBYTE(v183) = *(v183 + 8);
  v185 = v270;
  swift_beginAccess();
  *v185 = v184;
  *(v185 + 8) = v183;
  v186 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMedian);
  swift_beginAccess();
  v187 = *v186;
  LOBYTE(v186) = *(v186 + 8);
  v188 = v271;
  swift_beginAccess();
  *v188 = v187;
  *(v188 + 8) = v186;
  v189 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__appLaunchCount2WMax);
  swift_beginAccess();
  v190 = *v189;
  LOBYTE(v189) = *(v189 + 8);
  v191 = v272;
  swift_beginAccess();
  *v191 = v190;
  *(v191 + 8) = v189;
  v192 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMedian);
  swift_beginAccess();
  v193 = *v192;
  LOBYTE(v192) = *(v192 + 8);
  v194 = v273;
  swift_beginAccess();
  *v194 = v193;
  *(v194 + 8) = v192;
  v195 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__photosLaunchCount2WMax);
  swift_beginAccess();
  v196 = *v195;
  LOBYTE(v195) = *(v195 + 8);
  v197 = v274;
  swift_beginAccess();
  *v197 = v196;
  *(v197 + 8) = v195;
  v198 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMedian);
  swift_beginAccess();
  v199 = *v198;
  LOBYTE(v198) = *(v198 + 8);
  v200 = v275;
  swift_beginAccess();
  *v200 = v199;
  *(v200 + 8) = v198;
  v201 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__totalNotificationCount2WMax);
  swift_beginAccess();
  v202 = *v201;
  LOBYTE(v201) = *(v201 + 8);
  v203 = v276;
  swift_beginAccess();
  *v203 = v202;
  *(v203 + 8) = v201;
  v204 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMedian);
  swift_beginAccess();
  v205 = *v204;
  LOBYTE(v204) = *(v204 + 8);
  v206 = v277;
  swift_beginAccess();
  *v206 = v205;
  *(v206 + 8) = v204;
  v207 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openedNotificationCount2WMax);
  swift_beginAccess();
  v208 = *v207;
  LOBYTE(v207) = *(v207 + 8);
  v209 = v278;
  swift_beginAccess();
  *v209 = v208;
  *(v209 + 8) = v207;
  v210 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__buyLabel;
  swift_beginAccess();
  LOBYTE(v210) = *(a1 + v210);
  v211 = v279;
  swift_beginAccess();
  *(v1 + v211) = v210;
  v212 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudBuy);
  swift_beginAccess();
  v213 = *v212;
  LOBYTE(v212) = *(v212 + 8);
  v214 = v280;
  swift_beginAccess();
  *v214 = v213;
  *(v214 + 8) = v212;
  v215 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__openLabelSubStream;
  swift_beginAccess();
  LOBYTE(v215) = *(a1 + v215);
  v216 = v281;
  swift_beginAccess();
  *(v1 + v216) = v215;
  v217 = (a1 + OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__minsUntilIcloudOpenedSubStream);
  swift_beginAccess();
  v218 = *v217;
  LOBYTE(v217) = *(v217 + 8);
  v219 = v282;
  swift_beginAccess();
  *v219 = v218;
  *(v219 + 8) = v217;
  v220 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__userTier;
  swift_beginAccess();
  LOBYTE(v220) = *(a1 + v220);
  v221 = v283;
  swift_beginAccess();
  *(v1 + v221) = v220;
  v222 = OBJC_IVAR____TtCV31iCloudSubscriptionOptimizerCore29ISOPB_SubscriptiondPetMessageP33_C2355CC1C4945ECD07AE1DDBDDE6E41213_StorageClass__obsoleteTrafficType;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v222);
  v223 = v284;
  swift_beginAccess();
  *(v1 + v223) = a1;
  return v1;
}