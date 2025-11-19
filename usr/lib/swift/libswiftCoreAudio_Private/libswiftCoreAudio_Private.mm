void *one-time initialization function for shared()
{
  type metadata accessor for AudioHardwareSystem();
  swift_allocObject();
  result = AudioHardwareObject.init(id:)(1);
  static AudioHardwareSystem.shared = result;
  return result;
}

uint64_t static AudioHardwareSystem.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

char *AudioHardwareSystem.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = v24 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v24[0] = 0;
    v25 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v24[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        v14 = type metadata accessor for ListenerHelper();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        v17 = swift_allocObject();
        v18 = (v17 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        *v18 = 0;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v18 + v20, *(*(v21 - 8) + 64));
        v22 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v18 + v20);
        *(v13 + 56) = v17;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v22);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v25;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

uint64_t AudioHardwareSystem.defaultInputDevice.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.defaultInputDevice.getter(0x676C6F6264496E20);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.defaultOutputDevice.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.defaultInputDevice.getter(0x676C6F62644F7574);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.defaultSoundEffectsDevice.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.defaultInputDevice.getter(0x676C6F62734F7574);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.defaultInputDevice.getter(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.shouldMixStereoToMono.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6273746D6FLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.isInitializingOrExiting.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62696E6F74);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.isProcessInputMuted.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62706D696ELL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.allowsSleeping.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62736C6570);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.allowsUnloading.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62756E6C64);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.allowsHogMode.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62686F6772);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareSystem.shouldMixStereoToMono.getter(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v6 = v3;
    v7 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v6, v7);
    v5 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v5 & 1;
}

