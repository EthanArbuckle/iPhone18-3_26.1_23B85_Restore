uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TY2_()
{
  v1 = *(v0 + 16);
  if (v1 != *(*(v0 + 48) + 24))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  **(v0 + 32) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKFAC7SessionC14LocalInterfaceV15ActivationTokenVyYacfU_(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall XPCSystem.TransportReceiver.cancel()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v0 + 16), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      v3 = *(v0 + 56);

      v2(v4);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v2);
      v5 = *(v0 + 48);
      v6 = *(v0 + 56);
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t XPCSystem.TransportReceiver.unwindPeers()()
{
  *(v1 + 56) = v0;
  return MEMORY[0x2822009F8](XPCSystem.TransportReceiver.unwindPeers(), 0, 0);
}

{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v2 + 16);
  v0[8] = v3;
  if (v3)
  {

    v4 = 32;
    v5 = MEMORY[0x277D84A98];
    v6 = MEMORY[0x277D84AC0];
    do
    {
      v7 = *(v2 + v4);

      MEMORY[0x277C6B800](v8, &type metadata for XPCSystem.Session.LocalInterface.ActivationToken, v5, v6);

      v4 += 8;
      --v3;
    }

    while (v3);

    v13 = *(v1 + 64);
    v0[9] = v13;
    v14 = v13[2];
    v0[10] = v14;
    if (v14)
    {
      v0[11] = 0;
      v15 = v13[4];
      v0[12] = v15;

      v16 = *(MEMORY[0x277D857D0] + 4);

      v17 = swift_task_alloc();
      v0[13] = v17;
      *v17 = v0;
      v17[1] = XPCSystem.TransportReceiver.unwindPeers();
      v10 = &type metadata for XPCSystem.Session.LocalInterface.ActivationToken;
      v11 = MEMORY[0x277D84A98];
      v12 = MEMORY[0x277D84AC0];
      v13 = v0 + 5;
      v9 = v15;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200440](v13, v9, v10, v11, v12);
  }

  else
  {
    v18 = v0[1];

    return v18();
  }
}

{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](XPCSystem.TransportReceiver.unwindPeers(), 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  if (v2 + 1 != v3)
  {
LABEL_4:
    v7 = v0[11] + 1;
    v0[11] = v7;
    v8 = *(v0[9] + 8 * v7 + 32);
    v0[12] = v8;
    v9 = *(MEMORY[0x277D857D0] + 4);

    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = XPCSystem.TransportReceiver.unwindPeers();
    v11 = MEMORY[0x277D84A98];
    v12 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v0 + 5, v8, &type metadata for XPCSystem.Session.LocalInterface.ActivationToken, v11, v12);
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  if (v5 != *(*(v6 + 64) + 16))
  {
    __break(1u);
    goto LABEL_4;
  }

  v13 = v0[1];

  return v13();
}

void *XPCSystem.TransportReceiver.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v0[6]);
  v4 = v0[8];

  return v0;
}

uint64_t XPCSystem.TransportReceiver.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v0[6]);
  v4 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = v2;
  *(v3 + 96) = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY0_()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = specialized static XPCSystem.Transport.InProcessRawTransport.makePair(_:)();
  v6 = v5;
  v0[13] = v4;
  v0[14] = v5;
  if (one-time initialization token for default != -1)
  {
LABEL_10:
    swift_once();
  }

  v7 = static ID64.default;
  do
  {
    v8 = v7 + 1;
    if (v7 == -1)
    {
      __break(1u);
      goto LABEL_10;
    }

    v9 = v7;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v9, v8, memory_order_relaxed, memory_order_relaxed);
    v10 = v9 == v7;
    v7 = v9;
  }

  while (!v10);
  v21 = v0[11];
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x277C6B720](v2, v3);
  MEMORY[0x277C6B720](0x6E756F6274756F2FLL, 0xEA00000000002D64);
  v0[8] = v8;
  _print_unlocked<A, B>(_:_:)();
  v11 = v0[2];
  v12 = v0[3];
  type metadata accessor for XPCSystem.Transport();
  v13 = swift_allocObject();

  v0[15] = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v11, v12, v4, v13);
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  MEMORY[0x277C6B720](v2, v3);
  MEMORY[0x277C6B720](0x646E756F626E692FLL, 0xE90000000000002DLL);
  v0[9] = v8;
  _print_unlocked<A, B>(_:_:)();
  v14 = v0[4];
  v15 = v0[5];
  v16 = swift_allocObject();

  v0[16] = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v14, v15, v6, v16);
  v17 = *(v21 + 32);
  v18 = *(MEMORY[0x277CBCEA0] + 4);
  v19 = swift_task_alloc();
  v0[17] = v19;
  *v19 = v0;
  v19[1] = _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTQ1_;

  return MEMORY[0x28210E9A8](v0 + 10);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTQ1_()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC88LL5usingAC9TransportCAC_tYaAC10SetupErrorVYKFTY2_()
{
  v1 = v0[10];
  _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKF(v0[16]);
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];
  v6 = v0[15];

  return v5(v6);
}

uint64_t XPCSystem.InProcessService.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMd, &_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMR);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v9 = Future.init(_:)();
  result = swift_beginAccess();
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = *(v5 + 24);

    v4[4] = v9;
    v4[5] = v11;
    v4[6] = v12;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.InProcessService.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMd, &_s7Combine6FutureCy14XPCDistributed9XPCSystemC17TransportReceiverCs5NeverOGMR);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = Future.init(_:)();
  result = swift_beginAccess();
  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = *(v4 + 24);

    v3[4] = v8;
    v3[5] = v10;
    v3[6] = v11;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *XPCSystem.InProcessService.deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[6];

  return v0;
}

