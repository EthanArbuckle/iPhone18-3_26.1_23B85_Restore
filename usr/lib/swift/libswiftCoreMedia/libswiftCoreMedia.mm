double CMTimeRange.union(_:)@<D0>(_OWORD *a1@<X0>, void (*a2)(_OWORD *__return_ptr, _OWORD *, _OWORD *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *v3;
  v7 = v3[1];
  v11[2] = a1[2];
  v12[0] = v6;
  v8 = v3[2];
  v12[1] = v7;
  v12[2] = v8;
  a2(v13, v12, v11);
  v9 = v13[1];
  *a3 = v13[0];
  a3[1] = v9;
  result = *&v14;
  a3[2] = v14;
  return result;
}

uint64_t static CMTime.+ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, void *, void *))
{
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v9[0] = a4;
  v9[1] = a5;
  v9[2] = a6;
  a7(&v8, v10, v9);
  return v8;
}

uint64_t _sSo13simd_float3x3awet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo6CGSizeVwet_0(uint64_t a1, int a2)
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

uint64_t _sSo6CGSizeVwst_0(uint64_t result, int a2, int a3)
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

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance CMBlockBufferRef.Flags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_22E0A160C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Array<A>.taggedBufferGroup.getter(*a1);
  *a2 = result;
  return result;
}

__n128 sub_22E0A1650(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_22E0A165C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = CMReadySampleBuffer.rawDecryptor.getter();
  *a2 = result;
  return result;
}

uint64_t _s9CoreMedia25CMReadOnlyDataBlockBufferV0F6RegionVSlAASl5countSivgTW_0()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E0A1754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22E0A1834@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned Int) -> (@unowned UnsafeMutableRawBufferPointer);
  a2[1] = v5;
}

uint64_t sub_22E0A18A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned UnsafeMutableRawBufferPointer) -> ();
  a2[1] = v5;
}

void *sub_22E0A1914@<X0>(void *result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = result[2];
  v4 = __OFSUB__(*a2, v3);
  v5 = *a2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a3 = *(*result + v5);
  }

  return result;
}

_BYTE *sub_22E0A1938(_BYTE *result, void *a2, void *a3)
{
  v3 = a2[2];
  if (__OFSUB__(*a3, v3))
  {
    __break(1u);
  }

  else
  {
    *(*a2 + *a3 - v3) = *result;
  }

  return result;
}

uint64_t sub_22E0A196C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *_sypWOb_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22E0A1B2C@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return CMSampleBufferRef.DynamicContent.init(from:)(v3, a2);
}

void sub_22E0A1C44(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3[0] = *a1;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_(v3);
  *a2 = v3[1];
}

uint64_t sub_22E0A1CB0@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return CMSampleDataReference.init(from:)(v3, a2);
}

uint64_t sub_22E0A1D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22E0A1D6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_22E0A1DDC(OpaqueCMBlockBuffer **a1@<X0>, OpaqueCMBlockBuffer **a2@<X8>)
{
  v3[1] = *a1;
  CMReadySampleBuffer<>.content.getter(v3);
  *a2 = v3[0];
}

uint64_t sub_22E0A1E48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_22E0A1EB8@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  *a3 = v3;
  a3[1] = v4;
  return v3;
}

CMItemCount sub_22E0A1EDC@<X0>(id *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v3 = *a1;
  result = CMSampleBufferGetNumSamples(v3);
  *a2 = v3;
  a2[1] = 0;
  a2[2] = result;
  return result;
}

int *_s9CoreMedia10CMTypedTagC8CategoryVAASo22CMFormatDescriptionRefaAAE0B7SubTypeVRszrlE03rawE0AEyAI_Gs6UInt32V_tcfcAISgAA5CMTagC5ValueOYbcfU__0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 == 2)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v2 != 2;
  return result;
}

unsigned int *_s9CoreMedia10CMTypedTagC8CategoryVAASo22CMFormatDescriptionRefaAAE0B7SubTypeVRszrlE03rawE0AEyAI_Gs6UInt32V_tcfcAA5CMTagC5ValueOAIYbcfU0__0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 2;
  return result;
}

unsigned int *_s9CoreMedia10CMTypedTagC8CategoryVAASo16CMProjectionTypeVRszrlE03rawE0AEyAG_Gs6UInt32V_tcfcAGSgAA5CMTagC5ValueOYbcfU__0@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 == 2)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2 != 2;
  return result;
}

void *_s9CoreMedia10CMTypedTagC8CategoryVAASo16CMProjectionTypeVRszrlE03rawE0AEyAG_Gs6UInt32V_tcfcAA5CMTagC5ValueOAGYbcfU0__0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (HIDWORD(*result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = 2;
  }

  return result;
}

uint64_t *_s9CoreMedia10CMTypedTagC8CategoryVAASo33CMStereoViewInterpretationOptionsVRszrlE03rawE0AEyAG_Gs6UInt32V_tcfcAGSgAA5CMTagC5ValueOYbcfU__0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  if (v2 == 3)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v2 != 3;
  return result;
}

void *_s9CoreMedia10CMTypedTagC8CategoryVAASo33CMStereoViewInterpretationOptionsVRszrlE03rawE0AEyAG_Gs6UInt32V_tcfcAA5CMTagC5ValueOAGYbcfU0__0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 3;
  return result;
}

uint64_t sub_22E0A200C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Array<A>.init(from:)(*a1);
  *a2 = result;
  return result;
}

void sub_22E0A20A8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3[0] = *a1;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_(v3);
  *a2 = v3[1];
}

uint64_t _syXlSo6CMTimeaIeggd_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _syXlSo6CMTimeaIeggd_SgWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22E0A212C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22E0A2174()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22E0A21B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_yXlSo6CMTimeaIeggd_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22E0A2224()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsVSlACSl34_customLastIndexOfEquatableElementy0I0QzSgSg0L0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_22E0A23E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22E0A2420()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22E0A2458()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22E0A24B0@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized Dictionary.subscript.getter(*a2, *a1);
  *a3 = result;
  return result;
}

uint64_t sub_22E0A2518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC06A0], *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E0A2574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC06A8], *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E0A25D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0688], *a1);
  *a2 = result;
  return result;
}

uint64_t sub_22E0A2628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0690], *a1);
  *a2 = result;
  return result;
}

uint64_t sub_22E0A2680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0640], *a1);
  *a2 = result;
  return result;
}

uint64_t sub_22E0A26D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0658], *a1);
  *a2 = result;
  return result;
}

uint64_t sub_22E0A2730@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0648], *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E0A278C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0650], *a1);
  *a2 = result & 1;
  return result;
}

__n128 sub_22E0A27E8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  CMSampleBufferRef.SampleAttachments.hevcTemporalInfo.getter(v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_22E0A2848@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0680], *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E0A28A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TypedCFDictionary.subscript.getter(*MEMORY[0x277CC0668], *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_22E0A29EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of CMSampleBufferRef.SizePerSample?(v3, v1);
  return CMSampleBufferRef.SamplePropertiesCollection.sizes.setter(&v3);
}

__n128 sub_22E0A2A34@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 40);
  CMSampleBufferRef.SamplePropertiesCollection.timings.getter(v10);
  v3 = v11[0];
  *(a2 + 32) = v10[2];
  *(a2 + 48) = v3;
  *(a2 + 57) = *(v11 + 9);
  result = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = result;
  return result;
}

_OWORD *sub_22E0A2AA0(_OWORD *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v7[0] = v2;
  *(v7 + 9) = *(a1 + 57);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(v6, &v5, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE15TimingPerSampleOSgMR);
  return CMSampleBufferRef.SamplePropertiesCollection.timings.setter(a1);
}

