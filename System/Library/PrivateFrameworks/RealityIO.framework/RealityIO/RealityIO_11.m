uint64_t EditTarget.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdEditTargetCreateEmpty();
  *a1 = result;
  return result;
}

uint64_t EditTarget.layer()()
{
  v1 = *v0;
  v2 = RIOPxrUsdEditTargetCopyLayer();
  type metadata accessor for SceneDescriptionFoundations.Layer();
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t EditTarget.primSpec(for:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrUsdEditTargetCopyPrimSpec();
  *a2 = result;
  return result;
}

uint64_t specialized SIMD.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3 - 1;
  if ((v3 - 1) <= 0xF)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = *(result + 8 * v5 + 32);
      v23 = v6;
      v24 = v7;
      v25 = v8;
      v26 = v9;
      v27 = v10;
      v28 = v11;
      v29 = v12;
      v30 = v13;
      *(&v23 + (v5 & 0xF)) = v14;
      v12 = v29;
      v13 = v30;
      v10 = v27;
      v11 = v28;
      v8 = v25;
      v9 = v26;
      ++v5;
      v6 = v23;
      v7 = v24;
    }

    while (v3 != v5);
    v15 = v24;
    v16 = v23;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;

    if (v4 == 15)
    {
      *a2 = v16;
      a2[1] = v15;
      a2[2] = v17;
      a2[3] = v18;
      a2[4] = v19;
      a2[5] = v20;
      a2[6] = v21;
      a2[7] = v22;
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void __swiftcall Frame4D.asDouble4x4()(simd_double4x4 *__return_ptr retstr)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[1];
  *retstr->columns[0].f64 = *v1;
  *&retstr->columns[0].f64[2] = v8;
  *retstr->columns[1].f64 = v6;
  *&retstr->columns[1].f64[2] = v7;
  *retstr->columns[2].f64 = v4;
  *&retstr->columns[2].f64[2] = v5;
  *retstr->columns[3].f64 = v2;
  *&retstr->columns[3].f64[2] = v3;
}

uint64_t Frame4D.init(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  while (1)
  {
    v12 = v2 >> 2;
    v13 = result;
    if (v2 >> 2)
    {
      v13 = result + 32;
      if (v12 != 1)
      {
        v13 = result + 64;
        if (v12 != 2)
        {
          v13 = result + 96;
          if ((v2 & 0x7FFFFFFFFFFFFFFCLL) != 0xC)
          {
            break;
          }
        }
      }
    }

    v11 = *(v13 + 8 * (v2 & 3));
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    *(&v14 + (v2 & 0xF)) = v11;
    v9 = v20;
    v10 = v21;
    v7 = v18;
    v8 = v19;
    v5 = v16;
    v6 = v17;
    ++v2;
    v3 = v14;
    v4 = v15;
    if (v2 == 16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  return result;
}

double Frame4D.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t TexCoord2.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Point3.init()(v4, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v6 = type metadata accessor for SIMD2();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t SIMD2.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for TexCoord2();
  v11 = a1;
  Point3.subscript.getter(0, v8);
  Point3.subscript.getter(1, v8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v3);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v8 - 8) + 8))(v11, v8);
}

uint64_t TexCoord3.init(_:)(uint64_t a1, uint64_t a2)
{
  return TexCoord3.init(_:)(a1, a2);
}

{
  v3 = *(*(a2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v7(v5, v6, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v8 = type metadata accessor for SIMD3();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t SIMD3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return SIMD3.init(_:)(a1, a2, TexCoord3.subscript.getter, a3);
}

{
  return SIMD3.init(_:)(a1, a2, Point3.subscript.getter, a3);
}

{
  return SIMD3.init(_:)(a1, a2, Vector3.subscript.getter, a3);
}

{
  return SIMD3.init(_:)(a1, a2, Normal3.subscript.getter, a3);
}

uint64_t Color3.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Color3.init()(v4, v4, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v6 = type metadata accessor for SIMD3();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t SIMD3<>.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v15 = &v15 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = type metadata accessor for Color3();
  v16 = a1;
  Color3.red.getter(v13);
  Color3.green.getter(v13);
  Color3.blue.getter(v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v4, v12, v3);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v4, v9, v3);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v13 - 8) + 8))(v16, v13);
}

uint64_t SIMD3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v22 = a4;
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v20[1] = v20 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v20 - v15;
  v18 = v17(0, v14);
  v21 = a1;
  a3(0, v18);
  a3(1, v18);
  a3(2, v18);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v7, v16, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v7, v12, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v18 - 8) + 8))(v21, v18);
}

uint64_t Color4.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Color3.init()(v4, v4, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v6 = type metadata accessor for SIMD4();
  return (*(*(v6 - 8) + 8))(a1, v6);
}

uint64_t SIMD4<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v18[1] = v18 - v7;
  MEMORY[0x28223BE20](v8);
  v18[0] = v18 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  v16 = type metadata accessor for Color4();
  v19 = a1;
  Color3.red.getter(v16);
  Color3.green.getter(v16);
  Color3.blue.getter(v16);
  Color4.alpha.getter(v16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v5, v15, v4);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v5, v12, v4);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v5, v18[0], v4);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v16 - 8) + 8))(v19, v16);
}

void ManagedColor.init(color:space:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(type metadata accessor for ManagedColor() + 44);
  *(a4 + v8) = 0;
  (*(*(a3 - 8) + 32))(a4, a1, a3);

  *(a4 + v8) = v7;
}

