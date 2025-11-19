uint64_t sub_275172298()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_2751722FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

uint64_t sub_275172310()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of XPCSystem.ResultHandler.ReplyHandler(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_275172360()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for ID64.Generator;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_275172388()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2751723C8()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_275172408()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySbGMd, &_s15Synchronization6AtomicVySbGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_275172448()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275172484(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(a2 + 8) = a1[1];
  return swift_unknownObjectWeakAssign();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC24RemoteInvocationResponseV0dE7Failure018_6652F7F3EA9063F11H13BACB4A19090F0LLO33ResultPropagationFailedCodingKeysOy__x__Gs0R3KeyAAsANP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_2751724E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172528()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172560()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_275172598()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

void *sub_2751725C0()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for ID64.Generator;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_2751725E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 8);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27517268C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for XPCSystem.Transport.Packet.Payload(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27517272C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275172798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCDictionary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_275172808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMd, &_sScCys6ResultOyABy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGSgs5NeverOGAQGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2751728E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172920()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(v0 + v3 + 8);
  }

  else
  {
    v7 = type metadata accessor for XPCDictionary();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_275172A38()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_275172A78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  outlined consume of XPCSystem.SharedActorKey(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  v3 = *(v0 + 80);

  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  }

  else
  {
    v4 = *(v0 + 88);

    v5 = *(v0 + 96);

    v6 = *(v0 + 112);

    v7 = *(v0 + 128);
  }

  v8 = *(v0 + 192);

  v9 = *(v0 + 200);

  v10 = *(v0 + 208);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_275172B20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 sub_275172B8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u8[0] = a1[1].n128_u8[0];
  *a2 = result;
  return result;
}

uint64_t sub_275172BD4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275172C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172CC8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275172D00()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 7);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 72) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for Result();
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v11 + 8) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  v15 = *(v0 + 8);

  (*(v5 + 8))(&v0[v7], v1);
  v16 = *&v0[v8];

  (*(v10 + 8))(&v0[v12], v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v13, v14 | 7);
}

uint64_t sub_275172EB4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVys6UInt64VGMd, &_s15Synchronization6AtomicVys6UInt64VGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_275172EE4()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275172F20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_275172F68()
{
  if (MEMORY[0x277D85020])
  {
    return &type metadata for Fuse;
  }

  else
  {
    return (MEMORY[0x277D84F78] + 8);
  }
}