uint64_t XPCSystem.InProcessService.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];
  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v8 = swift_task_alloc();
  v7[12] = v8;
  *v8 = v7;
  v8[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v6, (v7 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[14] = v7;
    *v7 = v6;
    v7[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
    v8 = v4[9];
    v9 = v4[10];
    v10 = v4[7];
    v11 = v4[8];
    v12 = v4[6];

    return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v12, a1, v10, v11, v8, (v4 + 4));
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC16InProcessServiceC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[5];
  *v2 = v0[4];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v8;
  v9[13] = a8;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v9[6] = a1;
  v9[7] = a3;
  v10 = swift_task_alloc();
  v9[14] = v10;
  *v10 = v9;
  v10[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v8, (v9 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY3_, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[16] = v7;
    *v7 = v6;
    v7[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ1_;
    v8 = v4[11];
    v9 = v4[12];
    v10 = v4[9];
    v11 = v4[10];
    v12 = v4[7];
    v13 = v4[8];
    v14 = v4[6];

    return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(v14, a1, v12, v13, v10, v11, v8, (v4 + 4));
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTQ1_()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY4_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY2_()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY3_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC16InProcessServiceC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0N0R_r0_lFTY4_()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = v0[5];
  *v2 = v0[4];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[8] = a3;
  v4[6] = a1;
  v5 = swift_task_alloc();
  v4[9] = v5;
  *v5 = v4;
  v5[1] = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v3, (v4 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTQ0_(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY2_;
  }

  else
  {
    v5 = _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY1_;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY1_()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v4 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v3, v1, 0, (v0 + 32));
  v5 = *(v0 + 80);
  if (v2)
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);

    *v6 = v7;
    v6[1] = v8;
  }

  else
  {
    **(v0 + 48) = v4;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC16InProcessServiceC_tYaAC10SetupErrorVYKFTY2_()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t XPCSystem.listen(on:executingForEachPeer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](XPCSystem.listen(on:executingForEachPeer:), 0, 0);
}

uint64_t XPCSystem.listen(on:executingForEachPeer:)()
{
  v1 = swift_allocObject();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = XPCSystem.listen(on:executingForEachPeer:);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_(&async function pointer to partial apply for thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken), v1, v3, v4);
}

{
  v2 = *(*v1 + 72);
  v5 = *v1;

  if (v0)
  {
    v3 = XPCSystem.listen(on:executingForEachPeer:);
  }

  else
  {
    v3 = XPCSystem.listen(on:executingForEachPeer:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }

  return result;
}

{
  v1 = v0[8];
  v2 = v0[2];
  v3 = v0[3];
  lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
  swift_allocError();
  *v4 = v2;
  v4[1] = v3;
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return v9(a1, a2);
}

uint64_t partial apply for thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)(a1, a2, v7);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY0_()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for XPCSystem.TransportReceiver();
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = 0;
  v6 = MEMORY[0x277D84F90];
  *(v5 + 56) = 0;
  *(v5 + 64) = v6;

  v7 = swift_task_alloc();
  v0[7] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  v8 = *(MEMORY[0x277D85A10] + 4);

  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TQ1_;
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v9, &_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TATu, v7, _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYbXEfU0_TA, v5, 0, 0, v10);
}

void _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 56);

    MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_TY2_()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TY0_()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TQ1_;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000020, 0x80000002751B98D0, _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_TA, v1, v5);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TQ1_()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  (*(v7 + 16))(&v18 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  *(a2 + 48) = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_yyYbcfU_TA;
  *(a2 + 56) = v12;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v13);
  v16 = *(a3 + 40);
  v15 = *(a3 + 48);
  v18 = a2;
  v19 = 0;

  v16(&v18);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYbXEfU0_(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((result + 16), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v1)
  {
    v3 = (result + 48);
    v2 = *(result + 48);
    if (v2)
    {
      v4 = *(result + 56);
      v5 = result;

      v2(v6);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v2);
      v7 = *(v5 + 48);
      v8 = *(v5 + 56);
      *v3 = 0;
      v3[1] = 0;

      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = v6;
  v7[11] = a6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a1;
  v7[7] = a3;
  v8 = swift_task_alloc();
  v7[12] = v8;
  *v8 = v7;
  v8[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v6, (v7 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ0_(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY4_;
  }

  else
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY1_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY1_()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ2_;
  v5 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 48);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v8, v5, &_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TATu, v2, v6, v0 + 32);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ2_()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;

  if (v0)
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY5_;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY5_()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[5];
  *v3 = v0[4];
  v3[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  *(v4 + 16) = *a3;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();

  return v10(a1, a2, v4 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TA(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(a1, a2, a3, v9);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = v5;
  v6[12] = a5;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a1;
  v7 = swift_task_alloc();
  v6[13] = v7;
  *v7 = v6;
  v7[1] = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTQ0_;

  return _s14XPCDistributed9XPCSystemC16InProcessServiceC7connect33_5CCECF3DC83765D42C0E856F2292EC885usingAC9TransportCAC_tYaAC10SetupErrorVYKF(v5, (v6 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTQ0_(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v7 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v5 = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY2_;
  }

  else
  {
    v5 = _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY1_;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY1_()
{
  v19 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v4 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v3, v1, 6, v0 + 4);
  if (v2)
  {
    v5 = v0[4];
    v6 = v0[5];
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_allocError();
    *v7 = v5;
    v7[1] = v6;

    return swift_unexpectedError();
  }

  else
  {
    v9 = v4;
    v11 = v0[9];
    v10 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v12 + 16) = v13;
    *(v12 + 24) = v9;
    v18 = v12;

    v14 = v11(&v18);

    _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v14, v0 + 6);
    v15 = v0[14];
    v16 = v0[8];

    *v16 = v9;

    v17 = v0[1];

    return v17();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC0J14ProcessServiceC_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY2_()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_(a1, v5, v4);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_yyYbcfU_TA()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return CheckedContinuation.resume(returning:)();
}

uint64_t XPCSystem.Transport.InProcessRawTransport.Locked.remoteEnd.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC012InProcessRawC0C8activate7linkingyAE_tAC10SetupErrorVYKF(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t XPCSystem.Transport.InProcessRawTransport.receive(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for DispatchQoS();
  v10 = *(v20[0] - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v20[0]);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  if (v15)
  {
    v16 = *(v15 + 56);
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = v2;
    aBlock[4] = partial apply for closure #1 in XPCSystem.Transport.InProcessRawTransport.receive(_:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_3;
    v18 = _Block_copy(aBlock);
    v19 = v16;

    static DispatchQoS.unspecified.getter();
    v20[1] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x277C6B8E0](0, v14, v9, v18);
    _Block_release(v18);

    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v14, v20[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall XPCSystem.Transport.InProcessRawTransport.cancel()()
{
  v1 = *(v0 + 32);
  v2 = 0;
  (*(*v1 + 168))(&v3, &v2);
  if (v3)
  {

    XPCSystem.Transport.InProcessRawTransport.receive(_:)(closure #1 in XPCSystem.Transport.InProcessRawTransport.cancel(), 0);
    XPCSystem.Transport.InProcessRawTransport.receive(_:)(closure #1 in XPCSystem.Transport.InProcessRawTransport.cancel(), 0);
  }
}

uint64_t XPCSystem.Transport.InProcessRawTransport.handleReceivedCancellation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = *(v8 + 56);
  *v7 = v9;
  (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v1 + 32);
  swift_getKeyPath();
  v14[1] = 0;
  (*(*v11 + 152))();

  if (*(v1 + 24))
  {
    return result;
  }

  *(v1 + 24) = 1;
  if (!*(v1 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v12 = *(v1 + 16);

  XPCSystem.Transport.handleCancellation()();

  v13 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t XPCSystem.Transport.InProcessRawTransport.handleReceivedPacket(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + 16);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(v10 + 56);
  *v9 = v11;
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = *(v2 + 32);
  swift_getKeyPath();
  (*(*v13 + 136))(&v16);

  if (!v16)
  {
    return result;
  }

  if (!*(v2 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = *(v2 + 16);

  XPCSystem.Transport.handleReceivedPacket(_:)(a1);
}

unint64_t _s14XPCDistributed9XPCSystemC9TransportC012InProcessRawC0C4send6packetyAE6PacketV_tAE0fC5ErrorOYKF(uint64_t a1)
{
  v3 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 32);
  swift_getKeyPath();
  (*(*v6 + 136))(v10);

  if (v10[0])
  {
    outlined init with copy of XPCSystem.Transport.Packet(a1, v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v8 = swift_allocObject();
    outlined init with take of XPCSystem.Transport.Packet(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    XPCSystem.Transport.InProcessRawTransport.receive(_:)(_s14XPCDistributed9XPCSystemC9TransportC012InProcessRawC0C4send6packetyAE6PacketV_tAE0fC5ErrorOYKFyAGcfU_TA, v8);
  }

  else
  {
    v8 = 0xD000000000000022;
    v10[0] = 0xD000000000000022;
    v10[1] = 0x80000002751B9900;
    lazy protocol witness table accessor for type XPCSystem.Transport.RawTransportError and conformance XPCSystem.Transport.RawTransportError();
    swift_willThrowTypedImpl();
  }

  return v8;
}

double XPCSystem.Transport.InProcessRawTransport.auditToken.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t XPCSystem.Transport.InProcessRawTransport.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t XPCSystem.Transport.InProcessRawTransport.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC012InProcessRawC0CAE0fC8ProtocolAaeHP8activate7linkingyAE_tAC10SetupErrorVYKFTW(uint64_t a1)
{
  v3 = *(*v1 + 16);
  *(*v1 + 16) = a1;
}

double protocol witness for XPCSystem.Transport.RawTransportProtocol.auditToken.getter in conformance XPCSystem.Transport.InProcessRawTransport@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t specialized static XPCSystem.Transport.InProcessRawTransport.makePair(_:)()
{
  type metadata accessor for XPCSystem.Transport.InProcessRawTransport();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC9TransportC012InProcessRawD0C6LockedVGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC9TransportC012InProcessRawD0C6LockedVGMR);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v1 + 16) = v2;
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  *(v1 + 24) = 0;
  *(v0 + 32) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;

  os_unfair_lock_lock(v3);
  swift_beginAccess();
  v7 = *(v1 + 24);
  *(v1 + 24) = v4;

  os_unfair_lock_unlock(v3);

  v8 = *(v4 + 32);
  KeyPath = swift_getKeyPath();
  v12 = v0;
  v10 = *(*v8 + 152);

  v10(KeyPath, &v12);

  return v0;
}

uint64_t outlined init with copy of XPCSystem.Transport.Packet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Transport.InProcessRawTransport.Locked(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Transport.InProcessRawTransport.Locked(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t preconditionInternal(_:_:file:line:)(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    v4 = a2(v3);
    MEMORY[0x277C6B720](v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t preconditionAPI(_:_:file:line:)(uint64_t result, uint64_t (*a2)(uint64_t))
{
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(17);

    v4 = a2(v3);
    MEMORY[0x277C6B720](v4);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t forceUnwrap<A>(_:_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  a1(v11);
  v14 = *(a3 - 8);
  if ((*(v14 + 48))(v13, 1, a3) != 1)
  {
    return (*(v14 + 32))(a4, v13, a3);
  }

  (*(v9 + 8))(v13, v8);
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v18 = 0xD000000000000017;
  v19 = 0x80000002751B8C50;
  v17 = a2(v16);
  MEMORY[0x277C6B720](v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void preconditionFailureAPI(_:file:line:)(uint64_t (*a1)(uint64_t))
{
  _StringGuts.grow(_:)(17);

  v3 = a1(v2);
  MEMORY[0x277C6B720](v3);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void preconditionFailureInternal(_:file:line:)(uint64_t (*a1)(uint64_t))
{
  _StringGuts.grow(_:)(25);

  v3 = a1(v2);
  MEMORY[0x277C6B720](v3);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t forceCast<A, B>(_:to:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v24 = a2;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  (*(v9 + 16))(v12, a1, a3);
  v18 = swift_dynamicCast();
  v19 = *(a4 - 8);
  (*(v19 + 56))(v17, v18 ^ 1u, 1, a4);
  if ((*(v19 + 48))(v17, 1, a4) != 1)
  {
    return (*(v19 + 32))(a5, v17, a4);
  }

  (*(v14 + 8))(v17, v13);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v25 = 0xD000000000000017;
  v26 = 0x80000002751B8C50;
  v22 = v24(v21);
  MEMORY[0x277C6B720](v22);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.Service.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static XPCSystem.Service.machService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t static XPCSystem.Service.xpcService(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t XPCSystem.Service.makeXPCSession(peerRequirement:)(uint64_t a1)
{
  v20[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for XPCPeerRequirement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCSession.InitializationOptions();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v14 = *v1;
  v15 = *(v1 + 1);
  v16 = *(v1 + 2);
  type metadata accessor for XPCSession();

  static XPCSession.InitializationOptions.inactive.getter();
  if (v14 == 1)
  {
    v17 = XPCSession.__allocating_init(machService:targetQueue:options:cancellationHandler:)();
  }

  else
  {
    v17 = XPCSession.__allocating_init(xpcService:targetQueue:options:cancellationHandler:)();
  }

  v18 = v17;
  outlined init with copy of XPCPeerRequirement?(v20[0], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    XPCSession.setPeerRequirement(_:)();
    (*(v7 + 8))(v10, v6);
  }

  return v18;
}

uint64_t static XPCSystem.Service.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t XPCSystem.Service.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int XPCSystem.Service.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Service()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.Service()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Service()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance XPCSystem.Service(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 72) = a6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  *(v7 + 120) = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  *(v7 + 80) = v10;
  *(v7 + 88) = v11;
  *(v7 + 96) = v12;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 120);
  v4 = *(v0 + 80);
  v5 = type metadata accessor for XPCPeerRequirement();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = v6;
  type metadata accessor for XPCSystem.Transport();
  v8 = swift_allocObject();

  v9 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v7, v8, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 104) = v9;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v11 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  v15 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v15, v9, v13, v14, v11, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performxAC7ServiceV_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];

  v4 = v0[3];
  *v2 = v0[2];
  v2[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = v8;
  *(v9 + 88) = a8;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a3;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  *(v9 + 136) = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  *(v9 + 96) = v12;
  *(v9 + 104) = v13;
  *(v9 + 112) = v14;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY0_()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for XPCPeerRequirement();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = v6;
  type metadata accessor for XPCSystem.Transport();
  v8 = swift_allocObject();

  v9 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v7, v8, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 120) = v9;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  v17 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(v17, v9, v15, v16, v13, v14, v11, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTQ1_()
{
  v2 = *(*v1 + 128);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY2_()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to7performs6ResultOyxq_GAC7ServiceV_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lFTY3_()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];

  v4 = v0[3];
  *v2 = v0[2];
  v2[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC7ServiceV_tYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = v3;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  *(v4 + 80) = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;
  *(v4 + 72) = v9;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC7ServiceV_tYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2toAC7SessionC0dE0VAC7ServiceV_tYaAC10SetupErrorVYKFTY0_()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for XPCPeerRequirement();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  type metadata accessor for XPCSystem.Transport();
  v9 = swift_allocObject();

  v10 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v8, v9, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v11 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v5, v10, 0, (v0 + 16));
  v12 = *(v0 + 56);
  **(v0 + 32) = v11;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[19] = v7;
  v8[20] = a7;
  v8[17] = a5;
  v8[18] = a6;
  v8[15] = a3;
  v8[16] = a4;
  v8[13] = a1;
  v8[14] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v10 = type metadata accessor for XPCPeerRequirement();
  v8[22] = v10;
  v11 = *(v10 - 8);
  v8[23] = v11;
  v12 = *(v11 + 64) + 15;
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY0_()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 120);
  v21 = *(v0 + 128);
  v22 = *(v0 + 176);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = *(v0 + 136);
  type metadata accessor for XPCSystem.TransportReceiver();
  v8 = swift_allocObject();
  *(v0 + 208) = v8;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = v3;
  *(v8 + 32) = &async function pointer to partial apply for thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken);
  *(v8 + 40) = v7;
  *(v8 + 64) = MEMORY[0x277D84F90];

  swift_unownedRetainStrong();

  swift_unownedRetain();

  swift_unownedRetain();

  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v6;
  v9[4] = v4;
  v9[5] = v8;
  dispatch thunk of XPCListener.setIncomingSessionHandler(_:)();

  swift_unownedRelease();
  outlined init with copy of XPCPeerRequirement?(v21, v2);
  if ((*(v1 + 48))(v2, 1, v22) == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(*(v0 + 168), &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  }

  else
  {
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);
    v13 = *(v0 + 104);
    (*(v11 + 32))(v10, *(v0 + 168), v12);
    XPCListener.setPeerRequirement(_:)();
    (*(v11 + 8))(v10, v12);
  }

  v14 = *(v0 + 104);
  dispatch thunk of XPCListener.activate()();
  v15 = *(v0 + 104);
  v16 = swift_task_alloc();
  *(v0 + 216) = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v8;
  v17 = *(MEMORY[0x277D85A10] + 4);
  swift_retain_n();
  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  *v18 = v0;
  v18[1] = _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTQ1_;
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v18, &_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TATu, v8, _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYbXEfU1_TA, v16, 0, 0, v19);
}

void _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 208);
    v6 = *(v2 + 216);

    MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY2_()
{
  v1 = v0[13];
  result = XPCListener.targetQueue.getter();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  v0[6] = XPCSystem.Session.idGenerator.read;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_4;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  dispatch_async_and_wait(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTQ3_;
  v7 = v0[26];

  return XPCSystem.TransportReceiver.unwindPeers()();
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTQ3_()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY4_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFTY4_()
{
  v2 = v0[25];
  v1 = v0[26];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[24];
    v6 = v0[21];

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_AK08IncomingT7RequestC8DecisionVAZYbcfU_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for XPCPeerRequirement();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCPeerRequirement?(a2 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v18 = outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v12, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
LABEL_5:
    MEMORY[0x28223BE20](v18);
    *(&v20 - 4) = a3;
    *(&v20 - 3) = a4;
    *(&v20 - 2) = a5;
    return dispatch thunk of XPCListener.IncomingSessionRequest._accept(_:)();
  }

  (*(v14 + 32))(v17, v12, v13);
  if (XPCListener.IncomingSessionRequest.satisfies(requirement:)())
  {
    v18 = (*(v14 + 8))(v17, v13);
    goto LABEL_5;
  }

  dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_AK08IncomingT7RequestC8DecisionVAZYbcfU_yAI10XPCSessionCXEfU_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  XPCSession.auditToken.getter();
  audit_token_t.pid.getter();
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    swift_once();
  }

  v6 = static ID64.default;
  do
  {
    if (v6 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v6;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v7, v6 + 1, memory_order_relaxed, memory_order_relaxed);
    v8 = v7 == v6;
    v6 = v7;
  }

  while (!v8);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = a1;

  MEMORY[0x277C6B720](a2, a3);
  MEMORY[0x277C6B720](0x5B726565702FLL, 0xE600000000000000);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x277C6B720](v10);

  MEMORY[0x277C6B720](11613, 0xE200000000000000);
  _print_unlocked<A, B>(_:_:)();
  type metadata accessor for XPCSystem.Transport();
  v11 = swift_allocObject();

  v12 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(0, 0xE000000000000000, v9, v11, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  swift_unownedRetainStrong();
  _s14XPCDistributed9XPCSystemC17TransportReceiverC06attachC0yyAC0C0CAC10SetupErrorVYKF(v12);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TY0_()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TQ1_;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000042, 0x80000002751B9C60, _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_yScCyyts5NeverOGXEfU_TA, v4, v5);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TQ1_()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_yScCyyts5NeverOGXEfU_(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  *(a2 + 48) = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC16InProcessServiceC_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaKFyytAI_AoPtAMnYaYbcYaAC10SetupErrorVYKXEfU_yyYaXEfU_yScCyyts5NeverOGXEfU_yyYbcfU_TA;
  *(a2 + 56) = v10;
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v11);
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYbXEfU1_(uint64_t a1, uint64_t a2)
{
  result = dispatch thunk of XPCListener.cancel()();
  v4 = 0;
  atomic_compare_exchange_strong_explicit((a2 + 16), &v4, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v4)
  {
    v5 = *(a2 + 48);
    if (v5)
    {
      v6 = *(a2 + 56);

      v5(v7);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v5);
      v8 = *(a2 + 48);
      v9 = *(a2 + 56);
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;

      return outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v8);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = v5;
  v6[18] = a5;
  v6[15] = a3;
  v6[16] = a4;
  v6[14] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v9 = type metadata accessor for XPCPeerRequirement();
  v6[20] = v9;
  v10 = *(v9 - 8);
  v6[21] = v10;
  v11 = *(v10 + 64) + 15;
  v6[22] = swift_task_alloc();
  v12 = *(*(type metadata accessor for XPCListener.InitializationOptions() - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6[24] = v13;
  v14 = *(v13 - 8);
  v6[25] = v14;
  v15 = *(v14 + 64) + 15;
  v6[26] = swift_task_alloc();
  v16 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v6[27] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v18 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v19 = swift_task_alloc();
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v6[29] = v19;
  v6[30] = v20;
  v6[31] = v21;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY0_()
{
  v1 = v0;
  v4 = v0 + 240;
  v2 = *(v0 + 240);
  v3 = *(v4 + 8);
  v6 = *(v1 + 224);
  v5 = *(v1 + 232);
  v7 = *(v1 + 216);
  v30 = *(v1 + 208);
  v8 = *(v1 + 200);
  v31 = *(v1 + 192);
  v34 = *(v1 + 184);
  type metadata accessor for OS_dispatch_queue_serial();
  _StringGuts.grow(_:)(35);

  MEMORY[0x277C6B720](v2, v3);
  static DispatchQoS.unspecified.getter();
  *(v1 + 96) = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v30, *MEMORY[0x277D85268], v31);
  v9 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 256) = v9;

  v9;
  static XPCListener.InitializationOptions.inactive.getter();
  v10 = type metadata accessor for XPCListener();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
  *(v1 + 264) = v13;
  v14 = v13;
  v15 = *(v1 + 248);
  v16 = *(v1 + 168);
  v35 = *(v1 + 160);
  v17 = *(v1 + 152);
  v18 = *(v1 + 136);
  v32 = *(v1 + 240);
  v33 = *(v1 + 112);
  v19 = swift_allocObject();
  *(v1 + 272) = v19;
  *(v19 + 16) = *(v1 + 120);
  type metadata accessor for XPCSystem.TransportReceiver();
  v20 = swift_allocObject();
  *(v1 + 280) = v20;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0;
  *(v20 + 16) = 0;
  *(v20 + 24) = v18;
  *(v20 + 32) = &thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)partial apply;
  *(v20 + 40) = v19;
  *(v20 + 64) = MEMORY[0x277D84F90];

  swift_unownedRetainStrong();

  swift_unownedRetain();
  swift_unownedRetain();

  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v32;
  v21[4] = v15;
  v21[5] = v20;
  dispatch thunk of XPCListener.setIncomingSessionHandler(_:)();

  swift_unownedRelease();
  outlined init with copy of XPCPeerRequirement?(v33, v17);
  if ((*(v16 + 48))(v17, 1, v35) == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(*(v1 + 152), &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  }

  else
  {
    v23 = *(v1 + 168);
    v22 = *(v1 + 176);
    v24 = *(v1 + 160);
    (*(v23 + 32))(v22, *(v1 + 152), v24);
    XPCListener.setPeerRequirement(_:)();
    (*(v23 + 8))(v22, v24);
  }

  dispatch thunk of XPCListener.activate()();
  v25 = swift_task_alloc();
  *(v1 + 288) = v25;
  *(v25 + 16) = v14;
  *(v25 + 24) = v20;
  v26 = *(MEMORY[0x277D85A10] + 4);
  swift_retain_n();
  v27 = swift_task_alloc();
  *(v1 + 296) = v27;
  *v27 = v1;
  v27[1] = _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTQ1_;
  v28 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v27, &_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TA_23Tu, v20, _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYbXEfU1_TA_25, v25, 0, 0, v28);
}

void _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 280);
    v6 = *(v2 + 288);

    MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY2_, 0, 0);
  }
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY2_()
{
  v1 = v0[33];
  result = XPCListener.targetQueue.getter();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  v0[6] = XPCSystem.Session.idGenerator.read;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_29_0;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  dispatch_async_and_wait(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTQ3_;
  v7 = v0[35];

  return XPCSystem.TransportReceiver.unwindPeers()();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTQ3_()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY4_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKFTY4_()
{
  v2 = v0[34];
  v1 = v0[35];

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[32];
    v5 = v0[33];
    v7 = v0[28];
    v8 = v0[29];
    v9 = v0[26];
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[19];

    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = v4;
  *(v5 + 80) = a4;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  *(v5 + 120) = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(v5 + 88) = v8;
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTY0_()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 120);
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v4 = type metadata accessor for XPCPeerRequirement();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTQ1_;
  v6 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);

  return _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKF(v0 + 16, v6, v9, v7, v0 + 40);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *v1;

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTY2_, 0, 0);
  }

  else
  {
    v6 = *(v2 + 88);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on20executingForEachPeeryAC7ServiceV_yt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAMnYaYbXEtYaAC10SetupErrorVYKFTY2_()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  *v2 = v0[5];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 64) = v6;
  *(v7 + 72) = a6;
  *(v7 + 48) = a4;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  *(v7 + 128) = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  *(v7 + 80) = v10;
  *(v7 + 88) = v11;
  *(v7 + 96) = v12;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 128);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = type metadata accessor for XPCPeerRequirement();
  v17 = *(v0 + 40);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  type metadata accessor for XPCSystem.Transport();
  v9 = swift_allocObject();

  v10 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v8, v9, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 104) = v10;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = v5;
  *(v11 + 24) = v17;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v15, v10, &_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TATu, v11, v13, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;

  if (v0)
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];

  v5 = v0[3];
  *v4 = v0[2];
  v4[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(uint64_t a1, uint64_t a2, void *a3, int *a4)
{
  *(v4 + 16) = *a3;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = XPCSystem.Session.waitForCancellation();

  return v10(a1, a2, v4 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = v5;
  *(v6 + 80) = a5;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  *(v6 + 112) = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  *(v6 + 88) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_ScTyAH0hE0V15ActivationTokenVs5NeverOGAN16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_()
{
  v22 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = type metadata accessor for XPCPeerRequirement();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  LOBYTE(v21[0]) = v3;
  v21[1] = v2;
  v21[2] = v1;
  v7 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = v7;
  type metadata accessor for XPCSystem.Transport();
  v9 = swift_allocObject();

  v10 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v8, v9, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v11 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v5, v10, 6, (v0 + 16));
  v13 = *(v0 + 56);
  v12 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = v11;
  v21[0] = v14;

  v16 = v13(v21);

  _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v16, (v0 + 32));
  v17 = *(v0 + 88);
  v18 = *(v0 + 48);

  *v18 = v11;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 72) = v7;
  *(v8 + 80) = a7;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 32) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  *(v8 + 128) = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  *(v8 + 88) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for XPCPeerRequirement();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v8;
  type metadata accessor for XPCSystem.Transport();
  v10 = swift_allocObject();

  v11 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v9, v10, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 112) = v11;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);
  v17 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v17, v11, v15, v16, v13, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  v4 = v0[3];
  *v2 = v0[2];
  v2[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = v8;
  *(v9 + 96) = v17;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 32) = a1;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  *(v9 + 144) = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  *(v9 + 104) = v12;
  *(v9 + 112) = v13;
  *(v9 + 120) = v14;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY0_()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);
  v5 = *(v0 + 40);
  v6 = type metadata accessor for XPCPeerRequirement();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v5, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = v8;
  type metadata accessor for XPCSystem.Transport();
  v10 = swift_allocObject();

  v11 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v9, v10, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 128) = v11;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTQ1_;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(v19, v11, v17, v18, v15, v16, v13, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTQ1_()
{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY2_()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC7ServiceV_3XPC18XPCPeerRequirementVxAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0R0R_r0_lFTY3_()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  v4 = v0[3];
  *v2 = v0[2];
  v2[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC7ServiceV_3XPC18XPCPeerRequirementVtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = v4;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  *(v5 + 88) = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  *(v5 + 64) = v8;
  *(v5 + 72) = v9;
  *(v5 + 80) = v10;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC7ServiceV_3XPC18XPCPeerRequirementVtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC7ServiceV_3XPC18XPCPeerRequirementVtYaAC10SetupErrorVYKFTY0_()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = type metadata accessor for XPCPeerRequirement();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v9;
  type metadata accessor for XPCSystem.Transport();
  v11 = swift_allocObject();

  v12 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v10, v11, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v13 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v5, v12, 0, (v0 + 16));
  v14 = *(v0 + 64);
  **(v0 + 32) = v13;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 72) = v7;
  *(v8 + 80) = a7;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a3;
  *(v8 + 48) = a4;
  *(v8 + 32) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  *(v8 + 136) = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  *(v8 + 88) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 136);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = type metadata accessor for XPCPeerRequirement();
  v8 = *(v7 - 8);
  v19 = *(v0 + 48);
  (*(v8 + 16))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  v9 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v9;
  type metadata accessor for XPCSystem.Transport();
  v11 = swift_allocObject();

  v12 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v10, v11, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 112) = v12;
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v13 = swift_task_alloc();
  *(v0 + 120) = v13;
  *(v13 + 16) = v5;
  *(v13 + 24) = v19;
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v15 = *(v0 + 64);
  v16 = *(v0 + 72);
  v17 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v17, v12, &_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAM_AsTtAQnYaXEfU_TATu, v13, v15, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;

  if (v0)
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];

  v5 = v0[3];
  *v4 = v0[2];
  v4[1] = v5;

  v6 = v0[1];

  return v6();
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_3XPC18XPCPeerRequirementVScTyAI0kE0V15ActivationTokenVs5NeverOGAR16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = v6;
  *(v7 + 88) = a6;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 48) = a1;
  *(v7 + 56) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  *(v7 + 120) = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  *(v7 + 112) = v12;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_3XPC18XPCPeerRequirementVScTyAI0kE0V15ActivationTokenVs5NeverOGAR16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC7ServiceV_3XPC18XPCPeerRequirementVScTyAI0kE0V15ActivationTokenVs5NeverOGAR16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_()
{
  v24 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = type metadata accessor for XPCPeerRequirement();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  LOBYTE(v23[0]) = v3;
  v23[1] = v2;
  v23[2] = v1;
  v9 = XPCSystem.Service.makeXPCSession(peerRequirement:)(v4);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = v9;
  type metadata accessor for XPCSystem.Transport();
  v11 = swift_allocObject();

  v12 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v2, v1, v10, v11, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v13 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v5, v12, 6, (v0 + 16));
  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = v13;
  v23[0] = v16;

  v18 = v15(v23);

  _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v18, (v0 + 32));
  v19 = *(v0 + 96);
  v20 = *(v0 + 48);

  *v20 = v13;

  v21 = *(v0 + 8);

  return v21();
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = v5;
  *(v6 + 88) = a5;
  *(v6 + 64) = a3;
  *(v6 + 72) = a4;
  *(v6 + 56) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  *(v6 + 128) = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *(v6 + 96) = v9;
  *(v6 + 104) = v10;
  *(v6 + 112) = v11;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTY0_()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v5 = type metadata accessor for XPCPeerRequirement();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTQ1_;
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);

  return _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying20executingForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentARnYaYbXEtYaAC10SetupErrorVYKF(v0 + 16, v8, v11, v9, v0 + 40);
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 96);
  v5 = *v1;

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  if (v0)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTY2_, 0, 0);
  }

  else
  {
    v6 = *(v2 + 96);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC6listen2on18forPeersSatisfying21andExecuteForEachPeeryAC7ServiceV_3XPC18XPCPeerRequirementVyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentAQnYaYbXEtYaAC10SetupErrorVYKFTY2_()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[6];
  *v2 = v0[5];
  v2[1] = v3;

  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = v7;
  v8[11] = a7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = v0[5];
  v2 = XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(v0[6]);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v2;
  v4 = *v1;
  v5 = v1[1];
  type metadata accessor for XPCSystem.Transport();
  v6 = swift_allocObject();

  v7 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v4, v5, v3, v6, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  v0[12] = v7;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[4];

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performxAC9TransportC_xAC7SessionC0dE0VYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v13, v7, v11, v12, v9, (v0 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaYAXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[12] = v8;
  v9[13] = v11;
  v9[10] = a7;
  v9[11] = a8;
  v9[8] = a5;
  v9[9] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = a1;
  v9[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY0_()
{
  v1 = v0[5];
  v2 = XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(v0[6]);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = v2;
  v4 = *v1;
  v5 = v1[1];
  type metadata accessor for XPCSystem.Transport();
  v6 = swift_allocObject();

  v7 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v4, v5, v3, v6, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  v0[14] = v7;
  v8 = swift_task_alloc();
  v0[15] = v8;
  *v8 = v0;
  v8[1] = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTQ1_;
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  v15 = v0[4];

  return _s14XPCDistributed9XPCSystemC19withRemoteInterface4over7performs6ResultOyxq_GAC9TransportC_xAC7SessionC0dE0VYaq_YKXEtYaAC10SetupErrorVYKs8SendableRzs0L0R_r0_lF(v15, v7, v13, v14, v11, v12, v9, (v0 + 2));
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTQ1_()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY3_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY2_()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC19withRemoteInterface2to21assumingPeerSatisfies7performs6ResultOyxq_GAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgxAC7SessionC0dE0VYaq_YKYAXEtYaAC10SetupErrorVYKs8SendableRzs0S0R_r0_lFTY3_()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[3];
  *v2 = v0[2];
  v2[1] = v3;
  v4 = v0[1];

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = v4;
  v5[8] = a4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC19makeRemoteInterface2to21assumingPeerSatisfiesAC7SessionC0dE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgtYaAC10SetupErrorVYKFTY0_()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(*(v0 + 48));
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  v6 = *v2;
  v5 = v2[1];
  type metadata accessor for XPCSystem.Transport();
  v7 = swift_allocObject();

  v8 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v6, v5, v4, v7, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  **(v0 + 32) = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v8, 0, (v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = v7;
  v8[11] = a7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY0_()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v15 = *(v0 + 56);
  v3 = XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(*(v0 + 48));
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  v5 = *v2;
  v6 = v2[1];
  type metadata accessor for XPCSystem.Transport();
  v7 = swift_allocObject();

  v8 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v5, v6, v4, v7, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  *(v0 + 96) = v8;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v15;
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 32);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface4over7performxAC9TransportC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlF(v13, v8, &_s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAN_AtUtARnYaXEfU_TATu, v9, v11, v0 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;

  if (v0)
  {
    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY2_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFTY3_()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[3];
  *v3 = v0[2];
  v3[1] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgScTyAI0kE0V15ActivationTokenVs5NeverOGAS16UncheckedHandoffVXEtYaAC10SetupErrorVYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[9] = v6;
  v7[10] = a6;
  v7[7] = a4;
  v7[8] = a5;
  v7[5] = a2;
  v7[6] = a3;
  v7[4] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgScTyAI0kE0V15ActivationTokenVs5NeverOGAS16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC26makeBidirectionalInterface2to21assumingPeerSatisfies011assumeLocalE11ActivatedInAC7SessionC06RemoteE0VAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgScTyAI0kE0V15ActivationTokenVs5NeverOGAS16UncheckedHandoffVXEtYaAC10SetupErrorVYKFTY0_()
{
  v19 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v3 = XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(v0[6]);
  type metadata accessor for XPCSystem.Transport.XPCRawTransport();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  v5 = *v2;
  v6 = v2[1];
  type metadata accessor for XPCSystem.Transport();
  v7 = swift_allocObject();

  v8 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(v5, v6, v4, v7, type metadata accessor for XPCSystem.Transport.XPCRawTransport, &protocol witness table for XPCSystem.Transport.XPCRawTransport);
  type metadata accessor for XPCSystem.Session();
  swift_allocObject();

  v9 = _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(v1, v8, 6, v0 + 2);
  v11 = v0[7];
  v10 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v9;
  v18 = v12;

  v14 = v11(&v18);

  _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(v14, v0 + 2);
  v15 = v0[4];

  *v15 = v9;

  v16 = v0[1];

  return v16();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.EphemeralService.ListeningToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV14ListeningTokenV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV14ListeningTokenV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int XPCSystem.EphemeralService.ListeningToken.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.EphemeralService.ListeningToken.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV14ListeningTokenV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV14ListeningTokenV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type ID64 and conformance ID64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t XPCSystem.EphemeralService.Receiver.debugName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void *XPCSystem.EphemeralService.Receiver.__allocating_init(debugName:actorSystem:listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    v13 = result;
    swift_once();
    result = v13;
  }

  v9 = static ID64.default;
  do
  {
    v10 = v9 + 1;
    if (v9 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v11 = v9;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v11, v10, memory_order_relaxed, memory_order_relaxed);
    v12 = v11 == v9;
    v9 = v11;
  }

  while (!v12);
  result[2] = v10;
  result[3] = a1;
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  return result;
}

void *XPCSystem.EphemeralService.Receiver.init(debugName:actorSystem:listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    v10 = a1;
    v11 = a2;
    v12 = a4;
    v13 = a3;
    swift_once();
    a1 = v10;
    a2 = v11;
    a3 = v13;
    a4 = v12;
  }

  v5 = static ID64.default;
  do
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v7, v6, memory_order_relaxed, memory_order_relaxed);
    v8 = v7 == v5;
    v5 = v7;
  }

  while (!v8);
  v4[2] = v6;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

uint64_t XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for XPCPeerRequirement();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v9 = *(v8 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:), 0, 0);
}

uint64_t XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:)()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v19 = *(v0 + 144);
  v20 = *(v0 + 184);
  v5 = v2[5];
  v4 = v2[6];
  *(v0 + 208) = v4;
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_allocObject();
  *(v0 + 216) = v8;
  *(v8 + 16) = *(v0 + 152);
  type metadata accessor for XPCSystem.TransportReceiver();
  v9 = swift_allocObject();
  *(v0 + 224) = v9;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = v5;
  *(v9 + 32) = &thunk for @callee_guaranteed @Sendable @async (@in XPCSystem.Session.LocalInterface) -> (@out XPCSystem.Session.LocalInterface.ActivationToken)partial apply;
  *(v9 + 40) = v8;
  *(v9 + 64) = MEMORY[0x277D84F90];

  swift_unownedRetainStrong();

  swift_unownedRetain();

  swift_unownedRetain();

  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v9;
  dispatch thunk of XPCListener.setIncomingSessionHandler(_:)();

  swift_unownedRelease();
  outlined init with copy of XPCPeerRequirement?(v19, v3);
  if ((*(v1 + 48))(v3, 1, v20) == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(*(v0 + 176), &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  }

  else
  {
    v12 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 184);
    (*(v12 + 32))(v11, *(v0 + 176), v13);
    XPCListener.setPeerRequirement(_:)();
    (*(v12 + 8))(v11, v13);
  }

  dispatch thunk of XPCListener.activate()();
  v14 = swift_task_alloc();
  *(v0 + 232) = v14;
  *(v14 + 16) = v4;
  *(v14 + 24) = v9;
  v15 = *(MEMORY[0x277D85A10] + 4);
  swift_retain_n();
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:);
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v16, &_s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TA_67Tu, v9, _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYbXEfU1_TA_25, v14, 0, 0, v17);
}

