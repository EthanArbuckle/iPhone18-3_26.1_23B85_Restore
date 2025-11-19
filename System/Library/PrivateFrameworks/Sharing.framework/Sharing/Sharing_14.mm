uint64_t AskToAirDropReceiverController.ConnectionState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x657463656E6E6F43;
    }

    if (a1 == 3)
    {
      return 0x656E6E6F63736944;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701602377;
    }

    if (a1 == 1)
    {
      return 0x697463656E6E6F43;
    }
  }

  result = sub_1A9977840();
  __break(1u);
  return result;
}

uint64_t sub_1A98A65A4()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701602377;
    }

    if (v1 == 1)
    {
      return 0x697463656E6E6F43;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x657463656E6E6F43;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1A9977840();
    __break(1u);
    return result;
  }

  return 0x656E6E6F63736944;
}

uint64_t sub_1A98A666C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1A97B2988;

  return v7();
}

uint64_t sub_1A98A6754(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A97B2638;

  return v8();
}

uint64_t sub_1A98A683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1A98614D8(a3, v25 - v11);
  v13 = sub_1A9976C00();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A97B06FC(v12, &qword_1EB3B29C0, &qword_1A9991A00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A9976BF0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1A9976B80();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1A9976890() + 32;
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

    sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);

    return v23;
  }

LABEL_8:
  sub_1A97B06FC(a3, &qword_1EB3B29C0, &qword_1A9991A00);
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

uint64_t sub_1A98A6B28@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1A98A6BA0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

unint64_t sub_1A98A6BD8(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

id sub_1A98A6BE8(void *a1)
{
  v2 = v1;
  v39 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for SFAirDropClient.Identifier();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCount] = 0;
  v9 = &v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_nearbyDeviceCountChangedHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_didStopHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_queue] = a1;
  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 processInfo];
  v14 = [v13 processName];

  v15 = sub_1A9976820();
  v17 = v16;

  *v8 = v15;
  v8[1] = v17;
  v8[2] = 1;
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for SFAirDropClient(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC7Sharing28AskToAirDropSenderController_airDropClient] = SFAirDropClient.init(identifier:)(v8);
  v38.receiver = v2;
  v38.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v38, sel_init);
  out_token = 0;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = sub_1A98A8770;
  v36 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1A966A1C8;
  v34 = &block_descriptor_383;
  v23 = _Block_copy(&aBlock);
  v24 = v21;
  v25 = v12;
  v26 = v24;

  notify_register_dispatch("IncreaseNearbyCount", &out_token, v25, v23);
  _Block_release(v23);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v35 = sub_1A98A8778;
  v36 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1A966A1C8;
  v34 = &block_descriptor_387;
  v28 = _Block_copy(&aBlock);

  notify_register_dispatch("DecreaseNearbyCount", &out_token, v25, v28);

  _Block_release(v28);
  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t sub_1A98A6F38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A989ED6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A98A7000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A0318(a1, v4, v5, v6);
}

uint64_t sub_1A98A70B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2988;

  return sub_1A98A0CFC(a1, v4, v5, v6, v7, v8);
}

id sub_1A98A717C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for SFAirDropClient.Identifier();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isNearbyDeviceClose] = 0;
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_hasPendingOrActiveConnections] = 0;
  v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_isLegacyMode] = 0;
  v13 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDevicesDisplayName];
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionState] = 0;
  v14 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_stateChangedHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectionStateChangedHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_pendingOrActiveConnectionsChangedHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_nearbyDeviceCloseChangedHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_errorHandler];
  *v18 = 0;
  v18[1] = 0;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_connectedNearbyDeviceNames] = MEMORY[0x1E69E7CC0];
  v19 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_sharingName];
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = &v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_privacyRemoteDeviceNames];
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_queue] = a1;
  v21 = objc_opt_self();
  v22 = a1;
  v23 = [v21 processInfo];
  v24 = [v23 processName];

  v25 = sub_1A9976820();
  v27 = v26;

  *v12 = v25;
  v12[1] = v27;
  v12[2] = 1;
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for SFAirDropClient(0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC7Sharing30AskToAirDropReceiverController_airDropClient] = SFAirDropClient.init(identifier:)(v12);
  v36.receiver = v2;
  v36.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v36, sel_init);
  v32 = sub_1A9976C00();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v31;
  v34 = v31;
  sub_1A989FBEC(0, 0, v8, &unk_1A999FD90, v33);

  return v34;
}

uint64_t sub_1A98A7494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A4D9C(a1, v4, v5, v6);
}

uint64_t sub_1A98A7548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A5314(a1, v4, v5, v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_1A98A7670()
{
  result = qword_1EB3B4130;
  if (!qword_1EB3B4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4130);
  }

  return result;
}

uint64_t keypath_get_46Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

void sub_1A98A77CC()
{
  v1 = *(v0 + 16);
  v2 = sub_1A99767E0();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1A98A7838()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A97B2988;

  return sub_1A98A1AF0(v2, v3);
}

uint64_t sub_1A98A78E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v5);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1A97B43C4(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1A98A7A3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1A98A7A74(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1A98A7AA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1A98A7AC8()
{
  result = qword_1EB3AC990[0];
  if (!qword_1EB3AC990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3AC990);
  }

  return result;
}

void *sub_1A98A7B1C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A989A2D4(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), *(v2 + 48));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
  }

  return result;
}

void sub_1A98A7B58(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1A98A7B64(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1A98A7B7C(result, a2 & 1);
  }

  return result;
}

id sub_1A98A7B7C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A98A7B88(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1A98A7B58(a1, a2 & 1);
  }
}

unint64_t sub_1A98A7BA8()
{
  result = qword_1EB3B4148;
  if (!qword_1EB3B4148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4140, &qword_1A99A00F0);
    sub_1A98A7C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4148);
  }

  return result;
}

unint64_t sub_1A98A7C2C()
{
  result = qword_1EB3B4150;
  if (!qword_1EB3B4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4150);
  }

  return result;
}

unint64_t sub_1A98A7C80()
{
  result = qword_1EB3B4158;
  if (!qword_1EB3B4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4158);
  }

  return result;
}

unint64_t sub_1A98A7CD4()
{
  result = qword_1EB3B4160;
  if (!qword_1EB3B4160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2F18, &qword_1A999FD00);
    sub_1A98A7D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4160);
  }

  return result;
}

unint64_t sub_1A98A7D58()
{
  result = qword_1EB3B4168;
  if (!qword_1EB3B4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4168);
  }

  return result;
}

unint64_t sub_1A98A7DAC()
{
  result = qword_1EB3B4170;
  if (!qword_1EB3B4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4170);
  }

  return result;
}

unint64_t sub_1A98A7E00()
{
  result = qword_1EB3AC388;
  if (!qword_1EB3AC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC388);
  }

  return result;
}

unint64_t sub_1A98A7E54()
{
  result = qword_1EB3B4178;
  if (!qword_1EB3B4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4178);
  }

  return result;
}

unint64_t sub_1A98A7EA8()
{
  result = qword_1EB3B41A0;
  if (!qword_1EB3B41A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B29B0, &qword_1A9990640);
    sub_1A98A8780(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B41A0);
  }

  return result;
}

unint64_t sub_1A98A7F5C()
{
  result = qword_1EB3B41D8;
  if (!qword_1EB3B41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B41D8);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A98A7FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A98A40FC(a1, v4, v5, v6);
}

uint64_t sub_1A98A80A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A98B1B5C(a1, v1);
}

uint64_t sub_1A98A8150(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A98A81A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A98A82A0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B41D0, &qword_1A999FD80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A9996D60;
    v4 = MEMORY[0x1E69E6158];
    *(v3 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1A98A7F5C();
    *(v3 + 64) = v30;
    v5 = a1[5];
    *(v3 + 32) = a1[4];
    *(v3 + 40) = v5;
    v6 = qword_1EB3B0B28;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB3B38C0;
    if (qword_1EB3B38C0)
    {
      v8 = sub_1A99767E0();
      v9 = sub_1A99767E0();
      v10 = sub_1A99767E0();
      v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

      v4 = MEMORY[0x1E69E6158];
      sub_1A9976820();
    }

    v12 = sub_1A9976830();
    v14 = v13;

    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = xmmword_1A9996D60;
    if (v1 == 1)
    {
      *(v15 + 56) = v4;
      *(v15 + 64) = v30;
      *(v15 + 32) = v12;
      *(v15 + 40) = v14;
      SFString.localized.getter();
    }

    else
    {
      *(v15 + 56) = v4;
      *(v15 + 64) = v30;
      v17 = a1[7];
      *(v16 + 32) = a1[6];
      *(v16 + 40) = v17;

      if (v7)
      {
        v18 = sub_1A99767E0();
        v19 = sub_1A99767E0();
        v20 = sub_1A99767E0();
        v21 = [v7 localizedStringForKey:v18 value:v19 table:v20];

        sub_1A9976820();
      }

      v22 = sub_1A9976830();
      v24 = v23;

      v25 = v1 - 2;
      v26 = swift_allocObject();
      if (v25)
      {
        *(v26 + 16) = xmmword_1A9998180;
        *(v26 + 56) = v4;
        *(v26 + 64) = v30;
        *(v26 + 32) = v12;
        *(v26 + 40) = v14;
        *(v26 + 96) = v4;
        *(v26 + 104) = v30;
        v27 = MEMORY[0x1E69E6530];
        v28 = MEMORY[0x1E69E65A8];
        *(v26 + 72) = v22;
        *(v26 + 80) = v24;
        *(v26 + 136) = v27;
        *(v26 + 144) = v28;
        *(v26 + 112) = v25;
      }

      else
      {
        *(v26 + 16) = xmmword_1A9998170;
        *(v26 + 56) = v4;
        *(v26 + 64) = v30;
        *(v26 + 32) = v12;
        *(v26 + 40) = v14;
        *(v26 + 96) = v4;
        *(v26 + 104) = v30;
        *(v26 + 72) = v22;
        *(v26 + 80) = v24;
      }

      SFString.localized.getter();
    }

    v1 = sub_1A9976830();
  }

  return v1;
}

void *sub_1A98A8654@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A989A0B0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 40), *(v2 + 48));
  if (!v3)
  {
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1A98A8690(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1A98A86A0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1A98A86B8(result, a2, a3 & 1);
  }

  return result;
}

id sub_1A98A86B8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A98A86C8(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1A98A8690(a1, a2, a3 & 1);
  }
}

uint64_t sub_1A98A86E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0xE000000000000000, 0, 0xE000000000000000);
}

uint64_t sub_1A98A8780(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A98A87C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98A88FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1A98A8934();
  return v3;
}

uint64_t sub_1A98A8934()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v3 = sub_1A9976BB0();
  (*(*(v3 - 8) + 56))(v0 + v1, 1, 1, v3);
  v4 = *(*v0 + 96);
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v0 + *(*v0 + 104)) = 0;
  v5 = (v0 + *(*v0 + 112));
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t CancellableCheckedContinuation.setContinuation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *v2;
  v10 = 0;
  v6 = *(v2 + *(v4 + 96));
  [v6 lock];
  sub_1A98A8B9C(v2, &v10, a1);
  [v6 unlock];
  v7 = v10;
  if (v10)
  {
    sub_1A9976BC0();
    sub_1A97FC63C();
    swift_allocError();
    sub_1A99766C0();
    v8 = *(v5 + 80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
    sub_1A9976BB0();
    sub_1A9976B90();
  }

  return v7 ^ 1u;
}

uint64_t sub_1A98A8B9C(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9976BB0();
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  if (*(a1 + *(v6 + 104)) == 1)
  {
    *a2 = 1;
  }

  else
  {
    v15 = *(v8 - 8);
    (*(v15 + 16))(v14, a3, v8);
    (*(v15 + 56))(v14, 0, 1, v8);
    v16 = *(*a1 + 88);
    swift_beginAccess();
    (*(v10 + 40))(a1 + v16, v14, v9);
    return swift_endAccess();
  }

  return result;
}

id CancellableCheckedContinuation.onCancel(_:)(uint64_t (*a1)(id), uint64_t a2)
{
  v3 = v2;
  v8 = 0;
  v6 = *(v3 + *(*v3 + 96));
  [v6 lock];
  sub_1A98A8E64(v3, &v8, a1, a2);
  result = [v6 unlock];
  if (v8)
  {
    return a1(result);
  }

  return result;
}

uint64_t sub_1A98A8E64(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (*(result + *(*result + 104)) == 1)
  {
    *a2 = 1;
  }

  else
  {
    v4 = (result + *(*result + 112));
    v5 = *v4;
    v6 = v4[1];
    *v4 = a3;
    v4[1] = a4;
    sub_1A967C46C(v5);
  }

  return result;
}

uint64_t sub_1A98A8F00(int a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v25 = a2;
  v6 = *(*v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v7 = sub_1A9976BB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = sub_1A99770A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(v8 + 56))(&v24 - v18, 1, 1, v7);
  v27[0] = 0;
  v27[1] = 0;
  v20 = *(v4 + *(*v4 + 96));
  [v20 lock];
  v26 = a1;
  sub_1A98A9230(v4, a1, v19, v27);
  [v20 unlock];
  (*(v13 + 16))(v17, v19, v12);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    (*(v13 + 8))(v17, v12);
  }

  else
  {
    (*(v8 + 32))(v11, v17, v7);
    v25(v11);
    (*(v8 + 8))(v11, v7);
  }

  v21 = v27[0];
  if ((v26 & 1) != 0 && v27[0])
  {
    v22 = v27[0];
    (v27[0])();
    v21 = v22;
  }

  sub_1A967C46C(v21);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_1A98A9230(uint64_t *a1, char a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v25 = sub_1A9976BB0();
  v10 = sub_1A99770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  *(a1 + *(v8 + 104)) = (*(a1 + *(v8 + 104)) | a2) & 1;
  v15 = *(*a1 + 88);
  swift_beginAccess();
  (*(v11 + 16))(v14, a1 + v15, v10);
  v24 = *(v11 + 40);
  v24(a3, v14, v10);
  v16 = (a1 + *(*a1 + 112));
  v17 = *v16;
  v18 = v16[1];
  v19 = *a4;
  v20 = a4[1];
  *a4 = *v16;
  a4[1] = v18;
  sub_1A967C510(v17);
  sub_1A967C46C(v19);
  (*(*(v25 - 8) + 56))(v14, 1, 1);
  swift_beginAccess();
  v24(a1 + v15, v14, v10);
  swift_endAccess();
  v21 = *v16;
  v22 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return sub_1A967C46C(v21);
}

uint64_t _s7Sharing30CancellableCheckedContinuationCAAytRszlE6resumeyyF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4278, &qword_1A999FE70);
  v27 = *(v1 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v2 + 56);
  v14(&v26 - v12, 1, 1, v1);
  v29 = *(v0 + *(*v0 + 96));
  [v29 lock];
  *(v0 + *(*v0 + 104)) = *(v0 + *(*v0 + 104));
  v15 = *(*v0 + 88);
  swift_beginAccess();
  sub_1A98AA324(v13);
  sub_1A98AA38C(v0 + v15, v13);
  v16 = (v0 + *(*v0 + 112));
  v17 = *v16;
  v18 = v16[1];
  v14(v11, 1, 1, v1);
  v19 = v17;
  v21 = v27;
  v20 = v28;
  swift_beginAccess();
  sub_1A967C510(v19);
  sub_1A98AA3FC(v11, v0 + v15);
  swift_endAccess();
  v22 = *v16;
  v23 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  sub_1A967C46C(v22);
  [v29 unlock];
  sub_1A98AA38C(v13, v20);
  if ((*(v21 + 48))(v20, 1, v1) == 1)
  {
    sub_1A98AA324(v20);
  }

  else
  {
    v24 = v26;
    (*(v21 + 32))(v26, v20, v1);
    sub_1A9976BA0();
    (*(v21 + 8))(v24, v1);
  }

  sub_1A967C46C(v19);
  return sub_1A98AA324(v13);
}

uint64_t CancellableCheckedContinuation.resume(returning:)(uint64_t a1)
{
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  return sub_1A98A8F00(0, sub_1A98A98EC, v3);
}

uint64_t sub_1A98A9804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976BA0();
}

uint64_t CancellableCheckedContinuation.resume(throwing:)(uint64_t a1)
{
  v3[2] = *(*v1 + 80);
  v3[3] = a1;
  return sub_1A98A8F00(0, sub_1A98A99B8, v3);
}

uint64_t sub_1A98A9948(int a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

uint64_t CancellableCheckedContinuation.isCancelled.getter()
{
  v1 = *(v0 + *(*v0 + 96));
  [v1 lock];
  v2 = *(v0 + *(*v0 + 104));
  [v1 unlock];
  return v2;
}

uint64_t sub_1A98A9A84()
{
  sub_1A9976BC0();
  sub_1A97FC63C();
  swift_allocError();
  sub_1A99766C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

uint64_t CancellableCheckedContinuation.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  v3 = sub_1A99770A0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);

  v4 = (v0 + *(*v0 + 112));
  v5 = v4[1];
  sub_1A967C46C(*v4);
  return v0;
}

uint64_t CancellableCheckedContinuation.__deallocating_deinit()
{
  CancellableCheckedContinuation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t withCancellableCheckedContinuation<A>(function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98A9CA0, 0, 0);
}

uint64_t sub_1A98A9CA0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = type metadata accessor for CancellableCheckedContinuation();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  v14 = *(v0 + 40);
  sub_1A98A8934();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;
  *(v8 + 32) = v7;
  *(v8 + 40) = v14;
  v9 = *(MEMORY[0x1E69E88F0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_1A98A9DD4;
  v11 = *(v0 + 56);
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v12, &unk_1A999FDF8, v8, sub_1A98A9A30, v7, 0, 0, v11);
}