uint64_t sub_22E0A2B08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(*(a1 + 24) + 16))
  {
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_22E0A2B4C(_OWORD *a1, uint64_t a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = a1[3];
  v10[2] = a1[2];
  v10[3] = v5;
  v6 = a1[5];
  v10[4] = a1[4];
  v10[5] = v6;
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  outlined init with copy of CMSampleBufferRef.SampleProperties(v10, &v9);
  return CMSampleBufferRef.SamplePropertiesCollection.subscript.setter(a1, v4);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CMTimeFlags(_DWORD *a1, int *a2)
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

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance CMTimeFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance CMTimeFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CMTimebaseRef.NotificationKey@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMTimebaseRef.NotificationKey(void *a1, id *a2)
{
  *a2 = a1;

  return a1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMTimebaseRef.NotificationKey(void *a1, id *a2)
{
  *a2 = a1;
  v4 = a1;
  return 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMTagCategory@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMSampleBufferRef.Flags(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CMSampleBufferRef.Flags(uint64_t result, int a2, int a3)
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

uint64_t _CMInitTrampoline.init(_:)(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v6 = a1(&v9);
  if (v6 == noErr.getter())
  {
    result = v9;
    if (v9)
    {
      return (*(a4 + 16))(v9, a3, a4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v8 initWithDomain:*MEMORY[0x277CCA590] code:v6 userInfo:0];
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t one-time initialization function for tlsKey()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  result = pthread_key_create(v2, 0);
  static BoxedError.tlsKey = v2[0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BoxedError.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t _CMObjectiveCBridgeableWithRawValue<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t _CMObjectiveCBridgeableWithRawValue<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  dispatch thunk of RawRepresentable.rawValue.getter();
  return v4;
}

{
  v2 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = dispatch thunk of _ObjectiveCBridgeable._bridgeToObjectiveC()();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v8;
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = *(a4 + 16);
  v9 = a1;
  return dispatch thunk of RawRepresentable.init(rawValue:)();
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = *(a4 + 16);
  v9 = a1;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  return 1;
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a1)
  {
    v19 = a1;
    v12 = *(a3 + 16);
    v15 = a1;
    dispatch thunk of RawRepresentable.init(rawValue:)();
    a3 = *(a2 - 8);
    if ((*(a3 + 48))(v14, 1, a2) != 1)
    {
      return (*(a3 + 32))(a4, v14, a2);
    }

    __break(1u);
  }

  v19 = MEMORY[0x2318E2770](0, 0xE000000000000000);
  v16 = *(a3 + 16);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  a3 = *(a2 - 8);
  result = (*(a3 + 48))(v12, 1, a2);
  if (result != 1)
  {
    v14 = v12;
    return (*(a3 + 32))(a4, v14, a2);
  }

  __break(1u);
  return result;
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19[1] = a5;
  v6 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  (*(v16 + 56))(v19 - v14, 1, 1, AssociatedTypeWitness);
  dispatch thunk of static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:)();
  (*(v9 + 16))(v13, v15, v8);
  result = (*(v16 + 48))(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = type metadata accessor for Optional();
    (*(*(v18 - 8) + 8))(a2, v18);
    dispatch thunk of RawRepresentable.init(rawValue:)();
    return (*(v9 + 8))(v15, v8);
  }

  return result;
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._conditionallyBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v4 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  (*(v14 + 56))(&v18 - v12, 1, 1, AssociatedTypeWitness);
  v15 = dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();
  if ((v15 & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(v7 + 16))(v11, v13, v6);
  result = (*(v14 + 48))(v11, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    v17 = type metadata accessor for Optional();
    (*(*(v17 - 8) + 8))(v19, v17);
    dispatch thunk of RawRepresentable.init(rawValue:)();
LABEL_4:
    (*(v7 + 8))(v13, v6);
    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static _CMObjectiveCBridgeableWithRawValue<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14 - v10;
  dispatch thunk of static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v12 = *(a1 - 8);
  result = (*(v12 + 48))(v11, 1, a1);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v11, a1);
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for simd_float3x3(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioChannelLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioChannelLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy72_4(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CMSampleTimingInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMSampleTimingInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t @objc callClosureFromRefconCMBuffer(_:_:)(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = *a2;
    v2 = *(a2 + 8);
    v4 = result;
    swift_unknownObjectRetain();

    v3(&v4);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef();
}

{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFDictionaryRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMTagCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMTagCategory()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance CMTimeFlags@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFDictionaryRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFDictionaryRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

uint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy68_4(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for CMBufferCallbacks(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 68))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 28);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CMBufferCallbacks(uint64_t result, int a2, int a3)
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
      *(result + 68) = 1;
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
      *(result + 28) = (a2 - 1);
      return result;
    }

    *(result + 68) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AudioChannelDescription(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AudioChannelDescription(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

void type metadata accessor for simd_float3x3(uint64_t a1, unint64_t *a2)
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

void one-time initialization function for missingRequiredParameter(uint64_t a1)
{
  one-time initialization function for missingRequiredParameter(a1, -12745, &static CMClockRef.Error.missingRequiredParameter);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12748, &static CMTimebaseRef.Error.missingRequiredParameter);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12752, &static CMSync.Error.missingRequiredParameter);
}

void one-time initialization function for invalidParameter(uint64_t a1)
{
  one-time initialization function for missingRequiredParameter(a1, -12746, &static CMClockRef.Error.invalidParameter);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12749, &static CMTimebaseRef.Error.invalidParameter);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12753, &static CMSync.Error.invalidParameter);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12710, &static CMFormatDescriptionRef.Error.invalidParameter);
}

void one-time initialization function for allocationFailed(uint64_t a1)
{
  one-time initialization function for missingRequiredParameter(a1, -12747, &static CMClockRef.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12750, &static CMTimebaseRef.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12754, &static CMSync.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12770, &static CMSimpleQueueRef.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12730, &static CMSampleBufferRef.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12760, &static CMBufferQueueRef.Error.allocationFailed);
}

{
  one-time initialization function for missingRequiredParameter(a1, -12711, &static CMFormatDescriptionRef.Error.allocationFailed);
}

void one-time initialization function for missingRequiredParameter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v6 = *MEMORY[0x277CCA590];
  v7 = [v5 initWithDomain:v6 code:a2 userInfo:0];

  *a3 = v7;
}

id static CMClockRef.Error.missingRequiredParameter.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

CMClockRef static CMClockRef.hostTimeClock.getter()
{
  HostTimeClock = CMClockGetHostTimeClock();

  return HostTimeClock;
}

uint64_t static CMClockRef.convertHostTimeToSystemUnits(_:)(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  hostTime.value = a1;
  *&hostTime.timescale = a2;
  hostTime.epoch = a3;
  return CMClockConvertHostTimeToSystemUnits(&hostTime);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMClockRef.anchorTime()(Swift::tuple_anchorTime_CMTime_referenceTime_CMTime *__return_ptr retstr)
{
  v2 = v1;
  v14 = *MEMORY[0x277D85DE8];
  memset(&clockTimeOut, 0, sizeof(clockTimeOut));
  memset(&referenceClockTimeOut, 0, sizeof(referenceClockTimeOut));
  AnchorTime = CMClockGetAnchorTime(v2, &clockTimeOut, &referenceClockTimeOut);
  if (AnchorTime == noErr.getter())
  {
    epoch = referenceClockTimeOut.epoch;
    v6 = clockTimeOut.epoch;
    value = referenceClockTimeOut.value;
    v8 = *&referenceClockTimeOut.timescale;
    v9 = *&clockTimeOut.timescale;
    retstr->anchorTime.value = clockTimeOut.value;
    *&retstr->anchorTime.timescale = v9;
    retstr->anchorTime.epoch = v6;
    retstr->referenceTime.value = value;
    *&retstr->referenceTime.timescale = v8;
    retstr->referenceTime.epoch = epoch;
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v10 initWithDomain:*MEMORY[0x277CCA590] code:AnchorTime userInfo:0];
    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void _CMTimebaseInitTrampoline.init(sourceClock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMTimebaseInitTrampoline.init(sourceClock:), v4, a2, *(a3 + 8));
}

void _CMTimebaseInitTrampoline.init(masterClock:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMTimebaseInitTrampoline.init(masterClock:), v4, a2, *(a3 + 8));
}

void _CMTimebaseInitTrampoline.init(sourceTimebase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMTimebaseInitTrampoline.init(sourceTimebase:), v4, a2, *(a3 + 8));
}

void _CMTimebaseInitTrampoline.init(masterTimebase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMTimebaseInitTrampoline.init(masterTimebase:), v4, a2, *(a3 + 8));
}

void protocol witness for _CMInitTrampoline.init(referencing:) in conformance CMTimebaseRef(void *a1@<X0>, void *a2@<X8>)
{
  v4 = _swiftInitForCMTimebase(a1);

  *a2 = v4;
}

uint64_t CMTimebaseRef.source.getter@<X0>(uint64_t *a1@<X8>)
{
  return CMTimebaseRef.source.getter(a1);
}

{
  v2 = v1;
  v4 = CMTimebaseCopySource(v2);
  v5 = swift_unknownObjectRetain();
  v6 = CFGetTypeID(v5);
  if (v6 == CMTimebaseGetTypeID())
  {
    type metadata accessor for CMTimebaseRef(0);
    v8 = v7;
    v9 = &protocol witness table for CMTimebaseRef;
LABEL_5:
    v12 = swift_dynamicCastUnknownClassUnconditional();
    a1[3] = v8;
    a1[4] = v9;
    result = swift_unknownObjectRelease();
    *a1 = v12;
    return result;
  }

  v10 = CFGetTypeID(v4);
  swift_unknownObjectRelease();
  if (v10 == CMClockGetTypeID())
  {
    type metadata accessor for CMClockRef(0);
    v8 = v11;
    swift_unknownObjectRetain();
    v9 = &protocol witness table for CMClockRef;
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(59);
  MEMORY[0x2318E2800](0xD000000000000016, 0x800000022E0F87E0);
  swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2318E2800](0xD000000000000023, 0x800000022E0F8800);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CMTimebaseRef.source.setter(uint64_t *a1)
{
  return CMTimebaseRef.source.setter(a1);
}

{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  v5 = swift_unknownObjectRetain();
  v6 = CFGetTypeID(v5);
  if (v6 == CMTimebaseGetTypeID())
  {
    swift_unknownObjectRelease();
    outlined init with copy of CMSyncProtocol(a1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia14CMSyncProtocol_pMd, &_s9CoreMedia14CMSyncProtocol_pMR);
    type metadata accessor for CMTimebaseRef(0);
    swift_dynamicCast();
    v7 = newSourceTimebase;
    CMTimebaseSetSourceTimebase(v2, newSourceTimebase);
LABEL_5:

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = CFGetTypeID(v4);
  swift_unknownObjectRelease();
  if (v8 == CMClockGetTypeID())
  {
    outlined init with copy of CMSyncProtocol(a1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia14CMSyncProtocol_pMd, &_s9CoreMedia14CMSyncProtocol_pMR);
    type metadata accessor for CMClockRef(0);
    swift_dynamicCast();
    v7 = newSourceTimebase;
    CMTimebaseSetSourceClock(v2, newSourceTimebase);
    goto LABEL_5;
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  MEMORY[0x2318E2800](0xD000000000000016, 0x800000022E0F87E0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2318E2800](0xD000000000000023, 0x800000022E0F8800);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of CMSyncProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void (*CMTimebaseRef.source.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  CMTimebaseRef.source.getter(v3);
  return CMTimebaseRef.source.modify;
}

void (*CMTimebaseRef.master.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  v3[10] = v1;
  CMTimebaseRef.master.getter(v3);
  return CMTimebaseRef.master.modify;
}

void CMTimebaseRef.source.modify(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of CMSyncProtocol(*a1, (v4 + 5));
    a3(v4 + 5);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    a3(*a1);
  }

  free(v4);
}

CMTime __swiftcall CMTimebaseRef.time(withTimescale:rounding:)(Swift::Int32 withTimescale, CMTimeRoundingMethod rounding)
{
  CMTimebaseGetTimeWithTimeScale(&v6, v2, withTimescale, rounding);
  value = v6.value;
  v4 = *&v6.timescale;
  epoch = v6.epoch;
  result.epoch = epoch;
  result.timescale = v4;
  result.flags = HIDWORD(v4);
  result.value = value;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.setTime(_:)(CMTime a1)
{
  time = a1;
  v2 = CMTimebaseSetTime(v1, &time);
  if (v2 != noErr.getter())
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v3 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.setAnchorTime(_:referenceTime:)(CMTime _, CMTime referenceTime)
{
  v5 = referenceTime;
  timebaseTime = _;
  v3 = CMTimebaseSetAnchorTime(v2, &timebaseTime, &v5);
  if (v3 != noErr.getter())
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v4 initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
    swift_willThrow();
  }
}

Float64 CMTimebaseRef.timeAndRate.getter()
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&timeOut, 0, sizeof(timeOut));
  rateOut = 0.0;
  CMTimebaseGetTimeAndRate(v0, &timeOut, &rateOut);
  result = rateOut;
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.setRate(_:)(Swift::Double a1)
{
  v2 = CMTimebaseSetRate(v1, a1);
  if (v2 != noErr.getter())
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v3 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.setRateAndAnchorTime(rate:anchorTime:referenceTime:)(Swift::Double rate, CMTime anchorTime, CMTime referenceTime)
{
  v6 = referenceTime;
  timebaseTime = anchorTime;
  v4 = CMTimebaseSetRateAndAnchorTime(v3, rate, &timebaseTime, &v6);
  if (v4 != noErr.getter())
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.addTimer(_:on:)(NSTimer _, NSRunLoop on)
{
  v4 = [(objc_class *)on.super.isa getCFRunLoop];
  v5 = CMTimebaseAddTimer(v2, _.super.isa, v4);

  if (v5 != noErr.getter())
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.setTimerNextFireTime(_:fireTime:)(NSTimer _, CMTime fireTime)
{
  fireTimea = fireTime;
  v3 = CMTimebaseSetTimerNextFireTime(v2, _.super.isa, &fireTimea, 0);
  if (v3 != noErr.getter())
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v4 initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
    swift_willThrow();
  }
}

uint64_t CMTimebaseRef.removeTimer(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = a2(v2, a1);
  result = noErr.getter();
  if (v3 != result)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMTimebaseRef.addTimer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = closure #1 in CMTimebaseRef.addTimer<A>(_:)(v3, a1, a2, a3);
  result = noErr.getter();
  if (v4 != result)
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v4 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMTimebaseRef.setTimerNextFireTime<A>(_:fireTime:)(uint64_t a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4)
{
  v5 = closure #1 in CMTimebaseRef.setTimerNextFireTime<A>(_:fireTime:)(v4, a1, a2, a3, a4);
  result = noErr.getter();
  if (v5 != result)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v7 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in CMTimebaseRef.setTimerNextFireTime<A>(_:fireTime:)(OpaqueCMTimebase *a1, uint64_t a2, CMTimeValue a3, unint64_t a4, CMTimeEpoch a5)
{
  v6 = a4;
  v9 = HIDWORD(a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  fireTime.value = a3;
  fireTime.timescale = v6;
  fireTime.flags = v9;
  fireTime.epoch = a5;
  return CMTimebaseSetTimerDispatchSourceNextFireTime(a1, v10, &fireTime, 0);
}

uint64_t closure #1 in CMTimebaseRef.addTimer<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();

  return a4(a1, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMTimebaseRef.notificationBarrier()()
{
  v1 = CMTimebaseNotificationBarrier(v0);
  if (v1 != noErr.getter())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v2 initWithDomain:*MEMORY[0x277CCA590] code:v1 userInfo:0];
    swift_willThrow();
  }
}

id static CMTimebaseRef.NotificationKey.eventTime.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for eventTime != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static CMTimebaseRef.NotificationKey.eventTime;
  *a1 = static CMTimebaseRef.NotificationKey.eventTime;

  return v2;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMTimebaseRef.NotificationKey@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    a1 = MEMORY[0x2318E2770](0, 0xE000000000000000);
    v2 = 0;
  }

  *a2 = a1;

  return v2;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMTimebaseRef.NotificationKey()
{
  v1 = *v0;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMTimebaseRef.NotificationKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMTimebaseRef.NotificationKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  return static _CFObject.== infix(_:_:)() & 1;
}

double CMTimebaseRef.rate<A>(relativeTo:)()
{
  v1 = _bridgeAnythingToObjectiveC<A>(_:)();
  RelativeRate = CMSyncGetRelativeRate(v0, v1);
  swift_unknownObjectRelease();
  return RelativeRate;
}

uint64_t CMClockRef.rateAndAnchorTime<A>(relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  result = CMTimebaseRef.rateAndAnchorTime<A>(relativeTo:)(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMTimebaseRef.rateAndAnchorTime<A>(relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outRelativeRate[1] = *MEMORY[0x277D85DE8];
  outRelativeRate[0] = 0.0;
  memset(&outOfClockOrTimebaseAnchorTime, 0, sizeof(outOfClockOrTimebaseAnchorTime));
  memset(&v15, 0, sizeof(v15));
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  RelativeRateAndAnchorTime = CMSyncGetRelativeRateAndAnchorTime(v2, v4, outRelativeRate, &outOfClockOrTimebaseAnchorTime, &v15);
  swift_unknownObjectRelease();
  result = noErr.getter();
  if (RelativeRateAndAnchorTime == result)
  {
    epoch = v15.epoch;
    value = outOfClockOrTimebaseAnchorTime.value;
    v9 = outOfClockOrTimebaseAnchorTime.epoch;
    v10 = v15.value;
    v11 = *&v15.timescale;
    v12 = *&outOfClockOrTimebaseAnchorTime.timescale;
    *a1 = outRelativeRate[0];
    *(a1 + 8) = value;
    *(a1 + 16) = v12;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 48) = epoch;
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v13 initWithDomain:*MEMORY[0x277CCA590] code:RelativeRateAndAnchorTime userInfo:0];
    result = swift_willThrow();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v3 = *MEMORY[0x277D85DE8];
  result = CMClockRef.rateAndAnchorTime<A>(relativeTo:)(a1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

CMTimeValue CMTimebaseRef.convertTime<A>(_:to:)(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3)
{
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  time.value = a1;
  time.timescale = v5;
  time.flags = v7;
  time.epoch = a3;
  CMSyncConvertTime(&v11, &time, v3, v8);
  value = v11.value;
  swift_unknownObjectRelease();
  return value;
}

BOOL CMTimebaseRef.mightDrift<A>(relativeTo:)()
{
  v1 = _bridgeAnythingToObjectiveC<A>(_:)();
  v2 = CMSyncMightDrift(v0, v1);
  swift_unknownObjectRelease();
  return v2 != 0;
}

unint64_t instantiation function for generic protocol witness table for CMTimebaseRef.NotificationKey(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey();
  a1[2] = lazy protocol witness table accessor for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey();
  result = lazy protocol witness table accessor for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey()
{
  result = lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey;
  if (!lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMTimebaseRef.NotificationKey and conformance CMTimebaseRef.NotificationKey);
  }

  return result;
}

double protocol witness for CMSyncProtocol.rateAndAnchorTime<A>(relativeTo:) in conformance CMTimebaseRef@<D0>(void (*a1)(void *__return_ptr)@<X5>, uint64_t a2@<X8>)
{
  v5 = *v2;
  a1(v12);
  if (!v3)
  {
    result = *v12;
    v7 = v12[1];
    v8 = v12[2];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    *a2 = v12[0];
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 40) = v10;
    *(a2 + 48) = v11;
  }

  return result;
}

uint64_t keypath_setTm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_BYTE *))
{
  outlined init with copy of CMSyncProtocol(a1, v9);
  v7 = *a2;
  return a5(v9);
}

uint64_t getEnumTagSinglePayload for CMClockRef.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CMClockRef.Error(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CMTimebaseRef.NotificationKey(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CMTimebaseRef.NotificationKey(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

id CMTaggedBuffer.buffer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t CMTaggedBuffer.init(tags:buffer:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t CMTaggedBuffer.init(tags:sampleBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CMTaggedBuffer.init(tags:pixelBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t CMTaggedBuffer.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _StringGuts.grow(_:)(20);
  MEMORY[0x2318E2800](0x203A73676174, 0xE600000000000000);
  v4 = type metadata accessor for CMTag();
  v5 = MEMORY[0x2318E28C0](v1, v4);
  MEMORY[0x2318E2800](v5);

  MEMORY[0x2318E2800](0x726566667562202CLL, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

CMItemCount CMTaggedBufferGroupRef.indices.getter()
{
  result = CMTaggedBufferGroupGetCount(v0);
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

const OpaqueCMTagCollection *CMTaggedBufferGroupRef.subscript.getter@<X0>(CFIndex index@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = CMTaggedBufferGroupGetTagCollectionAtIndex(v2, index);
  if (result)
  {
    v7 = result;
    v8 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(v3, index);
    if (v8)
    {
      v9 = v8;
LABEL_6:
      v10 = v8 != 0;
      result = specialized Array<A>.init(tagCollection:)(v7);
      *a2 = result;
      *(a2 + 8) = v9;
      *(a2 + 16) = v10;
      return result;
    }

    result = CMTaggedBufferGroupGetCMSampleBufferAtIndex(v3, index);
    if (result)
    {
      v9 = result;
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CMTaggedBufferGroupRef@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    result = CMTaggedBufferGroupGetCount(*v2);
    if ((v4 & 0x8000000000000000) == 0 && v4 < result)
    {
      *a2 = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMTaggedBufferGroupRef(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    result = CMTaggedBufferGroupGetCount(*v1);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      *v3 = v2;
      return result;
    }
  }

  __break(1u);
  return result;
}

CMItemCount protocol witness for Collection.endIndex.getter in conformance CMTaggedBufferGroupRef@<X0>(CMItemCount *a1@<X8>)
{
  result = CMTaggedBufferGroupGetCount(*v1);
  *a1 = result;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance CMTaggedBufferGroupRef(uint64_t a1, CFIndex *a2))(uint64_t *a1)
{
  v3 = *v2;
  CMTaggedBufferGroupRef.subscript.getter(*a2, a1);
  return protocol witness for Collection.subscript.read in conformance CMTaggedBufferGroupRef;
}

void protocol witness for Collection.subscript.read in conformance CMTaggedBufferGroupRef(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
}

CMItemCount protocol witness for Collection.subscript.getter in conformance CMTaggedBufferGroupRef@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = CMTaggedBufferGroupGetCount(*v2);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;

  return v7;
}

CMItemCount protocol witness for Collection.indices.getter in conformance CMTaggedBufferGroupRef@<X0>(void *a1@<X8>)
{
  result = CMTaggedBufferGroupGetCount(*v1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance CMTaggedBufferGroupRef@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = CMTaggedBufferGroupGetCount(*v3);
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

CMItemCount protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMTaggedBufferGroupRef@<X0>(CMItemCount *a1@<X0>, uint64_t a2@<X1>, CMItemCount *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v8 & 1;
  return result;
}

CMItemCount protocol witness for RandomAccessCollection.distance(from:to:) in conformance CMTaggedBufferGroupRef(CMItemCount *a1, CMItemCount *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = CMTaggedBufferGroupGetCount(*v2);
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = CMTaggedBufferGroupGetCount(v5);
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return v4 - v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMTaggedBufferGroupRef(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMTaggedBufferGroupRef(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

CMItemCount protocol witness for Collection.index(after:) in conformance CMTaggedBufferGroupRef@<X0>(CMItemCount *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = CMTaggedBufferGroupGetCount(*v2);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

CMItemCount protocol witness for Collection.formIndex(after:) in conformance CMTaggedBufferGroupRef(CMItemCount *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = CMTaggedBufferGroupGetCount(v3);
  if (v4 < 0 || v4 >= result)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance CMTaggedBufferGroupRef(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

CMItemCount protocol witness for Sequence._copyToContiguousArray() in conformance CMTaggedBufferGroupRef()
{
  v1 = *v0;
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v2;
}

CMItemCount Array<A>.init(taggedBufferGroup:)(OpaqueCMTaggedBufferGroup *a1)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);

  return v2;
}

uint64_t Array<A>.taggedBufferGroup.getter(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = *(a1 + 16);
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 40);
    v5 = v3;
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      Array<A>.tagCollection.getter(v8);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v20 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 3;
      --v5;
    }

    while (v5);
  }

  type metadata accessor for CMTagCollectionRef(0);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v11 += 3;
      v13 = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = *(v21 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = MEMORY[0x2318E3740](v2, v10.super.isa, isa, v22);

  if (v16 == noErr.getter() && (result = v22[0]) != 0)
  {
    v18 = *MEMORY[0x277D85DE8];
  }

  else
  {
    _StringGuts.grow(_:)(53);
    MEMORY[0x2318E2800](0xD000000000000033, 0x800000022E0F8860);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2318E2800](v19);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v17 = MEMORY[0x277D84F90];
    v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v17;
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      if (*v5)
      {
        v14 = *(v5 - 2);
        v15 = *(v5 - 1);
        v16 = 0;
        if (*v5 == 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        outlined copy of CMTaggedDynamicBuffer.Content(*(v5 - 1), v8);
      }

      else
      {
        MEMORY[0x28223BE20](v4);

        outlined copy of CMTaggedDynamicBuffer.Content(v6, 0);
        outlined copy of CMTaggedDynamicBuffer.Content(v6, 0);
        _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
        outlined consume of CMTaggedDynamicBuffer.Content(v6, 0);

        outlined consume of CMTaggedDynamicBuffer.Content(v6, 0);
      }

      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        v4 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v5 += 24;
      *(v17 + 16) = v10 + 1;
      v11 = v17 + 24 * v10;
      *(v11 + 32) = v14;
      *(v11 + 40) = v15;
      *(v11 + 48) = v16;
      --v1;
    }

    while (v1);
  }

  v12 = Array<A>.taggedBufferGroup.getter(v2);

  return v12;
}

CMItemCount specialized _copyCollectionToContiguousArray<A>(_:)(OpaqueCMTaggedBufferGroup *a1)
{
  Count = CMTaggedBufferGroupGetCount(a1);
  result = CMTaggedBufferGroupGetCount(a1);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = CMTaggedBufferGroupGetCount(a1);
    if ((Count & 0x8000000000000000) == 0 && result >= Count)
    {
      if (Count)
      {
        v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9CoreMedia08CMTaggedC0V_Tt1gq5(Count, 0);
        v5 = a1;
        v6 = specialized Sequence._copySequenceContents(initializing:)(v7, (v4 + 4), Count);

        if (v6 == Count)
        {
          return v4;
        }

        __break(1u);
      }

      return MEMORY[0x277D84F90];
    }
  }

  __break(1u);
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DataV_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance <> Slice<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVySo22CMTaggedBufferGroupRefaGMd, &_ss5SliceVySo22CMTaggedBufferGroupRefaGMR);
    lazy protocol witness table accessor for type CMTaggedBufferGroupRef and conformance CMTaggedBufferGroupRef(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMTaggedBufferGroupRef and conformance CMTaggedBufferGroupRef(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMTaggedBufferGroupRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTaggedBuffer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for CMTaggedBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CMTaggedBuffer.Buffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CMTaggedBuffer.Buffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t CMSampleBufferRef.contentType.getter@<X0>(char *a1@<X8>)
{
  result = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (result <= 0)
  {
    if (!result)
    {
      v3 = 2;
      goto LABEL_13;
    }
  }

  else if (result > 2)
  {
    switch(result)
    {
      case 3:
        v3 = 4;
        goto LABEL_13;
      case 4:
        v3 = 0;
        goto LABEL_13;
      case 5:
        v3 = 1;
        goto LABEL_13;
    }
  }

  else
  {
    if (result == 1)
    {
      v3 = 3;
LABEL_13:
      *a1 = v3;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CMSampleBufferRef.Initializer.create(_:)(CMSampleBufferRef *a1)
{
  v2 = v1;
  v73 = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for CMSampleDataReference();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CMSampleBufferRef.Initializer();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of CMSampleBufferRef.Initializer(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v61 = *v11;
        v60 = *(v11 + 1);
        v62 = *(v11 + 4);
        sampleTiming.duration.value = *(v11 + 2);
        *&sampleTiming.duration.timescale = *(v11 + 3);
        sampleTiming.duration.epoch = v62;
        ReadyWithPacketDescriptions = CMAudioSampleBufferCreateWithPacketDescriptions(0, 0, 0, 0, 0, v61, v60, &sampleTiming.duration, 0, a1);

        goto LABEL_30;
      }

      v25 = *v11;
      v24 = *(v11 + 1);
      v26 = *(v11 + 2);
      v27 = *(v11 + 3);
      v28 = *(v11 + 4);
      ReadyWithPacketDescriptions = CMSampleBufferCreate(0, 0, 0, 0, 0, v25, v24, *(v27 + 16), (v27 + 32), *(v26 + 16), (v26 + 32), a1);
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          if (v11[72])
          {
            Ready = CMSampleBufferCreateReady(0, 0, 0, 0, 0, 0, 0, 0, a1);
          }

          else
          {
            v65 = *(v11 + 3);
            *&sampleTiming.presentationTimeStamp.timescale = *(v11 + 2);
            *&sampleTiming.decodeTimeStamp.value = v65;
            sampleTiming.decodeTimeStamp.epoch = *(v11 + 8);
            v66 = *(v11 + 1);
            *&sampleTiming.duration.value = *v11;
            *&sampleTiming.duration.epoch = v66;
            Ready = CMSampleBufferCreateReady(0, 0, 0, 0, 1, &sampleTiming, 0, 0, a1);
          }

          ReadyWithPacketDescriptions = Ready;
          goto LABEL_30;
        }

        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia21CMSampleDataReferenceV7content_So22CMFormatDescriptionRefa6formatSo0c6BufferI0aAAE26SamplePropertiesCollectionV06sampleM0tMd, &_s9CoreMedia21CMSampleDataReferenceV7content_So22CMFormatDescriptionRefa6formatSo0c6BufferI0aAAE26SamplePropertiesCollectionV06sampleM0tMR);
        v39 = *&v11[*(v43 + 48)];
        v44 = &v11[*(v43 + 64)];
        v45 = *v44;
        v46 = v44[1];
        v47 = v44[2];
        v48 = v44[3];
        outlined init with take of CMSampleDataReference(v11, v7);
        ReadyWithPacketDescriptions = CMSampleBufferCreateReady(0, 0, v39, v45, *(v47 + 16), (v47 + 32), *(v46 + 16), (v46 + 32), a1);

        if (*a1)
        {
          v49 = *a1;
          CMSampleDataReference.embed(into:)(v49);

          outlined destroy of CMSampleDataReference(v7);
          goto LABEL_30;
        }

        outlined destroy of CMSampleDataReference(v7);
LABEL_25:

        goto LABEL_30;
      }

      v25 = *v11;
      v35 = *(v11 + 3);
      v36 = *(v11 + 4);
      mStartOffset = v36[1].mStartOffset;
      sampleTiming.duration.value = *(v11 + 1);
      *&sampleTiming.duration.timescale = *(v11 + 2);
      sampleTiming.duration.epoch = v35;
      ReadyWithPacketDescriptions = CMAudioSampleBufferCreateWithPacketDescriptions(0, 0, 0, 0, 0, v25, mStartOffset, &sampleTiming.duration, v36 + 2, a1);
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v29 = *v11;
      v30 = *(v11 + 1);
      v31 = *(v11 + 2);
      v32 = *(v11 + 3);
      v34 = *(v11 + 4);
      v33 = *(v11 + 5);
      ReadyWithPacketDescriptions = CMSampleBufferCreateReady(0, v29, v30, v31, *(v34 + 16), (v34 + 32), *(v32 + 16), (v32 + 32), a1);

      goto LABEL_30;
    }

    v38 = *v11;
    v39 = *(v11 + 1);
    v63 = *(v11 + 2);
    v64 = *(v11 + 5);
    sampleTiming.duration.value = *(v11 + 3);
    *&sampleTiming.duration.timescale = *(v11 + 4);
    sampleTiming.duration.epoch = v64;
    ReadyWithPacketDescriptions = CMAudioSampleBufferCreateReadyWithPacketDescriptions(0, v38, v39, v63, &sampleTiming.duration, 0, a1);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v38 = *v11;
    v39 = *(v11 + 1);
    v40 = *(v11 + 4);
    v41 = *(v11 + 5);
    v42 = v41[1].mStartOffset;
    sampleTiming.duration.value = *(v11 + 2);
    *&sampleTiming.duration.timescale = *(v11 + 3);
    sampleTiming.duration.epoch = v40;
    ReadyWithPacketDescriptions = CMAudioSampleBufferCreateReadyWithPacketDescriptions(0, v38, v39, v42, &sampleTiming.duration, v41 + 2, a1);

LABEL_24:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 8)
  {
    v14 = *v11;
    v15 = *(v11 + 1);
    v16 = *(v11 + 2);
    v17 = *(v11 + 4);
    v18 = *(v11 + 7);
    v19 = *MEMORY[0x277CC0898];
    v20 = *(MEMORY[0x277CC0898] + 16);
    sampleTiming.duration.value = *(v11 + 5);
    *&sampleTiming.duration.timescale = *(v11 + 6);
    sampleTiming.duration.epoch = v18;
    sampleTiming.presentationTimeStamp.value = v16;
    *&sampleTiming.presentationTimeStamp.timescale = *(v11 + 3);
    sampleTiming.presentationTimeStamp.epoch = v17;
    sampleTiming.decodeTimeStamp.value = v19;
    *&sampleTiming.decodeTimeStamp.timescale = *(MEMORY[0x277CC0898] + 8);
    sampleTiming.decodeTimeStamp.epoch = v20;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    type metadata accessor for CVBufferRef(0);

    _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

    value = sbufDuration.value;
    ReadyWithPacketDescriptions = CMSampleBufferCreateReadyWithImageBuffer(0, sbufDuration.value, v15, &sampleTiming, a1);
  }

  else
  {
    v51 = *v11;
    v50 = *(v11 + 1);
    v52 = *(v11 + 2);
    v53 = *(v11 + 3);
    v54 = *(v11 + 5);
    v69 = *(v11 + 4);
    v70 = v52;
    v56 = *(v11 + 6);
    v55 = *(v11 + 7);
    v57 = v11[64];
    swift_getKeyPath();

    v58 = _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lFSo0cE8GroupRefa_Tg506_sSay9a7Media14ce8VGSo0cD8J33RefaIeggo_AdFs5Error_pIegTgrzo_TRAgIIeggo_Tf1cn_nTf4ng_n(v51, partial apply for implicit closure #3 in CMSampleBufferRef.Initializer.create(_:));

    if (v57)
    {
      v54 = *MEMORY[0x277CC0898];
      LODWORD(v56) = *(MEMORY[0x277CC0898] + 8);
      LODWORD(v59) = *(MEMORY[0x277CC0898] + 12);
      v55 = *(MEMORY[0x277CC0898] + 16);
    }

    else
    {
      v59 = HIDWORD(v56);
    }

    sampleTiming.duration.value = v70;
    *&sampleTiming.duration.timescale = v53;
    sampleTiming.duration.epoch = v69;
    sbufDuration.value = v54;
    sbufDuration.timescale = v56;
    sbufDuration.flags = v59;
    sbufDuration.epoch = v55;
    ReadyWithPacketDescriptions = CMSampleBufferCreateForTaggedBufferGroup(0, v58, &sampleTiming.duration, &sbufDuration, v50, a1);
  }

LABEL_30:
  v67 = *MEMORY[0x277D85DE8];
  return ReadyWithPacketDescriptions;
}

uint64_t implicit closure #1 in closure #4 in CMSampleBufferRef.Initializer.create(_:)(void *a1)
{
  v1 = a1;
  swift_getAtKeyPath();

  return v3;
}

uint64_t implicit closure #3 in CMSampleBufferRef.Initializer.create(_:)()
{

  swift_getAtKeyPath();

  return v1;
}

CFTypeRef protocol witness for ConcurrentAccess.CloneForCopyOnWrite.init(cloneForCopyOnWrite:) in conformance CMSampleBufferRef(void *a1)
{
  v1 = a1;
  v2 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v1);

  return v2;
}

uint64_t type metadata accessor for CMSampleBufferRef.Initializer()
{
  result = type metadata singleton initialization cache for CMSampleBufferRef.Initializer;
  if (!type metadata singleton initialization cache for CMSampleBufferRef.Initializer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CMSampleBufferRef.Initializer()
{
  type metadata accessor for (format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription])();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (sampleTiming: CMSampleTimingInfo?)();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (content: CMSampleDataReference, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)();
          if (v4 <= 0x3F)
          {
            type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)();
            if (v5 <= 0x3F)
            {
              type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime)(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription])(319);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for (content: CVReadOnlyPixelBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime)(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for (content: [CMTaggedDynamicBuffer], format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime?)(319);
                    if (v9 <= 0x3F)
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
  }
}

void type metadata accessor for (format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)()
{
  if (!lazy cache variable for type metadata for (format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection))
  {
    type metadata accessor for CMFormatDescriptionRef(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection));
    }
  }
}

void type metadata accessor for (format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime)()
{
  if (!lazy cache variable for type metadata for (format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime))
  {
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime));
    }
  }
}

void type metadata accessor for (format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription])()
{
  if (!lazy cache variable for type metadata for (format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription]))
  {
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo28AudioStreamPacketDescriptionVGMd, &_sSaySo28AudioStreamPacketDescriptionVGMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription]));
    }
  }
}

void type metadata accessor for (sampleTiming: CMSampleTimingInfo?)()
{
  if (!lazy cache variable for type metadata for (sampleTiming: CMSampleTimingInfo?))
  {
    type metadata accessor for CMSampleTimingInfo?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (sampleTiming: CMSampleTimingInfo?));
    }
  }
}

void type metadata accessor for CMSampleTimingInfo?()
{
  if (!lazy cache variable for type metadata for CMSampleTimingInfo?)
  {
    type metadata accessor for CMSampleTimingInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CMSampleTimingInfo?);
    }
  }
}

void type metadata accessor for (content: CMSampleDataReference, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)()
{
  if (!lazy cache variable for type metadata for (content: CMSampleDataReference, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection))
  {
    type metadata accessor for CMSampleDataReference();
    type metadata accessor for CMFormatDescriptionRef(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (content: CMSampleDataReference, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection));
    }
  }
}

void type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection)()
{
  if (!lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection))
  {
    type metadata accessor for CMFormatDescriptionRef(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleProperties: CMSampleBufferRef.SamplePropertiesCollection));
    }
  }
}