{
  v1 = v0[26];
  result = XPCListener.targetQueue.getter();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = result;
  v0[6] = XPCSystem.Session.idGenerator.read;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> ();
  v0[5] = &block_descriptor_72;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];

  dispatch_async_and_wait(v3, v4);

  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = swift_task_alloc();
  v0[31] = v6;
  *v6 = v0;
  v6[1] = XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:);
  v7 = v0[28];

  return XPCSystem.TransportReceiver.unwindPeers()();
}

{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:), 0, 0);
}

{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v0 + 200);
    v6 = *(v0 + 176);
    **(v0 + 136) = *(*(v0 + 168) + 16);

    v7 = *(v0 + 8);

    return v7();
  }

  return result;
}

void XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:)()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 224);
    v6 = *(v2 + 232);

    MEMORY[0x2822009F8](XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:), 0, 0);
  }
}

void *XPCSystem.EphemeralService.Receiver.deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t XPCSystem.EphemeralService.Receiver.__deallocating_deinit()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t XPCSystem.EphemeralService.debugName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t XPCSystem.EphemeralService.endpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
  v4 = type metadata accessor for XPCEndpoint();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCSystem.EphemeralService.makeXPCSession(peerRequirement:)(uint64_t a1)
{
  v21[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for XPCPeerRequirement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for XPCSession.InitializationOptions();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for XPCEndpoint();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCSession();
  v18 = type metadata accessor for XPCSystem.EphemeralService(0);
  (*(v14 + 16))(v17, v1 + *(v18 + 20), v13);
  static XPCSession.InitializationOptions.inactive.getter();
  v19 = XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)();
  outlined init with copy of XPCPeerRequirement?(v21[0], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    XPCSession.setPeerRequirement(_:)();
    (*(v7 + 8))(v10, v6);
  }

  return v19;
}