uint64_t sub_1A98A9DD4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1A98A9F54;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1A98A9EF0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A98A9EF0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98A9F54()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1A98A9FD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1A98AA028, 0, 0);
}

uint64_t sub_1A98AA028()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = sub_1A987A88C;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v9, 0, 0, v7, v8, sub_1A98AA2DC, v3, v6);
}

uint64_t sub_1A98AA110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A97B2638;

  return sub_1A98A9FD8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A98AA1D8(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  result = sub_1A99770A0();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98AA2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  result = CancellableCheckedContinuation.setContinuation(_:)(a1);
  if (result)
  {
    return v5(v3);
  }

  return result;
}

uint64_t sub_1A98AA324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98AA38C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98AA3FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4280, &unk_1A999FE78);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98AA46C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for SFSecurityScopedURL(0);
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v38 - v17;
  v18 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v50 = MEMORY[0x1E69E7CC0];
    sub_1A97BDBC0(0, v18, 0);
    v49 = v50;
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = (a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64)));
    v43 = (v20 - 8);
    v44 = v21;
    v38 = *(v20 + 56);
    v39 = v4;
    v41 = v9;
    v42 = v20;
    v40 = v11;
    while (1)
    {
      v23 = v44;
      v44(v11, v22, v4);
      v23(v9, v11, v4);
      v23(v16, v9, v4);
      sub_1A97F0064(v9);
      v25 = v16;
      v27 = v26;
      v28 = v9;
      if (v2)
      {
        break;
      }

      v29 = v24;
      v48 = 0;
      v30 = *v43;
      (*v43)(v28, v4);
      v30(v11, v4);
      v31 = (v25 + *(v47 + 20));
      *v31 = v27;
      v31[1] = v29;
      v32 = v45;
      sub_1A98B70C4(v25, v45, type metadata accessor for SFSecurityScopedURL);
      v33 = v49;
      v50 = v49;
      v35 = *(v49 + 16);
      v34 = *(v49 + 24);
      v16 = v25;
      if (v35 >= v34 >> 1)
      {
        sub_1A97BDBC0(v34 > 1, v35 + 1, 1);
        v33 = v50;
      }

      *(v33 + 16) = v35 + 1;
      v36 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v49 = v33;
      sub_1A98B70C4(v32, v33 + v36 + *(v46 + 72) * v35, type metadata accessor for SFSecurityScopedURL);
      v4 = v39;
      v22 += v38;
      --v18;
      v2 = v48;
      v9 = v41;
      v11 = v40;
      if (!v18)
      {
        return v49;
      }
    }

    v37 = *v43;
    (*v43)(v9, v4);
    v37(v11, v4);
    v37(v25, v4);
  }

  return result;
}

id SFAirDropClient.__allocating_init(identifier:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return SFAirDropClient.init(identifier:)(a1);
}

uint64_t sub_1A98AA844()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3AC978);
  v1 = __swift_project_value_buffer(v0, qword_1EB3AC978);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id SFAirDropClient.init(identifier:)(uint64_t a1)
{
  v25 = a1;
  ObjectType = swift_getObjectType();
  v24 = sub_1A9976FB0();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A9976FA0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A9976680();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  swift_defaultActor_initialize();
  v23 = OBJC_IVAR____TtC7Sharing15SFAirDropClient_queue;
  v10 = sub_1A97F1CA0();
  v22[1] = "";
  v22[2] = v10;
  sub_1A9976660();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A98B7180(&qword_1EB3AC8E0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A97AF974(&qword_1EB3AC910, &unk_1EB3B26D8, &unk_1A9997EB0);
  sub_1A99771F0();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8098], v24);
  v11 = v1;
  v12 = v25;
  v13 = sub_1A9976FE0();
  *(v1 + v23) = v13;
  sub_1A98B6D20(v12, v1 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);
  v14 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v15 = v13;
  v16 = sub_1A99767E0();
  v17 = [v14 initWithMachServiceName:v16 options:0];

  type metadata accessor for SFXPCConnection();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = v17;
  v19 = v17;
  [v19 sf:v15 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v19 setRemoteObjectInterface_];

  v11[14] = v18;
  swift_beginAccess();
  [*(v18 + 16) activate];
  v27.receiver = v11;
  v27.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  sub_1A98B6CC0(v12, type metadata accessor for SFAirDropClient.Identifier);
  return v20;
}

uint64_t SFAirDropClient.deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
  v2 = *(v0 + 112);

  sub_1A98B6CC0(v0 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SFAirDropClient.__deallocating_deinit()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
  v2 = *(v0 + 112);

  sub_1A98B6CC0(v0 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, type metadata accessor for SFAirDropClient.Identifier);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 152) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 80) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  v13 = sub_1A99762C0();
  *(v9 + 104) = v13;
  v14 = *(v13 - 8);
  *(v9 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();
  *(v9 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AAFD4, v8, 0);
}

{
  *(v9 + 144) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 80) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  v13 = sub_1A99762C0();
  *(v9 + 104) = v13;
  v14 = *(v13 - 8);
  *(v9 + 112) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AC6F8, v8, 0);
}

uint64_t sub_1A98AAFD4()
{
  v40 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  NWEndpoint.endpointUUID()();
  sub_1A99762B0();
  v8 = *(v4 + 16);
  v8(v5, v2, v3);
  v9 = sub_1A98AA46C(v7);
  v10 = *(v0 + 96);
  v33 = *(v0 + 104);
  v34 = *(v0 + 128);
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v36 = *(v0 + 64);
  v37 = *(v0 + 72);
  v13 = *(v0 + 48);
  v35 = *(v0 + 56);
  v14 = *(v0 + 40);
  v15 = v9;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v9, *(v0 + 152), v38);
  v16 = v38[0];
  v32 = v38[1];
  v31 = v39;
  v17 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v14, v13);
  v19 = v18;
  sub_1A98B6D20(v10, v11, type metadata accessor for SFAirDrop.TransferIdentifier);
  v8(v11 + v12[7], v34, v33);
  v20 = v11 + v12[11];
  *v20 = xmmword_1A999DA90;
  v21 = (v11 + v12[12]);
  v22 = (v11 + v12[13]);
  v23 = v11 + v12[5];
  *v23 = v16;
  *(v23 + 8) = v32;
  *(v23 + 16) = v31;
  *(v11 + v12[6]) = v15;
  v24 = v12[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v25 - 8) + 56))(v11 + v24, 1, 1, v25);
  *(v11 + v12[9]) = 0;
  *(v11 + v12[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v20, *(v20 + 8));
  *v20 = v17;
  *(v20 + 8) = v19;
  *v21 = 0;
  v21[1] = 0;
  *v22 = v35;
  v22[1] = v36;
  v26 = *(v37 + 112);

  v27 = swift_task_alloc();
  *(v0 + 136) = v27;
  *v27 = v0;
  v27[1] = sub_1A98AB300;
  v28 = *(v0 + 88);
  v29 = *(v0 + 16);

  return sub_1A983A758(v29, v28);
}

uint64_t sub_1A98AB300()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1A98AB530;
  }

  else
  {
    v6 = sub_1A98AB42C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98AB42C()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1A98B6CC0(v5, type metadata accessor for SFAirDropSend.Request);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98AB530()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v6 = v0[18];
  v7 = v0[14] + 8;
  v8 = v0[15];
  v10 = v0[11];
  v9 = v0[12];
  v5(v0[16], v0[13]);

  v11 = v0[1];

  return v11();
}

void NWEndpoint.endpointUUID()()
{
  v0 = swift_slowAlloc();
  if (sub_1A99765E0())
  {
    nw_endpoint_get_service_identifier();
    swift_unknownObjectRelease();
    v1 = v0[7];
    v2 = v0[6];
    v3 = v0[5];
    v4 = v0[4];
    v5 = v0[3];
    v6 = v0[2];
    v7 = v0[1];
    v8 = *v0;
    v9 = *(v0 + 1);
    sub_1A99762A0();
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x1AC58D2C0);
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 80) = v19;
  *(v9 + 88) = v8;
  *(v9 + 160) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v18;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 96) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = sub_1A99762C0();
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AB818, v8, 0);
}

{
  *(v9 + 80) = v19;
  *(v9 + 88) = v8;
  *(v9 + 168) = a8;
  *(v9 + 64) = a7;
  *(v9 + 72) = v18;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 96) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = sub_1A99762C0();
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ABF58, v8, 0);
}

uint64_t sub_1A98AB818()
{
  v43 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 24);
  sub_1A99762B0();
  v6 = *(v2 + 16);
  v6(v4, v1, v3);
  v7 = sub_1A98AA46C(v5);
  v8 = *(v0 + 112);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v35 = *(v0 + 120);
  v36 = *(v0 + 72);
  v39 = *(v0 + 64);
  v40 = *(v0 + 88);
  v37 = *(v0 + 80);
  v38 = *(v0 + 56);
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = v7;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v7, *(v0 + 160), v41);
  v33 = v41[1];
  v34 = v41[0];
  v32 = v42;
  v15 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v12, v11);
  v17 = v16;
  sub_1A98B6D20(v8, v10, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6(v10 + v9[7], v13, v35);
  v18 = v10 + v9[11];
  *v18 = xmmword_1A999DA90;
  v19 = (v10 + v9[12]);
  v20 = (v10 + v9[13]);
  v21 = v10 + v9[5];
  *v21 = v34;
  *(v21 + 8) = v33;
  *(v21 + 16) = v32;
  *(v10 + v9[6]) = v14;
  v22 = v9[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v23 - 8) + 56))(v10 + v22, 1, 1, v23);
  *(v10 + v9[9]) = 0;
  v24 = (v10 + v9[10]);
  *v24 = v36;
  v24[1] = v37;
  v25 = *v18;
  v26 = *(v18 + 8);
  sub_1A97C1554(v36, v37);
  sub_1A97D8688(v25, v26);
  *v18 = v15;
  *(v18 + 8) = v17;
  *v19 = 0;
  v19[1] = 0;
  *v20 = v38;
  v20[1] = v39;
  v27 = *(v40 + 112);

  v28 = swift_task_alloc();
  *(v0 + 144) = v28;
  *v28 = v0;
  v28[1] = sub_1A98ABB30;
  v29 = *(v0 + 104);
  v30 = *(v0 + 16);

  return sub_1A983A758(v30, v29);
}

uint64_t sub_1A98ABB30()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1A98ABD3C;
  }

  else
  {
    v6 = sub_1A98ABC5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98ABC5C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98ABD3C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v5 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A98ABF58()
{
  v45 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  NWEndpoint.endpointUUID()();
  sub_1A99762B0();
  v8 = *(v4 + 16);
  v8(v5, v2, v3);
  v9 = sub_1A98AA46C(v7);
  v10 = *(v0 + 112);
  v36 = *(v0 + 120);
  v37 = *(v0 + 144);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v38 = *(v0 + 72);
  v39 = *(v0 + 80);
  v41 = *(v0 + 64);
  v42 = *(v0 + 88);
  v13 = *(v0 + 48);
  v40 = *(v0 + 56);
  v14 = *(v0 + 40);
  v15 = v9;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v9, *(v0 + 168), v43);
  v16 = v43[0];
  v35 = v43[1];
  v34 = v44;
  v17 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v14, v13);
  v19 = v18;
  sub_1A98B6D20(v10, v12, type metadata accessor for SFAirDrop.TransferIdentifier);
  v8(v12 + v11[7], v37, v36);
  v20 = v12 + v11[11];
  *v20 = xmmword_1A999DA90;
  v21 = (v12 + v11[12]);
  v22 = (v12 + v11[13]);
  v23 = v12 + v11[5];
  *v23 = v16;
  *(v23 + 8) = v35;
  *(v23 + 16) = v34;
  *(v12 + v11[6]) = v15;
  v24 = v11[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v25 - 8) + 56))(v12 + v24, 1, 1, v25);
  *(v12 + v11[9]) = 0;
  v26 = (v12 + v11[10]);
  *v26 = v38;
  v26[1] = v39;
  v27 = *v20;
  v28 = *(v20 + 8);
  sub_1A97C1554(v38, v39);
  sub_1A97D8688(v27, v28);
  *v20 = v17;
  *(v20 + 8) = v19;
  *v21 = 0;
  v21[1] = 0;
  *v22 = v40;
  v22[1] = v41;
  v29 = *(v42 + 112);

  v30 = swift_task_alloc();
  *(v0 + 152) = v30;
  *v30 = v0;
  v30[1] = sub_1A98AC298;
  v31 = *(v0 + 104);
  v32 = *(v0 + 16);

  return sub_1A983A758(v32, v31);
}

uint64_t sub_1A98AC298()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1A98AC4C8;
  }

  else
  {
    v6 = sub_1A98AC3C4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98AC3C4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);
  sub_1A98B6CC0(v5, type metadata accessor for SFAirDropSend.Request);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A98AC4C8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  sub_1A98B6CC0(v0[14], type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = *(v2 + 8);
  v5(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v6 = v0[20];
  v7 = v0[16] + 8;
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v5(v0[18], v0[15]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1A98AC6F8()
{
  v38 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 24);
  sub_1A99762B0();
  v6 = *(v2 + 16);
  v6(v4, v1, v3);
  v7 = sub_1A98AA46C(v5);
  v8 = *(v0 + 96);
  v32 = *(v0 + 104);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v34 = *(v0 + 64);
  v35 = *(v0 + 72);
  v11 = *(v0 + 48);
  v33 = *(v0 + 56);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v14 = v7;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v7, *(v0 + 144), v36);
  v30 = v36[1];
  v31 = v36[0];
  v29 = v37;
  v15 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v12, v11);
  v17 = v16;
  sub_1A98B6D20(v8, v9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6(v9 + v10[7], v13, v32);
  v18 = v9 + v10[11];
  *v18 = xmmword_1A999DA90;
  v19 = (v9 + v10[12]);
  v20 = (v9 + v10[13]);
  v21 = v9 + v10[5];
  *v21 = v31;
  *(v21 + 8) = v30;
  *(v21 + 16) = v29;
  *(v9 + v10[6]) = v14;
  v22 = v10[8];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v23 - 8) + 56))(v9 + v22, 1, 1, v23);
  *(v9 + v10[9]) = 0;
  *(v9 + v10[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v18, *(v18 + 8));
  *v18 = v15;
  *(v18 + 8) = v17;
  *v19 = 0;
  v19[1] = 0;
  *v20 = v33;
  v20[1] = v34;
  v24 = *(v35 + 112);

  v25 = swift_task_alloc();
  *(v0 + 128) = v25;
  *v25 = v0;
  v25[1] = sub_1A98AC9FC;
  v26 = *(v0 + 88);
  v27 = *(v0 + 16);

  return sub_1A983A758(v27, v26);
}

uint64_t sub_1A98AC9FC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1A98ACC08;
  }

  else
  {
    v6 = sub_1A98ACB28;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98ACB28()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98ACC08()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  sub_1A98B6CC0(v0[12], type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v2 + 8))(v1, v3);
  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropSend.Request);
  v5 = v0[17];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];

  v9 = v0[1];

  return v9();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 88) = v16;
  *(v9 + 96) = v8;
  *(v9 + 72) = v15;
  *(v9 + 144) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 104) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ACDC4, v8, 0);
}

uint64_t sub_1A98ACDC4()
{
  v41 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);
  v5(v1, v2, v4);
  v6 = sub_1A98AA46C(v3);
  v7 = *(v0 + 112);
  v30 = *(v0 + 120);
  v8 = *(v0 + 104);
  v34 = *(v0 + 80);
  v35 = *(v0 + 88);
  v37 = *(v0 + 64);
  v38 = *(v0 + 96);
  v36 = *(v0 + 56);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v6;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v6, *(v0 + 144), v39);
  v32 = v39[1];
  v33 = v39[0];
  v31 = v40;
  v13 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v10, v9);
  v15 = v14;
  sub_1A98B6D20(v30, v7, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5(v7 + v8[7], v11, v4);
  v16 = v7 + v8[11];
  *v16 = xmmword_1A999DA90;
  v17 = (v7 + v8[12]);
  v18 = (v7 + v8[13]);
  v19 = v7 + v8[5];
  *v19 = v33;
  *(v19 + 8) = v32;
  *(v19 + 16) = v31;
  *(v7 + v8[6]) = v12;
  v20 = v8[8];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + v8[9]) = 0;
  v22 = (v7 + v8[10]);
  *v22 = v34;
  v22[1] = v35;
  v23 = *v16;
  v24 = *(v16 + 8);
  sub_1A97C1554(v34, v35);
  sub_1A97D8688(v23, v24);
  *v16 = v13;
  *(v16 + 8) = v15;
  *v17 = 0;
  v17[1] = 0;
  *v18 = v36;
  v18[1] = v37;
  v25 = *(v38 + 112);

  v26 = swift_task_alloc();
  *(v0 + 128) = v26;
  *v26 = v0;
  v26[1] = sub_1A98AD0D0;
  v27 = *(v0 + 112);
  v28 = *(v0 + 16);

  return sub_1A983A758(v28, v27);
}

uint64_t sub_1A98AD0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_1A98AD2A4;
  }

  else
  {
    v6 = sub_1A98AD1FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98AD1FC()
{
  v1 = v0[14];
  sub_1A98B6CC0(v0[15], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A98AD2A4()
{
  v1 = v0[14];
  sub_1A98B6CC0(v0[15], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];

  v5 = v0[1];

  return v5();
}

uint64_t SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:transferID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 72) = v15;
  *(v9 + 80) = v8;
  *(v9 + 128) = a8;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  v12 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AD424, v8, 0);
}