float _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5@<S0>(_DWORD *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

float _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_12CoreGraphics7CGFloatVTt1g5@<S0>(float *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t Color3.red.getter(uint64_t a1)
{
  return Color3.red.getter(a1);
}

{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of SIMDStorage.subscript.getter();
}

void ManagedColor.init(_:)(CGColor *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for ManagedColor() + 44);
  *(a4 + v12) = 0;
  v13 = CGColorRef.components.getter();
  if (!v13)
  {
    v13 = &outlined read-only object #0 of ManagedColor.init(_:);
  }

  (*(a3 + 8))(v13, a2, a3);
  (*(v8 + 32))(a4, v11, a2);
  specialized static ColorSpaces.ocioName(fromCGColor:)(a1);
  if (v14)
  {
    if (String.count.getter() < 1)
    {
      v15 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v15 = RIOPxrTfTokenCreateWithCString();
    }
  }

  else
  {

    v15 = 0;
  }

  *(a4 + v12) = v15;
}

float protocol witness for static CGFloatConvertable.from(cgFloat:) in conformance Float@<S0>(float *a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  return result;
}

float static Half.from(cgFloat:)@<S0>(float *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

void (*Color3.red.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.red.getter(a2);
  return Color3.red.modify;
}

void (*Color3.green.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.green.getter(a2);
  return Color3.green.modify;
}

void Color3.red.modify(uint64_t **a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    v8 = v5[1];
    v9 = *v5;
    v10 = a3;
    memcpy((*a1)[3], v7, v5[2]);
    v11 = v6;
    v12 = v9;
    a3 = v10;
  }

  else
  {
    v12 = *v5;
    v13 = v5[1];
    v11 = (*a1)[4];
  }

  a4(v11, v12, a3);
  free(v7);
  free(v6);

  free(v5);
}

void (*Color3.blue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.blue.getter(a2);
  return Color3.blue.modify;
}

void (*Color3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Color3.subscript.getter(a2, a3);
  return Color3.subscript.modify;
}

Swift::Int Color3.hashValue.getter()
{
  return Color3.hashValue.getter();
}

{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Color3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Color3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color3<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color3<A>()
{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance Color3<A>();
}

{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  SIMD.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Color3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color3<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  Color3.subscript.getter(0, v6);
  Color3.subscript.getter(0, a3);
  v7 = *(a3 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (Color3.subscript.getter(1, a3), Color3.subscript.getter(1, a3), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v9 = *(swift_getAssociatedConformanceWitness() + 8), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    Color3.subscript.getter(2, a3);
    Color3.subscript.getter(2, a3);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t Color3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  v7 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Color3.init()(v9, v8, v10);
  memcpy(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t (*Color4.red.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.red.getter(a2);
  return Color4.red.modify;
}

uint64_t (*Color4.green.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.green.getter(a2);
  return Color4.green.modify;
}

uint64_t (*Color4.blue.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.blue.getter(a2);
  return Color4.blue.modify;
}

void (*Color4.alpha.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color4.alpha.getter(a2);
  return Color4.alpha.modify;
}

uint64_t Color3.init(val:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t Color3.init()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

uint64_t Color3.subscript.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of SIMDStorage.subscript.getter();
}

uint64_t (*Color4.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Color3.subscript.getter(a2, a3);
  return Color4.subscript.modify;
}

void Color3.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v9 = *v4;
    v8 = v4[1];
    memcpy((*a1)[4], v6, v4[3]);
    v10 = v5;
    v11 = v9;
    v12 = v8;
  }

  else
  {
    v12 = v4[1];
    v13 = v4[2];
    v11 = *v4;
    v10 = (*a1)[5];
  }

  a3(v10, v11, v12);
  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Color4.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color4<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color4<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Color4<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color4<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  v6 = 0;
  v7 = 1;
  do
  {
    if (v7)
    {
      Color3.subscript.getter(v6, a3);
      Color3.subscript.getter(v6, a3);
      v8 = *(a3 + 32);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v9 = *(swift_getAssociatedConformanceWitness() + 8);
      v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v7 = 0;
    }

    ++v6;
  }

  while (v6 != 4);
  return v7 & 1;
}

uint64_t Color4.init(_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5)
{
  v9 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Color3.init()(v11, v10, v12);
  memcpy(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v9);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t Color3.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Color3.init()(v9, v9, v10);
  if (*(a1 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 8);
    v12(a2, a3, *(a1 + 32));
    v13 = type metadata accessor for Color3();
    specialized Color4.subscript.setter(v8, 0, v13);
    v12(a2, a3, *(a1 + 40));
    specialized Color4.subscript.setter(v8, 1, v13);
    v12(a2, a3, *(a1 + 48));
    specialized Color4.subscript.setter(v8, 2, v13);
  }

  return result;
}

uint64_t Color3.components.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v11[1] = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26198AB70;
  Color3.subscript.getter(0, a1);
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  *(v7 + 32) = v9(v2, v8);
  Color3.subscript.getter(1, a1);
  *(v7 + 40) = v9(v2, v8);
  Color3.subscript.getter(2, a1);
  *(v7 + 48) = v9(v2, v8);
  *(v7 + 56) = 0x3FF0000000000000;
  return v7;
}

uint64_t Color4.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Color3.init()(v9, v9, v10);
  if (*(a1 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v12 = *(a3 + 8);
    v12(a2, a3, *(a1 + 32));
    v13 = type metadata accessor for Color4();
    specialized Color4.subscript.setter(v8, 0, v13);
    v12(a2, a3, *(a1 + 40));
    specialized Color4.subscript.setter(v8, 1, v13);
    v12(a2, a3, *(a1 + 48));
    specialized Color4.subscript.setter(v8, 2, v13);
    v12(a2, a3, *(a1 + 56));
    specialized Color4.subscript.setter(v8, 3, v13);
  }

  return result;
}

uint64_t Color4.components.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v13[1] = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v13[0] = v13 - v6;
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26198AB70;
  Color3.subscript.getter(0, a1);
  v10 = *(a1 + 24);
  v11 = *(v10 + 16);
  *(v9 + 32) = v11(v2, v10);
  Color3.subscript.getter(1, a1);
  *(v9 + 40) = v11(v2, v10);
  Color3.subscript.getter(2, a1);
  *(v9 + 48) = v11(v2, v10);
  Color3.subscript.getter(3, a1);
  *(v9 + 56) = v11(v2, v10);
  return v9;
}

void ManagedColor.cgColor.getter(uint64_t a1)
{
  v3 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  if (*(v1 + *(a1 + 44)))
  {
    v4 = RIOPxrTfTokenCopyString();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v5;
  }

  else
  {
    v9 = *MEMORY[0x277CBF428];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v10;
  }

  v11 = MEMORY[0x26670EFB0](v8, v7);

  v12 = MEMORY[0x266710310](v11);

  if (v12)
  {
    v13 = CGColorSpaceCreateWithName(v12);

    if (v13)
    {

      v14 = CGColorCreate(v13, (v3 + 32));

      if (v14)
      {

        return;
      }
    }
  }

  v15 = *(v3 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 == 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v16 = *(v3 + 32);
  v17 = *(v3 + 40);
  v18 = *(v3 + 48);
  v19 = *(v3 + 56);

  CGColorCreateGenericRGB(v16, v17, v18, v19);
}

uint64_t (*Frame4D.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 96) = v13;
  *(v5 + 112) = v12;
  *(v5 + 64) = v11;
  *(v5 + 80) = v10;
  *(v5 + 32) = v9;
  *(v5 + 48) = v8;
  *v5 = v7;
  *(v5 + 16) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 128) = *(v15 + (a2 & 0xF));
  return Frame4D.subscript.modify;
}

__n128 Frame4D.init(val:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void Frame4D.init(columns:)(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>, __n128 a9@<Q7>)
{
  a1[6] = a8;
  a1[7] = a9;
  a1[4] = a6;
  a1[5] = a7;
  a1[2] = a4;
  a1[3] = a5;
  *a1 = a2;
  a1[1] = a3;
}

Swift::Int Frame4D.hashValue.getter()
{
  v24 = v0[6];
  *v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = v25[0];
  if (v25[0] == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = v25[1];
  if (v25[1] == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

double protocol witness for SIMDStorage.init() in conformance Frame4D@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Frame4D@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 0xF));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Frame4D(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 0xF)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Frame4D(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 96) = v13;
  *(v5 + 112) = v12;
  *(v5 + 64) = v11;
  *(v5 + 80) = v10;
  *(v5 + 32) = v9;
  *(v5 + 48) = v8;
  *v5 = v7;
  *(v5 + 16) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 128) = *(v15 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Frame4D;
}

__n128 Frame4D.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 18);
  v10 = *(v1 + 34) & 0xF;
  v11 = *(v1 + 16);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Frame4D()
{
  v24 = v0[6];
  *v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = v25[0];
  if (v25[0] == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = v25[1];
  if (v25[1] == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Frame4D()
{
  v24 = *(v0 + 6);
  v25 = *(v0 + 7);
  v22 = *(v0 + 4);
  v23 = *(v0 + 5);
  v20 = *(v0 + 2);
  v21 = *(v0 + 3);
  v1 = *v0;
  v18 = *v0;
  v19 = *(v0 + 1);
  if (*v0 == 0.0)
  {
    *&v1 = 0.0;
  }

  MEMORY[0x26670FA50](v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = *&v25;
  if (*&v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = *(&v25 + 1);
  if (*(&v25 + 1) == 0.0)
  {
    v16 = 0.0;
  }

  return MEMORY[0x26670FA50](*&v16);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Frame4D()
{
  v24 = v0[6];
  *v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = v25[0];
  if (v25[0] == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = v25[1];
  if (v25[1] == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Frame4D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Frame4D and conformance Frame4D();

  return MEMORY[0x2821FE248](a1, v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Frame4D(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[2];
  v7 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[4];
  v13 = a2[5];
  v16 = a2[2];
  v15 = a2[3];
  v18 = *a2;
  v17 = a2[1];
  while (1)
  {
    v23[0] = v10;
    v23[1] = v9;
    v23[2] = v8;
    v23[3] = v7;
    v23[4] = v6;
    v23[5] = v5;
    v23[6] = v4;
    v23[7] = v3;
    v19 = 8 * (v2 & 0xF);
    v20 = *(v23 + v19);
    v22[0] = v18;
    v22[1] = v17;
    v22[2] = v16;
    v22[3] = v15;
    v22[4] = v14;
    v22[5] = v13;
    v22[6] = v12;
    v22[7] = v11;
    result = v20 == *(v22 + v19);
    if (v2 == 15)
    {
      break;
    }

    while (1)
    {
      ++v2;
      if (result)
      {
        break;
      }

      result = 0;
      if (v2 == 15)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t (*TexCoord2.x.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2);
  return TexCoord3.x.modify;
}

uint64_t (*TexCoord2.y.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2);
  return TexCoord3.y.modify;
}

uint64_t Normal3.x.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of SIMDStorage.subscript.getter();
}

uint64_t (*TexCoord2.z.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2);
  return TexCoord3.z.modify;
}

uint64_t (*TexCoord2.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance TexCoord2<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TexCoord2.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TexCoord2<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TexCoord2<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance TexCoord2<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TexCoord2<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  Point3.subscript.getter(0, v6);
  Point3.subscript.getter(0, a3);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    Point3.subscript.getter(1, a3);
    Point3.subscript.getter(1, a3);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v9 = *(swift_getAssociatedConformanceWitness() + 8);
    v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t TexCoord2.init(_:_:)(const void *a1, const void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  Point3.init()(v6, v7);
  memcpy(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t (*TexCoord3.x.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2);
  return TexCoord3.x.modify;
}

uint64_t (*TexCoord3.y.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2);
  return TexCoord3.y.modify;
}

uint64_t (*TexCoord3.z.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2);
  return TexCoord3.z.modify;
}

uint64_t (*TexCoord3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance TexCoord3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TexCoord3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TexCoord3<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TexCoord3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance TexCoord3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t TexCoord3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, uint64_t a4)
{
  return TexCoord3.init(_:_:_:)(a1, a2, a3, a4);
}

{
  v7 = *(*(a4 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v11(v9, v10, v8);
  memcpy(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

void (*Point3.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2);
  return Point3.x.modify;
}

void (*Point3.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2);
  return Point3.y.modify;
}

void (*Point3.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2);
  return Point3.z.modify;
}

void (*Point3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return Point3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Point3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Point3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Point3<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Point3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Point3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TexCoord3<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = MEMORY[0x28223BE20](v8);
  v11(0, v10, v9);
  a5(0, a3);
  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (a5(1, a3), a5(1, a3), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v14 = *(swift_getAssociatedConformanceWitness() + 8), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    a5(2, a3);
    a5(2, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t (*Vector3.x.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2);
  return TexCoord3.x.modify;
}

uint64_t (*Vector3.y.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2);
  return TexCoord3.y.modify;
}

uint64_t (*Vector3.z.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2);
  return TexCoord3.z.modify;
}

uint64_t (*Vector3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Vector3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Vector3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Vector3<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Vector3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Vector3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t (*Normal3.x.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2);
  return TexCoord3.x.modify;
}

uint64_t (*Normal3.y.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2);
  return TexCoord3.y.modify;
}

uint64_t (*Normal3.z.modify(void *a1, uint64_t a2))()
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2);
  return TexCoord3.z.modify;
}

uint64_t TexCoord2.init(val:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t TexCoord2.init()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

uint64_t TexCoord2.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return dispatch thunk of SIMDStorage.subscript.getter();
}

uint64_t (*Normal3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Normal3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Normal3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Normal3<A>()
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Normal3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Normal3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

float Half.binade.getter@<S0>(float *a1@<X8>)
{
  v2 = *v1;
  v3 = (*v1 >> 23);
  if (v3 == 255)
  {
    v5 = NAN;
    goto LABEL_7;
  }

  if ((LODWORD(v2) & 0x7FFFFF) == 0 || v3 != 0)
  {
    LODWORD(v5) = LODWORD(v2) & 0xFF800000;
LABEL_7:
    result = v5;
    *a1 = v5;
    return result;
  }

  result = COERCE_FLOAT(COERCE_UNSIGNED_INT(*v1 * 8388600.0) & 0xFF800000) * 0.00000011921;
  *a1 = result;
  return result;
}

uint64_t Half.significandWidth.getter()
{
  v1 = *v0 & 0x7FFFFF;
  v2 = __clz(__rbit32(v1));
  if ((*v0 >> 23) && (*v0 >> 23) != 255)
  {
    v5 = 23 - v2;
    if (v1)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else if ((*v0 & 0x7F800000) != 0 || v1 == 0)
  {
    return -1;
  }

  else
  {
    return 32 - (__clz(v1) + v2 + 1);
  }
}

float Half.ulp.getter@<S0>(float *a1@<X8>)
{
  if ((*v1 >> 23))
  {
    if ((*v1 >> 23) != 255)
    {
      result = COERCE_FLOAT(*v1 & 0x7F800000) * 0.00000011921;
      *a1 = result;
      return result;
    }

    v3 = NAN;
  }

  else
  {
    LODWORD(v3) = 1;
  }

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t Half.exponent.getter()
{
  v1 = *v0;
  v2 = (v1 >> 23);
  if (v2 == 255)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v1 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    return 0x8000000000000000;
  }

  if (v2)
  {
    return v2 - 127;
  }

  if (v4)
  {
    return -118 - __clz(v4);
  }

  __break(1u);
  return result;
}

uint64_t Half.significand.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  result = Float.significand.getter();
  *a1 = v5;
  return result;
}

void Half.nextUp.getter(float *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  *a1 = v2;
}

uint64_t Half.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, a2, v8);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v14 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v15 = dispatch thunk of BinaryInteger._lowWord.getter();
    v16 = *(v6 + 8);
    v16(a1, a2);
    result = v16(v10, a2);
    if (v14)
    {
      v13 = v15;
    }

    else
    {
      v13 = v15;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Float and conformance Float();
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v11 = *(v6 + 8);
    v11(a1, a2);
    result = v11(v10, a2);
    v13 = *&v17[3];
  }

  *a3 = v13;
  *(a3 + 4) = 0;
  return result;
}

RealityIO::Half __swiftcall Half.init(integerLiteral:)(Swift::Int64 integerLiteral)
{
  result.underlyingValue = integerLiteral;
  *v1 = integerLiteral;
  return result;
}

float Half.magnitude.getter@<S0>(float *a1@<X8>)
{
  result = fabsf(*v1);
  *a1 = result;
  return result;
}

float static Half.* infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float static Half.*= infix(_:_:)(float *a1, float *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

float static Half.+ infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float static Half.- infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float static Half./ infix(_:_:)@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float static Half./= infix(_:_:)(float *a1, float *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

RealityIO::Half __swiftcall Half.advanced(by:)(Swift::Float by)
{
  result.underlyingValue = *v2 + by;
  *v1 = result.underlyingValue;
  return result;
}

uint64_t Half.round(_:)(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  result = (*(v4 + 88))(v8, v3);
  if (result == *MEMORY[0x277D84678])
  {
    *v1 = roundf(*v1);
    return result;
  }

  if (result == *MEMORY[0x277D84670])
  {
    *v1 = rintf(*v1);
    return result;
  }

  if (result == *MEMORY[0x277D84680])
  {
    v10 = *v1;
LABEL_7:
    *v1 = ceilf(v10);
    return result;
  }

  if (result == *MEMORY[0x277D84688])
  {
    v10 = *v1;
LABEL_10:
    *v1 = floorf(v10);
    return result;
  }

  if (result == *MEMORY[0x277D84660])
  {
    *v1 = truncf(*v1);
  }

  else
  {
    if (result == *MEMORY[0x277D84668])
    {
      v10 = *v1;
      if ((*v1 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    Float._roundSlowPath(_:)();
    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Half.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x69796C7265646E75 && a2 == 0xEF65756C6156676ELL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Half.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Half.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Half.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void Half.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

Swift::Int Half.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

uint64_t Half.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedDecodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Half(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMd, &_ss22KeyedEncodingContainerVy9RealityIO4HalfV10CodingKeys33_886565F19E140D254DF58611C724D99BLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for FloatingPoint.init(_:) in conformance Half()
{
  lazy protocol witness table accessor for type Half and conformance Half();
  lazy protocol witness table accessor for type Int and conformance Int();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return static BinaryFloatingPoint<>._convert<A>(from:)();
}

uint64_t protocol witness for FloatingPoint.init<A>(_:) in conformance Half(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Half and conformance Half();
  v9 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();

  return MEMORY[0x2821FB798](a1, a4, a2, v8, a3, v9);
}

float protocol witness for FloatingPoint.ulp.getter in conformance Half@<S0>(float *a1@<X8>)
{
  if ((*v1 >> 23))
  {
    if ((*v1 >> 23) != 255)
    {
      result = COERCE_FLOAT(*v1 & 0x7F800000) * 0.00000011921;
      *a1 = result;
      return result;
    }

    v3 = NAN;
  }

  else
  {
    LODWORD(v3) = 1;
  }

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t protocol witness for FloatingPoint.exponent.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = Half.exponent.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for FloatingPoint.significand.getter in conformance Half@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  result = Float.significand.getter();
  *a1 = v5;
  return result;
}

float protocol witness for static FloatingPoint./ infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float protocol witness for static FloatingPoint./= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a1 / *a2;
  *a1 = result;
  return result;
}

float protocol witness for FloatingPoint.addingProduct(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *v3 + (*a1 * *a2);
  *a3 = result;
  return result;
}

float protocol witness for FloatingPoint.addProduct(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *v2 + (*a1 * *a2);
  *v2 = result;
  return result;
}

float *protocol witness for static FloatingPoint.minimum(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*result > *a2 && ((LODWORD(v4) & 0x7FFFFF) == 0 || (~LODWORD(v4) & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximum(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (*a2 >= *result && ((LODWORD(v4) & 0x7FFFFF) == 0 || (~LODWORD(v4) & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.minimumMagnitude(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabsf(*result) > fabsf(*a2) && ((LODWORD(v4) & 0x7FFFFF) == 0 || (~LODWORD(v4) & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

float *protocol witness for static FloatingPoint.maximumMagnitude(_:_:) in conformance Half@<X0>(float *result@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (fabsf(*a2) >= fabsf(*result) && ((LODWORD(v4) & 0x7FFFFF) == 0 || (~LODWORD(v4) & 0x7F800000) != 0))
  {
    v3 = *a2;
  }

  *a3 = v3;
  return result;
}

void protocol witness for FloatingPoint.nextUp.getter in conformance Half(float *a1@<X8>)
{
  v2 = *v1 + 0.0;
  if (*v1 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  *a1 = v2;
}

float protocol witness for FloatingPoint.nextDown.getter in conformance Half@<S0>(float *a1@<X8>)
{
  v2 = 0.0 - *v1;
  if (v2 != INFINITY)
  {
    LODWORD(v2) += (SLODWORD(v2) >> 31) | 1;
  }

  result = 0.0 - v2;
  *a1 = 0.0 - v2;
  return result;
}

uint64_t specialized BinaryFloatingPoint.isTotallyOrdered(belowOrEqualTo:)(float a1, float a2)
{
  if (a2 < a1)
  {
    return 1;
  }

  v3 = (LODWORD(a2) >> 23);
  v4 = (LODWORD(a1) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = LODWORD(a1) & 0x7FFFFF;
  v8 = a2 >= 0.0 || v5 >= v6;
  if (v6 < v5)
  {
    v8 = LODWORD(a2) >> 31;
  }

  if (v3 < v4)
  {
    v8 = a2 >= 0.0;
  }

  if (v4 < v3)
  {
    v8 = LODWORD(a2) >> 31;
  }

  if ((LODWORD(a2) ^ LODWORD(a1)) >= 0)
  {
    return v8;
  }

  else
  {
    return LODWORD(a2) >> 31;
  }
}

uint64_t specialized FloatingPoint.floatingPointClass.getter(float a1)
{
  if (a1 < 0.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 6;
  }

  if (a1 < 0.0)
  {
    v2 = 4;
  }

  else
  {
    v2 = 7;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v1 = v2;
  }

  if (a1 < 0.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 8;
  }

  if (a1 < 0.0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 9;
  }

  if ((LODWORD(a1) & 0x7FFFFF) != 0)
  {
    v5 = (LODWORD(a1) >> 22) & 1;
  }

  else
  {
    v5 = v4;
  }

  if ((LODWORD(a1) >> 23) != 255)
  {
    v5 = v3;
  }

  if ((LODWORD(a1) >> 23))
  {
    return v5;
  }

  else
  {
    return v1;
  }
}

float protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance Half@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float protocol witness for static SignedNumeric.- prefix(_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = 0.0 - *a1;
  *a2 = result;
  return result;
}

float protocol witness for SignedNumeric.negate() in conformance Half()
{
  result = 0.0 - *v0;
  *v0 = result;
  return result;
}

float protocol witness for Strideable.distance(to:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

float protocol witness for Strideable.advanced(by:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

float *protocol witness for static Strideable._step(after:from:by:) in conformance Half(float *result, uint64_t a2, char a3, float *a4, float *a5, float *a6)
{
  v6 = a2;
  v7 = *a6;
  if (a3)
  {
    v8 = v7 + *a4;
LABEL_5:
    *result = v8;
    return v6;
  }

  v6 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v8 = *a5 + (v7 * v6);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Half()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Half()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Half()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(LODWORD(v2));
  return Hasher._finalize()();
}

float protocol witness for Numeric.magnitude.getter in conformance Half@<S0>(float *a1@<X8>)
{
  result = fabsf(*v1);
  *a1 = result;
  return result;
}

float protocol witness for static Numeric.* infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float protocol witness for static Numeric.*= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Half@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Half(float *a1, float *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

float protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Half@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

void HalfSIMDStorage.init()(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 8))();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = v3;
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = v4;
      bzero((v5 + 32), 4 * v4);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    *a2 = v5;
  }
}

unint64_t HalfSIMDStorage.subscript.getter@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > result)
  {
    *a2 = *(*v2 + 4 * result + 32);
    return result;
  }

  __break(1u);
  return result;
}

float key path getter for HalfSIMDStorage.subscript(_:) : <A>HalfSIMDStorage<A>A@<S0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, float *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v4;
  HalfSIMDStorage.subscript.getter(v5, &v7);
  result = v7;
  *a3 = v7;
  return result;
}

uint64_t key path setter for HalfSIMDStorage.subscript(_:) : <A>HalfSIMDStorage<A>A(int *a1, uint64_t a2, unint64_t *a3)
{
  v3 = *a3;
  v5 = *a1;
  return HalfSIMDStorage.subscript.setter(&v5, v3);
}

uint64_t HalfSIMDStorage.subscript.setter(int *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  v5 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    *(v5 + 4 * a2 + 32) = v4;
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*HalfSIMDStorage.subscript.modify(uint64_t (*result)(uint64_t a1, char a2), unint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  *(result + 1) = a3;
  *(result + 2) = v3;
  *result = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v3 + 16) > a2)
  {
    *(result + 6) = *(*v3 + 4 * a2 + 32);
    return HalfSIMDStorage.subscript.modify;
  }

  __break(1u);
  return result;
}

uint64_t HalfSIMDStorage.subscript.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = *(a1 + 24);
  if (a2)
  {
    v8 = *(a1 + 24);
    v6 = &v8;
  }

  else
  {
    v9 = *(a1 + 24);
    v6 = &v9;
  }

  return HalfSIMDStorage.subscript.setter(v6, v4);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance HalfSIMDStorage<A>(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = HalfSIMDStorage.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance HalfSIMDStorage<A>;
}

void protocol witness for SIMDStorage.subscript.modify in conformance Color3<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized TexCoord3.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  memcpy(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  v7 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized Color4.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  memcpy(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  v7 = *(a3 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized Color3.red.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  memcpy(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  v6 = *(a2 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t specialized TexCoord2.x.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  memcpy(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v4);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

float specialized Float.init(sign:exponent:significand:)(char a1, uint64_t a2, float a3)
{
  result = -a3;
  if ((a1 & 1) == 0)
  {
    result = a3;
  }

  v5 = (LODWORD(a3) >> 23);
  if (v5 != 255 && v5 | LODWORD(a3) & 0x7FFFFF)
  {
    if (a2 >= -126)
    {
      if (a2 >= 128)
      {
        if (a2 >= 0x17D)
        {
          a2 = 381;
        }

        do
        {
          a2 -= 127;
          result = result * 1.7014e38;
        }

        while (a2 > 0x7F);
      }
    }

    else
    {
      v6 = -378;
      if (a2 > 0xFFFFFFFFFFFFFE86)
      {
        v6 = a2;
      }

      v7 = v6 + 126;
      result = result * 1.1755e-38;
      v8 = v6 + 252;
      v9 = __CFADD__(a2, 252);
      if (a2 >= 0xFFFFFFFFFFFFFF04)
      {
        LODWORD(a2) = v7;
      }

      else
      {
        LODWORD(a2) = v8;
      }

      if (!v9)
      {
        result = result * 1.1755e-38;
      }
    }

    return result * COERCE_FLOAT(((a2 << 23) + 1065353216) & 0x7F800000);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Half.CodingKeys and conformance Half.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys;
  if (!lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Half.CodingKeys and conformance Half.CodingKeys);
  }

  return result;
}

uint64_t associated type witness table accessor for SIMDStorage.Scalar : Decodable in Color3<A>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type Frame4D and conformance Frame4D()
{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Frame4D and conformance Frame4D;
  if (!lazy protocol witness table cache variable for type Frame4D and conformance Frame4D)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Frame4D and conformance Frame4D);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t associated type witness table accessor for SIMDStorage.Scalar : Decodable in TexCoord2<A>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t keypath_get_24Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, void, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a4(0, *(a2 + a3 - 24), *(a2 + a3 - 16), *(a2 + a3 - 8));
  return a5(v6, v7);
}

uint64_t keypath_set_25Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void, void))
{
  v6 = *a3;
  v7 = a5(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  return specialized Color4.subscript.setter(a1, v6, v7);
}

uint64_t keypath_get_64Tm(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a2;
  v7 = a4(0, *(a2 + a3 - 16), *(a2 + a3 - 8));
  return a5(v6, v7);
}

uint64_t keypath_set_65Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v6 = *a3;
  v7 = a5(0, *(a3 + a4 - 16), *(a3 + a4 - 8));
  return specialized TexCoord3.subscript.setter(a1, v6, v7);
}

uint64_t type metadata completion function for Color3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
LABEL_23:
    v14 = *(v7 + 48);

    return v14(a1);
  }

  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v8)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v8 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for Color3(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

void type metadata completion function for ManagedColor(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for ToolsFoundations.Token?();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ManagedColor(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *storeEnumTagSinglePayload for ManagedColor(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void type metadata accessor for ToolsFoundations.Token?()
{
  if (!lazy cache variable for type metadata for ToolsFoundations.Token?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolsFoundations.Token?);
    }
  }
}

uint64_t type metadata completion function for TexCoord2(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TexCoord2(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void storeEnumTagSinglePayload for TexCoord2(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t getEnumTagSinglePayload for Half(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Half(uint64_t result, int a2, int a3)
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

uint64_t type metadata instantiation function for HalfSIMDStorage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __RKEntityMoveEase.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v12);
  if (v1)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v3 = v12;
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v13._countAndFlagsBits = v5;
  v13._object = v7;
  v8 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v13);
  if (v8 == 4)
  {
    goto LABEL_4;
  }

  v10 = type metadata accessor for __RKEntityMoveEase();
  if (v8)
  {
    v11 = MEMORY[0x277CDAE18];
  }

  else
  {
    v11 = MEMORY[0x277CDAE10];
  }

  return (*(*(v10 - 8) + 104))(a1, *v11, v10);
}

uint64_t __RKEntityMoveEaseType.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v12);
  if (v1)
  {

LABEL_4:
    lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v3 = v12;
  v4 = RIOPxrTfTokenCopyString();
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v13._countAndFlagsBits = v5;
  v13._object = v7;
  v8 = specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(v13);
  if (v8 == 4)
  {
    goto LABEL_4;
  }

  v10 = type metadata accessor for __RKEntityMoveEaseType();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v11 = MEMORY[0x277CDAE68];
    }

    else
    {
      v11 = MEMORY[0x277CDAE58];
    }
  }

  else
  {
    v11 = MEMORY[0x277CDAE60];
  }

  return (*(*(v10 - 8) + 104))(a1, *v11, v10);
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEaseType.MoveEaseTypeLoadingError and conformance __RKEntityMoveEaseType.MoveEaseTypeLoadingError);
  }

  return result;
}

unint64_t specialized __RKEntityMoveEaseTypeUSD.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityMoveEaseTypeUSD.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityMoveEase.MoveEaseLoadingError and conformance __RKEntityMoveEase.MoveEaseLoadingError);
  }

  return result;
}

uint64_t static EntityBuilder.OutputName.getter()
{
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v0 = static EntityBuilder.OutputName;

  return v0;
}

void one-time initialization function for OutputName(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v6 = a2();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

uint64_t EntityBuilder.deinit()
{
  v1 = *(v0 + 16);
  RIOBuilderSetSwiftObject();

  return v0;
}

uint64_t EntityBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RIOBuilderSetSwiftObject();

  return swift_deallocClassInstance();
}

uint64_t EntityProxy.deinit()
{
  v1 = OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity;
  __AssetRef.__as<A>(_:)();
  RERelease();
  v2 = type metadata accessor for __EntityRef();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t EntityProxy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9RealityIO11EntityProxy_reEntity;
  __AssetRef.__as<A>(_:)();
  RERelease();
  v2 = type metadata accessor for __EntityRef();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t EntityProxy.name.getter()
{
  __AssetRef.__as<A>(_:)();
  REEntityGetName();
  return String.init(cString:)();
}

uint64_t EntityProxy.parent.getter()
{
  v0 = MEMORY[0x277D841D8];
  __AssetRef.__as<A>(_:)();
  Parent = REEntityGetParent();
  if (!Parent)
  {
    return 0;
  }

  v2 = Parent;
  v3 = type metadata accessor for EntityProxy();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v8[3] = v0;
  v8[0] = v2;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v8);
  RERetain();
  return v6;
}

uint64_t type metadata accessor for EntityProxy()
{
  result = type metadata singleton initialization cache for EntityProxy;
  if (!type metadata singleton initialization cache for EntityProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for EntityProxy()
{
  result = type metadata accessor for __EntityRef();
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

uint64_t EntityBuilder.generateSwiftOutput(for:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  OutputEntity = RIOBuilderEntityBuilderGetOutputEntity();
  if (OutputEntity)
  {
    v14[2] = v3;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = MEMORY[0x28223BE20](OutputEntity);
    v9 = *(a3 + 56);
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #1 in EntityBuilder.generateSwiftOutput(for:inputs:);
    *(v10 + 24) = v14;
    v17 = partial apply for thunk for @callee_guaranteed () -> ();
    v18 = v10;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v16 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v16 + 1) = &block_descriptor_22;
    v11 = _Block_copy(&aBlock);

    RIOBuilderInputsPerformBlockSyncOnEngineQueue();
    _Block_release(v11);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v13 = objc_getAssociatedObject(v3, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (!v13)
  {
    goto LABEL_8;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(&v19, &aBlock);
  type metadata accessor for Outputs();
  swift_dynamicCast();
  aBlock = 0u;
  v16 = 0u;

  Outputs.subscript.setter(&aBlock, a1, a2);
}

uint64_t closure #1 in EntityBuilder.generateSwiftOutput(for:inputs:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = objc_getAssociatedObject(a1, &static BuilderAssociatedKeys.OutputsReference);
  result = swift_endAccess();
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v14, v15);
    type metadata accessor for Outputs();
    swift_dynamicCast();
    v10 = type metadata accessor for EntityProxy();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v13 = swift_allocObject();
    v16 = MEMORY[0x277D841D8];
    v15[0] = a4;

    static __AssetRef.__fromCore(_:)();
    __swift_destroy_boxed_opaque_existential_0(v15);
    RERetain();
    v16 = v10;
    v15[0] = v13;
    Outputs.subscript.setter(v15, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __RKEntityEmphasisAnimationType.init(inputs:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(&v13);
  if (v1)
  {

LABEL_5:
    lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError();
    swift_allocError();
    swift_willThrow();
  }

  v7 = v13;
  v8 = RIOPxrTfTokenCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  __RKEntityEmphasisAnimationType.init(rawValue:)();
  v9 = type metadata accessor for __RKEntityEmphasisAnimationType();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    outlined destroy of __RKEntityEmphasisAnimationType?(v6);
    goto LABEL_5;
  }

  return (*(v10 + 32))(a1, v6, v9);
}

unint64_t lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError and conformance __RKEntityEmphasisAnimationType.EmphasisAnimationTypeLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityEmphasisAnimationType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMd, &_s10RealityKit31__RKEntityEmphasisAnimationTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static ColorSpaces.ocioName(fromCGColor:)(CGColor *a1)
{
  v1 = CGColorGetColorSpace(a1);
  if (v1)
  {
    v2 = v1;
    v3 = CGColorSpaceCopyName(v1);

    if (v3)
    {
      v4 = MEMORY[0x266710320](v3);
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v6 = v5;
          static Array._conditionallyBridgeFromObjectiveC(_:result:)();
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t one-time initialization function for rioAudio()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rioAudio);
  __swift_project_value_buffer(v0, static Logger.rioAudio);
  return Logger.init(subsystem:category:)();
}

uint64_t closure #1 in static ActionBuilder.generateImpulseActionSpecifications(inputs:)(__n128 a1, uint64_t a2, uint64_t a3, void **a4)
{
  v21 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for __RKEntityActionSpecification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a3, v6);
  __RKEntityForceActionArguments.init(target:force:velocity:)();
  (*(v12 + 104))(v15, *MEMORY[0x277CDAF98], v11);
  v16 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
    *a4 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v16);
    *a4 = v16;
  }

  v16[2] = v19 + 1;
  return (*(v12 + 32))(v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, v15, v11);
}

uint64_t specialized static ActionBuilder.generateImpulseActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v14);
  *&v14 = MEMORY[0x277D84F90];
  *&v6 = MEMORY[0x28223BE20](v5);
  *&v13[-32] = &v14;
  *&v13[-16] = v6;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateImpulseActionSpecifications(inputs:), &v13[-48]);
  result = v14;
  if (*(v14 + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v8 = type metadata accessor for __RKEntityActionSpecification();
    v9 = *(v8 - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v9 + 104))(v12 + v11, *MEMORY[0x277CDAFA0], v8);

    return v12;
  }

  return result;
}

uint64_t specialized Builder.generateOutputs()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, &static BuilderAssociatedKeys.CoreReference);
  result = swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v9, &v10);
    type metadata accessor for RIOBuilderRef(0);
    swift_dynamicCast();
    v4 = RIOBuilderOutputsCreate();

    v5 = RIOBuilderOutputsGetSwiftObject();
    type metadata accessor for Outputs();
    if (v5)
    {
      v6 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      v6 = Outputs.init(core:)(v4);
    }

    v7 = v6;
    swift_beginAccess();

    objc_setAssociatedObject(v1, &static BuilderAssociatedKeys.OutputsReference, v7, 1);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _BaseBuilder.deinit()
{
  v1 = *(v0 + 16);
  RIOBuilderSetSwiftObject();

  return v0;
}

uint64_t _BaseBuilder.stageSubscription.getter()
{
  v1 = *(v0 + 16);
  v2 = RIOBuilderCopyDirtyStageSubscription();
  v3 = RIOBuilderDirtyStageSubscriptionCopyDirtyStageDescriptors();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOBuilderDirtyStageDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

      v12 = MEMORY[0x277D84F90];
LABEL_14:
      v13 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15StageDirtyStateC_SayAFGTt0g5Tf4g_n(v12);

      return v13;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v5;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v6);
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      ++v9;
      specialized StageDirtyState.__allocating_init(core:)(v10);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = *(v14 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    v12 = v14;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t _BaseBuilder.buildOrder.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = RIOBuilderCopyBuildOrder();
  if (result >= 4)
  {
    type metadata accessor for RIOBuilderBuildOrder(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

char *_BaseBuilder.inputDescriptors()()
{
  v1 = *(v0 + 16);
  v2 = RIOBuilderCopyInputsDescriptor();
  v3 = RIOBuilderInputsDescriptorCopyInputDescriptors();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&v35 = 0;
    type metadata accessor for RIOBuilderInputDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_19:
      v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO15InputDescriptorO_SayAFGTt0g5Tf4g_n(v9);

      return v28;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v39 = v5;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v39;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        v11 = MEMORY[0x26670F670](v10, v6);
        static InputDescriptor.create(from:)(v11, &v35);
        swift_unknownObjectRelease();
        v12 = v35;
        v13 = v36;
        v14 = v37;
        v15 = v38;
        v39 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          v31 = v36;
          v33 = v35;
          v29 = v37;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v14 = v29;
          v13 = v31;
          v12 = v33;
          v9 = v39;
        }

        ++v10;
        *(v9 + 16) = v17 + 1;
        v18 = v9 + 56 * v17;
        *(v18 + 32) = v12;
        *(v18 + 48) = v13;
        *(v18 + 64) = v14;
        *(v18 + 80) = v15;
      }

      while (v7 != v10);
    }

    else
    {
      v19 = 32;
      do
      {
        v20 = *(v6 + v19);
        static InputDescriptor.create(from:)(v20, &v35);

        v21 = v35;
        v22 = v36;
        v23 = v37;
        v24 = v38;
        v39 = v9;
        v26 = *(v9 + 16);
        v25 = *(v9 + 24);
        if (v26 >= v25 >> 1)
        {
          v32 = v36;
          v34 = v35;
          v30 = v37;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v23 = v30;
          v22 = v32;
          v21 = v34;
          v9 = v39;
        }

        *(v9 + 16) = v26 + 1;
        v27 = v9 + 56 * v26;
        *(v27 + 32) = v21;
        *(v27 + 48) = v22;
        *(v27 + 64) = v23;
        *(v27 + 80) = v24;
        v19 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

char *_BaseBuilder.outputDescriptors()()
{
  v1 = *(v0 + 16);
  v2 = RIOBuilderCopyOutputsDescriptor();
  v3 = RIOBuilderOutputsDescriptorCopyOutputDescriptors();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOBuilderOutputDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

      v10 = MEMORY[0x277D84F90];
LABEL_19:
      v42 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(v10);

      return v42;
    }
  }

  v26 = v6;
  v7 = __CocoaSet.count.getter();
  v6 = v26;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  v8 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v43 = v2;
    v44 = v8;
    v10 = v5;
    v11 = v8;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x26670F670](v12, v11);
        v13 = RIOBuilderOutputDescriptorCopyOutputName();
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = RIOBuilderOutputDescriptorCopyOutputIdentifier();
        v18 = RIOPxrTfTokenCopyString();
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = RIOBuilderOutputDescriptorCopyOptionality();
        swift_unknownObjectRelease();
        v24 = *(v10 + 16);
        v23 = *(v10 + 24);
        if (v24 >= v23 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        }

        ++v12;
        *(v10 + 16) = v24 + 1;
        v25 = v10 + 40 * v24;
        *(v25 + 32) = v14;
        *(v25 + 40) = v16;
        *(v25 + 48) = v19;
        *(v25 + 56) = v21;
        *(v25 + 64) = v22 == 0;
        v11 = v8;
      }

      while (v7 != v12);
    }

    else
    {
      v27 = 32;
      do
      {
        v28 = *(v11 + v27);
        v29 = RIOBuilderOutputDescriptorCopyOutputName();
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = RIOBuilderOutputDescriptorCopyOutputIdentifier();
        v34 = RIOPxrTfTokenCopyString();
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = RIOBuilderOutputDescriptorCopyOptionality();
        v40 = *(v10 + 16);
        v39 = *(v10 + 24);
        if (v40 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        }

        *(v10 + 16) = v40 + 1;
        v41 = v10 + 40 * v40;
        *(v41 + 32) = v30;
        *(v41 + 40) = v32;
        *(v41 + 48) = v35;
        *(v41 + 56) = v37;
        *(v41 + 64) = v38 == 0;
        v27 += 8;
        --v7;
        v11 = v44;
      }

      while (v7);
    }

    v2 = v43;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t _BaseBuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  RIOBuilderSetSwiftObject();

  return swift_deallocClassInstance();
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x26670F670](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26670F670](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t specialized static _BaseBuilder.create(from:)(void *a1)
{
  v2 = RIOBuilderGetSwiftObject();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v3;
    }

    swift_unknownObjectRelease();
  }

  v4 = RIOBuilderCopyIdentifier();
  type metadata accessor for CFStringRef(0);
  v5 = *MEMORY[0x277D00EB8];
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  if (static _CFObject.== infix(_:_:)())
  {
    type metadata accessor for EntityBuilder();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    swift_beginAccess();
    v6 = a1;

    objc_setAssociatedObject(v7, &static BuilderAssociatedKeys.CoreReference, v6, 1);
    swift_endAccess();

    RIOBuilderSetSwiftObject();

    specialized Builder.generateOutputs()();
  }

  else
  {

    return 0;
  }

  return v3;
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

uint64_t SceneDescriptionFoundations.Path.parentPath()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCopyParentPath();
  *a1 = result;
  return result;
}

void *SceneDescriptionFoundations.AssetPath.referencedData.getter()
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v3 = RIOPxrUtilsCopyCFDataWithArAssetPath();

  if (v3)
  {
    v4 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
    swift_allocError();
    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

Swift::String __swiftcall SceneDescriptionFoundations.Path.name()()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyName();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t static SceneDescriptionFoundations.Path.Empty.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateEmptyPath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.Empty.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfAssetPathCreateEmptyPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.primPath()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCopyPrimPath();
  *a1 = result;
  return result;
}

Swift::String __swiftcall SceneDescriptionFoundations.Path.elementString()()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyElementString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t static SceneDescriptionFoundations.Path.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfPathIsLessThan();
}

uint64_t SceneDescriptionFoundations.Path.description.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SceneDescriptionFoundations.Path.debugDescription.getter()
{
  result = 0x203A687461503CLL;
  SceneDescriptionFoundations.Path.debugDescription.getter(0x203A687461503CLL, 0xE700000000000000, MEMORY[0x277D00990]);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.Path()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfPathIsLessThan();
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfPathIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfPathIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfPathIsLessThan();
}

uint64_t static SceneDescriptionFoundations.Path.AbsoluteRoot.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateAbsoluteRootPath();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.Path.ReflexiveRelative.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfPathCreateReflexiveRelativePath();
  *a1 = result;
  return result;
}

uint64_t String.isIsValidPathIdentifier()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = String.utf8CString.getter();
  v5 = a3(v4 + 32);

  return v5;
}

uint64_t SceneDescriptionFoundations.Path.targetPath()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCopyTargetPath();
  *a1 = result;
  return result;
}

char *SceneDescriptionFoundations.Path.prefixes()(uint64_t (*a1)(void))
{
  v2 = a1(*v1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }

LABEL_13:

      return MEMORY[0x277D84F90];
    }
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = v4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = MEMORY[0x26670F670](i, v5);
        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          v13 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v13;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
      }
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = *(v4 + 16);
        v16 = *(v4 + 24);
        v17 = *(v5 + v14);
        if (v15 >= v16 >> 1)
        {
          v18 = v16 > 1;
          v19 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v15 + 1, 1);
          v17 = v19;
        }

        *(v4 + 16) = v15 + 1;
        *(v4 + 8 * v15 + 32) = v17;
        v14 += 8;
        --v6;
      }

      while (v6);
    }

    return v8;
  }

  __break(1u);
  return result;
}

Swift::tuple_String_String __swiftcall SceneDescriptionFoundations.Path.variantSelection()()
{
  v1 = *v0;
  v2 = RIOPxrSdfPathCopyVariantSelection();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v3 = MEMORY[0x277D84F90];
    v4 = *(MEMORY[0x277D84F90] + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v5 = 0;
    v9 = 0xE000000000000000;
    v6 = 0xE000000000000000;
    goto LABEL_6;
  }

  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  v3 = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D84F90] + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = v3 + 32 + 16 * v4;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);

