uint64_t sub_22CE66DD0()
{
  v2 = *v0;
  v1 = v0[1];
  v5 = *(v0 + 2);
  v6 = *(v0 + 1);
  v3 = *(v0 + 24) | (*(v0 + 50) << 16);
  sub_22CE86204();
  if (v3 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    PushSubscription.SubscriptionType.Activity.hash(into:)();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66E88()
{
  if (((*(v0 + 24) | (*(v0 + 50) << 16)) & 0x80000000) == 0)
  {
    return 0x74536F5468737570;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v2 = PushSubscription.SubscriptionType.Activity.description.getter();
  MEMORY[0x2318C1750](v2);

  return 0x7974697669746361;
}

uint64_t static PushSubscription.pushToStartSubscriptionID(topic:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  return v2;
}

uint64_t PushSubscription.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t PushSubscription.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

__n128 PushSubscription.subscriptionType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v8 = *(v1 + 64);
  v7 = v1 + 64;
  sub_22CE62988(*(v7 - 48), *(v7 - 40), *(v7 - 32), *(v7 - 24), *(v7 - 16), *(v7 - 8), v8 | (*(v7 + 2) << 16));
  result = *a1;
  v10 = *(a1 + 16);
  *(v7 - 48) = *a1;
  *(v7 - 32) = v10;
  *(v7 - 16) = v3;
  *(v7 - 8) = v4;
  *(v7 + 2) = v6;
  *v7 = v5;
  return result;
}

uint64_t PushSubscription.owner.getter()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_22CE85B74();
}

uint64_t PushSubscription.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v13 = *(v0 + 3);
  v14 = *(v0 + 2);
  v5 = *(v0 + 32) | (*(v0 + 66) << 16);
  v6 = *(v0 + 67);
  sub_22CE860F4();

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v2, v1);

  MEMORY[0x2318C1750](0xD000000000000014, 0x800000022CE8A750);
  if (v5 < 0)
  {
    v9 = PushSubscription.SubscriptionType.Activity.description.getter();
    MEMORY[0x2318C1750](v9);

    v8 = 0x7974697669746361;
    v7 = 0xEA0000000000203ALL;
  }

  else
  {
    v7 = 0xEB00000000747261;
    v8 = 0x74536F5468737570;
  }

  MEMORY[0x2318C1750](v8, v7);

  MEMORY[0x2318C1750](0x69726F697270203BLL, 0xEC000000203A7974);
  if (v6)
  {
    if (v6 == 1)
    {
      v10 = 0xED00006369747369;
      v11 = 0x6E7574726F70706FLL;
    }

    else
    {
      v10 = 0xE900000000000067;
      v11 = 0x6E696B61576E6F6ELL;
    }
  }

  else
  {
    v10 = 0xE600000000000000;
    v11 = 0x6C616D726F6ELL;
  }

  MEMORY[0x2318C1750](v11, v10);

  return 0x203A6369706F74;
}

uint64_t static PushSubscription.activityTokenSubscription(activityIdentifier:environmentName:topic:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char *a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v9 = a5[1];
  v10 = *a6;
  *a9 = *a5;
  *(a9 + 8) = v9;
  if (a8)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  if (a7)
  {
    v12 = -8388352;
  }

  else
  {
    v12 = -8388608;
  }

  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = 0;
  *(a9 + 56) = 0;
  *(a9 + 64) = v12;
  *(a9 + 66) = (v12 | v11) >> 16;
  *(a9 + 67) = v10;
}

__n128 PushSubscription.init(activityIdentifier:topic:pushType:priority:isEphemeral:exceededReducedBudget:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = a3[1];
  v9 = *(a4 + 32);
  v10 = *a5;
  *a8 = *a3;
  *(a8 + 8) = v8;
  if (a7)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  if (a6)
  {
    v12 = -8388352;
  }

  else
  {
    v12 = -8388608;
  }

  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  result = *a4;
  v14 = *(a4 + 16);
  *(a8 + 32) = *a4;
  *(a8 + 48) = v14;
  *(a8 + 64) = v12 & 0xFFFC | v9 & 3;
  *(a8 + 66) = (v12 | v11) >> 16;
  *(a8 + 67) = v10;
  return result;
}

uint64_t static PushSubscription.activityChannelSubscription(activityIdentifier:environmentName:topic:channel:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  v11 = a5[1];
  v12 = *a8;
  *a9 = *a5;
  *(a9 + 8) = v11;
  if (a10)
  {
    v13 = -8388351;
  }

  else
  {
    v13 = -8388607;
  }

  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = v13;
  *(a9 + 66) = BYTE2(v13) | ((a11 & 1) != 0);
  *(a9 + 67) = v12;
}

uint64_t static PushSubscription.externalSubscription(activityIdentifier:environmentName:topic:priority:isEphemeral:exceededReducedBudget:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, char *a4@<X5>, char a5@<W6>, char a6@<W7>, uint64_t a7@<X8>)
{
  v7 = a3[1];
  v8 = *a4;
  *a7 = *a3;
  *(a7 + 8) = v7;
  if (a6)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (a5)
  {
    v10 = -8388350;
  }

  else
  {
    v10 = -8388606;
  }

  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = v10;
  *(a7 + 66) = (v10 | v9) >> 16;
  *(a7 + 67) = v8;
}

uint64_t static PushSubscription.pushToStartSubscription(environmentName:topic:priority:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[1];
  v6 = *a4;
  *a5 = *a3;
  *(a5 + 8) = v5;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 63) = 0;
  *(a5 + 67) = v6;
}

uint64_t PushSubscription.priority(applying:budget:)(void *a1, uint64_t a2)
{
  v4 = *(v2 + 67);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v8 = v4;
  return (*(v6 + 8))(&v8, a2, v5, v6);
}

uint64_t sub_22CE6762C@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 32) | (*(v1 + 66) << 16)) < 0)
  {
    v6 = v1 + 2;
    v4 = v1[2];
    v5 = v6[1];
  }

  else
  {
    v7 = *v1;
    v8 = v1[1];

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v4 = v7;
    result = v8;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t PushSubscription.channel.getter()
{
  v1 = 0;
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x800000) != 0)
  {
    *(v0 + 66);
    if (*(v0 + 64) == 1)
    {
      v1 = *(v0 + 48);
      v2 = *(v0 + 56);
    }
  }

  return v1;
}

uint64_t PushSubscription.environment.getter()
{
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x800000) != 0)
  {
    if ((*(v0 + 64) & 0xFE) != 0)
    {
      return 0;
    }

    v2 = (v0 + 40);
    v1 = (v0 + 32);
  }

  else
  {
    v1 = (v0 + 16);
    v2 = (v0 + 24);
  }

  v3 = *v2;
  v4 = *v1;

  return v4;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      v19 = *a1;
      if (v3 == v8 && v2 == v7)
      {
        sub_22CE62924(v19, v2, v10, v9, 0);
        sub_22CE62924(v3, v2, v5, v4, 0);
        sub_22CE62A0C(v3, v2, v5, v4, 0);
        v14 = v3;
        v15 = v2;
        v16 = v10;
        v17 = v9;
        v18 = 0;
        goto LABEL_28;
      }

      v21 = sub_22CE86194();
      sub_22CE62924(v8, v7, v10, v9, 0);
      sub_22CE62924(v3, v2, v5, v4, 0);
      sub_22CE62A0C(v3, v2, v5, v4, 0);
      v22 = v8;
      v23 = v7;
      v24 = v10;
      v25 = v9;
      v26 = 0;
LABEL_25:
      sub_22CE62A0C(v22, v23, v24, v25, v26);
      return v21 & 1;
    }

    goto LABEL_22;
  }

  if (v6 != 1)
  {
    if (v11 == 2 && (v7 | v8 | v10 | v9) == 0)
    {
      sub_22CE62A0C(*a1, v2, v5, v4, 2);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 2;
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (v11 != 1)
  {
LABEL_22:
    sub_22CE62924(*a2, *(a2 + 8), v10, v9, v11);
    sub_22CE62924(v3, v2, v5, v4, v6);
    sub_22CE62A0C(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_23:
    sub_22CE62A0C(v28, v29, v30, v31, v32);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v13 = *a1;
    if ((sub_22CE86194() & 1) == 0)
    {
      sub_22CE62924(v8, v7, v10, v9, 1);
      sub_22CE62924(v3, v2, v5, v4, 1);
      sub_22CE62A0C(v3, v2, v5, v4, 1);
      v28 = v8;
      v29 = v7;
      v30 = v10;
      v31 = v9;
      v32 = 1;
      goto LABEL_23;
    }
  }

  if (v5 != v10 || v4 != v9)
  {
    v21 = sub_22CE86194();
    sub_22CE62924(v8, v7, v10, v9, 1);
    sub_22CE62924(v3, v2, v5, v4, 1);
    sub_22CE62A0C(v3, v2, v5, v4, 1);
    v22 = v8;
    v23 = v7;
    v24 = v10;
    v25 = v9;
    v26 = 1;
    goto LABEL_25;
  }

  sub_22CE62924(v8, v7, v5, v4, 1);
  sub_22CE62924(v3, v2, v5, v4, 1);
  sub_22CE62A0C(v3, v2, v5, v4, 1);
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v17 = v4;
  v18 = 1;
LABEL_28:
  sub_22CE62A0C(v14, v15, v16, v17, v18);
  return 1;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v17 = *(a2 + 49);
  v18 = *(a1 + 49);
  v15 = *(a2 + 50);
  v16 = *(a1 + 50);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v12 = sub_22CE86194(), result = 0, (v12 & 1) != 0))
  {
    v24 = v2;
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v28 = v6;
    v19 = v7;
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    sub_22CE62924(v2, v3, v4, v5, v6);
    sub_22CE62924(v7, v8, v9, v10, v11);
    v14 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O2eeoiySbAI_AItFZ_0(&v24, &v19);
    sub_22CE62A0C(v19, v20, v21, v22, v23);
    sub_22CE62A0C(v24, v25, v26, v27, v28);
    result = 0;
    if ((v14 & 1) != 0 && ((v18 ^ v17) & 1) == 0)
    {
      return v16 ^ v15 ^ 1u;
    }
  }

  return result;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48) | (*(a1 + 50) << 16);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 48) | (*(a2 + 50) << 16);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  if (v8 < 0)
  {
    if (v13 < 0)
    {
      v50[0] = *a1;
      v50[1] = v2;
      v32 = v2;
      v50[2] = v4;
      v50[3] = v5;
      v50[4] = v7;
      v50[5] = v6;
      v51 = v8 & 0x1FF;
      v52 = BYTE2(v8) & 1;
      v47[0] = v10;
      v47[1] = v9;
      v47[2] = v11;
      v47[3] = v12;
      v47[4] = v14;
      v47[5] = v15;
      v40 = v11;
      v48 = v13 & 0x1FF;
      v49 = BYTE2(v13) & 1;
      v43 = v9;
      v45 = v10;
      v26 = v11;
      v27 = v12;
      v33 = v12;
      v28 = v5;
      v29 = v9;
      v30 = v8;
      sub_22CE449A4(v10, v9, v26, v27, v14, v15, v13);
      sub_22CE449A4(v3, v32, v4, v28, v7, v6, v30);
      sub_22CE449A4(v45, v29, v40, v33, v14, v15, v13);
      sub_22CE449A4(v3, v32, v4, v28, v7, v6, v30);
      v19 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV2eeoiySbAG_AGtFZ_0(v50, v47);
      sub_22CE62988(v3, v32, v4, v28, v7, v6, v30);
      sub_22CE62988(v45, v43, v40, v33, v14, v15, v13);
      sub_22CE62988(v45, v43, v40, v33, v14, v15, v13);
      sub_22CE62988(v3, v32, v4, v28, v7, v6, v30);
      return v19 & 1;
    }

    goto LABEL_7;
  }

  if (v13 < 0)
  {
LABEL_7:
    v42 = *(a2 + 8);
    v44 = *a2;
    v46 = *(a2 + 32);
    v20 = *(a1 + 48) | (*(a1 + 50) << 16);
    v35 = *(a2 + 48) | (*(a2 + 50) << 16);
    v21 = *(a1 + 8);
    sub_22CE449A4(*a2, v42, v11, v12, v46, v15, v35);
    sub_22CE449A4(v3, v21, v4, v5, v7, v6, v20);
    sub_22CE62988(v3, v21, v4, v5, v7, v6, v20);
    sub_22CE62988(v44, v42, v11, v12, v46, v15, v35);
    v19 = 0;
    return v19 & 1;
  }

  v36 = *(a1 + 48) | (*(a1 + 50) << 16);
  v34 = *(a1 + 24);
  v39 = *(a2 + 16);
  v41 = *(a1 + 32);
  v37 = *(a1 + 40);
  v38 = *(a2 + 40);
  if (v3 != v10 || v2 != v9)
  {
    v22 = *a2;
    v23 = *(a2 + 8);
    v24 = *(a1 + 8);
    v31 = sub_22CE86194();
    sub_22CE449A4(v22, v23, v11, v12, v14, v15, v13);
    sub_22CE449A4(v3, v24, v4, v34, v41, v37, v36);
    sub_22CE62988(v3, v24, v4, v34, v41, v37, v36);
    sub_22CE62988(v22, v23, v11, v12, v14, v15, v13);
    return v31 & 1;
  }

  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a1 + 8);
  sub_22CE449A4(v3, v2, v11, v16, v17, v15, v13);
  sub_22CE449A4(v3, v18, v4, v34, v7, v6, v36);
  sub_22CE62988(v3, v18, v4, v34, v7, v6, v36);
  sub_22CE62988(v3, v18, v11, v16, v17, v15, v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t _s24SessionPushNotifications0B12SubscriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 66);
  v9 = *(a1 + 64);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a2 + 66);
  v17 = *(a2 + 64);
  v34 = *(a2 + 67);
  v35 = *(a1 + 67);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    goto LABEL_4;
  }

  v30 = *(a2 + 56);
  v31 = *(a2 + 40);
  v18 = *(a1 + 48);
  v32 = *(a2 + 32);
  v33 = *(a2 + 48);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v28 = *(a2 + 24);
  v29 = *(a2 + 16);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 66);
  v24 = sub_22CE86194();
  v8 = v23;
  v5 = v18;
  v6 = v22;
  v11 = v28;
  v4 = v21;
  v10 = v29;
  v15 = v30;
  v3 = v20;
  v14 = v33;
  v2 = v19;
  v13 = v31;
  v12 = v32;
  v25 = v24;
  result = 0;
  if (v25)
  {
LABEL_4:
    v44 = v2;
    v45 = v3;
    v46 = v4;
    v47 = v6;
    v48 = v5;
    v49 = v7;
    v50 = v9;
    v51 = (v9 | (v8 << 16)) >> 16;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v43 = (v17 | (v16 << 16)) >> 16;
    v42 = v17;
    sub_22CE449A4(v2, v3, v4, v6, v5, v7, v9 | (v8 << 16));
    sub_22CE449A4(v10, v11, v12, v13, v14, v15, v17 | (v16 << 16));
    v27 = _s24SessionPushNotifications0B12SubscriptionV0D4TypeO2eeoiySbAE_AEtFZ_0(&v44, &v36);
    sub_22CE62988(v36, v37, v38, v39, v40, v41, v42 | (v43 << 16));
    sub_22CE62988(v44, v45, v46, v47, v48, v49, v50 | (v51 << 16));
    return v27 & (v35 == v34);
  }

  return result;
}

unint64_t sub_22CE6827C()
{
  result = qword_281445380;
  if (!qword_281445380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445380);
  }

  return result;
}

unint64_t sub_22CE682D4()
{
  result = qword_27D9EEEE8;
  if (!qword_27D9EEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEE8);
  }

  return result;
}

unint64_t sub_22CE6832C()
{
  result = qword_27D9EEEF0;
  if (!qword_27D9EEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEF0);
  }

  return result;
}

unint64_t sub_22CE68384()
{
  result = qword_27D9EEEF8;
  if (!qword_27D9EEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEEF8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24SessionPushNotifications0B12SubscriptionV0D4TypeO8ActivityV0bE0O(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22CE6841C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFF && *(a1 + 51))
  {
    return (*a1 + 0xFFFFF);
  }

  v3 = ((*(a1 + 50) >> 7) | (2 * ((*(a1 + 48) >> 3) & 0x1FC0 | (*(a1 + 48) >> 2) | (((*(a1 + 50) >> 1) & 0x3F) << 13)))) ^ 0xFFFFF;
  if (v3 >= 0xFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22CE68490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0xFFFFF;
    if (a3 >= 0xFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFF) - (a2 << 19);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 50) = (v3 >> 12) & 0xFE;
      *(result + 48) = (8 * v3) & 0xFE00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_22CE68524(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x7F;
  *result = v2;
  return result;
}

uint64_t sub_22CE68540(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 2) << 16)) & 0x10103 | (a2 << 23);
  *result = v3 & 0x103;
  *(result + 2) = BYTE2(v4);
  return result;
}

uint64_t sub_22CE6857C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_22CE685C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE68628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22CE68670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22CE686B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t DeviceActivityMonitor.__allocating_init(taskScheduler:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DeviceActivityMonitor.init(taskScheduler:)(a1);
  return v5;
}

uint64_t *DeviceActivityMonitor.init(taskScheduler:)(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v42 = *v1;
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22CE85974();
  v38 = *(v40 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22CE85FD4();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22CE85FB4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v43 = sub_22CE85D34();
  v41 = *(v43 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF00, &unk_22CE87740);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v1[3] = sub_22CE85CC4();
  v21 = sub_22CE4FC1C();
  v34[0] = "; subscriptionType: ";
  v34[1] = v21;
  sub_22CE85D24();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CE4265C(&qword_281445320, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v36 = MEMORY[0x277D83970];
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  (*(v9 + 104))(v12, *MEMORY[0x277D85260], v35);
  v1[4] = sub_22CE86004();
  *(v1 + 11) = 0u;
  *(v1 + 13) = 0u;
  v1[15] = 0;
  v22 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v39;
  sub_22CE40D28(v39, (v1 + 5));
  v24 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = [objc_allocWithZone(MEMORY[0x277CF89F8]) initWithOptions_];
  *(v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) = v25;
  v26 = v37;
  sub_22CE85954();
  (*(v38 + 32))(v2 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate, v26, v40);
  *(v2 + 80) = 1;
  sub_22CE68D68();
  v27 = v2[4];
  v28 = swift_allocObject();
  v29 = v42;
  *(v28 + 16) = v2;
  *(v28 + 24) = v29;
  aBlock[4] = sub_22CE691A0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_2;
  v30 = _Block_copy(aBlock);

  sub_22CE85D24();
  v47 = MEMORY[0x277D84F90];
  sub_22CE4265C(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  v32 = v44;
  v31 = v45;
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v17, v32, v30);
  _Block_release(v30);
  __swift_destroy_boxed_opaque_existential_1(v23);
  (*(v46 + 8))(v32, v31);
  (*(v41 + 8))(v17, v43);

  return v2;
}

void sub_22CE68D68()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  swift_weakInit();
  v14[4] = sub_22CE41CA4;
  v14[5] = v3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22CE41C44;
  v14[3] = &block_descriptor_32;
  v4 = _Block_copy(v14);

  v5 = IOPMScheduleUserActivityLevelNotificationWithTimeout();
  _Block_release(v4);
  v6 = v5 == 0;
  if (v5)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v7 = sub_22CE85C84();
    __swift_project_value_buffer(v7, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85FA4();
    if (!os_log_type_enabled(v8, v9))
    {
      v6 = 0;
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CE3F000, v8, v9, "Registered for device activity events", v10, 2u);
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v11 = sub_22CE85C84();
    __swift_project_value_buffer(v11, qword_281445368);
    v8 = sub_22CE85C74();
    v12 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v12))
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_13;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CE3F000, v8, v12, "Failed to register for device activity events", v10, 2u);
    v5 = 0;
  }

  MEMORY[0x2318C20D0](v10, -1, -1);
LABEL_13:

  v13 = v1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle;
  *v13 = v5;
  *(v13 + 8) = v6;
}

uint64_t sub_22CE68FD4(uint64_t a1)
{
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus;
  v11 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  sub_22CE691A8(v11, v9);

  (*(v3 + 16))(v7, v9, v2);
  v12 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v3 + 40))(a1 + v12, v7, v2);
  swift_endAccess();
  v13 = [*(a1 + v10) currentSession];
  LOBYTE(v7) = sub_22CE6A620(v9, v13);

  *(a1 + 80) = v7 & 1;
  sub_22CE44A24();
  return (*(v3 + 8))(v9, v2);
}

void sub_22CE691A8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v42 - v6;
  v8 = sub_22CE85974();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v42 - v14;
  if (a1)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v16 = sub_22CE85C84();
    __swift_project_value_buffer(v16, qword_281445368);
    v17 = sub_22CE85C74();
    v18 = sub_22CE85FA4();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_7;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Active CarPlay session; device is treated as active";
LABEL_6:
    _os_log_impl(&dword_22CE3F000, v17, v18, v20, v19, 2u);
    MEMORY[0x2318C20D0](v19, -1, -1);
LABEL_7:

    sub_22CE85954();
    return;
  }

  v42[0] = [objc_opt_self() userContext];
  if (!v42[0])
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v28 = sub_22CE85C84();
    __swift_project_value_buffer(v28, qword_281445368);
    v17 = sub_22CE85C74();
    v18 = sub_22CE85FA4();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_7;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Cannot obtain user context; device is treated as active";
    goto LABEL_6;
  }

  v21 = [objc_opt_self() keyPathForLastUseDate];
  if (v21)
  {
    v22 = v21;
    v23 = [v42[0] objectForContextualKeyPath_];
    if (v23)
    {
      v42[1] = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF48, &unk_22CE88640);
      v24 = swift_dynamicCast();
      (*(v9 + 56))(v7, v24 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        v25 = *(v9 + 32);
        v25(v15, v7, v8);
        sub_22CE85954();
        v26 = sub_22CE85904();
        v27 = *(v9 + 8);
        v27(v13, v8);
        if (v26)
        {

          v25(a2, v15, v8);
        }

        else
        {
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v38 = sub_22CE85C84();
          __swift_project_value_buffer(v38, qword_281445368);
          v39 = sub_22CE85C74();
          v40 = sub_22CE85FA4();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&dword_22CE3F000, v39, v40, "Reported last activity date is nonsense; device is treated as active", v41, 2u);
            MEMORY[0x2318C20D0](v41, -1, -1);
          }

          sub_22CE85954();
          v27(v15, v8);
        }

        return;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
    }

    sub_22CE42330(v7, &qword_27D9EEF40, &qword_22CE86C00);
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v34 = sub_22CE85C84();
    __swift_project_value_buffer(v34, qword_281445368);
    v35 = sub_22CE85C74();
    v36 = sub_22CE85FA4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22CE3F000, v35, v36, "Cannot obtain last activity date; device is treated as active", v37, 2u);
      MEMORY[0x2318C20D0](v37, -1, -1);
    }

    sub_22CE85954();
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v29 = sub_22CE85C84();
    __swift_project_value_buffer(v29, qword_281445368);
    v30 = sub_22CE85C74();
    v31 = sub_22CE85FA4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22CE3F000, v30, v31, "Cannot last use date keypath; device is treated as active", v32, 2u);
      MEMORY[0x2318C20D0](v32, -1, -1);
    }

    sub_22CE85954();
    v33 = v42[0];
  }
}

uint64_t DeviceActivityMonitor.deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle);
    IOPMUnregisterNotification();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_22CE42330(v0 + 88, &unk_27D9EEF30, &unk_22CE87948);
  v4 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  v5 = sub_22CE85974();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t DeviceActivityMonitor.__deallocating_deinit()
{
  if ((*(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle + 8) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_handle);
    IOPMUnregisterNotification();
  }

  v2 = *(v0 + 16);

  v3 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  sub_22CE42330(v0 + 88, &unk_27D9EEF30, &unk_22CE87948);
  v4 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  v5 = sub_22CE85974();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t DeviceActivityMonitor.isActive.getter()
{
  v1 = *v0;
  v2 = v0[4];
  sub_22CE85FE4();
  return v4;
}

uint64_t sub_22CE69ADC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v5 + 16))(v8, a1 + v9, v4);
  v10 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  LOBYTE(v9) = sub_22CE6A620(v8, v10);

  result = (*(v5 + 8))(v8, v4);
  *a2 = v9 & 1;
  return result;
}

