__C::SCNVector3 __swiftcall SCNVector3.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
{
  v3 = a1;
  v4 = a2;
  v5 = a3;
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

double SIMD3<>.init(_:)(float32x2_t a1, float32_t a2)
{
  a1.f32[1] = a2;
  *&result = *&vcvtq_f64_f32(a1);
  return result;
}

__C::SCNVector4 __swiftcall SCNVector4.init(_:_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  v4 = a1;
  v5 = a2;
  v6 = a3;
  v7 = a4;
  result.w = v7;
  result.z = v6;
  result.y = v5;
  result.x = v4;
  return result;
}

double SIMD4<>.init(_:)(float32x2_t a1, float32_t a2)
{
  a1.f32[1] = a2;
  *&result = *&vcvtq_f64_f32(a1);
  return result;
}

void __swiftcall SCNMatrix4.init(_:)(__C::SCNMatrix4 *__return_ptr retstr, simd_float4x4 *a2)
{
  *&retstr->m11 = v2;
  *&retstr->m21 = v3;
  *&retstr->m31 = v4;
  *&retstr->m41 = v5;
}

void __swiftcall SCNMatrix4.init(_:)(__C::SCNMatrix4 *__return_ptr retstr, simd_double4x4 *a2)
{
  v3 = *a2->columns[2].f64;
  v2 = *&a2->columns[2].f64[2];
  v5 = *a2->columns[3].f64;
  v4 = *&a2->columns[3].f64[2];
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[1].f64), *&a2->columns[1].f64[2]);
  *&retstr->m11 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[0].f64), *&a2->columns[0].f64[2]);
  *&retstr->m21 = v6;
  *&retstr->m31 = vcvt_hight_f32_f64(vcvt_f32_f64(v3), v2);
  *&retstr->m41 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
}

void __swiftcall simd_float4x4.init(_:)(simd_float4x4 *__return_ptr retstr, __C::SCNMatrix4 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySfGGMR);
  v3 = swift_allocObject();
  v4 = *&a2->m21;
  v3[2] = *&a2->m11;
  v3[3] = v4;
  v5 = *&a2->m41;
  v3[4] = *&a2->m31;
  v3[5] = v5;
  swift_setDeallocating();
  swift_deallocClassInstance();
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

void __swiftcall simd_double4x4.init(_:)(simd_double4x4 *__return_ptr retstr, __C::SCNMatrix4 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD4VySdGGMR);
  v4 = swift_allocObject();
  v5 = *&a2->m21;
  v14 = vcvt_hight_f64_f32(*&a2->m11);
  v15 = vcvtq_f64_f32(*&a2->m11);
  v4[2] = v15;
  v4[3] = v14;
  v12 = vcvt_hight_f64_f32(v5);
  v13 = vcvtq_f64_f32(*v5.f32);
  v4[4] = v13;
  v4[5] = v12;
  v6 = *&a2->m31;
  v7 = *&a2->m41;
  v10 = vcvt_hight_f64_f32(v6);
  v11 = vcvtq_f64_f32(*v6.f32);
  v4[6] = v11;
  v4[7] = v10;
  v8 = vcvt_hight_f64_f32(v7);
  v9 = vcvtq_f64_f32(*v7.f32);
  v4[8] = v9;
  v4[9] = v8;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *retstr->columns[0].f64 = v15;
  *&retstr->columns[0].f64[2] = v14;
  *retstr->columns[1].f64 = v13;
  *&retstr->columns[1].f64[2] = v12;
  *retstr->columns[2].f64 = v11;
  *&retstr->columns[2].f64[2] = v10;
  *retstr->columns[3].f64 = v9;
  *&retstr->columns[3].f64[2] = v8;
}

id SCNGeometryElement.init<A>(indices:primitiveType:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 > 3)
  {
    __break(1u);
    goto LABEL_28;
  }

  v8 = a3;
  v5 = a2;
  v3 = a1;
  v9 = MEMORY[0x29C2ACAB0](a1, a3);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4 = v9 / 2;
    }

    else
    {
      v4 = v9;
    }

    goto LABEL_9;
  }

  if (!v5)
  {
    v4 = v9 / 3;
    goto LABEL_9;
  }

  v4 = v9 - 2;
  if (__OFSUB__(v9, 2))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  v10 = *(v8 - 8);
  v6 = *(v10 + 72);
  v7 = v9 * v6;
  if ((v9 * v6) >> 64 != (v9 * v6) >> 63)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v3 < 0 || (v3 & 0x4000000000000000) != 0))
  {
LABEL_23:
    if (!MEMORY[0x29C2ACAC0](v3, v8))
    {

      v11 = 0;
      goto LABEL_16;
    }

LABEL_29:
    v21 = v3;
    v19 = type metadata accessor for _ArrayBuffer();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x29C2ACAF0](&v21, v8, v19, WitnessTable);
    swift_unknownObjectRetain();
    v11 = MEMORY[0x29C2ACB00]();

    goto LABEL_21;
  }

  if (_swift_isClassOrObjCExistentialType())
  {
    v11 = ((*(v10 + 80) + 32) & ~*(v10 + 80)) + (v3 & 0xFFFFFFFFFFFFFF8);
  }

  else
  {
    v11 = v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  }