void type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, sampleCount: Int, presentationTime: CMTime));
    }
  }
}

void type metadata accessor for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription])(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription]))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo28AudioStreamPacketDescriptionVGMd, &_sSaySo28AudioStreamPacketDescriptionVGMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (content: CMReadOnlyDataBlockBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, packetDescriptions: [AudioStreamPacketDescription]));
    }
  }
}

void type metadata accessor for (content: CVReadOnlyPixelBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (content: CVReadOnlyPixelBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime))
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for CVReadOnlyPixelBuffer();
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (content: CVReadOnlyPixelBuffer, format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime));
    }
  }
}

void type metadata accessor for (content: [CMTaggedDynamicBuffer], format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (content: [CMTaggedDynamicBuffer], format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime?))
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9CoreMedia21CMTaggedDynamicBufferVGMd, &_sSay9CoreMedia21CMTaggedDynamicBufferVGMR);
    type metadata accessor for CMFormatDescriptionRef(255);
    type metadata accessor for CMTime(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo6CMTimeaSgMd, &_sSo6CMTimeaSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (content: [CMTaggedDynamicBuffer], format: CMFormatDescriptionRef, presentationTime: CMTime, duration: CMTime?));
    }
  }
}

void _s9CoreMedia16ConcurrentAccessO7WrapperPAASo17CMSampleBufferRefa8CMObjectRtzrlE22firstSampleAttachmentsAgAE0kL0VvgAlGYTXEfU_(uint64_t *a1)
{
  v1 = *a1;
  v2 = FigSampleBufferGetSingleSampleAttachments();
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v3;
    static Dictionary._forceBridgeFromObjectiveC(_:result:)();
    __break(1u);
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa;
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

Class Array<A>.rawValue.getter(uint64_t a1)
{
  isa = *(a1 + 16);
  if (isa)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = (a1 + 32);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    do
    {
      v4 = *v3++;

      Dictionary._bridgeToObjectiveC()();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = *(v7 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      isa = (isa - 1);
    }

    while (isa);
    type metadata accessor for CFDictionaryRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  return isa;
}

uint64_t outlined init with copy of CMSampleBufferRef.Initializer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CMSampleBufferRef.Initializer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CMSampleDataReference(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CMSampleDataReference();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CMSampleDataReference(uint64_t a1)
{
  v2 = type metadata accessor for CMSampleDataReference();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Array<A>.init(rawValue:)(void *a1)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CFDictionaryRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lF(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v20;
    v8 = (a3 + 48);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      if (*v8)
      {
        v17 = *(v8 - 2);
        v18 = *(v8 - 1);
        v19 = 0;
        if (*v8 == 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        outlined copy of CMTaggedDynamicBuffer.Content(*(v8 - 1), v11);
      }

      else
      {
        MEMORY[0x28223BE20](v7);

        outlined copy of CMTaggedDynamicBuffer.Content(v9, 0);
        outlined copy of CMTaggedDynamicBuffer.Content(v9, 0);
        _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
        outlined consume of CMTaggedDynamicBuffer.Content(v9, 0);

        outlined consume of CMTaggedDynamicBuffer.Content(v9, 0);
      }

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        v7 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v8 += 24;
      *(v20 + 16) = v13 + 1;
      v14 = v20 + 24 * v13;
      *(v14 + 32) = v17;
      *(v14 + 40) = v18;
      *(v14 + 48) = v19;
      --v4;
    }

    while (v4);
    v3 = a1;
  }

  v3(v5);
}

uint64_t CMTaggedDynamicBuffer.tags.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

id CMTaggedDynamicBuffer.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return outlined copy of CMTaggedDynamicBuffer.Content(v2, v3);
}

void CMTaggedDynamicBuffer.content.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined consume of CMTaggedDynamicBuffer.Content(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
}

uint64_t CMTaggedDynamicBuffer.init(tags:content:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  return result;
}

{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = 1;
  return result;
}

{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  *(a3 + 16) = 2;
  return result;
}

uint64_t CMTaggedDynamicBuffer.init(tags:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t CMTaggedDynamicBuffer.init(unsafeBuffer:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  if (a1[2])
  {
    v5 = type metadata accessor for CVReadOnlyPixelBuffer();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();

    v8 = v3;
    v3 = CVReadOnlyPixelBuffer.init(unsafeBuffer:)();

    v10 = 0;
LABEL_11:
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v10;
    v14 = *MEMORY[0x277D85DE8];
    return result;
  }

  v11 = *a1;

  v12 = v3;
  v13 = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (v13)
  {
    if (v13 == 1)
    {
      if (CMSampleBufferIsValid(v12))
      {
        statusOut = noErr.getter();
        if (CMSampleBufferDataIsReady(v12))
        {

          v10 = 1;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!CMSampleBufferIsValid(v12))
  {
    goto LABEL_13;
  }

  statusOut = noErr.getter();
  if (CMSampleBufferDataIsReady(v12))
  {

    v10 = 2;
    goto LABEL_11;
  }

  CMSampleBufferHasDataFailed(v12, &statusOut);
  __break(1u);
LABEL_16:
  result = CMSampleBufferHasDataFailed(v12, &statusOut);
  __break(1u);
  return result;
}

void _s9CoreMedia21CMTaggedDynamicBufferV016withUnsafeTaggedE0yxxAA0cE0VKYTXEKlF(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  if (*(v1 + 16))
  {
    v26 = v1[1];
    if (v4 == 1)
    {
      v5 = MEMORY[0x28223BE20](a1);
      v22 = v6;
      v23 = v5;
      v24 = v7;
      v25 = v8;
      v9 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVy0A5Video015CVReadOnlyPixelE0CGMd, &_s9CoreMedia19CMReadySampleBufferVy0A5Video015CVReadOnlyPixelE0CGMR);
      _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF(_s9CoreMedia21CMTaggedDynamicBufferV016withUnsafeTaggedE0yxxAA0cE0VKYTXEKlFxSo08CMSampleE3RefaKYTXEfU0_TA, v21);
      v10 = v3;
      v11 = 1;
    }

    else
    {
      v16 = MEMORY[0x28223BE20](a1);
      v22 = v17;
      v23 = v16;
      v24 = v18;
      v25 = v19;
      v20 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia19CMReadySampleBufferVyAA019CMReadOnlyDataBlockE0VGMd, &_s9CoreMedia19CMReadySampleBufferVyAA019CMReadOnlyDataBlockE0VGMR);
      _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF(_s9CoreMedia21CMTaggedDynamicBufferV016withUnsafeTaggedE0yxxAA0cE0VKYTXEKlFxSo08CMSampleE3RefaKYTXEfU1_TA, v21);
      v10 = v3;
      v11 = 2;
    }

    outlined consume of CMTaggedDynamicBuffer.Content(v10, v11);
  }

  else
  {
    v12 = MEMORY[0x28223BE20](a1);
    v22 = v13;
    v23 = v12;
    v24 = v14;
    v25 = v15;

    _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
    outlined consume of CMTaggedDynamicBuffer.Content(v3, 0);
  }
}

void _s9CoreMedia21CMTaggedDynamicBufferV016withUnsafeTaggedE0yxxAA0cE0VKYTXEKlFxSo11CVBufferRefaKYTXEfU_AF_Tg5(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v7 = a4;
  v8 = a1;
  v9 = 1;
  v5 = a1;

  a2(&v7);
  v6 = v8;
}

void _s9CoreMedia21CMTaggedDynamicBufferV016withUnsafeTaggedE0yxxAA0cE0VKYTXEKlFxSo11CVBufferRefaKYTXEfU_Tm(void *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a4;
  v10 = a1;
  v11 = a6;
  v7 = a1;

  a2(&v9);
  v8 = v10;
}

CMItemCount Array<A>.init(_:)(OpaqueCMTaggedBufferGroup *a1)
{
  Count = CMTaggedBufferGroupGetCount(a1);
  result = CMTaggedBufferGroupGetCount(a1);
  if (result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  result = CMTaggedBufferGroupGetCount(a1);
  if (Count < 0 || result < Count)
  {
    goto LABEL_20;
  }

  if (Count)
  {
    v20 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, Count, 0);
    v4 = 0;
    v5 = v20;
    while (1)
    {
      result = CMTaggedBufferGroupGetTagCollectionAtIndex(a1, v4);
      if (!result)
      {
        goto LABEL_21;
      }

      v6 = result;
      v7 = CMTaggedBufferGroupGetCVPixelBufferAtIndex(a1, v4);
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        result = CMTaggedBufferGroupGetCMSampleBufferAtIndex(a1, v4);
        if (!result)
        {
          goto LABEL_22;
        }

        v8 = result;
        v7 = 0;
      }

      v9 = v7 != 0;
      v16[0] = specialized Array<A>.init(tagCollection:)(v6);
      v16[1] = v8;
      v17 = v9;
      CMTaggedDynamicBuffer.init(unsafeBuffer:)(v16, v18);
      v10 = v18[0];
      v11 = v18[1];
      v12 = v19;
      v20 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 24 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      *(v15 + 48) = v12;
      result = CMTaggedBufferGroupGetCount(a1);
      if (v4 >= result)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (Count == ++v4)
      {

        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

id _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lFAfCXEfU_A2Fcfu_32d41d8cd98f00b204e9800998ecf8427eA2FTf3nnpk_nTm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;

  return v4;
}

id outlined copy of CMTaggedDynamicBuffer.Content(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
  }

  return result;
}

void outlined consume of CMTaggedDynamicBuffer.Content(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t getEnumTagSinglePayload for CMTaggedDynamicBuffer.Content(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for CMTaggedDynamicBuffer.Content(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t _sSa9CoreMediaAA21CMTaggedDynamicBufferVRszlE23withUnsafeTaggedBuffersyqd__qd__SayAA0cE0VGKYTXEKRi_d__lFSo0cE8GroupRefa_Tg506_sSay9a7Media14ce8VGSo0cD8J33RefaIeggo_AdFs5Error_pIegTgrzo_TRAgIIeggo_Tf1cn_nTf4ng_n(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = a2;
    v19 = MEMORY[0x277D84F90];
    v5 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v19;
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      if (*v6)
      {
        v16 = *(v6 - 2);
        v17 = *(v6 - 1);
        v18 = 0;
        if (*v6 == 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }

        outlined copy of CMTaggedDynamicBuffer.Content(*(v6 - 1), v9);
      }

      else
      {
        MEMORY[0x28223BE20](v5);

        outlined copy of CMTaggedDynamicBuffer.Content(v7, 0);
        outlined copy of CMTaggedDynamicBuffer.Content(v7, 0);
        _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();
        outlined consume of CMTaggedDynamicBuffer.Content(v7, 0);

        outlined consume of CMTaggedDynamicBuffer.Content(v7, 0);
      }

      v11 = *(v19 + 16);
      v10 = *(v19 + 24);
      if (v11 >= v10 >> 1)
      {
        v5 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v6 += 24;
      *(v19 + 16) = v11 + 1;
      v12 = v19 + 24 * v11;
      *(v12 + 32) = v16;
      *(v12 + 40) = v17;
      *(v12 + 48) = v18;
      --v2;
    }

    while (v2);
    a2 = v15;
  }

  v13 = a2(v3);

  return v13;
}

uint64_t specialized ConcurrentAccess.Wrapper<>.sampleProperties.getter@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  FigSampleBufferGetSampleInfosForSwiftOverlay();
  v4 = 0;
  NumSamples = CMSampleBufferGetNumSamples(a1);
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  result = specialized Array<A>.init(rawValue:)(v4);
  *(a2 + 40) = 0;
  *a2 = NumSamples;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = result;
  *(a2 + 32) = a1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void (*specialized ConcurrentAccess.Wrapper<>.sampleProperties.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v4[7] = *v1;
  specialized ConcurrentAccess.Wrapper<>.sampleProperties.getter(v5, v4);
  v4[8] = v4[4];
  return ConcurrentAccess.Wrapper<>.sampleProperties.modifyspecialized ;
}

void ConcurrentAccess.Wrapper<>.sampleProperties.modifyspecialized (void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    goto LABEL_13;
  }

  v3 = v2[8];
  v4 = v2[4];
  if (v3)
  {
    if (v3 != v4)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (*(v2 + 40) != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:
  v5 = *v2;
  if (v5 != CMSampleBufferGetNumSamples(v2[7]))
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v6 = v2[6];
  v7 = *v6;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v6;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v10 = v9;
    v9 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v10);
    v11 = v2[6];

    *v11 = v9;
  }

  v12 = *(v2[1] + 16);
  v13 = *(v2[2] + 16);
  v14 = *(v2[3] + 16);

  v15 = v9;
  if (v14)
  {

    v14 = Array<A>.rawValue.getter(v16);
  }

  FigSampleBufferSetSampleInfosForSwiftOverlay();

LABEL_13:
  v17 = v2[1];
  v18 = v2[2];
  v19 = v2[3];

  free(v2);
}

uint64_t specialized ConcurrentAccess.Wrapper<>.outputSampleTimings.getter@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  timingArrayEntriesNeededOut[2] = *MEMORY[0x277D85DE8];
  timingArrayEntriesNeededOut[0] = 0;
  timingArrayEntriesNeededOut[1] = a1;
  v3 = *(MEMORY[0x277CC0918] + 48);
  *&timingArrayOut.presentationTimeStamp.timescale = *(MEMORY[0x277CC0918] + 32);
  *&timingArrayOut.decodeTimeStamp.value = v3;
  timingArrayOut.decodeTimeStamp.epoch = *(MEMORY[0x277CC0918] + 64);
  v4 = *(MEMORY[0x277CC0918] + 16);
  *&timingArrayOut.duration.value = *MEMORY[0x277CC0918];
  *&timingArrayOut.duration.epoch = v4;
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(a1, 1, &timingArrayOut, timingArrayEntriesNeededOut);
  result = noErr.getter();
  if (result != OutputSampleTimingInfoArray)
  {
    if (OutputSampleTimingInfoArray == -12737)
    {
      v9 = MEMORY[0x28223BE20](timingArrayEntriesNeededOut[0]);
      result = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo18CMSampleTimingInfoa_Tt1g5(v9, partial apply for specialized closure #2 in ConcurrentAccess.Wrapper<>.outputSampleTimings.getter);
      if (*(result + 16))
      {
        *a2 = result;
        *(a2 + 72) = 0;
        goto LABEL_8;
      }
    }

    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 72) = -1;
    goto LABEL_8;
  }

  v7 = *&timingArrayOut.decodeTimeStamp.value;
  *(a2 + 32) = *&timingArrayOut.presentationTimeStamp.timescale;
  *(a2 + 48) = v7;
  *(a2 + 64) = timingArrayOut.decodeTimeStamp.epoch;
  v8 = *&timingArrayOut.duration.epoch;
  *a2 = *&timingArrayOut.duration.value;
  *(a2 + 16) = v8;
  *(a2 + 72) = 1;
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMReadySampleBuffer.init(_:)@<X0>(opaqueCMSampleBuffer *a1@<X0>, opaqueCMSampleBuffer **a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!CMSampleBufferIsValid(a1))
  {
    __break(1u);
LABEL_5:
    CMSampleBufferHasDataFailed(a1, &statusOut);
    __break(1u);
  }

  statusOut = noErr.getter();
  result = CMSampleBufferDataIsReady(a1);
  if (!result)
  {
    goto LABEL_5;
  }

  *a2 = a1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s9CoreMedia19CMReadySampleBufferV010withUnsafedE0yqd__qd__So08CMSampleE3RefaKYTXEKRi_d__lF(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *v2;
  type metadata accessor for CMSampleBufferRef(0);
  return _s9CoreMedia16ConcurrentAccessO11CopyOnWriteV016withUnsafeSharedD0yqd__qd__xKYTXEKRi_d__lF(a1, a2, v5);
}

uint64_t CMReadySampleBuffer.contentType.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = FigSampleBufferPayloadTypeForSwiftOverlay();
  if (result <= 0)
  {
    if (!result)
    {
      v5 = 2;
      goto LABEL_13;
    }
  }

  else if (result > 2)
  {
    switch(result)
    {
      case 3:
        v5 = 4;
        goto LABEL_13;
      case 4:
        v5 = 0;
        goto LABEL_13;
      case 5:
        v5 = 1;
        goto LABEL_13;
    }
  }

  else
  {
    if (result == 1)
    {
      v5 = 3;
LABEL_13:
      *a1 = v5;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

CMFormatDescriptionRef CMReadySampleBuffer.formatDescription.getter()
{
  FormatDescription = CMSampleBufferGetFormatDescription(*v0);

  return FormatDescription;
}

uint64_t key path getter for CMReadySampleBuffer.outputPresentationTimeStamp : <A>CMReadySampleBuffer<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  result = CMReadySampleBuffer.outputPresentationTimeStamp.getter(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t CMReadySampleBuffer.outputPresentationTimeStamp.setter(CMTimeValue a1, uint64_t a2, CMTimeEpoch a3)
{
  v7 = *v3;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v9 = *v3;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v10 = v9;
    v11 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v10);

    v9 = v11;
    *v3 = v11;
  }

  v15.value = a1;
  *&v15.timescale = a2;
  v15.epoch = a3;
  v12 = CMSampleBufferSetOutputPresentationTimeStamp(v9, &v15);
  result = noErr.getter();
  if (v12 != result)
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v14 initWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*CMReadySampleBuffer.outputPresentationTimeStamp.modify(void *a1, uint64_t a2))(uint64_t **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x28uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  CMSampleBufferGetOutputPresentationTimeStamp(&v11, *v2);
  timescale = v11.timescale;
  epoch = v11.epoch;
  v9 = HIDWORD(*&v11.timescale);
  v6[2] = v11.value;
  v6 += 2;
  *(v6 + 2) = timescale;
  *(v6 + 3) = v9;
  v6[2] = epoch;
  return CMReadySampleBuffer.outputPresentationTimeStamp.modify;
}

void CMReadySampleBuffer.outputPresentationTimeStamp.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  CMReadySampleBuffer.outputPresentationTimeStamp.setter((*a1)[2], v1[3], v1[4]);

  free(v1);
}

id CMReadySampleBuffer.rawDecryptor.getter()
{
  v1 = *v0;
  Decryptor = FigSampleBufferGetDecryptor();

  return Decryptor;
}

uint64_t key path setter for CMReadySampleBuffer.rawDecryptor : <A>CMReadySampleBuffer<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  type metadata accessor for CMReadySampleBuffer();
  v7 = swift_unknownObjectRetain();
  specialized CMReadySampleBuffer.rawDecryptor.setter(v7);

  return swift_unknownObjectRelease();
}

uint64_t CMReadySampleBuffer.rawDecryptor.setter(uint64_t a1)
{
  specialized CMReadySampleBuffer.rawDecryptor.setter(a1);

  return swift_unknownObjectRelease();
}

uint64_t (*CMReadySampleBuffer.rawDecryptor.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  *a1 = FigSampleBufferGetDecryptor();
  return CMReadySampleBuffer.rawDecryptor.modify;
}

uint64_t CMReadySampleBuffer.rawDecryptor.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    specialized CMReadySampleBuffer.rawDecryptor.setter(v5);
    swift_unknownObjectRelease();
  }

  else
  {
    specialized CMReadySampleBuffer.rawDecryptor.setter(v4);
  }

  return swift_unknownObjectRelease();
}

const opaqueCMFormatDescription *CMReadySampleBuffer<>.formatDescription.getter()
{
  result = CMSampleBufferGetFormatDescription(*v0);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

const opaqueCMFormatDescription *key path getter for CMReadySampleBuffer<>.formatDescription : <A>CMReadySampleBuffer<A>@<X0>(uint64_t *a1@<X0>, const opaqueCMFormatDescription **a2@<X8>)
{
  v4 = *a1;
  result = CMReadySampleBuffer<>.formatDescription.getter();
  *a2 = result;
  return result;
}

void key path setter for CMReadySampleBuffer<>.formatDescription : <A>CMReadySampleBuffer<A>(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *a1;
  v6 = *(*(a3 + a4 - 8) + 8);
  type metadata accessor for CMReadySampleBuffer();
  v7 = v5;
  specialized CMReadySampleBuffer<>.formatDescription.setter(v7);
}

void CMReadySampleBuffer<>.formatDescription.setter(void *a1)
{
  specialized CMReadySampleBuffer<>.formatDescription.setter(a1);
}

void (*CMReadySampleBuffer<>.formatDescription.modify(const opaqueCMFormatDescription **a1, const opaqueCMFormatDescription *a2, const opaqueCMFormatDescription *a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  *a1 = CMReadySampleBuffer<>.formatDescription.getter();
  return CMReadySampleBuffer<>.formatDescription.modify;
}

void CMReadySampleBuffer<>.formatDescription.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *a1;
  if (a2)
  {
    v6 = v4;
    specialized CMReadySampleBuffer<>.formatDescription.setter(v6);
  }

  else
  {
    specialized CMReadySampleBuffer<>.formatDescription.setter(v4);
  }
}

double key path getter for CMReadySampleBuffer<>.sampleProperties : <A>CMReadySampleBuffer<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *a1;
  CMReadySampleBuffer<>.sampleProperties.getter(&v7);
  v3 = v9;
  v4 = v10;
  v5 = v11;
  *a2 = v7;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  return result;
}

uint64_t key path setter for CMReadySampleBuffer<>.sampleProperties : <A>CMReadySampleBuffer<A>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);

  v7 = CMReadySampleBuffer<>.sampleProperties.modify(v13);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  *v8 = v2;
  *(v8 + 8) = v1;
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;

  return (v7)(v13, 0);
}

void (*CMReadySampleBuffer<>.sampleProperties.modify(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = specialized ConcurrentAccess.Wrapper<>.sampleProperties.modify(v2);
  return CMReadySampleBuffer<>.sampleProperties.modify;
}

void CMReadySampleBuffer<>.sampleProperties.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t CMReadySampleBuffer<>.sampleProperties.setter(uint64_t *a1)
{
  v2 = a1[1];
  v21 = *a1;
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = *v1;
  specialized ConcurrentAccess.Wrapper<>.sampleProperties.getter(*v1, v22);
  v8 = v23;

  if (v8)
  {
    if (v5)
    {
      v9 = v8 == v5;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v5 == 0;
  }

  v10 = !v9;
  if ((v10 | v6))
  {
    if (v21 != CMSampleBufferGetNumSamples(v7))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v11 = *v1;
    isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull & 1) == 0)
    {
      v14 = v13;
      v13 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v14);

      *v1 = v13;
    }

    v15 = *(v2 + 16);
    v16 = *(v4 + 16);
    v17 = *(v3 + 16);

    v18 = v13;
    if (v17)
    {

      v17 = Array<A>.rawValue.getter(v19);
    }

    FigSampleBufferSetSampleInfosForSwiftOverlay();
  }
}