uint64_t type metadata accessor for DeviceActivityMonitor()
{
  result = qword_281444B30;
  if (!qword_281444B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CE69CCC()
{
  result = sub_22CE85974();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22CE69E40(uint64_t a1, uint64_t a2)
{
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22CE85D34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 32);
    v14 = result;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;
    v20 = v14;
    aBlock[4] = sub_22CE6AD38;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE42F10;
    aBlock[3] = &block_descriptor_28;
    v16 = v9;
    v17 = _Block_copy(aBlock);

    sub_22CE85D24();
    v22 = MEMORY[0x277D84F90];
    sub_22CE4265C(&qword_281445338, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    v19 = v8;
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v12, v7, v17);
    _Block_release(v17);
    (*(v4 + 8))(v7, v3);
    (*(v16 + 8))(v12, v19);
  }

  return result;
}

uint64_t sub_22CE6A150(uint64_t a1)
{
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_queue_lastActivityDate;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1 + v7, v2);
  v8 = [*(a1 + OBJC_IVAR____TtC24SessionPushNotifications21DeviceActivityMonitor_carSessionStatus) currentSession];
  v9 = sub_22CE6A620(v6, v8);

  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v11 = sub_22CE85C84();
      __swift_project_value_buffer(v11, qword_281445368);
      v12 = sub_22CE85C74();
      v13 = sub_22CE85FA4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_22CE3F000, v12, v13, "Device is active as grace period has not expired.  Scheduling another wake.", v14, 2u);
        MEMORY[0x2318C20D0](v14, -1, -1);
      }

      return sub_22CE44A24();
    }
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v15 = sub_22CE85C84();
    __swift_project_value_buffer(v15, qword_281445368);
    v16 = sub_22CE85C74();
    v17 = sub_22CE85FA4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22CE3F000, v16, v17, "Device is inactive after grace period expired.  Publishing budget level change event.", v18, 2u);
      MEMORY[0x2318C20D0](v18, -1, -1);
    }

    v19 = *(a1 + 24);
    v20[7] = 0;
    return sub_22CE85CB4();
  }

  return result;
}

uint64_t sub_22CE6A470@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

double sub_22CE6A4A0()
{
  if (!os_variant_has_internal_ui())
  {
    return 900.0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22CE85DF4();
  [v0 doubleForKey_];
  v3 = v2;

  if (v3 <= 0.0)
  {
    return 900.0;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v4 = sub_22CE85C84();
  __swift_project_value_buffer(v4, qword_281445368);
  v5 = sub_22CE85C74();
  v6 = sub_22CE85FA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_22CE3F000, v5, v6, "Device activity timeout overridden; set to %{public}f", v7, 0xCu);
    MEMORY[0x2318C20D0](v7, -1, -1);
  }

  return v3;
}

uint64_t sub_22CE6A620(uint64_t a1, uint64_t a2)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v56 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  sub_22CE6A4A0();
  sub_22CE85964();
  sub_22CE85954();
  if (a2)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v21 = sub_22CE85C84();
    __swift_project_value_buffer(v21, qword_281445368);
    (*(v5 + 16))(v15, a1, v4);
    v22 = sub_22CE85C74();
    v23 = sub_22CE85FA4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v18;
      v59 = v25;
      v26 = v25;
      *v24 = 136315138;
      sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578]);
      v27 = sub_22CE86174();
      v29 = v28;
      v57 = v20;
      v30 = *(v5 + 8);
      v30(v15, v4);
      v31 = sub_22CE44280(v27, v29, &v59);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_22CE3F000, v22, v23, "Inferring device active as there is an ongoing CarPlay Session (last active at %s)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2318C20D0](v26, -1, -1);
      v32 = v24;
LABEL_11:
      MEMORY[0x2318C20D0](v32, -1, -1);

      v30(v58, v4);
      v30(v57, v4);
      return 1;
    }

    v43 = *(v5 + 8);
    v43(v15, v4);
LABEL_18:
    v43(v18, v4);
    v43(v20, v4);
    return 1;
  }

  if (sub_22CE858F4())
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v33 = sub_22CE85C84();
    __swift_project_value_buffer(v33, qword_281445368);
    (*(v5 + 16))(v12, a1, v4);
    v22 = sub_22CE85C74();
    v34 = sub_22CE85FA4();
    if (os_log_type_enabled(v22, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = v18;
      v59 = v36;
      v37 = v36;
      *v35 = 136315138;
      sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578]);
      v38 = sub_22CE86174();
      v40 = v39;
      v57 = v20;
      v30 = *(v5 + 8);
      v30(v12, v4);
      v41 = sub_22CE44280(v38, v40, &v59);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_22CE3F000, v22, v34, "Device active (last active at %s)", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x2318C20D0](v37, -1, -1);
      v32 = v35;
      goto LABEL_11;
    }

    v43 = *(v5 + 8);
    v43(v12, v4);
    goto LABEL_18;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v44 = sub_22CE85C84();
  __swift_project_value_buffer(v44, qword_281445368);
  (*(v5 + 16))(v9, a1, v4);
  v45 = sub_22CE85C74();
  v46 = sub_22CE85FA4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v18;
    v59 = v48;
    v49 = v48;
    *v47 = 136315138;
    sub_22CE4265C(&qword_2814452A0, MEMORY[0x277CC9578]);
    v50 = sub_22CE86174();
    v52 = v51;
    v57 = v20;
    v53 = *(v5 + 8);
    v53(v9, v4);
    v54 = sub_22CE44280(v50, v52, &v59);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_22CE3F000, v45, v46, "Device inactive (last active at %s)", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x2318C20D0](v49, -1, -1);
    MEMORY[0x2318C20D0](v47, -1, -1);

    v53(v58, v4);
    v53(v57, v4);
  }

  else
  {

    v55 = *(v5 + 8);
    v55(v9, v4);
    v55(v18, v4);
    v55(v20, v4);
  }

  return 0;
}

uint64_t sub_22CE6AD50()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v3;
}

uint64_t BudgetCache.__allocating_init(persistentStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BudgetCache.init(persistentStore:)(a1);
  return v2;
}

uint64_t BudgetCache.init(persistentStore:)(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v19 = sub_22CE85FD4();
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v19);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22CE85FB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22CE85D34();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22CE4FC1C();
  sub_22CE85D24();
  v23[0] = MEMORY[0x277D84F90];
  sub_22CE52580();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE6B1A0();
  sub_22CE86034();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v19);
  v11 = v20;
  *(v1 + 16) = sub_22CE86004();
  sub_22CE6B204(v11, v1 + 24);
  sub_22CE6B204(v11, &v21);
  if (v22)
  {
    sub_22CE501DC(&v21, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    *(v1 + 64) = (*(v13 + 8))(v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_22CE6B274(&v21);
    *(v1 + 64) = sub_22CE62DF0(MEMORY[0x277D84F90]);
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v14 = sub_22CE85C84();
  __swift_project_value_buffer(v14, qword_281445368);

  v15 = sub_22CE85C74();
  v16 = sub_22CE85FA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    swift_beginAccess();
    *(v17 + 4) = *(*(v2 + 64) + 16);

    _os_log_impl(&dword_22CE3F000, v15, v16, "Restored %{public}ld budgets", v17, 0xCu);
    MEMORY[0x2318C20D0](v17, -1, -1);
  }

  else
  {
  }

  sub_22CE6B274(v11);
  return v2;
}

unint64_t sub_22CE6B1A0()
{
  result = qword_281445328;
  if (!qword_281445328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D9EEF10, &unk_22CE87930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445328);
  }

  return result;
}

uint64_t sub_22CE6B204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF50, &unk_22CE88650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6B274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF50, &unk_22CE88650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CE6B2DC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  return sub_22CE85FE4();
}

uint64_t sub_22CE6B358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 64);
  if (*(v8 + 16))
  {

    v9 = sub_22CE498B0(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = *(v8 + 56);
      v13 = type metadata accessor for Budget();
      v14 = *(v13 - 8);
      sub_22CE6BD10(v12 + *(v14 + 72) * v11, a4);

      return (*(v14 + 56))(a4, 0, 1, v13);
    }
  }

  v16 = type metadata accessor for Budget();
  return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
}

uint64_t sub_22CE6B4BC(uint64_t a1)
{
  v3 = type metadata accessor for Budget();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_22CE6BD10(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_22CE6BD74(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22CE6BDD8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_3;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE6B6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Budget();
  v9 = (a2 + *(v8 + 24));
  v10 = *v9;
  v11 = v9[1];
  sub_22CE6BD10(a2, v7);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  swift_beginAccess();

  sub_22CE46F64(v7, v10, v11);
  swift_endAccess();
  sub_22CE6B204(a1 + 24, &v15);
  if (!v16)
  {
    return sub_22CE6B274(&v15);
  }

  sub_22CE501DC(&v15, v17);
  v12 = v18;
  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v13 + 24))(a2, v12, v13);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_22CE6B828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22CE6BE3C;
  *(v8 + 24) = v7;
  v11[4] = sub_22CE5E888;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_22CE50228;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE6B998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for Budget();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_beginAccess();

  sub_22CE46F64(v9, a2, a3);
  swift_endAccess();
  sub_22CE6B204(a1 + 24, &v14);
  if (!v15)
  {
    return sub_22CE6B274(&v14);
  }

  sub_22CE501DC(&v14, v16);
  v11 = v17;
  v12 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v12 + 32))(a2, a3, v11, v12);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t BudgetCache.deinit()
{
  sub_22CE6B274(v0 + 24);
  v1 = *(v0 + 64);

  return v0;
}