LABEL_16:
  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v3 < 0 || (v3 & 0x4000000000000000) != 0))
  {
    swift_unknownObjectRetain();
    if (v11)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  _swift_isClassOrObjCExistentialType();

  if (!v11)
  {
LABEL_20:
    v11 = (~*(v10 + 80) | 0xFFFFFF00);
  }

LABEL_21:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = specialized Data.init(bytes:count:)(v11, v7);
  v15 = v14;
  swift_unknownObjectRelease();
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v13, v15);
  v17 = [ObjCClassFromMetadata geometryElementWithData:isa primitiveType:v5 primitiveCount:v4 bytesPerIndex:v6];

  return v17;
}

id SCNGeometrySource.init(vertices:)(uint64_t a1, SEL *a2)
{
  v2 = [swift_getObjCClassFromMetadata() *a2];

  return v2;
}

__n128 SCNBoundingVolume.boundingBox.getter@<Q0>(__n128 *a1@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(MEMORY[0x29EDBBB58] + 4);
  v4 = *(MEMORY[0x29EDBBB58] + 8);
  LODWORD(v10) = *MEMORY[0x29EDBBB58];
  HIDWORD(v10) = v3;
  v11 = v4;
  v8 = v10;
  v9 = __PAIR64__(v4, v3);
  [v1 getBoundingBoxMin:&v10 max:&v8];
  v5 = v9;
  result.n128_u64[0] = v10;
  result.n128_u64[1] = __PAIR64__(v8, v11);
  *a1 = result;
  a1[1].n128_u64[0] = v5;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

double key path getter for SCNBoundingVolume.boundingBox : <A>A@<D0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  SCNBoundingVolume.boundingBox.getter(&v6);
  result = v6.n128_f64[0];
  v5 = v7;
  *a2 = v6;
  a2[1].n128_u64[0] = v5;
  return result;
}