uint64_t static XPCSystem.EphemeralService.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);

  return MEMORY[0x282200038](a1 + v5, a2 + v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.EphemeralService.CodingKeys()
{
  if (*v0)
  {
    result = 0x746E696F70646E65;
  }

  else
  {
    result = 0x6D614E6775626564;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.EphemeralService.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6775626564 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.EphemeralService.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.EphemeralService.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.EphemeralService.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
    v15[14] = 1;
    type metadata accessor for XPCEndpoint();
    lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t XPCSystem.EphemeralService.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
  type metadata accessor for XPCEndpoint();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int XPCSystem.EphemeralService.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
  type metadata accessor for XPCEndpoint();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t XPCSystem.EphemeralService.init(debugName:endpoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
  v7 = type metadata accessor for XPCEndpoint();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t XPCSystem.EphemeralService.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for XPCEndpoint();
  v21 = *(v24 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v24);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC16EphemeralServiceV10CodingKeys33_E24F9F3C47E8475B1F8536DBBA84FFC2LLOGMR);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v9 = v19 - v8;
  v10 = type metadata accessor for XPCSystem.EphemeralService(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v10;
  v16 = v23;
  v15 = v24;
  v27 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v17;
  v19[1] = v17;
  v26 = 1;
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v25);
  (*(v21 + 32))(v13 + *(v20 + 20), v6, v15);
  outlined init with copy of XPCSystem.EphemeralService(v13, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of XPCSystem.EphemeralService(v13, type metadata accessor for XPCSystem.EphemeralService);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.EphemeralService(uint64_t a1)
{
  Hasher.init(_seed:)();
  v3 = *v1;
  v4 = v1[1];
  String.hash(into:)();
  v5 = *(a1 + 20);
  type metadata accessor for XPCEndpoint();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.EphemeralService(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for XPCEndpoint();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.EphemeralService(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  v6 = *(a2 + 20);
  type metadata accessor for XPCEndpoint();
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint, MEMORY[0x277D855B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance XPCSystem.EphemeralService(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x282200038](a1 + v7, a2 + v7);
}

uint64_t XPCSystem.makeEphemeralService(_:assumeActivatedIn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for XPCSystem.EphemeralServiceWithListeningTask(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)(a1, a2, a3, a4, v13);
  outlined init with copy of XPCSystem.EphemeralService(v13, a5);
  return outlined destroy of XPCSystem.EphemeralService(v13, type metadata accessor for XPCSystem.EphemeralServiceWithListeningTask);
}

uint64_t XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v44 = a4;
  v45 = a3;
  v47 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = v41 - v9;
  v10 = type metadata accessor for XPCListener.InitializationOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v48 = type metadata accessor for OS_dispatch_queue_serial();
  v50 = 0;
  v51 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v50 = 0xD00000000000002ALL;
  v51 = 0x80000002751B9B30;
  v42 = a1;
  v43 = a2;
  MEMORY[0x277C6B720](a1, a2);
  static DispatchQoS.unspecified.getter();
  v50 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v15, *MEMORY[0x277D85268], v49);
  v20 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static XPCListener.InitializationOptions.inactive.getter();
  v21 = type metadata accessor for XPCListener();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = XPCListener.init(targetQueue:options:incomingSessionHandler:)();
  type metadata accessor for XPCSystem.EphemeralService.Receiver();
  v25 = swift_allocObject();
  v26 = one-time initialization token for default;

  if (v26 != -1)
  {
LABEL_8:
    swift_once();
  }

  v27 = static ID64.default;
  do
  {
    v28 = v27 + 1;
    if (v27 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v29 = v27;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v29, v28, memory_order_relaxed, memory_order_relaxed);
    v30 = v29 == v27;
    v27 = v29;
  }

  while (!v30);
  v32 = v42;
  v31 = v43;
  v25[2] = v28;
  v25[3] = v32;
  v33 = v41[1];
  v25[4] = v31;
  v25[5] = v33;
  v25[6] = v24;
  v34 = *(type metadata accessor for XPCSystem.EphemeralService(0) + 20);
  swift_bridgeObjectRetain_n();

  v35 = v47;
  XPCListener.endpoint.getter();
  *v35 = v32;
  v35[1] = v31;
  v36 = v45(v25);
  v37 = type metadata accessor for TaskPriority();
  v38 = v46;
  (*(*(v37 - 8) + 56))(v46, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v36;
  v39[5] = v25;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:), v39);

  result = type metadata accessor for XPCSystem.EphemeralServiceWithListeningTask(0);
  *(v35 + *(result + 20)) = v36;
  return result;
}

uint64_t XPCSystem.EphemeralServiceWithListeningTask.listeningTask.getter()
{
  v1 = *(v0 + *(type metadata accessor for XPCSystem.EphemeralServiceWithListeningTask(0) + 20));
}

uint64_t XPCSystem.EphemeralServiceWithListeningTask.init(service:listeningTask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with take of XPCSystem.EphemeralService(a1, a3);
  result = type metadata accessor for XPCSystem.EphemeralServiceWithListeningTask(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v7 = *(MEMORY[0x277D857E0] + 4);
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:);

  return MEMORY[0x282200460](v5 + 16, a4, &type metadata for XPCSystem.EphemeralService.ListeningToken);
}

uint64_t closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:), 0, 0);
}

{
  if (v0[2] != *(v0[3] + 16))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v1 = v0[1];

  return v1();
}

uint64_t specialized XPCSystem.Transport.init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t a6)
{
  v24 = a6;
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v27[3] = a5(0);
  v27[4] = v24;
  v27[0] = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  outlined init with copy of Decoder(v27, a4 + 64);
  *(a4 + 32) = 0;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v24 = type metadata accessor for OS_dispatch_queue_serial();
  strcpy(v26, "XPCTransport-");
  HIWORD(v26[1]) = -4864;

  MEMORY[0x277C6B720](a1, a2);

  static DispatchQoS.unspecified.getter();
  v26[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v14, *MEMORY[0x277D85268], v25);
  v19 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 56) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMd, &_s14XPCDistributed14RequestManagerCyAA4ID64Vs6ResultOyAA9XPCSystemC9TransportC6PacketV7PayloadVAK0G5ErrorOGGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_AC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a4 + 104) = v20;
  v21 = v19;
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *(a4 + 112) = 0;
  return a4;
}