uint64_t BudgetCache.__deallocating_deinit()
{
  sub_22CE6B274(v0 + 24);
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22CE6BB80()
{
  v1 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  return sub_22CE85FE4();
}

uint64_t sub_22CE6BC44(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_22CE6BC90(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_22CE6BCB0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22CE6BCC0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22CE6BD10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6BD74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Budget();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CE6BDD8()
{
  v1 = *(type metadata accessor for Budget() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22CE6B6A4(v2, v3);
}

uint64_t BasicBudgetEnforcementPolicy.priority(for:applying:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  result = type metadata accessor for Budget();
  if (*(a2 + *(result + 20)) <= 0)
  {
    if (*(v7 + 16))
    {
      result = sub_22CE4DE0C(v6);
      if (v9)
      {
        LOBYTE(v6) = *(*(v7 + 56) + result);
      }
    }
  }

  *a3 = v6;
  return result;
}

unint64_t sub_22CE6BFBC()
{
  result = sub_22CE62FD8(&unk_2840174F0);
  qword_281445410 = result;
  return result;
}

unint64_t sub_22CE6C008()
{
  result = sub_22CE62FD8(&unk_284017518);
  qword_27D9EEF58 = result;
  return result;
}

unint64_t sub_22CE6C054()
{
  result = sub_22CE62FD8(&unk_284017540);
  qword_2814449B0 = result;
  return result;
}

uint64_t BasicBudgetEnforcementPolicy.description.getter()
{
  v1 = *v0;
  v2 = sub_22CE44074();

  return MEMORY[0x2821FB7B8](v1, &type metadata for Priority, &type metadata for Priority, v2);
}

uint64_t sub_22CE6C0D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22CE6C118(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22CE6C290()
{
  v0 = sub_22CE85B64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85C84();
  __swift_allocate_value_buffer(v5, qword_281445368);
  __swift_project_value_buffer(v5, qword_281445368);
  (*(v1 + 104))(v4, *MEMORY[0x277CB96A0], v0);
  return sub_22CE85C64();
}

uint64_t static Logger.pushServer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v2 = sub_22CE85C84();
  v3 = __swift_project_value_buffer(v2, qword_281445368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

double sub_22CE6C540@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_22CE498B0(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22CE44458(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_22CE6C5A4(char a1)
{
  result = 7565409;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x2D746E65746E6F63;
      break;
    case 3:
      result = 0x746E657665;
      break;
    case 4:
      result = 0x617373696D736964;
      break;
    case 5:
      result = 0x7472656C61;
      break;
    case 6:
      result = 0x656C746974;
      break;
    case 7:
      result = 2036625250;
      break;
    case 8:
      result = 0x79656B2D636F6CLL;
      break;
    case 9:
      result = 0x736772612D636F6CLL;
      break;
    case 10:
      result = 0x646E756F73;
      break;
    case 11:
      result = 0x61642D656C617473;
      break;
    case 12:
      result = 0x636E6176656C6572;
      break;
    case 13:
      result = 0x7475626972747461;
      break;
    case 14:
      result = 0x7475626972747461;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void APSPushConnection.__allocating_init(environmentName:namedDelegatePort:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v11 = objc_allocWithZone(v8);
  *&v11[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v12 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v13 = sub_22CE85DF4();
  v14 = sub_22CE85DF4();
  v15 = [v12 initWithEnvironmentName:v13 namedDelegatePort:v14 queue:a5];

  if (v15)
  {

    *&v11[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v15;
    v19.receiver = v11;
    v19.super_class = v8;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    v17 = *&v16[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection];
    v18 = v16;
    [v17 setDelegate_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void APSPushConnection.init(environmentName:namedDelegatePort:queue:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v9 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v10 = sub_22CE85DF4();
  v11 = sub_22CE85DF4();
  v12 = [v9 initWithEnvironmentName:v10 namedDelegatePort:v11 queue:a5];

  if (v12)
  {

    *&v7[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v12;
    v16.receiver = v7;
    v16.super_class = type metadata accessor for APSPushConnection();
    v13 = objc_msgSendSuper2(&v16, sel_init);
    v14 = *&v13[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection];
    v15 = v13;
    [v14 setDelegate_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id APSPushConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APSPushConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APSPushConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22CE6CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v8 = sub_22CE85DF4();
  v9 = [v7 initWithChannelID_];

  v10 = *(v5 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v11 = sub_22CE85DF4();
  [v10 *a5];
}

void sub_22CE6CC8C(void *a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = a1[1];
  v21[0] = *a1;
  v21[1] = v10;

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  v11 = a1[2];
  v12 = a1[3];
  v13 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v14 = sub_22CE85DF4();

  v15 = sub_22CE85DF4();
  v16 = [v13 initWithTopic:v14 identifier:v15];

  v17 = type metadata accessor for AppTokenInfo(0);
  sub_22CE63D88(a1 + *(v17 + 24), v9);
  v18 = sub_22CE85974();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v9, 1, v18) != 1)
  {
    v20 = sub_22CE858E4();
    (*(v19 + 8))(v9, v18);
  }

  [v16 setExpirationDate_];

  [*(v4 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection) *a2];
}

Swift::Void __swiftcall APSPushConnection.setEnabledTopics(_:ignoredTopics:opportunisticTopics:nonWakingTopics:)(Swift::OpaquePointer _, Swift::OpaquePointer ignoredTopics, Swift::OpaquePointer opportunisticTopics, Swift::OpaquePointer nonWakingTopics)
{
  v5 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v6 = sub_22CE85F24();
  v7 = sub_22CE85F24();
  v8 = sub_22CE85F24();
  v9 = sub_22CE85F24();
  [v5 setEnabledTopics:v6 ignoredTopics:v7 opportunisticTopics:v8 nonWakingTopics:v9];
}

void sub_22CE6CF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v9 = objc_allocWithZone(MEMORY[0x277CD9D98]);
  v10 = sub_22CE85DF4();
  v11 = [v9 initWithChannelID_];

  v12 = *(v7 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v13 = sub_22CE85DF4();
  [v12 *a7];
}

void sub_22CE6D04C()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection);
  v2 = sub_22CE85F24();
  v3 = sub_22CE85F24();
  v4 = sub_22CE85F24();
  v5 = sub_22CE85F24();
  [v1 setEnabledTopics:v2 ignoredTopics:v3 opportunisticTopics:v4 nonWakingTopics:v5];
}

id sub_22CE6D1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 pushType] != 1024)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v25 = sub_22CE85C84();
    __swift_project_value_buffer(v25, qword_281445368);
    v26 = a1;
    v27 = sub_22CE85C74();
    v28 = sub_22CE85F94();
    if (!os_log_type_enabled(v27, v28))
    {

      v27 = v26;
      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = [v26 pushType];

    _os_log_impl(&dword_22CE3F000, v27, v28, "Incoming message has an unexpected push type: %{public}lu", v29, 0xCu);
    v30 = v29;
LABEL_19:
    MEMORY[0x2318C20D0](v30, -1, -1);
LABEL_21:

    sub_22CE70ADC();
    swift_allocError();
    *v34 = 1;
    return swift_willThrow();
  }

  sub_22CE86084();
  result = [a1 userInfo];
  if (!result)
  {
    __break(1u);
    goto LABEL_40;
  }

  v6 = result;
  v7 = sub_22CE85D74();

  if (!*(v7 + 16) || (v8 = sub_22CE49990(v49), (v9 & 1) == 0))
  {

    sub_22CE4DD40(v49);
    goto LABEL_15;
  }

  sub_22CE44458(*(v7 + 56) + 32 * v8, v50);
  sub_22CE4DD40(v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEFA0, &qword_22CE88898);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v31 = sub_22CE85C84();
    __swift_project_value_buffer(v31, qword_281445368);
    v27 = sub_22CE85C74();
    v32 = sub_22CE85F94();
    if (!os_log_type_enabled(v27, v32))
    {
      goto LABEL_21;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22CE3F000, v27, v32, "Incoming message does not contain an aps dictionary", v33, 2u);
    v30 = v33;
    goto LABEL_19;
  }

  result = [a1 topic];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v10 = result;
  v51 = 7565409;
  sub_22CE85E04();

  v11 = "; activityIdentifier: ";
  if (sub_22CE85EF4())
  {
    v12 = sub_22CE85E64();
    v13 = sub_22CE4EF5C(v12);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v47 = MEMORY[0x2318C16D0](v13, v15, v17, v19);
    v21 = v20;

    v22 = [a1 perAppToken];
    if (v22)
    {
      v23 = v22;
      v2 = sub_22CE858A4();
      v11 = v24;
    }

    else
    {
      v2 = 0;
      v11 = 0xF000000000000000;
    }

    v35 = [a1 channelID];
    if (v35)
    {
      v36 = v35;
      v37 = sub_22CE85E04();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v40 = [a1 priority];
    if (v40 == 1)
    {
      v41 = 2;
      goto LABEL_32;
    }

    if (v40 == 10)
    {
      v41 = 0;
      goto LABEL_32;
    }

    if (v40 == 5)
    {
      v41 = 1;
LABEL_32:
      v49[0] = v48;
      v49[1] = v21;
      v50[0] = v41;
      static APSPushConnection.createIncomingMessage(from:topic:priority:token:channelID:)(v51, v49, v50, v2, v11, v37, v39, a2);
      sub_22CE70B40(v2, v11);
    }

    if (qword_281445360 == -1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_34:
  v42 = sub_22CE85C84();
  __swift_project_value_buffer(v42, qword_281445368);
  v43 = sub_22CE85C74();
  v44 = sub_22CE85F94();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_22CE3F000, v43, v44, "Incoming message contains an illegal priority", v45, 2u);
    MEMORY[0x2318C20D0](v45, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v46 = 1;
  swift_willThrow();
  return sub_22CE70B40(v2, v11);
}

uint64_t static APSPushConnection.createIncomingMessage(from:topic:priority:token:channelID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v195 = a6;
  v196 = a7;
  v193 = a4;
  v194 = a5;
  v197 = a8;
  v11 = type metadata accessor for IncomingMessage.EventType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v175 - v17;
  v19 = sub_22CE85974();
  v199 = *(v19 - 8);
  v200 = v19;
  v20 = *(v199 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v198 = &v175 - v24;
  if (!*(a1 + 16) || (v25 = a2[1], v191 = *a2, v192 = v25, v26 = *a3, v27 = sub_22CE498B0(0x746E657665, 0xE500000000000000), (v28 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v27, &v210), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v34 = sub_22CE85C84();
    __swift_project_value_buffer(v34, qword_281445368);
    v35 = sub_22CE85C74();
    v36 = sub_22CE85F94();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_16;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Incoming message does not contain an event type";
    goto LABEL_15;
  }

  if (!*(a1 + 16) || (v190 = v204, v29 = sub_22CE498B0(0x6D617473656D6974, 0xE900000000000070), (v30 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v29, &v210), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v41 = sub_22CE85C84();
    __swift_project_value_buffer(v41, qword_281445368);
    v35 = sub_22CE85C74();
    v36 = sub_22CE85F94();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_16;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "Incoming message does not contain a timestamp";
LABEL_15:
    _os_log_impl(&dword_22CE3F000, v35, v36, v38, v37, 2u);
    MEMORY[0x2318C20D0](v37, -1, -1);
LABEL_16:

    sub_22CE70ADC();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }

  sub_22CE85924();
  if (*(a1 + 16) && (v31 = sub_22CE498B0(0x61642D656C617473, 0xEA00000000006574), (v32 & 1) != 0) && (sub_22CE44458(*(a1 + 56) + 32 * v31, &v210), (swift_dynamicCast() & 1) != 0))
  {
    sub_22CE85924();
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v186 = *(v199 + 56);
  v187 = v199 + 56;
  v186(v18, v33, 1, v200);
  if (!*(a1 + 16))
  {
    v189 = 0;
    v188 = 1;
    goto LABEL_40;
  }

  v42 = sub_22CE498B0(0x636E6176656C6572, 0xEF65726F63732D65);
  if (v43)
  {
    sub_22CE44458(*(a1 + 56) + 32 * v42, v216);
    v44 = swift_dynamicCast();
    v45 = v210;
    if (!v44)
    {
      v45 = 0;
    }

    v189 = v45;
    v46 = v44 ^ 1;
  }

  else
  {
    v189 = 0;
    v46 = 1;
  }

  v188 = v46;
  if (!*(a1 + 16) || (v47 = sub_22CE498B0(0x7472656C61, 0xE500000000000000), (v48 & 1) == 0) || (sub_22CE44458(*(a1 + 56) + 32 * v47, &v204), v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEFA0, &qword_22CE88898), (swift_dynamicCast() & 1) == 0))
  {
LABEL_40:
    v210 = xmmword_22CE88870;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    if (!*(a1 + 16))
    {
      goto LABEL_112;
    }

    goto LABEL_41;
  }

  v49 = *&v209[0];
  v50 = *(*&v209[0] + 16);
  v185 = *&v209[0];
  if (v50)
  {
    v51 = sub_22CE498B0(0x646E756F73, 0xE500000000000000);
    if (v52)
    {
      sub_22CE44458(v185[7] + 32 * v51, &v204);
      v53 = swift_dynamicCast();
      v54 = *&v209[0];
      if (!v53)
      {
        v54 = 0;
      }

      v178 = v54;
      if (v53)
      {
        v55 = *(&v209[0] + 1);
      }

      else
      {
        v55 = 0;
      }

      v181 = v55;
    }

    else
    {
      v178 = 0;
      v181 = 0;
    }

    v49 = v185;
  }

  else
  {
    v178 = 0;
    v181 = 0;
  }

  if (v49[2])
  {
    v82 = sub_22CE498B0(0x656C746974, 0xE500000000000000);
    v49 = v185;
    if (v83)
    {
      sub_22CE44458(v185[7] + 32 * v82, &v204);
      if (swift_dynamicCast())
      {
        v84 = *&v209[0];
        if (*(*&v209[0] + 16))
        {
          v85 = sub_22CE498B0(0x79656B2D636F6CLL, 0xE700000000000000);
          if (v86)
          {
            sub_22CE44458(*(v84 + 56) + 32 * v85, &v204);
            if (swift_dynamicCast())
            {
              *&v182[8] = *(&v209[0] + 1);
              v180 = *&v209[0];
              sub_22CE6C540(0x736772612D636F6CLL, 0xE800000000000000, v84, &v204);

              if (*(&v205 + 1))
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
                if (swift_dynamicCast())
                {
                  v87 = *&v209[0];
LABEL_145:
                  v179 = sub_22CE6F9FC(v87);

                  v177 = 0;
                  *v182 = 0;
                  v49 = v185;
                  goto LABEL_83;
                }
              }

              else
              {
                sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
              }

              v87 = MEMORY[0x277D84F90];
              goto LABEL_145;
            }
          }
        }
      }

      v49 = v185;
    }
  }

  if (v49[2] && (v94 = sub_22CE498B0(0x656C746974, 0xE500000000000000), v49 = v185, (v95 & 1) != 0))
  {
    sub_22CE44458(v185[7] + 32 * v94, &v204);
    if (swift_dynamicCast())
    {
      v179 = 0;
      v180 = 0;
      *v182 = *(&v209[0] + 1);
      v177 = *&v209[0];
      *&v182[8] = 0;
    }

    else
    {
      v177 = 0;
      *v182 = 0;
      *&v182[8] = 0;
      v179 = 0;
      v180 = 0;
    }

    v49 = v185;
  }

  else
  {
    v177 = 0;
    *v182 = 0;
    *&v182[8] = 0;
    v179 = 0;
    v180 = 0;
  }

LABEL_83:
  v96 = v49[2];
  v184 = v26;
  if (v96)
  {
    v97 = sub_22CE498B0(2036625250, 0xE400000000000000);
    v49 = v185;
    if (v98)
    {
      sub_22CE44458(v185[7] + 32 * v97, &v204);
      if (swift_dynamicCast())
      {
        v99 = *&v209[0];
        sub_22CE6C540(0x79656B2D636F6CLL, 0xE700000000000000, *&v209[0], &v204);
        if (*(&v205 + 1))
        {
          if (swift_dynamicCast())
          {

            v176 = *(&v209[0] + 1);
            v185 = *&v209[0];
            sub_22CE6C540(0x736772612D636F6CLL, 0xE800000000000000, v99, &v204);

            if (*(&v205 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
              if (swift_dynamicCast())
              {
                v100 = *&v209[0];
LABEL_137:
                v183 = sub_22CE6F9FC(v100);

                v104 = 0;
                v105 = 0;
                v103 = v176;
                goto LABEL_105;
              }
            }

            else
            {
              sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
            }

            v100 = MEMORY[0x277D84F90];
            goto LABEL_137;
          }
        }

        else
        {

          sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
        }
      }

      v49 = v185;
    }
  }

  if (v49[2])
  {
    v101 = sub_22CE498B0(2036625250, 0xE400000000000000);
    if (v102)
    {
      sub_22CE44458(v185[7] + 32 * v101, &v204);
    }

    else
    {
      v204 = 0u;
      v205 = 0u;
    }
  }

  else
  {
    v204 = 0u;
    v205 = 0u;
  }

  if (*(&v205 + 1))
  {
    if (swift_dynamicCast())
    {
      v185 = 0;
      v103 = 0;
      v183 = 0;
      v105 = *(&v209[0] + 1);
      v104 = *&v209[0];
      goto LABEL_105;
    }
  }

  else
  {
    sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
  }

  v104 = 0;
  v105 = 0;
  v185 = 0;
  v103 = 0;
  v183 = 0;
LABEL_105:
  if (*v182 == 0)
  {

    v106 = v185;
    v107 = v103;
LABEL_109:
    sub_22CE70BB4(v106, v107);
    v210 = xmmword_22CE88870;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    goto LABEL_111;
  }

  if (!(v103 | v105))
  {

    v106 = v180;
    v107 = *&v182[8];
    goto LABEL_109;
  }

  *&v210 = v180;
  *(&v210 + 1) = *&v182[8];
  *&v211 = v179;
  *(&v211 + 1) = v185;
  *&v212 = v103;
  *(&v212 + 1) = v183;
  *&v213 = v177;
  *(&v213 + 1) = *v182;
  *&v214 = v104;
  *(&v214 + 1) = v105;
  *&v215 = v178;
  *(&v215 + 1) = v181;
LABEL_111:
  v26 = v184;
  if (!*(a1 + 16))
  {
    goto LABEL_112;
  }

LABEL_41:
  v56 = sub_22CE498B0(0x2D746E65746E6F63, 0xED00006574617473);
  if (v57)
  {
    v184 = v26;
    sub_22CE44458(*(a1 + 56) + 32 * v56, &v204);
    sub_22CE70B30(&v204, v209);
    v58 = swift_allocObject();
    *&v182[8] = xmmword_22CE88880;
    *(v58 + 16) = xmmword_22CE88880;
    v183 = v58 + 16;
    sub_22CE44458(v209, v208);
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    sub_22CE70B30(v208, (v59 + 24));
    v206 = sub_22CE70EAC;
    v207 = v59;
    *&v204 = MEMORY[0x277D85DD0];
    *(&v204 + 1) = 1107296256;
    *&v205 = sub_22CE42F10;
    *(&v205 + 1) = &block_descriptor_4;
    v60 = _Block_copy(&v204);
    v185 = v58;

    v61 = acTryWithObjCException();
    _Block_release(v60);
    if (v61)
    {

      sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v62 = sub_22CE85C84();
      __swift_project_value_buffer(v62, qword_281445368);
      v63 = v61;
      v64 = v61;
      v65 = sub_22CE85C74();
      v66 = sub_22CE85F94();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138543362;
        *(v67 + 4) = v64;
        *v68 = v63;
        v69 = v64;
        _os_log_impl(&dword_22CE3F000, v65, v66, "Incoming message contains a payload that cannot be serialized to data: %{public}@", v67, 0xCu);
        sub_22CE42330(v68, &qword_27D9EEF98, &qword_22CE88890);
        MEMORY[0x2318C20D0](v68, -1, -1);
        MEMORY[0x2318C20D0](v67, -1, -1);
      }

      sub_22CE70ADC();
      swift_allocError();
      *v70 = 1;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v209);
      sub_22CE42330(v18, &qword_27D9EEF40, &qword_22CE86C00);
      (*(v199 + 8))(v198, v200);
    }

    swift_beginAccess();
    v71 = v185[3];
    if (v71 >> 60 == 15)
    {

      sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v72 = sub_22CE85C84();
      __swift_project_value_buffer(v72, qword_281445368);
      v73 = sub_22CE85C74();
      v74 = sub_22CE85F94();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_22CE3F000, v73, v74, "Incoming message does not contain a usable payload", v75, 2u);
        MEMORY[0x2318C20D0](v75, -1, -1);
      }

      sub_22CE70ADC();
      swift_allocError();
      *v76 = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v209);
      sub_22CE42330(v18, &qword_27D9EEF40, &qword_22CE86C00);
      (*(v199 + 8))(v198, v200);
    }

    v77 = v185[2];
    if (v190 == __PAIR128__(0xE600000000000000, 0x657461647075) || (v183 = v185[3], v78 = sub_22CE86194(), v71 = v183, (v78 & 1) != 0))
    {
      sub_22CE41BF0(v77, v71);
      __swift_destroy_boxed_opaque_existential_1(v209);

      swift_storeEnumTagMultiPayload();
      v80 = v196;
      v79 = v197;
      v81 = v77;
LABEL_124:
      v113 = type metadata accessor for IncomingMessage(0);
      sub_22CE517C8(v14, v79 + v113[10]);
      (*(v199 + 32))(v79 + v113[8], v198, v200);
      sub_22CE50774(v18, v79 + v113[12]);
      v115 = v193;
      v114 = v194;
      *v79 = v193;
      *(v79 + 8) = v114;
      v116 = v192;
      *(v79 + 16) = v191;
      *(v79 + 24) = v116;

      sub_22CE51710(v115, v114);

      *(v79 + 32) = v195;
      *(v79 + 40) = v80;
      *(v79 + 48) = v184;
      v117 = (v79 + v113[9]);
      *v117 = v81;
      v117[1] = v71;
      v118 = (v79 + v113[11]);
      v119 = v213;
      v118[2] = v212;
      v118[3] = v119;
      v120 = v215;
      v118[4] = v214;
      v118[5] = v120;
      v121 = v211;
      *v118 = v210;
      v118[1] = v121;
      v122 = v79 + v113[13];
      *v122 = v189;
      *(v122 + 8) = v188;
      return result;
    }

    *v182 = v77;
    if (v190 == __PAIR128__(0xE300000000000000, 6581861) || (v88 = sub_22CE86194(), v71 = v183, (v88 & 1) != 0))
    {
      sub_22CE41BF0(v77, v71);

      sub_22CE6C540(0x617373696D736964, 0xEE00657461642D6CLL, a1, &v204);
      if (*(&v205 + 1))
      {
        v89 = swift_dynamicCast();
        v80 = v196;
        if (v89)
        {
          sub_22CE85924();
          __swift_destroy_boxed_opaque_existential_1(v209);
          v90 = v200;
          (*(v199 + 32))(v14, v23, v200);
          v91 = v14;
          v92 = 0;
          v93 = v90;
LABEL_122:
          v186(v91, v92, 1, v93);
          swift_storeEnumTagMultiPayload();
          v79 = v197;
LABEL_123:
          v71 = v183;
          v81 = *v182;
          goto LABEL_124;
        }

        __swift_destroy_boxed_opaque_existential_1(v209);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v209);
        sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
        v80 = v196;
      }

      v91 = v14;
      v92 = 1;
      v93 = v200;
      goto LABEL_122;
    }

    if (v190 == __PAIR128__(0xE500000000000000, 0x7472617473))
    {
      sub_22CE41BF0(*v182, v183);
    }

    else
    {
      v123 = sub_22CE86194();
      sub_22CE41BF0(*v182, v183);

      if ((v123 & 1) == 0)
      {
        sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v134 = sub_22CE85C84();
        __swift_project_value_buffer(v134, qword_281445368);
        v135 = sub_22CE85C74();
        v136 = sub_22CE85F94();
        if (!os_log_type_enabled(v135, v136))
        {
          goto LABEL_154;
        }

        v137 = swift_slowAlloc();
        *v137 = 0;
        v138 = "Incoming message contains an illegal event type";
        goto LABEL_153;
      }
    }

    sub_22CE6C540(0x7475626972747461, 0xEF657079742D7365, a1, &v204);
    if (*(&v205 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        v139 = &unk_27D9EEF80;
        v140 = &qword_22CE872D8;
        v141 = &v210;
LABEL_149:
        sub_22CE42330(v141, v139, v140);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v142 = sub_22CE85C84();
        __swift_project_value_buffer(v142, qword_281445368);
        v135 = sub_22CE85C74();
        v136 = sub_22CE85F94();
        if (!os_log_type_enabled(v135, v136))
        {
          goto LABEL_154;
        }

        v137 = swift_slowAlloc();
        *v137 = 0;
        v138 = "Incoming message does not contain usable attributes";
LABEL_153:
        _os_log_impl(&dword_22CE3F000, v135, v136, v138, v137, 2u);
        MEMORY[0x2318C20D0](v137, -1, -1);
LABEL_154:

        sub_22CE70ADC();
        swift_allocError();
        *v143 = 1;
        swift_willThrow();
        sub_22CE70B40(*v182, v183);
        __swift_destroy_boxed_opaque_existential_1(v209);
        sub_22CE42330(v18, &qword_27D9EEF40, &qword_22CE86C00);
        (*(v199 + 8))(v198, v200);
      }

      *&v190 = v208[1];
      v181 = v208[0];
      sub_22CE6C540(0x7475626972747461, 0xEA00000000007365, a1, &v204);
      if (*(&v205 + 1))
      {
        sub_22CE70B30(&v204, v208);
        v124 = swift_allocObject();
        *(v124 + 16) = *&v182[8];
        *(&v190 + 1) = v124 + 16;
        sub_22CE44458(v208, v203);
        v125 = swift_allocObject();
        *(v125 + 16) = v124;
        sub_22CE70B30(v203, (v125 + 24));
        v206 = sub_22CE70B94;
        v207 = v125;
        *&v204 = MEMORY[0x277D85DD0];
        *(&v204 + 1) = 1107296256;
        *&v205 = sub_22CE42F10;
        *(&v205 + 1) = &block_descriptor_10;
        v126 = _Block_copy(&v204);
        v187 = v124;

        v127 = acTryWithObjCException();
        _Block_release(v126);
        if (v127)
        {

          sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v128 = sub_22CE85C84();
          __swift_project_value_buffer(v128, qword_281445368);
          v129 = sub_22CE85C74();
          v130 = sub_22CE85F94();
          if (os_log_type_enabled(v129, v130))
          {
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *v131 = 138543362;
            *(v131 + 4) = 0;
            *v132 = 0;
            _os_log_impl(&dword_22CE3F000, v129, v130, "Incoming message contains attributes that cannot be serialized to data: %{public}@", v131, 0xCu);
            sub_22CE42330(v132, &qword_27D9EEF98, &qword_22CE88890);
            MEMORY[0x2318C20D0](v132, -1, -1);
            MEMORY[0x2318C20D0](v131, -1, -1);
          }

          sub_22CE70ADC();
          swift_allocError();
          *v133 = 1;
          swift_willThrow();
          sub_22CE70B40(*v182, v183);

          goto LABEL_162;
        }

        swift_beginAccess();
        v180 = *(v187 + 24);
        if (v180 >> 60 == 15)
        {

          sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
          if (qword_281445360 != -1)
          {
            swift_once();
          }

          v144 = sub_22CE85C84();
          __swift_project_value_buffer(v144, qword_281445368);
          v145 = sub_22CE85C74();
          v146 = sub_22CE85F94();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            *v147 = 0;
            _os_log_impl(&dword_22CE3F000, v145, v146, "Incoming message contains attributes that cannot be serialized to data", v147, 2u);
            MEMORY[0x2318C20D0](v147, -1, -1);
          }

          sub_22CE70ADC();
          swift_allocError();
          *v148 = 1;
          swift_willThrow();
LABEL_161:
          sub_22CE70B40(*v182, v183);
LABEL_162:
          __swift_destroy_boxed_opaque_existential_1(v208);
          __swift_destroy_boxed_opaque_existential_1(v209);
          sub_22CE42330(v18, &qword_27D9EEF40, &qword_22CE86C00);
          (*(v199 + 8))(v198, v200);
        }

        v179 = *(v187 + 16);
        sub_22CE41BF0(v179, v180);
        sub_22CE6C540(0xD000000000000010, 0x800000022CE8A980, a1, &v204);
        if (*(&v205 + 1))
        {
          if ((swift_dynamicCast() & 1) != 0 && v201 == 1)
          {
            v149 = sub_22CE605F0(0, 1, 1, MEMORY[0x277D84F90]);
            v151 = *(v149 + 2);
            v150 = *(v149 + 3);
            *(&v190 + 1) = v149;
            if (v151 >= v150 >> 1)
            {
              *(&v190 + 1) = sub_22CE605F0((v150 > 1), v151 + 1, 1, *(&v190 + 1));
            }

            v152 = *(&v190 + 1);
            *(*(&v190 + 1) + 16) = v151 + 1;
            v153 = v152 + 24 * v151;
            *(v153 + 32) = 0;
            *(v153 + 40) = 0;
            *(v153 + 48) = 2;
            v154 = 1;
LABEL_171:
            sub_22CE6C540(0xD000000000000012, 0x800000022CE8A9A0, a1, &v204);
            if (*(&v205 + 1))
            {
              if (swift_dynamicCast())
              {
                v155 = v202;
                if (v154)
                {
                  sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);

                  if (qword_281445360 != -1)
                  {
                    swift_once();
                  }

                  v156 = sub_22CE85C84();
                  __swift_project_value_buffer(v156, qword_281445368);
                  v157 = sub_22CE85C74();
                  v158 = sub_22CE85F94();
                  if (os_log_type_enabled(v157, v158))
                  {
                    v159 = swift_slowAlloc();
                    *v159 = 0;
                    _os_log_impl(&dword_22CE3F000, v157, v158, "Incoming message contains two forms of push input", v159, 2u);
                    MEMORY[0x2318C20D0](v159, -1, -1);
                  }

                  sub_22CE70ADC();
                  swift_allocError();
                  *v160 = 1;
                  swift_willThrow();
                  sub_22CE70B40(v179, v180);
                  goto LABEL_161;
                }

                v186 = v201;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  *(&v190 + 1) = sub_22CE605F0(0, *(*(&v190 + 1) + 16) + 1, 1, *(&v190 + 1));
                }

                v162 = *(*(&v190 + 1) + 16);
                v161 = *(*(&v190 + 1) + 24);
                if (v162 >= v161 >> 1)
                {
                  *(&v190 + 1) = sub_22CE605F0((v161 > 1), v162 + 1, 1, *(&v190 + 1));
                }

                v163 = *(&v190 + 1);
                *(*(&v190 + 1) + 16) = v162 + 1;
                v164 = v163 + 24 * v162;
                *(v164 + 32) = v186;
                *(v164 + 40) = v155;
                *(v164 + 48) = 0;
              }
            }

            else
            {
              sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
            }

            sub_22CE6C540(0xD000000000000018, 0x800000022CE8A9C0, a1, &v204);
            if (*(&v205 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
              if (swift_dynamicCast())
              {
                v178 = v201;
                v165 = *(v201 + 16);
                if (v165)
                {
                  v166 = (v178 + 40);
                  do
                  {
                    v167 = *v166;
                    *&v182[8] = *(v166 - 1);
                    v186 = v167;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      *(&v190 + 1) = sub_22CE605F0(0, *(*(&v190 + 1) + 16) + 1, 1, *(&v190 + 1));
                    }

                    v169 = *(*(&v190 + 1) + 16);
                    v168 = *(*(&v190 + 1) + 24);
                    if (v169 >= v168 >> 1)
                    {
                      *(&v190 + 1) = sub_22CE605F0((v168 > 1), v169 + 1, 1, *(&v190 + 1));
                    }

                    v170 = *(&v190 + 1);
                    *(*(&v190 + 1) + 16) = v169 + 1;
                    v171 = v170 + 24 * v169;
                    v172 = v186;
                    *(v171 + 32) = *&v182[8];
                    *(v171 + 40) = v172;
                    *(v171 + 48) = 1;
                    v166 += 2;
                    --v165;
                  }

                  while (v165);
                }
              }

              __swift_destroy_boxed_opaque_existential_1(v208);
              __swift_destroy_boxed_opaque_existential_1(v209);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v208);
              __swift_destroy_boxed_opaque_existential_1(v209);
              sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
            }

            v173 = v190;
            *v14 = v181;
            *(v14 + 1) = v173;
            v174 = v180;
            *(v14 + 2) = v179;
            *(v14 + 3) = v174;
            *(v14 + 4) = *(&v190 + 1);
            swift_storeEnumTagMultiPayload();

            v80 = v196;
            v79 = v197;
            goto LABEL_123;
          }
        }

        else
        {
          sub_22CE42330(&v204, &qword_27D9EEE40, &qword_22CE87B20);
        }

        v154 = 0;
        *(&v190 + 1) = MEMORY[0x277D84F90];
        goto LABEL_171;
      }

      sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
    }

    else
    {
      sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);
    }

    v139 = &qword_27D9EEE40;
    v140 = &qword_22CE87B20;
    v141 = &v204;
    goto LABEL_149;
  }

LABEL_112:
  sub_22CE42330(&v210, &unk_27D9EEF80, &qword_22CE872D8);

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v108 = sub_22CE85C84();
  __swift_project_value_buffer(v108, qword_281445368);
  v109 = sub_22CE85C74();
  v110 = sub_22CE85F94();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_22CE3F000, v109, v110, "Incoming message does not contain a payload", v111, 2u);
    MEMORY[0x2318C20D0](v111, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v112 = 1;
  swift_willThrow();
  sub_22CE42330(v18, &qword_27D9EEF40, &qword_22CE86C00);
  return (*(v199 + 8))(v198, v200);
}

uint64_t sub_22CE6F9FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_22CE4BBE8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x277D83838];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_22CE4BBE8((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = MEMORY[0x277D837D0];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_22CE501DC(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22CE6FAF8(uint64_t a1, void *a2)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16[0] = 0;
  v5 = [v4 dataWithJSONObject:sub_22CE86184() options:0 error:v16];
  swift_unknownObjectRelease();
  v6 = v16[0];
  if (v5)
  {
    v7 = sub_22CE858A4();
    v9 = v8;
  }

  else
  {
    v10 = v6;
    v11 = sub_22CE85834();

    swift_willThrow();
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  result = sub_22CE70B40(v12, v13);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22CE6FC58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v3 = sub_22CE85C84();
    __swift_project_value_buffer(v3, qword_281445368);
    oslog = sub_22CE85C74();
    v4 = sub_22CE85F94();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CE3F000, oslog, v4, "Incoming package token is nil; abandoning", v5, 2u);
      MEMORY[0x2318C20D0](v5, -1, -1);
    }
  }

  else
  {
    v8 = v2 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      sub_22CE41BF0(a1, a2);
      v11(v2, &protocol witness table for APSPushConnection, a1, a2, ObjectType, v9);
      swift_unknownObjectRelease();

      sub_22CE70B40(a1, a2);
    }
  }
}

void sub_22CE6FE2C(void *a1)
{
  v3 = type metadata accessor for IncomingMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    sub_22CE6D1E8(v7, v6);
    v12 = v1 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 16))(v1, &protocol witness table for APSPushConnection, v6, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_22CE70E48(v6, type metadata accessor for IncomingMessage);
  }

  else
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v8 = sub_22CE85C84();
    __swift_project_value_buffer(v8, qword_281445368);
    v15 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (os_log_type_enabled(v15, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CE3F000, v15, v9, "Incoming message token is nil; abandoning", v10, 2u);
      MEMORY[0x2318C20D0](v10, -1, -1);
    }

    v11 = v15;
  }
}