uint64_t AudioHardwareSystem.powerHint.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F62706F7768, 0, 0, 0xF000000000000000);
  v4 = result;
  if (!v1)
  {
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.setDefaultInputDevice(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.setDefaultInputDevice(_:)(a1, 0x676C6F6264496E20);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.setDefaultOutputDevice(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.setDefaultInputDevice(_:)(a1, 0x676C6F62644F7574);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.setDefaultSoundEffectsDevice(_:)(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  result = AudioHardwareSystem.setDefaultInputDevice(_:)(a1, 0x676C6F62734F7574);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareSystem.setDefaultInputDevice(_:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 16);
  v4 = specialized Data.InlineData.init(_:)(&v9, &v10);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5 & 0xFFFFFFFFFFFFFFLL);
  result = outlined consume of Data._Representation(v4, v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setShouldMixStereoToMono(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.setShouldMixStereoToMono(_:)(a1, 0x676C6F6273746D6FLL);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setIsProcessInputMuted(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.setShouldMixStereoToMono(_:)(a1, 0x676C6F62706D696ELL);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setAllowsSleeping(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.setShouldMixStereoToMono(_:)(a1, 0x676C6F62736C6570);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setAllowsUnloading(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.setShouldMixStereoToMono(_:)(a1, 0x676C6F62756E6C64);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setAllowsHogMode(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.setShouldMixStereoToMono(_:)(a1, 0x676C6F62686F6772);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareSystem.setShouldMixStereoToMono(_:)(char a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = a1 & 1;
  v4 = specialized Data.InlineData.init(_:)(&v9, &v10);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5 & 0xFFFFFFFFFFFFFFLL);
  result = outlined consume of Data._Representation(v4, v6 & 0xFFFFFFFFFFFFFFLL);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.setPowerHint(_:)(AudioHardwarePowerHint a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.InlineData.init(_:)(&v6, &v7);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F62706F7768, 0, 0, 0xF000000000000000, v2, v3 & 0xFFFFFFFFFFFFFFLL);
  outlined consume of Data._Representation(v2, v4 & 0xFFFFFFFFFFFFFFLL);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareSystem.unload()()
{
  v0 = AudioHardwareUnload();
  if (v0)
  {
    v1 = v0;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = v1;
    swift_willThrow();
  }
}

uint64_t AudioHardwareSystem.makeAggregateDevice(description:)()
{
  v8 = *MEMORY[0x29EDCA608];
  v0.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  outDeviceID = 0;
  v1 = AudioHardwareCreateAggregateDevice(v0.super.isa, &outDeviceID);
  if (v1)
  {
    v2 = v1;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    swift_willThrow();
  }

  else
  {
    v4 = outDeviceID;
    if (outDeviceID)
    {
      type metadata accessor for AudioHardwareAggregateDevice();
      swift_allocObject();
      v2 = AudioHardwareObject.init(id:)(v4);
    }

    else
    {

      v2 = 0;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t AudioHardwareSystem.destroyAggregateDevice(_:)(uint64_t a1)
{
  result = AudioHardwareDestroyAggregateDevice(*(a1 + 16));
  if (result)
  {
    v2 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    return swift_willThrow();
  }

  return result;
}

void AudioHardwareSystem.device(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.device(forUID:)(a1, a2, 0x676C6F6275696464);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwareSystem.clock(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.device(forUID:)(a1, a2, 0x676C6F6275696463);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwareSystem.box(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.device(forUID:)(a1, a2, 0x676C6F6275696462);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwareSystem.plugin(forBundleID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareSystem.device(forUID:)(a1, a2, 0x676C6F6262696470);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwareSystem.device(forUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDB01D0]();
  v16 = v6;
  v7 = specialized Data.InlineData.init(_:)(&v16, v17);
  v9 = v8;
  v10 = (*(*v3 + 280))(a3, 0, v7, v8 & 0xFFFFFFFFFFFFFFLL);
  if (v4)
  {
    outlined consume of Data._Representation(v7, v9 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v12 = v11;
    v13 = v9 & 0xFFFFFFFFFFFFFFLL;
    v14 = v10;
    outlined consume of Data._Representation(v7, v13);

    v16 = v14;
    v17[0] = v12;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v14, v12);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareSystem.process(for:)(int a1)
{
  v12[2] = *MEMORY[0x29EDCA608];
  LODWORD(v12[0]) = a1;
  v3 = specialized Data.InlineData.init(_:)(v12, v12 + 4);
  v5 = v4;
  v6 = (*(*v1 + 280))(0x676C6F6269643270, 0, v3, v4 & 0xFFFFFFFFFFFFFFLL);
  if (v2)
  {
    outlined consume of Data._Representation(v3, v5 & 0xFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = v6;
    v12[0] = v6;
    v12[1] = v7;
    v9 = v7;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v3, v5 & 0xFFFFFFFFFFFFFFLL);
    outlined consume of Data._Representation(v8, v9);
    v1 = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t AudioHardwareSystem.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareSystem.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26AudioObjectPropertyAddressV_ys6UInt32V_SPyADGtcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x29EDCA198];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v16 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = (v3[6] + 12 * result);
    *v10 = v4;
    v10[1] = v5;
    v10[2] = v6;
    *(v3[7] + 16 * result) = v16;
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

    v14 = v9 + 2;
    v4 = *(v9 - 4);
    v5 = *(v9 - 3);
    v6 = *(v9 - 2);
    v16 = *v9;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v6);
    v9 = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError()
{
  result = lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError;
  if (!lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioHardwareError and conformance AudioHardwareError);
  }

  return result;
}

uint64_t outlined destroy of [PropertyListenerDelegate](uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioStreamRangedDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioStreamRangedDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioObjectPropertyAddress(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioObjectPropertyAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _sSo15AudioValueRangeVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo15AudioValueRangeVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
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

uint64_t getEnumTagSinglePayload for AudioStreamBasicDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioStreamBasicDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void type metadata accessor for CFStringRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AudioHardwareError.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = result;
  return result;
}

unint64_t AudioHardwareError.errorDescription.getter()
{
  v1 = *v0;
  if (*v0 <= 561214577)
  {
    if (v1 > 560492390)
    {
      if (v1 == 561211770)
      {
        v8 = 0xD00000000000004ELL;
      }

      else
      {
        v8 = 0;
      }

      if (v1 == 560947818)
      {
        v9 = 0xD00000000000004CLL;
      }

      else
      {
        v9 = v8;
      }

      if (v1 == 560492391)
      {
        return 0xD000000000000057;
      }

      else
      {
        return v9;
      }
    }

    else
    {
      v6 = 0xD000000000000035;
      if (v1 == 560227702)
      {
        v7 = 0xD00000000000004CLL;
      }

      else
      {
        v7 = 0;
      }

      if (v1 != 560226676)
      {
        v6 = v7;
      }

      if (v1)
      {
        return v6;
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v1 <= 1937010543)
  {
    switch(v1)
    {
      case 561214578:
        return 0xD00000000000004CLL;
      case 1852797029:
        v11 = *(v0 + 8);
        v10 = *(v0 + 16);
        if (v10)
        {
          v12 = *(v0 + 8);
        }

        else
        {
          v12 = 0xD00000000000002ELL;
        }

        if (v10)
        {
          v13 = *(v0 + 16);
        }

        return v12;
      case 1852990585:
        return 0xD00000000000003ALL;
      default:
        return 0;
    }
  }

  else
  {
    if (v1 == 2003332927)
    {
      v2 = 0xD000000000000045;
    }

    else
    {
      v2 = 0;
    }

    if (v1 == 2003329396)
    {
      v3 = 0xD000000000000057;
    }

    else
    {
      v3 = v2;
    }

    v4 = 0xD000000000000038;
    if (v1 != 1970171760)
    {
      v4 = 0;
    }

    if (v1 == 1937010544)
    {
      v4 = 0xD000000000000045;
    }

    if (v1 <= 2003329395)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }
}

CoreAudio_Private::AudioHardwareDirection_optional __swiftcall AudioHardwareDirection.init(rawValue:)(Swift::UInt32 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioHardwareDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioHardwareDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance AudioHardwareDirection@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void AudioObjectPropertyAddress.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a3);
}

Swift::Int AudioObjectPropertyAddress.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioObjectPropertyAddress()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AudioObjectPropertyAddress()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioObjectPropertyAddress()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioHardwareDirection and conformance AudioHardwareDirection()
{
  result = lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection;
  if (!lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioHardwareDirection and conformance AudioHardwareDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress()
{
  result = lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress;
  if (!lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress)
  {
    type metadata accessor for AudioObjectPropertyAddress(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioObjectPropertyAddress and conformance AudioObjectPropertyAddress);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioHardwareError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AudioHardwareError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioHardwareDirection(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AudioHardwareDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AudioHardwareStream.isActive.getter()
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = (*(*v0 + 280))(0x676C6F6273616374, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4 & 1;
}

uint64_t AudioHardwareStream.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  v9 = *MEMORY[0x29EDCA608];
  result = (*(*v1 + 280))(0x676C6F6273646972, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v6 = result;
    v7 = v5;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v6, v7);
    *a1 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.terminalType.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F627465726DLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.startingChannel.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F627363686ELL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.latency.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F626C746E63);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.startingChannel.getter(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    result = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.virtualFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.virtualFormat.getter(0x676C6F6273666D74, a1);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.physicalFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.virtualFormat.getter(0x676C6F6270667420, a1);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.virtualFormat.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  result = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v7, v8);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.availableVirtualFormats.getter(uint64_t a1)
{
  result = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (v3)
  {
    return v1;
  }

  v6 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(v5);
LABEL_14:
    v11 = (37 * (v7 >> 3)) >> 8;
    goto LABEL_15;
  }

  LODWORD(v7) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_23;
  }

  v7 = v7;
LABEL_11:
  if (v7 >= -55)
  {
    v11 = v7 / 56;
LABEL_15:
    v12 = v5;
    v13 = result;
    if (v7 < 56)
    {
      v1 = MEMORY[0x29EDCA190];
    }

    else
    {
      type metadata accessor for AudioStreamRangedDescription(0);
      v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v1 = v14;
      *(v14 + 16) = v11;
      v15 = 32;
      do
      {
        v16 = v14 + v15;
        *(v16 + 48) = 0;
        *(v16 + 16) = 0uLL;
        *(v16 + 32) = 0uLL;
        *v16 = 0uLL;
        v15 += 56;
        --v11;
      }

      while (v11);
    }

    v17 = *(v1 + 16);
    v18[0] = v1 + 32;
    v18[1] = v17;
    closure #1 in AudioHardwareStream.availableVirtualFormats.getter(v18, v13, v12, &v19);
    outlined consume of Data._Representation(v13, v12);
    return v1;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t closure #1 in AudioHardwareStream.availableVirtualFormats.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v8 < 1)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

LABEL_23:
    v15 = 0;
LABEL_27:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 * 56) >> 64 != (56 * v6) >> 63)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 >= 56 * v6)
  {
    v13 = 56 * v6;
  }

  else
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_29;
  }

  if (v14 < v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v12 == v14)
  {
    goto LABEL_23;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_27;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareStream.setIsActive(_:)(Swift::Bool a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273616374, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareStream.setVirtualFormat(_:)(AudioStreamBasicDescription *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareStream.setVirtualFormat(_:)(a1, 0x676C6F6273666D74);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareStream.setPhysicalFormat(_:)(AudioStreamBasicDescription *a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareStream.setVirtualFormat(_:)(a1, 0x676C6F6270667420);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareStream.setVirtualFormat(_:)(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  v5 = specialized Data.init(bytes:count:)(v10, 40);
  v7 = v6;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v5, v6);
  result = outlined consume of Data._Representation(v5, v7);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareStream.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareStream.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t dispatch thunk of AudioHardwareStream.setVirtualFormat(_:)(uint64_t *a1)
{
  v2 = *(*v1 + 504);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t dispatch thunk of AudioHardwareStream.setPhysicalFormat(_:)(uint64_t *a1)
{
  v2 = *(*v1 + 512);
  v5 = *a1;
  v3 = *(a1 + 3);
  v6 = *(a1 + 1);
  v7 = v3;
  return v2(&v5);
}

uint64_t AudioHardwareProcess.pid.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F6270706964, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareProcess.bundleID.getter()
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(0x676C6F6270626964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v9 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v0;
}

char *AudioHardwareProcess.devices.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v3 = v20 - v2;
  v4 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F6270647623, 0);
  if (!v0)
  {
    v5 = v4;
    v20[0] = 0;
    v21 = MEMORY[0x29EDCA190];
    v6 = *(v4 + 16);
    if (v6)
    {
      v20[1] = type metadata accessor for AudioHardwareDevice();
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = swift_allocObject();
        *(v9 + 24) = 0;
        *(v9 + 32) = MEMORY[0x29EDCA190];
        *(v9 + 40) = 0;
        *(v9 + 48) = MEMORY[0x29EDCA198];
        v10 = type metadata accessor for ListenerHelper();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        v13 = swift_allocObject();
        v14 = (v13 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        *v14 = 0;
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v14 + v16, *(*(v17 - 8) + 64));
        v18 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v3, v14 + v16);
        *(v9 + 56) = v13;
        *(v9 + 16) = v8;
        MEMORY[0x29EDB0200](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 += 4;
        --v6;
      }

      while (v6);
      v3 = v21;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t AudioHardwareProcess.isRunning.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F627069723FLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareProcess.isRunningInput.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6270697269);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareProcess.isRunningOutput.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F627069726FLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareProcess.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareProcess.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareBox.uid.getter()
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(0x676C6F6262756964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v9 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AudioHardwareBox.transportType.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F627472616ELL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareBox.hasAudio.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6262686175);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareBox.hasVideo.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6262687669);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareBox.hasMIDI.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6262686D69);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareBox.isProtected.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F626270726FLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareBox.enabled.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F6262786F6ELL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

char *AudioHardwareBox.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = v24 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v24[0] = 0;
    v25 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v24[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        v14 = type metadata accessor for ListenerHelper();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        v17 = swift_allocObject();
        v18 = (v17 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        *v18 = 0;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v18 + v20, *(*(v21 - 8) + 64));
        v22 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v18 + v20);
        *(v13 + 56) = v17;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v22);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v25;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareBox.enable()()
{
  v1 = *MEMORY[0x29EDCA608];
  AudioHardwareBox.enable()(1);
  v0 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareBox.disable()()
{
  v1 = *MEMORY[0x29EDCA608];
  AudioHardwareBox.enable()(0);
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareBox.enable()(int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v7 = a1;
  v2 = specialized Data.init(bytes:count:)(&v7, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6262786F6ELL, 0, 0, 0xF000000000000000, v2, v3);
  result = outlined consume of Data._Representation(v2, v4);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareBox.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareBox.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareControl.sliderValue.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F6273647276, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.volumeScalarValue.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareControl.volumeScalarValue.getter(0x676C6F626C637376);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.volumeDecibelValue.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareControl.volumeScalarValue.getter(0x676C6F626C636476);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.volumeDecibelRange.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F626C636472, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.BOOLeanValue.getter()
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = (*(*v0 + 280))(0x676C6F626263766CLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4 & 1;
}

uint64_t AudioHardwareControl.stereoPanValue.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareControl.volumeScalarValue.getter(0x676C6F6273706376);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.volumeScalarValue.getter(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v5, v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setSliderValue(_:)(Swift::UInt32 a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273647276, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setVolumeScalarValue(_:)(Swift::Float a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareControl.setVolumeScalarValue(_:)(0x676C6F626C637376, a1);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setVolumeDecibelValue(_:)(Swift::Float a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareControl.setVolumeScalarValue(_:)(0x676C6F6273647276, a1);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setBooleanValue(_:)(Swift::Bool a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626263766CLL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setSelectedItems(_:)(Swift::OpaquePointer a1)
{
  v2 = _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(a1._rawValue + 32, *(a1._rawValue + 2));
  v4 = v3;
  (*(*v1 + 288))(0x676C6F6273636369, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
}

unint64_t _s10Foundation4DataV6bufferACSRyxG_tclufCs6UInt32V_Tt0g5(unint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 0x2000000000000000) >> 62 == 3)
    {
      v2 = 4 * a2;
      if (4 * a2)
      {
        if (v2 <= 14)
        {
          return specialized Data.InlineData.init(_:)(result, (v2 + result));
        }

        else
        {
          v4 = type metadata accessor for __DataStorage();
          v5 = *(v4 + 48);
          v6 = *(v4 + 52);
          swift_allocObject();
          __DataStorage.init(bytes:length:)();
          if (v2 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            result = swift_allocObject();
            *(result + 16) = 0;
            *(result + 24) = v2;
          }

          else
          {
            return a2 << 34;
          }
        }
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
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.setStereoPanValue(_:)(Swift::Float a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareControl.setVolumeScalarValue(_:)(0x676C6F6273706376, a1);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareControl.setVolumeScalarValue(_:)(uint64_t a1, float a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = a2;
  v4 = specialized Data.init(bytes:count:)(&v9, 4);
  v6 = v5;
  (*(*v2 + 288))(a1, 0, 0, 0xF000000000000000, v4, v5);
  result = outlined consume of Data._Representation(v4, v6);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.convertToDecibels(fromScalar:)(Swift::Float fromScalar)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareControl.convertToDecibels(fromScalar:)(fromScalar, 1.5836601e190);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.convertToScalar(fromDecibels:)(Swift::Float fromDecibels)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwareControl.convertToDecibels(fromScalar:)(fromDecibels, 1.5836601e190);
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.convertToDecibels(fromScalar:)(float a1, double a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = 4;
  v11 = a1;
  *&v14 = specialized Data.init(bytes:count:)(&v11, 4);
  *(&v14 + 1) = v4;
  v10 = 0;
  *&inAddress = a2;
  DWORD2(inAddress) = 0;

  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v14, &v10, v2, &inAddress, &v12);
  v5 = v10;
  if (v10)
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = v5;
    swift_willThrow();
    result = outlined consume of Data._Representation(v14, *(&v14 + 1));
  }

  else
  {
    v8 = v14;
    inAddress = v14;
    outlined copy of Data._Representation(v14, *(&v14 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(inAddress, *(&inAddress + 1));
    result = outlined consume of Data._Representation(v8, *(&v8 + 1));
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.selectorItemName(fromID:)(Swift::UInt32 fromID)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = fromID;
  v4 = specialized Data.init(bytes:count:)(&v17, 4);
  v6 = v5;
  v7 = (*(*v1 + 280))(0x676C6F627363696ELL, 0, v4, v5);
  if (v2)
  {
    outlined consume of Data._Representation(v4, v6);
  }

  else
  {
    v9 = v7;
    v10 = v8;
    v16 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    v18 = v9;
    v19 = v10;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v11;
    outlined consume of Data._Representation(v4, v6);
    outlined consume of Data._Representation(v9, v10);
  }

  v12 = *MEMORY[0x29EDCA608];
  v13 = v1;
  v14 = v3;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareControl.selectorItemKind(fromID:)(Swift::UInt32 fromID)
{
  v15 = *MEMORY[0x29EDCA608];
  v12 = fromID;
  v3 = specialized Data.init(bytes:count:)(&v12, 4);
  v5 = v4;
  v6 = (*(*v1 + 280))(0x676C6F62636C6B6BLL, 0, v3, v4);
  if (v2)
  {
    result = outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v13 = v6;
    v14 = v7;
    v9 = v6;
    v10 = v7;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v3, v5);
    outlined consume of Data._Representation(v9, v10);
    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareControl.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareControl.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, OSStatus *a2, uint64_t a3, AudioObjectPropertyAddress *inAddress, UInt32 *a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&outData + 7) = 0;
      *&outData = 0;
      *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, &outData);

      goto LABEL_19;
    }

    outlined consume of Data._Representation(v9, v8);
    *&outData = v9;
    *(&outData + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_29ED28D90;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v15 = outData;
    v16 = *(outData + 16);
    v17 = __DataStorage._bytes.getter();
    if (!v17)
    {

      __break(1u);
      goto LABEL_26;
    }

    v18 = v17;
    v19 = __DataStorage._offset.getter();
    v20 = __OFSUB__(v16, v19);
    v21 = v16 - v19;
    if (!v20)
    {
      MEMORY[0x29EDB00A0]();
      *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, (v18 + v21));

      v22 = *(&v15 + 1) | 0x8000000000000000;
      *a1 = v15;
LABEL_17:
      a1[1] = v22;
      goto LABEL_19;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {

    outlined consume of Data._Representation(v9, v8);
    *&outData = v9;
    WORD4(outData) = v8;
    BYTE10(outData) = BYTE2(v8);
    BYTE11(outData) = BYTE3(v8);
    BYTE12(outData) = BYTE4(v8);
    BYTE13(outData) = BYTE5(v8);
    BYTE14(outData) = BYTE6(v8);
    *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, &outData);
    v11 = outData;
    v12 = DWORD2(outData) | ((WORD6(outData) | (BYTE14(outData) << 16)) << 32);

    *a1 = v11;
    a1[1] = v12;
LABEL_19:
    v32 = *MEMORY[0x29EDCA608];
    return result;
  }

  v23 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  outlined copy of Data._Representation(v9, v8);
  outlined consume of Data._Representation(v9, v8);
  *a1 = xmmword_29ED28D90;
  outlined consume of Data._Representation(0, 0xC000000000000000);

  v24 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v24 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_24:
      __break(1u);
    }

    v25 = type metadata accessor for __DataStorage();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v23 = v28;
  }

  if (v24 < v9)
  {
    goto LABEL_21;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v29 = result;
    v30 = __DataStorage._offset.getter();
    v31 = v9 - v30;
    if (!__OFSUB__(v9, v30))
    {
      MEMORY[0x29EDB00A0]();
      *a2 = AudioObjectGetPropertyData(*(a3 + 16), inAddress, 0, 0, a5, (v29 + v31));

      v22 = v23 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t specialized Data.InlineData.init(_:)(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = specialized Data.InlineData.init(count:)(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AudioHardwareDevice.configurationApplication.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F6263617070);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.modelUID.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626D756964);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.configurationApplication.getter(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = (*(*v2 + 280))(a1, 0, 0, 0xF000000000000000);
  if (!v3)
  {
    v6 = v4;
    v7 = v5;
    v10 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v6, v7);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v1;
}

uint64_t AudioHardwareDevice.canBeDefaultInputDevice.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x696E707464666C74);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.canBeDefaultOutputDevice.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x6F75747064666C74);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.canBeDefaultSoundEffectsDevice.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x6F75747073666C74);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

char *AudioHardwareDevice.relatedDevices.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v9 = v26 - v8;
  v10 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v3)
  {
    v11 = v10;
    v26[0] = 0;
    v27 = MEMORY[0x29EDCA190];
    v12 = *(v10 + 16);
    if (v12)
    {
      v26[1] = a3(a2);
      v13 = 32;
      do
      {
        v14 = *(v11 + v13);
        v15 = swift_allocObject();
        *(v15 + 24) = 0;
        *(v15 + 32) = MEMORY[0x29EDCA190];
        *(v15 + 40) = 0;
        *(v15 + 48) = MEMORY[0x29EDCA198];
        v16 = type metadata accessor for ListenerHelper();
        v17 = *(v16 + 48);
        v18 = *(v16 + 52);
        v19 = swift_allocObject();
        v20 = (v19 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
        *v20 = 0;
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v20 + v22, *(*(v23 - 8) + 64));
        v24 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v9, v20 + v22);
        *(v15 + 56) = v19;
        *(v15 + 16) = v14;
        MEMORY[0x29EDB0200](v24);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 += 4;
        --v12;
      }

      while (v12);
      v9 = v27;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v9;
}

uint64_t AudioHardwareDevice.inputSafetyOffset.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x696E707473616674);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.outputSafetyOffset.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x6F75747073616674);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v9);
  v18 = v10;
  v11 = (*(*v1 + 280))(0x676C6F6269636F6ELL, 0, 0, 0xF000000000000000);
  if (v2)
  {
    (*(v5 + 8))(v8, v4);

    v18 = v2;
    MEMORY[0x29EDB06A0](v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      MEMORY[0x29EDB0690](v2);

      (*(v5 + 56))(a1, 1, 1, v4);
    }

    result = MEMORY[0x29EDB0690](v18);
  }

  else
  {
    v19 = v11;
    v20 = v12;
    v14 = v11;
    v15 = v12;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v14, v15);
    (*(v5 + 8))(v8, v4);

    result = (*(v5 + 56))(a1, 0, 1, v4);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.isHidden.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F626869646ELL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.isRunningInAProcess.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62676F6E65);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.hogModePID.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F626F696E6BLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    result = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.bufferFrameSize.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F626673697ALL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.bufferFrameSizeRange.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F6266737A23, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.usesVariableBufferFrameSizes.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F627666737ALL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.largestVariableBufferFrameSize.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F627666737ALL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.ioCycleUsage.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F626E637963, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.inputStreamConfiguration.getter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMd, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMR);
  v5 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v33 - v6;
  v8 = type metadata accessor for UnsafeMutableAudioBufferListPointer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8]();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 280))(a1, 0, 0, 0xF000000000000000);
  if (v2)
  {
    return v4;
  }

  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2)
    {
      v16 = 0;
      goto LABEL_12;
    }

    v18 = *(result + 16);
    v17 = *(result + 24);
    v16 = v17 - v18;
    if (!__OFSUB__(v17, v18))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v15)
  {
    v16 = BYTE6(v14);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_25;
  }

  v16 = HIDWORD(result) - result;
LABEL_12:
  if (!__OFSUB__(v16, 8))
  {
    v38 = 0;
    if (v16 - 8 < 16)
    {
      outlined consume of Data._Representation(result, v14);
      return MEMORY[0x29EDCA190];
    }

    else
    {
      v19 = result;
      v20 = v14;
      v21 = static AudioBufferList.allocate(maximumBuffers:)();
      v36 = v19;
      v37 = v20;
      v39[0] = v19;
      v39[1] = v20;
      MEMORY[0x29EDB0190](v21);
      lazy protocol witness table accessor for type Data and conformance Data();
      DataProtocol.copyBytes(to:)();
      v35 = v9;
      (*(v9 + 16))(v7, v12, v8);
      v22 = *(v4 + 36);
      lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer();
      v34 = v12;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v4 = MEMORY[0x29EDCA190];
      while (*&v7[v22] != v39[0])
      {
        v23 = dispatch thunk of Collection.subscript.read();
        v25 = *v24;
        v26 = v24[1];
        v23(v39, 0);
        dispatch thunk of Collection.formIndex(after:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 16) + 1, 1, v4);
        }

        v28 = *(v4 + 16);
        v27 = *(v4 + 24);
        if (v28 >= v27 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v4);
        }

        *(v4 + 16) = v28 + 1;
        v29 = v4 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        dispatch thunk of Collection.endIndex.getter();
      }

      v30 = outlined destroy of [PropertyListenerDelegate](v7, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMd, &_ss16IndexingIteratorVy9CoreAudio013UnsafeMutableD17BufferListPointerVGMR);
      v31 = v34;
      v32 = MEMORY[0x29EDB0190](v30);
      free(v32);
      outlined consume of Data._Representation(v36, v37);
      (*(v35 + 8))(v31, v8);
    }

    return v4;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t AudioHardwareDevice.actualSampleRate.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F6261737274, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.clock.getter()
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(0x676C6F6261706364, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v13 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    outlined consume of Data._Representation(v5, v6);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v0 = (*(*static AudioHardwareSystem.shared + 648))(v7, v9);

    if (!v0)
    {
      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      v0 = swift_allocError();
      *v12 = 1852797029;
      *(v12 + 8) = xmmword_29ED28DE0;
      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return v0;
}

unint64_t AudioHardwareDevice.workgroup.getter()
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = os_workgroup_create_with_port(0, 0);
  v10 = v2;
  v3 = (*(*v0 + 280))(0x676C6F626F737767, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = v10;
    if (v10)
    {
      outlined consume of Data._Representation(v5, v6);
      goto LABEL_5;
    }

    v0 = 0x800000029ED296D0;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *v9 = 1852797029;
    *(v9 + 8) = 0xD000000000000013;
    *(v9 + 16) = 0x800000029ED296D0;
    swift_willThrow();

    outlined consume of Data._Representation(v5, v6);
    v2 = 0;
  }

LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AudioHardwareDevice.isProcessInputMuted.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x696E70746170706DLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.isProcessOutputMuted.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x6F7574706170706DLL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareDevice.currentTime.getter@<X0>(_OWORD *a1@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  memset(&v9, 0, sizeof(v9));
  v9.mFlags = 3;
  result = AudioDeviceGetCurrentTime(*(v1 + 16), &v9);
  if (result)
  {
    v4 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = v4;
    result = swift_willThrow();
  }

  else
  {
    v6 = *&v9.mRateScalar;
    *a1 = *&v9.mSampleTime;
    a1[1] = v6;
    v7 = *&v9.mSMPTETime.mHours;
    a1[2] = *&v9.mSMPTETime.mSubframes;
    a1[3] = v7;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setPreferredInputChannelsForStereo(_:)(Swift::OpaquePointer a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareDevice.setPreferredInputChannelsForStereo(_:)(a1._rawValue, 0x696E707464636832);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setPreferredOutputChannelsForStereo(_:)(Swift::OpaquePointer a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareDevice.setPreferredInputChannelsForStereo(_:)(a1._rawValue, 0x6F75747064636832);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareDevice.setPreferredInputChannelsForStereo(_:)(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = a1;
  v4 = specialized Data.init(bytes:count:)(v9, 8);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5);
  result = outlined consume of Data._Representation(v4, v6);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setBufferFrameSize(_:)(Swift::Int a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a1 < 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (HIDWORD(a1))
  {
    goto LABEL_5;
  }

  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626673697ALL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setIOCycleUsage(_:)(Swift::Float a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626E637963, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

void AudioHardwareDevice.setClock(_:)(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v3 = (*(*a1 + 424))();
  if (!v2)
  {
    v4 = MEMORY[0x29EDB01D0](v3);

    v9[0] = v4;
    v5 = specialized Data.init(bytes:count:)(v9, 8);
    v7 = v6;
    (*(*v1 + 288))(0x676C6F6261706364, 0, 0, 0xF000000000000000, v5, v6);
    outlined consume of Data._Representation(v5, v7);
  }

  v8 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setIsProcessInputMuted(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareDevice.setIsProcessInputMuted(_:)(a1, 0x696E70746170706DLL);
  v1 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.setIsProcessOutputMuted(_:)(Swift::Bool a1)
{
  v2 = *MEMORY[0x29EDCA608];
  AudioHardwareDevice.setIsProcessInputMuted(_:)(a1, 0x6F7574706170706DLL);
  v1 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareDevice.setIsProcessInputMuted(_:)(char a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v9 = a1 & 1;
  v4 = specialized Data.init(bytes:count:)(&v9, 4);
  v6 = v5;
  (*(*v2 + 288))(a2, 0, 0, 0xF000000000000000, v4, v5);
  result = outlined consume of Data._Representation(v4, v6);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.toggleHogMode()()
{
  v9 = *MEMORY[0x29EDCA608];
  *&inAddress.mSelector = 0x676C6F626F696E6BLL;
  inAddress.mElement = 0;
  inData = xmmword_29ED28DF0;
  v1 = AudioObjectSetPropertyData(*(v0 + 16), &inAddress, 0, 0, 4u, &inData);
  if (v1)
  {
    v2 = v1;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v2;
    swift_willThrow();
    result = outlined consume of Data._Representation(inData, *(&inData + 1));
  }

  else
  {
    v7 = inData;
    outlined copy of Data._Representation(inData, *(&inData + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v7, *(&v7 + 1));
    outlined consume of Data._Representation(inData, *(&inData + 1));
    result = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.translateTime(_:)(AudioTimeStamp *__return_ptr retstr, AudioTimeStamp *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(&outTime, 0, sizeof(outTime));
  outTime.mFlags = 3;
  v4 = *&a2->mRateScalar;
  *&v12.mSampleTime = *&a2->mSampleTime;
  *&v12.mRateScalar = v4;
  v5 = *&a2->mSMPTETime.mHours;
  *&v12.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&v12.mSMPTETime.mHours = v5;
  v6 = AudioDeviceTranslateTime(*(v2 + 16), &v12, &outTime);
  if (v6)
  {
    v7 = v6;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = v7;
    swift_willThrow();
  }

  else
  {
    v9 = *&outTime.mRateScalar;
    *&retstr->mSampleTime = *&outTime.mSampleTime;
    *&retstr->mRateScalar = v9;
    v10 = *&outTime.mSMPTETime.mHours;
    *&retstr->mSMPTETime.mSubframes = *&outTime.mSMPTETime.mSubframes;
    *&retstr->mSMPTETime.mHours = v10;
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareDevice.nearestStartTime(atTime:withFlags:)(AudioTimeStamp *__return_ptr retstr, AudioTimeStamp *atTime, Swift::UInt32 withFlags)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *&atTime->mRateScalar;
  *&v13.mSampleTime = *&atTime->mSampleTime;
  *&v13.mRateScalar = v5;
  v6 = *&atTime->mSMPTETime.mHours;
  *&v13.mSMPTETime.mSubframes = *&atTime->mSMPTETime.mSubframes;
  *&v13.mSMPTETime.mHours = v6;
  NearestStartTime = AudioDeviceGetNearestStartTime(*(v3 + 16), &v13, withFlags);
  if (NearestStartTime)
  {
    v8 = NearestStartTime;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = v8;
    swift_willThrow();
  }

  else
  {
    v10 = *&v13.mRateScalar;
    *&retstr->mSampleTime = *&v13.mSampleTime;
    *&retstr->mRateScalar = v10;
    v11 = *&v13.mSMPTETime.mHours;
    *&retstr->mSMPTETime.mSubframes = *&v13.mSMPTETime.mSubframes;
    *&retstr->mSMPTETime.mHours = v11;
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareDevice.start(at:flags:IOProcID:)@<X0>(UInt32 inFlags@<W1>, AudioDeviceIOProcID inProcID@<X2>, _OWORD *a3@<X0>, uint64_t a4@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = a3[1];
  *&ioRequestedStartTime.mSampleTime = *a3;
  *&ioRequestedStartTime.mRateScalar = v6;
  v7 = a3[3];
  *&ioRequestedStartTime.mSMPTETime.mSubframes = a3[2];
  *&ioRequestedStartTime.mSMPTETime.mHours = v7;
  result = AudioDeviceStartAtTime(*(v4 + 16), inProcID, &ioRequestedStartTime, inFlags);
  if (result)
  {
    v9 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = v9;
    result = swift_willThrow();
  }

  else
  {
    v11 = *&ioRequestedStartTime.mRateScalar;
    *a4 = *&ioRequestedStartTime.mSampleTime;
    *(a4 + 16) = v11;
    v12 = *&ioRequestedStartTime.mSMPTETime.mHours;
    *(a4 + 32) = *&ioRequestedStartTime.mSMPTETime.mSubframes;
    *(a4 + 48) = v12;
    *(a4 + 64) = 0;
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareDevice.start(IOProcID:)(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  result = a2(*(v2 + 16), a1);
  if (result)
  {
    v4 = result;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = v4;
    return swift_willThrow();
  }

  return result;
}

uint64_t AudioHardwareDevice.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareDevice.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11AudioBufferVGMd, &_ss23_ContiguousArrayStorageCySo11AudioBufferVGMR);
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
    v10 = MEMORY[0x29EDCA190];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer)
  {
    type metadata accessor for UnsafeMutableAudioBufferListPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableAudioBufferListPointer and conformance UnsafeMutableAudioBufferListPointer);
  }

  return result;
}

unint64_t specialized Data.InlineData.init(count:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of AudioHardwareDevice.translateTime(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 800);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t dispatch thunk of AudioHardwareDevice.nearestStartTime(atTime:withFlags:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 808);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t dispatch thunk of AudioHardwareDevice.start(at:flags:IOProcID:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 44);
  v7 = *(*v1 + 824);
  v10[0] = *a1;
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v11 = v5;
  v12 = *(a1 + 36);
  v13 = v6;
  v8 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v8;
  return v7(v10);
}

uint64_t AudioHardwarePlugin.bundleID.getter()
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(0x676C6F6270696964, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v9 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v0;
}

char *AudioHardwarePlugin.devices.getter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = v24 - v6;
  v8 = AudioHardwareObject.getUInt32ArrayData(_:)(a1, 0);
  if (!v2)
  {
    v9 = v8;
    v24[0] = 0;
    v25 = MEMORY[0x29EDCA190];
    v10 = *(v8 + 16);
    if (v10)
    {
      v24[1] = a2(0);
      v11 = 32;
      do
      {
        v12 = *(v9 + v11);
        v13 = swift_allocObject();
        *(v13 + 24) = 0;
        *(v13 + 32) = MEMORY[0x29EDCA190];
        *(v13 + 40) = 0;
        *(v13 + 48) = MEMORY[0x29EDCA198];
        v14 = type metadata accessor for ListenerHelper();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        v17 = swift_allocObject();
        v18 = (v17 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        *v18 = 0;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v18 + v20, *(*(v21 - 8) + 64));
        v22 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v7, v18 + v20);
        *(v13 + 56) = v17;
        *(v13 + 16) = v12;
        MEMORY[0x29EDB0200](v22);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 += 4;
        --v10;
      }

      while (v10);
      v7 = v25;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v7;
}

void AudioHardwarePlugin.device(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwarePlugin.device(forUID:)(a1, a2, 0x676C6F6275696464);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwarePlugin.box(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwarePlugin.device(forUID:)(a1, a2, 0x676C6F6275696462);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwarePlugin.clock(forUID:)(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x29EDCA608];
  AudioHardwarePlugin.device(forUID:)(a1, a2, 0x676C6F6275696463);
  v2 = *MEMORY[0x29EDCA608];
}

void AudioHardwarePlugin.device(forUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDB01D0]();
  v16[0] = v6;
  v7 = specialized Data.init(bytes:count:)(v16, 8);
  v9 = v8;
  v10 = (*(*v3 + 280))(a3, 0, v7, v8);
  if (v4)
  {
    outlined consume of Data._Representation(v7, v9);
  }

  else
  {
    v12 = v10;
    v13 = v7;
    v14 = v11;
    outlined consume of Data._Representation(v13, v9);

    v16[0] = v12;
    v16[1] = v14;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v12, v14);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwarePlugin.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwarePlugin.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareAggregateDevice.subdevices.getter()
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = (*(*v0 + 280))(0x676C6F6267727570, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v27 = v3;
    v28 = v4;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v5 = MEMORY[0x29EDCA190];
    v34 = MEMORY[0x29EDCA190];
    if (MEMORY[0x29EDCA190] >> 62)
    {
LABEL_24:
      v32 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 < 0)
      {
        v23 = v5;
      }

      else
      {
        v23 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = MEMORY[0x29EDB0300](v23);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v31 = v5 & 0xC000000000000001;
        v2 = MEMORY[0x29EDCA190];
        v29 = v6;
        v30 = v5;
        do
        {
          v26 = v2;
          while (1)
          {
            if (v31)
            {
              v8 = MEMORY[0x29EDB02E0](v7, v5);
            }

            else
            {
              if (v7 >= *(v32 + 16))
              {
                goto LABEL_23;
              }

              v8 = *(v5 + 8 * v7 + 32);
            }

            v9 = v8;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v33 = v7 + 1;
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v10 = static AudioHardwareSystem.shared;
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;
            v14 = *(*v10 + 640);
            v15 = v9;
            v16 = v14(v11, v13);

            if (v16)
            {
              break;
            }

            v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v19 = v18;

            v20 = (*(*v10 + 648))(v17, v19);

            if (v20)
            {
              goto LABEL_18;
            }

            ++v7;
            v5 = v30;
            if (v33 == v29)
            {
              v2 = v26;
              goto LABEL_29;
            }
          }

LABEL_18:

          MEMORY[0x29EDB0200](v21);
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v22 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v2 = v34;
          v5 = v30;
          ++v7;
        }

        while (v33 != v29);
        goto LABEL_29;
      }
    }

    else
    {
      v32 = MEMORY[0x29EDCA190] & 0xFFFFFFFFFFFFFF8;
      v6 = *((MEMORY[0x29EDCA190] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v2 = MEMORY[0x29EDCA190];
LABEL_29:

    outlined consume of Data._Representation(v27, v28);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t AudioHardwareAggregateDevice.activeSubdevices.getter()
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v4 = v22 - v3;
  v5 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F6261677270, 0);
  if (!v1)
  {
    v6 = v5;
    v22[0] = 0;
    v23 = MEMORY[0x29EDCA190];
    v7 = *(v5 + 16);
    if (v7)
    {
      v22[1] = type metadata accessor for AudioHardwareDevice();
      v8 = 32;
      do
      {
        v9 = *(v6 + v8);
        v10 = swift_allocObject();
        *(v10 + 24) = 0;
        *(v10 + 32) = MEMORY[0x29EDCA190];
        *(v10 + 40) = 0;
        *(v10 + 48) = MEMORY[0x29EDCA198];
        v11 = type metadata accessor for ListenerHelper();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        v14 = swift_allocObject();
        v15 = (v14 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        *v15 = 0;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v15 + v17, *(*(v18 - 8) + 64));
        v19 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v4, v15 + v17);
        *(v10 + 56) = v14;
        *(v10 + 16) = v9;
        MEMORY[0x29EDB0200](v19);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 += 4;
        --v7;
      }

      while (v7);
      v20 = v23;

      if (!(v20 >> 62))
      {
        goto LABEL_8;
      }
    }

    else
    {

      v20 = MEMORY[0x29EDCA190];
      if (!(MEMORY[0x29EDCA190] >> 62))
      {
LABEL_8:

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AudioHardwareClock();
        v0 = v20;
LABEL_9:

        return v0;
      }
    }

    type metadata accessor for AudioHardwareClock();

    v0 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_9;
  }

  return v0;
}

uint64_t AudioHardwareAggregateDevice.clockSource.getter()
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = (*(*v0 + 280))(0x676C6F62616D7374, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v3;
    v6 = v4;
    v14 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    outlined consume of Data._Representation(v5, v6);

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v10 = static AudioHardwareSystem.shared;
    v11 = (*(*static AudioHardwareSystem.shared + 640))(v7, v9);
    v2 = v11;
    if (!v11)
    {
      v2 = (*(*v10 + 648))(v7, v9);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v2;
}

unint64_t AudioHardwareAggregateDevice.composition.getter()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = (*(*v0 + 280))(0x676C6F6261636F6DLL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x29EDCA190]);
    outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareAggregateDevice.setSubdevices(_:)(Swift::OpaquePointer a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v18 = MEMORY[0x29EDCA190];
  if (a1._rawValue >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x29EDB0300](rawValue))
  {
    v4 = 0;
    while ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x29EDB02E0](v4, a1._rawValue);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v7 = (*(*v5 + 424))();
      if (v1)
      {

        goto LABEL_23;
      }

      MEMORY[0x29EDB01D0](v7);

      MEMORY[0x29EDB0200](v8);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v4;
      if (v6 == i)
      {
        goto LABEL_22;
      }
    }

    if (v4 >= *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v5 = *(a1._rawValue + v4 + 4);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    if (a1._rawValue < 0)
    {
      rawValue = a1._rawValue;
    }

    else
    {
      rawValue = a1._rawValue & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_22:
  type metadata accessor for CFStringRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = isa;
  v11 = specialized Data.init(bytes:count:)(&v17, 8);
  v13 = v12;
  (*(*v16 + 288))(0x676C6F6267727570, 0, 0, 0xF000000000000000, v11, v12);
  outlined consume of Data._Representation(v11, v13);

LABEL_23:
  v14 = *MEMORY[0x29EDCA608];
}

void AudioHardwareAggregateDevice.setClockSource(_:)()
{
  v10[1] = *MEMORY[0x29EDCA608];
  type metadata accessor for AudioHardwareClock();
  if (swift_dynamicCastClass())
  {
    v2 = *swift_dynamicCastClassUnconditional();
    v3 = (*(v2 + 424))();
    if (!v1)
    {
      v4 = MEMORY[0x29EDB01D0](v3);

      v10[0] = v4;
      v5 = specialized Data.init(bytes:count:)(v10, 8);
      v7 = v6;
      (*(*v0 + 288))(0x676C6F62616D7374, 0, 0, 0xF000000000000000, v5, v6);
      outlined consume of Data._Representation(v5, v7);
    }
  }

  else
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *v8 = 1852797029;
    *(v8 + 8) = 0xD000000000000053;
    *(v8 + 16) = 0x800000029ED29750;
    swift_willThrow();
  }

  v9 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareAggregateDevice.setComposition(_:)(Swift::OpaquePointer a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7[0] = isa;
  v3 = specialized Data.init(bytes:count:)(v7, 8);
  v5 = v4;
  (*(*v1 + 288))(0x676C6F6261636F6DLL, 0, 0, 0xF000000000000000, v3, v4);
  outlined consume of Data._Representation(v3, v5);

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t AudioHardwareAggregateDevice.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareAggregateDevice.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t AudioHardwareObject.init(id:)(int a1)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = &v17 - v4;
  *(v1 + 24) = 0;
  v6 = MEMORY[0x29EDCA190];
  *(v1 + 32) = MEMORY[0x29EDCA190];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo26AudioObjectPropertyAddressV_ys6UInt32V_SPyADGtcTt0g5Tf4g_n(v6);
  *(v1 + 40) = 0;
  *(v1 + 48) = v7;
  v8 = type metadata accessor for ListenerHelper();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = (v11 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  *v12 = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  bzero(v12 + v14, *(*(v15 - 8) + 64));
  outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v5, v12 + v14);
  *(v1 + 56) = v11;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t AudioHardwareObject.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareObject.delegates.getter()
{
  os_unfair_lock_lock((v0 + 24));
  v1 = *(v0 + 32);

  os_unfair_lock_unlock((v0 + 24));
  return v1;
}

void AudioHardwareObject.delegates.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;

  os_unfair_lock_unlock((v1 + 24));
}

void (*AudioHardwareObject.delegates.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 24));
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 24));
  *a1 = v3;
  return AudioHardwareObject.delegates.modify;
}

void AudioHardwareObject.delegates.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    os_unfair_lock_lock((v3 + 24));
    v5 = *(v3 + 32);

    *(v3 + 32) = v2;
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    os_unfair_lock_lock((v3 + 24));
    v6 = *(v3 + 32);

    *(v3 + 32) = v2;

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t AudioHardwareObject.baseClassID.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F6262636C73);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.classID.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F62636C6173);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.owner.getter()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = (*(*v0 + 280))(0x676C6F6273746476, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v4, v5);
    v0 = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AudioHardwareObject.name.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626C6E616DLL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.modelName.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626C6D6F64);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.manufacturer.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626C6D616BLL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

char *AudioHardwareObject.ownedObjects.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v3 = v20 - v2;
  v4 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F626F776E64, 0);
  if (!v0)
  {
    v5 = v4;
    v20[0] = 0;
    v21 = MEMORY[0x29EDCA190];
    v6 = *(v4 + 16);
    if (v6)
    {
      v20[1] = type metadata accessor for AudioHardwareObject();
      v7 = 32;
      do
      {
        v8 = *(v5 + v7);
        v9 = swift_allocObject();
        *(v9 + 24) = 0;
        *(v9 + 32) = MEMORY[0x29EDCA190];
        *(v9 + 40) = 0;
        *(v9 + 48) = MEMORY[0x29EDCA198];
        v10 = type metadata accessor for ListenerHelper();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        v13 = swift_allocObject();
        v14 = (v13 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
        *v14 = 0;
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v14 + v16, *(*(v17 - 8) + 64));
        v18 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v3, v14 + v16);
        *(v9 + 56) = v13;
        *(v9 + 16) = v8;
        MEMORY[0x29EDB0200](v18);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v7 += 4;
        --v6;
      }

      while (v6);
      v3 = v21;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v3;
}

uint64_t AudioHardwareObject.isIdentifying.getter()
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = (*(*v0 + 280))(0x676C6F626964656ELL, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v5 = v2;
    v6 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    outlined consume of Data._Representation(v5, v6);
    v4 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];
  return v4 & 1;
}

uint64_t AudioHardwareObject.serialNumber.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F62736E756DLL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.firmwareVersion.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626677766ELL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.creatorBundleID.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareDevice.configurationApplication.getter(0x676C6F626F706C67);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setName(_:)(Swift::String a1)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB01D0](a1._countAndFlagsBits, a1._object);
  v7[0] = v2;
  v3 = specialized Data.init(bytes:count:)(v7, 8);
  v5 = v4;
  (*(*v1 + 288))(0x676C6F626C6E616DLL, 0, 0, 0xF000000000000000, v3, v4);
  outlined consume of Data._Representation(v3, v5);

  v6 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setIsIdentifying(_:)(Swift::Bool a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v6 = a1;
  v2 = specialized Data.init(bytes:count:)(&v6, 4);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626964656ELL, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.setCreatorBundleID(_:)(Swift::String a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 160))(a1._countAndFlagsBits, a1._object);
  if (!v2)
  {
    v4 = MEMORY[0x29EDB01D0](v3);

    v9[0] = v4;
    v5 = specialized Data.init(bytes:count:)(v9, 8);
    v7 = v6;
    (*(*v1 + 288))(0x676C6F626F706C67, 0, 0, 0xF000000000000000, v5, v6);
    outlined consume of Data._Representation(v5, v7);
  }

  v8 = *MEMORY[0x29EDCA608];
}

Swift::Bool __swiftcall AudioHardwareObject.hasProperty(address:)(AudioObjectPropertyAddress address)
{
  v5 = *MEMORY[0x29EDCA608];
  inAddress = address;
  result = AudioObjectHasProperty(*(v1 + 16), &inAddress) != 0;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareObject.isPropertySettable(address:)(AudioObjectPropertyAddress address)
{
  v10 = *MEMORY[0x29EDCA608];
  outIsSettable = 0;
  inAddress = address;
  IsPropertySettable = AudioObjectIsPropertySettable(*(v1 + 16), &inAddress, &outIsSettable);
  if (IsPropertySettable)
  {
    v3 = IsPropertySettable;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *v4 = v3;
    swift_willThrow();
  }

  else
  {
    v5 = outIsSettable != 0;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t AudioHardwareObject.propertyDataSize(address:qualifier:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4)
{
  v25 = *MEMORY[0x29EDCA608];
  outDataSize = 0;
  if (a4 >> 60 == 15)
  {
    *&inAddress.mSelector = a1;
    inAddress.mElement = a2;
    PropertyDataSize = AudioObjectGetPropertyDataSize(*(v4 + 16), &inAddress, 0, 0, &outDataSize);
    if (!PropertyDataSize)
    {
      goto LABEL_30;
    }

LABEL_33:
    v19 = PropertyDataSize;
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *v20 = v19;
    result = swift_willThrow();
    goto LABEL_34;
  }

  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      LODWORD(v8) = 0;
      goto LABEL_17;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v7)
  {
    LODWORD(v8) = BYTE6(a4);
    goto LABEL_17;
  }

  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v8 = HIDWORD(a3) - a3;
LABEL_13:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v8))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_17:
  *&inAddress.mSelector = a1;
  inAddress.mElement = a2;
  if (v7 <= 1)
  {
    if (!v7)
    {
      inQualifierData[0] = a3;
      LOWORD(inQualifierData[1]) = a4;
      BYTE2(inQualifierData[1]) = BYTE2(a4);
      BYTE3(inQualifierData[1]) = BYTE3(a4);
      BYTE4(inQualifierData[1]) = BYTE4(a4);
      BYTE5(inQualifierData[1]) = BYTE5(a4);
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v7 != 2)
  {
    memset(inQualifierData, 0, 14);
LABEL_32:
    PropertyDataSize = AudioObjectGetPropertyDataSize(*(v4 + 16), &inAddress, v8, inQualifierData, &outDataSize);
    if (PropertyDataSize)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v11 = v4;
  v12 = *(a3 + 16);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v4 = a4 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = __DataStorage._offset.getter();
    v15 = v12 - v14;
    if (!__OFSUB__(v12, v14))
    {
LABEL_28:
      v13 += v15;
      goto LABEL_29;
    }

    __break(1u);
LABEL_25:
    v16 = a3;
    if (a3 <= a3 >> 32)
    {
      v11 = v4;
      v13 = __DataStorage._bytes.getter();
      if (!v13)
      {
        goto LABEL_29;
      }

      v17 = __DataStorage._offset.getter();
      v15 = v16 - v17;
      if (!__OFSUB__(v16, v17))
      {
        goto LABEL_28;
      }

LABEL_39:
      __break(1u);
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_29:
  MEMORY[0x29EDB00A0]();
  PropertyDataSize = AudioObjectGetPropertyDataSize(*(v11 + 16), &inAddress, v8, v13, &outDataSize);
  if (PropertyDataSize)
  {
    goto LABEL_33;
  }

LABEL_30:
  result = outDataSize;
LABEL_34:
  v21 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t AudioHardwareObject.propertyData(address:qualifier:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  result = (*(*v4 + 272))();
  if (!v5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      ioDataSize = result;
      v22 = specialized Data.init(count:)(result);
      v23 = v11;
      if (a4 >> 60 == 15)
      {
LABEL_5:
        v12 = 0;
        goto LABEL_17;
      }

      v13 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_5;
        }

        v15 = *(a3 + 16);
        v14 = *(a3 + 24);
        v12 = v14 - v15;
        if (!__OFSUB__(v14, v15))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v12 = BYTE6(a4);
        goto LABEL_17;
      }

      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_25;
      }

      v12 = HIDWORD(a3) - a3;
LABEL_15:
      if ((v12 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v12))
        {
LABEL_17:
          inAddress.mElement = a2;
          v20 = 0;
          *&inAddress.mSelector = a1;
          outlined copy of Data?(a3, a4);

          specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v22, a3, a4, &v20, v4, &inAddress, v12, &ioDataSize);
          v16 = v20;
          if (v20)
          {
            lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
            swift_allocError();
            *(v17 + 8) = 0;
            *(v17 + 16) = 0;
            *v17 = v16;
            swift_willThrow();
            result = outlined consume of Data._Representation(v22, v23);
          }

          else
          {
            Data._Representation.count.setter();
            result = v22;
          }

          goto LABEL_19;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, AudioObjectPropertyElement a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  inQualifierData[2] = *MEMORY[0x29EDCA608];
  v7 = a6 >> 62;
  if ((a6 >> 62) <= 1)
  {
    if (!v7)
    {
      LODWORD(v8) = BYTE6(a6);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
LABEL_13:
    LODWORD(v8) = 0;
    goto LABEL_14;
  }

  v10 = *(a5 + 16);
  v9 = *(a5 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v8 = HIDWORD(a5) - a5;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v8))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  if (a4 >> 60 == 15)
  {
LABEL_15:
    LODWORD(v11) = 0;
    goto LABEL_27;
  }

  v12 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v12)
    {
      LODWORD(v11) = BYTE6(a4);
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v12 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(a3 + 16);
  v13 = *(a3 + 24);
  v11 = v13 - v14;
  if (__OFSUB__(v13, v14))
  {
    __break(1u);
LABEL_23:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_52;
    }

    v11 = HIDWORD(a3) - a3;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (HIDWORD(v11))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_27:
  *&inAddress.mSelector = a1;
  inAddress.mElement = a2;
  inQualifierData[0] = a3;
  inQualifierData[1] = a4;
  if (v7 <= 1)
  {
    if (!v7)
    {
      inData[0] = a5;
      LOWORD(inData[1]) = a6;
      BYTE2(inData[1]) = BYTE2(a6);
      BYTE3(inData[1]) = BYTE3(a6);
      BYTE4(inData[1]) = BYTE4(a6);
      BYTE5(inData[1]) = BYTE5(a6);
LABEL_41:
      v25 = *(v6 + 16);
      v28 = inData;
      v26 = v11;
      v27 = v8;
      goto LABEL_42;
    }

    v20 = a5;
    if (a5 <= a5 >> 32)
    {
      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (!__OFSUB__(v20, v23))
        {
          v19 = (v20 - v23 + v22);
          result = MEMORY[0x29EDB00A0]();
          if (v19)
          {
            goto LABEL_39;
          }

LABEL_56:
          __break(1u);
          return result;
        }

        goto LABEL_51;
      }

LABEL_55:
      result = MEMORY[0x29EDB00A0]();
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_49;
  }

  if (v7 != 2)
  {
    memset(inData, 0, 14);
    goto LABEL_41;
  }

  v15 = *(a5 + 16);
  v16 = __DataStorage._bytes.getter();
  if (!v16)
  {
    MEMORY[0x29EDB00A0]();
    goto LABEL_54;
  }

  v17 = v16;
  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
  }

  v19 = (v15 - v18 + v17);
  MEMORY[0x29EDB00A0]();
  if (!v19)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_39:
  v25 = *(v6 + 16);
  v26 = v11;
  v27 = v8;
  v28 = v19;
LABEL_42:
  result = AudioObjectSetPropertyData(v25, &inAddress, v26, inQualifierData, v27, v28);
  v29 = result;
  if (result)
  {
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = v29;
    result = swift_willThrow();
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 156) = a2;
  *(v6 + 72) = a1;
  v7 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](AudioHardwareObject.setPropertyData(address:qualifier:data:), 0, 0);
}

uint64_t AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  v41 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 96);
  v2 = *v1;
  v3 = v1[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      LODWORD(v5) = BYTE6(v3);
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
LABEL_13:
    LODWORD(v5) = 0;
    goto LABEL_14;
  }

  v7 = v2 + 16;
  v2 = *(v2 + 16);
  v6 = *(v7 + 8);
  v5 = v6 - v2;
  if (__OFSUB__(v6, v2))
  {
    __break(1u);
LABEL_8:
    v8 = __OFSUB__(HIDWORD(v2), v2);
    v9 = HIDWORD(v2) - v2;
    if (v8)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    v5 = v9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v5))
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v10 = *(v0 + 88);
  if (v10 >> 60 == 15)
  {
LABEL_15:
    LODWORD(v11) = 0;
    goto LABEL_16;
  }

  v23 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_15;
    }

    v35 = *(*(v0 + 80) + 16);
    v36 = *(*(v0 + 80) + 24);
    v11 = v36 - v35;
    if (!__OFSUB__(v36, v35))
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v23)
  {
    LODWORD(v11) = BYTE6(v10);
    goto LABEL_16;
  }

  v37 = *(v0 + 80);
  v38 = *(v0 + 84);
  v8 = __OFSUB__(v38, v37);
  v39 = v38 - v37;
  if (v8)
  {
    goto LABEL_38;
  }

  v11 = v39;
LABEL_32:
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(v11))
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_16:
  v12 = *(v0 + 104);
  v13 = *(v0 + 156);
  *(v0 + 144) = *(v0 + 72);
  *(v0 + 152) = v13;
  v14 = *(v12 + 16);
  *(v0 + 48) = partial apply for closure #1 in AudioHardwareObject.setPropertyData(address:qualifier:data:);
  *(v0 + 56) = v12;
  *(v0 + 16) = MEMORY[0x29EDCA5F8];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
  *(v0 + 40) = &block_descriptor;
  v15 = _Block_copy((v0 + 16));
  v16 = *(v0 + 56);
  swift_retain_n();

  v17 = AudioObjectAddPropertyListenerBlock(v14, (v0 + 144), 0, v15);
  _Block_release(v15);
  if (v17)
  {
    v18 = *(v0 + 104);
    lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
    swift_allocError();
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = v17;
    swift_willThrow();

    v20 = *(v0 + 8);
    v21 = *MEMORY[0x29EDCA608];

    return v20();
  }

  else
  {
    v25 = *(v0 + 96);
    v24 = *(v0 + 104);
    v40 = *(v0 + 80);
    v26 = *(v0 + 156);
    v27 = *(v0 + 72);
    v28 = *(v24 + 56);
    v29 = swift_task_alloc();
    *(v0 + 112) = v29;
    *(v29 + 16) = v27;
    *(v29 + 24) = v26;
    *(v29 + 32) = v40;
    *(v29 + 48) = v25;
    *(v29 + 56) = v24;
    *(v29 + 64) = v11;
    *(v29 + 68) = v5;
    v30 = swift_task_alloc();
    *(v0 + 120) = v30;
    v30[2] = v28;
    v30[3] = partial apply for closure #3 in AudioHardwareObject.setPropertyData(address:qualifier:data:);
    v30[4] = v29;
    v31 = *(MEMORY[0x29EDCA478] + 4);
    v32 = swift_task_alloc();
    *(v0 + 128) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo26AudioObjectPropertyAddressVGMd, &_sSaySo26AudioObjectPropertyAddressVGMR);
    *v32 = v0;
    v32[1] = AudioHardwareObject.setPropertyData(address:qualifier:data:);
    v34 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73C80](v0 + 64, 0, 0, 0xD00000000000001FLL, 0x800000029ED29820, partial apply for closure #1 in ListenerHelper.waitForPropertyChange(setCall:), v30, v33);
  }
}

{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 128);
  v9 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = AudioHardwareObject.setPropertyData(address:qualifier:data:);
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = AudioHardwareObject.setPropertyData(address:qualifier:data:);
  }

  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

{
  v26 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);

  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      v16 = *(v0 + 104);

      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      swift_allocError();
      *v17 = 1852797029;
      *(v17 + 8) = 0xD00000000000001FLL;
      *(v17 + 16) = 0x800000029ED29840;
      swift_willThrow();
      goto LABEL_8;
    }

    v5 = v3;
    v3 += 3;
    v6 = *(v0 + 72);
    if (*(v5 - 1) == v6)
    {
      v7 = *(v0 + 156);
      if (*v5 == v7)
      {
        break;
      }
    }
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  v12 = (*(*v9 + 280))(v6, v7, v11, v10);
  v14 = *(v0 + 104);
  if (v8)
  {
    v15 = *(v0 + 104);
LABEL_8:

    v18 = *(v0 + 8);
    v19 = *MEMORY[0x29EDCA608];
    goto LABEL_9;
  }

  v21 = *(v0 + 96);
  v22 = v12;
  v23 = *(v0 + 104);
  v24 = v13;

  outlined consume of Data._Representation(*v21, *(v21 + 8));
  *v21 = v22;
  *(v21 + 8) = v24;
  v18 = *(v0 + 8);
  v25 = *MEMORY[0x29EDCA608];
LABEL_9:

  return v18();
}

{
  v8 = *MEMORY[0x29EDCA608];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[17];
  v5 = v0[1];
  v6 = *MEMORY[0x29EDCA608];

  return v5();
}

uint64_t AudioHardwareObject.addListener(forProperties:dispatchQueue:)(uint64_t result, NSObject *a2)
{
  v45 = *MEMORY[0x29EDCA608];
  v3 = *(result + 16);
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v2;
  v5 = result;

  v6 = (v5 + 40);
  while (1)
  {
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    os_unfair_lock_lock((v4 + 40));
    v13 = *(v4 + 48);

    os_unfair_lock_unlock((v4 + 40));
    if (*(v13 + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v10 | (v11 << 32), v12);
      v15 = v14;

      if (v15)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    inAddress.mSelector = v10;
    inAddress.mScope = v11;
    inAddress.mElement = v12;
    v16 = *(v4 + 16);
    aBlock[4] = partial apply for closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:);
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
    aBlock[3] = &block_descriptor_5;
    v17 = _Block_copy(aBlock);

    v18 = AudioObjectAddPropertyListenerBlock(v16, &inAddress, a2, v17);
    _Block_release(v17);
    if (v18)
    {
      break;
    }

    v42 = v3;
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:);
    *(v19 + 24) = v4;

    os_unfair_lock_lock((v4 + 40));
    v20 = *(v4 + 48);

    os_unfair_lock_unlock((v4 + 40));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v20;
    v41 = v10;
    v22 = v11;
    v23 = v10 | (v11 << 32);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v12);
    v26 = *(v20 + 16);
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v30 = v25;
    if (*(v20 + 24) < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v12);
      if ((v30 & 1) != (v31 & 1))
      {
        type metadata accessor for AudioObjectPropertyAddress(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_16:
      v32 = aBlock[0];
      if ((v30 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = v24;
    specialized _NativeDictionary.copy()();
    v24 = v37;
    v32 = aBlock[0];
    if ((v30 & 1) == 0)
    {
LABEL_17:
      v32[(v24 >> 6) + 8] |= 1 << v24;
      v33 = (v32[6] + 12 * v24);
      *v33 = v41;
      v33[1] = v22;
      v33[2] = v12;
      v34 = (v32[7] + 16 * v24);
      *v34 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
      v34[1] = v19;
      v35 = v32[2];
      v28 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v28)
      {
        goto LABEL_25;
      }

      v32[2] = v36;
      goto LABEL_4;
    }

LABEL_3:
    v7 = (v32[7] + 16 * v24);
    v8 = v7[1];
    *v7 = partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
    v7[1] = v19;

LABEL_4:
    os_unfair_lock_lock((v4 + 40));
    v9 = *(v4 + 48);

    *(v4 + 48) = v32;
    os_unfair_lock_unlock((v4 + 40));
    v3 = v42;
LABEL_5:
    v6 += 3;
    if (!--v3)
    {

      goto LABEL_23;
    }
  }

  lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
  swift_allocError();
  *(v38 + 8) = 0;
  *(v38 + 16) = 0;
  *v38 = v18;
  swift_willThrow();

LABEL_23:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.removeListener(forProperties:dispatchQueue:)(uint64_t result, NSObject *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = (result + 40);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      os_unfair_lock_lock((v4 + 40));
      v9 = *(v4 + 48);

      os_unfair_lock_unlock((v4 + 40));
      if (*(v9 + 16))
      {
        v10 = v7 | (v6 << 32);
        specialized __RawDictionaryStorage.find<A>(_:)(v10, v8);
        v12 = v11;

        if (v12)
        {
          os_unfair_lock_lock((v4 + 40));
          v13 = *(v4 + 48);

          os_unfair_lock_unlock((v4 + 40));
          if (!*(v13 + 16))
          {
            __break(1u);
LABEL_19:
            __break(1u);
          }

          v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7 | (v6 << 32), v8);
          if ((v15 & 1) == 0)
          {
            goto LABEL_19;
          }

          v30 = *(*(v13 + 56) + 16 * v14);

          v16 = swift_allocObject();
          *(v16 + 16) = v30;
          inAddress.mSelector = v7;
          inAddress.mScope = v6;
          inAddress.mElement = v8;
          v17 = *(v4 + 16);
          aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UnsafePointer<AudioObjectPropertyAddress>) -> (@out ());
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ();
          aBlock[3] = &block_descriptor_11;
          v18 = _Block_copy(aBlock);

          v19 = AudioObjectRemovePropertyListenerBlock(v17, &inAddress, a2, v18);
          _Block_release(v18);
          if (v19)
          {
            lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
            swift_allocError();
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
            *v27 = v19;
            swift_willThrow();

            break;
          }

          os_unfair_lock_lock((v4 + 40));
          v20 = *(v4 + 48);

          os_unfair_lock_unlock((v4 + 40));
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v8);
          if (v22)
          {
            v23 = v21;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v20;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v20 = aBlock[0];
            }

            v25 = *(*(v20 + 56) + 16 * v23 + 8);

            specialized _NativeDictionary._delete(at:)(v23, v20);
          }

          os_unfair_lock_lock((v4 + 40));
          v26 = *(v4 + 48);

          *(v4 + 48) = v20;
          os_unfair_lock_unlock((v4 + 40));
        }
      }

      else
      {
      }

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareObject.getUInt32ArrayData(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*v3 + 280))(a1, a2, 0, 0xF000000000000000);
  if (v4)
  {
    return v2;
  }

  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_16;
    }

    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = __OFSUB__(v10, v11);
    v8 = v10 - v11;
    if (!v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v8 = BYTE6(v6);
    v9 = BYTE6(v6) >> 2;
LABEL_16:
    v14 = v6;
    v15 = result;
    if (v8 <= 3)
    {
      v2 = MEMORY[0x29EDCA190];
      v9 = *(MEMORY[0x29EDCA190] + 16);
    }

    else
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = v9;
      bzero((v2 + 32), 4 * v9);
    }

    v16[0] = v2 + 32;
    v16[1] = v9;
    closure #1 in AudioHardwareObject.getUInt32ArrayData(_:)(v16, v15, v14, &v17);
    outlined consume of Data._Representation(v15, v14);
    return v2;
  }

  LODWORD(v8) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_22;
  }

  v8 = v8;
LABEL_11:
  v13 = v8 + 3;
  if (v8 >= 0)
  {
    v13 = v8;
  }

  if (v8 >= -3)
  {
    v9 = v13 >> 2;
    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void key path setter for AudioHardwareObject.delegates : AudioHardwareObject(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 32);

  *(v3 + 32) = v2;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t AudioHardwareObject.__allocating_init(id:)(int a1)
{
  v2 = swift_allocObject();
  AudioHardwareObject.init(id:)(a1);
  return v2;
}

uint64_t closure #1 in AudioHardwareObject.setPropertyData(address:qualifier:data:)(unsigned int a1, const void *a2, uint64_t a3)
{
  v3 = *(a3 + 56);
  if (a1)
  {
    v5 = a1;
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo26AudioObjectPropertyAddressV_Tt1g5(a1, 0);
    memcpy(v7 + 4, a2, 4 * (v5 + 2 * a1));
  }

  else
  {
    v7 = MEMORY[0x29EDCA190];
  }

  ListenerHelper.propertiesChanged(properties:)(v7);
}

uint64_t ListenerHelper.propertiesChanged(properties:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = v14 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v10 = v14 - v9;
  v11 = (v1 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  os_unfair_lock_lock(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v11 + *(v12 + 28), v10);
  os_unfair_lock_unlock(v11);
  if ((*(v4 + 48))(v10, 1, v3))
  {
    return outlined destroy of [PropertyListenerDelegate](v10, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  }

  (*(v4 + 16))(v7, v10, v3);
  outlined destroy of [PropertyListenerDelegate](v10, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v14[1] = a1;

  CheckedContinuation.resume(returning:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t closure #1 in AudioHardwareObject.addListener(forProperties:dispatchQueue:)(unsigned int a1, const void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  v6 = *(a3 + 32);

  os_unfair_lock_unlock((a3 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;
    do
    {
      outlined init with copy of PropertyListenerDelegate(v8, v14);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMd, &_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMR);
        v9 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v9);
        v9[2] = a1;
        v9[3] = 2 * ((v10 - 32) / 12);
        memcpy(v9 + 4, a2, 12 * a1);
      }

      else
      {
        v9 = MEMORY[0x29EDCA190];
      }

      (*(v12 + 8))(v9, v11, v12);

      __swift_destroy_boxed_opaque_existential_1(v14);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
  }
}

uint64_t closure #1 in AudioHardwareObject.getUInt32ArrayData(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v8 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
LABEL_26:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 4 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_28;
  }

  if (v14 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t AudioHardwareObject.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}

uint64_t closure #1 in ListenerHelper.waitForPropertyChange(setCall:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x2A1C7C4A8])();
  v24 = &v23 - v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR) - 8) + 64);
  v10 = (MEMORY[0x2A1C7C4A8])();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v23 - v13;
  v23 = *(v6 + 16);
  v23(&v23 - v13, a1, v5);
  (*(v6 + 56))(v14, 0, 1, v5);
  v15 = (a2 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
  os_unfair_lock_lock(v15);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
  outlined destroy of [PropertyListenerDelegate](v15 + v16, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v14, v15 + v16);
  os_unfair_lock_unlock(v15);
  v17 = outlined destroy of [PropertyListenerDelegate](v14, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  result = v25(v17);
  if (result)
  {
    v19 = result;
    os_unfair_lock_lock(v15);
    outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v15 + v16, v12);
    os_unfair_lock_unlock(v15);
    if ((*(v6 + 48))(v12, 1, v5))
    {
      return outlined destroy of [PropertyListenerDelegate](v12, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
    }

    else
    {
      v20 = v24;
      v23(v24, v12, v5);
      outlined destroy of [PropertyListenerDelegate](v12, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
      lazy protocol witness table accessor for type AudioHardwareError and conformance AudioHardwareError();
      v21 = swift_allocError();
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      *v22 = v19;
      v26 = v21;
      CheckedContinuation.resume(throwing:)();
      return (*(v6 + 8))(v20, v5);
    }
  }

  return result;
}

uint64_t ListenerHelper.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  outlined destroy of [PropertyListenerDelegate](v1 + *(v2 + 28), &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v3, v4);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo26AudioObjectPropertyAddressV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMd, &_ss23_ContiguousArrayStorageCySo26AudioObjectPropertyAddressVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 1) + (v7 >> 63));
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, Swift::UInt32 a2)
{
  v5 = HIDWORD(a1);
  v6 = *(v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 12 * result);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];
      if (v9 == a1 && v10 == HIDWORD(a1) && v11 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 12 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v39 = *(v22 + 16 * v21);
      if ((v38 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 12 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
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
      v10 = (*(a2 + 48) + 12 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v13);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = v15 + 12 * v3;
        v17 = (v15 + 12 * v6);
        if (v3 != v6 || v16 >= v17 + 12)
        {
          v18 = *v17;
          *(v16 + 8) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMd, &_ss18_DictionaryStorageCySo26AudioObjectPropertyAddressVys6UInt32V_SPyADGtcGMR);
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
        v18 = 12 * v17;
        v19 = *(v2 + 48) + 12 * v17;
        v20 = *(v19 + 8);
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(*(v2 + 56) + v17);
        *v21 = *v19;
        *(v21 + 8) = v20;
        *(*(v4 + 56) + v17) = v22;
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

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, unint64_t a3, OSStatus *a4, uint64_t a5, AudioObjectPropertyAddress *inAddress, uint64_t inQualifierDataSize, UInt32 *ioDataSize)
{
  v10 = a2;
  v82 = *MEMORY[0x29EDCA608];
  v13 = *a1;
  v12 = a1[1];
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 == 2)
    {
      inAddressa = inAddress;
      inQualifierDataSizea = inQualifierDataSize;
      ioDataSizea = ioDataSize;
      v79 = a4;
      outlined copy of Data?(a2, a3);

      outlined consume of Data._Representation(v13, v12);
      *&outData = v13;
      *(&outData + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
      v78 = a1;
      *a1 = xmmword_29ED28D90;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v13 = *(&outData + 1);
      v73 = outData;
      v16 = *(outData + 16);
      v17 = __DataStorage._bytes.getter();
      if (!v17)
      {
        outlined consume of Data?(v10, a3);

        __break(1u);
        goto LABEL_104;
      }

      v18 = v17;
      v19 = __DataStorage._offset.getter();
      v20 = (v16 - v19);
      if (__OFSUB__(v16, v19))
      {
        __break(1u);
        goto LABEL_91;
      }

      MEMORY[0x29EDB00A0]();
      if (a3 >> 60 == 15)
      {
        *v79 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, v20 + v18);
LABEL_78:

        outlined consume of Data?(v10, a3);
        goto LABEL_79;
      }

      v31 = a3 >> 62;
      if ((a3 >> 62) <= 1)
      {
        if (v31)
        {
          v64 = v10;
          v10 = v10;
          if (v10 > v64 >> 32)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }

          v37 = v64;
          v22 = __DataStorage._bytes.getter();
          if (!v22)
          {
            goto LABEL_75;
          }

          v65 = __DataStorage._offset.getter();
          v39 = v10 - v65;
          if (__OFSUB__(v10, v65))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
          }

          goto LABEL_74;
        }

        inQualifierData[0] = v10;
        LOWORD(inQualifierData[1]) = a3;
        BYTE2(inQualifierData[1]) = BYTE2(a3);
        BYTE3(inQualifierData[1]) = BYTE3(a3);
        BYTE4(inQualifierData[1]) = BYTE4(a3);
        BYTE5(inQualifierData[1]) = BYTE5(a3);
LABEL_77:
        *v79 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, inQualifierData, ioDataSizea, v20 + v18);
        outlined consume of Data?(v10, a3);
        goto LABEL_78;
      }

LABEL_37:
      if (v31 == 2)
      {
        v37 = v10;
        v23 = *(v10 + 16);
        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
LABEL_75:
          MEMORY[0x29EDB00A0]();
          *v79 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, v22, ioDataSizea, v20 + v18);
          outlined consume of Data?(v37, a3);

          outlined consume of Data?(v37, a3);
LABEL_79:
          *v78 = v73;
          v78[1] = v13 | 0x8000000000000000;
          goto LABEL_89;
        }

        v38 = __DataStorage._offset.getter();
        v39 = v23 - v38;
        if (!__OFSUB__(v23, v38))
        {
LABEL_74:
          v22 += v39;
          goto LABEL_75;
        }

        __break(1u);
        goto LABEL_42;
      }

      memset(inQualifierData, 0, 14);
      goto LABEL_77;
    }

    *(&outData + 7) = 0;
    *&outData = 0;
    if (a3 >> 60 == 15)
    {
      v24 = *(a5 + 16);
      v28 = inQualifierDataSize;
      outlined copy of Data?(a2, a3);
      *a4 = AudioObjectGetPropertyData(v24, inAddress, v28, 0, ioDataSize, &outData);
      goto LABEL_17;
    }

    v30 = a3 >> 62;
    if ((a3 >> 62) <= 1)
    {
      if (v30)
      {
        v79 = a4;
        v60 = a2;
        if (a2 > a2 >> 32)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v18 = inAddress;
        LODWORD(v13) = inQualifierDataSize;
        v20 = ioDataSize;
        v34 = a2;
        v35 = __DataStorage._bytes.getter();
        if (!v35)
        {
          goto LABEL_65;
        }

        v61 = __DataStorage._offset.getter();
        v31 = v60 - v61;
        if (__OFSUB__(v60, v61))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        goto LABEL_64;
      }

      inQualifierData[0] = a2;
      LOWORD(inQualifierData[1]) = a3;
      BYTE2(inQualifierData[1]) = BYTE2(a3);
      BYTE3(inQualifierData[1]) = BYTE3(a3);
      BYTE4(inQualifierData[1]) = BYTE4(a3);
      BYTE5(inQualifierData[1]) = BYTE5(a3);
      *a4 = AudioObjectGetPropertyData(*(a5 + 16), inAddress, inQualifierDataSize, inQualifierData, ioDataSize, &outData);
      goto LABEL_17;
    }

LABEL_32:
    v18 = inAddress;
    v13 = inQualifierDataSize;
    v20 = ioDataSize;
    v79 = a4;
    if (v30 == 2)
    {
      v34 = v10;
      v10 = *(v10 + 16);
      v35 = __DataStorage._bytes.getter();
      if (!v35)
      {
LABEL_65:
        MEMORY[0x29EDB00A0]();
        *v79 = AudioObjectGetPropertyData(*(a5 + 16), v18, v13, v35, v20, &outData);
        outlined consume of Data?(v34, a3);
        goto LABEL_89;
      }

      v36 = __DataStorage._offset.getter();
      v31 = v10 - v36;
      if (!__OFSUB__(v10, v36))
      {
LABEL_64:
        v35 += v31;
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_37;
    }

    memset(inQualifierData, 0, 14);
    *a4 = AudioObjectGetPropertyData(*(a5 + 16), inAddress, inQualifierDataSize, inQualifierData, ioDataSize, &outData);
LABEL_17:
    outlined consume of Data?(v10, a3);
LABEL_89:

    v72 = *MEMORY[0x29EDCA608];
    return result;
  }

  inAddressa = inAddress;
  inQualifierDataSizea = inQualifierDataSize;
  ioDataSizea = ioDataSize;
  v78 = a1;
  v79 = a4;
  v74 = a2;
  if (!v14)
  {
    v73 = HIWORD(v12);
    outlined copy of Data?(a2, a3);

    outlined consume of Data._Representation(v13, v12);
    *&outData = v13;
    WORD4(outData) = v12;
    BYTE10(outData) = BYTE2(v12);
    BYTE11(outData) = BYTE3(v12);
    BYTE12(outData) = BYTE4(v12);
    BYTE13(outData) = BYTE5(v12);
    BYTE14(outData) = BYTE6(v12);
    if (a3 >> 60 == 15)
    {
      v13 = v78;
      *v79 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, &outData);
      v15 = v74;
LABEL_69:
      v62 = outData;
      v63 = DWORD2(outData) | ((WORD6(outData) | (BYTE14(outData) << 16)) << 32);
      outlined consume of Data?(v15, a3);

      outlined consume of Data?(v15, a3);
      *v13 = v62;
      *(v13 + 8) = v63;
      goto LABEL_89;
    }

    v29 = a3 >> 62;
    v21 = v79;
    if ((a3 >> 62) <= 1)
    {
      v15 = v74;
      v13 = v78;
      if (!v29)
      {
        inQualifierData[0] = v74;
        LOWORD(inQualifierData[1]) = a3;
        BYTE2(inQualifierData[1]) = BYTE2(a3);
        BYTE3(inQualifierData[1]) = BYTE3(a3);
        BYTE4(inQualifierData[1]) = BYTE4(a3);
        BYTE5(inQualifierData[1]) = BYTE5(a3);
LABEL_67:
        v56 = *(a5 + 16);
        v59 = inQualifierData;
        v57 = inAddressa;
        v58 = inQualifierDataSizea;
        goto LABEL_68;
      }

LABEL_56:
      v54 = v15;
      v15 = v15;
      if (v15 <= v54 >> 32)
      {
        v32 = __DataStorage._bytes.getter();
        if (v32)
        {
          v55 = __DataStorage._offset.getter();
          v30 = v15 - v55;
          if (!__OFSUB__(v15, v55))
          {
LABEL_59:
            v32 += v30;
            goto LABEL_60;
          }

          goto LABEL_99;
        }

LABEL_60:
        v15 = v74;
        MEMORY[0x29EDB00A0]();
        v56 = *(a5 + 16);
        v57 = inAddressa;
        v58 = inQualifierDataSizea;
        v59 = v32;
LABEL_68:
        *v21 = AudioObjectGetPropertyData(v56, v57, v58, v59, ioDataSizea, &outData);
        goto LABEL_69;
      }

      goto LABEL_95;
    }

    v15 = v74;
    v13 = v78;
    if (v29 != 2)
    {
      memset(inQualifierData, 0, 14);
      goto LABEL_67;
    }

    v10 = *(v74 + 16);
    v32 = __DataStorage._bytes.getter();
    if (!v32)
    {
      goto LABEL_60;
    }

    v33 = __DataStorage._offset.getter();
    v30 = v10 - v33;
    if (!__OFSUB__(v10, v33))
    {
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_32;
  }

  v21 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  outlined copy of Data?(a2, a3);

  outlined copy of Data._Representation(v13, v12);
  outlined consume of Data._Representation(v13, v12);
  *a1 = xmmword_29ED28D90;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  outlined copy of Data?(v10, a3);

  v22 = v13;
  v23 = v13 >> 32;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_43;
  }

  if (v23 < v13)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
  {
    goto LABEL_94;
  }