id SCNBoundingVolume.boundingBox.setter(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v11 = *MEMORY[0x29EDCA608];
  *v10 = a1;
  *&v10[1] = a2;
  *&v10[2] = a3;
  *v9 = a4;
  *&v9[1] = a5;
  *&v9[2] = a6;
  result = [v6 setBoundingBoxMin:v10 max:v9];
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void (*SCNBoundingVolume.boundingBox.modify(uint64_t *a1))(void ***a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(MEMORY[0x29EDBBB58] + 4);
  v6 = vzip1_s32(*MEMORY[0x29EDBBB58], v5);
  *&v7 = v6;
  *(&v7 + 1) = __PAIR64__(v6.u32[0], vdup_lane_s32(v5, 1).u32[0]);
  *(v3 + 32) = v7;
  v8 = (v3 + 32);
  *(v3 + 48) = v5;
  [v1 getBoundingBoxMin:v3 + 32 max:v3 + 44];
  v9 = *(v4 + 48);
  *(v4 + 8) = *v8;
  *(v4 + 24) = v9;
  return SCNBoundingVolume.boundingBox.modify;
}

void SCNBoundingVolume.boundingBox.modify(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  *(v1 + 2) = *(v1 + 1);
  v1[6] = v1[3];
  [v2 setBoundingBoxMin:v1 + 4 max:v1 + 44];

  free(v1);
}

float SCNBoundingVolume.boundingSphere.getter()
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(MEMORY[0x29EDBBB58] + 8);
  v5 = *MEMORY[0x29EDBBB58];
  v6 = v1;
  v4 = 0;
  [v0 getBoundingSphereCenter:&v5 radius:&v4];
  result = *&v5;
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SCNSceneSource.entryWithIdentifier<A>(_:withClass:)()
{
  v1 = MEMORY[0x29C2ACAA0]();
  v2 = [v0 entryWithIdentifier:v1 withClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    outlined init with take of Any(v7, &v8);
    swift_dynamicCast();
    return v4;
  }

  else
  {
    outlined destroy of Any?(v7);
    return 0;
  }
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
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

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy64_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SCNMatrix4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SCNMatrix4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SCNVector4(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SCNVector4(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SCNVector3(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SCNVector3(uint64_t result, int a2, int a3)
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

void type metadata accessor for SCNMatrix4(uint64_t a1, unint64_t *a2)
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

id one-time initialization function for SCNVector3InNSValueObjCType()
{
  v0 = [objc_opt_self() valueWithSCNVector3_];
  v1 = [v0 objCType];
  result = v0;
  SCNVector3InNSValueObjCType = v1;
  return result;
}

id one-time initialization function for SCNVector4InNSValueObjCType()
{
  v0 = [objc_opt_self() valueWithSCNVector4_];
  v1 = [v0 objCType];
  result = v0;
  SCNVector4InNSValueObjCType = v1;
  return result;
}

NSValue __swiftcall SCNVector3._bridgeToObjectiveC()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = objc_opt_self();
  LODWORD(v7) = v5;
  LODWORD(v8) = v4;
  LODWORD(v9) = v3;
  v10 = [v6 valueWithSCNVector3_];

  return v10;
}

id static SCNVector3._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  result = strcmp(v4, SCNVector3InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNVector3Value];
    *a2 = v6 | (v7 << 32);
    *(a2 + 8) = v8;
    *(a2 + 12) = 0;
  }

  return result;
}

BOOL static SCNVector3._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v5 = strcmp(v4, SCNVector3InNSValueObjCType);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [a1 SCNVector3Value];
    v6 = v8 | (v9 << 32);
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v5 != 0;
  return result;
}

id static SCNVector3._unconditionallyBridgeFromObjectiveC(_:)(id result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  v2 = [result objCType];
  if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  result = strcmp(v2, SCNVector3InNSValueObjCType);
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 SCNVector3Value];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance SCNVector3()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_opt_self();
  LODWORD(v5) = v1;
  LODWORD(v6) = v2;
  LODWORD(v7) = v3;
  v8 = [v4 valueWithSCNVector3_];

  return v8;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance SCNVector3(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
  {
    v9 = v4;
    swift_once();
    v4 = v9;
  }

  result = strcmp(v4, SCNVector3InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNVector3Value];
    *a2 = v6 | (v7 << 32);
    *(a2 + 8) = v8;
    *(a2 + 12) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance SCNVector3(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v5 = strcmp(v4, SCNVector3InNSValueObjCType);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [a1 SCNVector3Value];
    v6 = v8 | (v9 << 32);
  }

  result = v5 == 0;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 12) = v5 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance SCNVector3@<X0>(id result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    if (one-time initialization token for SCNVector3InNSValueObjCType != -1)
    {
      v8 = v4;
      swift_once();
      v4 = v8;
    }

    result = strcmp(v4, SCNVector3InNSValueObjCType);
    if (!result)
    {
      result = [v2 SCNVector3Value];
      *a2 = v5;
      a2[1] = v6;
      a2[2] = v7;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

NSValue __swiftcall SCNVector4._bridgeToObjectiveC()()
{
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  v8 = objc_opt_self();
  LODWORD(v9) = v7;
  LODWORD(v10) = v6;
  LODWORD(v11) = v5;
  LODWORD(v12) = v4;
  v13 = [v8 valueWithSCNVector4_];

  return v13;
}

id static SCNVector4._forceBridgeFromObjectiveC(_:result:)(void *a1, int8x16_t *a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  result = strcmp(v4, SCNVector4InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNVector4Value];
    v8.i64[0] = v6;
    v8.i64[1] = v7;
    v10.i32[1] = v9;
    *a2 = vorrq_s8(vshll_n_s32(v10, 0x20uLL), v8);
    a2[1].i8[0] = 0;
  }

  return result;
}

BOOL static SCNVector4._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, int8x16_t *a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
  {
    v13 = v4;
    swift_once();
    v4 = v13;
  }

  v5 = strcmp(v4, SCNVector4InNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 SCNVector4Value];
    v9.i64[0] = v7;
    v9.i64[1] = v8;
    v11.i32[1] = v10;
    v6 = vorrq_s8(vshll_n_s32(v11, 0x20uLL), v9);
  }

  result = v5 == 0;
  *a2 = v6;
  a2[1].i8[0] = v5 != 0;
  return result;
}

