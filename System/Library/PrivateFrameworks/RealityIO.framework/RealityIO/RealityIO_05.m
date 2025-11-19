uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t RIOPxrVtValueRef.asFloat.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  Float = RIOPxrVtValueGetFloat();
  v1 = *MEMORY[0x277D85DE8];
  return (Float ^ 1u) << 32;
}

uint64_t RIOPxrVtValueRef.asBool.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetBool())
  {
    result = 0;
  }

  else
  {
    result = 2;
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asString.getter()
{
  v0 = RIOPxrVtValueCopyString();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t RIOPxrVtValueRef.asAssetPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyAssetPath();
  *a1 = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t RIOPxrVtValueRef.asToken.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyToken();
  *a1 = result;
  return result;
}

uint64_t RIOPxrVtValueRef.asDouble.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetDouble();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

unint64_t RIOPxrVtValueRef.asInt32.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00E90];

  return RIOPxrVtValueRef.asInt32.getter(v1);
}

uint64_t RIOPxrVtValueRef.asAssetPathArray.getter(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v4);
  if (result)
  {
    v9 = result;
    v7 = result;
    a4(&v8, &v9);

    return v8;
  }

  return result;
}

uint64_t RIOPxrVtValueRef.asInt64.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00EA0];

  return RIOPxrVtValueRef.asInt64.getter(v1);
}

unint64_t RIOPxrVtValueRef.asUInt32.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00EA8];

  return RIOPxrVtValueRef.asInt32.getter(v1);
}

unint64_t RIOPxrVtValueRef.asInt32.getter(uint64_t (*a1)(uint64_t, unsigned int *))
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v2 = a1(v1, &v6);
  v3 = v6;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t RIOPxrVtValueRef.asUInt8.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  UInt8 = RIOPxrVtValueGetUInt8();
  v1 = *MEMORY[0x277D85DE8];
  return (UInt8 ^ 1u) << 8;
}

uint64_t RIOPxrVtValueRef.asUInt64.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00EB0];

  return RIOPxrVtValueRef.asInt64.getter(v1);
}

uint64_t RIOPxrVtValueRef.asInt64.getter(uint64_t (*a1)(uint64_t, void *))
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = a1(v1, v6);
  v3 = v6[0];
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RIOPxrVtValueRef.asInt2.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetInt2();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t RIOPxrVtValueRef.asInt3.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00E88];

  return RIOPxrVtValueRef.asInt3.getter(v1);
}

uint64_t RIOPxrVtValueRef.asInt4.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00E98];

  return RIOPxrVtValueRef.asInt3.getter(v1);
}

uint64_t RIOPxrVtValueRef.asInt3.getter(uint64_t (*a1)(uint64_t, void *))
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v2 = a1(v1, v6);
  v3 = v6[0];
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RIOPxrVtValueRef.asFloat2.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetFloat2();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t RIOPxrVtValueRef.asFloat3.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00E70];

  return RIOPxrVtValueRef.asFloat3.getter(v1);
}

uint64_t RIOPxrVtValueRef.asFloat4.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D00E78];

  return RIOPxrVtValueRef.asFloat3.getter(v1);
}

uint64_t RIOPxrVtValueRef.asFloat3.getter(uint64_t (*a1)(uint64_t, void *))
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v6[1] = 0;
  v2 = a1(v1, v6);
  v3 = v6[0];
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RIOPxrVtValueRef.asDouble2.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetDouble2();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t RIOPxrVtValueRef.asDouble3.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E60];

  return RIOPxrVtValueRef.asDouble3.getter(v2, a1);
}

uint64_t RIOPxrVtValueRef.asDouble4.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E68];

  return RIOPxrVtValueRef.asDouble3.getter(v2, a1);
}

uint64_t RIOPxrVtValueRef.asDouble3.getter@<X0>(uint64_t (*a1)(uint64_t, __int128 *)@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  result = a1(v2, &v10);
  if (result)
  {
    v6 = *(&v10 + 1);
    v5 = v10;
    v8 = *(&v11 + 1);
    v7 = v11;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = result ^ 1;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asQuatf.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetQuatf();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t RIOPxrVtValueRef.asQuatd.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetQuatd();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asMatrix2d.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetMatrix2d();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asMatrix3d.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetMatrix3d();
  if (result)
  {
    v3 = 0;
    v5 = 0u;
    v4 = 0u;
    v7 = 0u;
    v6 = 0u;
    v9 = 0u;
    v8 = 0u;
  }

  else
  {
    v3 = 1;
    v4 = 0uLL;
    v7 = 0uLL;
    v6 = 0uLL;
    v9 = 0uLL;
    v8 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v9;
  *(a1 + 80) = v8;
  *(a1 + 96) = v3;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 RIOPxrVtValueRef.asMatrix4d.getter@<Q0>(uint64_t a1@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetMatrix4d())
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    _sSo14simd_double4x4aSgWOi__0(&v7);
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v16 = v7;
    v17 = v8;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v16);
  }

  v2 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v2;
  *(a1 + 128) = v24;
  v3 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v3;
  v4 = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v4;
  result = v17;
  *a1 = v16;
  *(a1 + 16) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asStringArray.getter()
{
  v0 = RIOPxrVtValueCopyStringArray();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v2 = MEMORY[0x277D84F90];

  return v2;
}

uint64_t RIOPxrVtValueRef.asPath.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrVtValueCopyPath();
  *a1 = result;
  return result;
}