LABEL_42:
  v40 = type metadata accessor for __DataStorage();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

  v21 = v43;
LABEL_43:
  if (v23 < v22)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v45 = result;
    v46 = __DataStorage._offset.getter();
    v47 = __OFSUB__(v22, v46);
    v48 = v22 - v46;
    v49 = v74;
    if (!v47)
    {
      MEMORY[0x29EDB00A0]();
      if (a3 >> 60 == 15)
      {
        *v79 = AudioObjectGetPropertyData(*(a5 + 16), inAddressa, inQualifierDataSizea, 0, ioDataSizea, (v45 + v48));

LABEL_88:

        outlined consume of Data?(v49, a3);
        *v78 = v13;
        v78[1] = v21 | 0x4000000000000000;
        goto LABEL_89;
      }

      v50 = a3 >> 62;
      if ((a3 >> 62) > 1)
      {
        if (v50 != 2)
        {
          *(&outData + 6) = 0;
          *&outData = 0;
          goto LABEL_86;
        }

        v15 = *(v74 + 16);
        v51 = __DataStorage._bytes.getter();
        if (v51)
        {
          v52 = __DataStorage._offset.getter();
          v53 = v15 - v52;
          if (__OFSUB__(v15, v52))
          {
            __break(1u);
            goto LABEL_56;
          }

          goto LABEL_83;
        }
      }

      else
      {
        if (!v50)
        {
          *&outData = v74;
          WORD4(outData) = a3;
          BYTE10(outData) = BYTE2(a3);
          BYTE11(outData) = BYTE3(a3);
          BYTE12(outData) = BYTE4(a3);
          BYTE13(outData) = BYTE5(a3);
LABEL_86:
          v67 = *(a5 + 16);
          p_outData = &outData;
          v68 = (v45 + v48);
          v69 = inAddressa;
          v70 = inQualifierDataSizea;
          goto LABEL_87;
        }

        if (v74 > v74 >> 32)
        {
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v51 = __DataStorage._bytes.getter();
        if (v51)
        {
          v66 = __DataStorage._offset.getter();
          v53 = v74 - v66;
          if (__OFSUB__(v74, v66))
          {
            goto LABEL_102;
          }

LABEL_83:
          v51 += v53;
        }
      }

      v49 = v74;
      MEMORY[0x29EDB00A0]();
      v67 = *(a5 + 16);
      v68 = (v45 + v48);
      v69 = inAddressa;
      v70 = inQualifierDataSizea;
      p_outData = v51;
LABEL_87:
      *v79 = AudioObjectGetPropertyData(v67, v69, v70, p_outData, ioDataSizea, v68);

      outlined consume of Data?(v49, a3);

      outlined consume of Data?(v49, a3);
      goto LABEL_88;
    }

    goto LABEL_92;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ListenerHelper()
{
  result = type metadata singleton initialization cache for ListenerHelper;
  if (!type metadata singleton initialization cache for ListenerHelper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
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

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #3 in AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 68);
  *&inAddress.mSelector = *(v0 + 16);
  inAddress.mElement = v1;
  inQualifierData = *(v0 + 32);
  v7 = *v2;
  return AudioObjectSetPropertyData(*(v3 + 16), &inAddress, v4, &inQualifierData, v5, &v7);
}

uint64_t sub_29ED2670C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned UInt32, @unowned UnsafePointer<AudioObjectPropertyAddress>) -> ()(unsigned int *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UInt32, @in_guaranteed UnsafePointer<AudioObjectPropertyAddress>) -> (@out ())(int a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

void sub_29ED267B4(os_unfair_lock_s **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  v4 = *&v3[8]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v3 + 6);
  *a2 = v4;
}

uint64_t dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:)()
{
  return (*(*v0 + 288))();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 296);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = dispatch thunk of AudioHardwareObject.setPropertyData(address:qualifier:data:);

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_29ED26FAC()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySay17CoreAudio_Private24PropertyListenerDelegate_pGGMd, &_s15Synchronization5MutexVySay17CoreAudio_Private24PropertyListenerDelegate_pGGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t sub_29ED26FDC()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySDySo26AudioObjectPropertyAddressVys6UInt32V_SPyAEGtcGGMd, &_s15Synchronization5MutexVySDySo26AudioObjectPropertyAddressVys6UInt32V_SPyAEGtcGGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