LABEL_6:

  v10 = v5;
  v11 = v6;
  v12 = v8;
  v13 = v9;
  result._1._object = v13;
  result._1._countAndFlagsBits = v12;
  result._0._object = v11;
  result._0._countAndFlagsBits = v10;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.primOrPrimVariantSelectionPath()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCopyPrimOrPrimVariantSelectionPath();
  *a1 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.absoluteRootOrPrimPath()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCopyAbsoluteRootOrPrimPath();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall SceneDescriptionFoundations.Path.hasPrefix(_:)(Swift::String a1)
{
  v2 = *v1;
  String.utf8CString.getter();
  v3 = RIOPxrSdfPathCreateFromCString();

  LOBYTE(v2) = RIOPxrSdfPathHasPrefix();

  return v2;
}

uint64_t SceneDescriptionFoundations.Path.hasPrefix(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return RIOPxrSdfPathHasPrefix();
}

void SceneDescriptionFoundations.Path.replaceName(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyReplacingName = RIOPxrSdfPathCreateCopyReplacingName();

  *v1 = CopyReplacingName;
}

uint64_t SceneDescriptionFoundations.Path.replacingName(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyReplacingName();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.stripAllVariantSelections()()
{
  v1 = *v0;
  CopyStrippingAllVariantSelections = RIOPxrSdfPathCreateCopyStrippingAllVariantSelections();

  *v0 = CopyStrippingAllVariantSelections;
}

uint64_t SceneDescriptionFoundations.Path.strippingAllVariantSelections()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCreateCopyStrippingAllVariantSelections();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Path.append(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingPath = RIOPxrSdfPathCreateCopyAppendingPath();

  *v1 = CopyAppendingPath;
}

uint64_t SceneDescriptionFoundations.Path.appending(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingPath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendChild(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingChild = RIOPxrSdfPathCreateCopyAppendingChild();

  *v1 = CopyAppendingChild;
}

uint64_t SceneDescriptionFoundations.Path.appendingChild(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingChild();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendProperty(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingProperty = RIOPxrSdfPathCreateCopyAppendingProperty();

  *v1 = CopyAppendingProperty;
}

uint64_t SceneDescriptionFoundations.Path.appendingProperty(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingProperty();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.appendVariantSelection(variantSet:variant:)(Swift::String variantSet, Swift::String variant)
{
  v3 = *v2;
  String.utf8CString.getter();
  String.utf8CString.getter();
  CopyAppendingVariantSelection = RIOPxrSdfPathCreateCopyAppendingVariantSelection();

  *v2 = CopyAppendingVariantSelection;
}

uint64_t SceneDescriptionFoundations.Path.appendingVariantSelection(variantSet:variant:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  String.utf8CString.getter();
  String.utf8CString.getter();
  CopyAppendingVariantSelection = RIOPxrSdfPathCreateCopyAppendingVariantSelection();

  *a1 = CopyAppendingVariantSelection;
  return result;
}

void SceneDescriptionFoundations.Path.appendTarget(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingTarget = RIOPxrSdfPathCreateCopyAppendingTarget();

  *v1 = CopyAppendingTarget;
}

uint64_t SceneDescriptionFoundations.Path.appendingTarget(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingTarget();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendRelationalAttribute(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingRelationalAttribute = RIOPxrSdfPathCreateCopyAppendingRelationalAttribute();

  *v1 = CopyAppendingRelationalAttribute;
}

uint64_t SceneDescriptionFoundations.Path.appendingRelationalAttribute(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingRelationalAttribute();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.replaceTargetPath(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyReplacingTargetPath = RIOPxrSdfPathCreateCopyReplacingTargetPath();

  *v1 = CopyReplacingTargetPath;
}

uint64_t SceneDescriptionFoundations.Path.replacingTargetPath(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyReplacingTargetPath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendMapper(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingMapper = RIOPxrSdfPathCreateCopyAppendingMapper();

  *v1 = CopyAppendingMapper;
}

uint64_t SceneDescriptionFoundations.Path.appendingMapper(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingMapper();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendMapperArg(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingMapperArg = RIOPxrSdfPathCreateCopyAppendingMapperArg();

  *v1 = CopyAppendingMapperArg;
}

uint64_t SceneDescriptionFoundations.Path.appendingMapperArg(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingMapperArg();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall SceneDescriptionFoundations.Path.appendExpression()()
{
  v1 = *v0;
  CopyAppendingExpression = RIOPxrSdfPathCreateCopyAppendingExpression();

  *v0 = CopyAppendingExpression;
}

uint64_t SceneDescriptionFoundations.Path.appendingExpression()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfPathCreateCopyAppendingExpression();
  *a1 = result;
  return result;
}

void SceneDescriptionFoundations.Path.appendElement(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyAppendingElementToken = RIOPxrSdfPathCreateCopyAppendingElementToken();

  *v1 = CopyAppendingElementToken;
}

uint64_t SceneDescriptionFoundations.Path.appendingElement(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyAppendingElementToken();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.replacePrefix(_:with:fixTargetPaths:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  CopyReplacingPrefix = RIOPxrSdfPathCreateCopyReplacingPrefix();

  *v2 = CopyReplacingPrefix;
}

uint64_t SceneDescriptionFoundations.Path.replacingPrefix(_:with:fixTargetPaths:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *v3;
  result = RIOPxrSdfPathCreateCopyReplacingPrefix();
  *a3 = result;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.commonPrefix(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCopyCommonPrefix();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.makeAbsolutePath(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyMakingAbsolutePath = RIOPxrSdfPathCreateCopyMakingAbsolutePath();

  *v1 = CopyMakingAbsolutePath;
}

uint64_t SceneDescriptionFoundations.Path.makingAbsolutePath(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyMakingAbsolutePath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.makeRelativePath(with:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  CopyMakingRelativePath = RIOPxrSdfPathCreateCopyMakingRelativePath();

  *v1 = CopyMakingRelativePath;
}

uint64_t SceneDescriptionFoundations.Path.makingRelativePath(with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  result = RIOPxrSdfPathCreateCopyMakingRelativePath();
  *a2 = result;
  return result;
}

void SceneDescriptionFoundations.Path.removeCommonSuffix(_:stopAtRootPrim:)(id *a1)
{
  v3 = *v1;
  v4 = *a1;
  CopyRemovingCommonSuffix = RIOPxrSdfPathCreateCopyRemovingCommonSuffix();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_12:
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();

      v13 = RIOPxrSdfPathCreateEmptyPath();
      goto LABEL_13;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) == 0)
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      v9 = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        if (v9 < v8)
        {
          v10 = *(v6 + 32 + 8 * v9);
          EmptyPath = *(v6 + 32);
          v12 = v10;
LABEL_9:
          v13 = v12;

LABEL_13:

          *v1 = EmptyPath;
          *a1 = v13;
          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  EmptyPath = MEMORY[0x26670F670](0, v6);
  if (!__OFSUB__(v7, 1))
  {
    v12 = MEMORY[0x26670F670](v7 - 1, v6);
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
}

uint64_t SceneDescriptionFoundations.Path.removingCommonSuffix(_:stopAtRootPrim:)(uint64_t *a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = *v3;
  CopyRemovingCommonSuffix = RIOPxrSdfPathCreateCopyRemovingCommonSuffix();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v11 = v10;
    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_4;
      }

LABEL_13:

      v14 = MEMORY[0x277D84F90];
      v20 = *(MEMORY[0x277D84F90] + 16);
      if (v20)
      {
LABEL_20:
        v29 = v14[4];
        *a1 = v29;
        v30 = v14[v20 + 3];
        v31 = v29;
        v22 = v30;

        goto LABEL_21;
      }

LABEL_14:
      EmptyPath = RIOPxrSdfPathCreateEmptyPath();

      *a1 = EmptyPath;
      result = RIOPxrSdfPathCreateEmptyPath();
      v22 = result;
LABEL_21:
      *a2 = v22;
      return result;
    }
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v14 = v10;
    if ((v11 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v12; ++i)
      {
        v16 = MEMORY[0x26670F670](i, v11);
        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          v19 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v19;
        }

        v14[2] = v18 + 1;
        v14[v18 + 4] = v16;
      }
    }

    else
    {
      v23 = 32;
      do
      {
        v24 = *(v10 + 16);
        v25 = *(v10 + 24);
        v26 = *(v11 + v23);
        if (v24 >= v25 >> 1)
        {
          v27 = v25 > 1;
          v28 = v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v24 + 1, 1);
          v26 = v28;
        }

        *(v10 + 16) = v24 + 1;
        *(v10 + 8 * v24 + 32) = v26;
        v23 += 8;
        --v12;
      }

      while (v12);
    }

    v20 = v14[2];
    if (v20)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.removeDescendentPaths()()
{
  v1 = Array<A>.removingDescendentPaths()(*v0);

  *v0 = v1;
  return result;
}

uint64_t Array<A>.removeAncestorPaths()()
{
  v1 = Array<A>.removingAncestorPaths()(*v0);

  *v0 = v1;
  return result;
}

char *Array<A>.conciseRelativePaths()(uint64_t a1, uint64_t (*a2)(Class))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = v7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *(v27 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
  }

  type metadata accessor for RIOPxrSdfPathRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = a2(isa);

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v12 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_6;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_6:
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_7;
      }

LABEL_16:

      return MEMORY[0x277D84F90];
    }
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_7:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = v4;
    if ((v12 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v13; ++i)
      {
        v17 = MEMORY[0x26670F670](i, v12);
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          v20 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
          v17 = v20;
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 8 * v19 + 32) = v17;
      }
    }

    else
    {
      v21 = 32;
      do
      {
        v22 = *(v15 + 16);
        v23 = *(v15 + 24);
        v24 = *(v12 + v21);
        if (v22 >= v23 >> 1)
        {
          v25 = v23 > 1;
          v26 = v24;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v25, v22 + 1, 1);
          v24 = v26;
        }

        *(v15 + 16) = v22 + 1;
        *(v15 + 8 * v22 + 32) = v24;
        v21 += 8;
        --v13;
      }

      while (v13);
    }

    return v15;
  }

  __break(1u);
  return result;
}

Swift::Int SceneDescriptionFoundations.AssetPath.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

uint64_t static SceneDescriptionFoundations.AssetPath.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfAssetPathIsLessThan();
}

uint64_t SceneDescriptionFoundations.AssetPath.assetPath.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfAssetPathAssetPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SceneDescriptionFoundations.AssetPath.debugDescription.getter()
{
  result = 0x615074657373413CLL;
  SceneDescriptionFoundations.Path.debugDescription.getter(0x615074657373413CLL, 0xEC000000203A6874, MEMORY[0x277D008D0]);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SceneDescriptionFoundations.Path.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(*v3);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x26670F080](v5, v7);

  MEMORY[0x26670F080](62, 0xE100000000000000);
}

uint64_t static SceneDescriptionFoundations.Path.== infix(_:_:)(uint64_t *a1, uint64_t *a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  a3(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a4, a5);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t SceneDescriptionFoundations.Path.hash(into:)(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = *v4;
  a2(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a3, a4);
  return _CFObject.hash(into:)();
}

uint64_t SceneDescriptionFoundations.Path.hashValue.getter(void (*a1)(void))
{
  v3 = *v1;
  a1();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneDescriptionFoundations.Path(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  a5(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a6, a7);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneDescriptionFoundations.AssetPath()
{
  v1 = *v0;
  v2 = RIOPxrSdfAssetPathAssetPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(*v5);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  MEMORY[0x26670F080](v7, v9);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return a3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v9 = *v6;
  a4(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a5, a6);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.Path(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  v10 = *v6;
  Hasher.init(_seed:)();
  a4(0);
  lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(a5, a6);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfAssetPathIsLessThan();
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfAssetPathIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfAssetPathIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfAssetPathIsLessThan();
}

uint64_t protocol witness for ExpressibleByStringLiteral.init(stringLiteral:) in conformance SceneDescriptionFoundations.Path@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = String.utf8CString.getter();

  v8 = a2(v7 + 32);

  *a3 = v8;
  return result;
}

uint64_t SceneDescriptionFoundations.Path.init(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v4 = String.utf8CString.getter();

  v5 = a1(v4 + 32);

  *a2 = v5;
  return result;
}

uint64_t SceneDescriptionFoundations.AssetPath.init(_:_:)@<X0>(uint64_t *a1@<X8>)
{
  String.utf8CString.getter();

  String.utf8CString.getter();

  v2 = RIOPxrSdfAssetPathCreateFromCStringWithResolvedPath();

  *a1 = v2;
  return result;
}

uint64_t SceneDescriptionFoundations.AssetPath.resolvedPath.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfAssetPathResolvedPathCopyString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error);
  }

  return result;
}

void SceneDescriptionFoundations.AssetPath.dependencies.getter(void *a1@<X8>)
{
  v3 = *v1;
  v4 = RIOPxrUsdUtilsCopyAllDependencies();
  v5 = RIODependencyDescriptorCopyLayers();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrSdfLayerRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v6 = MEMORY[0x277D84F90];
  v7 = RIODependencyDescriptorCopyAssets();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v8 = MEMORY[0x277D84F90];
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v9 = RIODependencyDescriptorCopyUnresolvedPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
}

void SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.utf8CString.getter();

  v9 = RIOPxrArAssetCreate();

  if (v9)
  {
    v16 = v9;
    MEMORY[0x28223BE20](v10);
    v14[2] = a3;
    v14[3] = v9;
    v14[4] = a1;
    v14[5] = a2;
    type metadata accessor for RIOPxrArAssetRef(0);
    v12 = v11;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _ss20withExtendedLifetimeyq0_x_q0_yq_YKXEtq_YKs5ErrorR_Ri_zRi0_zRi_0_r1_lF(&v16, partial apply for closure #1 in SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:), v14, v12, v13, a3, MEMORY[0x277D84950], &v15);
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t closure #1 in SceneDescriptionFoundations.AssetPath.withReferencedData<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  CFDataNoCopy = RIOPxrArAssetCreateCFDataNoCopy();
  if (CFDataNoCopy)
  {
    v7 = CFDataNoCopy;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath.Error and conformance SceneDescriptionFoundations.AssetPath.Error();
  v8 = swift_allocError();
  result = swift_willThrow();
  *a5 = v8;
  return result;
}

uint64_t lazy protocol witness table accessor for type RIOPxrSdfPathRef and conformance RIOPxrSdfPathRef(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.AssetPath and conformance SceneDescriptionFoundations.AssetPath);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneDescriptionFoundations.Dependencies(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SceneDescriptionFoundations.Dependencies(uint64_t result, int a2, int a3)
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

uint64_t SceneDescriptionFoundations.Reference.description.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfReferenceCopyAssetPathString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x26670F080](v3, v5);

  MEMORY[0x26670F080](3944256, 0xE300000000000000);
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    v7 = result;
    v8 = RIOPxrSdfPathCopyString();
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    MEMORY[0x26670F080](v9, v11);

    MEMORY[0x26670F080](62, 0xE100000000000000);
    return 64;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.getter()
{
  v1 = *v0;
  v2 = RIOPxrSdfReferenceCopyAssetPathString();
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SceneDescriptionFoundations.Reference.primPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SceneDescriptionFoundations.Reference.debugDescription.getter()
{
  v1 = *v0;
  strcpy(v4, "<Reference: ");
  v2 = SceneDescriptionFoundations.Reference.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return v4[0];
}

uint64_t static SceneDescriptionFoundations.Reference.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsLessThan();
}

uint64_t static SceneDescriptionFoundations.Reference.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsEqual();
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsLessThan();
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsLessThan() ^ 1;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsLessThan();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return RIOPxrSdfReferenceIsEqual();
}

uint64_t SceneDescriptionFoundations.Reference.hash(into:)()
{
  v1 = *v0;
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  return _CFObject.hash(into:)();
}

uint64_t SceneDescriptionFoundations.Reference.hashValue.getter()
{
  v2 = *v0;
  lazy protocol witness table accessor for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference();
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

unint64_t lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef()
{
  result = lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef;
  if (!lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef)
  {
    type metadata accessor for RIOPxrSdfReferenceRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference()
{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference;
  if (!lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptionFoundations.Reference and conformance SceneDescriptionFoundations.Reference);
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneDescriptionFoundations.Reference()
{
  v1 = *v0;
  strcpy(v4, "<Reference: ");
  v2 = SceneDescriptionFoundations.Reference.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](62, 0xE100000000000000);
  return v4[0];
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneDescriptionFoundations.Reference()
{
  v1 = *v0;
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneDescriptionFoundations.Reference()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfReferenceRef(0);
  lazy protocol witness table accessor for type RIOPxrSdfReferenceRef and conformance RIOPxrSdfReferenceRef();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t SceneDescriptionFoundations.Reference.init(_:_:)@<X0>(void **a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  String.utf8CString.getter();

  v4 = RIOPxrSdfReferenceCreateFromCStringWithAssetPathAndPrimPath();

  *a2 = v4;
  return result;
}

uint64_t key path setter for SceneDescriptionFoundations.Reference.assetPath : SceneDescriptionFoundations.Reference(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  String.utf8CString.getter();
  RIOPxrSdfReferenceSetAssetPath();
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.setter()
{
  v1 = *v0;
  String.utf8CString.getter();

  RIOPxrSdfReferenceSetAssetPath();
}

uint64_t (*SceneDescriptionFoundations.Reference.assetPath.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  v3 = RIOPxrSdfReferenceCopyAssetPathString();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return SceneDescriptionFoundations.Reference.assetPath.modify;
}

uint64_t SceneDescriptionFoundations.Reference.assetPath.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  String.utf8CString.getter();
  v6 = a1[2];
  if (a2)
  {
    RIOPxrSdfReferenceSetAssetPath();
  }

  else
  {

    RIOPxrSdfReferenceSetAssetPath();
  }
}

void SceneDescriptionFoundations.Reference.primPath.setter(id *a1)
{
  v3 = *a1;
  v2 = *v1;
  RIOPxrSdfReferenceSetPrimPath();
}

void (*SceneDescriptionFoundations.Reference.primPath.modify(void (**a1)(uint64_t a1)))(uint64_t a1)
{
  a1[1] = *v1;
  result = RIOPxrSdfReferenceCopyPrimPath();
  if (result)
  {
    *a1 = result;
    return SceneDescriptionFoundations.Reference.primPath.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SceneDescriptionFoundations.Reference.primPath.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  RIOPxrSdfReferenceSetPrimPath();
}

uint64_t closure #1 in static ActionBuilder.generateSpinActionSpecifications(inputs:)(double a1, double a2, __n128 a3, uint64_t a4, uint64_t a5, void **a6)
{
  v31 = a3;
  v30 = a6;
  v7 = type metadata accessor for __RKEntitySpinDirectionType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for __RKEntityActionSpecification();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a5, v12, v20);
  v23 = v30;
  (*(v8 + 104))(v11, *MEMORY[0x277CDAF28], v7);
  __RKEntitySpinActionArguments.init(target:duration:iterations:direction:axis:)();
  (*(v18 + 104))(v22, *MEMORY[0x277CDAF80], v17);
  v24 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  return (*(v18 + 32))(v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v27, v22, v17);
}

uint64_t specialized static ActionBuilder.generateSpinActionSpecifications(inputs:)()
{
  v0 = type metadata accessor for __RKEntityGroupActionOrder();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v6 = v5;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v8 = v7;
  v9 = _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA7Vector3VySdG_Tt1g5(&v17);
  *&v17 = MEMORY[0x277D84F90];
  *&v10 = MEMORY[0x28223BE20](v9);
  *(&v17 - 6) = &v17;
  *(&v17 - 5) = v6;
  *(&v17 - 4) = v8;
  *(&v17 - 1) = v10;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateSpinActionSpecifications(inputs:), (&v17 - 4));
  result = v17;
  if (*(v17 + 16) > 1uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v12 = type metadata accessor for __RKEntityActionSpecification();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2619891C0;
    (*(v1 + 104))(v4, *MEMORY[0x277CDAEF8], v0);

    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    (*(v13 + 104))(v16 + v15, *MEMORY[0x277CDAFA0], v12);

    return v16;
  }

  return result;
}

void static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for __RKAudioSpatialModeSelection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for __RKEntityAudioActionType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v112);
  v110 = v13;
  v111 = v10;
  v109 = v5;
  v14 = v112[0];
  v15 = RIOPxrTfTokenCopyString();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v112);
  v107 = v8;
  v108 = v9;
  v19 = v4;
  v20 = v112[0];
  v21 = RIOPxrTfTokenCopyString();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n();
  v105 = v22;
  v106 = v24;
  v104 = v2;
  v26 = v25;
  v27 = Inputs.prim.getter();
  if (String.count.getter() <= 0)
  {
    v28 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v28 = RIOPxrTfTokenCreateWithCString();
  }

  v29 = v28;
  v30 = *(v27 + 16);
  HasAttribute = RIOPxrUsdPrimHasAttribute();
  v32 = HasAttribute;
  v33 = v108;
  if (!HasAttribute)
  {

    outlined copy of Object.Error(0);

    v112[0] = 0;
    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(v112[0]);
    v36 = 0;
LABEL_27:
    outlined consume of Result<AnyAttribute, Object.Error>(v36, v32 ^ 1);
    return;
  }

  v103 = 0;
  v34 = *(v27 + 16);
  v35 = RIOPxrUsdPrimCopyAttribute();

  type metadata accessor for AnyAttribute();
  v36 = swift_allocObject();
  v36[2] = v35;

  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v38 = EmptyValue;
  v39 = RIOPxrVtValueCopyAssetPath();

  outlined consume of Result<AnyAttribute, Object.Error>(v36, 0);
  v40 = v106;
  if (!v39)
  {

    goto LABEL_27;
  }

  v41 = v36[2];
  v42 = RIOPxrUsdAttributeCopyValue();
  if (!v42)
  {
    v42 = RIOPxrVtValueCreateEmptyValue();
  }

  v98 = v39;
  v99 = v36;
  v43 = v42;
  v44 = RIOPxrVtValueCopyAssetPath();

  if (!v44)
  {
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v45 = v33;
  v97 = v44;
  v46 = RIOPxrSdfAssetPathResolvedPathCopyString();
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v47;

  v100 = swift_allocObject();
  *(v100 + 16) = 0;
  v48 = *(v111 + 104);
  v48(v110, *MEMORY[0x277CDAED8], v33);
  v49 = v19;
  if (v16 == 0x6573756170 && v18 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v50 = MEMORY[0x277CDAEE8];
LABEL_15:
    v51 = v110;
LABEL_16:
    (*(v111 + 8))(v51, v45);
    v48(v51, *v50, v45);
    goto LABEL_17;
  }

  if (v16 == 1886352499 && v18 == 0xE400000000000000)
  {

    v50 = MEMORY[0x277CDAEE0];
    goto LABEL_15;
  }

  v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v51 = v110;
  if (v94)
  {
    v50 = MEMORY[0x277CDAEE0];
    goto LABEL_16;
  }

LABEL_17:
  v52 = v109;
  v53 = *(v109 + 104);
  v53(v107, *MEMORY[0x277CDAF30], v19);
  v54 = v105;
  if (v105 == 0x6C616974617073 && v40 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v55 = MEMORY[0x277CDAF38];
LABEL_21:
    v56 = v107;
LABEL_22:
    (*(v52 + 8))(v56, v19);
    v57 = (v53)(v56, *v55, v19);
    goto LABEL_23;
  }

  if (v54 == 0x69746170536E6F6ELL && v40 == 0xEA00000000006C61)
  {

    v55 = MEMORY[0x277CDAF40];
    goto LABEL_21;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v56 = v107;
  if (v95)
  {
    v55 = MEMORY[0x277CDAF40];
    goto LABEL_22;
  }

LABEL_23:
  v112[0] = 93;
  v112[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v57);
  *(&v96 - 2) = v112;
  v59 = v101;
  v58 = v102;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v96 - 4), v101, v102);
  if (v60)
  {

    v61 = v58;
  }

  else
  {
    v62 = String.subscript.getter();
    v59 = MEMORY[0x26670F020](v62);
    v61 = v63;
    v58 = v102;
  }

  v64 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v64 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (!v64)
  {

    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_2619891C0;
    v79 = v98;
    v80 = RIOPxrSdfAssetPathAssetPathCopyString();
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    *(v78 + 56) = MEMORY[0x277D837D0];
    *(v78 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v78 + 32) = v81;
    *(v78 + 40) = v83;
    type metadata accessor for OS_os_log();
    v84 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    outlined consume of Result<AnyAttribute, Object.Error>(v99, 0);

    (*(v52 + 8))(v56, v49);
    (*(v111 + 8))(v51, v108);
LABEL_49:

    return;
  }

  v65 = *(a1 + 56);
  v66 = RIOBuilderInputsGetImportSession();
  if (!v66)
  {
    goto LABEL_56;
  }

  v67 = v66;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_57:
    __break(1u);
    return;
  }

  v69 = *(SwiftObject + 32);

  ServiceLocator = REEngineGetServiceLocator();
  v71 = MEMORY[0x2667102E0](ServiceLocator);
  if (!v71)
  {

    v85 = v111;
    if (one-time initialization token for rioAudio != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static Logger.rioAudio);
    v87 = static os_log_type_t.error.getter();
    v88 = Logger.logObject.getter();
    v89 = os_log_type_enabled(v88, v87);
    v90 = v99;
    if (v89)
    {
      v91 = swift_slowAlloc();
      v110 = SwiftObject;
      v92 = v91;
      *v91 = 0;
      _os_log_impl(&dword_26187B000, v88, v87, "generateAudioActionSpecifications could not get an AssetManager.", v91, 2u);
      MEMORY[0x266713AD0](v92, -1, -1);
    }

    outlined consume of Result<AnyAttribute, Object.Error>(v90, 0);
    (*(v52 + 8))(v56, v49);
    (*(v85 + 8))(v51, v108);
    goto LABEL_49;
  }

  v72 = v71;
  v110 = SwiftObject;
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  v107 = (v73 + 16);
  *(v73 + 24) = 0xE000000000000000;
  v74 = swift_allocObject();
  *(v74 + 24) = 0;
  *(v74 + 16) = 0;
  *(v74 + 32) = -256;
  v75 = swift_allocObject();
  v75[2] = v101;
  v75[3] = v58;
  v75[4] = v100;
  v75[5] = v74;
  v76 = v104;
  v75[6] = v72;
  v75[7] = v76;
  v75[8] = a1;
  v75[9] = v73;

  v77 = closure #3 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(a1, partial apply for closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:), v75, v74 + 16);
  v112[0] = MEMORY[0x277D84F90];
  if (v77)
  {
    MEMORY[0x28223BE20](v77);
    *(&v96 - 6) = v112;
    *(&v96 - 5) = v107;
    *(&v96 - 4) = v51;
    *(&v96 - 3) = v56;
    *(&v96 - 2) = v26;
    specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #4 in static ActionBuilder.generateAudioActionSpecifications(inputs:), (&v96 - 8));
  }

  outlined consume of Result<AnyAttribute, Object.Error>(v99, 0);

  v93 = v111;
  (*(v109 + 8))(v56, v49);
  (*(v93 + 8))(v51, v108);
}

void closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  String.utf8CString.getter();
  swift_beginAccess();
  v13 = RIOPxrUtilsCopyCFDataWithArAssetPath();
  swift_endAccess();

  if (!v13)
  {
    swift_beginAccess();
    v42 = *(a4 + 16);
    v43 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    v44 = *(a4 + 32);
    v45 = 256;
LABEL_16:
    *(a4 + 32) = v45;
    outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v42, v43, v44);

    return;
  }

  REAudioFileAssetConfigurationCreate();
  v14 = REAudioFileAssetCreateWithMappedDataAndConfiguration();
  if (!v14)
  {

    swift_beginAccess();
    v42 = *(a4 + 16);
    v43 = *(a4 + 24);
    *(a4 + 16) = a1;
    *(a4 + 24) = a2;
    v44 = *(a4 + 32);
    v45 = 257;
    goto LABEL_16;
  }

  v15 = v14;
  if (one-time initialization token for savedRef != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = static ActionBuilder.savedRef;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  static ActionBuilder.savedRef = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    static ActionBuilder.savedRef = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
  }

  *(v16 + 2) = v19 + 1;
  *&v16[8 * v19 + 32] = v15;
  static ActionBuilder.savedRef = v16;
  swift_endAccess();
  v20 = *(a7 + 56);
  v21 = RIOBuilderInputsGetImportSession();
  if (!v21)
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v24 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

  swift_beginAccess();
  v25 = *(SwiftObject + v24);
  RIOImportSessionQueueAssetForLoad();

  v26 = RIOBuilderInputsGetImportSession();
  if (v26)
  {
    v27 = v26;
    v28 = RIOImportSessionGetSwiftObject();

    if (v28)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v15;
      v30 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v31 = *(v28 + v30);
      aBlock[4] = partial apply for closure #1 in closure #2 in static ActionBuilder.generateAudioActionSpecifications(inputs:);
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_18_0;
      v32 = _Block_copy(aBlock);
      v33 = v31;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v32);

      v34 = REAssetHandleCopyAssetIdentifierString();
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      swift_beginAccess();
      v38 = *(a8 + 24);
      *(a8 + 16) = v35;
      *(a8 + 24) = v37;

      swift_beginAccess();
      v39 = *(a4 + 16);
      v40 = *(a4 + 24);
      *(a4 + 16) = v35;
      *(a4 + 24) = v37;
      v41 = *(a4 + 32);
      *(a4 + 32) = 0;
      outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v39, v40, v41);
      return;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t closure #3 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 56);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v19[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v19[5] = v8;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed () -> ();
  v19[3] = &block_descriptor_23;
  v9 = _Block_copy(v19);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v11 = *(a4 + 16);
    if (v11 >> 8 <= 0xFE)
    {
      if ((v11 & 0x100) == 0)
      {
        return 1;
      }

      v13 = *a4;
      v12 = *(a4 + 8);
      outlined copy of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(v13, v12, v11, 1);
      static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_2619891C0;
      v15 = description.getter in AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(v13, v12, v11 & 1);
      v17 = v16;
      *(v14 + 56) = MEMORY[0x277D837D0];
      *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      type metadata accessor for OS_os_log();
      v18 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(v13, v12, v11);
    }

    return 0;
  }

  return result;
}