uint64_t CMReadySampleBuffer<>.splitSamples()(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5[2] = *(a1 + 16);
  v5[3] = a2;
  v5[4] = v3;
  type metadata accessor for CMSampleBufferRef(0);
  type metadata accessor for Array();
  _s9CoreMedia16ConcurrentAccessO11CopyOnWriteV016withUnsafeSharedD0yqd__qd__xKYTXEKRi_d__lF(_s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_TA, v5, v3);
  return v5[7];
}

uint64_t _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  CMSampleBufferGetNumSamples(a1);
  v5 = *(a2 + 8);
  type metadata accessor for CMReadySampleBuffer();
  result = Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  *a3 = result;
  return result;
}

uint64_t _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_ySryAHGz_SiztXEfU_(void ***a1, void *a2, opaqueCMSampleBuffer *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_ySryAHGz_SiztXEfU_s5Int32VAE_SitXEfU_TA;
  *(v13 + 24) = v12;
  v20[4] = partial apply for thunk for @callee_guaranteed (@guaranteed CMSampleBufferRef, @unowned Int) -> (@unowned Int32);
  v20[5] = v13;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMSampleBufferRef, @unowned Int) -> (@unowned Int32);
  v20[3] = &block_descriptor;
  v14 = _Block_copy(v20);

  v15 = CMSampleBufferCallBlockForEachSample(a3, v14);
  _Block_release(v14);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (v15 != noErr.getter())
    {
      v17 = *a1;
      v18 = **a1;
      *v17 = a4;
      v19 = a4;

      *a2 = 1;
    }
  }

  return result;
}