uint64_t sub_1A98AD424()
{
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);
  v5(v1, v2, v4);
  v6 = sub_1A98AA46C(v3);
  v7 = *(v0 + 96);
  v30 = *(v0 + 104);
  v8 = *(v0 + 88);
  v32 = *(v0 + 64);
  v33 = *(v0 + 80);
  v31 = *(v0 + 56);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = v6;
  static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v6, *(v0 + 128), v34);
  v28 = v34[1];
  v29 = v34[0];
  v27 = v35;
  v13 = _s7Sharing13SFAirDropSendO4ItemV26compressedPreviewImageData4data10Foundation0I0VSgAK_tFZ_0(v10, v9);
  v15 = v14;
  sub_1A98B6D20(v30, v7, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5(v7 + v8[7], v11, v4);
  v16 = v7 + v8[11];
  *v16 = xmmword_1A999DA90;
  v17 = (v7 + v8[12]);
  v18 = (v7 + v8[13]);
  v19 = v7 + v8[5];
  *v19 = v29;
  *(v19 + 8) = v28;
  *(v19 + 16) = v27;
  *(v7 + v8[6]) = v12;
  v20 = v8[8];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + v8[9]) = 0;
  *(v7 + v8[10]) = xmmword_1A999DA90;
  sub_1A97D8688(*v16, *(v16 + 8));
  *v16 = v13;
  *(v16 + 8) = v15;
  *v17 = 0;
  v17[1] = 0;
  *v18 = v31;
  v18[1] = v32;
  v22 = *(v33 + 112);

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1A98AD71C;
  v24 = *(v0 + 96);
  v25 = *(v0 + 16);

  return sub_1A983A758(v25, v24);
}

uint64_t sub_1A98AD71C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1A98AD8F0;
  }

  else
  {
    v6 = sub_1A98AD848;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98AD848()
{
  v1 = v0[12];
  sub_1A98B6CC0(v0[13], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1A98AD8F0()
{
  v1 = v0[12];
  sub_1A98B6CC0(v0[13], type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6CC0(v1, type metadata accessor for SFAirDropSend.Request);
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t SFAirDropClient.send(_:to:requestSource:onlyExchange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 104) = a6;
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1A99762C0();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ADA60, v6, 0);
}

{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A97B2988;

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(a1, a2, a3, a4, a5, a6, 0, 0xF000000000000000);
}

uint64_t sub_1A98ADA60()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  NWEndpoint.endpointUUID()();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1A98ADB18;
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 104);
  v8 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(v9, v10, v4, v8, v5, v7, 0, 0xF000000000000000);
}

uint64_t sub_1A98ADB18()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[7];

    return MEMORY[0x1EEE6DFA0](sub_1A98ADCC0, v7, 0);
  }

  else
  {
    v8 = v6[10];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1A98ADCC0()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 352) = a8;
  *(v9 + 360) = v8;
  *(v9 + 153) = a6;
  *(v9 + 336) = a5;
  *(v9 + 344) = a7;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  v10 = sub_1A9976420();
  *(v9 + 368) = v10;
  v11 = *(v10 - 8);
  *(v9 + 376) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 384) = swift_task_alloc();
  v13 = sub_1A99762C0();
  *(v9 + 392) = v13;
  v14 = *(v13 - 8);
  *(v9 + 400) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 408) = swift_task_alloc();
  v16 = type metadata accessor for SFAirDropSend.Request();
  *(v9 + 416) = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  *(v9 + 424) = swift_task_alloc();
  *(v9 + 432) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  *(v9 + 440) = v18;
  v19 = *(v18 - 8);
  *(v9 + 448) = v19;
  v20 = *(v19 + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  v21 = *(*(type metadata accessor for SFAirDrop.TransferIdentifier() - 8) + 64) + 15;
  *(v9 + 472) = swift_task_alloc();
  *(v9 + 480) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98ADF38, v8, 0);
}

{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 120) = a6;
  *(v9 + 48) = a5;
  *(v9 + 56) = a7;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1A99762C0();
  *(v9 + 80) = v10;
  v11 = *(v10 - 8);
  *(v9 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AEA3C, v8, 0);
}

uint64_t sub_1A98ADF38()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 312);
  sub_1A99762B0();
  v4 = static SFAirDropSend.convertItemPromises(_:)(v2, v3);
  v5 = *(v3 + 16);
  if (!v5)
  {
LABEL_25:
    if (*(v0 + 153) == 1)
    {
      v88 = 2;
      v85 = 0xE300000000000000;
      v35 = 6710134;
    }

    else
    {
      v85 = 0;
      v88 = 3;
      v35 = 1;
    }

    goto LABEL_32;
  }

  v6 = (*(v0 + 312) + 32);
  v81 = (*(v0 + 376) + 8);
  v7 = v5 - 1;
  while (1)
  {
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[4];
    *(v0 + 64) = v6[3];
    *(v0 + 80) = v10;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    v11 = v6[5];
    v12 = v6[6];
    v13 = v6[7];
    *(v0 + 137) = *(v6 + 121);
    *(v0 + 112) = v12;
    *(v0 + 128) = v13;
    *(v0 + 96) = v11;
    *(v0 + 16) = *v6;
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 64);
    if (v16)
    {
      v17 = *(v0 + 56);
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = *(v0 + 64);
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    sub_1A980C124(v0 + 16, v0 + 160);

    v19 = sub_1A99767E0();
    v20 = [v19 pathExtension];

    v21 = sub_1A9976820();
    v23 = v22;

    if (qword_1EB3B0B70 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 368), qword_1EB3EAFB8);
    if (v17 == sub_1A99763D0() && v18 == v24)
    {
      break;
    }

    v25 = sub_1A99777E0();

    if (v25)
    {
      goto LABEL_29;
    }

    v84 = v21;
    v87 = v23;
    v26 = v7;
    v27 = *(v0 + 384);
    v28 = *(v0 + 368);
    sub_1A99763F0();
    v29 = sub_1A99763D0();
    v31 = v30;
    (*v81)(v27, v28);
    if (v17 == v29 && v18 == v31)
    {

      v32 = v26;
    }

    else
    {
      v33 = sub_1A99777E0();

      v32 = v26;
      if ((v33 & 1) == 0)
      {

        sub_1A980C15C(v0 + 16);
        if (!v26)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    if (v84 == 0x6170726565706B70 && v87 == 0xED0000746E656D79)
    {
      goto LABEL_30;
    }

    v34 = sub_1A99777E0();

    sub_1A980C15C(v0 + 16);
    if (v34)
    {
      goto LABEL_31;
    }

    if (!v32)
    {
      goto LABEL_25;
    }

LABEL_24:
    v7 = v32 - 1;
    v6 += 9;
  }

LABEL_29:

LABEL_30:

  sub_1A980C15C(v0 + 16);
LABEL_31:
  v85 = 0;
  v88 = 3;
  v35 = 2;
LABEL_32:
  v76 = v35;
  v37 = *(v0 + 456);
  v36 = *(v0 + 464);
  v74 = *(v0 + 472);
  v75 = *(v0 + 448);
  v39 = *(v0 + 416);
  v38 = *(v0 + 424);
  v40 = *(v0 + 400);
  v73 = *(v0 + 408);
  v41 = *(v0 + 392);
  v79 = *(v0 + 440);
  v82 = *(v0 + 352);
  v77 = *(v0 + 344);
  v42 = *(v0 + 320);
  sub_1A98B6D20(*(v0 + 480), v74, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A98B6D88(v36, v37);
  v43 = *(v40 + 16);
  v43(v73, v42, v41);
  v72 = v38 + v39[11];
  *v72 = xmmword_1A999DA90;
  sub_1A98B6D20(v74, v38, type metadata accessor for SFAirDrop.TransferIdentifier);
  v44 = v38 + v39[5];
  *v44 = v76;
  *(v44 + 8) = v85;
  *(v44 + 16) = v88;
  *(v38 + v39[6]) = 0;
  v43(v38 + v39[7], v73, v41);
  v45 = v39[8];
  sub_1A98B6D88(v37, v38 + v45);
  (*(v75 + 56))(v38 + v45, 0, 1, v79);
  *(v38 + v39[9]) = v4;
  v46 = (v38 + v39[10]);
  *v46 = v77;
  v46[1] = v82;
  v47 = *(v4 + 16);

  result = sub_1A97C1554(v77, v82);
  v49 = 0;
  v50 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v51 = 120 * v49 + 136;
  while (v47 != v49)
  {
    if (v49 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v52 = v51 + 120;
    ++v49;
    v53 = *(v4 + v51);
    v51 += 120;
    if (v53 >> 60 != 15)
    {
      v54 = *(v4 + v52 - 128);
      sub_1A97B40FC(v54, v53);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A97AED8C(0, *(v50 + 16) + 1, 1, v50);
        v50 = result;
      }

      v56 = *(v50 + 16);
      v55 = *(v50 + 24);
      if (v56 >= v55 >> 1)
      {
        result = sub_1A97AED8C((v55 > 1), v56 + 1, 1, v50);
        v50 = result;
      }

      *(v50 + 16) = v56 + 1;
      v57 = v50 + 16 * v56;
      *(v57 + 32) = v54;
      *(v57 + 40) = v53;
      goto LABEL_33;
    }
  }

  if (*(v50 + 16))
  {
    v86 = *(v50 + 40);
    v89 = *(v50 + 32);
    sub_1A97B40FC(v89, v86);
  }

  else
  {
    v86 = 0xF000000000000000;
    v89 = 0;
  }

  v58 = *(v0 + 472);
  v59 = *(v0 + 456);
  v60 = *(v0 + 424);
  v62 = *(v0 + 408);
  v61 = *(v0 + 416);
  v64 = *(v0 + 392);
  v63 = *(v0 + 400);
  v80 = *(v0 + 360);
  v83 = *(v0 + 432);
  v65 = *(v0 + 336);
  v78 = *(v0 + 328);

  v66 = (v60 + *(v61 + 48));
  v67 = (v60 + *(v61 + 52));
  (*(v63 + 8))(v62, v64);
  sub_1A98B6DF8(v59);
  sub_1A98B6CC0(v58, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97D8688(*v72, *(v72 + 8));
  *v72 = v89;
  *(v72 + 8) = v86;
  *v66 = 0;
  v66[1] = 0;
  *v67 = v78;
  v67[1] = v65;
  sub_1A98B70C4(v60, v83, type metadata accessor for SFAirDropSend.Request);
  v68 = *(v80 + 112);

  v69 = swift_task_alloc();
  *(v0 + 488) = v69;
  *v69 = v0;
  v69[1] = sub_1A98AE630;
  v70 = *(v0 + 432);
  v71 = *(v0 + 304);

  return sub_1A983A758(v71, v70);
}

uint64_t sub_1A98AE630()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_1A98AE864;
  }

  else
  {
    v6 = sub_1A98AE75C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98AE75C()
{
  v1 = v0[59];
  v2 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[53];
  v6 = v0[51];
  v7 = v0[48];
  sub_1A98B6CC0(v0[54], type metadata accessor for SFAirDropSend.Request);
  sub_1A98B6DF8(v3);
  sub_1A98B6CC0(v2, type metadata accessor for SFAirDrop.TransferIdentifier);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A98AE864()
{
  v1 = v0[59];
  v2 = v0[60];
  v4 = v0[57];
  v3 = v0[58];
  v5 = v0[53];
  v6 = v0[51];
  v7 = v0[48];
  sub_1A98B6CC0(v0[54], type metadata accessor for SFAirDropSend.Request);
  sub_1A98B6DF8(v3);
  sub_1A98B6CC0(v2, type metadata accessor for SFAirDrop.TransferIdentifier);

  v8 = v0[1];
  v9 = v0[62];

  return v8();
}

uint64_t sub_1A98AEA3C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  NWEndpoint.endpointUUID()();
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1A98AEAF0;
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 120);
  v10 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  return SFAirDropClient.send(_:to:requestSource:onlyExchange:customPayload:)(v11, v12, v4, v10, v7, v9, v8, v5);
}

uint64_t sub_1A98AEAF0()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *v1;
  v6[14] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[9];

    return MEMORY[0x1EEE6DFA0](sub_1A98AEC98, v7, 0);
  }

  else
  {
    v8 = v6[12];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1A98AEC98()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t SFAirDropClient.cancelTransfer(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AEDFC, v1, 0);
}

uint64_t sub_1A98AEDFC()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;
  v3 = v0[2];

  return sub_1A983ABFC(sub_1A983ABFC, v3);
}

uint64_t SFAirDropClient.registerTransfersMonitor()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AEEC8, v1, 0);
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AFB78, v1, 0);
}

uint64_t sub_1A98AEEC8()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4288, &qword_1A999FEF0);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  v6 = *(v1 + 112);
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x80000001A99E6360;
  v7 = &v2[v5[12]];
  *v7 = &unk_1A999FF00;
  *(v7 + 1) = v6;
  v8 = &v2[v5[13]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A98AF030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2638;

  return sub_1A983AF44(a1);
}

uint64_t SFAirDropClient.registerTransfersMonitorAndBecomePresenter()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98AF104, v1, 0);
}

uint64_t sub_1A98AF104()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4288, &qword_1A999FEF0);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  v6 = *(v1 + 112);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *v2 = 0xD000000000000018;
  *(v2 + 1) = 0x80000001A99E6360;
  v8 = &v2[v5[12]];
  *v8 = &unk_1A999FF18;
  *(v8 + 1) = v7;
  v9 = &v2[v5[13]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v11 = v0[1];

  return v11();
}

uint64_t sub_1A98AF290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v3[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AF32C, a2, 0);
}

uint64_t sub_1A98AF32C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = *(v3 + 112);
  sub_1A98B6D20(v3 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v5 = (v1 + *(v2 + 20));
  v6 = *(MEMORY[0x1E695F058] + 16);
  *v5 = *MEMORY[0x1E695F058];
  v5[1] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1A98AF424;
  v8 = v0[6];

  return sub_1A983B17C(sub_1A983B17C, v8);
}

uint64_t sub_1A98AF424()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = v0;

  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1A98AF744;
  }

  else
  {
    v7 = sub_1A98AF580;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A98AF580()
{
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1A98AF62C;
  v2 = v0[4];
  v3 = v0[2];

  return sub_1A983AF44(v3);
}

uint64_t sub_1A98AF62C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A98AF744()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t SFAirDropClient.becomeTransferPresenter()()
{
  v1[2] = v0;
  v2 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AF83C, v0, 0);
}

uint64_t sub_1A98AF83C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(v3 + 112);
  sub_1A98B6D20(v3 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v5 = (v1 + *(v2 + 20));
  v6 = *(MEMORY[0x1E695F058] + 16);
  *v5 = *MEMORY[0x1E695F058];
  v5[1] = v6;
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1A98AF934;
  v8 = v0[4];

  return sub_1A983B17C(sub_1A983B17C, v8);
}

uint64_t sub_1A98AF934()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = v0;

  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1A98AFAF4;
  }

  else
  {
    v7 = sub_1A98AFA90;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A98AFA90()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98AFAF4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1A98AFB78()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B9CC4;
  v3 = v0[2];

  return sub_1A983AF44(v3);
}

uint64_t SFAirDropClient.becomeTransferPresenter(animationRect:)(double a1, double a2, double a3, double a4)
{
  *(v5 + 48) = v4;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  *(v5 + 56) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98AFCC4, v4, 0);
}

uint64_t sub_1A98AFCC4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v3 + 112);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  sub_1A98B6D20(v3 + OBJC_IVAR____TtC7Sharing15SFAirDropClient_clientIdentifier, v1, type metadata accessor for SFAirDropClient.Identifier);
  v5 = (v1 + *(v2 + 20));
  *v5 = v10;
  v5[1] = v9;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_1A98AFDBC;
  v7 = *(v0 + 64);

  return sub_1A983B17C(sub_1A983B17C, v7);
}

uint64_t sub_1A98AFDBC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_1A98B6CC0(v4, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1A98AFF7C;
  }

  else
  {
    v7 = sub_1A98AFF18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1A98AFF18()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98AFF7C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1A98B0000()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A98B00A8;

  return sub_1A983B4C4();
}

uint64_t sub_1A98B00A8()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1A98B01D4;
  }

  else
  {
    v6 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t SFAirDropClient.startNearbySharingDiscovery(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B020C, v1, 0);
}

uint64_t sub_1A98B020C()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B02B8;
  v3 = v0[2];

  return sub_1A983B6E4(sub_1A983B6E4, v3);
}

uint64_t sub_1A98B02B8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1A98A50D4;
  }

  else
  {
    v6 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t SFAirDropClient.stopNearbySharingDiscovery(applicationLabel:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0408, v2, 0);
}

uint64_t sub_1A98B0408()
{
  v1 = *(v0[4] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B04B4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1A983BC8C(sub_1A983BC8C, v3, v4);
}

uint64_t sub_1A98B04B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1A9859C2C;
  }

  else
  {
    v6 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t SFAirDropClient.takeNearbySharingAssertion(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0604, v2, 0);
}

uint64_t sub_1A98B0604()
{
  v1 = *(v0[4] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B06B4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1A983C114(v3, v4);
}

uint64_t sub_1A98B06B4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t SFAirDropClient.releaseNearbySharingAssertion(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B07C8, v1, 0);
}