uint64_t RIOPxrVtValueRef.mapUSDValue<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = *MEMORY[0x277D85DE8];
  if (swift_dynamicCastMetatype())
  {
    Bool = RIOPxrVtValueGetBool();
    v5 = 0;
    if (!Bool)
    {
      v5 = 2;
    }

    v85.i8[0] = v5;
    v6 = &_sSbSgMd;
    v7 = &_sSbSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v85.i32[0] = 0;
    v85.i8[4] = RIOPxrVtValueGetInt32() ^ 1;
    v6 = &_ss5Int32VSgMd;
    v7 = &_ss5Int32VSgMR;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    v8 = swift_dynamicCast();
    result = (*(*(a1 - 8) + 56))(a2, v8 ^ 1u, 1, a1);
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt.getter();
    v85.i8[8] = v11 & 1;
    v6 = &_sSiSgMd;
    v7 = &_sSiSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt64.getter();
    v85.i8[8] = v12 & 1;
    v6 = &_ss5Int64VSgMd;
    v7 = &_ss5Int64VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i16[0] = RIOPxrVtValueRef.asUInt8.getter() & 0x1FF;
    v6 = &_ss5UInt8VSgMd;
    v7 = &_ss5UInt8VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    v13 = RIOPxrVtValueRef.asUInt32.getter();
    v85.i32[0] = v13;
    v85.i8[4] = BYTE4(v13) & 1;
    v6 = &_ss6UInt32VSgMd;
    v7 = &_ss6UInt32VSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asUInt.getter();
    v85.i8[8] = v14 & 1;
    v6 = &_sSuSgMd;
    v7 = &_sSuSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asUInt64.getter();
    v85.i8[8] = v15 & 1;
    v6 = &_ss6UInt64VSgMd;
    v7 = &_ss6UInt64VSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vys5Int32VGMd, &_ss5SIMD2Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt2.getter();
    v85.i8[8] = v16 & 1;
    v6 = &_ss5SIMD2Vys5Int32VGSgMd;
    v7 = &_ss5SIMD2Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vys5Int32VGMd, &_ss5SIMD3Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt3.getter();
    v85.i64[1] = v17;
    LOBYTE(v86) = v18 & 1;
    v6 = &_ss5SIMD3Vys5Int32VGSgMd;
    v7 = &_ss5SIMD3Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vys5Int32VGMd, &_ss5SIMD4Vys5Int32VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt4.getter();
    v85.i64[1] = v19;
    LOBYTE(v86) = v20 & 1;
    v6 = &_ss5SIMD4Vys5Int32VGSgMd;
    v7 = &_ss5SIMD4Vys5Int32VGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i32[0] = 0;
    v85.i8[4] = RIOPxrVtValueGetFloat() ^ 1;
    v6 = &_s9RealityIO4HalfVSgMd;
    v7 = &_s9RealityIO4HalfVSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2Vy9RealityIO4HalfVGMd, &_ss5SIMD2Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf2.getter(v85.i64);
    v6 = &_ss5SIMD2Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD2Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord2VyAA4HalfVGMd, &_s9RealityIO9TexCoord2VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord2h.getter(&v85);
    v6 = &_s9RealityIO9TexCoord2VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO9TexCoord2VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3Vy9RealityIO4HalfVGMd, &_ss5SIMD3Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf3.getter(&v85);
    v6 = &_ss5SIMD3Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD3Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VyAA4HalfVGMd, &_s9RealityIO6Color3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord3h.getter(v85.i64);
    v6 = &_s9RealityIO6Color3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Color3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VyAA4HalfVGMd, &_s9RealityIO6Point3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v85.i64);
    v6 = &_s9RealityIO6Point3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Point3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VyAA4HalfVGMd, &_s9RealityIO7Normal3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v85.i64);
    v6 = &_s9RealityIO7Normal3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO7Normal3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VyAA4HalfVGMd, &_s9RealityIO7Vector3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asNormal3h.getter(v85.i64);
    v6 = &_s9RealityIO7Vector3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO7Vector3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VyAA4HalfVGMd, &_s9RealityIO9TexCoord3VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asTexCoord3h.getter(v85.i64);
    v6 = &_s9RealityIO9TexCoord3VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO9TexCoord3VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4Vy9RealityIO4HalfVGMd, &_ss5SIMD4Vy9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asHalf4.getter(v85.i64);
    v6 = &_ss5SIMD4Vy9RealityIO4HalfVGSgMd;
    v7 = &_ss5SIMD4Vy9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VyAA4HalfVGMd, &_s9RealityIO6Color4VyAA4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asColor4h.getter(v85.i64);
    v6 = &_s9RealityIO6Color4VyAA4HalfVGSgMd;
    v7 = &_s9RealityIO6Color4VyAA4HalfVGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v21 = RIOPxrVtValueRef.asFloat.getter();
    v85.i32[0] = v21;
    v85.i8[4] = BYTE4(v21) & 1;
    v6 = &_sSfSgMd;
    v7 = &_sSfSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat2.getter();
    v85.i8[8] = v22 & 1;
    v6 = &_ss5SIMD2VySfGSgMd;
    v7 = &_ss5SIMD2VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat3.getter();
    v85.i64[1] = v23;
    LOBYTE(v86) = v24 & 1;
    v6 = &_ss5SIMD3VySfGSgMd;
    v7 = &_ss5SIMD3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat4.getter();
    v85.i64[1] = v25;
    LOBYTE(v86) = v26 & 1;
    v6 = &_ss5SIMD4VySfGSgMd;
    v7 = &_ss5SIMD4VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VySfGMd, &_s9RealityIO6Color3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    Float3 = RIOPxrVtValueGetFloat3();
    v28 = 0uLL;
    v28.i32[3] = 0;
    if (Float3)
    {
      v29 = -1;
    }

    else
    {
      v29 = 0;
    }

    v85 = vandq_s8(v28, vdupq_n_s64(v29));
    LOBYTE(v86) = Float3 ^ 1;
    v6 = &_s9RealityIO6Color3VySfGSgMd;
    v7 = &_s9RealityIO6Color3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VySfGMd, &_s9RealityIO6Color4VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0uLL;
    LOBYTE(v86) = RIOPxrVtValueGetFloat4() ^ 1;
    v6 = &_s9RealityIO6Color4VySfGSgMd;
    v7 = &_s9RealityIO6Color4VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VySfGMd, &_s9RealityIO6Point3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v30 = RIOPxrVtValueGetFloat3();
    v31 = 0uLL;
    v31.i32[3] = 0;
    if (v30)
    {
      v32 = -1;
    }

    else
    {
      v32 = 0;
    }

    v85 = vandq_s8(v31, vdupq_n_s64(v32));
    LOBYTE(v86) = v30 ^ 1;
    v6 = &_s9RealityIO6Point3VySfGSgMd;
    v7 = &_s9RealityIO6Point3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VySfGMd, &_s9RealityIO7Normal3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v33 = RIOPxrVtValueGetFloat3();
    v34 = 0uLL;
    v34.i32[3] = 0;
    if (v33)
    {
      v35 = -1;
    }

    else
    {
      v35 = 0;
    }

    v85 = vandq_s8(v34, vdupq_n_s64(v35));
    LOBYTE(v86) = v33 ^ 1;
    v6 = &_s9RealityIO7Normal3VySfGSgMd;
    v7 = &_s9RealityIO7Normal3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VySfGMd, &_s9RealityIO7Vector3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v36 = RIOPxrVtValueGetFloat3();
    v37 = 0uLL;
    v37.i32[3] = 0;
    if (v36)
    {
      v38 = -1;
    }

    else
    {
      v38 = 0;
    }

    v85 = vandq_s8(v37, vdupq_n_s64(v38));
    LOBYTE(v86) = v36 ^ 1;
    v6 = &_s9RealityIO7Vector3VySfGSgMd;
    v7 = &_s9RealityIO7Vector3VySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VySfGMd, &_s9RealityIO9TexCoord3VySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v39 = RIOPxrVtValueGetFloat3();
    v40 = 0uLL;
    v40.i32[3] = 0;
    if (v39)
    {
      v41 = -1;
    }

    else
    {
      v41 = 0;
    }

    v85 = vandq_s8(v40, vdupq_n_s64(v41));
    LOBYTE(v86) = v39 ^ 1;
    v6 = &_s9RealityIO9TexCoord3VySfGSgMd;
    v7 = &_s9RealityIO9TexCoord3VySfGSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDouble.getter();
    v85.i8[8] = v42 & 1;
    v6 = &_sSdSgMd;
    v7 = &_sSdSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySdGMd, &_ss5SIMD2VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDouble2.getter();
    v85.i64[1] = v43;
    LOBYTE(v86) = v44 & 1;
    v6 = &_ss5SIMD2VySdGSgMd;
    v7 = &_ss5SIMD2VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySdGMd, &_ss5SIMD3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v86 = 0u;
    Double3 = RIOPxrVtValueGetDouble3();
    if (Double3)
    {
      v47 = v85.i64[1];
      v46 = v85.i64[0];
      v49 = *(&v86 + 1);
      v48 = v86;
    }

    else
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
    }

    v85.i64[0] = v46;
    v85.i64[1] = v47;
    *&v86 = v48;
    *(&v86 + 1) = v49;
    v87 = Double3 ^ 1;
    v6 = &_ss5SIMD3VySdGSgMd;
    v7 = &_ss5SIMD3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color3VySdGMd, &_s9RealityIO6Color3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v50 = RIOPxrVtValueGetDouble3();
    if (v50)
    {
      v51 = -1;
    }

    else
    {
      v51 = 0;
    }

    v85 = vandq_s8(v85, vdupq_n_s64(v51));
    v86 = 0uLL;
    v87 = v50 ^ 1;
    v6 = &_s9RealityIO6Color3VySdGSgMd;
    v7 = &_s9RealityIO6Color3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Point3VySdGMd, &_s9RealityIO6Point3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v52 = RIOPxrVtValueGetDouble3();
    if (v52)
    {
      v53 = -1;
    }

    else
    {
      v53 = 0;
    }

    v85 = vandq_s8(v85, vdupq_n_s64(v53));
    v86 = 0uLL;
    v87 = v52 ^ 1;
    v6 = &_s9RealityIO6Point3VySdGSgMd;
    v7 = &_s9RealityIO6Point3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Normal3VySdGMd, &_s9RealityIO7Normal3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v54 = RIOPxrVtValueGetDouble3();
    if (v54)
    {
      v55 = -1;
    }

    else
    {
      v55 = 0;
    }

    v85 = vandq_s8(v85, vdupq_n_s64(v55));
    v86 = 0uLL;
    v87 = v54 ^ 1;
    v6 = &_s9RealityIO7Normal3VySdGSgMd;
    v7 = &_s9RealityIO7Normal3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO7Vector3VySdGMd, &_s9RealityIO7Vector3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v56 = RIOPxrVtValueGetDouble3();
    if (v56)
    {
      v57 = -1;
    }

    else
    {
      v57 = 0;
    }

    v85 = vandq_s8(v85, vdupq_n_s64(v57));
    v86 = 0uLL;
    v87 = v56 ^ 1;
    v6 = &_s9RealityIO7Vector3VySdGSgMd;
    v7 = &_s9RealityIO7Vector3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO9TexCoord3VySdGMd, &_s9RealityIO9TexCoord3VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v58 = RIOPxrVtValueGetDouble3();
    if (v58)
    {
      v59 = -1;
    }

    else
    {
      v59 = 0;
    }

    v85 = vandq_s8(v85, vdupq_n_s64(v59));
    v86 = 0uLL;
    v87 = v58 ^ 1;
    v6 = &_s9RealityIO9TexCoord3VySdGSgMd;
    v7 = &_s9RealityIO9TexCoord3VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySdGMd, &_ss5SIMD4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v86 = 0u;
    Double4 = RIOPxrVtValueGetDouble4();
    if (Double4)
    {
      v62 = v85.i64[1];
      v61 = v85.i64[0];
      v64 = *(&v86 + 1);
      v63 = v86;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 0;
    }

    v85.i64[0] = v61;
    v85.i64[1] = v62;
    *&v86 = v63;
    *(&v86 + 1) = v64;
    v87 = Double4 ^ 1;
    v6 = &_ss5SIMD4VySdGSgMd;
    v7 = &_ss5SIMD4VySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO6Color4VySdGMd, &_s9RealityIO6Color4VySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v86 = 0u;
    v65 = RIOPxrVtValueGetDouble4();
    if (v65)
    {
      v67 = v85.i64[1];
      v66 = v85.i64[0];
      v69 = *(&v86 + 1);
      v68 = v86;
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
    }

    v85.i64[0] = v66;
    v85.i64[1] = v67;
    *&v86 = v68;
    *(&v86 + 1) = v69;
    v87 = v65 ^ 1;
    v6 = &_s9RealityIO6Color4VySdGSgMd;
    v7 = &_s9RealityIO6Color4VySdGSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asQuatf.getter();
    v85.i64[1] = v70;
    LOBYTE(v86) = v71 & 1;
    v6 = &_sSo10simd_quatfaSgMd;
    v7 = &_sSo10simd_quatfaSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_quatd(0);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v86 = 0u;
    Quatd = RIOPxrVtValueGetQuatd();
    if (Quatd)
    {
      v74 = v85.i64[1];
      v73 = v85.i64[0];
      v76 = *(&v86 + 1);
      v75 = v86;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
    }

    v85.i64[0] = v73;
    v85.i64[1] = v74;
    *&v86 = v75;
    *(&v86 + 1) = v76;
    v87 = Quatd ^ 1;
    v6 = &_sSo10simd_quatdaSgMd;
    v7 = &_sSo10simd_quatdaSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double2x2(0);
  if (swift_dynamicCastMetatype())
  {
    v85 = 0u;
    v86 = 0u;
    Matrix2d = RIOPxrVtValueGetMatrix2d();
    if (Matrix2d)
    {
      v79 = v85.i64[1];
      v78 = v85.i64[0];
      v81 = *(&v86 + 1);
      v80 = v86;
    }

    else
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
    }

    v85.i64[0] = v78;
    v85.i64[1] = v79;
    *&v86 = v80;
    *(&v86 + 1) = v81;
    v87 = Matrix2d ^ 1;
    v6 = &_sSo14simd_double2x2aSgMd;
    v7 = &_sSo14simd_double2x2aSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double3x3(0);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asMatrix3d.getter(&v85);
    v6 = &_sSo14simd_double3x3aSgMd;
    v7 = &_sSo14simd_double3x3aSgMR;
    goto LABEL_9;
  }

  type metadata accessor for simd_double4x4(0);
  if (swift_dynamicCastMetatype())
  {
    RIOPxrVtValueRef.asMatrix4d.getter(&v85);
    v6 = &_sSo14simd_double4x4aSgMd;
    v7 = &_sSo14simd_double4x4aSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asString.getter();
    v85.i64[1] = v82;
    v6 = &_sSSSgMd;
    v7 = &_sSSSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueCopyToken();
    v6 = &_s9RealityIO16ToolsFoundationsO5TokenVSgMd;
    v7 = &_s9RealityIO16ToolsFoundationsO5TokenVSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueCopyPath();
    v6 = &_s9RealityIO27SceneDescriptionFoundationsO4PathVSgMd;
    v7 = &_s9RealityIO27SceneDescriptionFoundationsO4PathVSgMR;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueCopyAssetPath();
    v6 = &_s9RealityIO27SceneDescriptionFoundationsO9AssetPathVSgMd;
    v7 = &_s9RealityIO27SceneDescriptionFoundationsO9AssetPathVSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asBoolArray.getter();
    v6 = &_sSaySbGSgMd;
    v7 = &_sSaySbGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays4Int8VGMd, &_sSays4Int8VGMR);
  if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int16VGMd, &_sSays5Int16VGMR), swift_dynamicCastMetatype()) || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR), swift_dynamicCastMetatype()))
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt32Array.getter();
    v6 = &_sSays5Int32VGSgMd;
    v7 = &_sSays5Int32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asIntArray.getter();
    v6 = &_sSaySiGSgMd;
    v7 = &_sSaySiGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5Int64VGMd, &_sSays5Int64VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asInt64Array.getter();
    v6 = &_sSays5Int64VGSgMd;
    v7 = &_sSays5Int64VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asUIntArray.getter();
    v6 = &_sSaySuGSgMd;
    v7 = &_sSaySuGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asUInt8Array.getter();
    v6 = &_sSays5UInt8VGSgMd;
    v7 = &_sSays5UInt8VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt16VGMd, &_sSays6UInt16VGMR);
  if (swift_dynamicCastMetatype() || (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd, &_sSays6UInt32VGMR), swift_dynamicCastMetatype()))
  {
    v85.i64[0] = RIOPxrVtValueRef.asUInt32Array.getter();
    v6 = &_sSays6UInt32VGSgMd;
    v7 = &_sSays6UInt32VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asUInt64Array.getter();
    v6 = &_sSays6UInt64VGSgMd;
    v7 = &_sSays6UInt64VGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO4HalfVGMd, &_sSay9RealityIO4HalfVGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asHalfArray.getter();
    v6 = &_sSay9RealityIO4HalfVGSgMd;
    v7 = &_sSay9RealityIO4HalfVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2Vy9RealityIO4HalfVGGMd, &_sSays5SIMD2Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asHalf2Array.getter();
    v6 = &_sSays5SIMD2Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD2Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VyAA4HalfVGGMd, &_sSay9RealityIO9TexCoord2VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord2hArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3Vy9RealityIO4HalfVGGMd, &_sSays5SIMD3Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asHalf3Array.getter();
    v6 = &_sSays5SIMD3Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD3Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VyAA4HalfVGGMd, &_sSay9RealityIO6Color3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor3hArray.getter();
    v6 = &_sSay9RealityIO6Color3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Color3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VyAA4HalfVGGMd, &_sSay9RealityIO6Point3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asPoint3hArray.getter();
    v6 = &_sSay9RealityIO6Point3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Point3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VyAA4HalfVGGMd, &_sSay9RealityIO7Normal3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asNormal3hArray.getter();
    v6 = &_sSay9RealityIO7Normal3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VyAA4HalfVGGMd, &_sSay9RealityIO7Vector3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asVector3hArray.getter();
    v6 = &_sSay9RealityIO7Vector3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VyAA4HalfVGGMd, &_sSay9RealityIO9TexCoord3VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord3hArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4Vy9RealityIO4HalfVGGMd, &_sSays5SIMD4Vy9RealityIO4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asHalf4Array.getter();
    v6 = &_sSays5SIMD4Vy9RealityIO4HalfVGGSgMd;
    v7 = &_sSays5SIMD4Vy9RealityIO4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VyAA4HalfVGGMd, &_sSay9RealityIO6Color4VyAA4HalfVGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor4hArray.getter();
    v6 = &_sSay9RealityIO6Color4VyAA4HalfVGGSgMd;
    v7 = &_sSay9RealityIO6Color4VyAA4HalfVGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloatArray.getter();
    v6 = &_sSaySfGSgMd;
    v7 = &_sSaySfGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySfGGMd, &_sSays5SIMD2VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat2Array.getter();
    v6 = &_sSays5SIMD2VySfGGSgMd;
    v7 = &_sSays5SIMD2VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VySfGGMd, &_sSay9RealityIO9TexCoord2VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord2fArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VySfGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySfGGMd, &_sSays5SIMD3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat3Array.getter();
    v6 = &_sSays5SIMD3VySfGGSgMd;
    v7 = &_sSays5SIMD3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VySfGGMd, &_sSay9RealityIO6Color3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor3fArray.getter();
    v6 = &_sSay9RealityIO6Color3VySfGGSgMd;
    v7 = &_sSay9RealityIO6Color3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VySfGGMd, &_sSay9RealityIO6Point3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asPoint3fArray.getter();
    v6 = &_sSay9RealityIO6Point3VySfGGSgMd;
    v7 = &_sSay9RealityIO6Point3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VySfGGMd, &_sSay9RealityIO7Normal3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asNormal3fArray.getter();
    v6 = &_sSay9RealityIO7Normal3VySfGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VySfGGMd, &_sSay9RealityIO7Vector3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asVector3fArray.getter();
    v6 = &_sSay9RealityIO7Vector3VySfGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VySfGGMd, &_sSay9RealityIO9TexCoord3VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord3fArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VySfGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySfGGMd, &_sSays5SIMD4VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asFloat4Array.getter();
    v6 = &_sSays5SIMD4VySfGGSgMd;
    v7 = &_sSays5SIMD4VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VySfGGMd, &_sSay9RealityIO6Color4VySfGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor4fArray.getter();
    v6 = &_sSay9RealityIO6Color4VySfGGSgMd;
    v7 = &_sSay9RealityIO6Color4VySfGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDoubleArray.getter();
    v6 = &_sSaySdGSgMd;
    v7 = &_sSaySdGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD2VySdGGMd, &_sSays5SIMD2VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDouble2Array.getter();
    v6 = &_sSays5SIMD2VySdGGSgMd;
    v7 = &_sSays5SIMD2VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord2VySdGGMd, &_sSay9RealityIO9TexCoord2VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord2dArray.getter();
    v6 = &_sSay9RealityIO9TexCoord2VySdGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord2VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD3VySdGGMd, &_sSays5SIMD3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDouble3Array.getter();
    v6 = &_sSays5SIMD3VySdGGSgMd;
    v7 = &_sSays5SIMD3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color3VySdGGMd, &_sSay9RealityIO6Color3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor3dArray.getter();
    v6 = &_sSay9RealityIO6Color3VySdGGSgMd;
    v7 = &_sSay9RealityIO6Color3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Point3VySdGGMd, &_sSay9RealityIO6Point3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asPoint3dArray.getter();
    v6 = &_sSay9RealityIO6Point3VySdGGSgMd;
    v7 = &_sSay9RealityIO6Point3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Normal3VySdGGMd, &_sSay9RealityIO7Normal3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asNormal3dArray.getter();
    v6 = &_sSay9RealityIO7Normal3VySdGGSgMd;
    v7 = &_sSay9RealityIO7Normal3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO7Vector3VySdGGMd, &_sSay9RealityIO7Vector3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asVector3dArray.getter();
    v6 = &_sSay9RealityIO7Vector3VySdGGSgMd;
    v7 = &_sSay9RealityIO7Vector3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO9TexCoord3VySdGGMd, &_sSay9RealityIO9TexCoord3VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTexCoord3dArray.getter();
    v6 = &_sSay9RealityIO9TexCoord3VySdGGSgMd;
    v7 = &_sSay9RealityIO9TexCoord3VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5SIMD4VySdGGMd, &_sSays5SIMD4VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDouble4Array.getter();
    v6 = &_sSays5SIMD4VySdGGSgMd;
    v7 = &_sSays5SIMD4VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO6Color4VySdGGMd, &_sSay9RealityIO6Color4VySdGGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asColor4dArray.getter();
    v6 = &_sSay9RealityIO6Color4VySdGGSgMd;
    v7 = &_sSay9RealityIO6Color4VySdGGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatfaGMd, &_sSaySo10simd_quatfaGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asQuatfArray.getter();
    v6 = &_sSaySo10simd_quatfaGSgMd;
    v7 = &_sSaySo10simd_quatfaGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10simd_quatdaGMd, &_sSaySo10simd_quatdaGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asQuatdArray.getter();
    v6 = &_sSaySo10simd_quatdaGSgMd;
    v7 = &_sSaySo10simd_quatdaGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double2x2aGMd, &_sSaySo14simd_double2x2aGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asMatrix2dArray.getter();
    v6 = &_sSaySo14simd_double2x2aGSgMd;
    v7 = &_sSaySo14simd_double2x2aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double3x3aGMd, &_sSaySo14simd_double3x3aGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asMatrix3dArray.getter();
    v6 = &_sSaySo14simd_double3x3aGSgMd;
    v7 = &_sSaySo14simd_double3x3aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14simd_double4x4aGMd, &_sSaySo14simd_double4x4aGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asMatrix4dArray.getter();
    v6 = &_sSaySo14simd_double4x4aGSgMd;
    v7 = &_sSaySo14simd_double4x4aGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asStringArray.getter();
    v6 = &_sSaySSGSgMd;
    v7 = &_sSaySSGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO16ToolsFoundationsO5TokenVGMd, &_sSay9RealityIO16ToolsFoundationsO5TokenVGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asTokenArray.getter();
    v6 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGSgMd;
    v7 = &_sSay9RealityIO16ToolsFoundationsO5TokenVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asPathListOp.getter();
    v6 = &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGSgMd;
    v7 = &_sSay9RealityIO27SceneDescriptionFoundationsO4PathVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMd, &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asAssetPathArray.getter();
    v6 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGSgMd;
    v7 = &_sSay9RealityIO27SceneDescriptionFoundationsO9AssetPathVGSgMR;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
  if (swift_dynamicCastMetatype())
  {
    v85.i64[0] = RIOPxrVtValueRef.asDictionary.getter();
    v6 = &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGSgMd;
    v7 = &_sSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGSgMR;
    goto LABEL_9;
  }

  v83 = *(*(a1 - 8) + 56);
  v84 = *MEMORY[0x277D85DE8];

  return v83(a2, 1, 1, a1);
}

