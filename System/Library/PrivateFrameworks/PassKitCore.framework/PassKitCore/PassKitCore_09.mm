void *sub_1AD445EE4()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = v1;
  return v1;
}

void sub_1AD445F28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  *(v1 + 152) = a1;
}

uint64_t sub_1AD445FC0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 160) = v3;
  *(v4 + 168) = v2;
}

uint64_t sub_1AD446020()
{
  swift_beginAccess();
  v1 = *(v0 + 160);

  return v1;
}

uint64_t sub_1AD44606C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

void sub_1AD446110(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 176);
  *(v3 + 176) = v2;
  v5 = v2;
}

void *sub_1AD446168()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void sub_1AD4461AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

id ProvisioningContext.__allocating_init(environment:provisioningController:groupsController:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 - 1;
  if ((a1 - 1) > 8)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = byte_1ADB81AEE[v5];
    v7 = word_1ADB81AF8[v5];
  }

  type metadata accessor for ProvisioningContext();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0u;
  *(v8 + 152) = 0u;
  *(v8 + 168) = 0u;
  *(v8 + 32) = v6;
  *(v8 + 33) = v7;
  *(v8 + 16) = a2;
  swift_beginAccess();
  *(v8 + 24) = a3;
  v18[0] = 5;
  result = [a2 webService];
  if (result)
  {
    ProvisioningDevice.init(type:webService:)(result, v18, v21);

    v10 = v21[0];
    v11 = v22;
    *(v8 + 64) = v21[0];
    *(v8 + 72) = v11;
    *(v8 + 80) = 0;
    if (v7 >> 14 == 1 || (v7 & 1) == 0)
    {
      v13 = v11;
      if (!PKIsPhone() || v10 != 1)
      {
        *(v8 + 40) = v10;
        *(v8 + 48) = v13;
        *(v8 + 56) = 0;
        v16 = v13;
        goto LABEL_13;
      }
    }

    else
    {
      v12 = v11;
    }

    v17 = 5;
    result = [objc_opt_self() sharedService];
    if (result)
    {
      ProvisioningDevice.init(type:webService:)(result, &v17, v18);
      v14 = v19;
      v15 = v20;
      *(v8 + 40) = v18[0];
      *(v8 + 48) = v14;
      *(v8 + 56) = v15;
LABEL_13:

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ProvisioningContext.ProvisioningFlowType.init(_:isBackground:isFollowUpProvisioning:isFollowupSetupAssistant:mode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, unint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  if (a2)
  {
    v7 = 0;
    v8 = -16384;
  }

  else
  {
    if (a3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (result > 5)
    {
      if (result == 9)
      {
        v13 = 1;
      }

      else
      {
        v13 = v7;
      }

      if (result == 8)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      if (result == 8)
      {
        v8 = 16386;
      }

      else
      {
        v8 = 0;
      }

      if (a6 & 1 | (a5 > 7))
      {
        LOWORD(v15) = 16385;
      }

      else
      {
        v15 = (0x1010000010101uLL >> (8 * a5)) & 1 | 0x4000;
      }

      if (result != 7)
      {
        LOWORD(v15) = 0;
      }

      if (result == 6)
      {
        v16 = -32511;
      }

      else
      {
        v16 = v15;
      }

      if (result <= 7)
      {
        v8 = v16;
      }

      else
      {
        v7 = v14;
      }
    }

    else
    {
      if (result == 5)
      {
        v9 = -32767;
      }

      else
      {
        v9 = 0;
      }

      if (result == 4)
      {
        v8 = 1;
      }

      else
      {
        v8 = v9;
      }

      if (a4)
      {
        v10 = -32256;
      }

      else
      {
        v10 = 0x8000;
      }

      if (a4)
      {
        v11 = -32256;
      }

      else
      {
        v11 = -32512;
      }

      if (result == 2)
      {
        v12 = 0;
      }

      else
      {
        v12 = v7;
      }

      if (result != 2)
      {
        v11 = 0;
      }

      if (result == 1)
      {
        v12 = 0;
      }

      else
      {
        v10 = v11;
      }

      if (result <= 3)
      {
        v7 = v12;
        v8 = v10;
      }
    }
  }

  *a7 = v7;
  *(a7 + 1) = v8;
  return result;
}

id ProvisioningContext.__allocating_init(flowType:provisioningController:)(char *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  type metadata accessor for ProvisioningContext();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  *(v5 + 16) = a2;
  swift_beginAccess();
  *(v5 + 24) = 0;
  v16[0] = 5;
  result = [a2 webService];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  ProvisioningDevice.init(type:webService:)(result, v16, v19);

  v7 = v19[0];
  v8 = v20;
  *(v5 + 64) = v19[0];
  *(v5 + 72) = v8;
  *(v5 + 80) = 0;
  v9 = v4 >> 14;
  if (v4 >> 14 > 1)
  {
    if (v9 != 2)
    {
LABEL_8:
      v11 = v8;
      if (!PKIsPhone() || v7 != 1)
      {
        *(v5 + 40) = v7;
        *(v5 + 48) = v11;
        *(v5 + 56) = 0;
        v14 = v11;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v9)
  {
    goto LABEL_8;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = v8;
LABEL_10:
  v15 = 5;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    ProvisioningDevice.init(type:webService:)(result, &v15, v16);
    v12 = v17;
    v13 = v18;
    *(v5 + 40) = v16[0];
    *(v5 + 48) = v12;
    *(v5 + 56) = v13;
LABEL_13:

    return v5;
  }

LABEL_15:
  __break(1u);
  return result;
}

id ProvisioningContext.__allocating_init(flowType:provisioningController:groupsController:peerPaymentWebService:destinationDeviceWebService:managingDeviceWebService:)(char *a1, void *a2, void *a3, id a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  v13 = *a1;
  v14 = *(a1 + 1);
  *(v12 + 24) = 0;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 136) = 0u;
  *(v12 + 152) = 0u;
  *(v12 + 168) = 0u;
  *(v12 + 32) = v13;
  *(v12 + 33) = v14;
  *(v12 + 16) = a2;
  swift_beginAccess();
  *(v12 + 24) = a3;
  v34[0] = 5;
  if (a5)
  {
    v15 = a3;
    v16 = a2;
    v17 = a5;
  }

  else
  {
    v18 = a3;
    result = [a2 webService];
    if (!result)
    {
      __break(1u);
      goto LABEL_21;
    }

    v17 = result;
  }

  v20 = a5;
  ProvisioningDevice.init(type:webService:)(v17, v34, v37);

  v21 = v37[0];
  v22 = v38;
  *(v12 + 64) = v37[0];
  *(v12 + 72) = v22;
  *(v12 + 80) = a4;
  if (a6)
  {
    v33 = 5;
    a4 = a4;
    v23 = v22;
    v24 = a6;
LABEL_17:
    ProvisioningDevice.init(type:webService:)(v24, &v33, v34);

    v30 = v35;
    v31 = v36;
    *(v12 + 40) = v34[0];
    *(v12 + 48) = v30;
    *(v12 + 56) = v31;
LABEL_18:

    return v12;
  }

  v25 = v14 >> 14;
  if (v14 >> 14 > 1)
  {
    if (v25 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v25)
  {
    goto LABEL_13;
  }

  if (v14)
  {
    v26 = a4;
    v27 = v22;
    goto LABEL_15;
  }

LABEL_13:
  v28 = a4;
  v29 = v22;
  if (!PKIsPhone() || v21 != 1)
  {

    *(v12 + 40) = v21;
    *(v12 + 48) = v29;
    *(v12 + 56) = a4;
    v32 = v29;
    a4 = v28;
    goto LABEL_18;
  }

LABEL_15:
  v33 = 5;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v24 = result;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

id ProvisioningContext.init(flowType:provisioningController:groupsController:peerPaymentWebService:destinationDeviceWebService:managingDeviceWebService:)(char *a1, void *a2, void *a3, id a4, void *a5, void *a6)
{
  v12 = *a1;
  v13 = *(a1 + 1);
  *(v6 + 24) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 32) = v12;
  *(v6 + 33) = v13;
  *(v6 + 16) = a2;
  swift_beginAccess();
  *(v6 + 24) = a3;
  v33[0] = 5;
  if (a5)
  {
    v14 = a3;
    v15 = a2;
    v16 = a5;
  }

  else
  {
    v17 = a3;
    result = [a2 webService];
    if (!result)
    {
      __break(1u);
      goto LABEL_21;
    }

    v16 = result;
  }

  v19 = a5;
  ProvisioningDevice.init(type:webService:)(v16, v33, v36);

  v20 = v36[0];
  v21 = v37;
  *(v6 + 64) = v36[0];
  *(v6 + 72) = v21;
  *(v6 + 80) = a4;
  if (a6)
  {
    v32 = 5;
    a4 = a4;
    v22 = v21;
    v23 = a6;
LABEL_17:
    ProvisioningDevice.init(type:webService:)(v23, &v32, v33);

    v29 = v34;
    v30 = v35;
    *(v6 + 40) = v33[0];
    *(v6 + 48) = v29;
    *(v6 + 56) = v30;
LABEL_18:

    return v6;
  }

  v24 = v13 >> 14;
  if (v13 >> 14 > 1)
  {
    if (v24 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v24)
  {
    goto LABEL_13;
  }

  if (v13)
  {
    v25 = a4;
    v26 = v21;
    goto LABEL_15;
  }

LABEL_13:
  v27 = a4;
  v28 = v21;
  if (!PKIsPhone() || v20 != 1)
  {

    *(v6 + 40) = v20;
    *(v6 + 48) = v28;
    *(v6 + 56) = a4;
    v31 = v28;
    a4 = v27;
    goto LABEL_18;
  }

LABEL_15:
  v32 = 5;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    v23 = result;
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

id sub_1AD446AE0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  swift_beginAccess();
  v3 = *(v0 + 16);
  swift_beginAccess();
  v4 = *(v0 + 24);
  type metadata accessor for ProvisioningContext();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *(v5 + 32) = v1;
  *(v5 + 33) = v2;
  *(v5 + 16) = v3;
  swift_beginAccess();
  *(v5 + 24) = v4;
  v31[0] = 5;
  v6 = v4;
  result = [v3 webService];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  ProvisioningDevice.init(type:webService:)(result, v31, v34);

  v8 = v34[0];
  v9 = v35;
  *(v5 + 64) = v34[0];
  *(v5 + 72) = v9;
  *(v5 + 80) = 0;
  v10 = v2 >> 14;
  if (v2 >> 14 > 1)
  {
    if (v10 != 2)
    {
LABEL_8:
      v12 = v9;
      if (!PKIsPhone() || v8 != 1)
      {
        *(v5 + 40) = v8;
        *(v5 + 48) = v12;
        *(v5 + 56) = 0;
        v15 = v12;
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if (v10)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = v9;
LABEL_10:
  v30[0] = 5;
  result = [objc_opt_self() sharedService];
  if (result)
  {
    ProvisioningDevice.init(type:webService:)(result, v30, v31);
    v13 = v32;
    v14 = v33;
    *(v5 + 40) = v31[0];
    *(v5 + 48) = v13;
    *(v5 + 56) = v14;
LABEL_13:

    swift_beginAccess();
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    swift_beginAccess();
    v19 = *(v5 + 72);
    v20 = *(v5 + 80);
    *(v5 + 64) = v16;
    *(v5 + 72) = v17;
    *(v5 + 80) = v18;
    v21 = v17;
    v22 = v18;

    swift_beginAccess();
    v24 = *(v0 + 88);
    v23 = *(v0 + 96);
    swift_beginAccess();
    *(v5 + 88) = v24;
    *(v5 + 96) = v23;

    swift_beginAccess();
    v26 = *(v0 + 104);
    v25 = *(v0 + 112);
    swift_beginAccess();
    *(v5 + 104) = v26;
    *(v5 + 112) = v25;

    swift_beginAccess();
    v27 = *(v0 + 176);
    swift_beginAccess();
    v28 = *(v5 + 176);
    *(v5 + 176) = v27;
    v29 = v27;

    return v5;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t ProvisioningContext.deinit()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);

  return v0;
}

uint64_t ProvisioningContext.__deallocating_deinit()
{
  ProvisioningContext.deinit();

  return swift_deallocClassInstance();
}

BOOL ProvisioningContext.isPhoneToWatch.getter()
{
  if (*(v0 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  return *(v0 + 64) == 1;
}

uint64_t ProvisioningContext.ProvisioningFlowType.Environment.InterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

void ProvisioningContext.ProvisioningFlowType.setupAssistantType.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = v2 & 0xC000;
  v4 = (v2 >> 8) & 0x3F;
  if (v3 != 0x8000)
  {
    LOBYTE(v4) = 3;
  }

  *a1 = v4;
}

BOOL ProvisioningContext.ProvisioningFlowType.fullWalletFlow.getter()
{
  if (*v0 == 1)
  {
    return 0;
  }

  v2 = *(v0 + 1);
  v3 = v2 >> 14;
  v4 = (v2 >> 14) - 2;
  v5 = v2 ^ 1;
  v6 = (v2 & 0xFE) == 0;
  if (!v3)
  {
    v6 = v5;
  }

  if (v4 < 2)
  {
    return 0;
  }

  return v6;
}

BOOL ProvisioningContext.ProvisioningFlowType.isBackgroundProvisioningFlow.getter()
{
  v1 = *(v0 + 1);
  if (PKSimulateBuddyBackgroundProvisioningInWallet())
  {
    return PKEnableBuddyBackgroundProvisioning();
  }

  result = 0;
  if ((v1 & 0xC000) == 0x8000 && (v1 & 0x3F00) != 0x200)
  {
    return PKEnableBuddyBackgroundProvisioning();
  }

  return result;
}

uint64_t ProvisioningContext.ProvisioningFlowType.isExpressBackgroundProvisioningFlow.getter()
{
  if (*(v0 + 2) << 8 == 33024)
  {
    return PKEnableBuddyBackgroundProvisioning();
  }

  result = PKSimulateBuddyBackgroundProvisioningInWallet();
  if (result)
  {
    return PKEnableBuddyBackgroundProvisioning();
  }

  return result;
}

_BYTE *ProvisioningContext.ProvisioningFlowType.init(intent:environment:)@<X0>(_BYTE *result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 1) = v3;
  return result;
}

uint64_t ProvisioningContext.ProvisioningFlowType.setupContext.getter()
{
  v1 = *(v0 + 1);
  v2 = v1 >> 14;
  if (v1 >> 14 > 1)
  {
    if (v2 == 2)
    {
      v7 = 5;
      if ((v1 & 0x3F00) == 0x100)
      {
        v7 = 6;
      }

      v8 = 1;
      if ((v1 & 0x3F00) == 0x100)
      {
        v8 = 2;
      }

      if (v1)
      {
        return v7;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v3 = 4;
    if ((v1 & 1) == 0)
    {
      v3 = 0;
    }

    v4 = (v1 & 0xFE) == 0;
    v5 = 7;
    if (!v4)
    {
      v5 = 8;
    }

    if (v2)
    {
      return v5;
    }

    else
    {
      return v3;
    }
  }
}

Swift::String __swiftcall ProvisioningContext.ProvisioningFlowType.analyticsEnvironmentID()()
{
  v1 = *(v0 + 1);
  v2 = v1 >> 14;
  if (v1 >> 14 > 1)
  {
    if (v2 == 2)
    {
      v5 = (v1 >> 8) & 0x3F;
      v6 = 0xD00000000000001ELL;
      v7 = 0x80000001ADB9EFF0;
      v8 = 0xD00000000000001ELL;
      v9 = 0x80000001ADB9EFD0;
      if (v5 != 1)
      {
        v8 = 0xD00000000000001FLL;
        v9 = 0x80000001ADB9EFB0;
      }

      if (v5)
      {
        v6 = v8;
        v7 = v9;
      }

      v10 = 0xD00000000000001ELL;
      v11 = 0x80000001ADB9F030;
      if (v5 != 1)
      {
        v10 = 0xD00000000000001FLL;
        v11 = 0x80000001ADB9F010;
      }

      v12 = v5 == 0;
      if (v5)
      {
        v13 = v10;
      }

      else
      {
        v13 = 0xD00000000000001ELL;
      }

      if (v12)
      {
        v14 = 0x80000001ADB9F050;
      }

      else
      {
        v14 = v11;
      }

      if (v1)
      {
        v3 = v6;
      }

      else
      {
        v3 = v13;
      }

      if (v1)
      {
        v4 = v7;
      }

      else
      {
        v4 = v14;
      }
    }

    else
    {
      v4 = 0xE600000000000000;
      v3 = 0x6E6F6D656164;
    }
  }

  else if (v2)
  {
    v15 = *(v0 + 1);
    if (*(v0 + 1))
    {
      if (v15 == 1)
      {
        v3 = 0xD000000000000011;
      }

      else
      {
        v3 = 0xD000000000000019;
      }

      if (v15 == 1)
      {
        v4 = 0x80000001ADB9F090;
      }

      else
      {
        v4 = 0x80000001ADB9F070;
      }
    }

    else
    {
      v4 = 0x80000001ADB9F0B0;
      v3 = 0xD000000000000011;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    if (v1)
    {
      v4 = 0x80000001ADB9F0D0;
    }

    else
    {
      v4 = 0x80000001ADB9F0F0;
    }
  }

  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall ProvisioningContext.ProvisioningFlowType.analyticsIntentID()()
{
  v1 = 0x6573616863727570;
  if (*v0 != 1)
  {
    v1 = 0x7075776F6C6C6F66;
  }

  if (*v0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0x6F697369766F7270;
  }

  if (*v0)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v3 = 0xE90000000000006ELL;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

void __swiftcall ProvisioningContext.createUIReporter(for:)(PKProvisioningAnalyticsSessionUIReporter_optional *__return_ptr retstr, Swift::String a2)
{
  swift_beginAccess();
  v3 = *(v2 + 176);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1ADB06370();
    [v4 createViewReporterForPage_];
  }
}

void __swiftcall ProvisioningContext.createStepReporter()(PKProvisioningAnalyticsSessionStepReporter_optional *__return_ptr retstr)
{
  swift_beginAccess();
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = [v2 createStepReporter];
  }
}

BOOL _s11PassKitCore19ProvisioningContextC0D8FlowTypeV11EnvironmentO2eeoiySbAG_AGtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 14;
  if (v2 >> 14 <= 1)
  {
    if (v4)
    {
      if ((v3 & 0xC000) == 0x4000)
      {
        return (v3 ^ v2) == 0;
      }
    }

    else if (v3 < 0x4000)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if (v4 != 2)
  {
    return v3 == 49152;
  }

  if ((v3 & 0xC000) != 0x8000)
  {
    return 0;
  }

  v6 = v3 ^ v2;
  return (v6 & 1) == 0 && (v6 & 0x3F00) == 0;
}

id _s11PassKitCore19ProvisioningContextC02pkE0ACSo014PKProvisioningE0C_tcfC_0(void *a1)
{
  v2 = [a1 environment];
  v3 = [a1 isBackground];
  v4 = [a1 isFollowupProvisioning];
  v5 = [a1 isFollowupSetupAssistant];
  v6 = [a1 mode];
  if (v3)
  {
    v7 = 0;
    v8 = -16384;
  }

  else
  {
    v8 = 0;
    if (v4)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (v2 > 5)
    {
      if (v2 > 7)
      {
        if (v2 == 8)
        {
          v8 = 16386;
          v7 = 1;
        }

        else if (v2 == 9)
        {
          v8 = 0;
          v7 = 1;
        }
      }

      else if (v2 == 6)
      {
        v8 = -32511;
      }

      else if (v6 >= 8)
      {
        v8 = 16385;
      }

      else
      {
        v8 = (0x1010000010101uLL >> (8 * v6)) & 1 | 0x4000;
      }
    }

    else if (v2 > 3)
    {
      if (v2 == 4)
      {
        v8 = 1;
      }

      else
      {
        v8 = -32767;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v7 = 0;
        v22 = v5 == 0;
        v23 = 0x8000;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_3;
        }

        v7 = 0;
        v22 = v5 == 0;
        v23 = -32512;
      }

      if (v22)
      {
        v8 = v23;
      }

      else
      {
        v8 = -32256;
      }
    }
  }

LABEL_3:
  v9 = [a1 provisioningController];
  v10 = [a1 peerPaymentWebService];
  v11 = [a1 destinationDeviceWebService];
  v12 = [a1 managingDeviceWebService];
  type metadata accessor for ProvisioningContext();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 32) = v7;
  *(v13 + 33) = v8;
  *(v13 + 16) = v9;
  swift_beginAccess();
  *(v13 + 24) = 0;
  v49[0] = 5;
  v14 = v11;
  if (!v11)
  {
    result = [v9 webService];
    v14 = result;
    if (!result)
    {
      __break(1u);
      goto LABEL_52;
    }
  }

  v16 = v11;
  ProvisioningDevice.init(type:webService:)(v14, v49, v52);

  v17 = v52[0];
  v18 = v53;
  *(v13 + 64) = v52[0];
  *(v13 + 72) = v18;
  *(v13 + 80) = v10;
  if (!v12)
  {
    if ((v8 >> 14) > 1u)
    {
      if (v8 >> 14 != 2)
      {
        goto LABEL_26;
      }
    }

    else if (v8 >> 14)
    {
      goto LABEL_26;
    }

    if (v8)
    {
      v24 = v18;
      v25 = v10;
      goto LABEL_28;
    }

LABEL_26:
    v26 = v18;
    v27 = v10;
    if (!PKIsPhone() || v17 != 1)
    {

      *(v13 + 40) = v17;
      *(v13 + 48) = v26;
      *(v13 + 56) = v10;
      v46 = v26;
      v47 = v27;
      goto LABEL_31;
    }

LABEL_28:
    v48[0] = 5;
    result = [objc_opt_self() sharedService];
    if (result)
    {
      v21 = result;
      goto LABEL_30;
    }

LABEL_52:
    __break(1u);
    return result;
  }

  v48[0] = 5;
  v19 = v18;
  v20 = v10;
  v21 = v12;
LABEL_30:
  ProvisioningDevice.init(type:webService:)(v21, v48, v49);

  v28 = v50;
  v29 = v51;
  *(v13 + 40) = v49[0];
  *(v13 + 48) = v28;
  *(v13 + 56) = v29;
LABEL_31:

  v30 = [a1 teamIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1ADB063B0();
    v34 = v33;
  }

  else
  {

    v32 = 0;
    v34 = 0;
  }

  swift_beginAccess();
  *(v13 + 88) = v32;
  *(v13 + 96) = v34;

  v35 = [a1 groupsController];
  v36 = *(v13 + 24);
  *(v13 + 24) = v35;

  v37 = [a1 hostApplicationBundleIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1ADB063B0();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  swift_beginAccess();
  *(v13 + 104) = v39;
  *(v13 + 112) = v41;

  v42 = [a1 analyticsSession];
  swift_beginAccess();
  v43 = *(v13 + 176);
  *(v13 + 176) = v42;

  v44 = [a1 proximitySetupLiaison];
  swift_beginAccess();
  v45 = *(v13 + 152);
  *(v13 + 152) = v44;

  return v13;
}

unint64_t sub_1AD447A48()
{
  result = qword_1EB59A4F8;
  if (!qword_1EB59A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A4F8);
  }

  return result;
}

unint64_t sub_1AD447AA0()
{
  result = qword_1EB59A500;
  if (!qword_1EB59A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A500);
  }

  return result;
}

unint64_t sub_1AD447AF8()
{
  result = qword_1EB59A508;
  if (!qword_1EB59A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A508);
  }

  return result;
}

unint64_t sub_1AD447B50()
{
  result = qword_1EB59A510;
  if (!qword_1EB59A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59A510);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningContext.ProvisioningFlowType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFD)
  {
    if ((a2 + 33550339) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }
  }

  v4 = (*(a1 + 1) & 0xFC | (*(a1 + 1) >> 14) | (*(a1 + 1) >> 2) & 0xF00) ^ 0xFFF;
  if (v4 >= 0xFFC)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for ProvisioningContext.ProvisioningFlowType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33550339) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFFC)
  {
    *result = a2 - 4093;
    *(result + 2) = (a2 - 4093) >> 16;
    if (v3)
    {
      v4 = ((a2 - 4093) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      v5 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
      *(result + 1) = (16 * v5) & 0xFC00 | (4 * (v5 & 0x3F));
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningContext.ProvisioningFlowType.Environment(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFD)
  {
    goto LABEL_17;
  }

  if (a2 + 61443 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61443 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61443;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 61443;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61443;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 2) & 0xF00) ^ 0xFFF;
  if (v6 >= 0xFFC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for ProvisioningContext.ProvisioningFlowType.Environment(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61443 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61443 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFFC)
  {
    v5 = ((a2 - 4093) >> 16) + 1;
    *result = a2 - 4093;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AD4483AC(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_1AD4483E0(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x303 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x300 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

char *sub_1AD448470(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1ADB06D00();
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

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1AD4506C8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1B26F6CC0](i, a1);
        sub_1AD3D3200(0, &qword_1EB5989B0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AD4506C8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1AD41C9D0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1AD3D3200(0, &qword_1EB5989B0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1AD4506C8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1AD41C9D0(v12, (v3 + 32 * v11 + 32));
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

uint64_t sub_1AD44866C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1ADB06D00();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1AD4506A8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1B26F6CC0](0, a1);
    result = sub_1ADB06390();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1ADB06390();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1AD448818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1ADB06F50() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AD4488A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 48);
  for (i = (a2 + 48); ; i += 3)
  {
    v5 = *(v3 - 16);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v6 = 0xD00000000000001CLL;
        v7 = 0x80000001ADB9B750;
      }

      else if (v5 == 4)
      {
        v6 = 0xD000000000000018;
        v7 = 0x80000001ADB9B770;
      }

      else
      {
        v7 = 0xE700000000000000;
        v6 = 0x6E776F6E6B6E75;
      }
    }

    else if (*(v3 - 16))
    {
      v6 = 0xD000000000000014;
      if (v5 == 1)
      {
        v7 = 0x80000001ADB9B710;
      }

      else
      {
        v7 = 0x80000001ADB9B730;
      }
    }

    else
    {
      v6 = 0xD000000000000013;
      v7 = 0x80000001ADB9B6F0;
    }

    v8 = *(i - 16);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v9 = 0xD00000000000001CLL;
        v10 = 0x80000001ADB9B750;
      }

      else if (v8 == 4)
      {
        v9 = 0xD000000000000018;
        v10 = 0x80000001ADB9B770;
      }

      else
      {
        v10 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
      }
    }

    else if (*(i - 16))
    {
      v9 = 0xD000000000000014;
      if (v8 == 1)
      {
        v10 = 0x80000001ADB9B710;
      }

      else
      {
        v10 = 0x80000001ADB9B730;
      }
    }

    else
    {
      v9 = 0xD000000000000013;
      v10 = 0x80000001ADB9B6F0;
    }

    v12 = *(v3 - 1);
    v11 = *v3;
    v14 = *(i - 1);
    v13 = *i;
    if (v6 == v9 && v7 == v10)
    {

      goto LABEL_33;
    }

    v15 = sub_1ADB06F50();

    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_33:
    if (v11)
    {
      if (!v13)
      {
        goto LABEL_43;
      }

      if (v12 == v14 && v11 == v13)
      {
      }

      else
      {
        v16 = sub_1ADB06F50();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_43;
    }

    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

LABEL_43:

  return 0;
}

BOOL sub_1AD448B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem(0) - 8;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1AD4529A4(v13, v10, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
        sub_1AD4529A4(v14, v7, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
        v16 = sub_1AD3E8B20(v10, v7);
        sub_1AD452A0C(v7, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
        sub_1AD452A0C(v10, type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem);
        if (!v16)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    return 0;
  }

  return v16;
}

uint64_t sub_1AD448D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 80)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v19 = *(a1 + i + 104);
      v20 = *(a1 + i + 96);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v13 = *(a2 + i + 80);
      v14 = *(a1 + i + 80);
      v21 = *(a2 + i + 88);
      v22 = *(a1 + i + 88);
      v17 = *(a2 + i + 104);
      v18 = *(a2 + i + 96);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1ADB06F50() & 1) == 0)
      {
        break;
      }

      if ((v4 != v8 || v5 != v9) && (sub_1ADB06F50() & 1) == 0 || (v6 != v10 || v7 != v11) && (sub_1ADB06F50() & 1) == 0)
      {
        break;
      }

      if (v22)
      {
        if (!v21 || (v14 != v13 || v22 != v21) && (sub_1ADB06F50() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v21)
      {
        return 0;
      }

      if ((v20 != v18 || v19 != v17) && (sub_1ADB06F50() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AD448EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 33);
      v6 = *(a1 + v3 + 34);
      v8 = *(a1 + v3 + 40);
      v7 = *(a1 + v3 + 48);
      v9 = *(a2 + v3 + 33);
      v10 = *(a2 + v3 + 34);
      v11 = *(a2 + v3 + 48);
      if (*(a1 + v3 + 32))
      {
        if (!*(a2 + v3 + 32))
        {
          return 0;
        }
      }

      else if (*(a2 + v3 + 32))
      {
        return 0;
      }

      if (*(a1 + v3 + 33) > 3u)
      {
        if (*(a1 + v3 + 33) > 5u)
        {
          if (v5 == 6)
          {
            v13 = 0x726F707075736E75;
            v12 = 0xEF64726143646574;
            if (*(a2 + v3 + 33) > 3u)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v13 = 0xD000000000000017;
            v12 = 0x80000001ADB9BDE0;
            if (*(a2 + v3 + 33) > 3u)
            {
LABEL_33:
              if (*(a2 + v3 + 33) > 5u)
              {
                if (v9 == 6)
                {
                  v15 = 0x726F707075736E75;
                  v14 = 0xEF64726143646574;
                }

                else
                {
                  v15 = 0xD000000000000017;
                  v14 = 0x80000001ADB9BDE0;
                }
              }

              else
              {
                v15 = 0xD000000000000011;
                if (v9 == 4)
                {
                  v14 = 0x80000001ADB9BD90;
                }

                else
                {
                  v14 = 0x80000001ADB9BDB0;
                }
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v13 = 0xD000000000000011;
          if (v5 == 4)
          {
            v12 = 0x80000001ADB9BD90;
            if (*(a2 + v3 + 33) > 3u)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v12 = 0x80000001ADB9BDB0;
            if (*(a2 + v3 + 33) > 3u)
            {
              goto LABEL_33;
            }
          }
        }
      }

      else if (*(a1 + v3 + 33) > 1u)
      {
        if (v5 == 2)
        {
          v13 = 0xD000000000000015;
          v12 = 0x80000001ADB9BD50;
          if (*(a2 + v3 + 33) > 3u)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v13 = 0xD000000000000014;
          v12 = 0x80000001ADB9BD70;
          if (*(a2 + v3 + 33) > 3u)
          {
            goto LABEL_33;
          }
        }
      }

      else if (*(a1 + v3 + 33))
      {
        v13 = 0xD000000000000016;
        v12 = 0x80000001ADB9BD30;
        if (*(a2 + v3 + 33) > 3u)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        v13 = 0x6E776F6E6B6E75;
        if (*(a2 + v3 + 33) > 3u)
        {
          goto LABEL_33;
        }
      }

      if (*(a2 + v3 + 33) > 1u)
      {
        if (v9 == 2)
        {
          v15 = 0xD000000000000015;
          v14 = 0x80000001ADB9BD50;
        }

        else
        {
          v15 = 0xD000000000000014;
          v14 = 0x80000001ADB9BD70;
        }
      }

      else if (*(a2 + v3 + 33))
      {
        v15 = 0xD000000000000016;
        v14 = 0x80000001ADB9BD30;
      }

      else
      {
        v14 = 0xE700000000000000;
        v15 = 0x6E776F6E6B6E75;
      }

LABEL_46:
      v29 = *(a2 + v3 + 40);
      if (v13 == v15 && v12 == v14)
      {
      }

      else
      {
        v16 = sub_1ADB06F50();

        if ((v16 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      if (v6 == 13)
      {
        if (v10 != 13)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v17 = 0xEB00000000726562;
        v18 = 0x6D754E656E6F6870;
        switch(v6)
        {
          case 1:
            v18 = 0x6464416C69616D65;
            v17 = 0xEC00000073736572;
            break;
          case 2:
            v17 = 0xE400000000000000;
            v18 = 1701667182;
            break;
          case 3:
            v18 = 0x636974656E6F6870;
            v17 = 0xEC000000656D614ELL;
            break;
          case 4:
            v18 = 0x64416C6174736F70;
            v17 = 0xED00007373657264;
            break;
          case 5:
            v18 = 0x4C73736572646461;
            v17 = 0xEC00000073656E69;
            break;
          case 6:
            v18 = 0x6C61636F4C627573;
            v17 = 0xEB00000000797469;
            break;
          case 7:
            v17 = 0xE800000000000000;
            v18 = 0x7974696C61636F6CLL;
            break;
          case 8:
            v17 = 0xEA00000000006564;
            v18 = 0x6F436C6174736F70;
            break;
          case 9:
            v18 = 0xD000000000000015;
            v17 = 0x80000001ADB9BE40;
            break;
          case 10:
            v18 = 0xD000000000000012;
            v17 = 0x80000001ADB9BE60;
            break;
          case 11:
            v17 = 0xE700000000000000;
            v18 = 0x7972746E756F63;
            break;
          case 12:
            v18 = 0x437972746E756F63;
            v17 = 0xEB0000000065646FLL;
            break;
          default:
            break;
        }

        v19 = 0x6D754E656E6F6870;
        v20 = 0xEB00000000726562;
        switch(v10)
        {
          case 0:
            goto LABEL_87;
          case 1:
            v21 = 0x6464416C69616D65;
            v22 = 1936942450;
            goto LABEL_81;
          case 2:
            v20 = 0xE400000000000000;
            if (v18 != 1701667182)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 3:
            v21 = 0x636974656E6F6870;
            v22 = 1701667150;
            goto LABEL_81;
          case 4:
            v20 = 0xED00007373657264;
            if (v18 != 0x64416C6174736F70)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 5:
            v21 = 0x4C73736572646461;
            v22 = 1936027241;
LABEL_81:
            v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v18 != v21)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 6:
            v23 = 0x6C61636F4C627573;
            v24 = 7959657;
            goto LABEL_84;
          case 7:
            v20 = 0xE800000000000000;
            if (v18 != 0x7974696C61636F6CLL)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 8:
            v20 = 0xEA00000000006564;
            if (v18 != 0x6F436C6174736F70)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 9:
            v20 = 0x80000001ADB9BE40;
            if (v18 != 0xD000000000000015)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 10:
            v19 = 0xD000000000000012;
            v20 = 0x80000001ADB9BE60;
LABEL_87:
            if (v18 == v19)
            {
              goto LABEL_88;
            }

            goto LABEL_91;
          case 11:
            v20 = 0xE700000000000000;
            if (v18 != 0x7972746E756F63)
            {
              goto LABEL_91;
            }

            goto LABEL_88;
          case 12:
            v23 = 0x437972746E756F63;
            v24 = 6644847;
LABEL_84:
            v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v18 != v23)
            {
              goto LABEL_91;
            }

LABEL_88:
            if (v17 == v20)
            {
            }

            else
            {
LABEL_91:
              v25 = sub_1ADB06F50();

              if ((v25 & 1) == 0)
              {
LABEL_96:

                return 0;
              }
            }

            break;
          default:
            goto LABEL_96;
        }
      }

      if (v8 == v29 && v7 == v11)
      {
      }

      else
      {
        v4 = sub_1ADB06F50();

        if ((v4 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AD4496A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v5 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  v141 = v2;
  v142 = v3;
  v6 = 0;
  v37 = v4 - 1;
  v35 = a1;
  while (1)
  {
    v7 = a1 + v6;
    v8 = *(a1 + v6 + 32);
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    v53 = *(v7 + 72);
    v54 = *(v7 + 64);
    v51 = *(v7 + 88);
    v52 = *(v7 + 80);
    v65 = *(v7 + 96);
    v78 = *(v7 + 104);
    v133[0] = *(v7 + 105);
    *(v133 + 3) = *(v7 + 108);
    v63 = *(v7 + 112);
    v76 = *(v7 + 120);
    v12 = *(v7 + 121);
    *(v132 + 3) = *(v7 + 124);
    v132[0] = v12;
    v61 = *(v7 + 128);
    v74 = *(v7 + 136);
    *(v131 + 3) = *(v7 + 140);
    v131[0] = *(v7 + 137);
    v43 = *(v7 + 144);
    v72 = *(v7 + 152);
    *(v130 + 3) = *(v7 + 156);
    v130[0] = *(v7 + 153);
    v45 = *(v7 + 160);
    v69 = *(v7 + 168);
    v13 = *(v7 + 169);
    *(v129 + 3) = *(v7 + 172);
    v129[0] = v13;
    v47 = *(v7 + 176);
    v44 = *(v7 + 184);
    v14 = *(v7 + 185);
    *(v128 + 3) = *(v7 + 188);
    v128[0] = v14;
    v49 = *(v7 + 192);
    v46 = *(v7 + 200);
    v15 = *(v7 + 201);
    *(v127 + 3) = *(v7 + 204);
    v127[0] = v15;
    v50 = *(v7 + 208);
    v48 = *(v7 + 216);
    v41 = *(v7 + 217);
    v39 = *(v7 + 218);
    v40 = v6;
    v16 = *(v5 + v6 + 32);
    v17 = *(v5 + v6 + 40);
    v18 = *(v5 + v6 + 105);
    *(v140 + 3) = *(v5 + v6 + 108);
    v140[0] = v18;
    v19 = *(v5 + v6 + 121);
    *(v139 + 3) = *(v5 + v6 + 124);
    v139[0] = v19;
    v20 = *(v5 + v6 + 137);
    *(v138 + 3) = *(v5 + v6 + 140);
    v138[0] = v20;
    v21 = *(v5 + v6 + 153);
    *(v137 + 3) = *(v5 + v6 + 156);
    v137[0] = v21;
    v22 = *(v5 + v6 + 169);
    *(v136 + 3) = *(v5 + v6 + 172);
    v136[0] = v22;
    v23 = *(v5 + v6 + 185);
    *(v135 + 3) = *(v5 + v6 + 188);
    v135[0] = v23;
    v24 = *(v5 + v6 + 201);
    *(v134 + 3) = *(v5 + v6 + 204);
    v134[0] = v24;
    v26 = *(v5 + v6 + 48);
    v25 = *(v5 + v6 + 56);
    v27 = *(v5 + v6 + 64);
    v28 = *(v5 + v6 + 72);
    v29 = *(v5 + v6 + 80);
    v30 = *(v5 + v6 + 88);
    v64 = *(v5 + v6 + 96);
    v77 = *(v5 + v6 + 104);
    v62 = *(v5 + v6 + 112);
    v75 = *(v5 + v6 + 120);
    v73 = *(v5 + v6 + 136);
    v59 = *(v5 + v6 + 144);
    v60 = *(v5 + v6 + 128);
    v71 = *(v5 + v6 + 152);
    v70 = *(v5 + v6 + 168);
    v57 = *(v5 + v6 + 176);
    v58 = *(v5 + v6 + 160);
    v67 = *(v5 + v6 + 200);
    v68 = *(v5 + v6 + 184);
    v55 = *(v5 + v6 + 208);
    v56 = *(v5 + v6 + 192);
    v66 = *(v5 + v6 + 216);
    v42 = *(v5 + v6 + 217);
    v38 = *(v5 + v6 + 218);
    if ((v8 != v16 || v9 != v17) && (sub_1ADB06F50() & 1) == 0 || (v10 != v26 || v11 != v25) && (sub_1ADB06F50() & 1) == 0 || (v54 != v27 || v53 != v28) && (sub_1ADB06F50() & 1) == 0 || (v52 != v29 || v51 != v30) && (sub_1ADB06F50() & 1) == 0)
    {
      return 0;
    }

    *v105 = v133[0];
    *&v105[3] = *(v133 + 3);
    *v108 = v132[0];
    *&v108[3] = *(v132 + 3);
    *v111 = v131[0];
    *&v111[3] = *(v131 + 3);
    *&v114[3] = *(v130 + 3);
    *v114 = v130[0];
    *&v117[3] = *(v129 + 3);
    *v117 = v129[0];
    *&v120[3] = *(v128 + 3);
    *v120 = v128[0];
    *&v123[3] = *(v127 + 3);
    *v123 = v127[0];
    v103 = v65;
    v104 = v78;
    v106 = v63;
    v107 = v76;
    v109 = v61;
    v110 = v74;
    v112 = v43;
    v113 = v72;
    v115 = v45;
    v116 = v69;
    v118 = v47;
    v119 = v44;
    v121 = v49;
    v122 = v46;
    v124 = v50;
    v125 = v48;
    v126 = v41;
    if (sub_1AD40DCD8(&v103) == 1)
    {
      *v81 = v140[0];
      *&v81[3] = *(v140 + 3);
      *v84 = v139[0];
      *&v84[3] = *(v139 + 3);
      *v87 = v138[0];
      *&v87[3] = *(v138 + 3);
      *&v90[3] = *(v137 + 3);
      *v90 = v137[0];
      *&v93[3] = *(v136 + 3);
      *v93 = v136[0];
      *&v96[3] = *(v135 + 3);
      *v96 = v135[0];
      *&v99[3] = *(v134 + 3);
      *v99 = v134[0];
      v79 = v64;
      v80 = v77;
      v82 = v62;
      v83 = v75;
      v85 = v60;
      v86 = v73;
      v88 = v59;
      v89 = v71;
      v91 = v58;
      v92 = v70;
      v94 = v57;
      v95 = v68;
      v97 = v56;
      v98 = v67;
      v100 = v55;
      v101 = v66;
      v102 = v42;
      v31 = sub_1AD40DCD8(&v79) == 1;
      a1 = v35;
      v5 = a2;
      v32 = v40;
      v33 = v39;
      if (!v31)
      {
        return 0;
      }
    }

    else
    {
      *v81 = v140[0];
      *&v81[3] = *(v140 + 3);
      *v84 = v139[0];
      *&v84[3] = *(v139 + 3);
      *v87 = v138[0];
      *&v87[3] = *(v138 + 3);
      *&v90[3] = *(v137 + 3);
      *v90 = v137[0];
      *&v93[3] = *(v136 + 3);
      *v93 = v136[0];
      *&v96[3] = *(v135 + 3);
      *v96 = v135[0];
      *&v99[3] = *(v134 + 3);
      *v99 = v134[0];
      v79 = v64;
      v80 = v77;
      v82 = v62;
      v83 = v75;
      v85 = v60;
      v86 = v73;
      v88 = v59;
      v89 = v71;
      v91 = v58;
      v92 = v70;
      v94 = v57;
      v95 = v68;
      v97 = v56;
      v98 = v67;
      v100 = v55;
      v101 = v66;
      v102 = v42;
      if (sub_1AD40DCD8(&v79) == 1)
      {
        return 0;
      }

      if (v78)
      {
        a1 = v35;
        v5 = a2;
        v32 = v40;
        v33 = v39;
        if ((v77 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        a1 = v35;
        v5 = a2;
        v32 = v40;
        v33 = v39;
        if ((v77 & 1) != 0 || v65 != v64)
        {
          return 0;
        }
      }

      if (v76)
      {
        if ((v75 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v75 & 1) != 0 || v63 != v62)
      {
        return 0;
      }

      if (v74)
      {
        if ((v73 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v73 & 1) != 0 || v61 != v60)
      {
        return 0;
      }

      if (v72)
      {
        if ((v71 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v71 & 1) != 0 || v43 != v59)
      {
        return 0;
      }

      if (v69)
      {
        if ((v70 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v70 & 1) != 0 || v45 != v58)
      {
        return 0;
      }

      if (v44)
      {
        if ((v68 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v68 & 1) != 0 || v47 != v57)
      {
        return 0;
      }

      if (v46)
      {
        if ((v67 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v67 & 1) != 0 || v49 != v56)
      {
        return 0;
      }

      if (v48)
      {
        if ((v66 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v66 & 1) != 0 || v50 != v55)
      {
        return 0;
      }
    }

    if (v33 == 2)
    {
      if (v38 != 2)
      {
        return 0;
      }
    }

    else if (v38 == 2 || ((v38 ^ v33) & 1) != 0)
    {
      return 0;
    }

    if (!v37)
    {
      break;
    }

    --v37;
    v6 = v32 + 192;
  }

  return 1;
}

uint64_t sub_1AD449EB4(uint64_t a1, uint64_t a2)
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

  v25 = v2;
  v26 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 32);
    v9 = *(v5 + 64);
    *&v21[48] = *(v5 + 48);
    *v22 = v9;
    *&v22[16] = *(v5 + 80);
    v10 = *(v5 + 16);
    *v21 = *v5;
    *&v21[16] = v10;
    *&v21[32] = v8;
    v11 = *(v6 + 48);
    *&v23[32] = *(v6 + 32);
    *&v23[48] = v11;
    *v24 = *(v6 + 64);
    *&v24[16] = *(v6 + 80);
    v12 = *(v6 + 16);
    *v23 = *v6;
    *&v23[16] = v12;
    if (v21[0] == 5)
    {
      if (v23[0] != 5)
      {
        return 0;
      }

      sub_1AD40E8A8(v21, v20);
      sub_1AD40E8A8(v23, v20);
      goto LABEL_36;
    }

    if (v23[0] == 5)
    {
      return 0;
    }

    if (v21[0] <= 1u)
    {
      if (v21[0])
      {
        v13 = 0xE500000000000000;
        v14 = 0x656E6F6870;
        if (v23[0] > 1u)
        {
LABEL_20:
          if (v23[0] == 2)
          {
            v15 = 0xE300000000000000;
            if (v14 == 6578544)
            {
              goto LABEL_33;
            }
          }

          else if (v23[0] == 3)
          {
            v15 = 0xE500000000000000;
            if (v14 == 0x6863746177)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v15 = 0xE300000000000000;
            if (v14 == 6513005)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_35;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v14 = 0x636972656E6567;
        if (v23[0] > 1u)
        {
          goto LABEL_20;
        }
      }
    }

    else if (v21[0] == 2)
    {
      v13 = 0xE300000000000000;
      v14 = 6578544;
      if (v23[0] > 1u)
      {
        goto LABEL_20;
      }
    }

    else if (v21[0] == 3)
    {
      v13 = 0xE500000000000000;
      v14 = 0x6863746177;
      if (v23[0] > 1u)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      v14 = 6513005;
      if (v23[0] > 1u)
      {
        goto LABEL_20;
      }
    }

    if (v23[0])
    {
      v15 = 0xE500000000000000;
      if (v14 == 0x656E6F6870)
      {
LABEL_33:
        if (v13 == v15)
        {
          sub_1AD40E8A8(v21, v20);
          sub_1AD40E8A8(v23, v20);

          goto LABEL_36;
        }
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v14 == 0x636972656E6567)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    v16 = sub_1ADB06F50();
    sub_1AD40E8A8(v21, v20);
    sub_1AD40E8A8(v23, v20);

    if ((v16 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_36:
    if (*&v21[16])
    {
      if (!*&v23[16] || *&v21[8] != *&v23[8] && (sub_1ADB06F50() & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*&v23[16])
    {
      goto LABEL_72;
    }

    if (*&v21[32])
    {
      if (!*&v23[32] || *&v21[24] != *&v23[24] && (sub_1ADB06F50() & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*&v23[32])
    {
      goto LABEL_72;
    }

    if (*&v21[48])
    {
      if (!*&v23[48] || *&v21[40] != *&v23[40] && (sub_1ADB06F50() & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if (*&v23[48])
    {
      goto LABEL_72;
    }

    if (*v22)
    {
      if (!*v24 || (*&v21[56] != *&v23[56] || *v22 != *v24) && (sub_1ADB06F50() & 1) == 0)
      {
LABEL_72:
        sub_1AD40E8E0(v23);
        sub_1AD40E8E0(v21);
        return 0;
      }
    }

    else if (*v24)
    {
      goto LABEL_72;
    }

    v17 = *&v24[16];
    if (*&v22[16])
    {
      if (!*&v24[16])
      {
        goto LABEL_72;
      }

      if (*&v22[8] == *&v24[8])
      {
        sub_1AD40E8E0(v23);
        sub_1AD40E8E0(v21);
      }

      else
      {
        v18 = sub_1ADB06F50();
        sub_1AD40E8E0(v23);
        sub_1AD40E8E0(v21);
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      sub_1AD40E8E0(v23);
      sub_1AD40E8E0(v21);
      if (v17)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_1AD44A2E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v8 = 1701667182;
        }

        else
        {
          v8 = 0x6C69616D65;
        }

        if (*v3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE500000000000000;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0x636974656E6F6870;
        v7 = 0xEC000000656D614ELL;
      }

      else if (v6 == 3)
      {
        v7 = 0xE500000000000000;
        v8 = 0x656E6F6870;
      }

      else
      {
        v8 = 0x64416C6174736F70;
        v7 = 0xED00007373657264;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 1701667182;
        }

        else
        {
          v11 = 0x6C69616D65;
        }

        if (*v4)
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }

        if (v8 != v11)
        {
LABEL_5:
          v5 = sub_1ADB06F50();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xEC000000656D614ELL;
        if (v8 != 0x636974656E6F6870)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE500000000000000;
        if (v8 != 0x656E6F6870)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xED00007373657264;
        if (v8 != 0x64416C6174736F70)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AD44A4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xED0000726574614CLL;
      v7 = 0x796150656C707061;
      switch(*v3)
      {
        case 1:
          v7 = 0xD000000000000019;
          v6 = 0x80000001ADB9B9B0;
          break;
        case 2:
          v7 = 0xD00000000000001FLL;
          v6 = 0x80000001ADB9B9D0;
          break;
        case 3:
          v7 = 0xD000000000000015;
          v6 = 0x80000001ADB9B9F0;
          break;
        case 4:
          v7 = 0xD00000000000001DLL;
          v6 = 0x80000001ADB9BA10;
          break;
        case 5:
          v7 = 0xD000000000000018;
          v6 = 0x80000001ADB9BA30;
          break;
        case 6:
          v7 = 0xD000000000000020;
          v6 = 0x80000001ADB9BA50;
          break;
        case 7:
          v7 = 0xD000000000000017;
          v6 = 0x80000001ADB9BA80;
          break;
        case 8:
          v7 = 0xD000000000000028;
          v6 = 0x80000001ADB9BAA0;
          break;
        case 9:
          v7 = 0xD00000000000001CLL;
          v6 = 0x80000001ADB9BAD0;
          break;
        case 0xA:
          v7 = 0xD000000000000016;
          v6 = 0x80000001ADB9BAF0;
          break;
        case 0xB:
          v7 = 0xD000000000000015;
          v6 = 0x80000001ADB9BB10;
          break;
        case 0xC:
          v7 = 0xD000000000000016;
          v6 = 0x80000001ADB9BB30;
          break;
        case 0xD:
          v7 = 0xD000000000000016;
          v6 = 0x80000001ADB9BB50;
          break;
        case 0xE:
          v7 = 0xD000000000000021;
          v6 = 0x80000001ADB9BB70;
          break;
        case 0xF:
          v7 = 0xD000000000000025;
          v6 = 0x80000001ADB9BBA0;
          break;
        case 0x10:
          v7 = 0xD000000000000021;
          v6 = 0x80000001ADB9BBD0;
          break;
        default:
          break;
      }

      v8 = 0x796150656C707061;
      v9 = 0xED0000726574614CLL;
      switch(*v4)
      {
        case 1:
          v9 = 0x80000001ADB9B9B0;
          if (v7 == 0xD000000000000019)
          {
            goto LABEL_55;
          }

          goto LABEL_5;
        case 2:
          v9 = 0x80000001ADB9B9D0;
          if (v7 != 0xD00000000000001FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 3:
          v9 = 0x80000001ADB9B9F0;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 4:
          v9 = 0x80000001ADB9BA10;
          if (v7 != 0xD00000000000001DLL)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 5:
          v9 = 0x80000001ADB9BA30;
          if (v7 != 0xD000000000000018)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 6:
          v9 = 0x80000001ADB9BA50;
          if (v7 != 0xD000000000000020)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 7:
          v9 = 0x80000001ADB9BA80;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 8:
          v9 = 0x80000001ADB9BAA0;
          if (v7 != 0xD000000000000028)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 9:
          v9 = 0x80000001ADB9BAD0;
          if (v7 != 0xD00000000000001CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0xA:
          v8 = 0xD000000000000016;
          v9 = 0x80000001ADB9BAF0;
          goto LABEL_54;
        case 0xB:
          v9 = 0x80000001ADB9BB10;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0xC:
          v9 = 0x80000001ADB9BB30;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0xD:
          v9 = 0x80000001ADB9BB50;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0xE:
          v9 = 0x80000001ADB9BB70;
          if (v7 != 0xD000000000000021)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0xF:
          v9 = 0x80000001ADB9BBA0;
          if (v7 != 0xD000000000000025)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        case 0x10:
          v9 = 0x80000001ADB9BBD0;
          if (v7 != 0xD000000000000021)
          {
            goto LABEL_5;
          }

          goto LABEL_55;
        default:
LABEL_54:
          if (v7 != v8)
          {
            goto LABEL_5;
          }

LABEL_55:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_1ADB06F50();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_1AD44A974(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 32); ; ++i)
    {
      v6 = *v3;
      v7 = *i;
      v8 = 0xD000000000000017;
      if (v6 == 3)
      {
        v8 = 0x7374726F70707573;
      }

      v9 = 0xED00007469626544;
      if (v6 != 3)
      {
        v9 = 0x80000001ADB9BC30;
      }

      if (v6 == 2)
      {
        v8 = 0x7374726F70707573;
        v9 = 0xEE00746964657243;
      }

      v10 = *v3 ? 0xEB00000000564D45 : 0xEB00000000534433;
      v11 = *v3 <= 1u ? 0x7374726F70707573 : v8;
      v12 = *v3 <= 1u ? v10 : v9;
      if (*i <= 1u)
      {
        break;
      }

      if (v7 == 2)
      {
        v13 = 0xEE00746964657243;
LABEL_31:
        if (v11 != 0x7374726F70707573)
        {
          goto LABEL_5;
        }

        goto LABEL_32;
      }

      if (v7 == 3)
      {
        v13 = 0xED00007469626544;
        if (v11 != 0x7374726F70707573)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = 0x80000001ADB9BC30;
        if (v11 != 0xD000000000000017)
        {
LABEL_5:
          v5 = sub_1ADB06F50();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

LABEL_32:
      if (v12 != v13)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0xEB00000000534433;
    if (*i)
    {
      v13 = 0xEB00000000564D45;
      if (v11 != 0x7374726F70707573)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  return 1;
}

uint64_t sub_1AD44AB60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1ADB06F50() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1ADB06F50() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AD44AC30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v6 = ProvisioningRequirement.RequirementType.rawValue.getter();
      v8 = v7;
      if (v6 == ProvisioningRequirement.RequirementType.rawValue.getter() && v8 == v9)
      {
      }

      else
      {
        v5 = sub_1ADB06F50();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AD44AE0C()
{
  v1 = (v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

void sub_1AD44AE68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1AD44AF90(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD44AFF0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD4527EC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD44B090(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4527B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

id ProvisioningBackgroundCoordinator.__allocating_init(pkContext:credential:previouslyAcceptedTerms:)(void *a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = a1;
  v9 = _s11PassKitCore19ProvisioningContextC02pkE0ACSo014PKProvisioningE0C_tcfC_0(v8);
  v10 = objc_allocWithZone(type metadata accessor for ProvisioningBackgroundCoordinator());
  v11 = sub_1AD451764(v9, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id ProvisioningBackgroundCoordinator.init(pkContext:credential:previouslyAcceptedTerms:)(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = _s11PassKitCore19ProvisioningContextC02pkE0ACSo014PKProvisioningE0C_tcfC_0(v5);
  v7 = objc_allocWithZone(type metadata accessor for ProvisioningBackgroundCoordinator());
  v8 = sub_1AD451764(v6, a2, a3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id ProvisioningBackgroundCoordinator.__allocating_init(context:credential:previouslyAcceptedTerms:)(uint64_t a1, void *a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1AD451764(a1, a2, a3);

  return v8;
}

id ProvisioningBackgroundCoordinator.init(context:credential:previouslyAcceptedTerms:)(uint64_t a1, void *a2, char a3)
{
  v4 = sub_1AD451764(a1, a2, a3);

  return v4;
}

id ProvisioningBackgroundCoordinator.__deallocating_deinit()
{
  sub_1AD44D228();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningBackgroundCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AD44B5B0(uint64_t a1, uint64_t a2)
{
  v7 = v2;
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration;
  v11 = *(v7 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  swift_beginAccess();
  v12 = *(v11 + 16);
  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = *(v12 + 48);
  v14 = *(v12 + 56);
  v56 = *(v12 + 32);
  v57 = v13;
  LOBYTE(v58) = v14;
  sub_1ADB06CD0();
  v4 = *(&v54 + 1);
  v5 = v54;
  v15 = *(v7 + v10);
  swift_beginAccess();
  v16 = *(v15 + 16);
  if (!*(v16 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(v16 + 32);
  v6 = &selRef_identifierFromRecord_;
  if (*(v16 + 56) > 3u)
  {
    v18 = v17;
    goto LABEL_7;
  }

  if (*(v16 + 56) - 1 < 3)
  {
    v18 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
LABEL_7:
    v19 = v18;
    goto LABEL_8;
  }

  v49 = a2;
  v50 = a1;
  v51 = *(v16 + 40);
  v52 = *(v16 + 48);
  result = [v17 state];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v19 = result;
  sub_1AD3CC2E0(v17, v51, v52, 0);
  a1 = v50;
  a2 = v49;
  v6 = &selRef_identifierFromRecord_;
LABEL_8:
  v20 = [v19 sid];

  v53 = sub_1ADB063B0();
  v3 = v21;

  if (qword_1EB5981C0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v22 = sub_1ADB05FA0();
  __swift_project_value_buffer(v22, qword_1EB59AB68);

  v23 = sub_1ADB05F80();
  v24 = sub_1ADB06860();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = a2;
    v26 = a1;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v56 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_1AD3CA88C(v53, v3, &v56);
    *(v27 + 12) = 2080;
    v29 = sub_1AD3CA88C(v5, v4, &v56);

    *(v27 + 14) = v29;
    _os_log_impl(&dword_1AD337000, v23, v24, "[%s] Starting provisioning credential: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v28, -1, -1);
    v30 = v27;
    a1 = v26;
    a2 = v25;
    v6 = &selRef_identifierFromRecord_;
    MEMORY[0x1B26F9F20](v30, -1, -1);
  }

  else
  {
  }

  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  v32 = (v7 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  v33 = *(v7 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  *v32 = sub_1AD451990;
  v32[1] = v31;

  sub_1AD3C5FB8(v33);
  v34 = [objc_allocWithZone(PKPaymentSetupFieldsModel) v6[99]];
  v35 = *(v7 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
  *(v7 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel) = v34;

  sub_1AD44C764(&v54);
  if (v55)
  {

    sub_1AD3CA874(&v54, &v56);
    sub_1AD4519CC(&v56, &v54);
    v36 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
    swift_beginAccess();
    sub_1AD451A30(&v54, v7 + v36);
    swift_endAccess();
    v37 = v58;
    v38 = v59;
    __swift_project_boxed_opaque_existential_1(&v56, v58);
    (*(v38 + 8))(v37, v38);
    return __swift_destroy_boxed_opaque_existential_1(&v56);
  }

  else
  {
    sub_1AD3D0E3C(&v54, &qword_1EB59A538);

    v40 = sub_1ADB05F80();
    v41 = sub_1ADB06860();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v56 = v43;
      *v42 = 136315138;
      v44 = sub_1AD3CA88C(v53, v3, &v56);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_1AD337000, v40, v41, "[%s] Failed to create composer", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B26F9F20](v43, -1, -1);
      MEMORY[0x1B26F9F20](v42, -1, -1);
    }

    else
    {
    }

    v45 = *v32;
    if (*v32)
    {
      v46 = objc_opt_self();

      v47 = [v46 errorWithSeverity_];
      v45();
      sub_1AD3C5FB8(v45);

      v48 = *v32;
    }

    else
    {
      v48 = 0;
    }

    *v32 = 0;
    v32[1] = 0;
    return sub_1AD3C5FB8(v48);
  }
}

void sub_1AD44BBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1AD3D3200(0, &qword_1EB5988B8);
    v4 = sub_1ADB06600();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

id sub_1AD44BC3C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v8 = v3;
  v54 = 0;
  v55 = 0xE000000000000000;
  v12 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration;
  v13 = *(v3 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  swift_beginAccess();
  v14 = *(v13 + 16);
  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(v14 + 48);
  v16 = *(v14 + 56);
  v51 = *(v14 + 32);
  v52 = v15;
  LOBYTE(v53) = v16;
  sub_1ADB06CD0();
  v7 = v54;
  v6 = v55;
  v17 = *(v8 + v12);
  swift_beginAccess();
  v18 = *(v17 + 16);
  if (!*(v18 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_9:
    v24 = sub_1ADB05FA0();
    __swift_project_value_buffer(v24, qword_1EB59AB68);

    v25 = sub_1ADB05F80();
    v26 = sub_1ADB06860();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v48 = a2;
      v28 = a3;
      v29 = a1;
      v30 = swift_slowAlloc();
      *&v51 = v30;
      *v27 = 136315394;
      *(v27 + 4) = sub_1AD3CA88C(v49, v4, &v51);
      *(v27 + 12) = 2080;
      v31 = sub_1AD3CA88C(v7, v6, &v51);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_1AD337000, v25, v26, "[%s] Starting preflight provisioning credential: %s", v27, 0x16u);
      swift_arrayDestroy();
      v32 = v30;
      a1 = v29;
      a3 = v28;
      a2 = v48;
      MEMORY[0x1B26F9F20](v32, -1, -1);
      v33 = v27;
      v5 = &selRef_identifierFromRecord_;
      MEMORY[0x1B26F9F20](v33, -1, -1);
    }

    else
    {
    }

    v34 = (v8 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    v35 = *(v8 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    *v34 = a2;
    v34[1] = a3;

    sub_1AD3C5FB8(v35);
    v36 = [objc_allocWithZone(PKPaymentSetupFieldsModel) v5[99]];
    v37 = *(v8 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
    *(v8 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel) = v36;

    sub_1AD44C764(&v51);
    v38 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
    swift_beginAccess();
    sub_1AD451A30(&v51, v8 + v38);
    swift_endAccess();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1AD451AA0(v8 + v38, &v51);
    if (v53)
    {
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A558);
      if (swift_dynamicCast())
      {

        sub_1AD4B1D44(a1, v50, v39);
      }
    }

    else
    {
      swift_retain_n();
      sub_1AD3D0E3C(&v51, &qword_1EB59A538);
    }

    v40 = sub_1ADB05F80();
    v41 = sub_1ADB06860();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v51 = v43;
      *v42 = 136315138;
      v44 = sub_1AD3CA88C(v49, v4, &v51);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_1AD337000, v40, v41, "[%s] WARNING: Preflight requested for provisioning step, but composer is not provisioning step", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1B26F9F20](v43, -1, -1);
      MEMORY[0x1B26F9F20](v42, -1, -1);
    }

    else
    {
    }

    sub_1AD44C1D8(0);
  }

  v19 = *(v18 + 32);
  v5 = &selRef_identifierFromRecord_;
  if (*(v18 + 56) > 3u)
  {
    v20 = v19;
    goto LABEL_7;
  }

  if (*(v18 + 56) - 1 < 3)
  {
    v20 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
LABEL_7:
    v21 = v20;
    goto LABEL_8;
  }

  v46 = *(v18 + 40);
  v47 = *(v18 + 48);
  result = [v19 state];
  if (result)
  {
    v21 = result;
    sub_1AD3CC2E0(v19, v46, v47, 0);
    v5 = &selRef_identifierFromRecord_;
LABEL_8:
    v22 = [v21 sid];

    v49 = sub_1ADB063B0();
    v4 = v23;

    if (qword_1EB5981C0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_1AD44C1D8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (Strong + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    v5 = *(Strong + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    if (!v5)
    {
LABEL_9:

      return;
    }

    *v4 = 0;
    v4[1] = 0;
    if (a1)
    {
      v6 = a1;
      v7 = sub_1ADB05CB0();
    }

    else
    {
      v11 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
      swift_beginAccess();
      sub_1AD451AA0(v3 + v11, v18);
      if (v19)
      {
        sub_1AD4519CC(v18, v15);
        sub_1AD3D0E3C(v18, &qword_1EB59A538);
        v12 = v16;
        v13 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v8 = (*(v13 + 16))(1, 0, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v15);
        v10 = 0;
        goto LABEL_8;
      }

      sub_1AD3D0E3C(v18, &qword_1EB59A538);
      v7 = 0;
    }

    v8 = [objc_opt_self() errorWithUnderlyingError:v7 defaultSeverity:5];

    v9 = sub_1ADB06370();
    [v8 addInternalDebugDescription_];

    v10 = 1;
LABEL_8:
    v14 = v8;
    v5(v8, v10);

    sub_1AD3C5FB8(v5);
    v3 = v14;
    goto LABEL_9;
  }
}

uint64_t sub_1AD44C3D0()
{
  sub_1AD44D228();
  v1 = [objc_opt_self() errorWithCommonType:1 severity:5];
  v2 = sub_1ADB06370();
  [v1 addInternalDebugDescription_];

  v3 = (v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  v4 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  if (v4)
  {
    sub_1AD3C5F14(v4);
    v5 = v1;
    v4(v1, 1);

    sub_1AD3C5FB8(v4);
  }

  v6 = *v3;
  *v3 = 0;
  v3[1] = 0;

  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD44C514()
{
  v1 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
  swift_beginAccess();
  sub_1AD451AA0(v0 + v1, &v18);
  if (*(&v19 + 1))
  {
    sub_1AD4519CC(&v18, v15);
    sub_1AD3D0E3C(&v18, &qword_1EB59A538);
    v2 = v16;
    v3 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v4 = (*(v3 + 16))(1, 0, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_1AD3D0E3C(&v18, &qword_1EB59A538);
    v4 = 0;
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_1AD451A30(&v18, v0 + v1);
  swift_endAccess();
  v5 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (*(v7 + 16))
  {
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = *(v7 + 48);
    v11 = *(v7 + 56);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      sub_1AD3DF24C(*(v7 + 32), *(v7 + 40), *(v7 + 48), 0);
      v12 = v8;
    }

    sub_1AD3DF24C(v8, v9, v10, v11);
    v13 = [v12 statefulTransferCredential];

    sub_1AD3CC2E0(v8, v9, v10, v11);
    v14 = [v13 handle];

    [v14 invalidate];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AD44C764@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
  if (v4)
  {
    v49 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
  }

  else
  {
    v49 = [objc_allocWithZone(PKPaymentSetupFieldsModel) init];
  }

  v5 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_previouslyAcceptedTerms);
  v6 = v4;
  if (v5 != 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v7 = sub_1AD425458(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    *(v7 + 2) = v10;
    v7[v9 + 32] = 15;
LABEL_8:
    v9 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration;
    v10 = *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
    swift_beginAccess();
    v8 = *(v10 + 16);
    if (!*(v8 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (!*(v8 + 56))
    {
      v17 = [*(v8 + 32) statefulTransferCredential];
      if (v17)
      {
        break;
      }
    }

    v48 = v7;
    v7 = *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_context);
    v10 = *(v2 + v9);
    swift_beginAccess();
    v8 = *(v10 + 16);
    if (*(v8 + 16))
    {
      v47 = a1;
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v13 = *(v8 + 48);
      v14 = *(v8 + 56);
      v15 = swift_allocObject();
      *(v15 + 24) = &protocol witness table for ProvisioningBackgroundCoordinator;
      swift_unknownObjectWeakInit();
      if (v14)
      {
        if (v14 == 1)
        {
          v16 = v11;

          goto LABEL_22;
        }

        v26 = 0;
      }

      else
      {
        v26 = v11;
      }

      sub_1AD3DF24C(v11, v12, v13, v14);
      v27 = [v26 issuerProvisioningExtensionCredential];

      if (!v27)
      {
        v28 = 0;
        goto LABEL_24;
      }

LABEL_22:
      v28 = 1;
LABEL_24:
      sub_1AD3D3200(0, &qword_1EB59A670);
      sub_1AD3DF24C(v11, v12, v13, v14);
      v29 = sub_1ADB068B0();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A558);
      swift_allocObject();

      v31 = sub_1AD46AE90(v30, v11, v12, v13, v14, v29);

      v32 = swift_unownedRetain();
      sub_1AD45C430(v32, sub_1AD46C794, 0, v11, v12, v13, v14, v15, v49, v28, v48);
      swift_unownedRelease();
      v33 = [v31[7] provisioningStepState];
      if (v33)
      {
        v34 = v33;
        v35 = sub_1ADB05D70();
        v37 = v36;

        [v31[7] setProvisioningStepState_];
        sub_1AD4699B4();
        sub_1AD3C757C(v35, v37);
      }

      sub_1AD3CC2E0(v11, v12, v13, v14);
      v51 = v25;
      v52 = &off_1F226D318;
      v50[0] = v31;
      a1 = v47;
      goto LABEL_27;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v7 = sub_1AD425458((v8 > 1), v10, 1, v7);
  }

  v18 = v17;

  v19 = [v18 invitation];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v21 = *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_context);
      v22 = v18;
      sub_1AD451B10(v21, v18, 0, 0, 0);
      v24 = v23;

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5C0);
      v51 = v25;
      v52 = &off_1F226D318;

      v50[0] = v24;
LABEL_27:
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_mutable_project_boxed_opaque_existential_1(v50, v25);
      (off_1F226D368)(sub_1AD45298C, v38);
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = v51;
      v41 = v52;
      __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
      (v41[7])(sub_1AD452994, v39, v40, v41);
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = v51;
      v44 = v52;
      __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
      v45 = v44[13];

      v45(sub_1AD45299C, v42, v43, v44);

      sub_1AD4519CC(v50, a1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      return result;
    }

    v18 = v49;
  }

  else
  {
    v20 = v49;
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1AD44CD8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1AD44CF8C(a3);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter);
    v8 = v6;
    v9 = v7;

    if (v7)
    {
      v10 = sub_1ADB06370();
      v11 = sub_1ADB05CB0();
      [v9 reportProvisioningStep:v10 finishedWithStatus:0 error:v11];
    }
  }
}

void sub_1AD44CE84()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1AD44D02C();
  }
}

void sub_1AD44CED8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      v8 = sub_1ADB06370();
      [v7 reportProvisioningStep:v8 finishedWithStatus:a3 & 1];
    }
  }
}

uint64_t sub_1AD44CF8C(uint64_t result)
{
  v2 = result;
  v3 = (v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  v4 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  if (v4 || (v3 = (v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion), (v4 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion)) != 0))
  {

    v4(v2, 1);
    sub_1AD3C5FB8(v4);
    v5 = *v3;
    *v3 = 0;
    v3[1] = 0;

    return sub_1AD3C5FB8(v5);
  }

  return result;
}

void sub_1AD44D02C()
{
  sub_1AD44D228();
  v1 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    if (!sub_1ADB06D00())
    {
      goto LABEL_11;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x1B26F6CC0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = [v3 secureElementPass];

  if (v4)
  {
    v5 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter;
    v6 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter);
    if (v6)
    {
      [v6 setProvisionedPass_];
      v7 = *(v0 + v5);
      if (v7)
      {
        v8 = v7;
        [v8 reportProvisioningCompleteWithSuccess_];
      }
    }
  }

LABEL_11:
  v9 = (v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  v10 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion);
  if (v10)
  {
    sub_1AD3C5F14(*(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion));

    v10(v11, 0);
    sub_1AD3C5FB8(v10);
  }

  else
  {
    v9 = (v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    v12 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion);
    if (!v12)
    {
      return;
    }

    v13 = objc_allocWithZone(PKSecureElementProvisioningState);

    v14 = [v13 init];
    v12(v14, 0);
    sub_1AD3C5FB8(v12);
  }

  v15 = *v9;
  *v9 = 0;
  v9[1] = 0;
  sub_1AD3C5FB8(v15);
}

uint64_t sub_1AD44D228()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_context);
  swift_beginAccess();
  [*(v2 + 176) stop];
  v3 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter);
  *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter) = 0;

  v4 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion;
  if (*(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion))
  {

    sub_1AD503CB0();

    *(v1 + v4) = 0;
  }

  v5 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
  swift_beginAccess();
  sub_1AD451AA0(v1 + v5, &v21);
  if (!*(&v22 + 1))
  {
    return sub_1AD3D0E3C(&v21, &qword_1EB59A538);
  }

  sub_1AD3CA874(&v21, v24);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  swift_beginAccess();
  sub_1AD451A30(&v21, v1 + v5);
  swift_endAccess();
  v6 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    v8 = sub_1ADB06D00();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(v1 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  result = swift_beginAccess();
  v11 = *(v9 + 16);
  if (*(v11 + 16))
  {
    v12 = v8 != 0;
    v13 = *(v11 + 32);
    v14 = *(v11 + 40);
    v15 = *(v11 + 48);
    v16 = v25;
    v17 = v26;
    v18 = *(v11 + 56);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = swift_allocObject();
    *(v19 + 16) = v13;
    *(v19 + 24) = v14;
    *(v19 + 32) = v15;
    *(v19 + 40) = v18;
    *(v19 + 41) = v12;
    v20 = *(v17 + 32);
    sub_1AD3DF24C(v13, v14, v15, v18);
    sub_1AD3DF24C(v13, v14, v15, v18);
    v20(v12, sub_1AD451ED4, v19, v16, v17);

    sub_1AD3CC2E0(v13, v14, v15, v18);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AD44D4C0(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v7 = [v6 statefulTransferCredential];

  if (v7)
  {
    v8 = [v7 handle];

    if (v8)
    {
      if (a5)
      {
        [v8 closeWithCompletion_];
      }

      [v8 invalidate];
    }
  }
}

uint64_t sub_1AD44D5EC(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
  swift_beginAccess();
  sub_1AD451AA0(v2 + v5, v15);
  v6 = v16;
  sub_1AD3D0E3C(v15, &qword_1EB59A538);
  if (!v6)
  {
    v7 = [objc_allocWithZone(PKPaymentSetupFieldsModel) init];
    v8 = *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
    *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel) = v7;

    sub_1AD44C764(v15);
    swift_beginAccess();
    sub_1AD451A30(v15, v2 + v5);
    swift_endAccess();
  }

  sub_1AD451AA0(v2 + v5, v15);
  if (!v16)
  {
    return sub_1AD3D0E3C(v15, &qword_1EB59A538);
  }

  sub_1AD4519CC(v15, v12);
  sub_1AD3D0E3C(v15, &qword_1EB59A538);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  (*(v10 + 40))(a1, a2, v9, v10);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1AD44D794(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1AD44D828()
{
  v3 = *(v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
    if (*(v4 + 56) > 3u)
    {
      v6 = v5;
    }

    else
    {
      if (*(v4 + 56) - 1 >= 3)
      {
        v21 = *(v4 + 40);
        v22 = *(v4 + 48);
        v23 = [v5 state];
        if (!v23)
        {
          __break(1u);
          return;
        }

        v7 = v23;
        sub_1AD3CC2E0(v5, v21, v22, 0);
LABEL_7:
        v8 = [v7 sid];

        v2 = sub_1ADB063B0();
        v1 = v9;

        v10 = (v0 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached);
        swift_beginAccess();
        v3 = *v10;
        if (!*v10)
        {

          return;
        }

        v11 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
        swift_beginAccess();
        sub_1AD451AA0(v0 + v11, v27);
        if (v27[3])
        {

          sub_1AD4519CC(v27, v24);
          sub_1AD3D0E3C(v27, &qword_1EB59A538);
          v12 = v25;
          v13 = v26;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v14 = (*(v13 + 16))(0, 1, v12, v13);
          __swift_destroy_boxed_opaque_existential_1(v24);
          (v3)(v14);

          sub_1AD3C5FB8(v3);
          return;
        }

        sub_1AD3D0E3C(v27, &qword_1EB59A538);
        if (qword_1EB5981C0 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      v6 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
    }

    v7 = v6;
    goto LABEL_7;
  }

  __break(1u);
LABEL_19:
  swift_once();
LABEL_12:
  v15 = sub_1ADB05FA0();
  __swift_project_value_buffer(v15, qword_1EB59AB68);

  v16 = sub_1ADB05F80();
  v17 = sub_1ADB06860();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136315138;
    v20 = sub_1AD3CA88C(v2, v1, v27);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_1AD337000, v16, v17, "[%s] Failed to create recoverable checkpoint archive", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B26F9F20](v19, -1, -1);
    MEMORY[0x1B26F9F20](v18, -1, -1);
    sub_1AD3C5FB8(v3);
  }

  else
  {
    sub_1AD3C5FB8(v3);
  }
}

id ProvisioningBackgroundCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void ProvisioningBackgroundCoordinator.handleValidationResult(result:completion:)(char *a1, char a2, void (*a3)(char **), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration);
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (!*(v10 + 16))
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = *(v10 + 32);
  if (*(v10 + 56) > 3u)
  {
    v12 = v11;
    goto LABEL_6;
  }

  if (*(v10 + 56) - 1 >= 3)
  {
    v28 = *(v10 + 40);
    v29 = *(v10 + 48);
    v30 = [v11 state];
    if (v30)
    {
      v13 = v30;
      sub_1AD3CC2E0(v11, v28, v29, 0);
      goto LABEL_7;
    }

LABEL_43:
    __break(1u);
    return;
  }

  v12 = [objc_allocWithZone(PKSecureElementProvisioningState) init];
LABEL_6:
  v13 = v12;
LABEL_7:
  v14 = [v13 sid];

  v15 = sub_1ADB063B0();
  v17 = v16;

  if (a2)
  {

    if (a2 == 1)
    {
      v72 = a1;
      LOBYTE(v73) = 1;
      v18 = a1;
    }

    else
    {
      v72 = 0;
      LOBYTE(v73) = 0;
    }

    a3(&v72);
    goto LABEL_21;
  }

  v64 = v15;
  v65 = v4;
  v66 = v17;
  v67 = a3;
  v68 = a4;
  v19 = *(a1 + 2);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v21 = a1 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(a1 + 2);
    do
    {
      v27 = *v21++;
      v26 = v27;
      if (v27 < 0)
      {
        v72 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v22 + 2) + 1, 1);
          v22 = v72;
        }

        v25 = *(v22 + 2);
        v24 = *(v22 + 3);
        if (v25 >= v24 >> 1)
        {
          sub_1AD450748((v24 > 1), v25 + 1, 1);
          v22 = v72;
        }

        *(v22 + 2) = v25 + 1;
        v22[v25 + 32] = v26;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v31 = *(v22 + 2);
  if (v31)
  {
    v72 = v20;
    sub_1AD450728(0, v31, 0);
    v32 = v20;
    v33 = *(v20 + 2);
    v34 = 32;
    do
    {
      v35 = v22[v34];
      v72 = v32;
      v36 = *(v32 + 3);
      if (v33 >= v36 >> 1)
      {
        sub_1AD450728((v36 > 1), v33 + 1, 1);
        v32 = v72;
      }

      *(v32 + 2) = v33 + 1;
      v32[v33 + 32] = v35 & 0x7F;
      ++v34;
      ++v33;
      --v31;
    }

    while (v31);
  }

  else
  {

    v32 = MEMORY[0x1E69E7CC0];
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AD4506A8(0, v19, 0);
    v37 = v72;
    v38 = a1 + 32;
    do
    {
      v39 = *v38++;
      v69[0] = v39 & 0x7F;
      v40 = ProvisioningRequirement.RequirementType.rawValue.getter();
      v72 = v37;
      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v45 = v40;
        v46 = v41;
        sub_1AD4506A8((v42 > 1), v43 + 1, 1);
        v41 = v46;
        v40 = v45;
        v37 = v72;
      }

      *(v37 + 2) = v43 + 1;
      v44 = &v37[16 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v41;
      --v19;
    }

    while (v19);
  }

  v72 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  v47 = sub_1ADB062F0();
  v49 = v48;

  v50 = sub_1AD44AC30(v32, &unk_1F2261340);

  if ((v50 & 1) == 0)
  {

    v61 = [objc_opt_self() errorWithCommonType:1 severity:5];
    sub_1ADB06C10();

    v73 = 0x80000001ADB9F2C0;
    MEMORY[0x1B26F6530](v47, v49);

    v62 = sub_1ADB06370();

    [v61 addInternalDebugDescription_];

    [v61 setUnderlyingError_];
    v72 = v61;
    LOBYTE(v73) = 1;
    v63 = v61;
    v67(&v72);

LABEL_21:
    sub_1AD451EE8(v72, v73);
    return;
  }

  v51 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion;
  if (*(v65 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion))
  {

    sub_1AD503CB0();

    *(v65 + v51) = 0;
  }

  v52 = *(v65 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_context);
  swift_beginAccess();
  v53 = *(v52 + 72);
  v54 = *(v52 + 80);
  v69[0] = *(v52 + 64);
  v70 = v53;
  v71 = v54;
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = swift_allocObject();
  v56[2] = v55;
  v56[3] = v64;
  v56[4] = v66;
  v56[5] = v67;
  v56[6] = v68;
  v56[7] = v47;
  v56[8] = v49;
  v57 = v54;

  v58 = v53;
  _s11PassKitCore35ProvisioningStrongPasscodeAssertionC7acquire3for10completionyAA0D6DeviceV_ys6ResultOyACSo19PKProvisioningErrorCGctFZ_0(v69, sub_1AD451EFC, v56);

  v59 = v70;
  v60 = v71;
}

uint64_t sub_1AD44E268(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a4;
  v28 = a8;
  v26 = a2;
  v13 = sub_1ADB06040();
  v32 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = sub_1ADB06060();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AD3D3200(0, &qword_1EB59A670);
  v30 = sub_1ADB068B0();
  v18 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a1;
  LOBYTE(v18) = v26 & 1;
  *(v20 + 32) = v26 & 1;
  v21 = v28;
  *(v20 + 40) = v27;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = v21;
  *(v20 + 80) = a9;
  aBlock[4] = sub_1AD452948;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_60_2;
  v22 = _Block_copy(aBlock);
  sub_1AD452980(a1, v18);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  v23 = v30;
  MEMORY[0x1B26F6950](0, v17, v15, v22);
  _Block_release(v22);

  (*(v32 + 8))(v15, v13);
  return (*(v29 + 8))(v17, v31);
}

void sub_1AD44E5D4(uint64_t a1, _BYTE *a2, char a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a3)
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v17 = sub_1ADB05FA0();
      __swift_project_value_buffer(v17, qword_1EB59AB68);

      sub_1AD452980(a2, 1);
      v18 = sub_1ADB05F80();
      v19 = sub_1ADB06860();

      sub_1AD45293C(a2, 1);
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49 = v45;
        *v20 = 136315394;
        *(v20 + 4) = sub_1AD3CA88C(a4, a5, &v49);
        *(v20 + 12) = 2080;
        v21 = a6;
        v22 = [a2 description];
        v23 = sub_1ADB063B0();
        v25 = v24;

        sub_1AD45293C(a2, 1);
        v26 = sub_1AD3CA88C(v23, v25, &v49);

        *(v20 + 14) = v26;
        a6 = v21;
        _os_log_impl(&dword_1AD337000, v18, v19, "[%s] Failed to acquire strong passcode assertion with error: %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v45, -1, -1);
        MEMORY[0x1B26F9F20](v20, -1, -1);
      }

      v49 = a2;
      v50 = 1;
      v27 = a2;
      a6(&v49);

      v28 = v49;
      v29 = v50;
    }

    else
    {
      swift_beginAccess();
      if (a2[49])
      {
        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v30 = sub_1ADB05FA0();
        __swift_project_value_buffer(v30, qword_1EB59AB68);

        v31 = sub_1ADB05F80();
        v32 = sub_1ADB06860();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v47 = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_1AD3CA88C(a4, a5, &v47);
          _os_log_impl(&dword_1AD337000, v31, v32, "[%s] Successfully enforced strong passcode policy", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1B26F9F20](v34, -1, -1);
          MEMORY[0x1B26F9F20](v33, -1, -1);
        }

        *&v16[OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion] = a2;

        v47 = 0;
        LOBYTE(v48) = 0;
        a6(&v47);
      }

      else
      {
        v35 = a9;
        if (qword_1EB5981C0 != -1)
        {
          swift_once();
        }

        v46 = a6;
        v36 = sub_1ADB05FA0();
        __swift_project_value_buffer(v36, qword_1EB59AB68);

        v37 = sub_1ADB05F80();
        v38 = sub_1ADB06860();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v47 = v40;
          *v39 = 136315138;
          *(v39 + 4) = sub_1AD3CA88C(a4, a5, &v47);
          _os_log_impl(&dword_1AD337000, v37, v38, "[%s] Failed to enforce strong passcode policy because passcode not strong", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x1B26F9F20](v40, -1, -1);
          v41 = v39;
          v35 = a9;
          MEMORY[0x1B26F9F20](v41, -1, -1);
        }

        sub_1AD503CB0();
        v42 = [objc_opt_self() errorWithCommonType:1 severity:5];
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_1ADB06C10();

        v47 = 0xD000000000000015;
        v48 = 0x80000001ADB9F2C0;
        MEMORY[0x1B26F6530](a8, v35);
        v43 = sub_1ADB06370();

        [v42 addInternalDebugDescription_];

        [v42 setUnderlyingError_];
        v47 = v42;
        LOBYTE(v48) = 1;
        v44 = v42;
        v46(&v47);
      }

      v28 = v47;
      v29 = v48;
    }

    sub_1AD451EE8(v28, v29);
  }
}

void ProvisioningBackgroundCoordinator.handleSetupAccountResult(result:completion:)(void *a1, unsigned __int8 a2, void (*a3)(id *))
{
  v4 = v3;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v24 = a1;
      v25 = 1;
      v12 = a1;
    }

    else
    {
      v24 = [objc_opt_self() errorWithSeverity_];
      v25 = 1;
    }
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1ADB789F0;
      *(v13 + 32) = a1;
      v14 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
      swift_beginAccess();
      *(v4 + v14) = v13;
      v15 = a1;

      v20 = 0;
      v21 = 1;
      a3(&v20);
      sub_1AD451EE8(v20, v21);
      sub_1AD44D02C();
      return;
    }

    v7 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer;
    swift_beginAccess();
    sub_1AD451AA0(v4 + v7, &v24);
    if (v26)
    {
      sub_1AD4519CC(&v24, &v20);
      sub_1AD3D0E3C(&v24, &qword_1EB59A538);
      v8 = v22;
      v9 = v23;
      __swift_project_boxed_opaque_existential_1(&v20, v22);
      v17 = 0;
      v18 = 0;
      v16 = a1;
      v19 = 0;
      v10 = *(v9 + 24);
      v11 = a1;
      v10(&v16, v8, v9);
      sub_1AD3CC2E0(v16, v17, v18, v19);
      __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    else
    {
      sub_1AD3D0E3C(&v24, &qword_1EB59A538);
    }

    v24 = 0;
    v25 = 0;
  }

  a3(&v24);
  sub_1AD451EE8(v24, v25);
}

void ProvisioningBackgroundCoordinator.handleRequirements(result:completion:)(uint64_t a1, void (*a2)(void **))
{
  v5 = type metadata accessor for ProvisioningStepRequirements.RequirementsResult();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AD4529A4(a1, v7, type metadata accessor for ProvisioningStepRequirements.RequirementsResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v21 = *v7;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5989B8) + 48);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1ADB06C10();
      MEMORY[0x1B26F6530](0xD000000000000019, 0x80000001ADB9F350);
      v28 = v21;
      type metadata accessor for PKPaymentRequirementsStatus(0);
      sub_1ADB06CD0();
      v24 = v29;
      v23 = v30;
      v25 = [objc_opt_self() errorWithCommonType:1 severity:5];
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1ADB06C10();

      v29 = 0xD000000000000015;
      v30 = 0x80000001ADB9F2C0;
      MEMORY[0x1B26F6530](v24, v23);

      v26 = sub_1ADB06370();

      [v25 addInternalDebugDescription_];

      [v25 setUnderlyingError_];
      v29 = v25;
      v30 = 0;
      v31 = 1;
      v27 = v25;
      a2(&v29);

      sub_1AD364A50(v29, v30, v31);
      sub_1AD3D0E3C(v7 + v22, &qword_1EB59AE30);
      return;
    }

    v12 = *v7;
    v29 = 0;
    v30 = v12;
    v31 = 0;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = *v7;
    v13 = v7[1];
    v15 = *(v2 + OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel);
    if (v15)
    {
      if (v13 >> 62)
      {
        if (sub_1ADB06D00())
        {
          goto LABEL_10;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        v16 = v15;
        sub_1AD448470(v13);

        v17 = sub_1ADB06600();

        [v16 updateWithPaymentSetupFields_];

        if ([v16 hasIncompletePaymentSetupFields])
        {
          v18 = [objc_opt_self() errorWithCommonType:1 severity:5];
          v19 = sub_1ADB06370();
          [v18 addInternalDebugDescription_];

          [v18 setUnderlyingError_];
          v29 = v18;
          v30 = 0;
          v31 = 1;
          v20 = v18;
          a2(&v29);
        }

        else
        {
          v29 = 0;
          v30 = v14;
          v31 = 0;
          v20 = v14;
          a2(&v29);
        }

        goto LABEL_20;
      }
    }

    v29 = 0;
    v30 = v14;
    v31 = 0;
    v11 = v14;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v12 = *v7;
    v29 = *v7;
    v30 = 0;
    v31 = 1;
LABEL_14:
    v11 = v12;
    goto LABEL_19;
  }

  sub_1AD452A0C(v7, type metadata accessor for ProvisioningStepRequirements.RequirementsResult);
  v9 = [objc_opt_self() errorWithCommonType:1 severity:5];
  v10 = sub_1ADB06370();
  [v9 addInternalDebugDescription_];

  [v9 setUnderlyingError_];
  v29 = v9;
  v30 = 0;
  v31 = 1;
  v11 = v9;
LABEL_19:
  v16 = v11;
  a2(&v29);
LABEL_20:

  sub_1AD364A50(v29, v30, v31);
}

void ProvisioningBackgroundCoordinator.handleEligibility(result:completion:)(uint64_t a1, void (*a2)(void **))
{
  v5 = type metadata accessor for ProvisioningStepEligibility.EligibilityResult();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AD4529A4(a1, v7, type metadata accessor for ProvisioningStepEligibility.EligibilityResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = *v7;
      v41 = 0;
      v42 = v20;
      v43 = 0;
      v19 = v20;
LABEL_19:
      v37 = v19;
      a2(&v41);

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v21 = *v7;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB599ED0) + 48);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1ADB06C10();
      MEMORY[0x1B26F6530](0xD000000000000019, 0x80000001ADB9F350);
      v38 = v21;
      type metadata accessor for PKPaymentEligibilityStatus(0);
      sub_1ADB06CD0();
      v24 = v41;
      v23 = v42;
      v25 = [objc_opt_self() errorWithCommonType:1 severity:5];
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1ADB06C10();

      v41 = 0xD000000000000015;
      v42 = 0x80000001ADB9F2C0;
      MEMORY[0x1B26F6530](v24, v23);

      v26 = sub_1ADB06370();

      [v25 addInternalDebugDescription_];

      [v25 setUnderlyingError_];
      v41 = v25;
      v42 = 0;
      v43 = 1;
      v27 = v25;
      a2(&v41);

      sub_1AD364A50(v41, v42, v43);
      sub_1AD3D0E3C(v7 + v22, &qword_1EB59AE30);
      return;
    }

    v14 = *v7;
    v13 = v7[1];
    if (v13 >> 62)
    {
      v36 = sub_1ADB06D00();

      if (v36)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v15)
      {
LABEL_10:
        v16 = [objc_opt_self() errorWithCommonType:1 severity:5];
        v17 = sub_1ADB06370();
        [v16 addInternalDebugDescription_];

        [v16 setUnderlyingError_];
        v41 = v16;
        v42 = 0;
        v43 = 1;
        v18 = v16;
        a2(&v41);

LABEL_20:
        sub_1AD364A50(v41, v42, v43);
        return;
      }
    }

    v41 = 0;
    v42 = v14;
    v43 = 0;
    v19 = v14;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v41 = *v7;
      v42 = 0;
      v43 = 1;
      v19 = v41;
    }

    else
    {
      v30 = *v7;
      v31 = [objc_opt_self() errorWithCommonType:1 severity:5];
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_1ADB06C10();

      v41 = 0xD000000000000016;
      v42 = 0x80000001ADB9F370;
      v32 = MEMORY[0x1B26F66B0](v30, &type metadata for ProvisioningRequirement);
      v34 = v33;

      MEMORY[0x1B26F6530](v32, v34);

      v35 = sub_1ADB06370();

      [v31 addInternalDebugDescription_];

      v41 = v31;
      v42 = 0;
      v43 = 1;
      v19 = v31;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1AD452A0C(v7, type metadata accessor for ProvisioningStepEligibility.EligibilityResult);
    v28 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v29 = sub_1ADB06370();
    [v28 addInternalDebugDescription_];

    [v28 setUnderlyingError_];
    v41 = v28;
    v42 = 0;
    v43 = 1;
    v19 = v28;
    goto LABEL_19;
  }

  v9 = *v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59BB00);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1ADB789F0;
  v11 = [objc_allocWithZone(PKPaymentProvisioningPassData) initWithSecureElementPass_];
  if (v11)
  {
    *(v10 + 32) = v11;
    v12 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
    swift_beginAccess();
    *(v2 + v12) = v10;

    v38 = 0;
    v39 = 0;
    v40 = 1;
    a2(&v38);
    sub_1AD364A50(v38, v39, v40);
    sub_1AD44D02C();
  }

  else
  {
    __break(1u);
  }
}

void ProvisioningBackgroundCoordinator.handleEnableResult(_:completion:)(void *a1, char a2, void (*a3)(void **))
{
  if (a2)
  {
    v9 = a1;
    v10 = 0;
    v11 = 1;
    v4 = a1;
    a3(&v9);
    v5 = v9;
    v6 = v10;
    v7 = v11;

    sub_1AD364A50(v5, v6, v7);
  }

  else
  {
    v9 = 0;
    v10 = a1;
    v11 = 0;
    v8 = a1;
    a3(&v9);
    sub_1AD364A50(v9, v10, v11);

    sub_1AD44D828();
  }
}

void ProvisioningBackgroundCoordinator.handleProvisioned(result:completion:)(char *a1, char a2, void (*a3)(void **))
{
  if (a2)
  {
    v38 = a1;
    v39 = 0;
    v40 = 1;
    v4 = a1;
    a3(&v38);
    v5 = v38;
    v6 = v39;
    v7 = v40;
LABEL_32:
    sub_1AD364A50(v5, v6, v7);
    return;
  }

  v8 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v10 = *&a1[v8];
  v11 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;

  v34 = a1;
  swift_beginAccess();
  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = 0;
  v15 = v10 + 40;
  do
  {
    v16 = (v15 + 16 * v14);
    v17 = v14;
    while (1)
    {
      if (v17 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v18 = *&v34[v13];
      if (!*(v18 + 16))
      {
        goto LABEL_6;
      }

      v20 = *(v16 - 1);
      v19 = *v16;

      v21 = sub_1AD425BEC(v20, v19);
      if (v22)
      {
        break;
      }

LABEL_6:
      ++v17;
      v16 += 2;
      if (v12 == v17)
      {
        goto LABEL_14;
      }
    }

    v23 = *(*(v18 + 56) + 8 * v21);

    MEMORY[0x1B26F6680](v24);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ADB06640();
    }

    v14 = v17 + 1;
    sub_1ADB06670();
    v15 = v10 + 40;
    v11 = v35;
  }

  while (v12 - 1 != v17);
LABEL_14:

  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v34;
  if (!v25)
  {
LABEL_30:

    v31 = MEMORY[0x1E69E7CC0];
LABEL_31:
    swift_beginAccess();
    sub_1AD4504CC(v31);
    swift_endAccess();
    v35 = 0;
    v36 = v26;
    v37 = 0;
    v32 = v26;
    a3(&v35);
    v5 = v35;
    v6 = v36;
    v7 = v37;
    goto LABEL_32;
  }

  while (1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1ADB06CA0();
    if (v25 < 0)
    {
      break;
    }

    v27 = 0;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1B26F6CC0](v27, v11);
      }

      else
      {
        if (v27 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v29 = *(v11 + 8 * v27 + 32);
      }

      v30 = v29;
      if (![objc_allocWithZone(PKPaymentProvisioningPassData) initWithSecureElementPass_])
      {
        goto LABEL_34;
      }

      sub_1ADB06C80();
      sub_1ADB06CB0();
      sub_1ADB06CC0();
      sub_1ADB06C90();
      ++v27;
      if (v28 == v25)
      {

        v31 = v35;
        v26 = v34;
        goto LABEL_31;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v25 = sub_1ADB06D00();
    v26 = v34;
    if (!v25)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void ProvisioningBackgroundCoordinator.handleImportKey(result:completion:)(void *a1, char a2, void (*a3)(void **))
{
  if (!a2)
  {
    v10 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
    swift_beginAccess();
    *(v3 + v10) = MEMORY[0x1E69E7CC0];

    v13 = 0;
    v14 = a1;
    v15 = 0;
LABEL_6:
    v12 = a1;
    a3(&v13);
    v7 = v13;
    v8 = v14;
    v9 = v15;
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v11 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses;
    swift_beginAccess();
    *(v3 + v11) = MEMORY[0x1E69E7CC0];

    v13 = a1;
    v14 = 0;
    v15 = 1;
    goto LABEL_6;
  }

  v16 = a1;
  v17 = 0;
  v18 = 1;
  v6 = a1;
  a3(&v16);
  v7 = v16;
  v8 = v17;
  v9 = v18;
LABEL_7:
  sub_1AD364A50(v7, v8, v9);
}

void sub_1AD44FFB4(uint64_t a1, void (*a2)(void **))
{
  v4 = 0;
  v5 = 0;
  a2(&v4);
  v2 = v4;
  v3 = v5;

  sub_1AD451EE8(v2, v3);
}

void sub_1AD450014(char *a1, char a2, void (*a3)(id *), uint64_t a4, unint64_t a5, char a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v36 = a1;
      v37 = 1;
      v8 = a1;
      a3(&v36);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      a3(&v36);
    }

    sub_1AD451EE8(v36, v37);
    return;
  }

  v9 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passUniqueIdentifiers;
  swift_beginAccess();
  v10 = *&a1[v9];
  v11 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC11PassKitCore19SEProvisionedPasses_passesForUniqueIdentifier;

  swift_beginAccess();
  if (v12)
  {
    v14 = 0;
    v15 = v10 + 40;
    do
    {
      v16 = (v15 + 16 * v14);
      v17 = v14;
      while (1)
      {
        if (v17 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v18 = *&a1[v13];
        if (!*(v18 + 16))
        {
          goto LABEL_7;
        }

        v20 = *(v16 - 1);
        v19 = *v16;

        v21 = sub_1AD425BEC(v20, v19);
        if (v22)
        {
          break;
        }

LABEL_7:
        ++v17;
        v16 += 2;
        if (v12 == v17)
        {
          goto LABEL_18;
        }
      }

      v23 = *(*(v18 + 56) + 8 * v21);

      MEMORY[0x1B26F6680](v24);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ADB06640();
      }

      v14 = v17 + 1;
      sub_1ADB06670();
      v15 = v10 + 40;
      v11 = v34;
    }

    while (v12 - 1 != v17);
  }

LABEL_18:

  if (v11 >> 62)
  {
    goto LABEL_33;
  }

  v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    while (1)
    {
      v34 = MEMORY[0x1E69E7CC0];
      sub_1ADB06CA0();
      if (v25 < 0)
      {
        break;
      }

      v26 = 0;
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1B26F6CC0](v26, v11);
        }

        else
        {
          if (v26 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v28 = *(v11 + 8 * v26 + 32);
        }

        v29 = v28;
        if (![objc_allocWithZone(PKPaymentProvisioningPassData) initWithSecureElementPass_])
        {
          goto LABEL_37;
        }

        sub_1ADB06C80();
        sub_1ADB06CB0();
        sub_1ADB06CC0();
        sub_1ADB06C90();
        ++v26;
        if (v27 == v25)
        {

          v30 = v34;
          goto LABEL_35;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v25 = sub_1ADB06D00();
      if (!v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_34:

    v30 = MEMORY[0x1E69E7CC0];
LABEL_35:
    swift_beginAccess();
    sub_1AD4504CC(v30);
    swift_endAccess();
    v34 = a5;
    v35 = a6;
    a3(&v34);
    sub_1AD451EE8(v34, v35);
    sub_1AD44D02C();
  }
}

uint64_t sub_1AD4503D8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AD424E64(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1AD4504CC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1ADB06D00();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1ADB06D00();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1AD4510B4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1AD451154(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AD4505BC(uint64_t result)
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

  result = sub_1AD42507C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

char *sub_1AD4506A8(char *a1, int64_t a2, char a3)
{
  result = sub_1AD450878(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AD4506C8(char *a1, int64_t a2, char a3)
{
  result = sub_1AD450984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AD4506E8(void *a1, int64_t a2, char a3)
{
  result = sub_1AD450A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AD450708(void *a1, int64_t a2, char a3)
{
  result = sub_1AD450BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AD450728(char *a1, int64_t a2, char a3)
{
  result = sub_1AD450CF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AD450748(char *a1, int64_t a2, char a3)
{
  result = sub_1AD450DE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1AD450768(size_t a1, int64_t a2, char a3)
{
  result = sub_1AD450ED8(a1, a2, a3, *v3, &qword_1EB59A598, &unk_1ADB81BC8, MEMORY[0x1E69C8698]);
  *v3 = result;
  return result;
}

size_t sub_1AD4507AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1AD450ED8(a1, a2, a3, *v3, &qword_1EB59AE70, &unk_1ADB81BC0, MEMORY[0x1E69C8648]);
  *v3 = result;
  return result;
}

size_t sub_1AD4507F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1AD450ED8(a1, a2, a3, *v3, &qword_1EB59A0B0, &unk_1ADB81BA0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1AD450834(size_t a1, int64_t a2, char a3)
{
  result = sub_1AD450ED8(a1, a2, a3, *v3, &qword_1EB59A000, &unk_1ADB80828, type metadata accessor for ProvisioningSEStorageManager.ReservationEntry);
  *v3 = result;
  return result;
}

char *sub_1AD450878(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB599FD8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1AD450984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5A0);
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

void *sub_1AD450A94(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A590);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for PKContactField(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AD450BBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BD40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AD450CF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5B8);
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

char *sub_1AD450DE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A0B8);
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

size_t sub_1AD450ED8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

uint64_t sub_1AD4510B4(uint64_t a1)
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

  sub_1ADB06D00();
LABEL_9:
  result = sub_1ADB06C40();
  *v1 = result;
  return result;
}

uint64_t sub_1AD451154(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1ADB06D00();
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
      result = sub_1ADB06D00();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AD43FACC(&qword_1EB59A5B0, &qword_1EB59A5A8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5A8);
            v9 = sub_1AD508E24(v13, i, a3);
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
        sub_1AD3D3200(0, &qword_1EB5988B8);
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

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC11handleTerms6result10completionyAA0d4StepH0C0H6ResultO_yAA0d9OperationL0OyytGctF_0(uint64_t a1, void (*a2)(id *))
{
  v4 = type metadata accessor for ProvisioningStepTerms.TermsResult();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD4529A4(a1, v6, type metadata accessor for ProvisioningStepTerms.TermsResult);
  v7 = sub_1ADB05D20();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    v11 = 0;
    v12 = 0;
    a2(&v11);
    sub_1AD451EE8(v11, v12);
  }

  else
  {
    v8 = [objc_opt_self() errorWithCommonType:1 severity:5];
    v9 = sub_1ADB06370();
    [v8 addInternalDebugDescription_];

    [v8 setUnderlyingError_];
    v11 = v8;
    v12 = 1;
    v10 = v8;
    a2(&v11);

    sub_1AD451EE8(v11, v12);
    sub_1AD452A0C(v6, type metadata accessor for ProvisioningStepTerms.TermsResult);
  }
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC15handleSEStorage6result10completionyAA0d4StepH0C0H6ResultO_yAA0d9OperationL0OySay10Foundation4UUIDVGGctF_0(void *a1, char a2, void (*a3)(void **))
{
  if (!a2)
  {
    v8 = 0;
    v9 = a1;
    v10 = 0;

LABEL_6:
    a3(&v8);
    goto LABEL_7;
  }

  if (a2 != 1)
  {
    v8 = a1;
    v9 = 0;
    v10 = 1;
    v7 = a1;
    goto LABEL_6;
  }

  v4 = [objc_opt_self() errorWithCommonType:8 severity:5];
  v5 = sub_1ADB06370();
  [v4 addInternalDebugDescription_];

  v8 = v4;
  v9 = 0;
  v10 = 1;
  v6 = v4;
  a3(&v8);

LABEL_7:
  sub_1AD45291C(v8, v9, v10);
}

void sub_1AD4515E0(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    v6 = 1;
    v4 = a1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  a3(&v5);
  sub_1AD451EE8(v5, v6);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC19handleRequestInvite6result10completionyAA0d10CarKeyStephI0C0hI6ResultO_yAA0d9OperationO0OySSGXEtF_0(void *a1, uint64_t a2, unsigned __int8 a3, void (*a4)(void **))
{
  if (a3 >= 2u)
  {
    v10 = 0;
    v11 = 0;
    v9 = a1;
    v12 = 1;
    v8 = a1;
    a4(&v9);
  }

  else
  {
    v5 = [objc_opt_self() errorWithSeverity_];
    v6 = sub_1ADB06370();
    [v5 addInternalDebugDescription_];

    v10 = 0;
    v11 = 0;
    v9 = v5;
    v12 = 1;
    v7 = v5;
    a4(&v9);
  }

  sub_1AD452818(v9, v10, v11, v12);
}

id sub_1AD451764(uint64_t a1, void *a2, char a3)
{
  v7 = OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter;
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_reporter] = 0;
  v8 = &v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_completion];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_preflightCompletion];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_onRecoverableCheckpointReached];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_composer];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_fieldsModel] = 0;
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_provisionedPasses] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_passcodeAssertion] = 0;
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_context] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5C8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ADB78CE0;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = a2;
  *(v12 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ADB78CE0;
  swift_beginAccess();
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(v13 + 32) = *(a1 + 64);
  *(v13 + 40) = v14;
  *(v13 + 48) = v15;
  type metadata accessor for ProvisioningCredentialsConfiguration();
  v16 = swift_allocObject();
  v16[4] = 0;
  v16[5] = 0;
  v16[2] = v12;
  v16[3] = v13;
  *&v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_configuration] = v16;
  v3[OBJC_IVAR____PKProvisioningBackgroundCoordinator_previouslyAcceptedTerms] = a3;
  swift_beginAccess();
  v17 = *(a1 + 176);
  v18 = v15;

  v19 = a2;
  v20 = v14;
  if (v17)
  {
    v21 = [v17 createStepReporter];
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v3[v7];
  *&v3[v7] = v21;

  v24.receiver = v3;
  v24.super_class = type metadata accessor for ProvisioningBackgroundCoordinator();
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t sub_1AD451990(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = a1;
    a1 = 0;
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(a1, v3);
}

uint64_t sub_1AD4519CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AD451A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A538);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD451AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AD451B10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5;
  v9 = swift_allocObject();
  *(v9 + 24) = &protocol witness table for ProvisioningBackgroundCoordinator;
  swift_unknownObjectWeakInit();
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  v11 = [v10 carKeyTerminalPairingCredential];

  v12 = [v11 configuration];
  if (v12)
  {
  }

  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  v14 = [v13 localAppletSubcredentialPassCredential];

  v15 = v14 != 0;
  if (v14)
  {
  }

  if (a5)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  v17 = [v16 remoteCredential];

  if (!v17)
  {
    if (!v12)
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    goto LABEL_18;
  }

  v15 = 1;
LABEL_19:
  if (a5)
  {
    v18 = 0;
  }

  else
  {
    v18 = a2;
  }

  v19 = [v18 statefulTransferCredential];

  if (!v19)
  {
    goto LABEL_27;
  }

  v20 = [v19 share];

  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = [v20 activationOptions];

  if (v21 && (v22 = [v21 optionOfType_], v21, v22))
  {
    v23 = a2;

    v24 = 0;
    v25 = v15;
  }

  else
  {
LABEL_27:
    v23 = a2;
    v26 = !v15;
    v25 = v15;
    if (v12)
    {
      v26 = 0;
    }

    v24 = v26;
  }

  v27 = v12 != 0;
  sub_1AD3D3200(0, &qword_1EB59A670);
  sub_1AD3DF24C(v23, a3, a4, a5);
  v28 = sub_1ADB068B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A5C0);
  swift_allocObject();

  v30 = sub_1AD46AE88(v29, v23, a3, a4, a5, v28);

  v31 = swift_unownedRetain();
  sub_1AD466B34(v31, sub_1AD364EDC, 0, v9, v25, v27, v24);
  swift_unownedRelease();
  v32 = [v30[7] provisioningStepState];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1ADB05D70();
    v36 = v35;

    [v30[7] setProvisioningStepState_];
    sub_1AD4695B0();
    sub_1AD3C757C(v34, v36);
  }
}

void sub_1AD451EE8(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC20handleLostModeResult6result10completionyAA0d4StephI0C0hiJ0O_yAA0d9OperationJ0OyytGctF_0(void *a1, void (*a2)(id *))
{
  if (!a1)
  {
    v7 = 0;
    v8 = 0;
LABEL_6:
    a2(&v7);
    goto LABEL_7;
  }

  if (a1 != 1)
  {
    v7 = a1;
    v8 = 1;
    v6 = a1;
    goto LABEL_6;
  }

  v3 = [objc_opt_self() errorWithCommonType:1 severity:5];
  v4 = sub_1ADB06370();
  [v3 addInternalDebugDescription_];

  [v3 setUnderlyingError_];
  v7 = v3;
  v8 = 1;
  v5 = v3;
  a2(&v7);

LABEL_7:
  sub_1AD451EE8(v7, v8);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC14handleReadCard6result10completionyAA0d4StephI0C0hI6ResultO_yAA0d9OperationM0OySo27PKPaymentTapToProvisionDataCGctF_0(void *a1, unsigned __int8 a2, void (*a3)(id *))
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v6 = [objc_opt_self() errorWithSeverity_];
      v7 = 0;
      v8 = 1;
      v5 = v6;
      a3(&v6);

      goto LABEL_8;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v6 = a1;
    v7 = 0;
    v8 = 1;
    goto LABEL_6;
  }

  v6 = 0;
  v7 = a1;
  v8 = 0;
LABEL_6:
  v4 = a1;
  a3(&v6);
LABEL_8:
  sub_1AD364A50(v6, v7, v8);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC22handleDeviceAssessment6result10completionyAA0d4StephI0C0I6ResultO_yAA0d9OperationM0OySo020PKODIServiceProviderI0CSgGXEtF_0(void *a1, char a2, void (*a3)(void **))
{
  if (!a2)
  {
    v5 = 0;
    v6 = a1;
    v7 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v5 = a1;
    v6 = 0;
    v7 = 1;
LABEL_5:
    v4 = a1;
    a3(&v5);
    sub_1AD364A50(v5, v6, v7);
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  a3(&v5);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC22handleBiometricBinding6result10completionyAA0d4StephI0C0I6ResultO_yAA0d9OperationM0OyytGctF_0(void *a1, uint64_t a2, char a3, void (*a4)(id *))
{
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a1;
      v7 = 1;
      v5 = a1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = [objc_opt_self() errorWithSeverity_];
    v7 = 1;
  }

  a4(&v6);
  sub_1AD451EE8(v6, v7);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC16handleFindSource6result10completionyAA0d10CarKeyStephI0C0hI6ResultO_yAA0d9OperationO0OyAA0dlm10InvitationI13ConfigurationOGXEtF_0(uint64_t a1, void (*a2)(void **))
{
  if (*(a1 + 33) == 1)
  {
    v7 = *a1;
    v8 = 0u;
    v9 = 0u;
    v10 = 256;
    v3 = v7;
    a2(&v7);
  }

  else
  {
    v4 = [objc_opt_self() errorWithSeverity_];
    v5 = sub_1ADB06370();
    [v4 addInternalDebugDescription_];

    v7 = v4;
    v8 = 0u;
    v9 = 0u;
    v10 = 256;
    v6 = v4;
    a2(&v7);
  }

  sub_1AD452838(v7, v8, *(&v8 + 1), v9, *(&v9 + 1), v10, SHIBYTE(v10));
}

void sub_1AD452358(void *a1, void (*a2)(id *))
{
  if (a1)
  {
    v4 = a1;
    v5 = 1;
    v3 = a1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  a2(&v4);
  sub_1AD451EE8(v4, v5);
}

void _s11PassKitCore33ProvisioningBackgroundCoordinatorC16handleFindReader6result10completionyAA0d10CarKeyStephI0C0hI6ResultO_yAA0d9OperationO0OySo21PKAppletSubcredentialCGctF_0(void *a1, char a2, void (*a3)(void **))
{
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = a1;
      v9 = 0;
      v10 = 1;
      v4 = a1;
    }

    else
    {
      v6 = [objc_opt_self() errorWithCommonType:1 severity:5];
      v7 = sub_1ADB06370();
      [v6 addInternalDebugDescription_];

      [v6 setUnderlyingError_];
      v8 = v6;
      v9 = 0;
      v10 = 1;
    }
  }

  else
  {
    v8 = 0;
    v9 = a1;
    v10 = 0;
    v5 = a1;
  }

  a3(&v8);
  sub_1AD364A50(v8, v9, v10);
}

uint64_t sub_1AD4524C4(void *a1, char a2, void (*a3)(void **), uint64_t a4, uint64_t (*a5)(void *, void *, void))
{
  if (a2)
  {
    v9 = a1;
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v9 = 0;
    v10 = a1;
    v11 = 0;
  }

  v7 = a1;
  a3(&v9);
  return a5(v9, v10, v11);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD4527B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_1AD452818(void *a1, int a2, id a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

void sub_1AD452838(void *a1, id a2, void *a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, char a7)
{
  if (a7 == 1)
  {
  }

  else if (!a7)
  {
    sub_1AD452868(a2, a3, a4, a5, a6);
  }
}

void sub_1AD452868(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return;
      }

      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    a1 = v5;
LABEL_10:

    return;
  }

  if (a5 != 2)
  {
    if (a5 != 3)
    {
      return;
    }

    goto LABEL_10;
  }
}

void sub_1AD45291C(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_1AD45293C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1AD452980(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1AD4529A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AD452A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 ProvisioningStepValidatePreconditions.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepValidatePreconditions.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepValidatePreconditions.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepValidatePreconditions.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD452BA8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepValidatePreconditions();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore37ProvisioningStepValidatePreconditionsC16ValidationResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1AD452C7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1AD452CA4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(PKAsyncUnaryOperationComposer) init];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = -1;
  if ((*(*(v2 + 16) + 33) & 0xC0FF) == 0x4000)
  {
    goto LABEL_4;
  }

  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  aBlock = *(v2 + 24);
  v30 = v6;
  LOBYTE(v31) = v7;
  ProvisioningCredentialsConfiguration.Credential.carKeyPassConfiguration.getter();
  if (v8)
  {

LABEL_4:
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    v32 = sub_1AD456778;
    v33 = v10;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v30 = sub_1AD433EF4;
    v31 = &block_descriptor_61;
    v11 = _Block_copy(&aBlock);

    [v4 addOperation_];
    _Block_release(v11);
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v5;
  v32 = sub_1AD45670C;
  v33 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1AD433EF4;
  v31 = &block_descriptor_27_0;
  v14 = _Block_copy(&aBlock);

  [v4 addOperation_];
  _Block_release(v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v5;
  v32 = sub_1AD456714;
  v33 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1AD433EF4;
  v31 = &block_descriptor_34;
  v17 = _Block_copy(&aBlock);

  [v4 addOperation_];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v5;
  v32 = sub_1AD45671C;
  v33 = v19;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1AD433EF4;
  v31 = &block_descriptor_41_0;
  v20 = _Block_copy(&aBlock);

  [v4 addOperation_];
  _Block_release(v20);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v5;
  v32 = sub_1AD456724;
  v33 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1AD433EF4;
  v31 = &block_descriptor_48_1;
  v23 = _Block_copy(&aBlock);

  [v4 addOperation_];
  _Block_release(v23);
  v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v25 = swift_allocObject();
  v25[2] = v5;
  v25[3] = a1;
  v25[4] = a2;
  v32 = sub_1AD45672C;
  v33 = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1AD434CF8;
  v31 = &block_descriptor_54_1;
  v26 = _Block_copy(&aBlock);

  v27 = [v4 evaluateWithInput:v24 completion:v26];
  _Block_release(v26);

  swift_unknownObjectRelease();
}

void sub_1AD45322C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);
    swift_beginAccess();
    v12 = *(v11 + 16);
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a2;
    v17[4] = sub_1AD456780;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1AD3D96E8;
    v17[3] = &block_descriptor_67;
    v14 = _Block_copy(v17);
    v15 = v12;

    v16 = a2;

    [v15 validatePreconditionsAndRegister_];
    _Block_release(v14);
  }
}

uint64_t sub_1AD45338C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, BOOL), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else if (!a2)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_1ADB05CB0();
LABEL_7:
  v10 = [objc_opt_self() errorWithUnderlyingError:v9 defaultSeverity:4];

  swift_beginAccess();
  v11 = *(a3 + 16);
  *(a3 + 16) = v10;
  v12 = *(a3 + 24);
  *(a3 + 24) = 1;
  sub_1AD45678C(v11, v12);
LABEL_8:
  swift_beginAccess();
  return a4(a6, *(a3 + 24) != 255);
}

void sub_1AD45347C(uint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v20 = [objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle()) init];
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v15 = *(v11 + 16);
    v21 = *(v11 + 24);
    v22 = v12;
    v23 = v13;
    v24 = v14;
    swift_beginAccess();
    v16 = *(v15 + 72);
    sub_1AD3DF24C(v21, v12, v13, v14);
    v17 = v16;
    v18 = sub_1AD50F1FC(&v21, v17);

    sub_1AD3CC2E0(v21, v22, v23, v24);

    v19 = a2;
    sub_1AD455988(v18, v11, a6, a3, a4, v19);
  }
}

void sub_1AD4535E4(uint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_allocObject();
    v12[2] = a6;
    v12[3] = a3;
    v12[4] = a4;
    v12[5] = a2;
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v31 = *(v11 + 24);
    v32 = v13;
    LOBYTE(v33) = v14;
    v15 = a2;

    ProvisioningCredentialsConfiguration.Credential.carKeyPassConfiguration.getter();
    if (v16)
    {
      v17 = v16;
      v18 = *(v11 + 16);
      swift_beginAccess();
      v19 = *(v18 + 72);
      v20 = *(v18 + 80);
      v21 = v19;
      v22 = [v21 targetDevice];
      if (!v22)
      {
        __break(1u);
        return;
      }

      v23 = v22;
      if ([v22 respondsToSelector_])
      {
        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        v25[2] = v24;
        v25[3] = sub_1AD456FF4;
        v25[4] = v12;
        v34 = sub_1AD456F90;
        v35 = v25;
        *&v31 = MEMORY[0x1E69E9820];
        *(&v31 + 1) = 1107296256;
        v32 = sub_1AD3D96E8;
        v33 = &block_descriptor_104;
        v26 = _Block_copy(&v31);
        v27 = v21;
        v28 = v17;

        [v23 paymentWebService:v27 canAddSecureElementPassWithConfiguration:v28 completion:v26];

        _Block_release(v26);

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v29 = *(a6 + 16);
      *(a6 + 16) = 0;
      v30 = *(a6 + 24);
      *(a6 + 24) = 2;
      sub_1AD45678C(v29, v30);
      a3(v15, 0);
    }
  }
}

void sub_1AD4538E0(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1ADB06040();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ADB06060();
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v40 = v14;
    v19 = swift_allocObject();
    v19[2] = a6;
    v19[3] = a3;
    v19[4] = a4;
    v19[5] = a2;
    if (*(v18 + 48))
    {
      v20 = a2;

LABEL_4:
      swift_beginAccess();
      v21 = *(a6 + 16);
      *(a6 + 16) = 0;
      v22 = *(a6 + 24);
      *(a6 + 24) = 2;
      sub_1AD45678C(v21, v22);
      a3(a2, 0);

      return;
    }

    v39 = v11;
    v23 = *(v18 + 24);
    v38 = a2;

    v24 = [v23 localAppletSubcredentialPassCredential];
    if (!v24)
    {
      goto LABEL_4;
    }

    v37 = v24;
    v25 = [v24 credentialToShare];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 isSharedCredential];
      v28 = PKAppletSubcredentialSupportsSharingInAChain(v26);
      if (!v27 || v28)
      {
        sub_1AD3D3200(0, &qword_1EB59A670);
        v38 = sub_1ADB068B0();
        v31 = swift_allocObject();
        v32 = v37;
        *(v31 + 16) = v37;
        *(v31 + 24) = v18;
        *(v31 + 32) = v27;
        *(v31 + 40) = sub_1AD456FF4;
        *(v31 + 48) = v19;
        aBlock[4] = sub_1AD456F6C;
        aBlock[5] = v31;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD471DC4;
        aBlock[3] = &block_descriptor_82;
        v33 = _Block_copy(aBlock);
        v37 = v32;

        sub_1ADB06050();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1AD3D76F8();
        v36 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
        sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
        sub_1ADB06B00();
        v34 = v38;
        MEMORY[0x1B26F6950](0, v16, v13, v33);

        _Block_release(v33);

        (*(v39 + 8))(v13, v10);
        (*(v41 + 8))(v16, v40);
      }

      else
      {
        swift_beginAccess();
        v29 = *(a6 + 16);
        *(a6 + 16) = 0;
        v30 = *(a6 + 24);
        *(a6 + 24) = 2;
        sub_1AD45678C(v29, v30);
        a3(v38, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AD453D98(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = a2;
  swift_beginAccess();
  v12 = *(a3 + 16);
  *(a3 + 16) = a1;
  v13 = *(a3 + 24);
  *(a3 + 24) = a2;
  sub_1AD45678C(v12, v13);
  v14 = v11 == 2 && a1 == 0;
  v15 = !v14;
  if (!v14)
  {
    sub_1AD4566F0(a1, a2);
  }

  return a4(a6, v15);
}

void sub_1AD453E44(uint64_t a1, void *a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    v12 = a2;
    sub_1AD4567C0(v11, a6, a3, a4, v12);
  }
}

uint64_t sub_1AD453EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1ADB06040();
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1ADB06060();
  v12 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v15 = sub_1ADB068B0();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  aBlock[4] = sub_1AD4567A0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_73_0;
  v17 = _Block_copy(aBlock);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v14, v11, v17);
  _Block_release(v17);

  (*(v20 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v19);
}

void sub_1AD4541D8(uint64_t a1, void (*a2)(id, uint64_t))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v4;
  v7 = v5;
  if (v5 == 255)
  {
    v6 = [objc_opt_self() errorWithSeverity_];
    v7 = 1;
  }

  sub_1AD4567AC(v4, v5);
  a2(v6, v7);
  sub_1AD4566A0(v6, v7);
}

uint64_t sub_1AD454298(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1ADB06040();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ADB06060();
  v11 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v14 = sub_1ADB068B0();
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  aBlock[4] = sub_1AD4566BC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_15_4;
  v16 = _Block_copy(aBlock);

  sub_1AD4566F0(a1, a2);

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v13, v10, v16);
  _Block_release(v16);

  (*(v19 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v18);
}

void sub_1AD454580(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1AD4545F8(int a1, id a2, uint64_t a3, void (*a4)(void, void))
{
  if (a2 && (v5 = [a2 container], sub_1ADB06AC0(), swift_unknownObjectRelease(), type metadata accessor for ProvisioningRequirementsContainer(), swift_dynamicCast()))
  {
    v6 = *&v8[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements];
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AD4546DC(v6, a4);
}

void sub_1AD4546DC(uint64_t a1, void (*a2)(void, void))
{
  v6 = [*(v3 + 56) sid];
  v92 = sub_1ADB063B0();
  v93 = v7;

  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = (a1 + 32);
    do
    {
      v13 = *v10++;
      v2 = v13;
      if ((v13 & 0x80000000) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450748(0, *(v9 + 16) + 1, 1);
        }

        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1AD450748((v11 > 1), v12 + 1, 1);
        }

        *(v9 + 16) = v12 + 1;
        *(v9 + v12 + 32) = v2;
      }

      --v8;
    }

    while (v8);
  }

  v14 = *(v9 + 16);
  if (v14)
  {
    v15 = a1;
    v16 = a2;
    v94 = MEMORY[0x1E69E7CC0];
    sub_1AD450728(0, v14, 0);
    v17 = v94;
    v18 = *(v94 + 16);
    v2 = 32;
    do
    {
      v19 = *(v9 + v2);
      v20 = *(v94 + 24);
      if (v18 >= v20 >> 1)
      {
        sub_1AD450728((v20 > 1), v18 + 1, 1);
      }

      *(v94 + 16) = v18 + 1;
      *(v94 + v18 + 32) = v19 & 0x7F;
      ++v2;
      ++v18;
      --v14;
    }

    while (v14);

    a2 = v16;
    a1 = v15;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v21 = v93;
  if (!*(v17 + 16))
  {

    v23 = 0;
    v24 = 2;
LABEL_71:
    a2(v23, v24);
    return;
  }

  if (sub_1AD4F2A1C(5, v17))
  {
    v22 = [objc_opt_self() errorWithCommonType:3 severity:5];
    goto LABEL_32;
  }

  if (sub_1AD4F2A1C(6, v17))
  {
    v22 = [objc_opt_self() errorWithCommonType:5 severity:5];
    goto LABEL_32;
  }

  if (sub_1AD4F2A1C(3, v17))
  {
    v22 = [objc_opt_self() errorWithCommonType:9 severity:4];
    goto LABEL_32;
  }

  if (sub_1AD4F2A1C(7, v17))
  {
    v22 = [objc_opt_self() errorWithCommonType:6 severity:5];
    goto LABEL_32;
  }

  if (sub_1AD4F2A1C(8, v17))
  {
    v22 = [objc_opt_self() errorWithCommonType:10 severity:5];
    goto LABEL_32;
  }

  if (!sub_1AD4F2A1C(12, v17) && !sub_1AD4F2A1C(13, v17))
  {
    if (sub_1AD4F2A1C(31, v17))
    {
      v49 = PKPassKitBundle();
      if (v49)
      {
        v50 = v49;
        v51 = sub_1ADB06370();
        v52 = sub_1ADB06370();
        v53 = sub_1ADB06370();
        v2 = [v50 localizedStringForKey:v51 value:v52 table:v53];

        if (!v2)
        {
          sub_1ADB063B0();
          v2 = sub_1ADB06370();
        }

        v54 = PKPassKitBundle();
        if (v54)
        {
          v55 = v54;
          v56 = sub_1ADB06370();
          v57 = sub_1ADB06370();
          v58 = sub_1ADB06370();
          v59 = [v55 localizedStringForKey:v56 value:v57 table:v58];

          if (!v59)
          {
            sub_1ADB063B0();
            v59 = sub_1ADB06370();
          }

          v60 = [objc_opt_self() errorWithTitle:v2 message:v59 severity:5];
LABEL_54:
          v25 = v60;

          goto LABEL_64;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (!sub_1AD4F2A1C(32, v17) && !sub_1AD4F2A1C(19, v17))
      {
        if (!sub_1AD4F2A1C(34, v17))
        {
          goto LABEL_65;
        }

        v2 = 0xD000000000000016;
        swift_beginAccess();
        v82 = PKPassKitBundle();
        if (v82)
        {
          v83 = v82;
          v84 = sub_1ADB06370();
          v85 = sub_1ADB06370();
          v86 = sub_1ADB06370();
          v2 = [v83 localizedStringForKey:v84 value:v85 table:v86];

          if (!v2)
          {
            sub_1ADB063B0();
            v2 = sub_1ADB06370();
          }

          v87 = PKPassKitBundle();
          if (v87)
          {
            v88 = v87;
            v89 = sub_1ADB06370();

            v90 = sub_1ADB06370();
            v91 = sub_1ADB06370();
            v59 = [v88 localizedStringForKey:v89 value:v90 table:v91];

            if (!v59)
            {
              sub_1ADB063B0();
              v59 = sub_1ADB06370();
            }

            v60 = [objc_opt_self() errorWithTitle:v2 message:v59 severity:5];
            goto LABEL_54;
          }

LABEL_85:

          __break(1u);
          return;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v2 = 0xD000000000000016;
      swift_beginAccess();
      v61 = PKPassKitBundle();
      if (v61)
      {
        v62 = v61;
        v63 = sub_1ADB06370();
        v64 = sub_1ADB06370();
        v65 = sub_1ADB06370();
        v2 = [v62 localizedStringForKey:v63 value:v64 table:v65];

        if (!v2)
        {
          sub_1ADB063B0();
          v2 = sub_1ADB06370();
        }

        v66 = PKPassKitBundle();
        if (v66)
        {
          v67 = v66;
          v68 = sub_1ADB06370();

          v69 = sub_1ADB06370();
          v70 = sub_1ADB06370();
          v71 = [v67 localizedStringForKey:v68 value:v69 table:v70];

          if (!v71)
          {
            sub_1ADB063B0();
            v71 = sub_1ADB06370();
          }

          v25 = [objc_opt_self() errorWithTitle:v2 message:v71 severity:5];
LABEL_64:
          v21 = v93;
          if (v25)
          {
            goto LABEL_33;
          }

          goto LABEL_65;
        }

        goto LABEL_83;
      }
    }

    __break(1u);
LABEL_83:

    __break(1u);
    goto LABEL_84;
  }

  v22 = [objc_opt_self() errorWithCommonType:11 severity:5];
LABEL_32:
  v25 = v22;
  if (!v25)
  {
LABEL_65:

    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v72 = sub_1ADB05FA0();
    __swift_project_value_buffer(v72, qword_1EB59AB68);

    v73 = sub_1ADB05F80();
    v74 = sub_1ADB06850();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v95 = v76;
      *v75 = 136315394;
      v77 = sub_1AD3CA88C(v92, v21, &v95);

      *(v75 + 4) = v77;
      *(v75 + 12) = 2080;
      v78 = MEMORY[0x1B26F66B0](a1, &type metadata for ProvisioningRequirement);
      v80 = a2;
      v81 = sub_1AD3CA88C(v78, v79, &v95);

      *(v75 + 14) = v81;
      a2 = v80;
      _os_log_impl(&dword_1AD337000, v73, v74, "[%s] ProvisioningStepValidatePreconditions: Failed to validate. Missing: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v76, -1, -1);
      MEMORY[0x1B26F9F20](v75, -1, -1);
    }

    else
    {
    }

    v23 = a1;
    v24 = 0;
    goto LABEL_71;
  }

LABEL_33:
  v26 = *(v17 + 16);
  if (v26)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1AD4506A8(0, v26, 0);
    v27 = 32;
    v28 = v95;
    do
    {
      v29 = ProvisioningRequirement.RequirementType.rawValue.getter();
      v95 = v28;
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = a2;
        v35 = v29;
        v36 = v30;
        sub_1AD4506A8((v31 > 1), v32 + 1, 1);
        v30 = v36;
        v29 = v35;
        a2 = v34;
        v21 = v93;
        v28 = v95;
      }

      *(v28 + 16) = v32 + 1;
      v33 = v28 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      ++v27;
      --v26;
    }

    while (v26);
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v95 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  sub_1ADB062F0();

  v37 = sub_1ADB06370();

  [v25 addInternalDebugDescription_];

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v38 = sub_1ADB05FA0();
  __swift_project_value_buffer(v38, qword_1EB59AB68);

  v39 = v25;
  v40 = sub_1ADB05F80();
  v41 = sub_1ADB06860();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v21;
    v45 = swift_slowAlloc();
    v95 = v45;
    *v42 = 136315394;
    v46 = sub_1AD3CA88C(v92, v44, &v95);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2112;
    *(v42 + 14) = v39;
    *v43 = v25;
    v47 = v39;
    _os_log_impl(&dword_1AD337000, v40, v41, "[%s] ProvisioningStepValidatePreconditions: Failed to validate requirements with error: %@", v42, 0x16u);
    sub_1AD3CAFA0(v43);
    MEMORY[0x1B26F9F20](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x1B26F9F20](v45, -1, -1);
    MEMORY[0x1B26F9F20](v42, -1, -1);
  }

  else
  {
  }

  v48 = v39;
  a2(v25, 1);
}

uint64_t sub_1AD4554C8(char a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if ((a1 & 1) == 0 || a2)
    {
      v10 = *(result + 16);
      v9 = *(result + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      v13 = *(v8 + 48);
      v17 = *(v8 + 24);
      v18 = v11;
      v19 = v12;
      v20 = v13;
      sub_1AD3DF24C(v9, v11, v12, v13);
      v14 = sub_1AD433FC8(a2, v10, &v17);
      sub_1AD3CC2E0(v17, v18, v19, v20);
      v15 = sub_1ADB06370();
      [v14 addInternalDebugDescription_];

      v16 = v14;
      a4(v14, 1);
    }

    else
    {
      a4(0, 2);
    }
  }

  return result;
}

void sub_1AD4555F0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 paymentPass];
  v10 = *(*(a2 + 16) + 48);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v11 = v10;
  v12 = sub_1ADB068B0();
  v13 = [objc_allocWithZone(PKSharedPassSharesController) initWithPass:v9 webService:v11 paymentServiceProvider:0 queue:v12];

  if (v13)
  {
    [v13 setIsOwnerSharing_];
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a4;
    v14[4] = a5;
    v17[4] = sub_1AD456F7C;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1AD471DC4;
    v17[3] = &block_descriptor_88;
    v15 = _Block_copy(v17);
    v16 = v13;

    [v16 updateSharesWithCompletion_];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD45579C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v8[4] = sub_1AD456F88;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1AD4D6334;
  v8[3] = &block_descriptor_94_0;
  v7 = _Block_copy(v8);

  [a1 canTransferWithCompletion_];
  _Block_release(v7);
}

void sub_1AD455880(void *a1, void (*a2)(id, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    v5 = sub_1ADB05CB0();
    v6 = [objc_opt_self() errorWithUnderlyingError:v5 defaultSeverity:5];

    v7 = sub_1ADB06370();
    [v6 addInternalDebugDescription_];

    v8 = v6;
    a2(v6, 1);
  }

  else
  {
    a2(0, 2);
  }
}

void sub_1AD455988(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, void), uint64_t a5, void *a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(a2 + 56);

  v60 = a6;
  v62 = v13;
  v14 = [v13 sid];
  v58 = sub_1ADB063B0();
  v16 = v15;

  v17 = *(a2 + 16);
  swift_beginAccess();
  v18 = 0;
  v19 = *(v17 + 16);
  if (!*(a2 + 48))
  {
    v18 = *(a2 + 24);
  }

  v61 = a2;
  [v19 setState:2 forCredential:{v18, v58}];

  if (!*(a1 + 16))
  {

    swift_beginAccess();
    v40 = *(a3 + 16);
    *(a3 + 16) = 0;
    v41 = *(a3 + 24);
    *(a3 + 24) = 2;
    sub_1AD45678C(v40, v41);
    a4(v60, 0);
LABEL_20:

    return;
  }

  swift_beginAccess();
  v20 = *(v17 + 72);
  v21 = *(v17 + 80);
  v22 = v20;
  v23 = [v22 targetDevice];
  if (!v23)
  {

    __break(1u);
LABEL_23:

    __break(1u);
    return;
  }

  v24 = v23;

  if (([v24 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v25 = [v24 supportsCheckingProvisioningRequirements];
  swift_unknownObjectRelease();
  if ((v25 & 1) == 0)
  {
LABEL_14:
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v42 = sub_1ADB05FA0();
    __swift_project_value_buffer(v42, qword_1EB59AB68);

    v43 = sub_1ADB05F80();
    v44 = sub_1ADB06860();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136315138;
      v47 = sub_1AD3CA88C(v59, v16, aBlock);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_1AD337000, v43, v44, "[%s] Falling back to local requirements checker", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1B26F9F20](v46, -1, -1);
      MEMORY[0x1B26F9F20](v45, -1, -1);
    }

    else
    {
    }

    v48 = *(v17 + 72);
    v49 = type metadata accessor for LocalProvisioningRequirementsChecker();
    v50 = objc_allocWithZone(v49);
    *&v50[OBJC_IVAR____TtC11PassKitCore36LocalProvisioningRequirementsChecker_webService] = v48;
    v65.receiver = v50;
    v65.super_class = v49;
    v51 = v48;
    v52 = objc_msgSendSuper2(&v65, sel_init);
    v53 = [v62 sid];
    v54 = sub_1ADB063B0();
    v56 = v55;

    v57 = swift_allocObject();
    v57[2] = v61;
    v57[3] = sub_1AD456F9C;
    v57[4] = v12;

    sub_1AD441B54(a1, v54, v56, sub_1AD456FF8, v57);

    goto LABEL_20;
  }

  v26 = type metadata accessor for ProvisioningRequirementsContainer();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v28 = 0;
  *(v28 + 1) = 0;
  *&v27[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = a1;
  v64.receiver = v27;
  v64.super_class = v26;

  v29 = objc_msgSendSuper2(&v64, sel_init);
  v30 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  v31 = [v62 sid];
  if (!v31)
  {
    sub_1ADB063B0();
    v31 = sub_1ADB06370();
  }

  [v30 setProvisioningSID_];

  v32 = *(v17 + 72);
  v33 = *(v17 + 80);
  v34 = v32;
  v35 = [v34 targetDevice];
  if (!v35)
  {
    goto LABEL_23;
  }

  v36 = v35;

  if ([v36 respondsToSelector_])
  {
    v37 = swift_allocObject();
    v37[2] = v61;
    v37[3] = sub_1AD456F9C;
    v37[4] = v12;
    aBlock[4] = sub_1AD456FFC;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD454580;
    aBlock[3] = &block_descriptor_118;
    v38 = _Block_copy(aBlock);
    v39 = v30;

    [v36 meetsProvisioningRequirements:v39 completion:v38];
    _Block_release(v38);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1AD45601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 56);

  v10 = [v9 sid];
  v52 = sub_1ADB063B0();
  v12 = v11;

  v13 = *(a2 + 16);
  swift_beginAccess();
  v14 = 0;
  v15 = *(v13 + 16);
  if (!*(a2 + 48))
  {
    v14 = *(a2 + 24);
  }

  [v15 setState:2 forCredential:{v14, v52}];

  if (!*(a1 + 16))
  {

    sub_1AD454298(0, 2, a3, a4);
LABEL_20:

    return;
  }

  v54 = a1;
  swift_beginAccess();
  v16 = *(v13 + 72);
  v17 = *(v13 + 80);
  v18 = v16;
  v19 = [v18 targetDevice];
  if (!v19)
  {

    __break(1u);
LABEL_23:

    __break(1u);
    return;
  }

  v20 = v19;

  if (([v20 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v21 = [v20 supportsCheckingProvisioningRequirements];
  swift_unknownObjectRelease();
  if ((v21 & 1) == 0)
  {
LABEL_14:
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v36 = sub_1ADB05FA0();
    __swift_project_value_buffer(v36, qword_1EB59AB68);

    v37 = sub_1ADB05F80();
    v38 = sub_1ADB06860();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315138;
      v41 = sub_1AD3CA88C(v53, v12, aBlock);

      *(v39 + 4) = v41;
      _os_log_impl(&dword_1AD337000, v37, v38, "[%s] Falling back to local requirements checker", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1B26F9F20](v40, -1, -1);
      MEMORY[0x1B26F9F20](v39, -1, -1);
    }

    else
    {
    }

    v42 = *(v13 + 72);
    v43 = type metadata accessor for LocalProvisioningRequirementsChecker();
    v44 = objc_allocWithZone(v43);
    *&v44[OBJC_IVAR____TtC11PassKitCore36LocalProvisioningRequirementsChecker_webService] = v42;
    v57.receiver = v44;
    v57.super_class = v43;
    v45 = v42;
    v46 = objc_msgSendSuper2(&v57, sel_init);
    v47 = [v9 sid];
    v48 = sub_1ADB063B0();
    v50 = v49;

    v51 = swift_allocObject();
    v51[2] = a2;
    v51[3] = sub_1AD456644;
    v51[4] = v8;

    sub_1AD441B54(v54, v48, v50, sub_1AD45664C, v51);

    goto LABEL_20;
  }

  v22 = type metadata accessor for ProvisioningRequirementsContainer();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____PKProvisioningRequirementsContainer_provisioningSID];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v23[OBJC_IVAR____PKProvisioningRequirementsContainer_requirements] = a1;
  v56.receiver = v23;
  v56.super_class = v22;

  v25 = objc_msgSendSuper2(&v56, sel_init);
  v26 = [objc_allocWithZone(PKProvisioningRequirementsContainer) initWithContainer_];

  v27 = [v9 sid];
  if (!v27)
  {
    sub_1ADB063B0();
    v27 = sub_1ADB06370();
  }

  [v26 setProvisioningSID_];

  v28 = *(v13 + 72);
  v29 = *(v13 + 80);
  v30 = v28;
  v31 = [v30 &selRef_stringByReplacingOccurrencesOfString_withString_options_range_];
  if (!v31)
  {
    goto LABEL_23;
  }

  v32 = v31;

  if ([v32 respondsToSelector_])
  {
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = sub_1AD456644;
    v33[4] = v8;
    aBlock[4] = sub_1AD45667C;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD454580;
    aBlock[3] = &block_descriptor_16;
    v34 = _Block_copy(aBlock);
    v35 = v26;

    [v32 meetsProvisioningRequirements:v35 completion:v34];
    _Block_release(v34);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1AD4566A0(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

id sub_1AD4566F0(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t objectdestroy_23Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1AD45678C(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1AD4566A0(a1, a2);
  }
}

id sub_1AD4567AC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AD4566F0(result, a2);
  }

  return result;
}

void sub_1AD4567C0(uint64_t a1, uint64_t a2, void (*a3)(void *, void), uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v74 = *(a1 + 24);
  v75 = v9;
  v76 = v10;
  v11 = ProvisioningCredentialsConfiguration.Credential.pushableConfiguration.getter();
  if (!v11)
  {
    goto LABEL_21;
  }

  v12 = [v11 identityDocumentConfiguration];
  swift_unknownObjectRelease();
  if (!v12)
  {
    goto LABEL_21;
  }

  if ([v12 configurationType] != 4)
  {

LABEL_21:
    swift_beginAccess();
    v36 = *(a2 + 16);
    *(a2 + 16) = 0;
    v37 = *(a2 + 24);
    *(a2 + 24) = 2;
    sub_1AD45678C(v36, v37);
    a3(a5, 0);
    return;
  }

  v13 = *(a1 + 16);
  swift_beginAccess();
  v15 = *(v13 + 72);
  v14 = *(v13 + 80);
  LOBYTE(v73[0]) = *(v13 + 64);
  v73[1] = v15;
  v73[2] = v14;
  v16 = v14;
  v17 = v15;
  v71 = v12;
  v18 = [v12 metadata];
  v19 = [v18 documentType];

  v20 = objc_allocWithZone(type metadata accessor for PKIdentityAddPassRequirementsChecker());
  v72 = PKIdentityAddPassRequirementsChecker.init(device:documentType:region:)(v73, v19, 0, 0, 0, 0, 0);
  v21 = *(v13 + 72);
  v22 = *(v13 + 80);
  v23 = v21;
  v24 = [v23 targetDevice];
  if (!v24)
  {

    __break(1u);
    goto LABEL_67;
  }

  v25 = v24;

  if (([v25 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v26 = *(v13 + 72);
  v27 = [v25 paymentWebService:v26 passesOfType:1];
  swift_unknownObjectRelease();
  if (!v27)
  {

    goto LABEL_25;
  }

  sub_1AD3D3200(0, &unk_1EB599EE0);
  v28 = sub_1ADB06610();

  v29 = sub_1AD3D1BF0(v28);

  if (!v29)
  {
LABEL_25:
    swift_beginAccess();
    v38 = *(a2 + 16);
    *(a2 + 16) = 0;
    v39 = *(a2 + 24);
    *(a2 + 24) = 2;
    sub_1AD45678C(v38, v39);
    a3(a5, 0);
    goto LABEL_26;
  }

  v69 = a3;
  v70 = a5;
  v73[0] = MEMORY[0x1E69E7CC0];
  if (v29 >> 62)
  {
    goto LABEL_30;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_isEqualToArchiveLocation_; v30; i = &selRef_isEqualToArchiveLocation_)
  {
    v32 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1B26F6CC0](v32, v29);
      }

      else
      {
        if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v33 = *(v29 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if ([v33 i[207]])
      {
        sub_1ADB06C80();
        sub_1ADB06CB0();
        sub_1ADB06CC0();
        sub_1ADB06C90();
        i = &selRef_isEqualToArchiveLocation_;
      }

      else
      {
      }

      ++v32;
      if (v35 == v30)
      {
        a5 = v73[0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_1ADB06D00();
  }

  a5 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v40 = &v72[OBJC_IVAR____TtC11PassKitCore36PKIdentityAddPassRequirementsChecker_documentType];
  v41 = v69;
  v42 = v70;
  if (v72[OBJC_IVAR____TtC11PassKitCore36PKIdentityAddPassRequirementsChecker_documentType + 8])
  {
    goto LABEL_53;
  }

  v43 = *v40;
  if (*v40 == 2)
  {
    goto LABEL_53;
  }

  if (a5 < 0 || (a5 & 0x4000000000000000) != 0)
  {
LABEL_65:
    v44 = sub_1ADB06D00();
  }

  else
  {
    v44 = *(a5 + 16);
  }

  v45 = 0;
  v68 = 0;
  v41 = (a5 & 0xC000000000000001);
  while (2)
  {
    if (v45 == v44)
    {
LABEL_54:

      v41 = v69;
      v42 = v70;
      if (v68 <= 0)
      {
        goto LABEL_62;
      }

      v50 = PKPassKitBundle();
      if (v50)
      {
        v51 = v50;
        v52 = sub_1ADB06370();
        v53 = sub_1ADB06370();
        v54 = sub_1ADB06370();
        a5 = [v51 localizedStringForKey:v52 value:v53 table:v54];

        if (!a5)
        {
          sub_1ADB063B0();
          a5 = sub_1ADB06370();
        }

        v55 = PKPassKitBundle();
        if (v55)
        {
          v56 = v55;
          v57 = sub_1ADB06370();
          v58 = sub_1ADB06370();
          v59 = sub_1ADB06370();
          v60 = [v56 localizedStringForKey:v57 value:v58 table:v59];

          if (!v60)
          {
            sub_1ADB063B0();
            v60 = sub_1ADB06370();
          }

          v61 = [objc_opt_self() errorWithTitle:a5 message:v60 severity:6];
          swift_beginAccess();
          v62 = *(a2 + 16);
          *(a2 + 16) = v61;
          v63 = *(a2 + 24);
          *(a2 + 24) = 1;
          v64 = v61;
          sub_1AD45678C(v62, v63);
          v65 = v64;
          v69(v70, 1);

          return;
        }

LABEL_68:

        __break(1u);
        return;
      }

LABEL_67:

      __break(1u);
      goto LABEL_68;
    }

    while (1)
    {
      if (v41)
      {
        v46 = MEMORY[0x1B26F6CC0](v45, a5);
      }

      else
      {
        if (v45 >= *(a5 + 16))
        {
          goto LABEL_64;
        }

        v46 = *(a5 + 8 * v45 + 32);
      }

      v47 = v46;
      v42 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if ([v46 isIdentityPass])
      {
        break;
      }

LABEL_41:
      ++v45;
      if (v42 == v44)
      {
        goto LABEL_54;
      }
    }

    v48 = PKAddIdentityDocumentTypeFrom([v47 identityType]);

    if (v48 != v43)
    {
      goto LABEL_41;
    }

    ++v45;
    if (!__OFADD__(v68++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_53:

LABEL_62:
  swift_beginAccess();
  v66 = *(a2 + 16);
  *(a2 + 16) = 0;
  v67 = *(a2 + 24);
  *(a2 + 24) = 2;
  sub_1AD45678C(v66, v67);
  v41(v42, 0);
LABEL_26:
}