uint64_t sub_1A98B07C8()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;
  v3 = v0[2];

  return sub_1A983C6D8(sub_1A983C6D8, v3);
}

uint64_t SFAirDropClient.nearbySharingInteractions()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0894, v1, 0);
}

uint64_t sub_1A98B0894()
{
  if (qword_1EB3AC970 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1A99764A0();
  v4 = __swift_project_value_buffer(v3, qword_1EB3AC978);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4290, &qword_1A999FF68);
  (*(*(v3 - 8) + 16))(&v2[v5[11]], v4, v3);
  *v2 = 0xD000000000000019;
  *(v2 + 1) = 0x80000001A99E6380;
  v6 = &v2[v5[12]];
  *v6 = &unk_1A999FF78;
  *(v6 + 1) = v1;
  v7 = &v2[v5[13]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v9 = v0[1];

  return v9();
}

uint64_t sub_1A98B09FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0A1C, 0, 0);
}

uint64_t sub_1A98B0A1C()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A97E0474;
  v3 = v0[2];

  return sub_1A983CA24(v3);
}

uint64_t SFAirDropClient.updateSimulatedNearbySharingInteraction(update:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0AEC, v1, 0);
}

uint64_t sub_1A98B0AEC()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;
  v3 = v0[2];

  return sub_1A983CEB4(sub_1A983CEB4, v3);
}

uint64_t SFAirDropClient.boopAtADistance(begin:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B0BBC, v2, 0);
}

uint64_t sub_1A98B0BBC()
{
  v1 = *(v0[4] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B9CC8;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1A983D1FC(v3, v4);
}

uint64_t SFAirDropClient.boopAtADistance(update:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98B0D04, v2, 0);
}

uint64_t sub_1A98B0D04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_1A98B6D20(v0[2], v1, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  sub_1A98B6D20(v3, v1 + *(v2 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  v5 = *(v4 + 112);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1A98B0E04;
  v7 = v0[6];

  return (sub_1A983D554)();
}

uint64_t sub_1A98B0E04()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1A98B0FB4;
  }

  else
  {
    v6 = sub_1A98B0F30;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98B0F30()
{
  sub_1A98B6CC0(*(v0 + 48), type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A98B0FB4()
{
  sub_1A98B6CC0(v0[6], type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.init(transaction:tap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A98B70C4(a1, a3, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v5 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  return sub_1A98B70C4(a2, a3 + *(v5 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
}

uint64_t SFAirDropClient.boopAtADistance(end:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B10C4, v1, 0);
}

uint64_t sub_1A98B10C4()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;
  v3 = v0[2];

  return sub_1A983D89C(sub_1A983D89C, v3);
}

uint64_t SFAirDropClient.endNearbySharingInteraction(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1190, v1, 0);
}

uint64_t sub_1A98B1190()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98A5508;
  v3 = v0[2];

  return sub_1A983DBE4(sub_1A983DBE4, v3);
}

uint64_t sub_1A98B1258()
{
  sub_1A97BCDE0();
  swift_allocError();
  *v1 = 0xD000000000000021;
  v1[1] = 0x80000001A99E63A0;
  v1[2] = 0xD00000000000004DLL;
  v1[3] = 0x80000001A99E63D0;
  v1[4] = 197;
  v1[10] = 0x4000000000000000;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t SFAirDropClient.showIntervention(workflow:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1350, v2, 0);
}

uint64_t sub_1A98B1350()
{
  v1 = *(*(v0 + 24) + 112);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1A98B9CC4;
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);

  return sub_1A983DF30(v3, v4);
}

uint64_t SFAirDropClient.showItemDestinationAlert(request:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1424, v1, 0);
}

uint64_t sub_1A98B1424()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B14D4;
  v3 = v0[2];

  return sub_1A983E320(v3);
}

uint64_t sub_1A98B14D4(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t SFAirDropClient.fetchEndpointMetadata(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1608, v2, 0);
}

uint64_t sub_1A98B1608()
{
  v1 = *(v0[4] + 112);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B9CC8;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1A983E8E8(v3, v4);
}

uint64_t SFAirDropClient.discoverability()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B16D8, v1, 0);
}

uint64_t sub_1A98B16D8()
{
  v1 = *(v0[3] + 112);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1A98B9CC4;
  v3 = v0[2];

  return sub_1A983EEB4(v3);
}

uint64_t sub_1A98B17A8()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A98B1850;

  return sub_1A983F2B8();
}

uint64_t sub_1A98B1850(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t SFAirDropClient.change(discoverabilityMode:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1978, v1, 0);
}

uint64_t sub_1A98B1978()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A98B1A24;
  v3 = *(v0 + 40);

  return sub_1A983F750(sub_1A983F750, v3);
}

uint64_t sub_1A98B1A24()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1A98B9ED8;
  }

  else
  {
    v6 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A98B1B5C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A98B1B7C, 0, 0);
}

uint64_t sub_1A98B1B7C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 112);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1A98B1CF4;
    v5 = v0[5];

    return sub_1A983F97C(v5);
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v7 = 0xD000000000000023;
    v7[1] = 0x80000001A99E6C30;
    v7[2] = 0xD00000000000004DLL;
    v7[3] = 0x80000001A99E63D0;
    v7[4] = 234;
    v7[10] = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1A98B1CF4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1A98B1E6C;
  }

  else
  {
    v3 = sub_1A98B1E08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98B1E08()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A98B1E6C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall SFAirDropClient.invalidate()()
{
  v1 = *(v0 + 112);
  swift_beginAccess();
  [*(v1 + 16) invalidate];
}

void SFAirDropClient.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SFAirDropClient.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

double SFAirDropInvocations.BecomeTransferPresenter.Parameters.animationRect.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) + 20);
  result = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  return result;
}