void sub_22CE70160(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for AppTokenInfo(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 >> 60 == 15)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v16 = sub_22CE85C84();
    __swift_project_value_buffer(v16, qword_281445368);
    v50 = sub_22CE85C74();
    v17 = sub_22CE85F94();
    if (os_log_type_enabled(v50, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22CE3F000, v50, v17, "Incoming token is nil; abandoning", v18, 2u);
      MEMORY[0x2318C20D0](v18, -1, -1);
    }

LABEL_14:
    v41 = v50;

    return;
  }

  if (!a3)
  {
    sub_22CE41BF0(a1, a2);
    if (qword_281445360 == -1)
    {
LABEL_11:
      v38 = sub_22CE85C84();
      __swift_project_value_buffer(v38, qword_281445368);
      v50 = sub_22CE85C74();
      v39 = sub_22CE85F94();
      if (os_log_type_enabled(v50, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22CE3F000, v50, v39, "Incoming token info is nil; abandoning", v40, 2u);
        MEMORY[0x2318C20D0](v40, -1, -1);
      }

      sub_22CE70B40(a1, a2);
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  v50 = v13;
  v19 = a3;
  sub_22CE51710(a1, a2);
  v20 = [v19 topic];
  sub_22CE85E04();

  if ((sub_22CE85EF4() & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v49 = a1;
  v21 = sub_22CE85E64();
  v22 = sub_22CE4EF5C(v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v48 = MEMORY[0x2318C16D0](v22, v24, v26, v28);
  v30 = v29;

  v31 = [v19 identifier];
  v32 = sub_22CE85E04();
  v34 = v33;

  v35 = [v19 expirationDate];
  if (v35)
  {
    v36 = v35;
    sub_22CE85944();

    v37 = sub_22CE85974();
    (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
  }

  else
  {
    v42 = sub_22CE85974();
    (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
  }

  *v15 = v48;
  v15[1] = v30;
  v15[2] = v32;
  v15[3] = v34;
  sub_22CE50774(v10, v15 + SLODWORD(v50[3].isa));
  v43 = v3 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v44 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v46 = v49;
    (*(v44 + 24))(v3, &protocol witness table for APSPushConnection, v49, a2, v15, ObjectType, v44);

    swift_unknownObjectRelease();
  }

  else
  {

    v46 = v49;
  }

  sub_22CE70B40(v46, a2);
  sub_22CE70E48(v15, type metadata accessor for AppTokenInfo);
}

void sub_22CE70658(unint64_t a1)
{
  if (!a1)
  {
    if (qword_281445360 == -1)
    {
LABEL_23:
      v33 = sub_22CE85C84();
      __swift_project_value_buffer(v33, qword_281445368);
      osloga = sub_22CE85C74();
      v34 = sub_22CE85F94();
      if (os_log_type_enabled(osloga, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_22CE3F000, osloga, v34, "Incoming channel subscription failures array is nil; abandoning", v35, 2u);
        MEMORY[0x2318C20D0](v35, -1, -1);
      }

      return;
    }

LABEL_41:
    swift_once();
    goto LABEL_23;
  }

  v2 = v1;
  v3 = a1;
  v4 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_39:
    v5 = sub_22CE86134();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_28:
    v36 = v2 + OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 32))(v2, &protocol witness table for APSPushConnection, v6, ObjectType, v37);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v40 = v4;
  v45 = MEMORY[0x277D84F90];
  sub_22CE4BC08(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v39 = v2;
  v7 = 0;
  v8 = v45;
  v41 = v3 & 0xC000000000000001;
  while (1)
  {
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v41)
    {
      v2 = v8;
      v9 = MEMORY[0x2318C19A0](v7, v3);
    }

    else
    {
      if (v7 >= v40[2])
      {
        goto LABEL_38;
      }

      v2 = v8;
      v9 = *(v3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 failureReason];
    v12 = 2 * (v11 != 1);
    if (!v11)
    {
      v12 = 1;
    }

    oslog = v12;
    v13 = [v10 pushTopic];
    if (!v13)
    {
      break;
    }

    v4 = v13;
    sub_22CE85E04();

    if ((sub_22CE85EF4() & 1) == 0)
    {
      goto LABEL_36;
    }

    if (sub_22CE85E64() < 0)
    {
      goto LABEL_37;
    }

    v42 = v7 + 1;
    v14 = v5;
    v15 = v3;
    sub_22CE85E94();
    v16 = sub_22CE85F14();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = MEMORY[0x2318C16D0](v16, v18, v20, v22);
    v25 = v24;

    v26 = [v10 channelID];
    if (!v26)
    {
      goto LABEL_43;
    }

    v27 = v26;
    v28 = sub_22CE85E04();
    v30 = v29;

    v8 = v2;
    v46 = v2;
    v2 = *(v2 + 16);
    v31 = *(v8 + 24);
    v4 = (v2 + 1);
    if (v2 >= v31 >> 1)
    {
      sub_22CE4BC08((v31 > 1), v2 + 1, 1);
      v8 = v46;
    }

    *(v8 + 16) = v4;
    v32 = v8 + 40 * v2;
    *(v32 + 32) = v23;
    *(v32 + 40) = v25;
    *(v32 + 48) = v28;
    *(v32 + 56) = v30;
    *(v32 + 64) = oslog;
    ++v7;
    v5 = v14;
    v3 = v15;
    if (v42 == v14)
    {
      v6 = v8;
      v2 = v39;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

unint64_t sub_22CE70ADC()
{
  result = qword_27D9EEF78;
  if (!qword_27D9EEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEF78);
  }

  return result;
}

_OWORD *sub_22CE70B30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22CE70B40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22CE4E0DC(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22CE70BB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_22CE70BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = type metadata accessor for APSPushConnection();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = a7;
  swift_unknownObjectWeakAssign();
  v11 = objc_allocWithZone(MEMORY[0x277CEEA10]);
  v12 = sub_22CE85DF4();
  v13 = sub_22CE85DF4();
  v14 = [v11 initWithEnvironmentName:v12 namedDelegatePort:v13 queue:a5];

  if (v14)
  {
    *&v10[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] = v14;
    v16.receiver = v10;
    v16.super_class = v9;
    v15 = objc_msgSendSuper2(&v16, sel_init);
    [*&v15[OBJC_IVAR____TtC24SessionPushNotifications17APSPushConnection_connection] setDelegate_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22CE70DD4()
{
  result = qword_27D9EF010;
  if (!qword_27D9EF010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9EF010);
  }

  return result;
}

uint64_t sub_22CE70E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Budget.consumedBudget.getter()
{
  v1 = type metadata accessor for Budget();
  v2 = *(v0 + *(v1 + 44));
  v3 = *(v0 + *(v1 + 20));
  result = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
  }

  return result;
}

uint64_t Budget.init(topic:subscriptionID:budgetType:startDate:remainingBudget:level:windowDuration:maximumBudgetPerWindow:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = *a4;
  v18 = *a7;
  sub_22CE858C4();
  v19 = type metadata accessor for Budget();
  v20 = v19[5];
  v21 = (a9 + v19[7]);
  *v21 = v15;
  v21[1] = v16;
  v22 = (a9 + v19[6]);
  *v22 = a2;
  v22[1] = a3;
  *(a9 + v19[9]) = v17;
  v23 = sub_22CE85974();
  result = (*(*(v23 - 8) + 40))(a9, a5, v23);
  *(a9 + v20) = a6;
  *(a9 + v19[10]) = a10;
  *(a9 + v19[11]) = a8;
  *(a9 + v19[8]) = v18;
  return result;
}

uint64_t Budget.expirationDate.getter()
{
  v1 = sub_22CE85974();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_22CE85954();
  v9 = sub_22CE858F4();
  v10 = *(v2 + 8);
  v10(v6, v1);
  if (v9)
  {
    sub_22CE858C4();
  }

  else
  {
    (*(v2 + 16))(v8, v0, v1);
  }

  v11 = *(v0 + *(type metadata accessor for Budget() + 40));
  sub_22CE85914();
  return (v10)(v8, v1);
}

Swift::Void __swiftcall Budget.reduceBudget()()
{
  v1 = *(type metadata accessor for Budget() + 20);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

uint64_t Budget.isExpired.getter()
{
  v1 = v0;
  v2 = sub_22CE85974();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_22CE85954();
  v13 = sub_22CE858F4();
  v14 = *(v3 + 8);
  v14(v7, v2);
  if (v13)
  {
    sub_22CE858C4();
  }

  else
  {
    (*(v3 + 16))(v10, v1, v2);
  }

  v15 = *(v1 + *(type metadata accessor for Budget() + 40));
  sub_22CE85914();
  v14(v10, v2);
  sub_22CE85954();
  v16 = sub_22CE85904();
  v14(v7, v2);
  v14(v12, v2);
  return v16 & 1;
}

uint64_t Budget.Level.description.getter()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 0x746E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t Budget.Level.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE71500()
{
  v1 = 0x64656375646572;
  if (*v0 != 1)
  {
    v1 = 0x746E657571657266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t Budget.BudgetType.description.getter()
{
  if (*v0)
  {
    result = 0x7974697669746361;
  }

  else
  {
    result = 0x74536F5468737570;
  }

  *v0;
  return result;
}

uint64_t Budget.BudgetType.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE71614()
{
  if (*v0)
  {
    result = 0x7974697669746361;
  }

  else
  {
    result = 0x74536F5468737570;
  }

  *v0;
  return result;
}

uint64_t Budget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22CE85974();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Budget.startDate.setter(uint64_t a1)
{
  v3 = sub_22CE85974();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Budget.remainingBudget.setter(uint64_t a1)
{
  result = type metadata accessor for Budget();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Budget.subscriptionID.getter()
{
  v1 = (v0 + *(type metadata accessor for Budget() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Budget.subscriptionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Budget() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Budget.topic.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Budget() + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Budget.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for Budget() + 28));
  v5 = v4[1];

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t Budget.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t Budget.level.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Budget();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t Budget.budgetType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t Budget.budgetType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Budget();
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Budget.windowDuration.setter(double a1)
{
  result = type metadata accessor for Budget();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Budget.maximumBudgetPerWindow.setter(uint64_t a1)
{
  result = type metadata accessor for Budget();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t Budget.description.getter()
{
  sub_22CE860F4();
  v1 = 0xE700000000000000;
  MEMORY[0x2318C1750](0x203A6369706F74, 0xE700000000000000);
  v2 = type metadata accessor for Budget();
  v3 = (v0 + v2[7]);
  v12 = *v3;
  v15 = v3[1];

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v12, v15);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8AAB0);
  MEMORY[0x2318C1750](*(v0 + v2[6]), *(v0 + v2[6] + 8));
  MEMORY[0x2318C1750](0x746567647562203BLL, 0xEE00203A65707954);
  if (*(v0 + v2[9]))
  {
    v4 = 0x7974697669746361;
  }

  else
  {
    v4 = 0x74536F5468737570;
  }

  if (*(v0 + v2[9]))
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB00000000747261;
  }

  MEMORY[0x2318C1750](v4, v5);

  MEMORY[0x2318C1750](0x447472617473203BLL, 0xED0000203A657461);
  sub_22CE85974();
  sub_22CE72364(&qword_2814452A0, MEMORY[0x277CC9578]);
  v6 = sub_22CE86174();
  MEMORY[0x2318C1750](v6);

  MEMORY[0x2318C1750](0xD000000000000013, 0x800000022CE8AAD0);
  v13 = *(v0 + v2[5]);
  v7 = sub_22CE86174();
  MEMORY[0x2318C1750](v7);

  MEMORY[0x2318C1750](0x3A6C6576656C203BLL, 0xE900000000000020);
  if (*(v0 + v2[8]))
  {
    if (*(v0 + v2[8]) == 1)
    {
      v8 = 0x64656375646572;
    }

    else
    {
      v1 = 0xE800000000000000;
      v8 = 0x746E657571657266;
    }
  }

  else
  {
    v1 = 0xE800000000000000;
    v8 = 0x6576697463616E69;
  }

  MEMORY[0x2318C1750](v8, v1);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8AAF0);
  v9 = *(v0 + v2[10]);
  sub_22CE85F54();
  MEMORY[0x2318C1750](0xD00000000000001ALL, 0x800000022CE8AB10);
  v14 = *(v0 + v2[11]);
  v10 = sub_22CE86174();
  MEMORY[0x2318C1750](v10);

  return 0;
}

uint64_t Budget.hash(into:)()
{
  sub_22CE85974();
  sub_22CE72364(&unk_2814452A8, MEMORY[0x277CC9578]);
  sub_22CE85D94();
  v1 = type metadata accessor for Budget();
  MEMORY[0x2318C1AB0](*(v0 + v1[5]));
  v2 = (v0 + v1[6]);
  v3 = *v2;
  v4 = v2[1];
  sub_22CE85E54();
  v5 = (v0 + v1[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_22CE85E54();
  MEMORY[0x2318C1AB0](*(v0 + v1[8]));
  MEMORY[0x2318C1AB0](*(v0 + v1[9]));
  v8 = *(v0 + v1[10]);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x2318C1AD0](*&v8);
  return MEMORY[0x2318C1AB0](*(v0 + v1[11]));
}

uint64_t Budget.hashValue.getter()
{
  sub_22CE86204();
  Budget.hash(into:)();
  return sub_22CE86244();
}

uint64_t sub_22CE720E8()
{
  sub_22CE86204();
  Budget.hash(into:)();
  return sub_22CE86244();
}

uint64_t sub_22CE7212C()
{
  sub_22CE86204();
  Budget.hash(into:)();
  return sub_22CE86244();
}

BOOL _s24SessionPushNotifications6BudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22CE85934() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Budget();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (v10 || (sub_22CE86194()) && ((v11 = v5[7], v12 = *(a1 + v11), v13 = *(a1 + v11 + 8), v14 = (a2 + v11), v12 == *v14) ? (v15 = v13 == v14[1]) : (v15 = 0), (v15 || (sub_22CE86194()) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10])))
  {
    return *(a1 + v5[11]) == *(a2 + v5[11]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_22CE72270()
{
  result = qword_2814448A0;
  if (!qword_2814448A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814448A0);
  }

  return result;
}

unint64_t sub_22CE722C8()
{
  result = qword_27D9EF020;
  if (!qword_27D9EF020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EF020);
  }

  return result;
}

uint64_t sub_22CE72364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22CE723D4()
{
  result = sub_22CE85974();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CE724A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_22CE72504()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_22CE7253C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PublicTokenStore.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t PublicTokenStore.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

double sub_22CE7261C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CE498B0(a1, a2);
    if (v9)
    {
      v10 = (*(v7 + 56) + 32 * v8);
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[3];
      *a3 = *v10;
      a3[1] = v11;
      a3[2] = v12;
      a3[3] = v13;

      sub_22CE41BF0(v12, v13);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_22CE726D0(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v7 = *(v1 + 16);
  v8 = *(v7 + 16);

  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v14 = 0;
LABEL_10:
    swift_beginAccess();

    sub_22CE41BF0(v5, v6);
    v16 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_22CE61D50(v4, v3, v5, v6, v4, v3, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = v19;
    swift_endAccess();
    sub_22CE72A70(v13, v12, v8, v14);
    return 1;
  }

  v9 = sub_22CE498B0(v4, v3);
  if ((v10 & 1) == 0)
  {

    v13 = 0;
    v12 = 0;
    v8 = 0;
    v14 = 0;
    goto LABEL_10;
  }

  v11 = (*(v7 + 56) + 32 * v9);
  v13 = *v11;
  v12 = v11[1];
  v8 = v11[2];
  v14 = v11[3];

  sub_22CE41BF0(v8, v14);

  if (v14 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      sub_22CE41BF0(v8, v14);
      sub_22CE41BF0(v5, v6);

      sub_22CE4E0DC(v8, v14);

      sub_22CE70B40(v8, v14);
      return 0;
    }

    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
LABEL_9:
    sub_22CE41BF0(v8, v14);
    sub_22CE41BF0(v5, v6);
    sub_22CE70B40(v8, v14);
    sub_22CE70B40(v5, v6);
    goto LABEL_10;
  }

  sub_22CE41BF0(v8, v14);
  sub_22CE41BF0(v5, v6);
  sub_22CE41BF0(v8, v14);
  sub_22CE41BF0(v5, v6);
  v18 = sub_22CE51390(v8, v14, v5, v6);
  sub_22CE4E0DC(v5, v6);
  sub_22CE4E0DC(v8, v14);
  sub_22CE70B40(v5, v6);
  sub_22CE70B40(v8, v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_22CE4E0DC(v8, v14);

  return 0;
}

uint64_t PublicTokenStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PublicTokenStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22CE729E0()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

void sub_22CE72A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_22CE4E0DC(a3, a4);
  }
}

uint64_t sub_22CE72CD8()
{
  MEMORY[0x2318C20D0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_22CE72D3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t PushServer.ServerError.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE72E80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF108, &qword_22CE88EB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CE88D00;
  v1 = *MEMORY[0x277CEE9F0];
  *(inited + 32) = sub_22CE85E04();
  *(inited + 40) = v2;
  *(inited + 48) = 0xD00000000000002BLL;
  *(inited + 56) = 0x800000022CE8AED0;
  v3 = *MEMORY[0x277CEE9E8];
  *(inited + 64) = sub_22CE85E04();
  *(inited + 72) = v4;
  *(inited + 80) = 0xD00000000000002FLL;
  *(inited + 88) = 0x800000022CE8AF00;
  v5 = sub_22CE630B8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF110, &unk_22CE88EC0);
  result = swift_arrayDestroy();
  qword_281445E98 = v5;
  return result;
}

uint64_t sub_22CE72F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22CE88D00;
  v1 = *MEMORY[0x277CEE9F0];
  *(v0 + 32) = sub_22CE85E04();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CEE9E8];
  result = sub_22CE85E04();
  *(v0 + 48) = result;
  *(v0 + 56) = v5;
  qword_281445E90 = v0;
  return result;
}

uint64_t sub_22CE730B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_22CE85FE4();
  return v5;
}

uint64_t sub_22CE7311C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_22CE49BC4(*(v5 + 16), 0);
  v9 = sub_22CE4C450(&v11, v8 + 4, v7, v6);
  sub_22CE412C8();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x277D84F90];
  }

  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a2 = v8;
  return result;
}

id PushServer.__allocating_init(connectionFactory:subscriptionStore:publicTokenStore:tokenStore:budgetServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a1;
  v58 = a4;
  v59 = a5;
  v56 = a2;
  v57 = a3;
  v62 = sub_22CE85FD4();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CE85FB4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_22CE85D34();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = objc_allocWithZone(v5);
  v15 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF038, &qword_22CE88D10);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v14[v15] = sub_22CE85CC4();
  v19 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__tokenPublisher;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF048, &qword_22CE88D18);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v14[v19] = sub_22CE85CC4();
  v23 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__subscriptionExceedingReducedBudgetPublisher;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF058, &qword_22CE88D20);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v14[v23] = sub_22CE85CC4();
  v27 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__unsubscribedActivityPublisher;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF068, &qword_22CE88D28);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v14[v27] = sub_22CE85CC4();
  v53 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue;
  v60 = sub_22CE4FC1C();
  v52 = "UnfairLock";
  sub_22CE85D24();
  v64 = MEMORY[0x277D84F90];
  v61 = sub_22CE426A4(&qword_281445320, MEMORY[0x277D85230]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v49 = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  v50 = v10;
  sub_22CE86034();
  v31 = *MEMORY[0x277D85260];
  v48 = *(v6 + 104);
  v46[0] = v9;
  v32 = v9;
  v47 = v31;
  v33 = v62;
  v48(v32, v31, v62);
  v46[1] = v6 + 104;
  *&v14[v53] = sub_22CE86004();
  v52 = "cations.internal";
  v53 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue;
  sub_22CE85D24();
  v64 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v34 = v46[0];
  v35 = v33;
  v36 = v48;
  v48(v46[0], v31, v35);
  *&v14[v53] = sub_22CE86004();
  v37 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue;
  sub_22CE85D24();
  v64 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v36(v34, v47, v62);
  *&v14[v37] = sub_22CE86004();
  v38 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  *&v14[v38] = sub_22CE631CC(MEMORY[0x277D84F90]);
  *&v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority] = 0;
  *&v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_cancellableSubscriptions] = MEMORY[0x277D84FA0];
  v39 = v55;
  sub_22CE40D28(v55, &v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory]);
  v40 = v56;
  sub_22CE40D28(v56, &v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore]);
  v41 = v57;
  sub_22CE40D28(v57, &v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore]);
  v42 = v58;
  sub_22CE40D28(v58, &v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore]);
  v43 = v59;
  sub_22CE83C40(v59, &v14[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer]);
  v63.receiver = v14;
  v63.super_class = v54;
  v44 = objc_msgSendSuper2(&v63, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v44;
}

id PushServer.init(connectionFactory:subscriptionStore:publicTokenStore:tokenStore:budgetServer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a4;
  v60 = a5;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v7 = sub_22CE85FD4();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22CE85FB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_22CE85D34();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__eventPublisher;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF038, &qword_22CE88D10);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v5[v15] = sub_22CE85CC4();
  v19 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__tokenPublisher;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF048, &qword_22CE88D18);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v5[v19] = sub_22CE85CC4();
  v23 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__subscriptionExceedingReducedBudgetPublisher;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF058, &qword_22CE88D20);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  *&v5[v23] = sub_22CE85CC4();
  v27 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer__unsubscribedActivityPublisher;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF068, &qword_22CE88D28);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v5[v27] = sub_22CE85CC4();
  v54 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue;
  v61 = sub_22CE4FC1C();
  v53 = "UnfairLock";
  sub_22CE85D24();
  v65 = MEMORY[0x277D84F90];
  v52 = sub_22CE426A4(&qword_281445320, MEMORY[0x277D85230]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v32 = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  v49 = v31;
  v50 = v32;
  v51 = v11;
  sub_22CE86034();
  v47 = *MEMORY[0x277D85260];
  v33 = v62;
  v34 = *(v63 + 104);
  v63 += 104;
  v35 = v55;
  v34(v55);
  v48 = v34;
  *&v5[v54] = sub_22CE86004();
  v53 = "cations.internal";
  v54 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue;
  sub_22CE85D24();
  v65 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v36 = v47;
  (v34)(v35, v47, v33);
  *&v5[v54] = sub_22CE86004();
  v53 = "ncore.PushNotifications.callout";
  v54 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue;
  sub_22CE85D24();
  v65 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v48(v35, v36, v62);
  *&v5[v54] = sub_22CE86004();
  v37 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  *&v5[v37] = sub_22CE631CC(MEMORY[0x277D84F90]);
  *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority] = 0;
  *&v5[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_cancellableSubscriptions] = MEMORY[0x277D84FA0];
  v38 = v56;
  sub_22CE40D28(v56, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory);
  v39 = v57;
  sub_22CE40D28(v57, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore);
  v40 = v58;
  sub_22CE40D28(v58, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore);
  v41 = v59;
  sub_22CE40D28(v59, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore);
  v42 = v60;
  sub_22CE83C40(v60, v6 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer);
  v43 = type metadata accessor for PushServer();
  v64.receiver = v6;
  v64.super_class = v43;
  v44 = objc_msgSendSuper2(&v64, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v44;
}

uint64_t sub_22CE73DAC()
{
  v1 = *&v0[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22CE83CC8;
  *(v3 + 24) = v2;
  v8[4] = sub_22CE42778;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22CE50228;
  v8[3] = &block_descriptor_5;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE73F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF138, &qword_22CE88EF8);
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = v29 - v12;
  sub_22CE744F8();
  v35 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
  sub_22CE83C40(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer, v41);
  v14 = v42;
  v15 = v44;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v16 = (*(*(v15 + 8) + 8))(v14);
  v39 = *(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  v17 = v39;
  v40 = v16;
  v33 = sub_22CE85FC4();
  v18 = *(v33 - 8);
  v32 = *(v18 + 56);
  v34 = v18 + 56;
  v32(v9, 1, 1, v33);
  v30 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v29[0] = sub_22CE4FC1C();
  v29[1] = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00);
  sub_22CE426A4(&qword_281445318, sub_22CE4FC1C);
  sub_22CE85CF4();
  sub_22CE42330(v9, &qword_27D9EED80, &unk_22CE87920);

  __swift_destroy_boxed_opaque_existential_1(v41);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0);
  v19 = v31;
  sub_22CE85D04();

  (*(v10 + 8))(v13, v19);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  sub_22CE83C40(a1 + v35, v41);
  v20 = v42;
  v21 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v22 = (*(v21 + 16))(v20, v21);
  v23 = v30;
  v39 = v30;
  v40 = v22;
  v32(v9, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF140, &qword_22CE88F08);
  sub_22CE40A60(&qword_281444840, &qword_27D9EF140, &qword_22CE88F08);
  v24 = v36;
  sub_22CE85CF4();
  sub_22CE42330(v9, &qword_27D9EED80, &unk_22CE87920);

  __swift_destroy_boxed_opaque_existential_1(v41);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22CE856B8;
  *(v26 + 24) = v25;
  sub_22CE40A60(qword_281444858, &qword_27D9EF138, &qword_22CE88EF8);
  v27 = v37;
  sub_22CE85D04();

  (*(v38 + 8))(v24, v27);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();
}

uint64_t sub_22CE744F8()
{
  v1 = v0;
  v2 = sub_22CE85D44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_22CE85D54();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    sub_22CE40D28(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v29);
    v10 = v30;
    v11 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v12 = (*(v11 + 32))(v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    v14 = 0;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v12 + 56);
    v18 = (v15 + 63) >> 6;
    *&v13 = 136446210;
    v26 = v13;
    v27 = v12;
    v28 = v1;
    if (v17)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(v12 + 56 + 8 * v20);
      ++v14;
      if (v17)
      {
        while (1)
        {
          v21 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          v22 = (*(v12 + 48) + ((v20 << 10) | (16 * v21)));
          v23 = *v22;
          v24 = v22[1];

          v25 = sub_22CE783C8(v23, v24, 1);
          sub_22CE78AE0(v23, v24, v25, v19);
          swift_unknownObjectRelease();

          v14 = v20;
          if (!v17)
          {
            break;
          }

LABEL_11:
          v20 = v14;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_22CE748B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v5 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5 == 1)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v8 = sub_22CE85C84();
      __swift_project_value_buffer(v8, qword_281445368);

      v9 = sub_22CE85C74();
      v10 = sub_22CE85FA4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v13 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_22CE44280(a1, a2, &v13);
        _os_log_impl(&dword_22CE3F000, v9, v10, "Budget server says budget level exceeded for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x2318C20D0](v12, -1, -1);
        MEMORY[0x2318C20D0](v11, -1, -1);
      }

      sub_22CE74A50(a1, a2);
    }
  }
}