uint64_t description.getter in AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(72);
    v5 = 0xD000000000000046;
    v6 = 0x8000000261997F20;
  }

  else
  {
    _StringGuts.grow(_:)(56);
    v6 = 0x8000000261997F70;
    v5 = 0xD000000000000036;
  }

  MEMORY[0x26670F080](v5, v6);
  MEMORY[0x26670F080](a1, a2);
  return 0;
}

uint64_t closure #4 in static ActionBuilder.generateAudioActionSpecifications(inputs:)(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v45 = a6;
  v42 = a5;
  v38 = a2;
  v39 = a4;
  v43 = type metadata accessor for __RKEntityActionMultiplePerformBehavior();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for __RKAudioSpatialModeSelection();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for __RKEntityAudioActionType();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v36);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for __RKEntityActionSpecification();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v38, v16);
  v26 = v39;
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  (*(v12 + 16))(v15, v42, v36);
  (*(v8 + 16))(v11, v45, v37);
  v29 = v44;
  (*(v41 + 104))(v40, *MEMORY[0x277CDB010], v43);

  __RKEntityAudioActionArguments.init(target:path:type:spatialMode:volume:loops:multiplePerformBehavior:)();
  (*(v22 + 104))(v25, *MEMORY[0x277CDAF90], v21);
  v30 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v30);
    *v29 = v30;
  }

  v30[2] = v33 + 1;
  return (*(v22 + 32))(v30 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v33, v25, v21);
}