uint64_t sub_275172F90()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275172FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275173098()
{
  v1 = type metadata accessor for XPCSystem.Transport.Packet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = type metadata accessor for XPCDictionary();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275173174()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275173244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for XPCEndpoint();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2751732F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for XPCEndpoint();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275173394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCSystem.EphemeralService(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_275173450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCSystem.EphemeralService(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275173508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2751735BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  outlined init with copy of XPCPeerRequirement?(a1, v6, &_s14XPCDistributed12WeakActorRefVSgMd, &_s14XPCDistributed12WeakActorRefVSgMR);
  return specialized Dictionary.subscript.setter(v6, v3, v4);
}

__n128 sub_275173640(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *XPCSystem.Session.deinit()
{
  v1._object = 0x80000002751B8720;
  v1._countAndFlagsBits = 0xD000000000000033;
  XPCSystem.Session.cancel(because:)(v1);
  v2 = v0[2];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];
  v6 = v0[9];

  v7 = v0[10];
  v8 = v0[12];

  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[17];
  outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(v0[14]);
  v12 = v0[19];

  return v0;
}

Swift::Void __swiftcall XPCSystem.Session.cancel(because:)(Swift::String because)
{
  v2 = 0;
  v3 = *(v1 + 32);
  atomic_compare_exchange_strong_explicit((v3 + 32), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    object = because._object;
    countAndFlagsBits = because._countAndFlagsBits;
    v6 = *(v3 + 88);
    v7 = *(v3 + 96);
    __swift_project_boxed_opaque_existential_1((v3 + 64), v6);
    (*(v7 + 24))(v6, v7);
    if (one-time initialization token for sessionLog != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, sessionLog);

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v17 = v11;
      v12 = *(v3 + 40);
      v13 = *(v3 + 48);

      MEMORY[0x277C6B720](v12, v13);

      MEMORY[0x277C6B720](58, 0xE100000000000000);
      v16 = *(v1 + 24);
      _print_unlocked<A, B>(_:_:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, &v17);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v17);
      _os_log_impl(&dword_275171000, oslog, v9, "%{public}s is cancelled because %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C6C430](v11, -1, -1);
      MEMORY[0x277C6C430](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t XPCSystem.Session.__deallocating_deinit()
{
  XPCSystem.Session.deinit();

  return swift_deallocClassInstance();
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance XPCSystem.Session.InitializationOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance XPCSystem.Session.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance XPCSystem.Session.InitializationOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance XPCSystem.Session.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance XPCSystem.Session.InitializationOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = swift_allocObject();
  _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(a1, a2, a3, a4);
  return v8;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC11actorSystem9transport7optionsAeC_AC9TransportCAE21InitializationOptionsVtAC10SetupErrorVYKcfc(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = v4;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  v10 = (v4 + 112);
  *(v4 + 16) = a1;
  *(v4 + 32) = a2;

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC14SharedActorKeyO_11Distributed0hF0_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC14SharedActorKeyO11Distributed0gE0_pGGMd, &_s14XPCDistributed12SynchronizedCySDyAA9XPCSystemC14SharedActorKeyO11Distributed0gE0_pGGMR);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = v11;
  *(v10 - 8) = v12;
  if (one-time initialization token for default != -1)
  {
LABEL_16:
    swift_once();
  }

  v14 = static ID64.default;
  do
  {
    v15 = v14 + 1;
    if (v14 == -1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v16 = v14;
    atomic_compare_exchange_strong_explicit(&static ID64.default, &v16, v15, memory_order_relaxed, memory_order_relaxed);
    v17 = v16 == v14;
    v14 = v16;
  }

  while (!v17);
  v43 = a4;
  v44 = a3;
  v46 = v5;
  *(v7 + 24) = v15;
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCyyts5NeverOGMd, &_s7Combine6FutureCyyts5NeverOGMR);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = Future.init(_:)();
  result = swift_beginAccess();
  v24 = *(v18 + 16);
  if (!v24)
  {
    __break(1u);
    goto LABEL_18;
  }

  v25 = *(v18 + 24);

  *(v7 + 56) = v22;
  *(v7 + 64) = v24;
  *(v7 + 72) = v25;
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = 0;
  v27 = *(v19 + 48);
  v28 = *(v19 + 52);
  swift_allocObject();

  v29 = Future.init(_:)();
  result = swift_beginAccess();
  v30 = *(v26 + 16);
  if (!v30)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v31 = *(v26 + 24);

  *(v7 + 80) = v29;
  *(v7 + 88) = v30;
  *(v7 + 96) = v31;
  v32 = *(v7 + 112);
  v33 = *(v7 + 120);
  v34 = *(v7 + 128);
  v35 = *(v7 + 136);
  *v10 = 0u;
  v10[1] = 0u;
  outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(v32);
  *(v7 + 104) = (v44 & 2) != 0;
  *(v7 + 144) = 0;
  *(v7 + 40) = 0;
  *(v7 + 152) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_ScTyyts5NeverOGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a2 + 24) = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v36, type metadata accessor for XPCSystem.Session);
  swift_unknownObjectWeakAssign();
  if ((v44 & 4) != 0 || (v37 = 0, atomic_compare_exchange_strong_explicit((v7 + 144), &v37, 1u, memory_order_relaxed, memory_order_relaxed), v37))
  {
  }

  else
  {
    v38 = *(v7 + 32);
    v39 = v38[11];
    v40 = v38[12];
    __swift_project_boxed_opaque_existential_1(v38 + 8, v39);
    v41 = v46;
    (*(v40 + 8))(v38, v45, v39, v40);

    if (v41)
    {

      v42 = v45[1];
      *v43 = v45[0];
      v43[1] = v42;
    }
  }

  return v7;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC17activateTransportyyAC10SetupErrorVYKF(uint64_t result)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit((v1 + 144), &v3, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v3)
  {
    v4 = result;
    v5 = *(v1 + 32);
    v6 = v5[11];
    v7 = v5[12];
    __swift_project_boxed_opaque_existential_1(v5 + 8, v6);
    result = (*(v7 + 8))(v5, v9, v6, v7);
    if (v2)
    {
      v8 = v9[1];
      *v4 = v9[0];
      v4[1] = v8;
    }
  }

  return result;
}

uint64_t (*XPCSystem.Session.local.read(void *a1))(uint64_t *a1)
{
  *a1 = v1;

  return XPCSystem.Session.local.read;
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14readyToReceiveyyScTyAE14LocalInterfaceV15ActivationTokenVs5NeverOGAC10SetupErrorVYKF(uint64_t a1, void *a2)
{
  if (*(v2 + 104) == 1)
  {
    v5 = v3;
    v6 = *(v2 + 96);
    v7 = *(v2 + 112);
    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    v10 = *(v2 + 136);
    *(v2 + 112) = *(v2 + 80);
    *(v2 + 128) = v6;
    *(v2 + 136) = a1;

    result = outlined consume of OwnedAwaitableEvent<XPCSystem.Session.LocalInterface.ActivationToken>?(v7);
    v12 = 0;
    atomic_compare_exchange_strong_explicit((v2 + 144), &v12, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v12)
    {
      v13 = *(v2 + 32);
      v14 = v13[11];
      v15 = v13[12];
      __swift_project_boxed_opaque_existential_1(v13 + 8, v14);
      result = (*(v15 + 8))(v13, v17, v14, v15);
      if (v5)
      {
        v16 = v17[1];
        *a2 = v17[0];
        a2[1] = v16;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.waitForLocalInterfaceActivation()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCSystem.Session.waitForLocalInterfaceActivation(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v1[14];
  v0[3] = v2;
  if (v2)
  {
    v0[4] = v1[17];
    v0[5] = v1[16];
    v3 = *(MEMORY[0x277CBCEA0] + 4);

    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = XPCSystem.Session.waitForLocalInterfaceActivation();

    return MEMORY[0x28210E9A8]();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](XPCSystem.Session.waitForLocalInterfaceActivation(), 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t XPCSystem.Session.resolveSharedActor(at:)(uint64_t a1)
{
  if (*(v1 + 104) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 48);
  v10 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  KeyPath = swift_getKeyPath();
  v8 = *(*v2 + 136);
  outlined copy of XPCSystem.SharedActorKey(v10, v4, v6);
  v8(&v11, KeyPath);

  return v11;
}

BOOL key path index equality operator for (XPCSystem.SharedActorKey)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 16);
  if (!v6)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (v6 != 1)
  {
    return v8 == 2 && v4 == v7;
  }

  if (v8 != 1)
  {
    return 0;
  }

LABEL_6:
  v9 = v4 == v7 && v5 == a1[1];
  return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

Swift::Int key path index hash operator for (XPCSystem.SharedActorKey)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v1);
      return Hasher._finalize()();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277C6BCC0](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.addPendingInvocationExecutionTask(_:withID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*(v3 + 32) + 56);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    v14 = *(v3 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 152);
    *(v3 + 152) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 152) = v16;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v1 + 32) + 56);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in XPCSystem.Session.removePendingInvocationExecutionTask(withID:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  static DispatchQoS.unspecified.getter();
  v18[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in XPCSystem.Session.removePendingInvocationExecutionTask(withID:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 152);
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if (v6)
  {
    v7 = v5;
    v8 = *(a1 + 152);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 152);
    *(a1 + 152) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
    }

    v11 = *(*(v10 + 56) + 8 * v7);

    specialized _NativeDictionary._delete(at:)(v7, v10);
    *(a1 + 152) = v10;
  }

  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t XPCSystem.Session.cancelPendingInvocationExecutionTask(withID:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    swift_beginAccess();
    v11 = specialized Dictionary._Variant.removeValue(forKey:)(a1);
    result = swift_endAccess();
    if (v11)
    {
      MEMORY[0x277C6B800](v11, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.addSharedActor(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (*(v5 + 104) == 1)
  {
    v9 = *(v5 + 48);
    MEMORY[0x28223BE20](a1);
    KeyPath = swift_getKeyPath();
    v11 = *(v5 + 16);
    outlined copy of XPCSystem.SharedActorKey(a3, a4, a5);
    v14[0] = XPCSystem.resolve(id:)();
    v14[1] = v12;
    (*(*v9 + 152))(KeyPath, v14);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.shareActor(_:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 40);
  while (1)
  {
    v4 = v3 + 1;
    if (v3 == -1)
    {
      break;
    }

    v5 = v3;
    atomic_compare_exchange_strong_explicit((v2 + 40), &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v3;
    v3 = v5;
    if (v6)
    {
      XPCSystem.Session.addSharedActor(_:at:)(result, a2, v4, 0, 2u);
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall XPCSystem.Session.cancellationCompleted()()
{
  (*(**(v0 + 48) + 200))(closure #1 in XPCSystem.Session.cancellationCompleted(), 0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3[0] = 0;
  v1(v3);
}

uint64_t closure #1 in XPCSystem.Session.cancellationCompleted()(uint64_t *a1)
{
  v2 = *a1;

  *a1 = MEMORY[0x277D84F98];
  return result;
}

Swift::Bool __swiftcall XPCSystem.Session.remoteSatisfiesActorSystemRequirement()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for XPCPeerRequirement();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of XPCPeerRequirement?(*(v0 + 16) + OBJC_IVAR____TtC14XPCDistributed9XPCSystem_peerRequirement, v4, &_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of XPCPeerRequirement?(v4);
    v10 = 1;
    return v10 & 1;
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = *(v0 + 32);
  v12 = v11[11];
  v13 = v11[12];
  __swift_project_boxed_opaque_existential_1(v11 + 8, v12);
  (*(v13 + 32))(&v16, v12, v13);
  if (v17 & 1) == 0 && (audit_token_t.isValid.getter())
  {
    v10 = audit_token_t.satisfies(requirement:)();
    (*(v6 + 8))(v9, v5);
    return v10 & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.Session.waitForCancellation()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](XPCSystem.Session.waitForCancellation(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + 56);
  v2 = *(MEMORY[0x277CBCEA0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = XPCSystem.Session.waitForCancellation();

  return MEMORY[0x28210E9A8]();
}

{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](XPCSystem.Session.waitForCancellation(), 0, 0);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t XPCSystem.Session.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);

  MEMORY[0x277C6B720](v2, v3);

  MEMORY[0x277C6B720](58, 0xE100000000000000);
  v5 = *(v0 + 24);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

double XPCSystem.Session.RemoteInterface.auditToken.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 32);
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v4);
  v6 = *(v5 + 32);

  v6(v9, v4, v5);

  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t XPCSystem.Session.RemoteInterface.import<A>(defaultActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v16 = type metadata accessor for XPCSystem.Session();
  v17 = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v6, type metadata accessor for XPCSystem.Session);
  *&v15 = v5;

  v7 = SwiftType.init<A>(_:)();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v15, v19);
    v20 = v9;
    v21 = v10;
    v22 = 0;
    outlined init with copy of XPCSystem.RawActorID.Remote(v19, &v15);
    v18 = 1;
    v14 = v5[2];
    v11 = *(a3 + 8);

    v12 = dispatch thunk of static DistributedActor.resolve(id:using:)();

    outlined destroy of XPCSystem.ActorID(&v15);
    outlined destroy of XPCSystem.RawActorID.Remote(v19);
    return v12;
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInterface.import<A>(clientActorFor:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v11[3] = type metadata accessor for XPCSystem.Session();
  v11[4] = lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(&lazy protocol witness table cache variable for type XPCSystem.Session and conformance XPCSystem.Session, v6, type metadata accessor for XPCSystem.Session);
  v11[5] = a1;
  v11[0] = v5;
  v11[6] = a2;
  v12 = 1;
  outlined init with copy of XPCSystem.RawActorID.Remote(v11, v10);
  v10[57] = 1;
  v9 = *(v5 + 16);

  v7 = dispatch thunk of static DistributedActor.resolve(id:using:)();

  outlined destroy of XPCSystem.ActorID(v10);
  outlined destroy of XPCSystem.RawActorID.Remote(v11);
  return v7;
}

uint64_t XPCSystem.Session.LocalInterface.export<A, B>(_:asDefaultActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v11[0] = a1;
  v6 = *(a5 + 16);
  dispatch thunk of Identifiable.id.getter();
  *&v12[10] = *&v15[10];
  v11[0] = v13;
  v11[1] = v14;
  *v12 = *v15;
  if ((v15[25] & 1) == 0)
  {
    v7 = *v5;
    v8 = SwiftType.init<A>(_:)();
    if (v9)
    {
      XPCSystem.Session.addSharedActor(_:at:)(*&v11[0], *(&v11[0] + 1), v8, v9, 0);
    }

    __break(1u);
  }

  outlined destroy of XPCSystem.RawActorID(v11);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t XPCSystem.Session.LocalInterface.export<A>(_:asServerActorFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v11[0] = a1;
  v8 = *(a5 + 16);
  dispatch thunk of Identifiable.id.getter();
  *&v12[10] = *&v15[10];
  v11[0] = v13;
  v11[1] = v14;
  *v12 = *v15;
  if (v15[25])
  {
    outlined destroy of XPCSystem.RawActorID(v11);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = *v5;
    return XPCSystem.Session.addSharedActor(_:at:)(*&v11[0], *(&v11[0] + 1), a2, a3, 1u);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.LocalInterface.ActivationToken.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int XPCSystem.Session.LocalInterface.ActivationToken.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.LocalInterface.ActivationToken.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenV10CodingKeys33_3CEE9BCFA827C3ABA8685D1E56281272LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.LocalInterface.ActivationToken()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.LocalInterface.ActivationToken()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()(uint64_t a1)
{
  *(v2 + 696) = a1;
  *(v2 + 704) = *v1;
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()()
{
  v7 = v0;
  v1 = v0[88];
  v2 = v1[11];
  v3 = v1[12];
  v6 = 0;
  v2(&v6);
  v4 = swift_task_alloc();
  v0[89] = v4;
  v4[2] = &async function pointer to closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();
  v4[3] = 0;
  v4[4] = v1;
  swift_asyncLet_begin();
  v0[90] = v1[3];

  return MEMORY[0x282200928](v0 + 2);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{
  v1 = v0[89];
  v2 = v0[88];

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation()()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = *(MEMORY[0x277CBCEA0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation();

  return MEMORY[0x28210E9A8]();
}

{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[96] = a5;
  v6[95] = a4;
  v6[94] = a3;
  v6[93] = a2;
  v6[87] = a1;
  v7 = *(a5 - 8);
  v6[97] = v7;
  v8 = *(v7 + 64) + 15;
  v6[98] = swift_task_alloc();
  v6[99] = *v5;

  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v11 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = v1[11];
  v5 = v1[12];
  v10 = 0;
  v9 = *(v0 + 752);
  v4(&v10);
  v6 = swift_task_alloc();
  *(v0 + 800) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v9;
  *(v6 + 40) = v1;
  swift_asyncLet_begin();
  *(v0 + 808) = v1[3];
  v7 = *(v0 + 784);

  return MEMORY[0x282200928](v0 + 16);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

{
  v1 = v0[101];
  v2 = v0[93];
  (*(v0[97] + 16))(v0[87], v0[98], v0[96]);
  *v2 = v1;
  v3 = v0[98];

  return MEMORY[0x282200920](v0 + 2, v3, XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), v0 + 88);
}

{
  return MEMORY[0x2822009F8](XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];

  v4 = v0[1];

  return v4();
}

uint64_t specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v1 = v0[4];
  v0[2] = v0[6];

  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);
  v4 = v0[5];
  v5 = v0[3];

  return (v7)(v5, v0 + 2);
}

uint64_t implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:), 0, 0);
}

uint64_t implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v1 = v0[4];
  v0[2] = v0[6];

  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);
  v4 = v0[5];
  v5 = v0[3];

  return (v7)(v5, v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 16);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[2] = *v7;
  v8[3] = a1;
  return MEMORY[0x2822009F8](_s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTY0_, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTY0_()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = type metadata accessor for Result();
  *v6 = v0;
  v6[1] = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTQ1_;
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);

  return XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(v8, v9, &_s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TATu, v4, v7);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFTQ1_()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_(uint64_t a1, void *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a1;
  v7[4] = a5;
  v11 = *(a5 - 8);
  v7[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v7[8] = v13;
  v14 = *(a6 - 8);
  v7[9] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v7[10] = v16;
  v7[11] = swift_task_alloc();
  v7[2] = *a2;
  v20 = (a3 + *a3);
  v17 = a3[1];
  v18 = swift_task_alloc();
  v7[12] = v18;
  *v18 = v7;
  v18[1] = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TQ0_;

  return (v20)(v13, v7 + 2, v16);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TQ0_()
{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {
    v3 = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY2_;
  }

  else
  {
    v3 = _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY1_;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY1_()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[5];
  v3 = v0[6];
  (*(v0[7] + 32))(v0[3], v0[8], v0[4]);
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TY2_()
{
  v1 = *(v0[9] + 32);
  v1(v0[11], v0[10], v0[5]);
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  v1(v0[3], v0[11], v0[5]);
  type metadata accessor for Result();
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t XPCSystem.Session.LocalInterface.UncheckedHandoff.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMd, &_s14XPCDistributed12SynchronizedCyAA9XPCSystemC7SessionCSgGMR);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v4 + 16) = result;
  *(v4 + 24) = a1;
  *a2 = v4;
  return result;
}

void *XPCSystem.Session.LocalInterface.UncheckedHandoff.complete()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = 0;
  result = (*(*v3 + 168))(&v6, &v5);
  if (v6)
  {
    *a1 = v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Int XPCSystem.Session.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v0 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v1 + 24));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCE0](*(v1 + 24));
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.RemoteInterface.satisfies(requirement:)()
{
  v1 = *(*v0 + 32);
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v4 = *(v3 + 32);

  v4(&v6, v2, v3);

  if (v7)
  {
    return 2;
  }

  else
  {
    return audit_token_t.satisfies(requirement:)() & 1;
  }
}

uint64_t one-time initialization function for sessionKey()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyVSgMd, &_ss17CodingUserInfoKeyVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v4, static CodingUserInfoKey.sessionKey);
  v5 = __swift_project_value_buffer(v4, static CodingUserInfoKey.sessionKey);
  CodingUserInfoKey.init(rawValue:)();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t CodingUserInfoKey.sessionKey.unsafeMutableAddressor()
{
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CodingUserInfoKey();

  return __swift_project_value_buffer(v0, static CodingUserInfoKey.sessionKey);
}

uint64_t static CodingUserInfoKey.sessionKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.sessionKey);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t Dictionary<>.init(session:xpcSystem:)(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMd, &_ss23_ContiguousArrayStorageCys17CodingUserInfoKeyV_yptGMR);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2751B4420;
  v8 = *(v4 + 48);
  if (one-time initialization token for sessionKey != -1)
  {
    swift_once();
  }

  v9 = v7 + v6;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = __swift_project_value_buffer(v10, static CodingUserInfoKey.sessionKey);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  outlined init with copy of Any(a1, v9 + v8);
  v12 = (v9 + v5 + *(v4 + 48));
  static CodingUserInfoKey.actorSystemKey.getter();
  v12[3] = type metadata accessor for XPCSystem();
  *v12 = a2;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

uint64_t static TestHook.mapToLocalActorID(_:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = outlined init with copy of XPCSystem.RawActorID(a1, v20);
  if (v22 == 1)
  {
    v23[0] = v20[0];
    v23[1] = v20[1];
    *v24 = *v21;
    *&v24[9] = *&v21[9];
    if (*(a2 + 104) != 1)
    {
      goto LABEL_5;
    }

    v7 = *&v24[8];
    v6 = *&v24[16];
    v8 = v24[24];
    v9 = *(a2 + 48);
    MEMORY[0x28223BE20](v5);
    KeyPath = swift_getKeyPath();
    v11 = *(*v9 + 136);
    outlined copy of XPCSystem.SharedActorKey(v7, v6, v8);
    v11(v16, KeyPath);

    v12 = v16[0];
    if (v16[0])
    {
      v13 = v16[1];
      swift_getObjectType();
      v16[0] = v12;
      v14 = *(v13 + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v17);
      dispatch thunk of Identifiable.id.getter();
      outlined destroy of XPCSystem.RawActorID.Remote(v23);
      swift_unknownObjectRelease();
      outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v17, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
      return swift_dynamicCast();
    }

    else
    {
LABEL_5:
      result = outlined destroy of XPCSystem.RawActorID.Remote(v23);
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      *(a3 + 56) = -256;
    }
  }

  else
  {
    outlined destroy of XPCSystem.RawActorID(v20);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  a4(v8, v9);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14XPCDistributed9SwiftTypeVGMd, &_ss23_ContiguousArrayStorageCy14XPCDistributed9SwiftTypeVGMR);
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

{
  v2 = v1;
  v3 = *v1;
  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  specialized _NativeDictionary._delete(at:)(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_41;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v40 = *(v22 + 16 * v21);
      if ((v39 & 1) == 0)
      {
        outlined copy of XPCSystem.SharedActorKey(v24, v25, v26);
        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (!v26)
      {
        break;
      }

      if (v26 == 1)
      {
        v28 = 1;
LABEL_23:
        MEMORY[0x277C6BCC0](v28);
        String.hash(into:)();
        goto LABEL_25;
      }

      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v24);
LABEL_25:
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 16 * v16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v28 = 0;
    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = 16 * (v18 | (v9 << 6));
      v33 = *(*(v5 + 48) + v21);
      v22 = *(v5 + 56) + v21;
      if (a2)
      {
        outlined init with take of WeakActorRef(v22, v34);
      }

      else
      {
        outlined init with copy of WeakActorRef(v22, v34);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v33);
      MEMORY[0x277C6BCE0](*(&v33 + 1));
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v33;
      result = outlined init with take of WeakActorRef(v34, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v4;
    while (1)
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      Hasher.init(_seed:)();
      if (!v14)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = 1;
LABEL_9:
        MEMORY[0x277C6BCC0](v15);

        String.hash(into:)();
        goto LABEL_11;
      }

      MEMORY[0x277C6BCC0](2);
      MEMORY[0x277C6BCE0](v12);
LABEL_11:
      v16 = Hasher._finalize()();
      result = outlined consume of XPCSystem.SharedActorKey(v12, v13, v14);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        v4 = v28;
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v28;
        if (v17 >= v8)
        {
          goto LABEL_16;
        }
      }

      if (v3 >= v17)
      {
LABEL_16:
        v18 = *(a2 + 48);
        v19 = v18 + 24 * v3;
        v20 = (v18 + v9);
        if (24 * v3 < v9 || v19 >= v20 + 24 || v3 != v6)
        {
          v21 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v15 = 0;
    goto LABEL_9;
  }

LABEL_23:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();
      MEMORY[0x277C6BCE0](v11);
      MEMORY[0x277C6BCE0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      result = v17 + 16 * v3;
      if (v3 < v6 || result >= v17 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
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
        goto LABEL_18;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
      v24 = *v7;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 16 * v15);
    v28 = *v27;
    *v27 = a1;
    v27[1] = a2;

    return swift_unknownObjectRelease();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = v26[6] + 24 * v15;
  *v30 = a3;
  *(v30 + 8) = a4;
  *(v30 + 16) = a5;
  v31 = (v26[7] + 16 * v15);
  *v31 = a1;
  v31[1] = a2;
  v32 = v26[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v33;

  return outlined copy of XPCSystem.SharedActorKey(a3, a4, a5);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;

    return outlined assign with take of WeakActorRef(a1, v23);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of WeakActorRef(a4, a5[7] + 16 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(*(v2 + 56) + v17);
        v24 = *(v19 + 16);
        *v22 = *v19;
        *(v22 + 8) = v21;
        *(v22 + 16) = v24;
        *(*(v4 + 56) + v17) = v23;
        outlined copy of XPCSystem.SharedActorKey(v20, v21, v24);
        result = swift_unknownObjectRetain();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of WeakActorRef(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of WeakActorRef(v19, *(v4 + 56) + v17);
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

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC14SharedActorKeyO_11Distributed0hF0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC14SharedActorKeyO11Distributed0hF0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v14 = *i;
      outlined copy of XPCSystem.SharedActorKey(v5, v6, v7);
      swift_unknownObjectRetain();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 24 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v10 + 16) = v7;
      *(v3[7] + 16 * result) = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in UnownedAwaitableEvent.init()(a1, a2, v2, _ss6ResultOyxs5NeverOGRi_zRi0_zlyytIsegn_SgWOe);
}

{
  return specialized closure #1 in UnownedAwaitableEvent.init()(a1, a2, v2);
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_ScTyyts5NeverOGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VScTyyts5NeverOGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey()
{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey;
  if (!lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey);
  }

  return result;
}

uint64_t outlined consume of XPCSystem.SharedActorKey(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t outlined copy of XPCSystem.SharedActorKey(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of XPCPeerRequirement?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC18XPCPeerRequirementVSgMd, &_s3XPC18XPCPeerRequirementVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys and conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ID64 and conformance ID64()
{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ID64 and conformance ID64;
  if (!lazy protocol witness table cache variable for type ID64 and conformance ID64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ID64 and conformance ID64);
  }

  return result;
}

uint64_t partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return specialized implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(a1, v4, v5, v6);
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)(a1, v5, v7, v6);
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_TA(uint64_t a1, void *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return _s14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV022activateThenWithRemoteE07performs6ResultOyxq_G6result_AG15ActivationTokenV5tokentxAE0iE0VYaq_YKXE_tYas8SendableRzs5ErrorR_r0_lFAlRYaXEfU_(a1, a2, v9, v10, v6, v7, v8);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of XPCPeerRequirement?(v10, v6, &_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.InitializationOptions and conformance XPCSystem.Session.InitializationOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.LocalInterface.ActivationToken and conformance XPCSystem.Session.LocalInterface.ActivationToken);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type XPCSystem.Session and conformance XPCSystem.Session(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for XPCSystem.Session.LocalInterface(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInterface(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInterface(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed4ID64V_AC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMd, &_ss18_DictionaryStorageCy14XPCDistributed4ID64VAC14RequestManagerC0E0CyAEs6ResultOyAC9XPCSystemC9TransportC6PacketV7PayloadVAO0I5ErrorOG_GGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AC04WeakF3RefVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMd, &_ss18_DictionaryStorageCy14XPCDistributed9XPCSystemC10RawActorIDO5LocalVAC04WeakF3RefVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of XPCPeerRequirement?(i, &v13, &_s14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AA04WeakD3RefVtMd, &_s14XPCDistributed9XPCSystemC10RawActorIDO5LocalV_AA04WeakD3RefVtMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of WeakActorRef(&v15, v3[7] + 16 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of XPCPeerRequirement?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t SwiftType.init<A>(_:)()
{
  result = _mangledTypeName(_:)();
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t static SwiftType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SwiftType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SwiftType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SwiftType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SwiftType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys;
  if (!lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys);
  }

  return result;
}

Swift::Int SwiftType.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SwiftType.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t protocol witness for Decodable.init(from:) in conformance SwiftType@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SwiftType(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9SwiftTypeV10CodingKeys33_3C9B7FB6BA3D0F315FA05335263ED71ELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SwiftType.CodingKeys and conformance SwiftType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftType()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SwiftType()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftType()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type SwiftType and conformance SwiftType()
{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SwiftType and conformance SwiftType;
  if (!lazy protocol witness table cache variable for type SwiftType and conformance SwiftType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftType and conformance SwiftType);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SwiftType()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SwiftType(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for SwiftType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Synchronized.__allocating_init(initalValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Synchronized.init(initalValue:)(a1);
  return v5;
}

Swift::Bool __swiftcall Fuse.trip()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v0, &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  return v1 == 0;
}

char *Synchronized.init(initalValue:)(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

void Synchronized.get<A>(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - v5;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v7 = *(*v1 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  swift_getAtKeyPath();
  (*(v3 + 8))(v6, v2);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

void Synchronized.get<A>(_:)(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - v10;
  v18 = v3;
  os_unfair_lock_lock((*(v3 + 2) + 16));
  if (a2)
  {
    v17 = *(*v18 + 96);
    swift_beginAccess();
    v12 = *(v8 + 16);
    do
    {
      v13 = *a3++;
      v12(v11, &v18[v17], v7);
      v14 = *v5++;
      v15 = *v14;

      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
      --a2;
    }

    while (a2);
  }

  os_unfair_lock_unlock((*(v18 + 2) + 16));
}

void Synchronized.set<A>(_:to:)(void *a1, uint64_t a2)
{
  v4 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v10 - v7;
  os_unfair_lock_lock((v2[2] + 16));
  (*(v5 + 16))(v8, a2, v4);
  v9 = *(*v2 + 96);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  os_unfair_lock_unlock((v2[2] + 16));
}

void Synchronized.set<A>(assumingUnset:to:)(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = a1;
  v4 = *v2;
  v5 = *(*a1 + *MEMORY[0x277D84308] + 8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - v12;
  v15 = *(v14 + 80);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v11);
  v19 = &v23 - v18;
  os_unfair_lock_lock((*(v2 + 2) + 16));
  v20 = *(*v2 + 96);
  swift_beginAccess();
  (*(v16 + 16))(v19, &v2[v20], v15);
  v25 = v3;
  swift_getAtKeyPath();
  (*(v16 + 8))(v19, v15);
  v21 = *(v5 + 16);
  v22 = *(v21 - 8);
  LODWORD(v3) = (*(v22 + 48))(v13, 1, v21);
  (*(v6 + 8))(v13, v5);
  if (v3 == 1)
  {
    (*(v22 + 16))(v10, v24, v21);
    (*(v22 + 56))(v10, 0, 1, v21);
    swift_beginAccess();
    swift_setAtWritableKeyPath();
    swift_endAccess();
    os_unfair_lock_unlock((*(v2 + 2) + 16));
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v26 = 0xD000000000000017;
    v27 = 0x80000002751B8C50;
    v29 = 0;
    v30 = 0xE000000000000000;
    v28 = v25;
    type metadata accessor for WritableKeyPath();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](0x74657320736920, 0xE700000000000000);
    MEMORY[0x277C6B720](v29, v30);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void Synchronized.set(to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  os_unfair_lock_lock((*(v2 + 2) + 16));
  v6 = *(*v2 + 96);
  swift_beginAccess();
  v7 = *(v5 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, &v2[v6], v7);
  swift_beginAccess();
  (*(v8 + 24))(&v2[v6], a1, v7);
  swift_endAccess();
  os_unfair_lock_unlock((*(v2 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC3mapyqd_0_s7KeyPathCyxqd__G_qd_0_qd__qd_1_YKXEtqd_1_YKs5ErrorRd_1_r1_lF(uint64_t *a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v7 = v6;
  v33 = a3;
  v34 = a2;
  v32 = a6;
  v8 = *v6;
  v9 = *a1;
  v28 = *(a4 - 8);
  v10 = *(v28 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v11);
  v19 = &v28 - v18;
  v21 = *(v20 + 80);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v17);
  v25 = &v28 - v24;
  os_unfair_lock_lock((*(v7 + 2) + 16));
  v26 = *(*v7 + 96);
  swift_beginAccess();
  (*(v22 + 16))(v25, &v7[v26], v21);
  swift_getAtKeyPath();
  (*(v22 + 8))(v25, v21);
  v27 = v35;
  v34(v19, v13);
  (*(v15 + 8))(v19, v31);
  if (v27)
  {
    (*(v28 + 32))(v30, v13, v29);
  }

  os_unfair_lock_unlock((*(v7 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC3mapyqd__qd__xqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a6;
  v23[1] = a2;
  v7 = v6;
  v24 = a1;
  v9 = *v6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 80);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v12);
  v20 = v23 - v19;
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v21 = *(*v6 + 96);
  swift_beginAccess();
  (*(v17 + 16))(v20, &v7[v21], v16);
  v22 = v25;
  v24(v20, v14);
  (*(v17 + 8))(v20, v16);
  if (v22)
  {
    (*(v10 + 32))(v23[0], v14, a4);
  }

  os_unfair_lock_unlock((*(v7 + 2) + 16));
}

void _s14XPCDistributed12SynchronizedC6updateyqd_0_s15WritableKeyPathCyxqd__G_qd_0_qd__zqd_1_YKXEtqd_1_YKs5ErrorRd_1_r1_lF(uint64_t a1, void (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a7;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  os_unfair_lock_lock((v7[2] + 16));
  v14 = *(*v7 + 96);
  swift_beginAccess();
  v15 = swift_modifyAtWritableKeyPath();
  v16 = v21;
  a2(v17, v13);
  if (v16)
  {
    (*(v10 + 32))(v19, v13, a5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  v15(v20, v18);
  swift_endAccess();
  os_unfair_lock_unlock((v7[2] + 16));
}

void _s14XPCDistributed12SynchronizedC6updateyqd__qd__xzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v14 = *(*v6 + 96);
  swift_beginAccess();
  a1(&v6[v14], v13);
  if (v7)
  {
    (*(v10 + 32))(v16, v13, a4);
  }

  swift_endAccess();
  os_unfair_lock_unlock((*(v6 + 2) + 16));
}

void Synchronized.update<A>(_:from:to:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v30 = a2;
  v31 = a4;
  v27 = a3;
  v32 = a5;
  v8 = *a1;
  v9 = *(*v5 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v26 - v13;
  v16 = *(v15 + *MEMORY[0x277D84308] + 8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v12);
  v26 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v26 - v21;
  os_unfair_lock_lock((*(v6 + 2) + 16));
  v23 = *(*v6 + 96);
  swift_beginAccess();
  (*(v10 + 16))(v14, &v6[v23], v9);
  v28 = a1;
  v24 = swift_readAtKeyPath();
  v29 = v17;
  v25 = *(v17 + 16);
  v25(v22);
  v24(v33, 0);
  (*(v10 + 8))(v14, v9);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    (v25)(v26, v27, v16);
    swift_beginAccess();
    swift_setAtWritableKeyPath();
    swift_endAccess();
  }

  (*(v29 + 32))(v32, v22, v16);
  os_unfair_lock_unlock((*(v6 + 2) + 16));
}

char *Synchronized.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t Synchronized.__deallocating_deinit()
{
  Synchronized.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ActorBackedByDispatchSerialQueue.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();

  return v3;
}

void ActorBackedByDispatchSerialQueue.syncToActor<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = (*(a9 + 16))(a7, a9);
  OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t partial apply for closure #1 in ActorBackedByDispatchSerialQueue.syncToActor<A>(_:file:line:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v11 = *(*(v0 + 32) + 8);
  v9 = *(v0 + 40);
  return Actor.assumeIsolated<A>(_:file:line:)(v3, v4, v5, v6, v8, v7, v1, v2, v11);
}

uint64_t Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  closure #1 in Actor.assumeIsolated<A>(_:file:line:)(_sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTRTA, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    MEMORY[0x277C6B720](0xD00000000000003FLL, 0x80000002751B8C80);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x277C6B720](46, 0xE100000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a6;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v28 = a1;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v17 = *(v33 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v33);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (*(a8 + 16))(a7, a8);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v24 = v28;
  v23 = v29;
  *(v22 + 32) = v8;
  *(v22 + 40) = v24;
  *(v22 + 48) = a2;
  *(v22 + 56) = v23;
  *(v22 + 64) = v30;
  *(v22 + 72) = v31;
  *(v22 + 80) = v32;
  aBlock[4] = partial apply for closure #1 in ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x277C6B8E0](0, v20, v16, v25);
  _Block_release(v25);

  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v33);
}

uint64_t partial apply for closure #1 in ActorBackedByDispatchSerialQueue.asyncToActor(_:file:line:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v9 = *(v0 + 16);
  v10 = v1;
  v11 = *(v0 + 40);
  return Actor.assumeIsolated<A>(_:file:line:)(_sxs5Error_pIggIzo_xytsAA_pIeggIrzo_14XPCDistributed32ActorBackedByDispatchSerialQueueRzlTRTA, v8, v3, v4, v6, v5, v9, MEMORY[0x277D84F78] + 8, *(v1 + 8));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t type metadata completion function for Synchronized(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
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

uint64_t dispatch thunk of Synchronized.get<A>(_:)()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

uint64_t closure #1 in Actor.assumeIsolated<A>(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTRTA(&v14);
}

uint64_t Atomic.deinit(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v16 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v9, v2, v14);
  dispatch thunk of static AtomicRepresentable.decodeAtomicRepresentation(_:)();
  (*(v10 + 8))(v13, v3);
  return UnsafeMutablePointer.deinitialize(count:)();
}

uint64_t getEnumTagSinglePayload for Fuse(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for Fuse(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t _sxs5Error_pIggIzo_xytsAA_pIeggIrzo_14XPCDistributed32ActorBackedByDispatchSerialQueueRzlTRTA()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t _sxqd__s5Error_pIggIrzo_xqd__sAA_pIeggIrzo_ScARzs8SendableRd__r__lTRTA()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t _sxqd__s5Error_pIeggIrzo_xqd__sAA_pIegnIrzo_ScARzs8SendableRd__r__lTRTA(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t key path getter for WeakActorRef.ref : WeakActorRef@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of WeakActorRef(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = outlined destroy of WeakActorRef(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t WeakActorRef.ref.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 8);
  return result;
}

uint64_t WeakActorRef.ref.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakActorRef.ref.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return WeakActorRef.ref.modify;
}

uint64_t WeakActorRef.ref.modify(uint64_t *a1)
{
  v1 = *a1;
  *(a1[2] + 8) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakActorRef.init<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a1;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for WeakActorRef(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WeakActorRef(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationRequest.targetedSharedActor.getter()
{
  v1 = *(v0 + 8);
  outlined copy of XPCSystem.SharedActorKey(v1, *(v0 + 16), *(v0 + 24));
  return v1;
}

__n128 XPCSystem.Session.RemoteInvocationRequest.init(id:targetedSharedActor:remoteCallTarget:invocation:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X4>, __n128 *a6@<X5>, __n128 *a7@<X8>)
{
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u8[8] = a4;
  v11 = MEMORY[0x277C6B2E0]();
  v13 = v12;
  v14 = type metadata accessor for RemoteCallTarget();
  v17 = a6[2];
  v18 = a6[1];
  v16 = *a6;
  (*(*(v14 - 8) + 8))(a5, v14);
  a7[2].n128_u64[0] = v11;
  a7[2].n128_u64[1] = v13;
  a7[3] = v16;
  result = v18;
  a7[4] = v18;
  a7[5] = v17;
  a7[8].n128_u8[8] = 0;
  a7->n128_u64[0] = a1;
  return result;
}

double XPCSystem.Session.RemoteInvocationRequest.invocation.getter@<D0>(uint64_t a1@<X8>)
{
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v1 + 48, v6);
  if (v8)
  {
    v3 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v3;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v7;
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
  }

  else
  {
    outlined destroy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v6);
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0;
  }

  return result;
}

void XPCSystem.Session.RemoteInvocationRequest.targetRemoteCall.getter()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  JUMPOUT(0x277C6B300);
}

uint64_t protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Decoder(a1, v6);
  XPCSystem.InvocationDecoder.init(from:)(v6, a2);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (!v2)
  {
    *(a2 + 88) = 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents(void *a1)
{
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest.InvocationContents(v1, &v4);
  if (v5)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    XPCSystem.InvocationEncoder.encode(to:)(a1);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  v1 = *v0;
  v2 = 25705;
  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x73746E65746E6F63;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized XPCSystem.Session.RemoteInvocationRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.RemoteInvocationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v15 = *v3;
  v17 = 0;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 24);
    v15 = *(v3 + 8);
    v16 = v11;
    v17 = 1;
    lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 3;
    lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC23RemoteInvocationRequestV10CodingKeys018_6652F7F3EA9063F11L13BACB4A19090F0LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.CodingKeys and conformance XPCSystem.Session.RemoteInvocationRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v33 = 0;
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v17;
  v33 = 1;
  lazy protocol witness table accessor for type XPCSystem.SharedActorKey and conformance XPCSystem.SharedActorKey();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = *(&v17 + 1);
  v12 = v18;
  v16[2] = v17;
  v23 = v17;
  v24 = v18;
  LOBYTE(v17) = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v16[1] = v11;
  v32 = v12;
  v25 = v13;
  v26 = v14;
  v33 = 3;
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteInvocationRequest.InvocationContents and conformance XPCSystem.Session.RemoteInvocationRequest.InvocationContents();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v29 = v19;
  v30 = v20;
  v31[0] = *v21;
  *(v31 + 9) = *&v21[9];
  v27 = v17;
  v28 = v18;
  outlined init with copy of XPCSystem.Session.RemoteInvocationRequest(&v22, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of XPCSystem.Session.RemoteInvocationRequest(&v22);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000002751B8DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69747563657865 && a2 == 0xEF64656C6961466ELL)
  {

    return 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x277C6BCC0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F69747563657865;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v26 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x28223BE20](v5);
  v25 = &v21 - v7;
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ResultPropagationFailedCodingKeys();
  v21 = swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys();
  swift_getWitnessTable();
  v12 = type metadata accessor for KeyedEncodingContainer();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v32)
  {
    v34 = 1;
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v28;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v27 + 8))(v17, v18);
  }

  else
  {
    v33 = 0;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v23;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v22 + 8))(v11, v19);
  }

  return (*(v29 + 8))(v15, v12);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ExecutionFailedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v47 = v8;
  v9 = type metadata accessor for KeyedDecodingContainer();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v48 = &v38 - v11;
  v12 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.ResultPropagationFailedCodingKeys();
  v45 = swift_getWitnessTable();
  v42 = type metadata accessor for KeyedDecodingContainer();
  v41 = *(v42 - 8);
  v13 = *(v41 + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v38 - v14;
  v50 = a2;
  v51 = a3;
  v49 = a4;
  v16 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys();
  swift_getWitnessTable();
  v17 = type metadata accessor for KeyedDecodingContainer();
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_8;
  }

  v39 = v12;
  v40 = v15;
  v53 = v17;
  *&v54 = KeyedDecodingContainer.allKeys.getter();
  type metadata accessor for Array();
  swift_getWitnessTable();
  *&v56 = ArraySlice.init<A>(_:)();
  *(&v56 + 1) = v24;
  *&v57 = v25;
  *(&v57 + 1) = v26;
  type metadata accessor for ArraySlice();
  swift_getWitnessTable();
  Collection<>.popFirst()();
  v27 = v54;
  if (v54 == 2 || (v38 = v56, v54 = v56, v55 = v57, (Collection.isEmpty.getter() & 1) == 0))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v33 = v32;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v33 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
    v35 = v53;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v33, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v52 + 8))(v20, v35);
    swift_unknownObjectRelease();
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    return v16;
  }

  if (v27)
  {
    LOBYTE(v54) = 1;
    v28 = v48;
    v29 = v53;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v52;
    v31 = v44;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v43;
  }

  else
  {
    LOBYTE(v54) = 0;
    v28 = v40;
    v29 = v53;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v52;
    v31 = v42;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v41;
  }

  (*(v37 + 8))(v28, v31);
  (*(v30 + 8))(v20, v29);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  return v16;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return static XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.== infix(_:_:)(*a1, *a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hashValue.getter(*v1);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hash(into:)(a1, *v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1, void *a2)
{
  Hasher.init(_seed:)();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.hash(into:)(v8, *v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.stringValue.getter(*v1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = specialized XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = protocol witness for static Equatable.== infix(_:_:) in conformance XPCSystem.Session.LocalInterface.ActivationToken.CodingKeys();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ExecutionFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure.ResultPropagationFailedCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.init(from:)(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure(void *a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.encode(to:)(a1, *v2, *(v2 + 8), *(v2 + 16));
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.value.getter@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v6 = a1[2];
  v7 = type metadata accessor for Either();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v12 = a1[3];
  v13 = a1[4];
  v18 = v6;
  v19 = v12;
  v20 = v13;
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  v14 = type metadata accessor for Either();
  Either.mapB<A>(_:)(partial apply for implicit closure #1 in XPCSystem.Session.RemoteInvocationResponse.value.getter, v14, v11);
  lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError();
  _s14XPCDistributed6EitherOAAs5ErrorR_rlE4getAxyq_YKF(v7, v21, a3);
  result = (*(v8 + 8))(v11, v7);
  if (v3)
  {
    v16 = v23;
    *v23 = v21[0];
    *(v16 + 8) = v22;
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in XPCSystem.Session.RemoteInvocationResponse.value.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (*(a1 + 16))
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  return outlined copy of XPCSystem.Session.RemoteInvocationResponse<A>.RemoteInvocationFailure<A>();
}

unint64_t lazy protocol witness table accessor for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError()
{
  result = lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError;
  if (!lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.RemoteInvocationCancellationError and conformance XPCSystem.RemoteInvocationCancellationError);
  }

  return result;
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(result:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  type metadata accessor for Either();

  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(executionFailure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W5>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  type metadata accessor for Either();

  return swift_storeEnumTagMultiPayload();
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C61765FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = XPCSystem.Session.RemoteInvocationResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteInvocationResponse<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  type metadata accessor for Either();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v19 = v3;
  v20 = v5;
  v21 = WitnessTable;
  v22 = v13;
  v14 = v17;
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v18 + 8))(v10, v14);
}

uint64_t XPCSystem.Session.RemoteInvocationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v36 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  v39 = type metadata accessor for Either();
  v33 = *(v39 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v28 - v8;
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.CodingKeys();
  swift_getWitnessTable();
  v37 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v37 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v28 - v10;
  v34 = a2;
  v35 = a3;
  v12 = type metadata accessor for XPCSystem.Session.RemoteInvocationResponse();
  v30 = *(v12 - 8);
  v13 = *(v30 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v27 = a1;
  }

  else
  {
    v28 = v15;
    v29 = v12;
    v44 = a1;
    v18 = v32;
    v19 = v33;
    WitnessTable = swift_getWitnessTable();
    v21 = swift_getWitnessTable();
    v40 = v34;
    v41 = v35;
    v42 = WitnessTable;
    v43 = v21;
    v22 = v39;
    swift_getWitnessTable();
    v24 = v37;
    v23 = v38;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v18 + 8))(v11, v24);
    v26 = v28;
    (*(v19 + 32))(v28, v23, v22);
    (*(v30 + 32))(v31, v26, v29);
    v27 = v44;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.Session.RemoteNotification.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002751B8DA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteNotification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCSystem.Session.RemoteNotification.encode(to:)(void *a1, uint64_t a2)
{
  v15[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v15[3] = v15[0];
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys);
  }

  return result;
}

void *protocol witness for Decodable.init(from:) in conformance XPCSystem.Session.RemoteNotification@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = specialized XPCSystem.Session.RemoteNotification.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized XPCSystem.Session.RemoteInvocationRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002751B8CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002751B8CE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void *specialized XPCSystem.Session.RemoteNotification.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO29InvocationCancelledCodingKeys018_6652F7F3EA9063F11M13BACB4A19090F0LLOGMR);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC7SessionC18RemoteNotificationO10CodingKeys018_6652F7F3EA9063F11K13BACB4A19090F0LLOGMR);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.CodingKeys and conformance XPCSystem.Session.RemoteNotification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v25 = a1;
  v14 = v26;
  v13 = v27;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = (2 * *(v15 + 16)) | 1;
  v28 = v15;
  v29 = v15 + 32;
  v30 = 0;
  v31 = v16;
  v17 = v10;
  if (specialized Collection<>.popFirst()() || v30 != v31 >> 1)
  {
    v18 = v7;
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v21 = &type metadata for XPCSystem.Session.RemoteNotification;
    v12 = v17;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v14 + 8))(v17, v18);
    swift_unknownObjectRelease();
    a1 = v25;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v12;
  }

  lazy protocol witness table accessor for type XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys and conformance XPCSystem.Session.RemoteNotification.InvocationCancelledCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type ID64 and conformance ID64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v6, v3);
  (*(v14 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v12 = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v12;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for XPCSystem.Session.RemoteInvocationResponse(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  type metadata accessor for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure();
  result = type metadata accessor for Either();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
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

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
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
LABEL_39:
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
            goto LABEL_39;
          }
        }

LABEL_36:
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
      goto LABEL_39;
    }

    goto LABEL_36;
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

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata instantiation function for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 88);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for XPCSystem.Session.RemoteInvocationRequest.InvocationContents(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

uint64_t outlined init with copy of Decoder(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCSystem.Session.RemoteInvocationResponse.RemoteInvocationFailure.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UnownedAwaitableEvent.init()(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for Future();
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;

  v4 = Future.__allocating_init(_:)();
  result = swift_beginAccess();
  if (*(v2 + 16))
  {
    v6 = *(v2 + 24);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OwnedAwaitableEvent.wait()()
{
  v1 = *(MEMORY[0x277CBCEA0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = OwnedAwaitableEvent.wait();

  return MEMORY[0x28210E9A8]();
}

{
  v1 = *(*v0 + 16);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in XPCSystem.Session.LocalInterface.activateThenWaitForCancellation(), 0, 0);
}

uint64_t UnownedAwaitableEvent.wait()(uint64_t a1)
{
  v3 = *(MEMORY[0x277CBCEA0] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for implicit closure #1 in XPCSystem.Session.LocalInterface.activateThenWithRemoteInterface<A>(perform:);

  return MEMORY[0x28210E9A8](a1);
}

uint64_t UnownedAwaitableEvent.post(value:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Result();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  (*(*(a5 - 8) + 16))(&v14 - v11, a1, a5);
  swift_storeEnumTagMultiPayload();
  a3(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in UnownedAwaitableEvent.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v6);
}

uint64_t type metadata instantiation function for UnownedAwaitableEvent()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnownedAwaitableEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for UnownedAwaitableEvent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata instantiation function for OwnedAwaitableEvent()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OwnedAwaitableEvent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OwnedAwaitableEvent(uint64_t result, int a2, int a3)
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

uint64_t XPCSystem.InvocationEncoder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedEncodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v29 = v1[3];
  v30 = v9;
  v10 = v1[4];
  v31 = v1[5];
  v32 = v7;
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1;
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v11);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v37[0] = v8;
  LOBYTE(v33) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
  lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](&lazy protocol witness table cache variable for type [SwiftType] and conformance <A> [A], lazy protocol witness table accessor for type SwiftType and conformance SwiftType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {

    return (*(v5 + 8))(v15, v4);
  }

  else
  {
    v26 = v5;

    LOBYTE(v33) = 1;
    v27 = v4;
    v25 = v15;
    result = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v17 = v32;
    v28 = *(v32 + 16);
    if (v28)
    {
      v18 = 0;
      v19 = v32 + 32;
      while (v18 < *(v17 + 16))
      {
        outlined init with copy of Decoder(v19, &v33);
        v32 = v36;
        __swift_project_boxed_opaque_existential_1(&v33, v35);
        __swift_mutable_project_boxed_opaque_existential_1(v37, v37[3]);
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v18;
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        v19 += 40;
        v20 = v29;
        v21 = v30;
        v22 = v31;
        if (v28 == v18)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
      v21 = v30;
      v22 = v31;
      v20 = v29;
LABEL_9:
      v33 = v21;
      v34 = v20;
      v38 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
      lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType);
      v23 = v27;
      v24 = v25;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v33 = v10;
      v34 = v22;
      v38 = 3;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v26 + 8))(v24, v23);
      return __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys;
  if (!lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t XPCSystem.InvocationDecoder.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  outlined init with copy of Decoder(a1, v13);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v15 = 1;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    (*(v6 + 8))(v9, v5);
    outlined init with take of XPCSystem.ResultHandler.ReplyHandler(v12, v14);
    v14[5] = specialized static XPCSystem.InvocationDecoder._decodeErrorType(from:)(a1);
    outlined init with copy of XPCSystem.InvocationDecoder(v13, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return outlined destroy of XPCSystem.InvocationDecoder(v13);
  }
}

double XPCSystem.InvocationEncoder.init()@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordGenericSubstitution<A>(_:)(uint64_t a1)
{
  if (!swift_conformsToProtocol2() || !a1)
  {
    _StringGuts.grow(_:)(48);

    v12 = 0x80000002751B8DE0;
    v13 = 0xD00000000000002ELL;
LABEL_11:
    v15 = v13;
    v16 = v12;
    v14 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v14);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](v15, v16);
    return swift_willThrow();
  }

  v3 = SwiftType.init<A>(_:)();
  if (!v4)
  {
    _StringGuts.grow(_:)(43);

    v12 = 0x80000002751B8E10;
    v13 = 0xD000000000000029;
    goto LABEL_11;
  }

  v5 = v3;
  v6 = v4;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = v5;
  *(v11 + 40) = v6;
  *v1 = v7;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordArgument<A>(_:)(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  v4 = swift_conformsToProtocol();
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - v10;
  type metadata accessor for RemoteCallArgument();
  RemoteCallArgument.value.getter();
  v13 = (v2 + 8);
  v12 = *(v2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *v13 = v12;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
    *v13 = v12;
  }

  (*(v5 + 16))(v9, v11, a2);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16, v9, v13, a2, v4);
  result = (*(v5 + 8))(v11, a2);
  *v13 = v12;
  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordErrorType<A>(_:)()
{
  v1 = SwiftType.init<A>(_:)();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 24);

    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
  }

  else
  {
    _StringGuts.grow(_:)(30);

    v7 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v7);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](0xD00000000000001CLL, 0x80000002751B8E40);
    return swift_willThrow();
  }

  return result;
}

uint64_t XPCSystem.InvocationEncoder.recordReturnType<A>(_:)()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v1 = SwiftType.init<A>(_:)();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 40);

    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
  }

  else
  {
    _StringGuts.grow(_:)(31);

    v7 = _typeName(_:qualified:)();
    MEMORY[0x277C6B720](v7);

    type metadata accessor for DistributedActorCodingError();
    lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
    swift_allocError();
    MEMORY[0x277C6B2B0](0xD00000000000001DLL, 0x80000002751B8E60);
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for DistributedTargetInvocationEncoder.recordArgument<A>(_:) in conformance XPCSystem.InvocationEncoder(uint64_t a1, uint64_t a2)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationEncoder.recordArgument<A>(_:)(a1, a2);
}

uint64_t protocol witness for DistributedTargetInvocationEncoder.recordReturnType<A>(_:) in conformance XPCSystem.InvocationEncoder()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationEncoder.recordReturnType<A>(_:)();
}

uint64_t XPCSystem.InvocationDecoder.decodeGenericSubstitutions()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = v0[4];
  v8 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
  v23 = 0;
  lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](&lazy protocol witness table cache variable for type [SwiftType] and conformance <A> [A], lazy protocol witness table accessor for type SwiftType and conformance SwiftType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = 0;
  v9 = v24;
  v10 = v24[2];
  if (!v10)
  {

    (*(v3 + 8))(v6, v2);
    return MEMORY[0x277D84F90];
  }

  v20 = v3;
  v21 = v2;
  v24 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v12 = 0;
  v8 = v24;
  v13 = v9 + 5;
  while (v12 < v9[2])
  {
    v14 = *(v13 - 1);
    v15 = *v13;

    v16 = _typeByName(_:)();
    if (!v16 || (v17 = v16, !swift_conformsToProtocol2()))
    {

      type metadata accessor for DistributedActorCodingError();
      lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
      swift_allocError();
      MEMORY[0x277C6B2B0](0xD000000000000026, 0x80000002751B8E80);
      swift_willThrow();

      (*(v20 + 8))(v6, v21);

      return v8;
    }

    v24 = v8;
    v19 = v8[2];
    v18 = v8[3];
    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v8 = v24;
    }

    ++v12;
    v8[2] = v19 + 1;
    v8[v19 + 4] = v17;
    v13 += 2;
    if (v10 == v12)
    {
      (*(v20 + 8))(v6, v21);

      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCSystem.InvocationDecoder.decodeNextArgument<A>()()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v1 = *(v0 + 72);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 40, *(v0 + 64));
  return dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
}

uint64_t XPCSystem.InvocationDecoder.decodeReturnType()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  v7 = v0[4];
  v8 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    v11 = 3;
    lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v10[1])
    {
      v8 = _typeByName(_:)();

      if (!v8)
      {
        type metadata accessor for DistributedActorCodingError();
        lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
        v8 = swift_allocError();
        MEMORY[0x277C6B2B0](0xD00000000000001BLL, 0x80000002751B8EB0);
        swift_willThrow();
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }
  }

  return v8;
}

uint64_t protocol witness for DistributedTargetInvocationDecoder.decodeNextArgument<A>() in conformance XPCSystem.InvocationDecoder()
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  return XPCSystem.InvocationDecoder.decodeNextArgument<A>()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance XPCSystem.InvocationCodingKeys()
{
  v1 = 0x746E656D75677261;
  v2 = 0x707954726F727265;
  if (*v0 != 2)
  {
    v2 = 0x79546E7275746572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance XPCSystem.InvocationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized XPCSystem.InvocationCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCSystem.InvocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSystem.InvocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySE_pGMd, &_ss23_ContiguousArrayStorageCySE_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGMd, &_sScTy14XPCDistributed9XPCSystemC7SessionC14LocalInterfaceV15ActivationTokenVs5NeverOGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypXpGMd, &_ss23_ContiguousArrayStorageCyypXpGMR);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of XPCSystem.ResultHandler.ReplyHandler(&v12, v10 + 40 * a1 + 32);
}

uint64_t specialized static XPCSystem.InvocationDecoder._decodeErrorType(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMd, &_ss22KeyedDecodingContainerVy14XPCDistributed9XPCSystemC20InvocationCodingKeys33_D025C974E591FC5F9CCF5C171ECD5CA5LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCSystem.InvocationCodingKeys and conformance XPCSystem.InvocationCodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14XPCDistributed9SwiftTypeVSgMd, &_s14XPCDistributed9SwiftTypeVSgMR);
    v12 = 2;
    lazy protocol witness table accessor for type SwiftType? and conformance <A> A?(&lazy protocol witness table cache variable for type SwiftType? and conformance <A> A?, lazy protocol witness table accessor for type SwiftType and conformance SwiftType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v11[1])
    {
      v9 = _typeByName(_:)();

      if (!v9)
      {
        type metadata accessor for DistributedActorCodingError();
        lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError();
        v9 = swift_allocError();
        MEMORY[0x277C6B2B0](0xD00000000000001BLL, 0x80000002751B8EB0);
        swift_willThrow();
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      return 0;
    }
  }

  return v9;
}

unint64_t lazy protocol witness table accessor for type DistributedActorCodingError and conformance DistributedActorCodingError()
{
  result = lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError;
  if (!lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError)
  {
    type metadata accessor for DistributedActorCodingError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DistributedActorCodingError and conformance DistributedActorCodingError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SwiftType] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14XPCDistributed9SwiftTypeVGMd, &_sSay14XPCDistributed9SwiftTypeVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.InvocationEncoder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.InvocationEncoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for XPCSystem.InvocationDecoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for XPCSystem.InvocationDecoder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized XPCSystem.InvocationCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002751B8ED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t XPCSystem.Transport.setInboundSession(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized XPCSystem.Transport.setInboundSession(_:)(a1, v2, ObjectType, a2);
}

uint64_t _s14XPCDistributed9XPCSystemC9TransportC8activateyyAC10SetupErrorVYKF(void *a1)
{
  v4 = v1[11];
  v5 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v4);
  result = (*(v5 + 8))(v1, v8, v4, v5);
  if (v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

double XPCSystem.Transport.auditToken.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[11];
  v4 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  (*(v4 + 32))(v7, v3, v4);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

Swift::Bool __swiftcall XPCSystem.Transport.cancel()()
{
  v1 = 0;
  atomic_compare_exchange_strong_explicit((v0 + 32), &v1, 1u, memory_order_relaxed, memory_order_relaxed);
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v3);
    (*(v4 + 24))(v3, v4);
  }

  return v2;
}

uint64_t XPCSystem.Transport.debugName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = specialized XPCSystem.Transport.__allocating_init(debugName:rawTransport:)(a1, a2, v9, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v10;
}

uint64_t XPCSystem.Transport.init(debugName:rawTransport:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized XPCSystem.Transport.init(debugName:rawTransport:)(a1, a2, v12, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

void XPCSystem.Transport.handleReceivedPacket(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = v2[3];
    v14 = v2[7];
    *v12 = v14;
    (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
    v15 = v14;
    LOBYTE(v14) = _dispatchPreconditionTest(_:)();
    (*(v9 + 8))(v12, v8);
    if (v14)
    {
      v16 = *a1;
      if (*(a1 + 8))
      {
        if (*(a1 + 8) == 1)
        {
          v17 = v2[13];
          v18 = type metadata accessor for XPCSystem.Transport.Packet(0);
          outlined init with copy of XPCSystem.Transport.Packet.Payload(a1 + *(v18 + 20), v7);
          swift_storeEnumTagMultiPayload();
          specialized RequestManager.reply(to:with:)(v16, v7);
          swift_unknownObjectRelease();
          outlined destroy of Result<XPCSystem.Transport.Packet.Payload, XPCSystem.Transport.TransportError>(v7, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMd, &_ss6ResultOy14XPCDistributed9XPCSystemC9TransportC6PacketV7PayloadVAG0D5ErrorOGMR);
        }

        else
        {
          ObjectType = swift_getObjectType();
          v28 = type metadata accessor for XPCSystem.Transport.Packet(0);
          (*(v13 + 24))(a1 + *(v28 + 20), ObjectType, v13);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v23 = swift_getObjectType();
        v24 = *(type metadata accessor for XPCSystem.Transport.Packet(0) + 20);
        v25 = swift_allocObject();
        *(v25 + 16) = v16;
        *(v25 + 24) = v2;
        v26 = *(v13 + 16);

        v26(a1 + v24, partial apply for closure #1 in XPCSystem.Transport.handleReceivedPacket(_:), v25, v23, v13);
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
  }

  else if (one-time initialization token for generalLog == -1)
  {
    goto LABEL_7;
  }

  swift_once();
LABEL_7:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, generalLog);

  v30 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2[5], v2[6], &v31);
    _os_log_impl(&dword_275171000, v30, v20, "Inbound session is nil when a packet is received on %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x277C6C430](v22, -1, -1);
    MEMORY[0x277C6C430](v21, -1, -1);
  }

  else
  {
    v29 = v30;
  }
}