unint64_t sub_1A98B20BC()
{
  if (*v0)
  {
    result = 0x6F6974616D696E61;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A98B2108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E5060 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xED0000746365526ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A98B21F8(uint64_t a1)
{
  v2 = sub_1A98B712C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B2234(uint64_t a1)
{
  v2 = sub_1A98B712C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.Parameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4298, &qword_1A999FFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B712C();
  sub_1A9977AA0();
  LOBYTE(v15) = 0;
  type metadata accessor for SFAirDropClient.Identifier();
  sub_1A98B7180(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0) + 20));
    v12 = v11[1];
    v15 = *v11;
    v16 = v12;
    v14[15] = 1;
    type metadata accessor for CGRect(0);
    sub_1A98B7180(&qword_1EB3B42A8, type metadata accessor for CGRect);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropInvocations.BecomeTransferPresenter.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for SFAirDropClient.Identifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42B0, &qword_1A999FFE8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B712C();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v23;
  v17 = v14;
  LOBYTE(v26) = 0;
  sub_1A98B7180(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier);
  v18 = v24;
  sub_1A99775F0();
  sub_1A98B70C4(v25, v17, type metadata accessor for SFAirDropClient.Identifier);
  type metadata accessor for CGRect(0);
  v28 = 1;
  sub_1A98B7180(&qword_1EB3B42B8, type metadata accessor for CGRect);
  sub_1A99775F0();
  (*(v16 + 8))(v10, v18);
  v19 = (v17 + *(v11 + 20));
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  sub_1A98B6D20(v17, v22, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A98B6CC0(v17, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
}

id SFAirDropInvocations.StopNearbySharingDiscovery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.StopNearbySharingDiscovery.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.StopNearbySharingDiscovery.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

uint64_t sub_1A98B29E0()
{
  if (*v0)
  {
    result = 7364980;
  }

  else
  {
    result = 0x746361736E617274;
  }

  *v0;
  return result;
}

uint64_t sub_1A98B2A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7364980 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A98B2AFC(uint64_t a1)
{
  v2 = sub_1A98B71C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B2B38(uint64_t a1)
{
  v2 = sub_1A98B71C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42C0, &qword_1A999FFF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B71C8();
  sub_1A9977AA0();
  v11[15] = 0;
  type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  sub_1A98B7180(&qword_1EB3B4180, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  sub_1A99776E0();
  if (!v1)
  {
    v9 = *(type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0) + 20);
    v11[14] = 1;
    type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    sub_1A98B7180(&qword_1EB3B42D0, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
    sub_1A99776E0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDropInvocations.BoopAtADistanceUpdate.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42D8, &qword_1A999FFF8);
  v26 = *(v29 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v22 - v10;
  v12 = type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B71C8();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v23 = a1;
  v17 = v26;
  v18 = v15;
  v31 = 0;
  sub_1A98B7180(&qword_1EB3B42E0, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v19 = v28;
  v20 = v29;
  sub_1A99775F0();
  sub_1A98B70C4(v19, v18, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  v30 = 1;
  sub_1A98B7180(&qword_1EB3B42E8, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  sub_1A99775F0();
  (*(v17 + 8))(v11, v20);
  sub_1A98B70C4(v6, v18 + *(v12 + 20), type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  sub_1A98B6D20(v18, v24, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return sub_1A98B6CC0(v18, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
}

unint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.description.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_1A98B3284(uint64_t a1)
{
  v2 = sub_1A98B72C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B32C0(uint64_t a1)
{
  v2 = sub_1A98B72C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98B32FC()
{
  v1 = 0x4579616C50726163;
  if (*v0 != 1)
  {
    v1 = 0x4D64696C61766E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A98B3370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98B94D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98B3398(uint64_t a1)
{
  v2 = sub_1A98B721C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B33D4(uint64_t a1)
{
  v2 = sub_1A98B721C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98B3410(uint64_t a1)
{
  v2 = sub_1A98B7270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B344C(uint64_t a1)
{
  v2 = sub_1A98B7270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98B3488(uint64_t a1)
{
  v2 = sub_1A98B7318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B34C4(uint64_t a1)
{
  v2 = sub_1A98B7318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42F0, &qword_1A99A0000);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B42F8, &qword_1A99A0008);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4300, &qword_1A99A0010);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4308, &qword_1A99A0018);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B721C();
  sub_1A9977AA0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1A98B72C4();
      v12 = v26;
      sub_1A9977640();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1A98B7270();
      v12 = v29;
      sub_1A9977640();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1A98B7318();
    sub_1A9977640();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Failure.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4330, &qword_1A99A0020);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4338, &qword_1A99A0028);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4340, &qword_1A99A0030);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4348, &unk_1A99A0038);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A98B721C();
  v20 = v43;
  sub_1A9977A70();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1A9977620();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1A97B297C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1A9977300();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v30 = &type metadata for SFAirDropInvocations.ChangeDiscoverability.Failure;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1A98B72C4();
          sub_1A9977530();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1A98B7270();
          v33 = v22;
          sub_1A9977530();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1A98B7318();
        sub_1A9977530();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v44);
}

unint64_t sub_1A98B3E80()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

Sharing::SFAirDropInvocations::ChangeDiscoverability::Parameters::DiscoverabilityMode_optional __swiftcall SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode.rawValue.getter()
{
  v1 = 0x73746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7972657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_1A98B3F90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73746361746E6F63;
  v4 = 0xEC000000796C6E4FLL;
  if (v2 != 1)
  {
    v3 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0x73746361746E6F63;
  v8 = 0xEC000000796C6E4FLL;
  if (*a2 != 1)
  {
    v7 = 0x656E6F7972657665;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A99777E0();
  }

  return v11 & 1;
}

uint64_t sub_1A98B409C()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A98B4140()
{
  *v0;
  *v0;
  sub_1A99768D0();
}

uint64_t sub_1A98B41D0()
{
  v1 = *v0;
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

void sub_1A98B427C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xEC000000796C6E4FLL;
  v5 = 0x73746361746E6F63;
  if (v2 != 1)
  {
    v5 = 0x656E6F7972657665;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A98B43B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6B90 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A99777E0();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A98B4448(uint64_t a1)
{
  v2 = sub_1A98B736C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B4484(uint64_t a1)
{
  v2 = sub_1A98B736C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4350, &qword_1A99A0048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B736C();
  sub_1A9977AA0();
  v12 = v8;
  sub_1A98B73C0();
  sub_1A99776E0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t SFAirDropInvocations.ChangeDiscoverability.Parameters.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4368, &qword_1A99A0050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B736C();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A98A7D58();
    sub_1A99775F0();
    (*(v6 + 8))(v9, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.applicationLabel.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.publicKeyData.getter()
{
  v1 = *(v0 + 16);
  sub_1A97B40FC(v1, *(v0 + 24));
  return v1;
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.init(applicationLabel:publicKeyData:bonjourUUID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0) + 24);
  v9 = sub_1A99762C0();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

unint64_t sub_1A98B48C0()
{
  v1 = 0x654B63696C627570;
  if (*v0 != 1)
  {
    v1 = 0x5572756F6A6E6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A98B4934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98B9604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98B495C(uint64_t a1)
{
  v2 = sub_1A98B7434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B4998(uint64_t a1)
{
  v2 = sub_1A98B7434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4370, &qword_1A99A0058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7434();
  sub_1A9977AA0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1A9977690();
  if (!v2)
  {
    v13 = v3[3];
    v17 = v3[2];
    v18 = v13;
    v16[15] = 1;
    sub_1A97B40FC(v17, v13);
    sub_1A97B4370();
    sub_1A99776E0();
    sub_1A97B43C4(v17, v18);
    v14 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0) + 24);
    LOBYTE(v17) = 2;
    sub_1A99762C0();
    sub_1A98B7180(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropClient.BoopAtADistance.ServerInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v27 = sub_1A99762C0();
  v24 = *(v27 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4380, &qword_1A99A0060);
  v26 = *(v28 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = v22 - v8;
  v10 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7434();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v15 = a1;
  v23 = v10;
  v17 = v26;
  v16 = v27;
  v18 = v6;
  LOBYTE(v29) = 0;
  v19 = v28;
  *v13 = sub_1A99775A0();
  *(v13 + 1) = v20;
  v22[1] = v20;
  v30 = 1;
  sub_1A97B446C();
  sub_1A99775F0();
  *(v13 + 1) = v29;
  LOBYTE(v29) = 2;
  sub_1A98B7180(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v22[0] = v18;
  sub_1A99775F0();
  (*(v17 + 8))(v9, v19);
  (*(v24 + 32))(&v13[*(v23 + 24)], v22[0], v16);
  sub_1A98B6D20(v13, v25, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return sub_1A98B6CC0(v13, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.connectionDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.init(identifier:connectionDate:isInitiator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v10 = *(v9 + 20);
  v11 = sub_1A9976230();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_1A98B51B0()
{
  v1 = 0x697463656E6E6F63;
  if (*v0 != 1)
  {
    v1 = 0x616974696E497369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1A98B5224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98B9734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98B524C(uint64_t a1)
{
  v2 = sub_1A98B7488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B5288(uint64_t a1)
{
  v2 = sub_1A98B7488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4388, &qword_1A99A0068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7488();
  sub_1A9977AA0();
  v15[15] = 0;
  sub_1A99762C0();
  sub_1A98B7180(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  sub_1A99776E0();
  if (!v2)
  {
    v11 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
    v12 = *(v11 + 20);
    v15[14] = 1;
    sub_1A9976230();
    sub_1A98B7180(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1A99776A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropClient.BoopAtADistance.Transaction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1A9976230();
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A99762C0();
  v30 = *(v36 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4398, &qword_1A99A0070);
  v31 = *(v35 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B7488();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = v14;
  v28 = a1;
  v19 = v17;
  v20 = v33;
  v22 = v31;
  v21 = v32;
  v39 = 0;
  sub_1A98B7180(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  sub_1A99775F0();
  (*(v30 + 32))(v19, v34, v36);
  v38 = 1;
  sub_1A98B7180(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
  sub_1A99775F0();
  (*(v20 + 32))(v19 + *(v27 + 20), v8, v21);
  v37 = 2;
  v23 = sub_1A99775B0();
  v24 = v28;
  v25 = v23;
  (*(v22 + 8))(v13, v35);
  *(v19 + *(v27 + 24)) = v25 & 1;
  sub_1A98B6D20(v19, v29, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  return sub_1A98B6CC0(v19, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.applicationLabel.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1A98B5A50@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.deviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.deviceModel.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.accountID.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.contactID.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.init(identifier:applicationLabel:date:isSameAccount:deviceName:deviceModel:accountID:contactID:remoteServerInfo:shouldForceSingleBandAWDLMode:isKnownIdentity:isUnsupportedApplicationLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, char a18, char a19)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  v22 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  v23 = v22[6];
  v24 = sub_1A9976230();
  (*(*(v24 - 8) + 32))(&a9[v23], a5, v24);
  a9[v22[7]] = a6;
  v25 = &a9[v22[8]];
  *v25 = a7;
  *(v25 + 1) = a8;
  v26 = &a9[v22[9]];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &a9[v22[10]];
  *v27 = a12;
  *(v27 + 1) = a13;
  v28 = &a9[v22[11]];
  *v28 = a14;
  *(v28 + 1) = a15;
  result = sub_1A98B70C4(a16, &a9[v22[13]], type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  a9[v22[12]] = a17;
  a9[v22[14]] = a18;
  a9[v22[15]] = a19;
  return result;
}

unint64_t sub_1A98B5E1C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x496E776F6E4B7369;
    if (a1 != 10)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 == 9)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v7 = v6;
    }

    v8 = 0xD00000000000001DLL;
    if (a1 == 7)
    {
      v8 = 0x49746361746E6F63;
    }

    if (a1 == 6)
    {
      v8 = 0x49746E756F636361;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6341656D61537369;
    v3 = 0x614E656369766564;
    if (a1 != 4)
    {
      v3 = 0x6F4D656369766564;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 1702125924;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A98B5FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A98B9860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A98B6008(uint64_t a1)
{
  v2 = sub_1A98B74DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98B6044(uint64_t a1)
{
  v2 = sub_1A98B74DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B43A0, &qword_1A99A0078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B74DC();
  sub_1A9977AA0();
  v11 = *v3;
  v12 = v3[1];
  v35[15] = 0;
  sub_1A9977690();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v35[14] = 1;
    sub_1A9977690();
    v15 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
    v16 = v15[6];
    v35[13] = 2;
    sub_1A9976230();
    sub_1A98B7180(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v17 = *(v3 + v15[7]);
    v35[12] = 3;
    sub_1A99776A0();
    v18 = (v3 + v15[8]);
    v19 = *v18;
    v20 = v18[1];
    v35[11] = 4;
    sub_1A9977650();
    v21 = (v3 + v15[9]);
    v22 = *v21;
    v23 = v21[1];
    v35[10] = 5;
    sub_1A9977650();
    v24 = (v3 + v15[10]);
    v25 = *v24;
    v26 = v24[1];
    v35[9] = 6;
    sub_1A9977650();
    v27 = (v3 + v15[11]);
    v28 = *v27;
    v29 = v27[1];
    v35[8] = 7;
    sub_1A9977650();
    v30 = *(v3 + v15[12]);
    v35[7] = 8;
    sub_1A99776A0();
    v31 = v15[13];
    v35[6] = 9;
    type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
    sub_1A98B7180(&qword_1EB3B43B0, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
    sub_1A99776E0();
    v32 = *(v3 + v15[14]);
    v35[5] = 10;
    sub_1A99776A0();
    v33 = *(v3 + v15[15]);
    v35[4] = 11;
    sub_1A99776A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SFAirDropClient.BoopAtADistance.TapEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(0);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A9976230();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B43B8, &qword_1A99A0080);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - v11;
  v13 = type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98B74DC();
  v51 = v12;
  v18 = v52;
  sub_1A9977A70();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v52 = a1;
  v42 = v5;
  v43 = v16;
  v44 = v13;
  v64 = 0;
  v19 = v49;
  v20 = sub_1A99775A0();
  v21 = v43;
  *v43 = v20;
  *(v21 + 1) = v22;
  v63 = 1;
  *(v21 + 2) = sub_1A99775A0();
  *(v21 + 3) = v23;
  v62 = 2;
  sub_1A98B7180(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
  v24 = v42;
  v41[1] = 0;
  sub_1A99775F0();
  v25 = v44;
  (*(v48 + 32))(&v21[v44[6]], v8, v24);
  v61 = 3;
  v21[v25[7]] = sub_1A99775B0() & 1;
  v60 = 4;
  v26 = sub_1A9977550();
  v27 = &v21[v25[8]];
  *v27 = v26;
  v27[1] = v28;
  v59 = 5;
  v29 = sub_1A9977550();
  v30 = &v21[v25[9]];
  *v30 = v29;
  v30[1] = v31;
  v58 = 6;
  v32 = sub_1A9977550();
  v33 = &v21[v25[10]];
  *v33 = v32;
  v33[1] = v34;
  v57 = 7;
  v35 = sub_1A9977550();
  v37 = &v21[v44[11]];
  *v37 = v35;
  v37[1] = v38;
  v56 = 8;
  v21[v44[12]] = sub_1A99775B0() & 1;
  v55 = 9;
  sub_1A98B7180(&qword_1EB3B4190, type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  sub_1A99775F0();
  sub_1A98B70C4(v47, v43 + v44[13], type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo);
  v54 = 10;
  *(v43 + v44[14]) = sub_1A99775B0() & 1;
  v53 = 11;
  v39 = sub_1A99775B0();
  (*(v19 + 8))(v51, v50);
  v40 = v43;
  *(v43 + v44[15]) = v39 & 1;
  sub_1A98B6D20(v40, v45, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  return sub_1A98B6CC0(v40, type metadata accessor for SFAirDropClient.BoopAtADistance.TapEvent);
}

uint64_t sub_1A98B6CC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98B6D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98B6D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98B6DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98B6E60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A97B2988;

  return sub_1A98AF030(a1);
}

uint64_t sub_1A98B6EFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A97B2988;

  return sub_1A98AF290(a1, v5, v4);
}

uint64_t sub_1A98B6FC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A98B09FC(a1, v1);
}

uint64_t sub_1A98B70C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98B712C()
{
  result = qword_1EB3B42A0;
  if (!qword_1EB3B42A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B42A0);
  }

  return result;
}

uint64_t sub_1A98B7180(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A98B71C8()
{
  result = qword_1EB3B42C8;
  if (!qword_1EB3B42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B42C8);
  }

  return result;
}

unint64_t sub_1A98B721C()
{
  result = qword_1EB3B4310;
  if (!qword_1EB3B4310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4310);
  }

  return result;
}

unint64_t sub_1A98B7270()
{
  result = qword_1EB3B4318;
  if (!qword_1EB3B4318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4318);
  }

  return result;
}

unint64_t sub_1A98B72C4()
{
  result = qword_1EB3B4320;
  if (!qword_1EB3B4320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4320);
  }

  return result;
}

unint64_t sub_1A98B7318()
{
  result = qword_1EB3B4328;
  if (!qword_1EB3B4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4328);
  }

  return result;
}

unint64_t sub_1A98B736C()
{
  result = qword_1EB3B4358;
  if (!qword_1EB3B4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4358);
  }

  return result;
}

unint64_t sub_1A98B73C0()
{
  result = qword_1EB3B4360;
  if (!qword_1EB3B4360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4360);
  }

  return result;
}

unint64_t sub_1A98B7434()
{
  result = qword_1EB3B4378;
  if (!qword_1EB3B4378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4378);
  }

  return result;
}

unint64_t sub_1A98B7488()
{
  result = qword_1EB3B4390;
  if (!qword_1EB3B4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4390);
  }

  return result;
}

unint64_t sub_1A98B74DC()
{
  result = qword_1EB3B43A8;
  if (!qword_1EB3B43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43A8);
  }

  return result;
}

uint64_t sub_1A98B7768(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B4140, &qword_1A99A00F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98B77E0()
{
  result = qword_1EB3B43D8;
  if (!qword_1EB3B43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43D8);
  }

  return result;
}

unint64_t sub_1A98B783C()
{
  result = qword_1EB3B43E0;
  if (!qword_1EB3B43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B43E0);
  }

  return result;
}

uint64_t sub_1A98B7B80(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B29B0, &qword_1A9990640);
    sub_1A98B7180(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98B7F34(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B2F18, &qword_1A999FD00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A98B7FF8()
{
  result = qword_1EB3B4428;
  if (!qword_1EB3B4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4428);
  }

  return result;
}

unint64_t sub_1A98B8050()
{
  result = qword_1EB3B4430;
  if (!qword_1EB3B4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4430);
  }

  return result;
}

unint64_t sub_1A98B80A8()
{
  result = qword_1EB3B4438;
  if (!qword_1EB3B4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4438);
  }

  return result;
}

uint64_t sub_1A98B8128()
{
  result = type metadata accessor for SFAirDropClient.Identifier();
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

uint64_t sub_1A98B8500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98B8784()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A98B8830()
{
  result = sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    result = sub_1A9976230();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1A98B88E4()
{
  sub_1A9976230();
  if (v0 <= 0x3F)
  {
    sub_1A97EA138();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SFAirDropClient.BoopAtADistance.ServerInfo(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for SFAirDropClient.BoopAtADistance.TapEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFAirDropClient.BoopAtADistance.TapEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A98B8B90()
{
  result = qword_1EB3B4490;
  if (!qword_1EB3B4490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4490);
  }

  return result;
}

unint64_t sub_1A98B8BE8()
{
  result = qword_1EB3B4498;
  if (!qword_1EB3B4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4498);
  }

  return result;
}

unint64_t sub_1A98B8C40()
{
  result = qword_1EB3B44A0;
  if (!qword_1EB3B44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44A0);
  }

  return result;
}

unint64_t sub_1A98B8C98()
{
  result = qword_1EB3B44A8;
  if (!qword_1EB3B44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44A8);
  }

  return result;
}

unint64_t sub_1A98B8CF0()
{
  result = qword_1EB3B44B0;
  if (!qword_1EB3B44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44B0);
  }

  return result;
}

unint64_t sub_1A98B8D48()
{
  result = qword_1EB3B44B8;
  if (!qword_1EB3B44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44B8);
  }

  return result;
}

unint64_t sub_1A98B8DA0()
{
  result = qword_1EB3B44C0;
  if (!qword_1EB3B44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44C0);
  }

  return result;
}

unint64_t sub_1A98B8DF8()
{
  result = qword_1EB3B44C8;
  if (!qword_1EB3B44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44C8);
  }

  return result;
}

unint64_t sub_1A98B8E50()
{
  result = qword_1EB3B44D0;
  if (!qword_1EB3B44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44D0);
  }

  return result;
}

unint64_t sub_1A98B8EA8()
{
  result = qword_1EB3B44D8;
  if (!qword_1EB3B44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44D8);
  }

  return result;
}

unint64_t sub_1A98B8F00()
{
  result = qword_1EB3B44E0;
  if (!qword_1EB3B44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44E0);
  }

  return result;
}

unint64_t sub_1A98B8F58()
{
  result = qword_1EB3B44E8;
  if (!qword_1EB3B44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44E8);
  }

  return result;
}

unint64_t sub_1A98B8FB0()
{
  result = qword_1EB3B44F0;
  if (!qword_1EB3B44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44F0);
  }

  return result;
}

unint64_t sub_1A98B9008()
{
  result = qword_1EB3B44F8;
  if (!qword_1EB3B44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B44F8);
  }

  return result;
}

unint64_t sub_1A98B9060()
{
  result = qword_1EB3B4500;
  if (!qword_1EB3B4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4500);
  }

  return result;
}

unint64_t sub_1A98B90B8()
{
  result = qword_1EB3B4508;
  if (!qword_1EB3B4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4508);
  }

  return result;
}

unint64_t sub_1A98B9110()
{
  result = qword_1EB3B4510;
  if (!qword_1EB3B4510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4510);
  }

  return result;
}

unint64_t sub_1A98B9168()
{
  result = qword_1EB3B4518;
  if (!qword_1EB3B4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4518);
  }

  return result;
}

unint64_t sub_1A98B91C0()
{
  result = qword_1EB3B4520;
  if (!qword_1EB3B4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4520);
  }

  return result;
}

unint64_t sub_1A98B9218()
{
  result = qword_1EB3B4528;
  if (!qword_1EB3B4528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4528);
  }

  return result;
}

unint64_t sub_1A98B9270()
{
  result = qword_1EB3B4530;
  if (!qword_1EB3B4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4530);
  }

  return result;
}

unint64_t sub_1A98B92C8()
{
  result = qword_1EB3B4538;
  if (!qword_1EB3B4538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4538);
  }

  return result;
}

unint64_t sub_1A98B9320()
{
  result = qword_1EB3B4540;
  if (!qword_1EB3B4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4540);
  }

  return result;
}

unint64_t sub_1A98B9378()
{
  result = qword_1EB3B4548;
  if (!qword_1EB3B4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4548);
  }

  return result;
}

unint64_t sub_1A98B93D0()
{
  result = qword_1EB3B4550;
  if (!qword_1EB3B4550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4550);
  }

  return result;
}

unint64_t sub_1A98B9428()
{
  result = qword_1EB3B4558;
  if (!qword_1EB3B4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4558);
  }

  return result;
}

unint64_t sub_1A98B9480()
{
  result = qword_1EB3B4560;
  if (!qword_1EB3B4560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4560);
  }

  return result;
}

uint64_t sub_1A98B94D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A99E6B70 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4579616C50726163 && a2 == 0xEE0064656C62616ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D64696C61766E69 && a2 == 0xEB0000000065646FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98B9604(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xED00006174614479 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5572756F6A6E6F62 && a2 == 0xEB00000000444955)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A98B9734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEE00657461446E6FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616974696E497369 && a2 == 0xEB00000000726F74)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98B9860(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341656D61537369 && a2 == 0xED0000746E756F63 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A99E6BD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E6BF0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x496E776F6E4B7369 && a2 == 0xEF797469746E6564 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A99E6C10 == a2)
  {

    return 11;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1A98B9C6C()
{
  result = qword_1EB3B4568;
  if (!qword_1EB3B4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4568);
  }

  return result;
}

uint64_t sub_1A98BA0A0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BA0C0, 0, 0);
}

uint64_t sub_1A98BA0C0()
{
  *(v0 + 40) = &type metadata for VoidParameters;
  sub_1A97AF7EC(v0 + 16, v0 + 48);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 104);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v2 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F38, &unk_1A99A17F0) + 68));
    v3 = v2[1];
    v12 = (*v2 + **v2);
    v4 = (*v2)[1];
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1A98BA30C;
    v6 = *(v0 + 96);

    return v12(v6);
  }

  else
  {
    *(v0 + 128) = 1;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    sub_1A9977400();
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    sub_1A97BCDE0();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = xmmword_1A99A17D0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0xD00000000000004CLL;
    *(v10 + 56) = 0x80000001A99E2F10;
    *(v10 + 64) = 31;
    *(v10 + 80) = 0xA000000000000000;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1A98BA30C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1A98BA420;
  }

  else
  {
    v3 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98BA438(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BA45C, 0, 0);
}

uint64_t sub_1A98BA45C()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 32);
    *(v0 + 56) = *(v1 + 32);
    v3 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F40, &qword_1A9999480) + 68));
    v4 = v3[1];
    v11 = (*v3 + **v3);
    v5 = (*v3)[1];
    v6 = swift_task_alloc();
    *(v0 + 40) = v6;
    *v6 = v0;
    v6[1] = sub_1A98BA62C;
    v7 = *(v0 + 16);

    return v11(v7, v0 + 56);
  }

  else
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = 0xD000000000000021;
    v9[1] = 0x80000001A99E2EE0;
    v9[2] = 0xD00000000000004CLL;
    v9[3] = 0x80000001A99E2F10;
    v9[4] = 33;
    v9[10] = 0x2000000000000000;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1A98BA62C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1A98BA740;
  }

  else
  {
    v3 = sub_1A98A50BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t SFAirDrop.PermissionRequest.declineAction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v9 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v22 - v12);
  (*(v10 + 16))(v22 - v12, v2 + *(a1 + 60), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v16 = v13[1];

    v17 = v13[3];

    v18 = v13[4];

    MEMORY[0x1EEE9AC00](v19);
    strcpy(&v22[-6], "title prompt acceptActions declineAction ");
    v23 = MEMORY[0x1E69E6158];
    v24 = MEMORY[0x1E69E6158];
    v22[0] = v5;
    v22[1] = v6;
    v22[2] = v7;
    v22[3] = v8;
    type metadata accessor for SFAirDrop.AcceptAction();
    v25 = sub_1A9976B60();
    v26 = type metadata accessor for SFAirDrop.DeclineAction();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    sub_1A98BAA80(v13 + *(TupleTypeMetadata + 80), a2);
    v21 = type metadata accessor for SFAirDrop.DeclineAction();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t type metadata accessor for SFAirDrop.DeclineAction()
{
  result = qword_1EB3AB990;
  if (!qword_1EB3AB990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98BAA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static SFAirDrop.PermissionRequest.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v12 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v44 = *(v12 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v37 - v14;
  v15 = sub_1A99770A0();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v37 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v19 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v37 - v20;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v39 = a6;
  v22 = type metadata accessor for SFAirDrop.PermissionRequest();
  if (*(a1 + *(v22 + 52)) != *(a2 + *(v22 + 52)))
  {
    return 0;
  }

  v23 = v22;
  v24 = *(v22 + 56);
  if ((sub_1A99761E0() & 1) == 0 || (static SFAirDrop.PermissionRequest.Style.== infix(_:_:)((a1 + *(v23 + 60)), (a2 + *(v23 + 60)), a3, a4, a5, v39) & 1) == 0)
  {
    return 0;
  }

  v25 = *(TupleTypeMetadata2 + 48);
  v37 = *(v23 + 64);
  v38 = v25;
  v26 = v37 + a1;
  v27 = *(v43 + 16);
  v27(v21, v26, v15);
  v28 = v37 + a2;
  v37 = v27;
  v27(&v21[v38], v28, v15);
  v29 = *(v44 + 48);
  if (v29(v21, 1, v12) == 1)
  {
    if (v29(&v21[v38], 1, v12) == 1)
    {
      (*(v43 + 8))(v21, v15);
      return 1;
    }

    goto LABEL_10;
  }

  v37(v42, v21, v15);
  v30 = v38;
  if (v29(&v21[v38], 1, v12) == 1)
  {
    (*(v44 + 8))(v42, v12);
LABEL_10:
    (*(v41 + 8))(v21, TupleTypeMetadata2);
    return 0;
  }

  v32 = v44;
  v33 = v40;
  (*(v44 + 32))(v40, &v21[v30], v12);
  v34 = v42;
  v35 = static SFAirDrop.PermissionRequest.TelemetryData.== infix(_:_:)(v42, v33);
  v36 = *(v32 + 8);
  v36(v33, v12);
  v36(v34, v12);
  (*(v43 + 8))(v21, v15);
  return (v35 & 1) != 0;
}

uint64_t SFAirDrop.PermissionRequest.answered()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v38 = *(a1 + 16);
  v39 = v5;
  v34 = v5;
  v35 = v38;
  v8 = v5;
  v40 = v6;
  v41 = v7;
  v9 = v6;
  v32 = v7;
  v33 = v6;
  v10 = v7;
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v36 = sub_1A99770A0();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v30 - v13;
  v39 = v8;
  v40 = v9;
  v41 = v10;
  v31 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v18 = &v30 - v17;
  v19 = sub_1A9976230();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A99762C0();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27, v3);
  (*(v20 + 16))(v23, v3 + *(a1 + 56), v19);
  (*(v15 + 16))(v18, v3 + *(a1 + 60), v31);
  (*(v11 + 16))(v14, v3 + *(a1 + 64), v36);
  return SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)(v27, v23, v18, 1, v14, v37);
}