uint64_t outlined init with copy of XPCPeerRequirement?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TA(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_(a1, v1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_TA_23(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC7_listen2on13withDebugName18forPeersSatisfying20executingForEachPeery3XPC11XPCListenerC_SSAI18XPCPeerRequirementVSgyt6result_AC7SessionC14LocalInterfaceV15ActivationTokenV5tokentASnYaYbXEtYaAC10SetupErrorVYKFyytAO_AuVtASnYaYbcYaAXYKXEfU_yyYaXEfU0_(a1, v1);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_TA(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(a1, a2, a3, v9);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC7ServiceV_3XPC18XPCPeerRequirementVx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAQnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAM_AsTtAQnYaXEfU_TA(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC7ServiceV_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(a1, a2, a3, v9);
}

uint64_t _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to21assumingPeerSatisfies7performxAC16EphemeralServiceV_3XPC18XPCPeerRequirementVSgx6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentARnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAN_AtUtARnYaXEfU_TA(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC26withBidirectionalInterface2to7performxAC16InProcessServiceC_x6result_AC7SessionC05LocalE0V15ActivationTokenV5tokentAMnYaXEtYaAC10SetupErrorVYKs8SendableRzlFxAI_AoPtAMnYaXEfU_(a1, a2, a3, v9);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken.CodingKeys and conformance XPCSystem.EphemeralService.ListeningToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.CodingKeys and conformance XPCSystem.EphemeralService.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of XPCSystem.EphemeralService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.EphemeralService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of XPCSystem.EphemeralService(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_8Tm(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[2]);
  a2(v3[4]);
  a3(v3[5]);

  return MEMORY[0x2821FE8E8](v3, 48, 7);
}

uint64_t partial apply for closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return closure #2 in XPCSystem.makeEphemeralServiceWithListeningTask(_:assumeActivatedIn:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with take of XPCSystem.EphemeralService(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.EphemeralService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Service and conformance XPCSystem.Service()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Service and conformance XPCSystem.Service;
  if (!lazy protocol witness table cache variable for type XPCSystem.Service and conformance XPCSystem.Service)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Service and conformance XPCSystem.Service);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.EphemeralService.ListeningToken and conformance XPCSystem.EphemeralService.ListeningToken()
{
  result = lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken and conformance XPCSystem.EphemeralService.ListeningToken;
  if (!lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken and conformance XPCSystem.EphemeralService.ListeningToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.EphemeralService.ListeningToken and conformance XPCSystem.EphemeralService.ListeningToken);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Service(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Service(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.EphemeralService()
{
  result = type metadata accessor for XPCEndpoint();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of XPCSystem.EphemeralService.Receiver.listen(forPeersSatisfying:executingForEachPeer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return v14(a1, a2, a3, a4);
}

void type metadata completion function for XPCSystem.EphemeralServiceWithListeningTask()
{
  type metadata accessor for XPCSystem.EphemeralService(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Task<XPCSystem.EphemeralService.ListeningToken, Never>();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Task<XPCSystem.EphemeralService.ListeningToken, Never>()
{
  if (!lazy cache variable for type metadata for Task<XPCSystem.EphemeralService.ListeningToken, Never>)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Task<XPCSystem.EphemeralService.ListeningToken, Never>);
    }
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 16 * v6;

    outlined init with copy of WeakActorRef(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = xmmword_2751B83F0;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a1)
  {
    v12 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    result = outlined consume of XPCSystem.SharedActorKey(a3, a4, a5);
    *v5 = v22;
  }

  else
  {
    v15 = *v5;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5);
    LOBYTE(v15) = v17;
    result = outlined consume of XPCSystem.SharedActorKey(a3, a4, a5);
    if (v15)
    {
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v6;
      v23 = *v6;
      if (!v19)
      {
        specialized _NativeDictionary.copy()();
        v20 = v23;
      }

      outlined consume of XPCSystem.SharedActorKey(*(*(v20 + 48) + 24 * v16), *(*(v20 + 48) + 24 * v16 + 8), *(*(v20 + 48) + 24 * v16 + 16));
      v21 = *(*(v20 + 56) + 16 * v16);
      swift_unknownObjectRelease();
      result = specialized _NativeDictionary._delete(at:)(v16, v20);
      *v6 = v20;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[1] == 1;
  }

  if (v7)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(a1, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
    v11 = *v3;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v13)
    {
      v14 = v12;
      v15 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v19 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v17 = v19;
      }

      outlined init with take of WeakActorRef(*(v17 + 56) + 16 * v14, &v20);
      specialized _NativeDictionary._delete(at:)(v14, v17);
      *v4 = v17;
    }

    else
    {
      v20 = xmmword_2751B83F0;
    }

    return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(&v20, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
  }

  else
  {
    outlined init with take of WeakActorRef(a1, &v20);
    v8 = *v3;
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v20, a2, a3, v9);
    *v3 = v18;
  }

  return result;
}

uint64_t XPCSystem.resolve(id:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable);
  swift_getKeyPath();
  (*(*v1 + 136))(v5);

  if (v5[0])
  {
    v2 = 0;
  }

  else
  {
    v2 = v5[1] == 1;
  }

  if (v2)
  {
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v5, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
  }

  else
  {
    outlined init with take of WeakActorRef(v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of WeakActorRef(v6);
    if (Strong)
    {
      return Strong;
    }
  }

  return 0;
}

uint64_t *XPCSystem.$currentSession.unsafeMutableAddressor()
{
  if (one-time initialization token for $currentSession != -1)
  {
    swift_once();
  }

  return &static XPCSystem.$currentSession;
}

uint64_t static XPCSystem.currentSession.getter()
{
  if (one-time initialization token for $currentSession != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t XPCSystem.debugName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t one-time initialization function for $currentSession()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy14XPCDistributed9XPCSystemC7SessionCSgGMd, &_ss9TaskLocalCy14XPCDistributed9XPCSystemC7SessionCSgGMR);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static XPCSystem.$currentSession = result;
  return result;
}

uint64_t static XPCSystem.$currentSession.getter()
{
  if (one-time initialization token for $currentSession != -1)
  {
    swift_once();
  }
}

uint64_t XPCSystem.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  XPCSystem.init(_:)(a1, a2);
  return v7;
}

char *XPCSystem.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 2) = a1;
  *(v2 + 3) = a2;
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    swift_once();
  }

  v3 = static ID64.default;
  do
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  *(v2 + 4) = v4;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AC04WeakF3RefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC10RawActorIDO5LocalVAA04WeakE3RefVGGMd, &_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC10RawActorIDO5LocalVAA04WeakE3RefVGGMR);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v8 + 24) = v7;
  *&v2[OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable] = v8;
  v10 = OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement;
  v11 = type metadata accessor for XPCPeerRequirement();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  return v2;
}