id static SCNVector4._unconditionallyBridgeFromObjectiveC(_:)(id result)
{
  if (!result)
  {
    goto LABEL_9;
  }

  v1 = result;
  v2 = [result objCType];
  if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
  {
    v3 = v2;
    swift_once();
    v2 = v3;
  }

  result = strcmp(v2, SCNVector4InNSValueObjCType);
  if (result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  return [v1 SCNVector4Value];
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance SCNVector4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_opt_self();
  LODWORD(v6) = v1;
  LODWORD(v7) = v2;
  LODWORD(v8) = v3;
  LODWORD(v9) = v4;
  v10 = [v5 valueWithSCNVector4_];

  return v10;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance SCNVector4(void *a1, int8x16_t *a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  result = strcmp(v4, SCNVector4InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNVector4Value];
    v8.i64[0] = v6;
    v8.i64[1] = v7;
    v10.i32[1] = v9;
    *a2 = vorrq_s8(vshll_n_s32(v10, 0x20uLL), v8);
    a2[1].i8[0] = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance SCNVector4(void *a1, int8x16_t *a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
  {
    v13 = v4;
    swift_once();
    v4 = v13;
  }

  v5 = strcmp(v4, SCNVector4InNSValueObjCType);
  v6 = 0uLL;
  if (!v5)
  {
    [a1 SCNVector4Value];
    v9.i64[0] = v7;
    v9.i64[1] = v8;
    v11.i32[1] = v10;
    v6 = vorrq_s8(vshll_n_s32(v11, 0x20uLL), v9);
  }

  result = v5 == 0;
  *a2 = v6;
  a2[1].i8[0] = v5 != 0;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance SCNVector4@<X0>(id result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    if (one-time initialization token for SCNVector4InNSValueObjCType != -1)
    {
      v9 = v4;
      swift_once();
      v4 = v9;
    }

    result = strcmp(v4, SCNVector4InNSValueObjCType);
    if (!result)
    {
      result = [v2 SCNVector4Value];
      *a2 = v5;
      a2[1] = v6;
      a2[2] = v7;
      a2[3] = v8;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id one-time initialization function for SCNMatrix4InNSValueObjCType()
{
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  v0 = [objc_opt_self() valueWithSCNMatrix4_];
  v1 = [v0 objCType];
  result = v0;
  SCNMatrix4InNSValueObjCType = v1;
  return result;
}

NSValue __swiftcall SCNMatrix4._bridgeToObjectiveC()()
{
  v1 = v0[1];
  v5[0] = *v0;
  v5[1] = v1;
  v2 = v0[3];
  v5[2] = v0[2];
  v5[3] = v2;
  v3 = [objc_opt_self() valueWithSCNMatrix4_];

  return v3;
}

id static SCNMatrix4._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  result = strcmp(v4, SCNMatrix4InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNMatrix4Value];
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = 0;
  }

  return result;
}

BOOL static SCNMatrix4._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = strcmp(v4, SCNMatrix4InNSValueObjCType);
  if (v5)
  {
    v6 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
  }

  else
  {
    [a1 SCNMatrix4Value];
    v6 = 0;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
  }

  result = v5 == 0;
  *(a2 + 64) = v6;
  return result;
}

id static SCNMatrix4._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, _OWORD *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = [result objCType];
    if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
    {
      v5 = v4;
      swift_once();
      v4 = v5;
    }

    result = strcmp(v4, SCNMatrix4InNSValueObjCType);
    if (!result)
    {
      result = [v2 SCNMatrix4Value];
      *a2 = v6;
      a2[1] = v7;
      a2[2] = v8;
      a2[3] = v9;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance SCNMatrix4()
{
  v1 = v0[1];
  v5[0] = *v0;
  v5[1] = v1;
  v2 = v0[3];
  v5[2] = v0[2];
  v5[3] = v2;
  v3 = [objc_opt_self() valueWithSCNMatrix4_];

  return v3;
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance SCNMatrix4(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  result = strcmp(v4, SCNMatrix4InNSValueObjCType);
  if (result)
  {
    __break(1u);
  }

  else
  {
    result = [a1 SCNMatrix4Value];
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = 0;
  }

  return result;
}

BOOL protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance SCNMatrix4(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = strcmp(v4, SCNMatrix4InNSValueObjCType);
  if (v5)
  {
    v6 = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
  }

  else
  {
    [a1 SCNMatrix4Value];
    v6 = 0;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
  }

  result = v5 == 0;
  *(a2 + 64) = v6;
  return result;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance SCNMatrix4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 objCType];
    if (one-time initialization token for SCNMatrix4InNSValueObjCType != -1)
    {
      v6 = v4;
      swift_once();
      v4 = v6;
    }

    if (!strcmp(v4, SCNMatrix4InNSValueObjCType))
    {
      result = [a1 SCNMatrix4Value];
      *a2 = v7;
      a2[1] = v8;
      a2[2] = v9;
      a2[3] = v10;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return __DataStorage.init(bytes:length:)();
}