uint64_t sub_1A98BB25C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) == *(a2 + 16))
  {
    v2 = 0;
    v3 = result + 56;
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
    v56 = a2 + 56;
LABEL_7:
    if (v6)
    {
      v8 = __clz(__rbit64(v6));
      v9 = (v6 - 1) & v6;
      goto LABEL_14;
    }

    v10 = v2;
    do
    {
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v11 = *(v3 + 8 * v2);
      ++v10;
    }

    while (!v11);
    v8 = __clz(__rbit64(v11));
    v9 = (v11 - 1) & v11;
LABEL_14:
    v49 = result;
    v50 = a2;
    v12 = (*(result + 48) + 80 * (v8 | (v2 << 6)));
    v59 = *v12;
    v13 = v12[4];
    v15 = v12[1];
    v14 = v12[2];
    v62 = v12[3];
    v63 = v13;
    v60 = v15;
    v61 = v14;
    v16 = v59;
    v17 = *(a2 + 40);
    sub_1A9977980();
    v18 = BYTE8(v60);
    v20 = *(&v59 + 1);
    v19 = v60;
    v57 = v16;
    sub_1A99779A0();
    sub_1A986DF88(&v59, v58);
    v54 = v19;
    v55 = v20;
    sub_1A99768D0();
    v21 = v61;
    v22 = v62;
    v53 = v18;
    sub_1A99779A0();
    sub_1A99768D0();
    sub_1A99779A0();
    if (*(&v22 + 1))
    {
      sub_1A99768D0();
    }

    v51 = *(&v63 + 1);
    v52 = v63;
    sub_1A99768D0();
    v23 = sub_1A99779B0();
    v24 = -1 << *(v50 + 32);
    v25 = v23 & ~v24;
    v26 = v56;
    if ((*(v56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v45 = v9;
      v46 = v7;
      v47 = v2;
      v48 = v3;
      v27 = ~v24;
      v28 = *(v50 + 48);
      do
      {
        v29 = (v28 + 80 * v25);
        if (v57 != *v29)
        {
          goto LABEL_19;
        }

        v30 = v29[24];
        v31 = *(v29 + 4);
        v32 = *(v29 + 5);
        v34 = *(v29 + 6);
        v33 = *(v29 + 7);
        v35 = *(v29 + 8);
        v36 = *(v29 + 9);
        if (*(v29 + 1) == v55 && *(v29 + 2) == v54)
        {
          if (v53 != v30)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v38 = sub_1A99777E0();
          v26 = v56;
          if (v38 & 1) == 0 || ((v53 ^ v30))
          {
            goto LABEL_19;
          }
        }

        if (v31 != v21 || v32 != *(&v21 + 1))
        {
          v40 = sub_1A99777E0();
          v26 = v56;
          if ((v40 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (v33)
        {
          if (!*(&v22 + 1))
          {
            goto LABEL_19;
          }

          if (v34 != v22 || v33 != *(&v22 + 1))
          {
            v42 = sub_1A99777E0();
            v26 = v56;
            if ((v42 & 1) == 0)
            {
              goto LABEL_19;
            }
          }
        }

        else if (*(&v22 + 1))
        {
          goto LABEL_19;
        }

        v43 = v35 == v52 && v36 == v51;
        if (v43 || (v44 = sub_1A99777E0(), v26 = v56, (v44 & 1) != 0))
        {
          sub_1A986DFC0(&v59);
          result = v49;
          a2 = v50;
          v2 = v47;
          v3 = v48;
          v6 = v45;
          v7 = v46;
          goto LABEL_7;
        }

LABEL_19:
        v25 = (v25 + 1) & v27;
      }

      while (((*(v26 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
    }

    sub_1A986DFC0(&v59);
  }

  return 0;
}

uint64_t sub_1A98BB5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_1A98CDB9C(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0]);
      v28 = sub_1A9976730();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_1A98CDB9C(&qword_1EB3B4D50, MEMORY[0x1E6968FB0]);
        v33 = sub_1A99767A0();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A98BB99C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v37 = result + 56;
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
  v38 = v7;
  v39 = result;
  v41 = a2 + 56;
  if (v6)
  {
    do
    {
      v8 = __clz(__rbit64(v6));
      v40 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(*(result + 48) + 8 * (v8 | (v3 << 6)));
      v12 = *(v2 + 40);
      sub_1A9977980();
      v13 = v11 + 64;
      v14 = 1 << *(v11 + 32);
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(v11 + 64);
      v17 = (v14 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v18 = 0;
      v19 = 0;
      v43 = v11;
      while (v16)
      {
        v44 = v18;
LABEL_24:
        v21 = __clz(__rbit64(v16)) | (v19 << 6);
        v22 = (*(v11 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(*(v11 + 56) + 8 * v21);

        sub_1A99768D0();

        MEMORY[0x1AC58A630](*(v25 + 16));
        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = (v25 + 40);
          do
          {
            v28 = *(v27 - 1);
            v29 = *v27;

            sub_1A99768D0();

            v27 += 2;
            --v26;
          }

          while (v26);
        }

        v16 &= v16 - 1;

        result = sub_1A99779B0();
        v11 = v43;
        v18 = result ^ v44;
      }

      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v20 >= v17)
        {
          break;
        }

        v16 = *(v13 + 8 * v20);
        ++v19;
        if (v16)
        {
          v44 = v18;
          v19 = v20;
          goto LABEL_24;
        }
      }

      MEMORY[0x1AC58A630](v18);
      v30 = sub_1A99779B0();
      v2 = a2;
      v31 = -1 << *(a2 + 32);
      v32 = v30 & ~v31;
      if (((*(v41 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
LABEL_36:

        return 0;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = *(*(a2 + 48) + 8 * v32);

        v36 = sub_1A98CA49C(v35, v11);

        if (v36)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v41 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v7 = v38;
      result = v39;
      v6 = v40;
    }

    while (v40);
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v37 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v40 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1A98BBCB0()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B4570);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B4570);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFAirDrop.PermissionRequest.requestDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1A9976230();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SFAirDrop.PermissionRequest.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v5 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t SFAirDrop.PermissionRequest.telemetryData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v5 = sub_1A99770A0();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

Swift::Void __swiftcall SFAirDrop.PermissionRequest.cancel()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v0 - 8);
  v5 = *(v4 + 64);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = sub_1A9976C00();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v4 + 16))(v6, v2, v3);
  v15 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v16 = swift_allocObject();
  v17 = *(v3 + 32);
  *(v16 + 16) = *(v3 + 16);
  *(v16 + 32) = v17;
  (*(v4 + 32))(v16 + v15, v6, v3);
  sub_1A98614D8(v13, v11);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1A99A1800;
  v18[5] = v16;
  sub_1A97B4F40(0, 0, v11, &unk_1A99A1810, v18);

  sub_1A9860FD4(v13);
}

uint64_t sub_1A98BC12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[37] = a5;
  v6[38] = a6;
  v6[35] = a3;
  v6[36] = a4;
  v6[34] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  v11 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v6[39] = v11;
  v12 = *(v11 - 8);
  v6[40] = v12;
  v13 = *(v12 + 64) + 15;
  v6[41] = swift_task_alloc();
  v14 = type metadata accessor for SFAirDrop.DeclineAction();
  v6[42] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  v6[9] = a6;
  v16 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v6[45] = v16;
  v17 = *(v16 - 8);
  v6[46] = v17;
  v18 = *(v17 + 64) + 15;
  v6[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A98BC2CC, 0, 0);
}

uint64_t sub_1A98BC2CC()
{
  v1 = (v0 + 280);
  v2 = *(v0 + 296);
  *(v0 + 80) = *(v0 + 280);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 360);
  v6 = *(v0 + 272);
  *(v0 + 96) = v2;
  v7 = type metadata accessor for SFAirDrop.PermissionRequest();
  (*(v4 + 16))(v3, v6 + *(v7 + 60), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 376);
      v11 = *(v0 + 320);
      v10 = *(v0 + 328);
      v12 = *(v0 + 312);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v11 + 32))(v10, v9 + *(TupleTypeMetadata2 + 48), v12);
      *(v0 + 432) = 1;
      v14 = swift_task_alloc();
      *(v0 + 400) = v14;
      *v14 = v0;
      v14[1] = sub_1A98BCAA4;
      v15 = *(v0 + 328);
      v16 = *(v0 + 312);

      return SFAirDrop.PermissionRequest.InterventionAction.respond(with:)((v0 + 432), v16);
    }

    v29 = *(v0 + 376);
    v31 = *(v0 + 336);
    v30 = *(v0 + 344);
    v32 = v29[1];
    v39 = *(v0 + 296);
    v41 = *v1;

    v33 = v29[3];

    v34 = v29[4];

    strcpy(swift_task_alloc(), "title prompt acceptActions declineAction ");
    v35 = MEMORY[0x1E69E6158];
    *(v0 + 112) = MEMORY[0x1E69E6158];
    *(v0 + 120) = v35;
    *(v0 + 144) = v41;
    *(v0 + 160) = v39;
    type metadata accessor for SFAirDrop.AcceptAction();
    *(v0 + 128) = sub_1A9976B60();
    *(v0 + 136) = v31;
    TupleTypeMetadata = swift_getTupleTypeMetadata();

    sub_1A98BAA80(v29 + *(TupleTypeMetadata + 80), v30);
    v37 = *(v31 + 28);
    v27 = swift_task_alloc();
    *(v0 + 416) = v27;
    *v27 = v0;
    v28 = sub_1A98BCC58;
  }

  else
  {
    v18 = *(v0 + 376);
    v19 = *(v0 + 352);
    v20 = *(v0 + 336);
    v21 = v18[1];
    v38 = *(v0 + 296);
    v40 = *v1;

    v22 = v18[3];

    v23 = v18[4];

    strcpy(swift_task_alloc(), "title prompt acceptActions declineAction ");
    v24 = MEMORY[0x1E69E6158];
    *(v0 + 176) = MEMORY[0x1E69E6158];
    *(v0 + 184) = v24;
    *(v0 + 208) = v40;
    *(v0 + 224) = v38;
    type metadata accessor for SFAirDrop.AcceptAction();
    *(v0 + 192) = sub_1A9976B60();
    *(v0 + 200) = v20;
    v25 = swift_getTupleTypeMetadata();

    sub_1A98BAA80(v18 + *(v25 + 80), v19);
    v26 = *(v20 + 28);
    v27 = swift_task_alloc();
    *(v0 + 384) = v27;
    *v27 = v0;
    v28 = sub_1A98BC714;
  }

  v27[1] = v28;

  return sub_1A98BA0A0(sub_1A98BA0A0);
}