void _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_ySryAHGz_SiztXEfU_s5Int32VAE_SitXEfU_(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = *a3;
  CMReadySampleBuffer.init(_:)(a1, &v8);
  v7 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = v8;

  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    *a4 = a2 + 1;

    noErr.getter();
  }
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo18CMSampleTimingInfoa_Tt1g5(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    type metadata accessor for CMSampleTimingInfo(0);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

CFTypeRef specialized _CMSampleBufferInitTrampoline.init(copying:)(CMSampleBufferRef sbuf)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  Copy = CMSampleBufferCreateCopy(*MEMORY[0x277CBECE8], sbuf, v7);
  result = noErr.getter();
  if (Copy != result)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:Copy userInfo:0];
    swift_willThrow();

    goto LABEL_5;
  }

  if (v7[0])
  {
    v4 = v7[0];
    Copy = _swiftInitForCMTimebase(v4);

LABEL_5:
    v6 = *MEMORY[0x277D85DE8];
    return Copy;
  }

  __break(1u);
  return result;
}

uint64_t specialized CMReadySampleBuffer.rawDecryptor.setter(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    v6 = v5;
    v7 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v6);

    v5 = v7;
    *v1 = v7;
  }

  return MEMORY[0x282112B38](v5, a1);
}

void specialized CMReadySampleBuffer<>.formatDescription.setter(void *a1)
{
  v5 = a1;
  v2 = *v1;
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v3 = *v1;
    v4 = specialized _CMSampleBufferInitTrampoline.init(copying:)(v3);

    *v1 = v4;
  }

  FigSampleBufferBufferSetFormatDescriptionForSwiftOverlay();
}

uint64_t _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_TA@<X0>(opaqueCMSampleBuffer *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_(a1, v2[3], a2);
}