void type metadata completion function for ListenerHelper()
{
  type metadata accessor for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>()
{
  if (!lazy cache variable for type metadata for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Mutex<CheckedContinuation<[AudioObjectPropertyAddress], Error>?>);
    }
  }
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

uint64_t sub_29ED27150()
{
  if (MEMORY[0x29EDCA1F8])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
  }

  else
  {
    return MEMORY[0x29EDCA180] + 8;
  }
}

uint64_t outlined init with copy of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PropertyListenerDelegate(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t AudioHardwareClock.deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return v0;
}

uint64_t AudioHardwareClock.uid.getter()
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = (*(*v1 + 280))(0x676C6F6275696420, 0, 0, 0xF000000000000000);
  if (!v2)
  {
    v5 = v3;
    v6 = v4;
    v9 = MEMORY[0x29EDB01D0](0, 0xE000000000000000);
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t AudioHardwareClock.transportType.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F627472616ELL);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareClock.clockDomain.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x676C6F62636C6B64);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareClock.isAlive.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F626C69766ELL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareClock.isRunning.getter()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = AudioHardwareSystem.shouldMixStereoToMono.getter(0x676C6F62676F696ELL);
  v1 = *MEMORY[0x29EDCA608];
  return v0 & 1;
}

uint64_t AudioHardwareClock.inputLatency.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x696E70746C746E63);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareClock.outputLatency.getter()
{
  v2 = *MEMORY[0x29EDCA608];
  result = AudioHardwareStream.startingChannel.getter(0x6F7574706C746E63);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

char *AudioHardwareClock.controls.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v4 = v21 - v3;
  v5 = AudioHardwareObject.getUInt32ArrayData(_:)(0x676C6F626374726CLL, 0);
  if (!v0)
  {
    v6 = v5;
    v21[0] = 0;
    v22 = MEMORY[0x29EDCA190];
    v7 = *(v5 + 16);
    if (v7)
    {
      v21[1] = type metadata accessor for AudioHardwareControl();
      v8 = 32;
      do
      {
        v9 = *(v6 + v8);
        v10 = swift_allocObject();
        *(v10 + 24) = 0;
        *(v10 + 32) = MEMORY[0x29EDCA190];
        *(v10 + 40) = 0;
        *(v10 + 48) = MEMORY[0x29EDCA198];
        v11 = type metadata accessor for ListenerHelper();
        v12 = *(v11 + 48);
        v13 = *(v11 + 52);
        v14 = swift_allocObject();
        v15 = (v14 + OBJC_IVAR____TtC17CoreAudio_PrivateP33_B685A4B2B0565F64725909D02FD9B50814ListenerHelper_continuationMutex);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMd, &_sScCySaySo26AudioObjectPropertyAddressVGs5Error_pGMR);
        (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
        *v15 = 0;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5MutexVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR) + 28);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMd, &_s15Synchronization5_CellVyScCySaySo26AudioObjectPropertyAddressVGs5Error_pGSgGMR);
        bzero(v15 + v17, *(*(v18 - 8) + 64));
        v19 = outlined init with take of CheckedContinuation<[AudioObjectPropertyAddress], Error>?(v4, v15 + v17);
        *(v10 + 56) = v14;
        *(v10 + 16) = v9;
        MEMORY[0x29EDB0200](v19);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 += 4;
        --v7;
      }

      while (v7);
      v4 = v22;
    }

    else
    {

      return MEMORY[0x29EDCA190];
    }
  }

  return v4;
}