uint64_t sub_1A98BC714()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1A98BC8B8;
  }

  else
  {
    v3 = sub_1A98BC828;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98BC828()
{
  sub_1A98CB558(v0[44]);
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98BC8B8()
{
  v21 = v0;
  sub_1A98CB558(v0[44]);
  v1 = v0[49];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[32];
    v11 = sub_1A99778E0();
    v13 = sub_1A97AF148(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v14 = v0[47];
  v15 = v0[43];
  v16 = v0[44];
  v17 = v0[41];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A98BCAA4()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1A98BCFE8;
  }

  else
  {
    v3 = sub_1A98BCBB8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98BCBB8()
{
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98BCC58()
{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1A98BCDFC;
  }

  else
  {
    v3 = sub_1A98BCD6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A98BCD6C()
{
  sub_1A98CB558(v0[43]);
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A98BCDFC()
{
  v21 = v0;
  sub_1A98CB558(v0[43]);
  v1 = v0[53];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[32];
    v11 = sub_1A99778E0();
    v13 = sub_1A97AF148(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v14 = v0[47];
  v15 = v0[43];
  v16 = v0[44];
  v17 = v0[41];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1A98BCFE8()
{
  v21 = v0;
  (*(v0[40] + 8))(v0[41], v0[39]);
  v1 = v0[51];
  if (qword_1EB3B0B48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3B4570);
  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[32];
    v11 = sub_1A99778E0();
    v13 = sub_1A97AF148(v11, v12, &v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1A9662000, v4, v5, "Failed to cancel PermissionRequest {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x1AC58D2C0](v7, -1, -1);
    MEMORY[0x1AC58D2C0](v6, -1, -1);
  }

  else
  {
  }

  v14 = v0[47];
  v15 = v0[43];
  v16 = v0[44];
  v17 = v0[41];

  v18 = v0[1];

  return v18();
}

uint64_t SFAirDrop.DeclineAction.decline()()
{
  v1 = *(type metadata accessor for SFAirDrop.DeclineAction() + 28);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1A98BD2A0;

  return sub_1A98BA0A0();
}

uint64_t sub_1A98BD2A0()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_1A98BD3B4;
  }

  else
  {
    v3 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t SFAirDrop.PermissionRequest.InterventionAction.respond(with:)(_BYTE *a1, uint64_t a2)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = v2;
  *(v3 + 49) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A98BD3F4, 0, 0);
}

uint64_t sub_1A98BD3F4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 64);
  v3 = *(*(v0 + 56) + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4588, &qword_1A99A1830);
  inited = swift_initStackObject();
  *(v0 + 72) = inited;
  *(inited + 16) = xmmword_1A9996D60;
  *(inited + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1A98BD4E8;

  return (sub_1A98BA438)();
}

uint64_t sub_1A98BD4E8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1A98BD604;
  }

  else
  {
    v5 = *(v2 + 72);
    swift_setDeallocating();
    v4 = sub_1A98A8890;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A98BD604()
{
  v1 = v0[9];
  swift_setDeallocating();
  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:title:prompt:acceptActions:declineAction:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v16 = sub_1A99762C0();
  (*(*(v16 - 8) + 32))(a9, a1, v16);
  v17 = type metadata accessor for SFAirDrop.PermissionRequest();
  v18 = v17[14];
  v19 = sub_1A9976230();
  (*(*(v19 - 8) + 32))(a9 + v18, a2, v19);
  v20 = (a9 + v17[15]);
  type metadata accessor for SFAirDrop.AcceptAction();
  sub_1A9976B60();
  type metadata accessor for SFAirDrop.DeclineAction();
  v21 = *(swift_getTupleTypeMetadata() + 80);
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  sub_1A98BAA80(a8, v20 + v21);
  type metadata accessor for SFAirDrop.PermissionRequest.Style();
  swift_storeEnumTagMultiPayload();
  *(a9 + v17[13]) = a10;
  v22 = v17[16];
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v23 = sub_1A99770A0();
  return (*(*(v23 - 8) + 32))(a9 + v22, a11, v23);
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:interventionWorkflow:action:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a3;
  v12 = sub_1A99762C0();
  (*(*(v12 - 8) + 32))(a7, a1, v12);
  v13 = type metadata accessor for SFAirDrop.PermissionRequest();
  v14 = v13[14];
  v15 = sub_1A9976230();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  v16 = (a7 + v13[15]);
  v17 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  *v16 = v11;
  (*(*(v17 - 8) + 32))(&v16[v18], a4, v17);
  type metadata accessor for SFAirDrop.PermissionRequest.Style();
  swift_storeEnumTagMultiPayload();
  *(a7 + v13[13]) = a5;
  v19 = v13[16];
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v20 = sub_1A99770A0();
  return (*(*(v20 - 8) + 32))(a7 + v19, a6, v20);
}

uint64_t SFAirDrop.PermissionRequest.init(id:requestDate:style:isAnswered:telemetryData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sub_1A99762C0();
  (*(*(v11 - 8) + 32))(a6, a1, v11);
  v12 = type metadata accessor for SFAirDrop.PermissionRequest();
  v13 = v12[14];
  v14 = sub_1A9976230();
  (*(*(v14 - 8) + 32))(a6 + v13, a2, v14);
  v15 = v12[15];
  v16 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);
  *(a6 + v12[13]) = a4;
  v17 = v12[16];
  type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v18 = sub_1A99770A0();
  return (*(*(v18 - 8) + 32))(a6 + v17, a5, v18);
}

uint64_t SFAirDrop.PermissionRequest.description.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v38 = v4;
  v39 = v3;
  v40 = v6;
  v41 = v5;
  v7 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  (*(v11 + 16))(&v33 - v9, v1 + *(a1 + 60), v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v16 = *(v10 + 1);

    v18 = *(v10 + 2);
    v17 = *(v10 + 3);
    v19 = *(v10 + 4);

    MEMORY[0x1EEE9AC00](v20);
    strcpy(&v33 - 48, "title prompt acceptActions declineAction ");
    v38 = MEMORY[0x1E69E6158];
    v39 = MEMORY[0x1E69E6158];
    v35[0] = v4;
    v35[1] = v3;
    v36 = v6;
    v37 = v5;
    type metadata accessor for SFAirDrop.AcceptAction();
    v40 = sub_1A9976B60();
    v41 = type metadata accessor for SFAirDrop.DeclineAction();
    v21 = *(swift_getTupleTypeMetadata() + 80);
    v38 = 0x203A74706D6F7270;
    v39 = 0xE800000000000000;
    MEMORY[0x1AC5895B0](v18, v17);

    v22 = v38;
    v23 = &v10[v21];
LABEL_8:
    sub_1A98CB558(v23);
    return v22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v25 = *v10;
    v24 = *(v10 + 1);
    v26 = *(v10 + 3);
    v34 = *(v10 + 2);
    v27 = *(v10 + 4);

    MEMORY[0x1EEE9AC00](v28);
    strcpy(&v33 - 48, "title prompt acceptActions declineAction ");
    v38 = MEMORY[0x1E69E6158];
    v39 = MEMORY[0x1E69E6158];
    v35[0] = v4;
    v35[1] = v3;
    v36 = v6;
    v37 = v5;
    type metadata accessor for SFAirDrop.AcceptAction();
    v40 = sub_1A9976B60();
    v41 = type metadata accessor for SFAirDrop.DeclineAction();
    v29 = *(swift_getTupleTypeMetadata() + 80);
    v38 = 0x203A7472656C61;
    v39 = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v25, v24);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v34, v26);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v22 = v38;
    v23 = &v10[v29];
    goto LABEL_8;
  }

  v13 = *v10;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(v35, "intervention: ");
  HIBYTE(v35[1]) = -18;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0xE800000000000000;
      v15 = 0x657669656365722ELL;
    }

    else
    {
      v14 = 0xE90000000000006FLL;
      v15 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    v15 = 0x646E65732ELL;
  }

  v38 = v4;
  v39 = v3;
  v40 = v6;
  v41 = v5;
  v30 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v31 = *(swift_getTupleTypeMetadata2() + 48);
  MEMORY[0x1AC5895B0](v15, v14);

  v22 = v35[0];
  (*(*(v30 - 8) + 8))(&v10[v31], v30);
  return v22;
}

uint64_t static SFAirDrop.PermissionRequest.Style.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v136 = a1;
  v142 = a3;
  v143 = a4;
  v144 = a5;
  v145 = a6;
  v11 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v127 = *(v11 - 8);
  v128 = v11;
  v12 = v127[8];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v120 - v15;
  v131 = type metadata accessor for SFAirDrop.DeclineAction();
  v16 = *(*(v131 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v131);
  v123 = (&v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v124 = &v120 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = (&v120 - v22);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v120 - v23;
  v132 = a3;
  v133 = a4;
  v142 = a3;
  v143 = a4;
  v134 = a5;
  v135 = a6;
  v144 = a5;
  v145 = a6;
  v25 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = (&v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v120 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = (&v120 - v34);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v129 = *(TupleTypeMetadata2 - 8);
  v37 = *(v129 + 64);
  v38 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v40 = &v120 - v39;
  v130 = v38;
  v41 = &v120 + *(v38 + 48) - v39;
  v126 = v26;
  v42 = *(v26 + 16);
  v42(&v120 - v39, v136, v25);
  v42(v41, a2, v25);
  v43 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v128 = v24;
    v57 = (v42)(v35, v40, v25);
    v58 = v35[1];
    v127 = *v35;
    v59 = v35[3];
    v125 = v35[2];
    v60 = v35[4];
    MEMORY[0x1EEE9AC00](v57);
    strcpy(&v120 - 48, "title prompt acceptActions declineAction ");
    v142 = MEMORY[0x1E69E6158];
    v143 = MEMORY[0x1E69E6158];
    v137 = v132;
    v138 = v133;
    v139 = v134;
    v140 = v135;
    type metadata accessor for SFAirDrop.AcceptAction();
    v144 = sub_1A9976B60();
    v145 = v131;
    v61 = *(swift_getTupleTypeMetadata() + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98CB558(v35 + v61);

      goto LABEL_18;
    }

    v131 = v60;
    v136 = v43;
    v78 = *v41;
    v77 = *(v41 + 1);
    v79 = *(v41 + 2);
    v80 = *(v41 + 3);
    v130 = *(v41 + 4);
    v81 = v35 + v61;
    v82 = v128;
    sub_1A98BAA80(v81, v128);
    v83 = &v41[v61];
    v84 = v121;
    sub_1A98BAA80(v83, v121);
    if (v127 == v78 && v58 == v77)
    {

      v52 = v126;
    }

    else
    {
      v90 = sub_1A99777E0();

      v52 = v126;
      if ((v90 & 1) == 0)
      {

        goto LABEL_64;
      }
    }

    if (v125 == v79 && v59 == v80)
    {

      v92 = v134;
      v91 = v135;
      v94 = v132;
      v93 = v133;
LABEL_49:
      v142 = v94;
      v143 = v93;
      v144 = v92;
      v145 = v91;
      type metadata accessor for SFAirDrop.AcceptAction();
      swift_getWitnessTable();
      v112 = sub_1A9976B70();

      v43 = v136;
      if (v112)
      {
        if (*v82 == *v84 && *(v82 + 8) == v84[1] || (sub_1A99777E0() & 1) != 0)
        {
          v97 = *(v82 + 16);
          v98 = *(v82 + 24);
          v99 = *(v82 + 32);
          v100 = *(v82 + 40);
          v101 = *(v82 + 48);
          v142 = v97;
          v143 = v98;
          v144 = v99;
          v145 = v100;
          v146 = v101;
          v102 = v84[2];
          v103 = v84[3];
          v104 = v84[4];
          v107 = v84[5];
          v105 = v84;
          v106 = v82;
LABEL_54:
          v113 = *(v105 + 48);
          v137 = v102;
          v138 = v103;
          v139 = v104;
          v140 = v107;
          v141 = v113;
          sub_1A97DC908(v97, v98, v99, v100, v101);
          v114 = v104;
          v43 = v136;
          sub_1A97DC908(v102, v103, v114, v107, v113);
          v115 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v142, &v137);
          sub_1A97DC96C(v137, v138, v139, v140, v141);
          sub_1A97DC96C(v142, v143, v144, v145, v146);
          sub_1A98CB558(v105);
          sub_1A98CB558(v106);
          if (v115)
          {
            v75 = 1;
            goto LABEL_20;
          }

LABEL_70:
          v75 = 0;
          goto LABEL_20;
        }

        sub_1A98CB558(v84);
        v119 = v82;
LABEL_69:
        sub_1A98CB558(v119);
        goto LABEL_70;
      }

      sub_1A98CB558(v84);
      v116 = v82;
LABEL_60:
      sub_1A98CB558(v116);
      v75 = 0;
      goto LABEL_20;
    }

    v111 = sub_1A99777E0();

    v92 = v134;
    v91 = v135;
    v94 = v132;
    v93 = v133;
    if (v111)
    {
      goto LABEL_49;
    }

LABEL_64:

    sub_1A98CB558(v84);
    v118 = v82;
    goto LABEL_65;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v62 = (v42)(v30, v40, v25);
    v63 = v30[1];
    v127 = *v30;
    v128 = v63;
    v64 = v30[3];
    v125 = v30[2];
    v65 = v30[4];
    MEMORY[0x1EEE9AC00](v62);
    strcpy(&v120 - 48, "title prompt acceptActions declineAction ");
    v142 = MEMORY[0x1E69E6158];
    v143 = MEMORY[0x1E69E6158];
    v137 = v132;
    v138 = v133;
    v139 = v134;
    v140 = v135;
    type metadata accessor for SFAirDrop.AcceptAction();
    v144 = sub_1A9976B60();
    v145 = v131;
    v66 = *(swift_getTupleTypeMetadata() + 80);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v130 = v64;
      v131 = v65;
      v136 = v43;
      v67 = *v41;
      v68 = *(v41 + 1);
      v69 = *(v41 + 2);
      v70 = *(v41 + 3);
      v129 = *(v41 + 4);
      v71 = v30 + v66;
      v72 = v124;
      sub_1A98BAA80(v71, v124);
      v73 = &v41[v66];
      v74 = v123;
      sub_1A98BAA80(v73, v123);
      if (v127 == v67 && v128 == v68)
      {
      }

      else
      {
        v85 = sub_1A99777E0();

        if ((v85 & 1) == 0)
        {

          sub_1A98CB558(v74);
          sub_1A98CB558(v72);
          v75 = 0;
          v52 = v126;
          v43 = v136;
          goto LABEL_20;
        }
      }

      v52 = v126;
      if (v125 == v69 && v130 == v70)
      {

        v87 = v134;
        v86 = v135;
        v89 = v132;
        v88 = v133;
LABEL_33:
        v142 = v89;
        v143 = v88;
        v144 = v87;
        v145 = v86;
        type metadata accessor for SFAirDrop.AcceptAction();
        swift_getWitnessTable();
        v96 = sub_1A9976B70();

        v43 = v136;
        if (v96)
        {
          if (*v72 == *v74 && *(v72 + 8) == v74[1] || (sub_1A99777E0() & 1) != 0)
          {
            v97 = *(v72 + 16);
            v98 = *(v72 + 24);
            v99 = *(v72 + 32);
            v100 = *(v72 + 40);
            v101 = *(v72 + 48);
            v142 = v97;
            v143 = v98;
            v144 = v99;
            v145 = v100;
            v146 = v101;
            v102 = v74[2];
            v103 = v74[3];
            v104 = v74[4];
            v105 = v74;
            v106 = v72;
            v107 = *(v105 + 40);
            goto LABEL_54;
          }

          sub_1A98CB558(v74);
          v119 = v72;
          goto LABEL_69;
        }

        sub_1A98CB558(v74);
        v116 = v72;
        goto LABEL_60;
      }

      v95 = sub_1A99777E0();

      v87 = v134;
      v86 = v135;
      v89 = v132;
      v88 = v133;
      if (v95)
      {
        goto LABEL_33;
      }

      sub_1A98CB558(v74);
      v118 = v72;
LABEL_65:
      sub_1A98CB558(v118);
      goto LABEL_66;
    }

    sub_1A98CB558(v30 + v66);

LABEL_18:

    goto LABEL_19;
  }

  v42(v33, v40, v25);
  v45 = v128;
  v46 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v136 = v40;
    v47 = *v33;
    v48 = *v41;
    v49 = v127[4];
    v50 = &v33[v46];
    v51 = v122;
    v49(v122, v50, v45);
    v49(v125, &v41[v46], v45);
    if (v47)
    {
      v52 = v126;
      if (v47 == 1)
      {
        v53 = 0xE700000000000000;
        v54 = 0x65766965636572;
        v55 = v128;
        if (v48)
        {
          goto LABEL_7;
        }

LABEL_39:
        v56 = 0xE400000000000000;
        if (v54 != 1684956531)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v53 = 0xE800000000000000;
      v54 = 0x6F666E4965726F6DLL;
      v55 = v128;
      if (!v48)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v53 = 0xE400000000000000;
      v54 = 1684956531;
      v52 = v126;
      v55 = v128;
      if (!v48)
      {
        goto LABEL_39;
      }
    }

LABEL_7:
    if (v48 == 1)
    {
      v56 = 0xE700000000000000;
      if (v54 != 0x65766965636572)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v56 = 0xE800000000000000;
      if (v54 != 0x6F666E4965726F6DLL)
      {
LABEL_46:
        v108 = sub_1A99777E0();

        if (v108)
        {
          goto LABEL_47;
        }

        v117 = v127[1];
        v117(v125, v55);
        v117(v51, v55);
LABEL_66:
        v75 = 0;
        v43 = v136;
        goto LABEL_20;
      }
    }

LABEL_44:
    if (v53 == v56)
    {

LABEL_47:
      v109 = v125;
      v75 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
      v110 = v127[1];
      v110(v109, v55);
      v110(v51, v55);
      v43 = v136;
      goto LABEL_20;
    }

    goto LABEL_46;
  }

  (v127[1])(&v33[v46], v45);
LABEL_19:
  v75 = 0;
  v52 = v129;
  v25 = v130;
LABEL_20:
  (*(v52 + 8))(v43, v25);
  return v75 & 1;
}