uint64_t type metadata instantiation function for CMReadySampleBuffer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_ySryAHGz_SiztXEfU_s5Int32VAE_SitXEfU_TA(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  _s9CoreMedia19CMReadySampleBufferVAASo08CMSampleE3RefaAAE05MultiD7ContentRzrlE12splitSamplesSayACyxGGyFAiEYTXEfU_ySryAHGz_SiztXEfU_s5Int32VAE_SitXEfU_(a1, a2, *(v2 + 32), *(v2 + 40));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for specialized closure #2 in ConcurrentAccess.Wrapper<>.outputSampleTimings.getter(uint64_t a1, CMItemCount *a2)
{
  v4 = **(v2 + 16);
  v5 = *(a1 + 8);
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(v4, v5, *a1, 0);
  result = noErr.getter();
  if (OutputSampleTimingInfoArray == result)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.init(unsafeBlockBuffer:)@<X0>(OpaqueCMBlockBuffer *a1@<X0>, OpaqueCMBlockBuffer **a2@<X8>)
{
  result = CMBlockBufferIsEmpty(a1);
  if (result || (v5 = CMBlockBufferAssureBlockMemory(a1), result = noErr.getter(), v5 == result))
  {
    *a2 = a1;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

CFTypeRef CMReadOnlyDataBlockBuffer.init(subBlockCapacity:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  result = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE8capacity5flagsxSi_So0cD3RefaAAE5FlagsVtKcfCAG_Tt2B5(a1, 0);
  *a2 = result;
  return result;
}

CFTypeRef _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE8capacity5flagsxSi_So0cD3RefaAAE5FlagsVtKcfCAG_Tt2B5(unint64_t subBlockCapacity, CMBlockBufferFlags flags)
{
  cf[1] = *MEMORY[0x277D85DE8];
  if (HIDWORD(subBlockCapacity))
  {
    __break(1u);
  }

  cf[0] = 0;
  Empty = CMBlockBufferCreateEmpty(*MEMORY[0x277CBECE8], subBlockCapacity, flags, cf);
  if (Empty != noErr.getter())
  {
    v4 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v4 initWithDomain:*MEMORY[0x277CCA590] code:Empty userInfo:0];
    swift_willThrow();

    goto LABEL_6;
  }

  result = cf[0];
  if (cf[0])
  {
    Empty = _swiftInitForCMTimebase(cf[0]);

LABEL_6:
    v5 = *MEMORY[0x277D85DE8];
    return Empty;
  }

  __break(1u);
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  return outlined consume of CMMutableDataBlockBuffer.BlockSource?(v2);
}

void CMReadOnlyDataBlockBuffer.init(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  BytePtr = CFDataGetBytePtr(v6.super.isa);
  v8 = BytePtr;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 == 2)
    {
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (__OFSUB__(v11, v12))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    if (!BytePtr)
    {
LABEL_12:
      v14 = swift_allocObject();
      v15 = 0;
      v10 = 0;
      v14[2].super.isa = v6.super.isa;
      goto LABEL_13;
    }

LABEL_8:
    v13 = swift_allocObject();
    v13[2].super.isa = v6.super.isa;
    if ((v10 & 0x8000000000000000) == 0)
    {
      v14 = v13;
      v15 = &v8[v10];
LABEL_13:
      v16 = v6.super.isa;
      inited = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE6buffer11deallocator5flagsxs5SliceVySwG_ySv_SitcSo0cD3RefaAAE5FlagsVtKcfCAK_Tt3B5(0, v10, v8, v15, CMTimebaseRef.NotificationKey.rawValue.modify, v14, 0);
      outlined consume of Data._Representation(a1, a2);

      *a3 = inited;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (!v9)
  {
    v10 = BYTE6(a2);
    if (!BytePtr)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = HIDWORD(a1) - a1;
    if (!BytePtr)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t CMReadOnlyDataBlockBuffer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DispatchData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  inited = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAEyx8Dispatch0G4DataVKcfCSo0cD3Refa_Tt1g5(v8);
  result = (*(v5 + 8))(a1, v4);
  *a2 = inited;
  return result;
}

uint64_t _s9CoreMedia28_CMBlockBufferInitTrampolinePAAEyx8Dispatch0G4DataVKcfCSo0cD3Refa_Tt1g5(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  v3 = DispatchData._bridgeToObjectiveC()();
  BlockBufferWithDispatchDataNoCopyForSwiftOverlay = FigCreateBlockBufferWithDispatchDataNoCopyForSwiftOverlay();

  if (BlockBufferWithDispatchDataNoCopyForSwiftOverlay == noErr.getter())
  {
    result = 0;
    __break(1u);
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:BlockBufferWithDispatchDataNoCopyForSwiftOverlay userInfo:0];
    swift_willThrow();

    v7 = type metadata accessor for DispatchData();
    (*(*(v7 - 8) + 8))(a1, v7);
    v8 = *MEMORY[0x277D85DE8];
    return BlockBufferWithDispatchDataNoCopyForSwiftOverlay;
  }

  return result;
}

BOOL CMReadOnlyDataBlockBuffer.isContiguous.getter()
{
  v1 = *v0;
  if (CMBlockBufferIsEmpty(*v0))
  {
    return 1;
  }

  DataLength = CMBlockBufferGetDataLength(v1);
  return CMBlockBufferIsRangeContiguous(v1, 0, DataLength) != 0;
}

void _s9CoreMedia25CMReadOnlyDataBlockBufferV32withContiguousStorageIfAvailableyxSgxSWKYTXEKlF(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMd, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMR);
  v9 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.CopyOnWrite<CMBlockBufferRef> and conformance ConcurrentAccess.CopyOnWrite<A>, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMd, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMR);
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlF(0, 0, 1, a1, v8, a2, v9, a3);
}

uint64_t CMReadOnlyDataBlockBuffer.append(referenceOf:optimizeDepth:)(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  v9 = v4;
  type metadata accessor for CMBlockBufferRef(0);
  v8[3] = v5;
  v8[4] = &protocol witness table for CMBlockBufferRef;
  v8[0] = v3;
  v6 = v3;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v8, v2, &v9);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void CMReadOnlyDataBlockBuffer.append(referenceOf:optimizeDepth:)(uint64_t a1, char a2)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  outlined consume of CMMutableDataBlockBuffer.BlockSource?(*(a1 + 8));
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
  }

  v12 = v8;
  type metadata accessor for CMBlockBufferRef(0);
  v11[3] = v9;
  v11[4] = &protocol witness table for CMBlockBufferRef;
  v11[0] = v4;
  v10 = v4;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v11, v2, &v12);
  __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t static CMReadOnlyDataBlockBuffer.+ infix(_:_:)@<X0>(void **a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = *a1;
  v11 = 0;
  type metadata accessor for CMBlockBufferRef(0);
  v10[3] = v6;
  v10[4] = &protocol witness table for CMBlockBufferRef;
  v10[0] = v5;
  v7 = v4;
  v8 = v5;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v10, a3, &v11);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void static CMReadOnlyDataBlockBuffer.+ infix(_:_:)(void **a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  *a3 = *a1;
  v10 = v4;
  outlined consume of CMMutableDataBlockBuffer.BlockSource?(v5);
  v14 = 0;
  type metadata accessor for CMBlockBufferRef(0);
  v13[3] = v11;
  v13[4] = &protocol witness table for CMBlockBufferRef;
  v13[0] = v6;
  v12 = v6;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v13, a3, &v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t static CMReadOnlyDataBlockBuffer.+= infix(_:_:)(void **a1, void **a2)
{
  v3 = *a2;
  v8 = 0;
  type metadata accessor for CMBlockBufferRef(0);
  v7[3] = v4;
  v7[4] = &protocol witness table for CMBlockBufferRef;
  v7[0] = v3;
  v5 = v3;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v7, a1, &v8);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void static CMReadOnlyDataBlockBuffer.+= infix(_:_:)(void **a1, uint64_t a2)
{
  v3 = *a2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined consume of CMMutableDataBlockBuffer.BlockSource?(*(a2 + 8));
  v10 = 0;
  type metadata accessor for CMBlockBufferRef(0);
  v9[3] = v7;
  v9[4] = &protocol witness table for CMBlockBufferRef;
  v9[0] = v3;
  v8 = v3;
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(v9, a1, &v10);
  __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t key path getter for CMBlockBufferRef.isEmpty : CMBlockBufferRef@<X0>(CMBlockBufferRef *a1@<X0>, BOOL *a2@<X8>)
{
  result = CMBlockBufferIsEmpty(*a1);
  *a2 = result != 0;
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.startIndex.getter()
{
  v1 = *v0;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v3))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result + v3 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.endIndex.getter()
{
  v1 = *v0;
  v2 = FigBlockBufferImpliedIndicesForSwiftOverlay();
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result < v2)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.indices.getter()
{
  v1 = *v0;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v4 = __OFADD__(result, v3);
  v5 = result + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v5 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.regions.getter()
{
  v1 = *v0;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v3))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = result;
  if (result + v3 < result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = specialized ConcurrentAccess.Wrapper<>.subBlocks.getter(v1);
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = v5;
    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    result = v16;
    v7 = v17;
    for (i = (v16 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v10 = v9 ? *i : 0;
      v11 = *(i - 2);
      v12 = v4 + v11;
      if (__OFADD__(v4, v11))
      {
        break;
      }

      v14 = *(v17 + 16);
      v13 = *(v17 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        result = v16;
      }

      *(v17 + 16) = v14 + 1;
      v15 = (v17 + 24 * v14);
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v12;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized ConcurrentAccess.Wrapper<>.subBlocks.getter(OpaqueCMBlockBuffer *a1)
{
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  CMBlockBufferGetDataLength(a1);
  v1 = swift_allocObject();
  *(v1 + 16) = &v9;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE9subBlocksSayAgAE8SubBlockVGvgs5Int32VAGYTXEfU_AOSvSg_SitXEfU_TA_18;
  *(v2 + 24) = v1;
  v7[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Int32)partial apply;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Int32);
  v7[3] = &block_descriptor_25;
  v3 = _Block_copy(v7);

  v4 = FigBlockBufferEnumerateBlocksForSwiftOverlay();
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    result = noErr.getter();
    if (v4 == result)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

{
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  CMBlockBufferGetDataLength(a1);
  v1 = swift_allocObject();
  *(v1 + 16) = &v9;
  *(v1 + 24) = &v8;
  v2 = swift_allocObject();
  *(v2 + 16) = _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE9subBlocksSayAgAE8SubBlockVGvgs5Int32VAGYTXEfU_AOSvSg_SitXEfU_TA;
  *(v2 + 24) = v1;
  v7[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Int32);
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Int32);
  v7[3] = &block_descriptor_0;
  v3 = _Block_copy(v7);

  v4 = FigBlockBufferEnumerateBlocksForSwiftOverlay();
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    result = noErr.getter();
    if (v4 == result)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.subscript.getter(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v6 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 < v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 > a1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 <= a1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 + v8 < v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFSUB__(a1, v7))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(v3, a1 - v7, 0, 0, v12);
  if (DataPointer != noErr.getter())
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v12[0])
  {
    goto LABEL_21;
  }

  result = *v12[0];
  if ((result & 0x80000000) != 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, OpaqueCMBlockBuffer **a3@<X8>)
{
  v17 = *v3;
  v7 = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v9 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v7 != a1 || v9 != a2)
  {
    if (a1 != a2 && (v7 > a1 || v9 < a2))
    {
      goto LABEL_27;
    }

    v11 = a1 - v7;
    if (!__OFSUB__(a1, v7))
    {
      v12 = a2 - v7;
      if (!__OFSUB__(a2, v7))
      {
        if (v12 >= v11)
        {
          if (!__OFSUB__(v12, v11))
          {
            SliceForSwiftOverlay = FigBlockBufferCreateSliceForSwiftOverlay();
            if (SliceForSwiftOverlay)
            {
              v14 = SliceForSwiftOverlay;
              result = CMBlockBufferIsEmpty(SliceForSwiftOverlay);
              if (result || (LODWORD(a1) = CMBlockBufferAssureBlockMemory(v14), result = noErr.getter(), a1 == result))
              {
                *a3 = v14;
                return result;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            [v16 initWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
            swift_willThrow();
            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a3 = v17;

  return v17;
}

void _s9CoreMedia25CMReadOnlyDataBlockBufferV010withUnsafefG0yxxSo07CMBlockG3RefaKYTXEKRi_zlFTm(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMd, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMR);
  v10 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.CopyOnWrite<CMBlockBufferRef> and conformance ConcurrentAccess.CopyOnWrite<A>, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMd, &_s9CoreMedia16ConcurrentAccessO11CopyOnWriteVy_So16CMBlockBufferRefaGMR);
  a4(a1, a2, v9, a3, v10);
}

uint64_t CMReadOnlyDataBlockBuffer.BlockRegion.endIndex.getter()
{
  v1 = *v0;
  v2 = v0[2];
  if (*v0)
  {
    v1 = v0[1] - v1;
  }

  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.BlockRegion.count.getter()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t CMReadOnlyDataBlockBuffer.BlockRegion.subscript.getter(uint64_t result)
{
  v2 = v1[2];
  v3 = __OFSUB__(result, v2);
  v4 = result - v2;
  if (!v3)
  {
    return *(*v1 + v4);
  }

  __break(1u);
  return result;
}

__n128 CMReadOnlyDataBlockBuffer.BlockRegion.regions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t CMReadOnlyDataBlockBuffer.BlockRegion.withContiguousStorageIfAvailable<A>(_:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8 = *v3;
  if (*v3)
  {
    v9 = v3[1] - v8;
  }

  else
  {
    v9 = 0;
  }

  result = a1(v8, v9);
  if (!v4)
  {
    return (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
  }

  return result;
}

__n128 protocol witness for DataProtocol.regions.getter in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, v2[1], v2[2]);
  *a2 = result;
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v1[2];
  v4 = v1[1] - *v1;
  if (!*v1)
  {
    v4 = 0;
  }

  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
    goto LABEL_12;
  }

  if (v2 >= v3 && v2 < v6)
  {
    *result = v2;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance CMReadOnlyDataBlockBuffer.BlockRegion(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v5;
  }
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMReadOnlyDataBlockBuffer.BlockRegion(uint64_t (*result)(), void *a2))()
{
  v3 = v2[2];
  if (__OFSUB__(*a2, v3))
  {
    __break(1u);
  }

  else
  {
    *result = *(*v2 + *a2 - v3);
    return CMTimebaseRef.NotificationKey.rawValue.modify;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance CMReadOnlyDataBlockBuffer.BlockRegion(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[2];
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  v4 = __OFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
  }

  else if (v5 >= v3)
  {
    *a1 = v3;
    a1[1] = v5;
    return;
  }

  __break(1u);
}

BOOL protocol witness for Collection.isEmpty.getter in conformance CMReadOnlyDataBlockBuffer.BlockRegion()
{
  v1 = *v0;
  v2 = v0[2];
  if (*v0)
  {
    v1 = v0[1] - v1;
  }

  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (!v3)
  {
    return v2 == v4;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3[2];
  v6 = v3[1] - *v3;
  if (!*v3)
  {
    v6 = 0;
  }

  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (v7)
  {
    goto LABEL_11;
  }

  if (v4 >= v5 && v8 >= v4)
  {
    *a3 = v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(after:)(*a1, *v2, v2[1], v2[2]);
  *a2 = result;
  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance CMReadOnlyDataBlockBuffer.BlockRegion(uint64_t *result)
{
  v2 = *v1;
  v3 = v1[2];
  if (*v1)
  {
    v2 = v1[1] - v2;
  }

  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (*result >= v3 && v5 < v4)
    {
      *result = v5 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance CMReadOnlyDataBlockBuffer.BlockRegion@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v2;
  return result;
}

uint64_t protocol witness for DataProtocol.regions.getter in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X8>)
{
  result = CMReadOnlyDataBlockBuffer.regions.getter();
  *a1 = result;
  return result;
}

char *protocol witness for BidirectionalCollection.index(before:) in conformance CMReadOnlyDataBlockBuffer@<X0>(char *result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *v2;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  if (&result[v6] < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v9 = &result[v8];
  if (__OFADD__(result, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 < v9)
  {
    *a2 = v4;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMReadOnlyDataBlockBuffer(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  v4 = *v1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v5))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  if ((result + v5) < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v8 = result + v7;
  if (__OFADD__(result, v7))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 < v8)
  {
    *v3 = v2;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else if (result + v5 >= result)
  {
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v6 = result + v5;
  if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else if (v6 >= result)
  {
    *a1 = v6;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v6 = result + v5;
  if (__OFADD__(result, v5))
  {
    __break(1u);
  }

  else if (v6 >= result)
  {
    *a1 = result;
    a1[1] = v6;
    return result;
  }

  __break(1u);
  return result;
}

char *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance CMReadOnlyDataBlockBuffer@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *v3;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  if (&result[v7] < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v10 = &result[v9];
  if (__OFADD__(result, v9))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v10 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= v5)
  {
    *a3 = v5;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  result = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3);
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      goto LABEL_4;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
LABEL_4:
    v10 = 0;
    v11 = 1;
LABEL_18:
    *a4 = v10;
    *(a4 + 8) = v11;
    return result;
  }

  v13 = __OFADD__(v7, a2);
  v10 = v7 + a2;
  if (v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v14))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = result;
  if (result + v14 < result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v17 = result + v16;
  if (__OFADD__(result, v16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17 < result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 < v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v17 >= v10)
  {
    v11 = 0;
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance CMReadOnlyDataBlockBuffer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  if (result + v7 < result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v10 = result + v9;
  if (__OFADD__(result, v9))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v10 < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < v10)
  {
    *a2 = v4 + 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMReadOnlyDataBlockBuffer(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  if (result + v6 < result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v9 = result + v8;
  if (__OFADD__(result, v8))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < v9)
  {
    *a1 = v4 + 1;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CMReadOnlyDataBlockBuffer@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else if (result + v4 >= result)
  {
    a1[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

void protocol witness for Sequence._copyToContiguousArray() in conformance CMReadOnlyDataBlockBuffer()
{
  v1 = *v0;
  DataLength = CMBlockBufferGetDataLength(v1);
  if (DataLength)
  {
    v3 = DataLength;
    v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(DataLength, 0);
    v5 = v1;
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v7, (v4 + 4), v3, v5);

    if (v6 == v3)
    {
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

size_t key path getter for CMBlockBufferProtocol.dataLength : CMBlockBufferRef@<X0>(CMBlockBufferRef *a1@<X0>, size_t *a2@<X8>)
{
  result = CMBlockBufferGetDataLength(*a1);
  *a2 = result;
  return result;
}

uint64_t _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE6append11referenceOf5range13optimizeDepthyqd___SnySiGSgSbtAcDRd__AgHRtd__lFyAA0fG8Protocol_pYTXEfU_AC11CopyOnWriteVy_AGG_ATTg5Tm(void *a1, void **a2, CMBlockBufferFlags *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  result = CMBlockBufferProtocol.dataLength.getter(v7, v8);
  if (result >= 1)
  {
    v10 = *a2;
    if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
    {
      v11 = *a2;
      result = FigBlockBufferCloneForSwiftOverlay();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v12 = result;
      v13 = _swiftInitForCMTimebase(result);

      *a2 = v13;
    }

    v15 = a1[3];
    v14 = a1[4];
    v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
    v17 = *a2;
    v18 = *a3;
    result = CMBlockBufferRef.append<A>(bufferReference:flags:)(v16, &v18, v15, v14);
    if (v3)
    {
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE6buffer11deallocator5flagsxs5SliceVySwG_ySv_SitcSo0cD3RefaAAE5FlagsVtKcfCAK_Tt3B5(size_t a1, uint64_t a2, void *a3, uint64_t a4, OpaqueCMBlockBuffer *a5, OpaqueCMBlockBuffer *a6, CMBlockBufferFlags a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v12 = a4 - a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = specialized RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, a4);
  blockBufferOut[1] = 0;
  blockBufferOut[2] = a5;
  blockBufferOut[3] = a6;

  customBlockSource.version = 0;
  customBlockSource.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
  customBlockSource.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
  customBlockSource.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  blockBufferOut[0] = 0;
  v14 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], a3, v12, 0, &customBlockSource, a1, v13, a7, blockBufferOut);
  result = noErr.getter();
  if (v14 != result)
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v17 initWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
    swift_willThrow();

    goto LABEL_8;
  }

  if (blockBufferOut[0])
  {
    v16 = blockBufferOut[0];
    v14 = _swiftInitForCMTimebase(v16);

LABEL_8:
    v18 = *MEMORY[0x277D85DE8];
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t outlined consume of CMMutableDataBlockBuffer.BlockSource?(uint64_t result)
{
  if (result)
  {
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

unint64_t lazy protocol witness table accessor for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion()
{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer.BlockRegion and conformance CMReadOnlyDataBlockBuffer.BlockRegion);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMReadOnlyDataBlockBuffer.BlockRegion> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreMedia25CMReadOnlyDataBlockBufferV0G6RegionVGMd, &_ss5SliceVy9CoreMedia25CMReadOnlyDataBlockBufferV0G6RegionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer()
{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer;
  if (!lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMReadOnlyDataBlockBuffer and conformance CMReadOnlyDataBlockBuffer);
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

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Int32)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 - a3;
  if (!a3)
  {
    v5 = 0;
  }

  v6 = __OFADD__(a5, v5);
  v7 = a5 + v5;
  if (v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result < a5 || v7 < result)
  {
    goto LABEL_11;
  }

  if (a2 < a5 || v7 < a2)
  {
    goto LABEL_12;
  }

  v6 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v5))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result + v5 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v8 = result + v7;
  if (__OFADD__(result, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 < result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6 > a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 < a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  if (__OFADD__(result, v9))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  if (result + v9 < result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = FigBlockBufferImpliedIndicesForSwiftOverlay();
  v12 = result + v11;
  if (__OFADD__(result, v11))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12 < result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 > a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v12 < a2)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t specialized RandomAccessCollection<>.index(before:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = a3 - a2;
  if (!a2)
  {
    v6 = 0;
  }

  v4 = __OFADD__(a4, v6);
  v7 = a4 + v6;
  if (v4)
  {
    goto LABEL_9;
  }

  if (result < a4 || result >= v7)
  {
    goto LABEL_10;
  }

  return result;
}

void _s9CoreMedia24CMMutableDataBlockBufferV010withUnsafeeF0yxxSo07CMBlockF3RefaKYTXEKRi_zlF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  v9 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.NonCopyable<CMBlockBufferRef> and conformance ConcurrentAccess.NonCopyable<A>, &_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE015withUnsafeBlockG0yqd__qd__AGKYTXEKRi_d__lF(a1, a2, v8, a3, v9);
}

void specialized ConcurrentAccess.Wrapper<>.append<A>(referenceOf:range:optimizeDepth:)(void *a1, size_t a2, int64_t a3, char a4, char a5)
{
  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 4;
  }

  if ((a4 & 1) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (CMBlockBufferGetDataLength(a1) >= a3)
    {
      v14 = __OFSUB__(a3, a2);
      v15 = a3 - a2;
      if (!v14)
      {
        if (v15 < 1)
        {
LABEL_14:
          v17 = a1;
          goto LABEL_15;
        }

        appended = CMBlockBufferAppendBufferReference(*v5, a1, a2, v15, v6);
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v7 = a1;
  if (CMBlockBufferGetDataLength(v7) < 1)
  {
    goto LABEL_15;
  }

  v8 = *v5;
  v9 = v7;
  DataLength = CMBlockBufferGetDataLength(v9);
  appended = CMBlockBufferAppendBufferReference(v8, v9, 0, DataLength, v6);

LABEL_12:
  if (appended != noErr.getter())
  {
    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v16 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
}

uint64_t CMMutableDataBlockBuffer.init(unsafeBlockBuffer:)@<X0>(OpaqueCMBlockBuffer *a1@<X0>, uint64_t a2@<X8>)
{
  result = CMBlockBufferIsEmpty(a1);
  if (result || (v5 = CMBlockBufferAssureBlockMemory(a1), result = noErr.getter(), v5 == result))
  {
    *a2 = a1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t key path setter for CMMutableDataBlockBuffer.BlockSource.allocate : CMMutableDataBlockBuffer.BlockSource(uint64_t *a1, uint64_t (**a2)(uint64_t a1))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Int) -> (@out UnsafeMutableRawBufferPointer);
  a2[1] = v5;
  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockSource.allocate.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CMMutableDataBlockBuffer.BlockSource.allocate.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t key path setter for CMMutableDataBlockBuffer.BlockSource.deallocate : CMMutableDataBlockBuffer.BlockSource(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed UnsafeMutableRawBufferPointer) -> (@out ());
  *(a2 + 24) = v5;
  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockSource.deallocate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CMMutableDataBlockBuffer.BlockSource.deallocate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockSource.init(allocate:deallocate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

CFTypeRef CMMutableDataBlockBuffer.init(count:blockSource:)@<X0>(size_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v9[0] = *a2;
  v4 = v9[0];
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  result = specialized static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:)(a1, v9);
  *a3 = result;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  a3[4] = v7;
  return result;
}

__n128 CMMutableDataBlockBuffer.init(subBlockCapacity:blockSource:)@<Q0>(unint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  *a3 = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE8capacity5flagsxSi_So0cD3RefaAAE5FlagsVtKcfCAG_Tt2B5(a1, 0);
  result = v6;
  *(a3 + 8) = v5;
  *(a3 + 24) = v6;
  return result;
}

void CMMutableDataBlockBuffer.init(copying:blockSource:)(unsigned int *a1@<X0>, uint64_t *a2@<X1>, OpaqueCMBlockBuffer **a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = *a1;
  if (v9)
  {
    v10 = 0;
    v11 = 16 * v9;
    v12 = (a1 + 3);
    while (1)
    {
      v13 = *v12;
      v12 += 4;
      v14 = v13 + (v13 & 0xF);
      if (__CFADD__(v13, v13 & 0xF))
      {
        break;
      }

      v15 = __OFADD__(v10, v14);
      v10 += v14;
      if (v15)
      {
        goto LABEL_10;
      }

      v11 -= 16;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v10 = 0;
LABEL_8:
    v18[0] = *a2;
    v18[1] = v6;
    v18[2] = v7;
    v18[3] = v8;
    v16 = specialized static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:)(v10, v18);
    v17 = UnsafePointer<A>.copy(using:)(v16, a1);

    *a3 = v17;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
  }
}

BOOL CMMutableDataBlockBuffer.isContiguous.getter()
{
  v1 = *v0;
  if (CMBlockBufferIsEmpty(*v0))
  {
    return 1;
  }

  DataLength = CMBlockBufferGetDataLength(v1);
  return CMBlockBufferIsRangeContiguous(v1, 0, DataLength) != 0;
}

int64_t CMMutableDataBlockBuffer.isRangeContiguous(_:)(int64_t result, int64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = result;
  v5 = *v2;
  result = CMBlockBufferGetDataLength(v5);
  if (result < a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFSUB__(a2, v4);
  v7 = a2 - v4;
  if (!v6)
  {
    v8 = v5;
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(v8, v4, v7);

    return IsRangeContiguous != 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void _s9CoreMedia24CMMutableDataBlockBufferV32withContiguousStorageIfAvailable2in_xSgSnySiGSg_xSWKYTXEtKlF(uint64_t (*a1)(uint64_t, uint64_t)@<X3>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  v9 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.NonCopyable<CMBlockBufferRef> and conformance ConcurrentAccess.NonCopyable<A>, &_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlF(0, 0, 1, a1, v8, a2, v9, a3);
}

void _s9CoreMedia24CMMutableDataBlockBufferV39withContiguousMutableStorageIfAvailable2in_xSgSnySiGSg_xSwKYTXEtKlF(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  v7 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.NonCopyable<CMBlockBufferRef> and conformance ConcurrentAccess.NonCopyable<A>, &_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  _s9CoreMedia16ConcurrentAccessO7WrapperPAASo16CMBlockBufferRefa8CMObjectRtzrlE32withContiguousStorageIfAvailable2in_qd__SgSnySiGSg_qd__SWKYTXEtKlF(0, 0, 1, _s9CoreMedia24CMMutableDataBlockBufferV39withContiguousMutableStorageIfAvailable2in_xSgSnySiGSg_xSwKYTXEtKlFxSWKYTXEfU_TA, v6, a1, v7, a2);
}

uint64_t _s9CoreMedia24CMMutableDataBlockBufferV010withUnsafeE7RegionsyxxSayAA010CMReadOnlydeF0V0E6RegionVGKYTXEKlF(void (*a1)(void))
{
  v3 = specialized ConcurrentAccess.Wrapper<>.subBlocks.getter(*v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = a1;
    v16 = MEMORY[0x277D84F90];
    v15 = v3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v16;
    v6 = (v15 + 48);
    do
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        v8 = *v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v6 - 2);
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v12 = (v16 + 24 * v11);
      v12[4] = v7;
      v12[5] = v8;
      v12[6] = v9;
      v6 += 3;
      --v4;
    }

    while (v4);

    a1 = v14;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  a1(v5);
}

uint64_t _s9CoreMedia24CMMutableDataBlockBufferV017withUnsafeMutableE7RegionsyxxSayAC0E6RegionVGKYTXEKlF(void (*a1)(void))
{
  v3 = specialized ConcurrentAccess.Wrapper<>.subBlocks.getter(*v1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v14 = a1;
    v16 = MEMORY[0x277D84F90];
    v15 = v3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v16;
    v6 = (v15 + 48);
    do
    {
      v7 = *(v6 - 1);
      if (v7)
      {
        v8 = *v6;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v6 - 2);
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v16 + 16) = v11 + 1;
      v12 = (v16 + 24 * v11);
      v12[4] = v7;
      v12[5] = v8;
      v12[6] = v9;
      v6 += 3;
      --v4;
    }

    while (v4);

    a1 = v14;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  a1(v5);
}

void CMMutableDataBlockBuffer.copyBytes<A>(to:from:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  if ((CMBlockBufferGetDataLength(*v2) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  dispatch thunk of RangeExpression.relative<A>(to:)();
  if (__OFSUB__(v9, v8))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = a2 - a1;
  if (!a1)
  {
    v6 = 0;
  }

  if ((v8 & 0x8000000000000000) != 0 || v6 < (v9 - v8))
  {
    goto LABEL_11;
  }

  if (CMBlockBufferGetDataLength(v5) >= v9)
  {
    v7 = v5;
    specialized CMBlockBufferProtocol.copyDataBytes(to:)(a1, a2, v7, v8, v9);

    return;
  }

LABEL_12:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

void CMMutableDataBlockBuffer.copyBytes(to:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  DataLength = CMBlockBufferGetDataLength(v5);
  if (!a1)
  {
    goto LABEL_10;
  }

  v7 = a2 - a1;
  if (v7 < DataLength)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v5;
  DataLength = CMBlockBufferGetDataLength(v5);
  if (v7 < DataLength)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    if (DataLength <= 0)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  theSourceBuffer = v5;
  v8 = CMBlockBufferGetDataLength(theSourceBuffer);
  LODWORD(a1) = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, v8, a1);

  if (a1 != noErr.getter())
  {
LABEL_12:
    v9 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v9 initWithDomain:*MEMORY[0x277CCA590] code:a1 userInfo:0];
    while (1)
    {
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
LABEL_14:
      v10 = one-time initialization token for badPointerParameter;
      v11 = v5;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = static CMBlockBufferRef.Error.badPointerParameter;
    }
  }
}

uint64_t CMMutableDataBlockBuffer.append(referenceOf:range:optimizeDepth:)(uint64_t a1, size_t a2, int64_t a3, char a4, char a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *a1;
  specialized ConcurrentAccess.Wrapper<>.append<A>(referenceOf:range:optimizeDepth:)(v13, a2, a3, a4 & 1, a5);

  return outlined consume of CMMutableDataBlockBuffer.BlockSource?(v9);
}

uint64_t static CMMutableDataBlockBuffer.+= infix(_:_:)(OpaqueCMBlockBuffer **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *a2;
  if (CMBlockBufferGetDataLength(v7) < 1 || (v8 = *a1, v9 = v7, DataLength = CMBlockBufferGetDataLength(v9), appended = CMBlockBufferAppendBufferReference(v8, v9, 0, DataLength, 0), v9, appended == noErr.getter()))
  {

    return outlined consume of CMMutableDataBlockBuffer.BlockSource?(v3);
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v13 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall CMMutableDataBlockBuffer.extend(by:)(Swift::Int by)
{
  if (by < 1)
  {
    __break(1u);
  }

  else
  {
    _s9CoreMedia24CMMutableDataBlockBufferV6extend2byySi_tFySo07CMBlockF3RefazYTXEfU_(v1, v1, by);
  }
}

uint64_t _s9CoreMedia24CMMutableDataBlockBufferV6extend2byySi_tFySo07CMBlockF3RefazYTXEfU_(CMBlockBufferRef *a1, void **a2, size_t blockLength)
{
  v4 = a2;
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  if (v5)
  {
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = *a1;
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v6;
    v11[4] = v7;
    v11[5] = v8;
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v5);
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v5);
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v5);

    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
    customBlockSource.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
    customBlockSource.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    appended = CMBlockBufferAppendMemoryBlock(v9, 0, blockLength, 0, &customBlockSource, 0, blockLength, 1u);
    if (appended == noErr.getter())
    {
      outlined consume of CMMutableDataBlockBuffer.BlockSource?(v5);

LABEL_5:
      v15 = *MEMORY[0x277D85DE8];
      return result;
    }

    v16 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v14 = [v16 initWithDomain:*MEMORY[0x277CCA590] code:appended userInfo:0];
    swift_willThrow();

    v17 = *v4;
    v18 = v4[1];
    v19 = v4[2];
    v20 = v4[3];
    v4 = v4[4];

    outlined consume of CMMutableDataBlockBuffer.BlockSource?(v18);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v14 = CMBlockBufferAppendMemoryBlock(*a1, 0, blockLength, *MEMORY[0x277CBECE8], 0, 0, blockLength, 1u);
    result = noErr.getter();
    if (v14 == result)
    {
      goto LABEL_5;
    }
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v21 initWithDomain:*MEMORY[0x277CCA590] code:v14 userInfo:0];
  swift_willThrow();
  v22 = *v4;
  v23 = v4[1];
  v24 = v4[2];
  v25 = v4[3];
  v26 = v4[4];

  outlined consume of CMMutableDataBlockBuffer.BlockSource?(v23);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void CMMutableDataBlockBuffer.replaceSubrange(_:with:)(size_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 < 1)
  {
    return;
  }

  v8 = a4 - a3;
  if (!a3)
  {
    v8 = 0;
  }

  if (v5 != v8)
  {
    goto LABEL_18;
  }

  v11 = *v4;
  DataLength = CMBlockBufferGetDataLength(*v4);
  if (DataLength < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a1 == a2)
  {
    if (a2 < 0)
    {
      __break(1u);
      return;
    }
  }

  else if ((a1 & 0x8000000000000000) != 0 || DataLength < a2)
  {
    goto LABEL_21;
  }

  if (CMBlockBufferGetDataLength(v11) < a2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v13 = v11;
  specialized CMBlockBufferProtocol.replaceDataBytes(with:)(a3, a4, v13, a1, a2);
}

uint64_t CMMutableDataBlockBuffer.replaceAll(with:)(uint64_t result, uint64_t a2)
{
  if (result && a2 - result >= 1)
  {
    v3 = result;
    if (CMBlockBufferGetDataLength(*v2) == a2 - result)
    {
      return specialized CMBlockBufferProtocol.replaceDataBytes(with:)(v3, a2);
    }

    else
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t CMMutableDataBlockBuffer.replaceSubrange<A>(_:with:)(unsigned int (*a1)(char *, uint64_t, uint64_t), unsigned int (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  v11 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.NonCopyable<CMBlockBufferRef> and conformance ConcurrentAccess.NonCopyable<A>, &_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");

  return ConcurrentAccess.Wrapper<>.replace<A>(range:with:)(a1, a2, 0, a3, v10, a4, v11, a5);
}

uint64_t CMMutableDataBlockBuffer.replaceAll<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");
  v7 = lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type ConcurrentAccess.NonCopyable<CMBlockBufferRef> and conformance ConcurrentAccess.NonCopyable<A>, &_s9CoreMedia16ConcurrentAccessO11NonCopyableVy_So16CMBlockBufferRefaGMd, "@[");

  return ConcurrentAccess.Wrapper<>.replace<A>(range:with:)(0, 0, 1, a1, v6, a2, v7, a3);
}

void CMMutableDataBlockBuffer.replaceSubrange(_:repeating:)(size_t a1, int64_t a2, char a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = a1;
  v7 = *v4;
  if (CMBlockBufferGetDataLength(*v4) < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = __OFSUB__(a2, v3);
  v9 = a2 - v3;
  if (v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v7;
  LODWORD(v3) = CMBlockBufferFillDataBytes(a3, v11, v3, v9);
  if (v3 != noErr.getter())
  {
LABEL_11:
    v10 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v10 initWithDomain:*MEMORY[0x277CCA590] code:v3 userInfo:0];
    swift_willThrow();

    swift_unexpectedError();
    __break(1u);
    return;
  }
}

Swift::Void __swiftcall CMMutableDataBlockBuffer.replaceAll(repeating:)(Swift::UInt8 repeating)
{
  v3 = *v1;
  DataLength = CMBlockBufferGetDataLength(v3);
  v5 = CMBlockBufferFillDataBytes(repeating, v3, 0, DataLength);
  if (v5 != noErr.getter())
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

size_t CMMutableDataBlockBuffer.indices.getter()
{
  result = CMBlockBufferGetDataLength(*v0);
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t CMMutableDataBlockBuffer.subscript.getter(size_t offset)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v7[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(v3, offset, 0, 0, v7);
  if (DataPointer != noErr.getter())
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!v7[0])
  {
    goto LABEL_7;
  }

  result = *v7[0];
  if ((result & 0x80000000) != 0)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMMutableDataBlockBuffer.subscript.setter(char a1, size_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  DataPointer = CMBlockBufferGetDataPointer(*v2, a2, 0, 0, v7);
  result = noErr.getter();
  if (DataPointer != result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7[0])
  {
    if ((a1 & 0x80) == 0)
    {
      *v7[0] = a1;
      goto LABEL_5;
    }

LABEL_7:
    __break(1u);
  }

LABEL_5:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t (*CMMutableDataBlockBuffer.subscript.modify(char **dataPointerOut, char *a2))(char **dataPointerOut, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  dataPointerOut[1] = a2;
  dataPointerOut[2] = v4;
  *dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(v4, a2, 0, 0, dataPointerOut);
  if (DataPointer != noErr.getter())
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*dataPointerOut)
  {
    goto LABEL_7;
  }

  v6 = **dataPointerOut;
  if (v6 < 0)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  *(dataPointerOut + 24) = v6;
  v7 = *MEMORY[0x277D85DE8];
  return CMMutableDataBlockBuffer.subscript.modify;
}

uint64_t CMMutableDataBlockBuffer.subscript.modify(char **dataPointerOut, char a2)
{
  v4 = *(dataPointerOut + 24);
  v5 = dataPointerOut[2];
  v6 = dataPointerOut[1];
  *dataPointerOut = 0;
  DataPointer = CMBlockBufferGetDataPointer(v5, v6, 0, 0, dataPointerOut);
  result = noErr.getter();
  if (a2)
  {
    if (DataPointer != result)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v9 = *dataPointerOut;
    if (!*dataPointerOut)
    {
      return result;
    }

    if ((v4 & 0x80000000) == 0)
    {
LABEL_10:
      *v9 = v4;
      return result;
    }

    __break(1u);
  }

  if (DataPointer != result)
  {
    goto LABEL_12;
  }

  v9 = *dataPointerOut;
  if (*dataPointerOut)
  {
    if (v4 < 0)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockRegion.endIndex.getter()
{
  v1 = *v0;
  v2 = v0[2];
  if (*v0)
  {
    v1 = v0[1] - v1;
  }

  result = v2 + v1;
  if (__OFADD__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockRegion.count.getter()
{
  if (*v0)
  {
    return v0[1] - *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t CMMutableDataBlockBuffer.BlockRegion.subscript.getter(uint64_t result)
{
  v2 = v1[2];
  v3 = __OFSUB__(result, v2);
  v4 = result - v2;
  if (!v3)
  {
    return *(*v1 + v4);
  }

  __break(1u);
  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockRegion.subscript.setter(uint64_t result, uint64_t a2)
{
  v3 = v2[2];
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(*v2 + v5) = result;
  }

  return result;
}

uint64_t (*CMMutableDataBlockBuffer.BlockRegion.subscript.modify(uint64_t (*result)(uint64_t result), uint64_t a2))(uint64_t result)
{
  v3 = v2[2];
  v4 = __OFSUB__(a2, v3);
  v5 = a2 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *v2;
    *result = v5;
    *(result + 1) = v6;
    *(result + 16) = *(v6 + v5);
    return CMMutableDataBlockBuffer.BlockRegion.subscript.modify;
  }

  return result;
}

__n128 CMMutableDataBlockBuffer.BlockRegion.regions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t CMMutableDataBlockBuffer.BlockRegion.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void))
{
  if (*v1)
  {
    v2 = v1[1];
  }

  return a1();
}

uint64_t protocol witness for BidirectionalCollection.index(before:) in conformance CMMutableDataBlockBuffer.BlockRegion@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized RandomAccessCollection<>.index(before:)(*a1, *v2, v2[1], v2[2]);
  *a2 = result;
  return result;
}

uint64_t specialized CMBlockBufferProtocol.copyDataBytes(to:)(void *destination, uint64_t a2, CMBlockBufferRef theSourceBuffer, size_t offsetToData, uint64_t a5)
{
  if (!destination)
  {
    if (one-time initialization token for badPointerParameter == -1)
    {
LABEL_7:
      v8 = static CMBlockBufferRef.Error.badPointerParameter;
      return swift_willThrow();
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (__OFSUB__(a5, offsetToData))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 - destination < (a5 - offsetToData))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = CMBlockBufferCopyDataBytes(theSourceBuffer, offsetToData, a5 - offsetToData, destination);
  result = noErr.getter();
  if (v5 == result)
  {
    return result;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v7 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  return swift_willThrow();
}

uint64_t specialized CMBlockBufferProtocol.replaceDataBytes(with:)(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    if (one-time initialization token for badPointerParameter == -1)
    {
LABEL_6:
      v8 = static CMBlockBufferRef.Error.badPointerParameter;
      return swift_willThrow();
    }

LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  if (CMBlockBufferGetDataLength(v2) < a2 - a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  DataLength = CMBlockBufferGetDataLength(v2);
  v5 = CMBlockBufferReplaceDataBytes(a1, v2, 0, DataLength);
  result = noErr.getter();
  if (v5 == result)
  {
    return result;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v7 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  return swift_willThrow();
}

uint64_t specialized CMBlockBufferProtocol.replaceDataBytes(with:)(const void *a1, uint64_t a2, CMBlockBufferRef destinationBuffer, size_t offsetIntoDestination, uint64_t a5)
{
  if (!a1)
  {
    if (one-time initialization token for badPointerParameter == -1)
    {
LABEL_7:
      v8 = static CMBlockBufferRef.Error.badPointerParameter;
      return swift_willThrow();
    }

LABEL_12:
    swift_once();
    goto LABEL_7;
  }

  if (__OFSUB__(a5, offsetIntoDestination))
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a5 - offsetIntoDestination) < a2 - a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = CMBlockBufferReplaceDataBytes(a1, destinationBuffer, offsetIntoDestination, a5 - offsetIntoDestination);
  result = noErr.getter();
  if (v5 == result)
  {
    return result;
  }

  v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v7 initWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
  return swift_willThrow();
}

CFTypeRef specialized static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:)(size_t blockLength, uint64_t *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!blockLength)
  {
    inited = _s9CoreMedia28_CMBlockBufferInitTrampolinePAAE8capacity5flagsxSi_So0cD3RefaAAE5FlagsVtKcfCAG_Tt2B5(0, 0);
LABEL_11:
    v12 = *MEMORY[0x277D85DE8];
    return inited;
  }

  v2 = blockLength;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = a2[2];
    v6 = a2[3];
    v7 = swift_allocObject();
    *(v7 + 2) = v3;
    *(v7 + 3) = v4;
    *(v7 + 4) = v5;
    *(v7 + 5) = v6;
    v8 = swift_allocObject();
    *(v8 + 2) = v3;
    *(v8 + 3) = v4;
    *(v8 + 4) = v5;
    *(v8 + 5) = v6;
    blockBufferOut[1] = v7;
    blockBufferOut[2] = partial apply for closure #2 in static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:);
    blockBufferOut[3] = v8;
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v3);
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v3);
    outlined copy of CMMutableDataBlockBuffer.BlockSource?(v3);

    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = @objc CustomAllocatorAllocateBlock(refcon:sizeInBytes:);
    customBlockSource.FreeBlock = @objc CustomAllocatorFreeBlock(refcon:doomedMemoryBlock:sizeInBytes:);
    customBlockSource.refCon = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    blockBufferOut[0] = 0;
    LODWORD(v2) = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], 0, v2, 0, &customBlockSource, 0, v2, 0, blockBufferOut);
    if (v2 != noErr.getter())
    {
LABEL_14:
      v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      [v14 initWithDomain:*MEMORY[0x277CCA590] code:v2 userInfo:0];
      swift_willThrow();

      swift_unexpectedError();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      goto LABEL_15;
    }

    if (blockBufferOut[0])
    {
      v9 = blockBufferOut[0];
      inited = _swiftInitForCMTimebase(v9);
      outlined consume of CMMutableDataBlockBuffer.BlockSource?(v3);

LABEL_10:

      goto LABEL_11;
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277CBECE8];
  blockBufferOut[0] = 0;
  LODWORD(v7) = CMBlockBufferCreateWithMemoryBlock(v11, 0, v2, v11, 0, 0, v2, 1u, blockBufferOut);
  if (v7 == noErr.getter())
  {
    if (blockBufferOut[0])
    {
      inited = _swiftInitForCMTimebase(blockBufferOut[0]);
      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_15:
  v15 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v15 initWithDomain:*MEMORY[0x277CCA590] code:v7 userInfo:0];
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s9CoreMedia24CMMutableDataBlockBufferV39withContiguousMutableStorageIfAvailable2in_xSgSnySiGSg_xSwKYTXEtKlFxSWKYTXEfU_TA()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

unint64_t lazy protocol witness table accessor for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion()
{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion;
  if (!lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMMutableDataBlockBuffer.BlockRegion and conformance CMMutableDataBlockBuffer.BlockRegion);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<CMMutableDataBlockBuffer.BlockRegion> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy9CoreMedia24CMMutableDataBlockBufferV0F6RegionVGMd, &_ss5SliceVy9CoreMedia24CMMutableDataBlockBufferV0F6RegionVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void destroy for CMMutableDataBlockBuffer(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);

    v3 = *(a1 + 32);
  }
}

uint64_t assignWithTake for CMMutableDataBlockBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    outlined destroy of CMMutableDataBlockBuffer.BlockSource(a1 + 8);
LABEL_5:
    v9 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v9;
    return a1;
  }

  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;

  v8 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for CMMutableDataBlockBuffer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CMMutableDataBlockBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CMMutableDataBlockBuffer.BlockSource(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CMMutableDataBlockBuffer.BlockSource(uint64_t result, int a2, int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed UnsafeMutableRawBufferPointer) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned UnsafeMutableRawBufferPointer) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Int) -> (@out UnsafeMutableRawBufferPointer)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable (@unowned Int) -> (@unowned UnsafeMutableRawBufferPointer)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t outlined copy of CMMutableDataBlockBuffer.BlockSource?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #1 in static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #2 in static CMMutableDataBlockBuffer.makeBlockBuffer(count:blockSource:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a1, a1 + a2);
}

uint64_t CMAttachmentBearerAttachments.Value.mode.getter@<X0>(_BYTE *a1@<X8>)
{
  outlined init with copy of CMAttachmentBearerAttachments.Value(v1, v4);
  *a1 = v4[32];
  return outlined destroy of CMAttachmentBearerAttachments.Value(v4);
}

CoreMedia::CMAttachmentBearerAttachments::Mode_optional __swiftcall CMAttachmentBearerAttachments.Mode.init(rawValue:)(Swift::UInt32 rawValue)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMAttachmentBearerAttachments.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMAttachmentBearerAttachments.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance CMAttachmentBearerAttachments.Mode@<X0>(_DWORD *result@<X0>, char *a2@<X8>)
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

void CMAttachmentBearerAttachments.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  attachmentModeOut = 0;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8 = MEMORY[0x2318E2770](a1, a2);
  v9 = CMGetAttachment(v7, v8, &attachmentModeOut);
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_8;
  }

  if (!attachmentModeOut)
  {
    v10 = 0;
    ObjectType = swift_getObjectType();
    *&v16 = v9;
    goto LABEL_6;
  }

  if (attachmentModeOut != 1)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
    goto LABEL_9;
  }

  ObjectType = swift_getObjectType();
  *&v16 = v9;
  v10 = 1;
LABEL_6:
  _sypWOb_0(&v16, v14);
  v15 = v10;
  *(a3 + 32) = v10;
  v11 = v14[1];
  *a3 = v14[0];
  *(a3 + 16) = v11;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t key path setter for CMAttachmentBearerAttachments.subscript(_:) : CMAttachmentBearerAttachments(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v6, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);

  return CMAttachmentBearerAttachments.subscript.setter(v6, v3, v4);
}

uint64_t CMAttachmentBearerAttachments.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, &v30, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  if (v32 == 255)
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(&v30);
    outlined init with copy of CMAttachmentBearerAttachments(v4, &v30);
    v18 = *(&v31 + 1);
    v19 = __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v20 + 8))(v23, v18);
    v25 = MEMORY[0x2318E2770](a2, a3);

    CMRemoveAttachment(v24, v25);

    swift_unknownObjectRelease();
    return outlined destroy of CMAttachmentBearerAttachments.Value?(a1);
  }

  else
  {
    v33[0] = v30;
    v33[1] = v31;
    v34 = v32;
    outlined init with copy of CMAttachmentBearerAttachments(v4, &v30);
    v8 = *(&v31 + 1);
    v9 = __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    v15 = MEMORY[0x2318E2770](a2, a3);

    outlined init with copy of CMAttachmentBearerAttachments.Value(v33, v26);
    _sypWOb_0(v26, v28);
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    outlined init with copy of CMAttachmentBearerAttachments.Value(v33, v26);
    LODWORD(v8) = v27;
    outlined destroy of CMAttachmentBearerAttachments.Value(v26);
    CMSetAttachment(v14, v15, v16, v8);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    outlined destroy of CMAttachmentBearerAttachments.Value?(a1);
    outlined destroy of CMAttachmentBearerAttachments.Value(v33);
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }
}

uint64_t outlined destroy of CMAttachmentBearerAttachments.Value?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*CMAttachmentBearerAttachments.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x68uLL);
  }

  *a1 = v7;
  v7[11] = a3;
  v7[12] = v3;
  v7[10] = a2;
  CMAttachmentBearerAttachments.subscript.getter(a2, a3, v7);
  return CMAttachmentBearerAttachments.subscript.modify;
}

void CMAttachmentBearerAttachments.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  if (a2)
  {
    outlined init with copy of CMAttachmentBearerAttachments.Value?(*a1, v2 + 40, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);

    CMAttachmentBearerAttachments.subscript.setter(v2 + 40, v5, v4);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2);
  }

  else
  {

    CMAttachmentBearerAttachments.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[10];
    v4 = v2[11];
    outlined init with copy of CMAttachmentBearerAttachments.Value?(*a1, (v2 + 5), &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
    v6 = v4;
    CMAttachmentBearerAttachments.subscript.setter((v2 + 5), &v6);
    outlined destroy of CMAttachmentBearerAttachments.Value?(v2, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMd, &_s9CoreMedia29CMAttachmentBearerAttachmentsV5ValueOSgMR);
  }

  else
  {
    v5 = v2[10];
    v6 = v2[11];
    CMAttachmentBearerAttachments.subscript.setter(v2, &v6);
  }

  free(v2);
}

Swift::Void __swiftcall CMAttachmentBearerAttachments.removeAll()()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = _bridgeAnythingToObjectiveC<A>(_:)();
  CMRemoveAllAttachments(v1);

  swift_unknownObjectRelease();
}

unint64_t CMAttachmentBearerAttachments.nonPropagated.getter(CMAttachmentMode a1)
{
  v3 = v1;
  v4 = *MEMORY[0x277CBECE8];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = CMCopyDictionaryOfAttachments(v4, v5, a1);
  swift_unknownObjectRelease();
  if (v6)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v6;
    result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v8);
  }

  return result;
}

id CMBlockBufferRef.attachments.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for CMBlockBufferRef(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for CMBlockBufferRef;
  *a1 = v4;

  return v4;
}

uint64_t (*CMBlockBufferRef.attachments.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  type metadata accessor for CMBlockBufferRef(0);
  v4[3] = v5;
  v4[4] = &protocol witness table for CMBlockBufferRef;
  *v4 = v1;
  v6 = v1;
  return CMSampleBufferRef.attachments.modify;
}

id protocol witness for CMAttachmentBearerProtocol.attachments.getter in conformance CMBlockBufferRef@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v7 = *v2;
  type metadata accessor for CMBlockBufferRef(0);
  a2[3] = v5;
  a2[4] = a1;
  *a2 = v7;

  return v7;
}

id CMSampleBufferRef.attachments.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for CMSampleBufferRef(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for CMSampleBufferRef;
  *a1 = v4;

  return v4;
}

uint64_t (*CMSampleBufferRef.attachments.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  type metadata accessor for CMSampleBufferRef(0);
  v4[3] = v5;
  v4[4] = &protocol witness table for CMSampleBufferRef;
  *v4 = v1;
  v6 = v1;
  return CMSampleBufferRef.attachments.modify;
}

id protocol witness for CMAttachmentBearerProtocol.attachments.getter in conformance CMSampleBufferRef@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v7 = *v2;
  type metadata accessor for CMSampleBufferRef(0);
  a2[3] = v5;
  a2[4] = a1;
  *a2 = v7;

  return v7;
}

id CVBufferRef.attachments.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for CVBufferRef(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for CVBufferRef;
  *a1 = v4;

  return v4;
}

uint64_t key path setter for CMBlockBufferRef.attachments : CMBlockBufferRef(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v8 = *a2;
  v11[3] = a5(0);
  v11[4] = a6;
  v11[0] = v8;
  v9 = v8;
  outlined assign with copy of CMAttachmentBearerAttachments(a1, v11);
  return outlined destroy of CMAttachmentBearerAttachments(v11);
}

void (*CVBufferRef.attachments.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  type metadata accessor for CVBufferRef(0);
  v4[3] = v5;
  v4[4] = &protocol witness table for CVBufferRef;
  *v4 = v1;
  v6 = v1;
  return CVBufferRef.attachments.modify;
}

void CVBufferRef.attachments.modify(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of CMAttachmentBearerAttachments(*a1);

  free(v1);
}

uint64_t CMBlockBufferRef.attachments.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v8[3] = a2(0);
  v8[4] = a3;
  v8[0] = v3;
  v6 = v3;
  outlined assign with copy of CMAttachmentBearerAttachments(a1, v8);
  outlined destroy of CMAttachmentBearerAttachments(v8);
  return outlined destroy of CMAttachmentBearerAttachments(a1);
}

uint64_t CMBlockBufferRef.propagateAttachments<A>(to:)()
{
  v1 = _bridgeAnythingToObjectiveC<A>(_:)();
  CMPropagateAttachments(v0, v1);

  return swift_unknownObjectRelease();
}

id protocol witness for CMAttachmentBearerProtocol.attachments.getter in conformance CVBufferRef@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v7 = *v2;
  type metadata accessor for CVBufferRef(0);
  a2[3] = v5;
  a2[4] = a1;
  *a2 = v7;

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s8Sendable_pTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs8Sendable_pGMd, &_ss18_DictionaryStorageCySSs8Sendable_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CMAttachmentBearerAttachments.Value?(v4, &v13, &_sSS_s8Sendable_ptMd, &_sSS_s8Sendable_ptMR);
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
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

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
      outlined init with copy of CMAttachmentBearerAttachments.Value?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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
      result = _sypWOb_0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMAttachmentBearerAttachments.Mode and conformance CMAttachmentBearerAttachments.Mode()
{
  result = lazy protocol witness table cache variable for type CMAttachmentBearerAttachments.Mode and conformance CMAttachmentBearerAttachments.Mode;
  if (!lazy protocol witness table cache variable for type CMAttachmentBearerAttachments.Mode and conformance CMAttachmentBearerAttachments.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMAttachmentBearerAttachments.Mode and conformance CMAttachmentBearerAttachments.Mode);
  }

  return result;
}

id keypath_get_1Tm@<X0>(id *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  a4[3] = a2(0);
  a4[4] = a3;
  *a4 = v7;

  return v7;
}

uint64_t getEnumTagSinglePayload for CMAttachmentBearerAttachments(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for CMAttachmentBearerAttachments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CMAttachmentBearerAttachments.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CMAttachmentBearerAttachments.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destructiveInjectEnumTag for CMAttachmentBearerAttachments.Value(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CMAttachmentBearerAttachments.Mode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CMAttachmentBearerAttachments.Mode(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSdGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of CMAttachmentBearerAttachments.Value?(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = _sypWOb_0(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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