uint64_t static UsdAttributeValueArrayElement.getValueArray(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))();
  if (!result)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD2ArrayElement.getValue2Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))();
  if (!result)
  {
    v5 = *(a3 + 8);
    type metadata accessor for SIMD2();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD3ArrayElement.getValue3Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))();
  if (!result)
  {
    v5 = *(a3 + 8);
    type metadata accessor for SIMD3();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static UsdAttributeValueSIMD4ArrayElement.getValue4Array(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 24))();
  if (!result)
  {
    v5 = *(a3 + 8);
    type metadata accessor for SIMD4();
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t static Bool.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static Bool.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithBool();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Bool.getValueOpt(from:time:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  v1 = 2;
  if (v0)
  {
    v2 = v0;
    Bool = RIOPxrVtValueGetBool();

    if (Bool)
    {
      v1 = 0;
    }

    else
    {
      v1 = 2;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t static Bool.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetBool();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Bool(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithBool();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Bool(char *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 2;
  if (v2)
  {
    v4 = v2;
    Bool = RIOPxrVtValueGetBool();

    if (Bool)
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }
  }

  *a1 = v3;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Bool(_BYTE *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetBool();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Bool@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBool();
  *a1 = result;
  return result;
}

uint64_t static Int8.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt32();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int8.getValueOpt(from:time:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  v3 = 1;
  if (v0)
  {
    v1 = v0;
    Int32 = RIOPxrVtValueGetInt32();

    if (Int32)
    {
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return (v3 << 8);
}

uint64_t static Int8.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetInt32();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int8(char *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt32();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int8(_BYTE *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v5 = 1;
  if (v2)
  {
    v3 = v2;
    Int32 = RIOPxrVtValueGetInt32();

    if (Int32)
    {
      v5 = 0;
    }
  }

  *a1 = 0;
  a1[1] = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int8(_BYTE *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetInt32();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t static Int16.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt32();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int16.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValueOpt(from:time:)(a1, v2);
}

uint64_t static Int16.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValue(from:time:)(a1, v2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int16(__int16 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt32();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(_WORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(v2, a1);
}

uint64_t static Int32.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt32();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

unint64_t static Int32.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  return static Int32.getValueOpt(from:time:)(a1, v2);
}

uint64_t static Int32.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  return static Int16.getValue(from:time:)(a1, v2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int32(unsigned int *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt32();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(_DWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E90];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(v2, a1);
}

uint64_t Int.vtValue.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return RIOPxrVtValueCreateWithInt32();
  }

  __break(1u);
  return result;
}

uint64_t static Int.setValue(_:to:time:)(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v1 = RIOPxrVtValueCreateWithInt32();
    v2 = RIOPxrUsdAttributeSetValue();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t static Int.getValueOpt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetInt32();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asInt.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetInt32();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t static Int.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetInt32();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Int.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int(uint64_t *a1)
{
  result = *a1;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v2 = RIOPxrVtValueCreateWithInt32();
    v3 = RIOPxrUsdAttributeSetValue();

    return v3;
  }

  __break(1u);
  return result;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Int32 = RIOPxrVtValueGetInt32();

    v5 = Int32 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetInt32();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance Int()
{
  result = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return RIOPxrVtValueCreateWithInt32();
  }

  __break(1u);
  return result;
}

uint64_t static Int64.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt64();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int64.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA0];

  return static Int64.getValueOpt(from:time:)(a1, v2);
}

uint64_t static Int64.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA0];

  return static Int64.getValue(from:time:)(a1, v2);
}

uint64_t static Int64.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Int64(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt64();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA0];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA0];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(v2, a1);
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Int64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64();
  *a1 = result;
  return result;
}

unint64_t UInt.vtValue.getter(unint64_t result)
{
  if (!HIDWORD(result))
  {
    return RIOPxrVtValueCreateWithUInt32();
  }

  __break(1u);
  return result;
}

unint64_t static UInt.setValue(_:to:time:)(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = RIOPxrVtValueCreateWithUInt32();
    v2 = RIOPxrUsdAttributeSetValue();

    return v2;
  }

  return result;
}

uint64_t static UInt.getValueOpt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetUInt32();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asUInt.getter()
{
  v2 = *MEMORY[0x277D85DE8];
  RIOPxrVtValueGetUInt32();
  v0 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t static UInt.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetUInt32();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static UInt.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32();
  *a1 = result;
  return result;
}

unint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt(unint64_t *a1)
{
  result = *a1;
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v2 = RIOPxrVtValueCreateWithUInt32();
    v3 = RIOPxrUsdAttributeSetValue();

    return v3;
  }

  return result;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    UInt32 = RIOPxrVtValueGetUInt32();

    v5 = UInt32 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetUInt32();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance UInt()
{
  result = *v0;
  if (!HIDWORD(*v0))
  {
    return RIOPxrVtValueCreateWithUInt32();
  }

  __break(1u);
  return result;
}

uint64_t static UInt8.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithUInt8();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static UInt8.getValueOpt(from:time:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    UInt8 = RIOPxrVtValueGetUInt8();

    v3 = UInt8 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return (v3 << 8);
}

uint64_t static UInt8.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetUInt8();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static UInt8.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithUInt8();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt8(_BYTE *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    UInt8 = RIOPxrVtValueGetUInt8();

    v5 = UInt8 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  a1[1] = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt8(_BYTE *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetUInt8();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance UInt8@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8();
  *a1 = result;
  return result;
}

uint64_t static UInt16.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithUInt32();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static UInt16.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValueOpt(from:time:)(a1, v2);
}

uint64_t static Int16.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, int *))
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = RIOPxrUsdAttributeCopyValue();
  if (v3 && (v10 = 0, v4 = v3, v5 = a2(v3, &v10), v4, v5))
  {
    v6 = 0;
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 | (v6 << 16);
}

uint64_t static UInt16.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValue(from:time:)(a1, v2);
}