unint64_t specialized BidirectionalCollection.lastIndex(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = String.index(before:)();
    v13[0] = String.subscript.getter();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

id outlined copy of Object.Error(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined consume of AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)();
  }

  else
  {
  }
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined copy of AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)();
  }

  else
  {
  }
}

uint64_t outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return outlined consume of Result<String, AudioLoadError #1 in static ActionBuilder.generateAudioActionSpecifications(inputs:)>(result, a2, a3, BYTE1(a3) & 1);
  }

  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for EntityProxy();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, void (*a2)(BOOL, uint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  a2(0, v8, 0);
  v9 = v16;
  if (v8)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of Any(i, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        a2(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v14;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void Inputs.createIBLAsset(on:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit10__AssetRefVSgMd, &_s10RealityKit10__AssetRefVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  EmptyValue = RIOPxrUsdAttributeCopyValue();
  if (!EmptyValue)
  {
    EmptyValue = RIOPxrVtValueCreateEmptyValue();
  }

  v14 = EmptyValue;
  v15 = RIOPxrVtValueCopyAssetPath();

  if (!v15)
  {
    goto LABEL_6;
  }

  if (RIOPxrSdfAssetPathIsEmpty())
  {

LABEL_6:
    if (one-time initialization token for importTextures != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    *(swift_allocObject() + 16) = 0;
    return;
  }

  v42 = v8;
  v43 = v7;
  v16 = v1;
  v17 = RIOPxrSdfAssetPathResolvedPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:)();

  if (URL.pathExtension.getter() == 0x657974696C616572 && v18 == 0xEA0000000000766ELL)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v21 = *(v16 + 56);
      v22 = RIOBuilderInputsGetImportSession();
      if (v22)
      {
        v23 = v22;
        SwiftObject = RIOImportSessionGetSwiftObject();

        v26 = v42;
        v25 = v43;
        if (SwiftObject)
        {
          v27 = *(SwiftObject + 32);
          ServiceLocator = REEngineGetServiceLocator();
          if (MEMORY[0x2667102E0]() && MEMORY[0x2667102F0](ServiceLocator))
          {
            if (RIOBuilderInputsCreateCubeMapTextureAsset())
            {
              v29 = REAssetManagerImageBasedLightMemoryAssetCreateWithCubeMapNullable();

              __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
              *(swift_allocObject() + 16) = v29;
              (*(v26 + 8))(v11, v25);
              return;
            }

            if (one-time initialization token for importTextures == -1)
            {
              goto LABEL_25;
            }
          }

          else if (one-time initialization token for importTextures == -1)
          {
LABEL_25:
            static os_log_type_t.error.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_2619891C0;
            v37 = RIOPxrSdfAssetPathAssetPathCopyString();
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            *(v36 + 56) = MEMORY[0x277D837D0];
            *(v36 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v36 + 32) = v38;
            *(v36 + 40) = v40;
            os_log(_:dso:log:type:_:)();

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
            *(swift_allocObject() + 16) = 0;
            (*(v26 + 8))(v11, v25);
            return;
          }

          swift_once();
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  type metadata accessor for EnvironmentResource();
  v30 = RIOPxrSdfAssetPathAssetPathCopyString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static EnvironmentResource.__load(contentsOf:withName:)();

  dispatch thunk of EnvironmentResource.coreIBLAsset.getter();
  v31 = type metadata accessor for __AssetRef();
  v32 = *(v31 - 8);
  v33 = (*(v32 + 48))(v6, 1, v31);
  v35 = v42;
  v34 = v43;
  if (v33 == 1)
  {

    outlined destroy of Any?(v6, &_s10RealityKit10__AssetRefVSgMd, &_s10RealityKit10__AssetRefVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    *(swift_allocObject() + 16) = 0;
  }

  else
  {
    __AssetRef.__as<A>(_:)();
    (*(v32 + 8))(v6, v31);
    v41 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMd, &_s9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGMR);
    *(swift_allocObject() + 16) = v41;
    RERetain();
  }

  (*(v35 + 8))(v11, v34);
}

uint64_t one-time initialization function for importTextures()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.importTextures = result;
  return result;
}

uint64_t Inputs.primPath.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  result = RIOBuilderInputsCopyPrimPath();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Inputs.prim.getter()
{
  v1 = *(v0 + 56);
  result = RIOBuilderInputsCopyStage();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  result = RIOBuilderInputsCopyPrimPath();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v4 = result;
  if (RIOPxrUsdStageHasPrimAtPrimPath())
  {
    v5 = RIOPxrTfTokenEmpty();
    PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();
  }

  else
  {
    PrimIfNeeded = RIOPxrUsdPrimCreateEmpty();
    v5 = v3;
    v3 = v4;
  }

  type metadata accessor for Prim();
  result = swift_allocObject();
  *(result + 16) = PrimIfNeeded;
  return result;
}

uint64_t Inputs.stage.getter()
{
  v1 = *(v0 + 56);
  result = RIOBuilderInputsCopyStage();
  if (result)
  {
    v3 = result;
    type metadata accessor for Stage();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Inputs.stageDelta.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v7 = v1[6];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v7;

  v5 = v4;

  return v7;
}

uint64_t Inputs.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = Inputs.fetchBuildersAndOutputNames(key:)(a1, a2);
  v8 = v7;
  if (!v6[2])
  {

LABEL_7:
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v9 = v6[4];
  v10 = v6[5];
  swift_unknownObjectRetain();

  if (!v8[2])
  {

    result = swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v11 = v8[4];
  v12 = v8[5];

  ObjectType = swift_getObjectType();
  v14 = Builder.outputs.getter(ObjectType, v10);
  v15 = *(v14 + 16);
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v20)
  {
    outlined init with take of Any(&v19, a3);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined destroy of Any?(&v19, &_sypSgMd, &_sypSgMR);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v9)
    {
      swift_unknownObjectRetain();
      EntityBuilder.generateSwiftOutput(for:inputs:)(v11, v12, v4);
      v17 = Builder.outputs.getter(ObjectType, v10);
      v18 = *(v17 + 16);
      MEMORY[0x28223BE20](v17);
      OS_dispatch_queue.sync<A>(execute:)();

      return swift_unknownObjectRelease_n();
    }

    *a3 = 0u;
    a3[1] = 0u;
    swift_unknownObjectRelease();
  }
}

char *Inputs.accumulatedValues(forKey:)(uint64_t a1, uint64_t a2)
{
  result = Inputs.fetchBuildersAndOutputNames(key:)(a1, a2);
  v4 = result;
  v5 = *(result + 2);
  if (v5)
  {
    v6 = 0;
    v7 = v3 + 40;
    v8 = result + 40;
    v28 = MEMORY[0x277D84F90];
    v25 = v5 - 1;
    v32 = result;
    v31 = v3;
    v30 = v5;
    v27 = v3 + 40;
    v26 = result + 40;
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = &v8[16 * v6];
      while (1)
      {
        if (v6 >= *(v4 + 2))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        if (v6 >= *(v3 + 16))
        {
          goto LABEL_23;
        }

        v38 = v6;
        v12 = *(v10 - 1);
        v11 = *v10;
        v35 = v10;
        v36 = v9;
        v13 = *(v9 - 1);
        v14 = *v9;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();

        v33 = ObjectType;
        v34 = v11;
        v16 = Builder.outputs.getter(ObjectType, v11);
        v37 = &v24;
        v17 = *(v16 + 16);
        MEMORY[0x28223BE20](v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
        OS_dispatch_queue.sync<A>(execute:)();

        if (v40)
        {
          break;
        }

        outlined destroy of Any?(&v39, &_sypSgMd, &_sypSgMR);
        swift_getObjectType();
        if (swift_conformsToProtocol2() && v12)
        {
          swift_unknownObjectRetain();
          EntityBuilder.generateSwiftOutput(for:inputs:)(v13, v14, v29);
          v18 = Builder.outputs.getter(v33, v34);
          v19 = *(v18 + 16);
          MEMORY[0x28223BE20](v18);
          OS_dispatch_queue.sync<A>(execute:)();

          swift_unknownObjectRelease();

          if (*(&v42 + 1))
          {
            goto LABEL_14;
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          v41 = 0u;
          v42 = 0u;
        }

        v4 = v32;
        v6 = v38 + 1;
        result = outlined destroy of Any?(&v41, &_sypSgMd, &_sypSgMR);
        v9 = v36 + 2;
        v10 = v35 + 2;
        v3 = v31;
        if (v30 == v6)
        {
          goto LABEL_21;
        }
      }

      outlined init with take of Any(&v39, &v41);
LABEL_14:
      outlined init with take of Any(&v41, v43);
      outlined init with copy of Any(v43, &v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v21 = *(v28 + 2);
      v20 = *(v28 + 3);
      if (v21 >= v20 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v28);
      }

      v22 = v38;
      v6 = v38 + 1;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v43);
      v23 = v28;
      *(v28 + 2) = v21 + 1;
      result = outlined init with take of Any(&v41, &v23[32 * v21 + 32]);
      v4 = v32;
      v3 = v31;
      v7 = v27;
      v8 = v26;
    }

    while (v25 != v22);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v28;
}

void Inputs.importSession.getter()
{
  v1 = *(v0 + 56);
  v2 = RIOBuilderInputsGetImportSession();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  SwiftObject = RIOImportSessionGetSwiftObject();

  if (!SwiftObject)
  {
LABEL_7:
    __break(1u);
    return;
  }
}

uint64_t Inputs.getEntity(forKey:)(uint64_t a1, uint64_t a2)
{
  Inputs.subscript.getter(a1, a2, &v4);
  if (v5)
  {
    type metadata accessor for EntityProxy();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v4, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t Inputs.getEntities(forKey:)(uint64_t a1, uint64_t a2)
{
  v2 = Inputs.accumulatedValues(forKey:)(a1, a2);
  v3 = specialized _arrayConditionalCast<A, B>(_:)(v2);

  if (v3)
  {
    return v3;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void Inputs.performBlockLaterWithEntity(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 56);
  v8 = RIOBuilderInputsGetImportSession();
  if (v8)
  {
    v9 = v8;
    SwiftObject = RIOImportSessionGetSwiftObject();

    if (SwiftObject)
    {
      v11 = swift_allocObject();
      v11[2] = a1;
      v11[3] = a2;
      v11[4] = a3;
      v12 = OBJC_IVAR____TtC9RealityIO13ImportSession_core;

      swift_beginAccess();
      v13 = *(SwiftObject + v12);
      aBlock[4] = partial apply for closure #1 in Inputs.performBlockLaterWithEntity(_:_:);
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_24;
      v14 = _Block_copy(aBlock);

      v15 = v13;

      RIOImportSessionPerformBlockAfterAssetLoadOnEngineQueue();
      _Block_release(v14);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t closure #1 in Inputs.performBlockLaterWithEntity(_:_:)(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for Entity();
  static Entity.__fromCore(_:)();
  a2();
}

uint64_t Inputs.performBlockSyncOnEngineQueue(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_9_0;
  v7 = _Block_copy(v9);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t Inputs.StageDelta.init(core:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = RIOBuilderStageDeltaCopyDirtyMetadata();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    *&v27 = 0;
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v10 = MEMORY[0x277D84F90];
LABEL_19:
      v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

      v24 = RIOBuilderStageDeltaCopyPrimDelta();

      result = Inputs.PrimDelta.init(core:)(v24, &v27);
      v25 = v28;
      v26 = v27;
      *a2 = v23;
      *(a2 + 8) = v26;
      *(a2 + 24) = v25;
      *(a2 + 32) = v3;
      return result;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  *&v27 = v6;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v27;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v12 = MEMORY[0x26670F670](i, v7);
        *&v27 = v10;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          v15 = v12;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v12 = v15;
          v10 = v27;
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v12;
      }
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(v7 + v16);
        *&v27 = v10;
        v18 = *(v10 + 16);
        v19 = *(v10 + 24);
        v20 = v17;
        if (v18 >= v19 >> 1)
        {
          v21 = v19 > 1;
          v22 = v20;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v18 + 1, 1);
          v20 = v22;
          v10 = v27;
        }

        *(v10 + 16) = v18 + 1;
        *(v10 + 8 * v18 + 32) = v20;
        v16 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t Inputs.fetchBuildersAndOutputNames(key:)(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D84F90];
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = *(v2 + 56);
  v9 = MEMORY[0x26670EFB0](a1, a2);
  LODWORD(v8) = RIOBuilderInputsGetAllBuildersAndOutputNamesProvidingValuesWithName();

  if (!v8)
  {

LABEL_25:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOBuilderRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13RIOBuilderRefaGMd, &_sSaySo13RIOBuilderRefaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Builder_pMd, &_s9RealityIO7Builder_pMR);
  lazy protocol witness table accessor for type [RIOBuilderRef] and conformance [A]();
  v10 = Sequence.flatMap<A>(_:)();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFStringRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v11 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_7;
    }

LABEL_16:
    v12 = __CocoaSet.count.getter();
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_17:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v11 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_16;
  }

LABEL_7:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_8:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  v13 = v5;
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x26670F670](v14, v11);
      v18 = String.init(_:)(v15);
      object = v18._object;
      countAndFlagsBits = v18._countAndFlagsBits;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        object = v18._object;
        countAndFlagsBits = v18._countAndFlagsBits;
      }

      ++v14;
      *(v13 + 16) = v20 + 1;
      v21 = v13 + 16 * v20;
      *(v21 + 32) = countAndFlagsBits;
      *(v21 + 40) = object;
    }

    while (v12 != v14);
  }

  else
  {
    v22 = 32;
    do
    {
      v25 = String.init(_:)(*(v11 + v22));
      v24 = v25._object;
      v23 = v25._countAndFlagsBits;
      v27 = *(v5 + 16);
      v26 = *(v5 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v24 = v25._object;
        v23 = v25._countAndFlagsBits;
      }

      *(v5 + 16) = v27 + 1;
      v28 = v5 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      v22 += 8;
      --v12;
    }

    while (v12);
  }

LABEL_23:
  v29 = *(v10 + 16);
  v30 = *(v13 + 16);

  if (v29 != v30)
  {

    goto LABEL_25;
  }

LABEL_26:
  v31 = *MEMORY[0x277D85DE8];
  return v10;
}