uint64_t AudioHardwareClock.nominalSampleRate.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*v0 + 280))(0x676C6F626E737274, 0, 0, 0xF000000000000000);
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    lazy protocol witness table accessor for type Data and conformance Data();
    DataProtocol.copyBytes(to:)();
    result = outlined consume of Data._Representation(v4, v5);
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AudioHardwareClock.availableNominalSampleRates.getter()
{
  result = (*(*v1 + 280))(0x676C6F626E737223, 0, 0, 0xF000000000000000);
  if (v2)
  {
    return v0;
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_16;
    }

    v9 = *(result + 16);
    v8 = *(result + 24);
    v10 = __OFSUB__(v8, v9);
    v6 = v8 - v9;
    if (!v10)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v5)
  {
    v6 = BYTE6(v4);
    v7 = BYTE6(v4) >> 4;
LABEL_16:
    v12 = v4;
    v13 = result;
    if (v6 <= 15)
    {
      v0 = MEMORY[0x29EDCA190];
      v7 = *(MEMORY[0x29EDCA190] + 16);
    }

    else
    {
      type metadata accessor for AudioValueRange(0);
      v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v0 + 16) = v7;
      bzero((v0 + 32), 16 * v7);
    }

    v14[0] = v0 + 32;
    v14[1] = v7;
    closure #1 in AudioHardwareClock.availableNominalSampleRates.getter(v14, v13, v12, &v15);
    outlined consume of Data._Representation(v13, v12);
    return v0;
  }

  LODWORD(v6) = HIDWORD(result) - result;
  if (__OFSUB__(HIDWORD(result), result))
  {
    goto LABEL_22;
  }

  v6 = v6;