uint64_t sub_1A98BEEA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726577736E417369 && a2 == 0xEA00000000006465 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEB00000000657461 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274656D656C6574 && a2 == 0xED00006174614479)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A98BF05C(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x4474736575716572;
  v3 = 0x656C797473;
  if (a1 != 3)
  {
    v3 = 0x7274656D656C6574;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726577736E417369;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A98BF190(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98BF1E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v23 = *(a2 + 24);
  v24 = v4;
  v27 = v4;
  v28 = v23;
  v21 = v6;
  v22 = v5;
  v29 = v5;
  v30 = v6;
  _s17PermissionRequestV10CodingKeysOMa();
  swift_getWitnessTable();
  v7 = sub_1A9977710();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v25;
  sub_1A9977AA0();
  LOBYTE(v27) = 0;
  sub_1A99762C0();
  sub_1A98CDB9C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
  v14 = v26;
  sub_1A99776E0();
  if (!v14)
  {
    v15 = v24;
    v16 = *(v13 + *(a2 + 52));
    LOBYTE(v27) = 1;
    sub_1A99776A0();
    v17 = *(a2 + 56);
    LOBYTE(v27) = 2;
    sub_1A9976230();
    sub_1A98CDB9C(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
    sub_1A99776E0();
    v18 = *(a2 + 60);
    v31 = 3;
    v27 = v15;
    v28 = v23;
    v29 = v22;
    v30 = v21;
    type metadata accessor for SFAirDrop.PermissionRequest.Style();
    swift_getWitnessTable();
    sub_1A99776E0();
    v19 = *(a2 + 64);
    v31 = 4;
    v27 = v15;
    v28 = v23;
    v29 = v22;
    v30 = v21;
    type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
    swift_getWitnessTable();
    sub_1A9977680();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t SFAirDrop.PermissionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v49 = type metadata accessor for SFAirDrop.PermissionRequest.TelemetryData();
  v11 = sub_1A99770A0();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - v13;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v14 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v44 - v16;
  v54 = sub_1A9976230();
  v57 = *(v54 - 8);
  v17 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A99762C0();
  v55 = *(v60 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v61 = (&v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  _s17PermissionRequestV10CodingKeysOMa();
  swift_getWitnessTable();
  v21 = sub_1A9977630();
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v44 - v23;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v25 = type metadata accessor for SFAirDrop.PermissionRequest();
  v45 = *(v25 - 1);
  v26 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v44 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v62 = v24;
  v30 = v67;
  sub_1A9977A70();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v31 = v56;
  v32 = v57;
  LOBYTE(v63) = 0;
  sub_1A98CDB9C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
  v33 = v60;
  sub_1A99775F0();
  (*(v55 + 32))(v28, v61, v33);
  LOBYTE(v63) = 1;
  v34 = sub_1A99775B0();
  v35 = v25[13];
  v67 = v28;
  v28[v35] = v34 & 1;
  LOBYTE(v63) = 2;
  sub_1A98CDB9C(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
  v36 = v31;
  v37 = v54;
  sub_1A99775F0();
  v61 = a1;
  (*(v32 + 32))(&v67[v25[14]], v36, v37);
  LOBYTE(v63) = 3;
  v38 = v53;
  swift_getWitnessTable();
  v39 = v51;
  sub_1A99775F0();
  v40 = v67;
  (*(v52 + 32))(&v67[v25[15]], v39, v38);
  LOBYTE(v63) = 4;
  swift_getWitnessTable();
  v41 = v50;
  sub_1A9977590();
  (*(v58 + 8))(v62, v59);
  (*(v46 + 32))(&v40[v25[16]], v41, v47);
  v42 = v45;
  (*(v45 + 16))(v48, v40, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  return (*(v42 + 8))(v40, v25);
}

uint64_t SFAirDrop.PermissionRequest.Style.description.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = *(v4 + 1);

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    v13 = *(v4 + 4);

    MEMORY[0x1EEE9AC00](v14);
    strcpy(&v31 - 48, "title prompt acceptActions declineAction ");
    *&v33 = MEMORY[0x1E69E6158];
    *(&v33 + 1) = MEMORY[0x1E69E6158];
    v15 = *(a1 + 32);
    v31 = *(a1 + 16);
    v32 = v15;
    type metadata accessor for SFAirDrop.AcceptAction();
    *&v34 = sub_1A9976B60();
    *(&v34 + 1) = type metadata accessor for SFAirDrop.DeclineAction();
    v16 = *(swift_getTupleTypeMetadata() + 80);
    *&v33 = 0x203A74706D6F7270;
    *(&v33 + 1) = 0xE800000000000000;
    MEMORY[0x1AC5895B0](v12, v11);

    v17 = v33;
    v18 = &v4[v16];
LABEL_8:
    sub_1A98CB558(v18);
    return v17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v20 = *v4;
    v19 = *(v4 + 1);
    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    v23 = *(v4 + 4);

    MEMORY[0x1EEE9AC00](v24);
    strcpy(&v31 - 48, "title prompt acceptActions declineAction ");
    *&v33 = MEMORY[0x1E69E6158];
    *(&v33 + 1) = MEMORY[0x1E69E6158];
    v25 = *(a1 + 32);
    v31 = *(a1 + 16);
    v32 = v25;
    type metadata accessor for SFAirDrop.AcceptAction();
    *&v34 = sub_1A9976B60();
    *(&v34 + 1) = type metadata accessor for SFAirDrop.DeclineAction();
    v26 = *(swift_getTupleTypeMetadata() + 80);
    *&v33 = 0x203A7472656C61;
    *(&v33 + 1) = 0xE700000000000000;
    MEMORY[0x1AC5895B0](v20, v19);

    MEMORY[0x1AC5895B0](23328, 0xE200000000000000);
    MEMORY[0x1AC5895B0](v22, v21);

    MEMORY[0x1AC5895B0](93, 0xE100000000000000);
    v17 = v33;
    v18 = &v4[v26];
    goto LABEL_8;
  }

  v7 = *v4;
  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  sub_1A99772B0();

  strcpy(&v31, "intervention: ");
  HIBYTE(v31) = -18;
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x657669656365722ELL;
    }

    else
    {
      v8 = 0xE90000000000006FLL;
      v9 = 0x666E4965726F6D2ELL;
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    v9 = 0x646E65732ELL;
  }

  v27 = *(a1 + 32);
  v33 = *(a1 + 16);
  v34 = v27;
  v28 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v29 = *(swift_getTupleTypeMetadata2() + 48);
  MEMORY[0x1AC5895B0](v9, v8);

  v17 = v31;
  (*(*(v28 - 8) + 8))(&v4[v29], v28);
  return v17;
}

uint64_t sub_1A98C023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C6E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7472656C61 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98C0350(char a1)
{
  if (!a1)
  {
    return 0x656E696C6E69;
  }

  if (a1 == 1)
  {
    return 0x6E65767265746E69;
  }

  return 0x7472656C61;
}

uint64_t sub_1A98C03A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341747065636361 && a2 == 0xED0000736E6F6974 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x41656E696C636564 && a2 == 0xED00006E6F697463)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A98C0514(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C666B726F77 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A98C05DC(char a1)
{
  if (a1)
  {
    return 0x6E6F69746361;
  }

  else
  {
    return 0x776F6C666B726F77;
  }
}

uint64_t sub_1A98C0610(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1A98C4B88(*v1);
}

uint64_t sub_1A98C064C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1A98C06A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C06F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C0778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1A98C07CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C0820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C0874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C08C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A98C09AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A98C0A00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SFAirDrop.PermissionRequest.Style.encode(to:)(void *a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v104 = a2[2];
  v4 = v104;
  v105 = v5;
  v106 = v6;
  v107 = v7;
  v78 = _s17PermissionRequestV5StyleO15AlertCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v82 = sub_1A9977710();
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v80 = v71 - v9;
  v105 = v5;
  v106 = v6;
  v107 = v7;
  v10 = _s17PermissionRequestV5StyleO22InterventionCodingKeysOMa();
  v11 = swift_getWitnessTable();
  v71[4] = v10;
  v71[3] = v11;
  v76 = sub_1A9977710();
  v75 = *(v76 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v73 = v71 - v13;
  v104 = v4;
  v105 = v5;
  v106 = v6;
  v107 = v7;
  v74 = type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
  v83 = *(v74 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v71 - v15;
  v104 = v4;
  v105 = v5;
  v106 = v6;
  v107 = v7;
  v16 = _s17PermissionRequestV5StyleO16InlineCodingKeysOMa();
  v17 = swift_getWitnessTable();
  v71[2] = v16;
  v71[1] = v17;
  v92 = sub_1A9977710();
  v79 = *(v92 - 8);
  v18 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v71 - v19;
  v86 = type metadata accessor for SFAirDrop.DeclineAction();
  v20 = *(*(v86 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v86);
  v84 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v85 = v71 - v24;
  v25 = *(a2 - 1);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v4;
  v88 = v7;
  v104 = v4;
  v105 = v5;
  v89 = v6;
  v90 = v5;
  v106 = v6;
  v107 = v7;
  _s17PermissionRequestV5StyleO10CodingKeysOMa();
  swift_getWitnessTable();
  v29 = sub_1A9977710();
  v30 = *(v29 - 8);
  v96 = v29;
  v97 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = v71 - v32;
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v95 = v33;
  sub_1A9977AA0();
  (*(v25 + 16))(v28, v93, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = *v28;
      v37 = v74;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v39 = v83;
      v40 = v72;
      (*(v83 + 32))(v72, &v28[*(TupleTypeMetadata2 + 48)], v37);
      LOBYTE(v104) = 1;
      v41 = v73;
      v43 = v95;
      v42 = v96;
      sub_1A9977640();
      LOBYTE(v104) = v36;
      LOBYTE(v100) = 0;
      sub_1A98A7E54();
      v44 = v76;
      v45 = v94;
      sub_1A99776E0();
      if (v45)
      {
        (*(v75 + 8))(v41, v44);
        (*(v39 + 8))(v40, v37);
      }

      else
      {
        LOBYTE(v104) = 1;
        swift_getWitnessTable();
        sub_1A99776E0();
        (*(v75 + 8))(v41, v44);
        (*(v83 + 8))(v40, v37);
      }

      return (*(v97 + 8))(v43, v42);
    }

    else
    {
      v57 = *v28;
      v56 = *(v28 + 1);
      v58 = *(v28 + 3);
      v92 = *(v28 + 2);
      v93 = v58;
      v59 = *(v28 + 4);
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&v71[-6], "title prompt acceptActions declineAction ");
      v104 = MEMORY[0x1E69E6158];
      v105 = MEMORY[0x1E69E6158];
      v100 = v87;
      v101 = v90;
      v102 = v89;
      v103 = v88;
      type metadata accessor for SFAirDrop.AcceptAction();
      v106 = sub_1A9976B60();
      v107 = v86;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v61 = v84;
      sub_1A98BAA80(&v28[*(TupleTypeMetadata + 80)], v84);
      LOBYTE(v104) = 2;
      v62 = v80;
      v64 = v95;
      v63 = v96;
      sub_1A9977640();
      LOBYTE(v104) = 0;
      v65 = v82;
      v66 = v94;
      sub_1A9977690();

      if (v66)
      {

        (*(v81 + 8))(v62, v65);
        v67 = v61;
      }

      else
      {
        LOBYTE(v104) = 1;
        sub_1A9977690();

        v100 = v59;
        v108 = 2;
        v104 = v87;
        v105 = v90;
        v106 = v89;
        v107 = v88;
        type metadata accessor for SFAirDrop.AcceptAction();
        sub_1A9976B60();
        v99 = swift_getWitnessTable();
        swift_getWitnessTable();
        sub_1A99776E0();
        v70 = v84;

        LOBYTE(v104) = 3;
        sub_1A98CDB9C(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
        sub_1A99776E0();
        (*(v81 + 8))(v62, v65);
        v67 = v70;
      }

      sub_1A98CB558(v67);
      return (*(v97 + 8))(v64, v63);
    }
  }

  else
  {
    v46 = *v28;
    v47 = *(v28 + 1);
    v48 = *(v28 + 3);
    v93 = *(v28 + 2);
    v49 = *(v28 + 4);
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v71[-6], "title prompt acceptActions declineAction ");
    v104 = MEMORY[0x1E69E6158];
    v105 = MEMORY[0x1E69E6158];
    v50 = v87;
    v100 = v87;
    v101 = v90;
    v102 = v89;
    v103 = v88;
    type metadata accessor for SFAirDrop.AcceptAction();
    v106 = sub_1A9976B60();
    v107 = v86;
    v51 = swift_getTupleTypeMetadata();
    sub_1A98BAA80(&v28[*(v51 + 80)], v85);
    LOBYTE(v104) = 0;
    v53 = v95;
    v52 = v96;
    sub_1A9977640();
    LOBYTE(v104) = 0;
    v54 = v94;
    sub_1A9977690();
    if (v54)
    {

      (*(v79 + 8))(v91, v92);
      v55 = v85;
    }

    else
    {
      v69 = v85;

      LOBYTE(v104) = 1;
      sub_1A9977690();

      v100 = v49;
      v108 = 2;
      v104 = v50;
      v105 = v90;
      v106 = v89;
      v107 = v88;
      type metadata accessor for SFAirDrop.AcceptAction();
      sub_1A9976B60();
      v98 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1A99776E0();

      LOBYTE(v104) = 3;
      sub_1A98CDB9C(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A99776E0();
      (*(v79 + 8))(v91, v92);
      v55 = v69;
    }

    sub_1A98CB558(v55);
    return (*(v97 + 8))(v53, v52);
  }
}

uint64_t SFAirDrop.PermissionRequest.Style.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v113 = a6;
  *&v143 = a2;
  *(&v143 + 1) = a3;
  *&v144 = a4;
  *(&v144 + 1) = a5;
  v126 = _s17PermissionRequestV5StyleO15AlertCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v119 = sub_1A9977630();
  v120 = *(v119 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v130 = &v108 - v12;
  *&v143 = a2;
  *(&v143 + 1) = a3;
  *&v144 = a4;
  *(&v144 + 1) = a5;
  v13 = _s17PermissionRequestV5StyleO22InterventionCodingKeysOMa();
  v14 = swift_getWitnessTable();
  v124 = v13;
  v123 = v14;
  v116 = sub_1A9977630();
  v115 = *(v116 - 8);
  v15 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v127 = &v108 - v16;
  *&v143 = a2;
  *(&v143 + 1) = a3;
  *&v144 = a4;
  *(&v144 + 1) = a5;
  v17 = _s17PermissionRequestV5StyleO16InlineCodingKeysOMa();
  v18 = swift_getWitnessTable();
  v122 = v17;
  v121 = v18;
  v118 = sub_1A9977630();
  v117 = *(v118 - 8);
  v19 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v128 = &v108 - v20;
  *&v143 = a2;
  *(&v143 + 1) = a3;
  *&v144 = a4;
  *(&v144 + 1) = a5;
  _s17PermissionRequestV5StyleO10CodingKeysOMa();
  v136 = swift_getWitnessTable();
  v131 = sub_1A9977630();
  v134 = *(v131 - 8);
  v21 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v23 = &v108 - v22;
  *&v114 = a2;
  *&v143 = a2;
  *(&v143 + 1) = a3;
  *(&v114 + 1) = a3;
  v132 = a5;
  v133 = a4;
  *&v144 = a4;
  *(&v144 + 1) = a5;
  v24 = type metadata accessor for SFAirDrop.PermissionRequest.Style();
  v129 = *(v24 - 8);
  v25 = *(v129 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = (&v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v108 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v108 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v108 - v35;
  v37 = a1;
  v38 = a1[3];
  v39 = a1[4];
  v137 = v37;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v135 = v23;
  v40 = v138;
  sub_1A9977A70();
  v138 = v40;
  if (!v40)
  {
    v112 = v31;
    v110 = v28;
    v111 = v34;
    v42 = v132;
    v41 = v133;
    v109 = v36;
    v136 = v24;
    v43 = v131;
    v44 = v135;
    *&v141 = sub_1A9977620();
    sub_1A9976B60();
    swift_getWitnessTable();
    *&v143 = sub_1A99771D0();
    *(&v143 + 1) = v45;
    *&v144 = v46;
    *(&v144 + 1) = v47;
    sub_1A99771C0();
    swift_getWitnessTable();
    sub_1A9976EA0();
    v48 = v141;
    if (v141 == 3 || (v108 = v143, v141 = v143, v142 = v144, (sub_1A9976EF0() & 1) == 0))
    {
      v60 = sub_1A9977300();
      v61 = v44;
      v62 = swift_allocError();
      v64 = v63;
      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v64 = v136;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v60 - 8) + 104))(v64, *MEMORY[0x1E69E6AF8], v60);
      v138 = v62;
      swift_willThrow();
      (*(v134 + 8))(v61, v43);
      goto LABEL_18;
    }

    if (v48)
    {
      if (v48 == 1)
      {
        v49 = v42;
        LOBYTE(v141) = 1;
        v50 = v127;
        v51 = v138;
        sub_1A9977530();
        v52 = v134;
        v53 = v129;
        v138 = v51;
        if (v51)
        {
LABEL_10:
          (*(v52 + 8))(v44, v43);
LABEL_18:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_0Tm(v137);
        }

        v145 = 0;
        sub_1A98CB62C();
        v54 = v112;
        v55 = v50;
        v56 = v116;
        v57 = v138;
        sub_1A99775F0();
        v138 = v57;
        if (v57)
        {
          goto LABEL_9;
        }

        v141 = v114;
        *&v142 = v41;
        *(&v142 + 1) = v49;
        type metadata accessor for SFAirDrop.PermissionRequest.InterventionAction();
        v58 = *(swift_getTupleTypeMetadata2() + 48);
        LOBYTE(v141) = 1;
        swift_getWitnessTable();
        v59 = v138;
        sub_1A99775F0();
        v138 = v59;
        if (v59)
        {
LABEL_9:
          (*(v115 + 8))(v55, v56);
          goto LABEL_10;
        }

        (*(v115 + 8))(v55, v56);
        (*(v52 + 8))(v44, v43);
        swift_unknownObjectRelease();
        v87 = v136;
        swift_storeEnumTagMultiPayload();
        v88 = v54;
        v89 = v113;
LABEL_34:
        v106 = *(v53 + 32);
        v107 = v109;
        v106(v109, v88, v87);
        v106(v89, v107, v87);
        return __swift_destroy_boxed_opaque_existential_0Tm(v137);
      }

      LOBYTE(v141) = 2;
      v68 = v138;
      sub_1A9977530();
      v69 = v134;
      v138 = v68;
      if (!v68)
      {
        LOBYTE(v141) = 0;
        v70 = v119;
        v71 = sub_1A99775A0();
        v138 = 0;
        v81 = v110;
        *v110 = v71;
        v81[1] = v82;
        v128 = v82;
        v83 = v81;
        LOBYTE(v141) = 1;
        v84 = v138;
        v85 = sub_1A99775A0();
        v138 = v84;
        if (v84)
        {
          (*(v120 + 8))(v130, v70);
          (*(v69 + 8))(v44, v43);
          goto LABEL_24;
        }

        v83[2] = v85;
        v83[3] = v86;
        v127 = v86;
        v141 = v114;
        *&v142 = v41;
        *(&v142 + 1) = v42;
        type metadata accessor for SFAirDrop.AcceptAction();
        v97 = sub_1A9976B60();
        v145 = 2;
        v140 = swift_getWitnessTable();
        swift_getWitnessTable();
        v98 = v130;
        v99 = v138;
        v100 = sub_1A99775F0();
        v96 = v99;
        if (v99)
        {
          (*(v120 + 8))(v98, v70);
          (*(v69 + 8))(v135, v43);
          goto LABEL_30;
        }

        MEMORY[0x1EEE9AC00](v100);
        strcpy(&v108 - 48, "title prompt acceptActions declineAction ");
        *&v141 = MEMORY[0x1E69E6158];
        *(&v141 + 1) = MEMORY[0x1E69E6158];
        *&v142 = v97;
        *(&v142 + 1) = type metadata accessor for SFAirDrop.DeclineAction();
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v104 = v110;
        v105 = *(TupleTypeMetadata + 80);
        type metadata accessor for SFAirDrop.DeclineAction();
        LOBYTE(v141) = 3;
        sub_1A98CDB9C(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction);
        sub_1A99775F0();
        v138 = 0;
        (*(v120 + 8))(v98, v70);
        (*(v69 + 8))(v135, v43);
        swift_unknownObjectRelease();
        v87 = v136;
        swift_storeEnumTagMultiPayload();
        v88 = v104;
        goto LABEL_33;
      }
    }

    else
    {
      LOBYTE(v141) = 0;
      v66 = v128;
      v67 = v138;
      sub_1A9977530();
      v138 = v67;
      if (!v67)
      {
        LOBYTE(v141) = 0;
        v72 = v118;
        v73 = sub_1A99775A0();
        v75 = v134;
        v138 = 0;
        v77 = v111;
        *v111 = v73;
        v77[1] = v74;
        v130 = v74;
        LOBYTE(v141) = 1;
        v78 = v138;
        v79 = sub_1A99775A0();
        v138 = v78;
        if (v78)
        {
          (*(v117 + 8))(v66, v72);
          (*(v75 + 8))(v44, v43);
LABEL_24:

          goto LABEL_18;
        }

        v90 = v44;
        v91 = v111;
        v111[2] = v79;
        v91[3] = v80;
        v127 = v80;
        v141 = v114;
        *&v142 = v41;
        *(&v142 + 1) = v42;
        type metadata accessor for SFAirDrop.AcceptAction();
        v92 = sub_1A9976B60();
        v145 = 2;
        v139 = swift_getWitnessTable();
        swift_getWitnessTable();
        v93 = v138;
        v94 = sub_1A99775F0();
        v95 = v72;
        v96 = v93;
        if (v93)
        {
          (*(v117 + 8))(v66, v95);
          (*(v75 + 8))(v90, v43);
LABEL_30:

          swift_unknownObjectRelease();
          v138 = v96;
          return __swift_destroy_boxed_opaque_existential_0Tm(v137);
        }

        MEMORY[0x1EEE9AC00](v94);
        strcpy(&v108 - 48, "title prompt acceptActions declineAction ");
        *&v141 = MEMORY[0x1E69E6158];
        *(&v141 + 1) = MEMORY[0x1E69E6158];
        *&v142 = v92;
        *(&v142 + 1) = type metadata accessor for SFAirDrop.DeclineAction();
        v101 = *(swift_getTupleTypeMetadata() + 80);
        type metadata accessor for SFAirDrop.DeclineAction();
        LOBYTE(v141) = 3;
        sub_1A98CDB9C(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction);
        v102 = v111;
        sub_1A99775F0();
        v138 = 0;
        v88 = v102;
        (*(v117 + 8))(v66, v95);
        (*(v75 + 8))(v90, v43);
        swift_unknownObjectRelease();
        v87 = v136;
        swift_storeEnumTagMultiPayload();
LABEL_33:
        v89 = v113;
        v53 = v129;
        goto LABEL_34;
      }
    }

    (*(v134 + 8))(v44, v43);
    goto LABEL_18;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v137);
}