uint64_t static Int16.getValue(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *))
{
  v8 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7 = 0;
    v4 = result;
    v5 = a2(result, &v7);

    if (v5)
    {
      result = v7;
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt16(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithUInt32();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt16(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int16(uint64_t (*a1)(uint64_t, int *)@<X3>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v10 = 0, v5 = v4, v6 = a1(v4, &v10), v5, v6))
  {
    v7 = 0;
    v8 = v10;
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a2 = v8;
  *(a2 + 2) = v7;
  v9 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt16(_WORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int16(uint64_t (*a1)(uint64_t, int *)@<X3>, _WORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v9 = 0, v5 = v4, v6 = a1(v4, &v9), v5, v6))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t static UInt32.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithUInt32();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

unint64_t static UInt32.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  return static Int32.getValueOpt(from:time:)(a1, v2);
}

unint64_t static Int32.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned int *))
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = RIOPxrUsdAttributeCopyValue();
  if (v3)
  {
    v10 = 0;
    v4 = v3;
    v5 = a2(v3, &v10);

    v6 = v10;
    v7 = v5 ^ 1;
    if (!v5)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6 | (v7 << 32);
}

uint64_t static UInt32.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  return static Int16.getValue(from:time:)(a1, v2);
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt32(unsigned int *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithUInt32();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt32(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int32(uint64_t (*a1)(uint64_t, int *)@<X3>, uint64_t a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v10 = 0;
    v5 = v4;
    v6 = a1(v4, &v10);

    v7 = v10;
    if (!v6)
    {
      v7 = 0;
    }

    v8 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  *a2 = v7;
  *(a2 + 4) = v8;
  v9 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt32(_DWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EA8];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int32(uint64_t (*a1)(uint64_t, int *)@<X3>, _DWORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v9 = 0, v5 = v4, v6 = a1(v4, &v9), v5, v6))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t static UInt64.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static UInt64.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithUInt64();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static UInt64.getValueOpt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EB0];

  return static Int64.getValueOpt(from:time:)(a1, v2);
}

uint64_t static Int64.getValueOpt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v4 = result;
    v5 = a2(result, v7);

    if (v5)
    {
      result = v7[0];
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static UInt64.getValue(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EB0];

  return static Int64.getValue(from:time:)(a1, v2);
}

uint64_t static Int64.getValue(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
{
  v7[1] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v4 = result;
    v5 = a2(result, v7);

    if (v5)
    {
      result = v7[0];
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance UInt64(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithUInt64();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance UInt64(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EB0];

  protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Int64(uint64_t (*a1)(uint64_t, void *)@<X3>, uint64_t a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v10[0] = 0;
    v5 = v4;
    v6 = a1(v4, v10);

    v7 = v10[0];
    if (!v6)
    {
      v7 = 0;
    }

    v8 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  v9 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance UInt64(void *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00EB0];

  protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(v2, a1);
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Int64(uint64_t (*a1)(uint64_t, void *)@<X3>, void *a2@<X8>)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4 && (v9[0] = 0, v5 = v4, v6 = a1(v4, v9), v5, v6))
  {
    v7 = v9[0];
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance UInt64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64();
  *a1 = result;
  return result;
}

uint64_t static Half.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue(_:to:time:)(int *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithHalf();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void static Half.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Float = RIOPxrVtValueGetFloat();

    *a1 = 0;
    v5 = Float ^ 1;
  }

  else
  {
    *a1 = 0;
    v5 = 1;
  }

  *(a1 + 4) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t RIOPxrVtValueRef.asHalf.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetFloat();
  *a1 = 0;
  *(a1 + 4) = result ^ 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void static Half.getValue(from:time:)(_DWORD *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetFloat();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Half(int *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithHalf();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Half(_DWORD *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetFloat();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf();
  *a1 = result;
  return result;
}

uint64_t static Float.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithFloat();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

unint64_t static Float.getValueOpt(from:time:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    Float = RIOPxrVtValueGetFloat();

    v3 = Float ^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3 << 32;
}

float static Float.getValue(from:time:)()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetFloat();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0.0;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Float(int *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithFloat();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Float(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Float = RIOPxrVtValueGetFloat();

    v5 = Float ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 4) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithDouble();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Double.getValueOpt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetDouble();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

double static Double.getValue(from:time:)()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetDouble();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0.0;
}

uint64_t static Double.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Double(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithDouble();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance Double(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Double = RIOPxrVtValueGetDouble();

    v5 = Double ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Double(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetDouble();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble();
  *a1 = result;
  return result;
}

uint64_t static simd_quatf.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithQuatf();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static simd_quatf.getValueOpt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetQuatf();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void static simd_quatf.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetQuatf();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t static simd_quatf.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_quatf(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithQuatf();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_quatf(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Quatf = RIOPxrVtValueGetQuatf();

    v5 = Quatf ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_quatf(_OWORD *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetQuatf();

    v3 = 0uLL;
  }

  *a1 = v3;
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance simd_quatf@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatf();
  *a1 = result;
  return result;
}

uint64_t static simd_quatd.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithQuatd();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

void static simd_quatd.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Quatd = RIOPxrVtValueGetQuatd();

    v5 = Quatd ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void static simd_quatd.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetQuatd();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t static simd_quatd.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_quatd(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v1 = RIOPxrVtValueCreateWithQuatd();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_quatd(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Quatd = RIOPxrVtValueGetQuatd();

    v5 = Quatd ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_quatd(_OWORD *a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Quatd = RIOPxrVtValueGetQuatd();

    if (Quatd)
    {
      v6 = 0u;
      v5 = 0u;
    }

    else
    {
      v5 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v5;
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance simd_quatd@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatd();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_quatd()
{
  v2 = *v0;
  v3 = v0[1];
  return RIOPxrVtValueCreateWithQuatd();
}

void __swiftcall convertDoubleMatrix4ToFloat(_:)(simd_float4x4 *__return_ptr retstr, simd_double4x4 *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[0].f64), *&a2->columns[0].f64[2]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[1].f64), *&a2->columns[1].f64[2]);
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[2].f64), *&a2->columns[2].f64[2]);
  v5 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2->columns[3].f64), *&a2->columns[3].f64[2]);
}

uint64_t static simd_float2x2.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithMatrix2f();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static simd_float2x2.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float2x2(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = RIOPxrVtValueCreateWithMatrix2f();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

uint64_t protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float2x2@<X0>(uint64_t a1@<X8>)
{
  result = specialized static simd_float2x2.getValueOpt(from:time:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_float2x2()
{
  v1 = *v0;
  v2 = v0[1];
  return RIOPxrVtValueCreateWithMatrix2f();
}

uint64_t static simd_double2x2.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithMatrix2d();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

void static simd_double2x2.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    v5 = Matrix2d ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void static simd_double2x2.getValue(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetMatrix2d();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double2x2(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = RIOPxrVtValueCreateWithMatrix2d();
  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double2x2(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    v5 = Matrix2d ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double2x2(_OWORD *a1@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix2d = RIOPxrVtValueGetMatrix2d();

    if (Matrix2d)
    {
      v6 = 0u;
      v5 = 0u;
    }

    else
    {
      v5 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v5;
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_double2x2()
{
  v1 = *v0;
  v2 = v0[1];
  return RIOPxrVtValueCreateWithMatrix2d();
}

uint64_t simd_float3x3.vtValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  return RIOPxrVtValueCreateWithMatrix3f();
}

uint64_t static simd_float3x3.setValue(_:to:time:)(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = RIOPxrVtValueCreateWithMatrix3f();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

double static simd_float3x3.getValueOpt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static simd_float3x3.getValueOpt(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double static simd_float3x3.getValue(from:time:)@<D0>(_OWORD *a1@<X8>)
{
  specialized static simd_float3x3.getValue(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t static simd_float3x3.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float3x3(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  v4 = RIOPxrVtValueCreateWithMatrix3f();
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

double protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float3x3@<D0>(uint64_t a1@<X8>)
{
  specialized static simd_float3x3.getValueOpt(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_float3x3@<D0>(_OWORD *a1@<X8>)
{
  specialized static simd_float3x3.getValue(from:time:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_float3x3()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = *v0;
  return RIOPxrVtValueCreateWithMatrix3f();
}

uint64_t simd_double3x3.vtValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  return RIOPxrVtValueCreateWithMatrix3d();
}

uint64_t static simd_double3x3.setValue(_:to:time:)(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v1 = RIOPxrVtValueCreateWithMatrix3d();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

void static simd_double3x3.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v5 = 0;
      v7 = 0u;
      v6 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
    }

    else
    {
      v5 = 1;
      v6 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v5 = 1;
    v7 = 0uLL;
    v6 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = v5;
  v12 = *MEMORY[0x277D85DE8];
}

void static simd_double3x3.getValue(from:time:)(_OWORD *a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v6 = 0u;
      v5 = 0u;
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
    }

    else
    {
      v5 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double3x3(__int128 *a1)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v1 = RIOPxrVtValueCreateWithMatrix3d();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double3x3(uint64_t a1@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v5 = 0;
      v7 = 0u;
      v6 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
    }

    else
    {
      v5 = 1;
      v6 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v7 = 0uLL;
    }
  }

  else
  {
    v5 = 1;
    v7 = 0uLL;
    v6 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = v5;
  v12 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double3x3(_OWORD *a1@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix3d = RIOPxrVtValueGetMatrix3d();

    if (Matrix3d)
    {
      v6 = 0u;
      v5 = 0u;
      v7 = 0u;
      v8 = 0u;
      v9 = 0u;
      v10 = 0u;
    }

    else
    {
      v5 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
      v10 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v6 = 0uLL;
    v5 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v6;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_double3x3()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  return RIOPxrVtValueCreateWithMatrix3d();
}

uint64_t static simd_float4x4.setValue(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithMatrix4f();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

__n128 static simd_float4x4.getValueOpt(from:time:)@<Q0>(uint64_t a1@<X8>)
{
  specialized static simd_float4x4.getValueOpt(from:time:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t static simd_float4x4.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_float4x4(__int128 *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = *a1;
  v4 = a1[1];
  v5 = RIOPxrVtValueCreateWithMatrix4f();
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

__n128 protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_float4x4@<Q0>(uint64_t a1@<X8>)
{
  specialized static simd_float4x4.getValueOpt(from:time:)(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_float4x4(_OWORD *a1@<X8>)
{
  specialized static simd_float4x4.getValue(from:time:)();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_float4x4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v4 = v0[1];
  return RIOPxrVtValueCreateWithMatrix4f();
}

uint64_t simd_double4x4.vtValue.getter()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t static simd_double4x4.setValue(_:to:time:)(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v1 = RIOPxrVtValueCreateWithMatrix4d();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

__n128 static simd_double4x4.getValueOpt(from:time:)@<Q0>(uint64_t a1@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      _sSo14simd_double4x4aSgWOi__0(&v19);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v12 = v21;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      v10 = v19;
      v11 = v20;
    }

    else
    {
      _sSo14simd_double4x4aSgWOi0__0(&v10);
    }

    v25 = v16;
    v26 = v17;
    v27 = v18;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v19 = v10;
    v20 = v11;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v19);
  }

  v5 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v5;
  *(a1 + 128) = v27;
  v6 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v6;
  v7 = v24;
  *(a1 + 64) = v23;
  *(a1 + 80) = v7;
  result = v20;
  *a1 = v19;
  *(a1 + 16) = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double static simd_double4x4.getValue(from:time:)@<D0>(_OWORD *a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Matrix4d = RIOPxrVtValueGetMatrix4d(), v3, (Matrix4d & 1) != 0))
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  a1[4] = v11;
  a1[5] = v12;
  a1[6] = v13;
  a1[7] = v14;
  *a1 = v7;
  a1[1] = v8;
  result = *&v9;
  a1[2] = v9;
  a1[3] = v10;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance simd_double4x4(__int128 *a1)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v1 = RIOPxrVtValueCreateWithMatrix4d();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

__n128 protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance simd_double4x4@<Q0>(uint64_t a1@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Matrix4d = RIOPxrVtValueGetMatrix4d();

    if (Matrix4d)
    {
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      _sSo14simd_double4x4aSgWOi__0(&v19);
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v12 = v21;
      v13 = v22;
      v14 = v23;
      v15 = v24;
      v10 = v19;
      v11 = v20;
    }

    else
    {
      _sSo14simd_double4x4aSgWOi0__0(&v10);
    }

    v25 = v16;
    v26 = v17;
    v27 = v18;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v19 = v10;
    v20 = v11;
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v19);
  }

  v5 = v26;
  *(a1 + 96) = v25;
  *(a1 + 112) = v5;
  *(a1 + 128) = v27;
  v6 = v22;
  *(a1 + 32) = v21;
  *(a1 + 48) = v6;
  v7 = v24;
  *(a1 + 64) = v23;
  *(a1 + 80) = v7;
  result = v20;
  *a1 = v19;
  *(a1 + 16) = result;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance simd_double4x4@<D0>(_OWORD *a1@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Matrix4d = RIOPxrVtValueGetMatrix4d(), v3, Matrix4d))
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = 0u;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
  }

  a1[4] = v11;
  a1[5] = v12;
  a1[6] = v13;
  a1[7] = v14;
  *a1 = v7;
  a1[1] = v8;
  result = *&v9;
  a1[2] = v9;
  a1[3] = v10;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance simd_double4x4()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t Frame4D.vtValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v16 = v0[6];
  v17 = v7;
  v14 = v5;
  v15 = v6;
  v12 = v3;
  v13 = v4;
  v10 = v1;
  v11 = v2;
  Frame4D.asDouble4x4()(&v9);
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t static Frame4D.setValue(_:to:time:)(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[7];
  v18 = a1[6];
  v19 = v7;
  v16 = v5;
  v17 = v6;
  v14 = v3;
  v15 = v4;
  v12 = v1;
  v13 = v2;
  Frame4D.asDouble4x4()(&v11);
  v8 = RIOPxrVtValueCreateWithMatrix4d();
  v9 = RIOPxrUsdAttributeSetValue();

  return v9;
}

void static Frame4D.getValueOpt(from:time:)(uint64_t a1@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Matrix4d = RIOPxrVtValueGetMatrix4d(), v3, (Matrix4d & 1) != 0))
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    Frame4D.init(_:)(&v10, a1);
    _sSo14simd_double4x4aSgWOi__0(a1);
  }

  else
  {
    _sSo14simd_double4x4aSgWOi0__0(&v10);
    v5 = v17;
    *(a1 + 96) = v16;
    *(a1 + 112) = v5;
    *(a1 + 128) = v18;
    v6 = v13;
    *(a1 + 32) = v12;
    *(a1 + 48) = v6;
    v7 = v15;
    *(a1 + 64) = v14;
    *(a1 + 80) = v7;
    v8 = v11;
    *a1 = v10;
    *(a1 + 16) = v8;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void static Frame4D.getValue(from:time:)(_OWORD *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Matrix4d = RIOPxrVtValueGetMatrix4d(), v3, (Matrix4d & 1) != 0))
  {
    memset(v6, 0, sizeof(v6));
    Frame4D.init(_:)(v6, a1);
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t static Frame4D.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance Frame4D(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[7];
  v18 = a1[6];
  v19 = v7;
  v16 = v5;
  v17 = v6;
  v14 = v3;
  v15 = v4;
  v12 = v1;
  v13 = v2;
  Frame4D.asDouble4x4()(&v11);
  v8 = RIOPxrVtValueCreateWithMatrix4d();
  v9 = RIOPxrUsdAttributeSetValue();

  return v9;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance Frame4D(_OWORD *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2 && (v3 = v2, Matrix4d = RIOPxrVtValueGetMatrix4d(), v3, Matrix4d))
  {
    memset(v6, 0, sizeof(v6));
    Frame4D.init(_:)(v6, a1);
  }

  else
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance Frame4D@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4d();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance Frame4D()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[7];
  v16 = v0[6];
  v17 = v7;
  v14 = v5;
  v15 = v6;
  v12 = v3;
  v13 = v4;
  v10 = v1;
  v11 = v2;
  Frame4D.asDouble4x4()(&v9);
  return RIOPxrVtValueCreateWithMatrix4d();
}

uint64_t String.vtValue.getter()
{
  String.utf8CString.getter();
  v0 = RIOPxrVtValueCreateWithCString();

  return v0;
}

uint64_t static String.setValue(_:to:time:)()
{
  String.utf8CString.getter();
  v0 = RIOPxrVtValueCreateWithCString();

  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static String.getValueOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyString();
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static String.getValue(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueCopyString();
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static String.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance String(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  String.utf8CString.getter();
  v3 = RIOPxrVtValueCreateWithCString();

  v4 = RIOPxrUsdAttributeSetValue();

  return v4;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance String(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = RIOPxrVtValueCopyString();
  if (!v4)
  {

LABEL_5:
    v6 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

LABEL_6:
  *a1 = v6;
  a1[1] = v8;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance String(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = RIOPxrVtValueCopyString();
  if (!v4)
  {

LABEL_5:
    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

LABEL_6:
  *a1 = v6;
  a1[1] = v8;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateString();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UsdVtValue.vtValue.getter in conformance String()
{
  v1 = *v0;
  v2 = v0[1];
  String.utf8CString.getter();
  v3 = RIOPxrVtValueCreateWithCString();

  return v3;
}

uint64_t static ToolsFoundations.Token.setValue(_:to:time:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithToken();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void static ToolsFoundations.Token.getValue(from:time:)(void *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2 || (v3 = v2, v4 = RIOPxrVtValueCopyToken(), v3, !v4))
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  *a1 = v4;
}

uint64_t static ToolsFoundations.Token.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance ToolsFoundations.Token(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithToken();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance ToolsFoundations.Token(void *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2 || (v3 = v2, v4 = RIOPxrVtValueCopyToken(), v3, !v4))
  {
    v4 = RIOPxrTfTokenEmpty();
  }

  *a1 = v4;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance ToolsFoundations.Token@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateToken();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.setValue(_:to:time:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithAssetPath();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void static ToolsFoundations.Token.getValueOpt(from:time:)(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    v6 = a1();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void static SceneDescriptionFoundations.AssetPath.getValue(from:time:)(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2 || (v3 = v2, EmptyPath = RIOPxrVtValueCopyAssetPath(), v3, !EmptyPath))
  {
    EmptyPath = RIOPxrSdfAssetPathCreateEmptyPath();
  }

  *a1 = EmptyPath;
}

uint64_t static SceneDescriptionFoundations.AssetPath.valueTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.setValue(_:to:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithAssetPath();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance ToolsFoundations.Token(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    v6 = a1();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

void protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2 || (v3 = v2, EmptyPath = RIOPxrVtValueCopyAssetPath(), v3, !EmptyPath))
  {
    EmptyPath = RIOPxrSdfAssetPathCreateEmptyPath();
  }

  *a1 = EmptyPath;
}

uint64_t protocol witness for static UsdAttributeValue.valueTypeName.getter in conformance SceneDescriptionFoundations.AssetPath@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPath();
  *a1 = result;
  return result;
}

uint64_t static TexCoord2<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = *(a3 + 8);
  type metadata accessor for SIMD2();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19[-v14];
  (*(a3 + 24))(a1, a2, a3, a5);
  v20 = a2;
  v21 = a3;
  v16 = type metadata accessor for TexCoord2();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static TexCoord2<>.getValueOpt(from:time:), v19, MEMORY[0x277D84A98], v16, v17, a4);
  return (*(v12 + 8))(v15, v11);
}

void *_s9RealityIO9TexCoord2VyACyxGs5SIMD2VyxGcfCAA4HalfV_Tt1B5@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  result[2] = 4;
  result[4] = 0;
  result[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(result + 8) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = *(a1 + 36);

  if (v6[2] >= 2uLL)
  {
    *(v6 + 9) = v7;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static TexCoord2<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a3 + 8);
  v9 = type metadata accessor for SIMD2();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  (*(a3 + 32))(a1, a2, a3, a4);
  return TexCoord2.init(_:)(v12, a2);
}

uint64_t static TexCoord2<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5 = a4;
  v23 = a2;
  v9 = *(a4 + 8);
  v10 = type metadata accessor for TexCoord2();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for SIMD2();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v22 - v19;
  (*(v11 + 16))(v14, a1, v10, v18);
  SIMD2.init(_:)(v14, a3);
  LOBYTE(v5) = (*(v5 + 16))(v20, v23, a3, v5, a5);
  (*(v16 + 8))(v20, v15);
  return v5 & 1;
}

uint64_t static TexCoord2<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateTexCoord2h();
  }

  *a3 = result;
  return result;
}

uint64_t TexCoord2<>.vtValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for SIMD2();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v21 - v17;
  (*(v5 + 16))(v8, v2, a1, v16);
  SIMD2.init(_:)(v8, v10);
  v19 = (*(a2 + 16))(v18, v10, a2);
  (*(v14 + 8))(v18, v13);
  return v19;
}

uint64_t static Color3<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *(a4 + 8);
  type metadata accessor for SIMD3();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21[-v16];
  (*(a4 + 24))(a1, a2, a4, a6);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v18 = type metadata accessor for Color3();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Color3<>.getValueOpt(from:time:), v21, MEMORY[0x277D84A98], v18, v19, a5);
  return (*(v14 + 8))(v17, v13);
}

uint64_t static Color3<>.getValue(from:time:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 8);
  v10 = type metadata accessor for SIMD3();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v15 - v12;
  (*(a5 + 32))(a1, a2, a5, a3);
  return Color3.init(_:)(v13, a2);
}

uint64_t static Color3<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v22 = a1;
  v23 = a2;
  v9 = *(a6 + 8);
  v10 = type metadata accessor for Color3();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for SIMD3();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v22 - v19;
  (*(v11 + 16))(v14, v22, v10, v18);
  SIMD3<>.init(_:)(v14, a3);
  LOBYTE(v6) = (*(v6 + 16))(v20, v23, a3, v6, a4);
  (*(v16 + 8))(v20, v15);
  return v6 & 1;
}

uint64_t static Color3<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor3h();
  }

  *a3 = result;
  return result;
}

uint64_t Color3<>.vtValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for SIMD3();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v22 - v17;
  (*(v5 + 16))(v8, v2, a1, v16);
  v19 = *(a1 + 24);
  SIMD3<>.init(_:)(v8, v10);
  v20 = (*(a2 + 16))(v18, v10, a2);
  (*(v14 + 8))(v18, v13);
  return v20;
}

uint64_t static TexCoord3<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, void (*a5)(char *, char *)@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *(a3 + 8);
  type metadata accessor for SIMD3();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23[-v18];
  (*(a3 + 24))(a1, a2, a3, a7);
  v24 = a2;
  v25 = a3;
  v20 = a4(0, a2, v14);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a5, v23, MEMORY[0x277D84A98], v20, v21, a6);
  return (*(v16 + 8))(v19, v15);
}

uint64_t closure #1 in static TexCoord2<>.getValueOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(char *, uint64_t, uint64_t))
{
  v9 = *(a3 + 8);
  v10 = a5(0, a2, v9);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1);
  return a6(v13, a2, v9);
}

uint64_t _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  *(result + 36) = *(a1 + 36);
  if (v5 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 40);

  if (*(v6 + 16) >= 3uLL)
  {
    *(v6 + 40) = v7;
    *a2 = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static TexCoord3<>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t), double a5)
{
  v10 = *(a3 + 8);
  v11 = type metadata accessor for SIMD3();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v16 - v13;
  (*(a3 + 32))(a1, a2, a3, a5);
  return a4(v14, a2, v10);
}

uint64_t static TexCoord3<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), void (*a6)(char *, uint64_t, uint64_t), double a7)
{
  v24 = a6;
  v25 = a2;
  v7 = a4;
  v11 = *(a4 + 8);
  v12 = a5(0, a3, v11);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = type metadata accessor for SIMD3();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v24 - v21;
  (*(v13 + 16))(v16, a1, v12, v20);
  v24(v16, a3, v11);
  LOBYTE(v7) = (*(v7 + 16))(v22, v25, a3, v7, a7);
  (*(v18 + 8))(v22, v17);
  return v7 & 1;
}

uint64_t static TexCoord3<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = a3();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = a4();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = a5();
  }

  *a6 = result;
  return result;
}

uint64_t TexCoord3<>.vtValue.getter(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v23 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v13 = *(v12 + 8);
  v14 = type metadata accessor for SIMD3();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v22 - v18;
  (*(v6 + 16))(v9, v3, a1, v17);
  v23(v9, v11, v13);
  v20 = (*(a2 + 16))(v19, v11, a2);
  (*(v15 + 8))(v19, v14);
  return v20;
}

uint64_t static Color4<>.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = *(a4 + 8);
  type metadata accessor for SIMD4();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21[-v16];
  (*(a4 + 24))(a1, a2, a4, a6);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v18 = type metadata accessor for Color4();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in static Color4<>.getValueOpt(from:time:), v21, MEMORY[0x277D84A98], v18, v19, a5);
  return (*(v14 + 8))(v17, v13);
}

uint64_t closure #1 in static Color3<>.getValueOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t), uint64_t (*a7)(char *, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 8);
  v12 = a6(0, a2, v11);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1);
  return a7(v15, a2, a3, v11);
}

uint64_t _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = *(a1 + 32);
  if (v5 == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  *(result + 36) = *(a1 + 36);
  if (v5 < 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 40) = *(a1 + 40);
  if (v5 == 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(a1 + 44);

  if (*(v6 + 16) >= 4uLL)
  {
    *(v6 + 44) = v7;
    *a2 = v6;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static Color4<>.getValue(from:time:)(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 8);
  v10 = type metadata accessor for SIMD4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v15 - v12;
  (*(a5 + 32))(a1, a2, a5, a3);
  return Color4.init(_:)(v13, a2);
}

uint64_t static Color4<>.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v22 = a1;
  v23 = a2;
  v9 = *(a6 + 8);
  v10 = type metadata accessor for Color4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = type metadata accessor for SIMD4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v22 - v19;
  (*(v11 + 16))(v14, v22, v10, v18);
  SIMD4<>.init(_:)(v14, a3, v20);
  LOBYTE(v6) = (*(v6 + 16))(v20, v23, a3, v6, a4);
  (*(v16 + 8))(v20, v15);
  return v6 & 1;
}

uint64_t static Color4<>.valueTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4d();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4f();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 40))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor4h();
  }

  *a3 = result;
  return result;
}

uint64_t Color4<>.vtValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v12 = *(v11 + 8);
  v13 = type metadata accessor for SIMD4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v22 - v17;
  (*(v5 + 16))(v8, v2, a1, v16);
  v19 = *(a1 + 24);
  SIMD4<>.init(_:)(v8, v10, v18);
  v20 = (*(a2 + 16))(v18, v10, a2);
  (*(v14 + 8))(v18, v13);
  return v20;
}

uint64_t static ManagedColor.getValueOpt(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v28 = a3;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  (*(a4 + 16))(a1, a2, a4, a6);
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v12 + 8))(v15, v11);
    v24 = 1;
  }

  else
  {
    (*(v16 + 32))(v23, v15, a2);
    v25 = RIOPxrUsdObjectCopyColorSpace();
    (*(v16 + 16))(v20, v23, a2);
    v29 = v25;
    ManagedColor.init(color:space:)(v20, &v29, a2, a5);
    (*(v16 + 8))(v23, a2);
    v24 = 0;
  }

  v26 = type metadata accessor for ManagedColor();
  return (*(*(v26 - 8) + 56))(a5, v24, 1, v26);
}