uint64_t XPCSystem.__allocating_init(_:peerRequirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  XPCSystem.init(_:peerRequirement:)(a1, a2, a3);
  return v9;
}

char *XPCSystem.init(_:peerRequirement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    swift_once();
  }

  v5 = static ID64.default;
  do
  {
    v6 = v5 + 1;
    if (v5 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = v5;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v7, v6, memory_order_relaxed, memory_order_relaxed);
    v8 = v7 == v5;
    v5 = v7;
  }

  while (!v8);
  *(v3 + 4) = v6;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AC04WeakF3RefVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC10RawActorIDO5LocalVAA04WeakE3RefVGGMd, &_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC10RawActorIDO5LocalVAA04WeakE3RefVGGMR);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v9;
  *&v3[OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable] = v10;
  v12 = OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement;
  v13 = type metadata accessor for XPCPeerRequirement();
  v14 = *(v13 - 8);
  (*(v14 + 32))(&v3[v12], a3, v13);
  (*(v14 + 56))(&v3[v12], 0, 1, v13);
  return v3;
}

uint64_t XPCSystem.deinit()
{
  v1 = *(v0 + 24);

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v0 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable);

  return v0;
}

uint64_t XPCSystem.__deallocating_deinit()
{
  v1 = v0[3];

  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v0 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int key path index hash operator for (XPCSystem.RawActorID.Local)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  MEMORY[0x277C6BCE0](v2);
  return Hasher._finalize()();
}

uint64_t _s14XPCDistributed9XPCSystemC7resolve33_E9DA0CDEE867FDA494FF1CE55468C6EALL2id2asxAC10RawActorIDO5LocalV_xmtAC10SetupErrorVYK11Distributed0tO0RzAC0oP0V0P0RtzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (XPCSystem.resolve(id:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11Distributed0A5Actor_pMd, &_s11Distributed0A5Actor_pMR);
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  _StringGuts.grow(_:)(35);
  MEMORY[0x277C6B720](0xD00000000000001BLL, 0x80000002751B9D90);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x277C6B720](544432416, 0xE400000000000000);
  v8 = _typeName(_:qualified:)();
  MEMORY[0x277C6B720](v8);

  *a6 = 0;
  a6[1] = 0xE000000000000000;
  lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
  return swift_willThrowTypedImpl();
}

uint64_t _s14XPCDistributed9XPCSystemC7resolve2id2asxSgAC7ActorIDV_xmtAC10SetupErrorVYK11Distributed0jF0RzAI0G0RtzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  outlined init with copy of XPCSystem.RawActorID(a1, &v18);
  if (v21)
  {
    v16[1] = v19;
    v17[0] = *v20;
    v16[0] = v18;
    *(v17 + 9) = *&v20[9];
    v10 = *(&v19 + 1);
    v11 = *v20;
    __swift_project_boxed_opaque_existential_1(v16, *(&v19 + 1));
    v12 = v5;
    v13 = (*(v11 + 24))(v10, v11);

    if (v13 == v12)
    {
      outlined destroy of XPCSystem.RawActorID.Remote(v16);
      return 0;
    }

    else
    {
      *a5 = 0xD000000000000031;
      a5[1] = 0x80000002751B9CE0;
      lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
      swift_willThrowTypedImpl();
      return outlined destroy of XPCSystem.RawActorID.Remote(v16);
    }
  }

  else
  {
    result = _s14XPCDistributed9XPCSystemC7resolve33_E9DA0CDEE867FDA494FF1CE55468C6EALL2id2asxAC10RawActorIDO5LocalV_xmtAC10SetupErrorVYK11Distributed0tO0RzAC0oP0V0P0RtzlF(v18, *(&v18 + 1), a3, a3, a4, v16);
    if (v6)
    {
      v15 = *(&v16[0] + 1);
      *a5 = *&v16[0];
      a5[1] = v15;
    }
  }

  return result;
}

__n128 XPCSystem.assignID<A>(_:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v3 = static ID64.default;
  do
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v9;
  *(a1 + 32) = *v10;
  result = *&v10[9];
  *(a1 + 41) = *&v10[9];
  *(a1 + 57) = 0;
  return result;
}

uint64_t XPCSystem.actorReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v10[0] = a1;
  v5 = *(a3 + 16);
  v6 = dispatch thunk of Identifiable.id.getter();
  *&v11[10] = *&v13[10];
  v10[0] = v12[0];
  v10[1] = v12[1];
  *v11 = *v13;
  if (v13[25])
  {
    result = outlined destroy of XPCSystem.RawActorID(v10);
    __break(1u);
  }

  else
  {
    v7 = *(v3 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable);
    MEMORY[0x28223BE20](v6);
    KeyPath = swift_getKeyPath();
    swift_unknownObjectRetain();
    WeakActorRef.init<A>(_:)(a3, v12);
    (*(*v7 + 160))(KeyPath, v12);

    return outlined destroy of WeakActorRef(v12);
  }

  return result;
}

uint64_t XPCSystem.resignID(_:)(uint64_t a1)
{
  v2 = outlined init with copy of XPCSystem.RawActorID(a1, v6);
  if (v7)
  {
    result = outlined destroy of XPCSystem.RawActorID(v6);
    __break(1u);
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_actorTable);
    MEMORY[0x28223BE20](v2);
    KeyPath = swift_getKeyPath();
    v6[0] = xmmword_2751B83F0;
    (*(*v3 + 152))(KeyPath, v6);

    return outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v6, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
  }

  return result;
}

double XPCSystem.makeInvocationEncoder()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v11;
  *(v8 + 272) = v10;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a4;
  *(v8 + 248) = a6;
  *(v8 + 224) = a2;
  *(v8 + 232) = a3;
  *(v8 + 216) = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY0_()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  DistributedActor<>.session.getter(*(v0 + 264), v0 + 120);
  if (*(v0 + 144))
  {
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    v5 = *(v0 + 224);
    outlined init with take of Hashable & Sendable(v0 + 120, v0 + 80);
    v6 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
    *(v0 + 208) = v5;
    v7 = *(v3 + 16);
    dispatch thunk of Identifiable.id.getter();
    v8 = *(v6 + 16);
    v20 = v8 + *v8;
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 296) = v10;
    *v10 = v0;
    v10[1] = _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTQ1_;
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = *(v0 + 256);
    v14 = *(v0 + 232);
    v15 = *(v0 + 240);
    v16 = *(v0 + 216);

    __asm { BRAA            X8, X16 }
  }

  v17 = *(v0 + 288);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v0 + 120, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMd, &_s14XPCDistributed9XPCSystemC23OutboundSessionProtocol_pSgMR);
  *v17 = 2;
  *(v17 + 8) = 0xD00000000000001DLL;
  *(v17 + 16) = 0x80000002751B9D70;
  *(v0 + 160) = 2;
  *(v0 + 168) = 0xD00000000000001DLL;
  *(v0 + 176) = 0x80000002751B9D70;
  lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
  swift_willThrowTypedImpl();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v6 = *v1;

  outlined destroy of XPCSystem.ActorID(v2 + 16);
  if (v0)
  {
    v4 = _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY3_;
  }

  else
  {
    v4 = _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY2_;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY2_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lFTY3_()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  *v1 = *(v0 + 184);
  *(v1 + 8) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 40) = a12;
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v17 = swift_task_alloc();
  *(v12 + 48) = v17;
  *v17 = v12;
  v17[1] = _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTQ0_;

  return _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lF(a1, a2, a3, a4, v21, a7, v21, v22);
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTQ0_()
{
  v2 = *(*v1 + 48);
  v3 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTY1_, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lFTY1_()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

uint64_t XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 40) = v13;
  lazy protocol witness table accessor for type Ack and conformance Ack();
  v14 = lazy protocol witness table accessor for type Ack and conformance Ack();
  *v13 = v7;
  v13[1] = XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:);

  return _s14XPCDistributed9XPCSystemC10remoteCall33_E9DA0CDEE867FDA494FF1CE55468C6EALL5actor6target10invocation6resultq_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mtYaAC0rT17CancellationErrorVYKAJ0Q5ActorRzSeR_SER_AC0X2IDV0Y0Rtzr0_lF(v14, a1, a2, a3, &type metadata for Ack, a5, &type metadata for Ack, a7);
}

uint64_t XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {
    v3 = XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:);
  }

  else
  {
    v3 = XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
  swift_allocError();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:), 0, 0);
}

uint64_t XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  v8 = v0[2];
  v7 = v0[3];

  return doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(v1, v7, v8, v1, v3, v5);
}

uint64_t doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(a4 - 8);
  v6[8] = v7;
  v8 = *(v7 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:), 0, 0);
}

uint64_t doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  UnsafeRawPointer.load<A>(fromByteOffset:as:)();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  v6 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v9 = v0[5];

  return XPCSystem.ResultHandler.onReturn<A>(value:)(v6, v9);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  }

  else
  {
    v3 = doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t protocol witness for DistributedActorSystem.resolve<A>(id:as:) in conformance XPCSystem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  result = _s14XPCDistributed9XPCSystemC7resolve2id2asxSgAC7ActorIDV_xmtAC10SetupErrorVYK11Distributed0jF0RzAI0G0RtzlF(a1, a2, a3, a4, v12);
  if (v5)
  {
    v8 = v12[0];
    v9 = v12[1];
    v10 = result;
    lazy protocol witness table accessor for type XPCSystem.SetupError and conformance XPCSystem.SetupError();
    swift_allocError();
    result = v10;
    *v11 = v8;
    v11[1] = v9;
  }

  return result;
}

double protocol witness for DistributedActorSystem.assignID<A>(_:) in conformance XPCSystem@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *&result = XPCSystem.assignID<A>(_:)(a1).n128_u64[0];
  return result;
}

double protocol witness for DistributedActorSystem.makeInvocationEncoder() in conformance XPCSystem@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance XPCSystem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v19 = *v12;
  v23 = swift_task_alloc();
  *(v13 + 40) = v23;
  *v23 = v13;
  v23[1] = protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance XPCSystem;

  return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(a1, a2, a3, a4, v20, v21, a7, v22, a9, a10, a11, a12);
}

uint64_t protocol witness for DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:) in conformance XPCSystem()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 16);
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);
    lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = v6;
    v9 = *(v4 + 8);

    return v9();
  }

  else
  {
    v11 = *(v4 + 8);

    return v11();
  }
}

uint64_t protocol witness for DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:) in conformance XPCSystem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v16, a5, v17, a7);
}

uint64_t protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance XPCSystem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance XPCSystem, 0, 0);
}