void sub_22CE74A50(uint64_t a1, unint64_t a2)
{
  v36 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v2 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v57);
  v5 = *(&v58 + 1);
  v6 = v59;
  __swift_project_boxed_opaque_existential_1(&v57, *(&v58 + 1));
  (*(v6 + 88))(&v62, a1, a2, v5, v6);
  v7 = *(&v62 + 1);
  v40 = v62;
  v8 = *(&v63 + 1);
  v9 = v63;
  v10 = *(&v64 + 1);
  v11 = v64;
  v38 = *(&v65 + 1);
  v12 = v65;
  v13 = SBYTE2(v66);
  v14 = v66;
  v39 = HIBYTE(v66);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  if (v7)
  {
    v15 = v7;
    v16 = v14 | (v13 << 16);
    if (v16 < 0)
    {
      v24 = v12;
      if ((v16 & 0x10000) != 0)
      {
        v27 = v39;
        v32 = v38;
        v25 = v9;
        v31 = v40;
      }

      else
      {
        v35 = v15;
        v25 = v9;
        v46[0] = v9;
        v46[1] = v8;
        v46[2] = v11;
        v46[3] = v10;
        v46[4] = v12;
        v46[5] = v38;
        v47 = v16 & 0x1FF;
        v48 = 1;
        v49[0] = v9;
        v49[1] = v8;
        v49[2] = v11;
        v49[3] = v10;
        v49[4] = v12;
        v49[5] = v38;
        v51 = (v16 & 0x7E0000u) >> 16;
        v50 = v16;
        sub_22CE449A4(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE449A4(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE85480(v49, &v62);
        sub_22CE854DC(v46);
        sub_22CE62988(v9, v8, v11, v10, v12, v38, v16);
        sub_22CE40D28(v37 + v36, &v41);
        v26 = v43;
        v33 = *(&v42 + 1);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        *&v52[0] = v40;
        *(&v52[0] + 1) = v35;
        v52[1] = __PAIR128__(v8, v9);
        v52[2] = __PAIR128__(v10, v11);
        v53 = __PAIR128__(v38, v12);
        BYTE2(v54) = 0x80;
        LOWORD(v54) = v16 & 0x103;
        v27 = v39;
        HIBYTE(v54) = v39;
        v64 = __PAIR128__(v10, v11);
        v65 = v53;
        v66 = v54;
        v62 = v52[0];
        v63 = __PAIR128__(v8, v9);
        v34 = v8;
        v28 = v11;
        v29 = v10;
        v30 = *(v26 + 48);
        sub_22CE41214(v52, &v57);
        v30(&v62, v33, v26);
        v10 = v29;
        v11 = v28;
        v8 = v34;
        v31 = v40;
        v32 = v38;
        v55[2] = v64;
        v55[3] = v65;
        v56 = v66;
        v55[0] = v62;
        v55[1] = v63;
        sub_22CE632E8(v55);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        *&v57 = v40;
        *(&v57 + 1) = v35;
        v58 = __PAIR128__(v34, v9);
        v59 = __PAIR128__(v10, v11);
        v60 = __PAIR128__(v38, v24);
        BYTE2(v61) = 0x80;
        LOWORD(v61) = v16 & 0x103;
        HIBYTE(v61) = v39;
        v43 = __PAIR128__(v10, v11);
        v44 = __PAIR128__(v38, v24);
        v45 = v61;
        v41 = v57;
        v42 = __PAIR128__(v34, v9);
        sub_22CE41214(&v57, &v62);
        sub_22CE8071C(&v41);
        sub_22CE62988(v9, v34, v11, v10, v24, v38, v16);
        v64 = v43;
        v65 = v44;
        v66 = v45;
        v62 = v41;
        v63 = v42;
        sub_22CE632E8(&v62);
        v15 = v35;
        v16 = v16 & 0x103 | 0xFF800000;
      }

      *&v62 = v31;
      *(&v62 + 1) = v15;
      *&v63 = v25;
      *(&v63 + 1) = v8;
      *&v64 = v11;
      *(&v64 + 1) = v10;
      *&v65 = v24;
      *(&v65 + 1) = v32;
      LOWORD(v66) = v16;
      BYTE2(v66) = BYTE2(v16);
      HIBYTE(v66) = v27;
    }

    else
    {
      *&v62 = v40;
      *(&v62 + 1) = v15;
      v63 = __PAIR128__(v8, v9);
      v64 = __PAIR128__(v10, v11);
      v65 = __PAIR128__(v38, v12);
      LOWORD(v66) = v14;
      BYTE2(v66) = (v14 | (v13 << 16)) >> 16;
      HIBYTE(v66) = v39;
    }

    sub_22CE632E8(&v62);
  }

  else
  {
    v17 = a1;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v18 = sub_22CE85C84();
    __swift_project_value_buffer(v18, qword_281445368);
    v19 = a2;

    v20 = sub_22CE85C74();
    v21 = sub_22CE85F94();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v62 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_22CE44280(v17, v19, &v62);
      _os_log_impl(&dword_22CE3F000, v20, v21, "Subscription does not exist: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2318C20D0](v23, -1, -1);
      MEMORY[0x2318C20D0](v22, -1, -1);
    }
  }
}

uint64_t sub_22CE74F14(__int128 *a1, char a2)
{
  v5 = sub_22CE85D14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22CE85D34();
  v10 = *(v24 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v24);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[2];
  v15 = a1[3];
  v16 = *a1;
  v27[1] = a1[1];
  v27[2] = v14;
  v27[3] = v15;
  v28 = *(a1 + 16);
  v27[0] = v16;
  v23[1] = *&v2[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v17 = swift_allocObject();
  v18 = *a1;
  *(v17 + 40) = a1[1];
  v19 = a1[3];
  *(v17 + 56) = a1[2];
  *(v17 + 72) = v19;
  *(v17 + 16) = v2;
  *(v17 + 88) = *(a1 + 16);
  *(v17 + 24) = v18;
  *(v17 + 92) = a2;
  aBlock[4] = sub_22CE83CD0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_10_0;
  v20 = _Block_copy(aBlock);
  v21 = v2;
  sub_22CE41214(v27, v25);
  sub_22CE85D24();
  v25[0] = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v13, v9, v20);
  _Block_release(v20);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v24);
}

__n128 sub_22CE75250(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v7 = *(a2 + 64);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  sub_22CE7544C(v6, a3);
  return result;
}

void sub_22CE7544C(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = sub_22CE85D44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 48);
  v118 = *(a1 + 32);
  v119 = v12;
  v120 = *(a1 + 64);
  v13 = *(a1 + 16);
  v116 = *a1;
  v117 = v13;
  v14 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v15 = v14;
  LOBYTE(v14) = sub_22CE85D54();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v96 = v118;
  v97 = v119;
  v98 = v120;
  v94 = v116;
  v95 = v117;
  if ((sub_22CE79448(&v94) & 1) == 0)
  {
    if (qword_281445360 == -1)
    {
LABEL_6:
      v21 = sub_22CE85C84();
      __swift_project_value_buffer(v21, qword_281445368);
      sub_22CE41214(&v116, &v94);
      v22 = sub_22CE85C74();
      v23 = sub_22CE85F94();
      sub_22CE632E8(&v116);
      if (!os_log_type_enabled(v22, v23))
      {
LABEL_36:

        sub_22CE70ADC();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
        return;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v108[0] = v25;
      *v24 = 136446210;
      if ((v120 | (SBYTE2(v120) << 16)) < 0)
      {
        v26 = *(&v117 + 1);
        v27 = v117;
      }

      else
      {
        v94 = v116;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v26 = *(&v94 + 1);
        v27 = v94;
      }

      v39 = sub_22CE44280(v27, v26, v108);

      *(v24 + 4) = v39;
      _os_log_impl(&dword_22CE3F000, v22, v23, "Subscription is invalid: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2318C20D0](v25, -1, -1);
      v40 = v24;
LABEL_35:
      MEMORY[0x2318C20D0](v40, -1, -1);
      goto LABEL_36;
    }

LABEL_61:
    swift_once();
    goto LABEL_6;
  }

  v78 = v3;
  v76 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v113);
  v16 = v114;
  v17 = v115;
  __swift_project_boxed_opaque_existential_1(v113, v114);
  v19 = *(&v117 + 1);
  v18 = v117;
  v73 = *(&v118 + 1);
  v74 = v118;
  v71 = *(&v119 + 1);
  v72 = v119;
  v79 = v120 | (BYTE2(v120) << 16);
  v121 = *(&v117 + 1);
  v75 = v116;
  v77 = v117;
  if ((v79 & 0x800000) != 0)
  {

    v20 = v18;
  }

  else
  {
    v94 = v116;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v19 = *(&v94 + 1);
    v20 = v94;
  }

  (*(v17 + 88))(v108, v20, v19, v16, v17);

  v28 = v108[0];
  v29 = v108[1];
  __swift_destroy_boxed_opaque_existential_1(v113);
  if ((a2 & 1) == 0 && !v29)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v30 = sub_22CE85C84();
    __swift_project_value_buffer(v30, qword_281445368);
    sub_22CE41214(&v116, &v94);
    v22 = sub_22CE85C74();
    v31 = sub_22CE85F94();
    sub_22CE632E8(&v116);
    v32 = os_log_type_enabled(v22, v31);
    v33 = v121;
    if (!v32)
    {
      goto LABEL_36;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v89 = v35;
    *v34 = 136446210;
    if ((v79 & 0x800000) != 0)
    {

      v36 = v77;
    }

    else
    {
      v94 = v75;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v33 = *(&v94 + 1);
      v36 = v94;
    }

    v49 = sub_22CE44280(v36, v33, &v89);

    *(v34 + 4) = v49;
    _os_log_impl(&dword_22CE3F000, v22, v31, "Cannot update subscription for activity %{public}s as no subscription exists", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x2318C20D0](v35, -1, -1);
    v40 = v34;
    goto LABEL_35;
  }

  v37 = v116;
  v104 = v117;
  v105 = v118;
  v106 = v119;
  v107 = v120;
  if (!v29)
  {
    if (!*(&v116 + 1))
    {
      v94 = v28;
      v95 = v109;
      v96 = v110;
      v97 = v111;
      v98 = v112;
      sub_22CE41214(&v116, &v89);
      sub_22CE42330(&v94, &qword_27D9EEE78, &qword_22CE88E90);
LABEL_39:
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v51 = sub_22CE85C84();
      __swift_project_value_buffer(v51, qword_281445368);
      sub_22CE41214(&v116, &v94);
      v52 = sub_22CE85C74();
      v53 = sub_22CE85FA4();
      sub_22CE632E8(&v116);
      v54 = os_log_type_enabled(v52, v53);
      v55 = v121;
      if (v54)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *&v89 = v57;
        *v56 = 136446210;
        if ((v79 & 0x800000) != 0)
        {

          v58 = v77;
        }

        else
        {
          v94 = v75;

          MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
          v55 = *(&v94 + 1);
          v58 = v94;
        }

        v70 = sub_22CE44280(v58, v55, &v89);

        *(v56 + 4) = v70;
        _os_log_impl(&dword_22CE3F000, v52, v53, "Subscription has not changed: %{public}s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x2318C20D0](v57, -1, -1);
        MEMORY[0x2318C20D0](v56, -1, -1);
      }

      else
      {
      }

      return;
    }

    sub_22CE41214(&v116, &v94);
    goto LABEL_26;
  }

  *&v94 = v28;
  *(&v94 + 1) = v29;
  v95 = v109;
  v96 = v110;
  v97 = v111;
  v98 = v112;
  v91 = v110;
  v92 = v111;
  v93 = v112;
  v89 = v94;
  v90 = v109;
  if (!*(&v116 + 1))
  {
    v86 = v96;
    v87 = v97;
    v88 = v98;
    v84 = v94;
    v85 = v95;
    sub_22CE41214(&v116, v82);
    sub_22CE4DD94(&v94, v82, &qword_27D9EEE78, &qword_22CE88E90);
    sub_22CE632E8(&v84);
LABEL_26:
    v95 = v109;
    v96 = v110;
    v97 = v111;
    v100 = v104;
    *&v94 = v28;
    *(&v94 + 1) = v29;
    v98 = v112;
    v99 = v37;
    v101 = v105;
    v102 = v106;
    v103 = v107;
    sub_22CE42330(&v94, &qword_27D9EF130, &qword_22CE88EE8);
    goto LABEL_27;
  }

  v85 = v117;
  v86 = v118;
  v87 = v119;
  v88 = v120;
  v84 = v116;
  sub_22CE41214(&v116, v82);
  sub_22CE4DD94(&v94, v82, &qword_27D9EEE78, &qword_22CE88E90);
  v38 = _s24SessionPushNotifications0B12SubscriptionV2eeoiySbAC_ACtFZ_0(&v89, &v84);
  v80[2] = v86;
  v80[3] = v87;
  v81 = v88;
  v80[0] = v84;
  v80[1] = v85;
  sub_22CE632E8(v80);
  v82[2] = v91;
  v82[3] = v92;
  v83 = v93;
  v82[0] = v89;
  v82[1] = v90;
  sub_22CE632E8(v82);
  *&v84 = v28;
  *(&v84 + 1) = v29;
  v85 = v109;
  v86 = v110;
  v87 = v111;
  v88 = v112;
  sub_22CE42330(&v84, &qword_27D9EEE78, &qword_22CE88E90);
  if (v38)
  {
    goto LABEL_39;
  }

LABEL_27:
  v41 = v78;
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v42 = sub_22CE85C84();
  __swift_project_value_buffer(v42, qword_281445368);
  sub_22CE41214(&v116, &v94);
  v43 = sub_22CE85C74();
  v44 = sub_22CE85FA4();
  sub_22CE632E8(&v116);
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v89 = v46;
    *v45 = 136446210;
    v47 = v121;
    if ((v79 & 0x800000) != 0)
    {

      v48 = v77;
    }

    else
    {
      v94 = v75;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v47 = *(&v94 + 1);
      v48 = v94;
    }

    v59 = sub_22CE44280(v48, v47, &v89);

    *(v45 + 4) = v59;
    _os_log_impl(&dword_22CE3F000, v43, v44, "Creating new subscription to activity: %{public}s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x2318C20D0](v46, -1, -1);
    MEMORY[0x2318C20D0](v45, -1, -1);

    v41 = v78;
  }

  else
  {
  }

  sub_22CE40D28(v4 + v76, &v89);
  v60 = *(&v90 + 1);
  v61 = v91;
  __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
  v96 = v118;
  v97 = v119;
  v98 = v120;
  v94 = v116;
  v95 = v117;
  (*(v61 + 48))(&v94, v60, v61);
  __swift_destroy_boxed_opaque_existential_1(&v89);
  v62 = v79;
  if ((v79 & 0x800000) != 0)
  {
    if ((v79 & 0xFE) != 0)
    {
      return;
    }

    v121 = v73;
    v77 = v74;
  }

  v63 = v121;

  v64 = v77;
  v65 = sub_22CE783C8(v77, v63, 1);
  if (v41)
  {
  }

  else
  {
    v67 = v65;
    v68 = v66;
    sub_22CE78AE0(v64, v63, v65, v66);

    if ((v62 & 0x800000) != 0 && v62)
    {
      if (v62 == 1)
      {
        ObjectType = swift_getObjectType();
        v94 = v75;

        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
        (*(v68 + 24))(v72, v71, v94, *(&v94 + 1), ObjectType, v68);
      }
    }

    else
    {
      v96 = v118;
      v97 = v119;
      v98 = v120;
      v94 = v116;
      v95 = v117;
      sub_22CE7976C(&v94, v67, v68);
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CE76088(uint64_t a1, uint64_t a2)
{
  v5 = sub_22CE85D14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22CE85D34();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_22CE83CE0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_16;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  sub_22CE85D24();
  v20 = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_22CE7650C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85D44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_22CE85D54();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  sub_22CE40D28(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v23);
  v13 = *(&v24 + 1);
  v14 = v25;
  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  (*(v14 + 72))(v28, a1, a2, v13, v14);
  v16 = v28[0];
  v15 = v28[1];
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  __swift_destroy_boxed_opaque_existential_1(&v23);
  if (v15)
  {
    *&v23 = v16;
    *(&v23 + 1) = v15;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v27 = v36;
    sub_22CE76D38(&v23);
    return sub_22CE42330(v28, &qword_27D9EEE78, &qword_22CE88E90);
  }

  if (qword_281445360 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = sub_22CE85C84();
  __swift_project_value_buffer(v18, qword_281445368);
  v19 = sub_22CE85C74();
  v20 = sub_22CE85F94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22CE3F000, v19, v20, "Subscription does not exist", v21, 2u);
    MEMORY[0x2318C20D0](v21, -1, -1);
  }

  sub_22CE70ADC();
  swift_allocError();
  *v22 = 1;
  return swift_willThrow();
}

uint64_t sub_22CE7680C(__int128 *a1)
{
  v3 = sub_22CE85D14();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22CE85D34();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v22);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[2];
  v13 = a1[3];
  v14 = *a1;
  v25[1] = a1[1];
  v25[2] = v12;
  v25[3] = v13;
  v26 = *(a1 + 16);
  v25[0] = v14;
  v21[1] = *&v1[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v15 = swift_allocObject();
  v16 = *a1;
  *(v15 + 40) = a1[1];
  v17 = a1[3];
  *(v15 + 56) = a1[2];
  *(v15 + 72) = v17;
  *(v15 + 16) = v1;
  *(v15 + 88) = *(a1 + 16);
  *(v15 + 24) = v16;
  aBlock[4] = sub_22CE83D54;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_22;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  sub_22CE41214(v25, v23);
  sub_22CE85D24();
  v23[0] = MEMORY[0x277D84F90];
  sub_22CE426A4(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v11, v7, v18);
  _Block_release(v18);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v22);
}

uint64_t sub_22CE76B40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v5[2] = *(a2 + 32);
  v5[3] = v2;
  v6 = *(a2 + 64);
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  return sub_22CE76D38(v5);
}

uint64_t sub_22CE76D38(__int128 *a1)
{
  v3 = v2;
  v5 = sub_22CE85D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[3];
  v114 = a1[2];
  v115 = v10;
  v116 = *(a1 + 16);
  v11 = a1[1];
  v112 = *a1;
  v113 = v11;
  v12 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v9 = v12;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v13 = v12;
  v14 = sub_22CE85D54();
  (*(v6 + 8))(v9, v5);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v90 = v2;
  v92 = v1;
  v87 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v109);
  v16 = v110;
  v15 = v111;
  __swift_project_boxed_opaque_existential_1(v109, v110);
  v3 = *(&v113 + 1);
  v17 = v113;
  ObjectType = v114;
  v94 = v113;
  v91 = *(&v114 + 1);
  v89 = v115;
  v14 = v116 | (SBYTE2(v116) << 16);
  v88 = v112;
  if (v14 < 0)
  {

    v18 = v17;
    v19 = v3;
  }

  else
  {
    v105[0] = v112;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v19 = *(&v105[0] + 1);
    v18 = *&v105[0];
  }

  (*(v15 + 56))(v107, v18, v19, v16, v15);

  v105[2] = v107[2];
  v105[3] = v107[3];
  v106 = v108;
  v105[0] = v107[0];
  v105[1] = v107[1];
  sub_22CE42330(v105, &qword_27D9EEE78, &qword_22CE88E90);
  __swift_destroy_boxed_opaque_existential_1(v109);
  if ((v14 & 0x80000000) == 0)
  {
    v20 = qword_281445360;

    if (v20 == -1)
    {
LABEL_7:
      v21 = sub_22CE85C84();
      __swift_project_value_buffer(v21, qword_281445368);
      sub_22CE41214(&v112, &v100);
      v22 = sub_22CE85C74();
      v23 = sub_22CE85FA4();
      sub_22CE632E8(&v112);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *&v95 = v25;
        *v24 = 136446210;
        v100 = v88;

        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v26 = sub_22CE44280(v100, *(&v100 + 1), &v95);

        *(v24 + 4) = v26;
        _os_log_impl(&dword_22CE3F000, v22, v23, "Unsubscribing from subscription ID: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x2318C20D0](v25, -1, -1);
        MEMORY[0x2318C20D0](v24, -1, -1);
      }

      v27 = v94;
      v28 = v90;
      v29 = v92;
      goto LABEL_10;
    }

LABEL_43:
    swift_once();
    goto LABEL_7;
  }

  v27 = ObjectType;
  v52 = v91;
  v53 = v89;
  sub_22CE62924(ObjectType, v91, v89, *(&v89 + 1), v14);
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v54 = sub_22CE85C84();
  __swift_project_value_buffer(v54, qword_281445368);

  sub_22CE62924(v27, v52, v53, *(&v53 + 1), v14);
  v55 = sub_22CE85C74();
  v56 = sub_22CE85FA4();
  v57 = v94;
  sub_22CE62988(v94, v3, v27, v52, v53, *(&v53 + 1), v14);
  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v100 = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_22CE44280(v57, v3, &v100);
    _os_log_impl(&dword_22CE3F000, v55, v56, "Unsubscribing from activity ID: %{public}s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x2318C20D0](v59, -1, -1);
    v60 = v58;
    v27 = ObjectType;
    MEMORY[0x2318C20D0](v60, -1, -1);
  }

  v28 = v90;
  v29 = v92;
  v61 = *(v92 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer__unsubscribedActivityPublisher);
  *&v100 = v57;
  *(&v100 + 1) = v3;

  sub_22CE85CB4();

  v62 = *(&v89 + 1);
  if (v14)
  {
    v63 = v89;
    if (v14 != 1)
    {
      return sub_22CE62988(v94, v3, v27, v91, v89, *(&v89 + 1), v14);
    }

    v64 = v91;
    sub_22CE62924(v27, v91, v89, *(&v89 + 1), 1);
    v65 = v3;
    v3 = v64;
    sub_22CE62988(v94, v65, v27, v64, v63, v62, v14);
  }

  else
  {
    v66 = v91;
    v67 = v89;
    sub_22CE62924(v27, v91, v89, *(&v89 + 1), 0);
    v68 = v3;
    v3 = v66;
    sub_22CE62988(v94, v68, v27, v66, v67, v62, v14);
  }

LABEL_10:
  v30 = sub_22CE783C8(v27, v3, 0);
  if (v28)
  {
  }

  v32 = v30;
  v33 = v31;
  if ((v14 & 0x80000000) == 0)
  {
    ObjectType = v27;
    v94 = v30;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v34 = sub_22CE85C84();
    __swift_project_value_buffer(v34, qword_281445368);
    sub_22CE41214(&v112, &v100);
    v35 = sub_22CE85C74();
    v36 = sub_22CE85F74();
    sub_22CE632E8(&v112);
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_17;
    }

    v37 = swift_slowAlloc();
    v91 = v3;
    v38 = v37;
    v39 = swift_slowAlloc();
    v117 = v39;
    *v38 = 136380675;
    v97 = v114;
    v98 = v115;
    v99 = v116;
    v95 = v112;
    v96 = v113;
    sub_22CE41214(&v112, &v100);
    v40 = PushSubscription.description.getter();
    v41 = v33;
    v43 = v42;
    v102 = v97;
    v103 = v98;
    v104 = v99;
    v100 = v95;
    v101 = v96;
    sub_22CE632E8(&v100);
    v44 = sub_22CE44280(v40, v43, &v117);
    v33 = v41;

    *(v38 + 4) = v44;
    v45 = "Unsubscribing from push-to-start: %{private}s";
    goto LABEL_16;
  }

  if (v14)
  {
    if (v14 == 1)
    {
      ObjectType = v27;
      v94 = v30;
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v92 = v33;
      v69 = sub_22CE85C84();
      __swift_project_value_buffer(v69, qword_281445368);
      sub_22CE41214(&v112, &v100);
      v70 = sub_22CE85C74();
      v71 = sub_22CE85F74();
      sub_22CE632E8(&v112);
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v91 = v3;
        v73 = v72;
        v74 = swift_slowAlloc();
        v117 = v74;
        *v73 = 136380675;
        v97 = v114;
        v98 = v115;
        v99 = v116;
        v95 = v112;
        v96 = v113;
        sub_22CE41214(&v112, &v100);
        v75 = PushSubscription.description.getter();
        v77 = v76;
        v102 = v97;
        v103 = v98;
        v104 = v99;
        v100 = v95;
        v101 = v96;
        sub_22CE632E8(&v100);
        v78 = sub_22CE44280(v75, v77, &v117);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_22CE3F000, v70, v71, "Unsubscribing from channel push: %{private}s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x2318C20D0](v74, -1, -1);
        v79 = v73;
        v3 = v91;
        MEMORY[0x2318C20D0](v79, -1, -1);
      }

      v27 = ObjectType;
      v32 = v94;
      ObjectType = swift_getObjectType();
      v100 = v88;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v33 = v92;
      (*(v92 + 16))(v89, *(&v89 + 1), v100, *(&v100 + 1), ObjectType, v92);
    }

    goto LABEL_18;
  }

  ObjectType = v27;
  v94 = v30;
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v80 = sub_22CE85C84();
  __swift_project_value_buffer(v80, qword_281445368);
  sub_22CE41214(&v112, &v100);
  v35 = sub_22CE85C74();
  v36 = sub_22CE85F74();
  sub_22CE632E8(&v112);
  if (os_log_type_enabled(v35, v36))
  {
    v81 = swift_slowAlloc();
    v91 = v3;
    v38 = v81;
    v39 = swift_slowAlloc();
    v117 = v39;
    *v38 = 136380675;
    v97 = v114;
    v98 = v115;
    v99 = v116;
    v95 = v112;
    v96 = v113;
    sub_22CE41214(&v112, &v100);
    v82 = PushSubscription.description.getter();
    v83 = v33;
    v85 = v84;
    v102 = v97;
    v103 = v98;
    v104 = v99;
    v100 = v95;
    v101 = v96;
    sub_22CE632E8(&v100);
    v86 = sub_22CE44280(v82, v85, &v117);
    v33 = v83;

    *(v38 + 4) = v86;
    v45 = "Unsubscribing from token push: %{private}s";
LABEL_16:
    _os_log_impl(&dword_22CE3F000, v35, v36, v45, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v46 = v39;
    v29 = v92;
    MEMORY[0x2318C20D0](v46, -1, -1);
    v47 = v38;
    v3 = v91;
    MEMORY[0x2318C20D0](v47, -1, -1);
  }

LABEL_17:

  v27 = ObjectType;
  v32 = v94;
  v102 = v114;
  v103 = v115;
  v104 = v116;
  v100 = v112;
  v101 = v113;
  sub_22CE7A8A4(&v100, v94, v33);
LABEL_18:
  sub_22CE78AE0(v27, v3, v32, v33);
  sub_22CE40D28(v29 + v87, &v100);
  v48 = *(&v101 + 1);
  v49 = v102;
  __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
  v50 = (*(v49 + 96))(v27, v3, v48, v49);
  __swift_destroy_boxed_opaque_existential_1(&v100);
  if (v50)
  {
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  sub_22CE47160(0, 0, v27, v3);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_22CE77960()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  return sub_22CE85FE4();
}

uint64_t sub_22CE779E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_22CE85D54();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v33 = a3;
    sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v34);
    v16 = v35;
    v17 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(v17 + 72))(v37, a1, a2, v16, v17);
    v18 = v37[1];
    v19 = v37[2];
    v20 = v37[3];
    v21 = v37[4];
    v23 = v37[5];
    v22 = v37[6];
    v24 = v37[7];
    v25 = v39;
    v26 = v38;
    __swift_destroy_boxed_opaque_existential_1(v34);
    if (v18)
    {
      v27 = v26 | (v25 << 16);
      if (v27 < 0)
      {
        if (!v27)
        {
          sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, v34);
          v29 = v36;
          v32 = v35;
          __swift_project_boxed_opaque_existential_1(v34, v35);
          v31 = *(v29 + 88);
          sub_22CE449A4(v19, v20, v21, v23, v22, v24, v27);

          v31(v19, v20, v32, v29);
          sub_22CE62988(v19, v20, v21, v23, v22, v24, v27);
          sub_22CE42330(v37, &qword_27D9EEE78, &qword_22CE88E90);

          return __swift_destroy_boxed_opaque_existential_1(v34);
        }

        if (v27 == 1)
        {
          sub_22CE449A4(v19, v20, v21, v23, v22, v24, v27);
          sub_22CE62924(v21, v23, v22, v24, 1);

          sub_22CE62988(v19, v20, v21, v23, v22, v24, v27);
        }
      }

      sub_22CE42330(v37, &qword_27D9EEE78, &qword_22CE88E90);
    }

    v28 = type metadata accessor for PushToken();
    return (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE77D38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  v6 = *a3;
  v7 = a3[1];
  sub_22CE85FE4();
  return v8;
}