LABEL_11:
  v11 = v6 + 15;
  if (v6 >= 0)
  {
    v11 = v6;
  }

  if (v6 >= -15)
  {
    v7 = v11 >> 4;
    goto LABEL_16;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AudioHardwareClock.setNominalSampleRate(_:)(Swift::Double a1)
{
  v6[1] = *MEMORY[0x29EDCA608];
  *v6 = a1;
  v2 = specialized Data.init(bytes:count:)(v6, 8);
  v4 = v3;
  (*(*v1 + 288))(0x676C6F626E737274, 0, 0, 0xF000000000000000, v2, v3);
  outlined consume of Data._Representation(v2, v4);
  v5 = *MEMORY[0x29EDCA608];
}

uint64_t closure #1 in AudioHardwareClock.availableNominalSampleRates.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  result = *a1;
  v6 = a1[1];
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = __OFSUB__(v9, v10);
      v8 = v9 - v10;
      if (v11)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v8 < 1)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

LABEL_22:
    v15 = 0;
LABEL_26:
    *a4 = v15;
    return result;
  }

  if (!v7)
  {
    v8 = BYTE6(a3);
    if (!BYTE6(a3))
    {
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  LODWORD(v8) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v8;
  if (v8 < 1)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v7)
  {
    if (v7 == 2)
    {
      v12 = *(a2 + 16);
    }

    else
    {
      v12 = a2;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v6 - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 16 * v6;
  if (v8 < v13)
  {
    v13 = v8;
  }

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    goto LABEL_28;
  }

  if (v14 < v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 == v14)
  {
    goto LABEL_22;
  }

  if (result)
  {
    v16 = a4;
    result = Data._copyBytesHelper(to:from:)();
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      a4 = v16;
      goto LABEL_26;
    }

    goto LABEL_32;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t AudioHardwareClock.__deallocating_deinit()
{
  outlined destroy of [PropertyListenerDelegate](v0 + 32, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMd, &_sSay17CoreAudio_Private24PropertyListenerDelegate_pGMR);
  outlined destroy of [PropertyListenerDelegate](v0 + 48, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMd, &_sSDySo26AudioObjectPropertyAddressVys6UInt32V_SPyABGtcGMR);
  v1 = *(v0 + 56);

  return MEMORY[0x2A1C73398](v0, 64, 7);
}