uint64_t static ManagedColor.getValue(from:time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v24 = a5;
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ManagedColor();
  v15 = type metadata accessor for Optional();
  v23 = *(v15 - 8);
  v16 = *(v23 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  static ManagedColor.getValueOpt(from:time:)(a1, a2, a3, a4, &v22 - v17, a6);
  v19 = *(v14 - 8);
  v20 = *(v19 + 48);
  if (v20(v18, 1, v14) != 1)
  {
    return (*(v19 + 32))(v24, v18, v14);
  }

  (*(a3 + 8))(&outlined read-only object #0 of static ManagedColor.getValue(from:time:), a2, a3);
  v25 = 0;
  ManagedColor.init(color:space:)(v13, &v25, a2, v24);
  result = (v20)(v18, 1, v14);
  if (result != 1)
  {
    return (*(v23 + 8))(v18, v15);
  }

  return result;
}

uint64_t static ManagedColor.setValue(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + *(type metadata accessor for ManagedColor() + 44)))
  {
    RIOPxrUsdObjectSetColorSpace();
  }

  else
  {
    RIOPxrUsdObjectClearColorSpace();
  }

  return (*(a6 + 8))(a1, a2, a3, a6, a4) & 1;
}

uint64_t static Half.vtValue(from:)(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      v2 = *(*result + 32);
      return RIOPxrVtValueCreateWithHalf2();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static Half.getValue2Opt(from:time:)(uint64_t *a1@<X8>)
{
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    if (RIOPxrVtValueGetHalf2())
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = 2;
      *(v4 + 32) = 0;
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t RIOPxrVtValueRef.asHalf2.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetHalf2())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 2;
    *(result + 32) = 0;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Half.getValue2(from:time:)@<X0>(uint64_t *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  if (!RIOPxrVtValueGetHalf2())
  {

LABEL_5:
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 2;
    *(result + 32) = 0;
    goto LABEL_6;
  }

  v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v4 + 16) = 2;
  *(v4 + 32) = 0;

  result = v4;
LABEL_6:
  *a1 = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Half.setValue2(_:to:time:)(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      v2 = *(*result + 32);
      v3 = RIOPxrVtValueCreateWithHalf2();
      v4 = RIOPxrUsdAttributeSetValue();

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static Half.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Half(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      v2 = *(*result + 32);
      v3 = RIOPxrVtValueCreateWithHalf2();
      v4 = RIOPxrUsdAttributeSetValue();

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueSIMD2Element.vtValue(from:) in conformance Half(uint64_t result)
{
  v1 = *(*result + 16);
  if (v1)
  {
    if (v1 != 1)
    {
      v2 = *(*result + 32);
      return RIOPxrVtValueCreateWithHalf2();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *RIOPxrVtValueRef.asHalf3.getter@<X0>(void *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetHalf3())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    result[2] = 4;
    result[5] = 0;
    result[4] = 0;
    *(result + 10) = 0;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static Half.setValue3(_:to:time:)(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 >= 3)
  {
    v3 = v1[8];
    v4 = v1[9];
    v5 = v1[10];
    v6 = RIOPxrVtValueCreateWithHalf3();
    v7 = RIOPxrUsdAttributeSetValue();

    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static Half.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3();
  *a1 = result;
  return result;
}

void static Half.getValue3Opt(from:time:)(void (*a1)(void)@<X1>, void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    a1();
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t RIOPxrVtValueRef.asHalf4.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  if (RIOPxrVtValueGetHalf4())
  {
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = 4;
    *(result + 32) = 0uLL;
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void static Half.getValue3(from:time:)(void (*a1)(void **__return_ptr)@<X1>, void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (!v4 || (v5 = v4, a1(&v7), v5, (v6 = v7) == 0))
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v6[2] = 4;
    v6[4] = 0;
    v6[5] = 0;
  }

  *a2 = v6;
}

uint64_t static Half.setValue4(_:to:time:)(uint64_t *a1)
{
  v4 = *a1;
  v1 = specialized static Half.vtValue(from:)(&v4);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Half.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Half(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v8 = *a1;
  v5 = a5(&v8);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Half(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v5 = v4;
    a1();
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4();
  *a1 = result;
  return result;
}

uint64_t static Float.getValue2Opt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetFloat2();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

double static Float.getValue2(from:time:)()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetFloat2();
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0.0;
}

uint64_t static Float.setValue2(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithFloat2();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Float.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Float(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithFloat2();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Float(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Float2 = RIOPxrVtValueGetFloat2();

    v5 = Float2 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Float(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetFloat2();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2();
  *a1 = result;
  return result;
}

uint64_t static Float.getValue3Opt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E70];

  return static Float.getValue3Opt(from:time:)(a1, v2);
}

void static Float.getValue3(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E70];

  static Float.getValue3(from:time:)(a1, v2);
}

uint64_t static Float.setValue3(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithFloat3();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Float.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Float(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithFloat3();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E70];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E70];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(v2, a1);
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3();
  *a1 = result;
  return result;
}

uint64_t static Float.getValue4Opt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E78];

  return static Float.getValue3Opt(from:time:)(a1, v2);
}

uint64_t static Float.getValue3Opt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
{
  v7[3] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v7[1] = 0;
    v4 = result;
    v5 = a2(result, v7);

    if (v5)
    {
      result = v7[0];
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void static Float.getValue4(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E78];

  static Float.getValue3(from:time:)(a1, v2);
}

void static Float.getValue3(from:time:)(uint64_t a1, void (*a2)(uint64_t, __int128 *, __n128))
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = RIOPxrUsdAttributeCopyValue();
  if (v3)
  {
    v6 = 0uLL;
    v4 = v3;
    a2(v3, &v6, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t static Float.setValue4(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithFloat4();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Float.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Float(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithFloat4();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Float(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E78];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Float(uint64_t (*a1)(uint64_t, uint64_t *)@<X3>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    v5 = v4;
    v6 = a1(v4, &v11);

    v7 = v11;
    v8 = v12;
    if (!v6)
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Float(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E78];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Float(uint64_t (*a1)(uint64_t, __int128 *, __n128)@<X3>, _OWORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v9 = 0uLL;
    v6 = v4;
    v7 = a1(v4, &v9, 0);

    if (v7)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0uLL;
    }
  }

  *a2 = v5;
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4();
  *a1 = result;
  return result;
}

uint64_t static Double.getValue2Opt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetDouble2();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void static Double.getValue2(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetDouble2();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t static Double.setValue2(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithDouble2();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Double.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Double(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithDouble2();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Double(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Double2 = RIOPxrVtValueGetDouble2();

    v5 = Double2 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Double(_OWORD *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  v3 = 0uLL;
  if (v2)
  {
    v4 = v2;
    RIOPxrVtValueGetDouble2();

    v3 = 0uLL;
  }

  *a1 = v3;
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.value2TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2();
  *a1 = result;
  return result;
}

uint64_t static Double.vtValue(from:)()
{
  return RIOPxrVtValueCreateWithDouble3();
}

{
  return RIOPxrVtValueCreateWithDouble4();
}

void static Double.getValue3Opt(from:time:)(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E60];

  static Double.getValue3Opt(from:time:)(v2, a1);
}

void static Double.getValue3(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E60];

  static Double.getValue3(from:time:)(a1, v2);
}

uint64_t static Double.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E60];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E60];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(v2, a1);
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.value3TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueSIMD3Element.vtValue(from:) in conformance Double(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return RIOPxrVtValueCreateWithDouble3();
}

void static Double.getValue4Opt(from:time:)(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E68];

  static Double.getValue3Opt(from:time:)(v2, a1);
}

void static Double.getValue3Opt(from:time:)(uint64_t (*a1)(uint64_t, __int128 *)@<X1>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = a1(v4, &v13);

    if (v6)
    {
      v8 = *(&v13 + 1);
      v7 = v13;
      v10 = *(&v14 + 1);
      v9 = v14;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v11 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void static Double.getValue4(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E68];

  static Double.getValue3(from:time:)(a1, v2);
}

void static Double.getValue3(from:time:)(uint64_t a1, void (*a2)(uint64_t, _OWORD *))
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = RIOPxrUsdAttributeCopyValue();
  if (v3)
  {
    memset(v6, 0, sizeof(v6));
    v4 = v3;
    a2(v3, v6);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t static Double.setValue3(_:to:time:)(__n128 a1, __n128 a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v7[0] = a1;
  v7[1] = a2;
  v4 = a4(v7);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Double.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Double(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a5(v9);
  v7 = RIOPxrUsdAttributeSetValue();

  return v7;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Double(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E68];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Double(uint64_t (*a1)(uint64_t, __int128 *)@<X3>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = a1(v4, &v13);

    if (v6)
    {
      v8 = *(&v13 + 1);
      v7 = v13;
      v10 = *(&v14 + 1);
      v9 = v14;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    v11 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  v12 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Double(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E68];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Double(uint64_t (*a1)(uint64_t, __int128 *)@<X3>, _OWORD *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = a1(v4, &v10);

    if (v6)
    {
      v8 = v10;
      v7 = v11;
    }

    else
    {
      v7 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v8 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v8;
  a2[1] = v7;
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.value4TypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueSIMD4Element.vtValue(from:) in conformance Double(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  return RIOPxrVtValueCreateWithDouble4();
}

uint64_t static Int.vtValue(from:)()
{
  return RIOPxrVtValueCreateWithInt2();
}

{
  return RIOPxrVtValueCreateWithInt3();
}

{
  return RIOPxrVtValueCreateWithInt4();
}

uint64_t static Int.setValue2(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt2();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int.value2TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Int(const float *a1)
{
  vld2_f32(a1);
  v1 = RIOPxrVtValueCreateWithInt2();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Int@<X0>(uint64_t a1@<X8>)
{
  result = specialized static Int.getValue2Opt(from:time:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t static Int32.getValue2Opt(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    RIOPxrVtValueGetInt2();

    result = 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void static Int32.getValue2(from:time:)()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = RIOPxrUsdAttributeCopyValue();
  if (v0)
  {
    v1 = v0;
    RIOPxrVtValueGetInt2();
  }

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t static Int32.setValue2(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt2();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2Element.setValue2(_:to:time:) in conformance Int32(uint64_t *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt2();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2Opt(from:time:) in conformance Int32(uint64_t a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    Int2 = RIOPxrVtValueGetInt2();

    v5 = Int2 ^ 1;
  }

  else
  {
    v5 = 1;
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD2Element.getValue2(from:time:) in conformance Int32(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = RIOPxrUsdAttributeCopyValue();
  if (v2)
  {
    v3 = v2;
    RIOPxrVtValueGetInt2();
  }

  *a1 = 0;
  v4 = *MEMORY[0x277D85DE8];
}

uint64_t static Int32.getValue3Opt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E88];

  return static Int32.getValue3Opt(from:time:)(a1, v2);
}

void static Int32.getValue3(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E88];

  static Int32.getValue3(from:time:)(a1, v2);
}

uint64_t static Int32.setValue3(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt3();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Int32(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt3();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E88];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E88];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(v2, a1);
}

double static Int.getValue3Opt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue3Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Int.setValue3(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt3();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int.value3TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3Element.setValue3(_:to:time:) in conformance Int(int32x4_t *a1)
{
  v1 = vuzp1q_s32(*a1, a1[1]);
  v2 = RIOPxrVtValueCreateWithInt3();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

double protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue3Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int(_OWORD *a1@<X8>)
{
  specialized static Int.getValue3(from:time:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static Int32.getValue4Opt(from:time:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E98];

  return static Int32.getValue3Opt(from:time:)(a1, v2);
}

uint64_t static Int32.getValue3Opt(from:time:)(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
{
  v7[3] = *MEMORY[0x277D85DE8];
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v7[0] = 0;
    v7[1] = 0;
    v4 = result;
    v5 = a2(result, v7);

    if (v5)
    {
      result = v7[0];
    }

    else
    {
      result = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void static Int32.getValue4(from:time:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E98];

  static Int32.getValue3(from:time:)(a1, v2);
}

void static Int32.getValue3(from:time:)(uint64_t a1, void (*a2)(uint64_t, __int128 *, __n128))
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = RIOPxrUsdAttributeCopyValue();
  if (v3)
  {
    v6 = 0uLL;
    v4 = v3;
    a2(v3, &v6, 0);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t static Int32.setValue4(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt4();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Int32(__int128 *a1)
{
  v1 = *a1;
  v2 = RIOPxrVtValueCreateWithInt4();
  v3 = RIOPxrUsdAttributeSetValue();

  return v3;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Int32(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E98];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3Opt(from:time:) in conformance Int32(uint64_t (*a1)(uint64_t, uint64_t *)@<X3>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  if (v4)
  {
    v11 = 0;
    v12 = 0;
    v5 = v4;
    v6 = a1(v4, &v11);

    v7 = v11;
    v8 = v12;
    if (!v6)
    {
      v7 = 0;
      v8 = 0;
    }

    v9 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Int32(_OWORD *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E98];

  protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(v2, a1);
}

void protocol witness for static UsdAttributeValueSIMD3Element.getValue3(from:time:) in conformance Int32(uint64_t (*a1)(uint64_t, __int128 *, __n128)@<X3>, _OWORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = RIOPxrUsdAttributeCopyValue();
  v5 = 0uLL;
  if (v4)
  {
    v9 = 0uLL;
    v6 = v4;
    v7 = a1(v4, &v9, 0);

    if (v7)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0uLL;
    }
  }

  *a2 = v5;
  v8 = *MEMORY[0x277D85DE8];
}

double static Int.getValue4Opt(from:time:)@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue4Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Int.setValue4(_:to:time:)()
{
  v0 = RIOPxrVtValueCreateWithInt4();
  v1 = RIOPxrUsdAttributeSetValue();

  return v1;
}

uint64_t static Int.value4TypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4Element.setValue4(_:to:time:) in conformance Int(const float *a1)
{
  vld2q_f32(a1);
  v1 = RIOPxrVtValueCreateWithInt4();
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

double protocol witness for static UsdAttributeValueSIMD4Element.getValue4Opt(from:time:) in conformance Int@<D0>(uint64_t a1@<X8>)
{
  specialized static Int.getValue4Opt(from:time:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void protocol witness for static UsdAttributeValueSIMD4Element.getValue4(from:time:) in conformance Int(_OWORD *a1@<X8>)
{
  specialized static Int.getValue4(from:time:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static Array<A>.getValue(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 16))();
  if (!result)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValue.getValueOpt(from:time:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.getValueOpt(from:time:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValue.getValue(from:time:) in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.getValue(from:time:)(a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t static Bool.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Bool.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Bool.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Bool(uint64_t a1)
{
  v1 = specialized static Bool.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Bool@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateBoolArray();
  *a1 = result;
  return result;
}

uint64_t static Int8.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int8.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int8(uint64_t a1)
{
  v1 = specialized static Int8.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int16.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int16.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int16(uint64_t a1)
{
  v1 = specialized static Int16.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int32.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E20], MEMORY[0x277D00E18]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int32(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E20], MEMORY[0x277D00E18]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt32Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int64.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int64.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int64.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Int64(uint64_t a1)
{
  v1 = specialized static Int64.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Int64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt64Array();
  *a1 = result;
  return result;
}

uint64_t static UInt.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static UInt.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt32Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt(uint64_t a1)
{
  v1 = specialized static UInt.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt8.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static UInt8.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt8.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt8(uint64_t a1)
{
  v1 = specialized static UInt8.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance UInt8@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt8Array();
  *a1 = result;
  return result;
}

uint64_t static UInt16.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static UInt16.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt16(uint64_t a1)
{
  v1 = specialized static UInt16.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt32.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E58], MEMORY[0x277D00E50]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt32(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E58], MEMORY[0x277D00E50]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt64.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static UInt64.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static UInt64.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance UInt64(uint64_t a1)
{
  v1 = specialized static UInt64.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance UInt64@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateUInt64Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Half.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Half(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalfArray();
  *a1 = result;
  return result;
}

uint64_t static Float.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Float.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Float(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloatArray();
  *a1 = result;
  return result;
}

uint64_t static Double.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Double.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Double(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDoubleArray();
  *a1 = result;
  return result;
}

uint64_t static simd_quatf.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_quatf.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_quatf.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_quatf(uint64_t a1)
{
  v1 = specialized static simd_quatf.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance simd_quatf@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatfArray();
  *a1 = result;
  return result;
}

uint64_t static simd_quatd.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_quatd.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_quatd.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_quatd(uint64_t a1)
{
  v1 = specialized static simd_quatd.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance simd_quatd@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateQuatdArray();
  *a1 = result;
  return result;
}

uint64_t static simd_float2x2.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_float2x2.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_float2x2.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix2dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float2x2(uint64_t a1)
{
  v1 = specialized static simd_float2x2.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_float3x3.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_float3x3.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_float3x3.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix3dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float3x3(uint64_t a1)
{
  v1 = specialized static simd_float3x3.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_float4x4.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_float4x4.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_float4x4.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateMatrix4dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_float4x4(uint64_t a1)
{
  v1 = specialized static simd_float4x4.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_double2x2.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_double2x2.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double2x2(uint64_t a1)
{
  v1 = specialized static simd_double2x2.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_double3x3.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_double3x3.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double3x3(uint64_t a1)
{
  v1 = specialized static simd_double3x3.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static simd_double4x4.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static simd_double4x4.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance simd_double4x4(uint64_t a1)
{
  v1 = specialized static simd_double4x4.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Frame4D.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Frame4D.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Frame4D.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance Frame4D(uint64_t a1)
{
  v1 = specialized static Frame4D.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance Frame4D@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFrame4dArray();
  *a1 = result;
  return result;
}

uint64_t static Normal3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static Normal3<>.vtValue(from:)(a1, a3, a4);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Normal3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v11 = RIOPxrUsdAttributeCopyValue();
    if (v11)
    {
      v6 = v11;
      v12 = RIOPxrVtValueCopyDouble3Array();
      if (v12)
      {
        v21 = v12;
        v13 = v12;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Normal3VySdGMd;
        v10 = &_s9RealityIO7Normal3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v5 = RIOPxrUsdAttributeCopyValue();
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v7 = RIOPxrVtValueCopyHalf3Array();
      if (v7)
      {
        v21 = v7;
        v8 = v7;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Normal3VyAA4HalfVGMd;
        v10 = &_s9RealityIO7Normal3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        v17 = *(a3 + 8);
        type metadata accessor for Normal3();
        v18 = _arrayConditionalCast<A, B>(_:)();

        return v18;
      }

      goto LABEL_14;
    }

    v14 = RIOPxrUsdAttributeCopyValue();
    if (v14)
    {
      v6 = v14;
      v15 = RIOPxrVtValueCopyFloat3Array();
      if (v15)
      {
        v21 = v15;
        v16 = v15;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Normal3VySfGMd;
        v10 = &_s9RealityIO7Normal3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t RIOPxrVtValueRef.asTexCoord3fArray.getter(uint64_t (*a1)(uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v3);
  if (result)
  {
    v8 = result;
    v6 = result;
    a3(&v7, &v8);

    return v7;
  }

  return result;
}

uint64_t static Color3<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v9)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v9);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v13 = *(a4 + 8);
    type metadata accessor for Color3();
    v14 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v16 = v15;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Color3<>.vtValue(from:), v34, v14, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithDouble3Array();
LABEL_10:
    v33 = v20;

    return v33;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v10)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v10);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v21 = *(a4 + 8);
    type metadata accessor for Color3();
    v22 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v24 = v23;
    v25 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static Color3<>.vtValue(from:), v34, v22, v24, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithFloat3Array();
    goto LABEL_10;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v11)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v11);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v27 = *(a4 + 8);
    type metadata accessor for Color3();
    v28 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v30 = v29;
    v31 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static Color3<>.vtValue(from:), v34, v28, v30, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithHalf3Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = *(v7 + 8);
  v9 = type metadata accessor for Color3();
  Color3.red.getter(v9);
  swift_dynamicCast();
  Color3.green.getter(v9);
  swift_dynamicCast();
  Color3.blue.getter(v9);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble3();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = *(v7 + 8);
  v9 = type metadata accessor for Color3();
  Color3.red.getter(v9);
  swift_dynamicCast();
  Color3.green.getter(v9);
  swift_dynamicCast();
  Color3.blue.getter(v9);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat3();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static Color3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *(v5 + 8);
  v7 = type metadata accessor for Color3();
  Color3.red.getter(v7);
  v8 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v8);
  Color3.green.getter(v7);
  v9 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v9);
  Color3.blue.getter(v7);
  v10 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v10);
  result = RIOPxrVtValueCreateWithHalf3();
  *a3 = result;
  return result;
}

uint64_t static Color3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = static Color3<>.vtValue(from:)(a1, a3, a4, a5);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Color3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v12 = RIOPxrUsdAttributeCopyValue();
    if (v12)
    {
      v7 = v12;
      v13 = RIOPxrVtValueCopyDouble3Array();
      if (v13)
      {
        v22 = v13;
        v14 = v13;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(&v22, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v21);

        v10 = &_s9RealityIO6Color3VySdGMd;
        v11 = &_s9RealityIO6Color3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v6 = RIOPxrUsdAttributeCopyValue();
      if (!v6)
      {
        return 0;
      }

      v7 = v6;
      v8 = RIOPxrVtValueCopyHalf3Array();
      if (v8)
      {
        v22 = v8;
        v9 = v8;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v22, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v21);

        v10 = &_s9RealityIO6Color3VyAA4HalfVGMd;
        v11 = &_s9RealityIO6Color3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
        v18 = *(a4 + 8);
        type metadata accessor for Color3();
        v19 = _arrayConditionalCast<A, B>(_:)();

        return v19;
      }

      goto LABEL_14;
    }

    v15 = RIOPxrUsdAttributeCopyValue();
    if (v15)
    {
      v7 = v15;
      v16 = RIOPxrVtValueCopyFloat3Array();
      if (v16)
      {
        v22 = v16;
        v17 = v16;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(&v22, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v21);

        v10 = &_s9RealityIO6Color3VySfGMd;
        v11 = &_s9RealityIO6Color3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Color3<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor3fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor3hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Color4<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v9)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v9);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v13 = *(a4 + 8);
    type metadata accessor for Color4();
    v14 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v16 = v15;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Color4<>.vtValue(from:), v34, v14, v16, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v18);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithDouble4Array();
LABEL_10:
    v33 = v20;

    return v33;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v10)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v10);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v21 = *(a4 + 8);
    type metadata accessor for Color4();
    v22 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v24 = v23;
    v25 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static Color4<>.vtValue(from:), v34, v22, v24, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v26);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithFloat4Array();
    goto LABEL_10;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v11)
  {
    v38 = a1;
    MEMORY[0x28223BE20](v11);
    v35 = a2;
    v36 = a3;
    v37 = a4;
    v27 = *(a4 + 8);
    type metadata accessor for Color4();
    v28 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v30 = v29;
    v31 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static Color4<>.vtValue(from:), v34, v28, v30, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
    v19.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = RIOPxrVtValueCreateWithHalf4Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = *(v8 + 8);
  v10 = type metadata accessor for Color4();
  Color4.red.getter();
  swift_dynamicCast();
  Color4.green.getter(v10);
  swift_dynamicCast();
  Color4.blue.getter(v10);
  swift_dynamicCast();
  Color4.alpha.getter(v10);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble4();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = *(v8 + 8);
  v10 = type metadata accessor for Color4();
  Color4.red.getter();
  swift_dynamicCast();
  Color4.green.getter(v10);
  swift_dynamicCast();
  Color4.blue.getter(v10);
  swift_dynamicCast();
  Color4.alpha.getter(v10);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat4();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static Color4<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *(v5 + 8);
  v7 = type metadata accessor for Color4();
  Color4.red.getter();
  v8 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v8);
  Color4.green.getter(v7);
  v9 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v9);
  Color4.blue.getter(v7);
  v10 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v10);
  Color4.alpha.getter(v7);
  v11 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v11);
  result = RIOPxrVtValueCreateWithHalf4();
  *a3 = result;
  return result;
}

uint64_t static Color4<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = static Color4<>.vtValue(from:)(a1, a3, a4, a5);
  v6 = RIOPxrUsdAttributeSetValue();

  return v6;
}

uint64_t static Color4<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v12 = RIOPxrUsdAttributeCopyValue();
    if (v12)
    {
      v7 = v12;
      v13 = RIOPxrVtValueCopyDouble4Array();
      if (v13)
      {
        v22 = v13;
        v14 = v13;
        closure #1 in RIOPxrVtValueRef.asColor4dArray.getter(&v22, &v21);

        v10 = &_s9RealityIO6Color4VySdGMd;
        v11 = &_s9RealityIO6Color4VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v6 = RIOPxrUsdAttributeCopyValue();
      if (!v6)
      {
        return 0;
      }

      v7 = v6;
      v8 = RIOPxrVtValueCopyHalf4Array();
      if (v8)
      {
        v22 = v8;
        v9 = v8;
        closure #1 in RIOPxrVtValueRef.asColor4hArray.getter(&v22, &v21);

        v10 = &_s9RealityIO6Color4VyAA4HalfVGMd;
        v11 = &_s9RealityIO6Color4VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
        v18 = *(a4 + 8);
        type metadata accessor for Color4();
        v19 = _arrayConditionalCast<A, B>(_:)();

        return v19;
      }

      goto LABEL_14;
    }

    v15 = RIOPxrUsdAttributeCopyValue();
    if (v15)
    {
      v7 = v15;
      v16 = RIOPxrVtValueCopyFloat4Array();
      if (v16)
      {
        v22 = v16;
        v17 = v16;
        closure #1 in RIOPxrVtValueRef.asColor4fArray.getter(&v22, &v21);

        v10 = &_s9RealityIO6Color4VySfGMd;
        v11 = &_s9RealityIO6Color4VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Color4<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateColor4fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateColor4hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Vector3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static Vector3<>.vtValue(from:)(a1, a3, a4);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Vector3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v11 = RIOPxrUsdAttributeCopyValue();
    if (v11)
    {
      v6 = v11;
      v12 = RIOPxrVtValueCopyDouble3Array();
      if (v12)
      {
        v21 = v12;
        v13 = v12;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Vector3VySdGMd;
        v10 = &_s9RealityIO7Vector3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v5 = RIOPxrUsdAttributeCopyValue();
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v7 = RIOPxrVtValueCopyHalf3Array();
      if (v7)
      {
        v21 = v7;
        v8 = v7;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Vector3VyAA4HalfVGMd;
        v10 = &_s9RealityIO7Vector3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        v17 = *(a3 + 8);
        type metadata accessor for Vector3();
        v18 = _arrayConditionalCast<A, B>(_:)();

        return v18;
      }

      goto LABEL_14;
    }

    v14 = RIOPxrUsdAttributeCopyValue();
    if (v14)
    {
      v6 = v14;
      v15 = RIOPxrVtValueCopyFloat3Array();
      if (v15)
      {
        v21 = v15;
        v16 = v15;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO7Vector3VySfGMd;
        v10 = &_s9RealityIO7Vector3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static Point3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static Point3<>.vtValue(from:)(a1, a3, a4);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static Point3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v11 = RIOPxrUsdAttributeCopyValue();
    if (v11)
    {
      v6 = v11;
      v12 = RIOPxrVtValueCopyDouble3Array();
      if (v12)
      {
        v21 = v12;
        v13 = v12;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO6Point3VySdGMd;
        v10 = &_s9RealityIO6Point3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v5 = RIOPxrUsdAttributeCopyValue();
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v7 = RIOPxrVtValueCopyHalf3Array();
      if (v7)
      {
        v21 = v7;
        v8 = v7;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO6Point3VyAA4HalfVGMd;
        v10 = &_s9RealityIO6Point3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        v17 = *(a3 + 8);
        type metadata accessor for Point3();
        v18 = _arrayConditionalCast<A, B>(_:)();

        return v18;
      }

      goto LABEL_14;
    }

    v14 = RIOPxrUsdAttributeCopyValue();
    if (v14)
    {
      v6 = v14;
      v15 = RIOPxrVtValueCopyFloat3Array();
      if (v15)
      {
        v21 = v15;
        v16 = v15;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO6Point3VySfGMd;
        v10 = &_s9RealityIO6Point3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static TexCoord2<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v7)
  {
    v35 = a1;
    MEMORY[0x28223BE20](v7);
    v33 = a2;
    v34 = a3;
    v11 = *(a3 + 8);
    type metadata accessor for TexCoord2();
    v12 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v14 = v13;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static TexCoord2<>.vtValue(from:), v32, v12, v14, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = RIOPxrVtValueCreateWithDouble2Array();
LABEL_10:
    v31 = v18;

    return v31;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v8)
  {
    v35 = a1;
    MEMORY[0x28223BE20](v8);
    v33 = a2;
    v34 = a3;
    v19 = *(a3 + 8);
    type metadata accessor for TexCoord2();
    v20 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v22 = v21;
    v23 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in static TexCoord2<>.vtValue(from:), v32, v20, v22, MEMORY[0x277D84A98], v23, MEMORY[0x277D84AC0], v24);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = RIOPxrVtValueCreateWithFloat2Array();
    goto LABEL_10;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v9)
  {
    v35 = a1;
    MEMORY[0x28223BE20](v9);
    v33 = a2;
    v34 = a3;
    v25 = *(a3 + 8);
    type metadata accessor for TexCoord2();
    v26 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v28 = v27;
    v29 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static TexCoord2<>.vtValue(from:), v32, v26, v28, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
    v17.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = RIOPxrVtValueCreateWithHalf2Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  v7 = *(v6 + 8);
  v8 = type metadata accessor for TexCoord2();
  TexCoord2.x.getter();
  swift_dynamicCast();
  TexCoord2.y.getter(v8);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble2();
  *a3 = result;
  return result;
}

uint64_t closure #2 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v5);
  v7 = *(v6 + 8);
  v8 = type metadata accessor for TexCoord2();
  TexCoord2.x.getter();
  swift_dynamicCast();
  TexCoord2.y.getter(v8);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat2();
  *a3 = result;
  return result;
}

uint64_t closure #3 in static TexCoord2<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *(v5 + 8);
  v7 = type metadata accessor for TexCoord2();
  TexCoord2.x.getter();
  v8 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v8);
  TexCoord2.y.getter(v7);
  v9 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v9);
  result = RIOPxrVtValueCreateWithHalf2();
  *a3 = result;
  return result;
}

uint64_t static TexCoord2<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static TexCoord2<>.vtValue(from:)(a1, a3, a4);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static TexCoord2<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v11 = RIOPxrUsdAttributeCopyValue();
    if (v11)
    {
      v6 = v11;
      v12 = RIOPxrVtValueCopyDouble2Array();
      if (v12)
      {
        v21 = v12;
        v13 = v12;
        closure #1 in RIOPxrVtValueRef.asTexCoord2dArray.getter(&v21, &v20);

        v9 = &_s9RealityIO9TexCoord2VySdGMd;
        v10 = &_s9RealityIO9TexCoord2VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v5 = RIOPxrUsdAttributeCopyValue();
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v7 = RIOPxrVtValueCopyHalf2Array();
      if (v7)
      {
        v21 = v7;
        v8 = v7;
        closure #1 in RIOPxrVtValueRef.asTexCoord2hArray.getter(&v21, &v20);

        v9 = &_s9RealityIO9TexCoord2VyAA4HalfVGMd;
        v10 = &_s9RealityIO9TexCoord2VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        v17 = *(a3 + 8);
        type metadata accessor for TexCoord2();
        v18 = _arrayConditionalCast<A, B>(_:)();

        return v18;
      }

      goto LABEL_14;
    }

    v14 = RIOPxrUsdAttributeCopyValue();
    if (v14)
    {
      v6 = v14;
      v15 = RIOPxrVtValueCopyFloat2Array();
      if (v15)
      {
        v21 = v15;
        v16 = v15;
        closure #1 in RIOPxrVtValueRef.asTexCoord2fArray.getter(&v21, &v20);

        v9 = &_s9RealityIO9TexCoord2VySfGMd;
        v10 = &_s9RealityIO9TexCoord2VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t static TexCoord2<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2dArray();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = RIOPxrSdfValueTypeNameCreateTexCoord2fArray();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = RIOPxrSdfValueTypeNameCreateTexCoord2hArray();
  }

  *a3 = result;
  return result;
}

uint64_t static Normal3<>.vtValue(from:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, double), void (*a5)(char *, char *), void (*a6)(char *, char *), void (*a7)(char *, char *))
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
  if (MetatypeMetadata == v15)
  {
    v43 = a1;
    v19 = MEMORY[0x28223BE20](v15);
    v41 = a2;
    v42 = a3;
    a4(255, a2, *(a3 + 8), v19);
    v20 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v22 = v21;
    WitnessTable = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a5, v40, v20, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);
    v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = RIOPxrVtValueCreateWithDouble3Array();
LABEL_10:
    v39 = v26;

    return v39;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR);
  if (MetatypeMetadata == v16)
  {
    v43 = a1;
    v27 = MEMORY[0x28223BE20](v16);
    v41 = a2;
    v42 = a3;
    a4(255, a2, *(a3 + 8), v27);
    v28 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v30 = v29;
    v31 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a6, v40, v28, v30, MEMORY[0x277D84A98], v31, MEMORY[0x277D84AC0], v32);
    v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = RIOPxrVtValueCreateWithFloat3Array();
    goto LABEL_10;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR);
  if (MetatypeMetadata == v17)
  {
    v43 = a1;
    v33 = MEMORY[0x28223BE20](v17);
    v41 = a2;
    v42 = a3;
    a4(255, a2, *(a3 + 8), v33);
    v34 = type metadata accessor for Array();
    type metadata accessor for RIOPxrVtValueRef(0);
    v36 = v35;
    v37 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(a7, v40, v34, v36, MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v38);
    v25.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v26 = RIOPxrVtValueCreateWithHalf3Array();
    goto LABEL_10;
  }

  return RIOPxrVtValueCreateEmptyValue();
}

uint64_t closure #1 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>)
{
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = *(v13 + 8);
  v16 = v15(0, v12);
  a3();
  swift_dynamicCast();
  a4(v16);
  swift_dynamicCast();
  a5(v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithDouble3();
  *a6 = result;
  return result;
}

uint64_t closure #2 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>)
{
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = *(v13 + 8);
  v16 = v15(0, v12);
  a3();
  swift_dynamicCast();
  a4(v16);
  swift_dynamicCast();
  a5(v16);
  swift_dynamicCast();
  result = RIOPxrVtValueCreateWithFloat3();
  *a6 = result;
  return result;
}

uint64_t closure #3 in static Normal3<>.vtValue(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X5>, void (*a4)(uint64_t)@<X6>, void (*a5)(uint64_t)@<X7>, uint64_t *a6@<X8>)
{
  v10 = *(*(a2 - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = *(v12 + 8);
  v15 = v14(0, v11);
  a3();
  v16 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v16);
  a4(v15);
  v17 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v17);
  a5(v15);
  v18 = swift_dynamicCast();
  destructiveProjectEnumData for SceneDescriptionFoundations(v18);
  result = RIOPxrVtValueCreateWithHalf3();
  *a6 = result;
  return result;
}

uint64_t static TexCoord3<>.setValueArray(_:to:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static TexCoord3<>.vtValue(from:)(a1, a3, a4);
  v5 = RIOPxrUsdAttributeSetValue();

  return v5;
}

uint64_t static TexCoord3<>.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    v11 = RIOPxrUsdAttributeCopyValue();
    if (v11)
    {
      v6 = v11;
      v12 = RIOPxrVtValueCopyDouble3Array();
      if (v12)
      {
        v21 = v12;
        v13 = v12;
        closure #1 in RIOPxrVtValueRef.asColor3dArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO9TexCoord3VySdGMd;
        v10 = &_s9RealityIO9TexCoord3VySdGMR;
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
    {
      if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
      {
        return 0;
      }

      v5 = RIOPxrUsdAttributeCopyValue();
      if (!v5)
      {
        return 0;
      }

      v6 = v5;
      v7 = RIOPxrVtValueCopyHalf3Array();
      if (v7)
      {
        v21 = v7;
        v8 = v7;
        closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO9TexCoord3VyAA4HalfVGMd;
        v10 = &_s9RealityIO9TexCoord3VyAA4HalfVGMR;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
        v17 = *(a3 + 8);
        type metadata accessor for TexCoord3();
        v18 = _arrayConditionalCast<A, B>(_:)();

        return v18;
      }

      goto LABEL_14;
    }

    v14 = RIOPxrUsdAttributeCopyValue();
    if (v14)
    {
      v6 = v14;
      v15 = RIOPxrVtValueCopyFloat3Array();
      if (v15)
      {
        v21 = v15;
        v16 = v15;
        closure #1 in RIOPxrVtValueRef.asColor3fArray.getter(&v21, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &v20);

        v9 = &_s9RealityIO9TexCoord3VySfGMd;
        v10 = &_s9RealityIO9TexCoord3VySfGMR;
        goto LABEL_13;
      }

LABEL_14:
    }
  }

  return 0;
}

uint64_t RIOPxrVtValueRef.asNormal3hArray.getter(uint64_t a1)
{
  result = RIOPxrVtValueCopyHalf3Array();
  if (result)
  {
    v5 = result;
    v3 = result;
    closure #1 in RIOPxrVtValueRef.asColor3hArray.getter(&v5, a1, &v4);

    return v4;
  }

  return result;
}

uint64_t static Normal3<>.valueArrayTypeName.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t *a6@<X8>)
{
  MetatypeMetadata = swift_getMetatypeMetadata();
  if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR))
  {
    result = a3();
  }

  else if (MetatypeMetadata == __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfmMd, &_sSfmMR))
  {
    result = a4();
  }

  else
  {
    if (MetatypeMetadata != __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO4HalfVmMd, &_s9RealityIO4HalfVmMR))
    {
      return (*(a2 + 32))(a1, a2);
    }

    result = a5();
  }

  *a6 = result;
  return result;
}

uint64_t static String.vtValue(from:)()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  return v1;
}

uint64_t static String.setValueArray(_:to:time:)()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  v2 = RIOPxrUsdAttributeSetValue();
  return v2;
}

uint64_t static String.getValueArrayOpt(from:time:)()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueRef.asStringArray.getter();

    return v2;
  }

  return result;
}

uint64_t static String.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance String()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  v2 = RIOPxrUsdAttributeSetValue();
  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance String()
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v1 = result;
    v2 = RIOPxrVtValueRef.asStringArray.getter();

    return v2;
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance String@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateStringArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdVtValueArrayElement.vtValue(from:) in conformance String()
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1 = RIOPxrVtValueCreateWithStringArray();

  return v1;
}

uint64_t static ToolsFoundations.Token.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrTfTokenRef, MEMORY[0x277D00E48]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t specialized static UInt64.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v8 = result;
    v9 = a2();
    if (v9)
    {
      v12 = v9;
      v10 = v9;
      a5(&v11, &v12);

      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static ToolsFoundations.Token.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance ToolsFoundations.Token(uint64_t a1)
{
  v1 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrTfTokenRef, MEMORY[0x277D00E48]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), void (*a6)(_BOOL8, unint64_t, uint64_t))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v10 = result;
    v11 = a4();
    if (v11)
    {
      v14 = v11;
      v12 = v11;
      closure #1 in RIOPxrVtValueRef.asTokenArray.getter(&v14, a5, a6, &v13);

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance ToolsFoundations.Token@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateTokenArray();
  *a1 = result;
  return result;
}

uint64_t static SceneDescriptionFoundations.AssetPath.setValueArray(_:to:time:)(uint64_t a1)
{
  v1 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrSdfAssetPathRef, MEMORY[0x277D00DE8]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static SceneDescriptionFoundations.AssetPath.valueArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.setValueArray(_:to:time:) in conformance SceneDescriptionFoundations.AssetPath(uint64_t a1)
{
  v1 = specialized static ToolsFoundations.Token.vtValue(from:)(a1, type metadata accessor for RIOPxrSdfAssetPathRef, MEMORY[0x277D00DE8]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.valueArrayTypeName.getter in conformance SceneDescriptionFoundations.AssetPath@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateAssetPathArray();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue2Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Half.getValueArrayOpt(from:time:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v6 = result;
    v7 = a2();
    if (v7)
    {
      v10 = v7;
      v8 = v7;
      a3(&v9, &v10);

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static Half.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Half(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueArrayElement.getValueArrayOpt(from:time:) in conformance Half(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  result = RIOPxrUsdAttributeCopyValue();
  if (result)
  {
    v8 = result;
    v9 = a4();
    if (v9)
    {
      v12 = v9;
      v10 = v9;
      a5(&v11, &v12);

      return v11;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf2Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue3Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Half.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Half(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf3Array();
  *a1 = result;
  return result;
}

uint64_t static Half.setValue4Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t RIOPxrVtValueRef.asBoolArray.getter(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  result = a1(v2);
  if (result)
  {
    v7 = result;
    v5 = result;
    a2(&v6, &v7);

    return v6;
  }

  return result;
}

uint64_t static Half.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Half(uint64_t a1)
{
  v1 = specialized static Half.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Half@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateHalf4Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue2Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Float.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Float(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat2Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue3Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Float.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Float(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat3Array();
  *a1 = result;
  return result;
}

uint64_t static Float.setValue4Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Float.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Float(uint64_t a1)
{
  v1 = specialized static Float.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Float@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateFloat4Array();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue2Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Double.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Double(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.value2ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble2Array();
  *a1 = result;
  return result;
}

uint64_t static Double.vtValue(from:)(uint64_t a1)
{
  return specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
}

{
  return specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
}

uint64_t static Double.setValue3Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Double.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Double(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00DF8], MEMORY[0x277D00DF0]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.value3ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble3Array();
  *a1 = result;
  return result;
}

uint64_t static Double.setValue4Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Double.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Double(uint64_t a1)
{
  v1 = specialized static Double.vtValue(from:)(a1, MEMORY[0x277D00E08], MEMORY[0x277D00E00]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.value4ArrayTypeName.getter in conformance Double@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateDouble4Array();
  *a1 = result;
  return result;
}

uint64_t static Int32.setValue2Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Int32(uint64_t a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int32.vtValue(from:)(__n128 *a1)
{
  return specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
}

{
  return specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
}

uint64_t static Int32.setValue3Array(_:to:time:)(__n128 *a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Int32(__n128 *a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E28], MEMORY[0x277D00E10]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int32.setValue4Array(_:to:time:)(__n128 *a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Int32(__n128 *a1)
{
  v1 = specialized static Int32.vtValue(from:)(a1, MEMORY[0x277D00E38], MEMORY[0x277D00E30]);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.setValue2Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.value2ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt2Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD2ArrayElement.setValue2Array(_:to:time:) in conformance Int(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.setValue3Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.value3ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt3Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD3ArrayElement.setValue3Array(_:to:time:) in conformance Int(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.setValue4Array(_:to:time:)(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t static Int.value4ArrayTypeName.getter@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrSdfValueTypeNameCreateInt4Array();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static UsdAttributeValueSIMD4ArrayElement.setValue4Array(_:to:time:) in conformance Int(uint64_t a1)
{
  v1 = specialized static Int.vtValue(from:)(a1);
  v2 = RIOPxrUsdAttributeSetValue();

  return v2;
}

uint64_t Dictionary<>.vtValue.getter(uint64_t a1)
{
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaG_So0i2TfhL0a_ALts5NeverOTg503_s9d4IO16fg2O5h5VSo16ijk48RefaSo0f2TfeI0aAGIgngoo_AE3key_AG5valuetAI_AGts5n46OIegnrzr_TR05_sSD9a6IOAA16cd2O5e8VRszSo16fgH46s16Rs_rlE02vtH0AGvgtuV25_AGtAE_AGtXEfU_Tf3nnnpf_nTf1cn_n(a1);
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v7 = v2;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, 1, &v7);

  type metadata accessor for RIOPxrTfTokenRef(0);
  type metadata accessor for RIOPxrVtValueRef(0);
  lazy protocol witness table accessor for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = RIOPxrVtValueCreateWithDictionary();

  return v5;
}

uint64_t RIOPxrVtValueRef.asTexCoord2h.getter@<X0>(void *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  result = RIOPxrVtValueGetHalf2();
  if (result)
  {
    v3 = v8;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = 2;
    *(v4 + 32) = v3;
    result = _s9RealityIO9TexCoord2VyACyxGs5SIMD2VyxGcfCAA4HalfV_Tt1B5(v4, &v7);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t RIOPxrVtValueRef.asTexCoord2f.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  Float2 = RIOPxrVtValueGetFloat2();
  v3.i64[0] = 0;
  if (Float2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  result = vandq_s8(v3, vdupq_n_s64(v4));
  *a1 = result;
  a1[1].i8[0] = Float2 ^ 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asColor3h.getter@<X0>(uint64_t (*a1)(uint64_t, __int128 *)@<X0>, uint64_t *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0uLL;
  result = a1(v2, &v10);
  if (result)
  {
    v8 = v10;
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5[2] = 4;
    v5[5] = 0;
    v5[4] = v8;
    *(v5 + 10) = DWORD2(v8);
    result = _s9RealityIO9TexCoord3VyACyxGs5SIMD3VyxGcfCAA4HalfV_Tt1B5Tm(v5, &v9);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asNormal3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E80];

  return RIOPxrVtValueRef.asColor3h.getter(v2, a1);
}

uint64_t RIOPxrVtValueRef.asTexCoord3h.getter@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D00E70];

  return RIOPxrVtValueRef.asColor3h.getter(v2, a1);
}

uint64_t RIOPxrVtValueRef.asColor4h.getter@<X0>(uint64_t *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0uLL;
  result = RIOPxrVtValueGetFloat4();
  if (result)
  {
    v6 = v8;
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v3 + 16) = 4;
    *(v3 + 32) = v6;
    result = _s9RealityIO6Color4VyACyxGs5SIMD4VyxGcfCAA4HalfV_Tt1B5(v3, &v7);
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double RIOPxrVtValueRef.asNormal3f.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  *&result = RIOPxrVtValueRef.asColor3f.getter(a1).u64[0];
  return result;
}

int8x16_t RIOPxrVtValueRef.asColor3f.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  Float3 = RIOPxrVtValueGetFloat3();
  v3 = 0uLL;
  v3.i32[3] = 0;
  if (Float3)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  result = vandq_s8(v3, vdupq_n_s64(v4));
  *a1 = result;
  a1[1].i8[0] = Float3 ^ 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asColor4f.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetFloat4();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = result ^ 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t RIOPxrVtValueRef.asTexCoord2d.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  Double2 = RIOPxrVtValueGetDouble2();
  if (Double2)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  result = vandq_s8(0, vdupq_n_s64(v3));
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i8[0] = Double2 ^ 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

double RIOPxrVtValueRef.asNormal3d.getter@<D0>(int8x16_t *a1@<X8>)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277D85DE8];

  *&result = RIOPxrVtValueRef.asColor3d.getter(a1).u64[0];
  return result;
}

int8x16_t RIOPxrVtValueRef.asColor3d.getter@<Q0>(int8x16_t *a1@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  Double3 = RIOPxrVtValueGetDouble3();
  if (Double3)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  result = vandq_s8(0, vdupq_n_s64(v3));
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i64[1] = 0;
  a1[2].i8[0] = Double3 ^ 1;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t RIOPxrVtValueRef.asColor4d.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = RIOPxrVtValueGetDouble4();
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = result ^ 1;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asBoolArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Bool = RIOPxrVtValueGetBool();

      if (Bool)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v8[v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in RIOPxrVtValueRef.asIntArray.getter@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOPxrVtValueRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v17 = a2;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_5:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26670F670](v9, v5);
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v5 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      Int32 = RIOPxrVtValueGetInt32();

      if (Int32)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_25;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    *&v8[8 * v14 + 32] = 0;
  }

  while (v7 != v6);
LABEL_25:

  *v17 = v8;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}