uint64_t protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance XPCSystem()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = protocol witness for DistributedActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:) in conformance XPCSystem;
  v8 = v0[2];
  v7 = v0[3];

  return doInvokeOnReturn #1 <A>(returnType:) in XPCSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(v1, v7, v8, v1, v3, v5);
}

{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 static TestHook.unassignedLocalID(in:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  if (one-time initialization token for default != -1)
  {
LABEL_8:
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v3 = static ID64.default;
  do
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
  }

  while (!v6);
  *a2 = v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 32) = *v10;
  result = *&v10[9];
  *(a2 + 41) = *&v10[9];
  *(a2 + 57) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type Ack and conformance Ack()
{
  result = lazy protocol witness table cache variable for type Ack and conformance Ack;
  if (!lazy protocol witness table cache variable for type Ack and conformance Ack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ack and conformance Ack);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Ack and conformance Ack;
  if (!lazy protocol witness table cache variable for type Ack and conformance Ack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ack and conformance Ack);
  }

  return result;
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.InvocationDecoder and conformance XPCSystem.InvocationDecoder()
{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationDecoder and conformance XPCSystem.InvocationDecoder;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationDecoder and conformance XPCSystem.InvocationDecoder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationDecoder and conformance XPCSystem.InvocationDecoder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.InvocationEncoder and conformance XPCSystem.InvocationEncoder()
{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationEncoder and conformance XPCSystem.InvocationEncoder;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationEncoder and conformance XPCSystem.InvocationEncoder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationEncoder and conformance XPCSystem.InvocationEncoder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.ResultHandler and conformance XPCSystem.ResultHandler()
{
  result = lazy protocol witness table cache variable for type XPCSystem.ResultHandler and conformance XPCSystem.ResultHandler;
  if (!lazy protocol witness table cache variable for type XPCSystem.ResultHandler and conformance XPCSystem.ResultHandler)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.ResultHandler and conformance XPCSystem.ResultHandler);
  }

  return result;
}

uint64_t type metadata accessor for XPCSystem()
{
  result = type metadata singleton initialization cache for XPCSystem;
  if (!type metadata singleton initialization cache for XPCSystem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for XPCSystem()
{
  type metadata accessor for XPCPeerRequirement?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for XPCPeerRequirement?()
{
  if (!lazy cache variable for type metadata for XPCPeerRequirement?)
  {
    type metadata accessor for XPCPeerRequirement();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for XPCPeerRequirement?);
    }
  }
}

uint64_t XPCSystem.Session.sendNotification(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v21 - v17;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v21[4] = a1;
  XPCDictionary.init()();
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification and conformance XPCSystem.Session.RemoteNotification();
  XPCDictionary.encode<A>(_:forKey:withUserInfo:)();

  (*(v5 + 32))(v12, v8, v4);
  outlined init with take of XPCSystem.Transport.Packet.Payload(v12, v15);
  outlined init with take of XPCSystem.Transport.Packet.Payload(v15, v18);
  v19 = *(v2 + 32);
  _s14XPCDistributed9XPCSystemC9TransportC16sendNotification11withPayloadyAE6PacketV0G0V_tAE0C5ErrorOYKF(v18);
  return outlined destroy of XPCSystem.Transport.Packet.Payload(v18);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[113] = a8;
  v9[112] = v8;
  v9[111] = a4;
  v9[110] = a3;
  v9[109] = a2;
  v9[108] = a1;
  v9[114] = *v8;
  v10 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse();
  v9[115] = v10;
  v11 = *(v10 - 8);
  v9[116] = v11;
  v12 = *(v11 + 64) + 15;
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR) - 8) + 64) + 15;
  v9[119] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v9[120] = v14;
  v15 = *(v14 - 8);
  v9[121] = v15;
  v16 = *(v15 + 64) + 15;
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v17 = type metadata accessor for XPCDictionary();
  v9[124] = v17;
  v18 = *(v17 - 8);
  v9[125] = v18;
  v19 = *(v18 + 64) + 15;
  v9[126] = swift_task_alloc();
  v20 = *(*(type metadata accessor for XPCSystem.Transport.Packet.Payload(0) - 8) + 64) + 15;
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();
  v9[129] = swift_task_alloc();
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v21 = type metadata accessor for RemoteCallTarget();
  v9[132] = v21;
  v22 = *(v21 - 8);
  v9[133] = v22;
  v23 = *(v22 + 64) + 15;
  v9[134] = swift_task_alloc();
  v9[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTY0_()
{
  v97 = v0;
  outlined init with copy of XPCSystem.RawActorID(*(v0 + 872), v0 + 304);
  if (*(v0 + 361) == 1)
  {
    v1 = *(v0 + 896);
    v2 = *(v0 + 320);
    *(v0 + 368) = *(v0 + 304);
    *(v0 + 384) = v2;
    *(v0 + 400) = *(v0 + 336);
    *(v0 + 409) = *(v0 + 345);
    v3 = *(v1 + 32);
    if (*(v3 + 32))
    {
      v4 = *(v0 + 904);
      *v4 = 0;
      *(v4 + 8) = 0xD000000000000035;
      *(v4 + 16) = 0x80000002751B9E80;
      *(v0 + 704) = 0;
      *(v0 + 712) = 0xD000000000000035;
      *(v0 + 720) = 0x80000002751B9E80;
      lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
      swift_willThrowTypedImpl();
      outlined destroy of XPCSystem.RawActorID.Remote(v0 + 368);
      v60 = *(v0 + 1080);
      v61 = *(v0 + 1072);
      v62 = *(v0 + 1048);
      v63 = *(v0 + 1040);
      v64 = *(v0 + 1032);
      v65 = *(v0 + 1024);
      v66 = *(v0 + 1016);
      v67 = *(v0 + 1008);
      v68 = *(v0 + 984);
      v69 = *(v0 + 976);
      v89 = *(v0 + 952);
      v92 = *(v0 + 944);
      v95 = *(v0 + 936);

      v70 = *(v0 + 8);

      return v70();
    }

    else
    {
      v5 = *(v1 + 40);
      do
      {
        v6 = v5 + 1;
        if (v5 == -1)
        {
          __break(1u);
          goto LABEL_22;
        }

        *(v0 + 1088) = v6;
        v7 = v5;
        atomic_compare_exchange_strong_explicit((v1 + 40), &v7, v6, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v5;
        v5 = v7;
      }

      while (!v8);
      v82 = v3;
      v9 = *(v0 + 1080);
      v10 = *(v0 + 1064);
      v11 = *(v0 + 1056);
      v88 = v9;
      v90 = v11;
      v12 = *(v0 + 888);
      v94 = *(v0 + 880);
      outlined init with copy of XPCSystem.RawActorID.Remote(v0 + 368, v0 + 432);
      v13 = *(v0 + 472);
      v14 = *(v0 + 480);
      v15 = *(v0 + 488);
      outlined copy of XPCSystem.SharedActorKey(v13, v14, v15);
      outlined destroy of XPCSystem.RawActorID.Remote(v0 + 432);
      v85 = *(v10 + 16);
      v85(v9, v94, v11);
      v16 = *v12;
      v17 = v12[1];
      v93 = v0 + 368;
      v18 = v12[3];
      v83 = v12[4];
      v84 = v12[2];
      v19 = v12[5];
      *(v0 + 24) = v13;
      *(v0 + 32) = v14;
      *(v0 + 40) = v15;

      v20 = v16;

      v22 = v88;
      v23 = MEMORY[0x277C6B2E0](v21);
      v25 = v24;
      v87 = *(v10 + 8);
      v87(v22, v90);
      *(v0 + 48) = v23;
      *(v0 + 56) = v25;
      *(v0 + 64) = v20;
      *(v0 + 72) = v17;
      *(v0 + 80) = v84;
      *(v0 + 88) = v18;
      *(v0 + 96) = v83;
      *(v0 + 104) = v19;
      *(v0 + 152) = 0;
      *(v0 + 16) = v6;
      if (one-time initialization token for sessionLog == -1)
      {
        goto LABEL_9;
      }

LABEL_22:
      swift_once();
LABEL_9:
      v26 = *(v0 + 1072);
      v27 = *(v0 + 1056);
      v28 = *(v0 + 880);
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, sessionLog);
      outlined init with copy of XPCSystem.RawActorID.Remote(v93, v0 + 496);
      v85(v26, v28, v27);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      v32 = os_log_type_enabled(v30, v31);
      v33 = *(v0 + 1072);
      v34 = *(v0 + 1056);
      if (v32)
      {
        v35 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v96 = v86;
        *v35 = 134218498;
        *(v35 + 4) = v6;
        *(v35 + 12) = 2080;
        *(v0 + 816) = 0;
        *(v0 + 824) = 0xE000000000000000;
        v36 = *(v0 + 520);
        v37 = *(v0 + 528);
        __swift_project_boxed_opaque_existential_1((v0 + 496), v36);
        (*(*(v37 + 8) + 24))(v36);
        *(v0 + 856) = *(v0 + 848);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x277C6B720](14906, 0xE200000000000000);
        v38 = *(v0 + 544);
        v39 = *(v0 + 552);
        *(v0 + 728) = *(v0 + 536);
        *(v0 + 736) = v38;
        *(v0 + 744) = v39;
        _print_unlocked<A, B>(_:_:)();
        v40 = *(v0 + 816);
        v41 = *(v0 + 824);
        outlined destroy of XPCSystem.RawActorID.Remote(v0 + 496);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v96);

        *(v35 + 14) = v42;
        *(v35 + 22) = 2080;
        v44 = MEMORY[0x277C6B2E0](v43);
        v46 = v45;
        v87(v33, v34);
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v96);

        *(v35 + 24) = v47;
        _os_log_impl(&dword_275171000, v30, v31, "Created request %llu targeting %s for invocation %s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x277C6C430](v86, -1, -1);
        MEMORY[0x277C6C430](v35, -1, -1);
      }

      else
      {

        v87(v33, v34);
        outlined destroy of XPCSystem.RawActorID.Remote(v0 + 496);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMd, &_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMR);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      v49 = *(*(v48 - 8) + 72);
      v50 = (*(*(v48 - 8) + 80) + 32) & ~*(*(v48 - 8) + 80);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_2751B4420;
      v52 = v51 + v50;
      v53 = (v51 + v50 + *(v48 + 48));
      if (one-time initialization token for sessionKey != -1)
      {
        swift_once();
      }

      v91 = *(v0 + 1008);
      v54 = *(v0 + 912);
      v55 = *(v0 + 896);
      v56 = type metadata accessor for CodingUserInfoKey();
      v57 = __swift_project_value_buffer(v56, static CodingUserInfoKey.sessionKey);
      (*(*(v56 - 8) + 16))(v52, v57, v56);
      v53[3] = v54;
      *v53 = v55;
      v58 = (v52 + v49 + *(v48 + 48));

      static CodingUserInfoKey.actorSystemKey.getter();
      v59 = *(v55 + 16);
      v58[3] = type metadata accessor for XPCSystem();
      *v58 = v59;

      *(v0 + 1096) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v51);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(v0 + 16, v0 + 160);
      XPCDictionary.init()();
      lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest and conformance XPCSystem.Session.RemoteInvocationRequest();
      XPCDictionary.encode<A>(_:forKey:withUserInfo:)();
      *(v0 + 1104) = 0;
      v72 = *(v0 + 1048);
      v73 = *(v0 + 1040);
      v74 = *(v0 + 1032);
      v75 = *(v0 + 1008);
      v76 = *(v0 + 1000);
      v77 = *(v0 + 992);
      outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v0 + 160);
      (*(v76 + 32))(v74, v75, v77);
      outlined init with take of XPCSystem.Transport.Packet.Payload(v74, v73);
      outlined init with take of XPCSystem.Transport.Packet.Payload(v73, v72);
      v78 = *(v82 + 104);
      v79 = swift_task_alloc();
      *(v0 + 1112) = v79;
      v79[2] = v6;
      v79[3] = v72;
      v79[4] = v82;
      v80 = swift_task_alloc();
      *(v0 + 1120) = v80;
      *v80 = v0;
      v80[1] = _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTQ1_;
      v81 = *(v0 + 952);

      return specialized RequestManager.withRequest(id:perform:)(v81, v6, partial apply for closure #1 in XPCSystem.Transport.sendRequest(id:payload:), v79);
    }
  }

  else
  {
    result = outlined destroy of XPCSystem.RawActorID(v0 + 304);
    __break(1u);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTQ1_()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);
  v4 = *v0;

  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTY2_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlFTY2_()
{
  v1 = *(v0 + 952);
  if ((*(*(v0 + 968) + 48))(v1, 1, *(v0 + 960)) == 1)
  {
    v2 = *(v0 + 1096);
    v3 = *(v0 + 1088);
    v4 = *(v0 + 1048);
    v5 = *(v0 + 904);
    v6 = *(v0 + 896);

    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v1, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgMR);
    XPCSystem.Session.sendNotification(_:)(v3);
    *v5 = 1;
    *(v5 + 8) = 0u;
    *(v0 + 584) = 1;
    lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
    *(v0 + 592) = 0u;
    swift_willThrowTypedImpl();
LABEL_3:
    outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v0 + 16);
    outlined destroy of XPCSystem.RawActorID.Remote(v0 + 368);
    v7 = v4;