uint64_t sub_22CE77DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v13 = sub_22CE85D44();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_22CE85D54();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_22CE40D28(a1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, v27);
    v21 = v28;
    v22 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v26[0] = a4;
    v26[1] = a5;
    LOBYTE(v21) = (*(v22 + 112))(a2, a3, v26, v23, v24, v21, v22);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
    *v25 = v21 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PushServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushServer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22CE7820C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  return sub_22CE85FE4();
}

uint64_t sub_22CE78290(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  v6 = *a3;
  v7 = a3[1];
  sub_22CE85FE4();
  return v8;
}

uint64_t sub_22CE78334(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_22CE40A60(a6, a4, a5);
  return sub_22CE85CE4();
}

uint64_t sub_22CE783C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22CE85D44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_22CE85D54();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_8;
  }

  v15 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  swift_beginAccess();
  v16 = *(v4 + v15);
  if (*(v16 + 16))
  {
    v17 = *(v4 + v15);

    v18 = sub_22CE498B0(a1, a2);
    if (v19)
    {
      v20 = (*(v16 + 56) + 16 * v18);
      a3 = *v20;
      v21 = v20[1];
      swift_unknownObjectRetain();

      return a3;
    }
  }

  if ((a3 & 1) == 0)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v40 = sub_22CE85C84();
    __swift_project_value_buffer(v40, qword_281445368);

    v41 = sub_22CE85C74();
    v42 = sub_22CE85F94();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_21;
    }

    a3 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58[0] = v43;
    *a3 = 136446210;
    *(a3 + 4) = sub_22CE44280(a1, a2, v58);
    v44 = "Failed to find a connection for environment %{public}s";
    goto LABEL_20;
  }

  if (qword_2814455F8 != -1)
  {
    goto LABEL_34;
  }

LABEL_8:
  v22 = qword_281445E98;
  if (!*(qword_281445E98 + 16) || (v23 = sub_22CE498B0(a1, a2), (v24 & 1) == 0))
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v46 = sub_22CE85C84();
    __swift_project_value_buffer(v46, qword_281445368);

    v47 = sub_22CE85C74();
    v48 = sub_22CE85F94();

    if (os_log_type_enabled(v47, v48))
    {
      a3 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *a3 = 136446210;
      *(a3 + 4) = sub_22CE44280(a1, a2, v58);
      _os_log_impl(&dword_22CE3F000, v47, v48, "No Mach service name exists for environment %{public}s", a3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2318C20D0](v49, -1, -1);
      MEMORY[0x2318C20D0](a3, -1, -1);
    }

    v45 = 1;
    goto LABEL_27;
  }

  v25 = (*(v22 + 56) + 16 * v23);
  v26 = v25[1];
  v57 = *v25;
  v28 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory + 24);
  v27 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory + 32);
  v29 = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connectionFactory), v28);
  v30 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_apsQueue);
  v55 = *(v27 + 8);
  v56 = v29;

  v59 = a1;
  a3 = v55(a1, a2, v57, v26, v30, v4, &protocol witness table for PushServer, v28, v27);
  v32 = v31;

  if (!a3)
  {
    v52 = v59;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v53 = sub_22CE85C84();
    __swift_project_value_buffer(v53, qword_281445368);

    v41 = sub_22CE85C74();
    v42 = sub_22CE85F94();

    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_21;
    }

    a3 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58[0] = v43;
    *a3 = 136446210;
    *(a3 + 4) = sub_22CE44280(v52, a2, v58);
    v44 = "Could not create a connection for environment %{public}s";
LABEL_20:
    _os_log_impl(&dword_22CE3F000, v41, v42, v44, a3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x2318C20D0](v43, -1, -1);
    MEMORY[0x2318C20D0](a3, -1, -1);
LABEL_21:

    v45 = 0;
LABEL_27:
    sub_22CE70ADC();
    swift_allocError();
    *v50 = v45;
    swift_willThrow();
    return a3;
  }

  swift_beginAccess();

  v33 = swift_unknownObjectRetain();
  v34 = v59;
  sub_22CE47160(v33, v32, v59, a2);
  swift_endAccess();
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v35 = sub_22CE85C84();
  __swift_project_value_buffer(v35, qword_281445368);

  v36 = sub_22CE85C74();
  v37 = sub_22CE85F74();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_22CE44280(v34, a2, v58);
    _os_log_impl(&dword_22CE3F000, v36, v37, "Created new connection for environment %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2318C20D0](v39, -1, -1);
    MEMORY[0x2318C20D0](v38, -1, -1);
  }

  return a3;
}

