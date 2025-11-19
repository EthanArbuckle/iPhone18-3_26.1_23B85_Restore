Swift::Bool __swiftcall RealComputer.setAutomatedDeviceGroup(to:)(Swift::String to)
{
  object = to._object;
  countAndFlagsBits = to._countAndFlagsBits;
  v4 = String._bridgeToObjectiveC()();
  shim_setAutomatedDeviceGroup(v4);

  v5 = (*(*v1 + 192))();
  if (!v6)
  {
    goto LABEL_7;
  }

  if (v5 == countAndFlagsBits && v6 == object)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000270B4(v9, qword_1004B00F8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136446210;
        *(v12 + 4) = sub_1000026C0(countAndFlagsBits, object, &v20);
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to set AutomatedDeviceGroup to %{public}s", v12, 0xCu);
        sub_100003C3C(v13);
      }

      return 0;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_1000026C0(countAndFlagsBits, object, &v20);
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully set AutomatedDeviceGroup to %{public}s", v18, 0xCu);
    sub_100003C3C(v19);
  }

  return 1;
}

uint64_t RealComputer.uniqueChipID.getter()
{
  result = shim_MGQUniqueChipID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.serialNumber.getter()
{
  v0 = shim_MGQSerialNumber();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RealComputer.securityDomain.getter()
{
  result = shim_MGQSecurityDomain();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.boardID.getter()
{
  result = shim_MGQBoardID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

uint64_t RealComputer.chipID.getter()
{
  result = shim_MGQChipID();
  if (result == -1)
  {
    return 0;
  }

  return result;
}

id sub_10017F1E0(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    v2 = result;
    static Int._conditionallyBridgeFromObjectiveC(_:result:)();

    return 0;
  }

  return result;
}

BOOL RealComputer.isHostAttached.getter()
{
  v0 = remote_device_copy_unique_of_type();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t RealComputer.isDarwinCloud.getter()
{
  (*(*v0 + 320))();
  sub_10000B080();
  v1 = StringProtocol.contains<A>(_:)();

  return v1 & 1;
}

id sub_10017F380(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RealComputer.buildVersion.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    v2 = MobileGestalt_copy_buildVersion_obj();

    if (!v2)
    {
      return 0;
    }

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void RealComputer.releaseType.getter()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_releaseType_obj();

    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t RealComputer.shouldLoadConfigFromNVRAM.getter()
{
  if ((*(*v0 + 336))() & 1) != 0 || ((*(*v0 + 288))())
  {
    return 1;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_ephemeralDataModeOverride_obj();

    if (v3)
    {
      sub_10001AA40(0, &qword_1004AA498);
      isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
      v5 = static NSObject.== infix(_:_:)();

      return v5 & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RealComputer.osVariantHasInternalContent.getter()
{
  String.utf8CString.getter();
  has_internal_content = os_variant_has_internal_content();

  return has_internal_content;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.lockCryptexes()()
{
  v0 = shim_cryptex_lockdown();
  if (v0)
  {
    v1 = v0;
    sub_100187D3C();
    swift_allocError();
    *v2 = v1;
    swift_willThrow();
  }
}

uint64_t RealComputer.defaultUSRAction.getter()
{
  v0 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/chosen");
  if (!v0)
  {
    return 5;
  }

  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  if (!IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0))
  {

    return 5;
  }

  swift_dynamicCast();
  v3 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      goto LABEL_19;
    }

    v6 = *(v21 + 16);
    v7 = __DataStorage._bytes.getter();
    if (!v7)
    {
      goto LABEL_30;
    }

    v8 = v7;
    v9 = __DataStorage._offset.getter();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      __DataStorage._length.getter();
      if (v10)
      {
LABEL_17:
        v4 = *v10;
        goto LABEL_19;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v3)
  {
    if (v21 <= v21 >> 32)
    {
      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
LABEL_32:
        result = __DataStorage._length.getter();
        __break(1u);
        goto LABEL_33;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v13))
      {
        v10 = (v21 - v13 + v12);
        result = __DataStorage._length.getter();
        if (v10)
        {
          goto LABEL_17;
        }

LABEL_33:
        __break(1u);
        return result;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __DataStorage._length.getter();
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v21;
LABEL_19:
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412546;
    *(v18 + 4) = v15;
    *v19 = v2;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v4;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "%@ is %u", v18, 0x12u);
    sub_100013F2C(v19, &qword_1004AA050);

    sub_100031928(v21, v22);
  }

  else
  {
    sub_100031928(v21, v22);
  }

  if (v4 == 6)
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.userspaceReboot(_:)(DarwinInit::DInitUSR a1)
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000270B4(v2, qword_1004B00F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    v7 = 0xE300000000000000;
    v8 = 0xE400000000000000;
    v9 = 1701736302;
    v10 = 0xE000000000000000;
    v11 = 0x746C7561666564;
    if (a1 == DarwinInit_DInitUSR_empty)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (a1 != DarwinInit_DInitUSR_none)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = 0x7665642D6D6572;
    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v12 = 7169394;
    }

    if (a1 <= DarwinInit_DInitUSR_remDev)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    if (a1 <= DarwinInit_DInitUSR_remDev)
    {
      v14 = v7;
    }

    else
    {
      v14 = v8;
    }

    v15 = sub_1000026C0(v13, v14, &v23);

    *(v5 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Getting ready to reboot with type %s", v5, 0xCu);
    sub_100003C3C(v6);
  }

  if (a1 == DarwinInit_DInitUSR_none)
  {
    goto LABEL_22;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_24:
    sub_100187FC0();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = 0;
    *(v18 + 24) = 3;
LABEL_25:
    swift_willThrow();
    return;
  }

  if (a1 == DarwinInit_DInitUSR_empty)
  {
LABEL_22:

    goto LABEL_24;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_24;
  }

  v19 = a1;
  if (a1 <= DarwinInit_DInitUSR_remDev)
  {
    if (a1)
    {
      v19 = DarwinInit_DInitUSR_rem;
      v21 = 0x2100000000000000;
      v22 = 5;
    }

    else
    {
      v21 = 0x2100000000000000;
      v22 = 4;
    }
  }

  else
  {
    if (a1 - 2 < 2)
    {
      sub_100187F6C();
      swift_allocError();
      *v20 = 1;
      goto LABEL_25;
    }

    v22 = 0;
    v21 = 0x2000000000000000;
    v19 = DarwinInit_DInitUSR_remDev;
  }

  v24 = v19;
  sub_100187D90(v21, v22 | (v19 << 32));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.reboot()()
{
  if (shim_reboot3(0x8000000000000000))
  {
    v0 = errno.getter();
    sub_100187D3C();
    v1 = swift_allocError();
    *v2 = v0;
    sub_100187FC0();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v1;
    *(v3 + 24) = 2;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RealComputer.shutdown()()
{
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000270B4(v0, qword_1004B00F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Shutdown only available on macOS", v3, 2u);
  }

  sub_100187FC0();
  swift_allocError();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = 1;
  *(v4 + 24) = 3;
  swift_willThrow();
}

uint64_t RealComputer.registerSecureconfig(parameters:securityPolicy:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (!a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (v4)
  {
LABEL_5:
    v4 = String._bridgeToObjectiveC()();
  }

LABEL_6:
  v6 = shim_register_secureconfig_parameters(isa, v4);

  return v6;
}

uint64_t RealComputer.registerSecureconfig(config:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v3 = shim_register_config(isa);

  return v3;
}

uint64_t RealComputer.deinit()
{

  sub_100003C3C(v0 + 24);
  sub_100003C3C(v0 + 64);
  return v0;
}

uint64_t RealComputer.__deallocating_deinit()
{

  sub_100003C3C(v0 + 24);
  sub_100003C3C(v0 + 64);

  return swift_deallocClassInstance();
}

void *RealComputer.init()()
{
  v0[2] = 0;
  v1 = type metadata accessor for RealFileSystem();
  inited = swift_initStaticObject();
  v0[6] = v1;
  v0[7] = &protocol witness table for RealFileSystem;
  v0[3] = inited;
  v3 = type metadata accessor for RealSystemLog();
  v4 = swift_allocObject();
  v0[11] = v3;
  v0[12] = &protocol witness table for RealSystemLog;
  v0[8] = v4;
  return v0;
}

uint64_t sub_10018010C(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 144) + **(**v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100001FE0;

  return v8(a1, a2);
}

uint64_t sub_100180238(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 152) + **(**v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t sub_100180364(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 160) + **(**v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

void sub_100180EDC(const __SCPreferences *a1, uint64_t a2, char a3, void (*a4)(const __SCPreferences *))
{
  if (SCPreferencesLock(a1, 1u))
  {
    a4(a1);
LABEL_3:
    sub_1001BE1B4();
  }

  else
  {
    v23 = a4;
    v24 = a2;
    v8 = 0;
    while (1)
    {
      v10 = SCError();
      if (qword_1004A9E28 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000270B4(v11, static SCPreferencesRef.logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        sub_100189C58();
        swift_allocError();
        *v16 = "lock()";
        *(v16 + 8) = 6;
        *(v16 + 16) = 2;
        *(v16 + 20) = v10;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&_mh_execute_header, v12, v13, "Unable to lock SCPreferences: %@", v14, 0xCu);
        sub_100013F2C(v15, &qword_1004AA050);
      }

      sub_100189C58();
      swift_allocError();
      *v18 = "lock()";
      *(v18 + 8) = 6;
      *(v18 + 16) = 2;
      *(v18 + 20) = v10;
      swift_willThrow();
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      if ((swift_dynamicCast() & 1) == 0 || v28 != 3005)
      {
        goto LABEL_19;
      }

      if ((a3 & 1) == 0)
      {
        if (v8 < v24)
        {
          swift_allocError();
          *v22 = v25;
          *(v22 + 8) = v26;
          *(v22 + 16) = v27;
          *(v22 + 20) = 3005;
          swift_willThrow();
LABEL_19:

          return;
        }

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "Synchronizing and trying to lock again.", v21, 2u);
        }

        SCPreferencesSynchronize(a1);
        if (__OFADD__(v8++, 1))
        {
          break;
        }
      }

      if (SCPreferencesLock(a1, 1u))
      {
        v23(a1);
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100181294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a2;
  v18[1] = a5;
  v10 = sub_1000039E8(&qword_1004AA7D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - v12;
  (*(v11 + 16))(v18 - v12, a1, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  (*(v11 + 32))(v15 + v14, v13, v10);
  aBlock[4] = sub_100189BD0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100053364;
  aBlock[3] = &unk_10048A120;
  v16 = _Block_copy(aBlock);

  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
}

uint64_t sub_100181468(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_1000039E8(&qword_1004AA7D0);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100181500(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFString(0);
    sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return sub_1001816A8(a1, v2);
}

unint64_t sub_1001815D0(uint64_t a1)
{
  type metadata accessor for CodingUserInfoKey();
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1001817C8(a1, v2);
}

unint64_t sub_100181630(unint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  UTF8String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100181960(a1, a2, v4);
}

unint64_t sub_1001816A8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1001817C8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100181960(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      if (sub_100305028(a1, a2, *(*(v3 + 48) + 16 * v5), *(*(v3 + 48) + 16 * v5 + 8)))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100181A08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100181A38(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000039E8(&qword_1004AA788);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1000279A4((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_100003CA0(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1000279A4(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100181DD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA7B8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1001820A8(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000039E8(a3);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100182348(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA7C0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1001825F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA728);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100182898(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000039E8(&qword_1004AA718);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_10018991C(v28, v41);
      }

      else
      {
        sub_1001898B8(v28, v41);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_10018991C(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100182BD4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for URL();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000039E8(&qword_1004AA730);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100182F54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000039E8(&qword_1004AA748);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v25 = v22 | (v8 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v5 + 56) + 240 * v25;
      if (v52)
      {
        v69 = *v29;
        v30 = *(v29 + 56);
        v31 = *(v29 + 88);
        v84 = *(v29 + 72);
        v85 = v31;
        v60 = *(v29 + 112);
        v86 = *(v29 + 104);
        v32 = *(v29 + 24);
        v80 = *(v29 + 8);
        v81 = v32;
        v82 = *(v29 + 40);
        v83 = v30;
        v53 = *(v29 + 120);
        v54 = *(v29 + 136);
        v55 = *(v29 + 152);
        v56 = *(v29 + 128);
        v57 = *(v29 + 168);
        v58 = *(v29 + 144);
        v59 = *(v29 + 184);
        v68 = *(v29 + 192);
        v66 = *(v29 + 200);
        v61 = *(v29 + 208);
        v62 = *(v29 + 160);
        v63 = *(v29 + 216);
        v64 = *(v29 + 176);
        v67 = *(v29 + 224);
        v65 = *(v29 + 232);
      }

      else
      {
        v34 = *(v29 + 16);
        v33 = *(v29 + 32);
        *v71 = *v29;
        *&v71[16] = v34;
        *&v71[32] = v33;
        v35 = *(v29 + 96);
        v37 = *(v29 + 48);
        v36 = *(v29 + 64);
        *&v71[80] = *(v29 + 80);
        *&v71[96] = v35;
        *&v71[48] = v37;
        *&v71[64] = v36;
        v38 = *(v29 + 160);
        v40 = *(v29 + 112);
        v39 = *(v29 + 128);
        v74 = *(v29 + 144);
        v75 = v38;
        v72 = v40;
        v73 = v39;
        v41 = *(v29 + 224);
        v43 = *(v29 + 176);
        v42 = *(v29 + 192);
        v78 = *(v29 + 208);
        v79 = v41;
        v76 = v43;
        v77 = v42;
        v67 = v41;
        v68 = v42;
        v65 = *(&v41 + 1);
        v66 = *(&v42 + 1);
        v63 = *(&v78 + 1);
        v64 = v43;
        v59 = BYTE8(v43);
        v61 = v78;
        v57 = *(&v75 + 1);
        v62 = v75;
        v55 = *(&v74 + 1);
        v58 = v74;
        v54 = *(&v73 + 1);
        v56 = v73;
        v53 = BYTE8(v72);
        v60 = v72;
        v69 = *v71;

        sub_100189980(v71, v70);
        v84 = *&v71[72];
        v85 = *&v71[88];
        v86 = *&v71[104];
        v80 = *&v71[8];
        v81 = *&v71[24];
        v82 = *&v71[40];
        v83 = *&v71[56];
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v44 = -1 << *(v7 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v14 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v14 + 8 * v46);
          if (v50 != -1)
          {
            v15 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v45) & ~*(v14 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v28;
      v17 = *(v7 + 56) + 240 * v15;
      v18 = v82;
      *(v17 + 56) = v83;
      v19 = v85;
      *(v17 + 72) = v84;
      *(v17 + 88) = v19;
      v20 = v81;
      *(v17 + 8) = v80;
      *(v17 + 24) = v20;
      *v17 = v69;
      v21 = v86;
      *(v17 + 40) = v18;
      *(v17 + 104) = v21;
      *(v17 + 112) = v60;
      *(v17 + 120) = v53;
      *(v17 + 128) = v56;
      *(v17 + 136) = v54;
      *(v17 + 144) = v58;
      *(v17 + 152) = v55;
      *(v17 + 160) = v62;
      *(v17 + 168) = v57;
      *(v17 + 176) = v64;
      *(v17 + 184) = v59;
      *(v17 + 192) = v68;
      *(v17 + 200) = v66;
      *(v17 + 208) = v61;
      *(v17 + 216) = v63;
      *(v17 + 224) = v67;
      *(v17 + 232) = v65;
      ++*(v7 + 16);
    }

    v23 = v8;
    while (1)
    {
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v24 = v9[v8];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v12 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v51 = 1 << *(v5 + 32);
    v3 = v2;
    if (v51 >= 64)
    {
      bzero((v5 + 64), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v51;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_100183420(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1001815D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100183E00();
      goto LABEL_7;
    }

    sub_100181A38(v17, a3 & 1);
    v23 = sub_1001815D0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_100183C44(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_100003C3C(v21);

  return sub_1000279A4(a1, v21);
}

uint64_t sub_100183620(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_100013364(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1001820A8(v18, a4 & 1, a5);
      v13 = sub_100013364(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1001840AC(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t sub_1001837C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100013364(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100182348(v16, a4 & 1);
      v11 = sub_100013364(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10018420C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_10018393C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100013364(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100184720();
      goto LABEL_7;
    }

    sub_100182BD4(v15, a4 & 1);
    v26 = sub_100013364(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for URL();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100183D50(v12, a2, a3, a1, v18);
}

uint64_t sub_100183ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100013364(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10005C8A8(v18, a5 & 1);
      v13 = sub_100013364(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10005D630();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_100031928(v25, v26);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v23[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v23[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v23[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v31;
}

_OWORD *sub_100183C44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1000279A4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100183D08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100183D50(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for URL();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_100183E00()
{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA788);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100003CA0(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_1000279A4(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1001840AC(uint64_t *a1)
{
  v2 = v1;
  sub_1000039E8(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_10018420C()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA7C0);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_100184380()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA728);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_1001844F0()
{
  v1 = v0;
  v2 = type metadata accessor for Config.Cryptex.Cryptex(0);
  v31 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA718);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1001898B8(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_10018991C(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_100184720()
{
  v1 = v0;
  v35 = type metadata accessor for URL();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000039E8(&qword_1004AA730);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1001849A0()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA748);
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 240;
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 48);
        v24 = *(v19 + v17 + 64);
        v53 = *(v19 + v17 + 80);
        v54 = v23;
        v51 = v25;
        v52 = v24;
        v26 = *(v19 + v17 + 160);
        v28 = *(v19 + v17 + 112);
        v27 = *(v19 + v17 + 128);
        v57 = *(v19 + v17 + 144);
        v58 = v26;
        v55 = v28;
        v56 = v27;
        v29 = *(v19 + v17 + 224);
        v31 = *(v19 + v17 + 176);
        v30 = *(v19 + v17 + 192);
        v61 = *(v19 + v17 + 208);
        v62 = v29;
        v59 = v31;
        v60 = v30;
        v33 = *(v19 + v17 + 16);
        v32 = *(v19 + v17 + 32);
        v48 = *(v19 + v17);
        v49 = v33;
        v50 = v32;
        v34 = (*(v4 + 48) + v18);
        *v34 = v22;
        v34[1] = v21;
        v35 = (*(v4 + 56) + v17);
        v36 = v48;
        v37 = v50;
        v35[1] = v49;
        v35[2] = v37;
        *v35 = v36;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        v35[5] = v53;
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = v55;
        v42 = v56;
        v43 = v58;
        v35[9] = v57;
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = v59;
        v45 = v60;
        v46 = v62;
        v35[13] = v61;
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;

        result = sub_100189980(&v48, &v47);
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

uint64_t sub_100184BA4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10018555C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_100184D50(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v35 = a3;
  _CFObject.hash(into:)();
  v34 = a4;
  _CFObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    do
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      v17 = v14;
      v18 = v15;
      if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
      {
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {

          v20 = *(v8 + 48) + 24 * v11;
          v21 = *v20;
          v22 = *(v20 + 8);
          v23 = *(v20 + 16);
          *a1 = *v20;
          a1[1] = v22;
          a1[2] = v23;
          v24 = v21;
          v25 = v22;
          v26 = v23;
          return 0;
        }
      }

      else
      {
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v32;
  v29 = a2;
  v30 = v35;
  v31 = v34;
  sub_100185744(v29, v30, v31, v11, isUniquelyReferenced_nonNull_native);
  *v32 = v36;
  *a1 = v29;
  a1[1] = v30;
  a1[2] = v31;
  return 1;
}

uint64_t sub_100184FEC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004AA790);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100185268()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004AA7C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v0;
    v30 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v31 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v20;
      ++*(v4 + 16);
      v2 = v30;
      v9 = v31;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v31 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v29;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10018555C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100184FEC();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001859B8();
      goto LABEL_16;
    }

    sub_100185C80();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100185744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    sub_100185268();
  }

  else
  {
    if (v8 > v7)
    {
      sub_100185B08();
      goto LABEL_16;
    }

    sub_100185ED4();
  }

  v9 = *v5;
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  _CFObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a4 = v10 & ~v11;
  if ((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v12 = ~v11;
    do
    {
      v13 = *(v9 + 48) + 24 * a4;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      v17 = v14;
      v18 = v15;
      if (static _CFObject.== infix(_:_:)() & 1) != 0 && (static _CFObject.== infix(_:_:)())
      {
        v19 = static _CFObject.== infix(_:_:)();

        if (v19)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
      }

      a4 = (a4 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v20 = *v25;
  *(*v25 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v21 = (*(v20 + 48) + 24 * a4);
  *v21 = a1;
  v21[1] = a2;
  v21[2] = a3;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

id sub_1001859B8()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA790);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100185B08()
{
  v1 = v0;
  sub_1000039E8(&qword_1004AA7C8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        v23 = v19;
        v24 = v20;
        result = v21;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100185C80()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004AA790);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v17 = v16;
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100185ED4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000039E8(&qword_1004AA7C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v0;
    v32 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v33 = (v9 - 1) & v9;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      Hasher.init(_seed:)();
      type metadata accessor for CFString(0);
      sub_100189A44(&qword_1004A6DB8, type metadata accessor for CFString);
      v21 = v18;
      v22 = v19;
      v23 = v20;
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v4 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 24 * v12);
      v2 = v32;
      *v13 = v21;
      v13[1] = v22;
      v13[2] = v23;
      ++*(v4 + 16);
      v9 = v33;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v31;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v33 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1001861B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA798);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, &v11, &qword_1004AA7A0);
      v5 = v11;
      result = sub_1000133DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000279A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001862DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7D08);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1001863F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F63616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1397716596 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 5459817 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100186598(void *a1)
{
  v45 = sub_1000039E8(&qword_1004AA7E0);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v35 - v2;
  v3 = sub_1000039E8(&qword_1004AA7E8);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v46 = &v35 - v4;
  v5 = sub_1000039E8(&qword_1004AA7F0);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v35 - v6;
  v7 = sub_1000039E8(&qword_1004AA7F8);
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1000039E8(&qword_1004AA800);
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = sub_1000039E8(&qword_1004AA808);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = a1[3];
  v49 = a1;
  sub_10000E2A8(a1, v17);
  sub_10017BA20();
  v18 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_9;
  }

  v19 = v12;
  v36 = v10;
  v20 = v48;
  v50 = v14;
  v21 = v16;
  v22 = KeyedDecodingContainer.allKeys.getter();
  v23 = (2 * *(v22 + 16)) | 1;
  v51 = v22;
  v52 = v22 + 32;
  v53 = 0;
  v54 = v23;
  v24 = sub_100190FCC();
  if (v24 == 5 || v53 != v54 >> 1)
  {
    v28 = v13;
    v29 = type metadata accessor for DecodingError();
    v14 = swift_allocError();
    v31 = v30;
    sub_1000039E8(&qword_1004A7168);
    *v31 = &type metadata for ComputerPlatform;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v50 + 8))(v21, v28);
    swift_unknownObjectRelease();
LABEL_9:
    sub_100003C3C(v49);
    return v14;
  }

  v14 = v24;
  if (v24 <= 1u)
  {
    if (v24)
    {
      v55 = 1;
      sub_10017BB70();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v9, v39);
    }

    else
    {
      v55 = 0;
      sub_10017BBC4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v37 + 8))(v19, v36);
    }

    (*(v50 + 8))(v16, v13);
  }

  else if (v24 == 2)
  {
    v55 = 2;
    sub_10017BB1C();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v33 = v50;
    (*(v40 + 8))(v20, v41);
    (*(v33 + 8))(v16, v13);
  }

  else
  {
    v25 = v50;
    v26 = v21;
    if (v24 == 3)
    {
      v55 = 3;
      sub_10017BAC8();
      v27 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v43 + 8))(v27, v44);
    }

    else
    {
      v55 = 4;
      sub_10017BA74();
      v34 = v47;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v34, v45);
    }

    (*(v25 + 8))(v26, v13);
  }

  swift_unknownObjectRelease();
  sub_100003C3C(v49);
  return v14;
}

uint64_t sub_100186CFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100186DEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000039E8(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100013364(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100186EE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA7C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100186FEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA7A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, &v11, &qword_1004AA7B0);
      v5 = v11;
      result = sub_100181500(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000279A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA728);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100013364(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187218(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA770);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA778);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA770);
      result = sub_1001815D0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CodingUserInfoKey();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1000279A4(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187404(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA718);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA720);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100013364(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Config.Cryptex.Cryptex(0);
      result = sub_10018991C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001875D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000039E8(&qword_1004AA748);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_100013E54(&v44, v43, &qword_1004AA760);
  result = sub_100013364(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_100013E54(&v44, v43, &qword_1004AA760);
    result = sub_100013364(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1001877F8(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AA768);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000039E8(&qword_1004AA730);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100013E54(v9, v5, &qword_1004AA768);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100013364(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for URL();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1001879E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA780);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100181630(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1000318C0(v7, v8);
      result = sub_100013364(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187C00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004AA738);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013E54(v4, v13, &qword_1004AA740);
      result = sub_100013470(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000279A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100187D3C()
{
  result = qword_1004AAE50;
  if (!qword_1004AAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE50);
  }

  return result;
}

uint64_t sub_100187D90(uint64_t a1, uint64_t a2)
{
  v14 = 60;
  v4 = IOKitWaitQuiet(kIOMainPortDefault, &v14);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "IOKitWaitQuiet returned %d", v8, 8u);
  }

  if ((a2 & 0x100000000) != 0)
  {
    result = shim_reboot3(a1);
    if (!result)
    {
      return result;
    }

    goto LABEL_9;
  }

  result = shim_reboot3_with_purpose();
  if (result)
  {
LABEL_9:
    v10 = result;
    sub_100187D3C();
    v11 = swift_allocError();
    *v12 = v10;
    sub_100187FC0();
    swift_allocError();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = v11;
    *(v13 + 24) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_100187F6C()
{
  result = qword_1004AA4A0;
  if (!qword_1004AA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4A0);
  }

  return result;
}

unint64_t sub_100187FC0()
{
  result = qword_1004AA4A8;
  if (!qword_1004AA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4A8);
  }

  return result;
}

unint64_t sub_100188018()
{
  result = qword_1004AA4B0;
  if (!qword_1004AA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA4B0);
  }

  return result;
}

uint64_t sub_100188074@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1001880C0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 120);

  return v2(v3);
}

uint64_t dispatch thunk of Computer.set(computerName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Computer.set(hostName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of Computer.set(localHostName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100189CAC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RealComputer.set(computerName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100001FE0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of RealComputer.set(hostName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of RealComputer.set(localHostName:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 160) + **(*v2 + 160));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100189CAC;

  return v8(a1, a2);
}

unint64_t sub_100189444()
{
  result = qword_1004AA6B0;
  if (!qword_1004AA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6B0);
  }

  return result;
}

unint64_t sub_10018949C()
{
  result = qword_1004AA6B8;
  if (!qword_1004AA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6B8);
  }

  return result;
}

unint64_t sub_1001894F4()
{
  result = qword_1004AA6C0;
  if (!qword_1004AA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6C0);
  }

  return result;
}

unint64_t sub_10018954C()
{
  result = qword_1004AA6C8;
  if (!qword_1004AA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6C8);
  }

  return result;
}

unint64_t sub_1001895A4()
{
  result = qword_1004AA6D0;
  if (!qword_1004AA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6D0);
  }

  return result;
}

unint64_t sub_1001895FC()
{
  result = qword_1004AA6D8;
  if (!qword_1004AA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6D8);
  }

  return result;
}

unint64_t sub_100189654()
{
  result = qword_1004AA6E0;
  if (!qword_1004AA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6E0);
  }

  return result;
}

unint64_t sub_1001896AC()
{
  result = qword_1004AA6E8;
  if (!qword_1004AA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6E8);
  }

  return result;
}

unint64_t sub_100189704()
{
  result = qword_1004AA6F0;
  if (!qword_1004AA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6F0);
  }

  return result;
}

unint64_t sub_10018975C()
{
  result = qword_1004AA6F8;
  if (!qword_1004AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA6F8);
  }

  return result;
}

unint64_t sub_1001897B4()
{
  result = qword_1004AA700;
  if (!qword_1004AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA700);
  }

  return result;
}

unint64_t sub_10018980C()
{
  result = qword_1004AA708;
  if (!qword_1004AA708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA708);
  }

  return result;
}

unint64_t sub_100189864()
{
  result = qword_1004AA710;
  if (!qword_1004AA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA710);
  }

  return result;
}

uint64_t sub_1001898B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018991C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.Cryptex.Cryptex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001899DC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100189A44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100189A8C()
{
  result = qword_1004A7A80;
  if (!qword_1004A7A80)
  {
    sub_100003A94(&qword_1004A7A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A7A80);
  }

  return result;
}

uint64_t sub_100189B00()
{
  v1 = sub_1000039E8(&qword_1004AA7D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100189BD0()
{
  sub_1000039E8(&qword_1004AA7D0);
  v1 = *(v0 + 16);

  return sub_100181468(v1);
}

uint64_t sub_100189C40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100189C58()
{
  result = qword_1004AA7D8;
  if (!qword_1004AA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA7D8);
  }

  return result;
}

uint64_t UUID.init(md5:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Insecure.MD5Digest();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_10018EE20(&qword_1004AA810, &type metadata accessor for Insecure.MD5Digest);
  dispatch thunk of Sequence.makeIterator()();
  v8 = v30;
  v7 = v31;
  v9 = *(v30 + 16);
  v28 = v5;
  v29 = v4;
  v27 = a2;
  if (v31 == v9)
  {
    v10 = &_swiftEmptyArrayStorage;
LABEL_3:

    v12 = *(v10 + 2);
    if (v12)
    {
      if (v12 != 1)
      {
        if (v12 >= 3)
        {
          if (v12 != 3)
          {
            if (v12 >= 5)
            {
              if (v12 != 5)
              {
                if (v12 >= 7)
                {
                  if (v12 != 7)
                  {
                    if (v12 >= 9)
                    {
                      if (v12 != 9)
                      {
                        if (v12 >= 0xB)
                        {
                          if (v12 != 11)
                          {
                            if (v12 >= 0xD)
                            {
                              if (v12 != 13)
                              {
                                if (v12 >= 0xF)
                                {
                                  if (v12 != 15)
                                  {
                                    v13 = v10[32];
                                    v25 = v10[33];
                                    v26 = v13;
                                    v24 = v10[34];
                                    v14 = v10[35];
                                    v22[2] = v10[36];
                                    v22[3] = v14;
                                    v22[1] = v10[37];
                                    v23 = a1;

                                    UUID.init(uuid:)();
                                    return (*(v28 + 8))(v23, v29);
                                  }

                                  goto LABEL_45;
                                }

LABEL_44:
                                __break(1u);
LABEL_45:
                                __break(1u);
                                goto LABEL_46;
                              }

LABEL_43:
                              __break(1u);
                              goto LABEL_44;
                            }

LABEL_42:
                            __break(1u);
                            goto LABEL_43;
                          }

LABEL_41:
                          __break(1u);
                          goto LABEL_42;
                        }

LABEL_40:
                        __break(1u);
                        goto LABEL_41;
                      }

LABEL_39:
                      __break(1u);
                      goto LABEL_40;
                    }

LABEL_38:
                    __break(1u);
                    goto LABEL_39;
                  }

LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_36:
                __break(1u);
                goto LABEL_37;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = sub_100012054(0, 1, 1, &_swiftEmptyArrayStorage, &qword_1004A6148);
  if (v7 < v9)
  {
    v10 = result;
    v15 = v7;
    v16 = &unk_1003769F0;
    while ((v7 & 0x8000000000000000) == 0)
    {
      if (v15 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(v8 + 32 + v15);
      v19 = *(v10 + 2);
      v18 = *(v10 + 3);
      if (v19 >= v18 >> 1)
      {
        v20 = v10;
        v21 = v16;
        result = sub_100012054((v18 > 1), v19 + 1, 1, v20, &qword_1004A6148);
        v16 = v21;
        v10 = result;
      }

      ++v15;
      *(v10 + 2) = v19 + 1;
      v10[v19 + 32] = v17;
      if (v9 == v15)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t SKAPFSDisk.rawAPFSRole.getter()
{
  v1 = [v0 diskIdentifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.utf8CString.getter();
  }

  APFSVolumeRole();
  swift_unknownObjectRelease();
  return 0;
}

id SKManager.internalDisk()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 diskForPath:v1];

  if (!v2)
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000270B4(v7, qword_1004B00F8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to find internal disk", v10, 2u);
    }

    return 0;
  }

  sub_10018C8AC();
  if (![v2 isKindOfClass:swift_getObjCClassFromMetadata()])
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000270B4(v11, qword_1004B00F8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Internal disk is not an APFS container", v14, 2u);
    }

    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = v2;
  result = [v3 container];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SKManager.allVolumes()()
{
  result = SKManager.internalDisk()();
  if (result)
  {
    v1 = result;
    v2 = [result volumesExcludingSnapshots];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_10018A3E8(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10018A3E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_100003CA0(v4, &v5);
      sub_10018C8AC();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void (**SKManager.findVolume(withName:uuid:)(uint64_t a1, void *a2))(uint64_t, uint64_t)
{
  v43._countAndFlagsBits = a1;
  v43._object = a2;
  v2 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v2 - 8);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Insecure.MD5();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = SKManager.internalDisk()();
  if (result)
  {
    v10 = result;
    v11 = [result volumesExcludingSnapshots];
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_10018A3E8(v12);

    if (v13 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v15 = 0;
      v44 = v13 & 0xFFFFFFFFFFFFFF8;
      v45 = v13 & 0xC000000000000001;
      v36 = v7 + 1;
      v37 = (v4 + 8);
      v39 = v13;
      v35 = i;
      while (1)
      {
        if (v45)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v44 + 16))
          {
            goto LABEL_23;
          }

          v16 = *(v13 + 8 * v15 + 32);
        }

        v7 = v16;
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v18 = [v16 volumeUUID];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v4 = v21;
        }

        else
        {
          v20 = 0;
          v4 = 0;
        }

        Insecure.MD5.init()();
        object = v43._object;

        v23 = sub_10018AD60(v43._countAndFlagsBits, object);
        v25 = v24;
        sub_10018D7AC(v23, v24);
        sub_100031928(v23, v25);
        v26 = v42;
        Insecure.MD5.finalize()();
        v27 = v38;
        UUID.init(md5:)(v26, v38);
        (*v37)(v6, v41);
        v28 = UUID.uuidString.getter();
        v30 = v29;
        (*v36)(v27, v40);
        if (v4)
        {
          if (v20 == v28 && v4 == v30)
          {

LABEL_21:

            return v7;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v31)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v15;
        v13 = v39;
        if (v17 == v35)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x800000010043DCA0;
    String.append(_:)(v32);
    String.append(_:)(v43);
    v33._object = 0x800000010043DCD0;
    v33._countAndFlagsBits = 0xD000000000000018;
    String.append(_:)(v33);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Volume.uuidForName(name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Insecure.MD5();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Insecure.MD5.init()();

  v13 = sub_10018AD60(a1, a2);
  v15 = v14;
  sub_10018D7AC(v13, v14);
  sub_100031928(v13, v15);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v8, a3);
  return (*(v10 + 8))(v12, v9);
}

void SKManager.withUnsafeContainerNodeCString<A>(body:)(void (*a1)(id))
{
  v2 = SKManager.internalDisk()();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 diskIdentifier];
    if (v4)
    {
      v5 = v4;
      a1([v4 fileSystemRepresentation]);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id Volume.name.getter()
{
  result = [*(v0 + 24) volumeName];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Volume.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for Insecure.MD5();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = (*(*v1 + 144))(v8);
  v13 = v12;
  Insecure.MD5.init()();

  v14 = sub_10018AD60(v11, v13);
  v16 = v15;
  sub_10018D7AC(v14, v15);
  sub_100031928(v14, v16);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v5, a1);

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10018AD60(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000039E8(&qword_1004AAA38);
  if (swift_dynamicCast())
  {
    sub_100003C88(__src, &v41);
    sub_10000E2A8(&v41, v42);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v40;
    sub_100003C3C(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10018EE68(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_10018DA90(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_10018E100(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v10 = sub_10018DB58(sub_10018EED0);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1000C34F8(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1000C34F8(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    Data._Representation.append(contentsOf:)();
    sub_100031914(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100031914(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000318C0(*&__src[0], *(&__src[0] + 1));

  sub_100031928(v32, *(&v32 + 1));
  return v32;
}

uint64_t Volume.__allocating_init(createVolumeNamed:secret:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  Volume.init(createVolumeNamed:secret:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Volume.init(createVolumeNamed:secret:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v88 = a4;
  v90 = a3;
  v8 = type metadata accessor for Insecure.MD5Digest();
  __chkstk_darwin(v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for Insecure.MD5();
  v11 = *(v85 - 8);
  __chkstk_darwin(v85);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v89 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v78 - v18;
  v84 = v5;
  *(v5 + 16) = 0;
  v83 = (v5 + 16);
  Insecure.MD5.init()();

  v82 = a1;
  v87 = a2;
  v20 = sub_10018AD60(a1, a2);
  v22 = v21;
  v23 = v86;
  sub_10018D7AC(v20, v21);
  v86 = v23;
  v24 = v22;
  v25 = v90;
  sub_100031928(v20, v24);
  Insecure.MD5.finalize()();
  UUID.init(md5:)(v10, v19);
  v26 = v89;
  (*(v11 + 8))(v13, v85);
  v27 = v88;
  v28 = objc_opt_self();
  v29 = [v28 syncSharedManager];
  (*(v26 + 16))(v17, v19, v14);
  type metadata accessor for CacheVolumeKeyManager(0);
  swift_allocObject();
  sub_1000318C0(v25, v27);
  v30 = v86;
  v31 = CacheVolumeKeyManager.init(forNewVolumeWith:secret:)(v17, v25, v27);
  if (v30)
  {
    (*(v26 + 8))(v19, v14);
    sub_100031928(v25, v27);

LABEL_7:

    v40 = v84;

    type metadata accessor for Volume();
    swift_deallocPartialClassInstance();
    return v40;
  }

  v81 = 0;
  v32 = v83;
  v86 = v31;
  v79 = v28;
  v85 = v19;
  v80 = v14;
  v33 = v29;
  v34 = SKManager.internalDisk()();
  if (!v34)
  {
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 diskIdentifier];
  v33 = v86;
  if (!v36)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v36;
  v38 = [v36 fileSystemRepresentation];
  v39 = v81;
  (*(*v33 + 336))(v38);
  if (v39)
  {
    (*(v89 + 8))(v85, v80);

    sub_100031928(v90, v27);
    goto LABEL_7;
  }

  swift_beginAccess();
  *v32 = v33;

  UUID.uuidString.getter();
  v42 = String._bridgeToObjectiveC()();

  v81 = v42;
  v43 = CFUUIDCreateFromString(kCFAllocatorDefault, v42);
  sub_1000039E8(&qword_1004AA820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376260;
  v45 = kAPFSVolumeCreateSynchronousKey;
  *(inited + 32) = kAPFSVolumeCreateSynchronousKey;
  *(inited + 40) = 1;
  v46 = kAPFSVolumeNameKey;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = v46;
  v47 = v46;
  v48 = v45;
  v49 = String._bridgeToObjectiveC()();
  type metadata accessor for CFString(0);
  *(inited + 80) = v49;
  v50 = kAPFSVolumeRoleKey;
  *(inited + 104) = v51;
  *(inited + 112) = v50;
  *(inited + 120) = 768;
  v52 = kAPFSVolumeUUIDKey;
  *(inited + 144) = &type metadata for Int32;
  *(inited + 152) = v52;
  *(inited + 184) = sub_1000039E8(&qword_1004AA828);
  *(inited + 160) = v43;
  v53 = v52;
  v54 = v43;
  v55 = v50;
  sub_100186FEC(inited);
  swift_setDeallocating();
  sub_1000039E8(&qword_1004AA7B0);
  swift_arrayDestroy();
  v28 = sub_1000039E8(&qword_1004AA830);
  sub_10018E2A0();
  v56.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v83 = v29;
  v33 = v29;
  v57 = SKManager.internalDisk()();
  if (!v57)
  {
    goto LABEL_18;
  }

  v28 = v57;
  v78 = v54;
  v58 = [v57 diskIdentifier];
  if (v58)
  {
    v59 = v58;
    sub_10018BC8C([v58 fileSystemRepresentation], v56.super.isa);
    v60 = v88;
    isa = v56.super.isa;

    waitTime = 5;
    v62 = IOKitWaitQuiet(kIOMainPortDefault, &waitTime);
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_1000270B4(v63, qword_1004B00F8);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v92 = v67;
      *v66 = 67109378;
      *(v66 + 4) = v62;
      *(v66 + 8) = 2080;
      sub_1000039E8(&unk_1004A7370);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100376A40;
      *(v68 + 56) = &type metadata for Int32;
      *(v68 + 64) = &protocol witness table for Int32;
      *(v68 + 32) = v62;
      v69 = String.init(format:_:)();
      v71 = sub_1000026C0(v69, v70, &v92);

      *(v66 + 10) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, "Recieved IOKitWaitQuite status code: %d = %s", v66, 0x12u);
      sub_100003C3C(v67);
    }

    v72 = v90;
    v73 = v82;
    v74 = v85;
    v75 = [v79 syncSharedManager];

    v76 = v75;
    v77 = SKManager.findVolume(withName:uuid:)(v73, v87);

    sub_100031928(v72, v60);
    (*(v89 + 8))(v74, v80);
    v40 = v84;
    *(v84 + 24) = v77;
    return v40;
  }

LABEL_19:
  __break(1u);

  type metadata accessor for Volume();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_10018BC8C(int a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 4, theDict);
  v3 = APFSVolumeCreate();

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000270B4(v4, qword_1004B00F8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 67109378;
    *(v7 + 4) = v3;
    *(v7 + 8) = 2080;
    sub_1000039E8(&unk_1004A7370);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100376A40;
    *(v9 + 56) = &type metadata for Int32;
    *(v9 + 64) = &protocol witness table for Int32;
    *(v9 + 32) = v3;
    v10 = String.init(format:_:)();
    v12 = sub_1000026C0(v10, v11, &v13);

    *(v7 + 10) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received APFSVolumeCreate status code: %d = %s", v7, 0x12u);
    sub_100003C3C(v8);
  }
}

uint64_t Volume.__allocating_init(existingVolume:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t Volume.init(existingVolume:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Volume.unlock()()
{
  v1 = (*(*v0 + 96))();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() syncSharedManager];
    v4 = SKManager.internalDisk()();
    if (v4)
    {
      v5 = v4;
      v6 = [v4 diskIdentifier];
      if (v6)
      {
        v7 = v6;
        (*(*v2 + 336))([v6 fileSystemRepresentation]);

        return;
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
    sub_10018E7AC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_10018C010()
{
  (*(**(v0 + 24) + 176))();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = sub_1000039E8(&unk_1004A73A0);
  *v1 = v0;
  v1[1] = sub_10018C164;
  v3 = *(v0 + 24);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x2928746E756F6DLL, 0xE700000000000000, sub_10018E800, v3, v2);
}

uint64_t sub_10018C164()
{

  return _swift_task_switch(sub_10018C260, 0, 0);
}

uint64_t sub_10018C260()
{
  if (*(v0 + 16))
  {
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_10018C2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AAA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 24);
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_10018ED8C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10018C4E4;
  aBlock[3] = &unk_10048A210;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 mountWithCompletionBlock:v11];
  _Block_release(v11);
}

uint64_t sub_10018C494()
{
  swift_errorRetain();
  sub_1000039E8(&qword_1004AAA28);
  return CheckedContinuation.resume(returning:)();
}

void sub_10018C4E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t Volume.description.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  strcpy(v11, "<Volume name:");
  HIWORD(v11[1]) = -4864;
  v6._countAndFlagsBits = (*(*v0 + 144))(v5);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A6469757520;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  (*(*v0 + 152))();
  sub_10018EE20(&qword_1004AA848, &type metadata accessor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11[0];
}

uint64_t Volume.deinit()
{

  return v0;
}

uint64_t Volume.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10018C8AC()
{
  result = qword_1004AA818;
  if (!qword_1004AA818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AA818);
  }

  return result;
}

char *sub_10018C8F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AAA48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_10018CA44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1000039E8(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000039E8(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10018CB8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018CCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10018CDE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10018CFB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10018D138(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA9A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10018D258(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA998);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10018D3A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000039E8(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_10018D57C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA990);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10018D6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000039E8(&qword_1004AA980);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10018D7AC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for Insecure.MD5();
      sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10018D9B0(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10018D9B0(v4, v5);
  }

  type metadata accessor for Insecure.MD5();
  sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_10018D9B0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.MD5();
      sub_10018EE20(&qword_1004AAA30, &type metadata accessor for Insecure.MD5);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018DA90@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100346FCC(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_10018DB58(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100031928(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100031928(v6, v5);
    *v3 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_10018DFFC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_100031928(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_10018DFFC(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_10018DEFC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100346FCC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10018E1A0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10018E21C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10018DF90(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_10018DFFC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_10018E0B0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10018E100(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_100346FAC(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10018E1A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10018E21C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_10018E2A0()
{
  result = qword_1004AA838;
  if (!qword_1004AA838)
  {
    sub_100003A94(&qword_1004AA830);
    sub_10018EE20(&qword_1004A6CB0, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA838);
  }

  return result;
}

uint64_t sub_10018E354(uint64_t a1)
{
  v9 = sub_1000039E8(&qword_1004A71E0);
  v10 = sub_10018EC94();
  v8[0] = a1;
  v2 = sub_10000E2A8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10018DEFC(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003C3C(v8);
  return v5;
}

unint64_t _s10DarwinInit6VolumeC4listSDySSACGyFZ_0()
{
  v0 = sub_100187114(_swiftEmptyArrayStorage);
  v1 = [objc_opt_self() sharedManager];
  if (!v1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v2 = v1;
  v3 = SKManager.internalDisk()();
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  v5 = [v3 volumesExcludingSnapshots];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_10018A3E8(v6);

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

LABEL_13:
      v12 = v10;
      v13 = [v12 diskIdentifier];
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.utf8CString.getter();
      }

      APFSVolumeRole();
      swift_unknownObjectRelease();

      ++v9;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v10 = *(v7 + 8 * v9 + 32);
    v11 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return v0;
}

unint64_t sub_10018E7AC()
{
  result = qword_1004AA840;
  if (!qword_1004AA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA840);
  }

  return result;
}

unint64_t sub_10018E80C()
{
  result = qword_1004AA850;
  if (!qword_1004AA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA850);
  }

  return result;
}

uint64_t sub_10018E860@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_10018E8AC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t dispatch thunk of Volume.mount()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100001FE0;

  return v4();
}

uint64_t dispatch thunk of Volume.destroy()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100189CAC;

  return v4();
}

unint64_t sub_10018EC94()
{
  result = qword_1004AA068;
  if (!qword_1004AA068)
  {
    sub_100003A94(&qword_1004A71E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA068);
  }

  return result;
}

uint64_t sub_10018ECF8()
{
  v1 = sub_1000039E8(&qword_1004AAA28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10018ED8C()
{
  sub_1000039E8(&qword_1004AAA28);

  return sub_10018C494();
}

uint64_t sub_10018EE08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10018EE20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10018EE68(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004AAA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10018EED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_10018DF90(sub_10018EF38, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_10018EF58()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static LibCryptex.logger);
  v1 = sub_1000270B4(v0, static LibCryptex.logger);
  if (qword_1004A9F38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.libcryptex);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LibCryptex.logger.unsafeMutableAddressor()
{
  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static LibCryptex.logger);
}

uint64_t static LibCryptex.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static LibCryptex.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10018F12C()
{
  v0 = type metadata accessor for URL();
  sub_1000279B4(v0, qword_1004AAA50);
  sub_1000270B4(v0, qword_1004AAA50);
  return URL.init(fileURLWithPath:)();
}

uint64_t static LibCryptex.personalizeCryptex(at:ticketPath:withVariant:usingAuthorizationService:locatedAt:usingAppleConnect:ginfPath:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v113 = a5;
  v114 = a8;
  v111 = a6;
  v112 = a3;
  v116 = a4;
  v122 = a9;
  v14 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v14 - 8);
  v16 = &v104[-v15];
  v17 = type metadata accessor for FilePath();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v110 = &v104[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v109 = &v104[-v22];
  v23 = __chkstk_darwin(v21);
  v120 = &v104[-v24];
  v25 = __chkstk_darwin(v23);
  v27 = &v104[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v104[-v29];
  __chkstk_darwin(v28);
  v32 = &v104[-v31];
  sub_10018FEF4(a2, v16);
  v33 = (*(v18 + 48))(v16, 1, v17);
  v124 = v32;
  if (v33 == 1)
  {
    sub_10018FF64(v16);
    (*(v18 + 16))(v32, a1, v17);
    v34 = FilePath.extension.getter();
    if (v35)
    {
      v125[0] = v34;
      v125[1] = v35;
      v36._countAndFlagsBits = 46;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      v37._countAndFlagsBits = 0x74656B636974;
      v37._object = 0xE600000000000000;
      String.append(_:)(v37);
    }

    FilePath.extension.setter();
  }

  else
  {
    v38 = *(v18 + 32);
    v38(v30, v16, v17);
    v38(v124, v30, v17);
    v32 = v124;
  }

  if (qword_1004A9DF8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_1000270B4(v39, static LibCryptex.logger);
  v41 = *(v18 + 16);
  v41(v27, v32, v17);
  v42 = v120;
  v118 = a1;
  v115 = v18 + 16;
  v123 = v41;
  v41(v120, a1, v17);
  v117 = v40;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v121 = v18;
  v119 = v17;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v108 = a7;
    v47 = v46;
    v107 = swift_slowAlloc();
    v125[0] = v107;
    *v47 = 136315394;
    sub_100190550();
    v106 = v43;
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v44;
    v49 = v42;
    v51 = v50;
    v52 = *(v18 + 8);
    (v52)(v27, v17);
    v53 = sub_1000026C0(v48, v51, v125);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v120 = v52;
    (v52)(v49, v17);
    v57 = sub_1000026C0(v54, v56, v125);

    *(v47 + 14) = v57;
    v58 = v106;
    _os_log_impl(&_mh_execute_header, v106, v105, "Writing personalization ticket to output Directory: %s using cryptex: %s", v47, 0x16u);
    swift_arrayDestroy();

    a7 = v108;
  }

  else
  {

    v59 = *(v18 + 8);
    (v59)(v42, v17);
    v120 = v59;
    (v59)(v27, v17);
  }

  v125[0] = _swiftEmptyArrayStorage;
  if (a7)
  {
    sub_1000039E8(&qword_1004AAA18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376BB0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    strcpy((inited + 32), "--signing-url");
    *(inited + 46) = -4864;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v111;
    *(inited + 80) = a7;

    sub_10034A380(inited);
  }

  v61 = v113;
  if (v113 != 4)
  {
    sub_1000039E8(&qword_1004AAA18);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100376BB0;
    *(v62 + 56) = &type metadata for String;
    *(v62 + 64) = &protocol witness table for String;
    *(v62 + 32) = 0xD000000000000015;
    *(v62 + 40) = 0x800000010043DD90;
    if (v61 > 1)
    {
      if (v61 == 2)
      {
        v63 = 0xE700000000000000;
        v64 = 0x79726F74636166;
      }

      else
      {
        v63 = 0xE400000000000000;
        v64 = 1701736302;
      }
    }

    else if (v61)
    {
      v63 = 0xE600000000000000;
      v64 = 0x6F6C76616964;
    }

    else
    {
      v63 = 0xE500000000000000;
      v64 = 0x7573746174;
    }

    *(v62 + 96) = &type metadata for String;
    *(v62 + 104) = &protocol witness table for String;
    *(v62 + 72) = v64;
    *(v62 + 80) = v63;
    sub_10034A380(v62);
  }

  if (v114)
  {
    sub_1000039E8(&qword_1004AAA18);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_100376A40;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = &protocol witness table for String;
    strcpy((v65 + 32), "--signing-sso");
    *(v65 + 46) = -4864;
    sub_10034A380(v65);
  }

  sub_1000039E8(&qword_1004AAA18);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_100376A40;
  *(v66 + 56) = &type metadata for String;
  *(v66 + 64) = &protocol witness table for String;
  *(v66 + 32) = 0x6C616E6F73726570;
  *(v66 + 40) = 0xEB00000000657A69;
  sub_10034A380(v66);
  v67 = v116;
  if (v116)
  {
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_100376BB0;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = &protocol witness table for String;
    *(v68 + 32) = 0x6E61697261762D2DLL;
    *(v68 + 40) = 0xE900000000000074;
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = &protocol witness table for String;
    *(v68 + 72) = v112;
    *(v68 + 80) = v67;

    sub_10034A380(v68);
  }

  if (a11)
  {
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_100376BB0;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = &protocol witness table for String;
    strcpy((v69 + 32), "--write-ginf");
    *(v69 + 45) = 0;
    *(v69 + 46) = -5120;
    *(v69 + 96) = &type metadata for String;
    *(v69 + 104) = &protocol witness table for String;
    *(v69 + 72) = a10;
    *(v69 + 80) = a11;

    sub_10034A380(v69);
  }

  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100376260;
  *(v70 + 56) = &type metadata for String;
  *(v70 + 64) = &protocol witness table for String;
  *(v70 + 32) = 0x692D74736F682D2DLL;
  *(v70 + 40) = 0xEF797469746E6564;
  *(v70 + 96) = &type metadata for String;
  *(v70 + 104) = &protocol witness table for String;
  *(v70 + 72) = 0xD00000000000001CLL;
  *(v70 + 80) = 0x800000010043DD70;
  v71 = v119;
  *(v70 + 136) = v119;
  v72 = sub_100190550();
  *(v70 + 144) = v72;
  v73 = sub_100064BF8((v70 + 112));
  v74 = v123;
  v75 = v124;
  v123(v73, v124, v71);
  *(v70 + 176) = v71;
  *(v70 + 184) = v72;
  v76 = sub_100064BF8((v70 + 152));
  v74(v76, v118, v71);
  sub_10034A380(v70);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v77 = type metadata accessor for URL();
  v78 = sub_1000270B4(v77, qword_1004AAA50);
  sub_10034B9E0(v78, v125[0]);
  v79 = v121;

  v80 = FilePath.fileExists()();
  if (v81)
  {

LABEL_37:
    v123(v110, v75, v71);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v125[0] = v123;
      *v95 = 136315138;
      v96 = v110;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      v100 = v96;
      v101 = v120;
      (v120)(v100, v71);
      v102 = sub_1000026C0(v97, v99, v125);

      *(v95 + 4) = v102;
      _os_log_impl(&_mh_execute_header, v93, v94, "Personalization didn't produce personalization ticket at %s", v95, 0xCu);
      sub_100003C3C(v123);

      v101(v124, v71);
    }

    else
    {

      v103 = v120;
      (v120)(v110, v71);
      v103(v75, v71);
    }

    v82 = 1;
    return (*(v79 + 56))(v122, v82, 1, v71);
  }

  if (!v80)
  {
    goto LABEL_37;
  }

  v84 = v109;
  v123(v109, v75, v71);
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v125[0] = v88;
    *v87 = 136315138;
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v90;
    (v120)(v84, v71);
    v92 = sub_1000026C0(v89, v91, v125);

    *(v87 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v85, v86, "Successfully wrote personalization ticket to %s", v87, 0xCu);
    sub_100003C3C(v88);
    v75 = v124;
  }

  else
  {

    (v120)(v84, v71);
  }

  (*(v79 + 32))(v122, v75, v71);
  v82 = 0;
  return (*(v79 + 56))(v122, v82, 1, v71);
}

uint64_t sub_10018FEF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A9CF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018FF64(uint64_t a1)
{
  v2 = sub_1000039E8(&qword_1004A9CF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static LibCryptex.installCryptex(at:ticketAt:withVariant:usingAuthorizationService:locatedAt:limitLoadToREM:readWrite:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8, char a9)
{
  v14 = &unk_100376000;
  if (a7)
  {
    sub_1000039E8(&qword_1004AAA18);
    v17 = a1;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100376BB0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = &protocol witness table for String;
    strcpy((inited + 32), "--signing-url");
    *(inited + 46) = -4864;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = a6;
    *(inited + 80) = a7;

    v19 = inited;
    a1 = v17;
    v14 = &unk_100376000;
    sub_10034A380(v19);
  }

  if (a5 != 4)
  {
    sub_1000039E8(&qword_1004AAA18);
    v20 = swift_initStackObject();
    *(v20 + 16) = v14[187];
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = &protocol witness table for String;
    *(v20 + 32) = 0xD000000000000015;
    *(v20 + 40) = 0x800000010043DD90;
    if (a5 > 1u)
    {
      if (a5 == 2)
      {
        v21 = 0xE700000000000000;
        v22 = 0x79726F74636166;
      }

      else
      {
        v21 = 0xE400000000000000;
        v22 = 1701736302;
      }
    }

    else if (a5)
    {
      v21 = 0xE600000000000000;
      v22 = 0x6F6C76616964;
    }

    else
    {
      v21 = 0xE500000000000000;
      v22 = 0x7573746174;
    }

    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = &protocol witness table for String;
    *(v20 + 72) = v22;
    *(v20 + 80) = v21;
    sub_10034A380(v20);
  }

  sub_1000039E8(&qword_1004AAA18);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100376A40;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = &protocol witness table for String;
  *(v23 + 32) = 0x6C6C6174736E69;
  *(v23 + 40) = 0xE700000000000000;
  sub_10034A380(v23);
  if (a4)
  {
    v24 = swift_initStackObject();
    *(v24 + 16) = v14[187];
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = &protocol witness table for String;
    *(v24 + 32) = 0x6E61697261762D2DLL;
    *(v24 + 40) = 0xE900000000000074;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = &protocol witness table for String;
    *(v24 + 72) = a3;
    *(v24 + 80) = a4;

    sub_10034A380(v24);
  }

  if (a8 != 2 && (a8 & 1) != 0)
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_100376A40;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = &protocol witness table for String;
    *(v25 + 32) = 0xD000000000000013;
    *(v25 + 40) = 0x800000010043DDB0;
    sub_10034A380(v25);
  }

  if (a9 != 2 && (a9 & 1) != 0)
  {
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_100376A40;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = &protocol witness table for String;
    *(v26 + 32) = 0x7277646165722D2DLL;
    *(v26 + 40) = 0xEB00000000657469;
    sub_10034A380(v26);
  }

  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_100376F00;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = &protocol witness table for String;
  strcpy((v27 + 32), "--ticket-path");
  *(v27 + 46) = -4864;
  v28 = FilePath.string.getter();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = &protocol witness table for String;
  *(v27 + 72) = v28;
  *(v27 + 80) = v29;
  v30 = type metadata accessor for FilePath();
  *(v27 + 136) = v30;
  *(v27 + 144) = sub_100190550();
  v31 = sub_100064BF8((v27 + 112));
  (*(*(v30 - 8) + 16))(v31, a1, v30);
  sub_10034A380(v27);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for URL();
  v33 = sub_1000270B4(v32, qword_1004AAA50);
  sub_10034B9E0(v33, &_swiftEmptyArrayStorage);

  return 1;
}

unint64_t sub_100190550()
{
  result = qword_1004AA058;
  if (!qword_1004AA058)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AA058);
  }

  return result;
}

uint64_t _s10DarwinInit10LibCryptexO5trust15rootCertificate17usingAppleConnect10signingURLSb10Foundation4DataV_SbSStFZ_0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a3;
  v7 = type metadata accessor for NonZeroExit();
  v8 = __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v33 - v11;
  v13 = type metadata accessor for FilePath();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v38 = (v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  static FilePath.newTemporaryPath()(v33 - v17);
  v39 = v18;
  FilePath.save(_:append:)(a1, a2, 0);
  v33[2] = v12;
  v33[3] = v7;
  v33[1] = v10;
  v37 = v13;
  v38 = v14;
  v43 = _swiftEmptyArrayStorage;
  v19 = v35;
  if (v34)
  {
    v20 = sub_10018C9FC(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_10018C9FC((v21 > 1), v22 + 1, 1, v20);
    }

    v41 = &type metadata for String;
    v42 = &protocol witness table for String;
    strcpy(&v40, "--signing-sso");
    HIWORD(v40) = -4864;
    v20[2] = v22 + 1;
    sub_100003C88(&v40, &v20[5 * v22 + 4]);
    v43 = v20;
  }

  sub_1000039E8(&qword_1004AAA18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376260;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = 0x7473757274;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = &protocol witness table for String;
  *(inited + 72) = 29997;
  *(inited + 80) = 0xE200000000000000;
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = &protocol witness table for String;
  *(inited + 112) = v36;
  *(inited + 120) = v19;

  v24 = FilePath.string.getter();
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &protocol witness table for String;
  *(inited + 152) = v24;
  *(inited + 160) = v25;
  sub_10034A380(inited);
  if (qword_1004A9E00 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for URL();
  v27 = sub_1000270B4(v26, qword_1004AAA50);
  sub_10034B9E0(v27, v43);
  v28 = v37;

  v30 = v38;
  v29 = v39;
  FilePath.remove()();
  if (v31)
  {
  }

  v30[1](v29, v28);
  return 1;
}

uint64_t sub_100190F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonZeroExit();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100190F70(uint64_t a1)
{
  v2 = type metadata accessor for NonZeroExit();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100190FCC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100191000()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100191038()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10019106C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001910C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727453726F727265 && a2 == 0xEB00000000676E69)
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

uint64_t sub_10019114C(uint64_t a1)
{
  v2 = sub_100191300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191188(uint64_t a1)
{
  v2 = sub_100191300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DarwinInitApplyFailureInfo.encode(to:)(void *a1)
{
  v2 = sub_1000039E8(&qword_1004AAA68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000E2A8(a1, a1[3]);
  sub_100191300();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100191300()
{
  result = qword_1004AAA70;
  if (!qword_1004AAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA70);
  }

  return result;
}

uint64_t DarwinInitApplyFailureInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AAA78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_100191300();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return sub_100003C3C(a1);
}

uint64_t DarwinInitApplyStatus.toJSON()()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100191574();
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

unint64_t sub_100191574()
{
  result = qword_1004AAA80;
  if (!qword_1004AAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA80);
  }

  return result;
}

uint64_t static DarwinInitApplyStatus.fromJSON(_:)()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10019165C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

unint64_t sub_10019165C()
{
  result = qword_1004AAA88;
  if (!qword_1004AAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAA88);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DarwinInitApplyStatus.save()()
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  if (qword_1004A9EA0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000270B4(v2, kDInitStatusFilepath);
  (*(v3 + 16))(v5, v8, v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v13[0] = v6;
  v13[1] = v7;
  sub_100191574();
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = v9;
    v12 = v10;

    FilePath.save(_:append:)(v11, v12, 0);
    (*(v3 + 8))(v5, v2);
    sub_100031928(v11, v12);
  }
}

uint64_t static DarwinInitApplyStatus.loadBootStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v43 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  if (qword_1004A9EA0 != -1)
  {
    swift_once();
  }

  v44 = v6;
  v13 = sub_1000270B4(v7, kDInitStatusFilepath);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v39 = *(v8 + 16);
  v40 = v13;
  v39(v12, v13, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v2;
    v18 = v17;
    v35 = swift_slowAlloc();
    v45 = v35;
    *v18 = 136315138;
    sub_100190550();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = a1;
    v21 = v20;
    (*(v8 + 8))(v12, v7);
    v22 = sub_1000026C0(v19, v21, &v45);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Loading raw data of file at %s", v18, 0xCu);
    sub_100003C3C(v35);

    v2 = v36;
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v23 = v41;
  v39(v41, v40, v7);
  v24 = v42;
  (*(v43 + 104))(v42, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  v25 = v44;
  sub_1001746A8(v23, v24, v44);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v25, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v38;
    v30 = Data.init(contentsOf:options:)();
    if (v29)
    {
      return (*(v27 + 8))(v25, v26);
    }

    else
    {
      v32 = v30;
      v33 = v25;
      v34 = v31;
      (*(v27 + 8))(v33, v26);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_10019165C();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      return sub_100031928(v32, v34);
    }
  }

  return result;
}

uint64_t sub_100191D88()
{
  if (*v0)
  {
    return 0x73736563637573;
  }

  else
  {
    return 0x6572756C696166;
  }
}

uint64_t sub_100191DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000)
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

uint64_t sub_100191E98(uint64_t a1)
{
  v2 = sub_100192870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191ED4(uint64_t a1)
{
  v2 = sub_100192870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100191F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1868983913 && a2 == 0xE400000000000000)
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

uint64_t sub_100191FB0(uint64_t a1)
{
  v2 = sub_100192918();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100191FEC(uint64_t a1)
{
  v2 = sub_100192918();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100192028(uint64_t a1)
{
  v2 = sub_1001928C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100192064(uint64_t a1)
{
  v2 = sub_1001928C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DarwinInitApplyStatus.encode(to:)(void *a1)
{
  v19 = sub_1000039E8(&qword_1004AAA90);
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v15 = &v14 - v3;
  v18 = sub_1000039E8(&qword_1004AAA98);
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v14 - v4;
  v6 = sub_1000039E8(&qword_1004AAAA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = v1[1];
  v14 = *v1;
  sub_10000E2A8(a1, a1[3]);
  sub_100192870();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v10 == 1)
  {
    LOBYTE(v20) = 1;
    sub_1001928C4();
    v11 = v15;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v11, v19);
  }

  else
  {
    LOBYTE(v20) = 0;
    sub_100192918();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v14;
    v21 = v10;
    sub_10019296C();
    v13 = v18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v5, v13);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t DarwinInitApplyStatus.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = a2;
  v24 = sub_1000039E8(&qword_1004AAAC8);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v23 - v3;
  v5 = sub_1000039E8(&qword_1004AAAD0);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_1000039E8(&qword_1004AAAD8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = a1[3];
  v30 = a1;
  sub_10000E2A8(a1, v12);
  sub_100192870();
  v13 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v28 = v5;
    v14 = v27;
    v15 = KeyedDecodingContainer.allKeys.getter();
    if (*(v15 + 16) == 1)
    {
      if (*(v15 + 32))
      {
        LOBYTE(v29) = 1;
        sub_1001928C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v26 + 8))(v4, v24);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v14 = xmmword_1003772E0;
      }

      else
      {
        LOBYTE(v29) = 0;
        sub_100192918();
        v20 = v7;
        v21 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        sub_1001929C0();
        v22 = v28;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v25 + 8))(v20, v22);
        (*(v9 + 8))(v21, v8);
        swift_unknownObjectRelease();
        *v14 = v29;
      }
    }

    else
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      sub_1000039E8(&qword_1004A7168);
      *v18 = &type metadata for DarwinInitApplyStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_100003C3C(v30);
}