LABEL_10:
    outlined destroy of XPCSystem.Transport.Packet.Payload(v7);
    v36 = *(v0 + 1080);
    v37 = *(v0 + 1072);
    v38 = *(v0 + 1048);
    v39 = *(v0 + 1040);
    v40 = *(v0 + 1032);
    v41 = *(v0 + 1024);
    v42 = *(v0 + 1016);
    v43 = *(v0 + 1008);
    v44 = *(v0 + 984);
    v45 = *(v0 + 976);
    v67 = *(v0 + 952);
    v69 = *(v0 + 944);
    v71 = *(v0 + 936);

    v46 = *(v0 + 8);
    goto LABEL_11;
  }

  v8 = *(v0 + 984);
  v9 = *(v0 + 976);
  outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v1, v8);
  outlined init with copy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(v0 + 1096);
    v11 = *(v0 + 1048);
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = *(v0 + 904);

    v16 = *v13;
    v15 = v13[1];
    *(v0 + 768) = 0;
    *(v0 + 776) = 0xE000000000000000;
    MEMORY[0x277C6B720](40, 0xE100000000000000);
    *(v0 + 784) = v16;
    *(v0 + 792) = v15;
    _print_unlocked<A, B>(_:_:)();

    MEMORY[0x277C6B720](41, 0xE100000000000000);
    v17 = *(v0 + 768);
    v18 = *(v0 + 776);
    *v14 = 0;
    *(v14 + 8) = v17;
    *(v14 + 16) = v18;
    *(v0 + 608) = 0;
    *(v0 + 616) = v17;
    *(v0 + 624) = v18;
    lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
    swift_willThrowTypedImpl();
    v19 = v12;
LABEL_9:
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v19, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
    outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v0 + 16);
    outlined destroy of XPCSystem.RawActorID.Remote(v0 + 368);
    v7 = v11;
    goto LABEL_10;
  }

  v20 = *(v0 + 1024);
  v21 = *(v0 + 1016);
  v22 = *(v0 + 896);
  outlined init with take of XPCSystem.Transport.Packet.Payload(*(v0 + 976), v21);
  outlined init with take of XPCSystem.Transport.Packet.Payload(v21, v20);
  v23 = XPCSystem.Session.remoteSatisfiesActorSystemRequirement()();
  v24 = *(v0 + 1024);
  if (!v23)
  {
    v48 = *(v0 + 1096);
    v4 = *(v0 + 1048);
    v49 = *(v0 + 984);
    v50 = *(v0 + 904);
    v51 = *(v0 + 896);

    v52._countAndFlagsBits = 0xD000000000000034;
    v52._object = 0x80000002751B9DE0;
    XPCSystem.Session.cancel(because:)(v52);
    *v50 = 0;
    *(v50 + 8) = 0xD00000000000002BLL;
    *(v50 + 16) = 0x80000002751B9E20;
    *(v0 + 632) = 0;
    *(v0 + 640) = 0xD00000000000002BLL;
    *(v0 + 648) = 0x80000002751B9E20;
    lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
    swift_willThrowTypedImpl();
    outlined destroy of XPCSystem.Transport.Packet.Payload(v24);
    outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v49, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
    goto LABEL_3;
  }

  v25 = *(v0 + 1104);
  v26 = *(v0 + 1096);
  v27 = *(v0 + 936);
  v28 = *(v0 + 920);
  WitnessTable = swift_getWitnessTable();
  default argument 0 of XPCSystem.Transport.Packet.Payload.decode<A>(as:userInfo:)(v28, WitnessTable);
  XPCSystem.Transport.Packet.Payload.decode<A>(as:userInfo:)();
  v30 = *(v0 + 1096);
  if (v25)
  {
    v11 = *(v0 + 1048);
    v31 = *(v0 + 1024);
    v32 = *(v0 + 984);
    v33 = *(v0 + 904);

    _StringGuts.grow(_:)(48);
    *(v0 + 800) = 0;
    *(v0 + 808) = 0xE000000000000000;
    MEMORY[0x277C6B720](0xD00000000000002DLL, 0x80000002751B9E50);
    *(v0 + 840) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x277C6B720](41, 0xE100000000000000);
    v34 = *(v0 + 800);
    v35 = *(v0 + 808);
    *v33 = 3;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    *(v0 + 656) = 3;
    *(v0 + 664) = v34;
    *(v0 + 672) = v35;
    lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
    swift_willThrowTypedImpl();

    outlined destroy of XPCSystem.Transport.Packet.Payload(v31);
    v19 = v32;
    goto LABEL_9;
  }

  v53 = *(v0 + 944);
  v54 = *(v0 + 936);
  v55 = *(v0 + 928);
  v56 = *(v0 + 920);
  v57 = *(v0 + 864);

  (*(v55 + 32))(v53, v54, v56);
  XPCSystem.Session.RemoteInvocationResponse.value.getter(v56, (v0 + 680), v57);
  v58 = *(v0 + 1080);
  v59 = *(v0 + 1072);
  v60 = *(v0 + 1048);
  v61 = *(v0 + 1040);
  v62 = *(v0 + 1032);
  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 984);
  v66 = *(v0 + 1008);
  v68 = *(v0 + 976);
  v70 = *(v0 + 952);
  v72 = *(v0 + 936);
  (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
  outlined destroy of XPCSystem.Transport.Packet.Payload(v63);
  outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v65, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  outlined destroy of XPCSystem.Session.RemoteInvocationRequest(v0 + 16);
  outlined destroy of XPCSystem.RawActorID.Remote(v0 + 368);
  outlined destroy of XPCSystem.Transport.Packet.Payload(v60);

  v46 = *(v0 + 8);
LABEL_11:

  return v46();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionCAC08OutboundC8ProtocolAacFP14sendInvocation2to6target10invocationqd__AC7ActorIDV_11Distributed16RemoteCallTargetVAC0G7EncoderVztYaAC0nG17CancellationErrorVYKSeRd__SERd__lFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 40) = a8;
  v17 = *v8;
  v18 = swift_task_alloc();
  *(v9 + 48) = v18;
  *v18 = v9;
  v18[1] = _s14XPCDistributed9XPCSystemC7SessionCAC08OutboundC8ProtocolAacFP14sendInvocation2to6target10invocationqd__AC7ActorIDV_11Distributed16RemoteCallTargetVAC0G7EncoderVztYaAC0nG17CancellationErrorVYKSeRd__SERd__lFTWTQ0_;

  return _s14XPCDistributed9XPCSystemC7SessionC14sendInvocation2to6target10invocationxAC7ActorIDV_11Distributed16RemoteCallTargetVAC0E7EncoderVztYaAC0lE17CancellationErrorVYKSeRzSERzlF(a1, a2, a3, a4, a5, a6, a7, v9 + 16);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionCAC08OutboundC8ProtocolAacFP14sendInvocation2to6target10invocationqd__AC7ActorIDV_11Distributed16RemoteCallTargetVAC0G7EncoderVztYaAC0nG17CancellationErrorVYKSeRd__SERd__lFTWTQ0_()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 24);
    *v5 = *(v2 + 16);
    *(v5 + 8) = v6;
  }

  v7 = *(v4 + 8);

  return v7();
}

uint64_t outlined init with take of XPCSystem.Transport.Packet.Payload(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t instantiation function for generic protocol witness table for XPCSystem.Session(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session)
  {
    type metadata accessor for XPCSystem.Session();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session);
  }

  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC23OutboundSessionProtocolP14sendInvocation2to6target10invocationqd__AC7ActorIDV_11Distributed16RemoteCallTargetVAC0G7EncoderVztYaAC0nG17CancellationErrorVYKSeRd__SERd__lFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 16);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t XPCSystem.ResultHandler.init(_:canThrow:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = outlined init with take of XPCSystem.ResultHandler.ReplyHandler(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t XPCSystem.ResultHandler.onReturn<A>(value:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_conformsToProtocol();
  v3[6] = swift_conformsToProtocol();
  v4 = type metadata accessor for Result();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](XPCSystem.ResultHandler.onReturn<A>(value:), 0, 0);
}

uint64_t XPCSystem.ResultHandler.onReturn<A>(value:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v12 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v8 = v4[3];
  v9 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  (*(*(v6 - 8) + 16))(v1, v7, v6);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 8))(v1, v6, MEMORY[0x277D84A98], v5, v12, MEMORY[0x277D84AC0], v8, v9);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t XPCSystem.ResultHandler.onReturnVoid()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCSystem.ResultHandler.onReturnVoid(), 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  *(v0 + 24) = 0;
  v4 = *(v3 + 8);
  v5 = lazy protocol witness table accessor for type Ack and conformance Ack();
  v6 = lazy protocol witness table accessor for type Ack and conformance Ack();
  v4(v0 + 24, &type metadata for Ack, MEMORY[0x277D84A98], v5, v6, MEMORY[0x277D84AC0], v2, v3);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t XPCSystem.ResultHandler.onThrow<A>(error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Result();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](XPCSystem.ResultHandler.onThrow<A>(error:), 0, 0);
}

uint64_t XPCSystem.ResultHandler.onThrow<A>(error:)()
{
  v1 = v0[5];
  if (*(v1 + 40) == 1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = *(v1 + 24);
    v9 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, v8);
    (*(*(v6 - 8) + 16))(v2, v7, v6);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 8))(v2, MEMORY[0x277D84A98], v6, MEMORY[0x277D84AB8], MEMORY[0x277D84AA0], v5, v8, v9);
    (*(v3 + 8))(v2, v4);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v14 = v0 + 2;
    v13 = v0[2];
    v12 = v14[1];
    _StringGuts.grow(_:)(17);

    _StringGuts.grow(_:)(56);
    MEMORY[0x277C6B720](0x6874207466697753, 0xEC00000020776572);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](0xD00000000000002ALL, 0x80000002751B9F60);
    MEMORY[0x277C6B720](0, 0xE000000000000000);

    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t protocol witness for DistributedTargetInvocationResultHandler.onReturn<A>(value:) in conformance XPCSystem.ResultHandler(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return XPCSystem.ResultHandler.onReturn<A>(value:)(a1, a2);
}

uint64_t protocol witness for DistributedTargetInvocationResultHandler.onThrow<A>(error:) in conformance XPCSystem.ResultHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return XPCSystem.ResultHandler.onThrow<A>(error:)(a1, a2, a3);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.ResultHandler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.ResultHandler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDBA8]();
}