uint64_t sub_22CE78AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_22CE85D44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  v16 = sub_22CE85D54();
  (*(v10 + 8))(v13, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v17 = sub_22CE7A0C8(a1, a2);
  v18 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority;
  v19 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_topicsByPriority);
  if (v19)
  {

    v20 = sub_22CE824BC(v17, v19);

    if (v20)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    v22 = *(v4 + v18);
  }

  else
  {
  }

  *(v4 + v18) = v17;

  if (!*(v17 + 16))
  {
    v9 = MEMORY[0x277D84F90];
    a2 = MEMORY[0x277D84F90];
LABEL_35:

    a1 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v23 = sub_22CE4DE0C(1);
  if (v24)
  {
    v25 = *(*(v17 + 56) + 8 * v23);
    v26 = *(v25 + 16);
    a2 = MEMORY[0x277D84F90];
    if (v26)
    {
      v86 = a4;
      v87 = v17;
      v85 = a3;
      v90 = MEMORY[0x277D84F90];

      sub_22CE4BB64(0, v26, 0);
      a2 = v90;
      v27 = (v25 + 40);
      do
      {
        v28 = *v27;
        v88 = *(v27 - 1);
        v89 = v28;
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);

        v29 = v88;
        v30 = v89;
        v90 = a2;
        v32 = *(a2 + 16);
        v31 = *(a2 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_22CE4BB64((v31 > 1), v32 + 1, 1);
          a2 = v90;
        }

        *(a2 + 16) = v32 + 1;
        v33 = a2 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v27 += 2;
        --v26;
      }

      while (v26);

      a3 = v85;
      a4 = v86;
      v17 = v87;
      if (!*(v87 + 16))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  if (!*(v17 + 16))
  {
LABEL_26:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

LABEL_18:
  v34 = sub_22CE4DE0C(0);
  v35 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  if (v36)
  {
    v37 = *(*(v17 + 56) + 8 * v34);
    v38 = *(v37 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v38)
    {
      v86 = a4;
      v87 = v17;
      v85 = a3;
      v90 = MEMORY[0x277D84F90];

      sub_22CE4BB64(0, v38, 0);
      v9 = v90;
      v84 = v37;
      v39 = (v37 + 40);
      do
      {
        v40 = *v39;
        v88 = *(v39 - 1);
        v89 = v40;
        swift_bridgeObjectRetain_n();
        MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);

        v41 = v88;
        v42 = v89;
        v90 = v9;
        v44 = *(v9 + 16);
        v43 = *(v9 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_22CE4BB64((v43 > 1), v44 + 1, 1);
          v9 = v90;
        }

        *(v9 + 16) = v44 + 1;
        v45 = v9 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v42;
        v39 += 2;
        --v38;
      }

      while (v38);

      a3 = v85;
      a4 = v86;
      v17 = v87;
      v35 = MEMORY[0x277D84F90];
    }
  }

  if (!*(v17 + 16))
  {
    goto LABEL_35;
  }

  v46 = sub_22CE4DE0C(2);
  if ((v47 & 1) == 0)
  {
    goto LABEL_35;
  }

  v48 = *(*(v17 + 56) + 8 * v46);

  v49 = *(v48 + 16);
  if (!v49)
  {
    goto LABEL_35;
  }

  v85 = a3;
  v86 = a4;
  v90 = v35;
  sub_22CE4BB64(0, v49, 0);
  a1 = v90;
  v87 = "; activityIdentifier: ";
  v84 = v48;
  v50 = (v48 + 40);
  do
  {
    v51 = *v50;
    v88 = *(v50 - 1);
    v89 = v51;
    swift_bridgeObjectRetain_n();
    MEMORY[0x2318C1750](0xD000000000000017, v87 | 0x8000000000000000);

    v52 = v88;
    v53 = v89;
    v90 = a1;
    v55 = *(a1 + 16);
    v54 = *(a1 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_22CE4BB64((v54 > 1), v55 + 1, 1);
      a1 = v90;
    }

    *(a1 + 16) = v55 + 1;
    v56 = a1 + 16 * v55;
    *(v56 + 32) = v52;
    *(v56 + 40) = v53;
    v50 += 2;
    --v49;
  }

  while (v49);

  a4 = v86;
LABEL_36:
  ObjectType = swift_getObjectType();
  (*(a4 + 40))(v9, MEMORY[0x277D84F90], a2, a1, ObjectType, a4);
  if (qword_281445360 != -1)
  {
LABEL_49:
    swift_once();
  }

  v58 = sub_22CE85C84();
  __swift_project_value_buffer(v58, qword_281445368);

  v59 = sub_22CE85C74();
  v60 = sub_22CE85F74();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v88 = v62;
    *v61 = 136380675;
    v63 = MEMORY[0x2318C17E0](v9, MEMORY[0x277D837D0]);
    v65 = v64;

    v66 = sub_22CE44280(v63, v65, &v88);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_22CE3F000, v59, v60, "Normal topics: %{private}s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x2318C20D0](v62, -1, -1);
    MEMORY[0x2318C20D0](v61, -1, -1);
  }

  else
  {
  }

  v67 = sub_22CE85C74();
  v68 = sub_22CE85F74();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v88 = v70;
    *v69 = 136380675;
    v71 = MEMORY[0x2318C17E0](a2, MEMORY[0x277D837D0]);
    v73 = v72;

    v74 = sub_22CE44280(v71, v73, &v88);

    *(v69 + 4) = v74;
    _os_log_impl(&dword_22CE3F000, v67, v68, "Opportunistic topics: %{private}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x2318C20D0](v70, -1, -1);
    MEMORY[0x2318C20D0](v69, -1, -1);
  }

  else
  {
  }

  v75 = sub_22CE85C74();
  v76 = sub_22CE85F74();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88 = v78;
    *v77 = 136380675;
    v79 = MEMORY[0x2318C17E0](a1, MEMORY[0x277D837D0]);
    v81 = v80;

    v82 = sub_22CE44280(v79, v81, &v88);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_22CE3F000, v75, v76, "Non-waking topics: %{private}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    MEMORY[0x2318C20D0](v78, -1, -1);
    MEMORY[0x2318C20D0](v77, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t PushServer.connection(forEnvironmentName:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_22CE498B0(a1, a2);
  if (v8)
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v10 = *v9;
    v11 = v9[1];
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_22CE79448(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 66);
  v13 = *(a1 + 64);
  v14 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v7 = v14;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v15 = v14;
  LOBYTE(v14) = sub_22CE85D54();
  (*(v4 + 8))(v7, v3);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    v16 = swift_once();
    goto LABEL_4;
  }

  if (((v13 | (v12 << 16)) & 0x800000) != 0)
  {
    if ((v13 & 0xFE) != 0)
    {
      return 1;
    }

    v8 = v11;
    v9 = v10;
  }

  if (qword_2814455F0 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v26[0] = v9;
  v26[1] = v8;
  MEMORY[0x28223BE20](v16);
  *&v25[-16] = v26;
  if (sub_22CE72D3C(sub_22CE85660, &v25[-32], v17))
  {

    return 1;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v18 = sub_22CE85C84();
  __swift_project_value_buffer(v18, qword_281445368);

  v19 = sub_22CE85C74();
  v20 = sub_22CE85F94();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v21 = 136446210;
    v23 = sub_22CE44280(v9, v8, v26);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_22CE3F000, v19, v20, "Environment name %{public}s is unsupported", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x2318C20D0](v22, -1, -1);
    MEMORY[0x2318C20D0](v21, -1, -1);
  }

  else
  {
  }

  return 0;
}

void sub_22CE7976C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v74 = type metadata accessor for AppTokenInfo(0);
  v9 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22CE85974();
  v71 = *(v72 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v66 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v66 - v18;
  v20 = sub_22CE85D44();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1[3];
  v83 = a1[2];
  v84 = v25;
  v85 = *(a1 + 16);
  v26 = a1[1];
  v81 = *a1;
  v82 = v26;
  v27 = *(v5 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v24 = v27;
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v28 = v27;
  LOBYTE(v27) = sub_22CE85D54();
  (*(v21 + 8))(v24, v20);
  if (v27)
  {
    v70 = a3;
    if (qword_281445360 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v69 = a2;
  v86 = v4;
  v29 = sub_22CE85C84();
  __swift_project_value_buffer(v29, qword_281445368);
  sub_22CE41214(&v81, &v78);
  v30 = sub_22CE85C74();
  v31 = sub_22CE85FA4();
  sub_22CE632E8(&v81);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v77 = v33;
    *v32 = 136380675;
    if ((v85 | (SBYTE2(v85) << 16)) < 0)
    {
      v34 = *(&v82 + 1);
      v35 = v82;
    }

    else
    {
      v78 = v81;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v34 = *(&v78 + 1);
      v35 = v78;
    }

    v36 = sub_22CE44280(v35, v34, &v77);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_22CE3F000, v30, v31, "Fetching push token for subscription: %{private}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2318C20D0](v33, -1, -1);
    MEMORY[0x2318C20D0](v32, -1, -1);
  }

  sub_22CE40D28(v5 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v78);
  v37 = v79;
  v38 = v80;
  __swift_project_boxed_opaque_existential_1(&v78, v79);
  v39 = *(&v81 + 1);
  v41 = *(&v82 + 1);
  v40 = v82;
  v42 = v85 | (SBYTE2(v85) << 16);
  v76 = v81;
  v66 = *(&v82 + 1);
  v67 = v82;
  if (v42 < 0)
  {

    v43 = v40;
  }

  else
  {
    v77 = v81;

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v41 = *(&v77 + 1);
    v43 = v77;
  }

  (*(v38 + 88))(v43, v41, v37, v38);

  v44 = type metadata accessor for PushToken();
  v45 = (*(*(v44 - 8) + 48))(v19, 1, v44);
  sub_22CE42330(v19, &qword_27D9EEB28, &qword_22CE86BF0);
  __swift_destroy_boxed_opaque_existential_1(&v78);
  if (v45 == 1)
  {
    sub_22CE41214(&v81, &v78);
    v46 = sub_22CE85C74();
    v47 = sub_22CE85FA4();
    sub_22CE632E8(&v81);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v77 = v49;
      *v48 = 136380675;
      *&v78 = v76;
      *(&v78 + 1) = v39;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v50 = sub_22CE44280(v78, *(&v78 + 1), &v77);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_22CE3F000, v46, v47, "Requesting push token for topic: %{private}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x2318C20D0](v49, -1, -1);
      MEMORY[0x2318C20D0](v48, -1, -1);
    }

    v51 = v73;
    if (v42 < 0)
    {
      v60 = v68;
      sub_22CE85954();
      sub_22CE85964();
      v61 = v71;
      v62 = v60;
      v63 = v72;
      (*(v71 + 8))(v62, v72);
      (*(v61 + 56))(v51, 0, 1, v63);

      v54 = v66;

      v52 = v76;
      v53 = v67;
    }

    else
    {
      (*(v71 + 56))(v73, 1, 1, v72);
      v52 = v76;
      *&v78 = v76;
      *(&v78 + 1) = v39;
      swift_bridgeObjectRetain_n();
      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v54 = *(&v78 + 1);
      v53 = v78;
    }

    v64 = v75;
    sub_22CE4DD94(v51, &v75[*(v74 + 24)], &qword_27D9EEF40, &qword_22CE86C00);
    *v64 = v52;
    v64[1] = v39;
    v64[2] = v53;
    v64[3] = v54;
    ObjectType = swift_getObjectType();
    (*(v70 + 8))(v64, ObjectType);
    sub_22CE85600(v64, type metadata accessor for AppTokenInfo);
    sub_22CE42330(v51, &qword_27D9EEF40, &qword_22CE86C00);
  }

  else
  {
    sub_22CE41214(&v81, &v78);
    v55 = sub_22CE85C74();
    v56 = sub_22CE85FA4();
    sub_22CE632E8(&v81);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v77 = v58;
      *v57 = 136380675;
      *&v78 = v76;
      *(&v78 + 1) = v39;

      MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
      v59 = sub_22CE44280(v78, *(&v78 + 1), &v77);

      *(v57 + 4) = v59;
      _os_log_impl(&dword_22CE3F000, v55, v56, "Found existing push token for topic: %{private}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x2318C20D0](v58, -1, -1);
      MEMORY[0x2318C20D0](v57, -1, -1);
    }
  }
}

uint64_t sub_22CE7A0C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v89 = a2;
  v5 = sub_22CE85D44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  v12 = sub_22CE85D54();
  result = (*(v6 + 8))(v9, v5);
  if ((v12 & 1) == 0)
  {
    goto LABEL_59;
  }

  v79 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore;
  sub_22CE40D28(v3 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v94);
  v14 = *(&v95 + 1);
  v15 = v96;
  __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
  v16 = (*(v15 + 40))(v14, v15);
  v17 = *(v16 + 16);
  v87 = a1;
  if (v17)
  {
    v93[0] = MEMORY[0x277D84F90];
    sub_22CE4BC28(0, v17, 0);
    v18 = v93[0];
    v19 = (v16 + 40);
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      v93[0] = v18;
      v22 = *(v18 + 16);
      v23 = *(v18 + 24);

      if (v22 >= v23 >> 1)
      {
        sub_22CE4BC28((v23 > 1), v22 + 1, 1);
        v18 = v93[0];
      }

      *(v18 + 16) = v22 + 1;
      v24 = v18 + 16 * v22;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v19 += 9;
      --v17;
    }

    while (v17);

    a1 = v87;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_1(&v94);
  v25 = sub_22CE633A0(v18);

  v26 = 0;
  v28 = v25 + 56;
  v27 = *(v25 + 56);
  v82 = v25;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v27;
  v76 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
  v32 = (v29 + 63) >> 6;
  v33 = MEMORY[0x277D84F98];
  v77 = v28;
  v75 = v32;
  v78 = v3;
  if (!v31)
  {
    do
    {
LABEL_13:
      v34 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_58;
      }

      if (v34 >= v32)
      {

        return v33;
      }

      v31 = *(v28 + 8 * v34);
      ++v26;
    }

    while (!v31);
    v85 = v33;
    v26 = v34;
    goto LABEL_17;
  }

  while (1)
  {
    v85 = v33;
LABEL_17:
    v84 = v31;
    v35 = *(v82 + 48);
    v83 = v26;
    v36 = (v35 + ((v26 << 10) | (16 * __clz(__rbit64(v31)))));
    v37 = *v36;
    v38 = v36[1];
    sub_22CE40D28(v3 + v79, &v99);
    v39 = v100;
    v40 = v101;
    __swift_project_boxed_opaque_existential_1(&v99, v100);
    v41 = *(v40 + 40);
    v91 = v38;

    result = v41(v39, v40);
    v42 = result;
    v43 = *(result + 16);
    if (v43)
    {
      break;
    }

    LOBYTE(v46) = 2;
LABEL_46:

    __swift_destroy_boxed_opaque_existential_1(&v99);
    v3 = v78;
    sub_22CE83C40(v78 + v76, &v94);
    v61 = *(&v95 + 1);
    v62 = *(&v96 + 1);
    __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
    v93[0] = v37;
    v93[1] = v91;
    v92 = v46;
    (*(v62 + 16))(&v99, v93, &v92, v61, v62);
    v63 = v99;
    __swift_destroy_boxed_opaque_existential_1(&v94);
    v64 = v85;
    if (*(v85 + 16) && (v65 = sub_22CE4DE0C(v63), (v66 & 1) != 0))
    {
      v67 = *(*(v64 + 56) + 8 * v65);
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = sub_22CE6070C(0, *(v67 + 2) + 1, 1, v67);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = sub_22CE6070C((v68 > 1), v69 + 1, 1, v67);
    }

    v70 = (v84 - 1) & v84;
    *(v67 + 2) = v69 + 1;
    v71 = &v67[16 * v69];
    v72 = v91;
    *(v71 + 4) = v37;
    *(v71 + 5) = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v94 = v64;
    result = sub_22CE62088(v67, v63, isUniquelyReferenced_nonNull_native);
    v31 = v70;
    v33 = v94;
    a1 = v87;
    v28 = v77;
    v32 = v75;
    v26 = v83;
    if (!v70)
    {
      goto LABEL_13;
    }
  }

  v44 = 0;
  v45 = result + 32;
  v90 = *(result + 16);
  v80 = v43 - 1;
  v46 = 2;
  v88 = result;
  v81 = result + 32;
LABEL_19:
  v86 = v46;
  v47 = v45 + 72 * v44;
  v48 = v44;
  while (v48 < *(v42 + 16))
  {
    v94 = *v47;
    v50 = *(v47 + 16);
    v51 = *(v47 + 32);
    v52 = *(v47 + 48);
    v98 = *(v47 + 64);
    v96 = v51;
    v97 = v52;
    v95 = v50;
    result = v94;
    if (v94 != __PAIR128__(v91, v37))
    {
      result = sub_22CE86194();
      if ((result & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v53 = v37;
    v54 = *(&v96 + 1);
    v55 = v96;
    v56 = v97;
    v57 = v98 | (SBYTE2(v98) << 16);
    if ((v57 & 0x80000000) == 0)
    {
      v58 = *(&v95 + 1);
      v59 = v95;
      sub_22CE41214(&v94, v93);
      sub_22CE449A4(v59, v58, v55, v54, v56, *(&v56 + 1), v57);
      v55 = v59;
      v54 = v58;
      a1 = v87;
      goto LABEL_28;
    }

    if (!v98)
    {
      sub_22CE41214(&v94, v93);
      sub_22CE62924(v55, v54, v56, *(&v56 + 1), 0);
LABEL_28:
      v37 = v53;
      v42 = v88;
      if (v55 == a1)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v37 = v53;
    v42 = v88;
    if (v98 != 1)
    {
      goto LABEL_22;
    }

    sub_22CE41214(&v94, v93);
    sub_22CE62924(v55, v54, v56, *(&v56 + 1), 1);

    if (v55 == a1)
    {
LABEL_20:
      if (v54 == v89)
      {

        result = sub_22CE632E8(&v94);
LABEL_36:
        v46 = v86;
        if (v86)
        {
          v60 = HIBYTE(v98);
          if (HIBYTE(v98) >= 2u)
          {
            v60 = 2;
          }

          if (v86 == 1)
          {
            v46 = HIBYTE(v98) != 0;
          }

          else
          {
            v46 = v60;
          }
        }

        v44 = v48 + 1;
        v45 = v81;
        if (v80 != v48)
        {
          goto LABEL_19;
        }

        goto LABEL_46;
      }
    }

LABEL_21:
    v49 = sub_22CE86194();

    result = sub_22CE632E8(&v94);
    if (v49)
    {
      goto LABEL_36;
    }

LABEL_22:
    ++v48;
    v47 += 72;
    if (v90 == v48)
    {
      LOBYTE(v46) = v86;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_22CE7A8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = a2;
  v41 = a3;
  v39 = type metadata accessor for AppTokenInfo(0);
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22CE85D44();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  v37 = *(a1 + 16);
  v38 = v14;
  v17 = *(a1 + 66);
  v18 = *(a1 + 64);
  v42 = v4;
  v19 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v13 = v19;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v20 = v19;
  LOBYTE(v19) = sub_22CE85D54();
  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v22(v13, v9);
  if (v19)
  {
    if (((v18 | (v17 << 16)) & 0x80000000) != 0)
    {

      v21 = v37;
      v18 = v38;
    }

    else
    {
      v18 = v38;
      v43 = v38;
      v44 = v15;

      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
      v21 = v43;
      v16 = v44;
    }

    if (qword_281445360 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v23 = sub_22CE85C84();
  __swift_project_value_buffer(v23, qword_281445368);

  v24 = sub_22CE85C74();
  v25 = sub_22CE85FA4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v43 = v27;
    *v26 = 136380675;
    *(v26 + 4) = sub_22CE44280(v21, v16, &v43);
    _os_log_impl(&dword_22CE3F000, v24, v25, "Invalidating token: %{private}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2318C20D0](v27, -1, -1);
    MEMORY[0x2318C20D0](v26, -1, -1);
  }

  v28 = *(v39 + 24);
  v29 = sub_22CE85974();
  (*(*(v29 - 8) + 56))(v8 + v28, 1, 1, v29);
  *v8 = v18;
  v8[1] = v15;
  v8[2] = v21;
  v8[3] = v16;
  ObjectType = swift_getObjectType();
  v31 = v41;
  v32 = *(v41 + 32);

  v32(v8, ObjectType, v31);
  sub_22CE40D28(v42 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v43);
  v33 = v45;
  v34 = v46;
  __swift_project_boxed_opaque_existential_1(&v43, v45);
  (*(v34 + 40))(v21, v16, v33, v34);

  sub_22CE85600(v8, type metadata accessor for AppTokenInfo);
  return __swift_destroy_boxed_opaque_existential_1(&v43);
}

uint64_t sub_22CE7ACA8(uint64_t a1)
{
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22CE85D54();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_connections;
    result = swift_beginAccess();
    v12 = 0;
    v13 = *(v1 + v11);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = v12;
LABEL_11:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = v19 | (v18 << 6);
      if (*(*(v13 + 56) + 16 * v20) == a1)
      {
        v21 = (*(v13 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];

        return v23;
      }
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        return 0;
      }

      v16 = *(v13 + 64 + 8 * v18);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PushServer.connection(_:didReceivePublicToken:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_22CE85C54();
  v9 = *&v4[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  v11 = v4;
  swift_unknownObjectRetain();
  sub_22CE41BF0(a3, a4);
  sub_22CE85C44();
  sub_22CE85C34();
}

void sub_22CE7AF88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v89 = a4;
  v101 = a2;
  v100 = type metadata accessor for AppTokenInfo(0);
  v7 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v99 = (v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_22CE85974();
  v9 = *(v98 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v98);
  v90 = v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v86 - v14;
  v16 = sub_22CE85D44();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_22CE85D54();
  (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_9:
    v45 = sub_22CE85C84();
    __swift_project_value_buffer(v45, qword_281445368);
    v46 = sub_22CE85C74();
    v47 = sub_22CE85F94();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_22CE3F000, v46, v47, "Connection for incoming package token is unknown", v48, 2u);
      MEMORY[0x2318C20D0](v48, -1, -1);
    }

    goto LABEL_16;
  }

  v23 = sub_22CE7ACA8(a1);
  if (!v24)
  {
    if (qword_281445360 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

  v25 = v23;
  v26 = v24;
  v103 = v4;
  v104 = v9;
  sub_22CE40D28(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_publicTokenStore, &v106);
  v27 = v108;
  v28 = v109;
  __swift_project_boxed_opaque_existential_1(&v106, v108);
  v102 = v25;
  v105[0] = v25;
  v105[1] = v26;
  v29 = v89;
  v105[2] = a3;
  v105[3] = v89;
  v30 = *(v28 + 24);

  v87 = a3;
  sub_22CE41BF0(a3, v29);
  LOBYTE(v27) = v30(v105, v27, v28);
  __swift_destroy_boxed_opaque_existential_1(&v106);
  if ((v27 & 1) == 0)
  {

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v49 = sub_22CE85C84();
    __swift_project_value_buffer(v49, qword_281445368);
    v46 = sub_22CE85C74();
    v50 = sub_22CE85FA4();
    v51 = os_log_type_enabled(v46, v50);
    v52 = v87;
    v53 = v89;
    if (v51)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_22CE3F000, v46, v50, "package token has not changed", v54, 2u);
      MEMORY[0x2318C20D0](v54, -1, -1);
    }

    sub_22CE4E0DC(v52, v53);
LABEL_16:

    return;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v31 = sub_22CE85C84();
  __swift_project_value_buffer(v31, qword_281445368);

  v32 = v87;
  v33 = v89;
  sub_22CE41BF0(v87, v89);
  v34 = sub_22CE85C74();
  v35 = sub_22CE85FA4();
  sub_22CE4E0DC(v32, v33);

  v36 = os_log_type_enabled(v34, v35);
  v37 = v103;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v106 = v96;
    *v38 = 136446466;
    v39 = sub_22CE85894();
    v41 = sub_22CE44280(v39, v40, &v106);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2082;
    v42 = v102;
    *(v38 + 14) = sub_22CE44280(v102, v26, &v106);
    _os_log_impl(&dword_22CE3F000, v34, v35, "Received package token: %{public}s for environment: %{public}s", v38, 0x16u);
    v43 = v96;
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v43, -1, -1);
    MEMORY[0x2318C20D0](v38, -1, -1);

    v44 = v104;
  }

  else
  {

    v44 = v104;
    v42 = v102;
  }

  sub_22CE40D28(v37 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v106);
  v55 = v108;
  v56 = v109;
  __swift_project_boxed_opaque_existential_1(&v106, v108);
  (*(v56 + 56))(v42, v26, v55, v56);

  __swift_destroy_boxed_opaque_existential_1(&v106);
  sub_22CE40D28(v37 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v106);
  v57 = v108;
  v58 = v109;
  __swift_project_boxed_opaque_existential_1(&v106, v108);
  v59 = (*(v58 + 16))(v57, v58);
  __swift_destroy_boxed_opaque_existential_1(&v106);
  v60 = *(v59 + 16);
  if (v60)
  {
    v86[1] = v26;
    ObjectType = swift_getObjectType();
    v94 = *(v101 + 8);
    v95 = v101 + 8;
    v96 = ObjectType;
    v88 = (v44 + 8);
    v93 = (v44 + 56);
    v86[0] = v59;
    v62 = v59 + 48;
    v97 = a1;
    v91 = v15;
    do
    {
      v103 = v60;
      v64 = v15;
      v71 = *(v62 - 16);
      v104 = *(v62 - 8);
      v67 = *v62;
      v68 = *(v62 + 8);
      v73 = *(v62 + 16);
      v72 = *(v62 + 24);
      v75 = *(v62 + 32);
      v74 = *(v62 + 40);
      v76 = *(v62 + 48) | (*(v62 + 50) << 16);
      if (v76 < 0)
      {

        v92 = v73;
        v77 = v73;
        v78 = v72;
        v79 = v72;
        v80 = v75;
        v81 = v75;
        v82 = v74;
        sub_22CE449A4(v67, v68, v77, v79, v81, v74, v76);
        v66 = v71;
        v83 = v90;
        sub_22CE85954();
        sub_22CE85964();
        v84 = v83;
        v85 = v98;
        (*v88)(v84, v98);
        (*v93)(v64, 0, 1, v85);

        sub_22CE62988(v67, v68, v92, v78, v80, v82, v76);
      }

      else
      {
        (*v93)(v64, 1, 1, v98);
        v63 = v104;

        sub_22CE449A4(v67, v68, v73, v72, v75, v74, v76);
        v106 = v71;
        v107 = v63;
        swift_bridgeObjectRetain_n();
        v102 = v71;
        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
        v64 = v91;

        v65 = v74;
        v66 = v102;
        sub_22CE62988(v67, v68, v73, v72, v75, v65, v76);
        v67 = v106;
        v68 = v107;
      }

      v69 = v99;
      sub_22CE4DD94(v64, v99 + *(v100 + 24), &qword_27D9EEF40, &qword_22CE86C00);
      v70 = v104;
      *v69 = v66;
      v69[1] = v70;
      v69[2] = v67;
      v69[3] = v68;
      v94(v69, v96, v101);
      sub_22CE85600(v69, type metadata accessor for AppTokenInfo);
      sub_22CE42330(v64, &qword_27D9EEF40, &qword_22CE86C00);
      v62 += 72;
      v60 = v103 - 1;
      v15 = v64;
    }

    while (v103 != 1);
  }

  sub_22CE4E0DC(v87, v89);
}

uint64_t PushServer.connection(_:didReceive:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for IncomingMessage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22CE85C54();
  v10 = *&v3[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue];
  sub_22CE85598(a3, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IncomingMessage);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  sub_22CE85530(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for IncomingMessage);
  v13 = v3;
  swift_unknownObjectRetain();
  sub_22CE85C44();
  sub_22CE85C34();
}

void sub_22CE7BADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(&v383 + 1) = a1;
  v384 = a3;
  v343 = a2;
  v451 = *MEMORY[0x277D85DE8];
  v355 = type metadata accessor for IncomingMessage.EventType(0);
  v5 = *(*(v355 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v355);
  v352 = &v332 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v344 = &v332 - v9;
  MEMORY[0x28223BE20](v8);
  v353 = &v332 - v10;
  v354 = type metadata accessor for PushEvent(0);
  v347 = *(v354 - 8);
  v11 = *(v347 + 64);
  v12 = MEMORY[0x28223BE20](v354);
  v349 = &v332 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v346 = &v332 - v15;
  v348 = v16;
  MEMORY[0x28223BE20](v14);
  v366 = &v332 - v17;
  v373 = sub_22CE85AB4();
  v375 = *(v373 - 8);
  v18 = *(v375 + 64);
  MEMORY[0x28223BE20](v373);
  v369 = &v332 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v364 = &v332 - v22;
  v23 = sub_22CE85A94();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v363 = &v332 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = sub_22CE85974();
  v378 = *(v370 - 8);
  v26 = *(v378 + 64);
  MEMORY[0x28223BE20](v370);
  v362 = &v332 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED60, "J#");
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v365 = &v332 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v371 = &v332 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF0F8, &qword_22CE88EA8);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v361 = &v332 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v374 = &v332 - v37;
  v38 = type metadata accessor for PushEvent.EventType(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v376 = (&v332 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = sub_22CE85AF4();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v377 = &v332 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_22CE859A4();
  v357 = *(v45 - 8);
  v358 = v45;
  v46 = *(v357 + 64);
  MEMORY[0x28223BE20](v45);
  v356 = &v332 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v368 = type metadata accessor for PushToken();
  *(&v379 + 1) = *(v368 - 1);
  v48 = *(*(&v379 + 1) + 64);
  v49 = MEMORY[0x28223BE20](v368);
  v359 = &v332 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  *&v379 = &v332 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB28, &qword_22CE86BF0);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52 - 8);
  v367 = &v332 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v380 = &v332 - v56;
  v372 = type metadata accessor for IncomingMessage(0);
  v57 = *(*(v372 - 1) + 64);
  v58 = MEMORY[0x28223BE20](v372);
  v345 = &v332 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x28223BE20](v58);
  v342 = &v332 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v332 - v62;
  v64 = sub_22CE85D44();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  v68 = (&v332 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = *(v4 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_queue);
  *v68 = v69;
  (*(v65 + 104))(v68, *MEMORY[0x277D85200], v64);
  v70 = v69;
  v71 = sub_22CE85D54();
  (*(v65 + 8))(v68, v64);
  if ((v71 & 1) == 0)
  {
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    swift_once();
    goto LABEL_4;
  }

  *&v383 = sub_22CE7ACA8(*(&v383 + 1));
  if (!v72)
  {
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v85 = sub_22CE85C84();
    __swift_project_value_buffer(v85, qword_281445368);
    v86 = sub_22CE85C74();
    v87 = sub_22CE85F94();
    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_117;
    }

    v88 = swift_slowAlloc();
    *v88 = 0;
    v89 = "Incoming message arrived on an unknown connection";
    goto LABEL_116;
  }

  v69 = v72;
  v340 = v42;
  if (qword_281445360 != -1)
  {
    goto LABEL_177;
  }

LABEL_4:
  v73 = sub_22CE85C84();
  v74 = __swift_project_value_buffer(v73, qword_281445368);
  sub_22CE85598(v384, v63, type metadata accessor for IncomingMessage);

  v75 = sub_22CE85C74();
  v76 = sub_22CE85FA4();

  v77 = os_log_type_enabled(v75, v76);
  v341 = v41;
  v360 = v4;
  v381 = v74;
  v382 = v69;
  if (v77)
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v442 = v79;
    *v78 = 136446466;
    v80 = IncomingMessage.description.getter();
    v82 = v81;
    sub_22CE85600(v63, type metadata accessor for IncomingMessage);
    v83 = sub_22CE44280(v80, v82, &v442);

    *(v78 + 4) = v83;
    *(v78 + 12) = 2082;
    *(v78 + 14) = sub_22CE44280(v383, v69, &v442);
    _os_log_impl(&dword_22CE3F000, v75, v76, "Received message: %{public}s for environment: %{public}s", v78, 0x16u);
    swift_arrayDestroy();
    v84 = v360;
    MEMORY[0x2318C20D0](v79, -1, -1);
    MEMORY[0x2318C20D0](v78, -1, -1);
  }

  else
  {

    sub_22CE85600(v63, type metadata accessor for IncomingMessage);
    v84 = v4;
  }

  v90 = v384;
  v4 = *(v384 + 32);
  v91 = *(v384 + 40);
  if (v91)
  {
    sub_22CE40D28(v84 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore, &v437);
    v92 = *(&v438 + 1);
    v93 = v439;
    __swift_project_boxed_opaque_existential_1(&v437, *(&v438 + 1));
    v94 = *(v90 + 24);
    *&v433[0] = *(v90 + 16);
    *(&v433[0] + 1) = v94;
    v95 = *(v93 + 80);

    v336 = v4;
    v338 = v91;
    v95(&v442, v383, v382, v433, v4, v91, v92, v93);

    v96 = *(&v442 + 1);
    v97 = v442;
    v447 = v443;
    v448 = v444;
    v449 = v445;
    v450 = v446;
    __swift_destroy_boxed_opaque_existential_1(&v437);
    goto LABEL_13;
  }

  v103 = *(v384 + 8);
  if (v103 >> 60 != 15)
  {
    v336 = *(v384 + 32);
    v338 = 0;
    v104 = *v384;
    sub_22CE40D28(v84 + OBJC_IVAR____TtC24SessionPushNotifications10PushServer_tokenStore, &v442);
    v105 = *(&v443 + 1);
    v106 = v444;
    __swift_project_boxed_opaque_existential_1(&v442, *(&v443 + 1));
    v107 = *(v106 + 80);
    sub_22CE41BF0(v104, v103);
    v108 = v107(v383, v382, v105, v106);
    v350 = *(v108 + 16);
    v337 = v103;
    if (!v350)
    {

      v136 = 1;
      v109 = *(&v379 + 1);
      v116 = v380;
LABEL_112:
      v173 = *(v109 + 56);
      v174 = v109;
      v175 = v368;
      v173(v116, v136, 1, v368);
      __swift_destroy_boxed_opaque_existential_1(&v442);
      v176 = v367;
      sub_22CE4DD94(v116, v367, &qword_27D9EEB28, &qword_22CE86BF0);
      if ((*(v174 + 48))(v176, 1, v175) == 1)
      {
        sub_22CE42330(v116, &qword_27D9EEB28, &qword_22CE86BF0);
        sub_22CE70B40(v104, v337);

        sub_22CE42330(v176, &qword_27D9EEB28, &qword_22CE86BF0);
        swift_allocObject();
LABEL_114:
        swift_deallocUninitializedObject();
        v86 = sub_22CE85C74();
        v87 = sub_22CE85F94();
        if (!os_log_type_enabled(v86, v87))
        {
          goto LABEL_117;
        }

        v88 = swift_slowAlloc();
        *v88 = 0;
        v89 = "Incoming message does not belong to an activity";
LABEL_116:
        _os_log_impl(&dword_22CE3F000, v86, v87, v89, v88, 2u);
        MEMORY[0x2318C20D0](v88, -1, -1);
        goto LABEL_117;
      }

      v178 = v116;
      v179 = v359;
      sub_22CE85530(v176, v359, type metadata accessor for PushToken);
      sub_22CE40D28(&v360[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore], &v437);
      v180 = *(&v438 + 1);
      v181 = v439;
      __swift_project_boxed_opaque_existential_1(&v437, *(&v438 + 1));
      (*(v181 + 88))(&v442, *(v179 + 16), *(v179 + 24), v180, v181);
      sub_22CE70B40(v104, v337);
      sub_22CE42330(v178, &qword_27D9EEB28, &qword_22CE86BF0);
      sub_22CE85600(v179, type metadata accessor for PushToken);
      v96 = *(&v442 + 1);
      v97 = v442;
      v447 = v443;
      v448 = v444;
      v449 = v445;
      v450 = v446;
      __swift_destroy_boxed_opaque_existential_1(&v437);
LABEL_13:
      v98 = swift_allocObject();
      v99 = v98;
      if (v96)
      {
        *(v98 + 16) = v97;
        *(v98 + 24) = v96;
        v100 = v448;
        *(v98 + 32) = v447;
        *(v98 + 48) = v100;
        *(v98 + 64) = v449;
        *(v98 + 80) = v450;
        if (v97 == *(v90 + 16) && v96 == *(v90 + 24) || (sub_22CE86194() & 1) != 0)
        {
          if (((*(v99 + 80) | (*(v99 + 82) << 16)) & 0x800000) != 0 && (*(v99 + 82), *(v99 + 80) == 1))
          {
            v101 = *(v99 + 64);
            v102 = *(v99 + 72);

            if (v338)
            {
              if (v101 == v336 && v102 == v338)
              {

                goto LABEL_96;
              }

              v140 = sub_22CE86194();

              if (v140)
              {
LABEL_96:
                if ((*(v99 + 80) | (*(v99 + 82) << 16)) < 0)
                {
                  v143 = *(v99 + 40);
                  *(&v379 + 1) = *(v99 + 32);
                  v380 = v143;
                }

                else
                {
                  v141 = v356;
                  sub_22CE85994();
                  *(&v379 + 1) = sub_22CE85984();
                  v380 = v142;
                  (*(v357 + 8))(v141, v358);
                }

                v144 = *(v99 + 32);
                v145 = *(v99 + 64);
                v434 = *(v99 + 48);
                v435 = v145;
                v146 = *(v99 + 32);
                v433[0] = *(v99 + 16);
                v433[1] = v146;
                v147 = *(v99 + 64);
                v430 = v434;
                v431 = v147;
                v436 = *(v99 + 80);
                v432 = *(v99 + 80);
                v428 = v433[0];
                v429 = v144;
                sub_22CE41214(v433, &v423);
                sub_22CE80FA4(&v428, v377);
                v148 = *(v99 + 32);
                v149 = *(v99 + 64);
                v439 = *(v99 + 48);
                v440 = v149;
                v150 = *(v99 + 32);
                v437 = *(v99 + 16);
                v438 = v150;
                v151 = *(v99 + 64);
                v430 = v439;
                v431 = v151;
                v441 = *(v99 + 80);
                v432 = *(v99 + 80);
                v428 = v437;
                v429 = v148;
                sub_22CE41214(&v437, &v423);
                sub_22CE812C4(&v428, v376);
                v444 = v430;
                v445 = v431;
                v446 = v432;
                v442 = v428;
                v443 = v429;
                sub_22CE632E8(&v442);
                v152 = v374;
                sub_22CE81C94(v374);
                v153 = v372;
                v154 = v90 + v372[13];
                v155 = *v154;
                *(v154 + 8);
                v156 = v372[8];
                v157 = *(v378 + 16);
                v378 += 16;
                *&v379 = v156;
                v368 = v157;
                (v157)(v362, v90 + v156, v370);
                v158 = (v90 + v153[9]);
                v159 = *v158;
                v160 = v158[1];
                sub_22CE4DD94(v90 + v153[12], v364, &qword_27D9EEF40, &qword_22CE86C00);
                sub_22CE41BF0(v159, v160);
                sub_22CE85A84();
                sub_22CE4DD94(v152, v361, &qword_27D9EF0F8, &qword_22CE88EA8);
                v161 = v371;
                sub_22CE85AA4();
                v162 = v375;
                v163 = *(v375 + 56);
                v164 = v373;
                v163(v161, 0, 1, v373);
                v165 = *(v384 + 48);
                v166 = v365;
                sub_22CE4DD94(v161, v365, &qword_27D9EED60, "J#");
                if ((*(v162 + 48))(v166, 1, v164) == 1)
                {

                  sub_22CE42330(v166, &qword_27D9EED60, "J#");
                  v167 = sub_22CE85C74();
                  v168 = sub_22CE85F94();
                  if (os_log_type_enabled(v167, v168))
                  {
                    v169 = swift_slowAlloc();
                    *v169 = 0;
                    _os_log_impl(&dword_22CE3F000, v167, v168, "Error extracing payload from incoming message", v169, 2u);
                    MEMORY[0x2318C20D0](v169, -1, -1);
                  }

                  v170 = v161;
LABEL_107:
                  sub_22CE42330(v170, &qword_27D9EED60, "J#");
                  sub_22CE42330(v374, &qword_27D9EF0F8, &qword_22CE88EA8);
                  sub_22CE85600(v376, type metadata accessor for PushEvent.EventType);
                  (*(v340 + 8))(v377, v341);
LABEL_174:

                  goto LABEL_118;
                }

                (*(v162 + 32))(v369, v166, v164);
                v432 = *(v99 + 80);
                v171 = *(v99 + 64);
                v430 = *(v99 + 48);
                v431 = v171;
                v172 = *(v99 + 32);
                v428 = *(v99 + 16);
                v429 = v172;
                v363 = 0;
                if ((v432 | (SBYTE2(v432) << 16)) < 0)
                {
                  v365 = *(&v429 + 1);
                  v367 = v429;
                }

                else
                {
                  v418 = v428;
                  sub_22CE41214(&v428, &v423);

                  MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
                  sub_22CE632E8(&v428);
                  v365 = *(&v418 + 1);
                  v367 = v418;
                }

                LODWORD(v364) = (v165 - 3) < 0xFFFFFFFE;
                v183 = *(v99 + 16);
                v182 = *(v99 + 24);
                v184 = v354;
                v185 = v366;
                (v368)(&v366[*(v354 + 28)], v384 + v379, v370);
                sub_22CE85598(v376, &v185[v184[8]], type metadata accessor for PushEvent.EventType);
                (*(v340 + 16))(&v185[v184[9]], v377, v341);
                v186 = v184[10];
                v187 = v373;
                (*(v375 + 16))(&v185[v186], v369, v373);
                v163(&v185[v186], 0, 1, v187);
                v188 = v365;
                *v185 = v367;
                *(v185 + 1) = v188;
                v189 = v380;
                *(v185 + 2) = *(&v379 + 1);
                *(v185 + 3) = v189;
                *(v185 + 4) = v183;
                *(v185 + 5) = v182;
                v185[v184[11]] = v364;
                v190 = OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer;
                sub_22CE83C40(&v360[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_budgetServer], &v423);
                v191 = *(&v424 + 1);
                v192 = v425;
                __swift_project_boxed_opaque_existential_1(&v423, *(&v424 + 1));
                v193 = *(v192 + 56);

                v193(v185, v191, v192);
                __swift_destroy_boxed_opaque_existential_1(&v423);
                v194 = *(v99 + 80) | (*(v99 + 82) << 16);
                if ((v194 & 0x80000000) == 0)
                {
                  v195 = v384;
                  v196 = v352;
                  sub_22CE85598(v384 + v372[10], v352, type metadata accessor for IncomingMessage.EventType);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    sub_22CE85600(v196, type metadata accessor for IncomingMessage.EventType);

                    v197 = sub_22CE85C74();
                    v198 = sub_22CE85FA4();
                    if (os_log_type_enabled(v197, v198))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v399 = v200;
                      *v199 = 136380675;
                      swift_beginAccess();
                      v427 = *(v99 + 80);
                      v201 = *(v99 + 64);
                      v425 = *(v99 + 48);
                      v426 = v201;
                      v202 = *(v99 + 32);
                      v423 = *(v99 + 16);
                      v424 = v202;
                      v203 = v366;
                      if ((v427 | (SBYTE2(v427) << 16)) < 0)
                      {
                        v204 = *(&v424 + 1);
                        v205 = v424;
                      }

                      else
                      {
                        v413 = v423;
                        sub_22CE41214(&v423, &v418);

                        MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
                        sub_22CE632E8(&v423);

                        v204 = *(&v413 + 1);
                        v205 = v413;
                      }

                      v268 = sub_22CE44280(v205, v204, &v399);

                      *(v199 + 4) = v268;
                      _os_log_impl(&dword_22CE3F000, v197, v198, "Received pushToStart notification for %{private}s", v199, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v200);
                      MEMORY[0x2318C20D0](v200, -1, -1);
                      MEMORY[0x2318C20D0](v199, -1, -1);

                      v239 = v375;
                      v240 = v360;
                    }

                    else
                    {

                      v239 = v375;
                      v240 = v360;
                      v203 = v366;
                    }

                    v269 = v240;
                    sub_22CE83C40(&v240[v190], &v413);
                    v270 = *(&v414 + 1);
                    v271 = v415;
                    __swift_project_boxed_opaque_existential_1(&v413, *(&v414 + 1));
                    swift_beginAccess();
                    v427 = *(v99 + 80);
                    v272 = *(v99 + 64);
                    v425 = *(v99 + 48);
                    v426 = v272;
                    v273 = *(v99 + 32);
                    v423 = *(v99 + 16);
                    v424 = v273;
                    if ((v427 | (SBYTE2(v427) << 16)) < 0)
                    {
                      v275 = *(&v424 + 1);
                      v274 = v424;
                    }

                    else
                    {
                      v385 = v423;
                      sub_22CE41214(&v423, &v418);

                      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
                      sub_22CE632E8(&v423);
                      v275 = *(&v385 + 1);
                      v274 = v385;
                    }

                    v276 = (*(v271 + 32))(v274, v275, v270, v271);

                    __swift_destroy_boxed_opaque_existential_1(&v413);
                    if (v276)
                    {
                      sub_22CE78AE0(v383, v382, *(&v383 + 1), v343);

                      v277 = sub_22CE85C74();
                      v278 = sub_22CE85FA4();
                      if (os_log_type_enabled(v277, v278))
                      {
                        v279 = swift_slowAlloc();
                        v280 = swift_slowAlloc();
                        v410[0] = v280;
                        *v279 = 136446210;
                        v422 = *(v99 + 80);
                        v281 = *(v99 + 64);
                        v420 = *(v99 + 48);
                        v421 = v281;
                        v282 = *(v99 + 32);
                        v418 = *(v99 + 16);
                        v419 = v282;
                        if ((v422 | (SBYTE2(v422) << 16)) < 0)
                        {
                          v284 = *(&v419 + 1);
                          v285 = v419;

                          v283 = v285;
                        }

                        else
                        {
                          v385 = v418;
                          sub_22CE41214(&v418, &v413);

                          MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
                          sub_22CE632E8(&v418);

                          v284 = *(&v385 + 1);
                          v283 = v385;
                        }

                        v286 = sub_22CE44280(v283, v284, v410);

                        *(v279 + 4) = v286;
                        _os_log_impl(&dword_22CE3F000, v277, v278, "Push-to-start budget exceeded for %{public}s; not starting activity", v279, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v280);
                        MEMORY[0x2318C20D0](v280, -1, -1);
                        MEMORY[0x2318C20D0](v279, -1, -1);

                        sub_22CE85600(v203, type metadata accessor for PushEvent);
                        (*(v375 + 8))(v369, v373);
                      }

                      else
                      {

                        sub_22CE85600(v203, type metadata accessor for PushEvent);
                        (*(v239 + 8))(v369, v373);
                      }

                      v170 = v371;
                      goto LABEL_107;
                    }

                    v214 = v269;
                    goto LABEL_169;
                  }

                  v228 = v345;
                  sub_22CE85598(v195, v345, type metadata accessor for IncomingMessage);
                  v229 = sub_22CE85C74();
                  v230 = sub_22CE85F94();
                  v231 = os_log_type_enabled(v229, v230);
                  v232 = v341;
                  if (v231)
                  {
                    v233 = swift_slowAlloc();
                    v234 = swift_slowAlloc();
                    *&v423 = v234;
                    *v233 = 136446210;
                    sub_22CE85598(v228 + v372[10], v344, type metadata accessor for IncomingMessage.EventType);
                    v235 = sub_22CE85E24();
                    v237 = v236;
                    sub_22CE85600(v228, type metadata accessor for IncomingMessage);
                    v238 = sub_22CE44280(v235, v237, &v423);

                    *(v233 + 4) = v238;
                    _os_log_impl(&dword_22CE3F000, v229, v230, "Unsupported push notification event type for pushToStart subscription: %{public}s", v233, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v234);
                    MEMORY[0x2318C20D0](v234, -1, -1);
                    MEMORY[0x2318C20D0](v233, -1, -1);

                    sub_22CE85600(v366, type metadata accessor for PushEvent);
                    (*(v375 + 8))(v369, v373);
                    sub_22CE42330(v371, &qword_27D9EED60, "J#");
                    sub_22CE42330(v374, &qword_27D9EF0F8, &qword_22CE88EA8);
                    sub_22CE85600(v376, type metadata accessor for PushEvent.EventType);
                    (*(v340 + 8))(v377, v341);
                  }

                  else
                  {

                    sub_22CE85600(v228, type metadata accessor for IncomingMessage);
                    sub_22CE85600(v366, type metadata accessor for PushEvent);
                    (*(v375 + 8))(v369, v373);
                    sub_22CE42330(v371, &qword_27D9EED60, "J#");
                    sub_22CE42330(v374, &qword_27D9EF0F8, &qword_22CE88EA8);
                    sub_22CE85600(v376, type metadata accessor for PushEvent.EventType);
                    (*(v340 + 8))(v377, v232);
                  }

                  v241 = v196;
LABEL_144:
                  sub_22CE85600(v241, type metadata accessor for IncomingMessage.EventType);
                  goto LABEL_174;
                }

                v207 = *(v99 + 48);
                v206 = *(v99 + 56);
                v208 = *(v99 + 64);
                v209 = *(v99 + 72);
                v211 = *(v99 + 32);
                v210 = *(v99 + 40);
                v212 = (v194 >> 8) & 1;
                LODWORD(v380) = HIWORD(v194) & 1;
                *&v383 = v211;
                *(&v383 + 1) = v210;
                v410[0] = v211;
                v410[1] = v210;
                v410[2] = v207;
                v410[3] = v206;
                v410[4] = v208;
                v410[5] = v209;
                v412 = BYTE2(v194) & 0x7F;
                v411 = v194;
                sub_22CE85480(v410, &v423);

                sub_22CE85598(v384 + v372[10], v353, type metadata accessor for IncomingMessage.EventType);
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                if (EnumCaseMultiPayload)
                {
                  v214 = v360;
                  if (EnumCaseMultiPayload == 1)
                  {
                    *&v379 = v207;
                    *(&v379 + 1) = v206;
                    v215 = v342;
                    sub_22CE85598(v384, v342, type metadata accessor for IncomingMessage);
                    v216 = sub_22CE85C74();
                    v217 = sub_22CE85F94();
                    if (os_log_type_enabled(v216, v217))
                    {
                      v218 = swift_slowAlloc();
                      v378 = v208;
                      v219 = v218;
                      v220 = swift_slowAlloc();
                      LODWORD(v384) = (v194 >> 8) & 1;
                      v221 = v220;
                      *&v418 = v220;
                      *v219 = 136446210;
                      v222 = v215 + v372[10];
                      v370 = v209;
                      v223 = v215;
                      sub_22CE85598(v222, v344, type metadata accessor for IncomingMessage.EventType);
                      v224 = sub_22CE85E24();
                      v226 = v225;
                      sub_22CE85600(v223, type metadata accessor for IncomingMessage);
                      v227 = sub_22CE44280(v224, v226, &v418);

                      *(v219 + 4) = v227;
                      _os_log_impl(&dword_22CE3F000, v216, v217, "Unsupported push notification event type for activity subscription: %{public}s", v219, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v221);
                      MEMORY[0x2318C20D0](v221, -1, -1);
                      MEMORY[0x2318C20D0](v219, -1, -1);

                      v423 = v383;
                      v424 = v379;
                      *&v425 = v378;
                      *(&v425 + 1) = v370;
                      LOBYTE(v426) = v194;
                      BYTE1(v426) = v384;
                    }

                    else
                    {

                      sub_22CE85600(v215, type metadata accessor for IncomingMessage);
                      v423 = v383;
                      v424 = v379;
                      *&v425 = v208;
                      *(&v425 + 1) = v209;
                      LOWORD(v426) = v194 & 0x1FF;
                    }

                    BYTE2(v426) = v380;
                    sub_22CE854DC(&v423);
                    sub_22CE85600(v366, type metadata accessor for PushEvent);
                    (*(v375 + 8))(v369, v373);
                    sub_22CE42330(v371, &qword_27D9EED60, "J#");
                    sub_22CE42330(v374, &qword_27D9EF0F8, &qword_22CE88EA8);
                    sub_22CE85600(v376, type metadata accessor for PushEvent.EventType);
                    (*(v340 + 8))(v377, v341);
                    v241 = v353;
                    goto LABEL_144;
                  }

                  v370 = v209;
                  v203 = v366;
                  if (*(v384 + 48) != 2 && (v194 & 0x10000) == 0)
                  {
                    *&v379 = v207;
                    *(&v379 + 1) = v206;
                    v378 = v208;
                    LODWORD(v384) = (v194 >> 8) & 1;
                    sub_22CE83C40(&v360[v190], &v413);
                    v262 = *(&v414 + 1);
                    v263 = v415;
                    __swift_project_boxed_opaque_existential_1(&v413, *(&v414 + 1));
                    v427 = *(v99 + 80);
                    v264 = *(v99 + 64);
                    v425 = *(v99 + 48);
                    v426 = v264;
                    v265 = *(v99 + 32);
                    v423 = *(v99 + 16);
                    v424 = v265;
                    if ((v427 | (SBYTE2(v427) << 16)) < 0)
                    {
                      v267 = *(&v424 + 1);
                      v266 = v424;
                    }

                    else
                    {
                      v399 = v423;
                      sub_22CE41214(&v423, &v418);

                      MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
                      sub_22CE632E8(&v423);
                      v267 = *(&v399 + 1);
                      v266 = v399;
                    }

                    LOBYTE(v418) = 1;
                    v287 = (*(v263 + 40))(v266, v267, &v418, v262, v263);

                    __swift_destroy_boxed_opaque_existential_1(&v413);
                    if (v287)
                    {
                      v390[0] = v383;
                      v288 = *(&v383 + 1);
                      v390[1] = v379;
                      v289 = v379;
                      v391 = v378;
                      v290 = v378;
                      v392 = v370;
                      v291 = v370;
                      LOBYTE(v393) = v194;
                      HIBYTE(v393) = v384;
                      v394 = 1;
                      v292 = *(v99 + 80);
                      v293 = v393 & 0x103;
                      v382 = *(v99 + 32);
                      v294 = *(v99 + 48);
                      v380 = *(v99 + 40);
                      v295 = *(v99 + 56);
                      v296 = *(v99 + 64);
                      v297 = *(v99 + 72);
                      v298 = v292 | (*(v99 + 82) << 16);
                      *(v99 + 32) = v383;
                      *(v99 + 40) = v288;
                      *(v99 + 48) = v289;
                      *(v99 + 64) = v290;
                      *(v99 + 72) = v291;
                      *(v99 + 82) = -127;
                      *(v99 + 80) = v293;
                      sub_22CE85480(v390, &v418);
                      sub_22CE62988(v382, v380, v294, v295, v296, v297, v298);
                      sub_22CE40D28(&v360[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_subscriptionStore], &v385);
                      v300 = *(&v386 + 1);
                      v299 = v387;
                      __swift_project_boxed_opaque_existential_1(&v385, *(&v386 + 1));
                      v301 = *(v99 + 32);
                      v302 = *(v99 + 64);
                      v396 = *(v99 + 48);
                      v397 = v302;
                      v303 = *(v99 + 32);
                      v395[0] = *(v99 + 16);
                      v395[1] = v303;
                      v304 = *(v99 + 64);
                      v420 = v396;
                      v421 = v304;
                      v398 = *(v99 + 80);
                      v422 = *(v99 + 80);
                      v418 = v395[0];
                      v419 = v301;
                      v305 = *(v299 + 48);
                      sub_22CE41214(v395, &v413);
                      v305(&v418, v300, v299);
                      v214 = v360;
                      v401 = v420;
                      v402 = v421;
                      v403 = v422;
                      v399 = v418;
                      v400 = v419;
                      sub_22CE632E8(&v399);
                      __swift_destroy_boxed_opaque_existential_1(&v385);
                      v306 = *(v99 + 32);
                      v307 = *(v99 + 64);
                      v415 = *(v99 + 48);
                      v416 = v307;
                      v308 = *(v99 + 32);
                      v413 = *(v99 + 16);
                      v414 = v308;
                      v309 = *(v99 + 64);
                      v387 = v415;
                      v388 = v309;
                      v417 = *(v99 + 80);
                      v389 = *(v99 + 80);
                      v385 = v413;
                      v386 = v306;
                      sub_22CE41214(&v413, &v418);
                      sub_22CE8071C(&v385);
                      v420 = v387;
                      v421 = v388;
                      v422 = v389;
                      v418 = v385;
                      v419 = v386;
                      sub_22CE632E8(&v418);
                      v404[0] = v383;
                      v404[1] = v379;
                      v405 = v378;
                      v406 = v370;
                      v407 = v194;
                      v408 = v384;
                      v409 = 1;
                      v310 = v404;
LABEL_168:
                      sub_22CE854DC(v310);
LABEL_169:
                      v261 = v346;
                      goto LABEL_170;
                    }

                    v214 = v360;
                    LOBYTE(v212) = v384;
                    v208 = v378;
                    v206 = *(&v379 + 1);
                    v207 = v379;
                  }

                  v423 = v383;
                  *&v424 = v207;
                  *(&v424 + 1) = v206;
                  *&v425 = v208;
                  *(&v425 + 1) = v370;
                  LOBYTE(v426) = v194;
                  BYTE1(v426) = v212;
                  BYTE2(v426) = v380;
                  v310 = &v423;
                  goto LABEL_168;
                }

                *&v379 = v207;
                *(&v379 + 1) = v206;
                v378 = v208;
                v242 = *(v99 + 32);
                v243 = *(v99 + 64);
                v425 = *(v99 + 48);
                v426 = v243;
                v244 = *(v99 + 32);
                v423 = *(v99 + 16);
                v424 = v244;
                v245 = *(v99 + 64);
                v420 = v425;
                v421 = v245;
                v427 = *(v99 + 80);
                v422 = *(v99 + 80);
                v418 = v423;
                v419 = v242;
                sub_22CE41214(&v423, &v413);
                v214 = v360;
                v246 = v363;
                sub_22CE76D38(&v418);
                if (v246)
                {
                  v415 = v420;
                  v416 = v421;
                  v417 = v422;
                  v413 = v418;
                  v414 = v419;
                  sub_22CE632E8(&v413);
                  v247 = v246;
                  v248 = sub_22CE85C74();
                  v249 = sub_22CE85F94();

                  if (os_log_type_enabled(v248, v249))
                  {
                    v250 = swift_slowAlloc();
                    LODWORD(v384) = (v194 >> 8) & 1;
                    v251 = v250;
                    v252 = swift_slowAlloc();
                    *&v395[0] = v252;
                    *v251 = 136446210;
                    *&v399 = v246;
                    v253 = v246;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EF100, &qword_22CE88EB0);
                    v254 = sub_22CE85E24();
                    v256 = sub_22CE44280(v254, v255, v395);
                    v370 = v209;
                    v257 = v256;

                    *(v251 + 4) = v257;
                    v258 = v353;
                    _os_log_impl(&dword_22CE3F000, v248, v249, "Error unsubscribing from push notifications: %{public}s", v251, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1(v252);
                    v259 = v252;
                    v214 = v360;
                    MEMORY[0x2318C20D0](v259, -1, -1);
                    MEMORY[0x2318C20D0](v251, -1, -1);

                    v399 = v383;
                    v400 = v379;
                    *&v401 = v378;
                    *(&v401 + 1) = v370;
                    LOBYTE(v402) = v194;
                    BYTE1(v402) = v384;
                    BYTE2(v402) = v380;
                    sub_22CE854DC(&v399);
                    v260 = v258;
                    v261 = v346;
LABEL_159:
                    sub_22CE42330(v260, &qword_27D9EEF40, &qword_22CE86C00);
                    v203 = v366;
LABEL_170:
                    sub_22CE85598(v203, v261, type metadata accessor for PushEvent);
                    v311 = sub_22CE85C74();
                    v312 = sub_22CE85FA4();
                    if (os_log_type_enabled(v311, v312))
                    {
                      v313 = swift_slowAlloc();
                      v314 = v214;
                      v315 = swift_slowAlloc();
                      *&v423 = v315;
                      *v313 = 136446210;
                      v316 = PushEvent.description.getter();
                      v317 = v261;
                      v319 = v318;
                      sub_22CE85600(v317, type metadata accessor for PushEvent);
                      v320 = sub_22CE44280(v316, v319, &v423);

                      *(v313 + 4) = v320;
                      _os_log_impl(&dword_22CE3F000, v311, v312, "Publishing event: %{public}s", v313, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v315);
                      v321 = v315;
                      v214 = v314;
                      MEMORY[0x2318C20D0](v321, -1, -1);
                      MEMORY[0x2318C20D0](v313, -1, -1);
                    }

                    else
                    {

                      sub_22CE85600(v261, type metadata accessor for PushEvent);
                    }

                    v322 = v340;
                    v323 = v347;
                    sub_22CE85C54();
                    v324 = *&v214[OBJC_IVAR____TtC24SessionPushNotifications10PushServer_calloutQueue];
                    v325 = v203;
                    v326 = v349;
                    sub_22CE85598(v325, v349, type metadata accessor for PushEvent);
                    v327 = *(v323 + 80);
                    v328 = v214;
                    v329 = (v327 + 24) & ~v327;
                    v330 = swift_allocObject();
                    *(v330 + 16) = v328;
                    sub_22CE85530(v326, v330 + v329, type metadata accessor for PushEvent);
                    v331 = v328;
                    sub_22CE85C44();
                    sub_22CE85C34();

                    sub_22CE85600(v366, type metadata accessor for PushEvent);
                    (*(v375 + 8))(v369, v373);
                    sub_22CE42330(v371, &qword_27D9EED60, "J#");
                    sub_22CE42330(v374, &qword_27D9EF0F8, &qword_22CE88EA8);
                    sub_22CE85600(v376, type metadata accessor for PushEvent.EventType);
                    (*(v322 + 8))(v377, v341);
                    goto LABEL_174;
                  }
                }

                else
                {
                  v415 = v420;
                  v416 = v421;
                  v417 = v422;
                  v413 = v418;
                  v414 = v419;
                  sub_22CE632E8(&v413);
                }

                v399 = v383;
                v400 = v379;
                *&v401 = v378;
                *(&v401 + 1) = v209;
                LOWORD(v402) = v194 & 0x1FF;
                BYTE2(v402) = v380;
                sub_22CE854DC(&v399);
                v261 = v346;
                v260 = v353;
                goto LABEL_159;
              }
            }

            else
            {
            }
          }

          else if (!v338)
          {
            goto LABEL_96;
          }

          v86 = sub_22CE85C74();
          v137 = sub_22CE85F94();
          if (!os_log_type_enabled(v86, v137))
          {
            goto LABEL_101;
          }

          v138 = swift_slowAlloc();
          *v138 = 0;
          v139 = "Incoming message channel does not match subscription channel";
        }

        else
        {

          v86 = sub_22CE85C74();
          v137 = sub_22CE85F94();
          if (!os_log_type_enabled(v86, v137))
          {
LABEL_101:

            goto LABEL_117;
          }

          v138 = swift_slowAlloc();
          *v138 = 0;
          v139 = "Incoming message topic does not match subscription topic";
        }

        _os_log_impl(&dword_22CE3F000, v86, v137, v139, v138, 2u);
        MEMORY[0x2318C20D0](v138, -1, -1);
        goto LABEL_101;
      }

      goto LABEL_114;
    }

    v41 = 0;
    v63 = 0;
    v109 = *(&v379 + 1);
    v351 = v108 + ((*(*(&v379 + 1) + 80) + 32) & ~*(*(&v379 + 1) + 80));
    if (v104)
    {
      v110 = 0;
    }

    else
    {
      v110 = v103 == 0xC000000000000000;
    }

    v111 = !v110;
    v335 = v111;
    v112 = v104;
    v113 = v103 >> 62;
    v339 = v112;
    v114 = HIDWORD(v112) - v112;
    v115 = __OFSUB__(HIDWORD(v112), v112);
    v333 = v115;
    v332 = v114;
    v334 = BYTE6(v103);
    v116 = v380;
    v69 = v379;
    while (1)
    {
      if (v41 >= *(v108 + 16))
      {
        goto LABEL_176;
      }

      v4 = v108;
      sub_22CE85598(v351 + *(v109 + 72) * v41, v69, type metadata accessor for PushToken);
      v117 = *v69;
      v118 = v69[1];
      v119 = v118 >> 62;
      if (v118 >> 62 == 3)
      {
        break;
      }

      if (v119 > 1)
      {
        if (v119 != 2)
        {
          goto LABEL_63;
        }

        v125 = *(v117 + 16);
        v124 = *(v117 + 24);
        v126 = __OFSUB__(v124, v125);
        v123 = v124 - v125;
        if (v126)
        {
          goto LABEL_181;
        }

        if (v113 <= 1)
        {
          goto LABEL_60;
        }
      }

      else if (v119)
      {
        LODWORD(v123) = HIDWORD(v117) - v117;
        if (__OFSUB__(HIDWORD(v117), v117))
        {
          goto LABEL_180;
        }

        v123 = v123;
        if (v113 <= 1)
        {
LABEL_60:
          v127 = v334;
          if (v113)
          {
            v127 = v332;
            if (v333)
            {
              goto LABEL_179;
            }
          }

          goto LABEL_66;
        }
      }

      else
      {
        v123 = BYTE6(v118);
        if (v113 <= 1)
        {
          goto LABEL_60;
        }
      }

LABEL_64:
      if (v113 != 2)
      {
        if (!v123)
        {
          goto LABEL_88;
        }

        goto LABEL_39;
      }

      v129 = *(v339 + 16);
      v128 = *(v339 + 24);
      v126 = __OFSUB__(v128, v129);
      v127 = v128 - v129;
      if (v126)
      {
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
      }

LABEL_66:
      if (v123 == v127)
      {
        if (v123 < 1)
        {
          goto LABEL_88;
        }

        if (v119 > 1)
        {
          if (v119 != 2)
          {
            *(&v437 + 6) = 0;
            *&v437 = 0;
LABEL_87:
            sub_22CE8228C(&v437, v339, v337, v433);
            if (v433[0])
            {
              goto LABEL_88;
            }

            goto LABEL_39;
          }

          v130 = *(v117 + 16);
          v131 = *(v117 + 24);
          v132 = sub_22CE85804();
          if (v132)
          {
            v133 = sub_22CE85824();
            if (__OFSUB__(v130, v133))
            {
              goto LABEL_184;
            }

            v132 += v130 - v133;
          }

          if (__OFSUB__(v131, v130))
          {
            goto LABEL_183;
          }
        }

        else
        {
          if (!v119)
          {
            *&v437 = *v69;
            WORD4(v437) = v118;
            BYTE10(v437) = BYTE2(v118);
            BYTE11(v437) = BYTE3(v118);
            BYTE12(v437) = BYTE4(v118);
            BYTE13(v437) = BYTE5(v118);
            goto LABEL_87;
          }

          v134 = v117;
          if (v117 >> 32 < v117)
          {
            goto LABEL_182;
          }

          v132 = sub_22CE85804();
          if (v132)
          {
            v135 = sub_22CE85824();
            if (__OFSUB__(v134, v135))
            {
              goto LABEL_185;
            }

            v132 += v134 - v135;
          }
        }

        sub_22CE85814();
        sub_22CE8228C(v132, v339, v337, &v437);
        v109 = *(&v379 + 1);
        v116 = v380;
        v69 = v379;
        if (v437)
        {
          goto LABEL_88;
        }
      }

LABEL_39:
      ++v41;
      sub_22CE85600(v69, type metadata accessor for PushToken);
      v108 = v4;
      if (v350 == v41)
      {

        v136 = 1;
        goto LABEL_111;
      }
    }

    if (v117)
    {
      v120 = 0;
    }

    else
    {
      v120 = v118 == 0xC000000000000000;
    }

    v122 = !v120 || v113 < 3;
    if (((v122 | v335) & 1) == 0)
    {
LABEL_88:

      sub_22CE85530(v69, v116, type metadata accessor for PushToken);
      v136 = 0;
LABEL_111:
      v90 = v384;
      v104 = v339;
      goto LABEL_112;
    }

LABEL_63:
    v123 = 0;
    if (v113 <= 1)
    {
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  v86 = sub_22CE85C74();
  v87 = sub_22CE85F94();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    v89 = "Incoming message provides neither token nor channel";
    goto LABEL_116;
  }

LABEL_117:

LABEL_118:
  v177 = *MEMORY[0x277D85DE8];
}